    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

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
	@ Franglais VWF, site A (0x0804EFE2).  This is deliberately an
	@ in-place 10-byte padded Thumb far jump: the payload target comes from the
	@ generated franglais_stub_symbols.inc included by
	@ src/franglais_payload.s, so a stub relink cannot silently leave a
	@ stale absolute target in this source-port ROM.  The payload wrapper
	@ reproduces the four replaced setup instructions and resumes at
	@ 0x0804EFF4; keep the following vanilla instructions intact.
	@ 0x0804EFE2 is 2 mod 4: the NOP shifts LDR onto a 4-aligned address,
	@ letting it read the following literal at 0x0804EFE8.
	nop
	ldr r3, .Lfranglais_dialogue_vwf_hook_a
	bx r3
	.Lfranglais_dialogue_vwf_hook_a: .4byte franglais_dialogue_vwf_hook_a + 1
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
	@ Franglais VWF, site B (0x0804FD4A).  The address is 2 mod 4, so
	@ retain the leading NOP used by thumb_far_jump_padded: its literal load
	@ is then 4-aligned and reads the word immediately below.  The payload
	@ wrapper reproduces r8 -= 1 and the old +32 advance when no measured
	@ width is available, then resumes at 0x0804FD54.
	nop
	ldr r3, .Lfranglais_dialogue_vwf_hook_b
	bx r3
	.Lfranglais_dialogue_vwf_hook_b: .4byte franglais_dialogue_vwf_hook_b + 1
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
	ldr r3, .Lfranglais_scene_text_plain
	bx r3
	nop
	nop
	nop
	nop
	nop
	nop
	.align 2, 0
.Lfranglais_scene_text_plain: .4byte franglais_scene_text_plain + 1

	thumb_func_start func_08050DA0
func_08050DA0: @ 0x08050DA0
	ldr r3, .Lfranglais_scene_text
	bx r3
	nop
	nop
	nop
	nop
	nop
	nop
	.align 2, 0
.Lfranglais_scene_text: .4byte franglais_scene_text + 1

	thumb_func_start func_08050DB4
func_08050DB4: @ 0x08050DB4
	ldr r3, .Lfranglais_scene_text_mode
	bx r3
	nop
	nop
	nop
	nop
	nop
	nop
	.align 2, 0
.Lfranglais_scene_text_mode: .4byte franglais_scene_text_mode + 1

	thumb_func_start func_08050DC8
func_08050DC8: @ 0x08050DC8
	mov r12, r3
	ldr r3, .Lfranglais_scene_text_mode_arg
	bx r3
	nop
	nop
	nop
	.align 2, 0
.Lfranglais_scene_text_mode_arg: .4byte franglais_scene_text_mode_arg + 1

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
