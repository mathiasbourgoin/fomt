    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_0804E958
func_0804E958: @ 0x0804E958
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	mov sl, r1
	adds r4, r2, #0
	mov sb, r3
	ldr r6, [sp, #0x2c]
	lsls r0, r0, #0x10
	lsrs r7, r0, #0xd
	movs r5, #0
	ldrb r0, [r6]
	b .L0804E9AE
.L0804E978:
	orrs r5, r0
	str r5, [sp]
	ldr r0, [sp, #0x30]
	str r0, [sp, #4]
	ldr r1, [sp, #0x34]
	str r1, [sp, #8]
	mov r0, r8
	mov r1, sl
	adds r2, r4, #0
	mov r3, sb
	bl func_0804E5AC
	cmp r0, #1
	beq .L0804E99E
	cmp r0, #1
	blo .L0804E9A8
	cmp r0, #2
	beq .L0804E9A4
	b .L0804E9B6
.L0804E99E:
	movs r5, #0
	adds r4, #8
	b .L0804E9A8
.L0804E9A4:
	movs r5, #0
	adds r4, #0x10
.L0804E9A8:
	adds r6, #1
	ldrb r0, [r6]
	lsls r5, r5, #8
.L0804E9AE:
	cmp r0, #0
	beq .L0804E9B6
	cmp r4, r7
	blo .L0804E978
.L0804E9B6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0804E9C8
func_0804E9C8: @ 0x0804E9C8
	movs r0, #0
	bx lr

	thumb_func_start func_0804E9CC
func_0804E9CC: @ 0x0804E9CC
	movs r0, #0
	bx lr
.L0804E9D0:
	.byte 0x00, 0xB5, 0x13, 0x1C, 0x02, 0x04, 0x12, 0x0C, 0x00, 0x0C, 0x42, 0x43, 0x52, 0x01, 0x92, 0x08
	.byte 0x03, 0x48, 0x02, 0x40, 0x18, 0x1C, 0x84, 0xF0, 0xB1, 0xFE, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0xFF, 0xFF, 0x1F, 0x00

	thumb_func_start func_0804E9F4
func_0804E9F4: @ 0x0804E9F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov ip, r2
	mov r8, r3
	ldr r0, [sp, #0x20]
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	adds r6, r4, #0
	movs r1, #0
	cmp r1, r8
	bhs .L0804EA48
	ldr r0, [sp, #0x24]
	lsls r0, r0, #1
	mov sb, r0
.L0804EA1E:
	movs r2, #0
	adds r7, r1, #1
	cmp r2, ip
	bhs .L0804EA3E
	mov r0, sl
	lsls r3, r0, #0xc
.L0804EA2A:
	adds r1, r5, #0
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	orrs r1, r3
	strh r1, [r4]
	adds r4, #2
	adds r2, #1
	cmp r2, ip
	blo .L0804EA2A
.L0804EA3E:
	add r6, sb
	adds r4, r6, #0
	adds r1, r7, #0
	cmp r1, r8
	blo .L0804EA1E
.L0804EA48:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0804EA58
func_0804EA58: @ 0x0804EA58
	push {r4, r5, r6, r7, lr}
	ldr r5, [sp, #0x14]
	ldr r6, [sp, #0x18]
	ldr r7, [sp, #0x1c]
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	ldr r4, .L0804EA7C @ =vtable_unk_080E7868
	str r4, [r0, #8]
	str r1, [r0, #0xc]
	strh r2, [r0, #0x12]
	str r3, [r0, #0x14]
	str r5, [r0, #0x18]
	strh r6, [r0, #0x10]
	str r7, [r0, #0x1c]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0804EA7C: .4byte vtable_unk_080E7868

	thumb_func_start func_0804EA80
func_0804EA80: @ 0x0804EA80
	push {lr}
	ldr r2, .L0804EA90 @ =vtable_unk_080E7868
	str r2, [r0, #8]
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0
.L0804EA90: .4byte vtable_unk_080E7868

	thumb_func_start func_0804EA94
func_0804EA94: @ 0x0804EA94
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, [sp, #0x1c]
	movs r4, #0
	movs r5, #0
	str r4, [sp]
	str r5, [sp, #4]
	movs r4, #0x80
	lsls r4, r4, #5
	ldr r6, [sp]
	orrs r6, r4
	str r6, [sp]
	mov r4, sp
	ldrb r4, [r4]
	adds r4, r4, r2
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r5, .L0804EB44 @ =0xFFFFFF00
	ands r5, r6
	orrs r5, r4
	lsls r2, r5, #7
	lsrs r2, r2, #0x17
	adds r2, r2, r1
	ldr r1, .L0804EB48 @ =0x000001FF
	ands r2, r1
	lsls r2, r2, #0x10
	ldr r6, .L0804EB4C @ =0xFE00FFFF
	ands r6, r5
	orrs r6, r2
	ldr r2, [sp, #4]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x16
	adds r1, r1, r3
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r3, .L0804EB50 @ =0xFFFFFC00
	ands r3, r2
	orrs r3, r1
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x1c
	adds r1, r1, r7
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #0xc
	ldr r4, .L0804EB54 @ =0xFFFF0FFF
	ands r4, r3
	orrs r4, r1
	lsls r1, r4, #0x14
	lsrs r1, r1, #0x1e
	ldr r2, [sp, #0x20]
	adds r1, r1, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #3
	ands r1, r3
	lsls r1, r1, #0xa
	ldr r2, .L0804EB58 @ =0xFFFFF3FF
	ands r2, r4
	orrs r2, r1
	str r2, [sp, #4]
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x1e
	ldr r4, [sp, #0x28]
	adds r1, r1, r4
	ands r1, r3
	lsls r1, r1, #0xe
	ldr r3, .L0804EB5C @ =0xFFFF3FFF
	ands r3, r6
	orrs r3, r1
	lsrs r2, r3, #0x1e
	ldr r1, [sp, #0x24]
	adds r2, r2, r1
	lsls r2, r2, #0x1e
	ldr r1, .L0804EB60 @ =0x3FFFFFFF
	ands r1, r3
	orrs r1, r2
	str r1, [sp]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	str r1, [r0]
	str r2, [r0, #4]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.align 2, 0
.L0804EB44: .4byte 0xFFFFFF00
.L0804EB48: .4byte 0x000001FF
.L0804EB4C: .4byte 0xFE00FFFF
.L0804EB50: .4byte 0xFFFFFC00
.L0804EB54: .4byte 0xFFFF0FFF
.L0804EB58: .4byte 0xFFFFF3FF
.L0804EB5C: .4byte 0xFFFF3FFF
.L0804EB60: .4byte 0x3FFFFFFF
.L0804EB64:
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x87, 0xB0
	.byte 0x06, 0x1C, 0x89, 0x46, 0x17, 0x1C, 0x00, 0x2F, 0x44, 0xD0, 0x00, 0x20, 0x82, 0x46, 0x00, 0x2E
	.byte 0x02, 0xDA, 0x76, 0x42, 0x01, 0x21, 0x8A, 0x46, 0x00, 0x25, 0x68, 0x46, 0xC0, 0x19, 0x06, 0x90
	.byte 0xBD, 0x42, 0x1E, 0xD2, 0x03, 0xA9, 0x88, 0x46, 0x40, 0x46, 0x44, 0x19, 0x30, 0x1C, 0x0A, 0x21
	.byte 0x82, 0xF0, 0x96, 0xF9, 0x30, 0x30, 0x20, 0x70, 0x30, 0x1C, 0x0A, 0x21, 0x82, 0xF0, 0x8C, 0xF9
	.byte 0x06, 0x1C, 0x00, 0x2E, 0x0A, 0xD1, 0x01, 0x35, 0xBD, 0x42, 0x0A, 0xD2, 0x44, 0x46, 0x20, 0x21
	.byte 0x60, 0x19, 0x01, 0x70, 0x01, 0x35, 0xBD, 0x42, 0xFA, 0xD3, 0x02, 0xE0, 0x01, 0x35, 0xBD, 0x42
	.byte 0xE2, 0xD3, 0x51, 0x46, 0x00, 0x29, 0x03, 0xD0, 0x03, 0xA8, 0x40, 0x19, 0x2D, 0x21, 0x01, 0x70
	.byte 0x00, 0x22, 0xBA, 0x42, 0x0A, 0xD2, 0x03, 0xAB, 0x68, 0x46, 0x01, 0x38, 0x39, 0x18, 0x98, 0x18
	.byte 0x00, 0x78, 0x08, 0x70, 0x01, 0x39, 0x01, 0x32, 0xBA, 0x42, 0xF8, 0xD3, 0x00, 0x20, 0x06, 0x9E
	.byte 0x30, 0x70, 0x0C, 0xE0, 0x32, 0x1C, 0x69, 0x46, 0x00, 0x2A, 0x03, 0xDA, 0x2D, 0x20, 0x08, 0x70
	.byte 0x01, 0x31, 0x52, 0x42, 0x10, 0x1C, 0x92, 0xF0, 0x71, 0xF9, 0x68, 0x46, 0x87, 0x72, 0x6A, 0x46
	.byte 0x01, 0x4D, 0x02, 0x4C, 0x02, 0x4B, 0x0D, 0xE0, 0x78, 0x9E, 0x0F, 0x08, 0x28, 0x9F, 0x0F, 0x08
	.byte 0x2C, 0x9F, 0x0F, 0x08, 0x08, 0x78, 0x4E, 0x46, 0x30, 0x70, 0x48, 0x78, 0x70, 0x70, 0x02, 0x20
	.byte 0x81, 0x44, 0x01, 0x32, 0x11, 0x78, 0x00, 0x29, 0x11, 0xD0, 0x08, 0x1C, 0x30, 0x38, 0x00, 0x06
	.byte 0x00, 0x0E, 0x09, 0x28, 0x03, 0xD8, 0x48, 0x00, 0x40, 0x18, 0x41, 0x19, 0xEA, 0xE7, 0x20, 0x29
	.byte 0x01, 0xD1, 0x21, 0x1C, 0xE6, 0xE7, 0x2D, 0x29, 0x01, 0xD1, 0x19, 0x1C, 0xE2, 0xE7, 0x00, 0x20
	.byte 0x49, 0x46, 0x08, 0x70, 0x07, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47

	thumb_func_start func_0804EC84
func_0804EC84: @ 0x0804EC84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r1, #0
	mov r8, r2
	lsrs r1, r0, #0x1f
	mov sb, r1
	movs r4, #0
	adds r5, r0, #0
	cmp r5, #0
	bge .L0804ECA0
	rsbs r5, r5, #0
.L0804ECA0:
	movs r6, #1
.L0804ECA2:
	add r4, sp
	adds r0, r5, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r4]
	adds r4, r6, #0
	adds r0, r5, #0
	movs r1, #0xa
	bl __divsi3
	adds r5, r0, #0
	cmp r5, #0
	ble .L0804ECC8
	adds r0, r4, #1
	adds r6, r0, #0
	cmp r6, #0xa
	bls .L0804ECA2
.L0804ECC8:
	mov r2, r8
	cmp r2, #0
	beq .L0804ECE8
	cmp r8, r4
	bhs .L0804ECD6
	mov r4, r8
	b .L0804ECE8
.L0804ECD6:
	cmp r8, r4
	bls .L0804ECE8
	movs r1, #0x20
.L0804ECDC:
	mov r2, sp
	adds r0, r2, r4
	strb r1, [r0]
	adds r4, #1
	cmp r8, r4
	bhi .L0804ECDC
.L0804ECE8:
	mov r0, sb
	cmp r0, #0
	beq .L0804ECF8
	mov r2, sp
	adds r1, r2, r4
	movs r0, #0x2d
	strb r0, [r1]
	adds r4, #1
.L0804ECF8:
	subs r4, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	beq .L0804ED14
	adds r1, r0, #0
.L0804ED04:
	mov r2, sp
	adds r0, r2, r4
	ldrb r0, [r0]
	strb r0, [r7]
	adds r7, #1
	subs r4, #1
	cmp r4, r1
	bne .L0804ED04
.L0804ED14:
	movs r0, #0
	strb r0, [r7]
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0804ED28
func_0804ED28: @ 0x0804ED28
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	adds r5, r1, #0
	lsrs r6, r3, #4
.L0804ED36:
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r2, r0, #2
	adds r2, r2, r0
	lsls r2, r2, #1
	subs r2, r4, r2
	lsls r2, r2, #2
	adds r2, r7, r2
	adds r1, r2, #1
	orrs r1, r6
	strh r1, [r5]
	subs r3, r5, #2
	adds r1, r6, #0
	orrs r1, r2
	strh r1, [r3]
	ldr r1, [sp, #0x14]
	lsls r3, r1, #1
	adds r3, r3, r5
	adds r1, r2, #3
	orrs r1, r6
	strh r1, [r3]
	subs r3, #2
	adds r2, #2
	orrs r2, r6
	strh r2, [r3]
	adds r4, r0, #0
	subs r5, #4
	cmp r4, #0
	bne .L0804ED36
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0804ED7C:
	.byte 0x70, 0xB5, 0x04, 0x9D
	.byte 0x05, 0x9E, 0x00, 0x24, 0x04, 0x60, 0x44, 0x60, 0x04, 0x4C, 0x84, 0x60, 0xC1, 0x60, 0x02, 0x61
	.byte 0x83, 0x82, 0xC5, 0x82, 0x86, 0x61, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x58, 0x78, 0x0E, 0x08

	thumb_func_start func_0804EDA0
func_0804EDA0: @ 0x0804EDA0
	push {lr}
	ldr r2, .L0804EDB0 @ =vtable_unk_080E7858
	str r2, [r0, #8]
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0
.L0804EDB0: .4byte vtable_unk_080E7858

	thumb_func_start func_0804EDB4
func_0804EDB4: @ 0x0804EDB4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	adds r5, r1, #0
	lsrs r6, r3, #4
.L0804EDC2:
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r1, r4, r1
	lsls r1, r1, #1
	adds r1, r7, r1
	adds r2, r6, #0
	orrs r2, r1
	strh r2, [r5]
	ldr r3, [sp, #0x14]
	lsls r2, r3, #1
	adds r2, r2, r5
	adds r1, #1
	orrs r1, r6
	strh r1, [r2]
	adds r4, r0, #0
	subs r5, #2
	cmp r4, #0
	bne .L0804EDC2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0804EDF8:
	.byte 0x70, 0xB5, 0x04, 0x9D, 0x05, 0x9E, 0x00, 0x24
	.byte 0x04, 0x60, 0x44, 0x60, 0x04, 0x4C, 0x84, 0x60, 0xC1, 0x60, 0x02, 0x61, 0x83, 0x82, 0xC5, 0x82
	.byte 0x86, 0x61, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x48, 0x78, 0x0E, 0x08

	thumb_func_start func_0804EE1C
func_0804EE1C: @ 0x0804EE1C
	push {lr}
	ldr r2, .L0804EE2C @ =vtable_unk_080E7848
	str r2, [r0, #8]
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0
.L0804EE2C: .4byte vtable_unk_080E7848

	thumb_func_start func_0804EE30
func_0804EE30: @ 0x0804EE30
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x10
	adds r5, r1, #0
	lsrs r6, r3, #4
.L0804EE3E:
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r1, r4, r1
	adds r1, r7, r1
	orrs r1, r6
	strh r1, [r5]
	adds r4, r0, #0
	subs r5, #2
	cmp r4, #0
	bne .L0804EE3E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0804EE64
func_0804EE64: @ 0x0804EE64
	push {r4, r5, r6, lr}
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	ldr r4, .L0804EE84 @ =vtable_unk_080E7838
	str r4, [r0, #8]
	str r1, [r0, #0xc]
	str r2, [r0, #0x10]
	strh r3, [r0, #0x14]
	strh r5, [r0, #0x16]
	str r6, [r0, #0x18]
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L0804EE84: .4byte vtable_unk_080E7838

	thumb_func_start func_0804EE88
func_0804EE88: @ 0x0804EE88
	push {lr}
	ldr r2, .L0804EE98 @ =vtable_unk_080E7838
	str r2, [r0, #8]
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0
.L0804EE98: .4byte vtable_unk_080E7838

	thumb_func_start func_0804EE9C
func_0804EE9C: @ 0x0804EE9C
	push {r4, lr}
	sub sp, #4
	ldr r4, [r0, #0xc]
	ldr r1, [r0, #0x10]
	ldrh r2, [r0, #0x14]
	ldrh r3, [r0, #0x16]
	ldr r0, [r0, #0x18]
	str r0, [sp]
	adds r0, r4, #0
	bl func_0804EE30
	movs r0, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0804EEBC
func_0804EEBC: @ 0x0804EEBC
	push {r4, lr}
	sub sp, #4
	ldr r4, [r0, #0xc]
	ldr r1, [r0, #0x10]
	ldrh r2, [r0, #0x14]
	ldrh r3, [r0, #0x16]
	ldr r0, [r0, #0x18]
	str r0, [sp]
	adds r0, r4, #0
	bl func_0804EDB4
	movs r0, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0804EEDC
func_0804EEDC: @ 0x0804EEDC
	push {r4, lr}
	sub sp, #4
	ldr r4, [r0, #0xc]
	ldr r1, [r0, #0x10]
	ldrh r2, [r0, #0x14]
	ldrh r3, [r0, #0x16]
	ldr r0, [r0, #0x18]
	str r0, [sp]
	adds r0, r4, #0
	bl func_0804ED28
	movs r0, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0804EEFC
func_0804EEFC: @ 0x0804EEFC
	push {r4, r5, lr}
	sub sp, #8
	ldr r5, [r0, #0xc]
	ldrh r1, [r0, #0x12]
	ldr r2, [r0, #0x14]
	ldr r3, [r0, #0x18]
	ldrh r4, [r0, #0x10]
	str r4, [sp]
	ldr r0, [r0, #0x1c]
	str r0, [sp, #4]
	adds r0, r5, #0
	bl func_0804E9F4
	movs r0, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0804EF20
func_0804EF20: @ 0x0804EF20
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0xc]
	ldr r3, [r5, #0x10]
	ldrb r6, [r5, #0x15]
	movs r0, #0x80
	ands r0, r6
	cmp r0, #0
	beq .L0804EF94
	ldrh r0, [r5, #0x14]
	lsls r0, r0, #0x12
	lsrs r0, r0, #0xd
	adds r7, r3, r0
	lsls r0, r6, #0x19
	lsrs r0, r0, #0x1f
	movs r1, #1
	eors r1, r0
	lsls r2, r1, #6
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r6
	orrs r0, r2
	strb r0, [r5, #0x15]
	lsls r1, r1, #2
	ldr r2, .L0804EF90 @ =0x0F0F0F0F
	lsls r2, r1
	mvns r1, r2
.L0804EF56:
	ldm r4!, {r0}
	ands r0, r2
	stm r3!, {r0}
	ldm r4!, {r0}
	ands r0, r1
	stm r3!, {r0}
	ldm r4!, {r0}
	ands r0, r2
	stm r3!, {r0}
	ldm r4!, {r0}
	ands r0, r1
	stm r3!, {r0}
	ldm r4!, {r0}
	ands r0, r2
	stm r3!, {r0}
	ldm r4!, {r0}
	ands r0, r1
	stm r3!, {r0}
	ldm r4!, {r0}
	ands r0, r2
	stm r3!, {r0}
	ldm r4!, {r0}
	ands r0, r1
	stm r3!, {r0}
	cmp r3, r7
	bne .L0804EF56
	movs r0, #1
	b .L0804EFA4
	.align 2, 0
.L0804EF90: .4byte 0x0F0F0F0F
.L0804EF94:
	ldrh r2, [r5, #0x14]
	lsls r2, r2, #0x12
	lsrs r2, r2, #0xf
	adds r0, r4, #0
	adds r1, r3, #0
	bl CpuFastSet
	movs r0, #0
.L0804EFA4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0804EFAC
func_0804EFAC: @ 0x0804EFAC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov sb, r1
	ldrh r0, [r6, #0x14]
	mov r8, r0
	ldrh r1, [r6, #0x16]
	ldrb r0, [r6, #0x18]
	adds r0, r1, r0
	cmp r0, #2
	ble .L0804EFCA
	subs r0, #3
.L0804EFCA:
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, [r0, #8]
	mov r2, r8
	lsrs r0, r2, #2
	lsls r0, r0, #4
	adds r7, r1, r0
	movs r0, #3
	ands r2, r0
	cmp r2, #3
	bhi .L0804F016
	ldr r1, [r7]
	ands r2, r0
	lsls r2, r2, #3
	add r5, sp, #4
	movs r3, #4
	movs r4, #2
	adds r0, r5, #0
	strh r3, [r0]
	strh r4, [r5, #2]
	ldr r0, [sp, #4]
	adds r1, #4
	mov r3, sb
	str r3, [sp]
	movs r3, #0
	bl func_0804E4AC
	adds r2, r0, #0
	subs r0, r2, #1
	cmp r0, #1
	bhi .L0804F012
	ldr r1, [r7, #8]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	strb r0, [r7, #0xc]
.L0804F012:
	adds r0, r2, #0
	b .L0804F018
.L0804F016:
	movs r0, #0
.L0804F018:
	cmp r0, #0
	beq .L0804F020
	cmp r0, #2
	bls .L0804F024
.L0804F020:
	movs r0, #0
	b .L0804F046
.L0804F024:
	add r0, r8
	cmp r0, #0x1b
	bls .L0804F030
	movs r1, #0x1c
	bl __umodsi3
.L0804F030:
	strh r0, [r6, #0x14]
	mov r0, sb
	cmp r0, #0x20
	beq .L0804F042
	ldr r0, .L0804F054 @ =0x00008140
	cmp sb, r0
	beq .L0804F042
	movs r0, #1
	strb r0, [r6, #0x1b]
.L0804F042:
	movs r0, #1
	strb r0, [r6, #0x1a]
.L0804F046:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0804F054: .4byte 0x00008140
.L0804F058:
	.byte 0x00, 0x21, 0x81, 0x82, 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_0804F060
func_0804F060: @ 0x0804F060
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldrh r0, [r5, #0x16]
	cmp r0, #1
	bhi .L0804F078
	adds r0, #1
	strh r0, [r5, #0x16]
	b .L0804F0D2
.L0804F078:
	ldrb r0, [r5, #0x18]
	adds r0, #1
	strb r0, [r5, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls .L0804F08A
	movs r0, #0
	strb r0, [r5, #0x18]
.L0804F08A:
	ldrb r1, [r5, #0x18]
	adds r0, r1, #2
	cmp r0, #2
	ble .L0804F094
	subs r0, r1, #1
.L0804F094:
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r6, sp
	movs r1, #4
	mov sb, r1
	movs r1, #2
	mov r8, r1
	ldr r4, [r0, #8]
	movs r7, #6
.L0804F0A6:
	ldr r1, [r4]
	mov r0, sb
	strh r0, [r6]
	mov r0, r8
	strh r0, [r6, #2]
	ldr r0, [sp]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	ldr r1, [r4, #8]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	strb r0, [r4, #0xc]
	adds r4, #0x10
	subs r7, #1
	cmp r7, #0
	bge .L0804F0A6
	movs r0, #1
	strb r0, [r5, #0x19]
	strb r0, [r5, #0x1a]
.L0804F0D2:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0804F0E0
func_0804F0E0: @ 0x0804F0E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r3, r0, #0
	movs r1, #0
	mov r8, sp
	movs r0, #2
	mov sl, r0
.L0804F0F6:
	movs r7, #0
	lsls r0, r1, #2
	adds r1, #1
	mov sb, r1
	adds r6, r0, r3
	adds r6, #8
.L0804F102:
	ldr r5, [r6]
	lsls r0, r7, #4
	adds r5, r5, r0
	adds r4, r5, #0
	ldm r4!, {r1}
	movs r0, #4
	mov r2, r8
	strh r0, [r2]
	mov r0, sl
	strh r0, [r2, #2]
	ldr r0, [sp]
	adds r1, #4
	movs r2, #0
	str r3, [sp, #4]
	bl func_0804E7A0
	ldr r1, [r4, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	strb r0, [r5, #0xc]
	adds r7, #1
	ldr r3, [sp, #4]
	cmp r7, #6
	ble .L0804F102
	mov r1, sb
	cmp r1, #2
	ble .L0804F0F6
	movs r0, #0
	movs r1, #0
	strh r1, [r3, #0x16]
	strh r1, [r3, #0x14]
	movs r1, #1
	strb r1, [r3, #0x19]
	strb r1, [r3, #0x1a]
	strb r0, [r3, #0x1b]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0804F15C
func_0804F15C: @ 0x0804F15C
	ldrb r0, [r0, #0x19]
	bx lr

	thumb_func_start func_0804F160
func_0804F160: @ 0x0804F160
	push {lr}
	ldrb r0, [r0, #4]
	adds r1, r0, #0
	cmp r0, #0
	beq .L0804F16C
	movs r1, #1
.L0804F16C:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0804F174
func_0804F174: @ 0x0804F174
	movs r0, #1
	bx lr

	thumb_func_start func_0804F178
func_0804F178: @ 0x0804F178
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq .L0804F194
	ldrb r0, [r1, #4]
	adds r1, r0, #0
	cmp r0, #0
	beq .L0804F18E
	movs r1, #1
.L0804F18E:
	cmp r1, #0
	beq .L0804F194
	movs r2, #1
.L0804F194:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0804F19C
func_0804F19C: @ 0x0804F19C
	push {r4, r5, lr}
	sub sp, #0x60
	adds r5, r0, #0
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x16
	adds r2, #3
	ldr r1, .L0804F270 @ =0x000003FF
	adds r0, r1, #0
	ands r2, r0
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x1c
	lsls r0, r0, #0xc
	orrs r2, r0
	lsls r0, r2, #0x10
	orrs r2, r0
	ldrb r1, [r5, #0xc]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x10
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	str r2, [sp, #0xc]
	add r0, sp, #0xc
	ldr r2, .L0804F274 @ =0x010000A0
	bl CpuFastSet
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x10
	adds r0, r0, r4
	movs r1, #3
	str r1, [sp]
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x16
	str r1, [sp, #4]
	ldr r1, [r5, #0xc]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1c
	str r1, [sp, #8]
	movs r1, #0x10
	movs r2, #0
	movs r3, #0xe
	bl func_08051320
	ldrb r0, [r5, #0xc]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x10
	adds r0, r0, r4
	movs r1, #7
	str r1, [sp]
	ldrh r1, [r5, #0xc]
	lsls r1, r1, #0x11
	lsrs r1, r1, #0x16
	str r1, [sp, #4]
	ldr r1, [r5, #0xc]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1c
	str r1, [sp, #8]
	movs r1, #0
	movs r2, #3
	movs r3, #0x1e
	bl func_08051320
	ldr r1, [r5, #0xc]
	lsls r1, r1, #0xd
	lsrs r1, r1, #0x1c
	ldr r0, .L0804F278 @ =gUnk_080F9F78
	ldr r0, [r0]
	lsls r1, r1, #5
	movs r2, #0xa0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #8
	bl CpuFastSet
	add r4, sp, #0x30
	ldr r1, .L0804F27C @ =gUnk_08728208
	adds r0, r4, #0
	bl func_0805E6CC
	add r0, sp, #0x10
	adds r1, r4, #0
	movs r2, #0
	bl func_0805E790
	ldr r0, [sp, #0x20]
	ldrb r1, [r5, #0xe]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1c
	lsls r1, r1, #5
	ldr r2, .L0804F280 @ =0x05000200
	adds r1, r1, r2
	movs r2, #8
	bl CpuFastSet
	ldr r0, .L0804F284 @ =vtable_unk_080E5A28
	str r0, [sp, #0x30]
	movs r0, #0
	add sp, #0x60
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L0804F270: .4byte 0x000003FF
.L0804F274: .4byte 0x010000A0
.L0804F278: .4byte gUnk_080F9F78
.L0804F27C: .4byte gUnk_08728208
.L0804F280: .4byte 0x05000200
.L0804F284: .4byte vtable_unk_080E5A28

	thumb_func_start func_0804F288
func_0804F288: @ 0x0804F288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov r8, r0
	movs r0, #3
	ands r1, r0
	mov r0, r8
	ldrb r4, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r4
	orrs r0, r1
	movs r4, #0x1f
	adds r1, r2, #0
	ands r1, r4
	lsls r1, r1, #2
	movs r4, #0x7d
	rsbs r4, r4, #0
	ands r0, r4
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	lsrs r1, r2, #3
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #7
	mov r0, r8
	ldrh r4, [r0]
	ldr r0, .L0804F64C @ =0xFFFFFE7F
	ands r0, r4
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
	movs r0, #7
	ands r0, r2
	lsls r0, r0, #6
	adds r0, #0x14
	lsls r0, r0, #9
	ldr r1, [r1]
	ldr r2, .L0804F650 @ =0xFFF801FF
	ands r1, r2
	orrs r1, r0
	mov r2, r8
	str r1, [r2]
	movs r0, #0xf
	ands r3, r0
	lsls r3, r3, #3
	ldrb r1, [r2, #2]
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #2]
	ldr r0, [sp, #0x40]
	str r0, [r2, #4]
	movs r4, #0
	str r4, [r2, #8]
	strb r4, [r2, #0xc]
	movs r0, #1
	strb r0, [r2, #0xd]
	mov r5, r8
	adds r5, #0x10
	adds r0, r5, #0
	ldr r1, [sp, #0x48]
	bl func_08007770
	mov r0, r8
	adds r0, #0x18
	ldr r1, [sp, #0x44]
	movs r2, #2
	bl func_080083D0
	mov r2, r8
	adds r2, #0x20
	mov r1, r8
	str r4, [r1, #0x20]
	str r4, [r2, #4]
	ldr r0, .L0804F654 @ =vtable_unk_080E5BB4
	str r0, [r2, #8]
	adds r1, #0x30
	str r1, [r2, #0xc]
	mov r0, r8
	str r4, [r0, #0x30]
	str r4, [r1, #4]
	ldr r0, .L0804F658 @ =vtable_unk_080E5BD8
	str r0, [r1, #8]
	mov r0, r8
	adds r0, #0x2c
	str r0, [r2, #0x10]
	str r1, [r2, #0x14]
	adds r2, #0x1c
	mov r1, r8
	str r4, [r1, #0x3c]
	adds r0, #0x94
	str r4, [r0]
	str r4, [r0, #4]
	ldr r1, .L0804F65C @ =vtable_unk_080E7898
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	movs r2, #0xd0
	add r2, r8
	mov sl, r2
	ldr r0, .L0804F660 @ =vtable_unk_080E78C0
	str r0, [r2]
	str r5, [r2, #4]
	mov r1, r8
	adds r1, #0xd8
	movs r0, #2
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L0804F36C:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L0804F36C
	movs r1, #0
	movs r0, #0
	mov r2, sl
	strh r0, [r2, #0x14]
	strh r0, [r2, #0x16]
	strb r1, [r2, #0x18]
	strb r1, [r2, #0x19]
	strb r1, [r2, #0x1a]
	strb r1, [r2, #0x1b]
	movs r4, #0
	mov r0, r8
	adds r0, #0x10
	str r0, [sp, #0x18]
	mov r1, r8
	adds r1, #0xd0
	str r1, [sp, #0x10]
	mov r2, r8
	adds r2, #0xec
	str r2, [sp, #0x14]
.L0804F39A:
	movs r0, #0x70
	bl __builtin_new
	mov sb, r0
	mov r5, sb
	movs r6, #6
	lsls r0, r4, #2
	str r0, [sp, #0xc]
	adds r4, #1
	str r4, [sp, #0x1c]
.L0804F3AE:
	movs r0, #0x82
	lsls r0, r0, #1
	bl __builtin_new
	adds r4, r5, #0
	stm r4!, {r0}
	adds r0, r4, #0
	bl func_08007874
	movs r1, #0
	str r1, [r4, #4]
	strb r1, [r5, #0xc]
	adds r5, #0x10
	subs r6, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne .L0804F3AE
	ldr r7, [sp, #0xc]
	add r7, sl
	adds r7, #8
	ldr r6, [r7]
	cmp sb, r6
	beq .L0804F40E
	cmp r6, #0
	beq .L0804F40E
	adds r5, r6, #0
	adds r5, #0x70
	cmp r6, r5
	beq .L0804F408
.L0804F3EA:
	subs r5, #0x10
	adds r4, r5, #4
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	ldr r0, [r5]
	bl __builtin_delete
	cmp r6, r5
	bne .L0804F3EA
.L0804F408:
	adds r0, r6, #0
	bl __builtin_delete
.L0804F40E:
	mov r2, sb
	str r2, [r7]
	movs r0, #0
	mov sb, r0
	ldr r6, [sp, #0xc]
	add r6, sl
	adds r6, #8
	add r7, sp, #8
.L0804F41E:
	ldr r1, [r6]
	mov r2, sb
	lsls r0, r2, #4
	adds r5, r1, r0
	mov r0, sp
	ldr r1, [sp, #0x44]
	movs r2, #3
	bl func_080083D0
	adds r4, r5, #4
	cmp sp, r4
	beq .L0804F448
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl func_08007CD8
	str r0, [r4, #4]
.L0804F448:
	ldr r1, [sp, #4]
	mov r0, sp
	bl func_08007C28
	mov r0, sp
	movs r1, #2
	bl func_080079E8
	ldr r1, [r4, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq .L0804F47A
	ldr r1, [r5]
	movs r0, #4
	movs r2, #2
	strh r0, [r7]
	strh r2, [r7, #2]
	ldr r0, [sp, #8]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	movs r0, #1
.L0804F47A:
	strb r0, [r5, #0xc]
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #6
	ble .L0804F41E
	ldr r4, [sp, #0x1c]
	cmp r4, #2
	ble .L0804F39A
	movs r7, #0
	mov r2, sl
	strb r0, [r2, #0x1a]
	ldr r0, [sp, #0x14]
	bl func_080ADD44
	movs r0, #0x90
	lsls r0, r0, #1
	add r0, r8
	str r7, [r0]
	str r7, [r0, #4]
	ldr r1, .L0804F664 @ =vtable_unk_080E7888
	str r1, [r0, #8]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0xc]
	mov r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #0x17
	lsrs r1, r0, #0x1e
	ldr r0, [r2]
	lsls r0, r0, #0xd
	lsrs r5, r0, #0x16
	ldr r0, .L0804F668 @ =gUnk_080F9F74
	ldr r0, [r0]
	lsrs r6, r0, #5
	movs r4, #0
	ldr r0, [sp, #0x40]
	cmp r0, #1
	bne .L0804F4C8
	movs r4, #1
.L0804F4C8:
	movs r2, #0x98
	lsls r2, r2, #1
	add r2, r8
	ldr r0, .L0804F66C @ =gUnk_080F9F70
	ldr r3, [r0]
	lsls r1, r1, #0xe
	lsls r0, r5, #5
	adds r1, r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	str r7, [r2]
	str r7, [r2, #4]
	ldr r0, .L0804F670 @ =vtable_unk_080E78E0
	str r0, [r2, #8]
	str r3, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r1, .L0804F674 @ =0x00003FFF
	adds r0, r1, #0
	adds r1, r6, #0
	ands r1, r0
	ldrh r3, [r2, #0x14]
	ldr r0, .L0804F678 @ =0xFFFFC000
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #0x14]
	ldrb r1, [r2, #0x15]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	lsls r3, r4, #7
	movs r1, #0x7f
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0x15]
	mov r2, r8
	ldrb r6, [r2]
	lsls r6, r6, #0x19
	lsrs r6, r6, #0x1b
	ldr r4, [r2]
	lsls r4, r4, #0xd
	lsrs r4, r4, #0x16
	ldrb r5, [r2, #2]
	lsls r5, r5, #0x19
	lsrs r5, r5, #0x1c
	ldr r0, [sp, #0x18]
	ldr r1, [r0, #4]
	bl func_080074C0
	movs r3, #0xa4
	lsls r3, r3, #1
	add r3, r8
	str r7, [r3]
	str r7, [r3, #4]
	ldr r1, .L0804F67C @ =vtable_unk_080E7878
	str r1, [r3, #8]
	ldrb r2, [r3, #0xc]
	movs r1, #0x20
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r6
	strb r1, [r3, #0xc]
	lsls r4, r4, #5
	ldrh r2, [r3, #0xc]
	ldr r1, .L0804F680 @ =0xFFFF801F
	ands r1, r2
	orrs r1, r4
	strh r1, [r3, #0xc]
	lsls r5, r5, #0xf
	ldr r1, [r3, #0xc]
	ldr r2, .L0804F684 @ =0xFFF87FFF
	ands r1, r2
	orrs r1, r5
	str r1, [r3, #0xc]
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #3
	ldrb r2, [r3, #0xe]
	movs r1, #0x79
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r3, #0xe]
	movs r0, #0xac
	lsls r0, r0, #1
	add r0, r8
	str r7, [r0]
	movs r0, #0xb0
	lsls r0, r0, #1
	add r0, r8
	ldr r1, .L0804F688 @ =gUnk_08728208
	bl func_0805E6CC
	movs r4, #0xc8
	lsls r4, r4, #1
	add r4, r8
	ldr r1, .L0804F68C @ =gUnk_0872937C
	adds r0, r4, #0
	bl func_0805E6CC
	movs r0, #0xe0
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r4, #0
	movs r2, #0
	bl func_0805E824
	movs r0, #0xea
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [sp, #0x44]
	movs r2, #7
	bl func_080083D0
	movs r2, #0xee
	lsls r2, r2, #1
	add r2, r8
	ldrb r1, [r2]
	movs r4, #2
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r5, #3
	rsbs r5, r5, #0
	ands r0, r5
	strb r0, [r2]
	movs r0, #0xf2
	lsls r0, r0, #1
	add r0, r8
	bl func_080ADC00
	movs r0, #0xf4
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [sp, #0x48]
	bl func_08007770
	movs r1, #0xf8
	lsls r1, r1, #1
	add r1, r8
	ldrb r0, [r1]
	ands r4, r0
	ands r4, r5
	strb r4, [r1]
	movs r0, #2
	movs r1, #1
	rsbs r1, r1, #0
.L0804F5F2:
	subs r0, #1
	cmp r0, r1
	bne .L0804F5F2
	movs r1, #0xa0
	lsls r1, r1, #3
	add r1, r8
	movs r0, #0
	strb r0, [r1]
	ldr r4, .L0804F690 @ =0x00000504
	add r4, r8
	ldr r1, .L0804F694 @ =gUnk_08728320
	adds r0, r4, #0
	bl func_0805E6CC
	ldr r0, .L0804F698 @ =0x00000534
	add r0, r8
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r4, #0
	movs r2, #0
	bl func_0805E824
	movs r0, #0xa9
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [sp, #0x48]
	bl func_08007770
	movs r2, #0xaa
	lsls r2, r2, #3
	add r2, r8
	ldrb r0, [r2]
	movs r1, #0x3f
	orrs r0, r1
	strb r0, [r2]
	mov r0, r8
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0804F64C: .4byte 0xFFFFFE7F
.L0804F650: .4byte 0xFFF801FF
.L0804F654: .4byte vtable_unk_080E5BB4
.L0804F658: .4byte vtable_unk_080E5BD8
.L0804F65C: .4byte vtable_unk_080E7898
.L0804F660: .4byte vtable_unk_080E78C0
.L0804F664: .4byte vtable_unk_080E7888
.L0804F668: .4byte gUnk_080F9F74
.L0804F66C: .4byte gUnk_080F9F70
.L0804F670: .4byte vtable_unk_080E78E0
.L0804F674: .4byte 0x00003FFF
.L0804F678: .4byte 0xFFFFC000
.L0804F67C: .4byte vtable_unk_080E7878
.L0804F680: .4byte 0xFFFF801F
.L0804F684: .4byte 0xFFF87FFF
.L0804F688: .4byte gUnk_08728208
.L0804F68C: .4byte gUnk_0872937C
.L0804F690: .4byte 0x00000504
.L0804F694: .4byte gUnk_08728320
.L0804F698: .4byte 0x00000534

	thumb_func_start func_0804F69C
func_0804F69C: @ 0x0804F69C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0xa9
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	ldr r1, .L0804F79C @ =0x00000504
	adds r0, r6, r1
	ldr r5, .L0804F7A0 @ =vtable_unk_080E5A28
	str r5, [r0]
	movs r0, #0xf4
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #2
	bl func_080ADC84
	movs r0, #0xea
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r6, r1
	str r5, [r0]
	subs r1, #0x30
	adds r0, r6, r1
	str r5, [r0]
	subs r1, #0x18
	adds r0, r6, r1
	movs r1, #2
	bl func_080098AC
	movs r1, #0x98
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #2
	bl func_080098AC
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r6, r1
	movs r1, #2
	bl func_080098AC
	adds r0, r6, #0
	adds r0, #0xd0
	movs r1, #2
	bl func_080E105C
	adds r0, r6, #0
	adds r0, #0xc0
	movs r1, #2
	bl func_080098AC
	adds r1, r6, #0
	adds r1, #0x3c
	ldr r0, [r6, #0x3c]
	lsls r0, r0, #4
	adds r0, #4
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x40
	cmp r0, r1
	beq .L0804F756
.L0804F750:
	adds r0, #0x10
	cmp r0, r1
	bne .L0804F750
.L0804F756:
	adds r0, r6, #0
	adds r0, #0x20
	movs r1, #2
	bl func_080098DC
	adds r4, r6, #0
	adds r4, #0x18
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq .L0804F794
	adds r0, r6, #0
	bl __builtin_delete
.L0804F794:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0804F79C: .4byte 0x00000504
.L0804F7A0: .4byte vtable_unk_080E5A28

	thumb_func_start func_0804F7A4
func_0804F7A4: @ 0x0804F7A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb8
	adds r7, r0, #0
	str r2, [sp, #0x78]
	str r3, [sp, #0x7c]
	ldr r0, [sp, #0xe0]
	mov sl, r0
	ldrh r3, [r1, #4]
	ldrh r6, [r1, #8]
	ldrb r2, [r7, #0xd]
	mov r1, sp
	ldr r0, .L0804F7DC @ =vtable_unk_080E78A8
	str r0, [sp]
	str r3, [sp, #4]
	strb r2, [r1, #8]
	ldr r0, [r7, #8]
	cmp r0, #6
	bls .L0804F7D2
	b .L0804F99C
.L0804F7D2:
	lsls r0, r0, #2
	ldr r1, .L0804F7E0 @ =.L0804F7E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0804F7DC: .4byte vtable_unk_080E78A8
.L0804F7E0: .4byte .L0804F7E4
.L0804F7E4: @ jump table
	.4byte .L0804F99C @ case 0
	.4byte .L0804F800 @ case 1
	.4byte .L0804F880 @ case 2
	.4byte .L0804F99C @ case 3
	.4byte .L0804F892 @ case 4
	.4byte .L0804F892 @ case 5
	.4byte .L0804F90A @ case 6
.L0804F800:
	ldrb r0, [r7, #0xc]
	cmp r0, #8
	bls .L0804F834
	adds r0, r7, #0
	adds r0, #0xec
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, #1
	beq .L0804F828
	cmp r0, #1
	bgt .L0804F81C
	cmp r0, #0
	beq .L0804F822
	b .L0804F99C
.L0804F81C:
	cmp r1, #2
	beq .L0804F82E
	b .L0804F99C
.L0804F822:
	movs r0, #3
	str r0, [r7, #8]
	b .L0804F99C
.L0804F828:
	movs r0, #4
	str r0, [r7, #8]
	b .L0804F99C
.L0804F82E:
	movs r0, #5
	str r0, [r7, #8]
	b .L0804F99C
.L0804F834:
	adds r0, #1
	strb r0, [r7, #0xc]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0804F84A
	b .L0804F99C
.L0804F84A:
	movs r2, #0xaa
	lsls r2, r2, #3
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L0804F860
	b .L0804F99C
.L0804F860:
	mov r3, sl
	cmp r3, #0
	bne .L0804F868
	b .L0804F99C
.L0804F868:
	mov r0, sl
	bl func_08008CD0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0804F876
	b .L0804F99C
.L0804F876:
	mov r0, sl
	movs r1, #0xc8
	bl func_08008B6C
	b .L0804F99C
.L0804F880:
	ldrb r0, [r7, #0xc]
	adds r1, r0, #0
	cmp r1, #0
	bne .L0804F88C
	str r1, [r7, #8]
	b .L0804F99C
.L0804F88C:
	subs r0, #1
	strb r0, [r7, #0xc]
	b .L0804F99C
.L0804F892:
	adds r0, r7, #0
	adds r0, #0xec
	adds r1, r7, #0
	adds r1, #0xd0
	mov r2, sp
	bl func_080ADD78
	cmp r0, #1
	beq .L0804F8B8
	cmp r0, #1
	bgt .L0804F8AE
	cmp r0, #0
	beq .L0804F8B4
	b .L0804F8D8
.L0804F8AE:
	cmp r0, #2
	beq .L0804F8BC
	b .L0804F8D8
.L0804F8B4:
	movs r0, #3
	b .L0804F8D6
.L0804F8B8:
	movs r0, #4
	b .L0804F8D6
.L0804F8BC:
	ldr r0, [r7, #8]
	cmp r0, #5
	beq .L0804F8D8
	movs r4, #0xe0
	lsls r4, r4, #1
	adds r0, r7, r4
	movs r5, #0xc8
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r2, #0
	bl func_0805E850
	movs r0, #5
.L0804F8D6:
	str r0, [r7, #8]
.L0804F8D8:
	adds r0, r7, #0
	adds r0, #0xeb
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq .L0804F99C
	movs r6, #0xaa
	lsls r6, r6, #3
	adds r0, r7, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq .L0804F904
	mov r0, sl
	cmp r0, #0
	beq .L0804F904
	movs r1, #0xc9
	bl func_08008B88
.L0804F904:
	movs r0, #0
	strb r0, [r4]
	b .L0804F99C
.L0804F90A:
	adds r0, r7, #0
	adds r0, #0xd0
	ldrb r0, [r0, #0x1a]
	cmp r0, #0
	bne .L0804F99C
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq .L0804F944
	movs r0, #3
	str r0, [r7, #8]
	movs r1, #0xaa
	lsls r1, r1, #3
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L0804F99C
	mov r2, sl
	cmp r2, #0
	beq .L0804F99C
	mov r0, sl
	movs r1, #0xc5
	bl func_08008B6C
	b .L0804F99C
.L0804F944:
	lsls r3, r6, #0x18
	lsrs r3, r3, #0x1f
	lsls r2, r6, #0x19
	lsrs r2, r2, #0x1f
	lsls r1, r6, #0x1a
	lsrs r1, r1, #0x1f
	lsls r0, r6, #0x1b
	lsrs r0, r0, #0x1f
	eors r3, r2
	eors r1, r0
	cmp r3, r1
	beq .L0804F99C
	movs r3, #0xac
	lsls r3, r3, #1
	adds r4, r7, r3
	ldr r5, [r4]
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_08050868
	str r0, [r4]
	cmp r0, r5
	beq .L0804F99C
	movs r2, #0xaa
	lsls r2, r2, #3
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L0804F99C
	mov r3, sl
	cmp r3, #0
	beq .L0804F99C
	mov r0, sl
	movs r1, #0xcb
	bl func_08008B6C
.L0804F99C:
	adds r3, r7, #0
	adds r3, #0x20
	movs r2, #0
	adds r1, r7, #0
	adds r1, #0x30
	ldr r0, [r3, #0xc]
	cmp r0, r1
	bne .L0804F9AE
	movs r2, #1
.L0804F9AE:
	cmp r2, #0
	bne .L0804F9C0
	ldr r4, [sp, #0xd8]
	ldr r0, [r4, #8]
	ldr r2, [r0, #0x1c]
	adds r0, r4, #0
	adds r1, r3, #0
	bl _call_via_r2
.L0804F9C0:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne .L0804F9CA
	bl sub_08050342
.L0804F9CA:
	cmp r0, #6
	beq .L0804F9E2
	mov r5, sp
	adds r5, #0xc
	str r5, [sp, #0x90]
	cmp r0, #5
	beq .L0804F9DA
	b .L0804FB8A
.L0804F9DA:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	bne .L0804F9E2
	b .L0804FB8A
.L0804F9E2:
	movs r6, #0xe0
	lsls r6, r6, #1
	adds r4, r7, r6
	adds r0, r4, #0
	bl func_0805E8F0
	mov r8, r0
	add r5, sp, #0xc
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	movs r4, #0xe2
	lsls r4, r4, #1
	adds r0, r7, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r5, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r6, r8
	lsls r0, r6, #0x1e
	str r5, [sp, #0x90]
	movs r1, #0x18
	adds r1, r1, r7
	mov sb, r1
	cmp r0, #0
	bge .L0804FA6A
	ldr r5, [sp, #0x14]
	ldr r1, [r1, #4]
	mov r0, sb
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0x14
	ldr r0, [sp, #0x14]
	movs r3, #0
	cmp r0, #0
	beq .L0804FA36
	ldrh r3, [r1, #4]
.L0804FA36:
	adds r4, r7, #0
	adds r4, #0x3c
	lsls r2, r2, #5
	ldr r6, .L0804FAC8 @ =0x06010000
	adds r2, r2, r6
	add r0, sp, #0x2c
	adds r1, r5, #0
	bl func_08008F0C
	ldr r0, [r7, #0x3c]
	add r6, sp, #0x2c
	cmp r0, #7
	bhi .L0804FA6A
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L0804FA64
	adds r1, r6, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0804FA64:
	ldr r0, [r7, #0x3c]
	adds r0, #1
	str r0, [r7, #0x3c]
.L0804FA6A:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x58]
	str r1, [sp, #0x5c]
	ldr r0, [r7, #8]
	cmp r0, #6
	bne .L0804FAD8
	movs r5, #0xae
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r0, [r0]
	movs r6, #0xac
	lsls r6, r6, #1
	adds r1, r7, r6
	ldr r1, [r1]
	bl func_080507D0
	add r4, sp, #0x58
	ldrb r3, [r4]
	adds r3, #0x73
	lsls r2, r0, #0x1e
	lsrs r2, r2, #0x1e
	lsls r1, r2, #4
	adds r1, r1, r2
	adds r3, r3, r1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r1, .L0804FACC @ =0xFFFFFF00
	ldr r2, [sp, #0x58]
	ands r2, r1
	orrs r2, r3
	lsls r1, r2, #7
	lsrs r1, r1, #0x17
	adds r1, #8
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r0, .L0804FAD0 @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	ldr r0, .L0804FAD4 @ =0xFE00FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x58]
	b .L0804FB32
	.align 2, 0
.L0804FAC8: .4byte 0x06010000
.L0804FACC: .4byte 0xFFFFFF00
.L0804FAD0: .4byte 0x000001FF
.L0804FAD4: .4byte 0xFE00FFFF
.L0804FAD8:
	ldr r3, [sp, #0x58]
	lsls r0, r3, #7
	lsrs r0, r0, #0x17
	adds r0, #0xec
	ldr r1, .L0804FCC4 @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #0x10
	ldr r2, .L0804FCC8 @ =0xFE00FFFF
	ands r2, r3
	orrs r2, r0
	str r2, [sp, #0x58]
	add r3, sp, #0x58
	ldrb r0, [r3]
	adds r0, #0xa0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, .L0804FCCC @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x58]
	mov r1, r8
	lsls r0, r1, #0x1f
	adds r4, r3, #0
	cmp r0, #0
	bne .L0804FB32
	lsls r0, r1, #0x1e
	cmp r0, #0
	bge .L0804FB32
	movs r2, #0xaa
	lsls r2, r2, #3
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L0804FB32
	mov r3, sl
	cmp r3, #0
	beq .L0804FB32
	mov r0, sl
	movs r1, #0xca
	bl func_08008B6C
.L0804FB32:
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0804FCD0 @ =0xFFFF0FFF
	ldr r1, [r4, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #4]
	mov r5, sb
	ldr r1, [r5, #4]
	mov r0, sb
	bl func_08007D4C
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0804FCD4 @ =0xFFFFFC00
	ldr r1, [r4, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	ldr r1, [sp, #0x58]
	orrs r1, r0
	str r1, [sp, #0x58]
	ldr r6, [sp, #0x78]
	ldrb r2, [r6]
	cmp r2, #0x7f
	bhi .L0804FB8A
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r6, r0
	str r1, [r0]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r6]
.L0804FB8A:
	movs r6, #0
	ldrb r2, [r7]
	lsls r5, r2, #0x1e
	lsrs r5, r5, #0x1e
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r5
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	ldr r4, [sp, #0x7c]
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	lsls r3, r5, #1
	lsls r4, r5, #2
	adds r3, #8
	ldr r0, [sp, #0x7c]
	adds r3, r0, r3
	ldrh r1, [r3]
	movs r0, #0x73
	ands r1, r0
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1b
	lsls r2, r2, #8
	ldrh r0, [r7]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1e
	lsls r0, r0, #2
	orrs r2, r0
	orrs r1, r2
	ldr r2, [sp, #0x90]
	strh r1, [r2]
	strh r1, [r3]
	strh r6, [r2]
	adds r0, r4, #0
	adds r0, #0x10
	ldr r3, [sp, #0x7c]
	adds r0, r3, r0
	strh r6, [r0]
	ldr r6, .L0804FCD8 @ =0x0000FFB0
	adds r0, r6, #0
	strh r0, [r2]
	adds r4, #0x12
	adds r4, r3, r4
	strh r0, [r4]
	movs r1, #0x3f
	strh r1, [r2]
	adds r2, r3, #0
	adds r2, #0x48
	strh r1, [r2]
	movs r0, #1
	lsls r0, r5
	bics r1, r0
	ldr r0, [sp, #0x90]
	strh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x4a
	strh r1, [r0]
	ldrb r6, [r7, #0xc]
	str r2, [sp, #0xa4]
	str r0, [sp, #0xa8]
	cmp r6, #8
	bhi .L0804FC0E
	b .L08050270
.L0804FC0E:
	adds r1, r7, #0
	adds r1, #0xd0
	str r1, [sp, #0x80]
	ldr r0, [r1, #4]
	ldr r1, [r0, #4]
	bl func_080074C0
	ldr r2, [sp, #0x7c]
	adds r2, #0x40
	str r2, [sp, #0x94]
	ldr r3, [sp, #0x7c]
	adds r3, #0x44
	str r3, [sp, #0x9c]
	ldr r4, [sp, #0x7c]
	adds r4, #0x42
	str r4, [sp, #0x98]
	ldr r5, [sp, #0x7c]
	adds r5, #0x46
	str r5, [sp, #0xa0]
	adds r6, r7, #0
	adds r6, #0xc0
	str r6, [sp, #0xb0]
	cmp r0, #0
	bge .L0804FC40
	b .L0804FD66
.L0804FC40:
	movs r1, #0
	movs r2, #0x6b
	mov sl, r2
	mov r3, sp
	adds r3, #0x68
	str r3, [sp, #0xac]
	lsls r0, r0, #4
	str r0, [sp, #0x88]
.L0804FC50:
	ldr r4, [sp, #0x80]
	ldrb r0, [r4, #0x18]
	adds r0, r1, r0
	cmp r0, #2
	ble .L0804FC5C
	subs r0, #3
.L0804FC5C:
	lsls r0, r0, #2
	ldr r5, [sp, #0x80]
	adds r0, r0, r5
	ldr r0, [r0, #8]
	movs r6, #8
	mov sb, r6
	adds r1, #1
	str r1, [sp, #0x84]
	mov r1, sl
	adds r1, #0x11
	str r1, [sp, #0x8c]
	ldr r4, [sp, #0xac]
	adds r6, r0, #4
	adds r5, r0, #0
	movs r2, #6
	mov r8, r2
.L0804FC7C:
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x60]
	str r1, [sp, #0x64]
	movs r0, #0x80
	lsls r0, r0, #5
	ldr r2, [sp, #0x60]
	orrs r2, r0
	ldr r0, .L0804FCDC @ =0xFFFF3FFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	ldr r0, .L0804FCE0 @ =0x3FFFFFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r2, r0
	str r2, [sp, #0x60]
	ldr r1, [r5, #8]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0804FCE4
	adds r0, r6, #0
	bl func_08007D4C
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r3, .L0804FCD4 @ =0xFFFFFC00
	add r2, sp, #0x60
	ldr r1, [r2, #4]
	ands r1, r3
	orrs r1, r0
	str r1, [r2, #4]
	b .L0804FCF0
	.align 2, 0
.L0804FCC4: .4byte 0x000001FF
.L0804FCC8: .4byte 0xFE00FFFF
.L0804FCCC: .4byte 0xFFFFFF00
.L0804FCD0: .4byte 0xFFFF0FFF
.L0804FCD4: .4byte 0xFFFFFC00
.L0804FCD8: .4byte 0x0000FFB0
.L0804FCDC: .4byte 0xFFFF3FFF
.L0804FCE0: .4byte 0x3FFFFFFF
.L0804FCE4:
	ldr r0, .L08050060 @ =0xFFFFFCFF
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [sp, #0x60]
.L0804FCF0:
	ldr r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	str r0, [sp, #0x68]
	str r1, [sp, #0x6c]
	mov r3, sl
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	ldr r2, .L08050064 @ =0xFFFFFF00
	ldr r0, [sp, #0x68]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x68]
	ldr r1, .L08050068 @ =0x000001FF
	adds r0, r1, #0
	mov r2, sb
	ands r2, r0
	ldrh r0, [r4, #2]
	ldr r3, .L0805006C @ =0xFFFFFE00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #2]
	ldrb r1, [r4, #5]
	movs r0, #0xf
	ands r0, r1
	ldr r1, [sp, #0x88]
	orrs r0, r1
	strb r0, [r4, #5]
	ldr r3, [sp, #0x78]
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0804FD46
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [sp, #0x68]
	str r1, [r0]
	ldr r3, [sp, #0xac]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	ldr r1, [sp, #0x78]
	strb r0, [r1]
.L0804FD46:
	adds r6, #0x10
	adds r5, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	movs r3, #0x20
	add sb, r3
	mov r0, r8
	cmp r0, #0
	bge .L0804FC7C
	ldr r1, [sp, #0x84]
	ldr r2, [sp, #0x8c]
	mov sl, r2
	cmp r1, #2
	bgt .L0804FD66
	b .L0804FC50
.L0804FD66:
	ldr r3, [sp, #0xd8]
	ldr r0, [r3, #8]
	movs r4, #0x90
	lsls r4, r4, #1
	adds r1, r7, r4
	ldr r2, [r0, #0x10]
	adds r0, r3, #0
	bl _call_via_r2
	movs r0, #0xf0
	ldr r5, [sp, #0x90]
	strh r0, [r5]
	ldr r6, [sp, #0x94]
	strh r0, [r6]
	ldr r1, .L08050070 @ =0x000068A0
	adds r0, r1, #0
	strh r0, [r5]
	ldr r2, [sp, #0x9c]
	strh r0, [r2]
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne .L0804FD9C
	b .L08050040
.L0804FD9C:
	adds r4, #0xb4
	adds r4, r4, r7
	mov sb, r4
	ldr r1, [r4, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0804FDAE
	b .L08050040
.L0804FDAE:
	movs r5, #0xf4
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r1, [r0, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0804FDC0
	b .L08050040
.L0804FDC0:
	movs r6, #0xa0
	lsls r6, r6, #3
	adds r0, r7, r6
	ldrb r0, [r0]
	add r6, sp, #0x2c
	cmp r0, #0
	bne .L0804FDD0
	b .L0804FF12
.L0804FDD0:
	movs r1, #0xa9
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0804FDE2
	b .L0804FF12
.L0804FDE2:
	ldr r2, .L08050074 @ =0x00000534
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_0805E8F0
	adds r5, r0, #0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	movs r4, #0xa7
	lsls r4, r4, #3
	adds r0, r7, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, [sp, #0x90]
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	lsls r5, r5, #0x1e
	cmp r5, #0
	bge .L0804FEBC
	add r0, sp, #0x14
	ldr r5, [sp, #0x14]
	mov r8, r5
	movs r3, #0
	cmp r5, #0
	beq .L0804FE1E
	ldrh r3, [r0, #4]
.L0804FE1E:
	adds r5, r3, #0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r5, r0
	bls .L0804FE2A
	adds r5, r0, #0
.L0804FE2A:
	mov r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	adds r4, r7, #0
	adds r4, #0x3c
	lsls r2, r2, #5
	ldr r1, .L08050078 @ =0x06010F00
	adds r2, r2, r1
	adds r0, r6, #0
	mov r1, r8
	adds r3, r5, #0
	bl func_08008F0C
	ldr r0, [r7, #0x3c]
	cmp r0, #7
	bhi .L0804FE68
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L0804FE62
	adds r1, r6, #0
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0804FE62:
	ldr r0, [r7, #0x3c]
	adds r0, #1
	str r0, [r7, #0x3c]
.L0804FE68:
	add r0, sp, #0x1c
	ldr r1, [sp, #0x1c]
	mov r8, r1
	movs r3, #0
	cmp r1, #0
	beq .L0804FE76
	ldrh r3, [r0, #4]
.L0804FE76:
	adds r5, r3, #0
	cmp r5, #0x20
	bls .L0804FE7E
	movs r5, #0x20
.L0804FE7E:
	movs r2, #0xa9
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	lsls r2, r2, #5
	ldr r3, .L0805007C @ =0x05000200
	adds r2, r2, r3
	add r0, sp, #0x2c
	mov r1, r8
	adds r3, r5, #0
	bl func_08008F0C
	ldr r0, [r7, #0x3c]
	cmp r0, #7
	bhi .L0804FEBC
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L0804FEB6
	adds r1, r6, #0
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0804FEB6:
	ldr r0, [r7, #0x3c]
	adds r0, #1
	str r0, [r7, #0x3c]
.L0804FEBC:
	add r4, sp, #0x3c
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	movs r0, #0x34
	strh r0, [r4]
	movs r0, #0x5c
	strh r0, [r4, #2]
	movs r3, #0xea
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, #0x78
	strh r0, [r4, #6]
	movs r5, #0xa9
	lsls r5, r5, #3
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [sp, #0xc]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0804FF0A
	ldr r0, [sp, #0x90]
	ldrh r2, [r0, #4]
.L0804FF0A:
	ldr r0, [sp, #0x78]
	adds r3, r4, #0
	bl func_0805E99C
.L0804FF12:
	movs r2, #0xf2
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, [sp, #0x90]
	bl func_080ADD08
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge .L0804FFEC
	add r0, sp, #0x14
	ldr r4, [sp, #0x14]
	mov r8, r4
	movs r3, #0
	cmp r4, #0
	beq .L0804FF3A
	ldrh r3, [r0, #4]
.L0804FF3A:
	adds r5, r3, #0
	movs r0, #0xc0
	lsls r0, r0, #4
	cmp r5, r0
	bls .L0804FF46
	adds r5, r0, #0
.L0804FF46:
	movs r1, #0xea
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	adds r4, r7, #0
	adds r4, #0x3c
	lsls r2, r2, #5
	ldr r3, .L08050080 @ =0x06010000
	adds r2, r2, r3
	add r0, sp, #0x2c
	mov r1, r8
	adds r3, r5, #0
	bl func_08008F0C
	ldr r0, [r7, #0x3c]
	cmp r0, #7
	bhi .L0804FF88
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L0804FF82
	adds r1, r6, #0
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0804FF82:
	ldr r0, [r7, #0x3c]
	adds r0, #1
	str r0, [r7, #0x3c]
.L0804FF88:
	add r0, sp, #0x1c
	ldr r5, [sp, #0x1c]
	mov r8, r5
	movs r3, #0
	cmp r5, #0
	beq .L0804FF96
	ldrh r3, [r0, #4]
.L0804FF96:
	adds r5, r3, #0
	cmp r5, #0x20
	bls .L0804FF9E
	movs r5, #0x20
.L0804FF9E:
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	lsls r2, r2, #5
	ldr r3, .L0805007C @ =0x05000200
	adds r2, r2, r3
	add r0, sp, #0x2c
	mov r1, r8
	adds r3, r5, #0
	bl func_08008F0C
	ldr r0, [r7, #0x3c]
	cmp r0, #7
	bhi .L0804FFDC
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L0804FFD6
	adds r1, r6, #0
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0804FFD6:
	ldr r0, [r7, #0x3c]
	adds r0, #1
	str r0, [r7, #0x3c]
.L0804FFDC:
	movs r3, #0xee
	lsls r3, r3, #1
	adds r2, r7, r3
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
.L0804FFEC:
	adds r4, r6, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	movs r0, #0x28
	strh r0, [r4]
	movs r0, #0x68
	strh r0, [r4, #2]
	movs r5, #0xea
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r4, #6]
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [sp, #0xc]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08050038
	ldr r3, [sp, #0x90]
	ldrh r2, [r3, #4]
.L08050038:
	ldr r0, [sp, #0x78]
	adds r3, r6, #0
	bl func_0805E99C
.L08050040:
	movs r4, #0xf8
	lsls r4, r4, #1
	adds r0, r7, r4
	ldrb r3, [r0]
	lsls r0, r3, #0x1f
	cmp r0, #0
	bne .L08050050
	b .L08050250
.L08050050:
	movs r5, #0xea
	lsls r5, r5, #1
	adds r4, r7, r5
	ldr r2, [r4, #4]
	rsbs r0, r2, #0
	orrs r0, r2
	cmp r0, #0
	b .L08050084
	.align 2, 0
.L08050060: .4byte 0xFFFFFCFF
.L08050064: .4byte 0xFFFFFF00
.L08050068: .4byte 0x000001FF
.L0805006C: .4byte 0xFFFFFE00
.L08050070: .4byte 0x000068A0
.L08050074: .4byte 0x00000534
.L08050078: .4byte 0x06010F00
.L0805007C: .4byte 0x05000200
.L08050080: .4byte 0x06010000
.L08050084:
	blt .L08050088
	b .L08050250
.L08050088:
	ldr r6, [sp, #0xa4]
	ldrh r0, [r6]
	movs r5, #0xfc
	lsls r5, r5, #6
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r6]
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #1
	lsls r1, r0
	movs r0, #0x3f
	bics r0, r1
	lsls r0, r0, #8
	ldr r6, [sp, #0xa8]
	ldrh r1, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r1, .L08050220 @ =0x000080F0
	adds r0, r1, #0
	ldr r5, [sp, #0x90]
	strh r0, [r5]
	ldr r6, [sp, #0x98]
	strh r0, [r6]
	ldr r1, .L08050224 @ =0x00005068
	adds r0, r1, #0
	strh r0, [r5]
	ldr r5, [sp, #0xa0]
	strh r0, [r5]
	lsls r0, r3, #0x1e
	movs r6, #0x10
	adds r6, r6, r7
	mov sl, r6
	add r1, sp, #0x70
	mov r8, r1
	cmp r0, #0
	bge .L0805014A
	adds r0, r4, #0
	adds r1, r2, #0
	bl func_08007D4C
	movs r2, #0
	mov sb, r2
	adds r4, r7, #0
	adds r4, #0x3c
	lsls r0, r0, #5
	ldr r3, .L08050228 @ =0x06010C00
	adds r3, r0, r3
	str r3, [sp, #0xb4]
	movs r6, #0xfc
	lsls r6, r6, #1
	adds r5, r7, r6
.L080500F2:
	add r0, sp, #0xc
	adds r1, r5, #0
	ldr r2, [sp, #0xb4]
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_08008F0C
	ldr r0, [r7, #0x3c]
	cmp r0, #7
	bhi .L08050120
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805011A
	ldr r1, [sp, #0x90]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805011A:
	ldr r0, [r7, #0x3c]
	adds r0, #1
	str r0, [r7, #0x3c]
.L08050120:
	ldr r0, [sp, #0xb4]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0xb4]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r5, r5, r2
	movs r3, #1
	add sb, r3
	mov r6, sb
	cmp r6, #2
	bls .L080500F2
	movs r0, #0xf8
	lsls r0, r0, #1
	adds r2, r7, r0
	ldrb r1, [r2]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2]
.L0805014A:
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x70]
	str r1, [sp, #0x74]
	ldr r1, .L0805022C @ =0xFFFFFF00
	ldr r0, [sp, #0x70]
	ands r0, r1
	movs r1, #0x54
	orrs r0, r1
	ldr r1, .L08050230 @ =0xFE00FFFF
	ands r0, r1
	movs r1, #0x88
	lsls r1, r1, #0x10
	orrs r0, r1
	ldr r1, .L08050234 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, .L08050238 @ =0x3FFFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [sp, #0x70]
	movs r1, #0xea
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, #0x60
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r4, .L0805023C @ =0xFFFFFC00
	mov r2, r8
	ldr r1, [r2, #4]
	ands r1, r4
	orrs r1, r0
	str r1, [r2, #4]
	mov r3, sl
	ldr r1, [r3, #4]
	mov r0, sl
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L08050240 @ =0xFFFF0FFF
	mov r5, r8
	ldr r1, [r5, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r5, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ldr r0, [sp, #0x70]
	orrs r0, r1
	str r0, [sp, #0x70]
	movs r5, #0
	mov r3, r8
	ldr r6, .L08050244 @ =0xFFFFFE00
	mov sb, r6
.L080501CC:
	ldr r0, [sp, #0x78]
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi .L080501EA
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r0, r1
	ldr r0, [sp, #0x70]
	str r0, [r1]
	mov r6, r8
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	ldr r1, [sp, #0x78]
	strb r0, [r1]
.L080501EA:
	ldrh r2, [r3, #2]
	lsls r1, r2, #0x17
	lsrs r1, r1, #0x17
	adds r1, #0x20
	ldr r6, .L08050248 @ =0x000001FF
	adds r0, r6, #0
	ands r1, r0
	mov r0, sb
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
	ldrh r2, [r3, #4]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x16
	adds r1, #8
	ldr r6, .L0805024C @ =0x000003FF
	adds r0, r6, #0
	ands r1, r0
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	adds r5, #1
	cmp r5, #2
	bls .L080501CC
	b .L080502DA
	.align 2, 0
.L08050220: .4byte 0x000080F0
.L08050224: .4byte 0x00005068
.L08050228: .4byte 0x06010C00
.L0805022C: .4byte 0xFFFFFF00
.L08050230: .4byte 0xFE00FFFF
.L08050234: .4byte 0xFFFF3FFF
.L08050238: .4byte 0x3FFFFFFF
.L0805023C: .4byte 0xFFFFFC00
.L08050240: .4byte 0xFFFF0FFF
.L08050244: .4byte 0xFFFFFE00
.L08050248: .4byte 0x000001FF
.L0805024C: .4byte 0x000003FF
.L08050250:
	ldr r1, .L08050268 @ =0x0000F0F0
	adds r0, r1, #0
	ldr r2, [sp, #0x90]
	strh r0, [r2]
	ldr r3, [sp, #0x98]
	strh r0, [r3]
	ldr r4, .L0805026C @ =0x0000A0A0
	adds r0, r4, #0
	strh r0, [r2]
	ldr r5, [sp, #0xa0]
	strh r0, [r5]
	b .L080502DA
	.align 2, 0
.L08050268: .4byte 0x0000F0F0
.L0805026C: .4byte 0x0000A0A0
.L08050270:
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #3
	movs r1, #9
	bl __udivsi3
	adds r5, r0, #0
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	movs r4, #0x84
	subs r4, r4, r0
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #4
	movs r1, #9
	bl __udivsi3
	lsrs r2, r0, #0x1f
	adds r2, r0, r2
	asrs r2, r2, #1
	movs r1, #0x78
	subs r1, r1, r2
	lsls r2, r1, #8
	adds r1, r1, r0
	orrs r2, r1
	ldr r6, [sp, #0x90]
	strh r2, [r6]
	ldr r0, [sp, #0x7c]
	adds r0, #0x40
	strh r2, [r0]
	lsls r0, r4, #8
	adds r4, r4, r5
	orrs r0, r4
	strh r0, [r6]
	ldr r1, [sp, #0x7c]
	adds r1, #0x44
	strh r0, [r1]
	ldr r1, .L08050300 @ =0x0000F0F0
	adds r0, r1, #0
	strh r0, [r6]
	ldr r1, [sp, #0x7c]
	adds r1, #0x42
	strh r0, [r1]
	ldr r2, .L08050304 @ =0x0000A0A0
	adds r0, r2, #0
	strh r0, [r6]
	ldr r1, [sp, #0x7c]
	adds r1, #0x46
	strh r0, [r1]
	adds r3, r7, #0
	adds r3, #0xc0
	str r3, [sp, #0xb0]
.L080502DA:
	ldr r0, [r7, #4]
	cmp r0, #2
	bne .L08050310
	ldr r4, [sp, #0xa4]
	ldrh r0, [r4]
	ldr r5, .L08050308 @ =0x00002020
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r4]
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #1
	lsls r1, r0
	ldr r0, .L0805030C @ =0x08083F40
	orrs r1, r0
	ldr r6, [sp, #0x7c]
	str r1, [r6, #0x50]
	b .L08050332
	.align 2, 0
.L08050300: .4byte 0x0000F0F0
.L08050304: .4byte 0x0000A0A0
.L08050308: .4byte 0x00002020
.L0805030C: .4byte 0x08083F40
.L08050310:
	cmp r0, #1
	bne .L08050332
	movs r0, #0x98
	lsls r0, r0, #1
	adds r3, r7, r0
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08050332
	ldr r1, [sp, #0xdc]
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x10]
	adds r0, r1, #0
	adds r1, r3, #0
	bl _call_via_r2
.L08050332:
	ldr r2, [sp, #0xd8]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0xd8]
	ldr r1, [sp, #0xb0]
	bl _call_via_r2
	b .L08050382

	non_word_aligned_thumb_func_start sub_08050342
sub_08050342: @ 0x08050342
	ldrb r0, [r7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #0x80
	lsls r1, r1, #1
	lsls r1, r0
	movs r3, #0xc0
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r1, r0
	ldr r4, [sp, #0x7c]
	ldrh r0, [r4]
	bics r0, r1
	strh r0, [r4]
	ldr r0, [r7, #4]
	cmp r0, #1
	bne .L08050382
	movs r5, #0x98
	lsls r5, r5, #1
	adds r3, r7, r5
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08050382
	ldr r6, [sp, #0xdc]
	ldr r0, [r6, #8]
	ldr r2, [r0, #0x14]
	adds r0, r6, #0
	adds r1, r3, #0
	bl _call_via_r2
.L08050382:
	ldr r0, [r7, #8]
	ldr r1, .L08050398 @ =vtable_unk_080E78F0
	str r1, [sp]
	add sp, #0xb8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08050398: .4byte vtable_unk_080E78F0

	thumb_func_start func_0805039C
func_0805039C: @ 0x0805039C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r6, [r4, #8]
	cmp r6, #0
	bne .L080503D0
	adds r0, #0xd0
	bl func_0804F0E0
	ldr r0, [r4, #4]
	adds r5, r4, #0
	adds r5, #0x20
	cmp r0, #1
	beq .L080503C2
	movs r0, #0x98
	lsls r0, r0, #1
	adds r1, r4, r0
	adds r0, r5, #0
	bl func_08009940
.L080503C2:
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r1, r4, r0
	adds r0, r5, #0
	bl func_08009940
	strb r6, [r4, #0xc]
.L080503D0:
	ldr r0, [r4, #8]
	cmp r0, #0
	blt .L080503DE
	cmp r0, #2
	bgt .L080503DE
	movs r0, #1
	str r0, [r4, #8]
.L080503DE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start func_080503E4
func_080503E4: @ 0x080503E4
	push {r4, lr}
	adds r4, r0, #0
	bl func_0805039C
	movs r0, #3
	str r0, [r4, #8]
	movs r0, #9
	strb r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080503FC
func_080503FC: @ 0x080503FC
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	beq .L0805040A
	movs r0, #2
	str r0, [r1, #8]
.L0805040A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050410
func_08050410: @ 0x08050410
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	beq .L0805041E
	movs r0, #0
	str r0, [r1, #8]
.L0805041E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050424
func_08050424: @ 0x08050424
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r3, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r0, [r5, #8]
	cmp r0, #0
	blt .L08050454
	cmp r0, #2
	bgt .L08050448
	adds r0, r5, #0
	bl func_080503E4
	b .L08050454
.L08050448:
	cmp r0, #6
	bgt .L08050454
	adds r0, r5, #0
	adds r0, #0xd0
	bl func_0804F0E0
.L08050454:
	adds r4, r5, #0
	adds r4, #0xec
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl func_080ADD5C
	adds r0, r4, #0
	mov r1, r8
	bl func_080ADD74
	movs r0, #4
	str r0, [r5, #8]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_08050478
func_08050478: @ 0x08050478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov sb, r3
	ldr r0, [sp, #0x30]
	mov sl, r0
	ldr r1, [sp, #0x34]
	mov r8, r1
	ldr r7, [sp, #0x38]
	ldr r0, [r4, #8]
	cmp r0, #0
	blt .L080504B4
	cmp r0, #2
	bgt .L080504A8
	adds r0, r4, #0
	bl func_080503E4
	b .L080504B4
.L080504A8:
	cmp r0, #6
	bgt .L080504B4
	adds r0, r4, #0
	adds r0, #0xd0
	bl func_0804F0E0
.L080504B4:
	movs r5, #4
	movs r6, #0xc
	cmp r7, #0
	bne .L080504D6
	movs r5, #3
	mov r2, r8
	cmp r2, #0
	bne .L080504D6
	movs r5, #2
	mov r0, sl
	cmp r0, #0
	bne .L080504D6
	movs r6, #0x1a
	mov r1, sb
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
.L080504D6:
	cmp r5, #4
	bhi .L080504FC
	lsls r0, r5, #2
	ldr r1, .L080504E4 @ =.L080504E8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080504E4: .4byte .L080504E8
.L080504E8: @ jump table
	.4byte .L08050548 @ case 0
	.4byte .L08050536 @ case 1
	.4byte .L08050522 @ case 2
	.4byte .L0805050E @ case 3
	.4byte .L080504FE @ case 4
.L080504FC:
	movs r5, #0
.L080504FE:
	cmp r7, #0
	beq .L0805050C
	adds r0, r7, #0
	bl strlen
	cmp r0, r6
	bls .L0805050E
.L0805050C:
	ldr r7, .L08050580 @ =gUnk_080F9F3C
.L0805050E:
	mov r2, r8
	cmp r2, #0
	beq .L0805051E
	mov r0, r8
	bl strlen
	cmp r0, r6
	bls .L08050522
.L0805051E:
	ldr r0, .L08050580 @ =gUnk_080F9F3C
	mov r8, r0
.L08050522:
	mov r1, sl
	cmp r1, #0
	beq .L08050532
	mov r0, sl
	bl strlen
	cmp r0, r6
	bls .L08050536
.L08050532:
	ldr r2, .L08050580 @ =gUnk_080F9F3C
	mov sl, r2
.L08050536:
	mov r0, sb
	cmp r0, #0
	beq .L08050544
	bl strlen
	cmp r0, r6
	bls .L08050548
.L08050544:
	ldr r1, .L08050580 @ =gUnk_080F9F3C
	mov sb, r1
.L08050548:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq .L08050558
	adds r0, r2, #0
	bl strlen
	cmp r0, r6
	bls .L0805055C
.L08050558:
	ldr r0, .L08050580 @ =gUnk_080F9F3C
	str r0, [sp, #0xc]
.L0805055C:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L0805056C
	adds r0, r1, #0
	bl strlen
	cmp r0, r6
	bls .L08050570
.L0805056C:
	ldr r2, .L08050580 @ =gUnk_080F9F3C
	str r2, [sp, #8]
.L08050570:
	cmp r5, #4
	bhi .L0805062A
	lsls r0, r5, #2
	ldr r1, .L08050584 @ =.L08050588
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08050580: .4byte gUnk_080F9F3C
.L08050584: .4byte .L08050588
.L08050588: @ jump table
	.4byte .L080505FA @ case 0
	.4byte .L080505E2 @ case 1
	.4byte .L080505CA @ case 2
	.4byte .L080505B2 @ case 3
	.4byte .L0805059C @ case 4
.L0805059C:
	adds r0, r5, #0
	movs r1, #6
	bl func_080507D0
	mov r1, sp
	strb r0, [r1]
	adds r0, r4, #0
	adds r2, r7, #0
	ldr r3, [sp, #0x3c]
	bl func_080507F8
.L080505B2:
	adds r0, r5, #0
	movs r1, #5
	bl func_080507D0
	mov r1, sp
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	mov r2, r8
	ldr r3, [sp, #0x3c]
	bl func_080507F8
.L080505CA:
	adds r0, r5, #0
	movs r1, #4
	bl func_080507D0
	mov r1, sp
	adds r1, #2
	strb r0, [r1]
	adds r0, r4, #0
	mov r2, sl
	ldr r3, [sp, #0x3c]
	bl func_080507F8
.L080505E2:
	adds r0, r5, #0
	movs r1, #3
	bl func_080507D0
	mov r1, sp
	adds r1, #3
	strb r0, [r1]
	adds r0, r4, #0
	mov r2, sb
	ldr r3, [sp, #0x3c]
	bl func_080507F8
.L080505FA:
	adds r0, r5, #0
	movs r1, #2
	bl func_080507D0
	add r1, sp, #4
	strb r0, [r1]
	adds r0, r4, #0
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x3c]
	bl func_080507F8
	adds r0, r5, #0
	movs r1, #1
	bl func_080507D0
	mov r1, sp
	adds r1, #5
	strb r0, [r1]
	adds r0, r4, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x3c]
	bl func_080507F8
	b .L0805062C
.L0805062A:
	movs r5, #0
.L0805062C:
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r4, r1
	str r5, [r0]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r1, r4, r2
	movs r0, #1
	str r0, [r1]
	movs r0, #6
	str r0, [r4, #8]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r4, r1
	adds r2, #8
	adds r1, r4, r2
	movs r2, #0
	bl func_0805E850
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050664
func_08050664: @ 0x08050664
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	adds r7, r1, #0
	str r2, [sp, #8]
	mov sl, r3
	ldr r0, [sp, #0x2c]
	mov sb, r0
	ldr r6, [sp, #0x30]
	cmp r7, #0
	beq .L0805068C
	adds r0, r7, #0
	bl strlen
	cmp r0, #0x1c
	bls .L0805068E
.L0805068C:
	ldr r7, .L080506B4 @ =gUnk_080F9F3C
.L0805068E:
	movs r4, #7
	movs r1, #0xc
	mov r8, r1
	cmp r6, #0
	bne .L080506A6
	movs r4, #6
	mov r2, sb
	cmp r2, #0
	bne .L080506A6
	movs r0, #0x1a
	mov r8, r0
	movs r4, #5
.L080506A6:
	cmp r4, #6
	beq .L080506CE
	cmp r4, #6
	bgt .L080506B8
	cmp r4, #5
	beq .L080506E2
	b .L080506BC
	.align 2, 0
.L080506B4: .4byte gUnk_080F9F3C
.L080506B8:
	cmp r4, #7
	beq .L080506BE
.L080506BC:
	movs r4, #5
.L080506BE:
	cmp r6, #0
	beq .L080506CC
	adds r0, r6, #0
	bl strlen
	cmp r0, r8
	bls .L080506CE
.L080506CC:
	ldr r6, .L08050730 @ =gUnk_080F9F3C
.L080506CE:
	mov r1, sb
	cmp r1, #0
	beq .L080506DE
	mov r0, sb
	bl strlen
	cmp r0, r8
	bls .L080506E2
.L080506DE:
	ldr r2, .L08050730 @ =gUnk_080F9F3C
	mov sb, r2
.L080506E2:
	mov r0, sl
	cmp r0, #0
	beq .L080506F0
	bl strlen
	cmp r0, r8
	bls .L080506F4
.L080506F0:
	ldr r1, .L08050730 @ =gUnk_080F9F3C
	mov sl, r1
.L080506F4:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq .L08050704
	adds r0, r2, #0
	bl strlen
	cmp r0, r8
	bls .L08050708
.L08050704:
	ldr r0, .L08050730 @ =gUnk_080F9F3C
	str r0, [sp, #8]
.L08050708:
	adds r0, r5, #0
	adds r0, #0xd0
	bl func_0804F0E0
	movs r1, #0
	mov r0, sp
	strb r1, [r0]
	adds r0, r5, #0
	mov r1, sp
	adds r2, r7, #0
	ldr r3, [sp, #0x34]
	bl func_080507F8
	cmp r4, #6
	beq .L08050750
	cmp r4, #6
	bgt .L08050734
	cmp r4, #5
	beq .L08050768
	b .L08050798
	.align 2, 0
.L08050730: .4byte gUnk_080F9F3C
.L08050734:
	cmp r4, #7
	bne .L08050798
	movs r0, #7
	movs r1, #4
	bl func_080507D0
	mov r1, sp
	adds r1, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r2, r6, #0
	ldr r3, [sp, #0x34]
	bl func_080507F8
.L08050750:
	adds r0, r4, #0
	movs r1, #3
	bl func_080507D0
	mov r1, sp
	adds r1, #2
	strb r0, [r1]
	adds r0, r5, #0
	mov r2, sb
	ldr r3, [sp, #0x34]
	bl func_080507F8
.L08050768:
	adds r0, r4, #0
	movs r1, #2
	bl func_080507D0
	mov r1, sp
	adds r1, #3
	strb r0, [r1]
	adds r0, r5, #0
	mov r2, sl
	ldr r3, [sp, #0x34]
	bl func_080507F8
	adds r0, r4, #0
	movs r1, #1
	bl func_080507D0
	add r1, sp, #4
	strb r0, [r1]
	adds r0, r5, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0x34]
	bl func_080507F8
	b .L0805079A
.L08050798:
	movs r4, #5
.L0805079A:
	movs r1, #0xae
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	movs r2, #0xac
	lsls r2, r2, #1
	adds r1, r5, r2
	movs r0, #1
	str r0, [r1]
	movs r0, #6
	str r0, [r5, #8]
	movs r1, #0xe0
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r2, #8
	adds r1, r5, r2
	movs r2, #0
	bl func_0805E850
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080507D0
func_080507D0: @ 0x080507D0
	push {lr}
	adds r2, r0, #0
	cmp r2, #7
	bls .L080507DA
	movs r2, #0
.L080507DA:
	subs r0, r1, #1
	cmp r0, #5
	bls .L080507E2
	movs r1, #1
.L080507E2:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r0, r0, r1
	ldr r1, .L080507F4 @ =gUnk_080F9F3C
	adds r0, r0, r1
	ldrb r0, [r0]
	pop {r1}
	bx r1
	.align 2, 0
.L080507F4: .4byte gUnk_080F9F3C

	thumb_func_start func_080507F8
func_080507F8: @ 0x080507F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r2, #0
	mov r8, r3
	ldrb r0, [r1]
	lsls r1, r0, #0x19
	lsrs r6, r1, #0x1b
	lsls r0, r0, #0x1e
	adds r5, r4, #0
	adds r5, #0xd0
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bls .L0805081E
	movs r1, #3
	bl __umodsi3
.L0805081E:
	strh r0, [r5, #0x16]
	adds r0, r6, #0
	cmp r0, #0x1b
	bls .L0805082C
	movs r1, #0x1c
	bl __umodsi3
.L0805082C:
	strh r0, [r5, #0x14]
	movs r0, #0
	strb r0, [r5, #0x19]
	adds r4, #0xec
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl func_080ADD5C
	adds r6, r5, #0
	adds r5, r4, #0
	ldr r4, .L08050864 @ =vtable_unk_080E78F0
.L08050844:
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, sp
	bl func_080ADD78
	str r4, [sp]
	cmp r0, #1
	beq .L08050844
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08050864: .4byte vtable_unk_080E78F0

	thumb_func_start func_08050868
func_08050868: @ 0x08050868
	push {lr}
	adds r3, r1, #0
	cmp r0, #7
	bls .L08050872
	b .L08050AD0
.L08050872:
	lsls r0, r0, #2
	ldr r1, .L0805087C @ =.L08050880
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805087C: .4byte .L08050880
.L08050880: @ jump table
	.4byte .L080508A0 @ case 0
	.4byte .L080508B2 @ case 1
	.4byte .L08050930 @ case 2
	.4byte .L0805097E @ case 3
	.4byte .L08050A18 @ case 4
	.4byte .L080508A0 @ case 5
	.4byte .L080508FA @ case 6
	.4byte .L08050930 @ case 7
.L080508A0:
	movs r1, #0xc0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L080508EC
.L080508AA:
	cmp r3, #1
	bne .L080508B0
	b .L08050AC8
.L080508B0:
	b .L08050AD0
.L080508B2:
	movs r1, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L080508C8
	cmp r3, #2
	bne .L080508C2
	b .L08050ACC
.L080508C2:
	cmp r3, #2
	ble .L080508AA
	b .L08050AD0
.L080508C8:
	movs r1, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L080508EC
	cmp r3, #2
	bne .L080508D8
	b .L08050AD0
.L080508D8:
	cmp r3, #2
	bgt .L080508E4
.L080508DC:
	cmp r3, #1
	bne .L080508E2
	b .L08050ACC
.L080508E2:
	b .L08050AD0
.L080508E4:
	cmp r3, #3
	beq .L080508EA
	b .L08050AD0
.L080508EA:
	b .L08050AC8
.L080508EC:
	movs r0, #0x30
	ands r2, r0
	cmp r2, #0
	bne .L080508F6
	b .L08050AD0
.L080508F6:
	adds r0, r3, #0
	b .L08050AD2
.L080508FA:
	movs r1, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L08050910
.L08050904:
	cmp r3, #2
	bne .L0805090A
	b .L08050AD0
.L0805090A:
	cmp r3, #2
	ble .L080508AA
	b .L080508E4
.L08050910:
	movs r1, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne .L08050904
	movs r0, #0x30
	ands r2, r0
	cmp r2, #0
	bne .L08050924
	b .L08050AD0
.L08050924:
	cmp r3, #2
	bne .L0805092A
	b .L08050ACC
.L0805092A:
	cmp r3, #2
	ble .L080508DC
	b .L08050AD0
.L08050930:
	movs r1, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L08050952
.L0805093A:
	cmp r3, #2
	bne .L08050940
	b .L08050AD0
.L08050940:
	cmp r3, #2
	ble .L080508AA
	cmp r3, #3
	bne .L0805094A
	b .L08050ABC
.L0805094A:
	cmp r3, #4
	beq .L08050950
	b .L08050AD0
.L08050950:
	b .L08050ACC
.L08050952:
	movs r1, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne .L0805093A
	movs r0, #0x30
	ands r2, r0
	cmp r2, #0
	bne .L08050966
	b .L08050AD0
.L08050966:
	cmp r3, #2
	bne .L0805096C
	b .L08050ABC
.L0805096C:
	cmp r3, #2
	ble .L080508DC
	cmp r3, #3
	bne .L08050976
	b .L08050AD0
.L08050976:
	cmp r3, #4
	beq .L0805097C
	b .L08050AD0
.L0805097C:
	b .L08050AC8
.L0805097E:
	movs r1, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L080509B4
	subs r0, r3, #1
	cmp r0, #4
	bls .L08050990
	b .L08050AD0
.L08050990:
	lsls r0, r0, #2
	ldr r1, .L0805099C @ =.L080509A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805099C: .4byte .L080509A0
.L080509A0: @ jump table
	.4byte .L08050AC8 @ case 0
	.4byte .L08050ACC @ case 1
	.4byte .L08050AD0 @ case 2
	.4byte .L08050AC0 @ case 3
	.4byte .L08050ABC @ case 4
.L080509B4:
	movs r1, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L080509E8
	subs r0, r3, #1
	cmp r0, #4
	bls .L080509C6
	b .L08050AD0
.L080509C6:
	lsls r0, r0, #2
	ldr r1, .L080509D0 @ =.L080509D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080509D0: .4byte .L080509D4
.L080509D4: @ jump table
	.4byte .L08050ACC @ case 0
	.4byte .L08050AD0 @ case 1
	.4byte .L08050AC8 @ case 2
	.4byte .L08050AC0 @ case 3
	.4byte .L08050ABC @ case 4
.L080509E8:
	movs r0, #0x30
	ands r2, r0
	cmp r2, #0
	beq .L08050AD0
	subs r0, r3, #1
	cmp r0, #4
	bhi .L08050AD0
	lsls r0, r0, #2
	ldr r1, .L08050A00 @ =.L08050A04
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08050A00: .4byte .L08050A04
.L08050A04: @ jump table
	.4byte .L08050ABC @ case 0
	.4byte .L08050AC0 @ case 1
	.4byte .L08050AC0 @ case 2
	.4byte .L08050AD0 @ case 3
	.4byte .L08050AC8 @ case 4
.L08050A18:
	movs r1, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L08050A50
	subs r0, r3, #1
	cmp r0, #5
	bhi .L08050AD0
	lsls r0, r0, #2
	ldr r1, .L08050A34 @ =.L08050A38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08050A34: .4byte .L08050A38
.L08050A38: @ jump table
	.4byte .L08050AC8 @ case 0
	.4byte .L08050ACC @ case 1
	.4byte .L08050AD0 @ case 2
	.4byte .L08050AC0 @ case 3
	.4byte .L08050AC4 @ case 4
	.4byte .L08050ABC @ case 5
.L08050A50:
	movs r1, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L08050A88
	subs r0, r3, #1
	cmp r0, #5
	bhi .L08050AD0
	lsls r0, r0, #2
	ldr r1, .L08050A6C @ =.L08050A70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08050A6C: .4byte .L08050A70
.L08050A70: @ jump table
	.4byte .L08050ACC @ case 0
	.4byte .L08050AD0 @ case 1
	.4byte .L08050AC8 @ case 2
	.4byte .L08050AC4 @ case 3
	.4byte .L08050ABC @ case 4
	.4byte .L08050AC0 @ case 5
.L08050A88:
	movs r0, #0x30
	ands r2, r0
	cmp r2, #0
	beq .L08050AD0
	subs r0, r3, #1
	cmp r0, #5
	bhi .L08050AD0
	lsls r0, r0, #2
	ldr r1, .L08050AA0 @ =.L08050AA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08050AA0: .4byte .L08050AA4
.L08050AA4: @ jump table
	.4byte .L08050ABC @ case 0
	.4byte .L08050AC0 @ case 1
	.4byte .L08050AC4 @ case 2
	.4byte .L08050AD0 @ case 3
	.4byte .L08050AC8 @ case 4
	.4byte .L08050ACC @ case 5
.L08050ABC:
	movs r0, #4
	b .L08050AD2
.L08050AC0:
	movs r0, #5
	b .L08050AD2
.L08050AC4:
	movs r0, #6
	b .L08050AD2
.L08050AC8:
	movs r0, #2
	b .L08050AD2
.L08050ACC:
	movs r0, #3
	b .L08050AD2
.L08050AD0:
	movs r0, #1
.L08050AD2:
	pop {r1}
	bx r1
	.align 2, 0

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

	thumb_func_start func_08050D3C
func_08050D3C: @ 0x08050D3C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x1c]
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	ldr r0, [r0]
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	bl func_0804F7A4
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08050D5C
func_08050D5C: @ 0x08050D5C
	push {lr}
	ldr r0, [r0]
	bl func_0805039C
	pop {r0}
	bx r0

	thumb_func_start func_08050D68
func_08050D68: @ 0x08050D68
	push {lr}
	ldr r0, [r0]
	bl func_080503E4
	pop {r0}
	bx r0

	thumb_func_start func_08050D74
func_08050D74: @ 0x08050D74
	push {lr}
	ldr r0, [r0]
	bl func_080503FC
	pop {r0}
	bx r0

	thumb_func_start func_08050D80
func_08050D80: @ 0x08050D80
	push {lr}
	ldr r0, [r0]
	bl func_08050410
	pop {r0}
	bx r0

	thumb_func_start func_08050D8C
func_08050D8C: @ 0x08050D8C
	push {lr}
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	bl func_08050424
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050DA0
func_08050DA0: @ 0x08050DA0
	push {lr}
	adds r3, r2, #0
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	bl func_08050424
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050DB4
func_08050DB4: @ 0x08050DB4
	push {lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r0]
	movs r3, #0
	bl func_08050424
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050DC8
func_08050DC8: @ 0x08050DC8
	push {lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r0]
	bl func_08050424
	pop {r0}
	bx r0

	thumb_func_start func_08050DD8
func_08050DD8: @ 0x08050DD8
	ldr r2, [r0]
	ldrb r0, [r2, #0xd]
	movs r1, #0
	strb r1, [r2, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start func_08050DE4
func_08050DE4: @ 0x08050DE4
	ldr r2, [r0]
	ldrb r0, [r2, #0xd]
	movs r1, #1
	strb r1, [r2, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start func_08050DF0
func_08050DF0: @ 0x08050DF0
	push {lr}
	ldr r1, [r0]
	ldr r0, [r1, #8]
	cmp r0, #6
	beq .L08050E04
	movs r2, #0xac
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0]
	b .L08050E06
.L08050E04:
	movs r0, #0
.L08050E06:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08050E0C
func_08050E0C: @ 0x08050E0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x28]
	ldr r6, [sp, #0x2c]
	ldr r7, [sp, #0x30]
	ldr r0, [r0]
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	bl func_08050478
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050E30
func_08050E30: @ 0x08050E30
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x1c]
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	ldr r0, [r0]
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	bl func_08050664
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050E50
func_08050E50: @ 0x08050E50
	push {lr}
	ldr r0, [r0]
	bl func_08050AD8
	pop {r0}
	bx r0

	thumb_func_start func_08050E5C
func_08050E5C: @ 0x08050E5C
	push {lr}
	ldr r0, [r0]
	bl func_08050B3C
	pop {r0}
	bx r0

	thumb_func_start func_08050E68
func_08050E68: @ 0x08050E68
	push {lr}
	ldr r0, [r0]
	bl func_08050B50
	pop {r0}
	bx r0

	thumb_func_start func_08050E74
func_08050E74: @ 0x08050E74
	push {lr}
	ldr r0, [r0]
	bl func_08050C18
	pop {r0}
	bx r0

	thumb_func_start func_08050E80
func_08050E80: @ 0x08050E80
	push {lr}
	ldr r0, [r0]
	bl func_08050C2C
	pop {r0}
	bx r0

	thumb_func_start func_08050E8C
func_08050E8C: @ 0x08050E8C
	push {lr}
	ldr r0, [r0]
	bl func_08050C64
	pop {r0}
	bx r0

	thumb_func_start func_08050E98
func_08050E98: @ 0x08050E98
	push {r4, lr}
	ldr r3, [r0]
	movs r0, #0xaa
	lsls r0, r0, #3
	adds r3, r3, r0
	ldrb r4, [r3]
	lsls r0, r4, #0x1a
	lsrs r0, r0, #0x1a
	adds r2, r0, #0
	bics r2, r1
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r3]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_08050EBC
func_08050EBC: @ 0x08050EBC
	push {r4, lr}
	ldr r3, [r0]
	movs r0, #0xaa
	lsls r0, r0, #3
	adds r3, r3, r0
	ldrb r4, [r3]
	lsls r0, r4, #0x1a
	lsrs r0, r0, #0x1a
	orrs r1, r0
	movs r2, #0x3f
	ands r1, r2
	movs r2, #0x40
	rsbs r2, r2, #0
	ands r2, r4
	orrs r2, r1
	strb r2, [r3]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L08050EE4:
	.byte 0x70, 0xB5, 0x04, 0x9E, 0x00, 0x24, 0x04, 0x60, 0x44, 0x60, 0x13, 0x4C
	.byte 0x84, 0x60, 0x1F, 0x24, 0x21, 0x40, 0x05, 0x7B, 0x20, 0x24, 0x64, 0x42, 0x2C, 0x40, 0x0C, 0x43
	.byte 0x04, 0x73, 0x0F, 0x4C, 0x21, 0x1C, 0x0A, 0x40, 0x52, 0x01, 0x84, 0x89, 0x0D, 0x49, 0x21, 0x40
	.byte 0x11, 0x43, 0x81, 0x81, 0x0F, 0x22, 0x1A, 0x40, 0xD2, 0x03, 0xC1, 0x68, 0x0A, 0x4B, 0x19, 0x40
	.byte 0x11, 0x43, 0xC1, 0x60, 0x0F, 0x21, 0x0E, 0x40, 0xF6, 0x00, 0x82, 0x7B, 0x79, 0x21, 0x49, 0x42
	.byte 0x11, 0x40, 0x31, 0x43, 0x81, 0x73, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x78, 0x78, 0x0E, 0x08
	.byte 0xFF, 0x03, 0x00, 0x00, 0x1F, 0x80, 0xFF, 0xFF, 0xFF, 0x7F, 0xF8, 0xFF, 0x00, 0xB5, 0x00, 0x79
	.byte 0x01, 0x1C, 0x00, 0x28, 0x00, 0xD0, 0x01, 0x21, 0x08, 0x1C, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x02, 0x4B, 0x03, 0x60, 0x09, 0x68, 0x41, 0x60, 0x02, 0x72, 0x70, 0x47, 0xA8, 0x78, 0x0E, 0x08
	.byte 0x80, 0x7E, 0x70, 0x47, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x10, 0x1C, 0x02, 0x28, 0x02, 0xD9
	.byte 0x03, 0x21, 0x7F, 0xF0, 0xE4, 0xFF, 0xE0, 0x82, 0x28, 0x1C, 0x1B, 0x28, 0x02, 0xD9, 0x1C, 0x21
	.byte 0x7F, 0xF0, 0xDD, 0xFF, 0xA0, 0x82, 0x00, 0x20, 0x60, 0x76, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x8A, 0xB0, 0x04, 0x90, 0x09, 0x91
	.byte 0x40, 0x68, 0x41, 0x68, 0xB6, 0xF7, 0x84, 0xFA, 0x00, 0x28, 0x00, 0xDA, 0x84, 0xE0, 0x00, 0x21
	.byte 0x6B, 0x22, 0x91, 0x46, 0x02, 0xAF, 0xBA, 0x46, 0x00, 0x01, 0x06, 0x90, 0x04, 0x9A, 0x10, 0x7E
	.byte 0x08, 0x18, 0x02, 0x28, 0x00, 0xDD, 0x03, 0x38, 0x80, 0x00, 0x04, 0x9F, 0xC0, 0x19, 0x80, 0x68
	.byte 0x08, 0x22, 0x90, 0x46, 0x01, 0x31, 0x05, 0x91, 0x4F, 0x46, 0x11, 0x37, 0x07, 0x97, 0x54, 0x46
	.byte 0x06, 0x1D, 0x05, 0x1C, 0x06, 0x23, 0x00, 0x20, 0x00, 0x21, 0x00, 0x90, 0x01, 0x91, 0x80, 0x20
	.byte 0x40, 0x01, 0x00, 0x9A, 0x02, 0x43, 0x0E, 0x48, 0x02, 0x40, 0x80, 0x20, 0xC0, 0x01, 0x02, 0x43
	.byte 0x0C, 0x48, 0x02, 0x40, 0x80, 0x20, 0x00, 0x06, 0x02, 0x43, 0x00, 0x92, 0xA9, 0x68, 0x48, 0x42
	.byte 0x08, 0x43, 0x00, 0x28, 0x12, 0xDA, 0x30, 0x1C, 0x08, 0x93, 0xB6, 0xF7, 0x8F, 0xFE, 0x80, 0x05
	.byte 0x80, 0x0D, 0x05, 0x4A, 0x01, 0x99, 0x11, 0x40, 0x01, 0x43, 0x01, 0x91, 0x08, 0x9B, 0x0B, 0xE0
	.byte 0xFF, 0x3F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3F, 0x00, 0xFC, 0xFF, 0xFF, 0x22, 0x48, 0x10, 0x40
	.byte 0x80, 0x21, 0x89, 0x00, 0x08, 0x43, 0x00, 0x90, 0x00, 0x98, 0x01, 0x99, 0x02, 0x90, 0x03, 0x91
	.byte 0x48, 0x46, 0x01, 0x06, 0x09, 0x0E, 0x1D, 0x4A, 0x02, 0x98, 0x10, 0x40, 0x08, 0x43, 0x02, 0x90
	.byte 0x1B, 0x49, 0x08, 0x1C, 0x42, 0x46, 0x02, 0x40, 0x60, 0x88, 0x1A, 0x4F, 0x39, 0x1C, 0x08, 0x40
	.byte 0x10, 0x43, 0x60, 0x80, 0x61, 0x79, 0x0F, 0x20, 0x08, 0x40, 0x06, 0x99, 0x08, 0x43, 0x60, 0x71
	.byte 0x09, 0x9F, 0x3A, 0x78, 0x7F, 0x2A, 0x0A, 0xD8, 0xD0, 0x00, 0x04, 0x30, 0x38, 0x18, 0x02, 0x99
	.byte 0x01, 0x60, 0x57, 0x46, 0xB9, 0x88, 0x81, 0x80, 0x50, 0x1C, 0x09, 0x99, 0x08, 0x70, 0x10, 0x36
	.byte 0x10, 0x35, 0x01, 0x3B, 0x20, 0x22, 0x90, 0x44, 0x00, 0x2B, 0x9C, 0xDA, 0x05, 0x99, 0x07, 0x9F
	.byte 0xB9, 0x46, 0x02, 0x29, 0x00, 0xDC, 0x81, 0xE7, 0x0A, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xFF, 0xFC, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0x01, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xFF, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4
	.byte 0x80, 0x46, 0x00, 0x21, 0x00, 0x27, 0x88, 0x00, 0x01, 0x31, 0x89, 0x46, 0x41, 0x46, 0x46, 0x18
	.byte 0x08, 0x36, 0x30, 0x68, 0x39, 0x01, 0x45, 0x18, 0x28, 0x7B, 0x00, 0x28, 0x14, 0xD0, 0x2A, 0x1D
	.byte 0x51, 0x68, 0x48, 0x42, 0x08, 0x43, 0x00, 0x28, 0x0C, 0xDA, 0x2C, 0x68, 0x04, 0x34, 0x10, 0x1C
	.byte 0xB6, 0xF7, 0x14, 0xFE, 0x01, 0x1C, 0x49, 0x01, 0x0F, 0x48, 0x09, 0x18, 0x20, 0x1C, 0x40, 0x22
	.byte 0x82, 0xF0, 0x0C, 0xFB, 0x00, 0x20, 0x28, 0x73, 0x01, 0x37, 0x06, 0x2F, 0xE1, 0xDD, 0x49, 0x46
	.byte 0x02, 0x29, 0xD7, 0xDD, 0x41, 0x46, 0x48, 0x7E, 0x00, 0x28, 0x01, 0xD0, 0x00, 0x20, 0x48, 0x76
	.byte 0x41, 0x46, 0x88, 0x7E, 0x00, 0x28, 0x01, 0xD0, 0x00, 0x20, 0x88, 0x76, 0x18, 0xBC, 0x98, 0x46
	.byte 0xA1, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x01, 0x06, 0xF0, 0xB5, 0x57, 0x46
	.byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x85, 0xB0, 0x81, 0x46, 0x03, 0x92, 0x4D, 0x48, 0x4A, 0x46
	.byte 0x10, 0x60, 0x51, 0x60, 0x49, 0x46, 0x08, 0x31, 0x02, 0x20, 0x00, 0x23, 0x01, 0x22, 0x52, 0x42
	.byte 0x08, 0xC1, 0x01, 0x38, 0x90, 0x42, 0xFB, 0xD1, 0x00, 0x21, 0x00, 0x20, 0x4A, 0x46, 0x90, 0x82
	.byte 0xD0, 0x82, 0x11, 0x76, 0x51, 0x76, 0x91, 0x76, 0xD1, 0x76, 0x00, 0x24, 0x70, 0x20, 0xAF, 0xF7
	.byte 0x11, 0xFA, 0x80, 0x46, 0x45, 0x46, 0x06, 0x26, 0xA0, 0x00, 0x82, 0x46, 0x01, 0x34, 0x04, 0x94
	.byte 0x82, 0x20, 0x40, 0x00, 0xAF, 0xF7, 0x06, 0xFA, 0x2C, 0x1C, 0x01, 0xC4, 0x20, 0x1C, 0xB6, 0xF7
	.byte 0x51, 0xFB, 0x00, 0x21, 0x61, 0x60, 0x29, 0x73, 0x10, 0x35, 0x01, 0x3E, 0x01, 0x20, 0x40, 0x42
	.byte 0x86, 0x42, 0xED, 0xD1, 0x57, 0x46, 0x4F, 0x44, 0x08, 0x37, 0x3E, 0x68, 0xB0, 0x45, 0x17, 0xD0
	.byte 0x00, 0x2E, 0x15, 0xD0, 0x35, 0x1C, 0x70, 0x35, 0xAE, 0x42, 0x0E, 0xD0, 0x10, 0x3D, 0x2C, 0x1D
	.byte 0x61, 0x68, 0x20, 0x1C, 0xB6, 0xF7, 0x10, 0xFD, 0x20, 0x1C, 0x02, 0x21, 0xB6, 0xF7, 0xEC, 0xFB
	.byte 0x28, 0x68, 0xAF, 0xF7, 0xF9, 0xF9, 0xAE, 0x42, 0xF0, 0xD1, 0x30, 0x1C, 0xAF, 0xF7, 0xF4, 0xF9
	.byte 0x42, 0x46, 0x3A, 0x60, 0x00, 0x20, 0x80, 0x46, 0x56, 0x46, 0x4E, 0x44, 0x08, 0x36, 0x02, 0xAF
	.byte 0x31, 0x68, 0x42, 0x46, 0x10, 0x01, 0x0D, 0x18, 0x68, 0x46, 0x03, 0x99, 0x03, 0x22, 0xB7, 0xF7
	.byte 0xC7, 0xF8, 0x2C, 0x1D, 0xA5, 0x45, 0x08, 0xD0, 0x61, 0x68, 0x20, 0x1C, 0xB6, 0xF7, 0xEC, 0xFC
	.byte 0x01, 0x99, 0x20, 0x1C, 0xB6, 0xF7, 0x40, 0xFD, 0x60, 0x60, 0x01, 0x99, 0x68, 0x46, 0xB6, 0xF7
	.byte 0xE3, 0xFC, 0x68, 0x46, 0x02, 0x21, 0xB6, 0xF7, 0xBF, 0xFB, 0x61, 0x68, 0x48, 0x42, 0x08, 0x43
	.byte 0xC0, 0x0F, 0x00, 0x28, 0x0A, 0xD0, 0x29, 0x68, 0x04, 0x20, 0x02, 0x22, 0x38, 0x80, 0x7A, 0x80
	.byte 0x02, 0x98, 0x04, 0x31, 0x00, 0x22, 0xFD, 0xF7, 0x8B, 0xFA, 0x01, 0x20, 0x28, 0x73, 0x01, 0x20
	.byte 0x80, 0x44, 0x41, 0x46, 0x06, 0x29, 0xCB, 0xDD, 0x04, 0x9C, 0x02, 0x2C, 0x86, 0xDD, 0x4A, 0x46
	.byte 0x90, 0x76, 0x48, 0x46, 0x05, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0xC0, 0x78, 0x0E, 0x08, 0x00, 0xB5, 0x00, 0x7E, 0x08, 0x18, 0x02, 0x28
	.byte 0x00, 0xDD, 0x03, 0x38, 0x02, 0xBC, 0x08, 0x47, 0x89, 0x00, 0x09, 0x18, 0x88, 0x68, 0x70, 0x47
	.byte 0x89, 0x00, 0x09, 0x18, 0x88, 0x68, 0x70, 0x47, 0x30, 0xB5, 0x03, 0xAC, 0x25, 0x78, 0x00, 0x24
	.byte 0x04, 0x60, 0x44, 0x60, 0x0B, 0x4C, 0x84, 0x60, 0xC1, 0x60, 0x02, 0x61, 0x0A, 0x4A, 0x11, 0x1C
	.byte 0x0B, 0x40, 0x82, 0x8A, 0x09, 0x49, 0x11, 0x40, 0x19, 0x43, 0x81, 0x82, 0x42, 0x7D, 0x41, 0x21
	.byte 0x49, 0x42, 0x11, 0x40, 0xED, 0x01, 0x7F, 0x22, 0x11, 0x40, 0x29, 0x43, 0x41, 0x75, 0x30, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0xE0, 0x78, 0x0E, 0x08, 0xFF, 0x3F, 0x00, 0x00, 0x00, 0xC0, 0xFF, 0xFF

	thumb_func_start func_08051320
func_08051320: @ 0x08051320
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	adds r6, r1, #0
	adds r7, r2, #0
	mov ip, r3
	movs r1, #0x1f
	ands r6, r1
	adds r0, r6, r3
	cmp r0, #0x20
	bls .L08051344
	movs r0, #0x20
	subs r0, r0, r6
	mov ip, r0
.L08051344:
	ands r7, r1
	ldr r1, [sp, #0x2c]
	adds r0, r7, r1
	cmp r0, #0x20
	bls .L08051354
	movs r0, #0x20
	subs r0, r0, r7
	str r0, [sp, #0x2c]
.L08051354:
	ldr r2, .L08051438 @ =0x000003FF
	adds r1, r2, #0
	ldr r0, [sp, #0x30]
	adds r4, r0, #0
	ands r4, r1
	ldr r0, [sp, #0x34]
	lsls r0, r0, #0xc
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	orrs r4, r0
	lsls r0, r7, #6
	mov r1, sl
	adds r5, r1, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r2, r6, #1
	adds r3, r5, r2
	strh r4, [r3]
	adds r3, #2
	mov r0, ip
	adds r1, r6, r0
	lsls r0, r1, #1
	subs r0, #2
	adds r0, r5, r0
	str r1, [sp, #8]
	ldr r1, [sp, #0x2c]
	adds r7, r7, r1
	str r2, [sp]
.L0805139C:
	mov r2, r8
	strh r2, [r3]
	adds r3, #2
	cmp r3, r0
	bne .L0805139C
	mov r0, sb
	strh r0, [r3]
	adds r5, #0x40
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r4, #3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #6
	subs r0, #0x40
	mov r1, sl
	adds r2, r1, r0
	adds r0, r4, #5
	mov ip, r0
	adds r1, r4, #7
	mov sl, r1
	adds r4, #6
	str r4, [sp, #4]
	ldr r7, [sp]
	ldr r1, [sp, #8]
	lsls r0, r1, #1
	subs r4, r0, #2
.L080513E0:
	adds r0, r5, r7
	mov r1, sb
	strh r1, [r0]
	adds r0, #2
	adds r1, r5, r4
	adds r3, r5, #0
	adds r3, #0x40
.L080513EE:
	strh r6, [r0]
	adds r0, #2
	cmp r0, r1
	bne .L080513EE
	mov r1, r8
	strh r1, [r0]
	adds r5, r3, #0
	cmp r3, r2
	bne .L080513E0
	mov r2, sl
	lsls r0, r2, #0x10
	lsrs r4, r0, #0x10
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp]
	adds r2, r3, r0
	mov r1, ip
	strh r1, [r2]
	adds r2, #2
	ldr r1, [sp, #8]
	lsls r0, r1, #1
	subs r0, #2
	adds r0, r3, r0
.L0805141E:
	strh r4, [r2]
	adds r2, #2
	cmp r2, r0
	bne .L0805141E
	strh r5, [r2]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08051438: .4byte 0x000003FF

	thumb_func_start func_0805143C
func_0805143C: @ 0x0805143C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	mov r3, sp
	movs r1, #0x1e
	movs r2, #1
	movs r6, #0
	movs r5, #0
	mov r0, sp
	strh r1, [r0]
	strh r2, [r3, #2]
	adds r0, r7, #0
	mov r1, sp
	bl func_080084DC
	ldr r0, .L080514F8 @ =vtable_unk_080E7928
	str r0, [r7, #4]
	str r4, [r7, #8]
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #2
	bl func_08008B54
	adds r4, r7, #0
	adds r4, #0x10
	ldr r1, .L080514FC @ =gUnk_08527094
	adds r0, r4, #0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x40
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x54
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r6, [r0, #0x10]
	strb r6, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r6, [r0, #0x18]
	adds r0, #0x20
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x88
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r6, [r0, #0x10]
	strb r6, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r6, [r0, #0x18]
	adds r4, #0x98
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r1, .L08051500 @ =0x000008B8
	adds r0, r7, r1
	strh r5, [r0]
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080514F8: .4byte vtable_unk_080E7928
.L080514FC: .4byte gUnk_08527094
.L08051500: .4byte 0x000008B8

	thumb_func_start func_08051504
func_08051504: @ 0x08051504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sb, r0
	adds r6, r1, #0
	adds r0, r6, #0
	bl func_08008724
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
	movs r5, #0
	str r5, [r4]
	str r5, [r4, #4]
	ldr r0, .L080515A0 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	adds r0, r6, #0
	bl func_080516F0
	ldr r0, [sp, #4]
	ldr r1, .L080515A4 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r1, .L080515A8 @ =0x000008BC
	adds r0, r6, r1
	str r5, [r0]
	movs r7, #0
	add r3, sp, #8
	mov r8, r3
	add r0, sp, #0xc
	mov sl, r0
	adds r5, r6, r1
.L08051584:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r0, [r5]
	cmp r0, #1
	beq .L080515C8
	cmp r0, #1
	bgt .L080515AC
	cmp r0, #0
	beq .L080515B6
	b .L0805169A
	.align 2, 0
.L080515A0: .4byte vtable_unk_080E5B80
.L080515A4: .4byte 0x00000889
.L080515A8: .4byte 0x000008BC
.L080515AC:
	cmp r0, #2
	beq .L08051664
	cmp r0, #3
	beq .L0805168C
	b .L0805169A
.L080515B6:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0805169A
	movs r0, #1
	str r0, [r5]
	b .L0805169A
.L080515C8:
	adds r0, r6, #0
	bl func_080088C4
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq .L080515F8
	ldr r3, .L080515F4 @ =0x000008B8
	adds r1, r6, r3
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble .L08051618
	movs r0, #0x20
	strh r0, [r1]
	b .L08051618
	.align 2, 0
.L080515F4: .4byte 0x000008B8
.L080515F8:
	adds r0, r6, #0
	bl func_080088C4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08051618
	ldr r0, .L08051660 @ =0x000008B8
	adds r1, r6, r0
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L08051618
	strh r4, [r1]
.L08051618:
	movs r4, #0
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L08051636
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L08051638
.L08051636:
	movs r4, #1
.L08051638:
	cmp r4, #0
	beq .L0805164A
	adds r0, r6, #0
	adds r0, #0xc
	movs r1, #0xc6
	bl func_08008B6C
	movs r0, #2
	str r0, [r5]
.L0805164A:
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L08051660 @ =0x000008B8
	adds r1, r6, r3
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x16]
	b .L0805169A
	.align 2, 0
.L08051660: .4byte 0x000008B8
.L08051664:
	ldr r0, [sp, #4]
	adds r0, #0xc
	ldr r1, .L08051688 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r0, #3
	str r0, [r5]
	b .L0805169A
	.align 2, 0
.L08051688: .4byte 0x00000889
.L0805168C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0805169A
	movs r7, #1
.L0805169A:
	adds r0, r6, #0
	bl func_08051D70
	cmp r7, #0
	bne .L080516A6
	b .L08051584
.L080516A6:
	movs r0, #0
	str r0, [sp, #8]
	mov r1, r8
	str r1, [sp, #0xc]
	mov r3, sl
	str r0, [r3, #4]
	str r0, [r1]
	mov r1, sb
	str r0, [r1]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080516CA
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080516CA:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L080516DC
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080516DC:
	mov r0, sb
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080516F0
func_080516F0: @ 0x080516F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L080519B8 @ =0xFFFFF58C
	add sp, r4
	mov sl, r0
	bl func_08008918
	add r1, sp, #0xc
	movs r4, #0
	strh r4, [r1]
	strh r4, [r0, #0x10]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	movs r1, #4
	strh r1, [r2]
	strh r1, [r0, #0x12]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x14]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x16]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x18]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1c]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	ldr r1, .L080519BC @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, .L080519C0 @ =0x0600E000
	mov r8, r0
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L080519C4 @ =0x0600E800
	mov sb, r1
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L080519C8 @ =0x0600F000
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L080519CC @ =0x0600F800
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	movs r2, #0xfa
	lsls r2, r2, #5
	adds r4, r2, #0
	strh r4, [r1]
	movs r6, #0
	strh r4, [r0]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080519D0 @ =0x00001C43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080519D4 @ =0x00001D41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080519D8 @ =0x00001E42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #8]
	ldr r0, .L080519DC @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L080519E0 @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L080519E4 @ =0x00030003
	mov r1, r8
	adds r2, r5, #0
	bl func_08008EB8
	movs r0, #3
	str r0, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	mov r0, sb
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl func_08051320
	ldr r0, .L080519E8 @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r1, .L080519EC @ =0x05000040
	movs r4, #0xf8
	lsls r4, r4, #2
	adds r0, r4, #0
	strh r0, [r1]
	ldr r0, .L080519F0 @ =0x05000042
	strh r6, [r0]
	adds r1, #4
	ldr r2, .L080519F4 @ =0x00004218
	adds r0, r2, #0
	strh r0, [r1]
	movs r3, #0
	mov sb, r3
	ldr r7, .L080519F8 @ =0x00000A1C
	add r7, sp
	mov r4, sp
	adds r4, #0x14
	ldr r0, .L080519FC @ =0x00000A4C
	add r0, sp
	str r4, [r0]
	movs r1, #0xa2
	lsls r1, r1, #4
	add r1, sp
	ldr r2, .L08051A00 @ =0x00000A64
	add r2, sp
	str r1, [r2]
	ldr r3, .L08051A04 @ =0x00000A24
	add r3, sp
	ldr r4, .L08051A08 @ =0x00000A68
	add r4, sp
	str r3, [r4]
	mov r0, sp
	adds r0, #0x58
	ldr r1, .L08051A0C @ =0x00000A5C
	add r1, sp
	str r0, [r1]
	movs r2, #0xa3
	lsls r2, r2, #4
	add r2, sp
	ldr r3, .L08051A10 @ =0x00000A6C
	add r3, sp
	str r2, [r3]
	ldr r4, .L08051A14 @ =0x00000A34
	add r4, sp
	movs r0, #0xa7
	lsls r0, r0, #4
	add r0, sp
	str r4, [r0]
	movs r1, #0xd7
	lsls r1, r1, #2
	add r1, sp
	ldr r2, .L08051A18 @ =0x00000A54
	add r2, sp
	str r1, [r2]
	mov r3, sp
	adds r3, #0x1c
	movs r4, #0xa5
	lsls r4, r4, #4
	add r4, sp
	str r3, [r4]
	movs r0, #1
	mov r8, r0
	ldr r5, .L08051A1C @ =0x06001800
	adds r6, r7, #0
	ldr r4, .L08051A20 @ =gUnk_080FA12E
.L080518B0:
	ldrh r1, [r4]
	mov r2, r8
	strh r2, [r6]
	movs r3, #2
	strh r3, [r7, #2]
	ldr r0, [r6]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	add r1, sp, #0x14
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	ldr r3, .L080519FC @ =0x00000A4C
	add r3, sp
	ldr r0, [r3]
	adds r1, r5, #0
	movs r2, #0x40
	bl func_08008E64
	adds r5, #0x40
	adds r4, #2
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #0xc
	ble .L080518B0
	ldr r0, .L08051A24 @ =0x03FF03FF
	mov r4, sl
	adds r4, #0xb8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r4, #0
	bl func_08008EB8
	movs r1, #0
	movs r0, #0xa2
	lsls r0, r0, #4
	add r0, sp
	strb r1, [r0]
	ldr r2, .L08051A00 @ =0x00000A64
	add r2, sp
	ldr r2, [r2]
	strh r1, [r2, #2]
	ldr r3, .L08051A28 @ =0x00000A38
	add r3, sp
	str r1, [r3]
	movs r0, #0xfa
	lsls r0, r0, #2
	ldr r1, .L08051A2C @ =0x00000A3C
	add r1, sp
	str r0, [r1]
	movs r2, #0
	mov r8, r2
	ldr r3, .L08051A30 @ =0x00000A44
	add r3, sp
	str r4, [r3]
	adds r4, #0x40
	ldr r0, .L08051A34 @ =0x00000A48
	add r0, sp
	str r4, [r0]
	mov r1, sl
	adds r1, #0x40
	movs r2, #0xa6
	lsls r2, r2, #4
	add r2, sp
	str r1, [r2]
	mov r3, sl
	adds r3, #0xb0
	movs r4, #0xa4
	lsls r4, r4, #4
	add r4, sp
	str r3, [r4]
	ldr r0, .L08051A38 @ =0x00000A28
	add r0, sp
	mov sb, r0
.L0805194E:
	mov r1, sl
	ldr r0, [r1, #8]
	ldr r2, .L08051A3C @ =0x00002C4C
	adds r0, r0, r2
	ldr r3, .L08051A00 @ =0x00000A64
	add r3, sp
	ldr r1, [r3]
	mov r2, r8
	bl func_080522D8
	ldr r0, .L08051A04 @ =0x00000A24
	add r0, sp
	movs r4, #0xc
	strh r4, [r0]
	movs r2, #2
	ldr r1, .L08051A08 @ =0x00000A68
	add r1, sp
	ldr r1, [r1]
	strh r2, [r1, #2]
	ldr r0, [r0]
	add r1, sp, #0x58
	movs r2, #0
	bl func_0804E7A0
	movs r0, #0xa2
	lsls r0, r0, #4
	add r0, sp
	ldrb r4, [r0]
	cmp r4, #0
	bne .L08051A44
	mov r2, sl
	ldr r0, [r2, #8]
	ldr r3, .L08051A40 @ =0x00001C70
	adds r0, r0, r3
	bl GetName__C6Animal
	movs r2, #0xc
	mov r1, sb
	strh r2, [r1]
	movs r3, #2
	strh r3, [r1, #2]
	ldr r1, [r1]
	str r0, [sp]
	str r4, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	adds r0, r1, #0
	add r1, sp, #0x58
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	b .L08051A72
	.align 2, 0
.L080519B8: .4byte 0xFFFFF58C
.L080519BC: .4byte 0x06007FE0
.L080519C0: .4byte 0x0600E000
.L080519C4: .4byte 0x0600E800
.L080519C8: .4byte 0x0600F000
.L080519CC: .4byte 0x0600F800
.L080519D0: .4byte 0x00001C43
.L080519D4: .4byte 0x00001D41
.L080519D8: .4byte 0x00001E42
.L080519DC: .4byte gUnk_080F9F70
.L080519E0: .4byte gUnk_080F9F74
.L080519E4: .4byte 0x00030003
.L080519E8: .4byte gUnk_080F9F78
.L080519EC: .4byte 0x05000040
.L080519F0: .4byte 0x05000042
.L080519F4: .4byte 0x00004218
.L080519F8: .4byte 0x00000A1C
.L080519FC: .4byte 0x00000A4C
.L08051A00: .4byte 0x00000A64
.L08051A04: .4byte 0x00000A24
.L08051A08: .4byte 0x00000A68
.L08051A0C: .4byte 0x00000A5C
.L08051A10: .4byte 0x00000A6C
.L08051A14: .4byte 0x00000A34
.L08051A18: .4byte 0x00000A54
.L08051A1C: .4byte 0x06001800
.L08051A20: .4byte gUnk_080FA12E
.L08051A24: .4byte 0x03FF03FF
.L08051A28: .4byte 0x00000A38
.L08051A2C: .4byte 0x00000A3C
.L08051A30: .4byte 0x00000A44
.L08051A34: .4byte 0x00000A48
.L08051A38: .4byte 0x00000A28
.L08051A3C: .4byte 0x00002C4C
.L08051A40: .4byte 0x00001C70
.L08051A44:
	ldrb r0, [r0]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #1
	ldr r0, .L08051CE0 @ =gUnk_080F9F7C
	adds r1, r1, r0
	ldr r0, .L08051CE4 @ =0x00000A2C
	add r0, sp
	movs r2, #0xc
	strh r2, [r0]
	movs r3, #2
	strh r3, [r0, #2]
	ldr r0, [r0]
	str r1, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	add r1, sp, #0x58
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L08051A72:
	mov r2, r8
	lsls r5, r2, #1
	adds r4, r5, r2
	lsls r1, r4, #8
	ldr r3, .L08051CE8 @ =0x06002800
	adds r1, r1, r3
	ldr r2, .L08051CEC @ =0x00000A5C
	add r2, sp
	ldr r0, [r2]
	movs r2, #0xc0
	lsls r2, r2, #2
	bl func_08008E64
	lsls r4, r4, #0x13
	movs r3, #0x85
	lsls r3, r3, #0x16
	adds r4, r4, r3
	lsrs r7, r4, #0x10
	movs r4, #0
	mov r0, r8
	adds r0, #1
	ldr r1, .L08051CF0 @ =0x00000A58
	add r1, sp
	str r0, [r1]
	adds r2, r5, #4
	lsls r2, r2, #6
	adds r0, r5, #5
	lsls r0, r0, #6
	adds r6, r7, #0
	adds r6, #0xc
	ldr r3, .L08051CF4 @ =0x00000A44
	add r3, sp
	ldr r1, [r3]
	adds r1, #0xe
	adds r3, r0, r1
	adds r2, r2, r1
.L08051ABA:
	adds r0, r7, r4
	strh r0, [r2]
	strh r6, [r3]
	adds r6, #1
	adds r3, #2
	adds r2, #2
	adds r4, #1
	cmp r4, #0xb
	ble .L08051ABA
	mov r4, r8
	cmp r4, #0
	beq .L08051AE6
	ldr r1, .L08051CF8 @ =0x00000A64
	add r1, sp
	ldr r1, [r1]
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r2, .L08051CFC @ =0x00000A3C
	add r2, sp
	ldr r2, [r2]
	cmp r0, r2
	beq .L08051AFE
.L08051AE6:
	mov r3, r8
	ldr r4, .L08051D00 @ =0x00000A38
	add r4, sp
	str r3, [r4]
	ldr r0, .L08051CF8 @ =0x00000A64
	add r0, sp
	ldr r0, [r0]
	movs r1, #2
	ldrsh r0, [r0, r1]
	ldr r1, .L08051CFC @ =0x00000A3C
	add r1, sp
	str r0, [r1]
.L08051AFE:
	ldr r1, .L08051D00 @ =0x00000A38
	add r1, sp
	ldr r1, [r1]
	cmp r1, #9
	bne .L08051B14
	adds r2, r5, #4
	mov r0, sl
	movs r1, #2
	movs r3, #1
	bl func_08051D30
.L08051B14:
	adds r6, r5, #4
	ldr r2, .L08051D00 @ =0x00000A38
	add r2, sp
	ldr r0, [r2]
	adds r0, #1
	movs r1, #0xa
	bl __modsi3
	adds r3, r0, #0
	mov r0, sl
	movs r1, #4
	adds r2, r6, #0
	bl func_08051D30
	mov r0, sl
	movs r1, #1
	adds r2, r6, #0
	movs r3, #0xc
	bl func_08051D30
	ldr r3, .L08051CF8 @ =0x00000A64
	add r3, sp
	ldr r3, [r3]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	movs r5, #0x64
	adds r0, r7, #0
	movs r1, #0x64
	bl __divsi3
	lsls r4, r0, #0x10
	asrs r3, r4, #0x10
	cmp r3, #0
	beq .L08051B64
	mov r0, sl
	movs r1, #0x14
	adds r2, r6, #0
	bl func_08051D30
.L08051B64:
	asrs r0, r4, #0x10
	muls r5, r0, r5
	subs r5, r7, r5
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r3, r4, #0x10
	mov r0, sl
	movs r1, #0x16
	adds r2, r6, #0
	bl func_08051D30
	mov r0, sl
	movs r1, #0x18
	adds r2, r6, #0
	movs r3, #0xa
	bl func_08051D30
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r5, r5, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sl
	movs r1, #0x19
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08051D30
	mov r0, sl
	movs r1, #0x1b
	adds r2, r6, #0
	movs r3, #0xb
	bl func_08051D30
	ldr r4, .L08051CF0 @ =0x00000A58
	add r4, sp
	ldr r4, [r4]
	mov r8, r4
	cmp r4, #9
	bgt .L08051BC6
	b .L0805194E
.L08051BC6:
	ldr r1, .L08051D04 @ =0x0600F000
	movs r4, #0x80
	lsls r4, r4, #4
	ldr r2, .L08051CF4 @ =0x00000A44
	add r2, sp
	ldr r0, [r2]
	adds r2, r4, #0
	bl func_08008E64
	ldr r0, .L08051D08 @ =0x03FF03FF
	ldr r3, .L08051CF4 @ =0x00000A44
	add r3, sp
	ldr r1, [r3]
	adds r2, r4, #0
	bl func_08008EB8
	movs r4, #0x1b
	movs r5, #2
	movs r6, #0
	movs r0, #0xa3
	lsls r0, r0, #4
	add r0, sp
	strh r4, [r0]
	ldr r1, .L08051D0C @ =0x00000A6C
	add r1, sp
	ldr r1, [r1]
	strh r5, [r1, #2]
	ldr r0, [r0]
	add r1, sp, #0x35c
	movs r2, #0
	bl func_0804E7A0
	ldr r1, .L08051D10 @ =gUnk_080FA158
	movs r2, #1
	ldr r0, .L08051D14 @ =0x00000A34
	add r0, sp
	strh r4, [r0]
	movs r3, #0xa7
	lsls r3, r3, #4
	add r3, sp
	ldr r3, [r3]
	strh r5, [r3, #2]
	ldr r0, [r0]
	str r1, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	add r1, sp, #0x35c
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	ldr r1, .L08051D18 @ =0x06002000
	movs r2, #0xd8
	lsls r2, r2, #3
	ldr r4, .L08051D1C @ =0x00000A54
	add r4, sp
	ldr r0, [r4]
	bl func_08008E64
	movs r5, #0x84
	lsls r5, r5, #6
	movs r3, #0
	adds r4, r5, #0
	adds r4, #0x1b
	movs r2, #0x9e
	lsls r2, r2, #1
	add r2, sl
	ldr r0, .L08051D20 @ =0x00000A48
	add r0, sp
	ldr r1, [r0]
	adds r1, #4
.L08051C54:
	adds r0, r5, r3
	strh r0, [r1]
	strh r4, [r2]
	adds r4, #1
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0x1a
	ble .L08051C54
	ldr r1, .L08051D24 @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r3, .L08051CF4 @ =0x00000A44
	add r3, sp
	ldr r0, [r3]
	bl func_08008E64
	mov r4, sl
	ldr r1, [r4, #0x40]
	ldr r3, [r1]
	movs r0, #0xa6
	lsls r0, r0, #4
	add r0, sp
	ldr r0, [r0]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r4, #0x44]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xc
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r4, [sp, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #4
	add r2, sp
	ldr r2, [r2]
	ldr r1, [r2, #4]
	movs r3, #0xa4
	lsls r3, r3, #4
	add r3, sp
	ldr r0, [r3]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L08051D28 @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L08051CC6
	movs r3, #0xa5
	lsls r3, r3, #4
	add r3, sp
	ldr r3, [r3]
	ldrh r2, [r3, #4]
.L08051CC6:
	adds r0, r4, #0
	bl func_08008E64
	ldr r3, .L08051D2C @ =0x00000A74
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08051CE0: .4byte gUnk_080F9F7C
.L08051CE4: .4byte 0x00000A2C
.L08051CE8: .4byte 0x06002800
.L08051CEC: .4byte 0x00000A5C
.L08051CF0: .4byte 0x00000A58
.L08051CF4: .4byte 0x00000A44
.L08051CF8: .4byte 0x00000A64
.L08051CFC: .4byte 0x00000A3C
.L08051D00: .4byte 0x00000A38
.L08051D04: .4byte 0x0600F000
.L08051D08: .4byte 0x03FF03FF
.L08051D0C: .4byte 0x00000A6C
.L08051D10: .4byte gUnk_080FA158
.L08051D14: .4byte 0x00000A34
.L08051D18: .4byte 0x06002000
.L08051D1C: .4byte 0x00000A54
.L08051D20: .4byte 0x00000A48
.L08051D24: .4byte 0x0600F800
.L08051D28: .4byte 0x05000200
.L08051D2C: .4byte 0x00000A74

	thumb_func_start func_08051D30
func_08051D30: @ 0x08051D30
	push {r4, r5, r6, r7, lr}
	lsls r3, r3, #1
	movs r4, #0x83
	lsls r4, r4, #6
	adds r6, r3, r4
	movs r5, #0
	lsls r4, r2, #6
	ldr r7, .L08051D6C @ =0x000020C1
	adds r3, r3, r7
	lsls r1, r1, #1
	adds r4, #0xf8
	adds r4, r1, r4
	adds r4, r4, r0
	lsls r2, r2, #6
	adds r2, #0xb8
	adds r1, r1, r2
	adds r1, r1, r0
.L08051D52:
	adds r0, r6, r5
	strh r0, [r1]
	strh r3, [r4]
	adds r3, #1
	adds r4, #2
	adds r1, #2
	adds r5, #1
	cmp r5, #0
	ble .L08051D52
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08051D6C: .4byte 0x000020C1

	thumb_func_start func_08051D70
func_08051D70: @ 0x08051D70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	adds r7, r0, #0
	mov r1, sp
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [sp, #0xc]
	strb r2, [r1, #0x10]
	strb r2, [r1, #0x11]
	str r0, [sp, #0x14]
	strb r2, [r1, #0x18]
	add r3, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r3, #4]
	add r2, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r2, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	ldr r1, .L08051E98 @ =0x000008B8
	adds r0, r7, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bgt .L08051DBE
	b .L08051F92
.L08051DBE:
	adds r4, r7, #0
	adds r4, #0x40
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r7, #0x40]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r7, #0x44]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r6, sp, #0x3c
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0x54
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x1a
	strh r0, [r1, #2]
	adds r4, r7, #0
	adds r4, #0xa8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r1, #1
	movs r3, #1
	mov sb, r3
	mov r5, sb
	strh r5, [r0, #8]
	strb r1, [r0, #0x18]
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L08051E64
	mov r1, sp
	ldrh r3, [r1, #0x28]
.L08051E64:
	str r5, [sp, #0x6c]
	lsls r2, r2, #5
	ldr r4, .L08051E9C @ =0x06010000
	adds r2, r2, r4
	adds r0, r6, #0
	mov r1, r8
	bl func_08008F0C
	mov sl, r6
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08051EA0
	cmp r1, #0
	beq .L08051E8E
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08051E8E:
	ldr r3, [sp, #0x6c]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L08051F74
	.align 2, 0
.L08051E98: .4byte 0x000008B8
.L08051E9C: .4byte 0x06010000
.L08051EA0:
	str r1, [sp, #0x70]
	mov r4, sb
	str r4, [sp, #0x60]
	ldr r5, [sp, #0x6c]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r1, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L08051EBC
	adds r0, r1, #0
.L08051EBC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08051EDA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08051EDE
	mov r0, sb
	bl func_080D3BC0
	b .L08051EDE
.L08051EDA:
	movs r0, #0
	mov sb, r0
.L08051EDE:
	adds r4, r0, #0
	mov r8, r4
	ldr r0, [sp, #0x6c]
	ldr r2, [r0]
	mov r3, r8
	ldr r1, [sp, #0x70]
	cmp r2, r1
	beq .L08051F08
.L08051EEE:
	cmp r3, #0
	beq .L08051EFE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08051EFE:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x70]
	cmp r2, r0
	bne .L08051EEE
.L08051F08:
	adds r4, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L08051F24
	cmp r4, #0
	beq .L08051F20
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08051F20:
	adds r4, #0x10
	b .L08051F4C
.L08051F24:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L08051F4A
.L08051F2C:
	cmp r2, #0
	beq .L08051F3C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08051F3C:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r6, ip
	cmp r6, #0
	bne .L08051F2C
.L08051F4A:
	adds r4, r2, #0
.L08051F4C:
	ldr r0, [sp, #0x6c]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08051F5E
.L08051F58:
	adds r1, #0x10
	cmp r1, r2
	bne .L08051F58
.L08051F5E:
	cmp r0, #0
	beq .L08051F66
	bl free
.L08051F66:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x6c]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L08051F74:
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08051F8A
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L08051F8A:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L08051F92:
	ldr r5, .L08052080 @ =0x000008B8
	adds r0, r7, r5
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0x1f
	ble .L08051FA0
	b .L0805217A
.L08051FA0:
	adds r4, r7, #0
	adds r4, #0x74
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r7, #0x74]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r7, #0x78]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r6, sp, #0x3c
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0x88
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x98
	strh r0, [r1, #2]
	adds r4, r7, #0
	adds r4, #0xa8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #4
	strh r0, [r1, #6]
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r1, #1
	movs r5, #1
	mov sb, r5
	mov r2, sb
	strh r2, [r0, #8]
	strb r1, [r0, #0x18]
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r3, [sp, #0x24]
	mov r8, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L08052048
	mov r4, sp
	ldrh r3, [r4, #0x28]
.L08052048:
	str r5, [sp, #0x6c]
	lsls r2, r2, #5
	ldr r5, .L08052084 @ =0x06010080
	adds r2, r2, r5
	adds r0, r6, #0
	mov r1, r8
	bl func_08008F0C
	mov sl, r6
	ldr r6, [sp, #0x6c]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08052088
	cmp r1, #0
	beq .L08052074
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08052074:
	ldr r5, [sp, #0x6c]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0805215C
	.align 2, 0
.L08052080: .4byte 0x000008B8
.L08052084: .4byte 0x06010080
.L08052088:
	str r1, [sp, #0x70]
	mov r6, sb
	str r6, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	ldr r0, [r1]
	ldr r2, [sp, #0x70]
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L080520A4
	adds r0, r1, #0
.L080520A4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080520C2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080520C6
	mov r0, sb
	bl func_080D3BC0
	b .L080520C6
.L080520C2:
	movs r0, #0
	mov sb, r0
.L080520C6:
	adds r4, r0, #0
	mov r8, r4
	ldr r3, [sp, #0x6c]
	ldr r2, [r3]
	mov r3, r8
	ldr r4, [sp, #0x70]
	cmp r2, r4
	beq .L080520F0
.L080520D6:
	cmp r3, #0
	beq .L080520E6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080520E6:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x70]
	cmp r2, r5
	bne .L080520D6
.L080520F0:
	adds r4, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L0805210C
	cmp r4, #0
	beq .L08052108
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08052108:
	adds r4, #0x10
	b .L08052134
.L0805210C:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L08052132
.L08052114:
	cmp r2, #0
	beq .L08052124
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08052124:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L08052114
.L08052132:
	adds r4, r2, #0
.L08052134:
	ldr r3, [sp, #0x6c]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08052146
.L08052140:
	adds r1, #0x10
	cmp r1, r2
	bne .L08052140
.L08052146:
	cmp r0, #0
	beq .L0805214E
	bl free
.L0805214E:
	mov r0, sb
	add r0, r8
	mov r5, r8
	ldr r6, [sp, #0x6c]
	str r5, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L0805215C:
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08052172
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L08052172:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805217A:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0805218C
func_0805218C: @ 0x0805218C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L080521B8 @ =vtable_unk_080E7934
	str r0, [r4]
	movs r0, #0x8c
	lsls r0, r0, #4
	bl __builtin_new
	adds r1, r5, #0
	bl func_0805143C
	str r0, [r4, #4]
	ldr r1, [r6]
	movs r0, #0
	str r0, [r6]
	str r1, [r4, #8]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080521B8: .4byte vtable_unk_080E7934

	thumb_func_start func_080521BC
func_080521BC: @ 0x080521BC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080521F8 @ =vtable_unk_080E7934
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L080521D8
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080521D8:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L080521EA
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080521EA:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080521F8: .4byte vtable_unk_080E7934

	thumb_func_start func_080521FC
func_080521FC: @ 0x080521FC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, sp
	bl func_08051504
	ldr r1, [sp]
	cmp r1, #0
	beq .L0805221E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805221E:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_08052230
func_08052230: @ 0x08052230
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	cmp r1, #0
	beq .L0805224C
	subs r0, r1, #1
	movs r1, #0x19
	bl __udivsi3
	b .L0805224E
.L0805224C:
	movs r0, #0
.L0805224E:
	mov sl, r0
	movs r4, #0
	mov r1, sl
	lsls r1, r1, #2
	str r1, [sp]
.L08052258:
	lsls r6, r4, #2
	mov r8, r6
	lsls r0, r4, #1
	mov sb, r0
	adds r1, r4, #1
	str r1, [sp, #4]
	adds r5, r7, r6
	str r5, [sp, #8]
.L08052268:
	bl rand
	asrs r0, r0, #8
	movs r1, #0x1e
	bl __modsi3
	adds r0, #1
	strb r0, [r5]
	movs r3, #1
	movs r2, #0
	adds r1, r7, #0
.L0805227E:
	cmp r4, r2
	beq .L0805228E
	ldr r6, [sp, #8]
	ldrb r0, [r6]
	ldrb r6, [r1]
	cmp r0, r6
	bne .L0805228E
	movs r3, #0
.L0805228E:
	adds r1, #4
	adds r2, #1
	cmp r2, #9
	ble .L0805227E
	cmp r3, #0
	beq .L08052268
	bl rand
	mov r1, r8
	adds r5, r7, r1
	ldr r4, [sp]
	add r4, sl
	lsls r4, r4, #2
	add r4, sb
	ldr r6, .L080522D4 @ =gUnk_080FA174
	adds r4, r4, r6
	asrs r0, r0, #8
	movs r1, #0xa
	bl __modsi3
	ldrh r1, [r4]
	adds r1, r1, r0
	strh r1, [r5, #2]
	ldr r4, [sp, #4]
	cmp r4, #9
	ble .L08052258
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080522D4: .4byte gUnk_080FA174

	thumb_func_start func_080522D8
func_080522D8: @ 0x080522D8
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r2, [r0]
	strb r2, [r1]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	bx lr
	.align 2, 0

	thumb_func_start func_080522E8
func_080522E8: @ 0x080522E8
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r2, [r1]
	strb r2, [r0]
	ldrh r1, [r1, #2]
	strh r1, [r0, #2]
	bx lr
	.align 2, 0

	thumb_func_start func_080522F8
func_080522F8: @ 0x080522F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x18]
	add r1, sp, #0x14
	movs r0, #0x1e
	movs r2, #1
	movs r4, #0
	movs r5, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r7, #0
	bl func_080084DC
	ldr r0, .L08052710 @ =vtable_unk_080E7944
	str r0, [r7, #4]
	str r6, [r7, #8]
	str r5, [r7, #0xc]
	movs r0, #4
	bl __builtin_new
	mov r8, r0
	add r0, sp, #0xc
	bl func_0800835C
	add r6, sp, #0x10
	adds r0, r6, #0
	bl func_0800770C
	ldr r0, [r7, #0xc]
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0
	bl func_08050CC0
	str r0, [r7, #0x10]
	adds r0, r6, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	adds r0, r7, #0
	adds r0, #0x14
	movs r1, #1
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x18
	movs r1, #0
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x1c
	movs r1, #2
	bl func_08008B54
	adds r6, r7, #0
	adds r6, #0x20
	ldr r1, .L08052714 @ =gUnk_0858BA28
	adds r0, r6, #0
	bl func_0805E6CC
	movs r1, #0x50
	adds r1, r1, r7
	mov sl, r1
	ldr r1, .L08052718 @ =gUnk_0872DE44
	mov r0, sl
	bl func_0805E6CC
	adds r2, r7, #0
	adds r2, #0x80
	str r2, [sp, #0x1c]
	ldr r1, .L0805271C @ =gUnk_08740454
	adds r0, r2, #0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r1, .L08052720 @ =gUnk_0873E5B0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0xe0
	ldr r1, .L08052724 @ =gUnk_0873DE44
	bl func_0805E6CC
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, .L08052728 @ =gUnk_0873D6D8
	bl func_0805E6CC
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	ldr r1, .L0805272C @ =gUnk_086678A0
	mov r0, sb
	bl func_0805E6CC
	movs r1, #0xb8
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, .L08052730 @ =gUnk_0873A6E8
	bl func_0805E6CC
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	ldr r1, .L08052734 @ =gUnk_0873ED1C
	mov r0, r8
	bl func_0805E6CC
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r0, r7, r0
	str r0, [sp, #0x20]
	ldr r1, .L08052738 @ =gUnk_0871D51C
	bl func_0805E6CC
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r6, #0
	movs r2, #0x8e
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r2, #0x85
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r1, #0x8d
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #0x24
	adds r0, r7, r2
	adds r1, r6, #0
	ldr r2, .L0805273C @ =0x0000033B
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r7, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0x24
	adds r0, r7, r1
	mov r1, sl
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r2, #0xa1
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #0x24
	adds r0, r7, r2
	ldr r1, [sp, #0x1c]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r7, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0x24
	adds r0, r7, r1
	adds r1, r6, #0
	ldr r2, .L08052740 @ =0x0000091A
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r2, #0xbd
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r1, #0xc5
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #0x24
	adds r0, r7, r2
	mov r1, sb
	movs r2, #0xc9
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0xcb
	lsls r1, r1, #2
	adds r0, r7, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r2, #0xd3
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0x24
	adds r0, r7, r1
	mov r1, r8
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r1, #0xe1
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #0x24
	adds r0, r7, r2
	mov r1, r8
	movs r2, #2
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0xe7
	lsls r1, r1, #2
	adds r0, r7, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r2, #0xef
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0x24
	adds r0, r7, r1
	adds r1, r6, #0
	ldr r2, .L08052744 @ =0x00000641
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	movs r1, #0xfd
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #0x24
	adds r0, r7, r2
	ldr r1, [sp, #0x20]
	movs r2, #2
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r1, .L08052748 @ =0x0000040C
	adds r0, r7, r1
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	ldr r2, .L0805274C @ =0x0000042C
	adds r0, r7, r2
	strb r4, [r0]
	adds r1, #0x24
	adds r0, r7, r1
	mov r1, sb
	movs r2, #0xa7
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r2, .L08052750 @ =0x00000444
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	ldr r1, .L08052754 @ =0x00000464
	adds r0, r7, r1
	strb r4, [r0]
	adds r2, #0x24
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #7
	bl func_08007B54
	str r0, [r4, #4]
	movs r2, #0x90
	lsls r2, r2, #3
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0x91
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0x92
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0x93
	lsls r2, r2, #3
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x94
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0x95
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r2, #0x96
	lsls r2, r2, #3
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0x97
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	b .L08052758
	.align 2, 0
.L08052710: .4byte vtable_unk_080E7944
.L08052714: .4byte gUnk_0858BA28
.L08052718: .4byte gUnk_0872DE44
.L0805271C: .4byte gUnk_08740454
.L08052720: .4byte gUnk_0873E5B0
.L08052724: .4byte gUnk_0873DE44
.L08052728: .4byte gUnk_0873D6D8
.L0805272C: .4byte gUnk_086678A0
.L08052730: .4byte gUnk_0873A6E8
.L08052734: .4byte gUnk_0873ED1C
.L08052738: .4byte gUnk_0871D51C
.L0805273C: .4byte 0x0000033B
.L08052740: .4byte 0x0000091A
.L08052744: .4byte 0x00000641
.L08052748: .4byte 0x0000040C
.L0805274C: .4byte 0x0000042C
.L08052750: .4byte 0x00000444
.L08052754: .4byte 0x00000464
.L08052758:
	str r0, [r4, #4]
	movs r1, #0x98
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0x99
	lsls r2, r2, #3
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x9a
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0x9c
	lsls r2, r2, #3
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x9d
	lsls r0, r0, #3
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007128
	str r5, [r4, #4]
	movs r1, #0x9e
	lsls r1, r1, #3
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r2, #0x9f
	lsls r2, r2, #3
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007128
	str r5, [r4, #4]
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r5, r7, r0
	movs r6, #3
.L080527FE:
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	adds r4, r5, #0
	adds r4, #8
	adds r0, r4, #0
	bl func_08007128
	movs r0, #0
	str r0, [r4, #4]
	adds r5, #0x10
	subs r6, #1
	subs r0, #1
	cmp r6, r0
	bne .L080527FE
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r1, r1, r7
	mov r8, r1
	mov r0, r8
	bl func_08007874
	mov r0, r8
	movs r1, #4
	bl func_08007B54
	mov r2, r8
	str r0, [r2, #4]
	movs r0, #0xa9
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r5, #1
	movs r1, #0
	mov sb, r1
.L0805284C:
	adds r0, r4, #0
	bl func_08007128
	mov r2, sb
	str r2, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r6
	bne .L0805284C
	movs r6, #0
	mov r5, r8
	adds r5, #0xc
.L08052864:
	lsls r4, r6, #3
	add r4, r8
	adds r4, #8
	ldr r1, [r5]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r5]
	adds r5, #8
	adds r6, #1
	cmp r6, #1
	bls .L08052864
	movs r0, #2
	mov r8, r0
	ldr r1, .L08052940 @ =0x00002324
	adds r0, r7, r1
	movs r4, #0
	mov r2, sp
	ldrb r2, [r2, #0x18]
	strb r2, [r0]
	ldr r0, .L08052944 @ =0x000023A0
	adds r1, r7, r0
	ldr r0, .L08052948 @ =vtable_unk_080E7950
	str r0, [r1]
	movs r5, #0
	strh r4, [r1, #4]
	ldr r0, [r7, #8]
	ldr r6, .L0805294C @ =0x00001C9C
	adds r0, r0, r6
	ldr r0, [r0]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x18
	ldr r2, .L08052950 @ =0x00002264
	adds r1, r7, r2
	strh r0, [r1]
	ldr r0, [r7, #8]
	ldr r1, .L08052954 @ =0x00001C70
	adds r0, r0, r1
	bl GetAffection__C6Animal
	ldr r2, .L08052958 @ =0x00002266
	adds r1, r7, r2
	strh r0, [r1]
	ldr r1, .L0805295C @ =0x0000225C
	adds r0, r7, r1
	str r4, [r0]
	subs r2, #6
	adds r0, r7, r2
	str r4, [r0]
	ldr r1, .L08052960 @ =0x00001D58
	adds r0, r7, r1
	strb r5, [r0]
	ldr r2, .L08052964 @ =0x00001D59
	adds r0, r7, r2
	strb r5, [r0]
	ldr r1, .L08052968 @ =0x000022C8
	adds r0, r7, r1
	strh r4, [r0]
	ldr r2, .L0805296C @ =0x000022CA
	adds r0, r7, r2
	strh r4, [r0]
	ldr r0, [r7, #8]
	adds r0, r0, r6
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	subs r2, #4
	adds r1, r7, r2
	strh r0, [r1]
	ldr r0, .L08052970 @ =0x000022CC
	adds r1, r7, r0
	movs r0, #7
	strb r0, [r1]
	ldr r1, .L08052974 @ =0x000022CD
	adds r0, r7, r1
	strb r5, [r0]
	adds r2, #8
	adds r0, r7, r2
	strb r5, [r0]
	adds r1, #0x58
	adds r0, r7, r1
	strb r5, [r0]
	ldr r0, [r7, #8]
	ldr r2, .L08052978 @ =0x00001C9D
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	ldr r2, .L0805297C @ =0x00002326
	adds r1, r7, r2
	strb r0, [r1]
	ldr r1, .L08052980 @ =0x00002321
	adds r0, r7, r1
	strb r5, [r0]
	adds r2, #6
	adds r0, r7, r2
	mov r1, r8
	strh r1, [r0]
	adds r0, r7, #0
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08052940: .4byte 0x00002324
.L08052944: .4byte 0x000023A0
.L08052948: .4byte vtable_unk_080E7950
.L0805294C: .4byte 0x00001C9C
.L08052950: .4byte 0x00002264
.L08052954: .4byte 0x00001C70
.L08052958: .4byte 0x00002266
.L0805295C: .4byte 0x0000225C
.L08052960: .4byte 0x00001D58
.L08052964: .4byte 0x00001D59
.L08052968: .4byte 0x000022C8
.L0805296C: .4byte 0x000022CA
.L08052970: .4byte 0x000022CC
.L08052974: .4byte 0x000022CD
.L08052978: .4byte 0x00001C9D
.L0805297C: .4byte 0x00002326
.L08052980: .4byte 0x00002321

	thumb_func_start func_08052984
func_08052984: @ 0x08052984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	str r0, [sp, #0x2c]
	adds r5, r1, #0
	movs r0, #0
	str r0, [sp, #0x30]
	adds r0, r5, #0
	bl func_08008724
	adds r0, r5, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0xbf
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	adds r0, r5, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x10
	strh r2, [r1]
	adds r0, #0x54
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r5, #0
	bl func_08008918
	adds r1, r0, #0
	ldr r2, [sp, #0x30]
	str r2, [r4]
	str r2, [r4, #4]
	ldr r0, .L08052A70 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	adds r0, r5, #0
	bl func_08054F40
	adds r0, r5, #0
	bl func_08055264
	ldr r3, .L08052A74 @ =0x0000228A
	adds r1, r5, r3
	ldr r0, .L08052A78 @ =0x0000033B
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x18
	movs r1, #0x21
	bl func_08008B6C
	ldr r4, .L08052A7C @ =0x00002328
	adds r0, r5, r4
	mov r6, sp
	ldrh r6, [r6, #0x30]
	strh r6, [r0]
	movs r7, #0
	str r7, [sp, #0x34]
	movs r0, #0
	str r0, [sp, #0x38]
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x3c]
	mov r2, sp
	adds r2, #0x24
	str r2, [sp, #0x40]

	non_word_aligned_thumb_func_start sub_08052A1E
sub_08052A1E: @ 0x08052A1E
	adds r0, r5, #0
	bl func_080087C8
	adds r0, r5, #0
	bl func_080088B8
	bl rand
	ldr r3, .L08052A80 @ =0x00002321
	adds r4, r5, r3
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq .L08052A84
	adds r0, r5, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L08052A5C
	ldrb r0, [r4]
	movs r1, #1
	eors r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xb8
	bl func_08008B6C
.L08052A5C:
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L08052A84
	adds r0, r5, #0
	bl func_080558C4
	bl .L080535E0
	.align 2, 0
.L08052A70: .4byte vtable_unk_080E5B80
.L08052A74: .4byte 0x0000228A
.L08052A78: .4byte 0x0000033B
.L08052A7C: .4byte 0x00002328
.L08052A80: .4byte 0x00002321
.L08052A84:
	ldr r4, .L08052AA0 @ =0x00002328
	adds r0, r5, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0x1c
	bls .L08052A94
	bl .L08053462
.L08052A94:
	lsls r0, r0, #2
	ldr r1, .L08052AA4 @ =.L08052AA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08052AA0: .4byte 0x00002328
.L08052AA4: .4byte .L08052AA8
.L08052AA8: @ jump table
	.4byte .L08052B1C @ case 0
	.4byte .L08052C04 @ case 1
	.4byte .L08052C44 @ case 2
	.4byte .L08052C9C @ case 3
	.4byte .L08052CCC @ case 4
	.4byte .L08052D14 @ case 5
	.4byte .L08052D38 @ case 6
	.4byte .L08052D7C @ case 7
	.4byte .L08052D7C @ case 8
	.4byte .L08052D7C @ case 9
	.4byte .L08052B1C @ case 10
	.4byte .L08052DC8 @ case 11
	.4byte .L08052E08 @ case 12
	.4byte .L08052E50 @ case 13
	.4byte .L08052E88 @ case 14
	.4byte .L08053462 @ case 15
	.4byte .L08052EB4 @ case 16
	.4byte .L0805305C @ case 17
	.4byte .L0805311C @ case 18
	.4byte .L08053158 @ case 19
	.4byte .L08053190 @ case 20
	.4byte .L080531BC @ case 21
	.4byte .L080531E0 @ case 22
	.4byte .L08053240 @ case 23
	.4byte .L08053274 @ case 24
	.4byte .L08053294 @ case 25
	.4byte .L08053294 @ case 26
	.4byte .L080532B8 @ case 27
	.4byte .L080532EC @ case 28
.L08052B1C:
	ldr r7, .L08052B78 @ =0x00002268
	adds r1, r5, r7
	movs r0, #0xc0
	lsls r0, r0, #0xf
	str r0, [r1]
	ldr r0, .L08052B7C @ =0x0000226C
	adds r1, r5, r0
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r1]
	ldr r1, .L08052B80 @ =0x00002290
	adds r0, r5, r1
	movs r2, #0
	strh r2, [r0]
	ldr r3, .L08052B84 @ =0x0000228E
	adds r0, r5, r3
	strh r2, [r0]
	ldr r4, .L08052B88 @ =0x00002288
	adds r1, r5, r4
	ldr r0, .L08052B8C @ =0x0000033B
	strh r0, [r1]
	ldr r6, .L08052B90 @ =0x00002330
	adds r0, r5, r6
	strh r2, [r0]
	adds r7, #0x70
	adds r1, r5, r7
	movs r0, #0x8f
	strh r0, [r1]
	ldr r1, .L08052B94 @ =0x000022C4
	adds r0, r5, r1
	strh r2, [r0]
	ldr r2, [sp, #0x38]
	cmp r2, #1
	bne .L08052B98
	subs r3, #0x2a
	adds r0, r5, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r0, r5, #0
	bl func_080550AC
	subs r6, #8
	adds r1, r5, r6
	movs r0, #0xb
	b .L08052BA6
	.align 2, 0
.L08052B78: .4byte 0x00002268
.L08052B7C: .4byte 0x0000226C
.L08052B80: .4byte 0x00002290
.L08052B84: .4byte 0x0000228E
.L08052B88: .4byte 0x00002288
.L08052B8C: .4byte 0x0000033B
.L08052B90: .4byte 0x00002330
.L08052B94: .4byte 0x000022C4
.L08052B98:
	adds r0, r5, #0
	movs r1, #0x80
	bl func_080550AC
	ldr r7, .L08052BF0 @ =0x00002328
	adds r1, r5, r7
	movs r0, #1
.L08052BA6:
	strh r0, [r1]
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, .L08052BF4 @ =0x000022C2
	adds r0, r5, r2
	strh r1, [r0]
	ldr r3, .L08052BF8 @ =0x0000232A
	adds r0, r5, r3
	strh r1, [r0]
	movs r4, #0x8b
	lsls r4, r4, #6
	adds r0, r5, r4
	strh r1, [r0]
	ldr r6, .L08052BFC @ =0x00002292
	adds r0, r5, r6
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, .L08052C00 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r5, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	bl .L08053462
	.align 2, 0
.L08052BF0: .4byte 0x00002328
.L08052BF4: .4byte 0x000022C2
.L08052BF8: .4byte 0x0000232A
.L08052BFC: .4byte 0x00002292
.L08052C00: .4byte 0x00000889
.L08052C04:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq .L08052C16
	bl .L08053462
.L08052C16:
	ldr r7, .L08052C30 @ =0x0000232C
	adds r0, r5, r7
	strh r1, [r0]
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bne .L08052C38
	ldr r2, .L08052C34 @ =0x00002328
	adds r1, r5, r2
	movs r0, #2
	strh r0, [r1]
	bl .L08053462
	.align 2, 0
.L08052C30: .4byte 0x0000232C
.L08052C34: .4byte 0x00002328
.L08052C38:
	ldr r3, .L08052C40 @ =0x00002328
	adds r1, r5, r3
	b .L08052C8C
	.align 2, 0
.L08052C40: .4byte 0x00002328
.L08052C44:
	ldr r4, .L08052C74 @ =0x0000232C
	adds r0, r5, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #2
	beq .L08052C54
	bl .L08053462
.L08052C54:
	ldr r7, .L08052C78 @ =0x0000232E
	adds r0, r5, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bne .L08052C80
	ldr r2, .L08052C7C @ =0x00002321
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	movs r3, #1
	str r3, [sp, #0x38]
	subs r4, #4
	adds r1, r5, r4
	b .L080532AA
	.align 2, 0
.L08052C74: .4byte 0x0000232C
.L08052C78: .4byte 0x0000232E
.L08052C7C: .4byte 0x00002321
.L08052C80:
	ldr r6, .L08052C94 @ =0x0000232A
	adds r1, r5, r6
	movs r0, #4
	strh r0, [r1]
	ldr r7, .L08052C98 @ =0x00002328
	adds r1, r5, r7
.L08052C8C:
	movs r0, #3
	strh r0, [r1]
	bl .L08053462
	.align 2, 0
.L08052C94: .4byte 0x0000232A
.L08052C98: .4byte 0x00002328
.L08052C9C:
	ldr r1, .L08052CC0 @ =0x0000232C
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #2
	beq .L08052CAC
	bl .L08053462
.L08052CAC:
	ldr r3, .L08052CC4 @ =0x0000232A
	adds r0, r5, r3
	movs r1, #4
	strh r1, [r0]
	ldr r4, .L08052CC8 @ =0x00002328
	adds r0, r5, r4
	strh r1, [r0]
	bl .L08053462
	.align 2, 0
.L08052CC0: .4byte 0x0000232C
.L08052CC4: .4byte 0x0000232A
.L08052CC8: .4byte 0x00002328
.L08052CCC:
	ldr r6, .L08052D04 @ =0x000022DE
	adds r0, r5, r6
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #2
	bgt .L08052CDA
	b .L08053462
.L08052CDA:
	ldr r1, .L08052D08 @ =0x000022D8
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x6f
	ble .L08052CE8
	b .L08053462
.L08052CE8:
	ldr r3, .L08052D0C @ =0x00002321
	adds r1, r5, r3
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	ldr r4, .L08052D10 @ =0x0000232C
	adds r0, r5, r4
	strh r2, [r0]
	adds r6, #0x4a
	adds r1, r5, r6
	movs r0, #5
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052D04: .4byte 0x000022DE
.L08052D08: .4byte 0x000022D8
.L08052D0C: .4byte 0x00002321
.L08052D10: .4byte 0x0000232C
.L08052D14:
	ldr r7, .L08052D30 @ =0x0000232C
	adds r1, r5, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #2
	beq .L08052D22
	b .L08053462
.L08052D22:
	movs r0, #0
	strh r0, [r1]
	ldr r3, .L08052D34 @ =0x00002328
	adds r1, r5, r3
	movs r0, #6
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052D30: .4byte 0x0000232C
.L08052D34: .4byte 0x00002328
.L08052D38:
	ldr r4, .L08052D60 @ =0x0000232C
	adds r1, r5, r4
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #2
	beq .L08052D46
	b .L08053462
.L08052D46:
	movs r0, #0
	strh r0, [r1]
	ldr r7, .L08052D64 @ =0x00002324
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08052D6C
	ldr r0, .L08052D68 @ =0x00002328
	adds r1, r5, r0
	movs r0, #7
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052D60: .4byte 0x0000232C
.L08052D64: .4byte 0x00002324
.L08052D68: .4byte 0x00002328
.L08052D6C:
	ldr r2, .L08052D78 @ =0x00002328
	adds r1, r5, r2
	movs r0, #8
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052D78: .4byte 0x00002328
.L08052D7C:
	ldr r3, .L08052D9C @ =0x0000232C
	adds r0, r5, r3
	movs r4, #0
	ldrsh r2, [r0, r4]
	cmp r2, #2
	beq .L08052D8A
	b .L08053462
.L08052D8A:
	ldr r6, .L08052DA0 @ =0x0000232E
	adds r0, r5, r6
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	bne .L08052DA4
	movs r0, #1
	str r0, [sp, #0x38]
	b .L08052DB6
	.align 2, 0
.L08052D9C: .4byte 0x0000232C
.L08052DA0: .4byte 0x0000232E
.L08052DA4:
	ldr r1, .L08052DBC @ =0x00002321
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	ldr r3, .L08052DC0 @ =0x0000232A
	adds r0, r5, r3
	strh r2, [r0]
	movs r4, #2
	str r4, [sp, #0x38]
.L08052DB6:
	ldr r6, .L08052DC4 @ =0x00002328
	adds r1, r5, r6
	b .L080532AA
	.align 2, 0
.L08052DBC: .4byte 0x00002321
.L08052DC0: .4byte 0x0000232A
.L08052DC4: .4byte 0x00002328
.L08052DC8:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq .L08052DD8
	b .L08053462
.L08052DD8:
	ldr r7, .L08052DF8 @ =0x00002321
	adds r0, r5, r7
	strb r1, [r0]
	ldr r0, .L08052DFC @ =0x0000232A
	adds r1, r5, r0
	movs r0, #2
	strh r0, [r1]
	ldr r2, .L08052E00 @ =0x00002322
	adds r1, r5, r2
	movs r0, #0x3c
	strh r0, [r1]
	ldr r3, .L08052E04 @ =0x00002328
	adds r1, r5, r3
	movs r0, #0xc
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052DF8: .4byte 0x00002321
.L08052DFC: .4byte 0x0000232A
.L08052E00: .4byte 0x00002322
.L08052E04: .4byte 0x00002328
.L08052E08:
	ldr r6, .L08052E40 @ =0x00002322
	adds r4, r5, r6
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L08052E1A
	b .L08053462
.L08052E1A:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xbb
	bl func_08008B6C
	ldr r7, .L08052E44 @ =0x000022D8
	adds r1, r5, r7
	movs r0, #0x8f
	strh r0, [r1]
	movs r0, #0x3c
	strh r0, [r4]
	ldr r0, .L08052E48 @ =0x0000225C
	adds r1, r5, r0
	movs r0, #1
	str r0, [r1]
	ldr r2, .L08052E4C @ =0x00002328
	adds r1, r5, r2
	b .L080532DA
	.align 2, 0
.L08052E40: .4byte 0x00002322
.L08052E44: .4byte 0x000022D8
.L08052E48: .4byte 0x0000225C
.L08052E4C: .4byte 0x00002328
.L08052E50:
	ldr r3, .L08052E78 @ =0x00002322
	adds r1, r5, r3
	ldrh r0, [r1]
	subs r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L08052E64
	b .L08053462
.L08052E64:
	ldr r4, .L08052E7C @ =0x0000225C
	adds r0, r5, r4
	str r2, [r0]
	ldr r6, .L08052E80 @ =0x0000232A
	adds r1, r5, r6
	movs r0, #4
	strh r0, [r1]
	ldr r7, .L08052E84 @ =0x00002328
	adds r1, r5, r7
	b .L080532DA
	.align 2, 0
.L08052E78: .4byte 0x00002322
.L08052E7C: .4byte 0x0000225C
.L08052E80: .4byte 0x0000232A
.L08052E84: .4byte 0x00002328
.L08052E88:
	adds r0, r5, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L08052E98
	b .L08053462
.L08052E98:
	ldr r0, .L08052EAC @ =0x00002328
	adds r1, r5, r0
	movs r0, #0x10
	strh r0, [r1]
	ldr r2, .L08052EB0 @ =0x00002321
	adds r1, r5, r2
	movs r0, #2
	strb r0, [r1]
	b .L08053462
	.align 2, 0
.L08052EAC: .4byte 0x00002328
.L08052EB0: .4byte 0x00002321
.L08052EB4:
	ldr r3, [sp, #0x30]
	cmp r3, #0
	bne .L08052EBC
	b .L08053462
.L08052EBC:
	ldr r4, .L08052EE0 @ =0x00002321
	adds r1, r5, r4
	movs r0, #0
	strb r0, [r1]
	ldr r6, .L08052EE4 @ =0x00002290
	adds r0, r5, r6
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bls .L08052ED6
	b .L08053462
.L08052ED6:
	lsls r0, r0, #2
	ldr r1, .L08052EE8 @ =.L08052EEC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08052EE0: .4byte 0x00002321
.L08052EE4: .4byte 0x00002290
.L08052EE8: .4byte .L08052EEC
.L08052EEC: @ jump table
	.4byte .L08052F10 @ case 0
	.4byte .L08052F10 @ case 1
	.4byte .L08052F88 @ case 2
	.4byte .L08052F88 @ case 3
	.4byte .L08052F88 @ case 4
	.4byte .L08052FF8 @ case 5
	.4byte .L08052F88 @ case 6
	.4byte .L08053014 @ case 7
	.4byte .L08053038 @ case 8
.L08052F10:
	ldr r7, .L08052F2C @ =0x000022D8
	adds r0, r5, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, .L08052F30 @ =0x000022DC
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r1, r0
	bge .L08052F38
	ldr r4, .L08052F34 @ =0x00002264
	adds r1, r5, r4
	ldrh r0, [r1]
	adds r0, #2
	b .L08052F40
	.align 2, 0
.L08052F2C: .4byte 0x000022D8
.L08052F30: .4byte 0x000022DC
.L08052F34: .4byte 0x00002264
.L08052F38:
	ldr r6, .L08052F78 @ =0x00002264
	adds r1, r5, r6
	ldrh r0, [r1]
	adds r0, #1
.L08052F40:
	strh r0, [r1]
	ldr r7, .L08052F78 @ =0x00002264
	adds r1, r5, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0xfa
	ble .L08052F52
	movs r0, #0xfa
	strh r0, [r1]
.L08052F52:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xbc
	bl func_08008B6C
	ldr r3, .L08052F7C @ =0x00002322
	adds r1, r5, r3
	movs r0, #0x3c
	strh r0, [r1]
	ldr r4, .L08052F80 @ =0x0000225C
	adds r1, r5, r4
	movs r0, #3
	str r0, [r1]
	ldr r6, .L08052F84 @ =0x00002328
	adds r1, r5, r6
	movs r0, #0x11
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052F78: .4byte 0x00002264
.L08052F7C: .4byte 0x00002322
.L08052F80: .4byte 0x0000225C
.L08052F84: .4byte 0x00002328
.L08052F88:
	ldr r7, .L08052FB0 @ =0x000022D8
	adds r0, r5, r7
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, .L08052FB4 @ =0x000022DC
	adds r0, r5, r3
	ldrb r0, [r0]
	adds r0, #0x10
	cmp r1, r0
	bge .L08052FC4
	ldr r4, .L08052FB8 @ =0x00002266
	adds r0, r5, r4
	ldrh r1, [r0]
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	ble .L08052FBC
	subs r1, #1
	b .L08052FBE
	.align 2, 0
.L08052FB0: .4byte 0x000022D8
.L08052FB4: .4byte 0x000022DC
.L08052FB8: .4byte 0x00002266
.L08052FBC:
	movs r1, #0
.L08052FBE:
	ldr r7, .L08052FE8 @ =0x00002266
	adds r0, r5, r7
	strh r1, [r0]
.L08052FC4:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xb7
	bl func_08008B6C
	ldr r0, .L08052FEC @ =0x00002322
	adds r1, r5, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r2, .L08052FF0 @ =0x0000225C
	adds r1, r5, r2
	movs r0, #2
	str r0, [r1]
	ldr r3, .L08052FF4 @ =0x00002328
	adds r1, r5, r3
	movs r0, #0x13
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08052FE8: .4byte 0x00002266
.L08052FEC: .4byte 0x00002322
.L08052FF0: .4byte 0x0000225C
.L08052FF4: .4byte 0x00002328
.L08052FF8:
	ldr r4, .L0805300C @ =0x0000232C
	adds r1, r5, r4
	movs r0, #0
	strh r0, [r1]
	ldr r6, .L08053010 @ =0x00002328
	adds r1, r5, r6
	movs r0, #0x1a
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L0805300C: .4byte 0x0000232C
.L08053010: .4byte 0x00002328
.L08053014:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xbc
	bl func_08008B6C
	ldr r7, .L08053030 @ =0x0000232C
	adds r1, r5, r7
	movs r0, #0
	strh r0, [r1]
	ldr r0, .L08053034 @ =0x00002328
	adds r1, r5, r0
	movs r0, #0x14
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08053030: .4byte 0x0000232C
.L08053034: .4byte 0x00002328
.L08053038:
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xb7
	bl func_08008B6C
	ldr r2, .L08053054 @ =0x0000232C
	adds r1, r5, r2
	movs r0, #0
	strh r0, [r1]
	ldr r3, .L08053058 @ =0x00002328
	adds r1, r5, r3
	movs r0, #0x15
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08053054: .4byte 0x0000232C
.L08053058: .4byte 0x00002328
.L0805305C:
	ldr r4, .L080530A8 @ =0x00002322
	adds r1, r5, r4
	ldrh r0, [r1]
	subs r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L08053070
	b .L08053462
.L08053070:
	ldr r6, .L080530AC @ =0x0000225C
	adds r0, r5, r6
	str r2, [r0]
	movs r0, #0x80
	strh r0, [r1]
	ldr r7, .L080530B0 @ =0x000022C4
	adds r4, r5, r7
	ldr r0, .L080530B4 @ =0x000022C6
	adds r2, r5, r0
	ldrh r3, [r4]
	movs r6, #0
	ldrsh r1, [r4, r6]
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r1, r0
	ble .L08053092
	strh r3, [r2]
.L08053092:
	ldr r1, .L080530B8 @ =0x00002324
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080530C0
	ldr r2, .L080530BC @ =0x000022CD
	adds r1, r5, r2
	movs r0, #1
	strb r0, [r1]
	b .L080530F8
	.align 2, 0
.L080530A8: .4byte 0x00002322
.L080530AC: .4byte 0x0000225C
.L080530B0: .4byte 0x000022C4
.L080530B4: .4byte 0x000022C6
.L080530B8: .4byte 0x00002324
.L080530BC: .4byte 0x000022CD
.L080530C0:
	ldr r3, .L080530DC @ =0x00002325
	adds r0, r5, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080530E8
	ldr r6, .L080530E0 @ =0x000022CD
	adds r1, r5, r6
	movs r0, #2
	strb r0, [r1]
	ldrh r1, [r4]
	ldr r7, .L080530E4 @ =0x000022C8
	adds r0, r5, r7
	b .L080530F6
	.align 2, 0
.L080530DC: .4byte 0x00002325
.L080530E0: .4byte 0x000022CD
.L080530E4: .4byte 0x000022C8
.L080530E8:
	ldr r0, .L0805310C @ =0x000022CD
	adds r1, r5, r0
	movs r0, #4
	strb r0, [r1]
	ldrh r1, [r4]
	ldr r2, .L08053110 @ =0x000022CA
	adds r0, r5, r2
.L080530F6:
	strh r1, [r0]
.L080530F8:
	ldr r3, .L08053114 @ =0x000022CE
	adds r1, r5, r3
	movs r0, #0
	strb r0, [r1]
	ldr r4, .L08053118 @ =0x00002328
	adds r1, r5, r4
	movs r0, #0x12
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L0805310C: .4byte 0x000022CD
.L08053110: .4byte 0x000022CA
.L08053114: .4byte 0x000022CE
.L08053118: .4byte 0x00002328
.L0805311C:
	ldr r6, .L08053148 @ =0x00002322
	adds r1, r5, r6
	ldrh r0, [r1]
	subs r0, #1
	movs r2, #0
	movs r3, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L08053132
	b .L08053462
.L08053132:
	ldr r7, .L0805314C @ =0x000022CC
	adds r1, r5, r7
	movs r0, #7
	strb r0, [r1]
	ldr r1, .L08053150 @ =0x000022CD
	adds r0, r5, r1
	strb r2, [r0]
	ldr r2, .L08053154 @ =0x0000232C
	adds r0, r5, r2
	strh r3, [r0]
	b .L080531CE
	.align 2, 0
.L08053148: .4byte 0x00002322
.L0805314C: .4byte 0x000022CC
.L08053150: .4byte 0x000022CD
.L08053154: .4byte 0x0000232C
.L08053158:
	ldr r4, .L08053180 @ =0x00002322
	adds r1, r5, r4
	ldrh r0, [r1]
	subs r0, #1
	movs r2, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L0805316C
	b .L08053462
.L0805316C:
	ldr r6, .L08053184 @ =0x0000225C
	adds r0, r5, r6
	str r2, [r0]
	ldr r7, .L08053188 @ =0x0000232C
	adds r0, r5, r7
	strh r2, [r0]
	ldr r0, .L0805318C @ =0x00002328
	adds r1, r5, r0
	b .L080531D2
	.align 2, 0
.L08053180: .4byte 0x00002322
.L08053184: .4byte 0x0000225C
.L08053188: .4byte 0x0000232C
.L0805318C: .4byte 0x00002328
.L08053190:
	ldr r1, .L080531B0 @ =0x0000232C
	adds r2, r5, r1
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #2
	beq .L0805319E
	b .L08053462
.L0805319E:
	ldr r4, .L080531B4 @ =0x00000464
	adds r1, r5, r4
	movs r0, #0
	strb r0, [r1]
	strh r0, [r2]
	ldr r6, .L080531B8 @ =0x00002328
	adds r1, r5, r6
	b .L080531D2
	.align 2, 0
.L080531B0: .4byte 0x0000232C
.L080531B4: .4byte 0x00000464
.L080531B8: .4byte 0x00002328
.L080531BC:
	ldr r7, .L080531D8 @ =0x0000232C
	adds r1, r5, r7
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #2
	beq .L080531CA
	b .L08053462
.L080531CA:
	movs r0, #0
	strh r0, [r1]
.L080531CE:
	ldr r3, .L080531DC @ =0x00002328
	adds r1, r5, r3
.L080531D2:
	movs r0, #0x16
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L080531D8: .4byte 0x0000232C
.L080531DC: .4byte 0x00002328
.L080531E0:
	ldr r4, .L08053208 @ =0x00002326
	adds r1, r5, r4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r6, .L0805320C @ =0x00002325
	adds r1, r5, r6
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	ldr r7, .L08053210 @ =0x00002324
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08053218
	ldr r0, .L08053214 @ =0x00002328
	adds r1, r5, r0
	movs r0, #0x17
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L08053208: .4byte 0x00002326
.L0805320C: .4byte 0x00002325
.L08053210: .4byte 0x00002324
.L08053214: .4byte 0x00002328
.L08053218:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne .L08053230
	ldr r2, .L0805322C @ =0x00002328
	adds r1, r5, r2
	movs r0, #0x18
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L0805322C: .4byte 0x00002328
.L08053230:
	ldr r3, .L0805323C @ =0x00002328
	adds r1, r5, r3
	movs r0, #0x19
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L0805323C: .4byte 0x00002328
.L08053240:
	ldr r4, .L08053268 @ =0x0000232C
	adds r0, r5, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #2
	beq .L0805324E
	b .L08053462
.L0805324E:
	ldr r7, .L0805326C @ =0x0000232E
	adds r0, r5, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	movs r2, #0
	str r2, [sp, #0x38]
	cmp r0, #0
	bne .L08053262
	movs r3, #1
	str r3, [sp, #0x38]
.L08053262:
	ldr r4, .L08053270 @ =0x00002328
	adds r1, r5, r4
	b .L080532AA
	.align 2, 0
.L08053268: .4byte 0x0000232C
.L0805326C: .4byte 0x0000232E
.L08053270: .4byte 0x00002328
.L08053274:
	ldr r6, .L0805328C @ =0x0000232C
	adds r0, r5, r6
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #2
	beq .L08053282
	b .L08053462
.L08053282:
	movs r0, #1
	str r0, [sp, #0x38]
	ldr r2, .L08053290 @ =0x00002328
	adds r1, r5, r2
	b .L080532AA
	.align 2, 0
.L0805328C: .4byte 0x0000232C
.L08053290: .4byte 0x00002328
.L08053294:
	ldr r3, .L080532B0 @ =0x0000232C
	adds r0, r5, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #2
	beq .L080532A2
	b .L08053462
.L080532A2:
	movs r6, #0
	str r6, [sp, #0x38]
	ldr r7, .L080532B4 @ =0x00002328
	adds r1, r5, r7
.L080532AA:
	movs r0, #0x1b
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L080532B0: .4byte 0x0000232C
.L080532B4: .4byte 0x00002328
.L080532B8:
	ldr r0, [sp, #4]
	ldr r1, .L080532E4 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r5, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r0, .L080532E8 @ =0x00002328
	adds r1, r5, r0
.L080532DA:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b .L08053462
	.align 2, 0
.L080532E4: .4byte 0x00000889
.L080532E8: .4byte 0x00002328
.L080532EC:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq .L080532FC
	b .L08053462
.L080532FC:
	ldr r2, [sp, #0x38]
	cmp r2, #0
	beq .L08053310
	ldr r3, .L0805330C @ =0x00002328
	adds r0, r5, r3
	strh r1, [r0]
	b .L08053462
	.align 2, 0
.L0805330C: .4byte 0x00002328
.L08053310:
	ldr r3, [r5, #8]
	ldr r4, .L080533AC @ =0x00002264
	adds r0, r5, r4
	ldr r4, .L080533B0 @ =0x00001C9C
	adds r3, r3, r4
	ldrb r2, [r0]
	lsls r2, r2, #0xd
	ldr r0, [r3]
	ldr r1, .L080533B4 @ =0xFFE01FFF
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	ldr r3, [r5, #8]
	ldr r6, .L080533B8 @ =0x00002326
	adds r1, r5, r6
	ldrb r0, [r1]
	movs r2, #7
	cmp r0, #6
	bhi .L08053338
	adds r2, r0, #0
.L08053338:
	ldr r7, .L080533BC @ =0x00001C9D
	adds r3, r3, r7
	movs r0, #7
	ands r2, r0
	lsls r2, r2, #2
	ldrb r1, [r3]
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3]
	ldr r3, [r5, #8]
	ldr r1, .L080533C0 @ =0x000022C6
	adds r0, r5, r1
	movs r6, #0
	ldrsh r2, [r0, r6]
	adds r3, r3, r4
	ldr r7, .L080533C4 @ =0x000003FF
	adds r0, r7, #0
	ands r2, r0
	ldrh r1, [r3]
	ldr r0, .L080533C8 @ =0xFFFFFC00
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	ldr r1, .L080533CC @ =0x00002324
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne .L0805345E
	add r1, sp, #0x18
	add r2, sp, #0x38
	ldrb r2, [r2]
	strb r2, [r1]
	mov r3, sp
	ldrh r3, [r3, #0x38]
	strh r3, [r1, #2]
	movs r4, #0xa
	mov sb, r4
	ldr r6, .L080533D0 @ =0x000022C8
	adds r3, r5, r6
	ldr r7, .L080533D4 @ =0x000022CA
	adds r0, r5, r7
	movs r4, #0
	ldrsh r2, [r3, r4]
	ldrh r4, [r0]
	movs r6, #0
	ldrsh r0, [r0, r6]
	mov sl, r1
	cmp r2, r0
	bge .L080533A0
	strh r4, [r3]
.L080533A0:
	movs r4, #0
	mov r6, sl
	ldr r0, .L080533D0 @ =0x000022C8
	adds r7, r5, r0
	b .L080533DA
	.align 2, 0
.L080533AC: .4byte 0x00002264
.L080533B0: .4byte 0x00001C9C
.L080533B4: .4byte 0xFFE01FFF
.L080533B8: .4byte 0x00002326
.L080533BC: .4byte 0x00001C9D
.L080533C0: .4byte 0x000022C6
.L080533C4: .4byte 0x000003FF
.L080533C8: .4byte 0xFFFFFC00
.L080533CC: .4byte 0x00002324
.L080533D0: .4byte 0x000022C8
.L080533D4: .4byte 0x000022CA
.L080533D8:
	adds r4, #1
.L080533DA:
	cmp r4, #9
	bgt .L080533FC
	ldr r0, [r5, #8]
	ldr r1, .L08053490 @ =0x00002C4C
	adds r0, r0, r1
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080522D8
	ldrh r0, [r6, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	ldrsh r1, [r7, r2]
	cmp r0, r1
	bgt .L080533D8
	mov sb, r4
.L080533FC:
	mov r3, sb
	cmp r3, #9
	bgt .L0805345E
	cmp r3, #8
	bgt .L08053432
	movs r6, #9
	cmp r6, sb
	ble .L08053432
	ldr r4, .L08053490 @ =0x00002C4C
	mov r8, r4
	mov r7, sl
.L08053412:
	ldr r0, [r5, #8]
	add r0, r8
	subs r4, r6, #1
	adds r1, r7, #0
	adds r2, r4, #0
	bl func_080522D8
	ldr r0, [r5, #8]
	add r0, r8
	adds r1, r7, #0
	adds r2, r6, #0
	bl func_080522E8
	adds r6, r4, #0
	cmp r6, sb
	bgt .L08053412
.L08053432:
	movs r0, #0
	mov r6, sl
	strb r0, [r6]
	ldr r7, .L08053494 @ =0x000022C8
	adds r0, r5, r7
	ldrh r0, [r0]
	add r1, sp, #0x18
	strh r0, [r1, #2]
	ldr r0, [r5, #8]
	ldr r2, .L08053490 @ =0x00002C4C
	adds r0, r0, r2
	mov r2, sb
	bl func_080522E8
	mov r3, sb
	cmp r3, #0
	bne .L0805345E
	ldr r0, [r5, #8]
	ldr r4, .L08053498 @ =0x00001C70
	adds r0, r0, r4
	bl SetFestivalWinner__6Animal
.L0805345E:
	movs r6, #1
	str r6, [sp, #0x34]
.L08053462:
	adds r0, r5, #0
	bl func_08053960
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x30]
	adds r0, r5, #0
	bl func_08008918
	mov r2, sp
	ldr r7, .L0805349C @ =0x00002330
	adds r1, r5, r7
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x1c]
	ldr r0, .L080534A0 @ =0x00001D59
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0x13
	bhi .L080534A4
	adds r0, #1
	strb r0, [r1]
	b .L080535D4
	.align 2, 0
.L08053490: .4byte 0x00002C4C
.L08053494: .4byte 0x000022C8
.L08053498: .4byte 0x00001C70
.L0805349C: .4byte 0x00002330
.L080534A0: .4byte 0x00001D59
.L080534A4:
	movs r0, #0
	strb r0, [r1]
	ldr r1, .L08053500 @ =0x00001D58
	adds r4, r5, r1
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r4]
	adds r0, r5, #0
	bl func_08008910
	ldrb r2, [r4]
	adds r6, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #9
	adds r1, r1, r5
	movs r2, #0xab
	lsls r2, r2, #3
	adds r1, r1, r2
	add r0, sp, #8
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r3, #0xc0
	lsls r3, r3, #3
	bl func_08008F0C
	ldr r3, [sp, #0x3c]
	mov sl, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08053504
	cmp r1, #0
	beq .L080534F8
	adds r0, r1, #0
	adds r1, r3, #0
	ldm r1!, {r2, r4, r7}
	stm r0!, {r2, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080534F8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080535D4
	.align 2, 0
.L08053500: .4byte 0x00001D58
.L08053504:
	str r1, [sp, #0x44]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r0, [r6]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r1, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L0805351E
	adds r0, r1, #0
.L0805351E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805353C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08053540
	mov r0, sb
	bl func_080D3BC0
	b .L08053540
.L0805353C:
	movs r0, #0
	mov sb, r0
.L08053540:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r6]
	mov ip, r8
	ldr r4, [sp, #0x44]
	cmp r2, r4
	beq .L0805356C
.L0805354E:
	mov r7, ip
	cmp r7, #0
	beq .L08053560
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08053560:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	ldr r1, [sp, #0x44]
	cmp r2, r1
	bne .L0805354E
.L0805356C:
	mov r4, ip
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L08053588
	cmp r4, #0
	beq .L08053584
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08053584:
	adds r4, #0x10
	b .L080535B0
.L08053588:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080535AE
.L08053590:
	cmp r2, #0
	beq .L080535A0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080535A0:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L08053590
.L080535AE:
	adds r4, r2, #0
.L080535B0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080535C0
.L080535BA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080535BA
.L080535C0:
	cmp r0, #0
	beq .L080535C8
	bl free
.L080535C8:
	mov r0, sb
	add r0, r8
	mov r2, r8
	str r2, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L080535D4:
	adds r0, r5, #0
	bl func_08053634
	adds r0, r5, #0
	bl func_080558C4
.L080535E0:
	ldr r3, [sp, #0x34]
	cmp r3, #0
	bne .L080535EA
	bl sub_08052A1E
.L080535EA:
	movs r0, #0
	str r0, [sp, #8]
	ldr r4, [sp, #0x3c]
	str r4, [sp, #0x24]
	ldr r6, [sp, #0x40]
	str r0, [r6, #4]
	str r0, [r4]
	ldr r7, [sp, #0x2c]
	str r0, [r7]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L0805360E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805360E:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L08053620
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08053620:
	ldr r0, [sp, #0x2c]
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08053634
func_08053634: @ 0x08053634
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
	mov sb, r0
	adds r0, r7, #0
	bl func_080088DC
	mov r8, r0
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	adds r1, r7, #0
	adds r1, #0x14
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L08053686
	b .L0805394C
.L08053686:
	lsls r0, r0, #2
	ldr r1, .L08053690 @ =.L08053694
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08053690: .4byte .L08053694
.L08053694: @ jump table
	.4byte .L080536B0 @ case 0
	.4byte .L0805394C @ case 1
	.4byte .L0805394C @ case 2
	.4byte .L080536D2 @ case 3
	.4byte .L0805394C @ case 4
	.4byte .L0805394C @ case 5
	.4byte .L0805394C @ case 6
.L080536B0:
	ldr r1, .L080536C8 @ =0x0000232C
	adds r4, r7, r1
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne .L080536CC
	ldr r0, [r7, #0x10]
	bl func_08050D5C
	movs r0, #3
	strh r0, [r4]
	b .L0805394C
	.align 2, 0
.L080536C8: .4byte 0x0000232C
.L080536CC:
	movs r0, #2
	strh r0, [r4]
	b .L0805394C
.L080536D2:
	ldr r6, .L080536EC @ =0x0000232C
	adds r4, r7, r6
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #5
	bne .L080536F0
	ldr r0, [r7, #0x10]
	bl func_08050D74
	movs r0, #1
	strh r0, [r4]
	b .L0805394C
	.align 2, 0
.L080536EC: .4byte 0x0000232C
.L080536F0:
	cmp r0, #4
	bne .L08053784
	ldr r0, [r7, #0x10]
	bl func_08050DF0
	movs r3, #0
	movs r5, #3
	strh r5, [r4]
	ldr r6, .L08053718 @ =0x00002328
	adds r2, r7, r6
	movs r6, #0
	ldrsh r1, [r2, r6]
	cmp r1, #9
	beq .L0805374C
	cmp r1, #9
	bgt .L0805371C
	cmp r1, #2
	beq .L08053722
	b .L0805394C
	.align 2, 0
.L08053718: .4byte 0x00002328
.L0805371C:
	cmp r1, #0x17
	beq .L08053752
	b .L0805394C
.L08053722:
	cmp r0, #1
	bne .L08053734
	ldr r1, .L08053730 @ =0x0000232E
	adds r0, r7, r1
	strh r3, [r0]
	strh r5, [r2]
	b .L0805394C
	.align 2, 0
.L08053730: .4byte 0x0000232E
.L08053734:
	cmp r0, #2
	beq .L0805373A
	b .L0805394C
.L0805373A:
	ldr r3, .L08053748 @ =0x0000232E
	adds r0, r7, r3
	movs r1, #1
	strh r1, [r0]
	movs r0, #5
	strh r0, [r4]
	b .L0805394C
	.align 2, 0
.L08053748: .4byte 0x0000232E
.L0805374C:
	cmp r0, #1
	beq .L08053756
	b .L08053764
.L08053752:
	cmp r0, #1
	bne .L08053764
.L08053756:
	ldr r6, .L08053760 @ =0x0000232E
	adds r0, r7, r6
	strh r3, [r0]
	b .L08053770
	.align 2, 0
.L08053760: .4byte 0x0000232E
.L08053764:
	cmp r0, #2
	bne .L08053770
	ldr r0, .L0805377C @ =0x0000232E
	adds r1, r7, r0
	movs r0, #1
	strh r0, [r1]
.L08053770:
	ldr r3, .L08053780 @ =0x0000232C
	adds r1, r7, r3
	movs r0, #5
	strh r0, [r1]
	b .L0805394C
	.align 2, 0
.L0805377C: .4byte 0x0000232E
.L08053780: .4byte 0x0000232C
.L08053784:
	cmp r0, #3
	beq .L0805378A
	b .L0805394C
.L0805378A:
	movs r0, #5
	strh r0, [r4]
	ldr r6, .L080537AC @ =0x00002328
	adds r0, r7, r6
	ldrh r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	bls .L080537A0
	b .L0805394C
.L080537A0:
	lsls r0, r0, #2
	ldr r1, .L080537B0 @ =.L080537B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080537AC: .4byte 0x00002328
.L080537B0: .4byte .L080537B4
.L080537B4: @ jump table
	.4byte .L08053818 @ case 0
	.4byte .L08053824 @ case 1
	.4byte .L0805394C @ case 2
	.4byte .L08053834 @ case 3
	.4byte .L08053844 @ case 4
	.4byte .L08053854 @ case 5
	.4byte .L08053878 @ case 6
	.4byte .L080538A0 @ case 7
	.4byte .L0805394C @ case 8
	.4byte .L0805394C @ case 9
	.4byte .L0805394C @ case 10
	.4byte .L0805394C @ case 11
	.4byte .L0805394C @ case 12
	.4byte .L0805394C @ case 13
	.4byte .L0805394C @ case 14
	.4byte .L0805394C @ case 15
	.4byte .L0805394C @ case 16
	.4byte .L0805394C @ case 17
	.4byte .L0805392C @ case 18
	.4byte .L08053944 @ case 19
	.4byte .L0805394C @ case 20
	.4byte .L080538EC @ case 21
	.4byte .L080538CC @ case 22
	.4byte .L080538DC @ case 23
	.4byte .L0805391C @ case 24
.L08053818:
	ldr r0, [r7, #0x10]
	ldr r1, .L08053820 @ =gUnk_080FA39C
	b .L080538F0
	.align 2, 0
.L08053820: .4byte gUnk_080FA39C
.L08053824:
	ldr r0, [r7, #0x10]
	ldr r1, .L08053830 @ =gUnk_080FA3C0
	bl func_08050D8C
	b .L0805394C
	.align 2, 0
.L08053830: .4byte gUnk_080FA3C0
.L08053834:
	ldr r0, [r7, #0x10]
	ldr r1, .L08053840 @ =gUnk_080FA458
	bl func_08050D8C
	b .L0805394C
	.align 2, 0
.L08053840: .4byte gUnk_080FA458
.L08053844:
	ldr r0, [r7, #0x10]
	ldr r1, .L08053850 @ =gUnk_080FA49C
	bl func_08050D8C
	b .L0805394C
	.align 2, 0
.L08053850: .4byte gUnk_080FA49C
.L08053854:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805386C @ =gUnk_080FA510
	bl func_08050D8C
	ldr r3, .L08053870 @ =0x00002328
	adds r1, r7, r3
	movs r0, #9
	strh r0, [r1]
	ldr r6, .L08053874 @ =0x0000232C
	adds r1, r7, r6
	b .L0805388C
	.align 2, 0
.L0805386C: .4byte gUnk_080FA510
.L08053870: .4byte 0x00002328
.L08053874: .4byte 0x0000232C
.L08053878:
	ldr r0, [r7, #0x10]
	ldr r1, .L08053894 @ =gUnk_080FA614
	bl func_08050D8C
	ldr r0, .L08053898 @ =0x00002328
	adds r1, r7, r0
	movs r0, #9
	strh r0, [r1]
	ldr r3, .L0805389C @ =0x0000232C
	adds r1, r7, r3
.L0805388C:
	movs r0, #3
	strh r0, [r1]
	b .L0805394C
	.align 2, 0
.L08053894: .4byte gUnk_080FA614
.L08053898: .4byte 0x00002328
.L0805389C: .4byte 0x0000232C
.L080538A0:
	ldr r0, [r7, #0x10]
	ldr r1, .L080538BC @ =gUnk_080FA660
	ldr r2, .L080538C0 @ =gUnk_080FA3BC
	ldr r3, .L080538C4 @ =gUnk_080FA3B8
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	ldr r6, .L080538C8 @ =0x0000232C
	adds r1, r7, r6
	b .L08053904
	.align 2, 0
.L080538BC: .4byte gUnk_080FA660
.L080538C0: .4byte gUnk_080FA3BC
.L080538C4: .4byte gUnk_080FA3B8
.L080538C8: .4byte 0x0000232C
.L080538CC:
	ldr r0, [r7, #0x10]
	ldr r1, .L080538D8 @ =gUnk_080FA670
	bl func_08050D8C
	b .L0805394C
	.align 2, 0
.L080538D8: .4byte gUnk_080FA670
.L080538DC:
	ldr r0, [r7, #0x10]
	ldr r1, .L080538E8 @ =gUnk_080FA684
	bl func_08050D8C
	b .L0805394C
	.align 2, 0
.L080538E8: .4byte gUnk_080FA684
.L080538EC:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805390C @ =gUnk_080FA6A0
.L080538F0:
	ldr r2, .L08053910 @ =gUnk_080FA3B8
	ldr r3, .L08053914 @ =gUnk_080FA3BC
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	ldr r0, .L08053918 @ =0x0000232C
	adds r1, r7, r0
.L08053904:
	movs r0, #4
	strh r0, [r1]
	b .L0805394C
	.align 2, 0
.L0805390C: .4byte gUnk_080FA6A0
.L08053910: .4byte gUnk_080FA3B8
.L08053914: .4byte gUnk_080FA3BC
.L08053918: .4byte 0x0000232C
.L0805391C:
	ldr r0, [r7, #0x10]
	ldr r1, .L08053928 @ =gUnk_080FA6AC
	bl func_08050D8C
	b .L0805394C
	.align 2, 0
.L08053928: .4byte gUnk_080FA6AC
.L0805392C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805393C @ =gUnk_080FA6E0
	ldr r3, .L08053940 @ =0x000023A0
	adds r2, r7, r3
	bl func_08050DA0
	b .L0805394C
	.align 2, 0
.L0805393C: .4byte gUnk_080FA6E0
.L08053940: .4byte 0x000023A0
.L08053944:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805395C @ =gUnk_080FA6F4
	bl func_08050D8C
.L0805394C:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805395C: .4byte gUnk_080FA6F4

	thumb_func_start func_08053960
func_08053960: @ 0x08053960
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x44]
	ldr r1, .L08053988 @ =0x00002321
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L0805398C
	movs r0, #0
	bl .L08054D0A
	.align 2, 0
.L08053988: .4byte 0x00002321
.L0805398C:
	ldr r2, .L080539A4 @ =0x0000232A
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #9
	bls .L0805399A
	b .L08053D42
.L0805399A:
	lsls r0, r0, #2
	ldr r1, .L080539A8 @ =.L080539AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080539A4: .4byte 0x0000232A
.L080539A8: .4byte .L080539AC
.L080539AC: @ jump table
	.4byte .L080539D4 @ case 0
	.4byte .L08053D42 @ case 1
	.4byte .L080539EC @ case 2
	.4byte .L08053D42 @ case 3
	.4byte .L080539FA @ case 4
	.4byte .L08053A38 @ case 5
	.4byte .L08053D42 @ case 6
	.4byte .L08053AF8 @ case 7
	.4byte .L08053B2C @ case 8
	.4byte .L08053D42 @ case 9
.L080539D4:
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r6, r4
	movs r1, #0x8a
	bl func_0805E860
	ldr r5, .L080539E8 @ =0x0000232A
	adds r1, r6, r5
	b .L08053D3C
	.align 2, 0
.L080539E8: .4byte 0x0000232A
.L080539EC:
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r1, #0x8a
	bl func_0805E860
	b .L08053D42
.L080539FA:
	ldr r0, .L08053A28 @ =0x000022D0
	adds r1, r6, r0
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r1]
	ldr r2, .L08053A2C @ =0x000022D4
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r1]
	ldr r3, .L08053A30 @ =0x000022DE
	adds r1, r6, r3
	movs r0, #0
	strh r0, [r1]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r0, r6, r4
	movs r1, #0x92
	bl func_0805E860
	ldr r5, .L08053A34 @ =0x0000232A
	adds r1, r6, r5
	b .L08053D3C
	.align 2, 0
.L08053A28: .4byte 0x000022D0
.L08053A2C: .4byte 0x000022D4
.L08053A30: .4byte 0x000022DE
.L08053A34: .4byte 0x0000232A
.L08053A38:
	ldr r7, .L08053AE0 @ =0x000022D8
	adds r3, r6, r7
	ldrh r0, [r3]
	ldr r1, .L08053AE4 @ =0x000022DA
	adds r5, r6, r1
	strh r0, [r5]
	ldr r4, .L08053AE8 @ =0x000022D0
	adds r2, r6, r4
	subs r7, #4
	adds r4, r6, r7
	ldr r0, [r2]
	ldr r1, [r4]
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0xa
	cmp r0, r1
	ble .L08053A5E
	str r1, [r2]
.L08053A5E:
	movs r0, #2
	ldrsh r1, [r2, r0]
	ldrh r0, [r3]
	subs r0, r0, r1
	strh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2f
	bgt .L08053A8A
	movs r0, #0x8f
	strh r0, [r3]
	movs r0, #0x80
	lsls r0, r0, #7
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #5
	str r0, [r4]
	ldr r2, .L08053AEC @ =0x000022DE
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
.L08053A8A:
	ldr r4, .L08053AF0 @ =0x00002328
	adds r0, r6, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0x10
	beq .L08053A98
	b .L08053D42
.L08053A98:
	movs r0, #0
	ldrsh r2, [r5, r0]
	ldrh r1, [r3]
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r2, r0
	bge .L08053AA8
	movs r1, #0x30
.L08053AA8:
	lsls r0, r1, #0x10
	asrs r5, r0, #0x10
	subs r0, r2, r5
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r4, #1
	ble .L08053AD0
	bl rand
	asrs r0, r0, #8
	adds r1, r4, #0
	bl __modsi3
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2f
	bgt .L08053AD0
	movs r1, #0x30
.L08053AD0:
	ldr r5, .L08053AE0 @ =0x000022D8
	adds r0, r6, r5
	strh r1, [r0]
	ldr r7, .L08053AF4 @ =0x0000232A
	adds r1, r6, r7
	movs r0, #7
	b .L08053D40
	.align 2, 0
.L08053AE0: .4byte 0x000022D8
.L08053AE4: .4byte 0x000022DA
.L08053AE8: .4byte 0x000022D0
.L08053AEC: .4byte 0x000022DE
.L08053AF0: .4byte 0x00002328
.L08053AF4: .4byte 0x0000232A
.L08053AF8:
	movs r1, #0x8c
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	blt .L08053B08
	b .L08053D42
.L08053B08:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0x96
	bl func_0805E860
	ldr r3, .L08053B24 @ =0x00002320
	adds r1, r6, r3
	movs r0, #0
	strb r0, [r1]
	ldr r4, .L08053B28 @ =0x0000232A
	adds r1, r6, r4
	b .L08053D3C
	.align 2, 0
.L08053B24: .4byte 0x00002320
.L08053B28: .4byte 0x0000232A
.L08053B2C:
	movs r5, #0x8c
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08053B3C
	b .L08053D1E
.L08053B3C:
	ldr r7, .L08053B7C @ =0x00002320
	adds r1, r6, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	beq .L08053B50
	b .L08053D1E
.L08053B50:
	ldr r0, .L08053B80 @ =0x00002294
	adds r1, r6, r0
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r1]
	ldr r2, .L08053B84 @ =0x00002298
	adds r1, r6, r2
	movs r0, #0x88
	lsls r0, r0, #0xf
	str r0, [r1]
	ldr r3, .L08053B88 @ =0x000022D8
	adds r4, r6, r3
	movs r5, #0
	ldrsh r0, [r4, r5]
	cmp r0, #0x30
	bne .L08053B90
	subs r7, #0xb0
	adds r1, r6, r7
	ldr r0, .L08053B8C @ =0x000003E7
	str r0, [r1]
	b .L08053BB2
	.align 2, 0
.L08053B7C: .4byte 0x00002320
.L08053B80: .4byte 0x00002294
.L08053B84: .4byte 0x00002298
.L08053B88: .4byte 0x000022D8
.L08053B8C: .4byte 0x000003E7
.L08053B90:
	bl rand
	ldr r1, .L08053BD0 @ =0x00002270
	adds r5, r6, r1
	movs r3, #0
	ldrsh r2, [r4, r3]
	movs r1, #0x8f
	subs r1, r1, r2
	lsls r4, r1, #2
	adds r4, r4, r1
	lsls r4, r4, #1
	asrs r0, r0, #8
	movs r1, #0xa
	bl __modsi3
	adds r4, r4, r0
	str r4, [r5]
.L08053BB2:
	adds r0, r6, #0
	bl func_08054D34
	ldr r4, .L08053BD4 @ =0x00002290
	adds r1, r6, r4
	strh r0, [r1]
	ldr r5, .L08053BD0 @ =0x00002270
	adds r0, r6, r5
	ldr r1, [r0]
	cmp r1, #0
	bne .L08053BD8
	movs r2, #0xa
	rsbs r2, r2, #0
	b .L08053BEA
	.align 2, 0
.L08053BD0: .4byte 0x00002270
.L08053BD4: .4byte 0x00002290
.L08053BD8:
	cmp r1, #0xdb
	bgt .L08053BE0
	movs r2, #0x10
	b .L08053BEA
.L08053BE0:
	ldr r0, .L08053C5C @ =0x000002BB
	movs r2, #0x30
	cmp r1, r0
	bgt .L08053BEA
	movs r2, #0x20
.L08053BEA:
	ldr r7, .L08053C60 @ =0x000022A0
	adds r4, r6, r7
	ldr r0, .L08053C64 @ =0x00002270
	adds r1, r6, r0
	adds r2, #0x10
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r4]
	ldr r0, [r1]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r0, [r4]
	lsls r0, r0, #0x10
	str r0, [r4]
	ldr r2, .L08053C68 @ =0x000022A8
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r1]
	ldr r0, [r4]
	asrs r0, r0, #8
	lsls r0, r0, #2
	bl Sqrt
	ldr r3, .L08053C6C @ =0x000022A4
	adds r1, r6, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #8
	str r0, [r1]
	ldr r5, .L08053C70 @ =0x00002274
	adds r2, r6, r5
	asrs r0, r0, #3
	lsls r1, r0, #2
	adds r1, r1, r0
	str r1, [r2]
	ldr r0, .L08053C74 @ =0x0000FFFF
	cmp r1, r0
	bgt .L08053C3A
	adds r0, #1
	str r0, [r2]
.L08053C3A:
	ldr r7, .L08053C78 @ =0x00002278
	adds r1, r6, r7
	ldr r0, [r2]
	str r0, [r1]
	ldr r0, .L08053C7C @ =0x000022B4
	adds r1, r6, r0
	ldr r0, [r4]
	asrs r0, r0, #2
	str r0, [r1]
	ldr r1, [r4]
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	ble .L08053C80
	movs r7, #0x10
	b .L08053C8C
	.align 2, 0
.L08053C5C: .4byte 0x000002BB
.L08053C60: .4byte 0x000022A0
.L08053C64: .4byte 0x00002270
.L08053C68: .4byte 0x000022A8
.L08053C6C: .4byte 0x000022A4
.L08053C70: .4byte 0x00002274
.L08053C74: .4byte 0x0000FFFF
.L08053C78: .4byte 0x00002278
.L08053C7C: .4byte 0x000022B4
.L08053C80:
	movs r0, #0xc8
	lsls r0, r0, #0x10
	movs r7, #8
	cmp r1, r0
	ble .L08053C8C
	movs r7, #0xc
.L08053C8C:
	ldr r1, .L08053CC8 @ =0x000022AC
	adds r4, r6, r1
	ldr r2, .L08053CCC @ =0x000022B4
	adds r5, r6, r2
	ldr r0, [r5]
	adds r1, r7, #0
	bl __divsi3
	str r0, [r4]
	ldr r3, .L08053CD0 @ =0x000022B0
	adds r1, r6, r3
	str r0, [r1]
	ldr r4, .L08053CD4 @ =0x000022B8
	adds r2, r6, r4
	ldr r1, [r5]
	lsls r0, r1, #1
	adds r1, r0, r1
	str r1, [r2]
	subs r3, #0x20
	adds r0, r6, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #2
	beq .L08053CDC
	ldr r0, .L08053CD8 @ =0x000022BC
	adds r4, r6, r0
	adds r1, r7, #0
	adds r1, #0xc
	ldr r0, [r5]
	b .L08053CF2
	.align 2, 0
.L08053CC8: .4byte 0x000022AC
.L08053CCC: .4byte 0x000022B4
.L08053CD0: .4byte 0x000022B0
.L08053CD4: .4byte 0x000022B8
.L08053CD8: .4byte 0x000022BC
.L08053CDC:
	ldr r0, [r5]
	asrs r0, r0, #1
	adds r0, r1, r0
	str r0, [r2]
	ldr r1, .L08053D5C @ =0x000022BC
	adds r4, r6, r1
	ldr r0, [r5]
	asrs r1, r0, #1
	subs r0, r0, r1
	adds r1, r7, #0
	adds r1, #0xc
.L08053CF2:
	bl __divsi3
	str r0, [r4]
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0x95
	bl func_08008B6C
	ldr r2, .L08053D60 @ =0x0000229C
	adds r1, r6, r2
	movs r0, #0
	str r0, [r1]
	movs r3, #0x8b
	lsls r3, r3, #6
	adds r1, r6, r3
	movs r2, #1
	movs r0, #1
	strh r0, [r1]
	movs r4, #0xd3
	lsls r4, r4, #2
	adds r0, r6, r4
	strb r2, [r0]
.L08053D1E:
	movs r5, #0x8c
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge .L08053D42
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, .L08053D64 @ =0x00000195
	bl func_0805E860
	ldr r0, .L08053D68 @ =0x0000232A
	adds r1, r6, r0
.L08053D3C:
	ldrh r0, [r1]
	adds r0, #1
.L08053D40:
	strh r0, [r1]
.L08053D42:
	movs r1, #0x8b
	lsls r1, r1, #6
	adds r0, r6, r1
	movs r2, #0
	ldrsh r4, [r0, r2]
	cmp r4, #1
	beq .L08053D74
	cmp r4, #1
	bgt .L08053D6C
	cmp r4, #0
	bne .L08053D5A
	b .L08053E5C
.L08053D5A:
	b .L08053FA6
	.align 2, 0
.L08053D5C: .4byte 0x000022BC
.L08053D60: .4byte 0x0000229C
.L08053D64: .4byte 0x00000195
.L08053D68: .4byte 0x0000232A
.L08053D6C:
	cmp r4, #2
	bne .L08053D72
	b .L08053E6A
.L08053D72:
	b .L08053FA6
.L08053D74:
	ldr r3, .L08053DC0 @ =0x0000229C
	adds r2, r6, r3
	ldr r5, .L08053DC4 @ =0x000022A4
	adds r1, r6, r5
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r7, .L08053DC8 @ =0x00002294
	adds r1, r6, r7
	movs r5, #0xa0
	lsls r5, r5, #0xf
	adds r0, r0, r5
	str r0, [r1]
	ldr r1, .L08053DCC @ =0x000022B4
	adds r0, r6, r1
	ldr r2, [r2]
	ldr r0, [r0]
	cmp r2, r0
	bge .L08053DE0
	ldr r4, .L08053DD0 @ =0x000022B0
	adds r3, r6, r4
	ldr r0, [r3]
	cmp r2, r0
	ble .L08053E24
	ldr r5, .L08053DD4 @ =0x00002298
	adds r1, r6, r5
	ldr r0, [r1]
	ldr r7, .L08053DD8 @ =0xFFFF0000
	adds r0, r0, r7
	str r0, [r1]
	ldr r0, .L08053DDC @ =0x000022AC
	adds r1, r6, r0
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3]
	b .L08053E24
	.align 2, 0
.L08053DC0: .4byte 0x0000229C
.L08053DC4: .4byte 0x000022A4
.L08053DC8: .4byte 0x00002294
.L08053DCC: .4byte 0x000022B4
.L08053DD0: .4byte 0x000022B0
.L08053DD4: .4byte 0x00002298
.L08053DD8: .4byte 0xFFFF0000
.L08053DDC: .4byte 0x000022AC
.L08053DE0:
	ldr r1, .L08053E48 @ =0x000022B8
	adds r3, r6, r1
	ldr r0, [r3]
	cmp r2, r0
	blt .L08053E24
	ldr r7, .L08053E4C @ =0x00002298
	adds r2, r6, r7
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	str r0, [r2]
	adds r7, #0x24
	adds r1, r6, r7
	ldr r0, [r3]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r3]
	movs r1, #2
	ldrsh r0, [r2, r1]
	cmp r0, #0x50
	ble .L08053E24
	str r5, [r2]
	ldr r2, .L08053E50 @ =0x000022C2
	adds r1, r6, r2
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne .L08053E24
	movs r5, #0xef
	lsls r5, r5, #2
	adds r0, r6, r5
	strb r4, [r0]
	strh r4, [r1]
.L08053E24:
	ldr r7, .L08053E54 @ =0x000022A4
	adds r2, r6, r7
	ldr r1, .L08053E58 @ =0x000022A8
	adds r0, r6, r1
	ldr r1, [r2]
	ldr r0, [r0]
	subs r1, r1, r0
	str r1, [r2]
	cmp r1, #0
	blt .L08053E3A
	b .L08053FA6
.L08053E3A:
	movs r1, #0
	str r1, [r2]
	movs r2, #0x8b
	lsls r2, r2, #6
	adds r0, r6, r2
	strh r1, [r0]
	b .L08053FA6
	.align 2, 0
.L08053E48: .4byte 0x000022B8
.L08053E4C: .4byte 0x00002298
.L08053E50: .4byte 0x000022C2
.L08053E54: .4byte 0x000022A4
.L08053E58: .4byte 0x000022A8
.L08053E5C:
	movs r3, #0xc6
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0xc9
	bl func_0805E860
	b .L08053FA6
.L08053E6A:
	ldr r4, .L08053EA4 @ =0x00002294
	adds r1, r6, r4
	ldr r5, .L08053EA8 @ =0x00002268
	adds r0, r6, r5
	ldr r0, [r0]
	str r0, [r1]
	ldr r7, .L08053EAC @ =0x00002298
	adds r1, r6, r7
	ldr r2, .L08053EB0 @ =0x0000226C
	adds r0, r6, r2
	ldr r0, [r0]
	str r0, [r1]
	movs r2, #0xb9
	ldr r3, .L08053EB4 @ =0x00002288
	adds r1, r6, r3
	ldr r4, .L08053EB8 @ =0xFFFFFCC1
	adds r0, r4, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x30
	bls .L08053E9A
	b .L08053F9A
.L08053E9A:
	lsls r0, r0, #2
	ldr r1, .L08053EBC @ =.L08053EC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08053EA4: .4byte 0x00002294
.L08053EA8: .4byte 0x00002268
.L08053EAC: .4byte 0x00002298
.L08053EB0: .4byte 0x0000226C
.L08053EB4: .4byte 0x00002288
.L08053EB8: .4byte 0xFFFFFCC1
.L08053EBC: .4byte .L08053EC0
.L08053EC0: @ jump table
	.4byte .L08053F8C @ case 0
	.4byte .L08053F9A @ case 1
	.4byte .L08053F9A @ case 2
	.4byte .L08053F9A @ case 3
	.4byte .L08053F9A @ case 4
	.4byte .L08053F9A @ case 5
	.4byte .L08053F9A @ case 6
	.4byte .L08053F9A @ case 7
	.4byte .L08053F9A @ case 8
	.4byte .L08053F9A @ case 9
	.4byte .L08053F9A @ case 10
	.4byte .L08053F9A @ case 11
	.4byte .L08053F9A @ case 12
	.4byte .L08053F84 @ case 13
	.4byte .L08053F9A @ case 14
	.4byte .L08053F9A @ case 15
	.4byte .L08053F88 @ case 16
	.4byte .L08053F9A @ case 17
	.4byte .L08053F9A @ case 18
	.4byte .L08053F9A @ case 19
	.4byte .L08053F9A @ case 20
	.4byte .L08053F9A @ case 21
	.4byte .L08053F9A @ case 22
	.4byte .L08053F9A @ case 23
	.4byte .L08053F9A @ case 24
	.4byte .L08053F9A @ case 25
	.4byte .L08053F9A @ case 26
	.4byte .L08053F9A @ case 27
	.4byte .L08053F9A @ case 28
	.4byte .L08053F9A @ case 29
	.4byte .L08053F9A @ case 30
	.4byte .L08053F9A @ case 31
	.4byte .L08053F9A @ case 32
	.4byte .L08053F9A @ case 33
	.4byte .L08053F9A @ case 34
	.4byte .L08053F9A @ case 35
	.4byte .L08053F9A @ case 36
	.4byte .L08053F9A @ case 37
	.4byte .L08053F9A @ case 38
	.4byte .L08053F9A @ case 39
	.4byte .L08053F90 @ case 40
	.4byte .L08053F9A @ case 41
	.4byte .L08053F9A @ case 42
	.4byte .L08053F9A @ case 43
	.4byte .L08053F94 @ case 44
	.4byte .L08053F9A @ case 45
	.4byte .L08053F9A @ case 46
	.4byte .L08053F9A @ case 47
	.4byte .L08053F98 @ case 48
.L08053F84:
	movs r2, #0xb9
	b .L08053F9A
.L08053F88:
	movs r2, #0xbc
	b .L08053F9A
.L08053F8C:
	movs r2, #0xb0
	b .L08053F9A
.L08053F90:
	movs r2, #0xc0
	b .L08053F9A
.L08053F94:
	movs r2, #0xc4
	b .L08053F9A
.L08053F98:
	movs r2, #0xc8
.L08053F9A:
	movs r5, #0xc6
	lsls r5, r5, #2
	adds r0, r6, r5
	adds r1, r2, #0
	bl func_0805E860
.L08053FA6:
	ldr r7, .L0805400C @ =0x0000228A
	adds r5, r6, r7
	ldr r0, .L08054010 @ =0x00002288
	adds r4, r6, r0
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r1, r0
	beq .L08053FCC
	movs r7, #0x8e
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r2, #0
	ldrsh r1, [r4, r2]
	bl func_0805E860
	ldrh r0, [r4]
	strh r0, [r5]
.L08053FCC:
	ldr r3, .L08054014 @ =0x0000228E
	adds r0, r6, r3
	ldrh r0, [r0]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq .L08054094
	ldr r4, .L08054018 @ =0x00002268
	adds r1, r6, r4
	ldr r5, .L0805401C @ =0x00002294
	adds r0, r6, r5
	ldr r0, [r0]
	ldr r7, .L08054020 @ =0xFFF00000
	adds r0, r0, r7
	ldr r1, [r1]
	cmp r1, r0
	ble .L0805402C
	ldr r0, .L08054024 @ =0x0000227C
	adds r3, r6, r0
	ldr r1, .L08054028 @ =0x00002274
	adds r2, r6, r1
	ldr r0, [r2]
	asrs r0, r0, #4
	ldr r1, [r3]
	subs r1, r1, r0
	str r1, [r3]
	ldr r0, [r2]
	asrs r0, r0, #1
	cmp r1, r0
	bge .L08054046
	b .L08054044
	.align 2, 0
.L0805400C: .4byte 0x0000228A
.L08054010: .4byte 0x00002288
.L08054014: .4byte 0x0000228E
.L08054018: .4byte 0x00002268
.L0805401C: .4byte 0x00002294
.L08054020: .4byte 0xFFF00000
.L08054024: .4byte 0x0000227C
.L08054028: .4byte 0x00002274
.L0805402C:
	ldr r2, .L08054080 @ =0x0000227C
	adds r3, r6, r2
	ldr r4, .L08054084 @ =0x00002274
	adds r0, r6, r4
	ldr r1, [r0]
	asrs r1, r1, #4
	ldr r2, [r3]
	adds r2, r2, r1
	str r2, [r3]
	ldr r0, [r0]
	cmp r2, r0
	ble .L08054046
.L08054044:
	str r0, [r3]
.L08054046:
	ldr r5, .L08054088 @ =0x00002268
	adds r2, r6, r5
	ldr r7, .L08054080 @ =0x0000227C
	adds r1, r6, r7
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	asrs r0, r0, #0x10
	subs r0, #0x60
	ldr r1, .L0805408C @ =0x000022C4
	adds r2, r6, r1
	strh r0, [r2]
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, .L08054090 @ =0x00002270
	adds r0, r6, r4
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r1, r0
	ble .L08054072
	strh r0, [r2]
.L08054072:
	movs r7, #0xe1
	lsls r7, r7, #2
	adds r1, r6, r7
	movs r0, #1
	strb r0, [r1]
	b .L0805409C
	.align 2, 0
.L08054080: .4byte 0x0000227C
.L08054084: .4byte 0x00002274
.L08054088: .4byte 0x00002268
.L0805408C: .4byte 0x000022C4
.L08054090: .4byte 0x00002270
.L08054094:
	movs r2, #0xe1
	lsls r2, r2, #2
	adds r0, r6, r2
	strb r1, [r0]
.L0805409C:
	ldr r3, .L080540B8 @ =0x00002292
	adds r0, r6, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0x11
	bls .L080540AC
	bl .L08054C4A
.L080540AC:
	lsls r0, r0, #2
	ldr r1, .L080540BC @ =.L080540C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080540B8: .4byte 0x00002292
.L080540BC: .4byte .L080540C0
.L080540C0: @ jump table
	.4byte .L08054108 @ case 0
	.4byte .L080541A8 @ case 1
	.4byte .L0805432C @ case 2
	.4byte .L080543A8 @ case 3
	.4byte .L080543F8 @ case 4
	.4byte .L08054400 @ case 5
	.4byte .L0805445C @ case 6
	.4byte .L08054598 @ case 7
	.4byte .L08054638 @ case 8
	.4byte .L080546B4 @ case 9
	.4byte .L080546D0 @ case 10
	.4byte .L08054774 @ case 11
	.4byte .L080547C4 @ case 12
	.4byte .L080547F8 @ case 13
	.4byte .L08054828 @ case 14
	.4byte .L08054868 @ case 15
	.4byte .L0805489C @ case 16
	.4byte .L08054C1C @ case 17
.L08054108:
	ldr r5, .L08054128 @ =0x00002290
	adds r0, r6, r5
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bls .L0805411C
	bl .L08054C4A
.L0805411C:
	lsls r0, r0, #2
	ldr r1, .L0805412C @ =.L08054130
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08054128: .4byte 0x00002290
.L0805412C: .4byte .L08054130
.L08054130: @ jump table
	.4byte .L08054150 @ case 0
	.4byte .L08054150 @ case 1
	.4byte .L08054150 @ case 2
	.4byte .L08054150 @ case 3
	.4byte .L08054150 @ case 4
	.4byte .L08054160 @ case 5
	.4byte .L08054190 @ case 6
	.4byte .L08054150 @ case 7
.L08054150:
	ldr r7, .L0805415C @ =0x00002292
	adds r1, r6, r7
	movs r0, #1
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L0805415C: .4byte 0x00002292
.L08054160:
	ldr r0, .L0805417C @ =0x00002288
	adds r1, r6, r0
	movs r2, #0
	ldr r0, .L08054180 @ =0x0000033B
	strh r0, [r1]
	ldr r1, .L08054184 @ =0x0000228E
	adds r0, r6, r1
	strh r2, [r0]
	ldr r2, .L08054188 @ =0x00002284
	adds r1, r6, r2
	movs r0, #0x3c
	str r0, [r1]
	ldr r3, .L0805418C @ =0x00002292
	b .L080545CA
	.align 2, 0
.L0805417C: .4byte 0x00002288
.L08054180: .4byte 0x0000033B
.L08054184: .4byte 0x0000228E
.L08054188: .4byte 0x00002284
.L0805418C: .4byte 0x00002292
.L08054190:
	ldr r4, .L080541A0 @ =0x00002284
	adds r1, r6, r4
	movs r0, #0x3c
	str r0, [r1]
	ldr r5, .L080541A4 @ =0x00002292
	adds r1, r6, r5
	b .L080547E6
	.align 2, 0
.L080541A0: .4byte 0x00002284
.L080541A4: .4byte 0x00002292
.L080541A8:
	ldr r7, .L080541F8 @ =0x00002294
	adds r0, r6, r7
	ldr r0, [r0]
	ldr r1, .L080541FC @ =0xFFF00000
	adds r0, r0, r1
	ldr r2, .L08054200 @ =0x00002268
	adds r1, r6, r2
	ldr r1, [r1]
	cmp r0, r1
	bgt .L080541C0
	bl .L08054C4A
.L080541C0:
	ldr r3, .L08054204 @ =0x00002288
	adds r1, r6, r3
	movs r2, #0
	ldr r0, .L08054208 @ =0x00000343
	strh r0, [r1]
	ldr r4, .L0805420C @ =0x0000227C
	adds r0, r6, r4
	str r2, [r0]
	ldr r5, .L08054210 @ =0x0000228E
	adds r1, r6, r5
	movs r0, #3
	strh r0, [r1]
	subs r7, #4
	adds r0, r6, r7
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bls .L080541EC
	bl .L08054C4A
.L080541EC:
	lsls r0, r0, #2
	ldr r1, .L08054214 @ =.L08054218
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080541F8: .4byte 0x00002294
.L080541FC: .4byte 0xFFF00000
.L08054200: .4byte 0x00002268
.L08054204: .4byte 0x00002288
.L08054208: .4byte 0x00000343
.L0805420C: .4byte 0x0000227C
.L08054210: .4byte 0x0000228E
.L08054214: .4byte .L08054218
.L08054218: @ jump table
	.4byte .L08054238 @ case 0
	.4byte .L08054254 @ case 1
	.4byte .L08054264 @ case 2
	.4byte .L080542E8 @ case 3
	.4byte .L0805431C @ case 4
	.4byte .L08054C4A @ case 5
	.4byte .L08054C4A @ case 6
	.4byte .L0805431C @ case 7
.L08054238:
	ldr r0, .L0805424C @ =0x00002284
	adds r1, r6, r0
	movs r0, #0
	str r0, [r1]
	ldr r2, .L08054250 @ =0x00002292
	adds r1, r6, r2
	movs r0, #2
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L0805424C: .4byte 0x00002284
.L08054250: .4byte 0x00002292
.L08054254:
	ldr r3, .L08054260 @ =0x00002284
	adds r1, r6, r3
	movs r0, #0
	str r0, [r1]
	b .L0805430C
	.align 2, 0
.L08054260: .4byte 0x00002284
.L08054264:
	ldr r5, .L0805427C @ =0x00002270
	adds r2, r6, r5
	ldr r1, [r2]
	ldr r0, .L08054280 @ =0x00DBFFFF
	cmp r1, r0
	bgt .L08054290
	ldr r0, .L08054284 @ =0x0013FFFF
	cmp r1, r0
	ble .L0805428C
	ldr r7, .L08054288 @ =0xFFEC0000
	adds r0, r1, r7
	b .L0805428E
	.align 2, 0
.L0805427C: .4byte 0x00002270
.L08054280: .4byte 0x00DBFFFF
.L08054284: .4byte 0x0013FFFF
.L08054288: .4byte 0xFFEC0000
.L0805428C:
	movs r0, #0
.L0805428E:
	str r0, [r2]
.L08054290:
	ldr r1, .L080542AC @ =0x00002270
	adds r0, r6, r1
	ldr r1, [r0]
	ldr r0, .L080542B0 @ =0x0013FFFF
	cmp r1, r0
	bgt .L080542BC
	ldr r3, .L080542B4 @ =0x00002274
	adds r2, r6, r3
	ldr r4, .L080542B8 @ =0x000022A4
	adds r0, r6, r4
	ldr r1, [r0]
	asrs r1, r1, #3
	b .L080542C8
	.align 2, 0
.L080542AC: .4byte 0x00002270
.L080542B0: .4byte 0x0013FFFF
.L080542B4: .4byte 0x00002274
.L080542B8: .4byte 0x000022A4
.L080542BC:
	ldr r5, .L080542DC @ =0x00002274
	adds r2, r6, r5
	ldr r7, .L080542E0 @ =0x000022A4
	adds r0, r6, r7
	ldr r1, [r0]
	asrs r1, r1, #4
.L080542C8:
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
	ldr r0, .L080542E4 @ =0x00002292
	adds r1, r6, r0
	movs r0, #0xa
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L080542DC: .4byte 0x00002274
.L080542E0: .4byte 0x000022A4
.L080542E4: .4byte 0x00002292
.L080542E8:
	ldr r1, .L080542FC @ =0x00002270
	adds r2, r6, r1
	ldr r1, [r2]
	ldr r0, .L08054300 @ =0x003BFFFF
	cmp r1, r0
	ble .L08054308
	ldr r3, .L08054304 @ =0xFFE20000
	adds r0, r1, r3
	b .L0805430A
	.align 2, 0
.L080542FC: .4byte 0x00002270
.L08054300: .4byte 0x003BFFFF
.L08054304: .4byte 0xFFE20000
.L08054308:
	movs r0, #0
.L0805430A:
	str r0, [r2]
.L0805430C:
	ldr r4, .L08054318 @ =0x00002292
	adds r1, r6, r4
	movs r0, #5
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L08054318: .4byte 0x00002292
.L0805431C:
	ldr r5, .L08054328 @ =0x00002292
	adds r1, r6, r5
	movs r0, #7
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L08054328: .4byte 0x00002292
.L0805432C:
	ldr r7, .L08054380 @ =0x00002268
	adds r2, r6, r7
	ldr r0, [r2]
	ldr r1, .L08054384 @ =0xFFA00000
	adds r0, r0, r1
	ldr r3, .L08054388 @ =0x00002270
	adds r1, r6, r3
	ldr r1, [r1]
	cmp r0, r1
	blt .L0805439C
	movs r4, #0xc0
	lsls r4, r4, #0xf
	adds r0, r1, r4
	str r0, [r2]
	ldr r5, .L0805438C @ =0x0000227C
	adds r1, r6, r5
	adds r7, #0xc
	adds r0, r6, r7
	ldr r0, [r0]
	asrs r0, r0, #1
	str r0, [r1]
	ldr r0, .L08054390 @ =0x00002284
	adds r1, r6, r0
	movs r0, #0x3c
	str r0, [r1]
	ldr r2, .L08054394 @ =0x0000228E
	adds r1, r6, r2
	movs r0, #0
	strh r0, [r1]
	adds r3, #0x18
	adds r1, r6, r3
	ldr r0, .L08054398 @ =0x0000033F
	strh r0, [r1]
	movs r4, #0x8b
	lsls r4, r4, #6
	adds r1, r6, r4
	movs r0, #2
	strh r0, [r1]
	adds r5, #0x16
	adds r1, r6, r5
	b .L080544BC
	.align 2, 0
.L08054380: .4byte 0x00002268
.L08054384: .4byte 0xFFA00000
.L08054388: .4byte 0x00002270
.L0805438C: .4byte 0x0000227C
.L08054390: .4byte 0x00002284
.L08054394: .4byte 0x0000228E
.L08054398: .4byte 0x0000033F
.L0805439C:
	ldr r7, .L080543A4 @ =0x00002284
	adds r0, r6, r7
	b .L08054744
	.align 2, 0
.L080543A4: .4byte 0x00002284
.L080543A8:
	ldr r0, .L080543E0 @ =0x00002268
	adds r2, r6, r0
	ldr r3, .L080543E4 @ =0x0000227C
	adds r1, r6, r3
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r4, .L080543E8 @ =0x00002284
	adds r1, r6, r4
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L080543CA
	bl .L08054C4A
.L080543CA:
	ldr r5, .L080543EC @ =0x00002288
	adds r1, r6, r5
	ldr r0, .L080543F0 @ =0x0000034F
	strh r0, [r1]
	ldr r7, .L080543F4 @ =0x00002292
	adds r1, r6, r7
	movs r0, #4
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L080543E0: .4byte 0x00002268
.L080543E4: .4byte 0x0000227C
.L080543E8: .4byte 0x00002284
.L080543EC: .4byte 0x00002288
.L080543F0: .4byte 0x0000034F
.L080543F4: .4byte 0x00002292
.L080543F8:
	movs r0, #1
	str r0, [sp, #0x44]
	bl .L08054C4A
.L08054400:
	ldr r1, .L0805443C @ =0x00002268
	adds r0, r6, r1
	ldr r1, [r0]
	ldr r2, .L08054440 @ =0xFFA00000
	adds r1, r1, r2
	ldr r3, .L08054444 @ =0x00002270
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r4, .L08054448 @ =0xFFF00000
	adds r0, r0, r4
	cmp r1, r0
	blt .L08054450
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xa9
	bl func_08008B6C
	movs r5, #0x8a
	lsls r5, r5, #6
	adds r1, r6, r5
	movs r0, #0x80
	lsls r0, r0, #9
	str r0, [r1]
	ldr r7, .L0805444C @ =0x00002292
	adds r1, r6, r7
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	bl .L08054C4A
	.align 2, 0
.L0805443C: .4byte 0x00002268
.L08054440: .4byte 0xFFA00000
.L08054444: .4byte 0x00002270
.L08054448: .4byte 0xFFF00000
.L0805444C: .4byte 0x00002292
.L08054450:
	ldr r1, .L08054458 @ =0x00002284
	adds r0, r6, r1
	b .L08054744
	.align 2, 0
.L08054458: .4byte 0x00002284
.L0805445C:
	ldr r2, .L080544C4 @ =0x0000226C
	adds r3, r6, r2
	movs r5, #0x8a
	lsls r5, r5, #6
	adds r4, r6, r5
	ldr r0, [r3]
	ldr r1, [r4]
	subs r0, r0, r1
	str r0, [r3]
	ldr r0, [r4]
	ldr r7, .L080544C8 @ =0xFFFFF000
	adds r2, r0, r7
	str r2, [r4]
	ldr r1, [r3]
	ldr r0, .L080544CC @ =0x004FFFFF
	cmp r1, r0
	ble .L08054520
	ldr r1, .L080544D0 @ =0x00002290
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #2
	bne .L080544EC
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r3]
	movs r2, #0
	str r2, [r4]
	ldr r3, .L080544D4 @ =0x0000227C
	adds r1, r6, r3
	ldr r4, .L080544D8 @ =0x00002274
	adds r0, r6, r4
	ldr r0, [r0]
	asrs r0, r0, #1
	str r0, [r1]
	adds r5, #4
	adds r1, r6, r5
	movs r0, #0x3c
	str r0, [r1]
	ldr r7, .L080544DC @ =0x0000228E
	adds r0, r6, r7
	strh r2, [r0]
	ldr r0, .L080544E0 @ =0x00002288
	adds r1, r6, r0
	ldr r0, .L080544E4 @ =0x0000033F
	strh r0, [r1]
	ldr r2, .L080544E8 @ =0x00002292
	adds r1, r6, r2
.L080544BC:
	movs r0, #3
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L080544C4: .4byte 0x0000226C
.L080544C8: .4byte 0xFFFFF000
.L080544CC: .4byte 0x004FFFFF
.L080544D0: .4byte 0x00002290
.L080544D4: .4byte 0x0000227C
.L080544D8: .4byte 0x00002274
.L080544DC: .4byte 0x0000228E
.L080544E0: .4byte 0x00002288
.L080544E4: .4byte 0x0000033F
.L080544E8: .4byte 0x00002292
.L080544EC:
	ldr r3, .L0805450C @ =0x00002288
	adds r1, r6, r3
	movs r2, #0
	ldr r0, .L08054510 @ =0x0000033B
	strh r0, [r1]
	ldr r4, .L08054514 @ =0x0000228E
	adds r0, r6, r4
	strh r2, [r0]
	ldr r5, .L08054518 @ =0x00002284
	adds r1, r6, r5
	movs r0, #0x3c
	str r0, [r1]
	ldr r7, .L0805451C @ =0x00002292
	adds r1, r6, r7
	b .L080547A4
	.align 2, 0
.L0805450C: .4byte 0x00002288
.L08054510: .4byte 0x0000033B
.L08054514: .4byte 0x0000228E
.L08054518: .4byte 0x00002284
.L0805451C: .4byte 0x00002292
.L08054520:
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	ble .L0805453C
	ldr r0, .L08054534 @ =0x00002288
	adds r1, r6, r0
	ldr r0, .L08054538 @ =0x00000367
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L08054534: .4byte 0x00002288
.L08054538: .4byte 0x00000367
.L0805453C:
	ldr r0, .L0805454C @ =0xFFFF8000
	cmp r2, r0
	bge .L08054558
	ldr r2, .L08054550 @ =0x00002288
	adds r1, r6, r2
	ldr r0, .L08054554 @ =0x0000036F
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L0805454C: .4byte 0xFFFF8000
.L08054550: .4byte 0x00002288
.L08054554: .4byte 0x0000036F
.L08054558:
	ldr r3, .L08054584 @ =0x0000228E
	adds r2, r6, r3
	ldrh r1, [r2]
	ldr r0, .L08054588 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r4, .L0805458C @ =0x00002288
	adds r1, r6, r4
	ldr r0, .L08054590 @ =0x0000036B
	strh r0, [r1]
	ldr r5, .L08054594 @ =0x00002290
	adds r0, r6, r5
	movs r7, #0
	ldrsh r1, [r0, r7]
	cmp r1, #2
	beq .L0805457A
	b .L08054C4A
.L0805457A:
	movs r2, #0x8b
	lsls r2, r2, #6
	adds r0, r6, r2
	strh r1, [r0]
	b .L08054C4A
	.align 2, 0
.L08054584: .4byte 0x0000228E
.L08054588: .4byte 0x0000FFFD
.L0805458C: .4byte 0x00002288
.L08054590: .4byte 0x0000036B
.L08054594: .4byte 0x00002290
.L08054598:
	ldr r3, .L080545D4 @ =0x00002268
	adds r0, r6, r3
	ldr r0, [r0]
	ldr r4, .L080545D8 @ =0xFFA00000
	adds r0, r0, r4
	ldr r1, .L080545DC @ =0x00C7FFFF
	cmp r0, r1
	ble .L0805462C
	ldr r5, .L080545E0 @ =0x0000227C
	adds r0, r6, r5
	ldr r2, [r0]
	cmp r2, #0
	bne .L080545F4
	ldr r7, .L080545E4 @ =0x00002288
	adds r1, r6, r7
	ldr r0, .L080545E8 @ =0x0000033B
	strh r0, [r1]
	ldr r1, .L080545EC @ =0x0000228E
	adds r0, r6, r1
	strh r2, [r0]
	ldr r2, .L080545F0 @ =0x00002284
	adds r1, r6, r2
	movs r0, #0x3c
	str r0, [r1]
	adds r3, #0x2a
.L080545CA:
	adds r1, r6, r3
	movs r0, #8
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L080545D4: .4byte 0x00002268
.L080545D8: .4byte 0xFFA00000
.L080545DC: .4byte 0x00C7FFFF
.L080545E0: .4byte 0x0000227C
.L080545E4: .4byte 0x00002288
.L080545E8: .4byte 0x0000033B
.L080545EC: .4byte 0x0000228E
.L080545F0: .4byte 0x00002284
.L080545F4:
	ldr r4, .L0805461C @ =0x00002288
	adds r1, r6, r4
	ldr r0, .L08054620 @ =0x0000033F
	strh r0, [r1]
	ldr r5, .L08054624 @ =0x00002274
	adds r2, r6, r5
	ldr r7, .L08054628 @ =0x00002278
	adds r0, r6, r7
	ldr r1, [r0]
	asrs r1, r1, #6
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
	cmp r0, #0
	blt .L08054614
	b .L08054C4A
.L08054614:
	movs r0, #0
	str r0, [r2]
	b .L08054C4A
	.align 2, 0
.L0805461C: .4byte 0x00002288
.L08054620: .4byte 0x0000033F
.L08054624: .4byte 0x00002274
.L08054628: .4byte 0x00002278
.L0805462C:
	ldr r1, .L08054634 @ =0x00002284
	adds r0, r6, r1
	b .L08054744
	.align 2, 0
.L08054634: .4byte 0x00002284
.L08054638:
	ldr r2, .L0805466C @ =0x00002284
	adds r1, r6, r2
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L08054648
	b .L08054C4A
.L08054648:
	ldr r3, .L08054670 @ =0x00002290
	adds r0, r6, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #8
	beq .L0805467C
	movs r0, #0x3c
	str r0, [r1]
	ldr r5, .L08054674 @ =0x00002288
	adds r1, r6, r5
	movs r0, #0xce
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r7, .L08054678 @ =0x00002292
	adds r1, r6, r7
	movs r0, #9
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L0805466C: .4byte 0x00002284
.L08054670: .4byte 0x00002290
.L08054674: .4byte 0x00002288
.L08054678: .4byte 0x00002292
.L0805467C:
	movs r0, #0x1e
	str r0, [r1]
	ldr r0, .L080546A8 @ =0x00002288
	adds r1, r6, r0
	movs r0, #0xce
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r2, .L080546AC @ =0x00002292
	adds r1, r6, r2
	movs r0, #0xe
	strh r0, [r1]
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #2
	bl func_0805E860
	ldr r4, .L080546B0 @ =0x0000042C
	adds r1, r6, r4
	movs r0, #1
	strb r0, [r1]
	b .L08054C4A
	.align 2, 0
.L080546A8: .4byte 0x00002288
.L080546AC: .4byte 0x00002292
.L080546B0: .4byte 0x0000042C
.L080546B4:
	ldr r5, .L080546CC @ =0x00002284
	adds r1, r6, r5
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L080546C4
	b .L08054C4A
.L080546C4:
	movs r0, #0
	str r0, [r1]
	b .L08054C46
	.align 2, 0
.L080546CC: .4byte 0x00002284
.L080546D0:
	ldr r1, .L0805471C @ =0x00002268
	adds r0, r6, r1
	ldr r0, [r0]
	ldr r2, .L08054720 @ =0xFFA00000
	adds r0, r0, r2
	ldr r3, .L08054724 @ =0x00002270
	adds r2, r6, r3
	ldr r1, [r2]
	cmp r0, r1
	blt .L08054740
	ldr r4, .L08054728 @ =0x0000227C
	adds r1, r6, r4
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1]
	ldr r5, .L0805472C @ =0x00002284
	adds r1, r6, r5
	movs r0, #0x1e
	str r0, [r1]
	movs r7, #2
	ldrsh r0, [r2, r7]
	cmp r0, #0x13
	bgt .L08054702
	movs r0, #0xf
	str r0, [r1]
.L08054702:
	ldr r0, .L08054730 @ =0x0000228E
	adds r1, r6, r0
	movs r0, #0
	strh r0, [r1]
	ldr r2, .L08054734 @ =0x00002288
	adds r1, r6, r2
	ldr r0, .L08054738 @ =0x0000033F
	strh r0, [r1]
	ldr r3, .L0805473C @ =0x00002292
	adds r1, r6, r3
	movs r0, #0xb
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L0805471C: .4byte 0x00002268
.L08054720: .4byte 0xFFA00000
.L08054724: .4byte 0x00002270
.L08054728: .4byte 0x0000227C
.L0805472C: .4byte 0x00002284
.L08054730: .4byte 0x0000228E
.L08054734: .4byte 0x00002288
.L08054738: .4byte 0x0000033F
.L0805473C: .4byte 0x00002292
.L08054740:
	ldr r4, .L08054770 @ =0x00002284
	adds r0, r6, r4
.L08054744:
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	movs r0, #0x3f
	ands r1, r0
	cmp r1, #0
	beq .L08054754
	b .L08054C4A
.L08054754:
	bl rand
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L08054762
	b .L08054C4A
.L08054762:
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xa9
	bl func_08008B6C
	b .L08054C4A
	.align 2, 0
.L08054770: .4byte 0x00002284
.L08054774:
	ldr r5, .L080547AC @ =0x00002268
	adds r2, r6, r5
	ldr r7, .L080547B0 @ =0x0000227C
	adds r1, r6, r7
	ldr r0, [r2]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, .L080547B4 @ =0x00002284
	adds r1, r6, r0
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L08054794
	b .L08054C4A
.L08054794:
	movs r0, #0x3c
	str r0, [r1]
	ldr r2, .L080547B8 @ =0x00002288
	adds r1, r6, r2
	ldr r0, .L080547BC @ =0x00000347
	strh r0, [r1]
	ldr r3, .L080547C0 @ =0x00002292
	adds r1, r6, r3
.L080547A4:
	movs r0, #0xc
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L080547AC: .4byte 0x00002268
.L080547B0: .4byte 0x0000227C
.L080547B4: .4byte 0x00002284
.L080547B8: .4byte 0x00002288
.L080547BC: .4byte 0x00000347
.L080547C0: .4byte 0x00002292
.L080547C4:
	ldr r4, .L080547EC @ =0x00002284
	adds r1, r6, r4
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L080547D4
	b .L08054C4A
.L080547D4:
	movs r0, #0x3c
	str r0, [r1]
	ldr r5, .L080547F0 @ =0x00002288
	adds r1, r6, r5
	movs r0, #0xce
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r7, .L080547F4 @ =0x00002292
	adds r1, r6, r7
.L080547E6:
	movs r0, #0xd
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L080547EC: .4byte 0x00002284
.L080547F0: .4byte 0x00002288
.L080547F4: .4byte 0x00002292
.L080547F8:
	ldr r0, .L08054824 @ =0x00002284
	adds r1, r6, r0
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L08054808
	b .L08054C4A
.L08054808:
	movs r0, #0
	str r0, [r1]
	movs r1, #0x8b
	lsls r1, r1, #6
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq .L0805481C
	b .L08054C4A
.L0805481C:
	movs r3, #1
	str r3, [sp, #0x44]
	b .L08054C4A
	.align 2, 0
.L08054824: .4byte 0x00002284
.L08054828:
	ldr r4, .L08054858 @ =0x00002284
	adds r2, r6, r4
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	cmp r0, #0
	blt .L08054838
	b .L08054C4A
.L08054838:
	ldr r5, .L0805485C @ =0x0000042C
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x1e
	str r0, [r2]
	ldr r7, .L08054860 @ =0x00002288
	adds r1, r6, r7
	movs r0, #0xce
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, .L08054864 @ =0x00002292
	adds r1, r6, r0
	movs r0, #0xf
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L08054858: .4byte 0x00002284
.L0805485C: .4byte 0x0000042C
.L08054860: .4byte 0x00002288
.L08054864: .4byte 0x00002292
.L08054868:
	ldr r2, .L08054890 @ =0x00002284
	adds r1, r6, r2
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L08054878
	b .L08054C4A
.L08054878:
	movs r0, #0x3c
	str r0, [r1]
	ldr r3, .L08054894 @ =0x00002288
	adds r1, r6, r3
	movs r0, #0xd1
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r4, .L08054898 @ =0x00002292
	adds r1, r6, r4
	movs r0, #0x10
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L08054890: .4byte 0x00002284
.L08054894: .4byte 0x00002288
.L08054898: .4byte 0x00002292
.L0805489C:
	ldr r5, .L080548F4 @ =0x00002284
	adds r1, r6, r5
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	blt .L080548AC
	b .L08054C4A
.L080548AC:
	bl rand
	asrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L080548BC
	b .L08054BDC
.L080548BC:
	bl rand
	asrs r0, r0, #4
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	movs r4, #7
	movs r2, #0
	ldr r0, .L080548F8 @ =gUnk_080FA372
	add r7, sp, #0x30
	ldr r3, .L080548FC @ =0x00000434
	adds r3, r3, r6
	mov sb, r3
	add r5, sp, #0x10
	mov r8, r5
	mov r3, sp
	adds r3, #0x20
	str r3, [sp, #0x4c]
	mov r5, sp
	adds r5, #8
	str r5, [sp, #0x48]
	ldrb r0, [r0]
	cmp r1, r0
	bge .L08054900
	movs r4, #0
	b .L08054918
	.align 2, 0
.L080548F4: .4byte 0x00002284
.L080548F8: .4byte gUnk_080FA372
.L080548FC: .4byte 0x00000434
.L08054900:
	ldr r3, .L080549C8 @ =gUnk_080FA372
	adds r0, r2, r3
	ldrb r0, [r0]
	subs r1, r1, r0
	adds r2, #1
	cmp r2, #7
	bgt .L08054918
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r1, r0
	bge .L08054900
	adds r4, r2, #0
.L08054918:
	ldr r1, .L080549CC @ =gUnk_080FA37C
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r1, .L080549D0 @ =0x000023A4
	adds r0, r6, r1
	strh r4, [r0]
	ldr r0, [r6, #8]
	ldr r2, .L080549D4 @ =0x00001C38
	adds r0, r0, r2
	adds r1, r4, #0
	movs r2, #1
	bl AddAmountOfArticle__8RucksackUiUi
	movs r3, #0x86
	lsls r3, r3, #3
	adds r5, r6, r3
	adds r0, r7, #0
	adds r1, r4, #0
	bl __7ArticleUi
	adds r0, r7, #0
	bl GetIconId__C7Article
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl func_0805E860
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	mov r4, sb
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x10]
	movs r7, #0x9f
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x10]
	movs r3, #0
	cmp r0, #0
	beq .L08054990
	mov r0, r8
	ldrh r3, [r0, #4]
.L08054990:
	str r4, [sp, #0x50]
	lsls r2, r2, #5
	ldr r1, .L080549D8 @ =0x05000200
	adds r2, r2, r1
	add r0, sp, #0x20
	adds r1, r5, #0
	bl func_08008F0C
	ldr r2, [sp, #0x4c]
	mov sl, r2
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080549DC
	cmp r1, #0
	beq .L080549BC
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080549BC:
	ldr r7, [sp, #0x50]
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L08054AA6
	.align 2, 0
.L080549C8: .4byte gUnk_080FA372
.L080549CC: .4byte gUnk_080FA37C
.L080549D0: .4byte 0x000023A4
.L080549D4: .4byte 0x00001C38
.L080549D8: .4byte 0x05000200
.L080549DC:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x38]
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x34]
	add r1, sp, #0x38
	add r0, sp, #0x34
	cmp r4, #1
	bhs .L080549F8
	adds r0, r1, #0
.L080549F8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08054A16
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08054A1A
	mov r0, sb
	bl func_080D3BC0
	b .L08054A1A
.L08054A16:
	movs r0, #0
	mov sb, r0
.L08054A1A:
	adds r5, r0, #0
	str r5, [sp, #0x54]
	ldr r3, [sp, #0x50]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08054A40
.L08054A28:
	cmp r3, #0
	beq .L08054A38
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08054A38:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08054A28
.L08054A40:
	adds r5, r3, #0
	ldr r0, [sp, #0x38]
	cmp r0, #1
	bne .L08054A5C
	cmp r5, #0
	beq .L08054A58
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08054A58:
	adds r5, #0x10
	b .L08054A7E
.L08054A5C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08054A7C
.L08054A64:
	cmp r2, #0
	beq .L08054A74
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08054A74:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08054A64
.L08054A7C:
	adds r5, r2, #0
.L08054A7E:
	ldr r7, [sp, #0x50]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08054A90
.L08054A8A:
	adds r1, #0x10
	cmp r1, r2
	bne .L08054A8A
.L08054A90:
	cmp r0, #0
	beq .L08054A98
	bl free
.L08054A98:
	ldr r0, [sp, #0x54]
	add r0, sb
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x50]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08054AA6:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #8]
	movs r3, #0x9e
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #8]
	movs r3, #0
	cmp r0, #0
	beq .L08054ACA
	ldr r7, [sp, #0x48]
	ldrh r3, [r7, #4]
.L08054ACA:
	str r4, [sp, #0x50]
	lsls r2, r2, #5
	ldr r0, .L08054B00 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x20
	adds r1, r5, #0
	bl func_08008F0C
	ldr r1, [sp, #0x4c]
	mov sb, r1
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08054B04
	cmp r1, #0
	beq .L08054AF6
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08054AF6:
	ldr r5, [sp, #0x50]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08054BCC
	.align 2, 0
.L08054B00: .4byte 0x06010000
.L08054B04:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x40]
	ldr r7, [sp, #0x50]
	ldr r0, [r7]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x3c]
	add r1, sp, #0x40
	add r0, sp, #0x3c
	cmp r4, #1
	bhs .L08054B1E
	adds r0, r1, #0
.L08054B1E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08054B3C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08054B40
	mov r0, sl
	bl func_080D3BC0
	b .L08054B40
.L08054B3C:
	movs r0, #0
	mov sl, r0
.L08054B40:
	adds r5, r0, #0
	str r5, [sp, #0x54]
	ldr r0, [sp, #0x50]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08054B66
.L08054B4E:
	cmp r3, #0
	beq .L08054B5E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08054B5E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08054B4E
.L08054B66:
	adds r5, r3, #0
	ldr r0, [sp, #0x40]
	cmp r0, #1
	bne .L08054B82
	cmp r5, #0
	beq .L08054B7E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08054B7E:
	adds r5, #0x10
	b .L08054BA4
.L08054B82:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08054BA2
.L08054B8A:
	cmp r2, #0
	beq .L08054B9A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08054B9A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08054B8A
.L08054BA2:
	adds r5, r2, #0
.L08054BA4:
	ldr r7, [sp, #0x50]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08054BB6
.L08054BB0:
	adds r1, #0x10
	cmp r1, r2
	bne .L08054BB0
.L08054BB6:
	cmp r0, #0
	beq .L08054BBE
	bl free
.L08054BBE:
	ldr r0, [sp, #0x54]
	add r0, sl
	ldr r1, [sp, #0x54]
	ldr r2, [sp, #0x50]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08054BCC:
	ldr r3, .L08054BD8 @ =0x00000464
	adds r1, r6, r3
	movs r0, #1
	strb r0, [r1]
	b .L08054BE4
	.align 2, 0
.L08054BD8: .4byte 0x00000464
.L08054BDC:
	ldr r4, .L08054C08 @ =0x00002290
	adds r1, r6, r4
	movs r0, #9
	strh r0, [r1]
.L08054BE4:
	ldr r5, .L08054C0C @ =0x0000228C
	adds r1, r6, r5
	movs r0, #0
	strh r0, [r1]
	ldr r7, .L08054C10 @ =0x00002284
	adds r1, r6, r7
	movs r0, #0x1e
	str r0, [r1]
	ldr r0, .L08054C14 @ =0x00002288
	adds r1, r6, r0
	movs r0, #0xce
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r2, .L08054C18 @ =0x00002292
	adds r1, r6, r2
	movs r0, #0x11
	strh r0, [r1]
	b .L08054C4A
	.align 2, 0
.L08054C08: .4byte 0x00002290
.L08054C0C: .4byte 0x0000228C
.L08054C10: .4byte 0x00002284
.L08054C14: .4byte 0x00002288
.L08054C18: .4byte 0x00002292
.L08054C1C:
	ldr r3, .L08054D1C @ =0x00002284
	adds r2, r6, r3
	ldr r0, [r2]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08054C34
	ldr r4, .L08054D20 @ =0x0000228C
	adds r1, r6, r4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
.L08054C34:
	ldr r0, [r2]
	subs r0, #1
	str r0, [r2]
	cmp r0, #0
	bge .L08054C4A
	ldr r5, .L08054D24 @ =0x00002292
	adds r1, r6, r5
	movs r0, #4
	strh r0, [r1]
.L08054C46:
	movs r7, #1
	str r7, [sp, #0x44]
.L08054C4A:
	ldr r1, .L08054D28 @ =0x00002268
	adds r0, r6, r1
	movs r3, #2
	ldrsh r2, [r0, r3]
	ldr r4, .L08054D2C @ =0x00002330
	adds r1, r6, r4
	ldrh r0, [r1]
	subs r0, r2, r0
	cmp r0, #0x7f
	ble .L08054C64
	adds r0, r2, #0
	subs r0, #0x80
	strh r0, [r1]
.L08054C64:
	movs r5, #0x8c
	lsls r5, r5, #2
	adds r4, r6, r5
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r6, r7
	bl func_0805E8F0
	str r0, [r4]
	movs r0, #0x9a
	lsls r0, r0, #2
	adds r4, r6, r0
	movs r1, #0x8e
	lsls r1, r1, #2
	adds r0, r6, r1
	bl func_0805E8F0
	str r0, [r4]
	movs r2, #0xd3
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne .L08054CA4
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r4, r6, r3
	adds r5, #0xe8
	adds r0, r6, r5
	bl func_0805E8F0
	str r0, [r4]
.L08054CA4:
	movs r7, #0xe1
	lsls r7, r7, #2
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #1
	bne .L08054CC2
	movs r0, #0xe0
	lsls r0, r0, #2
	adds r4, r6, r0
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r6, r1
	bl func_0805E8F0
	str r0, [r4]
.L08054CC2:
	movs r2, #0xef
	lsls r2, r2, #2
	adds r5, r6, r2
	ldrb r0, [r5]
	cmp r0, #1
	bne .L08054CEC
	movs r3, #0xee
	lsls r3, r3, #2
	adds r4, r6, r3
	movs r7, #0xe2
	lsls r7, r7, #2
	adds r0, r6, r7
	bl func_0805E8F0
	str r0, [r4]
	ldrb r0, [r4]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge .L08054CEC
	movs r0, #0
	strb r0, [r5]
.L08054CEC:
	ldr r1, .L08054D30 @ =0x0000042C
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne .L08054D08
	movs r2, #0x85
	lsls r2, r2, #3
	adds r4, r6, r2
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r0, r6, r3
	bl func_0805E8F0
	str r0, [r4]
.L08054D08:
	ldr r0, [sp, #0x44]
.L08054D0A:
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08054D1C: .4byte 0x00002284
.L08054D20: .4byte 0x0000228C
.L08054D24: .4byte 0x00002292
.L08054D28: .4byte 0x00002268
.L08054D2C: .4byte 0x00002330
.L08054D30: .4byte 0x0000042C

	thumb_func_start func_08054D34
func_08054D34: @ 0x08054D34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r1, .L08054D64 @ =0x00002324
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08054DB0
	ldr r2, .L08054D68 @ =0x00002266
	adds r1, r6, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq .L08054D6C
	subs r0, #1
	movs r1, #0x32
	bl __divsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b .L08054D6E
	.align 2, 0
.L08054D64: .4byte 0x00002324
.L08054D68: .4byte 0x00002266
.L08054D6C:
	movs r0, #0
.L08054D6E:
	adds r7, r0, #0
	ldr r0, .L08054DA8 @ =0x00002326
	adds r5, r6, r0
	ldrb r0, [r5]
	movs r3, #5
	cmp r0, #5
	bhi .L08054D7E
	adds r3, r0, #0
.L08054D7E:
	ldr r2, .L08054DAC @ =gUnk_080FA246
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r3, r0
	adds r0, r0, r2
	ldrb r4, [r0]
	bl rand
	movs r1, #0x64
	bl __modsi3
	cmp r4, r0
	ble .L08054DB0
	movs r0, #5
	strb r0, [r5]
	movs r0, #6
	b .L08054F34
	.align 2, 0
.L08054DA8: .4byte 0x00002326
.L08054DAC: .4byte gUnk_080FA246
.L08054DB0:
	ldr r2, .L08054DC0 @ =0x000022D8
	adds r1, r6, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0x8f
	bne .L08054DC4
	movs r0, #7
	b .L08054F34
	.align 2, 0
.L08054DC0: .4byte 0x000022D8
.L08054DC4:
	movs r0, #0
	ldrsh r2, [r1, r0]
	ldr r1, .L08054DD8 @ =0x000022DC
	adds r0, r6, r1
	ldrb r1, [r0]
	cmp r2, r1
	ble .L08054DDC
	movs r4, #0x64
	b .L08054DF4
	.align 2, 0
.L08054DD8: .4byte 0x000022DC
.L08054DDC:
	adds r0, r1, #0
	subs r0, #8
	cmp r2, r0
	ble .L08054DE8
	movs r4, #0x46
	b .L08054DF4
.L08054DE8:
	adds r0, r1, #0
	subs r0, #0x10
	movs r4, #0
	cmp r2, r0
	ble .L08054DF4
	movs r4, #0x1e
.L08054DF4:
	ldr r2, .L08054E28 @ =0x000022D8
	adds r0, r6, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, r1, #0
	subs r0, #0x30
	cmp r0, #0
	bge .L08054E06
	adds r0, #7
.L08054E06:
	lsls r0, r0, #0xd
	lsrs r7, r0, #0x10
	ldr r0, .L08054E2C @ =0x00002264
	adds r1, r6, r0
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	beq .L08054E30
	subs r0, #1
	movs r1, #0x19
	bl __divsi3
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b .L08054E32
	.align 2, 0
.L08054E28: .4byte 0x000022D8
.L08054E2C: .4byte 0x00002264
.L08054E30:
	movs r5, #0
.L08054E32:
	bl rand
	movs r1, #0x64
	bl __modsi3
	cmp r4, r0
	ble .L08054EE8
	ldr r3, .L08054E64 @ =gUnk_080FA2E8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #2
	beq .L08054E6E
	cmp r0, #2
	bgt .L08054E68
	cmp r0, #1
	beq .L08054E86
	b .L08054E8A
	.align 2, 0
.L08054E64: .4byte gUnk_080FA2E8
.L08054E68:
	cmp r0, #3
	beq .L08054E74
	b .L08054E8A
.L08054E6E:
	movs r1, #2
	mov r8, r1
	b .L08054E8A
.L08054E74:
	bl rand
	movs r1, #0x64
	bl __modsi3
	movs r2, #2
	mov r8, r2
	cmp r0, #0x45
	bgt .L08054E8A
.L08054E86:
	movs r0, #1
	mov r8, r0
.L08054E8A:
	ldr r1, .L08054ED4 @ =0x00002324
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08054F32
	ldr r0, [r6, #8]
	ldr r2, .L08054ED8 @ =0x00001C38
	adds r0, r0, r2
	bl GetFirstFreeItemSlot__C8Rucksack
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq .L08054F32
	ldr r1, .L08054EDC @ =0x00002270
	adds r0, r6, r1
	ldr r1, [r0]
	ldr r0, .L08054EE0 @ =0x0000012B
	cmp r1, r0
	ble .L08054F32
	ldr r2, .L08054EE4 @ =0x00002264
	adds r0, r6, r2
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x64
	ble .L08054F32
	bl rand
	movs r1, #0x64
	bl __modsi3
	cmp r0, #4
	bgt .L08054F32
	movs r2, #8
	mov r8, r2
	b .L08054F32
	.align 2, 0
.L08054ED4: .4byte 0x00002324
.L08054ED8: .4byte 0x00001C38
.L08054EDC: .4byte 0x00002270
.L08054EE0: .4byte 0x0000012B
.L08054EE4: .4byte 0x00002264
.L08054EE8:
	ldr r3, .L08054F0C @ =gUnk_080FA264
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	movs r2, #0xb
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0]
	cmp r0, #2
	beq .L08054F16
	cmp r0, #2
	bgt .L08054F10
	cmp r0, #1
	beq .L08054F2E
	b .L08054F32
	.align 2, 0
.L08054F0C: .4byte gUnk_080FA264
.L08054F10:
	cmp r0, #3
	beq .L08054F1C
	b .L08054F32
.L08054F16:
	movs r1, #5
	mov r8, r1
	b .L08054F32
.L08054F1C:
	bl rand
	movs r1, #0x64
	bl __modsi3
	movs r2, #4
	mov r8, r2
	cmp r0, #0x45
	bgt .L08054F32
.L08054F2E:
	movs r0, #3
	mov r8, r0
.L08054F32:
	mov r0, r8
.L08054F34:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08054F40
func_08054F40: @ 0x08054F40
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, .L08055074 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, .L08055078 @ =0x0600E000
	mov sb, r0
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L0805507C @ =0x0600E800
	mov r8, r1
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L08055080 @ =0x0600F000
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r0, .L08055084 @ =gUnk_08738AD8
	ldr r2, .L08055088 @ =0x00001D5A
	adds r4, r6, r2
	adds r1, r4, #0
	bl Unpack
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r0, r4, #0
	mov r1, sb
	bl func_08008E64
	adds r0, r4, #0
	mov r1, r8
	movs r2, #0xc0
	bl func_08008E64
	ldr r0, .L0805508C @ =gUnk_08738CC8
	adds r1, r4, #0
	bl Unpack
	ldr r0, .L08055090 @ =gUnk_08738CF0
	adds r1, r4, #0
	bl Unpack
	ldr r0, .L08055094 @ =gUnk_08738D1C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L08055098 @ =gUnk_087399C4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl func_08008E64
	ldr r0, .L0805509C @ =gUnk_08739A64
	movs r3, #0xab
	lsls r3, r3, #3
	adds r1, r6, r3
	bl Unpack
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r4, #0
	strh r2, [r0]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L080550A0 @ =0x00001C43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L080550A4 @ =0x00001D42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L080550A8 @ =0x00001E41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x14]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x16]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1c]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08055074: .4byte 0x06007FE0
.L08055078: .4byte 0x0600E000
.L0805507C: .4byte 0x0600E800
.L08055080: .4byte 0x0600F000
.L08055084: .4byte gUnk_08738AD8
.L08055088: .4byte 0x00001D5A
.L0805508C: .4byte gUnk_08738CC8
.L08055090: .4byte gUnk_08738CF0
.L08055094: .4byte gUnk_08738D1C
.L08055098: .4byte gUnk_087399C4
.L0805509C: .4byte gUnk_08739A64
.L080550A0: .4byte 0x00001C43
.L080550A4: .4byte 0x00001D42
.L080550A8: .4byte 0x00001E41

	thumb_func_start func_080550AC
func_080550AC: @ 0x080550AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r4, #0x11
	cmp r1, #0
	ble .L080550D6
	ldr r3, .L08055160 @ =0x00003046
	ldr r2, .L08055164 @ =0x00003047
	ldr r6, .L08055168 @ =0x0000219E
	adds r0, r5, r6
.L080550C8:
	strh r3, [r0]
	strh r2, [r0, #2]
	subs r1, #0x19
	subs r0, #0x40
	subs r4, #1
	cmp r1, #0
	bgt .L080550C8
.L080550D6:
	lsls r0, r4, #3
	adds r0, #8
	ldr r7, .L0805516C @ =0x000022DC
	adds r1, r5, r7
	strb r0, [r1]
	lsls r1, r4, #6
	ldr r6, .L08055170 @ =0x00001D5E
	adds r3, r5, r6
	adds r2, r3, r1
	ldr r0, .L08055174 @ =0x0000304A
	strh r0, [r2]
	movs r0, #0xeb
	lsls r0, r0, #5
	adds r2, r5, r0
	adds r1, r2, r1
	ldr r0, .L08055178 @ =0x0000304B
	strh r0, [r1]
	subs r4, #1
	lsls r1, r4, #6
	adds r3, r3, r1
	subs r0, #3
	strh r0, [r3]
	adds r2, r2, r1
	adds r0, #1
	strh r0, [r2]
	subs r4, #1
	cmp r4, #5
	ble .L08055124
	ldr r2, .L0805517C @ =0x00003044
	ldr r1, .L08055180 @ =0x00003045
	lsls r0, r4, #6
	adds r0, r0, r6
	adds r0, r0, r5
.L08055118:
	strh r2, [r0]
	strh r1, [r0, #2]
	subs r0, #0x40
	subs r4, #1
	cmp r4, #5
	bgt .L08055118
.L08055124:
	adds r0, r5, #0
	bl func_08008910
	adds r6, r0, #0
	ldr r2, .L08055184 @ =0x00001D5A
	adds r1, r5, r2
	mov r0, sp
	ldr r2, .L08055188 @ =0x0600F000
	movs r3, #0xa0
	lsls r3, r3, #3
	bl func_08008F0C
	mov sb, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0805518C
	cmp r1, #0
	beq .L08055156
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08055156:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08055252
	.align 2, 0
.L08055160: .4byte 0x00003046
.L08055164: .4byte 0x00003047
.L08055168: .4byte 0x0000219E
.L0805516C: .4byte 0x000022DC
.L08055170: .4byte 0x00001D5E
.L08055174: .4byte 0x0000304A
.L08055178: .4byte 0x0000304B
.L0805517C: .4byte 0x00003044
.L08055180: .4byte 0x00003045
.L08055184: .4byte 0x00001D5A
.L08055188: .4byte 0x0600F000
.L0805518C:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r1, [r6]
	mov r7, sl
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x10]
	add r2, sp, #0x14
	add r0, sp, #0x10
	cmp r4, #1
	bhs .L080551A6
	adds r0, r2, #0
.L080551A6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080551C6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080551C2
	mov r0, r8
	bl func_080D3BC0
.L080551C2:
	ldr r1, [r6]
	b .L080551CA
.L080551C6:
	movs r0, #0
	mov r8, r0
.L080551CA:
	adds r4, r0, #0
	str r4, [sp, #0x18]
	adds r2, r1, #0
	adds r3, r4, #0
	cmp r2, sl
	beq .L080551EE
.L080551D6:
	cmp r3, #0
	beq .L080551E6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080551E6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080551D6
.L080551EE:
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne .L0805520A
	cmp r4, #0
	beq .L08055206
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08055206:
	adds r4, #0x10
	b .L0805522C
.L0805520A:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L0805522A
.L08055212:
	cmp r2, #0
	beq .L08055222
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055222:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08055212
.L0805522A:
	adds r4, r2, #0
.L0805522C:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0805523C
.L08055236:
	adds r0, #0x10
	cmp r0, r2
	bne .L08055236
.L0805523C:
	cmp r1, #0
	beq .L08055246
	adds r0, r1, #0
	bl free
.L08055246:
	ldr r0, [sp, #0x18]
	add r0, r8
	ldr r7, [sp, #0x18]
	str r7, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L08055252:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08055264
func_08055264: @ 0x08055264
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r7, r0, #0
	mov r1, sp
	movs r0, #0
	str r0, [sp]
	strh r0, [r1, #4]
	add r1, sp, #8
	str r0, [sp, #8]
	strh r0, [r1, #4]
	add r5, sp, #0x10
	str r0, [sp, #0x10]
	strh r0, [r5, #4]
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	strh r0, [r1, #4]
	movs r2, #0x8e
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r4, #0x8f
	lsls r4, r4, #2
	adds r0, r7, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x20
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r3, [sp, #0x10]
	mov r8, r3
	movs r6, #0x8e
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L0805568C @ =0x05000200
	mov sb, r1
	adds r1, r0, r1
	ldr r0, [sp, #0x10]
	movs r2, #0
	mov sl, r4
	cmp r0, #0
	beq .L080552F0
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L080552F0:
	mov r0, r8
	bl func_08008E64
	movs r4, #0x9c
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r5, #0x9d
	lsls r5, r5, #2
	adds r4, r7, r5
	lsls r2, r2, #2
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sl
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sl
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	ldr r5, [sp, #0x10]
	movs r6, #0x90
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	mov r2, sb
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	str r4, [sp, #0x60]
	cmp r0, #0
	beq .L08055354
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L08055354:
	adds r0, r5, #0
	bl func_08008E64
	movs r6, #0
	movs r5, #0
	movs r4, #0xab
	lsls r4, r4, #2
	adds r4, r7, r4
	str r4, [sp, #0x48]
	adds r0, r7, #0
	adds r0, #0x80
	str r0, [sp, #0x54]
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r1, r7, r1
	str r1, [sp, #0x4c]
	movs r2, #0xc7
	lsls r2, r2, #2
	adds r2, r7, r2
	str r2, [sp, #0x50]
	movs r3, #0xd5
	lsls r3, r3, #2
	adds r3, r7, r3
	str r3, [sp, #0x58]
	movs r4, #0x9c
	lsls r4, r4, #2
	adds r4, r4, r7
	mov r8, r4
	mov sb, sl
.L0805538E:
	mov r0, r8
	adds r1, r5, #0
	bl func_0805E860
	mov r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x60]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	lsls r1, r5, #2
	ldr r4, .L08055690 @ =0x00002334
	adds r0, r7, r4
	adds r0, r0, r1
	str r6, [r0]
	ldr r4, [sp, #8]
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r6
	lsls r0, r0, #5
	ldr r2, .L08055694 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L080553F6
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L080553F6:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq .L08055408
	mov r4, sp
	ldrh r1, [r4, #0xc]
.L08055408:
	lsrs r0, r1, #5
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #0x1a
	ble .L0805538E
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r6, [sp, #0x48]
	ldr r0, [r6]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	movs r5, #0x92
	lsls r5, r5, #3
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r6, .L0805568C @ =0x05000200
	adds r1, r0, r6
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805546A
	mov r0, sp
	ldrh r2, [r0, #0x14]
.L0805546A:
	adds r0, r4, #0
	bl func_08008E64
	movs r6, #0
	movs r5, #0
	mov sb, sl
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x40]
	movs r2, #0x91
	lsls r2, r2, #3
	adds r2, r2, r7
	mov r8, r2
.L08055484:
	mov r0, sb
	ldr r1, [sp, #0x54]
	adds r2, r5, #0
	bl func_0805E790
	mov r1, sp
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #8]
	mov r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r6
	lsls r0, r0, #5
	ldr r2, .L08055694 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L080554BC
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L080554BC:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq .L080554CE
	ldr r4, [sp, #0x40]
	ldrh r1, [r4, #4]
.L080554CE:
	lsrs r0, r1, #5
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #2
	ble .L08055484
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r6, r7, r5
	ldr r1, .L08055698 @ =0x0000091A
	adds r0, r6, #0
	bl func_0805E860
	ldr r1, [r6]
	ldr r3, [r1]
	ldrh r2, [r6, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x4c]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r4, sl
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0x44]
	ldr r5, [sp, #0x10]
	movs r1, #0x96
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L0805568C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L08055540
	ldr r3, [sp, #0x44]
	ldrh r2, [r3, #4]
.L08055540:
	adds r0, r5, #0
	bl func_08008E64
	add r5, sp, #8
	mov sb, r5
	ldr r0, [sp, #8]
	mov r8, r0
	movs r1, #0x95
	lsls r1, r1, #3
	adds r5, r7, r1
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L08055694 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805556E
	mov r3, sb
	ldrh r2, [r3, #4]
.L0805556E:
	mov r0, r8
	bl func_08008E64
	ldr r1, .L0805569C @ =0x0000091B
	adds r0, r6, #0
	bl func_0805E860
	ldr r1, [r6]
	ldr r3, [r1]
	ldrh r2, [r6, #0xc]
	lsls r2, r2, #2
	ldr r6, [sp, #0x4c]
	ldr r0, [r6]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r6, [sp, #8]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r5, .L080556A0 @ =0x06010040
	adds r1, r0, r5
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L080555CA
	mov r0, sb
	ldrh r2, [r0, #4]
.L080555CA:
	adds r0, r6, #0
	bl func_08008E64
	movs r1, #0xc6
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x50]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	ldr r5, [sp, #0x10]
	movs r6, #0x98
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L0805568C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L08055628
	ldr r3, [sp, #0x44]
	ldrh r2, [r3, #4]
.L08055628:
	adds r0, r5, #0
	bl func_08008E64
	movs r5, #0xd3
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r6, #0
	strb r6, [r0]
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x58]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	ldr r4, [sp, #0x10]
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L0805568C @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	b .L080556A4
	.align 2, 0
.L0805568C: .4byte 0x05000200
.L08055690: .4byte 0x00002334
.L08055694: .4byte 0x06010000
.L08055698: .4byte 0x0000091A
.L0805569C: .4byte 0x0000091B
.L080556A0: .4byte 0x06010040
.L080556A4:
	beq .L080556AA
	ldr r3, [sp, #0x44]
	ldrh r2, [r3, #4]
.L080556AA:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, .L080557A4 @ =0x00002324
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #1
	beq .L080556BC
	b .L080557E8
.L080556BC:
	movs r5, #0
	mov sb, r5
	movs r6, #0xf1
	lsls r6, r6, #2
	adds r6, r7, r6
	str r6, [sp, #0x5c]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r8, r0
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r5, r7, r1
	movs r2, #0xa1
	lsls r2, r2, #3
	adds r6, r7, r2
.L080556DC:
	ldr r1, [r5, #0xc]
	adds r0, r6, #0
	bl func_080073E0
	adds r0, r6, #0
	bl func_0800736C
	str r0, [r5, #0xc]
	ldr r1, .L080557A8 @ =gUnk_080FA36C
	mov r3, sb
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	mov r0, r8
	bl func_0805E860
	mov r4, r8
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x5c]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x10]
	ldr r1, [r5, #0xc]
	adds r0, r6, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L080557AC @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805574C
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805574C:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #8]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L080557B0 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805576E
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805576E:
	adds r0, r4, #0
	bl func_08008E64
	adds r5, #0x10
	adds r6, #0x10
	movs r4, #1
	add sb, r4
	mov r0, sb
	cmp r0, #2
	ble .L080556DC
	movs r6, #0x28
	movs r5, #0
	mov r8, r4
	ldr r1, .L080557B4 @ =0x000022E0
	adds r4, r7, r1
.L0805578C:
	adds r0, r5, #0
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq .L080557B8
	bl rand
	asrs r0, r0, #8
	mov r3, r8
	ands r0, r3
	adds r0, #1
	b .L080557C4
	.align 2, 0
.L080557A4: .4byte 0x00002324
.L080557A8: .4byte gUnk_080FA36C
.L080557AC: .4byte 0x05000200
.L080557B0: .4byte 0x06010000
.L080557B4: .4byte 0x000022E0
.L080557B8:
	bl rand
	asrs r0, r0, #8
	movs r1, #3
	ands r0, r1
	adds r0, #4
.L080557C4:
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r6, [r4]
	adds r0, r5, #0
	movs r1, #3
	bl __modsi3
	strh r0, [r4, #2]
	adds r4, #4
	adds r5, #1
	cmp r5, #0xf
	ble .L0805578C
	b .L080558A2
.L080557E8:
	movs r5, #0x9d
	lsls r5, r5, #3
	adds r4, r7, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0xfe
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	subs r5, #0xec
	adds r0, r7, r5
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sl
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sl
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r5, [sp, #0x10]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r4, .L080558B4 @ =0x05000200
	adds r1, r0, r4
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L08055854
	mov r0, sp
	ldrh r2, [r0, #0x14]
.L08055854:
	adds r0, r5, #0
	bl func_08008E64
	ldr r4, [sp, #8]
	movs r1, #0x9c
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L080558B8 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805587A
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805587A:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, .L080558BC @ =0x0000042C
	adds r0, r7, r4
	strb r6, [r0]
	movs r5, #0x9f
	lsls r5, r5, #3
	adds r4, r7, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r1, .L080558C0 @ =0x00000464
	adds r0, r7, r1
	strb r6, [r0]
.L080558A2:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080558B4: .4byte 0x05000200
.L080558B8: .4byte 0x06010000
.L080558BC: .4byte 0x0000042C
.L080558C0: .4byte 0x00000464

	thumb_func_start func_080558C4
func_080558C4: @ 0x080558C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x128
	adds r6, r0, #0
	add r1, sp, #4
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [sp, #0x10]
	strb r2, [r1, #0x10]
	strb r2, [r1, #0x11]
	str r0, [sp, #0x18]
	strb r2, [r1, #0x18]
	add r4, sp, #0x20
	str r0, [sp, #0x20]
	strh r0, [r4, #4]
	add r3, sp, #0x28
	str r0, [sp, #0x28]
	strh r0, [r3, #4]
	add r2, sp, #0x30
	str r0, [sp, #0x30]
	strh r0, [r2, #4]
	add r1, sp, #0x38
	str r0, [sp, #0x38]
	strh r0, [r1, #4]
	ldr r1, .L0805598C @ =0x00002321
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	add r2, sp, #0x40
	mov sb, r2
	cmp r0, #3
	beq .L08055918
	b .L08055BD2
.L08055918:
	adds r1, r6, #0
	adds r1, #0xe0
	mov r0, sb
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x28]
	movs r7, #0x93
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08055958
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08055958:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08055990 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	adds r1, r5, #0
	bl func_08008F0C
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08055994
	cmp r1, #0
	beq .L08055980
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055980:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08055A5C
	.align 2, 0
.L0805598C: .4byte 0x00002321
.L08055990: .4byte 0x06010000
.L08055994:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x64]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x60]
	add r1, sp, #0x64
	add r0, sp, #0x60
	cmp r4, #1
	bhs .L080559AE
	adds r0, r1, #0
.L080559AE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080559CC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080559D0
	mov r0, sl
	bl func_080D3BC0
	b .L080559D0
.L080559CC:
	movs r0, #0
	mov sl, r0
.L080559D0:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r0, [sp, #0x120]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080559F6
.L080559DE:
	cmp r3, #0
	beq .L080559EE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080559EE:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080559DE
.L080559F6:
	adds r5, r3, #0
	ldr r0, [sp, #0x64]
	cmp r0, #1
	bne .L08055A12
	cmp r5, #0
	beq .L08055A0E
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055A0E:
	adds r5, #0x10
	b .L08055A34
.L08055A12:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08055A32
.L08055A1A:
	cmp r2, #0
	beq .L08055A2A
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055A2A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08055A1A
.L08055A32:
	adds r5, r2, #0
.L08055A34:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08055A46
.L08055A40:
	adds r1, #0x10
	cmp r1, r2
	bne .L08055A40
.L08055A46:
	cmp r0, #0
	beq .L08055A4E
	bl free
.L08055A4E:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08055A5C:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x30]
	movs r3, #0x94
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x30]
	movs r3, #0
	cmp r0, #0
	beq .L08055A80
	mov r7, sp
	ldrh r3, [r7, #0x34]
.L08055A80:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r0, .L08055AB8 @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x40
	adds r1, r5, #0
	bl func_08008F0C
	mov r1, sb
	str r1, [sp, #0xe8]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08055ABC
	cmp r1, #0
	beq .L08055AAC
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055AAC:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08055B84
	.align 2, 0
.L08055AB8: .4byte 0x05000200
.L08055ABC:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x6c]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x68]
	add r1, sp, #0x6c
	add r0, sp, #0x68
	cmp r4, #1
	bhs .L08055AD6
	adds r0, r1, #0
.L08055AD6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08055AF4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08055AF8
	mov r0, sl
	bl func_080D3BC0
	b .L08055AF8
.L08055AF4:
	movs r0, #0
	mov sl, r0
.L08055AF8:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r0, [sp, #0x120]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08055B1E
.L08055B06:
	cmp r3, #0
	beq .L08055B16
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055B16:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08055B06
.L08055B1E:
	adds r5, r3, #0
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne .L08055B3A
	cmp r5, #0
	beq .L08055B36
	adds r0, r5, #0
	ldr r1, [sp, #0xe8]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055B36:
	adds r5, #0x10
	b .L08055B5C
.L08055B3A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08055B5A
.L08055B42:
	cmp r2, #0
	beq .L08055B52
	adds r0, r2, #0
	ldr r1, [sp, #0xe8]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055B52:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08055B42
.L08055B5A:
	adds r5, r2, #0
.L08055B5C:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08055B6E
.L08055B68:
	adds r1, #0x10
	cmp r1, r2
	bne .L08055B68
.L08055B6E:
	cmp r0, #0
	beq .L08055B76
	bl free
.L08055B76:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08055B84:
	add r0, sp, #4
	movs r1, #0x40
	strh r1, [r0]
	strh r1, [r0, #2]
	movs r3, #0x94
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	movs r4, #0x93
	lsls r4, r4, #3
	adds r0, r6, r4
	ldr r1, [r0, #4]
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08055BCA
	mov r5, sp
	ldrh r2, [r5, #0x24]
.L08055BCA:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L08055BD2:
	ldr r7, .L08055C0C @ =0x0000225C
	adds r0, r6, r7
	ldr r4, [r0]
	movs r0, #0xab
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [sp, #0x114]
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r1, r6, r1
	str r1, [sp, #0x118]
	movs r2, #0x8f
	lsls r2, r2, #2
	adds r2, r6, r2
	str r2, [sp, #0x110]
	cmp r4, #0
	bne .L08055BF8
	bl sub_08056442
.L08055BF8:
	cmp r4, #2
	bne .L08055BFE
	b .L08055EB0
.L08055BFE:
	cmp r4, #2
	bgt .L08055C10
	cmp r4, #1
	beq .L08055C18
	bl .L080563F4
	.align 2, 0
.L08055C0C: .4byte 0x0000225C
.L08055C10:
	cmp r4, #3
	bne .L08055C16
	b .L08056154
.L08055C16:
	b .L080563F4
.L08055C18:
	adds r1, r6, #0
	adds r1, #0xb0
	mov r0, sb
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	ldr r3, .L08055C98 @ =0x00002260
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #1
	bne .L08055C40
	b .L080563F4
.L08055C40:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	movs r1, #0x93
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08055C66
	mov r7, sp
	ldrh r3, [r7, #0x2c]
.L08055C66:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r0, .L08055C9C @ =0x06010000
	adds r2, r2, r0
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08055CA0
	cmp r1, #0
	beq .L08055C8E
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055C8E:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08055D7E
	.align 2, 0
.L08055C98: .4byte 0x00002260
.L08055C9C: .4byte 0x06010000
.L08055CA0:
	mov r8, r1
	str r4, [sp, #0x74]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x70]
	add r1, sp, #0x74
	add r0, sp, #0x70
	cmp r4, #1
	bhs .L08055CB8
	adds r0, r1, #0
.L08055CB8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08055CD6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08055CDA
	mov r0, sl
	bl func_080D3BC0
	b .L08055CDA
.L08055CD6:
	movs r0, #0
	mov sl, r0
.L08055CDA:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r0, [sp, #0x120]
	ldr r2, [r0]
	adds r3, r5, #0
	movs r1, #0xab
	lsls r1, r1, #2
	adds r1, r6, r1
	str r1, [sp, #0x114]
	movs r4, #0xb9
	lsls r4, r4, #2
	adds r4, r6, r4
	str r4, [sp, #0x118]
	movs r5, #0x8f
	lsls r5, r5, #2
	adds r5, r6, r5
	str r5, [sp, #0x110]
	cmp r2, r8
	beq .L08055D18
.L08055D00:
	cmp r3, #0
	beq .L08055D10
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055D10:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08055D00
.L08055D18:
	adds r5, r3, #0
	ldr r0, [sp, #0x74]
	cmp r0, #1
	bne .L08055D34
	cmp r5, #0
	beq .L08055D30
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055D30:
	adds r5, #0x10
	b .L08055D56
.L08055D34:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08055D54
.L08055D3C:
	cmp r2, #0
	beq .L08055D4C
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055D4C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08055D3C
.L08055D54:
	adds r5, r2, #0
.L08055D56:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08055D68
.L08055D62:
	adds r1, #0x10
	cmp r1, r2
	bne .L08055D62
.L08055D68:
	cmp r0, #0
	beq .L08055D70
	bl free
.L08055D70:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08055D7E:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x30]
	movs r3, #0x94
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x30]
	movs r3, #0
	cmp r0, #0
	beq .L08055DA2
	mov r7, sp
	ldrh r3, [r7, #0x34]
.L08055DA2:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r0, .L08055DD8 @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x40
	adds r1, r5, #0
	bl func_08008F0C
	mov r1, sb
	str r1, [sp, #0xec]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08055DDC
	cmp r1, #0
	beq .L08055DCE
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055DCE:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08055EA4
	.align 2, 0
.L08055DD8: .4byte 0x05000200
.L08055DDC:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x7c]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x78]
	add r1, sp, #0x7c
	add r0, sp, #0x78
	cmp r4, #1
	bhs .L08055DF6
	adds r0, r1, #0
.L08055DF6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08055E14
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08055E18
	mov r0, sl
	bl func_080D3BC0
	b .L08055E18
.L08055E14:
	movs r0, #0
	mov sl, r0
.L08055E18:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r0, [sp, #0x120]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08055E3E
.L08055E26:
	cmp r3, #0
	beq .L08055E36
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055E36:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08055E26
.L08055E3E:
	adds r5, r3, #0
	ldr r0, [sp, #0x7c]
	cmp r0, #1
	bne .L08055E5A
	cmp r5, #0
	beq .L08055E56
	adds r0, r5, #0
	ldr r1, [sp, #0xec]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055E56:
	adds r5, #0x10
	b .L08055E7C
.L08055E5A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08055E7A
.L08055E62:
	cmp r2, #0
	beq .L08055E72
	adds r0, r2, #0
	ldr r1, [sp, #0xec]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055E72:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08055E62
.L08055E7A:
	adds r5, r2, #0
.L08055E7C:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08055E8E
.L08055E88:
	adds r1, #0x10
	cmp r1, r2
	bne .L08055E88
.L08055E8E:
	cmp r0, #0
	beq .L08055E96
	bl free
.L08055E96:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08055EA4:
	ldr r3, .L08055EAC @ =0x00002260
	adds r1, r6, r3
	movs r0, #1
	b .L080563F2
	.align 2, 0
.L08055EAC: .4byte 0x00002260
.L08055EB0:
	movs r4, #0x88
	lsls r4, r4, #1
	adds r1, r6, r4
	mov r0, sb
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	ldr r3, .L08055F30 @ =0x00002260
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #2
	bne .L08055EDA
	b .L080563F4
.L08055EDA:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x28]
	movs r7, #0x93
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08055EFE
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08055EFE:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08055F34 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	adds r1, r5, #0
	bl func_08008F0C
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08055F38
	cmp r1, #0
	beq .L08055F26
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055F26:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0805601C
	.align 2, 0
.L08055F30: .4byte 0x00002260
.L08055F34: .4byte 0x06010000
.L08055F38:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x84
	str r0, [r1]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x80]
	ldr r0, [r1]
	add r2, sp, #0x80
	cmp r4, r0
	bhs .L08055F56
	adds r2, r1, #0
.L08055F56:
	ldr r0, [r2]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08055F74
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08055F78
	mov r0, sl
	bl func_080D3BC0
	b .L08055F78
.L08055F74:
	movs r0, #0
	mov sl, r0
.L08055F78:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x120]
	ldr r2, [r3]
	adds r3, r5, #0
	movs r4, #0xab
	lsls r4, r4, #2
	adds r4, r6, r4
	str r4, [sp, #0x114]
	movs r5, #0xb9
	lsls r5, r5, #2
	adds r5, r6, r5
	str r5, [sp, #0x118]
	movs r7, #0x8f
	lsls r7, r7, #2
	adds r7, r6, r7
	str r7, [sp, #0x110]
	cmp r2, r8
	beq .L08055FB6
.L08055F9E:
	cmp r3, #0
	beq .L08055FAE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055FAE:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08055F9E
.L08055FB6:
	adds r5, r3, #0
	ldr r1, [sp, #0x84]
	cmp r1, #1
	bne .L08055FD2
	cmp r5, #0
	beq .L08055FCE
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08055FCE:
	adds r5, #0x10
	b .L08055FF4
.L08055FD2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08055FF2
.L08055FDA:
	cmp r2, #0
	beq .L08055FEA
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08055FEA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08055FDA
.L08055FF2:
	adds r5, r2, #0
.L08055FF4:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08056006
.L08056000:
	adds r1, #0x10
	cmp r1, r2
	bne .L08056000
.L08056006:
	cmp r0, #0
	beq .L0805600E
	bl free
.L0805600E:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0805601C:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x30]
	movs r3, #0x94
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x30]
	movs r3, #0
	cmp r0, #0
	beq .L08056040
	mov r7, sp
	ldrh r3, [r7, #0x34]
.L08056040:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r0, .L08056078 @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x40
	adds r1, r5, #0
	bl func_08008F0C
	mov r1, sb
	str r1, [sp, #0xf0]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L0805607C
	cmp r1, #0
	beq .L0805606C
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0805606C:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08056148
	.align 2, 0
.L08056078: .4byte 0x05000200
.L0805607C:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x8c
	str r0, [r1]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x88
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L0805609A
	adds r0, r1, #0
.L0805609A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080560B8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080560BC
	mov r0, sl
	bl func_080D3BC0
	b .L080560BC
.L080560B8:
	movs r0, #0
	mov sl, r0
.L080560BC:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x120]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080560E2
.L080560CA:
	cmp r3, #0
	beq .L080560DA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080560DA:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080560CA
.L080560E2:
	adds r5, r3, #0
	ldr r1, [sp, #0x8c]
	cmp r1, #1
	bne .L080560FE
	cmp r5, #0
	beq .L080560FA
	adds r0, r5, #0
	ldr r1, [sp, #0xf0]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080560FA:
	adds r5, #0x10
	b .L08056120
.L080560FE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0805611E
.L08056106:
	cmp r2, #0
	beq .L08056116
	adds r0, r2, #0
	ldr r1, [sp, #0xf0]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056116:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08056106
.L0805611E:
	adds r5, r2, #0
.L08056120:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08056132
.L0805612C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805612C
.L08056132:
	cmp r0, #0
	beq .L0805613A
	bl free
.L0805613A:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08056148:
	ldr r3, .L08056150 @ =0x00002260
	adds r1, r6, r3
	movs r0, #2
	b .L080563F2
	.align 2, 0
.L08056150: .4byte 0x00002260
.L08056154:
	movs r4, #0xb8
	lsls r4, r4, #1
	adds r1, r6, r4
	mov r0, sb
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	ldr r3, .L080561D4 @ =0x00002260
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L0805617E
	b .L080563F4
.L0805617E:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x28]
	movs r7, #0x93
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L080561A2
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L080561A2:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L080561D8 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	adds r1, r5, #0
	bl func_08008F0C
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080561DC
	cmp r1, #0
	beq .L080561CA
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080561CA:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080562C0
	.align 2, 0
.L080561D4: .4byte 0x00002260
.L080561D8: .4byte 0x06010000
.L080561DC:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x94
	str r0, [r1]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x90
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080561FA
	adds r0, r1, #0
.L080561FA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08056218
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L0805621C
	mov r0, sl
	bl func_080D3BC0
	b .L0805621C
.L08056218:
	movs r0, #0
	mov sl, r0
.L0805621C:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x120]
	ldr r2, [r3]
	adds r3, r5, #0
	movs r4, #0xab
	lsls r4, r4, #2
	adds r4, r6, r4
	str r4, [sp, #0x114]
	movs r5, #0xb9
	lsls r5, r5, #2
	adds r5, r6, r5
	str r5, [sp, #0x118]
	movs r7, #0x8f
	lsls r7, r7, #2
	adds r7, r6, r7
	str r7, [sp, #0x110]
	cmp r2, r8
	beq .L0805625A
.L08056242:
	cmp r3, #0
	beq .L08056252
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056252:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08056242
.L0805625A:
	adds r5, r3, #0
	ldr r1, [sp, #0x94]
	cmp r1, #1
	bne .L08056276
	cmp r5, #0
	beq .L08056272
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056272:
	adds r5, #0x10
	b .L08056298
.L08056276:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08056296
.L0805627E:
	cmp r2, #0
	beq .L0805628E
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805628E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0805627E
.L08056296:
	adds r5, r2, #0
.L08056298:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080562AA
.L080562A4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080562A4
.L080562AA:
	cmp r0, #0
	beq .L080562B2
	bl free
.L080562B2:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080562C0:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x30]
	movs r3, #0x94
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x30]
	movs r3, #0
	cmp r0, #0
	beq .L080562E4
	mov r7, sp
	ldrh r3, [r7, #0x34]
.L080562E4:
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r0, .L0805631C @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x40
	adds r1, r5, #0
	bl func_08008F0C
	mov r1, sb
	str r1, [sp, #0xf4]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08056320
	cmp r1, #0
	beq .L08056310
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056310:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080563EC
	.align 2, 0
.L0805631C: .4byte 0x05000200
.L08056320:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x9c
	str r0, [r1]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L0805633E
	adds r0, r1, #0
.L0805633E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805635C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08056360
	mov r0, sl
	bl func_080D3BC0
	b .L08056360
.L0805635C:
	movs r0, #0
	mov sl, r0
.L08056360:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x120]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08056386
.L0805636E:
	cmp r3, #0
	beq .L0805637E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805637E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0805636E
.L08056386:
	adds r5, r3, #0
	ldr r1, [sp, #0x9c]
	cmp r1, #1
	bne .L080563A2
	cmp r5, #0
	beq .L0805639E
	adds r0, r5, #0
	ldr r1, [sp, #0xf4]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0805639E:
	adds r5, #0x10
	b .L080563C4
.L080563A2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080563C2
.L080563AA:
	cmp r2, #0
	beq .L080563BA
	adds r0, r2, #0
	ldr r1, [sp, #0xf4]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080563BA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080563AA
.L080563C2:
	adds r5, r2, #0
.L080563C4:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080563D6
.L080563D0:
	adds r1, #0x10
	cmp r1, r2
	bne .L080563D0
.L080563D6:
	cmp r0, #0
	beq .L080563DE
	bl free
.L080563DE:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080563EC:
	ldr r3, .L080567A8 @ =0x00002260
	adds r1, r6, r3
	movs r0, #3
.L080563F2:
	str r0, [r1]
.L080563F4:
	add r0, sp, #4
	movs r1, #0x40
	strh r1, [r0]
	strh r1, [r0, #2]
	movs r4, #0x94
	lsls r4, r4, #3
	adds r0, r6, r4
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	movs r5, #0x93
	lsls r5, r5, #3
	adds r0, r6, r5
	ldr r1, [r0, #4]
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805643A
	mov r7, sp
	ldrh r2, [r7, #0x24]
.L0805643A:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C

	non_word_aligned_thumb_func_start sub_08056442
sub_08056442: @ 0x08056442
	adds r0, r6, #0
	bl func_08057B84
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r4, r6, r0
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r5, r6, r1
	adds r0, r5, #0
	bl func_0805E8F0
	str r0, [r4]
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x114]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	add r1, sp, #4
	movs r7, #0xaf
	lsls r7, r7, #2
	adds r0, r6, r7
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r1, sp, #4
	movs r0, #0x18
	strh r0, [r1]
	ldr r4, .L080567AC @ =0x000022D8
	adds r0, r6, r4
	ldrh r0, [r0]
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r7, #0x92
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r3, [sp, #0x114]
	ldr r1, [r3]
	adds r1, r1, r2
	ldrh r1, [r1]
	add r2, sp, #4
	lsls r1, r1, #1
	adds r0, r0, r1
	strh r0, [r2, #6]
	adds r1, r2, #0
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08056500
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L08056500:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	ldr r5, .L080567B0 @ =0x00002324
	adds r0, r6, r5
	ldrb r0, [r0]
	cmp r0, #1
	beq .L08056514
	b .L080566A8
.L08056514:
	movs r7, #0xf1
	lsls r7, r7, #2
	adds r7, r6, r7
	str r7, [sp, #0x11c]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [sp, #0xfc]
	mov r8, sb
	add r5, sp, #4
	ldr r1, .L080567B4 @ =0x000022E0
	adds r7, r6, r1
	ldr r2, .L080567B8 @ =0x00002330
	adds r2, r6, r2
	str r2, [sp, #0x100]
	movs r3, #0xf
	str r3, [sp, #0xf8]
.L08056536:
	ldr r1, .L080567BC @ =gUnk_080FA36C
	ldrh r0, [r7, #2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r0, [sp, #0xfc]
	bl func_0805E860
	ldr r4, [sp, #0xfc]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x11c]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, r8
	mov r1, r8
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, r8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	add r1, sp, #4
	movs r4, #0xf5
	lsls r4, r4, #2
	adds r0, r6, r4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldrh r0, [r7]
	ldr r2, [sp, #0x100]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5]
	adds r0, #0x18
	lsls r0, r0, #0x10
	movs r1, #0x88
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi .L0805669A
	movs r3, #0x90
	strh r3, [r5, #2]
	movs r4, #2
	strh r4, [r5, #8]
	ldrh r0, [r7, #2]
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r5, #6]
	ldrh r0, [r7, #2]
	lsls r0, r0, #4
	adds r0, r0, r6
	movs r2, #0xa1
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r5, #4]
	movs r3, #1
	mov sl, r3
	mov r4, sl
	strb r4, [r5, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080565F2
	mov r0, sp
	ldrh r2, [r0, #0x24]
.L080565F2:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r4, r6, r1
	adds r0, r4, #0
	ldr r1, .L080567C0 @ =0x0000091B
	bl func_0805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x118]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, r8
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, r8
	mov r1, r8
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, r8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	add r1, sp, #4
	movs r4, #0xbd
	lsls r4, r4, #2
	adds r0, r6, r4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldrh r0, [r7]
	ldr r2, [sp, #0x100]
	ldrh r1, [r2]
	subs r0, r0, r1
	strh r0, [r5]
	movs r3, #0x90
	strh r3, [r5, #2]
	movs r4, #2
	strh r4, [r5, #8]
	movs r1, #0x95
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, #2
	strh r0, [r5, #6]
	movs r2, #0x96
	lsls r2, r2, #3
	adds r0, r6, r2
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r5, #4]
	mov r3, sl
	strb r3, [r5, #0x18]
	adds r0, r6, #0
	bl func_08008920
	ldr r1, [sp, #0x20]
	movs r2, #0
	cmp r1, #0
	beq .L08056694
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L08056694:
	add r3, sp, #4
	bl func_0805E99C
.L0805669A:
	adds r7, #4
	ldr r0, [sp, #0xf8]
	subs r0, #1
	str r0, [sp, #0xf8]
	cmp r0, #0
	blt .L080566A8
	b .L08056536
.L080566A8:
	ldr r1, .L080567B8 @ =0x00002330
	adds r4, r6, r1
	ldrh r0, [r4]
	cmp r0, #0xff
	bls .L080566B4
	b .L08056B1A
.L080566B4:
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r5, #0x81
	lsls r5, r5, #2
	adds r0, r6, r5
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	add r1, sp, #4
	movs r7, #0x85
	lsls r7, r7, #2
	adds r0, r6, r7
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldrh r1, [r4]
	movs r0, #0x40
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	movs r0, #0x50
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r5, #0xa8
	lsls r5, r5, #3
	adds r4, r6, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r7, #0xa9
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	movs r1, #1
	mov sl, r1
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r3, #0x8c
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08056754
	b .L08056AFC
.L08056754:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08056776
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08056776:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L080567C4 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080567C8
	cmp r1, #0
	beq .L0805679E
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0805679E:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08056894
	.align 2, 0
.L080567A8: .4byte 0x00002260
.L080567AC: .4byte 0x000022D8
.L080567B0: .4byte 0x00002324
.L080567B4: .4byte 0x000022E0
.L080567B8: .4byte 0x00002330
.L080567BC: .4byte gUnk_080FA36C
.L080567C0: .4byte 0x0000091B
.L080567C4: .4byte 0x06010000
.L080567C8:
	mov r8, r1
	add r1, sp, #0xa4
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xa0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080567E6
	adds r0, r1, #0
.L080567E6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08056804
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08056808
	mov r0, sl
	bl func_080D3BC0
	b .L08056808
.L08056804:
	movs r0, #0
	mov sl, r0
.L08056808:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0805682E
.L08056816:
	cmp r3, #0
	beq .L08056826
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056826:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08056816
.L0805682E:
	adds r5, r3, #0
	ldr r1, [sp, #0xa4]
	cmp r1, #1
	bne .L0805684A
	cmp r5, #0
	beq .L08056846
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056846:
	adds r5, #0x10
	b .L0805686C
.L0805684A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0805686A
.L08056852:
	cmp r2, #0
	beq .L08056862
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056862:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08056852
.L0805686A:
	adds r5, r2, #0
.L0805686C:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805687E
.L08056878:
	adds r1, #0x10
	cmp r1, r2
	bne .L08056878
.L0805687E:
	cmp r0, #0
	beq .L08056886
	bl free
.L08056886:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08056894:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x30]
	movs r3, #0xa9
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x30]
	movs r3, #0
	cmp r0, #0
	beq .L080568B8
	mov r7, sp
	ldrh r3, [r7, #0x34]
.L080568B8:
	lsrs r3, r3, #1
	str r4, [sp, #0x120]
	lsls r2, r2, #5
	ldr r0, .L080568F0 @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x40
	adds r1, r5, #0
	bl func_08008F0C
	mov r1, sb
	str r1, [sp, #0x104]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080568F4
	cmp r1, #0
	beq .L080568E6
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080568E6:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080569C0
	.align 2, 0
.L080568F0: .4byte 0x05000200
.L080568F4:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0xac
	str r0, [r1]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xa8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08056912
	adds r0, r1, #0
.L08056912:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08056930
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08056934
	mov r0, sl
	bl func_080D3BC0
	b .L08056934
.L08056930:
	movs r0, #0
	mov sl, r0
.L08056934:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x120]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0805695A
.L08056942:
	cmp r3, #0
	beq .L08056952
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056952:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08056942
.L0805695A:
	adds r5, r3, #0
	ldr r1, [sp, #0xac]
	cmp r1, #1
	bne .L08056976
	cmp r5, #0
	beq .L08056972
	adds r0, r5, #0
	ldr r1, [sp, #0x104]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056972:
	adds r5, #0x10
	b .L08056998
.L08056976:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08056996
.L0805697E:
	cmp r2, #0
	beq .L0805698E
	adds r0, r2, #0
	ldr r1, [sp, #0x104]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805698E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0805697E
.L08056996:
	adds r5, r2, #0
.L08056998:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080569AA
.L080569A4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080569A4
.L080569AA:
	cmp r0, #0
	beq .L080569B2
	bl free
.L080569B2:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080569C0:
	adds r0, r6, #0
	bl func_08008910
	adds r7, r0, #0
	ldr r0, [sp, #0x30]
	adds r4, r0, #0
	add r0, sp, #0x30
	movs r1, #0
	cmp r4, #0
	beq .L080569D6
	ldrh r1, [r0, #4]
.L080569D6:
	lsrs r5, r1, #1
	movs r3, #0xaa
	lsls r3, r3, #3
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x30]
	movs r3, #0
	cmp r0, #0
	beq .L080569F2
	mov r0, sp
	ldrh r3, [r0, #0x34]
.L080569F2:
	lsrs r3, r3, #1
	str r7, [sp, #0x120]
	adds r1, r4, r5
	lsls r2, r2, #5
	ldr r4, .L08056A2C @ =0x05000200
	adds r2, r2, r4
	add r0, sp, #0x40
	bl func_08008F0C
	mov r5, sb
	str r5, [sp, #0x108]
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L08056A30
	cmp r1, #0
	beq .L08056A20
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056A20:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08056AFC
	.align 2, 0
.L08056A2C: .4byte 0x05000200
.L08056A30:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0xb4
	str r0, [r1]
	ldr r7, [sp, #0x120]
	ldr r0, [r7]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xb0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08056A4E
	adds r0, r1, #0
.L08056A4E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08056A6C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08056A70
	mov r0, sl
	bl func_080D3BC0
	b .L08056A70
.L08056A6C:
	movs r0, #0
	mov sl, r0
.L08056A70:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r3, [sp, #0x120]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08056A96
.L08056A7E:
	cmp r3, #0
	beq .L08056A8E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056A8E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08056A7E
.L08056A96:
	adds r5, r3, #0
	ldr r1, [sp, #0xb4]
	cmp r1, #1
	bne .L08056AB2
	cmp r5, #0
	beq .L08056AAE
	adds r0, r5, #0
	ldr r1, [sp, #0x108]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056AAE:
	adds r5, #0x10
	b .L08056AD4
.L08056AB2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08056AD2
.L08056ABA:
	cmp r2, #0
	beq .L08056ACA
	adds r0, r2, #0
	ldr r1, [sp, #0x108]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056ACA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08056ABA
.L08056AD2:
	adds r5, r2, #0
.L08056AD4:
	ldr r7, [sp, #0x120]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08056AE6
.L08056AE0:
	adds r1, #0x10
	cmp r1, r2
	bne .L08056AE0
.L08056AE6:
	cmp r0, #0
	beq .L08056AEE
	bl free
.L08056AEE:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08056AFC:
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08056B0A
	mov r3, sp
	ldrh r2, [r3, #0x24]
.L08056B0A:
	movs r4, #0xa8
	lsls r4, r4, #3
	adds r0, r6, r4
	str r0, [sp]
	adds r0, r6, #0
	add r3, sp, #4
	bl func_080579B4
.L08056B1A:
	movs r5, #0xe1
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #1
	beq .L08056B2A
	b .L08056D26
.L08056B2A:
	movs r7, #0xd4
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r4, #0xd5
	lsls r4, r4, #2
	adds r0, r6, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r0, r6, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r5, .L08056C2C @ =0x00002268
	adds r0, r6, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	ldr r3, .L08056C30 @ =0x00002330
	adds r1, r6, r3
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	ldr r4, .L08056C34 @ =0x0000226C
	adds r0, r6, r4
	movs r5, #2
	ldrsh r0, [r0, r5]
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r7, #0x99
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08056BD6
	b .L08056D08
.L08056BD6:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08056BF8
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08056BF8:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08056C38 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08056C3C
	cmp r1, #0
	beq .L08056C20
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056C20:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08056D08
	.align 2, 0
.L08056C2C: .4byte 0x00002268
.L08056C30: .4byte 0x00002330
.L08056C34: .4byte 0x0000226C
.L08056C38: .4byte 0x06010000
.L08056C3C:
	mov r8, r1
	add r1, sp, #0xbc
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xb8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08056C5A
	adds r0, r1, #0
.L08056C5A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08056C78
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08056C7C
	mov r0, sl
	bl func_080D3BC0
	b .L08056C7C
.L08056C78:
	movs r0, #0
	mov sl, r0
.L08056C7C:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08056CA2
.L08056C8A:
	cmp r3, #0
	beq .L08056C9A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056C9A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08056C8A
.L08056CA2:
	adds r5, r3, #0
	ldr r1, [sp, #0xbc]
	cmp r1, #1
	bne .L08056CBE
	cmp r5, #0
	beq .L08056CBA
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056CBA:
	adds r5, #0x10
	b .L08056CE0
.L08056CBE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08056CDE
.L08056CC6:
	cmp r2, #0
	beq .L08056CD6
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056CD6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08056CC6
.L08056CDE:
	adds r5, r2, #0
.L08056CE0:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08056CF2
.L08056CEC:
	adds r1, #0x10
	cmp r1, r2
	bne .L08056CEC
.L08056CF2:
	cmp r0, #0
	beq .L08056CFA
	bl free
.L08056CFA:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08056D08:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08056D1E
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L08056D1E:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L08056D26:
	movs r5, #0x8e
	lsls r5, r5, #2
	adds r0, r6, r5
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r7, [sp, #0x110]
	ldr r0, [r7]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	add r1, sp, #4
	movs r5, #0x93
	lsls r5, r5, #2
	adds r0, r6, r5
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r1, .L08056E28 @ =0x00002268
	adds r0, r6, r1
	movs r3, #2
	ldrsh r0, [r0, r3]
	ldr r4, .L08056E2C @ =0x00002330
	adds r1, r6, r4
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	ldr r5, .L08056E30 @ =0x0000226C
	adds r0, r6, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #0x8d
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r1, #0x8e
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	movs r2, #1
	mov sl, r2
	mov r3, sl
	strb r3, [r0, #0x18]
	movs r5, #0x9a
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08056DD2
	b .L08056F04
.L08056DD2:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08056DF4
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08056DF4:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08056E34 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08056E38
	cmp r1, #0
	beq .L08056E1C
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08056E1C:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08056F04
	.align 2, 0
.L08056E28: .4byte 0x00002268
.L08056E2C: .4byte 0x00002330
.L08056E30: .4byte 0x0000226C
.L08056E34: .4byte 0x06010000
.L08056E38:
	mov r8, r1
	add r1, sp, #0xc4
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xc0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08056E56
	adds r0, r1, #0
.L08056E56:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08056E74
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08056E78
	mov r0, sl
	bl func_080D3BC0
	b .L08056E78
.L08056E74:
	movs r0, #0
	mov sl, r0
.L08056E78:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08056E9E
.L08056E86:
	cmp r3, #0
	beq .L08056E96
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056E96:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08056E86
.L08056E9E:
	adds r5, r3, #0
	ldr r1, [sp, #0xc4]
	cmp r1, #1
	bne .L08056EBA
	cmp r5, #0
	beq .L08056EB6
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056EB6:
	adds r5, #0x10
	b .L08056EDC
.L08056EBA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08056EDA
.L08056EC2:
	cmp r2, #0
	beq .L08056ED2
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08056ED2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08056EC2
.L08056EDA:
	adds r5, r2, #0
.L08056EDC:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08056EEE
.L08056EE8:
	adds r1, #0x10
	cmp r1, r2
	bne .L08056EE8
.L08056EEE:
	cmp r0, #0
	beq .L08056EF6
	bl free
.L08056EF6:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08056F04:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08056F1A
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L08056F1A:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	ldr r5, .L08057034 @ =0x0000042C
	adds r0, r6, r5
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #1
	beq .L08056F30
	b .L08057136
.L08056F30:
	movs r7, #0xfe
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r4, #0xff
	lsls r4, r4, #2
	adds r0, r6, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	ldr r3, .L08057038 @ =0x0000040C
	adds r0, r6, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r5, .L0805703C @ =0x00002268
	adds r0, r6, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	ldr r3, .L08057040 @ =0x00002330
	adds r1, r6, r3
	ldrh r1, [r1]
	subs r0, r0, r1
	subs r0, #8
	strh r0, [r2]
	adds r1, r2, #0
	ldr r4, .L08057044 @ =0x0000226C
	adds r0, r6, r4
	movs r5, #2
	ldrsh r0, [r0, r5]
	subs r0, #0x18
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r7, #0x9c
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r1, #0x9d
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r3, #0x85
	lsls r3, r3, #3
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08056FDE
	b .L08057118
.L08056FDE:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08057000
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08057000:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08057048 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805704C
	cmp r1, #0
	beq .L08057028
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08057028:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08057118
	.align 2, 0
.L08057034: .4byte 0x0000042C
.L08057038: .4byte 0x0000040C
.L0805703C: .4byte 0x00002268
.L08057040: .4byte 0x00002330
.L08057044: .4byte 0x0000226C
.L08057048: .4byte 0x06010000
.L0805704C:
	mov r8, r1
	add r1, sp, #0xcc
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xc8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L0805706A
	adds r0, r1, #0
.L0805706A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08057088
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L0805708C
	mov r0, sl
	bl func_080D3BC0
	b .L0805708C
.L08057088:
	movs r0, #0
	mov sl, r0
.L0805708C:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080570B2
.L0805709A:
	cmp r3, #0
	beq .L080570AA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080570AA:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0805709A
.L080570B2:
	adds r5, r3, #0
	ldr r1, [sp, #0xcc]
	cmp r1, #1
	bne .L080570CE
	cmp r5, #0
	beq .L080570CA
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080570CA:
	adds r5, #0x10
	b .L080570F0
.L080570CE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080570EE
.L080570D6:
	cmp r2, #0
	beq .L080570E6
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080570E6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080570D6
.L080570EE:
	adds r5, r2, #0
.L080570F0:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08057102
.L080570FC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080570FC
.L08057102:
	cmp r0, #0
	beq .L0805710A
	bl free
.L0805710A:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08057118:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805712E
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L0805712E:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L08057136:
	ldr r5, .L0805724C @ =0x00000464
	adds r0, r6, r5
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #1
	beq .L08057144
	b .L08057356
.L08057144:
	movs r7, #0x86
	lsls r7, r7, #3
	adds r0, r6, r7
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	ldr r4, .L08057250 @ =0x00000434
	adds r0, r6, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	ldr r3, .L08057254 @ =0x00000444
	adds r0, r6, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r5, .L08057258 @ =0x00002268
	adds r0, r6, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	ldr r3, .L0805725C @ =0x00002330
	adds r1, r6, r3
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	ldr r4, .L08057260 @ =0x0000226C
	adds r0, r6, r4
	movs r5, #2
	ldrsh r1, [r0, r5]
	ldr r7, .L08057264 @ =0x0000228C
	adds r0, r6, r7
	ldrh r0, [r0]
	adds r0, #8
	subs r1, r1, r0
	strh r1, [r2, #2]
	adds r1, r2, #0
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #0x9e
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r1, #0x9f
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r3, #0x8c
	lsls r3, r3, #3
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080571F6
	b .L08057338
.L080571F6:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08057218
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08057218:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08057268 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805726C
	cmp r1, #0
	beq .L08057240
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08057240:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08057338
	.align 2, 0
.L0805724C: .4byte 0x00000464
.L08057250: .4byte 0x00000434
.L08057254: .4byte 0x00000444
.L08057258: .4byte 0x00002268
.L0805725C: .4byte 0x00002330
.L08057260: .4byte 0x0000226C
.L08057264: .4byte 0x0000228C
.L08057268: .4byte 0x06010000
.L0805726C:
	mov r8, r1
	add r1, sp, #0xd4
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xd0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L0805728A
	adds r0, r1, #0
.L0805728A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080572A8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080572AC
	mov r0, sl
	bl func_080D3BC0
	b .L080572AC
.L080572A8:
	movs r0, #0
	mov sl, r0
.L080572AC:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080572D2
.L080572BA:
	cmp r3, #0
	beq .L080572CA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080572CA:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080572BA
.L080572D2:
	adds r5, r3, #0
	ldr r1, [sp, #0xd4]
	cmp r1, #1
	bne .L080572EE
	cmp r5, #0
	beq .L080572EA
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080572EA:
	adds r5, #0x10
	b .L08057310
.L080572EE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0805730E
.L080572F6:
	cmp r2, #0
	beq .L08057306
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08057306:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080572F6
.L0805730E:
	adds r5, r2, #0
.L08057310:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08057322
.L0805731C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805731C
.L08057322:
	cmp r0, #0
	beq .L0805732A
	bl free
.L0805732A:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08057338:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805734E
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L0805734E:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L08057356:
	movs r5, #0xef
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #1
	beq .L08057366
	b .L08057562
.L08057366:
	movs r7, #0xe2
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r6, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	movs r3, #0xe7
	lsls r3, r3, #2
	adds r0, r6, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r5, .L08057468 @ =0x00002294
	adds r0, r6, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	ldr r3, .L0805746C @ =0x00002330
	adds r1, r6, r3
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	ldr r4, .L08057470 @ =0x00002298
	adds r0, r6, r4
	movs r5, #2
	ldrsh r0, [r0, r5]
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r7, #0x9a
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r3, #0xee
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08057412
	b .L08057544
.L08057412:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08057434
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08057434:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08057474 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08057478
	cmp r1, #0
	beq .L0805745C
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0805745C:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08057544
	.align 2, 0
.L08057468: .4byte 0x00002294
.L0805746C: .4byte 0x00002330
.L08057470: .4byte 0x00002298
.L08057474: .4byte 0x06010000
.L08057478:
	mov r8, r1
	add r1, sp, #0xdc
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xd8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08057496
	adds r0, r1, #0
.L08057496:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080574B4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080574B8
	mov r0, sl
	bl func_080D3BC0
	b .L080574B8
.L080574B4:
	movs r0, #0
	mov sl, r0
.L080574B8:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080574DE
.L080574C6:
	cmp r3, #0
	beq .L080574D6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080574D6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080574C6
.L080574DE:
	adds r5, r3, #0
	ldr r1, [sp, #0xdc]
	cmp r1, #1
	bne .L080574FA
	cmp r5, #0
	beq .L080574F6
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080574F6:
	adds r5, #0x10
	b .L0805751C
.L080574FA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0805751A
.L08057502:
	cmp r2, #0
	beq .L08057512
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08057512:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08057502
.L0805751A:
	adds r5, r2, #0
.L0805751C:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805752E
.L08057528:
	adds r1, #0x10
	cmp r1, r2
	bne .L08057528
.L0805752E:
	cmp r0, #0
	beq .L08057536
	bl free
.L08057536:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08057544:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805755A
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L0805755A:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L08057562:
	movs r5, #0xd3
	lsls r5, r5, #2
	adds r0, r6, r5
	ldrb r0, [r0]
	mov sl, r0
	cmp r0, #1
	beq .L08057572
	b .L0805776E
.L08057572:
	movs r7, #0xc6
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r4, #0xc7
	lsls r4, r4, #2
	adds r0, r6, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	movs r3, #0xcb
	lsls r3, r3, #2
	adds r0, r6, r3
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r5, .L08057674 @ =0x00002294
	adds r0, r6, r5
	movs r7, #2
	ldrsh r0, [r0, r7]
	ldr r3, .L08057678 @ =0x00002330
	adds r1, r6, r3
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	ldr r4, .L0805767C @ =0x00002298
	adds r0, r6, r4
	movs r5, #2
	ldrsh r0, [r0, r5]
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r7, #0x97
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r1, #0x98
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	mov r2, sl
	strb r2, [r0, #0x18]
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L0805761E
	b .L08057750
.L0805761E:
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x28]
	mov r8, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L08057640
	mov r0, sp
	ldrh r3, [r0, #0x2c]
.L08057640:
	str r5, [sp, #0x120]
	lsls r2, r2, #5
	ldr r1, .L08057680 @ =0x06010000
	adds r2, r2, r1
	mov r0, sb
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08057684
	cmp r1, #0
	beq .L08057668
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08057668:
	ldr r5, [sp, #0x120]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08057750
	.align 2, 0
.L08057674: .4byte 0x00002294
.L08057678: .4byte 0x00002330
.L0805767C: .4byte 0x00002298
.L08057680: .4byte 0x06010000
.L08057684:
	mov r8, r1
	add r1, sp, #0xe4
	mov r7, sl
	str r7, [r1]
	ldr r2, [sp, #0x120]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xe0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080576A2
	adds r0, r1, #0
.L080576A2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080576C0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080576C4
	mov r0, sl
	bl func_080D3BC0
	b .L080576C4
.L080576C0:
	movs r0, #0
	mov sl, r0
.L080576C4:
	adds r5, r0, #0
	str r5, [sp, #0x124]
	ldr r4, [sp, #0x120]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080576EA
.L080576D2:
	cmp r3, #0
	beq .L080576E2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080576E2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080576D2
.L080576EA:
	adds r5, r3, #0
	ldr r1, [sp, #0xe4]
	cmp r1, #1
	bne .L08057706
	cmp r5, #0
	beq .L08057702
	adds r0, r5, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08057702:
	adds r5, #0x10
	b .L08057728
.L08057706:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08057726
.L0805770E:
	cmp r2, #0
	beq .L0805771E
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805771E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0805770E
.L08057726:
	adds r5, r2, #0
.L08057728:
	ldr r0, [sp, #0x120]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805773A
.L08057734:
	adds r1, #0x10
	cmp r1, r2
	bne .L08057734
.L0805773A:
	cmp r0, #0
	beq .L08057742
	bl free
.L08057742:
	ldr r0, [sp, #0x124]
	add r0, sl
	ldr r1, [sp, #0x124]
	ldr r2, [sp, #0x120]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08057750:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08057766
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L08057766:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L0805776E:
	ldr r7, .L080579A0 @ =0x00002330
	adds r5, r6, r7
	ldrh r0, [r5]
	cmp r0, #0xff
	bhi .L08057824
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, .L080579A4 @ =0x0000091B
	adds r0, r4, #0
	bl func_0805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x118]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	add r1, sp, #4
	movs r7, #0xbd
	lsls r7, r7, #2
	adds r0, r6, r7
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldrh r1, [r5]
	movs r0, #0x40
	subs r0, r0, r1
	strh r0, [r2]
	adds r1, r2, #0
	movs r0, #0x50
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	movs r4, #0x95
	lsls r4, r4, #3
	adds r0, r6, r4
	ldr r1, [r0, #4]
	bl func_08007D4C
	add r1, sp, #4
	adds r0, #2
	strh r0, [r1, #6]
	movs r5, #0x96
	lsls r5, r5, #3
	adds r0, r6, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805781C
	mov r7, sp
	ldrh r2, [r7, #0x24]
.L0805781C:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L08057824:
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r5, r6, r0
	adds r0, r5, #0
	ldr r1, .L080579A8 @ =0x0000091A
	bl func_0805E860
	add r1, sp, #0x20
	mov r8, r1
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x118]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r4, sb
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r7}
	stm r0!, {r1, r2, r7}
	ldm r4!, {r1, r3, r7}
	stm r0!, {r1, r3, r7}
	ldm r4!, {r2, r3}
	stm r0!, {r2, r3}
	movs r4, #0xbd
	lsls r4, r4, #2
	adds r4, r6, r4
	str r4, [sp, #0x10c]
	add r1, sp, #4
	adds r0, r4, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r3, .L080579AC @ =0x00002268
	adds r0, r6, r3
	movs r4, #2
	ldrsh r0, [r0, r4]
	ldr r7, .L080579A0 @ =0x00002330
	adds r7, r7, r6
	mov sl, r7
	ldrh r1, [r7]
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, r2, #0
	movs r1, #0x50
	strh r1, [r0, #2]
	movs r2, #2
	strh r2, [r0, #8]
	movs r3, #0x95
	lsls r3, r3, #3
	adds r7, r6, r3
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r0, #0x96
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080578DE
	mov r0, r8
	ldrh r2, [r0, #4]
.L080578DE:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	movs r1, #0xd3
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	mov r8, r0
	cmp r0, #1
	bne .L08057990
	adds r0, r5, #0
	ldr r1, .L080579A8 @ =0x0000091A
	bl func_0805E860
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x118]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	mov r0, sb
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	add r1, sp, #4
	ldr r0, [sp, #0x10c]
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #4
	ldr r5, .L080579B0 @ =0x00002294
	adds r0, r6, r5
	movs r1, #2
	ldrsh r0, [r0, r1]
	mov r3, sl
	ldrh r1, [r3]
	subs r0, r0, r1
	strh r0, [r2]
	adds r0, r2, #0
	movs r5, #0x50
	strh r5, [r0, #2]
	movs r1, #2
	strh r1, [r0, #8]
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	adds r0, r1, #0
	mov r2, r8
	strb r2, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008920
	ldr r1, [sp, #0x20]
	movs r2, #0
	cmp r1, #0
	beq .L0805798A
	mov r3, sp
	ldrh r2, [r3, #0x24]
.L0805798A:
	add r3, sp, #4
	bl func_0805E99C
.L08057990:
	add sp, #0x128
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080579A0: .4byte 0x00002330
.L080579A4: .4byte 0x0000091B
.L080579A8: .4byte 0x0000091A
.L080579AC: .4byte 0x00002268
.L080579B0: .4byte 0x00002294

	thumb_func_start func_080579B4
func_080579B4: @ 0x080579B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #8]
	mov r8, r3
	mov sb, r1
	lsls r2, r2, #3
	add r2, sb
	str r2, [sp, #0xc]
	cmp sb, r2
	bne .L080579D2
	b .L08057B4C
.L080579D2:
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, [sp]
	lsls r0, r1, #7
	asrs r3, r0, #0x17
	mov r0, sp
	movs r5, #0
	ldrsb r5, [r0, r5]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x1e
	adds r4, r0, #0
	lsrs r1, r1, #0x1e
	cmp r4, #0
	bne .L080579FC
	movs r6, #8
	lsls r6, r1
	adds r4, r6, #0
	b .L08057A1C
.L080579FC:
	adds r0, r1, #1
	lsrs r0, r0, #1
	adds r0, #1
	movs r2, #8
	lsls r2, r0
	movs r0, #8
	cmp r1, #1
	beq .L08057A0E
	lsrs r0, r2, #1
.L08057A0E:
	cmp r4, #1
	beq .L08057A18
	adds r6, r2, #0
	adds r4, r0, #0
	b .L08057A1C
.L08057A18:
	adds r6, r0, #0
	adds r4, r2, #0
.L08057A1C:
	mov r0, r8
	ldrb r7, [r0, #0x10]
	movs r1, #1
	mov sl, r1
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq .L08057A46
	adds r0, r3, r4
	rsbs r3, r0, #0
	ldr r2, [sp]
	lsls r1, r2, #3
	lsrs r1, r1, #0x1f
	mov r0, sl
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x1c
	ldr r0, .L08057B5C @ =0xEFFFFFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
.L08057A46:
	movs r0, #2
	ands r0, r7
	cmp r0, #0
	beq .L08057A68
	adds r0, r5, r6
	rsbs r5, r0, #0
	ldr r2, [sp]
	lsls r1, r2, #2
	lsrs r1, r1, #0x1f
	mov r0, sl
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x1d
	ldr r0, .L08057B60 @ =0xDFFFFFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
.L08057A68:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r3, r3, r0
	movs r2, #2
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	adds r0, r3, r4
	cmp r0, #0
	ble .L08057B40
	cmp r3, #0xef
	bgt .L08057B40
	adds r0, r5, r6
	cmp r0, #0
	ble .L08057B40
	cmp r5, #0x9f
	bgt .L08057B40
	ldr r0, .L08057B64 @ =0x000001FF
	ands r3, r0
	lsls r2, r3, #0x10
	ldr r1, .L08057B68 @ =0xFE00FFFF
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	ldr r1, .L08057B6C @ =0xFFFFFF00
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	mov r4, sp
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	ldr r3, [sp, #0x30]
	adds r0, r0, r3
	adds r0, #8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, .L08057B70 @ =0xFFFF0FFF
	ldr r2, [sp, #4]
	ands r2, r1
	orrs r2, r0
	lsls r0, r2, #0x16
	lsrs r0, r0, #0x16
	mov r1, r8
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r1, .L08057B74 @ =0xFFFFFC00
	ands r1, r2
	orrs r1, r0
	mov r2, r8
	ldrh r0, [r2, #8]
	movs r3, #3
	ands r0, r3
	lsls r0, r0, #0xa
	ldr r2, .L08057B78 @ =0xFFFFF3FF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	mov r1, r8
	ldr r0, [r1, #0xc]
	ands r0, r3
	lsls r0, r0, #0xa
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	mov r3, r8
	ldr r2, [r3, #0x14]
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #8
	ldr r0, .L08057B7C @ =0xFFFFFCFF
	ands r1, r0
	orrs r1, r2
	ldrb r2, [r3, #0x18]
	mov r3, sl
	ands r2, r3
	lsls r2, r2, #0xc
	ldr r0, .L08057B80 @ =0xFFFFEFFF
	ands r1, r0
	orrs r1, r2
	str r1, [sp]
	ldr r0, [sp, #8]
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L08057B40
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp]
	str r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L08057B40:
	movs r0, #8
	add sb, r0
	ldr r1, [sp, #0xc]
	cmp sb, r1
	beq .L08057B4C
	b .L080579D2
.L08057B4C:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08057B5C: .4byte 0xEFFFFFFF
.L08057B60: .4byte 0xDFFFFFFF
.L08057B64: .4byte 0x000001FF
.L08057B68: .4byte 0xFE00FFFF
.L08057B6C: .4byte 0xFFFFFF00
.L08057B70: .4byte 0xFFFF0FFF
.L08057B74: .4byte 0xFFFFFC00
.L08057B78: .4byte 0xFFFFF3FF
.L08057B7C: .4byte 0xFFFFFCFF
.L08057B80: .4byte 0xFFFFEFFF

	thumb_func_start func_08057B84
func_08057B84: @ 0x08057B84
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, .L08057BF4 @ =0x000022C4
	adds r0, r4, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	movs r2, #0xc
	bl func_08057CB0
	adds r0, r4, #0
	movs r1, #0x40
	movs r2, #0x14
	movs r3, #0xb
	bl func_08057D34
	ldr r1, .L08057BF8 @ =0x00002324
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08057C00
	subs r1, #0x58
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq .L08057C74
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #0x10
	movs r3, #0x1a
	bl func_08057D34
	ldr r1, .L08057BFC @ =0x000022C6
	adds r0, r4, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	str r5, [sp]
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0x10
	bl func_08057CB0
	adds r0, r4, #0
	movs r1, #0xe0
	movs r2, #0x10
	movs r3, #0x17
	bl func_08057D34
	b .L08057C74
	.align 2, 0
.L08057BF4: .4byte 0x000022C4
.L08057BF8: .4byte 0x00002324
.L08057BFC: .4byte 0x000022C6
.L08057C00:
	ldr r0, .L08057CA0 @ =0x000022CC
	adds r5, r4, r0
	ldrb r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq .L08057C3C
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #8
	movs r3, #0x18
	bl func_08057D34
	ldr r1, .L08057CA4 @ =0x000022C8
	adds r0, r4, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #8
	bl func_08057CB0
	adds r0, r4, #0
	movs r1, #0xe0
	movs r2, #8
	movs r3, #0x17
	bl func_08057D34
.L08057C3C:
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq .L08057C74
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #0x18
	movs r3, #0x19
	bl func_08057D34
	ldr r1, .L08057CA8 @ =0x000022CA
	adds r0, r4, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xc0
	movs r2, #0x16
	bl func_08057CB0
	adds r0, r4, #0
	movs r1, #0xe0
	movs r2, #0x16
	movs r3, #0x17
	bl func_08057D34
.L08057C74:
	ldr r1, .L08057CAC @ =0x000022CE
	adds r0, r4, r1
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	bne .L08057C96
	ldr r0, .L08057CA0 @ =0x000022CC
	adds r2, r4, r0
	adds r0, #1
	adds r1, r4, r0
	ldrb r0, [r2]
	ldrb r1, [r1]
	eors r0, r1
	strb r0, [r2]
.L08057C96:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L08057CA0: .4byte 0x000022CC
.L08057CA4: .4byte 0x000022C8
.L08057CA8: .4byte 0x000022CA
.L08057CAC: .4byte 0x000022CE

	thumb_func_start func_08057CB0
func_08057CB0: @ 0x08057CB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	adds r5, r1, #0
	mov sl, r2
	mov sb, r3
	ldr r1, [sp, #0x24]
	movs r6, #0x64
	movs r3, #0
	cmp r1, #0
	beq .L08057CD0
	movs r3, #0xc
.L08057CD0:
	movs r0, #8
	cmp r1, #0
	bne .L08057CD8
	movs r0, #0x10
.L08057CD8:
	mov r8, r3
	adds r7, r0, #0
.L08057CDC:
	mov r0, sb
	adds r1, r6, #0
	bl __divsi3
	adds r4, r0, #0
	mov r0, r8
	adds r3, r4, r0
	ldr r0, [sp]
	adds r1, r5, #0
	mov r2, sl
	bl func_08057D34
	adds r5, r5, r7
	adds r0, r4, #0
	muls r0, r6, r0
	mov r1, sb
	subs r1, r1, r0
	mov sb, r1
	adds r0, r6, #0
	movs r1, #0xa
	bl __divsi3
	adds r6, r0, #0
	cmp r6, #1
	bne .L08057D20
	ldr r0, [sp]
	adds r1, r5, #0
	mov r3, sl
	adds r2, r3, r7
	mov r3, r8
	adds r3, #0xa
	bl func_08057D34
	adds r5, #8
.L08057D20:
	cmp r6, #0
	bgt .L08057CDC
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_08057D34
func_08057D34: @ 0x08057D34
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x3c
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	mov r1, sp
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [sp, #0xc]
	strb r2, [r1, #0x10]
	strb r2, [r1, #0x11]
	str r0, [sp, #0x14]
	strb r2, [r1, #0x18]
	add r7, sp, #0x1c
	adds r1, r5, #0
	adds r1, #0x50
	adds r0, r7, #0
	adds r2, r4, #0
	bl func_0805E790
	mov r0, sp
	strh r6, [r0]
	mov r1, r8
	strh r1, [r0, #2]
	movs r3, #0x90
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r1, #0x8f
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r2, sp
	lsls r4, r4, #2
	ldr r3, .L08057DD4 @ =0x00002334
	adds r1, r5, r3
	adds r1, r1, r4
	ldr r1, [r1]
	adds r1, r1, r0
	strh r1, [r2, #6]
	mov r1, sp
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #8]
	mov r0, sp
	strb r2, [r0, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08057DC0
	ldrh r2, [r7, #4]
.L08057DC0:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	add sp, #0x3c
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08057DD4: .4byte 0x00002334

	thumb_func_start func_08057DD8
func_08057DD8: @ 0x08057DD8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	ldr r0, .L08057E14 @ =vtable_unk_080E7960
	str r0, [r5]
	ldr r0, .L08057E18 @ =0x000023A8
	bl __builtin_new
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080522F8
	str r0, [r5, #4]
	mov r0, r8
	ldr r1, [r0]
	movs r0, #0
	mov r2, r8
	str r0, [r2]
	str r1, [r5, #8]
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L08057E14: .4byte vtable_unk_080E7960
.L08057E18: .4byte 0x000023A8

	thumb_func_start func_08057E1C
func_08057E1C: @ 0x08057E1C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L08057E58 @ =vtable_unk_080E7960
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L08057E38
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08057E38:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L08057E4A
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08057E4A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L08057E58: .4byte vtable_unk_080E7960

	thumb_func_start func_08057E5C
func_08057E5C: @ 0x08057E5C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, sp
	bl func_08052984
	ldr r1, [sp]
	cmp r1, #0
	beq .L08057E7E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08057E7E:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_08057E90
func_08057E90: @ 0x08057E90
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r2
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r5, #0
	adds r3, #0x2c
	ldrb r2, [r3]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r3]
	adds r3, #2
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #5
	ldrb r2, [r3]
	subs r0, #0x22
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r2, #0
	movs r3, #0xff
.L08057EC4:
	adds r1, r5, r2
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r2, #1
	cmp r2, #0xb
	ble .L08057EC4
	movs r4, #0
.L08057ED4:
	adds r6, r5, r4
	adds r0, r4, #1
	mov r8, r0
	adds r7, r6, #0
.L08057EDC:
	bl rand
	asrs r0, r0, #8
	movs r1, #0x28
	bl __modsi3
	strb r0, [r6]
	movs r2, #0
	movs r1, #0
.L08057EEE:
	cmp r4, r1
	beq .L08057EFE
	adds r0, r5, r1
	ldrb r0, [r0]
	ldrb r3, [r7]
	cmp r0, r3
	bne .L08057EFE
	movs r2, #1
.L08057EFE:
	adds r1, #1
	cmp r1, #0xb
	ble .L08057EEE
	cmp r2, #0
	bne .L08057EDC
	mov r4, r8
	cmp r4, #0xb
	ble .L08057ED4
	adds r0, r5, #0
	mov r1, sb
	bl func_08057F64
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08057F24
func_08057F24: @ 0x08057F24
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	ldrb r4, [r5]
	lsls r3, r4, #0x1e
	lsrs r3, r3, #0x1e
	adds r3, #1
	movs r2, #3
	ands r3, r2
	movs r2, #4
	rsbs r2, r2, #0
	ands r2, r4
	orrs r2, r3
	strb r2, [r5]
	bl func_08057F64
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08057F4C
func_08057F4C: @ 0x08057F4C
	push {lr}
	movs r2, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne .L08057F5E
	movs r2, #1
.L08057F5E:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start func_08057F64
func_08057F64: @ 0x08057F64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	mov r8, r1
	adds r0, #0x2c
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #2
	bne .L08057F8E
	ldr r0, [sp]
	adds r0, #0x2e
	ldrb r0, [r0]
	lsrs r1, r0, #5
	movs r0, #1
	ands r1, r0
	b .L08057F90
.L08057F8E:
	movs r1, #0
.L08057F90:
	str r1, [sp, #4]
	ldr r7, [sp]
	adds r7, #0xc
	movs r0, #0
	mov sb, r0
	ldr r1, [sp]
	adds r1, #0x2c
	str r1, [sp, #8]
	ldr r0, .L08057FB0 @ =gUnk_080FA71C
	mov sl, r0
.L08057FA4:
	ldr r1, [sp, #4]
	cmp r1, #0
	bne .L08057FB4
.L08057FAA:
	mov r4, sb
	b .L08057FDA
	.align 2, 0
.L08057FB0: .4byte gUnk_080FA71C
.L08057FB4:
	mov r0, r8
	cmp r0, #2
	beq .L08057FD0
	cmp r0, #2
	bhi .L08057FC4
	cmp r0, #1
	beq .L08057FAA
	b .L08057FD8
.L08057FC4:
	mov r1, r8
	cmp r1, #3
	beq .L08057FAA
	cmp r1, #4
	beq .L08057FD4
	b .L08057FD8
.L08057FD0:
	movs r4, #4
	b .L08057FDA
.L08057FD4:
	movs r4, #5
	b .L08057FDA
.L08057FD8:
	movs r4, #6
.L08057FDA:
	lsls r4, r4, #4
	mov r1, sl
	adds r0, r4, r1
	ldr r6, [r0]
	mov r0, sl
	adds r0, #4
	adds r0, r4, r0
	ldr r5, [r0]
	bl rand
	subs r1, r5, r6
	bl __modsi3
	adds r0, r0, r6
	strb r0, [r7]
	mov r0, sl
	adds r0, #8
	adds r0, r4, r0
	ldr r6, [r0]
	ldr r0, .L08058068 @ =gUnk_080FA728
	adds r4, r4, r0
	ldr r5, [r4]
	bl rand
	subs r1, r5, r6
	bl __modsi3
	adds r0, r0, r6
	strb r0, [r7, #1]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1c
	add r0, sb
	ldr r1, [sp]
	adds r0, r1, r0
	ldrb r0, [r0]
	strb r0, [r7, #2]
	ldrb r1, [r7]
	movs r0, #0xfa
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __divsi3
	adds r4, r0, #0
	bl rand
	movs r1, #3
	ands r0, r1
	adds r0, #1
	adds r4, r4, r0
	strh r4, [r7, #4]
	movs r0, #1
	add sb, r0
	adds r7, #8
	mov r1, sb
	cmp r1, #3
	ble .L08057FA4
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08058068: .4byte gUnk_080FA728

	thumb_func_start func_0805806C
func_0805806C: @ 0x0805806C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	mov sl, r0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x18]
	add r1, sp, #0x14
	movs r0, #0x1e
	movs r2, #1
	movs r5, #0
	movs r4, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	mov r0, sl
	bl func_080084DC
	ldr r0, .L08058480 @ =vtable_unk_080E7970
	mov r1, sl
	str r0, [r1, #4]
	str r6, [r1, #8]
	str r4, [r1, #0xc]
	movs r0, #4
	bl __builtin_new
	mov r8, r0
	add r0, sp, #0xc
	bl func_0800835C
	add r6, sp, #0x10
	adds r0, r6, #0
	bl func_0800770C
	mov r2, sl
	ldr r0, [r2, #0xc]
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r6, [sp, #8]
	mov r0, r8
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0
	bl func_08050CC0
	mov r1, sl
	str r0, [r1, #0x10]
	adds r0, r6, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	mov r0, sl
	adds r0, #0x14
	movs r1, #1
	bl func_08008B54
	mov r0, sl
	adds r0, #0x18
	movs r1, #0
	bl func_08008B54
	mov r0, sl
	adds r0, #0x1c
	movs r1, #2
	bl func_08008B54
	movs r2, #0x20
	add r2, sl
	mov r8, r2
	ldr r1, .L08058484 @ =gUnk_0872EE78
	mov r0, r8
	bl func_0805E6CC
	mov r0, sl
	adds r0, #0x50
	ldr r1, .L08058488 @ =gUnk_0873CCB4
	bl func_0805E6CC
	mov r0, sl
	adds r0, #0x80
	str r0, [sp, #0x1c]
	ldr r1, .L0805848C @ =gUnk_0873D234
	bl func_0805E6CC
	mov r1, sl
	adds r1, #0xb0
	str r1, [sp, #0x20]
	ldr r1, .L08058490 @ =gUnk_0873CF90
	ldr r0, [sp, #0x20]
	bl func_0805E6CC
	mov r0, sl
	adds r0, #0xe0
	ldr r1, .L08058494 @ =gUnk_0873DE44
	bl func_0805E6CC
	movs r2, #0x88
	lsls r2, r2, #1
	add r2, sl
	mov sb, r2
	ldr r1, .L08058498 @ =gUnk_0873ED1C
	mov r0, sb
	bl func_0805E6CC
	movs r7, #0xa0
	lsls r7, r7, #1
	add r7, sl
	ldr r1, .L0805849C @ =gUnk_087401A4
	adds r0, r7, #0
	bl func_0805E6CC
	movs r0, #0xb8
	lsls r0, r0, #1
	add r0, sl
	str r0, [sp, #0x24]
	ldr r1, .L080584A0 @ =gUnk_08728208
	bl func_0805E6CC
	movs r6, #0xd0
	lsls r6, r6, #1
	add r6, sl
	ldr r1, .L080584A4 @ =gUnk_0858BA28
	adds r0, r6, #0
	bl func_0805E6CC
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sl
	mov r1, r8
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xf2
	lsls r0, r0, #1
	add r0, sl
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
	movs r0, #0x81
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0x82
	lsls r0, r0, #2
	add r0, sl
	adds r1, r6, #0
	ldr r2, .L080584A8 @ =0x00000762
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0x87
	lsls r0, r0, #2
	add r0, sl
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
	movs r0, #0x8f
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0x90
	lsls r0, r0, #2
	add r0, sl
	adds r1, r6, #0
	ldr r2, .L080584AC @ =0x0000073E
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0x95
	lsls r0, r0, #2
	add r0, sl
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
	movs r0, #0x9d
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	adds r1, r6, #0
	ldr r2, .L080584B0 @ =0x0000074A
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xa3
	lsls r0, r0, #2
	add r0, sl
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
	movs r0, #0xab
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0xac
	lsls r0, r0, #2
	add r0, sl
	adds r1, r6, #0
	ldr r2, .L080584B4 @ =0x00000756
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xb1
	lsls r0, r0, #2
	add r0, sl
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
	movs r0, #0xb9
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0xba
	lsls r0, r0, #2
	add r0, sl
	adds r1, r6, #0
	ldr r2, .L080584B8 @ =0x0000076E
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xbf
	lsls r0, r0, #2
	add r0, sl
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
	movs r0, #0xc7
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [sp, #0x1c]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xcd
	lsls r0, r0, #2
	add r0, sl
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
	movs r0, #0xd5
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0xd6
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [sp, #0x20]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xdb
	lsls r0, r0, #2
	add r0, sl
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
	movs r0, #0xe3
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0xe4
	lsls r0, r0, #2
	add r0, sl
	mov r1, sb
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xe9
	lsls r0, r0, #2
	add r0, sl
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
	movs r0, #0xf1
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0xf2
	lsls r0, r0, #2
	add r0, sl
	mov r1, sb
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r0, #0xf7
	lsls r0, r0, #2
	add r0, sl
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
	movs r0, #0xff
	lsls r0, r0, #2
	add r0, sl
	strb r5, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	add r0, sl
	mov r1, sb
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L080584BC @ =0x00000414
	add r0, sl
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
	ldr r0, .L080584C0 @ =0x00000434
	add r0, sl
	strb r5, [r0]
	movs r0, #0x87
	lsls r0, r0, #3
	add r0, sl
	mov r1, sb
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L080584C4 @ =0x0000044C
	add r0, sl
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
	ldr r0, .L080584C8 @ =0x0000046C
	add r0, sl
	strb r5, [r0]
	movs r0, #0x8e
	lsls r0, r0, #3
	add r0, sl
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L080584CC @ =0x00000484
	add r0, sl
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r5, [r0, #0x18]
	ldr r0, .L080584D0 @ =0x000004A4
	add r0, sl
	strb r5, [r0]
	movs r0, #0x95
	lsls r0, r0, #3
	add r0, sl
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L080584D4 @ =0x000004BC
	add r0, sl
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
	ldr r0, .L080584D8 @ =0x000004DC
	add r0, sl
	strb r5, [r0]
	movs r0, #0x9c
	lsls r0, r0, #3
	add r0, sl
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L080584DC @ =0x000004F4
	add r0, sl
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
	ldr r0, .L080584E0 @ =0x00000514
	add r0, sl
	strb r5, [r0]
	movs r0, #0xa3
	lsls r0, r0, #3
	add r0, sl
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	b .L080584E4
	.align 2, 0
.L08058480: .4byte vtable_unk_080E7970
.L08058484: .4byte gUnk_0872EE78
.L08058488: .4byte gUnk_0873CCB4
.L0805848C: .4byte gUnk_0873D234
.L08058490: .4byte gUnk_0873CF90
.L08058494: .4byte gUnk_0873DE44
.L08058498: .4byte gUnk_0873ED1C
.L0805849C: .4byte gUnk_087401A4
.L080584A0: .4byte gUnk_08728208
.L080584A4: .4byte gUnk_0858BA28
.L080584A8: .4byte 0x00000762
.L080584AC: .4byte 0x0000073E
.L080584B0: .4byte 0x0000074A
.L080584B4: .4byte 0x00000756
.L080584B8: .4byte 0x0000076E
.L080584BC: .4byte 0x00000414
.L080584C0: .4byte 0x00000434
.L080584C4: .4byte 0x0000044C
.L080584C8: .4byte 0x0000046C
.L080584CC: .4byte 0x00000484
.L080584D0: .4byte 0x000004A4
.L080584D4: .4byte 0x000004BC
.L080584D8: .4byte 0x000004DC
.L080584DC: .4byte 0x000004F4
.L080584E0: .4byte 0x00000514
.L080584E4:
	bl func_0805E824
	ldr r0, .L080587F8 @ =0x0000052C
	add r0, sl
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
	ldr r0, .L080587FC @ =0x0000054C
	add r0, sl
	strb r5, [r0]
	movs r0, #0xaa
	lsls r0, r0, #3
	add r0, sl
	ldr r1, [sp, #0x24]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L08058800 @ =0x00000564
	add r0, sl
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
	ldr r0, .L08058804 @ =0x00000584
	add r0, sl
	strb r5, [r0]
	movs r0, #0xb1
	lsls r0, r0, #3
	add r0, sl
	adds r1, r6, #0
	ldr r2, .L08058808 @ =0x0000091C
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, .L0805880C @ =0x0000059C
	add r0, sl
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
	ldr r0, .L08058810 @ =0x000005BC
	add r0, sl
	strb r5, [r0]
	movs r5, #0xb8
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xb9
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r5, #0xba
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xbb
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r5, #0xbc
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xbd
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r5, #0xbe
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xbf
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r5, #0xc0
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xc1
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r5, #4]
	movs r5, #0xc2
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #7
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xc3
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r5, #4]
	movs r5, #0xc4
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r5, #4]
	movs r5, #0xc5
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xc6
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r5, #0xc7
	lsls r5, r5, #3
	add r5, sl
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r4, #0xc8
	lsls r4, r4, #3
	add r4, sl
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r4, #0xc9
	lsls r4, r4, #3
	add r4, sl
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r4, #0xca
	lsls r4, r4, #3
	add r4, sl
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0xcb
	lsls r0, r0, #3
	add r0, sl
	movs r7, #3
.L080586E0:
	adds r6, r0, #0
	bl func_08007874
	adds r0, r6, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r6, #4]
	adds r4, r6, #0
	adds r4, #8
	movs r5, #1
	movs r1, #0x18
	adds r1, r1, r6
	mov sb, r1
	subs r7, #1
	mov r8, r7
.L08058700:
	adds r0, r4, #0
	bl func_08007128
	movs r2, #0
	str r2, [r4, #4]
	adds r4, #8
	subs r5, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne .L08058700
	movs r7, #0
	adds r5, r6, #0
	adds r5, #0xc
.L0805871C:
	lsls r4, r7, #3
	adds r4, r4, r6
	adds r4, #8
	ldr r1, [r5]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r5]
	adds r5, #8
	adds r7, #1
	cmp r7, #1
	bls .L0805871C
	mov r0, sb
	mov r7, r8
	movs r1, #1
	rsbs r1, r1, #0
	cmp r7, r1
	bne .L080586E0
	movs r0, #0xa7
	lsls r0, r0, #5
	add r0, sl
	ldr r1, .L08058814 @ =vtable_unk_080E797C
	str r1, [r0]
	movs r4, #0
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	str r4, [r0, #0x18]
	mov r2, sl
	ldr r0, [r2, #8]
	ldr r1, .L08058818 @ =0x00002C1C
	adds r0, r0, r1
	bl func_08057F4C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08058780
	mov r2, sl
	ldr r0, [r2, #8]
	ldr r1, .L08058818 @ =0x00002C1C
	adds r0, r0, r1
	movs r1, #0
	movs r2, #1
	bl func_08057E90
.L08058780:
	ldr r0, .L0805881C @ =0x00001428
	add r0, sl
	mov r2, sp
	ldrb r2, [r2, #0x18]
	strb r2, [r0]
	mov r0, sl
	ldr r1, [r0, #8]
	ldr r2, .L08058820 @ =0x00001AA8
	adds r0, r1, r2
	ldr r2, [r0]
	ldr r0, .L08058824 @ =0x00001410
	add r0, sl
	str r2, [r0]
	ldr r0, .L08058828 @ =0x00001414
	add r0, sl
	str r2, [r0]
	ldr r2, .L0805882C @ =0x00001418
	add r2, sl
	ldr r3, .L08058830 @ =0x00002C48
	adds r1, r1, r3
	ldr r0, [r1]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xf
	str r0, [r2]
	ldr r1, .L08058834 @ =0x0001869F
	cmp r0, r1
	ble .L080587B8
	str r1, [r2]
.L080587B8:
	ldr r0, .L08058838 @ =0x00001408
	add r0, sl
	strh r4, [r0]
	ldr r0, .L0805883C @ =0x0000141E
	add r0, sl
	strh r4, [r0]
	movs r0, #0xa1
	lsls r0, r0, #5
	add r0, sl
	strh r4, [r0]
	mov r1, sl
	ldr r0, [r1, #8]
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	ldr r1, .L08058840 @ =0x0000141C
	add r1, sl
	strh r0, [r1]
	cmp r0, #2
	bne .L0805884C
	mov r2, sl
	ldr r0, [r2, #8]
	ldr r1, .L08058844 @ =0x00002C4A
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	ldr r1, .L08058848 @ =0x0000140E
	add r1, sl
	b .L08058852
	.align 2, 0
.L080587F8: .4byte 0x0000052C
.L080587FC: .4byte 0x0000054C
.L08058800: .4byte 0x00000564
.L08058804: .4byte 0x00000584
.L08058808: .4byte 0x0000091C
.L0805880C: .4byte 0x0000059C
.L08058810: .4byte 0x000005BC
.L08058814: .4byte vtable_unk_080E797C
.L08058818: .4byte 0x00002C1C
.L0805881C: .4byte 0x00001428
.L08058820: .4byte 0x00001AA8
.L08058824: .4byte 0x00001410
.L08058828: .4byte 0x00001414
.L0805882C: .4byte 0x00001418
.L08058830: .4byte 0x00002C48
.L08058834: .4byte 0x0001869F
.L08058838: .4byte 0x00001408
.L0805883C: .4byte 0x0000141E
.L08058840: .4byte 0x0000141C
.L08058844: .4byte 0x00002C4A
.L08058848: .4byte 0x0000140E
.L0805884C:
	ldr r1, .L08058894 @ =0x0000140E
	add r1, sl
	movs r0, #0
.L08058852:
	strb r0, [r1]
	ldr r0, .L08058898 @ =0x00001427
	add r0, sl
	movs r1, #0
	strb r1, [r0]
	ldr r0, .L0805889C @ =0x00001426
	add r0, sl
	strb r1, [r0]
	ldr r0, .L080588A0 @ =0x00001424
	add r0, sl
	strh r1, [r0]
	ldr r1, .L080588A4 @ =0x00001429
	add r1, sl
	movs r0, #2
	strb r0, [r1]
	mov r2, sl
	ldr r0, [r2, #8]
	adds r0, #0x14
	bl GetHorse__4Farm
	ldr r1, .L080588A8 @ =0x000014DC
	add r1, sl
	str r0, [r1]
	mov r0, sl
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08058894: .4byte 0x0000140E
.L08058898: .4byte 0x00001427
.L0805889C: .4byte 0x00001426
.L080588A0: .4byte 0x00001424
.L080588A4: .4byte 0x00001429
.L080588A8: .4byte 0x000014DC

	thumb_func_start func_080588AC
func_080588AC: @ 0x080588AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #0x1c]
	adds r6, r1, #0
	adds r0, r6, #0
	bl func_08008724
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
	ldr r0, .L08058994 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	ldr r0, [r6, #0x10]
	movs r1, #0x75
	bl func_08050E50
	movs r4, #0
	add r0, sp, #8
	mov sl, r0
	movs r5, #0
.L08058906:
	movs r0, #0x2c
	adds r2, r4, #0
	muls r2, r0, r2
	adds r2, r6, r2
	ldr r0, [r6, #8]
	lsls r3, r4, #3
	adds r0, r0, r3
	ldr r1, .L08058998 @ =0x00002C2A
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r7, .L0805899C @ =0x0000144C
	adds r0, r2, r7
	strh r1, [r0]
	ldr r0, [r6, #8]
	adds r0, r0, r3
	ldr r1, .L080589A0 @ =0x00002C28
	adds r0, r0, r1
	ldrb r1, [r0]
	subs r7, #3
	adds r0, r2, r7
	strb r1, [r0]
	ldr r0, [r6, #8]
	adds r0, r0, r3
	ldr r1, .L080589A4 @ =0x00002C29
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r7, #1
	adds r0, r2, r7
	strb r1, [r0]
	ldr r0, [r6, #8]
	adds r0, r0, r3
	ldr r1, .L080589A8 @ =0x00002C2C
	adds r0, r0, r1
	ldrh r1, [r0]
	ldr r3, .L080589AC @ =0x00001454
	adds r0, r2, r3
	strh r1, [r0]
	adds r7, #0xc
	adds r2, r2, r7
	strh r5, [r2]
	adds r4, #1
	cmp r4, #3
	ble .L08058906
	adds r0, r6, #0
	bl func_0805C80C
	ldr r1, [r6, #8]
	ldr r3, .L080589B0 @ =0x00002C4A
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1]
	ldr r1, [r6, #8]
	adds r1, r1, r3
	ldrb r2, [r1]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1]
	ldr r1, .L080589B4 @ =0x00001428
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080589BC
	ldr r2, .L080589B8 @ =0x00001424
	adds r1, r6, r2
	movs r0, #0xd
	strh r0, [r1]
	b .L080589EE
	.align 2, 0
.L08058994: .4byte vtable_unk_080E5B80
.L08058998: .4byte 0x00002C2A
.L0805899C: .4byte 0x0000144C
.L080589A0: .4byte 0x00002C28
.L080589A4: .4byte 0x00002C29
.L080589A8: .4byte 0x00002C2C
.L080589AC: .4byte 0x00001454
.L080589B0: .4byte 0x00002C4A
.L080589B4: .4byte 0x00001428
.L080589B8: .4byte 0x00001424
.L080589BC:
	adds r0, r6, #0
	bl func_08059C94
	adds r0, r6, #0
	movs r1, #0
	bl func_08059FE0
	adds r0, r6, #0
	bl func_0805A3F0
	ldr r0, [sp, #4]
	ldr r1, .L08058A20 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L080589EE:
	ldr r3, .L08058A24 @ =0x00001424
	adds r0, r6, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0xd
	bne .L080589FC
	b .L08058E4C
.L080589FC:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r7, .L08058A24 @ =0x00001424
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xb
	bls .L08058A16
	b .L08058E30
.L08058A16:
	lsls r0, r0, #2
	ldr r1, .L08058A28 @ =.L08058A2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08058A20: .4byte 0x00000889
.L08058A24: .4byte 0x00001424
.L08058A28: .4byte .L08058A2C
.L08058A2C: @ jump table
	.4byte .L08058A5C @ case 0
	.4byte .L08058A80 @ case 1
	.4byte .L08058CCC @ case 2
	.4byte .L08058CCC @ case 3
	.4byte .L08058CCC @ case 4
	.4byte .L08058D54 @ case 5
	.4byte .L08058DD4 @ case 6
	.4byte .L08058D0C @ case 7
	.4byte .L08058D0C @ case 8
	.4byte .L08058D0C @ case 9
	.4byte .L08058D54 @ case 10
	.4byte .L08058D88 @ case 11
.L08058A5C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq .L08058A6C
	b .L08058E30
.L08058A6C:
	ldr r2, .L08058A78 @ =0x0000140A
	adds r0, r6, r2
	strh r1, [r0]
	ldr r3, .L08058A7C @ =0x00001424
	adds r1, r6, r3
	b .L08058D76
	.align 2, 0
.L08058A78: .4byte 0x0000140A
.L08058A7C: .4byte 0x00001424
.L08058A80:
	ldr r4, .L08058AC0 @ =0x00001426
	adds r5, r6, r4
	ldrb r0, [r5]
	cmp r0, #0
	bne .L08058AC8
	adds r0, r6, #0
	bl func_080088C4
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq .L08058B08
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	movs r7, #0xc4
	lsls r7, r7, #4
	adds r1, r7, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L08058AC4 @ =0x00001F49
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	movs r0, #1
	strb r0, [r5]
	b .L08058E30
	.align 2, 0
.L08058AC0: .4byte 0x00001426
.L08058AC4: .4byte 0x00001F49
.L08058AC8:
	adds r0, r6, #0
	bl func_080088C4
	movs r1, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq .L08058ADC
	b .L08058E30
.L08058ADC:
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	movs r7, #0xf2
	lsls r7, r7, #5
	adds r1, r7, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L08058B04 @ =0x00001D41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	strb r4, [r5]
	b .L08058E30
	.align 2, 0
.L08058B04: .4byte 0x00001D41
.L08058B08:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08058B44
	ldr r4, .L08058B28 @ =0x0000140A
	adds r0, r6, r4
	ldrh r1, [r0]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #0
	ble .L08058B2C
	subs r1, #1
	b .L08058B2E
	.align 2, 0
.L08058B28: .4byte 0x0000140A
.L08058B2C:
	movs r1, #4
.L08058B2E:
	ldr r2, .L08058B40 @ =0x0000140A
	adds r0, r6, r2
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
	b .L08058B7A
	.align 2, 0
.L08058B40: .4byte 0x0000140A
.L08058B44:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08058B7A
	ldr r3, .L08058B64 @ =0x0000140A
	adds r0, r6, r3
	ldrh r1, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #3
	bgt .L08058B68
	adds r1, #1
	b .L08058B6A
	.align 2, 0
.L08058B64: .4byte 0x0000140A
.L08058B68:
	movs r1, #0
.L08058B6A:
	ldr r7, .L08058B9C @ =0x0000140A
	adds r0, r6, r7
	strh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
.L08058B7A:
	ldr r1, .L08058B9C @ =0x0000140A
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #4
	beq .L08058BF4
	movs r4, #0
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L08058BA0
	movs r4, #1
	b .L08058BE0
	.align 2, 0
.L08058B9C: .4byte 0x0000140A
.L08058BA0:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L08058BB4
	movs r4, #1
	rsbs r4, r4, #0
	b .L08058BE0
.L08058BB4:
	adds r0, r6, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq .L08058BC8
	movs r4, #0xa
	b .L08058BE0
.L08058BC8:
	adds r0, r6, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L08058BDC
	movs r4, #0xa
	rsbs r4, r4, #0
.L08058BDC:
	cmp r4, #0
	beq .L08058BF4
.L08058BE0:
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_08059780
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
	b .L08058E30
.L08058BF4:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08058C24
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xc6
	bl func_08008B6C
	ldr r3, .L08058C1C @ =0x00001429
	adds r1, r6, r3
	movs r0, #0
	strb r0, [r1]
	ldr r4, .L08058C20 @ =0x00001424
	adds r1, r6, r4
	b .L08058CBC
	.align 2, 0
.L08058C1C: .4byte 0x00001429
.L08058C20: .4byte 0x00001424
.L08058C24:
	movs r4, #0
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne .L08058C4E
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08058C50
	ldr r7, .L08058CA0 @ =0x0000140A
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	bne .L08058C50
.L08058C4E:
	movs r4, #1
.L08058C50:
	cmp r4, #0
	bne .L08058C56
	b .L08058E30
.L08058C56:
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xc5
	bl func_08008B6C
	movs r2, #0xa1
	lsls r2, r2, #5
	adds r1, r6, r2
	movs r0, #0
	strh r0, [r1]
	ldr r3, .L08058CA4 @ =0x00001456
	adds r2, r6, r3
	movs r3, #3
.L08058C70:
	ldrh r0, [r2]
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	adds r2, #0x2c
	subs r3, #1
	cmp r3, #0
	bge .L08058C70
	movs r7, #0xa1
	lsls r7, r7, #5
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble .L08058CB0
	ldr r2, .L08058CA8 @ =0x00001429
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
	ldr r3, .L08058CAC @ =0x00001424
	adds r1, r6, r3
	movs r0, #7
	strh r0, [r1]
	b .L08058E30
	.align 2, 0
.L08058CA0: .4byte 0x0000140A
.L08058CA4: .4byte 0x00001456
.L08058CA8: .4byte 0x00001429
.L08058CAC: .4byte 0x00001424
.L08058CB0:
	ldr r4, .L08058CC4 @ =0x00001429
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	ldr r7, .L08058CC8 @ =0x00001424
	adds r1, r6, r7
.L08058CBC:
	movs r0, #2
	strh r0, [r1]
	b .L08058E30
	.align 2, 0
.L08058CC4: .4byte 0x00001429
.L08058CC8: .4byte 0x00001424
.L08058CCC:
	adds r0, r6, #0
	bl func_08059878
	ldr r1, .L08058CF4 @ =0x00001429
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq .L08058CDE
	b .L08058E30
.L08058CDE:
	ldr r2, .L08058CF8 @ =0x0000142A
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08058D00
	ldr r3, .L08058CFC @ =0x00001424
	adds r1, r6, r3
	movs r0, #5
	strh r0, [r1]
	b .L08058E30
	.align 2, 0
.L08058CF4: .4byte 0x00001429
.L08058CF8: .4byte 0x0000142A
.L08058CFC: .4byte 0x00001424
.L08058D00:
	ldr r4, .L08058D08 @ =0x00001424
	adds r1, r6, r4
	b .L08058D44
	.align 2, 0
.L08058D08: .4byte 0x00001424
.L08058D0C:
	adds r0, r6, #0
	bl func_08059878
	ldr r7, .L08058D34 @ =0x00001429
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #2
	beq .L08058D1E
	b .L08058E30
.L08058D1E:
	ldr r1, .L08058D38 @ =0x0000142A
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08058D40
	ldr r2, .L08058D3C @ =0x00001424
	adds r1, r6, r2
	movs r0, #0xa
	strh r0, [r1]
	b .L08058E30
	.align 2, 0
.L08058D34: .4byte 0x00001429
.L08058D38: .4byte 0x0000142A
.L08058D3C: .4byte 0x00001424
.L08058D40:
	ldr r3, .L08058D50 @ =0x00001424
	adds r1, r6, r3
.L08058D44:
	movs r0, #1
	strh r0, [r1]
	adds r0, r6, #0
	bl func_0805A3F0
	b .L08058E30
	.align 2, 0
.L08058D50: .4byte 0x00001424
.L08058D54:
	ldr r0, [sp, #4]
	ldr r1, .L08058D80 @ =0x00000889
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
	ldr r4, .L08058D84 @ =0x00001424
	adds r1, r6, r4
.L08058D76:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b .L08058E30
	.align 2, 0
.L08058D80: .4byte 0x00000889
.L08058D84: .4byte 0x00001424
.L08058D88:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08058E30
	ldr r0, [r6, #8]
	ldr r7, .L08058DC8 @ =0x00001AA8
	adds r0, r0, r7
	movs r1, #0xa1
	lsls r1, r1, #5
	adds r5, r6, r1
	movs r2, #0
	ldrsh r1, [r5, r2]
	movs r4, #0x32
	muls r1, r4, r1
	bl func_0809ACC0
	ldr r3, .L08058DCC @ =0x00001410
	adds r2, r6, r3
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
	ldr r0, .L08058DD0 @ =0x00001424
	adds r1, r6, r0
	movs r0, #0xd
	strh r0, [r1]
	b .L08058E30
	.align 2, 0
.L08058DC8: .4byte 0x00001AA8
.L08058DCC: .4byte 0x00001410
.L08058DD0: .4byte 0x00001424
.L08058DD4:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
	cmp r3, #0
	bne .L08058E30
	ldr r0, [r6, #8]
	ldr r1, .L08058E2C @ =0x00002C4A
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0x40
	orrs r1, r2
	strb r1, [r0]
	str r3, [sp, #8]
	mov r2, sl
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [r2]
	ldr r4, [sp, #0x1c]
	str r3, [r4]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L08058E10
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08058E10:
	ldr r1, [sp, #4]
	cmp r1, #0
	bne .L08058E1A
	bl .L08059764
.L08058E1A:
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	bl .L08059764
	.align 2, 0
.L08058E2C: .4byte 0x00002C4A
.L08058E30:
	adds r0, r6, #0
	movs r1, #0
	bl func_0805A4DC
	adds r0, r6, #0
	bl func_0805A744
	ldr r7, .L08058FB4 @ =0x00001424
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xd
	beq .L08058E4C
	b .L080589FC
.L08058E4C:
	adds r0, r6, #0
	bl func_08008724
	movs r2, #0xc1
	lsls r2, r2, #3
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r5, #0
	str r5, [r4, #4]
	movs r3, #0xc3
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	movs r7, #0xc4
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	movs r1, #0xb9
	lsls r1, r1, #3
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0xbb
	lsls r2, r2, #3
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r3, #0xbd
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	subs r7, #0x28
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0xc7
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	adds r0, r6, #0
	bl func_0805AB08
	adds r0, r6, #0
	bl func_0805AD14
	adds r0, r6, #0
	bl func_0805B38C
	adds r0, r6, #0
	adds r0, #0x18
	movs r1, #0x21
	bl func_08008B6C
	ldr r0, [sp, #4]
	ldr r1, .L08058FB8 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r1, .L08058FB4 @ =0x00001424
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x20]
	cmp r0, #0x1d
	bne .L08058F4E
	b .L08059352
.L08058F4E:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	movs r4, #0
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L08058F7C
	ldr r4, .L08058FBC @ =0x00001427
	adds r0, r6, r4
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r4, r0, #0x1f
.L08058F7C:
	cmp r4, #0
	beq .L08058F9E
	ldr r7, .L08058FBC @ =0x00001427
	adds r2, r6, r7
	ldrb r1, [r2]
	movs r0, #1
	eors r1, r0
	strb r1, [r2]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq .L08058FC0
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xb8
	bl func_08008B6C
.L08058F9E:
	ldr r1, .L08058FBC @ =0x00001427
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L08058FC0
	adds r0, r6, #0
	bl func_0805BC34
	b .L08059344
	.align 2, 0
.L08058FB4: .4byte 0x00001424
.L08058FB8: .4byte 0x00000889
.L08058FBC: .4byte 0x00001427
.L08058FC0:
	ldr r2, .L08058FDC @ =0x00001424
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0xd
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bls .L08058FD2
	b .L0805933E
.L08058FD2:
	lsls r0, r0, #2
	ldr r1, .L08058FE0 @ =.L08058FE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08058FDC: .4byte 0x00001424
.L08058FE0: .4byte .L08058FE4
.L08058FE4: @ jump table
	.4byte .L08059024 @ case 0
	.4byte .L08059074 @ case 1
	.4byte .L08059074 @ case 2
	.4byte .L08059074 @ case 3
	.4byte .L08059074 @ case 4
	.4byte .L08059074 @ case 5
	.4byte .L08059074 @ case 6
	.4byte .L08059074 @ case 7
	.4byte .L08059074 @ case 8
	.4byte .L080590A0 @ case 9
	.4byte .L08059134 @ case 10
	.4byte .L080591C4 @ case 11
	.4byte .L080591F0 @ case 12
	.4byte .L0805926C @ case 13
	.4byte .L080592FC @ case 14
	.4byte .L08059328 @ case 15
.L08059024:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq .L08059034
	b .L0805933E
.L08059034:
	ldr r3, .L08059054 @ =0x00001429
	adds r0, r6, r3
	strb r1, [r0]
	ldr r4, .L08059058 @ =0x0000140E
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08059060
	ldr r0, [r6, #0x10]
	bl func_08050E5C
	ldr r7, .L0805905C @ =0x00001424
	adds r1, r6, r7
	movs r0, #0x16
	b .L0805933C
	.align 2, 0
.L08059054: .4byte 0x00001429
.L08059058: .4byte 0x0000140E
.L0805905C: .4byte 0x00001424
.L08059060:
	ldr r0, [r6, #0x10]
	movs r1, #0x75
	bl func_08050E50
	ldr r0, .L08059070 @ =0x00001424
	adds r1, r6, r0
	b .L08059338
	.align 2, 0
.L08059070: .4byte 0x00001424
.L08059074:
	adds r0, r6, #0
	bl func_08059878
	ldr r2, .L08059098 @ =0x00001429
	adds r1, r6, r2
	ldrb r0, [r1]
	cmp r0, #2
	beq .L08059086
	b .L0805933E
.L08059086:
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r6, #0x10]
	bl func_08050E5C
	ldr r3, .L0805909C @ =0x00001424
	adds r1, r6, r3
	b .L08059338
	.align 2, 0
.L08059098: .4byte 0x00001429
.L0805909C: .4byte 0x00001424
.L080590A0:
	ldr r4, .L08059114 @ =0x000014E4
	adds r1, r6, r4
	ldr r7, .L08059118 @ =0x0000144C
	adds r0, r6, r7
	ldrh r0, [r0]
	str r0, [r1]
	ldr r0, .L0805911C @ =0x000014E8
	adds r1, r6, r0
	ldr r2, .L08059120 @ =0x00001478
	adds r0, r6, r2
	ldrh r0, [r0]
	str r0, [r1]
	ldr r3, .L08059124 @ =0x000014EC
	adds r1, r6, r3
	subs r4, #0x40
	adds r0, r6, r4
	ldrh r0, [r0]
	str r0, [r1]
	adds r7, #0xa4
	adds r1, r6, r7
	adds r2, #0x58
	adds r0, r6, r2
	ldrh r0, [r0]
	str r0, [r1]
	subs r3, #0x10
	adds r0, r6, r3
	ldr r0, [r0]
	bl GetName__C6Animal
	adds r4, #0x54
	adds r1, r6, r4
	str r0, [r1]
	adds r0, r6, #0
	bl func_08059878
	subs r7, #0xc7
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #2
	beq .L080590F2
	b .L0805933E
.L080590F2:
	ldr r0, .L08059128 @ =0x00001424
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	ldr r2, .L0805912C @ =0x00001406
	adds r1, r6, r2
	movs r0, #0x78
	strh r0, [r1]
	ldr r3, .L08059130 @ =0x00001427
	adds r2, r6, r3
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	b .L0805933E
	.align 2, 0
.L08059114: .4byte 0x000014E4
.L08059118: .4byte 0x0000144C
.L0805911C: .4byte 0x000014E8
.L08059120: .4byte 0x00001478
.L08059124: .4byte 0x000014EC
.L08059128: .4byte 0x00001424
.L0805912C: .4byte 0x00001406
.L08059130: .4byte 0x00001427
.L08059134:
	ldr r4, .L080591A4 @ =0x00001406
	adds r1, r6, r4
	ldrh r0, [r1]
	subs r0, #1
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble .L08059148
	b .L0805933E
.L08059148:
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, .L080591A8 @ =0x00000766
	bl func_0805E860
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r1, .L080591AC @ =0x00000742
	bl func_0805E860
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r1, .L080591B0 @ =0x0000074E
	bl func_0805E860
	movs r3, #0xac
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r1, .L080591B4 @ =0x0000075A
	bl func_0805E860
	adds r7, #0xe0
	adds r0, r6, r7
	ldr r1, .L080591B8 @ =0x00000772
	bl func_0805E860
	ldr r1, .L080591BC @ =0x000013FC
	adds r0, r6, r1
	strh r4, [r0]
	adds r0, r6, #0
	adds r0, #0x1c
	movs r2, #3
	ldr r3, .L080591C0 @ =0x00001404
	adds r1, r6, r3
.L08059192:
	strh r2, [r1]
	subs r1, #2
	subs r2, #1
	cmp r2, #0
	bge .L08059192
	movs r1, #0xb9
	bl func_08008B6C
	b .L08059334
	.align 2, 0
.L080591A4: .4byte 0x00001406
.L080591A8: .4byte 0x00000766
.L080591AC: .4byte 0x00000742
.L080591B0: .4byte 0x0000074E
.L080591B4: .4byte 0x0000075A
.L080591B8: .4byte 0x00000772
.L080591BC: .4byte 0x000013FC
.L080591C0: .4byte 0x00001404
.L080591C4:
	adds r0, r6, #0
	bl func_0805C96C
	cmp r0, #3
	ble .L080591E0
	ldr r7, .L080591E8 @ =0x00001406
	adds r1, r6, r7
	movs r0, #0x78
	strh r0, [r1]
	ldr r0, .L080591EC @ =0x00001424
	adds r1, r6, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
.L080591E0:
	adds r0, r6, #0
	bl func_0805AD14
	b .L0805933E
	.align 2, 0
.L080591E8: .4byte 0x00001406
.L080591EC: .4byte 0x00001424
.L080591F0:
	ldr r2, .L0805924C @ =0x00001406
	adds r1, r6, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble .L08059202
	b .L0805933E
.L08059202:
	ldr r3, .L08059250 @ =0x0000140E
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #1
	bne .L08059230
	ldr r4, .L08059254 @ =0x000013FE
	adds r0, r6, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #2
	bne .L08059230
	ldr r2, [r6, #8]
	ldr r0, .L08059258 @ =0x00002C4A
	adds r2, r2, r0
	ldrb r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2]
	ldr r1, .L0805925C @ =0x000014DC
	adds r0, r6, r1
	ldr r0, [r0]
	bl SetFestivalWinner__6Animal
.L08059230:
	ldr r3, .L08059260 @ =0x00001427
	adds r2, r6, r3
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	ldr r4, .L08059264 @ =0x00001429
	adds r0, r6, r4
	strb r1, [r0]
	ldr r7, .L08059268 @ =0x00001424
	adds r1, r6, r7
	b .L08059338
	.align 2, 0
.L0805924C: .4byte 0x00001406
.L08059250: .4byte 0x0000140E
.L08059254: .4byte 0x000013FE
.L08059258: .4byte 0x00002C4A
.L0805925C: .4byte 0x000014DC
.L08059260: .4byte 0x00001427
.L08059264: .4byte 0x00001429
.L08059268: .4byte 0x00001424
.L0805926C:
	ldr r0, .L080592E0 @ =0x000014E4
	adds r3, r6, r0
	ldr r1, .L080592E4 @ =0x000013FE
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r2, #0x2c
	muls r0, r2, r0
	adds r0, r6, r0
	adds r1, #0x4e
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [r3]
	ldr r4, .L080592E8 @ =0x000014E8
	adds r3, r6, r4
	movs r7, #0xa0
	lsls r7, r7, #5
	adds r0, r6, r7
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r2, r0
	adds r0, r6, r0
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [r3]
	adds r7, #0xec
	adds r3, r6, r7
	ldr r4, .L080592EC @ =0x00001402
	adds r0, r6, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r2, r0
	adds r0, r6, r0
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [r3]
	ldr r0, .L080592F0 @ =0x000014F0
	adds r3, r6, r0
	adds r4, #2
	adds r0, r6, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	muls r0, r2, r0
	adds r0, r6, r0
	adds r0, r0, r1
	ldrh r0, [r0]
	str r0, [r3]
	adds r0, r6, #0
	bl func_08059878
	ldr r1, .L080592F4 @ =0x00001429
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #2
	bne .L0805933E
	ldr r2, .L080592F8 @ =0x00001424
	adds r1, r6, r2
	b .L08059338
	.align 2, 0
.L080592E0: .4byte 0x000014E4
.L080592E4: .4byte 0x000013FE
.L080592E8: .4byte 0x000014E8
.L080592EC: .4byte 0x00001402
.L080592F0: .4byte 0x000014F0
.L080592F4: .4byte 0x00001429
.L080592F8: .4byte 0x00001424
.L080592FC:
	ldr r0, [sp, #4]
	ldr r1, .L08059320 @ =0x00000889
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
	ldr r3, .L08059324 @ =0x00001424
	adds r1, r6, r3
	b .L08059338
	.align 2, 0
.L08059320: .4byte 0x00000889
.L08059324: .4byte 0x00001424
.L08059328:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0805933E
.L08059334:
	ldr r4, .L0805943C @ =0x00001424
	adds r1, r6, r4
.L08059338:
	ldrh r0, [r1]
	adds r0, #1
.L0805933C:
	strh r0, [r1]
.L0805933E:
	adds r0, r6, #0
	bl func_0805BC34
.L08059344:
	ldr r7, .L0805943C @ =0x00001424
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x1d
	beq .L08059352
	b .L08058F4E
.L08059352:
	adds r0, r6, #0
	bl func_08008724
	movs r2, #0
	mov sb, r2
	movs r3, #0xcd
	lsls r3, r3, #3
	adds r7, r6, r3
	ldr r0, .L08059440 @ =0x00000664
	adds r4, r6, r0
	movs r1, #0xcc
	lsls r1, r1, #3
	adds r5, r6, r1
	movs r2, #3
	mov r8, r2
.L08059370:
	ldr r1, [r4]
	adds r0, r5, #0
	bl func_080073E0
	mov r3, sb
	str r3, [r4]
	ldr r1, [r4, #8]
	adds r0, r7, #0
	bl func_080073E0
	mov r0, sb
	str r0, [r4, #8]
	adds r7, #0x18
	adds r4, #0x18
	adds r5, #0x18
	movs r1, #1
	rsbs r1, r1, #0
	add r8, r1
	mov r2, r8
	cmp r2, #0
	bge .L08059370
	movs r3, #0xc1
	lsls r3, r3, #3
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r7, #0xc3
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0xc4
	lsls r0, r0, #3
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r2, .L08059444 @ =0x0000140A
	adds r1, r6, r2
	ldr r0, .L08059448 @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r6, #0
	bl func_08059C94
	adds r0, r6, #0
	movs r1, #1
	bl func_08059FE0
	ldr r3, .L0805944C @ =0x000013FE
	adds r0, r6, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, r6, r0
	ldr r7, .L08059450 @ =0x00001456
	adds r1, r0, r7
	ldr r2, .L08059454 @ =0x00001454
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0]
	adds r3, r1, #0
	muls r3, r0, r3
	adds r1, r3, #0
	ldr r4, .L08059458 @ =0x0000141E
	adds r0, r6, r4
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, .L0805945C @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	subs r7, #0x32
	b .L08059722
	.align 2, 0
.L0805943C: .4byte 0x00001424
.L08059440: .4byte 0x00000664
.L08059444: .4byte 0x0000140A
.L08059448: .4byte 0x0000FFFF
.L0805944C: .4byte 0x000013FE
.L08059450: .4byte 0x00001456
.L08059454: .4byte 0x00001454
.L08059458: .4byte 0x0000141E
.L0805945C: .4byte 0x00000889
.L08059460:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r2, .L08059488 @ =0x00001424
	adds r0, r6, r2
	ldrh r0, [r0]
	subs r0, #0x1d
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #7
	bls .L0805947E
	b .L08059712
.L0805947E:
	lsls r0, r0, #2
	ldr r1, .L0805948C @ =.L08059490
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08059488: .4byte 0x00001424
.L0805948C: .4byte .L08059490
.L08059490: @ jump table
	.4byte .L080594B0 @ case 0
	.4byte .L080594DC @ case 1
	.4byte .L08059534 @ case 2
	.4byte .L0805965C @ case 3
	.4byte .L08059690 @ case 4
	.4byte .L080596BC @ case 5
	.4byte .L080596F0 @ case 6
	.4byte .L08059712 @ case 7
.L080594B0:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	cmp r4, #0
	beq .L080594C0
	b .L08059712
.L080594C0:
	ldr r0, [r6, #0x10]
	bl func_08050E5C
	ldr r3, .L080594D4 @ =0x00001429
	adds r0, r6, r3
	strb r4, [r0]
	ldr r4, .L080594D8 @ =0x00001424
	adds r1, r6, r4
	b .L080596DE
	.align 2, 0
.L080594D4: .4byte 0x00001429
.L080594D8: .4byte 0x00001424
.L080594DC:
	ldr r7, .L08059520 @ =0x000014F4
	adds r1, r6, r7
	ldr r2, .L08059524 @ =0x0000141C
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #1
	str r0, [r1]
	adds r0, r6, #0
	bl func_08059878
	ldr r4, .L08059528 @ =0x00001429
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #2
	beq .L080594FE
	b .L08059712
.L080594FE:
	subs r7, #0xd2
	adds r1, r6, r7
	movs r2, #0
	movs r0, #8
	strh r0, [r1]
	movs r1, #0xa1
	lsls r1, r1, #5
	adds r0, r6, r1
	strh r2, [r0]
	ldr r2, .L0805952C @ =0x00001406
	adds r1, r6, r2
	movs r0, #0x3c
	strh r0, [r1]
	ldr r3, .L08059530 @ =0x00001424
	adds r1, r6, r3
	b .L080596DE
	.align 2, 0
.L08059520: .4byte 0x000014F4
.L08059524: .4byte 0x0000141C
.L08059528: .4byte 0x00001429
.L0805952C: .4byte 0x00001406
.L08059530: .4byte 0x00001424
.L08059534:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L0805957C
	ldr r4, .L08059590 @ =0x00001422
	adds r0, r6, r4
	movs r1, #0
	strh r1, [r0]
	ldr r7, .L08059594 @ =0x00001406
	adds r0, r6, r7
	movs r1, #0
	ldrsh r4, [r0, r1]
	cmp r4, #0
	bne .L0805957C
	ldr r3, .L08059598 @ =0x00001418
	adds r2, r6, r3
	adds r7, #0x18
	adds r3, r6, r7
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	ldr r1, .L0805959C @ =0x0001869F
	cmp r0, r1
	ble .L08059570
	str r1, [r2]
.L08059570:
	strh r4, [r3]
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xba
	bl func_08008B6C
.L0805957C:
	ldr r1, .L08059594 @ =0x00001406
	adds r5, r6, r1
	ldrh r1, [r5]
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L080595A0
	subs r0, r1, #1
	strh r0, [r5]
	b .L08059712
	.align 2, 0
.L08059590: .4byte 0x00001422
.L08059594: .4byte 0x00001406
.L08059598: .4byte 0x00001418
.L0805959C: .4byte 0x0001869F
.L080595A0:
	ldr r3, .L0805960C @ =0x0000141E
	adds r4, r6, r3
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r0, #0
	ble .L08059620
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xba
	bl func_08008B6C
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	ldr r0, .L08059610 @ =0x00001418
	adds r1, r6, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r2, .L08059614 @ =0x0001869F
	cmp r0, r2
	ble .L080595CE
	str r2, [r1]
.L080595CE:
	movs r2, #0xa1
	lsls r2, r2, #5
	adds r1, r6, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	movs r1, #5
	bl __modsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne .L080595FC
	ldr r4, .L08059618 @ =0x00001422
	adds r1, r6, r4
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	ble .L080595FC
	subs r0, r2, #1
	strh r0, [r1]
.L080595FC:
	ldr r1, .L08059618 @ =0x00001422
	adds r0, r6, r1
	ldrh r1, [r0]
	ldr r2, .L0805961C @ =0x00001406
	adds r0, r6, r2
	strh r1, [r0]
	b .L08059712
	.align 2, 0
.L0805960C: .4byte 0x0000141E
.L08059610: .4byte 0x00001418
.L08059614: .4byte 0x0001869F
.L08059618: .4byte 0x00001422
.L0805961C: .4byte 0x00001406
.L08059620:
	ldr r3, [r6, #8]
	ldr r4, .L08059648 @ =0x00001418
	adds r0, r6, r4
	ldr r2, [r0]
	ldr r7, .L0805964C @ =0x00002C48
	adds r3, r3, r7
	ldr r0, .L08059650 @ =0x0001FFFF
	ands r2, r0
	lsls r2, r2, #2
	ldr r0, [r3]
	ldr r1, .L08059654 @ =0xFFF80003
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	movs r0, #0x1e
	strh r0, [r5]
	ldr r0, .L08059658 @ =0x00001424
	adds r1, r6, r0
	b .L080596DE
	.align 2, 0
.L08059648: .4byte 0x00001418
.L0805964C: .4byte 0x00002C48
.L08059650: .4byte 0x0001FFFF
.L08059654: .4byte 0xFFF80003
.L08059658: .4byte 0x00001424
.L0805965C:
	ldr r2, .L08059684 @ =0x00001406
	adds r1, r6, r2
	ldrh r0, [r1]
	subs r0, #1
	movs r4, #0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble .L08059712
	ldr r0, [r6, #0x10]
	movs r1, #0x75
	bl func_08050E50
	ldr r3, .L08059688 @ =0x00001429
	adds r0, r6, r3
	strb r4, [r0]
	ldr r4, .L0805968C @ =0x00001424
	adds r1, r6, r4
	b .L080596DE
	.align 2, 0
.L08059684: .4byte 0x00001406
.L08059688: .4byte 0x00001429
.L0805968C: .4byte 0x00001424
.L08059690:
	adds r0, r6, #0
	bl func_08059878
	ldr r7, .L080596B4 @ =0x00001429
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #2
	bne .L08059712
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08059712
	ldr r0, .L080596B8 @ =0x00001424
	adds r1, r6, r0
	b .L080596DE
	.align 2, 0
.L080596B4: .4byte 0x00001429
.L080596B8: .4byte 0x00001424
.L080596BC:
	ldr r0, [sp, #4]
	ldr r1, .L080596E8 @ =0x00000889
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
	ldr r2, .L080596EC @ =0x00001424
	adds r1, r6, r2
.L080596DE:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b .L08059712
	.align 2, 0
.L080596E8: .4byte 0x00000889
.L080596EC: .4byte 0x00001424
.L080596F0:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08059712
	ldr r3, .L08059778 @ =0x00001424
	adds r0, r6, r3
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	ldr r0, [r6, #8]
	ldr r4, .L0805977C @ =0x00002C1C
	adds r0, r0, r4
	movs r1, #1
	bl func_08057F24
.L08059712:
	adds r0, r6, #0
	movs r1, #1
	bl func_0805A4DC
	adds r0, r6, #0
	bl func_0805A744
	ldr r7, .L08059778 @ =0x00001424
.L08059722:
	adds r0, r6, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x24
	beq .L0805972E
	b .L08059460
.L0805972E:
	movs r0, #0
	str r0, [sp, #8]
	mov r2, sl
	str r2, [sp, #0x14]
	ldr r3, [sp, #0x20]
	str r0, [r3, #4]
	str r0, [r2]
	ldr r4, [sp, #0x1c]
	str r0, [r4]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L08059752
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08059752:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L08059764
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08059764:
	ldr r0, [sp, #0x1c]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08059778: .4byte 0x00001424
.L0805977C: .4byte 0x00002C1C

	thumb_func_start func_08059780
func_08059780: @ 0x08059780
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0xa1
	lsls r0, r0, #5
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	movs r3, #0
	ldr r2, .L08059804 @ =0x0000140A
	adds r4, r5, r2
	ldr r7, .L08059808 @ =0x00001456
	adds r2, r5, r7
.L0805979A:
	movs r7, #0
	ldrsh r0, [r4, r7]
	cmp r3, r0
	beq .L080597AA
	ldrh r0, [r2]
	ldrh r7, [r1]
	adds r0, r0, r7
	strh r0, [r1]
.L080597AA:
	adds r2, #0x2c
	adds r3, #1
	cmp r3, #3
	ble .L0805979A
	ldr r0, .L0805980C @ =0x00001410
	adds r2, r5, r0
	movs r1, #0xa1
	lsls r1, r1, #5
	adds r0, r5, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x32
	muls r1, r0, r1
	ldr r0, [r2]
	subs r0, r0, r1
	movs r1, #0x32
	bl __udivsi3
	adds r2, r0, #0
	cmp r2, #0x63
	ble .L080597D6
	movs r2, #0x63
.L080597D6:
	ldr r7, .L08059804 @ =0x0000140A
	adds r0, r5, r7
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, r5, r0
	adds r7, #0x4c
	adds r0, r0, r7
	ldrh r3, [r0]
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, r2
	bne .L080597F6
	cmp r6, #0
	bgt .L0805982A
.L080597F6:
	cmp r3, #0
	bne .L08059810
	cmp r6, #0
	bge .L08059810
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
	b .L0805982C
	.align 2, 0
.L08059804: .4byte 0x0000140A
.L08059808: .4byte 0x00001456
.L0805980C: .4byte 0x00001410
.L08059810:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r2
	ble .L08059824
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
.L08059824:
	lsls r0, r3, #0x10
	cmp r0, #0
	bge .L0805982C
.L0805982A:
	movs r3, #0
.L0805982C:
	ldr r2, .L0805986C @ =0x0000140A
	adds r0, r5, r2
	movs r7, #0
	ldrsh r1, [r0, r7]
	movs r0, #0x2c
	muls r0, r1, r0
	adds r0, r5, r0
	ldr r1, .L08059870 @ =0x00001456
	adds r0, r0, r1
	strh r3, [r0]
	movs r7, #0xa1
	lsls r7, r7, #5
	adds r2, r5, r7
	ldrh r1, [r2]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r1
	strh r1, [r2]
	ldr r1, .L08059874 @ =0x00001414
	adds r4, r5, r1
	subs r7, #0x10
	adds r3, r5, r7
	movs r1, #0
	ldrsh r2, [r2, r1]
	movs r1, #0x32
	muls r2, r1, r2
	ldr r1, [r3]
	subs r1, r1, r2
	str r1, [r4]
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0805986C: .4byte 0x0000140A
.L08059870: .4byte 0x00001456
.L08059874: .4byte 0x00001414

	thumb_func_start func_08059878
func_08059878: @ 0x08059878
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
	mov sb, r0
	adds r0, r7, #0
	bl func_080088DC
	mov r8, r0
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	adds r1, r7, #0
	adds r1, #0x14
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L080598CA
	b .L08059C82
.L080598CA:
	lsls r0, r0, #2
	ldr r1, .L080598D4 @ =.L080598D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080598D4: .4byte .L080598D8
.L080598D8: @ jump table
	.4byte .L080598F4 @ case 0
	.4byte .L08059C82 @ case 1
	.4byte .L08059C82 @ case 2
	.4byte .L08059916 @ case 3
	.4byte .L08059C82 @ case 4
	.4byte .L08059C82 @ case 5
	.4byte .L08059C82 @ case 6
.L080598F4:
	ldr r1, .L0805990C @ =0x00001429
	adds r4, r7, r1
	ldrb r0, [r4]
	cmp r0, #0
	bne .L08059910
	ldr r0, [r7, #0x10]
	bl func_08050D5C
	movs r0, #3
	strb r0, [r4]
	b .L08059C82
	.align 2, 0
.L0805990C: .4byte 0x00001429
.L08059910:
	movs r0, #2
	strb r0, [r4]
	b .L08059C82
.L08059916:
	ldr r3, .L0805992C @ =0x00001429
	adds r4, r7, r3
	ldrb r5, [r4]
	cmp r5, #5
	bne .L08059930
	ldr r0, [r7, #0x10]
	bl func_08050D74
	movs r0, #1
	strb r0, [r4]
	b .L08059C82
	.align 2, 0
.L0805992C: .4byte 0x00001429
.L08059930:
	cmp r5, #4
	bne .L080599DE
	ldr r0, [r7, #0x10]
	bl func_08050DF0
	movs r6, #0
	movs r3, #3
	strb r3, [r4]
	ldr r4, .L08059958 @ =0x00001424
	adds r2, r7, r4
	movs r4, #0
	ldrsh r1, [r2, r4]
	cmp r1, #7
	beq .L08059990
	cmp r1, #7
	bgt .L0805995C
	cmp r1, #2
	beq .L08059966
	b .L08059C82
	.align 2, 0
.L08059958: .4byte 0x00001424
.L0805995C:
	cmp r1, #0xe
	beq .L080599BC
	cmp r1, #0x14
	beq .L080599C8
	b .L08059C82
.L08059966:
	cmp r0, #1
	bne .L08059978
	ldr r1, .L08059974 @ =0x0000142A
	adds r0, r7, r1
	strb r6, [r0]
	strh r3, [r2]
	b .L08059C82
	.align 2, 0
.L08059974: .4byte 0x0000142A
.L08059978:
	cmp r0, #2
	beq .L0805997E
	b .L08059C82
.L0805997E:
	ldr r3, .L0805998C @ =0x0000142A
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	strh r5, [r2]
	b .L08059C82
	.align 2, 0
.L0805998C: .4byte 0x0000142A
.L08059990:
	cmp r0, #1
	bne .L080599A4
	ldr r4, .L080599A0 @ =0x0000142A
	adds r0, r7, r4
	strb r6, [r0]
	movs r0, #8
	strh r0, [r2]
	b .L08059C82
	.align 2, 0
.L080599A0: .4byte 0x0000142A
.L080599A4:
	cmp r0, #2
	beq .L080599AA
	b .L08059C82
.L080599AA:
	ldr r1, .L080599B8 @ =0x0000142A
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	movs r0, #9
	strh r0, [r2]
	b .L08059C82
	.align 2, 0
.L080599B8: .4byte 0x0000142A
.L080599BC:
	cmp r0, #1
	beq .L080599D8
	cmp r0, #2
	beq .L080599C6
	b .L08059C82
.L080599C6:
	b .L080599CC
.L080599C8:
	cmp r0, #1
	bne .L080599D2
.L080599CC:
	movs r0, #0x15
	strh r0, [r2]
	b .L08059C82
.L080599D2:
	cmp r0, #2
	beq .L080599D8
	b .L08059C82
.L080599D8:
	movs r0, #0xf
	strh r0, [r2]
	b .L08059C82
.L080599DE:
	cmp r5, #3
	beq .L080599E4
	b .L08059C82
.L080599E4:
	movs r0, #5
	strb r0, [r4]
	ldr r3, .L08059A04 @ =0x00001424
	adds r0, r7, r3
	ldrh r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1f
	bls .L080599FA
	b .L08059C82
.L080599FA:
	lsls r0, r0, #2
	ldr r1, .L08059A08 @ =.L08059A0C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08059A04: .4byte 0x00001424
.L08059A08: .4byte .L08059A0C
.L08059A0C: @ jump table
	.4byte .L08059A8C @ case 0
	.4byte .L08059AA4 @ case 1
	.4byte .L08059AB0 @ case 2
	.4byte .L08059C82 @ case 3
	.4byte .L08059C82 @ case 4
	.4byte .L08059ABC @ case 5
	.4byte .L08059AD4 @ case 6
	.4byte .L08059AF8 @ case 7
	.4byte .L08059C82 @ case 8
	.4byte .L08059C82 @ case 9
	.4byte .L08059C82 @ case 10
	.4byte .L08059C82 @ case 11
	.4byte .L08059B04 @ case 12
	.4byte .L08059B1C @ case 13
	.4byte .L08059B44 @ case 14
	.4byte .L08059B6C @ case 15
	.4byte .L08059B98 @ case 16
	.4byte .L08059BC8 @ case 17
	.4byte .L08059C00 @ case 18
	.4byte .L08059C34 @ case 19
	.4byte .L08059C40 @ case 20
	.4byte .L08059C82 @ case 21
	.4byte .L08059C82 @ case 22
	.4byte .L08059C82 @ case 23
	.4byte .L08059C4C @ case 24
	.4byte .L08059C82 @ case 25
	.4byte .L08059C82 @ case 26
	.4byte .L08059C82 @ case 27
	.4byte .L08059C60 @ case 28
	.4byte .L08059C82 @ case 29
	.4byte .L08059C82 @ case 30
	.4byte .L08059C74 @ case 31
.L08059A8C:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059A98 @ =gUnk_080FAA40
	ldr r2, .L08059A9C @ =gUnk_080FAA5C
	ldr r3, .L08059AA0 @ =gUnk_080FAA60
	b .L08059C08
	.align 2, 0
.L08059A98: .4byte gUnk_080FAA40
.L08059A9C: .4byte gUnk_080FAA5C
.L08059AA0: .4byte gUnk_080FAA60
.L08059AA4:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059AAC @ =gUnk_080FAA64
	b .L08059C50
	.align 2, 0
.L08059AAC: .4byte gUnk_080FAA64
.L08059AB0:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059AB8 @ =gUnk_080FAA74
	b .L08059C64
	.align 2, 0
.L08059AB8: .4byte gUnk_080FAA74
.L08059ABC:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059AC8 @ =gUnk_080FAA88
	ldr r2, .L08059ACC @ =gUnk_080FAA5C
	ldr r3, .L08059AD0 @ =gUnk_080FAA60
	b .L08059C08
	.align 2, 0
.L08059AC8: .4byte gUnk_080FAA88
.L08059ACC: .4byte gUnk_080FAA5C
.L08059AD0: .4byte gUnk_080FAA60
.L08059AD4:
	ldr r1, .L08059AE4 @ =0x0000140E
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08059AEC
	ldr r0, [r7, #0x10]
	ldr r1, .L08059AE8 @ =gUnk_080FAAA4
	b .L08059C50
	.align 2, 0
.L08059AE4: .4byte 0x0000140E
.L08059AE8: .4byte gUnk_080FAAA4
.L08059AEC:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059AF4 @ =gUnk_080FAAA4
	b .L08059C64
	.align 2, 0
.L08059AF4: .4byte gUnk_080FAAA4
.L08059AF8:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059B00 @ =gUnk_080FAACC
	b .L08059C50
	.align 2, 0
.L08059B00: .4byte gUnk_080FAACC
.L08059B04:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059B10 @ =gUnk_080FAAE0
	ldr r2, .L08059B14 @ =gUnk_080FAA5C
	ldr r3, .L08059B18 @ =gUnk_080FAA60
	b .L08059C08
	.align 2, 0
.L08059B10: .4byte gUnk_080FAAE0
.L08059B14: .4byte gUnk_080FAA5C
.L08059B18: .4byte gUnk_080FAA60
.L08059B1C:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059B38 @ =gUnk_080FAAFC
	movs r3, #0xa7
	lsls r3, r3, #5
	adds r2, r7, r3
	bl func_08050DA0
	ldr r4, .L08059B3C @ =0x00001424
	adds r1, r7, r4
	movs r0, #0x10
	strh r0, [r1]
	ldr r0, .L08059B40 @ =0x00001429
	adds r1, r7, r0
	b .L08059BEA
	.align 2, 0
.L08059B38: .4byte gUnk_080FAAFC
.L08059B3C: .4byte 0x00001424
.L08059B40: .4byte 0x00001429
.L08059B44:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059B60 @ =gUnk_080FAB94
	movs r3, #0xa7
	lsls r3, r3, #5
	adds r2, r7, r3
	bl func_08050DA0
	ldr r4, .L08059B64 @ =0x00001424
	adds r1, r7, r4
	movs r0, #0x11
	strh r0, [r1]
	ldr r0, .L08059B68 @ =0x00001429
	adds r1, r7, r0
	b .L08059BEA
	.align 2, 0
.L08059B60: .4byte gUnk_080FAB94
.L08059B64: .4byte 0x00001424
.L08059B68: .4byte 0x00001429
.L08059B6C:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059B8C @ =gUnk_080FABE0
	movs r3, #0xa7
	lsls r3, r3, #5
	adds r2, r7, r3
	bl func_08050DA0
	ldr r4, .L08059B90 @ =0x0000149E
	adds r1, r7, r4
	movs r0, #0x78
	strh r0, [r1]
	ldr r0, .L08059B94 @ =0x00001424
	adds r1, r7, r0
	movs r0, #0x12
	b .L08059BE4
	.align 2, 0
.L08059B8C: .4byte gUnk_080FABE0
.L08059B90: .4byte 0x0000149E
.L08059B94: .4byte 0x00001424
.L08059B98:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059BBC @ =gUnk_080FAC24
	movs r4, #0xa7
	lsls r4, r4, #5
	adds r2, r7, r4
	bl func_08050DA0
	ldr r0, .L08059BC0 @ =0x0000149E
	adds r1, r7, r0
	movs r0, #0x3c
	strh r0, [r1]
	ldr r3, .L08059BC4 @ =0x00001424
	adds r1, r7, r3
	movs r0, #0x13
	strh r0, [r1]
	subs r4, #0xb7
	adds r1, r7, r4
	b .L08059BEA
	.align 2, 0
.L08059BBC: .4byte gUnk_080FAC24
.L08059BC0: .4byte 0x0000149E
.L08059BC4: .4byte 0x00001424
.L08059BC8:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059BF0 @ =gUnk_080FAC8C
	movs r3, #0xa7
	lsls r3, r3, #5
	adds r2, r7, r3
	bl func_08050DA0
	ldr r4, .L08059BF4 @ =0x0000149E
	adds r1, r7, r4
	movs r0, #0xff
	strh r0, [r1]
	ldr r0, .L08059BF8 @ =0x00001424
	adds r1, r7, r0
	movs r0, #0x14
.L08059BE4:
	strh r0, [r1]
	ldr r3, .L08059BFC @ =0x00001429
	adds r1, r7, r3
.L08059BEA:
	movs r0, #3
	strb r0, [r1]
	b .L08059C82
	.align 2, 0
.L08059BF0: .4byte gUnk_080FAC8C
.L08059BF4: .4byte 0x0000149E
.L08059BF8: .4byte 0x00001424
.L08059BFC: .4byte 0x00001429
.L08059C00:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059C24 @ =gUnk_080FAD08
	ldr r2, .L08059C28 @ =gUnk_080FAD20
	ldr r3, .L08059C2C @ =gUnk_080FAD28
.L08059C08:
	movs r4, #0xa7
	lsls r4, r4, #5
	adds r5, r7, r4
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	bl func_08050E30
	ldr r0, .L08059C30 @ =0x00001429
	adds r1, r7, r0
	movs r0, #4
	strb r0, [r1]
	b .L08059C82
	.align 2, 0
.L08059C24: .4byte gUnk_080FAD08
.L08059C28: .4byte gUnk_080FAD20
.L08059C2C: .4byte gUnk_080FAD28
.L08059C30: .4byte 0x00001429
.L08059C34:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059C3C @ =gUnk_080FAD34
	b .L08059C50
	.align 2, 0
.L08059C3C: .4byte gUnk_080FAD34
.L08059C40:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059C48 @ =gUnk_080FAD50
	b .L08059C64
	.align 2, 0
.L08059C48: .4byte gUnk_080FAD50
.L08059C4C:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059C5C @ =gUnk_080FAD94
.L08059C50:
	movs r3, #0xa7
	lsls r3, r3, #5
	adds r2, r7, r3
	bl func_08050DA0
	b .L08059C82
	.align 2, 0
.L08059C5C: .4byte gUnk_080FAD94
.L08059C60:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059C70 @ =gUnk_080FADDC
.L08059C64:
	movs r4, #0xa7
	lsls r4, r4, #5
	adds r2, r7, r4
	bl func_08050DA0
	b .L08059C82
	.align 2, 0
.L08059C70: .4byte gUnk_080FADDC
.L08059C74:
	ldr r0, [r7, #0x10]
	ldr r1, .L08059C90 @ =gUnk_080FAE00
	movs r3, #0xa7
	lsls r3, r3, #5
	adds r2, r7, r3
	bl func_08050DA0
.L08059C82:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08059C90: .4byte gUnk_080FAE00

	thumb_func_start func_08059C94
func_08059C94: @ 0x08059C94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa0
	adds r7, r0, #0
	add r1, sp, #0xc
	movs r0, #0
	str r0, [sp, #0xc]
	strh r0, [r1, #4]
	add r1, sp, #0x14
	str r0, [sp, #0x14]
	strh r0, [r1, #4]
	add r2, sp, #0x1c
	mov sb, r2
	str r0, [sp, #0x1c]
	strh r0, [r2, #4]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r1, #4]
	movs r3, #0xd6
	lsls r3, r3, #2
	adds r5, r7, r3
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	movs r4, #0xd7
	lsls r4, r4, #2
	adds r4, r4, r7
	mov r8, r4
	lsls r2, r2, #2
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x2c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x2c
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0xc
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	mov r5, r8
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0xc
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	ldr r5, [sp, #0x1c]
	movs r6, #0xc1
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L08059F98 @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x1c]
	movs r2, #0
	mov sl, r4
	cmp r0, #0
	beq .L08059D52
	mov r3, sb
	ldrh r2, [r3, #4]
.L08059D52:
	adds r0, r5, #0
	bl func_08008E64
	movs r4, #0
	mov sb, r4
	movs r6, #0
	mov r5, r8
	str r5, [sp, #0x98]
	mov r0, sp
	adds r0, #0x90
	str r0, [sp, #0x94]
	mov r1, sp
	adds r1, #0x50
	str r1, [sp, #0x9c]
	movs r2, #0xd6
	lsls r2, r2, #2
	adds r5, r7, r2
	mov r8, sl
.L08059D76:
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_0805E860
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x98]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x2c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, r8
	mov r1, r8
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0xc
	mov r0, r8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x14]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	add r0, sb
	lsls r0, r0, #5
	ldr r2, .L08059F9C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #0x14]
	movs r2, #0
	cmp r0, #0
	beq .L08059DD2
	mov r3, sp
	ldrh r2, [r3, #0x18]
.L08059DD2:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #0x14]
	movs r1, #0
	cmp r0, #0
	beq .L08059DE4
	mov r4, sp
	ldrh r1, [r4, #0x18]
.L08059DE4:
	lsrs r0, r1, #5
	add sb, r0
	adds r6, #1
	cmp r6, #3
	ble .L08059D76
	ldr r1, .L08059FA0 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r5, .L08059FA4 @ =0x0600E000
	mov r8, r5
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r4, #0
	mov r1, r8
	adds r2, r6, #0
	bl func_08008EB8
	ldr r0, .L08059FA8 @ =0x0600E800
	mov sb, r0
	adds r0, r4, #0
	mov r1, sb
	adds r2, r6, #0
	bl func_08008EB8
	ldr r1, .L08059FAC @ =0x0600F000
	adds r0, r4, #0
	adds r2, r6, #0
	bl func_08008EB8
	adds r0, r7, #0
	bl func_08008918
	movs r2, #0xf2
	lsls r2, r2, #5
	adds r1, r2, #0
	mov r3, sl
	strh r1, [r3]
	movs r5, #0
	strh r1, [r0]
	adds r0, r7, #0
	bl func_08008918
	ldr r4, .L08059FB0 @ =0x00005C43
	adds r1, r4, #0
	mov r2, sl
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r7, #0
	bl func_08008918
	ldr r3, .L08059FB4 @ =0x00001D41
	adds r1, r3, #0
	mov r4, sl
	strh r1, [r4]
	strh r1, [r0, #0xc]
	adds r0, r7, #0
	bl func_08008918
	ldr r2, .L08059FB8 @ =0x00005E42
	adds r1, r2, #0
	strh r1, [r4]
	strh r1, [r0, #0xa]
	ldr r0, .L08059FBC @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L08059FC0 @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L08059FC4 @ =0x00030003
	mov r1, r8
	adds r2, r6, #0
	bl func_08008EB8
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	strh r5, [r0, #0x1c]
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	strh r5, [r0, #0x1e]
	movs r0, #3
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, sb
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl func_08051320
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	strh r5, [r0, #0x18]
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	strh r5, [r0, #0x1a]
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	strh r5, [r0, #0x14]
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	strh r5, [r0, #0x16]
	ldr r0, .L08059FC8 @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r0, .L08059FCC @ =0x05000040
	movs r3, #0xf8
	lsls r3, r3, #2
	adds r6, r3, #0
	strh r6, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	ldr r4, .L08059FD0 @ =0x00004218
	mov r8, r4
	strh r4, [r0]
	movs r0, #0xc3
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L08059F98 @ =0x05000200
	adds r0, r0, r1
	strh r6, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L08059FD4 @ =0x05000202
	adds r0, r0, r2
	strh r5, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L08059FD8 @ =0x05000204
	adds r0, r0, r3
	mov r4, r8
	strh r4, [r0]
	mov sl, r5
	movs r6, #1
	mov r8, r6
	movs r0, #2
	mov sb, r0
	add r6, sp, #0x90
.L08059F3A:
	ldr r0, .L08059FDC @ =gUnk_080FAE6A
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	mov r2, r8
	strh r2, [r6]
	mov r0, sb
	ldr r3, [sp, #0x94]
	strh r0, [r3, #2]
	ldr r0, [r6]
	str r1, [sp]
	mov r1, sl
	str r1, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	add r1, sp, #0x50
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	movs r3, #0xc2
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	adds r1, r1, r4
	lsls r1, r1, #5
	ldr r4, .L08059F9C @ =0x06010000
	adds r1, r1, r4
	ldr r0, [sp, #0x9c]
	movs r2, #0x40
	bl func_08008E64
	adds r5, #1
	cmp r5, #0x17
	ble .L08059F3A
	add sp, #0xa0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08059F98: .4byte 0x05000200
.L08059F9C: .4byte 0x06010000
.L08059FA0: .4byte 0x06007FE0
.L08059FA4: .4byte 0x0600E000
.L08059FA8: .4byte 0x0600E800
.L08059FAC: .4byte 0x0600F000
.L08059FB0: .4byte 0x00005C43
.L08059FB4: .4byte 0x00001D41
.L08059FB8: .4byte 0x00005E42
.L08059FBC: .4byte gUnk_080F9F70
.L08059FC0: .4byte gUnk_080F9F74
.L08059FC4: .4byte 0x00030003
.L08059FC8: .4byte gUnk_080F9F78
.L08059FCC: .4byte 0x05000040
.L08059FD0: .4byte 0x00004218
.L08059FD4: .4byte 0x05000202
.L08059FD8: .4byte 0x05000204
.L08059FDC: .4byte gUnk_080FAE6A

	thumb_func_start func_08059FE0
func_08059FE0: @ 0x08059FE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L0805A090 @ =0xFFFFF490
	add sp, r4
	mov r8, r0
	ldr r0, .L0805A094 @ =0x00000B54
	add r0, sp
	str r1, [r0]
	cmp r1, #0
	bne .L0805A0AC
	movs r1, #0xb8
	lsls r1, r1, #1
	add r1, r8
	add r0, sp, #0xc
	movs r2, #0
	bl func_0805E790
	add r5, sp, #0x1c
	ldr r4, [sp, #0x1c]
	movs r0, #0xc9
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r6, .L0805A098 @ =0x05000200
	adds r1, r0, r6
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L0805A028
	ldrh r2, [r5, #4]
.L0805A028:
	adds r0, r4, #0
	bl func_08008E64
	add r4, sp, #0x14
	ldr r5, [sp, #0x14]
	movs r0, #0xc8
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L0805A09C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #0x14]
	movs r2, #0
	cmp r0, #0
	beq .L0805A04E
	ldrh r2, [r4, #4]
.L0805A04E:
	adds r0, r5, #0
	bl func_08008E64
	ldr r4, .L0805A0A0 @ =gUnk_08752F8C
	movs r0, #0xc2
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r3, .L0805A0A4 @ =0x06010600
	adds r1, r1, r3
	adds r0, r4, #0
	movs r2, #0x80
	bl func_08008E64
	ldr r4, .L0805A0A8 @ =gUnk_0875300C
	movs r0, #0xc4
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r1, r0, #0
	lsls r1, r1, #5
	adds r1, r1, r6
	adds r0, r4, #0
	movs r2, #0x20
	bl func_08008E64
	b .L0805A0E8
	.align 2, 0
.L0805A090: .4byte 0xFFFFF490
.L0805A094: .4byte 0x00000B54
.L0805A098: .4byte 0x05000200
.L0805A09C: .4byte 0x06010000
.L0805A0A0: .4byte gUnk_08752F8C
.L0805A0A4: .4byte 0x06010600
.L0805A0A8: .4byte gUnk_0875300C
.L0805A0AC:
	ldr r4, .L0805A18C @ =gUnk_0875196C
	movs r0, #0xc2
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r7, .L0805A190 @ =0x06010600
	adds r1, r1, r7
	adds r0, r4, #0
	movs r2, #0x80
	bl func_08008E64
	ldr r4, .L0805A194 @ =gUnk_087519EC
	movs r0, #0xc4
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r0, .L0805A198 @ =0x05000200
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl func_08008E64
.L0805A0E8:
	ldr r4, .L0805A19C @ =0x0000142C
	add r4, r8
	ldr r1, .L0805A1A0 @ =0x00000B34
	add r1, sp
	ldr r2, .L0805A1A4 @ =0x00000B6C
	add r2, sp
	str r1, [r2]
	mov r3, sp
	adds r3, #0x30
	ldr r7, .L0805A1A8 @ =0x00000B68
	add r7, sp
	str r3, [r7]
	movs r0, #0xb4
	lsls r0, r0, #4
	add r0, sp
	ldr r1, .L0805A1AC @ =0x00000B5C
	add r1, sp
	str r0, [r1]
	ldr r2, .L0805A1B0 @ =0x00000B44
	add r2, sp
	movs r3, #0xb6
	lsls r3, r3, #4
	add r3, sp
	str r2, [r3]
	movs r7, #0xcd
	lsls r7, r7, #2
	add r7, sp
	ldr r0, .L0805A1B4 @ =0x00000B58
	add r0, sp
	str r7, [r0]
	ldr r1, .L0805A1B8 @ =0x00000B48
	add r1, sp
	ldr r2, .L0805A1BC @ =0x00000B64
	add r2, sp
	str r1, [r2]
	movs r3, #2
	mov sl, r3
	ldr r7, .L0805A1C0 @ =0x06002800
	mov sb, r7
	ldr r6, .L0805A1C4 @ =0x00000B38
	add r6, sp
	ldr r5, .L0805A1C8 @ =0x00000B3C
	add r5, sp
	movs r7, #3
.L0805A140:
	ldr r0, .L0805A1A0 @ =0x00000B34
	add r0, sp
	movs r1, #0xc
	strh r1, [r0]
	mov r3, sl
	ldr r2, .L0805A1A4 @ =0x00000B6C
	add r2, sp
	ldr r2, [r2]
	strh r3, [r2, #2]
	ldr r0, [r0]
	add r1, sp, #0x30
	movs r2, #0
	bl func_0804E7A0
	ldrh r0, [r4, #0x20]
	cmp r0, #0x27
	bhi .L0805A1D0
	adds r1, r0, #0
	movs r0, #0xd
	muls r1, r0, r1
	ldr r0, .L0805A1CC @ =gUnk_080FA796
	adds r1, r1, r0
	movs r3, #0xc
	strh r3, [r6]
	mov r0, sl
	strh r0, [r6, #2]
	ldr r0, [r6]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	add r1, sp, #0x30
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	b .L0805A1F8
	.align 2, 0
.L0805A18C: .4byte gUnk_0875196C
.L0805A190: .4byte 0x06010600
.L0805A194: .4byte gUnk_087519EC
.L0805A198: .4byte 0x05000200
.L0805A19C: .4byte 0x0000142C
.L0805A1A0: .4byte 0x00000B34
.L0805A1A4: .4byte 0x00000B6C
.L0805A1A8: .4byte 0x00000B68
.L0805A1AC: .4byte 0x00000B5C
.L0805A1B0: .4byte 0x00000B44
.L0805A1B4: .4byte 0x00000B58
.L0805A1B8: .4byte 0x00000B48
.L0805A1BC: .4byte 0x00000B64
.L0805A1C0: .4byte 0x06002800
.L0805A1C4: .4byte 0x00000B38
.L0805A1C8: .4byte 0x00000B3C
.L0805A1CC: .4byte gUnk_080FA796
.L0805A1D0:
	ldr r0, .L0805A2B8 @ =0x000014DC
	add r0, r8
	ldr r0, [r0]
	bl GetName__C6Animal
	movs r3, #0xc
	strh r3, [r5]
	mov r1, sl
	strh r1, [r5, #2]
	ldr r1, [r5]
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	adds r0, r1, #0
	add r1, sp, #0x30
	movs r3, #0
	bl func_0804E958
.L0805A1F8:
	ldr r1, .L0805A2BC @ =0x00000B68
	add r1, sp
	ldr r0, [r1]
	mov r1, sb
	movs r2, #0xc0
	lsls r2, r2, #2
	bl func_08008E64
	movs r2, #0xc0
	lsls r2, r2, #2
	add sb, r2
	subs r7, #1
	adds r4, #0x2c
	cmp r7, #0
	bge .L0805A140
	movs r4, #0x20
	movs r5, #2
	movs r7, #0
	movs r0, #0xb4
	lsls r0, r0, #4
	add r0, sp
	strh r4, [r0]
	ldr r3, .L0805A2C0 @ =0x00000B5C
	add r3, sp
	ldr r3, [r3]
	strh r5, [r3, #2]
	ldr r0, [r0]
	add r1, sp, #0x334
	movs r2, #0
	bl func_0804E7A0
	ldr r1, .L0805A2C4 @ =gUnk_080FAE9C
	movs r6, #1
	ldr r0, .L0805A2C8 @ =0x00000B44
	add r0, sp
	strh r4, [r0]
	movs r2, #0xb6
	lsls r2, r2, #4
	add r2, sp
	ldr r2, [r2]
	strh r5, [r2, #2]
	ldr r0, [r0]
	str r1, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	add r1, sp, #0x334
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	ldr r1, .L0805A2CC @ =0x06004000
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r3, .L0805A2D0 @ =0x00000B58
	add r3, sp
	ldr r0, [r3]
	bl func_08008E64
	ldr r0, .L0805A2D4 @ =0x00000B48
	add r0, sp
	strh r4, [r0]
	ldr r1, .L0805A2D8 @ =0x00000B64
	add r1, sp
	ldr r1, [r1]
	strh r5, [r1, #2]
	ldr r0, [r0]
	ldr r2, .L0805A2D0 @ =0x00000B58
	add r2, sp
	ldr r1, [r2]
	movs r2, #0
	bl func_0804E7A0
	ldr r3, .L0805A2DC @ =0x00000B54
	add r3, sp
	ldr r3, [r3]
	cmp r3, #0
	bne .L0805A2E8
	ldr r2, .L0805A2E0 @ =gUnk_080FAEB8
	ldr r1, .L0805A2E4 @ =0x00000B4C
	add r1, sp
	ldr r0, .L0805A2E4 @ =0x00000B4C
	add r0, sp
	strh r4, [r0]
	strh r5, [r1, #2]
	ldr r0, [r0]
	str r2, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r7, .L0805A2D0 @ =0x00000B58
	add r7, sp
	ldr r1, [r7]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	b .L0805A310
	.align 2, 0
.L0805A2B8: .4byte 0x000014DC
.L0805A2BC: .4byte 0x00000B68
.L0805A2C0: .4byte 0x00000B5C
.L0805A2C4: .4byte gUnk_080FAE9C
.L0805A2C8: .4byte 0x00000B44
.L0805A2CC: .4byte 0x06004000
.L0805A2D0: .4byte 0x00000B58
.L0805A2D4: .4byte 0x00000B48
.L0805A2D8: .4byte 0x00000B64
.L0805A2DC: .4byte 0x00000B54
.L0805A2E0: .4byte gUnk_080FAEB8
.L0805A2E4: .4byte 0x00000B4C
.L0805A2E8:
	ldr r2, .L0805A3D8 @ =gUnk_080FAEC4
	movs r1, #0xb5
	lsls r1, r1, #4
	add r1, sp
	movs r0, #0xb5
	lsls r0, r0, #4
	add r0, sp
	strh r4, [r0]
	strh r5, [r1, #2]
	ldr r0, [r0]
	str r2, [sp]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r2, .L0805A3DC @ =0x00000B58
	add r2, sp
	ldr r1, [r2]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L0805A310:
	ldr r1, .L0805A3E0 @ =0x06004800
	movs r4, #0x80
	lsls r4, r4, #4
	ldr r3, .L0805A3DC @ =0x00000B58
	add r3, sp
	ldr r0, [r3]
	adds r2, r4, #0
	bl func_08008E64
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, .L0805A3E4 @ =0x00000BEA
	add r1, r8
	adds r2, r4, #0
	bl func_08008EB8
	movs r5, #0x85
	lsls r5, r5, #6
	movs r1, #0
	ldr r7, .L0805A3E8 @ =0x00000BF2
	add r7, r8
	mov ip, r7
.L0805A33C:
	movs r4, #0
	lsls r0, r1, #1
	adds r6, r5, #0
	adds r6, #0x18
	adds r1, #1
	mov sb, r1
	adds r1, r0, #6
	lsls r1, r1, #6
	adds r0, #7
	lsls r0, r0, #6
	adds r3, r5, #0
	adds r3, #0xc
	mov r7, ip
	adds r2, r0, r7
	add r1, ip
.L0805A35A:
	adds r0, r5, r4
	strh r0, [r1]
	strh r3, [r2]
	adds r3, #1
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0xb
	ble .L0805A35A
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	mov r1, sb
	cmp r1, #3
	ble .L0805A33C
	movs r4, #0
	ldr r5, .L0805A3E4 @ =0x00000BEA
	add r5, r8
	movs r0, #0x88
	lsls r0, r0, #6
	adds r6, r0, #0
.L0805A382:
	adds r3, r4, #0
	cmp r4, #0
	bge .L0805A38A
	adds r3, #0x1f
.L0805A38A:
	asrs r3, r3, #5
	lsls r2, r3, #5
	subs r2, r4, r2
	lsls r2, r2, #1
	adds r0, r3, #4
	lsls r0, r0, #6
	adds r0, r2, r0
	adds r0, r5, r0
	adds r1, r4, r6
	strh r1, [r0]
	adds r3, #0xf
	lsls r3, r3, #6
	adds r2, r2, r3
	adds r2, r5, r2
	movs r1, #0x89
	lsls r1, r1, #6
	adds r0, r4, r1
	strh r0, [r2]
	adds r4, #1
	cmp r4, #0x3f
	ble .L0805A382
	ldr r0, .L0805A3E4 @ =0x00000BEA
	add r0, r8
	ldr r1, .L0805A3EC @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008E64
	movs r3, #0xb7
	lsls r3, r3, #4
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805A3D8: .4byte gUnk_080FAEC4
.L0805A3DC: .4byte 0x00000B58
.L0805A3E0: .4byte 0x06004800
.L0805A3E4: .4byte 0x00000BEA
.L0805A3E8: .4byte 0x00000BF2
.L0805A3EC: .4byte 0x0600F000

	thumb_func_start func_0805A3F0
func_0805A3F0: @ 0x0805A3F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L0805A4C4 @ =0xFFFFF7E8
	add sp, r4
	ldr r1, .L0805A4C8 @ =0x06008000
	movs r2, #0xb0
	lsls r2, r2, #6
	movs r0, #0
	bl func_08008EB8
	ldr r4, .L0805A4CC @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	movs r0, #0
	adds r1, r4, #0
	bl func_08008EB8
	movs r2, #0
	ldr r0, .L0805A4D0 @ =gUnk_080FAFC8
	mov r8, r0
	movs r1, #0x80
	lsls r1, r1, #6
	adds r5, r1, #0
.L0805A424:
	movs r3, #0
	lsls r1, r2, #6
	lsls r0, r2, #5
	adds r2, #1
	adds r0, r0, r5
	adds r1, r1, r4
.L0805A430:
	strh r0, [r1]
	adds r0, #1
	adds r1, #2
	adds r3, #1
	cmp r3, #0x1f
	bls .L0805A430
	cmp r2, #0x15
	bls .L0805A424
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq .L0805A4B2
	movs r6, #0x81
	lsls r6, r6, #4
	add r6, sp
	movs r0, #0x20
	mov sl, r0
	movs r1, #2
	mov sb, r1
	add r5, sp, #0x10
	ldr r7, .L0805A4C8 @ =0x06008000
	ldr r4, .L0805A4D4 @ =0x00000814
	add r4, sp
.L0805A45E:
	mov r0, sl
	strh r0, [r6]
	mov r1, sb
	strh r1, [r6, #2]
	ldr r0, [r6]
	adds r1, r5, #0
	movs r2, #0
	bl func_0804E7A0
	mov r0, r8
	adds r0, #4
	mov r8, r0
	subs r0, #4
	ldm r0!, {r1}
	mov r0, sl
	strh r0, [r4]
	mov r0, sb
	strh r0, [r4, #2]
	ldr r0, [r4]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008E64
	movs r0, #0x80
	lsls r0, r0, #4
	adds r7, r7, r0
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	bne .L0805A45E
.L0805A4B2:
	ldr r3, .L0805A4D8 @ =0x00000818
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805A4C4: .4byte 0xFFFFF7E8
.L0805A4C8: .4byte 0x06008000
.L0805A4CC: .4byte 0x0600F800
.L0805A4D0: .4byte gUnk_080FAFC8
.L0805A4D4: .4byte 0x00000814
.L0805A4D8: .4byte 0x00000818

	thumb_func_start func_0805A4DC
func_0805A4DC: @ 0x0805A4DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, .L0805A524 @ =0x00000BD8
	adds r2, r5, r0
	movs r0, #0
	strh r0, [r2]
	cmp r1, #0
	bne .L0805A52C
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #4
	movs r3, #0x18
	bl func_0805A6E4
	ldr r1, .L0805A528 @ =0x00001414
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #0xc
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x28
	movs r2, #4
	movs r3, #1
	bl func_0805A63C
	b .L0805A59C
	.align 2, 0
.L0805A524: .4byte 0x00000BD8
.L0805A528: .4byte 0x00001414
.L0805A52C:
	movs r4, #0
	movs r7, #1
	movs r6, #8
.L0805A532:
	adds r3, r4, #0
	adds r3, #0xd
	str r7, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #4
	bl func_0805A6E4
	adds r6, #8
	adds r4, #1
	cmp r4, #0xa
	ble .L0805A532
	ldr r1, .L0805A628 @ =0x00001418
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	movs r4, #0xa
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x88
	movs r2, #4
	movs r3, #1
	bl func_0805A63C
	ldr r1, .L0805A62C @ =0x0000141E
	adds r0, r5, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xa0
	movs r2, #0x78
	movs r3, #2
	bl func_0805A63C
	ldr r1, .L0805A630 @ =0x000013FE
	adds r0, r5, r1
	movs r1, #0
	ldrsh r2, [r0, r1]
	lsls r2, r2, #4
	adds r2, #0x30
	movs r0, #2
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0x18
	bl func_0805A6E4
.L0805A59C:
	ldr r1, .L0805A634 @ =0x0000141C
	adds r0, r5, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #1
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x20
	movs r2, #0x20
	movs r3, #2
	bl func_0805A63C
	ldr r0, .L0805A638 @ =0x0000142C
	adds r4, r5, r0
	movs r1, #2
	mov r8, r1
	movs r0, #0xa
	mov sb, r0
	movs r6, #0x30
	movs r7, #3
.L0805A5CC:
	mov r1, r8
	str r1, [sp]
	adds r0, r5, #0
	movs r1, #0x88
	adds r2, r6, #0
	movs r3, #0xb
	bl func_0805A6E4
	movs r1, #0x28
	ldrsh r0, [r4, r1]
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x90
	adds r2, r6, #0
	movs r3, #2
	bl func_0805A63C
	movs r1, #0x2a
	ldrsh r0, [r4, r1]
	str r0, [sp]
	mov r0, r8
	str r0, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xc0
	adds r2, r6, #0
	movs r3, #2
	bl func_0805A63C
	adds r6, #0x10
	subs r7, #1
	adds r4, #0x2c
	cmp r7, #0
	bge .L0805A5CC
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805A628: .4byte 0x00001418
.L0805A62C: .4byte 0x0000141E
.L0805A630: .4byte 0x000013FE
.L0805A634: .4byte 0x0000141C
.L0805A638: .4byte 0x0000142C

	thumb_func_start func_0805A63C
func_0805A63C: @ 0x0805A63C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r6, r1, #0
	str r2, [sp, #4]
	mov sb, r3
	ldr r0, [sp, #0x28]
	mov r8, r0
	ldr r4, [sp, #0x2c]
	cmp r4, #1
	ble .L0805A672
	subs r4, #1
	movs r5, #0xa
	cmp r4, #1
	ble .L0805A66E
.L0805A662:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r5, r0, #1
	subs r4, #1
	cmp r4, #1
	bgt .L0805A662
.L0805A66E:
	adds r4, r5, #0
	b .L0805A674
.L0805A672:
	movs r4, #1
.L0805A674:
	movs r7, #0
	cmp r4, #0
	ble .L0805A6BE
.L0805A67A:
	cmp r4, #1
	bne .L0805A680
	movs r7, #1
.L0805A680:
	mov r0, r8
	adds r1, r4, #0
	bl __divsi3
	adds r5, r0, #0
	cmp r5, #0
	bne .L0805A692
	cmp r7, #0
	beq .L0805A6A4
.L0805A692:
	mov r1, sb
	str r1, [sp]
	mov r0, sl
	adds r1, r6, #0
	ldr r2, [sp, #4]
	adds r3, r5, #0
	bl func_0805A6E4
	movs r7, #1
.L0805A6A4:
	adds r6, #8
	adds r0, r5, #0
	muls r0, r4, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	cmp r4, #0
	bgt .L0805A67A
.L0805A6BE:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq .L0805A6D4
	mov r1, sb
	str r1, [sp]
	mov r0, sl
	adds r1, r6, #0
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x30]
	bl func_0805A6E4
.L0805A6D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0805A6E4
func_0805A6E4: @ 0x0805A6E4
	push {r4, r5, r6, r7, lr}
	ldr r4, .L0805A734 @ =0x00000BD8
	adds r6, r0, r4
	movs r7, #0
	ldrsh r5, [r6, r7]
	lsls r5, r5, #3
	movs r7, #0xe7
	lsls r7, r7, #3
	adds r4, r0, r7
	adds r4, r4, r5
	strh r1, [r4]
	movs r1, #0
	ldrsh r4, [r6, r1]
	lsls r4, r4, #3
	ldr r5, .L0805A738 @ =0x0000073A
	adds r1, r0, r5
	adds r1, r1, r4
	strh r2, [r1]
	movs r7, #0
	ldrsh r2, [r6, r7]
	lsls r2, r2, #3
	ldr r4, .L0805A73C @ =0x0000073C
	adds r1, r0, r4
	adds r1, r1, r2
	strh r3, [r1]
	movs r5, #0
	ldrsh r1, [r6, r5]
	lsls r1, r1, #3
	ldr r7, .L0805A740 @ =0x0000073E
	adds r0, r0, r7
	adds r0, r0, r1
	mov r1, sp
	ldrh r1, [r1, #0x14]
	strh r1, [r0]
	ldrh r0, [r6]
	adds r0, #1
	strh r0, [r6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805A734: .4byte 0x00000BD8
.L0805A738: .4byte 0x0000073A
.L0805A73C: .4byte 0x0000073C
.L0805A740: .4byte 0x0000073E

	thumb_func_start func_0805A744
func_0805A744: @ 0x0805A744
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	adds r5, r0, #0
	mov r1, sp
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [sp, #0xc]
	strb r2, [r1, #0x10]
	strb r2, [r1, #0x11]
	str r0, [sp, #0x14]
	strb r2, [r1, #0x18]
	add r2, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r2, #4]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r1, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	ldr r0, .L0805A804 @ =0x0000140A
	adds r6, r5, r0
	movs r1, #0
	ldrsh r0, [r6, r1]
	add r7, sp, #0x3c
	cmp r0, #0
	blt .L0805A85A
	movs r2, #0xaa
	lsls r2, r2, #3
	adds r4, r5, r2
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	ldr r4, .L0805A808 @ =0x00000554
	adds r0, r5, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r7, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r7, #0
	adds r1, r7, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	adds r0, r7, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r1, sp
	ldr r4, .L0805A80C @ =0x00000564
	adds r0, r5, r4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	mov r2, sp
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r1, #0x1c
	cmp r0, #3
	bgt .L0805A7F2
	movs r1, #0xc
.L0805A7F2:
	strh r1, [r2]
	mov r1, sp
	cmp r0, #3
	bgt .L0805A810
	movs r2, #0
	ldrsh r0, [r6, r2]
	lsls r0, r0, #4
	adds r0, #0x38
	b .L0805A812
	.align 2, 0
.L0805A804: .4byte 0x0000140A
.L0805A808: .4byte 0x00000554
.L0805A80C: .4byte 0x00000564
.L0805A810:
	movs r0, #0x80
.L0805A812:
	strh r0, [r1, #2]
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r4, #0xc9
	lsls r4, r4, #3
	adds r0, r5, r4
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805A852
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L0805A852:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805A85A:
	movs r6, #0
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r1, r1, r5
	mov sl, r1
	add r2, sp, #0x5c
	mov sb, r2
	movs r3, #0xd6
	lsls r3, r3, #2
	adds r3, r3, r5
	mov r8, r3
	mov r4, sp
	str r7, [sp, #0x64]
.L0805A874:
	mov r0, r8
	adds r1, r6, #0
	bl func_0805E860
	mov r7, r8
	ldr r1, [r7]
	ldr r3, [r1]
	ldrh r2, [r7, #0xc]
	lsls r2, r2, #2
	mov r7, sl
	ldr r0, [r7]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x64]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	ldr r0, [sp, #0x64]
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r0, #0x10
	strh r0, [r4]
	lsls r0, r6, #4
	adds r0, #0x30
	strh r0, [r4, #2]
	movs r7, #0xc1
	lsls r7, r7, #3
	adds r0, r5, r7
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r1, r6, #2
	adds r0, r0, r1
	strh r0, [r4, #6]
	movs r0, #2
	strh r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805A8F8
	mov r7, sp
	ldrh r2, [r7, #0x20]
.L0805A8F8:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	adds r6, #1
	cmp r6, #3
	ble .L0805A874
	ldr r1, .L0805AA38 @ =0xFFFFFCFF
	ldr r0, [sp, #0x5c]
	ands r0, r1
	ldr r1, .L0805AA3C @ =0xFFFFF3FF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, .L0805AA40 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L0805AA44 @ =0xFFFF3FFF
	ands r0, r1
	ldr r1, .L0805AA48 @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L0805AA4C @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L0805AA50 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L0805AA54 @ =0x3FFFFFFF
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0x5c]
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0805AA58 @ =0xFFFF0FFF
	mov r3, sb
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L0805AA5C @ =0x0000FFFF
	ands r1, r0
	str r1, [r3, #4]
	ldr r2, .L0805AA60 @ =0x00000BD8
	adds r1, r5, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L0805A96C
	b .L0805AAE6
.L0805A96C:
	mov r6, sb
	ldr r4, .L0805AA64 @ =0x0000073C
	adds r7, r5, r4
.L0805A972:
	adds r4, r5, r2
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #3
	ldr r2, .L0805AA68 @ =0x0000073E
	adds r0, r5, r2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #0xa
	ldr r2, .L0805AA3C @ =0xFFFFF3FF
	ldr r0, [r6, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r6, #4]
	movs r3, #0
	ldrsh r1, [r4, r3]
	lsls r1, r1, #3
	movs r2, #0xe7
	lsls r2, r2, #3
	adds r0, r5, r2
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, .L0805AA6C @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	ldr r0, .L0805AA70 @ =0xFE00FFFF
	ldr r2, [sp, #0x5c]
	ands r2, r0
	orrs r2, r1
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #3
	ldr r3, .L0805AA74 @ =0x0000073A
	adds r0, r5, r3
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, .L0805AA78 @ =0xFFFFFF00
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x5c]
	movs r1, #0xc2
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #3
	adds r1, r7, r1
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0805AA7C @ =0xFFFFFC00
	ldr r1, [r6, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r6, #4]
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #3
	adds r0, r7, r0
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x18
	beq .L0805AA80
	movs r3, #0xc3
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0805AA58 @ =0xFFFF0FFF
	mov r4, sb
	ldr r1, [r4, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #4]
	ldr r1, .L0805AA44 @ =0xFFFF3FFF
	ldr r0, [sp, #0x5c]
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L0805AA54 @ =0x3FFFFFFF
	ands r0, r1
	b .L0805AAB0
	.align 2, 0
.L0805AA38: .4byte 0xFFFFFCFF
.L0805AA3C: .4byte 0xFFFFF3FF
.L0805AA40: .4byte 0xFFFFDFFF
.L0805AA44: .4byte 0xFFFF3FFF
.L0805AA48: .4byte 0xF1FFFFFF
.L0805AA4C: .4byte 0xEFFFFFFF
.L0805AA50: .4byte 0xDFFFFFFF
.L0805AA54: .4byte 0x3FFFFFFF
.L0805AA58: .4byte 0xFFFF0FFF
.L0805AA5C: .4byte 0x0000FFFF
.L0805AA60: .4byte 0x00000BD8
.L0805AA64: .4byte 0x0000073C
.L0805AA68: .4byte 0x0000073E
.L0805AA6C: .4byte 0x000001FF
.L0805AA70: .4byte 0xFE00FFFF
.L0805AA74: .4byte 0x0000073A
.L0805AA78: .4byte 0xFFFFFF00
.L0805AA7C: .4byte 0xFFFFFC00
.L0805AA80:
	movs r1, #0xc4
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0805AAF8 @ =0xFFFF0FFF
	mov r3, sb
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	ldr r1, .L0805AAFC @ =0xFFFF3FFF
	ldr r0, [sp, #0x5c]
	ands r0, r1
	ldr r1, .L0805AB00 @ =0x3FFFFFFF
	ands r0, r1
	adds r1, #1
	orrs r0, r1
.L0805AAB0:
	str r0, [sp, #0x5c]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0805AAD4
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x5c]
	str r0, [r1]
	mov r4, sb
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L0805AAD4:
	ldr r2, .L0805AB04 @ =0x00000BD8
	adds r1, r5, r2
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L0805AAE6
	b .L0805A972
.L0805AAE6:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805AAF8: .4byte 0xFFFF0FFF
.L0805AAFC: .4byte 0xFFFF3FFF
.L0805AB00: .4byte 0x3FFFFFFF
.L0805AB04: .4byte 0x00000BD8

	thumb_func_start func_0805AB08
func_0805AB08: @ 0x0805AB08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	ldr r1, .L0805AC20 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r1, .L0805AC24 @ =0x0600C800
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L0805AC28 @ =0x0600D800
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L0805AC2C @ =0x0600E800
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r0, .L0805AC30 @ =gUnk_0872F11C
	ldr r2, .L0805AC34 @ =0x00000BEA
	adds r1, r7, r2
	bl Unpack
	ldr r0, .L0805AC38 @ =gUnk_0872F1BC
	ldr r3, .L0805AC3C @ =0x00000CEA
	adds r1, r7, r3
	bl Unpack
	ldr r0, .L0805AC40 @ =gUnk_0872F1EC
	ldr r2, .L0805AC44 @ =0x00000DEA
	adds r1, r7, r2
	bl Unpack
	ldr r0, .L0805AC48 @ =gUnk_0872FBFC
	ldr r3, .L0805AC4C @ =0x00000EEA
	adds r1, r7, r3
	bl Unpack
	ldr r0, .L0805AC50 @ =gUnk_0872F21C
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L0805AC54 @ =gUnk_0872FA9C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl func_08008E64
	adds r0, r7, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r0, r7, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L0805AC58 @ =0x00005943
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r7, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L0805AC5C @ =0x00005B42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r7, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L0805AC60 @ =0x00005D41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	movs r1, #0
.L0805ABCA:
	movs r0, #0
	mov sb, r0
	lsls r0, r1, #1
	lsls r2, r1, #6
	mov r8, r2
	adds r3, r1, #1
	str r3, [sp, #0x10]
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, .L0805AC4C @ =0x00000EEA
	adds r1, r0, r1
	str r1, [sp, #8]
	ldr r2, .L0805AC44 @ =0x00000DEA
	adds r2, r0, r2
	str r2, [sp, #0xc]
	ldr r6, .L0805AC2C @ =0x0600E800
	add r6, r8
	ldr r5, .L0805AC28 @ =0x0600D800
	add r5, r8
	ldr r4, .L0805AC24 @ =0x0600C800
	add r4, r8
	ldr r3, .L0805AC34 @ =0x00000BEA
	adds r3, r0, r3
	str r3, [sp, #4]
	ldr r1, .L0805AC3C @ =0x00000CEA
	adds r1, r1, r0
	mov sl, r1
.L0805AC00:
	ldr r2, [sp, #4]
	adds r0, r7, r2
	adds r1, r4, #0
	movs r2, #0xc
	bl func_08008E64
	mov r3, sb
	cmp r3, #0x12
	beq .L0805AC64
	mov r1, sl
	adds r0, r7, r1
	adds r1, r5, #0
	movs r2, #0xc
	bl func_08008E64
	b .L0805AC72
	.align 2, 0
.L0805AC20: .4byte 0x06007FE0
.L0805AC24: .4byte 0x0600C800
.L0805AC28: .4byte 0x0600D800
.L0805AC2C: .4byte 0x0600E800
.L0805AC30: .4byte gUnk_0872F11C
.L0805AC34: .4byte 0x00000BEA
.L0805AC38: .4byte gUnk_0872F1BC
.L0805AC3C: .4byte 0x00000CEA
.L0805AC40: .4byte gUnk_0872F1EC
.L0805AC44: .4byte 0x00000DEA
.L0805AC48: .4byte gUnk_0872FBFC
.L0805AC4C: .4byte 0x00000EEA
.L0805AC50: .4byte gUnk_0872F21C
.L0805AC54: .4byte gUnk_0872FA9C
.L0805AC58: .4byte 0x00005943
.L0805AC5C: .4byte 0x00005B42
.L0805AC60: .4byte 0x00005D41
.L0805AC64:
	ldr r2, [sp, #8]
	adds r0, r7, r2
	ldr r1, .L0805AD04 @ =0x0600D824
	add r1, r8
	movs r2, #0xc
	bl func_08008E64
.L0805AC72:
	ldr r3, [sp, #0xc]
	adds r0, r7, r3
	adds r1, r6, #0
	movs r2, #0xc
	bl func_08008E64
	adds r6, #0xc
	adds r5, #0xc
	adds r4, #0xc
	movs r0, #6
	add sb, r0
	mov r1, sb
	cmp r1, #0x1d
	ble .L0805AC00
	ldr r1, [sp, #0x10]
	cmp r1, #0x1f
	ble .L0805ABCA
	movs r4, #0
	ldr r2, .L0805AD08 @ =0x000013EA
	adds r0, r7, r2
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r0]
	ldr r3, .L0805AD0C @ =0x000013EC
	adds r0, r7, r3
	strh r1, [r0]
	adds r2, #4
	adds r0, r7, r2
	strh r1, [r0]
	adds r3, #4
	adds r0, r7, r3
	strh r4, [r0]
	ldr r1, .L0805AD10 @ =0x000013F2
	adds r0, r7, r1
	strh r4, [r0]
	adds r2, #6
	adds r0, r7, r2
	strh r4, [r0]
	adds r3, #6
	adds r0, r7, r3
	strh r4, [r0]
	adds r1, #6
	adds r0, r7, r1
	strh r4, [r0]
	adds r2, #6
	adds r0, r7, r2
	strh r4, [r0]
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x16]
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805AD04: .4byte 0x0600D824
.L0805AD08: .4byte 0x000013EA
.L0805AD0C: .4byte 0x000013EC
.L0805AD10: .4byte 0x000013F2

	thumb_func_start func_0805AD14
func_0805AD14: @ 0x0805AD14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	mov sl, r0
	bl func_08008918
	mov r2, sp
	ldr r1, .L0805ADF8 @ =0x000013EA
	add r1, sl
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x14]
	mov r0, sl
	bl func_08008918
	mov r2, sp
	ldr r1, .L0805ADFC @ =0x000013EC
	add r1, sl
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x18]
	mov r0, sl
	bl func_08008918
	mov r2, sp
	ldr r3, .L0805AE00 @ =0x000013EE
	add r3, sl
	ldrh r1, [r3]
	strh r1, [r2]
	strh r1, [r0, #0x1c]
	ldr r2, .L0805AE04 @ =0x000013F4
	add r2, sl
	ldrh r0, [r3]
	ldr r1, .L0805AE08 @ =0x0000FFF0
	ands r1, r0
	ldrh r0, [r2]
	cmp r0, r1
	bne .L0805AD68
	b .L0805AEF0
.L0805AD68:
	strh r1, [r2]
	ldr r1, .L0805AE0C @ =0x000013FA
	add r1, sl
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L0805AD7E
	movs r0, #2
	strh r0, [r1]
.L0805AD7E:
	ldrh r0, [r2]
	subs r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #1
	ands r0, r1
	asrs r2, r0, #3
	movs r7, #0
	asrs r0, r0, #8
	lsls r0, r0, #0xb
	str r0, [sp, #0x38]
	mov r0, sp
	adds r0, #4
	str r0, [sp, #0x3c]
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #1
	str r2, [sp, #0x34]
.L0805ADA0:
	mov r0, sl
	bl func_08008910
	ldr r1, .L0805AE0C @ =0x000013FA
	add r1, sl
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r1, r7, #1
	adds r1, r1, r7
	adds r1, r1, r2
	adds r5, r0, #0
	lsls r1, r1, #2
	add r1, sl
	ldr r4, .L0805AE10 @ =0x00000BEA
	adds r1, r1, r4
	lsls r2, r7, #6
	ldr r6, [sp, #0x38]
	adds r2, r6, r2
	ldr r0, [sp, #0x34]
	adds r2, r0, r2
	ldr r3, .L0805AE14 @ =0x0600C800
	adds r2, r2, r3
	add r0, sp, #4
	movs r3, #4
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805AE18
	cmp r1, #0
	beq .L0805ADEC
	adds r0, r1, #0
	ldr r1, [sp, #0x3c]
	ldm r1!, {r2, r4, r6}
	stm r0!, {r2, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805ADEC:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	adds r3, r7, #1
	str r3, [sp, #0x64]
	b .L0805AEE8
	.align 2, 0
.L0805ADF8: .4byte 0x000013EA
.L0805ADFC: .4byte 0x000013EC
.L0805AE00: .4byte 0x000013EE
.L0805AE04: .4byte 0x000013F4
.L0805AE08: .4byte 0x0000FFF0
.L0805AE0C: .4byte 0x000013FA
.L0805AE10: .4byte 0x00000BEA
.L0805AE14: .4byte 0x0600C800
.L0805AE18:
	str r1, [sp, #0x60]
	movs r0, #1
	str r0, [sp, #0x18]
	ldr r0, [r5]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x14]
	add r1, sp, #0x18
	add r0, sp, #0x14
	cmp r4, #1
	bhs .L0805AE32
	adds r0, r1, #0
.L0805AE32:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805AE50
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805AE54
	mov r0, sb
	bl func_080D3BC0
	b .L0805AE54
.L0805AE50:
	movs r0, #0
	mov sb, r0
.L0805AE54:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r5]
	mov r3, r8
	adds r6, r7, #1
	str r6, [sp, #0x64]
	ldr r7, [sp, #0x60]
	cmp r2, r7
	beq .L0805AE80
.L0805AE66:
	cmp r3, #0
	beq .L0805AE76
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805AE76:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x60]
	cmp r2, r0
	bne .L0805AE66
.L0805AE80:
	adds r4, r3, #0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne .L0805AE9C
	cmp r4, #0
	beq .L0805AE98
	adds r0, r4, #0
	ldr r1, [sp, #0x3c]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805AE98:
	adds r4, #0x10
	b .L0805AEC4
.L0805AE9C:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805AEC2
.L0805AEA4:
	cmp r2, #0
	beq .L0805AEB4
	adds r0, r2, #0
	ldr r1, [sp, #0x3c]
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805AEB4:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L0805AEA4
.L0805AEC2:
	adds r4, r2, #0
.L0805AEC4:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805AED4
.L0805AECE:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805AECE
.L0805AED4:
	cmp r0, #0
	beq .L0805AEDC
	bl free
.L0805AEDC:
	mov r0, sb
	add r0, r8
	mov r1, r8
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0805AEE8:
	ldr r7, [sp, #0x64]
	cmp r7, #0x13
	bgt .L0805AEF0
	b .L0805ADA0
.L0805AEF0:
	ldr r2, .L0805AFA4 @ =0x000013F2
	add r2, sl
	ldr r0, .L0805AFA8 @ =0x000013EC
	add r0, sl
	ldrh r0, [r0]
	ldr r1, .L0805AFAC @ =0x0000FFF0
	ands r1, r0
	ldrh r0, [r2]
	cmp r0, r1
	bne .L0805AF06
	b .L0805B1E8
.L0805AF06:
	strh r1, [r2]
	ldr r1, .L0805AFB0 @ =0x000013F8
	add r1, sl
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L0805AF1C
	movs r0, #2
	strh r0, [r1]
.L0805AF1C:
	ldrh r0, [r2]
	adds r3, r0, #0
	subs r3, #0x10
	movs r1, #0xf8
	lsls r1, r1, #1
	ands r3, r1
	asrs r2, r3, #3
	subs r0, #0x90
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2f
	bls .L0805AF36
	b .L0805B096
.L0805AF36:
	movs r7, #3
	asrs r3, r3, #8
	str r3, [sp, #0x5c]
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #1
	str r2, [sp, #0x40]
	mov r2, sp
	str r2, [sp, #0x44]
.L0805AF48:
	mov r0, sl
	bl func_08008910
	ldr r1, .L0805AFB0 @ =0x000013F8
	add r1, sl
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r1, r7, #1
	adds r1, r1, r7
	adds r1, r1, r2
	adds r5, r0, #0
	lsls r1, r1, #2
	add r1, sl
	ldr r4, .L0805AFB4 @ =0x00000EEA
	adds r1, r1, r4
	ldr r6, [sp, #0x5c]
	lsls r2, r6, #0xb
	lsls r0, r7, #6
	adds r2, r2, r0
	ldr r0, [sp, #0x40]
	adds r2, r0, r2
	ldr r3, .L0805AFB8 @ =0x0600D800
	adds r2, r2, r3
	mov r0, sp
	movs r3, #4
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805AFBC
	cmp r1, #0
	beq .L0805AF96
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r4, r6}
	stm r0!, {r2, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805AF96:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	adds r3, r7, #1
	str r3, [sp, #0x64]
	b .L0805B08C
	.align 2, 0
.L0805AFA4: .4byte 0x000013F2
.L0805AFA8: .4byte 0x000013EC
.L0805AFAC: .4byte 0x0000FFF0
.L0805AFB0: .4byte 0x000013F8
.L0805AFB4: .4byte 0x00000EEA
.L0805AFB8: .4byte 0x0600D800
.L0805AFBC:
	str r1, [sp, #0x60]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r0, [r5]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r1, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L0805AFD6
	adds r0, r1, #0
.L0805AFD6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805AFF4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805AFF8
	mov r0, sb
	bl func_080D3BC0
	b .L0805AFF8
.L0805AFF4:
	movs r0, #0
	mov sb, r0
.L0805AFF8:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r5]
	mov r3, r8
	adds r6, r7, #1
	str r6, [sp, #0x64]
	ldr r7, [sp, #0x60]
	cmp r2, r7
	beq .L0805B024
.L0805B00A:
	cmp r3, #0
	beq .L0805B01A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805B01A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x60]
	cmp r2, r0
	bne .L0805B00A
.L0805B024:
	adds r4, r3, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L0805B040
	cmp r4, #0
	beq .L0805B03C
	adds r0, r4, #0
	ldr r1, [sp, #0x44]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805B03C:
	adds r4, #0x10
	b .L0805B068
.L0805B040:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805B066
.L0805B048:
	cmp r2, #0
	beq .L0805B058
	adds r0, r2, #0
	ldr r1, [sp, #0x44]
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805B058:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L0805B048
.L0805B066:
	adds r4, r2, #0
.L0805B068:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805B078
.L0805B072:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805B072
.L0805B078:
	cmp r0, #0
	beq .L0805B080
	bl free
.L0805B080:
	mov r0, sb
	add r0, r8
	mov r1, r8
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0805B08C:
	ldr r7, [sp, #0x64]
	cmp r7, #0x11
	bgt .L0805B094
	b .L0805AF48
.L0805B094:
	b .L0805B1E8
.L0805B096:
	movs r7, #3
	asrs r3, r3, #8
	str r3, [sp, #0x5c]
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #1
	str r2, [sp, #0x48]
	mov r2, sp
	str r2, [sp, #0x4c]
.L0805B0A8:
	mov r0, sl
	bl func_08008910
	ldr r1, .L0805B104 @ =0x000013F8
	add r1, sl
	movs r3, #0
	ldrsh r2, [r1, r3]
	lsls r1, r7, #1
	adds r1, r1, r7
	adds r1, r1, r2
	adds r5, r0, #0
	lsls r1, r1, #2
	add r1, sl
	ldr r4, .L0805B108 @ =0x00000CEA
	adds r1, r1, r4
	ldr r6, [sp, #0x5c]
	lsls r2, r6, #0xb
	lsls r0, r7, #6
	adds r2, r2, r0
	ldr r0, [sp, #0x48]
	adds r2, r0, r2
	ldr r3, .L0805B10C @ =0x0600D800
	adds r2, r2, r3
	mov r0, sp
	movs r3, #4
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805B110
	cmp r1, #0
	beq .L0805B0F6
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r4, r6}
	stm r0!, {r2, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805B0F6:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	adds r3, r7, #1
	str r3, [sp, #0x64]
	b .L0805B1E0
	.align 2, 0
.L0805B104: .4byte 0x000013F8
.L0805B108: .4byte 0x00000CEA
.L0805B10C: .4byte 0x0600D800
.L0805B110:
	str r1, [sp, #0x60]
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r0, [r5]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x24]
	add r1, sp, #0x28
	add r0, sp, #0x24
	cmp r4, #1
	bhs .L0805B12A
	adds r0, r1, #0
.L0805B12A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805B148
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805B14C
	mov r0, sb
	bl func_080D3BC0
	b .L0805B14C
.L0805B148:
	movs r0, #0
	mov sb, r0
.L0805B14C:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r5]
	mov r3, r8
	adds r6, r7, #1
	str r6, [sp, #0x64]
	ldr r7, [sp, #0x60]
	cmp r2, r7
	beq .L0805B178
.L0805B15E:
	cmp r3, #0
	beq .L0805B16E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805B16E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x60]
	cmp r2, r0
	bne .L0805B15E
.L0805B178:
	adds r4, r3, #0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne .L0805B194
	cmp r4, #0
	beq .L0805B190
	adds r0, r4, #0
	ldr r1, [sp, #0x4c]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805B190:
	adds r4, #0x10
	b .L0805B1BC
.L0805B194:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805B1BA
.L0805B19C:
	cmp r2, #0
	beq .L0805B1AC
	adds r0, r2, #0
	ldr r1, [sp, #0x4c]
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805B1AC:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L0805B19C
.L0805B1BA:
	adds r4, r2, #0
.L0805B1BC:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805B1CC
.L0805B1C6:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805B1C6
.L0805B1CC:
	cmp r0, #0
	beq .L0805B1D4
	bl free
.L0805B1D4:
	mov r0, sb
	add r0, r8
	mov r1, r8
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0805B1E0:
	ldr r7, [sp, #0x64]
	cmp r7, #0x11
	bgt .L0805B1E8
	b .L0805B0A8
.L0805B1E8:
	ldr r2, .L0805B28C @ =0x000013F0
	add r2, sl
	ldr r0, .L0805B290 @ =0x000013EA
	add r0, sl
	ldrh r0, [r0]
	ldr r1, .L0805B294 @ =0x0000FFF0
	ands r1, r0
	ldrh r0, [r2]
	cmp r0, r1
	bne .L0805B1FE
	b .L0805B37C
.L0805B1FE:
	strh r1, [r2]
	ldr r1, .L0805B298 @ =0x000013F6
	add r1, sl
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L0805B214
	movs r0, #2
	strh r0, [r1]
.L0805B214:
	ldrh r0, [r2]
	subs r0, #0x10
	movs r1, #0xf8
	lsls r1, r1, #1
	ands r0, r1
	asrs r2, r0, #3
	movs r7, #0x11
	asrs r0, r0, #8
	lsls r0, r0, #0xb
	str r0, [sp, #0x54]
	mov r3, sp
	str r3, [sp, #0x58]
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #1
	str r2, [sp, #0x50]
.L0805B234:
	mov r0, sl
	bl func_08008910
	ldr r1, .L0805B298 @ =0x000013F6
	add r1, sl
	movs r4, #0
	ldrsh r2, [r1, r4]
	lsls r1, r7, #1
	adds r1, r1, r7
	adds r1, r1, r2
	adds r5, r0, #0
	lsls r1, r1, #2
	add r1, sl
	ldr r6, .L0805B29C @ =0x00000DEA
	adds r1, r1, r6
	lsls r2, r7, #6
	ldr r0, [sp, #0x54]
	adds r2, r0, r2
	ldr r3, [sp, #0x50]
	adds r2, r3, r2
	ldr r4, .L0805B2A0 @ =0x0600E800
	adds r2, r2, r4
	mov r0, sp
	movs r3, #4
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805B2A4
	cmp r1, #0
	beq .L0805B280
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805B280:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	adds r4, r7, #1
	str r4, [sp, #0x64]
	b .L0805B374
	.align 2, 0
.L0805B28C: .4byte 0x000013F0
.L0805B290: .4byte 0x000013EA
.L0805B294: .4byte 0x0000FFF0
.L0805B298: .4byte 0x000013F6
.L0805B29C: .4byte 0x00000DEA
.L0805B2A0: .4byte 0x0600E800
.L0805B2A4:
	str r1, [sp, #0x60]
	movs r0, #1
	str r0, [sp, #0x30]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x2c]
	add r1, sp, #0x30
	add r0, sp, #0x2c
	cmp r4, #1
	bhs .L0805B2BE
	adds r0, r1, #0
.L0805B2BE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805B2DC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805B2E0
	mov r0, sb
	bl func_080D3BC0
	b .L0805B2E0
.L0805B2DC:
	movs r0, #0
	mov sb, r0
.L0805B2E0:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r5]
	mov r3, r8
	adds r0, r7, #1
	str r0, [sp, #0x64]
	ldr r1, [sp, #0x60]
	cmp r2, r1
	beq .L0805B30C
.L0805B2F2:
	cmp r3, #0
	beq .L0805B302
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805B302:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x60]
	cmp r2, r0
	bne .L0805B2F2
.L0805B30C:
	adds r4, r3, #0
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne .L0805B328
	cmp r4, #0
	beq .L0805B324
	adds r0, r4, #0
	ldr r1, [sp, #0x58]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0805B324:
	adds r4, #0x10
	b .L0805B350
.L0805B328:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805B34E
.L0805B330:
	cmp r2, #0
	beq .L0805B340
	adds r0, r2, #0
	ldr r1, [sp, #0x58]
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805B340:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L0805B330
.L0805B34E:
	adds r4, r2, #0
.L0805B350:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805B360
.L0805B35A:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805B35A
.L0805B360:
	cmp r0, #0
	beq .L0805B368
	bl free
.L0805B368:
	mov r0, sb
	add r0, r8
	mov r1, r8
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0805B374:
	ldr r7, [sp, #0x64]
	cmp r7, #0x13
	bgt .L0805B37C
	b .L0805B234
.L0805B37C:
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0805B38C
func_0805B38C: @ 0x0805B38C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x90
	mov r8, r0
	mov r1, sp
	movs r0, #0
	str r0, [sp]
	strh r0, [r1, #4]
	add r6, sp, #8
	str r0, [sp, #8]
	strh r0, [r6, #4]
	add r5, sp, #0x10
	str r0, [sp, #0x10]
	strh r0, [r5, #4]
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	strh r0, [r1, #4]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r0, #0xea
	lsls r0, r0, #1
	add r0, r8
	mov sb, r0
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x20
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r7, [sp, #0x10]
	movs r0, #0xb9
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L0805B6BC @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B414
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805B414:
	adds r0, r7, #0
	bl func_08008E64
	movs r7, #0
	movs r6, #0
	mov sl, sb
	movs r4, #0x83
	lsls r4, r4, #2
	add r4, r8
	str r4, [sp, #0x5c]
	movs r5, #0x91
	lsls r5, r5, #2
	add r5, r8
	str r5, [sp, #0x70]
	movs r0, #0xad
	lsls r0, r0, #2
	add r0, r8
	str r0, [sp, #0x80]
	mov r2, r8
	adds r2, #0x50
	str r2, [sp, #0x6c]
	movs r3, #0xc9
	lsls r3, r3, #2
	add r3, r8
	str r3, [sp, #0x88]
	mov r4, r8
	adds r4, #0x80
	str r4, [sp, #0x78]
	mov r5, sp
	adds r5, #0x40
	str r5, [sp, #0x60]
	mov r0, r8
	adds r0, #0xe0
	str r0, [sp, #0x84]
	mov r2, sp
	adds r2, #0x48
	str r2, [sp, #0x64]
	ldr r3, .L0805B6C0 @ =0x00000474
	add r3, r8
	str r3, [sp, #0x7c]
	mov r4, sp
	adds r4, #0x50
	str r4, [sp, #0x68]
	ldr r5, .L0805B6C4 @ =0x0000058C
	add r5, r8
	str r5, [sp, #0x8c]
	movs r5, #0xe8
	lsls r5, r5, #1
	add r5, r8
	add r0, sp, #0x20
	mov sb, r0
.L0805B47A:
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_0805E860
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	mov r4, sl
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #8]
	movs r0, #0xb8
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r7
	lsls r0, r0, #5
	ldr r2, .L0805B6C8 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805B4D6
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805B4D6:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq .L0805B4E8
	mov r4, sp
	ldrh r1, [r4, #0xc]
.L0805B4E8:
	lsrs r0, r1, #5
	adds r7, r7, r0
	adds r6, #1
	cmp r6, #3
	ble .L0805B47A
	movs r0, #0x82
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x5c]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x10]
	movs r0, #0xcc
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r5, .L0805B6BC @ =0x05000200
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B54A
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805B54A:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r1, [sp, #0x10]
	movs r0, #0
	cmp r1, #0
	beq .L0805B55E
	mov r2, sp
	ldrh r0, [r2, #0x14]
.L0805B55E:
	lsrs r0, r0, #1
	adds r4, r1, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B57E
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805B57E:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	movs r0, #0x90
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x70]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	movs r0, #0xcf
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B5DC
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805B5DC:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r1, [sp, #0x10]
	movs r0, #0
	cmp r1, #0
	beq .L0805B5F0
	mov r2, sp
	ldrh r0, [r2, #0x14]
.L0805B5F0:
	lsrs r0, r0, #1
	adds r4, r1, r0
	movs r0, #0xd0
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B610
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805B610:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, .L0805B6CC @ =0x0000140E
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0805B6D0
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r0, #0x9f
	lsls r0, r0, #2
	add r0, r8
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x10]
	movs r0, #0xd2
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B67C
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805B67C:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r1, [sp, #0x10]
	movs r0, #0
	cmp r1, #0
	beq .L0805B690
	mov r2, sp
	ldrh r0, [r2, #0x14]
.L0805B690:
	lsrs r0, r0, #1
	adds r4, r1, r0
	movs r0, #0xd3
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B6B0
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805B6B0:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	b .L0805B766
	.align 2, 0
.L0805B6BC: .4byte 0x05000200
.L0805B6C0: .4byte 0x00000474
.L0805B6C4: .4byte 0x0000058C
.L0805B6C8: .4byte 0x06010000
.L0805B6CC: .4byte 0x0000140E
.L0805B6D0:
	movs r0, #0xba
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r0, #0xbb
	lsls r0, r0, #2
	add r0, r8
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldm r0!, {r3, r4, r7}
	stm r1!, {r3, r4, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x10]
	movs r0, #0xd2
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B72A
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805B72A:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r1, [sp, #0x10]
	movs r0, #0
	cmp r1, #0
	beq .L0805B73E
	mov r2, sp
	ldrh r0, [r2, #0x14]
.L0805B73E:
	lsrs r0, r0, #1
	adds r4, r1, r0
	movs r0, #0xd3
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B75E
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805B75E:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
.L0805B766:
	movs r0, #0xac
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x80]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	ldr r4, [sp, #0x10]
	movs r0, #0xd5
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r5, .L0805BB48 @ =0x05000200
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B7BE
	mov r3, sp
	ldrh r2, [r3, #0x14]
.L0805B7BE:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r1, [sp, #0x10]
	movs r0, #0
	cmp r1, #0
	beq .L0805B7D2
	mov r4, sp
	ldrh r0, [r4, #0x14]
.L0805B7D2:
	lsrs r0, r0, #1
	adds r4, r1, r0
	movs r0, #0xd6
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B7F2
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805B7F2:
	lsrs r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r1, [sp, #0x6c]
	add r0, sp, #0x20
	movs r2, #0
	bl func_0805E790
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r7}
	stm r1!, {r4, r7}
	ldr r4, [sp, #0x10]
	movs r0, #0xbb
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B832
	mov r0, sp
	ldrh r2, [r0, #0x14]
.L0805B832:
	adds r0, r4, #0
	bl func_08008E64
	ldr r5, [sp, #8]
	movs r4, #0xba
	lsls r4, r4, #3
	add r4, r8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L0805BB4C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805B85A
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805B85A:
	adds r0, r5, #0
	bl func_08008E64
	add r0, sp, #0x20
	ldr r1, [sp, #0x6c]
	movs r2, #1
	bl func_0805E790
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r5, r7}
	stm r1!, {r3, r5, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r5, [sp, #8]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r4, .L0805BB50 @ =0x06010100
	adds r1, r0, r4
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805B896
	mov r7, sp
	ldrh r2, [r7, #0xc]
.L0805B896:
	adds r0, r5, #0
	bl func_08008E64
	movs r3, #0
	ldr r0, .L0805BB54 @ =0x0000FFFF
	adds r4, r0, #0
	movs r2, #0xd7
	lsls r2, r2, #3
	add r2, r8
.L0805B8A8:
	ldrh r0, [r2]
	orrs r0, r4
	strh r0, [r2]
	asrs r1, r3, #3
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x40
	strh r0, [r2, #2]
	adds r2, #4
	adds r3, #1
	cmp r3, #0x1f
	ble .L0805B8A8
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x88]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	ldr r4, [sp, #0x10]
	movs r0, #0xbd
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L0805BB48 @ =0x05000200
	adds r1, r0, r3
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B91A
	mov r5, sp
	ldrh r2, [r5, #0x14]
.L0805B91A:
	adds r0, r4, #0
	bl func_08008E64
	movs r7, #0
	movs r0, #0
	mov sl, r0
	ldr r5, [sp, #0x78]
	add r2, sp, #0x20
	mov sb, r2
	mov r3, sp
	adds r3, #8
	str r3, [sp, #0x58]
.L0805B932:
	movs r6, #0
	mov r4, sl
	adds r4, #1
	str r4, [sp, #0x74]
.L0805B93A:
	ldr r4, [r5]
	ldr r0, [sp, #0x60]
	ldr r3, [r4, #0xc]
	adds r1, r5, #0
	mov r2, sl
	bl _call_via_r3
	lsls r1, r6, #2
	ldr r0, [sp, #0x40]
	adds r0, r0, r1
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r4, #0x10]
	adds r1, r5, #0
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #8]
	movs r0, #0xbc
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r7
	lsls r0, r0, #5
	ldr r2, .L0805BB4C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805B996
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805B996:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq .L0805B9A8
	ldr r4, [sp, #0x58]
	ldrh r1, [r4, #4]
.L0805B9A8:
	lsrs r0, r1, #5
	adds r7, r7, r0
	adds r6, #1
	cmp r6, #1
	ble .L0805B93A
	ldr r0, [sp, #0x74]
	mov sl, r0
	cmp r0, #2
	ble .L0805B932
	add r0, sp, #0x20
	ldr r1, [sp, #0x84]
	movs r2, #0
	bl func_0805E790
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x10]
	movs r0, #0xbf
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r5, .L0805BB48 @ =0x05000200
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805B9F4
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805B9F4:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #8]
	movs r0, #0xbe
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L0805BB4C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805BA1A
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805BA1A:
	adds r0, r4, #0
	bl func_08008E64
	movs r7, #0
	movs r5, #0
	movs r6, #0x88
	lsls r6, r6, #1
	add r6, r8
	add r4, sp, #8
	mov sl, r4
	add r0, sp, #0x20
	mov sb, r0
.L0805BA32:
	lsls r1, r5, #1
	ldr r0, .L0805BB58 @ =0x00000BDA
	add r0, r8
	adds r0, r0, r1
	strh r7, [r0]
	ldr r4, [r6]
	ldr r0, [sp, #0x64]
	ldr r3, [r4, #0xc]
	adds r1, r6, #0
	movs r2, #0
	bl _call_via_r3
	lsls r1, r5, #2
	ldr r0, [sp, #0x48]
	adds r0, r0, r1
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r4, #0x10]
	adds r1, r6, #0
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #8]
	movs r0, #0xc5
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r7
	lsls r0, r0, #5
	ldr r2, .L0805BB4C @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805BA98
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805BA98:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq .L0805BAAA
	mov r4, sl
	ldrh r1, [r4, #4]
.L0805BAAA:
	lsrs r0, r1, #5
	adds r7, r7, r0
	adds r5, #1
	cmp r5, #3
	ble .L0805BA32
	movs r0, #0x8e
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x7c]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x10]
	movs r0, #0xc7
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r5, .L0805BB48 @ =0x05000200
	adds r1, r0, r5
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0805BB0C
	mov r7, sp
	ldrh r2, [r7, #0x14]
.L0805BB0C:
	adds r0, r4, #0
	bl func_08008E64
	movs r7, #0
	movs r5, #0
	movs r6, #0xa0
	lsls r6, r6, #1
	add r6, r8
	add r0, sp, #8
	mov sl, r0
	add r2, sp, #0x20
	mov sb, r2
.L0805BB24:
	lsls r1, r5, #1
	ldr r0, .L0805BB5C @ =0x00000BE2
	add r0, r8
	adds r0, r0, r1
	strh r7, [r0]
	ldr r4, [r6]
	ldr r0, [sp, #0x68]
	ldr r3, [r4, #0xc]
	adds r1, r6, #0
	movs r2, #0
	bl _call_via_r3
	lsls r1, r5, #2
	ldr r0, [sp, #0x50]
	adds r0, r0, r1
	ldrh r2, [r0]
	b .L0805BB60
	.align 2, 0
.L0805BB48: .4byte 0x05000200
.L0805BB4C: .4byte 0x06010000
.L0805BB50: .4byte 0x06010100
.L0805BB54: .4byte 0x0000FFFF
.L0805BB58: .4byte 0x00000BDA
.L0805BB5C: .4byte 0x00000BE2
.L0805BB60:
	add r0, sp, #0x20
	ldr r3, [r4, #0x10]
	adds r1, r6, #0
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #8]
	movs r0, #0xc6
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r7
	lsls r0, r0, #5
	ldr r2, .L0805BC30 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805BBA6
	mov r3, sp
	ldrh r2, [r3, #0xc]
.L0805BBA6:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #8]
	movs r1, #0
	cmp r0, #0
	beq .L0805BBB8
	mov r4, sl
	ldrh r1, [r4, #4]
.L0805BBB8:
	lsrs r0, r1, #5
	adds r7, r7, r0
	adds r5, #1
	cmp r5, #3
	ble .L0805BB24
	movs r0, #0xb1
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x8c]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x20
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	add r0, sp, #0x20
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #8]
	movs r0, #0xca
	lsls r0, r0, #3
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r5, .L0805BC30 @ =0x06010000
	adds r1, r0, r5
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0805BC1A
	mov r7, sp
	ldrh r2, [r7, #0xc]
.L0805BC1A:
	adds r0, r4, #0
	bl func_08008E64
	add sp, #0x90
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805BC30: .4byte 0x06010000

	thumb_func_start func_0805BC34
func_0805BC34: @ 0x0805BC34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0x68]
	add r0, sp, #4
	movs r1, #0
	add r2, sp, #0x68
	ldrh r2, [r2]
	strh r2, [r0]
	add r3, sp, #0x68
	ldrh r3, [r3]
	strh r3, [r0, #2]
	add r4, sp, #0x68
	ldrh r4, [r4]
	strh r4, [r0, #4]
	add r6, sp, #0x68
	ldrh r6, [r6]
	strh r6, [r0, #6]
	add r7, sp, #0x68
	ldrh r7, [r7]
	strh r7, [r0, #8]
	ldr r2, [sp, #0x68]
	str r2, [sp, #0x10]
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r2, [sp, #0x18]
	strb r1, [r0, #0x18]
	add r3, sp, #0x20
	str r2, [sp, #0x20]
	strh r2, [r3, #4]
	add r2, sp, #0x28
	ldr r6, [sp, #0x68]
	str r6, [sp, #0x28]
	strh r6, [r2, #4]
	add r0, sp, #0x30
	ldr r1, [sp, #0x68]
	str r1, [sp, #0x30]
	strh r1, [r0, #4]
	add r0, sp, #0x38
	ldr r6, [sp, #0x68]
	str r6, [sp, #0x38]
	strh r6, [r0, #4]
	ldr r1, .L0805BE8C @ =0x00001427
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	adds r2, #0x18
	str r2, [sp, #0x84]
	cmp r0, #0
	beq .L0805BD10
	adds r1, r5, #0
	adds r1, #0xe0
	adds r0, r2, #0
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0x20
	ldr r0, [sp, #0x84]
	ldm r0!, {r3, r6, r7}
	stm r1!, {r3, r6, r7}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r0, sp, #4
	movs r1, #0x40
	strh r1, [r0]
	strh r1, [r0, #2]
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #4
	strh r0, [r1, #4]
	movs r6, #0xbe
	lsls r6, r6, #3
	adds r0, r5, r6
	ldr r1, [r0, #4]
	bl func_08007D4C
	add r1, sp, #4
	strh r0, [r1, #6]
	movs r0, #2
	strh r0, [r1, #8]
	adds r0, r1, #0
	strb r4, [r0, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805BD08
	mov r7, sp
	ldrh r2, [r7, #0x24]
.L0805BD08:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L0805BD10:
	ldr r1, .L0805BE90 @ =0x000013EC
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0xb8
	lsls r0, r0, #3
	ldr r2, .L0805BE94 @ =0x0000058C
	adds r2, r5, r2
	str r2, [sp, #0x90]
	cmp r1, r0
	bls .L0805BDE6
	movs r3, #0
	mov sl, r3
	movs r4, #0xea
	lsls r4, r4, #1
	adds r4, r4, r5
	mov sb, r4
	movs r6, #0xe8
	lsls r6, r6, #1
	adds r6, r5, r6
	str r6, [sp, #0x98]
	add r4, sp, #4
	movs r7, #0x30
	mov r8, r7
	ldr r6, [sp, #0x84]
.L0805BD40:
	ldr r0, [sp, #0x98]
	mov r1, sl
	bl func_0805E860
	ldr r0, [sp, #0x98]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	mov r7, sb
	ldr r0, [r7]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	adds r0, r6, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r7, .L0805BE90 @ =0x000013EC
	adds r0, r5, r7
	ldrh r1, [r0]
	movs r2, #0xdb
	lsls r2, r2, #3
	adds r0, r2, #0
	subs r0, r0, r1
	strh r0, [r4]
	mov r3, r8
	strh r3, [r4, #2]
	movs r7, #0xb9
	lsls r7, r7, #3
	adds r0, r5, r7
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	movs r1, #0xb8
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r2, sl
	lsls r1, r2, #2
	adds r0, r0, r1
	strh r0, [r4, #6]
	movs r0, #2
	strh r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805BDD0
	mov r7, sp
	ldrh r2, [r7, #0x24]
.L0805BDD0:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	movs r0, #0x18
	add r8, r0
	movs r1, #1
	add sl, r1
	mov r2, sl
	cmp r2, #3
	ble .L0805BD40
.L0805BDE6:
	ldr r3, .L0805BE8C @ =0x00001427
	adds r0, r5, r3
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L0805BDF6
	b .L0805BF60
.L0805BDF6:
	movs r6, #0x8e
	lsls r6, r6, #2
	adds r4, r5, r6
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r5, r7
	bl func_0805E8F0
	str r0, [r4]
	movs r0, #0x9c
	lsls r0, r0, #2
	adds r4, r5, r0
	movs r1, #0x90
	lsls r1, r1, #2
	adds r0, r5, r1
	bl func_0805E8F0
	str r0, [r4]
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r4, r5, r2
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r5, r3
	bl func_0805E8F0
	str r0, [r4]
	adds r6, #0xa8
	adds r4, r5, r6
	adds r7, #0xa8
	adds r0, r5, r7
	bl func_0805E8F0
	str r0, [r4]
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r4, r5, r0
	movs r1, #0xba
	lsls r1, r1, #2
	adds r0, r5, r1
	bl func_0805E8F0
	str r0, [r4]
	ldr r2, .L0805BE98 @ =0x0000140E
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0805BEB6
	ldr r3, .L0805BE9C @ =0x0000149E
	adds r0, r5, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	movs r2, #0
	cmp r0, #0xab
	bgt .L0805BE6C
	movs r2, #2
	cmp r0, #0x55
	ble .L0805BE6C
	movs r2, #1
.L0805BE6C:
	ldr r6, .L0805BEA0 @ =0x00001408
	adds r1, r5, r6
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, r2
	beq .L0805BEA4
	strh r2, [r1]
	movs r2, #0xc8
	lsls r2, r2, #2
	adds r0, r5, r2
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl func_0805E860
	b .L0805BEB6
	.align 2, 0
.L0805BE8C: .4byte 0x00001427
.L0805BE90: .4byte 0x000013EC
.L0805BE94: .4byte 0x0000058C
.L0805BE98: .4byte 0x0000140E
.L0805BE9C: .4byte 0x0000149E
.L0805BEA0: .4byte 0x00001408
.L0805BEA4:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r4, r5, r6
	movs r7, #0xc8
	lsls r7, r7, #2
	adds r0, r5, r7
	bl func_0805E8F0
	str r0, [r4]
.L0805BEB6:
	ldr r1, .L0805BF14 @ =0x00001424
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0x18
	bne .L0805BEEA
	movs r3, #0xe4
	lsls r3, r3, #2
	adds r0, r5, r3
	bl func_0805E8F0
	movs r4, #0xf2
	lsls r4, r4, #2
	adds r0, r5, r4
	bl func_0805E8F0
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r5, r6
	bl func_0805E8F0
	movs r7, #0x87
	lsls r7, r7, #3
	adds r0, r5, r7
	bl func_0805E8F0
.L0805BEEA:
	movs r0, #0
	mov sl, r0
.L0805BEEE:
	movs r0, #0x2c
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r5, r0
	ldr r2, .L0805BF18 @ =0x0000144E
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #1
	bls .L0805BF56
	mov r3, sl
	cmp r3, #1
	beq .L0805BF34
	cmp r3, #1
	bgt .L0805BF1C
	cmp r3, #0
	beq .L0805BF28
	b .L0805BF56
	.align 2, 0
.L0805BF14: .4byte 0x00001424
.L0805BF18: .4byte 0x0000144E
.L0805BF1C:
	mov r4, sl
	cmp r4, #2
	beq .L0805BF40
	cmp r4, #3
	beq .L0805BF4C
	b .L0805BF56
.L0805BF28:
	movs r6, #0x8e
	lsls r6, r6, #3
	adds r0, r5, r6
	bl func_0805E8F0
	b .L0805BF56
.L0805BF34:
	movs r7, #0x95
	lsls r7, r7, #3
	adds r0, r5, r7
	bl func_0805E8F0
	b .L0805BF56
.L0805BF40:
	movs r1, #0x9c
	lsls r1, r1, #3
	adds r0, r5, r1
	bl func_0805E8F0
	b .L0805BF56
.L0805BF4C:
	movs r2, #0xa3
	lsls r2, r2, #3
	adds r0, r5, r2
	bl func_0805E8F0
.L0805BF56:
	movs r3, #1
	add sl, r3
	mov r4, sl
	cmp r4, #3
	ble .L0805BEEE
.L0805BF60:
	movs r6, #3
	mov sl, r6
	add r7, sp, #4
	mov r8, r7
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x78]
	movs r1, #0xc9
	lsls r1, r1, #2
	adds r1, r5, r1
	str r1, [sp, #0x7c]
.L0805BF78:
	ldr r2, .L0805BFA0 @ =0x00001424
	adds r0, r5, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	mov r4, sl
	lsls r4, r4, #1
	str r4, [sp, #0x8c]
	cmp r0, #0x18
	beq .L0805BF8C
	b .L0805C17C
.L0805BF8C:
	movs r7, #0
	mov r6, sl
	cmp r6, #1
	beq .L0805BFBE
	cmp r6, #1
	bgt .L0805BFA4
	cmp r6, #0
	beq .L0805BFB0
	b .L0805BFEC
	.align 2, 0
.L0805BFA0: .4byte 0x00001424
.L0805BFA4:
	mov r0, sl
	cmp r0, #2
	beq .L0805BFCE
	cmp r0, #3
	beq .L0805BFDE
	b .L0805BFEC
.L0805BFB0:
	movs r1, #0xe4
	lsls r1, r1, #2
	adds r1, r5, r1
	str r1, [sp, #0x68]
	movs r2, #0x8e
	lsls r2, r2, #3
	b .L0805BFEA
.L0805BFBE:
	movs r3, #0xf2
	lsls r3, r3, #2
	adds r3, r5, r3
	str r3, [sp, #0x68]
	movs r4, #0x95
	lsls r4, r4, #3
	adds r7, r5, r4
	b .L0805BFEC
.L0805BFCE:
	movs r6, #0x80
	lsls r6, r6, #3
	adds r6, r5, r6
	str r6, [sp, #0x68]
	movs r0, #0x9c
	lsls r0, r0, #3
	adds r7, r5, r0
	b .L0805BFEC
.L0805BFDE:
	movs r1, #0x87
	lsls r1, r1, #3
	adds r1, r5, r1
	str r1, [sp, #0x68]
	movs r2, #0xa3
	lsls r2, r2, #3
.L0805BFEA:
	adds r7, r5, r2
.L0805BFEC:
	ldr r3, [sp, #0x68]
	ldr r1, [r3]
	ldr r3, [r1]
	ldr r4, [sp, #0x68]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r4, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x84]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	ldr r0, [sp, #0x84]
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	add r1, sp, #4
	ldr r0, [sp, #0x68]
	adds r0, #0x14
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x2c
	mov r3, sl
	muls r3, r0, r3
	mov sb, r3
	movs r4, #0xa2
	lsls r4, r4, #5
	adds r0, r5, r4
	add r0, sb
	str r0, [sp, #0x6c]
	movs r6, #2
	ldrsh r1, [r0, r6]
	ldr r0, .L0805C18C @ =0x000013EC
	adds r0, r5, r0
	str r0, [sp, #0x70]
	ldrh r0, [r0]
	subs r1, r1, r0
	mov r2, r8
	strh r1, [r2]
	mov r3, sl
	lsls r4, r3, #1
	adds r0, r4, r3
	lsls r0, r0, #3
	adds r0, #0x3c
	str r0, [sp, #0x74]
	strh r0, [r2, #2]
	movs r0, #2
	strh r0, [r2, #8]
	movs r1, #0xc7
	lsls r1, r1, #3
	adds r6, r5, r1
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_080074C0
	mov r2, r8
	strh r0, [r2, #4]
	movs r3, #0xc5
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r1, [sp, #0x68]
	ldrh r2, [r1, #0xc]
	lsls r2, r2, #2
	ldr r1, [r1, #4]
	adds r1, r1, r2
	ldrh r2, [r1]
	lsls r2, r2, #1
	ldr r3, .L0805C190 @ =0x00000BDA
	adds r1, r5, r3
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, r1, r0
	mov r0, r8
	strh r1, [r0, #6]
	movs r1, #1
	strb r1, [r0, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	str r4, [sp, #0x8c]
	cmp r1, #0
	beq .L0805C0BE
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L0805C0BE:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	mov r1, sb
	adds r0, r5, r1
	ldr r2, .L0805C194 @ =0x0000144E
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #1
	bls .L0805C17C
	ldr r1, [r7]
	ldr r3, [r1]
	ldrh r2, [r7, #0xc]
	lsls r2, r2, #2
	ldr r0, [r7, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, [sp, #0x84]
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x84]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	ldr r0, [sp, #0x84]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	add r1, sp, #4
	adds r0, r7, #0
	adds r0, #0x14
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, [sp, #0x6c]
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r3, [sp, #0x70]
	ldrh r1, [r3]
	subs r0, r0, r1
	adds r0, #0x10
	mov r4, r8
	strh r0, [r4]
	add r0, sp, #0x74
	ldrh r0, [r0]
	strh r0, [r4, #2]
	movs r1, #2
	strh r1, [r4, #8]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_080074C0
	strh r0, [r4, #4]
	movs r2, #0xc6
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldrh r2, [r7, #0xc]
	lsls r2, r2, #2
	ldr r1, [r7, #4]
	adds r1, r1, r2
	ldrh r2, [r1]
	lsls r2, r2, #1
	ldr r3, .L0805C198 @ =0x00000BE2
	adds r1, r5, r3
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, r1, r0
	strh r1, [r4, #6]
	movs r6, #1
	strb r6, [r4, #0x18]
	adds r0, r5, #0
	bl func_08008920
	ldr r1, [sp, #0x20]
	movs r2, #0
	cmp r1, #0
	beq .L0805C176
	mov r7, sp
	ldrh r2, [r7, #0x24]
.L0805C176:
	add r3, sp, #4
	bl func_0805E99C
.L0805C17C:
	mov r0, sl
	cmp r0, #1
	beq .L0805C1B2
	cmp r0, #1
	bgt .L0805C19C
	cmp r0, #0
	beq .L0805C1A8
	b .L0805C1E4
	.align 2, 0
.L0805C18C: .4byte 0x000013EC
.L0805C190: .4byte 0x00000BDA
.L0805C194: .4byte 0x0000144E
.L0805C198: .4byte 0x00000BE2
.L0805C19C:
	mov r1, sl
	cmp r1, #2
	beq .L0805C1BC
	cmp r1, #3
	beq .L0805C1DC
	b .L0805C1E4
.L0805C1A8:
	movs r2, #0x82
	lsls r2, r2, #2
	adds r2, r5, r2
	str r2, [sp, #0x68]
	b .L0805C1E4
.L0805C1B2:
	movs r3, #0x90
	lsls r3, r3, #2
	adds r3, r5, r3
	str r3, [sp, #0x68]
	b .L0805C1E4
.L0805C1BC:
	ldr r4, .L0805C1D8 @ =0x0000140E
	adds r0, r5, r4
	ldrb r0, [r0]
	movs r6, #0xba
	lsls r6, r6, #2
	adds r6, r5, r6
	str r6, [sp, #0x68]
	cmp r0, #0
	bne .L0805C1E4
	movs r7, #0x9e
	lsls r7, r7, #2
	adds r7, r5, r7
	str r7, [sp, #0x68]
	b .L0805C1E4
	.align 2, 0
.L0805C1D8: .4byte 0x0000140E
.L0805C1DC:
	movs r0, #0xac
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x68]
.L0805C1E4:
	ldr r2, [sp, #0x68]
	ldr r1, [r2]
	ldr r3, [r1]
	ldrh r2, [r2, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x68]
	ldr r0, [r4, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x84]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	ldr r0, [sp, #0x84]
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	ldr r0, [sp, #0x68]
	adds r0, #0x14
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x2c
	mov r1, sl
	muls r1, r0, r1
	movs r4, #0xa2
	lsls r4, r4, #5
	adds r0, r5, r4
	adds r0, r0, r1
	movs r6, #2
	ldrsh r1, [r0, r6]
	ldr r7, .L0805C2DC @ =0x000013EC
	adds r0, r5, r7
	ldrh r0, [r0]
	subs r1, r1, r0
	mov r0, r8
	strh r1, [r0]
	ldr r0, [sp, #0x8c]
	add r0, sl
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0x3c
	mov r1, r8
	strh r0, [r1, #2]
	movs r0, #2
	strh r0, [r1, #8]
	adds r0, r4, r5
	movs r2, #0xcb
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r3, r8
	strh r0, [r3, #6]
	movs r6, #1
	mov sb, r6
	mov r7, sb
	strb r7, [r3, #0x18]
	ldr r0, [sp, #0x68]
	adds r0, #0x30
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	mov r1, sl
	subs r1, #1
	str r1, [sp, #0x88]
	cmp r0, #0
	blt .L0805C288
	b .L0805C3BA
.L0805C288:
	adds r0, r5, #0
	bl func_08008910
	adds r6, r0, #0
	ldr r7, [sp, #0x28]
	adds r0, r4, r5
	movs r2, #0xcb
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x28]
	movs r3, #0
	cmp r0, #0
	beq .L0805C2AE
	mov r4, sp
	ldrh r3, [r4, #0x2c]
.L0805C2AE:
	lsls r2, r2, #5
	ldr r0, .L0805C2E0 @ =0x06010000
	adds r2, r2, r0
	ldr r0, [sp, #0x84]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0805C2E4
	cmp r1, #0
	beq .L0805C2D4
	adds r0, r1, #0
	ldr r1, [sp, #0x84]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0805C2D4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0805C3BA
	.align 2, 0
.L0805C2DC: .4byte 0x000013EC
.L0805C2E0: .4byte 0x06010000
.L0805C2E4:
	str r1, [sp, #0x98]
	mov r7, sb
	str r7, [sp, #0x64]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x60]
	add r1, sp, #0x64
	add r0, sp, #0x60
	cmp r4, #1
	bhs .L0805C2FC
	adds r0, r1, #0
.L0805C2FC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805C31A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0x80]
	cmp r0, #0
	bne .L0805C320
	adds r0, r4, #0
	bl func_080D3BC0
	b .L0805C320
.L0805C31A:
	movs r0, #0
	movs r2, #0
	str r2, [sp, #0x80]
.L0805C320:
	adds r4, r0, #0
	mov sb, r4
	ldr r2, [r6]
	mov ip, sb
	mov r3, sl
	subs r3, #1
	str r3, [sp, #0x88]
	ldr r4, [sp, #0x98]
	cmp r2, r4
	beq .L0805C352
.L0805C334:
	mov r7, ip
	cmp r7, #0
	beq .L0805C346
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805C346:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	ldr r1, [sp, #0x98]
	cmp r2, r1
	bne .L0805C334
.L0805C352:
	mov r4, ip
	ldr r0, [sp, #0x64]
	cmp r0, #1
	bne .L0805C36E
	cmp r4, #0
	beq .L0805C36A
	adds r0, r4, #0
	add r1, sp, #0x40
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805C36A:
	adds r4, #0x10
	b .L0805C396
.L0805C36E:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805C394
.L0805C376:
	cmp r2, #0
	beq .L0805C386
	adds r0, r2, #0
	add r1, sp, #0x40
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805C386:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L0805C376
.L0805C394:
	adds r4, r2, #0
.L0805C396:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805C3A6
.L0805C3A0:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805C3A0
.L0805C3A6:
	cmp r0, #0
	beq .L0805C3AE
	bl free
.L0805C3AE:
	ldr r0, [sp, #0x80]
	add r0, sb
	mov r2, sb
	str r2, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L0805C3BA:
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805C3C8
	mov r3, sp
	ldrh r2, [r3, #0x24]
.L0805C3C8:
	ldr r0, [sp, #0x8c]
	add r0, sl
	lsls r0, r0, #3
	movs r4, #0xcb
	lsls r4, r4, #3
	adds r0, r0, r4
	adds r0, r5, r0
	str r0, [sp]
	adds r0, r5, #0
	add r3, sp, #4
	bl func_0805C63C
	ldr r6, .L0805C628 @ =0x0000140E
	adds r0, r5, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0805C4A2
	mov r7, sl
	cmp r7, #2
	bne .L0805C4A2
	ldr r0, [sp, #0x78]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x7c]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x84]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	ldr r0, [sp, #0x84]
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	movs r3, #0xcd
	lsls r3, r3, #2
	adds r0, r5, r3
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r6, .L0805C62C @ =0x00001498
	adds r0, r5, r6
	movs r7, #2
	ldrsh r1, [r0, r7]
	ldr r2, .L0805C630 @ =0x000013EC
	adds r0, r5, r2
	ldrh r0, [r0]
	subs r1, r1, r0
	subs r1, #0x27
	mov r3, r8
	strh r1, [r3]
	movs r0, #0x4c
	strh r0, [r3, #2]
	movs r4, #0xbd
	lsls r4, r4, #3
	adds r0, r5, r4
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r6, r8
	strh r0, [r6, #4]
	mov r7, sl
	strh r7, [r6, #8]
	movs r0, #1
	strb r0, [r6, #0x18]
	movs r1, #0xbc
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r3, [sp, #0x78]
	ldrh r2, [r3, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x7c]
	ldr r1, [r4]
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #2
	adds r0, r0, r1
	strh r0, [r6, #6]
	adds r0, r5, #0
	bl func_08008920
	ldr r1, [sp, #0x20]
	movs r2, #0
	cmp r1, #0
	beq .L0805C49C
	mov r6, sp
	ldrh r2, [r6, #0x24]
.L0805C49C:
	add r3, sp, #4
	bl func_0805E99C
.L0805C4A2:
	movs r7, #0xb1
	lsls r7, r7, #3
	adds r0, r5, r7
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x90]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x84]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x20
	ldr r0, [sp, #0x84]
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #4
	ldr r3, .L0805C634 @ =0x0000059C
	adds r0, r5, r3
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0x2c
	mov r1, sl
	muls r1, r0, r1
	movs r6, #0xa2
	lsls r6, r6, #5
	adds r0, r5, r6
	adds r0, r0, r1
	movs r7, #2
	ldrsh r1, [r0, r7]
	ldr r2, .L0805C630 @ =0x000013EC
	adds r0, r5, r2
	ldrh r0, [r0]
	subs r1, r1, r0
	mov r3, r8
	strh r1, [r3]
	ldr r0, [sp, #0x8c]
	add r0, sl
	lsls r0, r0, #3
	adds r0, #0x3c
	strh r0, [r3, #2]
	movs r0, #2
	strh r0, [r3, #8]
	movs r4, #0xbb
	lsls r4, r4, #3
	adds r0, r5, r4
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r6, r8
	strh r0, [r6, #4]
	movs r7, #0xca
	lsls r7, r7, #3
	adds r0, r5, r7
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r6, #6]
	movs r0, #1
	strb r0, [r6, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805C550
	mov r0, sp
	ldrh r2, [r0, #0x24]
.L0805C550:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
	ldr r1, [sp, #0x88]
	mov sl, r1
	cmp r1, #0
	blt .L0805C562
	b .L0805BF78
.L0805C562:
	movs r2, #0
	mov sl, r2
	movs r3, #1
	mov sb, r3
	add r7, sp, #4
	ldr r4, [sp, #0x84]
	mov r8, r4
.L0805C570:
	mov r6, sl
	lsls r6, r6, #2
	str r6, [sp, #0x9c]
	movs r1, #0xd7
	lsls r1, r1, #3
	adds r0, r5, r1
	adds r0, r0, r6
	str r0, [sp, #0xa0]
	movs r2, #0
	ldrsh r0, [r0, r2]
	movs r3, #1
	rsbs r3, r3, #0
	cmp r0, r3
	beq .L0805C60E
	mov r4, sl
	mov r6, sb
	ands r4, r6
	mov r0, r8
	adds r1, r5, #0
	adds r1, #0x50
	adds r2, r4, #0
	bl func_0805E790
	add r1, sp, #0x20
	mov r0, r8
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r6, .L0805C630 @ =0x000013EC
	adds r1, r5, r6
	ldr r2, [sp, #0xa0]
	ldrh r0, [r2]
	ldrh r1, [r1]
	subs r0, r0, r1
	strh r0, [r7]
	ldr r3, .L0805C638 @ =0x000006BA
	adds r0, r5, r3
	ldr r6, [sp, #0x9c]
	adds r0, r0, r6
	ldrh r0, [r0]
	strh r0, [r7, #2]
	movs r1, #0xbb
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r7, #4]
	movs r2, #0xba
	lsls r2, r2, #3
	adds r0, r5, r2
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r4, r4, #3
	adds r0, r0, r4
	strh r0, [r7, #6]
	movs r0, #2
	strh r0, [r7, #8]
	mov r3, sb
	strb r3, [r7, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x20]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805C606
	mov r4, sp
	ldrh r2, [r4, #0x24]
.L0805C606:
	adds r0, r3, #0
	add r3, sp, #4
	bl func_0805E99C
.L0805C60E:
	movs r6, #1
	add sl, r6
	mov r0, sl
	cmp r0, #0x1f
	ble .L0805C570
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805C628: .4byte 0x0000140E
.L0805C62C: .4byte 0x00001498
.L0805C630: .4byte 0x000013EC
.L0805C634: .4byte 0x0000059C
.L0805C638: .4byte 0x000006BA

	thumb_func_start func_0805C63C
func_0805C63C: @ 0x0805C63C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp, #8]
	mov r8, r3
	mov sb, r1
	lsls r2, r2, #3
	add r2, sb
	str r2, [sp, #0xc]
	cmp sb, r2
	bne .L0805C65A
	b .L0805C7D4
.L0805C65A:
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r1, [sp]
	lsls r0, r1, #7
	asrs r3, r0, #0x17
	mov r0, sp
	movs r5, #0
	ldrsb r5, [r0, r5]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x1e
	adds r4, r0, #0
	lsrs r1, r1, #0x1e
	cmp r4, #0
	bne .L0805C684
	movs r6, #8
	lsls r6, r1
	adds r4, r6, #0
	b .L0805C6A4
.L0805C684:
	adds r0, r1, #1
	lsrs r0, r0, #1
	adds r0, #1
	movs r2, #8
	lsls r2, r0
	movs r0, #8
	cmp r1, #1
	beq .L0805C696
	lsrs r0, r2, #1
.L0805C696:
	cmp r4, #1
	beq .L0805C6A0
	adds r6, r2, #0
	adds r4, r0, #0
	b .L0805C6A4
.L0805C6A0:
	adds r6, r0, #0
	adds r4, r2, #0
.L0805C6A4:
	mov r0, r8
	ldrb r7, [r0, #0x10]
	movs r1, #1
	mov sl, r1
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq .L0805C6CE
	adds r0, r3, r4
	rsbs r3, r0, #0
	ldr r2, [sp]
	lsls r1, r2, #3
	lsrs r1, r1, #0x1f
	mov r0, sl
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x1c
	ldr r0, .L0805C7E4 @ =0xEFFFFFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
.L0805C6CE:
	movs r0, #2
	ands r0, r7
	cmp r0, #0
	beq .L0805C6F0
	adds r0, r5, r6
	rsbs r5, r0, #0
	ldr r2, [sp]
	lsls r1, r2, #2
	lsrs r1, r1, #0x1f
	mov r0, sl
	eors r1, r0
	ands r1, r0
	lsls r1, r1, #0x1d
	ldr r0, .L0805C7E8 @ =0xDFFFFFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
.L0805C6F0:
	mov r1, r8
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r3, r3, r0
	movs r2, #2
	ldrsh r0, [r1, r2]
	adds r5, r5, r0
	adds r0, r3, r4
	cmp r0, #0
	ble .L0805C7C8
	cmp r3, #0xef
	bgt .L0805C7C8
	adds r0, r5, r6
	cmp r0, #0
	ble .L0805C7C8
	cmp r5, #0x9f
	bgt .L0805C7C8
	ldr r0, .L0805C7EC @ =0x000001FF
	ands r3, r0
	lsls r2, r3, #0x10
	ldr r1, .L0805C7F0 @ =0xFE00FFFF
	ldr r0, [sp]
	ands r0, r1
	orrs r0, r2
	lsls r2, r5, #0x18
	lsrs r2, r2, #0x18
	ldr r1, .L0805C7F4 @ =0xFFFFFF00
	ands r0, r1
	orrs r0, r2
	str r0, [sp]
	mov r4, sp
	ldr r0, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x1c
	lsls r0, r0, #3
	ldr r3, [sp, #0x30]
	adds r0, r0, r3
	adds r0, #8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r1, .L0805C7F8 @ =0xFFFF0FFF
	ldr r2, [sp, #4]
	ands r2, r1
	orrs r2, r0
	lsls r0, r2, #0x16
	lsrs r0, r0, #0x16
	mov r1, r8
	ldrh r1, [r1, #6]
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r1, .L0805C7FC @ =0xFFFFFC00
	ands r1, r2
	orrs r1, r0
	mov r2, r8
	ldrh r0, [r2, #8]
	movs r3, #3
	ands r0, r3
	lsls r0, r0, #0xa
	ldr r2, .L0805C800 @ =0xFFFFF3FF
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #4]
	mov r1, r8
	ldr r0, [r1, #0xc]
	ands r0, r3
	lsls r0, r0, #0xa
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	mov r3, r8
	ldr r2, [r3, #0x14]
	movs r0, #3
	ands r2, r0
	lsls r2, r2, #8
	ldr r0, .L0805C804 @ =0xFFFFFCFF
	ands r1, r0
	orrs r1, r2
	ldrb r2, [r3, #0x18]
	mov r3, sl
	ands r2, r3
	lsls r2, r2, #0xc
	ldr r0, .L0805C808 @ =0xFFFFEFFF
	ands r1, r0
	orrs r1, r2
	str r1, [sp]
	ldr r0, [sp, #8]
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0805C7C8
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp]
	str r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L0805C7C8:
	movs r0, #8
	add sb, r0
	ldr r1, [sp, #0xc]
	cmp sb, r1
	beq .L0805C7D4
	b .L0805C65A
.L0805C7D4:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805C7E4: .4byte 0xEFFFFFFF
.L0805C7E8: .4byte 0xDFFFFFFF
.L0805C7EC: .4byte 0x000001FF
.L0805C7F0: .4byte 0xFE00FFFF
.L0805C7F4: .4byte 0xFFFFFF00
.L0805C7F8: .4byte 0xFFFF0FFF
.L0805C7FC: .4byte 0xFFFFFC00
.L0805C800: .4byte 0xFFFFF3FF
.L0805C804: .4byte 0xFFFFFCFF
.L0805C808: .4byte 0xFFFFEFFF

	thumb_func_start func_0805C80C
func_0805C80C: @ 0x0805C80C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r6, .L0805C90C @ =0x0000142C
	add r6, r8
	ldr r0, .L0805C910 @ =0x0000140E
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #1
	bne .L0805C872
	ldr r1, .L0805C914 @ =0x000014A4
	add r1, r8
	movs r0, #0x80
	strh r0, [r1]
	ldr r4, .L0805C918 @ =0x000014DC
	add r4, r8
	ldr r0, [r4]
	bl GetAdequacy__C3Pet
	ldr r5, .L0805C91C @ =0x000014A1
	add r5, r8
	strb r0, [r5]
	ldr r0, [r4]
	bl GetAffection__C6Animal
	ldr r1, .L0805C920 @ =0x000014A2
	add r1, r8
	strb r0, [r1]
	ldrb r1, [r5]
	movs r0, #0xfa
	subs r0, r0, r1
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xfa
	lsls r1, r1, #2
	bl __divsi3
	adds r4, r0, #0
	bl rand
	movs r1, #3
	ands r0, r1
	adds r0, #1
	adds r4, r4, r0
	ldr r0, .L0805C924 @ =0x000014AC
	add r0, r8
	strh r4, [r0]
.L0805C872:
	movs r5, #0
	ldr r0, .L0805C928 @ =0x00000C49
	mov sl, r0
	mov sb, r5
.L0805C87A:
	ldrb r0, [r6, #0x1d]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xb0
	lsls r1, r1, #0xf
	adds r0, r0, r1
	movs r1, #0x3c
	bl __divsi3
	adds r4, r0, #0
	str r4, [r6]
	ldrb r0, [r6, #0x1e]
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xc0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	movs r1, #0x3c
	bl __divsi3
	adds r0, r0, r4
	str r0, [r6, #4]
	subs r0, r0, r4
	movs r1, #0x3c
	bl __divsi3
	str r0, [r6, #8]
	mov r0, sb
	str r0, [r6, #0xc]
	movs r0, #0xc
	strh r0, [r6, #0x18]
	movs r0, #0xff
	strh r0, [r6, #0x1a]
	mov r1, sb
	strb r1, [r6, #0x1c]
	str r4, [r6, #0x10]
	movs r0, #0xd7
	lsls r0, r0, #0x13
	str r0, [r6, #0x14]
	movs r0, #0xff
	strb r0, [r6, #0x1f]
	mov r0, sb
	strh r0, [r6, #0x22]
	strh r0, [r6, #0x2a]
	ldr r0, .L0805C92C @ =0x00001424
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r4, r5, #1
	adds r7, r6, #0
	adds r7, #0x2c
	cmp r0, #0
	bne .L0805C952
	ldr r0, .L0805C910 @ =0x0000140E
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #1
	bne .L0805C930
	cmp r5, #2
	bne .L0805C930
	adds r1, r6, #0
	adds r1, #0x24
	movs r2, #0
	adds r0, r6, #0
	adds r0, #0x27
.L0805C900:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge .L0805C900
	b .L0805C952
	.align 2, 0
.L0805C90C: .4byte 0x0000142C
.L0805C910: .4byte 0x0000140E
.L0805C914: .4byte 0x000014A4
.L0805C918: .4byte 0x000014DC
.L0805C91C: .4byte 0x000014A1
.L0805C920: .4byte 0x000014A2
.L0805C924: .4byte 0x000014AC
.L0805C928: .4byte 0x00000C49
.L0805C92C: .4byte 0x00001424
.L0805C930:
	movs r2, #0
	adds r4, r5, #1
	adds r7, r6, #0
	adds r7, #0x2c
	adds r3, r6, #0
	adds r3, #0x24
	ldr r5, .L0805C968 @ =gUnk_080FA99E
.L0805C93E:
	adds r0, r3, r2
	ldrh r1, [r6, #0x20]
	lsls r1, r1, #2
	adds r1, r2, r1
	adds r1, r1, r5
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, #3
	ble .L0805C93E
.L0805C952:
	adds r5, r4, #0
	adds r6, r7, #0
	cmp r5, #3
	ble .L0805C87A
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805C968: .4byte gUnk_080FA99E

	thumb_func_start func_0805C96C
func_0805C96C: @ 0x0805C96C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	ldr r0, .L0805C9C4 @ =0x0000142C
	adds r5, r6, r0
	movs r1, #0xd7
	lsls r1, r1, #0x13
	str r1, [sp, #0x20]
	movs r2, #0
	mov r8, r2
	add r3, sp, #0x10
	mov sl, r3
.L0805C98C:
	ldrb r0, [r5, #0x1c]
	adds r0, #1
	movs r1, #0
	strb r0, [r5, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls .L0805C9B0
	strb r1, [r5, #0x1c]
	ldrh r0, [r5, #0x1a]
	adds r0, #3
	strh r0, [r5, #0x1a]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xfe
	ble .L0805C9B0
	movs r0, #0xff
	strh r0, [r5, #0x1a]
.L0805C9B0:
	ldrh r0, [r5, #0x22]
	cmp r0, #4
	bls .L0805C9B8
	b .L0805CBA6
.L0805C9B8:
	lsls r0, r0, #2
	ldr r1, .L0805C9C8 @ =.L0805C9CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805C9C4: .4byte 0x0000142C
.L0805C9C8: .4byte .L0805C9CC
.L0805C9CC: @ jump table
	.4byte .L0805CBA6 @ case 0
	.4byte .L0805C9E0 @ case 1
	.4byte .L0805CA96 @ case 2
	.4byte .L0805CAC4 @ case 3
	.4byte .L0805CAF4 @ case 4
.L0805C9E0:
	mov r7, r8
	cmp r7, #1
	beq .L0805CA16
	cmp r7, #1
	bgt .L0805C9F0
	cmp r7, #0
	beq .L0805C9FC
	b .L0805CA8E
.L0805C9F0:
	mov r0, r8
	cmp r0, #2
	beq .L0805CA32
	cmp r0, #3
	beq .L0805CA6E
	b .L0805CA8E
.L0805C9FC:
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r6, r1
	subs r1, #0x88
	strh r1, [r0, #0x10]
	movs r2, #0xe4
	lsls r2, r2, #2
	adds r0, r6, r2
	strh r1, [r0, #0x10]
	movs r3, #0x8e
	lsls r3, r3, #3
	adds r0, r6, r3
	b .L0805CA66
.L0805CA16:
	movs r7, #0x90
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r0, r6, r2
	strh r1, [r0, #0x10]
	movs r3, #0x95
	lsls r3, r3, #3
	adds r0, r6, r3
	b .L0805CA66
.L0805CA32:
	ldr r7, .L0805CA44 @ =0x0000140E
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0805CA48
	movs r0, #0x9e
	lsls r0, r0, #2
	adds r1, r6, r0
	b .L0805CA4E
	.align 2, 0
.L0805CA44: .4byte 0x0000140E
.L0805CA48:
	movs r2, #0xba
	lsls r2, r2, #2
	adds r1, r6, r2
.L0805CA4E:
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1, #0x10]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r6, r3
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r7, #0x9c
	lsls r7, r7, #3
	adds r0, r6, r7
.L0805CA66:
	movs r1, #0
	bl func_0805E860
	b .L0805CA8E
.L0805CA6E:
	movs r1, #0xac
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r2, #0x87
	lsls r2, r2, #3
	adds r0, r6, r2
	strh r1, [r0, #0x10]
	movs r3, #0xa3
	lsls r3, r3, #3
	adds r0, r6, r3
	movs r1, #0
	bl func_0805E860
.L0805CA8E:
	movs r0, #0x3c
	strh r0, [r5, #0x18]
	movs r0, #2
	strh r0, [r5, #0x22]
.L0805CA96:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #8]
	adds r1, r1, r0
	str r1, [r5, #0x10]
	ldrh r0, [r5, #0x18]
	subs r0, #1
	movs r3, #0
	strh r0, [r5, #0x18]
	ldr r0, [r5, #4]
	adds r2, r0, #0
	cmp r1, r2
	blt .L0805CAB0
	strh r3, [r5, #0x18]
.L0805CAB0:
	movs r7, #0x18
	ldrsh r0, [r5, r7]
	cmp r0, #0
	bgt .L0805CBA6
	movs r0, #3
	strh r0, [r5, #0x22]
	str r2, [r5, #0x10]
	movs r0, #0x3c
	strh r0, [r5, #0x18]
	b .L0805CBA6
.L0805CAC4:
	ldrh r0, [r5, #0x18]
	subs r0, #1
	strh r0, [r5, #0x18]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt .L0805CBA6
	movs r0, #4
	strh r0, [r5, #0x22]
	movs r0, #0x1a
	ldrsh r1, [r5, r0]
	movs r0, #0x3c
	bl __divsi3
	adds r0, #0x1e
	strh r0, [r5, #0x18]
	ldr r0, [r5, #4]
	ldr r1, [r5]
	subs r0, r0, r1
	movs r2, #0x18
	ldrsh r1, [r5, r2]
	bl __divsi3
	str r0, [r5, #0xc]
	b .L0805CBA6
.L0805CAF4:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0xc]
	subs r1, r1, r0
	str r1, [r5, #0x10]
	ldrh r0, [r5, #0x18]
	subs r0, #1
	movs r3, #0
	strh r0, [r5, #0x18]
	ldr r0, [r5]
	adds r2, r0, #0
	cmp r1, r2
	bgt .L0805CB0E
	strh r3, [r5, #0x18]
.L0805CB0E:
	movs r7, #0x18
	ldrsh r0, [r5, r7]
	cmp r0, #0
	bgt .L0805CBA6
	strh r3, [r5, #0x22]
	str r2, [r5, #0x10]
	movs r0, #0xc
	strh r0, [r5, #0x18]
	mov r0, r8
	cmp r0, #1
	beq .L0805CB4E
	cmp r0, #1
	bgt .L0805CB2E
	cmp r0, #0
	beq .L0805CB3A
	b .L0805CBA6
.L0805CB2E:
	mov r1, r8
	cmp r1, #2
	beq .L0805CB62
	cmp r1, #3
	beq .L0805CB92
	b .L0805CBA6
.L0805CB3A:
	movs r2, #0x82
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r3, #0xe4
	lsls r3, r3, #2
	adds r0, r6, r3
	b .L0805CBA4
.L0805CB4E:
	movs r7, #0x90
	lsls r7, r7, #2
	adds r0, r6, r7
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r2, #0xf2
	lsls r2, r2, #2
	adds r0, r6, r2
	b .L0805CBA4
.L0805CB62:
	ldr r3, .L0805CB74 @ =0x0000140E
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0805CB78
	movs r7, #0x9e
	lsls r7, r7, #2
	adds r1, r6, r7
	b .L0805CB7E
	.align 2, 0
.L0805CB74: .4byte 0x0000140E
.L0805CB78:
	movs r0, #0xba
	lsls r0, r0, #2
	adds r1, r6, r0
.L0805CB7E:
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x10]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x10]
	b .L0805CBA6
.L0805CB92:
	movs r3, #0xac
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r7, #0x87
	lsls r7, r7, #3
	adds r0, r6, r7
.L0805CBA4:
	strh r1, [r0, #0x10]
.L0805CBA6:
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #0x10]
	subs r1, r1, r0
	str r1, [r5, #0x14]
	mov r2, r8
	lsls r0, r2, #2
	add r0, sl
	str r1, [r0]
	ldr r3, [sp, #0x20]
	cmp r3, r1
	ble .L0805CBBE
	str r1, [sp, #0x20]
.L0805CBBE:
	lsrs r7, r1, #0x10
	lsls r0, r7, #0x10
	asrs r4, r0, #0x10
	cmp r4, #0x1f
	ble .L0805CBF0
	asrs r0, r0, #0x15
	movs r2, #7
	mov r3, r8
	lsls r1, r3, #3
	ands r0, r2
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r2, #0xd7
	lsls r2, r2, #3
	adds r0, r6, r2
	adds r3, r0, r1
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r2, .L0805CC9C @ =0x0000FFE0
	ands r1, r2
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	beq .L0805CBF0
	strh r7, [r3]
.L0805CBF0:
	movs r1, #1
	add r8, r1
	adds r5, #0x2c
	mov r2, r8
	cmp r2, #3
	bgt .L0805CBFE
	b .L0805C98C
.L0805CBFE:
	movs r3, #0
	mov r8, r3
	mov r7, sl
	mov r5, sl
.L0805CC06:
	movs r0, #0
	mov sb, r0
	movs r3, #0
	adds r4, r5, #0
	adds r2, r7, #0
.L0805CC10:
	cmp r8, r3
	beq .L0805CC20
	ldr r1, [r4]
	ldr r0, [r2]
	cmp r1, r0
	ble .L0805CC20
	movs r1, #1
	add sb, r1
.L0805CC20:
	adds r2, #4
	adds r3, #1
	cmp r3, #3
	ble .L0805CC10
	mov r2, sb
	lsls r0, r2, #2
	add r0, sp
	mov r3, r8
	str r3, [r0]
	adds r5, #4
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #3
	ble .L0805CC06
	movs r2, #0
	mov sb, r2
	mov r8, r2
.L0805CC44:
	mov r3, r8
	lsls r1, r3, #2
	mov r7, sp
	adds r4, r7, r1
	ldr r3, [r4]
	movs r0, #0x2c
	muls r0, r3, r0
	ldr r2, .L0805CCA0 @ =0x0000142C
	adds r0, r0, r2
	adds r5, r6, r0
	ldrb r0, [r5, #0x1f]
	cmp r0, #0xff
	beq .L0805CC60
	b .L0805CE26
.L0805CC60:
	movs r0, #0xb8
	lsls r0, r0, #0x10
	ldr r7, [r5, #0x14]
	cmp r7, r0
	bgt .L0805CD18
	ldr r7, .L0805CCA4 @ =0x000013FC
	adds r2, r6, r7
	movs r0, #0
	ldrsh r1, [r2, r0]
	lsls r1, r1, #1
	adds r7, #2
	adds r0, r6, r7
	adds r0, r0, r1
	strh r3, [r0]
	ldrh r1, [r2]
	adds r0, r1, #1
	strh r0, [r2]
	strb r1, [r5, #0x1f]
	lsls r1, r1, #0x18
	cmp r1, #0
	beq .L0805CC8C
	b .L0805CE34
.L0805CC8C:
	ldr r0, [r4]
	cmp r0, #1
	beq .L0805CCC0
	cmp r0, #1
	bgt .L0805CCA8
	cmp r0, #0
	beq .L0805CCB2
	b .L0805CE34
	.align 2, 0
.L0805CC9C: .4byte 0x0000FFE0
.L0805CCA0: .4byte 0x0000142C
.L0805CCA4: .4byte 0x000013FC
.L0805CCA8:
	cmp r0, #2
	beq .L0805CCD0
	cmp r0, #3
	beq .L0805CCFC
	b .L0805CE34
.L0805CCB2:
	movs r0, #0x82
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, .L0805CCBC @ =0x0000076A
	b .L0805CD04
	.align 2, 0
.L0805CCBC: .4byte 0x0000076A
.L0805CCC0:
	movs r1, #0x90
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r1, .L0805CCCC @ =0x00000746
	b .L0805CD04
	.align 2, 0
.L0805CCCC: .4byte 0x00000746
.L0805CCD0:
	ldr r2, .L0805CCE4 @ =0x0000140E
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0805CCEC
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r1, .L0805CCE8 @ =0x00000752
	b .L0805CD04
	.align 2, 0
.L0805CCE4: .4byte 0x0000140E
.L0805CCE8: .4byte 0x00000752
.L0805CCEC:
	movs r7, #0xba
	lsls r7, r7, #2
	adds r4, r6, r7
	ldr r1, .L0805CCF8 @ =0x00000776
	b .L0805CD04
	.align 2, 0
.L0805CCF8: .4byte 0x00000776
.L0805CCFC:
	movs r0, #0xac
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, .L0805CD14 @ =0x0000075E
.L0805CD04:
	adds r0, r4, #0
	bl func_0805E860
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x10]
	b .L0805CE34
	.align 2, 0
.L0805CD14: .4byte 0x0000075E
.L0805CD18:
	ldr r2, .L0805CD58 @ =0x0000140E
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #1
	bne .L0805CD88
	cmp r3, #2
	bne .L0805CD88
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L0805CD36
	b .L0805CE34
.L0805CD36:
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xa8
	bl func_08008B6C
	movs r3, #0x1a
	ldrsh r0, [r5, r3]
	cmp r0, #0x28
	ble .L0805CE34
	ldrh r0, [r5, #0x22]
	cmp r0, #4
	bhi .L0805CE34
	lsls r0, r0, #2
	ldr r1, .L0805CD5C @ =.L0805CD60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805CD58: .4byte 0x0000140E
.L0805CD5C: .4byte .L0805CD60
.L0805CD60: @ jump table
	.4byte .L0805CD74 @ case 0
	.4byte .L0805CE34 @ case 1
	.4byte .L0805CE34 @ case 2
	.4byte .L0805CD7A @ case 3
	.4byte .L0805CD74 @ case 4
.L0805CD74:
	movs r0, #1
	strh r0, [r5, #0x22]
	b .L0805CD80
.L0805CD7A:
	ldrh r0, [r5, #0x18]
	adds r0, #0x3c
	strh r0, [r5, #0x18]
.L0805CD80:
	ldrh r0, [r5, #0x1a]
	subs r0, #0x28
	strh r0, [r5, #0x1a]
	b .L0805CE34
.L0805CD88:
	ldrh r0, [r5, #0x22]
	cmp r0, #0
	bne .L0805CE34
	ldrh r2, [r5, #0x18]
	movs r3, #0x18
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble .L0805CD9E
	subs r0, r2, #1
	strh r0, [r5, #0x18]
	b .L0805CE34
.L0805CD9E:
	movs r2, #0
	mov r0, r8
	cmp r0, #0
	ble .L0805CDCC
	mov r3, sp
	adds r0, r3, r1
	ldr r1, [r0]
	lsls r1, r1, #2
	add r1, sl
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r1]
	ldr r0, [r0]
	subs r1, r1, r0
	ldr r0, .L0805CE14 @ =0x001FFFFF
	cmp r1, r0
	ble .L0805CDCC
	movs r2, #1
.L0805CDCC:
	ldr r0, .L0805CE18 @ =0x02FFFFFF
	cmp r7, r0
	bgt .L0805CDD4
	adds r2, #2
.L0805CDD4:
	adds r0, r5, #0
	adds r0, #0x24
	adds r0, r0, r2
	ldrb r4, [r0]
	bl rand
	movs r1, #0x64
	bl __modsi3
	cmp r4, r0
	ble .L0805CE20
	ldrh r1, [r5, #0x1a]
	movs r7, #0x1a
	ldrsh r0, [r5, r7]
	cmp r0, #0x27
	ble .L0805CE34
	adds r0, r1, #0
	subs r0, #0x28
	strh r0, [r5, #0x1a]
	movs r0, #1
	strh r0, [r5, #0x22]
	ldr r1, .L0805CE1C @ =0x0000140E
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0805CE34
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xa8
	bl func_08008B6C
	b .L0805CE34
	.align 2, 0
.L0805CE14: .4byte 0x001FFFFF
.L0805CE18: .4byte 0x02FFFFFF
.L0805CE1C: .4byte 0x0000140E
.L0805CE20:
	movs r0, #0xc
	strh r0, [r5, #0x18]
	b .L0805CE34
.L0805CE26:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bge .L0805CE34
	movs r0, #0
	str r0, [r5, #0x10]
	movs r2, #1
	add sb, r2
.L0805CE34:
	movs r3, #1
	add r8, r3
	mov r7, r8
	cmp r7, #3
	bgt .L0805CE40
	b .L0805CC44
.L0805CE40:
	ldr r1, .L0805CEA8 @ =0x0000140E
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	bne .L0805CE50
	mov r2, sl
	ldr r2, [r2, #8]
	str r2, [sp, #0x20]
.L0805CE50:
	ldr r3, .L0805CEAC @ =0x000013EC
	adds r2, r6, r3
	ldrh r0, [r2]
	cmp r0, #0x30
	bls .L0805CE94
	ldr r7, [sp, #0x20]
	asrs r7, r7, #0x10
	str r7, [sp, #0x20]
	ldrh r0, [r2]
	adds r0, #0x78
	cmp r7, r0
	bge .L0805CE94
	adds r0, r7, #0
	subs r0, #0x78
	strh r0, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x2f
	bhi .L0805CE7A
	movs r0, #0x30
	strh r0, [r2]
.L0805CE7A:
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #3
	subs r0, r1, r0
	lsls r0, r0, #1
	subs r1, r1, r0
	ldr r3, .L0805CEB0 @ =0x000013EA
	adds r0, r6, r3
	strh r1, [r0]
	ldrh r1, [r2]
	ldr r7, .L0805CEB4 @ =0x000013EE
	adds r0, r6, r7
	strh r1, [r0]
.L0805CE94:
	mov r0, sb
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0805CEA8: .4byte 0x0000140E
.L0805CEAC: .4byte 0x000013EC
.L0805CEB0: .4byte 0x000013EA
.L0805CEB4: .4byte 0x000013EE

	thumb_func_start func_0805CEB8
func_0805CEB8: @ 0x0805CEB8
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	ldr r0, .L0805CEF4 @ =vtable_unk_080E798C
	str r0, [r5]
	ldr r0, .L0805CEF8 @ =0x000014FC
	bl __builtin_new
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_0805806C
	str r0, [r5, #4]
	mov r0, r8
	ldr r1, [r0]
	movs r0, #0
	mov r2, r8
	str r0, [r2]
	str r1, [r5, #8]
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L0805CEF4: .4byte vtable_unk_080E798C
.L0805CEF8: .4byte 0x000014FC

	thumb_func_start func_0805CEFC
func_0805CEFC: @ 0x0805CEFC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L0805CF38 @ =vtable_unk_080E798C
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L0805CF18
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805CF18:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L0805CF2A
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805CF2A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0805CF38: .4byte vtable_unk_080E798C

	thumb_func_start func_0805CF3C
func_0805CF3C: @ 0x0805CF3C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, sp
	bl func_080588AC
	ldr r1, [sp]
	cmp r1, #0
	beq .L0805CF5E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805CF5E:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0805CF70
func_0805CF70: @ 0x0805CF70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r4, r1, #0
	add r1, sp, #0x14
	movs r0, #0x1e
	movs r2, #1
	movs r3, #0
	mov r8, r3
	movs r5, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r7, #0
	bl func_080084DC
	ldr r0, .L0805D154 @ =vtable_unk_080E799C
	str r0, [r7, #4]
	str r4, [r7, #8]
	str r5, [r7, #0xc]
	movs r0, #4
	bl __builtin_new
	adds r6, r0, #0
	add r0, sp, #0xc
	bl func_0800835C
	add r4, sp, #0x10
	adds r0, r4, #0
	bl func_0800770C
	ldr r0, [r7, #0xc]
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0
	bl func_08050CC0
	str r0, [r7, #0x10]
	adds r0, r4, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	adds r0, r7, #0
	adds r0, #0x14
	movs r1, #1
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x18
	movs r1, #0
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x1c
	movs r1, #2
	bl func_08008B54
	adds r4, r7, #0
	adds r4, #0x20
	ldr r1, .L0805D158 @ =gUnk_08527094
	adds r0, r4, #0
	bl func_0805E6CC
	adds r6, r7, #0
	adds r6, #0x50
	ldr r1, .L0805D15C @ =gUnk_08728208
	adds r0, r6, #0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x80
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x94
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r1, [r0, #0x18]
	adds r0, #0x1c
	strb r1, [r0]
	adds r0, #4
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0xc8
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r3, r8
	strb r3, [r0, #0x10]
	strb r3, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r3, [r0, #0x18]
	adds r0, #0x1c
	strb r3, [r0]
	adds r0, #4
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0xfc
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r1, [r0, #0x18]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r0, r7, r3
	strb r1, [r0]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #7
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r3, #0x96
	lsls r3, r3, #1
	adds r4, r7, r3
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r4, r7, r3
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r0, .L0805D160 @ =0x00000AEC
	adds r1, r7, r0
	ldr r0, .L0805D164 @ =vtable_unk_080E79A8
	str r0, [r1]
	str r5, [r1, #4]
	movs r1, #0xad
	lsls r1, r1, #4
	adds r2, r7, r1
	ldr r0, [r7, #8]
	ldr r3, .L0805D168 @ =0x00002C48
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xf
	str r0, [r2]
	ldr r1, .L0805D16C @ =0x0001869F
	cmp r0, r1
	ble .L0805D13C
	str r1, [r2]
.L0805D13C:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r7, r1
	strh r5, [r0]
	adds r0, r7, #0
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0805D154: .4byte vtable_unk_080E799C
.L0805D158: .4byte gUnk_08527094
.L0805D15C: .4byte gUnk_08728208
.L0805D160: .4byte 0x00000AEC
.L0805D164: .4byte vtable_unk_080E79A8
.L0805D168: .4byte 0x00002C48
.L0805D16C: .4byte 0x0001869F

	thumb_func_start func_0805D170
func_0805D170: @ 0x0805D170
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r6, r1, #0
	adds r0, r6, #0
	bl func_08008724
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
	ldr r0, .L0805D278 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	ldr r0, [r6, #0x10]
	movs r1, #0x75
	bl func_08050E50
	add r7, sp, #8
	add r0, sp, #0x14
	mov sl, r0
	movs r1, #9
	ldr r2, .L0805D27C @ =0x00000AE9
	adds r0, r6, r2
.L0805D1CE:
	strb r1, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge .L0805D1CE
	ldr r0, [r6, #8]
	ldr r2, .L0805D280 @ =0x00002C4A
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge .L0805D1F0
	movs r3, #0xae
	lsls r3, r3, #4
	adds r1, r6, r3
	movs r0, #0xa
	strb r0, [r1]
.L0805D1F0:
	ldr r0, [r6, #8]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge .L0805D204
	ldr r4, .L0805D284 @ =0x00000AE1
	adds r1, r6, r4
	movs r0, #0xb
	strb r0, [r1]
.L0805D204:
	adds r0, r6, #0
	bl func_0805D9C0
	adds r0, r6, #0
	bl func_0805DC24
	ldr r1, .L0805D288 @ =0x00000AD4
	adds r0, r6, r1
	movs r1, #0
	strh r1, [r0]
	ldr r2, .L0805D28C @ =0x00000AD6
	adds r0, r6, r2
	strh r1, [r0]
	ldr r3, .L0805D290 @ =0x00000AD8
	adds r0, r6, r3
	strh r1, [r0]
	ldr r4, .L0805D294 @ =0x00000ADC
	adds r2, r6, r4
	movs r0, #2
	strh r0, [r2]
	ldr r2, .L0805D298 @ =0x00000ADA
	adds r0, r6, r2
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, .L0805D29C @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r3, #0
	mov r8, r3
.L0805D254:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r4, .L0805D298 @ =0x00000ADA
	adds r0, r6, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xc
	bls .L0805D26E
	b .L0805D6EC
.L0805D26E:
	lsls r0, r0, #2
	ldr r1, .L0805D2A0 @ =.L0805D2A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805D278: .4byte vtable_unk_080E5B80
.L0805D27C: .4byte 0x00000AE9
.L0805D280: .4byte 0x00002C4A
.L0805D284: .4byte 0x00000AE1
.L0805D288: .4byte 0x00000AD4
.L0805D28C: .4byte 0x00000AD6
.L0805D290: .4byte 0x00000AD8
.L0805D294: .4byte 0x00000ADC
.L0805D298: .4byte 0x00000ADA
.L0805D29C: .4byte 0x00000889
.L0805D2A0: .4byte .L0805D2A4
.L0805D2A4: @ jump table
	.4byte .L0805D2D8 @ case 0
	.4byte .L0805D2F0 @ case 1
	.4byte .L0805D488 @ case 2
	.4byte .L0805D488 @ case 3
	.4byte .L0805D488 @ case 4
	.4byte .L0805D4BC @ case 5
	.4byte .L0805D4D4 @ case 6
	.4byte .L0805D4F4 @ case 7
	.4byte .L0805D510 @ case 8
	.4byte .L0805D510 @ case 9
	.4byte .L0805D510 @ case 10
	.4byte .L0805D6A8 @ case 11
	.4byte .L0805D6DC @ case 12
.L0805D2D8:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0805D2E6
	b .L0805D6EC
.L0805D2E6:
	ldr r2, .L0805D2EC @ =0x00000ADA
	adds r1, r6, r2
	b .L0805D6CA
	.align 2, 0
.L0805D2EC: .4byte 0x00000ADA
.L0805D2F0:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0805D35C
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
	ldr r3, .L0805D320 @ =0x00000AD4
	adds r1, r6, r3
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble .L0805D324
	subs r0, r2, #1
	strh r0, [r1]
	adds r1, r0, #0
	b .L0805D326
	.align 2, 0
.L0805D320: .4byte 0x00000AD4
.L0805D324:
	movs r1, #0
.L0805D326:
	ldr r2, .L0805D350 @ =0x00000AD4
	adds r0, r6, r2
	strh r1, [r0]
	ldr r3, .L0805D354 @ =0x00000AD6
	adds r2, r6, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	blt .L0805D340
	b .L0805D6EC
.L0805D340:
	subs r0, r3, #1
	strh r0, [r2]
	ldr r0, .L0805D358 @ =0x00000ADA
	adds r1, r6, r0
	movs r0, #5
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D350: .4byte 0x00000AD4
.L0805D354: .4byte 0x00000AD6
.L0805D358: .4byte 0x00000ADA
.L0805D35C:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq .L0805D3CC
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
	ldr r2, .L0805D390 @ =0x00000AD4
	adds r1, r6, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #8
	bgt .L0805D394
	adds r0, r2, #1
	strh r0, [r1]
	adds r1, r0, #0
	b .L0805D396
	.align 2, 0
.L0805D390: .4byte 0x00000AD4
.L0805D394:
	movs r1, #9
.L0805D396:
	ldr r4, .L0805D3C0 @ =0x00000AD4
	adds r0, r6, r4
	strh r1, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, .L0805D3C4 @ =0x00000AD6
	adds r2, r6, r3
	movs r4, #0
	ldrsh r0, [r2, r4]
	subs r1, r1, r0
	cmp r1, #7
	bgt .L0805D3B0
	b .L0805D6EC
.L0805D3B0:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r0, .L0805D3C8 @ =0x00000ADA
	adds r1, r6, r0
	movs r0, #6
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D3C0: .4byte 0x00000AD4
.L0805D3C4: .4byte 0x00000AD6
.L0805D3C8: .4byte 0x00000ADA
.L0805D3CC:
	adds r0, r6, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq .L0805D454
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xc5
	bl func_08008B6C
	ldr r1, .L0805D434 @ =0x00000ADC
	adds r0, r6, r1
	strh r5, [r0]
	ldr r2, .L0805D438 @ =0x00000AD4
	adds r0, r6, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r4, #0xae
	lsls r4, r4, #4
	adds r0, r6, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, #4
	adds r1, r6, r2
	strh r0, [r1]
	ldr r2, .L0805D43C @ =gUnk_080FB000
	movs r4, #0
	ldrsh r3, [r1, r4]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	movs r4, #0xad
	lsls r4, r4, #4
	adds r0, r6, r4
	ldr r0, [r0]
	cmp r1, r0
	bgt .L0805D444
	movs r1, #0xaf
	lsls r1, r1, #4
	adds r0, r6, r1
	str r3, [r0]
	ldr r2, .L0805D440 @ =0x00000ADA
	adds r1, r6, r2
	movs r0, #8
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D434: .4byte 0x00000ADC
.L0805D438: .4byte 0x00000AD4
.L0805D43C: .4byte gUnk_080FB000
.L0805D440: .4byte 0x00000ADA
.L0805D444:
	ldr r3, .L0805D450 @ =0x00000ADA
	adds r1, r6, r3
	movs r0, #7
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D450: .4byte 0x00000ADA
.L0805D454:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L0805D464
	b .L0805D6EC
.L0805D464:
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xc6
	bl func_08008B6C
	ldr r1, .L0805D480 @ =0x00000ADC
	adds r0, r6, r1
	strh r4, [r0]
	ldr r2, .L0805D484 @ =0x00000ADA
	adds r1, r6, r2
	movs r0, #2
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D480: .4byte 0x00000ADC
.L0805D484: .4byte 0x00000ADA
.L0805D488:
	ldr r3, .L0805D4A8 @ =0x00000ADC
	adds r0, r6, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #2
	beq .L0805D496
	b .L0805D6EC
.L0805D496:
	ldr r1, .L0805D4AC @ =0x00000ADE
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne .L0805D4B0
	subs r3, #2
	adds r1, r6, r3
	b .L0805D660
	.align 2, 0
.L0805D4A8: .4byte 0x00000ADC
.L0805D4AC: .4byte 0x00000ADE
.L0805D4B0:
	ldr r4, .L0805D4B8 @ =0x00000ADA
	adds r1, r6, r4
	b .L0805D69C
	.align 2, 0
.L0805D4B8: .4byte 0x00000ADA
.L0805D4BC:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	subs r1, #4
	strh r1, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq .L0805D4D2
	b .L0805D6EC
.L0805D4D2:
	b .L0805D698
.L0805D4D4:
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r1, [r0]
	adds r1, #4
	strh r1, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq .L0805D4EA
	b .L0805D6EC
.L0805D4EA:
	ldr r4, .L0805D4F0 @ =0x00000ADA
	adds r1, r6, r4
	b .L0805D69C
	.align 2, 0
.L0805D4F0: .4byte 0x00000ADA
.L0805D4F4:
	ldr r1, .L0805D508 @ =0x00000ADC
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #2
	beq .L0805D502
	b .L0805D6EC
.L0805D502:
	ldr r3, .L0805D50C @ =0x00000ADA
	adds r1, r6, r3
	b .L0805D69C
	.align 2, 0
.L0805D508: .4byte 0x00000ADC
.L0805D50C: .4byte 0x00000ADA
.L0805D510:
	ldr r4, .L0805D544 @ =0x00000ADC
	adds r0, r6, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #2
	beq .L0805D51E
	b .L0805D6EC
.L0805D51E:
	ldr r2, .L0805D548 @ =0x00000ADE
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq .L0805D52C
	b .L0805D698
.L0805D52C:
	subs r4, #4
	adds r0, r6, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	beq .L0805D552
	cmp r0, #1
	bgt .L0805D54C
	cmp r0, #0
	beq .L0805D5C8
	b .L0805D600
	.align 2, 0
.L0805D544: .4byte 0x00000ADC
.L0805D548: .4byte 0x00000ADE
.L0805D54C:
	cmp r0, #8
	beq .L0805D588
	b .L0805D600
.L0805D552:
	ldr r0, [r6, #8]
	ldr r2, .L0805D578 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800EAFC
	ldr r2, [r6, #8]
	ldr r3, .L0805D57C @ =0x00002C4A
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #8]
	ldr r4, .L0805D580 @ =0x00001C2C
	adds r0, r0, r4
	ldr r1, .L0805D584 @ =0x0000015F
	bl func_0800F510
	b .L0805D624
	.align 2, 0
.L0805D578: .4byte 0x00001BD8
.L0805D57C: .4byte 0x00002C4A
.L0805D580: .4byte 0x00001C2C
.L0805D584: .4byte 0x0000015F
.L0805D588:
	ldr r0, .L0805D5C0 @ =gUnk_080FB0F0
	ldrh r1, [r0, #0x10]
	adds r0, r7, #0
	bl __4FoodUi
	ldr r5, [r6, #8]
	ldr r0, .L0805D5C4 @ =0x00001C2C
	adds r5, r5, r0
	add r4, sp, #0xc
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0xd
	ldrb r2, [r0]
	lsls r2, r2, #8
	orrs r2, r1
	adds r0, #1
	ldrb r1, [r0]
	lsls r1, r1, #0x10
	orrs r1, r2
	adds r0, r5, #0
	bl func_0800F3B0
	b .L0805D624
	.align 2, 0
.L0805D5C0: .4byte gUnk_080FB0F0
.L0805D5C4: .4byte 0x00001C2C
.L0805D5C8:
	ldr r2, [r6, #8]
	ldr r1, .L0805D668 @ =0x00002C4A
	adds r2, r2, r1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r2, [r6, #8]
	ldr r3, .L0805D66C @ =0x0000218C
	adds r2, r2, r3
	ldr r3, [r2]
	lsls r1, r3, #0xf
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #0xd
	ldr r0, .L0805D670 @ =0xFFFE1FFF
	ands r0, r3
	orrs r0, r1
	str r0, [r2]
	ldr r2, [r6, #8]
	ldr r4, .L0805D674 @ =0x000021C7
	adds r2, r2, r4
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
.L0805D600:
	add r4, sp, #0x10
	ldr r1, .L0805D678 @ =gUnk_080FB0F0
	ldr r2, .L0805D67C @ =0x00000AD8
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	bl __7ArticleUi
	ldr r0, [r6, #8]
	ldr r1, .L0805D680 @ =0x00001C2C
	adds r0, r0, r1
	ldrb r1, [r4]
	bl func_0800F3E8
.L0805D624:
	movs r2, #0xad
	lsls r2, r2, #4
	adds r3, r6, r2
	ldr r2, .L0805D684 @ =gUnk_080FB000
	ldr r4, .L0805D67C @ =0x00000AD8
	adds r0, r6, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r2, [r3]
	subs r2, r2, r0
	str r2, [r3]
	ldr r3, [r6, #8]
	ldr r4, .L0805D688 @ =0x00002C48
	adds r3, r3, r4
	ldr r0, .L0805D68C @ =0x0001FFFF
	ands r2, r0
	lsls r2, r2, #2
	ldr r0, [r3]
	ldr r1, .L0805D690 @ =0xFFF80003
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	ldr r0, .L0805D694 @ =0x00000ADA
	adds r1, r6, r0
.L0805D660:
	movs r0, #0xb
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D668: .4byte 0x00002C4A
.L0805D66C: .4byte 0x0000218C
.L0805D670: .4byte 0xFFFE1FFF
.L0805D674: .4byte 0x000021C7
.L0805D678: .4byte gUnk_080FB0F0
.L0805D67C: .4byte 0x00000AD8
.L0805D680: .4byte 0x00001C2C
.L0805D684: .4byte gUnk_080FB000
.L0805D688: .4byte 0x00002C48
.L0805D68C: .4byte 0x0001FFFF
.L0805D690: .4byte 0xFFF80003
.L0805D694: .4byte 0x00000ADA
.L0805D698:
	ldr r2, .L0805D6A4 @ =0x00000ADA
	adds r1, r6, r2
.L0805D69C:
	movs r0, #1
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D6A4: .4byte 0x00000ADA
.L0805D6A8:
	ldr r0, [sp, #4]
	ldr r1, .L0805D6D4 @ =0x00000889
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
	ldr r3, .L0805D6D8 @ =0x00000ADA
	adds r1, r6, r3
.L0805D6CA:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D6D4: .4byte 0x00000889
.L0805D6D8: .4byte 0x00000ADA
.L0805D6DC:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0805D6EC
	movs r4, #1
	mov r8, r4
.L0805D6EC:
	adds r0, r6, #0
	bl func_0805D760
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r1, r6, r3
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x16]
	adds r0, r6, #0
	bl func_0805DE24
	adds r0, r6, #0
	bl func_0805DFC4
	mov r4, r8
	cmp r4, #1
	beq .L0805D71A
	b .L0805D254
.L0805D71A:
	movs r0, #0
	str r0, [sp, #8]
	str r7, [sp, #0x14]
	mov r1, sl
	str r0, [r1, #4]
	str r0, [r7]
	mov r2, sb
	str r0, [r2]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L0805D73C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805D73C:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L0805D74E
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805D74E:
	mov r0, sb
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0805D760
func_0805D760: @ 0x0805D760
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
	mov sb, r0
	adds r0, r7, #0
	bl func_080088DC
	mov r8, r0
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	adds r1, r7, #0
	adds r1, #0x14
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L0805D7B2
	b .L0805D9A8
.L0805D7B2:
	lsls r0, r0, #2
	ldr r1, .L0805D7BC @ =.L0805D7C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805D7BC: .4byte .L0805D7C0
.L0805D7C0: @ jump table
	.4byte .L0805D7DC @ case 0
	.4byte .L0805D9A8 @ case 1
	.4byte .L0805D9A8 @ case 2
	.4byte .L0805D7FE @ case 3
	.4byte .L0805D9A8 @ case 4
	.4byte .L0805D9A8 @ case 5
	.4byte .L0805D9A8 @ case 6
.L0805D7DC:
	ldr r1, .L0805D7F4 @ =0x00000ADC
	adds r4, r7, r1
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne .L0805D7F8
	ldr r0, [r7, #0x10]
	bl func_08050D5C
	movs r0, #3
	strh r0, [r4]
	b .L0805D9A8
	.align 2, 0
.L0805D7F4: .4byte 0x00000ADC
.L0805D7F8:
	movs r0, #2
	strh r0, [r4]
	b .L0805D9A8
.L0805D7FE:
	ldr r4, .L0805D818 @ =0x00000ADC
	adds r5, r7, r4
	movs r6, #0
	ldrsh r4, [r5, r6]
	cmp r4, #5
	bne .L0805D81C
	ldr r0, [r7, #0x10]
	bl func_08050D74
	movs r0, #1
	strh r0, [r5]
	b .L0805D9A8
	.align 2, 0
.L0805D818: .4byte 0x00000ADC
.L0805D81C:
	cmp r4, #4
	bne .L0805D8A4
	ldr r0, [r7, #0x10]
	bl func_08050DF0
	movs r1, #0
	mov r8, r1
	movs r3, #3
	strh r3, [r5]
	ldr r6, .L0805D840 @ =0x00000ADA
	adds r2, r7, r6
	movs r6, #0
	ldrsh r1, [r2, r6]
	cmp r1, #2
	beq .L0805D844
	cmp r1, #8
	beq .L0805D870
	b .L0805D9A8
	.align 2, 0
.L0805D840: .4byte 0x00000ADA
.L0805D844:
	cmp r0, #1
	bne .L0805D858
	ldr r1, .L0805D854 @ =0x00000ADE
	adds r0, r7, r1
	mov r4, r8
	strh r4, [r0]
	strh r3, [r2]
	b .L0805D9A8
	.align 2, 0
.L0805D854: .4byte 0x00000ADE
.L0805D858:
	cmp r0, #2
	beq .L0805D85E
	b .L0805D9A8
.L0805D85E:
	ldr r6, .L0805D86C @ =0x00000ADE
	adds r1, r7, r6
	movs r0, #1
	strh r0, [r1]
	strh r4, [r2]
	b .L0805D9A8
	.align 2, 0
.L0805D86C: .4byte 0x00000ADE
.L0805D870:
	cmp r0, #1
	bne .L0805D88C
	ldr r1, .L0805D888 @ =0x00000ADE
	adds r0, r7, r1
	mov r3, r8
	strh r3, [r0]
	movs r0, #5
	strh r0, [r5]
	movs r0, #9
	strh r0, [r2]
	b .L0805D9A8
	.align 2, 0
.L0805D888: .4byte 0x00000ADE
.L0805D88C:
	cmp r0, #2
	beq .L0805D892
	b .L0805D9A8
.L0805D892:
	ldr r4, .L0805D8A0 @ =0x00000ADE
	adds r0, r7, r4
	movs r1, #1
	strh r1, [r0]
	movs r0, #0xa
	strh r0, [r2]
	b .L0805D9A8
	.align 2, 0
.L0805D8A0: .4byte 0x00000ADE
.L0805D8A4:
	cmp r4, #3
	beq .L0805D8AA
	b .L0805D9A8
.L0805D8AA:
	movs r0, #5
	strh r0, [r5]
	ldr r6, .L0805D8C8 @ =0x00000ADA
	adds r0, r7, r6
	ldrh r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bhi .L0805D9A8
	lsls r0, r0, #2
	ldr r1, .L0805D8CC @ =.L0805D8D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805D8C8: .4byte 0x00000ADA
.L0805D8CC: .4byte .L0805D8D0
.L0805D8D0: @ jump table
	.4byte .L0805D8F4 @ case 0
	.4byte .L0805D928 @ case 1
	.4byte .L0805D934 @ case 2
	.4byte .L0805D9A8 @ case 3
	.4byte .L0805D9A8 @ case 4
	.4byte .L0805D99C @ case 5
	.4byte .L0805D94C @ case 6
	.4byte .L0805D9A8 @ case 7
	.4byte .L0805D984 @ case 8
.L0805D8F4:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D914 @ =gUnk_080FB108
	ldr r2, .L0805D918 @ =gUnk_080FB120
	ldr r3, .L0805D91C @ =gUnk_080FB124
	ldr r4, .L0805D920 @ =0x00000AEC
	adds r5, r7, r4
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	bl func_08050E30
	ldr r6, .L0805D924 @ =0x00000ADC
	adds r1, r7, r6
	b .L0805D968
	.align 2, 0
.L0805D914: .4byte gUnk_080FB108
.L0805D918: .4byte gUnk_080FB120
.L0805D91C: .4byte gUnk_080FB124
.L0805D920: .4byte 0x00000AEC
.L0805D924: .4byte 0x00000ADC
.L0805D928:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D930 @ =gUnk_080FB128
	b .L0805D988
	.align 2, 0
.L0805D930: .4byte gUnk_080FB128
.L0805D934:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D944 @ =gUnk_080FB140
	ldr r4, .L0805D948 @ =0x00000AEC
	adds r2, r7, r4
	bl func_08050DA0
	b .L0805D9A8
	.align 2, 0
.L0805D944: .4byte gUnk_080FB140
.L0805D948: .4byte 0x00000AEC
.L0805D94C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D970 @ =gUnk_080FB158
	ldr r2, .L0805D974 @ =gUnk_080FB120
	ldr r3, .L0805D978 @ =gUnk_080FB124
	ldr r6, .L0805D97C @ =0x00000AEC
	adds r5, r7, r6
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	bl func_08050E30
	ldr r0, .L0805D980 @ =0x00000ADC
	adds r1, r7, r0
.L0805D968:
	movs r0, #4
	strh r0, [r1]
	b .L0805D9A8
	.align 2, 0
.L0805D970: .4byte gUnk_080FB158
.L0805D974: .4byte gUnk_080FB120
.L0805D978: .4byte gUnk_080FB124
.L0805D97C: .4byte 0x00000AEC
.L0805D980: .4byte 0x00000ADC
.L0805D984:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D994 @ =gUnk_080FB164
.L0805D988:
	ldr r3, .L0805D998 @ =0x00000AEC
	adds r2, r7, r3
	bl func_08050DA0
	b .L0805D9A8
	.align 2, 0
.L0805D994: .4byte gUnk_080FB164
.L0805D998: .4byte 0x00000AEC
.L0805D99C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D9B8 @ =gUnk_080FB17C
	ldr r4, .L0805D9BC @ =0x00000AEC
	adds r2, r7, r4
	bl func_08050DA0
.L0805D9A8:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805D9B8: .4byte gUnk_080FB17C
.L0805D9BC: .4byte 0x00000AEC

	thumb_func_start func_0805D9C0
func_0805D9C0: @ 0x0805D9C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r6, r0, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r4, #0
	strh r4, [r1]
	strh r4, [r0, #0x14]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r1, r6, r3
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x16]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1c]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	ldr r1, .L0805DBDC @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, .L0805DBE0 @ =0x0600E000
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
	adds r0, r4, #0
	mov r1, sb
	mov r2, r8
	bl func_08008EB8
	ldr r2, .L0805DBE4 @ =0x0600E800
	mov sl, r2
	adds r0, r4, #0
	mov r1, sl
	mov r2, r8
	bl func_08008EB8
	ldr r1, .L0805DBE8 @ =0x0600F000
	adds r0, r4, #0
	mov r2, r8
	bl func_08008EB8
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r5, #0
	strh r2, [r0]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L0805DBEC @ =0x00005C43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L0805DBF0 @ =0x00001D41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L0805DBF4 @ =0x00005E42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	ldr r0, .L0805DBF8 @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L0805DBFC @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L0805DC00 @ =0x00030003
	mov r1, sb
	mov r2, r8
	bl func_08008EB8
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r5, [r1]
	strh r5, [r0, #0x1c]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r5, [r1]
	strh r5, [r0, #0x1e]
	movs r0, #3
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, sl
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl func_08051320
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r5, [r1]
	strh r5, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r5, [r1]
	strh r5, [r0, #0x1a]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r5, [r1]
	strh r5, [r0, #0x14]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r5, [r1]
	strh r5, [r0, #0x16]
	ldr r0, .L0805DC04 @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r0, .L0805DC08 @ =0x05000040
	movs r1, #0xf8
	lsls r1, r1, #2
	mov r8, r1
	strh r1, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	ldr r2, .L0805DC0C @ =0x00004218
	mov sb, r2
	strh r2, [r0]
	movs r3, #0x92
	lsls r3, r3, #1
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L0805DC10 @ =0x05000200
	adds r0, r0, r1
	mov r2, r8
	strh r2, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L0805DC14 @ =0x05000202
	adds r0, r0, r3
	strh r5, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L0805DC18 @ =0x05000204
	adds r0, r0, r1
	mov r2, sb
	strh r2, [r0]
	add r3, sp, #0x54
	mov sb, r3
	add r0, sp, #0x14
	mov r8, r0
	movs r7, #1
	movs r1, #2
	mov sl, r1
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r6, r6, r2
.L0805DB84:
	ldr r0, .L0805DC1C @ =gUnk_080FB1A6
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	add r0, sp, #0x54
	strh r7, [r0]
	mov r0, sl
	mov r3, sb
	strh r0, [r3, #2]
	ldr r0, [sp, #0x54]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r7, [sp, #8]
	add r1, sp, #0x14
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	adds r1, r0, #0
	adds r1, r1, r4
	lsls r1, r1, #5
	ldr r2, .L0805DC20 @ =0x06010000
	adds r1, r1, r2
	mov r0, r8
	movs r2, #0x40
	bl func_08008E64
	adds r5, #1
	cmp r5, #0x17
	ble .L0805DB84
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805DBDC: .4byte 0x06007FE0
.L0805DBE0: .4byte 0x0600E000
.L0805DBE4: .4byte 0x0600E800
.L0805DBE8: .4byte 0x0600F000
.L0805DBEC: .4byte 0x00005C43
.L0805DBF0: .4byte 0x00001D41
.L0805DBF4: .4byte 0x00005E42
.L0805DBF8: .4byte gUnk_080F9F70
.L0805DBFC: .4byte gUnk_080F9F74
.L0805DC00: .4byte 0x00030003
.L0805DC04: .4byte gUnk_080F9F78
.L0805DC08: .4byte 0x05000040
.L0805DC0C: .4byte 0x00004218
.L0805DC10: .4byte 0x05000200
.L0805DC14: .4byte 0x05000202
.L0805DC18: .4byte 0x05000204
.L0805DC1C: .4byte gUnk_080FB1A6
.L0805DC20: .4byte 0x06010000

	thumb_func_start func_0805DC24
func_0805DC24: @ 0x0805DC24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L0805DE0C @ =0xFFFFFC20
	add sp, r4
	mov r8, r0
	add r1, sp, #0xc
	movs r0, #0
	str r0, [sp, #0xc]
	strh r0, [r1, #4]
	add r1, sp, #0x14
	mov sb, r1
	str r0, [sp, #0x14]
	strh r0, [r1, #4]
	add r6, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r6, #4]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r1, #4]
	mov r0, r8
	adds r0, #0x80
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	adds r0, #4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x2c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x2c
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0xc
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r5, r7}
	stm r1!, {r5, r7}
	ldr r5, [sp, #0x1c]
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r7, .L0805DE10 @ =0x05000200
	adds r1, r0, r7
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L0805DCA6
	ldrh r2, [r6, #4]
.L0805DCA6:
	adds r0, r5, #0
	bl func_08008E64
	mov r1, r8
	adds r1, #0x50
	adds r0, r4, #0
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0xc
	adds r0, r4, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	ldr r4, [sp, #0x1c]
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r7
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L0805DCE4
	ldrh r2, [r6, #4]
.L0805DCE4:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #0x14]
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r7, .L0805DE14 @ =0x06010000
	adds r1, r0, r7
	ldr r0, [sp, #0x14]
	movs r2, #0
	cmp r0, #0
	beq .L0805DD0A
	mov r0, sb
	ldrh r2, [r0, #4]
.L0805DD0A:
	adds r0, r4, #0
	bl func_08008E64
	movs r4, #0
	add r6, sp, #0x3d0
	movs r1, #0xf5
	lsls r1, r1, #2
	add r1, sp
	str r1, [sp, #0x3d8]
	mov r2, sp
	adds r2, #0x50
	str r2, [sp, #0x3dc]
	movs r3, #0xe
	mov sl, r3
	movs r5, #2
	mov sb, r5
	ldr r5, .L0805DE18 @ =0x06002800
	adds r7, r6, #0
.L0805DD2E:
	mov r0, sl
	strh r0, [r7]
	mov r1, sb
	strh r1, [r6, #2]
	ldr r0, [r7]
	add r1, sp, #0x50
	movs r2, #0
	bl func_0804E7A0
	movs r0, #0xae
	lsls r0, r0, #4
	add r0, r8
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, .L0805DE1C @ =gUnk_080FB000
	adds r1, r1, r0
	add r0, sp, #0x3d4
	mov r2, sl
	strh r2, [r0]
	mov r2, sb
	ldr r3, [sp, #0x3d8]
	strh r2, [r3, #2]
	ldr r0, [r0]
	str r1, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	add r1, sp, #0x50
	movs r2, #0
	bl func_0804E958
	ldr r0, [sp, #0x3dc]
	adds r1, r5, #0
	movs r2, #0xe0
	lsls r2, r2, #2
	bl func_08008E64
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r5, r5, r2
	adds r4, #1
	cmp r4, #9
	ble .L0805DD2E
	movs r0, #1
	rsbs r0, r0, #0
	movs r1, #0xb4
	lsls r1, r1, #2
	add r1, r8
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008EB8
	movs r5, #0x85
	lsls r5, r5, #6
	movs r1, #0
	movs r3, #0xb5
	lsls r3, r3, #2
	add r3, r8
	mov ip, r3
.L0805DDAC:
	movs r4, #0
	lsls r0, r1, #1
	adds r6, r5, #0
	adds r6, #0x1c
	adds r1, #1
	mov sb, r1
	adds r1, r0, #4
	lsls r1, r1, #6
	adds r0, #5
	lsls r0, r0, #6
	adds r3, r5, #0
	adds r3, #0xe
	mov r7, ip
	adds r2, r0, r7
	add r1, ip
.L0805DDCA:
	adds r0, r5, r4
	strh r0, [r1]
	strh r3, [r2]
	adds r3, #1
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0xd
	ble .L0805DDCA
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	mov r1, sb
	cmp r1, #9
	ble .L0805DDAC
	movs r0, #0xb4
	lsls r0, r0, #2
	add r0, r8
	ldr r1, .L0805DE20 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008E64
	movs r3, #0xf8
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805DE0C: .4byte 0xFFFFFC20
.L0805DE10: .4byte 0x05000200
.L0805DE14: .4byte 0x06010000
.L0805DE18: .4byte 0x06002800
.L0805DE1C: .4byte gUnk_080FB000
.L0805DE20: .4byte 0x0600F000

	thumb_func_start func_0805DE24
func_0805DE24: @ 0x0805DE24
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, .L0805DEB8 @ =0x000002CE
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	ldr r6, .L0805DEBC @ =gUnk_080FB000
.L0805DE36:
	lsls r2, r4, #4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	subs r0, #0x20
	subs r2, r2, r0
	movs r1, #0xae
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x90
	movs r3, #3
	bl func_0805DEC0
	adds r4, #1
	cmp r4, #9
	ble .L0805DE36
	movs r4, #0
	movs r7, #1
	movs r6, #8
.L0805DE7A:
	adds r3, r4, #0
	adds r3, #0xd
	str r7, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #4
	bl func_0805DF68
	adds r6, #8
	adds r4, #1
	cmp r4, #0xa
	ble .L0805DE7A
	movs r1, #0xad
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x88
	movs r2, #4
	movs r3, #1
	bl func_0805DEC0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805DEB8: .4byte 0x000002CE
.L0805DEBC: .4byte gUnk_080FB000

	thumb_func_start func_0805DEC0
func_0805DEC0: @ 0x0805DEC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r6, r1, #0
	str r2, [sp, #4]
	mov sb, r3
	ldr r0, [sp, #0x28]
	mov r8, r0
	ldr r4, [sp, #0x2c]
	cmp r4, #1
	ble .L0805DEF6
	subs r4, #1
	movs r5, #0xa
	cmp r4, #1
	ble .L0805DEF2
.L0805DEE6:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r5, r0, #1
	subs r4, #1
	cmp r4, #1
	bgt .L0805DEE6
.L0805DEF2:
	adds r4, r5, #0
	b .L0805DEF8
.L0805DEF6:
	movs r4, #1
.L0805DEF8:
	movs r7, #0
	cmp r4, #0
	ble .L0805DF42
.L0805DEFE:
	cmp r4, #1
	bne .L0805DF04
	movs r7, #1
.L0805DF04:
	mov r0, r8
	adds r1, r4, #0
	bl __divsi3
	adds r5, r0, #0
	cmp r5, #0
	bne .L0805DF16
	cmp r7, #0
	beq .L0805DF28
.L0805DF16:
	mov r1, sb
	str r1, [sp]
	mov r0, sl
	adds r1, r6, #0
	ldr r2, [sp, #4]
	adds r3, r5, #0
	bl func_0805DF68
	movs r7, #1
.L0805DF28:
	adds r6, #8
	adds r0, r5, #0
	muls r0, r4, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	cmp r4, #0
	bgt .L0805DEFE
.L0805DF42:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq .L0805DF58
	mov r1, sb
	str r1, [sp]
	mov r0, sl
	adds r1, r6, #0
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x30]
	bl func_0805DF68
.L0805DF58:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0805DF68
func_0805DF68: @ 0x0805DF68
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r6, [sp, #0x10]
	ldr r5, .L0805DFC0 @ =0x000002CE
	add r5, ip
	movs r0, #0
	ldrsh r4, [r5, r0]
	lsls r4, r4, #3
	movs r0, #0xa7
	lsls r0, r0, #1
	add r0, ip
	adds r0, r0, r4
	strh r1, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	movs r0, #0xa8
	lsls r0, r0, #1
	add r0, ip
	adds r0, r0, r1
	strh r2, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	movs r0, #0xa9
	lsls r0, r0, #1
	add r0, ip
	adds r0, r0, r1
	strh r3, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	movs r0, #0xaa
	lsls r0, r0, #1
	add r0, ip
	adds r0, r0, r1
	strh r6, [r0]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0805DFC0: .4byte 0x000002CE

	thumb_func_start func_0805DFC4
func_0805DFC4: @ 0x0805DFC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	adds r6, r0, #0
	mov r1, sp
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [sp, #0xc]
	strb r2, [r1, #0x10]
	strb r2, [r1, #0x11]
	str r0, [sp, #0x14]
	strb r2, [r1, #0x18]
	add r3, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r3, #4]
	add r2, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r2, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	ldr r1, .L0805E1C0 @ =0x00000ADA
	adds r0, r6, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	ble .L0805E0C8
	adds r4, r6, #0
	adds r4, #0xe8
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0xec
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x3c
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x1c
	ldm r4!, {r1, r5, r7}
	stm r0!, {r1, r5, r7}
	ldm r4!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r4!, {r1, r7}
	stm r0!, {r1, r7}
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0xfc
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xc
	strh r0, [r1]
	mov r2, sp
	ldr r3, .L0805E1C4 @ =0x00000AD4
	adds r0, r6, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r1, r1, #4
	ldr r5, .L0805E1C8 @ =0x00000AD6
	adds r0, r6, r5
	movs r7, #0
	ldrsh r0, [r0, r7]
	lsls r0, r0, #4
	subs r0, #0x28
	subs r1, r1, r0
	strh r1, [r2, #2]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805E0C0
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L0805E0C0:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805E0C8:
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r0, r6, r5
	ldrh r0, [r0]
	mov r7, sp
	adds r7, #0x6c
	str r7, [sp, #0x74]
	cmp r0, #0
	bne .L0805E0DC
	b .L0805E2C8
.L0805E0DC:
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0x84
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r7, sp, #0x3c
	adds r0, r7, #0
	adds r1, r7, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	adds r0, r7, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x94
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x1a
	strh r0, [r1, #2]
	movs r5, #0x96
	lsls r5, r5, #1
	adds r4, r6, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #4
	strh r0, [r1, #6]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	mov r0, sp
	movs r2, #1
	mov sb, r2
	mov r3, sb
	strb r3, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0805E18C
	mov r1, sp
	ldrh r3, [r1, #0x28]
.L0805E18C:
	str r5, [sp, #0x78]
	lsls r2, r2, #5
	ldr r4, .L0805E1CC @ =0x06010080
	adds r2, r2, r4
	adds r0, r7, #0
	mov r1, r8
	bl func_08008F0C
	mov sl, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805E1D0
	cmp r1, #0
	beq .L0805E1B6
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E1B6:
	ldr r3, [sp, #0x78]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L0805E2AA
	.align 2, 0
.L0805E1C0: .4byte 0x00000ADA
.L0805E1C4: .4byte 0x00000AD4
.L0805E1C8: .4byte 0x00000AD6
.L0805E1CC: .4byte 0x06010080
.L0805E1D0:
	str r1, [sp, #0x7c]
	mov r4, sb
	str r4, [sp, #0x60]
	ldr r5, [sp, #0x78]
	ldr r0, [r5]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r1, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L0805E1EC
	adds r0, r1, #0
.L0805E1EC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805E20A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805E20E
	mov r0, sb
	bl func_080D3BC0
	b .L0805E20E
.L0805E20A:
	movs r0, #0
	mov sb, r0
.L0805E20E:
	adds r4, r0, #0
	mov r8, r4
	ldr r0, [sp, #0x78]
	ldr r2, [r0]
	mov r3, r8
	mov r1, sp
	adds r1, #0x6c
	str r1, [sp, #0x74]
	ldr r4, [sp, #0x7c]
	cmp r2, r4
	beq .L0805E23E
.L0805E224:
	cmp r3, #0
	beq .L0805E234
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E234:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x7c]
	cmp r2, r5
	bne .L0805E224
.L0805E23E:
	adds r4, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L0805E25A
	cmp r4, #0
	beq .L0805E256
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E256:
	adds r4, #0x10
	b .L0805E282
.L0805E25A:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805E280
.L0805E262:
	cmp r2, #0
	beq .L0805E272
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E272:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L0805E262
.L0805E280:
	adds r4, r2, #0
.L0805E282:
	ldr r3, [sp, #0x78]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805E294
.L0805E28E:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805E28E
.L0805E294:
	cmp r0, #0
	beq .L0805E29C
	bl free
.L0805E29C:
	mov r0, sb
	add r0, r8
	mov r5, r8
	ldr r7, [sp, #0x78]
	str r5, [r7]
	str r4, [r7, #4]
	str r0, [r7, #0xc]
.L0805E2AA:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805E2C0
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L0805E2C0:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805E2C8:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0x1f
	bls .L0805E2D6
	b .L0805E4B2
.L0805E2D6:
	adds r4, r6, #0
	adds r4, #0xb4
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0xb8
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r7, sp, #0x3c
	adds r0, r7, #0
	adds r1, r7, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	adds r0, r7, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0xc8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x98
	strh r0, [r1, #2]
	movs r5, #0x96
	lsls r5, r5, #1
	adds r4, r6, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #8
	strh r0, [r1, #6]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	mov r0, sp
	movs r2, #1
	mov sb, r2
	mov r3, sb
	strb r3, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0805E386
	mov r1, sp
	ldrh r3, [r1, #0x28]
.L0805E386:
	str r5, [sp, #0x78]
	lsls r2, r2, #5
	ldr r4, .L0805E3BC @ =0x06010100
	adds r2, r2, r4
	adds r0, r7, #0
	mov r1, r8
	bl func_08008F0C
	mov sl, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805E3C0
	cmp r1, #0
	beq .L0805E3B0
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E3B0:
	ldr r3, [sp, #0x78]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L0805E494
	.align 2, 0
.L0805E3BC: .4byte 0x06010100
.L0805E3C0:
	str r1, [sp, #0x7c]
	mov r4, sb
	str r4, [sp, #0x68]
	ldr r5, [sp, #0x78]
	ldr r0, [r5]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L0805E3DC
	adds r0, r1, #0
.L0805E3DC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805E3FA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805E3FE
	mov r0, sb
	bl func_080D3BC0
	b .L0805E3FE
.L0805E3FA:
	movs r0, #0
	mov sb, r0
.L0805E3FE:
	adds r4, r0, #0
	mov r8, r4
	ldr r0, [sp, #0x78]
	ldr r2, [r0]
	mov r3, r8
	ldr r1, [sp, #0x7c]
	cmp r2, r1
	beq .L0805E428
.L0805E40E:
	cmp r3, #0
	beq .L0805E41E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E41E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x7c]
	cmp r2, r0
	bne .L0805E40E
.L0805E428:
	adds r4, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L0805E444
	cmp r4, #0
	beq .L0805E440
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0805E440:
	adds r4, #0x10
	b .L0805E46C
.L0805E444:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805E46A
.L0805E44C:
	cmp r2, #0
	beq .L0805E45C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E45C:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L0805E44C
.L0805E46A:
	adds r4, r2, #0
.L0805E46C:
	ldr r0, [sp, #0x78]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805E47E
.L0805E478:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805E478
.L0805E47E:
	cmp r0, #0
	beq .L0805E486
	bl free
.L0805E486:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x78]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L0805E494:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805E4AA
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L0805E4AA:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805E4B2:
	ldr r1, .L0805E5E8 @ =0xFFFFFCFF
	ldr r0, [sp, #0x6c]
	ands r0, r1
	ldr r1, .L0805E5EC @ =0xFFFFF3FF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #5
	orrs r0, r4
	ldr r1, .L0805E5F0 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L0805E5F4 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L0805E5F8 @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L0805E5FC @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L0805E600 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L0805E604 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp, #0x6c]
	movs r5, #0x92
	lsls r5, r5, #1
	adds r0, r6, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0805E608 @ =0xFFFF0FFF
	ldr r7, [sp, #0x74]
	ldr r1, [r7, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L0805E60C @ =0x0000FFFF
	ands r1, r0
	str r1, [r7, #4]
	ldr r0, [sp, #0x6c]
	orrs r0, r4
	str r0, [sp, #0x6c]
	ldr r0, .L0805E610 @ =0x000002CE
	adds r1, r6, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L0805E5D8
	adds r4, r1, #0
	ldr r5, [sp, #0x74]
.L0805E522:
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #3
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r0, r6, r3
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #0xa
	ldr r2, .L0805E5EC @ =0xFFFFF3FF
	ldr r0, [r5, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	movs r7, #0
	ldrsh r1, [r4, r7]
	lsls r1, r1, #3
	movs r2, #0xa7
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, .L0805E614 @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	ldr r0, .L0805E618 @ =0xFE00FFFF
	ldr r2, [sp, #0x6c]
	ands r2, r0
	orrs r2, r1
	movs r7, #0
	ldrsh r1, [r4, r7]
	lsls r1, r1, #3
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r0, r6, r3
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, .L0805E61C @ =0xFFFFFF00
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x6c]
	movs r7, #0x8e
	lsls r7, r7, #1
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_08007D4C
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r2, r2, #3
	movs r3, #0xa9
	lsls r3, r3, #1
	adds r1, r6, r3
	adds r1, r1, r2
	movs r7, #0
	ldrsh r1, [r1, r7]
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0805E620 @ =0xFFFFFC00
	ldr r1, [r5, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r5, #4]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0805E5CC
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x6c]
	str r0, [r1]
	ldr r7, [sp, #0x74]
	ldrh r0, [r7, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L0805E5CC:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L0805E522
.L0805E5D8:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805E5E8: .4byte 0xFFFFFCFF
.L0805E5EC: .4byte 0xFFFFF3FF
.L0805E5F0: .4byte 0xFFFFDFFF
.L0805E5F4: .4byte 0xFFFF3FFF
.L0805E5F8: .4byte 0xF1FFFFFF
.L0805E5FC: .4byte 0xEFFFFFFF
.L0805E600: .4byte 0xDFFFFFFF
.L0805E604: .4byte 0x3FFFFFFF
.L0805E608: .4byte 0xFFFF0FFF
.L0805E60C: .4byte 0x0000FFFF
.L0805E610: .4byte 0x000002CE
.L0805E614: .4byte 0x000001FF
.L0805E618: .4byte 0xFE00FFFF
.L0805E61C: .4byte 0xFFFFFF00
.L0805E620: .4byte 0xFFFFFC00

	thumb_func_start func_0805E624
func_0805E624: @ 0x0805E624
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L0805E650 @ =vtable_unk_080E79B8
	str r0, [r4]
	ldr r0, .L0805E654 @ =0x00000AF4
	bl __builtin_new
	adds r1, r5, #0
	bl func_0805CF70
	str r0, [r4, #4]
	ldr r1, [r6]
	movs r0, #0
	str r0, [r6]
	str r1, [r4, #8]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L0805E650: .4byte vtable_unk_080E79B8
.L0805E654: .4byte 0x00000AF4

	thumb_func_start func_0805E658
func_0805E658: @ 0x0805E658
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L0805E694 @ =vtable_unk_080E79B8
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L0805E674
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805E674:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L0805E686
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805E686:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0805E694: .4byte vtable_unk_080E79B8

	thumb_func_start func_0805E698
func_0805E698: @ 0x0805E698
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, sp
	bl func_0805D170
	ldr r1, [sp]
	cmp r1, #0
	beq .L0805E6BA
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805E6BA:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
