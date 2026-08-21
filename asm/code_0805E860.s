	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_0805E860
func_0805E860: @ 0x0805E860
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r1, [r4]
	ldr r3, [r1]
	mov r0, sp
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r4, #4]
	str r1, [r4, #8]
	movs r0, #0
	strh r0, [r4, #0xc]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	strh r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0x12]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_0805E894
func_0805E894: @ 0x0805E894
	push {r4, r5, lr}
	movs r1, #0x10
	ldrsh r3, [r0, r1]
	ldrh r2, [r0, #0xe]
	cmp r3, #0
	beq .L0805E8E8
	cmp r2, #0
	beq .L0805E8E8
	adds r1, r3, #0
	cmp r3, #0
	bge .L0805E8AC
	rsbs r1, r3, #0
.L0805E8AC:
	subs r2, r2, r1
	cmp r2, #0
	bgt .L0805E8E8
	ldrh r1, [r0, #0xc]
	adds r4, r0, #4
	ldr r0, [r0, #4]
	movs r5, #0
	cmp r0, #0
	beq .L0805E8C0
	ldrh r5, [r4, #4]
.L0805E8C0:
	adds r4, r0, #0
.L0805E8C2:
	cmp r3, #0
	ble .L0805E8D0
	adds r1, #1
	cmp r1, r5
	blo .L0805E8D6
.L0805E8CC:
	movs r0, #1
	b .L0805E8EA
.L0805E8D0:
	cmp r1, #0
	beq .L0805E8CC
	subs r1, #1
.L0805E8D6:
	lsls r0, r1, #2
	adds r0, r4, r0
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq .L0805E8E8
	lsls r0, r0, #8
	adds r2, r2, r0
	cmp r2, #0
	ble .L0805E8C2
.L0805E8E8:
	movs r0, #0
.L0805E8EA:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0805E8F0
func_0805E8F0: @ 0x0805E8F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	movs r7, #0
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq .L0805E908
	movs r7, #2
	movs r0, #0
	strb r0, [r4, #0x12]
.L0805E908:
	movs r1, #0x10
	ldrsh r0, [r4, r1]
	mov ip, r0
	ldrh r3, [r4, #0xe]
	cmp r0, #0
	beq .L0805E98C
	cmp r3, #0
	beq .L0805E98C
	cmp r0, #0
	bge .L0805E91E
	rsbs r0, r0, #0
.L0805E91E:
	subs r3, r3, r0
	cmp r3, #0
	bgt .L0805E98A
	ldrh r2, [r4, #0xc]
	adds r5, r4, #4
	lsls r0, r2, #2
	ldr r1, [r4, #4]
	adds r0, r1, r0
	ldrh r0, [r0]
	mov sb, r0
	movs r0, #1
	orrs r7, r0
	movs r0, #0
	adds r6, r1, #0
	cmp r6, #0
	beq .L0805E940
	ldrh r0, [r5, #4]
.L0805E940:
	adds r5, r0, #0
	movs r0, #4
	mov r8, r0
.L0805E946:
	mov r1, ip
	cmp r1, #0
	ble .L0805E95A
	adds r2, #1
	cmp r2, r5
	blo .L0805E966
	movs r2, #0
	mov r0, r8
	orrs r7, r0
	b .L0805E966
.L0805E95A:
	cmp r2, #0
	bne .L0805E964
	adds r2, r5, #0
	mov r1, r8
	orrs r7, r1
.L0805E964:
	subs r2, #1
.L0805E966:
	lsls r1, r2, #2
	adds r0, r6, r1
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq .L0805E97A
	lsls r0, r0, #8
	adds r3, r3, r0
	cmp r3, #0
	bgt .L0805E97C
	b .L0805E946
.L0805E97A:
	movs r3, #0
.L0805E97C:
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, sb
	beq .L0805E988
	movs r0, #2
	orrs r7, r0
.L0805E988:
	strh r2, [r4, #0xc]
.L0805E98A:
	strh r3, [r4, #0xe]
.L0805E98C:
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0805E99C
func_0805E99C: @ 0x0805E99C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x24]
	adds r7, r3, #0
	mov sl, r1
	lsls r2, r2, #3
	add r2, sl
	str r2, [sp, #0x28]
	cmp sl, r2
	bne .L0805E9BA
	b .L0805EBDE
.L0805E9BA:
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [r2, #4]
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x1e
	adds r3, r0, #0
	lsrs r1, r1, #0x1e
	cmp r3, #0
	bne .L0805E9E0
	movs r3, #8
	mov sb, r3
	mov r0, sb
	lsls r0, r1
	mov sb, r0
	mov r6, sb
	b .L0805EA00
.L0805E9E0:
	adds r0, r1, #1
	lsrs r0, r0, #1
	adds r0, #1
	movs r2, #8
	lsls r2, r0
	movs r0, #8
	cmp r1, #1
	beq .L0805E9F2
	lsrs r0, r2, #1
.L0805E9F2:
	cmp r3, #1
	beq .L0805E9FC
	mov sb, r2
	adds r6, r0, #0
	b .L0805EA00
.L0805E9FC:
	mov sb, r0
	adds r6, r2, #0
.L0805EA00:
	ldr r4, [sp, #0x1c]
	lsls r0, r4, #7
	asrs r5, r0, #0x17
	str r5, [sp, #0xc]
	add r1, sp, #0x1c
	movs r0, #0
	ldrsb r0, [r1, r0]
	str r0, [sp, #0x10]
	ldr r2, [r7, #0x14]
	mov r8, r2
	adds r3, r4, #0
	cmp r2, #0
	bne .L0805EA6C
	ldrb r2, [r7, #0x10]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r2
	cmp r0, #0
	beq .L0805EA3E
	adds r0, r5, r6
	rsbs r0, r0, #0
	str r0, [sp, #0xc]
	lsls r1, r3, #3
	lsrs r1, r1, #0x1f
	eors r1, r4
	ands r1, r4
	lsls r1, r1, #0x1c
	ldr r0, .L0805EA64 @ =0xEFFFFFFF
	ands r0, r3
	orrs r0, r1
	str r0, [sp, #0x1c]
.L0805EA3E:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq .L0805EB04
	ldr r0, [sp, #0x10]
	add r0, sb
	rsbs r0, r0, #0
	str r0, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #2
	lsrs r1, r1, #0x1f
	eors r1, r4
	ands r1, r4
	lsls r1, r1, #0x1d
	ldr r0, .L0805EA68 @ =0xDFFFFFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x1c]
	b .L0805EB04
	.align 2, 0
.L0805EA64: .4byte 0xEFFFFFFF
.L0805EA68: .4byte 0xDFFFFFFF
.L0805EA6C:
	ldrb r3, [r7, #0x11]
	movs r0, #7
	ands r0, r3
	lsls r0, r0, #0x19
	ldr r2, .L0805EBF0 @ =0xF1FFFFFF
	ands r2, r4
	orrs r2, r0
	movs r0, #8
	ands r0, r3
	lsrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #0x1c
	ldr r1, .L0805EBF4 @ =0xEFFFFFFF
	ands r2, r1
	orrs r2, r0
	movs r0, #0x10
	ands r0, r3
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #0x1d
	ldr r1, .L0805EBF8 @ =0xDFFFFFFF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x1c]
	movs r0, #0x1f
	ands r3, r0
	lsls r3, r3, #5
	adds r3, #4
	ldr r2, [sp, #0x24]
	adds r3, r2, r3
	ldr r2, .L0805EBFC @ =0xFFFF0000
	ldrh r1, [r3, #0xe]
	lsls r1, r1, #0x10
	ldr r4, .L0805EC00 @ =0x0000FFFF
	ldrh r0, [r3, #6]
	orrs r0, r1
	str r0, [sp, #4]
	ldrh r1, [r3, #0x16]
	ldr r0, [sp, #8]
	ands r0, r2
	orrs r0, r1
	ldrh r1, [r3, #0x1e]
	lsls r1, r1, #0x10
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	str r0, [sp]
	add r0, sp, #0xc
	add r1, sp, #0x10
	adds r2, r6, #0
	mov r3, sb
	bl func_0805EC24
	mov r3, r8
	cmp r3, #3
	bne .L0805EB04
	lsrs r1, r6, #0x1f
	adds r1, r6, r1
	asrs r1, r1, #1
	ldr r0, [sp, #0xc]
	subs r0, r0, r1
	str r0, [sp, #0xc]
	mov r0, sb
	lsrs r1, r0, #0x1f
	add r1, sb
	asrs r1, r1, #1
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
.L0805EB04:
	movs r2, #0
	ldrsh r1, [r7, r2]
	ldr r0, [sp, #0xc]
	adds r3, r0, r1
	str r3, [sp, #0xc]
	movs r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, [sp, #0x10]
	adds r1, r0, r1
	str r1, [sp, #0x10]
	mov r2, r8
	cmp r2, #0
	bne .L0805EB34
	adds r0, r3, r6
	cmp r0, #0
	ble .L0805EBD2
	cmp r3, #0xef
	bgt .L0805EBD2
	mov r2, sb
	adds r0, r1, r2
	cmp r0, #0
	ble .L0805EBD2
	cmp r1, #0x9f
	bgt .L0805EBD2
.L0805EB34:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	ldr r2, .L0805EC04 @ =0xFFFFFF00
	ldr r1, [sp, #0x1c]
	ands r1, r2
	orrs r1, r0
	mov r0, r8
	movs r2, #3
	ands r0, r2
	lsls r2, r0, #8
	ldr r0, .L0805EC08 @ =0xFFFFFCFF
	ands r1, r0
	orrs r1, r2
	ldr r0, [r7, #0xc]
	movs r2, #3
	ands r0, r2
	lsls r0, r0, #0xa
	ldr r2, .L0805EC0C @ =0xFFFFF3FF
	ands r1, r2
	orrs r1, r0
	ldrb r2, [r7, #0x18]
	movs r0, #1
	ands r2, r0
	lsls r2, r2, #0xc
	ldr r0, .L0805EC10 @ =0xFFFFEFFF
	ands r1, r0
	orrs r1, r2
	ldr r0, .L0805EC14 @ =0x000001FF
	ands r3, r0
	lsls r2, r3, #0x10
	ldr r0, .L0805EC18 @ =0xFE00FFFF
	ands r1, r0
	orrs r1, r2
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	lsls r0, r1, #0x16
	lsrs r0, r0, #0x16
	ldrh r2, [r7, #6]
	adds r0, r0, r2
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0805EC1C @ =0xFFFFFC00
	ands r2, r1
	orrs r2, r0
	ldrh r0, [r7, #8]
	movs r3, #3
	ands r0, r3
	lsls r0, r0, #0xa
	ldr r1, .L0805EC0C @ =0xFFFFF3FF
	ands r2, r1
	orrs r2, r0
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x1c
	ldrh r3, [r7, #4]
	adds r1, r1, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #0xc
	ldr r0, .L0805EC20 @ =0xFFFF0FFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi .L0805EBD2
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r0, r1
	ldr r0, [sp, #0x1c]
	str r0, [r1]
	mov r3, sp
	ldrh r0, [r3, #0x20]
	strh r0, [r1, #4]
	adds r0, r2, #1
	ldr r1, [sp, #0x24]
	strb r0, [r1]
.L0805EBD2:
	movs r2, #8
	add sl, r2
	ldr r3, [sp, #0x28]
	cmp sl, r3
	beq .L0805EBDE
	b .L0805E9BA
.L0805EBDE:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805EBF0: .4byte 0xF1FFFFFF
.L0805EBF4: .4byte 0xEFFFFFFF
.L0805EBF8: .4byte 0xDFFFFFFF
.L0805EBFC: .4byte 0xFFFF0000
.L0805EC00: .4byte 0x0000FFFF
.L0805EC04: .4byte 0xFFFFFF00
.L0805EC08: .4byte 0xFFFFFCFF
.L0805EC0C: .4byte 0xFFFFF3FF
.L0805EC10: .4byte 0xFFFFEFFF
.L0805EC14: .4byte 0x000001FF
.L0805EC18: .4byte 0xFE00FFFF
.L0805EC1C: .4byte 0xFFFFFC00
.L0805EC20: .4byte 0xFFFF0FFF
