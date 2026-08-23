    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_0803C028
func_0803C028: @ 0x0803C028
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	adds r7, r0, #0
	adds r4, r1, #0
	str r2, [sp, #0x44]
	adds r1, r3, #0
	ldr r3, [sp, #0x98]
	ldr r5, [sp, #0x9c]
	ldr r2, [sp, #0x94]
	bl func_0803BEB0
	str r0, [sp, #0x48]
	cmp r0, #0
	bge .L0803C04E
	b .L0803C506
.L0803C04E:
	cmp r0, #2
	bgt .L0803C054
	b .L0803C506
.L0803C054:
	cmp r0, #3
	beq .L0803C05A
	b .L0803C506
.L0803C05A:
	movs r0, #0
	str r0, [sp, #0x4c]
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq .L0803C0DC
	ldrh r3, [r4, #8]
	adds r2, r3, #0
	lsls r1, r2, #0x1a
	lsrs r1, r1, #0x1f
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1f
	orrs r1, r0
	cmp r1, #0
	beq .L0803C0C8
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq .L0803C08C
	ldrb r0, [r7, #0xc]
	cmp r0, #0
	bne .L0803C088
	movs r0, #6
	b .L0803C0A4
.L0803C088:
	subs r0, #1
	b .L0803C0A4
.L0803C08C:
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	beq .L0803C0A6
	ldrb r0, [r7, #0xc]
	cmp r0, #6
	bne .L0803C0A2
	add r1, sp, #0x4c
	ldrb r1, [r1]
	strb r1, [r7, #0xc]
	b .L0803C0A6
.L0803C0A2:
	adds r0, #1
.L0803C0A4:
	strb r0, [r7, #0xc]
.L0803C0A6:
	cmp r5, #0
	beq .L0803C0B2
	adds r0, r5, #0
	movs r1, #0xcb
	bl func_08008B6C
.L0803C0B2:
	ldr r0, .L0803C0C4 @ =gUnk_080F1A34
	ldrb r1, [r7, #0xc]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1]
	str r1, [sp, #0x4c]
	movs r0, #0x14
	strb r0, [r7, #0xe]
	b .L0803C0DC
	.align 2, 0
.L0803C0C4: .4byte gUnk_080F1A34
.L0803C0C8:
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq .L0803C0DC
	cmp r5, #0
	beq .L0803C0DC
	adds r0, r5, #0
	movs r1, #0xc5
	bl func_08008B6C
.L0803C0DC:
	ldrb r0, [r7, #0xd]
	cmp r0, #0
	beq .L0803C142
	ldr r4, [r7, #8]
	ldr r0, [r4, #0x50]
	ldr r1, [r0, #0x20]
	ldr r3, [r1]
	ldrh r2, [r0, #0x2c]
	lsls r2, r2, #2
	ldr r0, [r0, #0x24]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r5, [sp, #0x14]
	adds r0, r4, #0
	adds r0, #0x30
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	add r1, sp, #0x14
	ldr r0, [sp, #0x14]
	movs r3, #0
	cmp r0, #0
	beq .L0803C116
	ldrh r3, [r1, #4]
.L0803C116:
	adds r1, r4, #0
	adds r1, #0x38
	lsls r0, r2, #5
	ldr r2, .L0803C4D0 @ =0x05000200
	adds r0, r0, r2
	str r5, [r1, #0xc]
	str r0, [r1, #0x10]
	str r3, [r1, #0x14]
	ldr r3, [sp, #0x94]
	ldr r0, [r3, #8]
	ldr r2, [r0, #0x10]
	adds r0, r3, #0
	bl _call_via_r2
	ldr r1, .L0803C4D4 @ =gUnk_080F1A34
	ldrb r0, [r7, #0xc]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x4c]
	movs r0, #0
	strb r0, [r7, #0xd]
.L0803C142:
	ldrb r0, [r7, #0xe]
	subs r0, #1
	strb r0, [r7, #0xe]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803C152
	movs r0, #0x28
	strb r0, [r7, #0xe]
.L0803C152:
	ldrb r0, [r7, #0xe]
	cmp r0, #0x13
	bhi .L0803C24E
	ldr r0, [r7, #8]
	ldrb r1, [r7, #0xc]
	lsls r1, r1, #4
	adds r1, #0x10
	mov r8, r1
	ldr r4, [r0, #0x50]
	adds r0, #0x30
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r6, r4, #0
	mov sb, r0
	adds r5, r6, #0
	adds r5, #0x20
	adds r0, r5, #0
	bl func_0805E8F0
	adds r4, r0, #0
	lsls r4, r4, #0x1e
	lsrs r4, r4, #0x1f
	ldr r1, [r6, #0x20]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r0, [r6, #0x24]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	cmp r4, #0
	beq .L0803C1CE
	ldr r4, [sp, #0xc]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0xc
	ldr r0, [sp, #0xc]
	movs r3, #0
	cmp r0, #0
	beq .L0803C1B2
	ldrh r3, [r1, #4]
.L0803C1B2:
	adds r1, r6, #0
	adds r1, #8
	lsls r0, r2, #5
	ldr r5, .L0803C4D8 @ =0x06010000
	adds r0, r0, r5
	str r4, [r1, #0xc]
	str r0, [r1, #0x10]
	str r3, [r1, #0x14]
	ldr r2, [sp, #0x94]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x94]
	bl _call_via_r2
.L0803C1CE:
	ldr r0, [sp, #4]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x24]
	str r1, [sp, #0x28]
	ldr r3, [sp, #0x24]
	lsls r0, r3, #7
	lsrs r0, r0, #0x17
	add r0, r8
	ldr r1, .L0803C4DC @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #0x10
	ldr r2, .L0803C4E0 @ =0xFE00FFFF
	ands r2, r3
	orrs r2, r0
	str r2, [sp, #0x24]
	add r4, sp, #0x24
	ldrb r0, [r4]
	adds r0, #0x96
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, .L0803C4E4 @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x24]
	mov r3, sb
	lsls r1, r3, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #0xc
	ldr r2, .L0803C4E8 @ =0xFFFF0FFF
	ldr r0, [r4, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #4]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0803C4EC @ =0xFFFFFC00
	ldr r1, [r4, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #5
	ldr r1, [sp, #0x24]
	orrs r1, r0
	str r1, [sp, #0x24]
	ldr r5, [sp, #0x44]
	ldrb r2, [r5]
	cmp r2, #0x7f
	bhi .L0803C24E
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r5, r0
	str r1, [r0]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r5]
.L0803C24E:
	ldr r0, [r7, #8]
	mov sl, r0
	movs r1, #0
	mov sb, r1
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0x60]
	ldr r3, [sp, #0x4c]
	rsbs r3, r3, #0
	str r3, [sp, #0x68]
	mov r4, sp
	adds r4, #0x3c
	str r4, [sp, #0x64]
	movs r5, #0x10
	str r5, [sp, #0x6c]
.L0803C26C:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r4, [r0, #0x54]
	mov r0, sl
	adds r0, #0x30
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r6, r4, #0
	mov r8, r0
	adds r5, r6, #0
	adds r5, #0x20
	adds r0, r5, #0
	bl func_0805E8F0
	adds r4, r0, #0
	lsls r4, r4, #0x1e
	lsrs r4, r4, #0x1f
	ldr r1, [r6, #0x20]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r0, [r6, #0x24]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	cmp r4, #0
	beq .L0803C2E0
	ldr r4, [sp, #0xc]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0xc
	ldr r0, [sp, #0xc]
	movs r3, #0
	cmp r0, #0
	beq .L0803C2C4
	ldrh r3, [r1, #4]
.L0803C2C4:
	adds r1, r6, #0
	adds r1, #8
	lsls r0, r2, #5
	ldr r2, .L0803C4D8 @ =0x06010000
	adds r0, r0, r2
	str r4, [r1, #0xc]
	str r0, [r1, #0x10]
	str r3, [r1, #0x14]
	ldr r3, [sp, #0x94]
	ldr r0, [r3, #8]
	ldr r2, [r0, #0x10]
	adds r0, r3, #0
	bl _call_via_r2
.L0803C2E0:
	ldr r0, [sp, #4]
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	str r1, [sp, #0x30]
	ldr r3, [sp, #0x2c]
	lsls r0, r3, #7
	lsrs r0, r0, #0x17
	ldr r4, [sp, #0x6c]
	adds r0, r0, r4
	ldr r1, .L0803C4DC @ =0x000001FF
	ands r0, r1
	lsls r0, r0, #0x10
	ldr r2, .L0803C4E0 @ =0xFE00FFFF
	ands r2, r3
	orrs r2, r0
	str r2, [sp, #0x2c]
	ldr r5, [sp, #0x60]
	ldrb r1, [r5]
	adds r1, #0x96
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, .L0803C4E4 @ =0xFFFFFF00
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x2c]
	mov r0, r8
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #0xc
	add r4, sp, #0x2c
	ldr r0, [r4, #4]
	ldr r3, .L0803C4E8 @ =0xFFFF0FFF
	ands r0, r3
	orrs r0, r1
	str r0, [r4, #4]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0803C4EC @ =0xFFFFFC00
	ldr r1, [r4, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #4]
	ldr r1, [sp, #0x2c]
	movs r5, #0x80
	lsls r5, r5, #5
	orrs r1, r5
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x44]
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi .L0803C366
	lsls r0, r2, #3
	adds r0, #4
	ldr r3, [sp, #0x44]
	adds r0, r3, r0
	str r1, [r0]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L0803C366:
	ldr r4, [sp, #0x6c]
	adds r4, #0x10
	str r4, [sp, #0x6c]
	movs r5, #1
	add sb, r5
	mov r0, sb
	cmp r0, #6
	bhi .L0803C378
	b .L0803C26C
.L0803C378:
	ldr r7, [r7, #8]
	mov r8, r7
	ldr r1, [sp, #0x4c]
	cmp r1, #0
	beq .L0803C3B0
	add r0, sp, #0x34
	movs r4, #0xc
	movs r5, #2
	strh r4, [r0]
	strh r5, [r0, #2]
	ldr r0, [sp, #0x34]
	mov r6, r8
	adds r6, #0x74
	adds r1, r6, #0
	movs r2, #0
	bl func_0804E7A0
	add r0, sp, #0x38
	strh r4, [r0]
	strh r5, [r0, #2]
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x4c]
	str r2, [sp]
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
.L0803C3B0:
	mov r0, r8
	adds r0, #0x30
	ldr r1, [r0, #4]
	bl func_080074C0
	ldr r3, [sp, #0x68]
	ldr r4, [sp, #0x4c]
	orrs r3, r4
	mov r5, r8
	adds r5, #0x70
	str r5, [sp, #0x50]
	lsrs r1, r3, #0x1f
	str r1, [sp, #0x54]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x3c]
	str r2, [sp, #0x40]
	ldr r2, .L0803C4F0 @ =0x3FFFFFFF
	ldr r1, [sp, #0x3c]
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	ldr r2, .L0803C4F4 @ =0xFFFF3FFF
	ands r1, r2
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r1, r2
	str r1, [sp, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	ldr r3, [sp, #0x64]
	ldr r1, [r3, #4]
	ldr r4, .L0803C4E8 @ =0xFFFF0FFF
	ands r1, r4
	orrs r1, r0
	str r1, [r3, #4]
	ldr r0, [sp, #0x3c]
	ldr r5, .L0803C4E4 @ =0xFFFFFF00
	ands r0, r5
	movs r1, #0x8e
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [sp, #0x3c]
	movs r4, #0
	mov r2, r8
	adds r2, #0x74
	str r2, [sp, #0x58]
.L0803C41A:
	lsls r0, r4, #3
	ldr r3, [sp, #0x50]
	adds r0, r0, r3
	movs r5, #0xc1
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r8, r0
	lsls r0, r4, #5
	mov sl, r0
	adds r1, r4, #1
	str r1, [sp, #0x5c]
	ldr r2, [sp, #0x54]
	cmp r2, #0
	beq .L0803C498
	movs r3, #0
	lsls r2, r4, #1
	lsls r1, r4, #2
	movs r4, #0x80
	mov sb, r4
	adds r1, r1, r2
	lsls r1, r1, #3
	ldr r5, [sp, #0x50]
	movs r4, #0xca
	lsls r4, r4, #2
	adds r0, r5, r4
	adds r4, r1, r0
	mov r5, r8
	lsls r0, r5, #5
	ldr r5, .L0803C4D8 @ =0x06010000
	adds r7, r0, r5
	lsls r2, r2, #6
	ldr r0, [sp, #0x58]
	adds r6, r2, r0
	ldr r2, [sp, #0x50]
	movs r5, #0xc7
	lsls r5, r5, #2
	adds r0, r2, r5
	adds r5, r1, r0
.L0803C46C:
	str r6, [r4]
	str r7, [r4, #4]
	mov r0, sb
	str r0, [r4, #8]
	ldr r1, [sp, #0x94]
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x10]
	adds r0, r1, #0
	adds r1, r5, #0
	str r3, [sp, #0x70]
	bl _call_via_r2
	adds r4, #0x18
	adds r7, #0x80
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r6, r6, r2
	adds r5, #0x18
	ldr r3, [sp, #0x70]
	adds r3, #1
	cmp r3, #1
	bls .L0803C46C
.L0803C498:
	mov r3, r8
	lsls r1, r3, #0x16
	lsrs r1, r1, #0x16
	ldr r2, .L0803C4EC @ =0xFFFFFC00
	ldr r4, [sp, #0x64]
	ldr r0, [r4, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r4, #4]
	mov r1, sl
	adds r1, #0x88
	ldr r0, .L0803C4DC @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	ldr r0, .L0803C4E0 @ =0xFE00FFFF
	ldr r2, [sp, #0x3c]
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x3c]
	ldr r5, [sp, #0x44]
	ldrb r3, [r5]
	cmp r3, #0x7f
	bhi .L0803C500
	lsls r0, r3, #3
	adds r0, #4
	adds r0, r5, r0
	str r2, [r0]
	b .L0803C4F8
	.align 2, 0
.L0803C4D0: .4byte 0x05000200
.L0803C4D4: .4byte gUnk_080F1A34
.L0803C4D8: .4byte 0x06010000
.L0803C4DC: .4byte 0x000001FF
.L0803C4E0: .4byte 0xFE00FFFF
.L0803C4E4: .4byte 0xFFFFFF00
.L0803C4E8: .4byte 0xFFFF0FFF
.L0803C4EC: .4byte 0xFFFFFC00
.L0803C4F0: .4byte 0x3FFFFFFF
.L0803C4F4: .4byte 0xFFFF3FFF
.L0803C4F8:
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	adds r0, r3, #1
	strb r0, [r5]
.L0803C500:
	ldr r4, [sp, #0x5c]
	cmp r4, #2
	bls .L0803C41A
.L0803C506:
	ldr r0, [sp, #0x48]
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0803C518
func_0803C518: @ 0x0803C518
	push {r4, lr}
	adds r4, r0, #0
	bl func_0803BEBC
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xf]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_0803C52C
func_0803C52C: @ 0x0803C52C
	push {r4, lr}
	adds r4, r0, #0
	bl func_0803BEC8
	movs r0, #1
	strb r0, [r4, #0xd]
	strb r0, [r4, #0xf]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_0803C540
func_0803C540: @ 0x0803C540
	ldrb r0, [r0, #0xc]
	bx lr

	thumb_func_start func_0803C544
func_0803C544: @ 0x0803C544
	movs r1, #0
	strb r1, [r0, #0xf]
	bx lr
	.align 2, 0

	thumb_func_start func_0803C54C
func_0803C54C: @ 0x0803C54C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r5, [sp, #0x20]
	movs r0, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x88
	movs r3, #0x70
	bl func_0803BDFC
	ldr r0, .L0803C584 @ =vtable_unk_080E77E0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #8
	bl func_0803C5B0
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L0803C584: .4byte vtable_unk_080E77E0

	thumb_func_start func_0803C588
func_0803C588: @ 0x0803C588
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L0803C5AC @ =vtable_unk_080E77E0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #8
	movs r1, #2
	bl func_0803C7A0
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_0803BE50
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0803C5AC: .4byte vtable_unk_080E77E0

	thumb_func_start func_0803C5B0
func_0803C5B0: @ 0x0803C5B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	str r0, [sp, #0x20]
	movs r0, #0xd7
	lsls r0, r0, #2
	bl __builtin_new
	adds r7, r0, #0
	ldr r1, .L0803C78C @ =gUnk_0875B444
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x30
	ldr r1, .L0803C790 @ =gUnk_086678A0
	bl func_0805E6CC
	adds r4, r7, #0
	adds r4, #0x60
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	adds r0, r7, #0
	adds r0, #0x68
	movs r4, #0
	str r4, [r7, #0x68]
	str r4, [r0, #4]
	ldr r1, .L0803C794 @ =vtable_unk_080E77D0
	mov r8, r1
	str r1, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	adds r0, #0x18
	movs r6, #1
	strb r6, [r0]
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r5, r7, r2
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r5, #4]
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	strb r6, [r0]
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r0, r7, r1
	str r4, [r0]
	str r4, [r0, #4]
	mov r2, r8
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r5, #4]
	movs r1, #0xac
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sb, r1
	strb r6, [r1]
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r7, r2
	str r4, [r0]
	str r4, [r0, #4]
	mov r1, r8
	str r1, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	adds r2, #0x18
	adds r0, r7, r2
	strb r4, [r0]
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r5, #4]
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r7, r1
	str r4, [r0]
	str r4, [r0, #4]
	mov r2, r8
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	adds r1, #0x18
	adds r0, r7, r1
	strb r6, [r0]
	ldr r2, .L0803C798 @ =0x000002F1
	adds r0, r7, r2
	strb r4, [r0]
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007128
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r5, #4]
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r0, r7, r1
	str r4, [r0]
	str r4, [r0, #4]
	mov r2, r8
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	movs r0, #0xc5
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r5, #4]
	movs r1, #0xc7
	lsls r1, r1, #2
	adds r0, r7, r1
	str r4, [r0]
	str r4, [r0, #4]
	mov r2, r8
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	adds r1, #0x18
	adds r0, r7, r1
	strb r6, [r0]
	movs r2, #0xce
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r5, #4]
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r7, r1
	str r4, [r0]
	str r4, [r0, #4]
	mov r2, r8
	str r2, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	adds r1, #0x18
	adds r0, r7, r1
	strb r6, [r0]
	ldr r1, .L0803C79C @ =gUnk_0875A440
	movs r2, #0xe8
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	mov r0, sl
	strb r6, [r0]
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	movs r1, #0xa2
	lsls r1, r1, #2
	adds r0, r7, r1
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r2, sb
	strb r6, [r2]
	movs r1, #0x82
	lsls r1, r1, #2
	adds r0, r7, r1
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r2, sb
	strb r6, [r2]
	ldr r0, [sp, #0x20]
	str r7, [r0]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0803C78C: .4byte gUnk_0875B444
.L0803C790: .4byte gUnk_086678A0
.L0803C794: .4byte vtable_unk_080E77D0
.L0803C798: .4byte 0x000002F1
.L0803C79C: .4byte gUnk_0875A440

	thumb_func_start func_0803C7A0
func_0803C7A0: @ 0x0803C7A0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq .L0803C7B2
	movs r1, #3
	bl func_080E0D70
.L0803C7B2:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq .L0803C7C0
	adds r0, r4, #0
	bl __builtin_delete
.L0803C7C0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803C7C8
func_0803C7C8: @ 0x0803C7C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	mov sb, r1
	mov sl, r2
	mov r8, r3
	ldr r6, [r0]
	adds r2, r6, #0
	adds r2, #0x60
	ldr r1, [r2, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0803C7EC
	b .L0803CD28
.L0803C7EC:
	adds r0, r2, #0
	bl func_080074C0
	str r0, [sp, #0x58]
	adds r7, r6, #0
	adds r7, #0x80
	ldrb r0, [r7]
	cmp r0, #0
	beq .L0803C83A
	adds r4, r6, #0
	adds r4, #0x68
	ldr r1, [r6, #0x68]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	cmp r5, #0
	bne .L0803C83A
	mov r0, sp
	adds r1, r6, #0
	movs r2, #0
	bl func_0805E790
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x58]
	lsls r0, r1, #5
	ldr r1, .L0803CBC8 @ =0x05000200
	adds r0, r0, r1
	movs r1, #0x20
	str r2, [r4, #0xc]
	str r0, [r4, #0x10]
	str r1, [r4, #0x14]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x8c]
	adds r1, r4, #0
	bl _call_via_r2
	strb r5, [r7]
.L0803C83A:
	mov r0, sb
	adds r0, #4
	str r0, [sp, #0x5c]
	mov r1, sl
	adds r1, #4
	str r1, [sp, #0x60]
	adds r7, r6, #0
	adds r7, #0x84
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r2, r6, r0
	ldr r1, [r2, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0803C922
	adds r0, r2, #0
	bl func_08007D4C
	mov sb, r0
	movs r1, #0xc6
	lsls r1, r1, #1
	adds r5, r6, r1
	ldrb r0, [r5]
	cmp r0, #0
	beq .L0803C8A2
	movs r2, #0xc8
	lsls r2, r2, #1
	adds r3, r6, r2
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	cmp r4, #0
	bne .L0803C8A2
	mov r1, sb
	lsls r0, r1, #5
	ldr r2, .L0803CBCC @ =0x06010000
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	str r7, [r3, #0xc]
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	ldr r1, [sp, #0x8c]
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x10]
	adds r0, r1, #0
	adds r1, r3, #0
	bl _call_via_r2
	strb r4, [r5]
.L0803C8A2:
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	movs r1, #0x80
	lsls r1, r1, #5
	ldr r0, [sp, #0x20]
	orrs r0, r1
	ldr r1, .L0803CBD0 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, .L0803CBD4 @ =0x3FFFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r2, [sp, #0x60]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r2, .L0803CBD8 @ =0xFFFFFF00
	ands r0, r2
	orrs r0, r1
	ldr r1, .L0803CBDC @ =0x000001FF
	ldr r2, [sp, #0x5c]
	ands r1, r2
	lsls r1, r1, #0x10
	ldr r2, .L0803CBE0 @ =0xFE00FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x20]
	mov r1, sb
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0803CBE4 @ =0xFFFFFC00
	add r3, sp, #0x20
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r2, [sp, #0x58]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	ldr r2, .L0803CBE8 @ =0xFFFF0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	mov r0, r8
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi .L0803C922
	lsls r0, r2, #3
	adds r0, #4
	add r0, r8
	ldr r1, [sp, #0x20]
	str r1, [r0]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	mov r1, r8
	strb r0, [r1]
.L0803C922:
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r2, r2, r6
	mov sb, r2
	ldr r5, [sp, #0x5c]
	adds r5, #0x20
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r1, [r2, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0803CA06
	adds r0, r2, #0
	bl func_08007D4C
	mov sl, r0
	movs r1, #0xac
	lsls r1, r1, #2
	adds r7, r6, r1
	ldrb r0, [r7]
	cmp r0, #0
	beq .L0803C988
	movs r2, #0xad
	lsls r2, r2, #2
	adds r3, r6, r2
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	cmp r4, #0
	bne .L0803C988
	mov r1, sl
	lsls r0, r1, #5
	ldr r2, .L0803CBCC @ =0x06010000
	adds r0, r0, r2
	movs r1, #0x80
	lsls r1, r1, #1
	mov r2, sb
	str r2, [r3, #0xc]
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	ldr r1, [sp, #0x8c]
	ldr r0, [r1, #8]
	ldr r2, [r0, #0x10]
	adds r0, r1, #0
	adds r1, r3, #0
	bl _call_via_r2
	strb r4, [r7]
.L0803C988:
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #5
	ldr r0, [sp, #0x28]
	orrs r0, r1
	ldr r1, .L0803CBD0 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	ldr r1, .L0803CBD4 @ =0x3FFFFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	ldr r2, [sp, #0x60]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r2, .L0803CBD8 @ =0xFFFFFF00
	ands r0, r2
	orrs r0, r1
	ldr r1, .L0803CBDC @ =0x000001FF
	ands r5, r1
	lsls r2, r5, #0x10
	ldr r1, .L0803CBE0 @ =0xFE00FFFF
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x28]
	mov r1, sl
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0803CBE4 @ =0xFFFFFC00
	add r3, sp, #0x28
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r2, [sp, #0x58]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	ldr r2, .L0803CBE8 @ =0xFFFF0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	mov r0, r8
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi .L0803CA06
	lsls r0, r2, #3
	adds r0, #4
	add r0, r8
	ldr r1, [sp, #0x28]
	str r1, [r0]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	mov r1, r8
	strb r0, [r1]
.L0803CA06:
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [sp, #0x64]
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r1, r0
	str r1, [sp, #0x64]
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r2, r6, r1
	ldr r1, [r2, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0803CB02
	adds r0, r2, #0
	bl func_08007D4C
	mov sl, r0
	movs r2, #0xbc
	lsls r2, r2, #2
	adds r2, r2, r6
	mov sb, r2
	ldrb r0, [r2]
	cmp r0, #0
	beq .L0803CA9A
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r5, r6, r0
	ldr r1, [r5]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r7, r0, #0x1f
	cmp r7, #0
	bne .L0803CA9A
	movs r1, #0xb3
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r2, [r0]
	ldr r4, [r6]
	add r0, sp, #0x30
	ldr r3, [r4, #0xc]
	adds r1, r6, #0
	bl _call_via_r3
	ldr r0, [sp, #0x30]
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r4, #0x10]
	adds r1, r6, #0
	bl _call_via_r3
	ldr r2, [sp, #8]
	mov r1, sl
	lsls r0, r1, #5
	ldr r1, .L0803CBCC @ =0x06010000
	adds r0, r0, r1
	movs r1, #0x80
	str r2, [r5, #0xc]
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x8c]
	adds r1, r5, #0
	bl _call_via_r2
	mov r0, sb
	strb r7, [r0]
.L0803CA9A:
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x68]
	str r1, [sp, #0x38]
	str r2, [sp, #0x3c]
	ldr r2, [sp, #0x60]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r2, .L0803CBD8 @ =0xFFFFFF00
	ldr r0, [sp, #0x38]
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x5c]
	adds r1, #0x40
	ldr r2, .L0803CBDC @ =0x000001FF
	ands r1, r2
	lsls r1, r1, #0x10
	ldr r2, .L0803CBE0 @ =0xFE00FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x38]
	mov r1, sl
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0803CBE4 @ =0xFFFFFC00
	add r3, sp, #0x38
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r2, [sp, #0x58]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	ldr r2, .L0803CBE8 @ =0xFFFF0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	mov r0, r8
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi .L0803CB02
	lsls r0, r2, #3
	adds r0, #4
	add r0, r8
	ldr r1, [sp, #0x38]
	str r1, [r0]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	mov r1, r8
	strb r0, [r1]
.L0803CB02:
	movs r2, #0xc5
	lsls r2, r2, #2
	adds r3, r6, r2
	ldr r1, [r3, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0803CB14
	b .L0803CD28
.L0803CB14:
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0803CB26
	b .L0803CD28
.L0803CB26:
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x68]
	str r1, [sp, #0x48]
	str r2, [sp, #0x4c]
	ldr r2, [sp, #0x60]
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	ldr r2, .L0803CBD8 @ =0xFFFFFF00
	ldr r0, [sp, #0x48]
	ands r0, r2
	orrs r0, r1
	ldr r1, [sp, #0x5c]
	adds r1, #0x58
	ldr r2, .L0803CBDC @ =0x000001FF
	ands r1, r2
	lsls r1, r1, #0x10
	ldr r2, .L0803CBE0 @ =0xFE00FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x48]
	ldr r1, .L0803CBEC @ =0x000002F1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0803CB5A
	b .L0803CC72
.L0803CB5A:
	ldr r1, [r3, #4]
	adds r0, r3, #0
	bl func_08007D4C
	mov sb, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	mov sl, r0
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r7, r6, r2
	ldrb r0, [r7]
	cmp r0, #0
	beq .L0803CC32
	ldr r1, .L0803CBF0 @ =0x000002F2
	adds r0, r6, r1
	ldrh r2, [r0]
	adds r5, r6, #0
	adds r5, #0x30
	ldr r4, [r6, #0x30]
	add r0, sp, #0x40
	ldr r3, [r4, #0xc]
	adds r1, r5, #0
	bl _call_via_r3
	ldr r0, [sp, #0x40]
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r4, #0x10]
	adds r1, r5, #0
	bl _call_via_r3
	movs r2, #0xc7
	lsls r2, r2, #2
	adds r3, r6, r2
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0803CBFE
	ldr r2, [sp, #8]
	mov r1, sb
	lsls r0, r1, #5
	ldr r1, .L0803CBCC @ =0x06010000
	adds r0, r0, r1
	movs r1, #0x80
	str r2, [r3, #0xc]
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #8]
	b .L0803CBF4
	.align 2, 0
.L0803CBC8: .4byte 0x05000200
.L0803CBCC: .4byte 0x06010000
.L0803CBD0: .4byte 0xFFFF3FFF
.L0803CBD4: .4byte 0x3FFFFFFF
.L0803CBD8: .4byte 0xFFFFFF00
.L0803CBDC: .4byte 0x000001FF
.L0803CBE0: .4byte 0xFE00FFFF
.L0803CBE4: .4byte 0xFFFFFC00
.L0803CBE8: .4byte 0xFFFF0FFF
.L0803CBEC: .4byte 0x000002F1
.L0803CBF0: .4byte 0x000002F2
.L0803CBF4:
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x8c]
	adds r1, r3, #0
	bl _call_via_r2
.L0803CBFE:
	movs r0, #0xbf
	lsls r0, r0, #2
	adds r3, r6, r0
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0803CC2E
	ldr r2, [sp, #0x10]
	mov r1, sl
	lsls r0, r1, #5
	ldr r1, .L0803CD38 @ =0x05000200
	adds r0, r0, r1
	movs r1, #0x20
	str r2, [r3, #0xc]
	str r0, [r3, #0x10]
	str r1, [r3, #0x14]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x8c]
	adds r1, r3, #0
	bl _call_via_r2
.L0803CC2E:
	movs r0, #0
	strb r0, [r7]
.L0803CC32:
	mov r1, sb
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0803CD3C @ =0xFFFFFC00
	add r3, sp, #0x48
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	mov r2, sl
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xf
	ands r0, r2
	lsls r0, r0, #0xc
	ldr r2, .L0803CD40 @ =0xFFFF0FFF
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	mov r0, r8
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi .L0803CC72
	lsls r0, r2, #3
	adds r0, #4
	add r0, r8
	ldr r1, [sp, #0x48]
	str r1, [r0]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	mov r1, r8
	strb r0, [r1]
.L0803CC72:
	movs r0, #0xce
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r1, [r2, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0803CD28
	adds r0, r2, #0
	bl func_08007D4C
	adds r7, r0, #0
	movs r1, #0xd6
	lsls r1, r1, #2
	adds r1, r1, r6
	mov sl, r1
	ldrb r0, [r1]
	cmp r0, #0
	beq .L0803CCEC
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r5, r6, r2
	ldr r1, [r5]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov sb, r0
	cmp r0, #0
	bne .L0803CCEC
	ldr r4, [r6]
	add r0, sp, #0x50
	ldr r3, [r4, #0xc]
	adds r1, r6, #0
	movs r2, #5
	bl _call_via_r3
	ldr r0, [sp, #0x50]
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r4, #0x10]
	adds r1, r6, #0
	bl _call_via_r3
	ldr r2, [sp, #8]
	lsls r0, r7, #5
	ldr r1, .L0803CD44 @ =0x06010000
	adds r0, r0, r1
	movs r1, #0x80
	str r2, [r5, #0xc]
	str r0, [r5, #0x10]
	str r1, [r5, #0x14]
	ldr r2, [sp, #0x8c]
	ldr r0, [r2, #8]
	ldr r2, [r0, #0x10]
	ldr r0, [sp, #0x8c]
	adds r1, r5, #0
	bl _call_via_r2
	mov r1, sb
	mov r0, sl
	strb r1, [r0]
.L0803CCEC:
	add r3, sp, #0x48
	ldr r2, .L0803CD48 @ =0x000003FF
	adds r0, r2, #0
	ands r7, r0
	ldrh r1, [r3, #4]
	ldr r0, .L0803CD3C @ =0xFFFFFC00
	ands r0, r1
	orrs r0, r7
	strh r0, [r3, #4]
	ldr r0, [sp, #0x58]
	lsls r2, r0, #4
	ldrb r1, [r3, #5]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #5]
	mov r1, r8
	ldrb r2, [r1]
	cmp r2, #0x7f
	bhi .L0803CD28
	lsls r0, r2, #3
	adds r0, #4
	add r0, r8
	ldr r1, [sp, #0x48]
	str r1, [r0]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	mov r2, r8
	strb r0, [r2]
.L0803CD28:
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0803CD38: .4byte 0x05000200
.L0803CD3C: .4byte 0xFFFFFC00
.L0803CD40: .4byte 0xFFFF0FFF
.L0803CD44: .4byte 0x06010000
.L0803CD48: .4byte 0x000003FF

	thumb_func_start func_0803CD4C
func_0803CD4C: @ 0x0803CD4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	str r1, [sp, #0x20]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x24]
	ldr r7, [r0]
	ldrb r0, [r1, #1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq .L0803CD7E
	cmp r0, #1
	ble .L0803CD78
	cmp r0, #2
	beq .L0803CD84
	cmp r0, #3
	beq .L0803CD8A
.L0803CD78:
	movs r5, #0xb
	movs r6, #0xc
	b .L0803CD8E
.L0803CD7E:
	movs r5, #0xd
	movs r6, #0xe
	b .L0803CD8E
.L0803CD84:
	movs r5, #0xf
	movs r6, #0x10
	b .L0803CD8E
.L0803CD8A:
	movs r5, #0x11
	movs r6, #0x12
.L0803CD8E:
	adds r0, r7, #0
	adds r0, #0x84
	lsls r1, r5, #5
	ldr r2, .L0803CE30 @ =gUnk_0875A440
	mov sl, r2
	add r1, sl
	movs r2, #0x20
	bl memcpy
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r4]
	lsls r1, r6, #5
	add r1, sl
	adds r0, r7, #0
	adds r0, #0xa4
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	strb r0, [r4]
	ldr r1, [sp, #0x20]
	ldrb r3, [r1, #1]
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	adds r5, r0, #0
	ldrb r2, [r1]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x1e
	adds r2, #6
	lsls r1, r3, #4
	subs r1, r1, r3
	lsls r1, r1, #1
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r5
	subs r1, #1
	mov sb, r4
	cmp r1, #6
	bls .L0803CDFA
	adds r0, r1, #0
	movs r1, #7
	bl __umodsi3
	adds r1, r0, #0
.L0803CDFA:
	movs r0, #7
	adds r6, r0, #0
	ands r6, r1
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r5, r0, #0
	cmp r4, #0
	ble .L0803CE34
	lsls r1, r4, #5
	add r1, sl
	adds r0, r7, #0
	adds r0, #0xc4
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	mov r2, sb
	strb r0, [r2]
	b .L0803CE50
	.align 2, 0
.L0803CE30: .4byte gUnk_0875A440
.L0803CE34:
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	adds r0, r7, #0
	adds r0, #0xc4
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r2, r8
	mov r1, sb
	strb r2, [r1]
.L0803CE50:
	lsls r1, r5, #5
	ldr r0, .L0803CE74 @ =gUnk_0875A440
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0xe4
	movs r2, #0x20
	bl memcpy
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	cmp r6, #6
	bhi .L0803CE98
	lsls r0, r6, #2
	ldr r1, .L0803CE78 @ =.L0803CE7C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0803CE74: .4byte gUnk_0875A440
.L0803CE78: .4byte .L0803CE7C
.L0803CE7C: @ jump table
	.4byte .L0803CE98 @ case 0
	.4byte .L0803CEA4 @ case 1
	.4byte .L0803CEB0 @ case 2
	.4byte .L0803CEBC @ case 3
	.4byte .L0803CEC8 @ case 4
	.4byte .L0803CED4 @ case 5
	.4byte .L0803CEE0 @ case 6
.L0803CE98:
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0x61
	str r0, [sp, #4]
	movs r0, #0x62
	b .L0803CEEA
.L0803CEA4:
	movs r0, #0x63
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	movs r0, #0x65
	b .L0803CEEA
.L0803CEB0:
	movs r0, #0x66
	str r0, [sp]
	movs r0, #0x67
	str r0, [sp, #4]
	movs r0, #0x68
	b .L0803CEEA
.L0803CEBC:
	movs r0, #0x69
	str r0, [sp]
	movs r0, #0x6a
	str r0, [sp, #4]
	movs r0, #0x6b
	b .L0803CEEA
.L0803CEC8:
	movs r0, #0x6c
	str r0, [sp]
	movs r0, #0x6d
	str r0, [sp, #4]
	movs r0, #0x6e
	b .L0803CEEA
.L0803CED4:
	movs r0, #0x6f
	str r0, [sp]
	movs r0, #0x70
	str r0, [sp, #4]
	movs r0, #0x71
	b .L0803CEEA
.L0803CEE0:
	movs r0, #0x72
	str r0, [sp]
	movs r0, #0x73
	str r0, [sp, #4]
	movs r0, #0x74
.L0803CEEA:
	str r0, [sp, #8]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r1, [sp]
	lsls r1, r1, #5
	ldr r2, .L0803CF90 @ =gUnk_0875A440
	mov r8, r2
	add r1, r8
	movs r2, #0x20
	bl memcpy
	movs r0, #0xac
	lsls r0, r0, #2
	adds r4, r7, r0
	movs r6, #1
	strb r6, [r4]
	ldr r1, [sp, #4]
	lsls r1, r1, #5
	add r1, r8
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	strb r6, [r4]
	ldr r1, [sp, #8]
	lsls r1, r1, #5
	add r1, r8
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	strb r6, [r4]
	ldr r1, [sp, #0x20]
	ldr r0, [r1]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x1b
	adds r5, r0, #0
	movs r1, #0x1e
	str r4, [sp, #0x2c]
	cmp r5, #0xb
	bhi .L0803CF48
	movs r1, #0x1c
.L0803CF48:
	lsls r1, r1, #5
	add r1, r8
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	mov r0, sb
	strb r6, [r0]
	movs r4, #0xc
	cmp r5, #0xc
	beq .L0803CF6A
	adds r4, r5, #0
	cmp r4, #0xb
	bls .L0803CF6A
	subs r4, #0xc
.L0803CF6A:
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r4, r0, #0
	cmp r5, #0
	ble .L0803CF94
	lsls r1, r5, #5
	ldr r0, .L0803CF90 @ =gUnk_0875A440
	adds r1, r1, r0
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r7, r2
	b .L0803CFA6
	.align 2, 0
.L0803CF90: .4byte gUnk_0875A440
.L0803CF94:
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r1, sp
.L0803CFA6:
	movs r2, #0x20
	bl memcpy
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	lsls r1, r4, #5
	ldr r2, .L0803D050 @ =gUnk_0875A440
	mov sl, r2
	add r1, sl
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	movs r0, #1
	mov r8, r0
	mov r2, r8
	mov r1, sb
	strb r2, [r1]
	ldr r1, [sp, #0x20]
	ldr r0, [r1]
	lsls r0, r0, #5
	lsrs r0, r0, #0x1a
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r4, r0, #2
	adds r4, r4, r0
	lsls r4, r4, #1
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r4, r0, #0
	lsls r5, r5, #5
	add r5, sl
	movs r2, #0x8a
	lsls r2, r2, #2
	adds r6, r7, r2
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldr r2, [sp, #0x2c]
	strb r0, [r2]
	lsls r4, r4, #5
	add r4, sl
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldr r2, [sp, #0x2c]
	strb r0, [r2]
	ldr r1, [sp, #0x24]
	cmp r1, #0
	beq .L0803D054
	movs r1, #0xa0
	lsls r1, r1, #1
	add r1, sl
	adds r0, r6, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldr r2, [sp, #0x2c]
	strb r0, [r2]
	b .L0803D06E
	.align 2, 0
.L0803D050: .4byte gUnk_0875A440
.L0803D054:
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	adds r0, r6, #0
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r2, r8
	ldr r1, [sp, #0x2c]
	strb r2, [r1]
.L0803D06E:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803D080
func_0803D080: @ 0x0803D080
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, [r0]
	cmp r1, #1
	beq .L0803D09E
	cmp r1, #1
	ble .L0803D096
	cmp r1, #2
	beq .L0803D0A6
	cmp r1, #3
	beq .L0803D0AE
.L0803D096:
	movs r0, #0xb
	str r0, [sp]
	movs r2, #0xc
	b .L0803D0B4
.L0803D09E:
	movs r0, #0xd
	str r0, [sp]
	movs r2, #0xe
	b .L0803D0B4
.L0803D0A6:
	movs r0, #0xf
	str r0, [sp]
	movs r2, #0x10
	b .L0803D0B4
.L0803D0AE:
	movs r0, #0x11
	str r0, [sp]
	movs r2, #0x12
.L0803D0B4:
	str r2, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x84
	ldr r2, [sp]
	lsls r1, r2, #5
	ldr r5, .L0803D0EC @ =gUnk_0875A440
	adds r1, r1, r5
	movs r2, #0x20
	bl memcpy
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r6, r7, r0
	movs r4, #1
	strb r4, [r6]
	ldr r2, [sp, #4]
	lsls r1, r2, #5
	adds r1, r1, r5
	adds r0, r7, #0
	adds r0, #0xa4
	movs r2, #0x20
	bl memcpy
	strb r4, [r6]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0803D0EC: .4byte gUnk_0875A440

	thumb_func_start func_0803D0F0
func_0803D0F0: @ 0x0803D0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r7, [r0]
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r4, r0, #0
	cmp r5, #0
	ble .L0803D130
	lsls r1, r5, #5
	ldr r0, .L0803D12C @ =gUnk_0875A440
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0xc4
	movs r2, #0x20
	bl memcpy
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r7, r0
	b .L0803D14C
	.align 2, 0
.L0803D12C: .4byte gUnk_0875A440
.L0803D130:
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	adds r0, r7, #0
	adds r0, #0xc4
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r1, r7, r2
.L0803D14C:
	movs r0, #1
	strb r0, [r1]
	lsls r1, r4, #5
	ldr r0, .L0803D178 @ =gUnk_0875A440
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0xe4
	movs r2, #0x20
	bl memcpy
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	cmp r6, #6
	bhi .L0803D19C
	lsls r0, r6, #2
	ldr r1, .L0803D17C @ =.L0803D180
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0803D178: .4byte gUnk_0875A440
.L0803D17C: .4byte .L0803D180
.L0803D180: @ jump table
	.4byte .L0803D19C @ case 0
	.4byte .L0803D1A8 @ case 1
	.4byte .L0803D1B4 @ case 2
	.4byte .L0803D1C0 @ case 3
	.4byte .L0803D1CC @ case 4
	.4byte .L0803D1D8 @ case 5
	.4byte .L0803D1E4 @ case 6
.L0803D19C:
	movs r0, #0x60
	str r0, [sp]
	movs r0, #0x61
	str r0, [sp, #4]
	movs r0, #0x62
	b .L0803D1EE
.L0803D1A8:
	movs r0, #0x63
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	movs r0, #0x65
	b .L0803D1EE
.L0803D1B4:
	movs r0, #0x66
	str r0, [sp]
	movs r0, #0x67
	str r0, [sp, #4]
	movs r0, #0x68
	b .L0803D1EE
.L0803D1C0:
	movs r0, #0x69
	str r0, [sp]
	movs r0, #0x6a
	str r0, [sp, #4]
	movs r0, #0x6b
	b .L0803D1EE
.L0803D1CC:
	movs r0, #0x6c
	str r0, [sp]
	movs r0, #0x6d
	str r0, [sp, #4]
	movs r0, #0x6e
	b .L0803D1EE
.L0803D1D8:
	movs r0, #0x6f
	str r0, [sp]
	movs r0, #0x70
	str r0, [sp, #4]
	movs r0, #0x71
	b .L0803D1EE
.L0803D1E4:
	movs r0, #0x72
	str r0, [sp]
	movs r0, #0x73
	str r0, [sp, #4]
	movs r0, #0x74
.L0803D1EE:
	str r0, [sp, #8]
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [sp]
	lsls r1, r1, #5
	ldr r5, .L0803D23C @ =gUnk_0875A440
	adds r1, r1, r5
	movs r2, #0x20
	bl memcpy
	movs r2, #0xac
	lsls r2, r2, #2
	adds r6, r7, r2
	movs r4, #1
	strb r4, [r6]
	ldr r1, [sp, #4]
	lsls r1, r1, #5
	adds r1, r1, r5
	subs r2, #0xe8
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	strb r4, [r6]
	ldr r1, [sp, #8]
	lsls r1, r1, #5
	adds r1, r1, r5
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r2, #0x20
	bl memcpy
	strb r4, [r6]
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0803D23C: .4byte gUnk_0875A440

	thumb_func_start func_0803D240
func_0803D240: @ 0x0803D240
	push {r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r1, #0
	ldr r6, [r0]
	movs r1, #0x1e
	cmp r5, #0xb
	bhi .L0803D250
	movs r1, #0x1c
.L0803D250:
	lsls r1, r1, #5
	ldr r0, .L0803D2A4 @ =gUnk_0875A440
	adds r1, r1, r0
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r6, r2
	movs r2, #0x20
	bl memcpy
	movs r0, #0xc6
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	movs r4, #0xc
	adds r7, r1, #0
	cmp r5, #0xc
	beq .L0803D27C
	adds r4, r5, #0
	cmp r4, #0xb
	bls .L0803D27C
	subs r4, #0xc
.L0803D27C:
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r4, r0, #0
	cmp r5, #0
	ble .L0803D2A8
	lsls r1, r5, #5
	ldr r0, .L0803D2A4 @ =gUnk_0875A440
	adds r1, r1, r0
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r6, r2
	b .L0803D2BA
	.align 2, 0
.L0803D2A4: .4byte gUnk_0875A440
.L0803D2A8:
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	movs r1, #0xa2
	lsls r1, r1, #1
	adds r0, r6, r1
	mov r1, sp
.L0803D2BA:
	movs r2, #0x20
	bl memcpy
	movs r0, #1
	strb r0, [r7]
	lsls r1, r4, #5
	ldr r0, .L0803D2E4 @ =gUnk_0875A440
	adds r1, r1, r0
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r6, r2
	movs r2, #0x20
	bl memcpy
	movs r0, #1
	strb r0, [r7]
	add sp, #0x20
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0803D2E4: .4byte gUnk_0875A440

	thumb_func_start func_0803D2E8
func_0803D2E8: @ 0x0803D2E8
	push {r4, lr}
	sub sp, #0x20
	lsls r1, r1, #0x18
	ldr r4, [r0]
	cmp r1, #0
	beq .L0803D314
	ldr r1, .L0803D310 @ =gUnk_0875A440
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r1, r1, r0
	movs r2, #0x8a
	lsls r2, r2, #2
	adds r0, r4, r2
	movs r2, #0x20
	bl memcpy
	movs r0, #0xac
	lsls r0, r0, #2
	adds r1, r4, r0
	b .L0803D332
	.align 2, 0
.L0803D310: .4byte gUnk_0875A440
.L0803D314:
	mov r0, sp
	movs r1, #0
	movs r2, #0x20
	bl memset
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r0, r4, r1
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	movs r2, #0xac
	lsls r2, r2, #2
	adds r1, r4, r2
.L0803D332:
	movs r0, #1
	strb r0, [r1]
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803D340
func_0803D340: @ 0x0803D340
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r1, #0
	ldr r7, [r0]
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	adds r5, r0, #0
	lsls r4, r4, #5
	ldr r0, .L0803D39C @ =gUnk_0875A440
	mov r8, r0
	add r4, r8
	movs r1, #0x92
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	movs r0, #0xac
	lsls r0, r0, #2
	adds r6, r7, r0
	movs r4, #1
	strb r4, [r6]
	lsls r5, r5, #5
	add r5, r8
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r7, r1
	adds r1, r5, #0
	movs r2, #0x20
	bl memcpy
	strb r4, [r6]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0803D39C: .4byte gUnk_0875A440

	thumb_func_start func_0803D3A0
func_0803D3A0: @ 0x0803D3A0
	push {lr}
	ldr r2, [r0]
	movs r3, #0xb3
	lsls r3, r3, #2
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r1, #4
	bhi .L0803D3E6
	lsls r0, r1, #2
	ldr r1, .L0803D3BC @ =.L0803D3C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0803D3BC: .4byte .L0803D3C0
.L0803D3C0: @ jump table
	.4byte .L0803D3D4 @ case 0
	.4byte .L0803D3D8 @ case 1
	.4byte .L0803D3DC @ case 2
	.4byte .L0803D3E0 @ case 3
	.4byte .L0803D3E4 @ case 4
.L0803D3D4:
	movs r0, #0
	b .L0803D3E6
.L0803D3D8:
	movs r0, #1
	b .L0803D3E6
.L0803D3DC:
	movs r0, #2
	b .L0803D3E6
.L0803D3E0:
	movs r0, #3
	b .L0803D3E6
.L0803D3E4:
	movs r0, #4
.L0803D3E6:
	movs r3, #0xb3
	lsls r3, r3, #2
	adds r1, r2, r3
	ldrb r3, [r1]
	cmp r0, r3
	beq .L0803D3FE
	strb r0, [r1]
	movs r0, #0xbc
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
.L0803D3FE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0803D404
func_0803D404: @ 0x0803D404
	push {r4, lr}
	adds r3, r1, #0
	ldr r2, [r0]
	ldr r0, .L0803D438 @ =0x000002F1
	adds r1, r2, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq .L0803D41E
	ldr r4, .L0803D43C @ =0x000002F2
	adds r0, r2, r4
	ldrh r0, [r0]
	cmp r3, r0
	beq .L0803D430
.L0803D41E:
	movs r0, #1
	strb r0, [r1]
	ldr r4, .L0803D43C @ =0x000002F2
	adds r1, r2, r4
	strh r3, [r1]
	movs r3, #0xcd
	lsls r3, r3, #2
	adds r1, r2, r3
	strb r0, [r1]
.L0803D430:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L0803D438: .4byte 0x000002F1
.L0803D43C: .4byte 0x000002F2

	thumb_func_start func_0803D440
func_0803D440: @ 0x0803D440
	push {lr}
	ldr r1, [r0]
	ldr r0, .L0803D460 @ =0x000002F1
	adds r2, r1, r0
	ldrb r0, [r2]
	cmp r0, #0
	beq .L0803D45C
	movs r0, #0
	strb r0, [r2]
	movs r0, #0xcd
	lsls r0, r0, #2
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
.L0803D45C:
	pop {r0}
	bx r0
	.align 2, 0
.L0803D460: .4byte 0x000002F1
.L0803D464:
	.byte 0x00, 0xB5, 0x08, 0x30, 0xFF, 0xF7, 0xEA, 0xFF, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x08, 0x30, 0xFF, 0xF7, 0xC6, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x08, 0x30
	.byte 0xFF, 0xF7, 0x8E, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x08, 0x30, 0xFF, 0xF7, 0x58, 0xFF
	.byte 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x09, 0x06, 0x09, 0x0E, 0x08, 0x30, 0xFF, 0xF7, 0x24, 0xFF
	.byte 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x08, 0x30, 0xFF, 0xF7, 0xCA, 0xFE, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x08, 0x30, 0xFF, 0xF7, 0x1C, 0xFE, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x08, 0x30
	.byte 0xFF, 0xF7, 0xDE, 0xFD, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x12, 0x06, 0x12, 0x0E, 0x08, 0x30
	.byte 0xFF, 0xF7, 0x3C, 0xFC, 0x01, 0xBC, 0x00, 0x47

	thumb_func_start func_0803D4D8
func_0803D4D8: @ 0x0803D4D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	adds r1, r2, #0
	adds r7, r3, #0
	ldr r3, [sp, #0x1c]
	adds r2, r7, #0
	bl func_0803BEB0
	adds r6, r0, #0
	cmp r6, #3
	bne .L0803D51C
	ldr r0, [r5, #4]
	ldr r1, [r0, #0x1c]
	adds r0, r5, #0
	bl _call_via_r1
	adds r4, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [r0, #0x20]
	adds r0, r5, #0
	bl _call_via_r1
	adds r2, r0, #0
	adds r0, r5, #0
	adds r0, #8
	str r7, [sp]
	adds r1, r4, #0
	mov r3, r8
	bl func_0803C7C8
.L0803D51C:
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803D52C
func_0803D52C: @ 0x0803D52C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r5, r1, #0
	ldrb r3, [r5, #1]
	add r4, sp, #8
	strb r3, [r4]
	ldrb r2, [r5]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	lsls r0, r3, #0x1e
	lsrs r0, r0, #0x1e
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1b
	adds r2, #6
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r3, r3, r1
	mov r8, r4
	cmp r3, #6
	bls .L0803D572
	adds r0, r3, #0
	movs r1, #7
	bl __umodsi3
	adds r3, r0, #0
.L0803D572:
	movs r1, #8
	rsbs r1, r1, #0
	movs r0, #7
	ands r0, r3
	ands r1, r6
	adds r6, r1, #0
	orrs r6, r0
	movs r3, #0xc8
	str r3, [sp]
	ldrb r0, [r5]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #4]
	add r0, sp, #4
	mov r2, sp
	cmp r3, r1
	bls .L0803D59E
	adds r2, r0, #0
.L0803D59E:
	ldr r4, [r2]
	ldr r0, [r5]
	lsls r0, r0, #0xb
	lsrs r0, r0, #0x1b
	cmp r0, #5
	bhi .L0803D612
	mov r5, r8
	ldrb r3, [r5]
	lsls r0, r3, #0x19
	lsrs r2, r0, #0x1b
	cmp r2, #0
	bne .L0803D5CE
	lsls r0, r3, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	rsbs r1, r1, #0
	subs r0, #1
	movs r2, #3
	ands r0, r2
	ands r1, r3
	orrs r1, r0
	strb r1, [r5]
	movs r2, #0x1d
	b .L0803D5D0
.L0803D5CE:
	subs r2, #1
.L0803D5D0:
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #2
	ldrb r1, [r5]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne .L0803D5F8
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0x1d
	bne .L0803D5F8
	subs r4, #1
.L0803D5F8:
	lsls r0, r6, #0x1d
	lsrs r0, r0, #0x1d
	movs r1, #6
	cmp r0, #1
	ble .L0803D604
	subs r1, r0, #1
.L0803D604:
	movs r0, #7
	ands r1, r0
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r6
	adds r6, r0, #0
	orrs r6, r1
.L0803D612:
	strb r4, [r7]
	mov r1, r8
	ldrb r0, [r1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	strb r0, [r7, #1]
	add r0, sp, #8
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	strb r0, [r7, #2]
	lsls r0, r6, #0x1d
	lsrs r0, r0, #0x1d
	strb r0, [r7, #3]
	adds r0, r7, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

