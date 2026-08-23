    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_080CAD18
func_080CAD18: @ 0x080CAD18
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x88
	mov r8, r0
	adds r5, r2, #0
	mov sb, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, sp
	bl func_0805E6CC
	add r0, sp, #0x30
	movs r6, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #2]
	add r0, sp, #0x34
	mov r1, sp
	adds r2, r5, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	add r0, sp, #0x48
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r6, [r0, #0x10]
	strb r6, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r6, [r0, #0x18]
	add r0, sp, #0x64
	strb r6, [r0]
	add r0, sp, #0x68
	add r2, sp, #0x34
	ldr r1, [sp, #0x34]
	ldr r4, [r1]
	ldrh r3, [r2, #0xc]
	lsls r3, r3, #2
	ldr r2, [sp, #0x38]
	adds r2, r2, r3
	ldrh r2, [r2]
	ldr r3, [r4, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x70]
	mov r1, r8
	str r0, [r1, #4]
	ldr r0, [sp, #0x78]
	str r0, [r1, #8]
	mov r0, sb
	str r0, [r1]
	ldr r0, .L080CAD9C @ =vtable_unk_080E5A28
	str r0, [sp]
	add sp, #0x88
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080CAD9C: .4byte vtable_unk_080E5A28

	.section .text.tail080CADA8, "ax", %progbits
	.section .text.tail080CADB4, "ax", %progbits
	thumb_func_start func_080CADB4
func_080CADB4: @ 0x080CADB4
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x84
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, .L080CADEC @ =vtable_unk_080E85CC
	str r0, [r2]
	adds r4, r5, #0
	stm r4!, {r1}
	movs r0, #0
	str r0, [r4, #4]
	movs r0, #0xc
	bl malloc
	cmp r0, #0
	bne .L080CADDC
	movs r0, #0xc
	bl func_080D3BC0
.L080CADDC:
	str r0, [r0]
	str r0, [r0, #4]
	str r0, [r4, #4]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L080CADEC: .4byte vtable_unk_080E85CC

	thumb_func_start func_080CADF0
func_080CADF0: @ 0x080CADF0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, .L080CAE0C @ =vtable_unk_080E85CC
	str r0, [r1]
	ldr r0, [r5, #8]
	ldr r1, [r0]
	str r1, [sp]
	str r0, [sp, #4]
	b .L080CAE2C
	.align 2, 0
.L080CAE0C: .4byte vtable_unk_080E85CC
.L080CAE10:
	ldr r0, [sp]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq .L080CAE24
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080CAE24:
	ldr r0, [sp]
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, [sp, #4]
.L080CAE2C:
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080CAE10
	adds r4, r5, #4
	adds r0, r4, #0
	bl func_080E586C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq .L080CAE48
	bl free
.L080CAE48:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq .L080CAE56
	adds r0, r5, #0
	bl __builtin_delete
.L080CAE56:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080CAE60
func_080CAE60: @ 0x080CAE60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	mov r8, r1
	adds r5, r2, #0
	mov sb, r3
	ldr r6, [sp, #0x34]
	ldr r4, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x20
	bl __builtin_new
	str r6, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	mov r1, r8
	adds r2, r5, #0
	mov r3, sb
	bl func_0804EA58
	adds r4, r0, #0
	mov r1, sl
	ldr r0, [r1, #8]
	str r0, [sp, #0x10]
	movs r0, #0xc
	bl malloc
	adds r2, r0, #0
	cmp r2, #0
	bne .L080CAEB4
	movs r0, #0xc
	bl func_080D3BC0
	adds r2, r0, #0
.L080CAEB4:
	adds r0, r2, #0
	adds r0, #8
	cmp r0, #0
	beq .L080CAEBE
	str r4, [r2, #8]
.L080CAEBE:
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #4]
	str r0, [r2]
	str r1, [r2, #4]
	str r2, [r1]
	str r2, [r0, #4]
	str r2, [sp, #0xc]
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	adds r1, r4, #0
	bl _call_via_r2
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080CAEEC
func_080CAEEC: @ 0x080CAEEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	adds r5, r3, #0
	ldr r4, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x1c
	bl __builtin_new
	str r4, [sp]
	str r6, [sp, #4]
	mov r1, r8
	mov r2, sb
	adds r3, r5, #0
	bl func_0804EE64
	adds r4, r0, #0
	ldr r0, [r7, #8]
	str r0, [sp, #0xc]
	movs r0, #0xc
	bl malloc
	adds r2, r0, #0
	cmp r2, #0
	bne .L080CAF38
	movs r0, #0xc
	bl func_080D3BC0
	adds r2, r0, #0
.L080CAF38:
	adds r0, r2, #0
	adds r0, #8
	cmp r0, #0
	beq .L080CAF42
	str r4, [r2, #8]
.L080CAF42:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #4]
	str r0, [r2]
	str r1, [r2, #4]
	str r2, [r1]
	str r2, [r0, #4]
	str r2, [sp, #8]
	ldr r0, [r7]
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	adds r1, r4, #0
	bl _call_via_r2
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080CAF6C
func_080CAF6C: @ 0x080CAF6C
	push {r4, lr}
	sub sp, #0x10
	ldr r0, [r0, #8]
	ldr r1, [r0]
	str r1, [sp]
	str r0, [sp, #4]
	b .L080CAFB2
.L080CAF7A:
	ldr r2, [sp]
	ldr r3, [r2, #8]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080CAFAA
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	ldr r0, [sp]
	str r0, [sp, #0xc]
	ldr r4, [r0]
	ldr r1, [r0, #4]
	str r4, [r1]
	str r1, [r4, #4]
	bl free
	str r4, [sp, #8]
	str r4, [sp]
	b .L080CAFAE
.L080CAFAA:
	ldr r0, [r2]
	str r0, [sp]
.L080CAFAE:
	ldr r1, [sp]
	ldr r0, [sp, #4]
.L080CAFB2:
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080CAF7A
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080CAFC4
func_080CAFC4: @ 0x080CAFC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r5, r0, #0
	mov sb, r1
	adds r1, r2, #0
	mov sl, r3
	add r0, sp, #0x38
	ldrb r0, [r0]
	mov r8, r0
	adds r0, r5, #0
	bl func_080CADB4
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, .L080CB08C @ =vtable_unk_080E85BC
	str r0, [r1]
	mov r0, sp
	bl func_080CAC70
	movs r1, #0x85
	lsls r1, r1, #2
	adds r1, r5, r1
	str r1, [sp, #0xc]
	mov ip, sl
	mov r4, sp
	str r4, [sp, #0x10]
	movs r0, #0
	str r0, [r1]
	mov r6, sl
	cmp r6, #8
	bhi .L080CB032
	mov r3, sl
	movs r7, #0x86
	lsls r7, r7, #2
	adds r2, r5, r7
	cmp r6, #0
	beq .L080CB02C
.L080CB018:
	cmp r2, #0
	beq .L080CB024
	adds r1, r2, #0
	ldr r0, [sp, #0x10]
	ldm r0!, {r4, r6, r7}
	stm r1!, {r4, r6, r7}
.L080CB024:
	subs r3, #1
	adds r2, #0xc
	cmp r3, #0
	bne .L080CB018
.L080CB02C:
	mov r0, ip
	ldr r1, [sp, #0xc]
	str r0, [r1]
.L080CB032:
	movs r4, #0x9e
	lsls r4, r4, #2
	adds r0, r5, r4
	mov r6, sb
	str r6, [r0]
	movs r7, #0x9f
	lsls r7, r7, #2
	adds r0, r5, r7
	mov r1, r8
	strb r1, [r0]
	adds r4, #8
	adds r0, r5, r4
	bl func_080CAC70
	adds r7, #0x10
	adds r6, r5, r7
	ldr r0, [sp, #0x34]
	bl strlen
	adds r4, r0, #0
	cmp r4, #8
	bls .L080CB060
	movs r4, #8
.L080CB060:
	adds r0, r6, #0
	ldr r1, [sp, #0x34]
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	movs r1, #0
	strb r1, [r0]
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r5, r1
	mov r4, sl
	str r4, [r0]
	adds r0, r5, #0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080CB08C: .4byte vtable_unk_080E85BC

	thumb_func_start func_080CB090
func_080CB090: @ 0x080CB090
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	mov r8, r0
	ldr r6, .L080CB1D8 @ =0x0600F000
	ldr r5, .L080CB1DC @ =0x0600F800
	movs r4, #0x13
.L080CB0A4:
	ldr r0, .L080CB1E0 @ =0x00030003
	adds r1, r5, #0
	movs r2, #0x1c
	bl func_08008EB8
	ldr r0, .L080CB1E4 @ =0x03FF03FF
	adds r1, r6, #0
	movs r2, #0x20
	bl func_08008EB8
	adds r6, #0x40
	adds r5, #0x40
	subs r4, #1
	cmp r4, #0
	bge .L080CB0A4
	ldr r0, .L080CB1E8 @ =gUnk_0811785C
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	movs r0, #0x9f
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080CB0FA
	add r0, sp, #0x1c
	ldrb r1, [r0, #1]
	lsls r1, r1, #6
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CB1DC @ =0x0600F800
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	mov r0, r8
	movs r2, #0x1c
	movs r3, #2
	bl func_080CAE60
.L080CB0FA:
	movs r4, #0
	movs r0, #0x85
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	cmp r4, r0
	bhs .L080CB146
	add r5, sp, #0x1c
.L080CB10A:
	lsls r0, r4, #2
	ldr r1, .L080CB1EC @ =gUnk_08117860
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	ldrb r1, [r5, #1]
	lsls r1, r1, #6
	ldrb r0, [r5]
	lsls r0, r0, #1
	ldr r2, .L080CB1DC @ =0x0600F800
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	mov r0, r8
	movs r2, #0x1c
	movs r3, #2
	bl func_080CAE60
	adds r4, #1
	movs r0, #0x85
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	cmp r4, r0
	blo .L080CB10A
.L080CB146:
	movs r7, #0xa3
	lsls r7, r7, #2
	add r7, r8
	movs r1, #0
	ldrb r0, [r7]
	cmp r0, #0
	bne .L080CB156
	movs r1, #1
.L080CB156:
	mov sb, r1
	cmp r1, #0
	beq .L080CB15E
	b .L080CB2D2
.L080CB15E:
	add r0, sp, #0x20
	movs r5, #8
	movs r6, #2
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x20]
	mov r4, r8
	adds r4, #0x10
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	adds r0, r7, #0
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x40
	subs r2, r2, r0
	add r0, sp, #0x24
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x24]
	str r7, [sp]
	mov r3, sb
	str r3, [sp, #4]
	movs r5, #1
	str r5, [sp, #8]
	adds r1, r4, #0
	movs r3, #0
	bl func_0804E958
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, r8
	ldr r6, [r0]
	add r0, sp, #0xc
	adds r1, r4, #0
	ldr r2, .L080CB1F0 @ =0x06000B00
	bl func_08008F0C
	add r7, sp, #0xc
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CB1F4
	cmp r1, #0
	beq .L080CB1CE
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CB1CE:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080CB2BA
	.align 2, 0
.L080CB1D8: .4byte 0x0600F000
.L080CB1DC: .4byte 0x0600F800
.L080CB1E0: .4byte 0x00030003
.L080CB1E4: .4byte 0x03FF03FF
.L080CB1E8: .4byte gUnk_0811785C
.L080CB1EC: .4byte gUnk_08117860
.L080CB1F0: .4byte 0x06000B00
.L080CB1F4:
	str r1, [sp, #0x30]
	movs r5, #1
	str r5, [sp, #0x2c]
	ldr r1, [r6]
	ldr r7, [sp, #0x30]
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r2, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L080CB20E
	adds r0, r2, #0
.L080CB20E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CB22E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CB22A
	mov r0, sb
	bl func_080D3BC0
.L080CB22A:
	ldr r1, [r6]
	b .L080CB232
.L080CB22E:
	movs r0, #0
	mov sb, r0
.L080CB232:
	adds r5, r0, #0
	str r5, [sp, #0x34]
	adds r2, r1, #0
	adds r3, r5, #0
	b .L080CB250
.L080CB23C:
	cmp r3, #0
	beq .L080CB24C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB24C:
	adds r2, #0x10
	adds r3, #0x10
.L080CB250:
	ldr r0, [sp, #0x30]
	cmp r2, r0
	bne .L080CB23C
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080CB272
	cmp r5, #0
	beq .L080CB26E
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CB26E:
	adds r5, #0x10
	b .L080CB294
.L080CB272:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CB292
.L080CB27A:
	cmp r2, #0
	beq .L080CB28A
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB28A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CB27A
.L080CB292:
	adds r5, r2, #0
.L080CB294:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CB2A4
.L080CB29E:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CB29E
.L080CB2A4:
	cmp r1, #0
	beq .L080CB2AE
	adds r0, r1, #0
	bl free
.L080CB2AE:
	ldr r0, [sp, #0x34]
	add r0, sb
	ldr r7, [sp, #0x34]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CB2BA:
	ldr r1, .L080CB2E4 @ =0x0600F00C
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	mov r0, r8
	movs r2, #0x58
	movs r3, #8
	bl func_080CAE60
.L080CB2D2:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CB2E4: .4byte 0x0600F00C

	thumb_func_start func_080CB2E8
func_080CB2E8: @ 0x080CB2E8
	adds r2, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	bx lr
	.align 2, 0

	.section .text.tail080CB304, "ax", %progbits
	thumb_func_start func_080CB304
func_080CB304: @ 0x080CB304
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	str r0, [sp, #0x30]
	str r1, [sp, #0x48]
	adds r1, r2, #0
	adds r2, r3, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [sp, #0x48]
	lsls r7, r0, #1
	adds r4, r7, r0
	lsls r4, r4, #2
	ldr r3, [sp, #0x30]
	adds r4, r4, r3
	movs r6, #0x86
	lsls r6, r6, #2
	adds r4, r4, r6
	adds r0, r4, #0
	ldr r3, [sp, #0x70]
	bl func_080CAD18
	ldr r1, [r4, #4]
	ldr r2, [sp, #0x30]
	movs r3, #0x9e
	lsls r3, r3, #2
	adds r0, r2, r3
	ldr r5, [r0]
	ldr r4, [sp, #0x48]
	lsls r2, r4, #7
	ldr r6, .L080CB390 @ =0x06000680
	adds r2, r2, r6
	add r0, sp, #0xc
	movs r3, #0x80
	bl func_08008F0C
	add r0, sp, #0xc
	mov sl, r0
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080CB394
	cmp r1, #0
	beq .L080CB36E
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CB36E:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	str r7, [sp, #0x38]
	ldr r6, [sp, #0x48]
	lsls r6, r6, #5
	str r6, [sp, #0x44]
	ldr r7, [sp, #0x48]
	lsls r7, r7, #2
	str r7, [sp, #0x3c]
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x48]
	adds r1, #3
	str r1, [sp, #0x34]
	b .L080CB482
	.align 2, 0
.L080CB390: .4byte 0x06000680
.L080CB394:
	str r1, [sp, #0x4c]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r1, [r5]
	ldr r2, [sp, #0x4c]
	subs r0, r2, r1
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r2, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L080CB3AE
	adds r0, r2, #0
.L080CB3AE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CB3CE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CB3CA
	mov r0, sb
	bl func_080D3BC0
.L080CB3CA:
	ldr r1, [r5]
	b .L080CB3D2
.L080CB3CE:
	movs r0, #0
	mov sb, r0
.L080CB3D2:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov r3, r8
	ldr r4, [sp, #0x48]
	lsls r4, r4, #1
	str r4, [sp, #0x38]
	ldr r6, [sp, #0x48]
	lsls r6, r6, #5
	str r6, [sp, #0x44]
	ldr r7, [sp, #0x48]
	lsls r7, r7, #2
	str r7, [sp, #0x3c]
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x48]
	adds r1, #3
	str r1, [sp, #0x34]
	ldr r4, [sp, #0x4c]
	cmp r2, r4
	beq .L080CB418
.L080CB3FE:
	cmp r3, #0
	beq .L080CB40E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB40E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x4c]
	cmp r2, r6
	bne .L080CB3FE
.L080CB418:
	adds r4, r3, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L080CB434
	cmp r4, #0
	beq .L080CB430
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB430:
	adds r4, #0x10
	b .L080CB45C
.L080CB434:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080CB45A
.L080CB43C:
	cmp r2, #0
	beq .L080CB44C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB44C:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L080CB43C
.L080CB45A:
	adds r4, r2, #0
.L080CB45C:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CB46C
.L080CB466:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CB466
.L080CB46C:
	cmp r1, #0
	beq .L080CB476
	adds r0, r1, #0
	bl free
.L080CB476:
	mov r0, sb
	add r0, r8
	mov r2, r8
	str r2, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080CB482:
	ldr r3, [sp, #0x38]
	ldr r4, [sp, #0x48]
	adds r0, r3, r4
	lsls r0, r0, #2
	ldr r6, [sp, #0x30]
	adds r0, r0, r6
	movs r7, #0x86
	lsls r7, r7, #2
	adds r0, r0, r7
	ldr r1, [r0, #8]
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r5, [r0]
	ldr r3, [sp, #0x44]
	ldr r4, .L080CB4D0 @ =0x05000060
	adds r2, r3, r4
	add r0, sp, #0xc
	movs r3, #0x20
	bl func_08008F0C
	add r6, sp, #0xc
	mov sb, r6
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080CB4D4
	cmp r1, #0
	beq .L080CB4C8
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB4C8:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080CB59A
	.align 2, 0
.L080CB4D0: .4byte 0x05000060
.L080CB4D4:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r1, [r5]
	mov r4, sl
	subs r0, r4, r1
	asrs r4, r0, #4
	str r4, [sp, #0x24]
	add r2, sp, #0x28
	add r0, sp, #0x24
	cmp r4, #1
	bhs .L080CB4EE
	adds r0, r2, #0
.L080CB4EE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CB50E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CB50A
	mov r0, r8
	bl func_080D3BC0
.L080CB50A:
	ldr r1, [r5]
	b .L080CB512
.L080CB50E:
	movs r0, #0
	mov r8, r0
.L080CB512:
	adds r4, r0, #0
	str r4, [sp, #0x4c]
	adds r2, r1, #0
	adds r3, r4, #0
	cmp r2, sl
	beq .L080CB536
.L080CB51E:
	cmp r3, #0
	beq .L080CB52E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB52E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080CB51E
.L080CB536:
	adds r4, r3, #0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne .L080CB552
	cmp r4, #0
	beq .L080CB54E
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB54E:
	adds r4, #0x10
	b .L080CB574
.L080CB552:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080CB572
.L080CB55A:
	cmp r2, #0
	beq .L080CB56A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB56A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CB55A
.L080CB572:
	adds r4, r2, #0
.L080CB574:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CB584
.L080CB57E:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CB57E
.L080CB584:
	cmp r1, #0
	beq .L080CB58E
	adds r0, r1, #0
	bl free
.L080CB58E:
	ldr r0, [sp, #0x4c]
	add r0, r8
	ldr r1, [sp, #0x4c]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080CB59A:
	ldr r0, .L080CB62C @ =gUnk_08117860
	ldr r2, [sp, #0x3c]
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	ldr r3, [sp, #0x40]
	ldrb r1, [r3, #1]
	lsls r1, r1, #6
	add r4, sp, #0x2c
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldr r2, .L080CB630 @ =0x0600F000
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r2, [sp, #0x3c]
	adds r2, #0x34
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #2
	str r0, [sp]
	ldr r6, [sp, #0x34]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r5, #0x20
	str r5, [sp, #8]
	ldr r0, [sp, #0x30]
	movs r3, #2
	bl func_080CAE60
	ldr r7, [sp, #0x40]
	ldrb r1, [r7, #1]
	lsls r1, r1, #6
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldr r2, .L080CB634 @ =0x0600F080
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x30]
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	ldr r3, [sp, #0x70]
	cmp r3, #1
	bls .L080CB61C
	ldrb r2, [r7, #1]
	lsls r2, r2, #6
	ldrb r0, [r7]
	lsls r0, r0, #1
	ldr r6, .L080CB638 @ =0x0600F082
	adds r0, r0, r6
	adds r2, r2, r0
	str r4, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x30]
	adds r1, r3, #0
	movs r3, #0x20
	bl func_080CAEEC
.L080CB61C:
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CB62C: .4byte gUnk_08117860
.L080CB630: .4byte 0x0600F000
.L080CB634: .4byte 0x0600F080
.L080CB638: .4byte 0x0600F082

	thumb_func_start func_080CB63C
func_080CB63C: @ 0x080CB63C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	str r0, [sp, #0x30]
	adds r5, r1, #0
	adds r4, r2, #0
	str r3, [sp, #0x34]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	ldr r1, [sp, #0x30]
	adds r0, r0, r1
	movs r2, #0x86
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r4, #0
	adds r2, r3, #0
	ldr r3, [sp, #0x6c]
	bl func_080CADA0
	ldr r3, [sp, #0x30]
	movs r6, #0x9e
	lsls r6, r6, #2
	adds r0, r3, r6
	ldr r6, [r0]
	lsls r2, r5, #7
	ldr r7, .L080CB6BC @ =0x06000680
	adds r2, r2, r7
	add r0, sp, #0xc
	adds r1, r4, #0
	movs r3, #0x80
	bl func_08008F0C
	add r0, sp, #0xc
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CB6C0
	cmp r1, #0
	beq .L080CB6A0
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CB6A0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	lsls r6, r5, #5
	str r6, [sp, #0x44]
	lsls r7, r5, #2
	str r7, [sp, #0x3c]
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0x40]
	adds r5, #3
	str r5, [sp, #0x38]
	b .L080CB79C
	.align 2, 0
.L080CB6BC: .4byte 0x06000680
.L080CB6C0:
	str r1, [sp, #0x48]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r1, [r6]
	ldr r2, [sp, #0x48]
	subs r0, r2, r1
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r2, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L080CB6DA
	adds r0, r2, #0
.L080CB6DA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CB6FA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CB6F6
	mov r0, sb
	bl func_080D3BC0
.L080CB6F6:
	ldr r1, [r6]
	b .L080CB6FE
.L080CB6FA:
	movs r0, #0
	mov sb, r0
.L080CB6FE:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov r3, r8
	lsls r4, r5, #5
	str r4, [sp, #0x44]
	lsls r7, r5, #2
	str r7, [sp, #0x3c]
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0x40]
	adds r5, #3
	str r5, [sp, #0x38]
	ldr r1, [sp, #0x48]
	cmp r2, r1
	beq .L080CB738
.L080CB71E:
	cmp r3, #0
	beq .L080CB72E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB72E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x48]
	cmp r2, r0
	bne .L080CB71E
.L080CB738:
	adds r4, r3, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L080CB754
	cmp r4, #0
	beq .L080CB750
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080CB750:
	adds r4, #0x10
	b .L080CB776
.L080CB754:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080CB774
.L080CB75C:
	cmp r2, #0
	beq .L080CB76C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB76C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CB75C
.L080CB774:
	adds r4, r2, #0
.L080CB776:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CB786
.L080CB780:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CB780
.L080CB786:
	cmp r1, #0
	beq .L080CB790
	adds r0, r1, #0
	bl free
.L080CB790:
	mov r0, sb
	add r0, r8
	mov r7, r8
	str r7, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L080CB79C:
	ldr r1, [sp, #0x30]
	movs r2, #0x9e
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r5, [r0]
	ldr r3, [sp, #0x44]
	ldr r4, .L080CB7DC @ =0x05000060
	adds r2, r3, r4
	add r0, sp, #0xc
	ldr r1, [sp, #0x34]
	movs r3, #0x20
	bl func_08008F0C
	add r6, sp, #0xc
	mov sb, r6
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080CB7E0
	cmp r1, #0
	beq .L080CB7D2
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB7D2:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080CB8A6
	.align 2, 0
.L080CB7DC: .4byte 0x05000060
.L080CB7E0:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r1, [r5]
	mov r4, sl
	subs r0, r4, r1
	asrs r4, r0, #4
	str r4, [sp, #0x24]
	add r2, sp, #0x28
	add r0, sp, #0x24
	cmp r4, #1
	bhs .L080CB7FA
	adds r0, r2, #0
.L080CB7FA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CB81A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CB816
	mov r0, r8
	bl func_080D3BC0
.L080CB816:
	ldr r1, [r5]
	b .L080CB81E
.L080CB81A:
	movs r0, #0
	mov r8, r0
.L080CB81E:
	adds r4, r0, #0
	str r4, [sp, #0x48]
	adds r2, r1, #0
	adds r3, r4, #0
	cmp r2, sl
	beq .L080CB842
.L080CB82A:
	cmp r3, #0
	beq .L080CB83A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB83A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080CB82A
.L080CB842:
	adds r4, r3, #0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne .L080CB85E
	cmp r4, #0
	beq .L080CB85A
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB85A:
	adds r4, #0x10
	b .L080CB880
.L080CB85E:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080CB87E
.L080CB866:
	cmp r2, #0
	beq .L080CB876
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CB876:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CB866
.L080CB87E:
	adds r4, r2, #0
.L080CB880:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CB890
.L080CB88A:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CB88A
.L080CB890:
	cmp r1, #0
	beq .L080CB89A
	adds r0, r1, #0
	bl free
.L080CB89A:
	ldr r0, [sp, #0x48]
	add r0, r8
	ldr r1, [sp, #0x48]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080CB8A6:
	ldr r0, .L080CB938 @ =gUnk_08117860
	ldr r2, [sp, #0x3c]
	adds r0, r2, r0
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	ldr r3, [sp, #0x40]
	ldrb r1, [r3, #1]
	lsls r1, r1, #6
	add r4, sp, #0x2c
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldr r2, .L080CB93C @ =0x0600F000
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r2, [sp, #0x3c]
	adds r2, #0x34
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #2
	str r0, [sp]
	ldr r5, [sp, #0x38]
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r5, #0x20
	str r5, [sp, #8]
	ldr r0, [sp, #0x30]
	movs r3, #2
	bl func_080CAE60
	ldr r6, [sp, #0x40]
	ldrb r1, [r6, #1]
	lsls r1, r1, #6
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldr r7, .L080CB940 @ =0x0600F080
	adds r0, r0, r7
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x30]
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bls .L080CB928
	ldrb r2, [r6, #1]
	lsls r2, r2, #6
	ldrb r0, [r6]
	lsls r0, r0, #1
	ldr r1, .L080CB944 @ =0x0600F082
	adds r0, r0, r1
	adds r2, r2, r0
	str r4, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x6c]
	movs r3, #0x20
	bl func_080CAEEC
.L080CB928:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CB938: .4byte gUnk_08117860
.L080CB93C: .4byte 0x0600F000
.L080CB940: .4byte 0x0600F080
.L080CB944: .4byte 0x0600F082

	thumb_func_start func_080CB948
func_080CB948: @ 0x080CB948
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r5, #0
	bl func_080CAD10
	lsls r4, r4, #2
	ldr r0, .L080CB9D0 @ =gUnk_08117860
	adds r4, r4, r0
	ldr r0, [r4]
	str r0, [sp, #0xc]
	add r4, sp, #0xc
	ldrb r1, [r4, #1]
	lsls r1, r1, #6
	adds r0, r4, #0
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CB9D4 @ =0x0600F080
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	mov r8, r0
	str r0, [sp, #4]
	movs r7, #0x20
	str r7, [sp, #8]
	adds r0, r6, #0
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	cmp r5, #1
	bls .L080CB9C2
	ldrb r2, [r4, #1]
	lsls r2, r2, #6
	add r0, sp, #0xc
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, .L080CB9D8 @ =0x0600F082
	adds r0, r0, r1
	adds r2, r2, r0
	mov r0, r8
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0x20
	bl func_080CAEEC
.L080CB9C2:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CB9D0: .4byte gUnk_08117860
.L080CB9D4: .4byte 0x0600F080
.L080CB9D8: .4byte 0x0600F082

	thumb_func_start func_080CB9DC
func_080CB9DC: @ 0x080CB9DC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r5, #0
	bl func_080CAD10
	ldr r0, .L080CBA54 @ =gUnk_0811785C
	ldr r0, [r0]
	str r0, [sp, #0xc]
	add r6, sp, #0xc
	ldrb r1, [r6, #1]
	lsls r1, r1, #6
	adds r0, r6, #0
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CBA58 @ =0x0600F080
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	mov r8, r0
	str r0, [sp, #4]
	movs r7, #0x20
	str r7, [sp, #8]
	adds r0, r4, #0
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	cmp r5, #1
	bls .L080CBA48
	ldrb r2, [r6, #1]
	lsls r2, r2, #6
	add r0, sp, #0xc
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, .L080CBA5C @ =0x0600F082
	adds r0, r0, r1
	adds r2, r2, r0
	mov r0, r8
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0x20
	bl func_080CAEEC
.L080CBA48:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CBA54: .4byte gUnk_0811785C
.L080CBA58: .4byte 0x0600F080
.L080CBA5C: .4byte 0x0600F082

	thumb_func_start func_080CBA60
func_080CBA60: @ 0x080CBA60
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	bl func_080CADA8
	lsls r4, r4, #2
	ldr r0, .L080CBAE4 @ =gUnk_08117860
	adds r4, r4, r0
	ldr r0, [r4]
	str r0, [sp, #0xc]
	add r2, sp, #0xc
	mov r8, r2
	ldrb r1, [r2, #1]
	lsls r1, r1, #6
	add r0, sp, #0xc
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CBAE8 @ =0x0600F000
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #2
	str r0, [sp]
	movs r6, #0
	str r6, [sp, #4]
	movs r4, #0x20
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #6
	add r0, sp, #0xc
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CBAEC @ =0x0600F080
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080CBAE4: .4byte gUnk_08117860
.L080CBAE8: .4byte 0x0600F000
.L080CBAEC: .4byte 0x0600F080

	thumb_func_start func_080CBAF0
func_080CBAF0: @ 0x080CBAF0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	mov sl, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r4, #0xa0
	lsls r4, r4, #2
	add r4, sl
	adds r0, r4, #0
	bl func_080CAD18
	ldr r1, [r4, #4]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	ldr r5, [r0]
	add r0, sp, #0xc
	ldr r2, .L080CBB4C @ =0x06000600
	movs r3, #0x80
	bl func_08008F0C
	add r0, sp, #0xc
	mov sb, r0
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080CBB50
	cmp r1, #0
	beq .L080CBB3E
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CBB3E:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	mov r6, sp
	adds r6, #0x2c
	str r6, [sp, #0x30]
	b .L080CBC20
	.align 2, 0
.L080CBB4C: .4byte 0x06000600
.L080CBB50:
	str r1, [sp, #0x34]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r1, [r5]
	ldr r7, [sp, #0x34]
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r2, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L080CBB6A
	adds r0, r2, #0
.L080CBB6A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CBB8A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CBB86
	mov r0, r8
	bl func_080D3BC0
.L080CBB86:
	ldr r1, [r5]
	b .L080CBB8E
.L080CBB8A:
	movs r0, #0
	mov r8, r0
.L080CBB8E:
	adds r4, r0, #0
	str r4, [sp, #0x38]
	adds r2, r1, #0
	adds r3, r4, #0
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	cmp r2, r1
	beq .L080CBBBC
.L080CBBA2:
	cmp r3, #0
	beq .L080CBBB2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CBBB2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x34]
	cmp r2, r0
	bne .L080CBBA2
.L080CBBBC:
	adds r4, r3, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L080CBBD8
	cmp r4, #0
	beq .L080CBBD4
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080CBBD4:
	adds r4, #0x10
	b .L080CBBFA
.L080CBBD8:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080CBBF8
.L080CBBE0:
	cmp r2, #0
	beq .L080CBBF0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CBBF0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CBBE0
.L080CBBF8:
	adds r4, r2, #0
.L080CBBFA:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CBC0A
.L080CBC04:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CBC04
.L080CBC0A:
	cmp r1, #0
	beq .L080CBC14
	adds r0, r1, #0
	bl free
.L080CBC14:
	ldr r0, [sp, #0x38]
	add r0, r8
	ldr r7, [sp, #0x38]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080CBC20:
	movs r0, #0xa0
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #8]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	ldr r5, [r0]
	add r0, sp, #0xc
	ldr r2, .L080CBC60 @ =0x05000040
	movs r3, #0x20
	bl func_08008F0C
	add r0, sp, #0xc
	mov sb, r0
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080CBC64
	cmp r1, #0
	beq .L080CBC56
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CBC56:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080CBD2E
	.align 2, 0
.L080CBC60: .4byte 0x05000040
.L080CBC64:
	str r1, [sp, #0x34]
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r1, [r5]
	ldr r6, [sp, #0x34]
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x24]
	add r2, sp, #0x28
	add r0, sp, #0x24
	cmp r4, #1
	bhs .L080CBC7E
	adds r0, r2, #0
.L080CBC7E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CBC9E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CBC9A
	mov r0, r8
	bl func_080D3BC0
.L080CBC9A:
	ldr r1, [r5]
	b .L080CBCA2
.L080CBC9E:
	movs r0, #0
	mov r8, r0
.L080CBCA2:
	adds r4, r0, #0
	str r4, [sp, #0x38]
	adds r2, r1, #0
	adds r3, r4, #0
	ldr r7, [sp, #0x34]
	cmp r2, r7
	beq .L080CBCCA
.L080CBCB0:
	cmp r3, #0
	beq .L080CBCC0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CBCC0:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x34]
	cmp r2, r0
	bne .L080CBCB0
.L080CBCCA:
	adds r4, r3, #0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne .L080CBCE6
	cmp r4, #0
	beq .L080CBCE2
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080CBCE2:
	adds r4, #0x10
	b .L080CBD08
.L080CBCE6:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080CBD06
.L080CBCEE:
	cmp r2, #0
	beq .L080CBCFE
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CBCFE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CBCEE
.L080CBD06:
	adds r4, r2, #0
.L080CBD08:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CBD18
.L080CBD12:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CBD12
.L080CBD18:
	cmp r1, #0
	beq .L080CBD22
	adds r0, r1, #0
	bl free
.L080CBD22:
	ldr r0, [sp, #0x38]
	add r0, r8
	ldr r7, [sp, #0x38]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080CBD2E:
	ldr r0, .L080CBDC4 @ =gUnk_0811785C
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	ldrb r1, [r0, #1]
	lsls r1, r1, #6
	add r4, sp, #0x2c
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldr r2, .L080CBDC8 @ =0x0600F000
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	movs r5, #0x20
	str r5, [sp, #8]
	mov r0, sl
	movs r2, #0x30
	movs r3, #2
	bl func_080CAE60
	ldr r2, [sp, #0x30]
	ldrb r1, [r2, #1]
	lsls r1, r1, #6
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldr r3, .L080CBDCC @ =0x0600F080
	adds r0, r0, r3
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r6, #0
	str r6, [sp, #4]
	str r5, [sp, #8]
	mov r0, sl
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	movs r4, #0xa0
	lsls r4, r4, #2
	add r4, sl
	adds r0, r4, #0
	bl func_080CAD14
	cmp r0, #1
	bls .L080CBDB2
	adds r0, r4, #0
	bl func_080CAD14
	adds r1, r0, #0
	ldr r4, [sp, #0x30]
	ldrb r2, [r4, #1]
	lsls r2, r2, #6
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldr r7, .L080CBDD0 @ =0x0600F082
	adds r0, r0, r7
	adds r2, r2, r0
	str r6, [sp]
	str r5, [sp, #4]
	mov r0, sl
	movs r3, #0x20
	bl func_080CAEEC
.L080CBDB2:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CBDC4: .4byte gUnk_0811785C
.L080CBDC8: .4byte 0x0600F000
.L080CBDCC: .4byte 0x0600F080
.L080CBDD0: .4byte 0x0600F082

	thumb_func_start func_080CBDD4
func_080CBDD4: @ 0x080CBDD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	mov sl, r0
	movs r4, #0xa0
	lsls r4, r4, #2
	add r4, sl
	adds r0, r4, #0
	bl func_080CADA0
	ldr r1, [r4, #4]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	ldr r5, [r0]
	add r0, sp, #0xc
	ldr r2, .L080CBE2C @ =0x06000600
	movs r3, #0x80
	bl func_08008F0C
	add r0, sp, #0xc
	mov sb, r0
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080CBE30
	cmp r1, #0
	beq .L080CBE1E
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CBE1E:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	mov r6, sp
	adds r6, #0x2c
	str r6, [sp, #0x30]
	b .L080CBF00
	.align 2, 0
.L080CBE2C: .4byte 0x06000600
.L080CBE30:
	str r1, [sp, #0x34]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r1, [r5]
	ldr r7, [sp, #0x34]
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r2, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L080CBE4A
	adds r0, r2, #0
.L080CBE4A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CBE6A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CBE66
	mov r0, r8
	bl func_080D3BC0
.L080CBE66:
	ldr r1, [r5]
	b .L080CBE6E
.L080CBE6A:
	movs r0, #0
	mov r8, r0
.L080CBE6E:
	adds r4, r0, #0
	str r4, [sp, #0x38]
	adds r2, r1, #0
	adds r3, r4, #0
	mov r0, sp
	adds r0, #0x2c
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	cmp r2, r1
	beq .L080CBE9C
.L080CBE82:
	cmp r3, #0
	beq .L080CBE92
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CBE92:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x34]
	cmp r2, r0
	bne .L080CBE82
.L080CBE9C:
	adds r4, r3, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L080CBEB8
	cmp r4, #0
	beq .L080CBEB4
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080CBEB4:
	adds r4, #0x10
	b .L080CBEDA
.L080CBEB8:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080CBED8
.L080CBEC0:
	cmp r2, #0
	beq .L080CBED0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CBED0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CBEC0
.L080CBED8:
	adds r4, r2, #0
.L080CBEDA:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CBEEA
.L080CBEE4:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CBEE4
.L080CBEEA:
	cmp r1, #0
	beq .L080CBEF4
	adds r0, r1, #0
	bl free
.L080CBEF4:
	ldr r0, [sp, #0x38]
	add r0, r8
	ldr r7, [sp, #0x38]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080CBF00:
	movs r0, #0xa0
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #8]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	ldr r5, [r0]
	add r0, sp, #0xc
	ldr r2, .L080CBF40 @ =0x05000040
	movs r3, #0x20
	bl func_08008F0C
	add r0, sp, #0xc
	mov sb, r0
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080CBF44
	cmp r1, #0
	beq .L080CBF36
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CBF36:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080CC00E
	.align 2, 0
.L080CBF40: .4byte 0x05000040
.L080CBF44:
	str r1, [sp, #0x34]
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r1, [r5]
	ldr r6, [sp, #0x34]
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x24]
	add r2, sp, #0x28
	add r0, sp, #0x24
	cmp r4, #1
	bhs .L080CBF5E
	adds r0, r2, #0
.L080CBF5E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CBF7E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CBF7A
	mov r0, r8
	bl func_080D3BC0
.L080CBF7A:
	ldr r1, [r5]
	b .L080CBF82
.L080CBF7E:
	movs r0, #0
	mov r8, r0
.L080CBF82:
	adds r4, r0, #0
	str r4, [sp, #0x38]
	adds r2, r1, #0
	adds r3, r4, #0
	ldr r7, [sp, #0x34]
	cmp r2, r7
	beq .L080CBFAA
.L080CBF90:
	cmp r3, #0
	beq .L080CBFA0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CBFA0:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x34]
	cmp r2, r0
	bne .L080CBF90
.L080CBFAA:
	adds r4, r3, #0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne .L080CBFC6
	cmp r4, #0
	beq .L080CBFC2
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080CBFC2:
	adds r4, #0x10
	b .L080CBFE8
.L080CBFC6:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080CBFE6
.L080CBFCE:
	cmp r2, #0
	beq .L080CBFDE
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CBFDE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CBFCE
.L080CBFE6:
	adds r4, r2, #0
.L080CBFE8:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CBFF8
.L080CBFF2:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CBFF2
.L080CBFF8:
	cmp r1, #0
	beq .L080CC002
	adds r0, r1, #0
	bl free
.L080CC002:
	ldr r0, [sp, #0x38]
	add r0, r8
	ldr r7, [sp, #0x38]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080CC00E:
	ldr r0, .L080CC0A4 @ =gUnk_0811785C
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	ldrb r1, [r0, #1]
	lsls r1, r1, #6
	add r4, sp, #0x2c
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldr r2, .L080CC0A8 @ =0x0600F000
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	movs r5, #0x20
	str r5, [sp, #8]
	mov r0, sl
	movs r2, #0x30
	movs r3, #2
	bl func_080CAE60
	ldr r2, [sp, #0x30]
	ldrb r1, [r2, #1]
	lsls r1, r1, #6
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldr r3, .L080CC0AC @ =0x0600F080
	adds r0, r0, r3
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r6, #0
	str r6, [sp, #4]
	str r5, [sp, #8]
	mov r0, sl
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	movs r4, #0xa0
	lsls r4, r4, #2
	add r4, sl
	adds r0, r4, #0
	bl func_080CAD14
	cmp r0, #1
	bls .L080CC092
	adds r0, r4, #0
	bl func_080CAD14
	adds r1, r0, #0
	ldr r4, [sp, #0x30]
	ldrb r2, [r4, #1]
	lsls r2, r2, #6
	ldrb r0, [r4]
	lsls r0, r0, #1
	ldr r7, .L080CC0B0 @ =0x0600F082
	adds r0, r0, r7
	adds r2, r2, r0
	str r6, [sp]
	str r5, [sp, #4]
	mov r0, sl
	movs r3, #0x20
	bl func_080CAEEC
.L080CC092:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CC0A4: .4byte gUnk_0811785C
.L080CC0A8: .4byte 0x0600F000
.L080CC0AC: .4byte 0x0600F080
.L080CC0B0: .4byte 0x0600F082

	thumb_func_start func_080CC0B4
func_080CC0B4: @ 0x080CC0B4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl func_080CADA8
	ldr r0, .L080CC128 @ =gUnk_0811785C
	ldr r0, [r0]
	str r0, [sp, #0xc]
	add r2, sp, #0xc
	mov r8, r2
	ldrb r1, [r2, #1]
	lsls r1, r1, #6
	add r0, sp, #0xc
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CC12C @ =0x0600F000
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #2
	str r0, [sp]
	movs r6, #0
	str r6, [sp, #4]
	movs r5, #0x20
	str r5, [sp, #8]
	adds r0, r4, #0
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	mov r0, r8
	ldrb r1, [r0, #1]
	lsls r1, r1, #6
	add r0, sp, #0xc
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CC130 @ =0x0600F080
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	adds r0, r4, #0
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080CC128: .4byte gUnk_0811785C
.L080CC12C: .4byte 0x0600F000
.L080CC130: .4byte 0x0600F080

	thumb_func_start func_080CC134
func_080CC134: @ 0x080CC134
	lsls r2, r2, #2
	ldr r1, .L080CC140 @ =gUnk_0811783C
	adds r2, r2, r1
	ldr r1, [r2]
	str r1, [r0]
	bx lr
	.align 2, 0
.L080CC140: .4byte gUnk_0811783C

	.section .text.tail080CC15C, "ax", %progbits
	thumb_func_start func_080CC15C
func_080CC15C: @ 0x080CC15C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	mov sb, r1
	adds r1, r2, #0
	str r3, [sp, #0xc]
	add r0, sp, #0x38
	ldrb r0, [r0]
	mov sl, r0
	adds r0, r7, #0
	bl func_080CADB4
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, .L080CC30C @ =vtable_unk_080E85AC
	str r0, [r1]
	mov r0, sp
	bl func_080CAC70
	movs r1, #0x85
	lsls r1, r1, #2
	adds r1, r1, r7
	mov ip, r1
	ldr r4, [sp, #0xc]
	mov r8, r4
	mov r5, sp
	str r5, [sp, #0x10]
	movs r0, #0
	str r0, [r1]
	cmp r4, #8
	bhi .L080CC1CA
	ldr r3, [sp, #0xc]
	movs r6, #0x86
	lsls r6, r6, #2
	adds r2, r7, r6
	cmp r4, #0
	beq .L080CC1C4
.L080CC1B0:
	cmp r2, #0
	beq .L080CC1BC
	adds r1, r2, #0
	ldr r0, [sp, #0x10]
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
.L080CC1BC:
	subs r3, #1
	adds r2, #0xc
	cmp r3, #0
	bne .L080CC1B0
.L080CC1C4:
	mov r0, r8
	mov r1, ip
	str r0, [r1]
.L080CC1CA:
	movs r4, #0x9e
	lsls r4, r4, #2
	adds r0, r7, r4
	mov r5, sb
	str r5, [r0]
	movs r6, #0x9f
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0
	mov r8, r1
	mov r4, sl
	strb r4, [r0]
	movs r5, #0xa0
	lsls r5, r5, #2
	adds r0, r7, r5
	bl func_080CAC70
	adds r6, #0x10
	adds r5, r7, r6
	ldr r0, [sp, #0x34]
	bl strlen
	adds r4, r0, #0
	cmp r4, #8
	bls .L080CC1FE
	movs r4, #8
.L080CC1FE:
	adds r0, r5, #0
	ldr r1, [sp, #0x34]
	adds r2, r4, #0
	bl memcpy
	adds r0, r5, r4
	mov r1, r8
	strb r1, [r0]
	movs r4, #0xa6
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r5, [sp, #0xc]
	str r5, [r0]
	movs r6, #0xa7
	lsls r6, r6, #2
	adds r4, r7, r6
	adds r0, r4, #0
	bl func_08007874
	mov r0, r8
	str r0, [r4, #4]
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	mov r5, r8
	str r5, [r4, #4]
	adds r6, #0x10
	adds r4, r7, r6
	movs r5, #7
	movs r0, #0
	mov r8, r0
	movs r6, #1
	rsbs r6, r6, #0
.L080CC246:
	adds r0, r4, #0
	bl func_08007874
	mov r1, r8
	str r1, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r6
	bne .L080CC246
	movs r5, #0xbb
	lsls r5, r5, #2
	adds r4, r7, r5
	movs r5, #7
	movs r6, #0
	mov r8, r6
	subs r6, #1
.L080CC266:
	adds r0, r4, #0
	bl func_08007128
	mov r0, r8
	str r0, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r6
	bne .L080CC266
	movs r1, #0
	mov r8, r1
	movs r4, #0xac
	lsls r4, r4, #2
	adds r6, r7, r4
.L080CC282:
	mov r0, r8
	lsls r5, r0, #3
	adds r4, r5, r7
	movs r1, #0xab
	lsls r1, r1, #2
	adds r4, r4, r1
	ldr r1, [r6]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r6]
	adds r5, r5, r7
	movs r4, #0xbb
	lsls r4, r4, #2
	adds r5, r5, r4
	ldr r1, [r6, #0x40]
	adds r0, r5, #0
	bl func_080073E0
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r6, #0x40]
	adds r6, #8
	movs r5, #1
	add r8, r5
	mov r0, r8
	cmp r0, #7
	bls .L080CC282
	mov r1, sl
	cmp r1, #0
	beq .L080CC2F8
	movs r5, #0xa7
	lsls r5, r5, #2
	adds r4, r7, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r4, r7, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
.L080CC2F8:
	adds r0, r7, #0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080CC30C: .4byte vtable_unk_080E85AC

	thumb_func_start func_080CC310
func_080CC310: @ 0x080CC310
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	mov r8, r0
	ldr r6, .L080CC474 @ =0x0600F01E
	ldr r5, .L080CC478 @ =0x0600F822
	movs r4, #0x13
.L080CC324:
	ldr r0, .L080CC47C @ =0x00030003
	adds r1, r5, #0
	movs r2, #0x1c
	bl func_08008EB8
	ldr r0, .L080CC480 @ =0x03FF03FF
	adds r1, r6, #0
	movs r2, #0x20
	bl func_08008EB8
	adds r6, #0x40
	adds r5, #0x40
	subs r4, #1
	cmp r4, #0
	bge .L080CC324
	ldr r0, .L080CC484 @ =gUnk_0811785C
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xf
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, .L080CC488 @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x1c]
	movs r0, #0x9f
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080CC388
	add r0, sp, #0x1c
	ldrb r1, [r0, #1]
	lsls r1, r1, #6
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CC48C @ =0x0600F800
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	mov r0, r8
	movs r2, #0x1c
	movs r3, #2
	bl func_080CAE60
.L080CC388:
	movs r4, #0
	movs r0, #0x85
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	cmp r4, r0
	bhs .L080CC3E2
	add r5, sp, #0x1c
.L080CC398:
	lsls r0, r4, #2
	ldr r1, .L080CC490 @ =gUnk_08117860
	adds r0, r0, r1
	ldr r2, [r0]
	adds r1, r2, #0
	adds r1, #0xf
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r0, .L080CC488 @ =0xFFFFFF00
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x1c]
	ldrb r1, [r5, #1]
	lsls r1, r1, #6
	ldrb r0, [r5]
	lsls r0, r0, #1
	ldr r2, .L080CC48C @ =0x0600F800
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	mov r0, r8
	movs r2, #0x1c
	movs r3, #2
	bl func_080CAE60
	adds r4, #1
	movs r0, #0x85
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0]
	cmp r4, r0
	blo .L080CC398
.L080CC3E2:
	movs r7, #0xa3
	lsls r7, r7, #2
	add r7, r8
	movs r1, #0
	ldrb r0, [r7]
	cmp r0, #0
	bne .L080CC3F2
	movs r1, #1
.L080CC3F2:
	mov sb, r1
	cmp r1, #0
	beq .L080CC3FA
	b .L080CC576
.L080CC3FA:
	add r0, sp, #0x20
	movs r5, #8
	movs r6, #2
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x20]
	mov r4, r8
	adds r4, #0x10
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	adds r0, r7, #0
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x40
	subs r2, r2, r0
	add r0, sp, #0x24
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x24]
	str r7, [sp]
	mov r3, sb
	str r3, [sp, #4]
	movs r5, #1
	str r5, [sp, #8]
	adds r1, r4, #0
	movs r3, #0
	bl func_0804E958
	movs r3, #0x80
	lsls r3, r3, #2
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, r8
	ldr r6, [r0]
	add r0, sp, #0xc
	adds r1, r4, #0
	ldr r2, .L080CC494 @ =0x06000D00
	bl func_08008F0C
	add r7, sp, #0xc
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CC498
	cmp r1, #0
	beq .L080CC46A
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CC46A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080CC55E
	.align 2, 0
.L080CC474: .4byte 0x0600F01E
.L080CC478: .4byte 0x0600F822
.L080CC47C: .4byte 0x00030003
.L080CC480: .4byte 0x03FF03FF
.L080CC484: .4byte gUnk_0811785C
.L080CC488: .4byte 0xFFFFFF00
.L080CC48C: .4byte 0x0600F800
.L080CC490: .4byte gUnk_08117860
.L080CC494: .4byte 0x06000D00
.L080CC498:
	str r1, [sp, #0x30]
	movs r5, #1
	str r5, [sp, #0x2c]
	ldr r1, [r6]
	ldr r7, [sp, #0x30]
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r2, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L080CC4B2
	adds r0, r2, #0
.L080CC4B2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CC4D2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CC4CE
	mov r0, sb
	bl func_080D3BC0
.L080CC4CE:
	ldr r1, [r6]
	b .L080CC4D6
.L080CC4D2:
	movs r0, #0
	mov sb, r0
.L080CC4D6:
	adds r5, r0, #0
	str r5, [sp, #0x34]
	adds r2, r1, #0
	adds r3, r5, #0
	b .L080CC4F4
.L080CC4E0:
	cmp r3, #0
	beq .L080CC4F0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CC4F0:
	adds r2, #0x10
	adds r3, #0x10
.L080CC4F4:
	ldr r0, [sp, #0x30]
	cmp r2, r0
	bne .L080CC4E0
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080CC516
	cmp r5, #0
	beq .L080CC512
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CC512:
	adds r5, #0x10
	b .L080CC538
.L080CC516:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CC536
.L080CC51E:
	cmp r2, #0
	beq .L080CC52E
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CC52E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CC51E
.L080CC536:
	adds r5, r2, #0
.L080CC538:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CC548
.L080CC542:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CC542
.L080CC548:
	cmp r1, #0
	beq .L080CC552
	adds r0, r1, #0
	bl free
.L080CC552:
	ldr r0, [sp, #0x34]
	add r0, sb
	ldr r7, [sp, #0x34]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CC55E:
	ldr r1, .L080CC588 @ =0x0600F02A
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	mov r0, r8
	movs r2, #0x68
	movs r3, #8
	bl func_080CAE60
.L080CC576:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CC588: .4byte 0x0600F02A

	thumb_func_start func_080CC58C
func_080CC58C: @ 0x080CC58C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov sl, r0
	str r1, [sp, #0x20]
	bl func_080CAF6C
	movs r0, #0
	str r0, [sp, #0x24]
	movs r0, #0x85
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0]
	ldr r1, [sp, #0x24]
	cmp r1, r0
	bhs .L080CC670
	movs r2, #0x85
	lsls r2, r2, #2
	add r2, sl
	str r2, [sp, #0x28]
	movs r0, #0xac
	lsls r0, r0, #2
	add r0, sl
	mov sb, r0
	movs r7, #0x87
	lsls r7, r7, #2
	add r7, sl
.L080CC5C8:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #0
	beq .L080CC5D6
	ldr r0, [r7, #4]
	cmp r0, #0
	bne .L080CC5D8
.L080CC5D6:
	movs r1, #1
.L080CC5D8:
	str r1, [sp, #0x2c]
	cmp r1, #0
	bne .L080CC65A
	ldr r1, [sp, #0x24]
	lsls r0, r1, #2
	ldr r1, .L080CC700 @ =gUnk_08117860
	adds r0, r0, r1
	ldr r5, [r0]
	adds r6, r5, #0
	adds r6, #0xf
	lsls r6, r6, #0x18
	ldr r2, .L080CC704 @ =0xFFFFFF00
	ands r5, r2
	lsrs r6, r6, #0x15
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x15
	ldr r0, [sp, #0x24]
	lsls r4, r0, #3
	mov r1, sl
	adds r0, r4, r1
	movs r2, #0xab
	lsls r2, r2, #2
	adds r0, r0, r2
	mov r2, sb
	ldr r1, [r2]
	bl func_08007D4C
	mov r8, r0
	add r4, sl
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r4, r4, r0
	mov r2, sb
	ldr r1, [r2, #0x40]
	adds r0, r4, #0
	bl func_080074C0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0xc]
	add r4, sp, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	mov r3, r8
	bl func_0804EA94
	ldr r1, [sp, #0x20]
	ldrb r2, [r1]
	cmp r2, #0x7f
	bhi .L080CC65A
	lsls r1, r2, #3
	adds r1, #4
	ldr r0, [sp, #0x20]
	adds r1, r0, r1
	ldr r0, [sp, #0x10]
	str r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	ldr r1, [sp, #0x20]
	strb r0, [r1]
.L080CC65A:
	movs r2, #8
	add sb, r2
	adds r7, #0xc
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	ldr r0, [r1]
	ldr r2, [sp, #0x24]
	cmp r2, r0
	blo .L080CC5C8
.L080CC670:
	movs r1, #0xa0
	lsls r1, r1, #2
	add r1, sl
	movs r2, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq .L080CC684
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L080CC686
.L080CC684:
	movs r2, #1
.L080CC686:
	adds r7, r2, #0
	cmp r7, #0
	bne .L080CC6EE
	ldr r0, .L080CC708 @ =gUnk_0811785C
	ldr r4, [r0]
	adds r5, r4, #0
	adds r5, #0xf
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x15
	lsrs r4, r4, #8
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x15
	movs r0, #0xa7
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r6, r0, #0
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	add r7, sp, #0x18
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl func_0804EA94
	ldr r0, [sp, #0x20]
	ldrb r2, [r0]
	cmp r2, #0x7f
	bhi .L080CC6EE
	lsls r0, r2, #3
	adds r0, #4
	ldr r1, [sp, #0x20]
	adds r0, r1, r0
	ldr r1, [sp, #0x18]
	str r1, [r0]
	ldrh r1, [r7, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	ldr r2, [sp, #0x20]
	strb r0, [r2]
.L080CC6EE:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CC700: .4byte gUnk_08117860
.L080CC704: .4byte 0xFFFFFF00
.L080CC708: .4byte gUnk_0811785C

	thumb_func_start func_080CC70C
func_080CC70C: @ 0x080CC70C
	adds r2, r0, #0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	bx lr
	.align 2, 0

	.section .text.tail080CC728, "ax", %progbits
	thumb_func_start func_080CC728
func_080CC728: @ 0x080CC728
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	mov sl, r0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #0xc
	adds r1, r6, #0
	adds r2, r4, #0
	ldr r3, [sp, #0x74]
	bl func_080CAC7C
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	add r0, sl
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r6, #0
	adds r2, r4, #0
	ldr r3, [sp, #0x74]
	bl func_080CAD18
	lsls r4, r5, #3
	mov r2, sl
	adds r0, r4, r2
	movs r3, #0xab
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r6, r0, #0
	add r4, sl
	movs r7, #0xbb
	lsls r7, r7, #2
	adds r4, r4, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	str r0, [sp, #0x3c]
	lsls r5, r5, #2
	ldr r0, .L080CC7EC @ =gUnk_08117860
	adds r5, r5, r0
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0xf
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, .L080CC7F0 @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x38]
	ldr r1, [sp, #0x10]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	ldr r7, [r0]
	lsls r6, r6, #5
	ldr r0, .L080CC7F4 @ =0x06010000
	adds r6, r6, r0
	add r0, sp, #0x18
	adds r2, r6, #0
	movs r3, #0x80
	bl func_08008F0C
	add r1, sp, #0x18
	mov r8, r1
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080CC7F8
	cmp r1, #0
	beq .L080CC7D8
	adds r0, r1, #0
	add r1, sp, #0x18
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CC7D8:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	ldr r5, [sp, #0x3c]
	lsls r5, r5, #5
	str r5, [sp, #0x44]
	mov r6, sp
	adds r6, #0x38
	str r6, [sp, #0x40]
	b .L080CC8CE
	.align 2, 0
.L080CC7EC: .4byte gUnk_08117860
.L080CC7F0: .4byte 0xFFFFFF00
.L080CC7F4: .4byte 0x06010000
.L080CC7F8:
	str r1, [sp, #0x48]
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r1, [r7]
	ldr r2, [sp, #0x48]
	subs r0, r2, r1
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r2, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L080CC812
	adds r0, r2, #0
.L080CC812:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CC832
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CC82E
	mov r0, sb
	bl func_080D3BC0
.L080CC82E:
	ldr r1, [r7]
	b .L080CC836
.L080CC832:
	movs r0, #0
	mov sb, r0
.L080CC836:
	adds r5, r0, #0
	str r5, [sp, #0x4c]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r4, [sp, #0x3c]
	lsls r4, r4, #5
	str r4, [sp, #0x44]
	mov r5, sp
	adds r5, #0x38
	str r5, [sp, #0x40]
	ldr r6, [sp, #0x48]
	cmp r2, r6
	beq .L080CC86A
.L080CC850:
	cmp r3, #0
	beq .L080CC860
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080CC860:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x48]
	cmp r2, r0
	bne .L080CC850
.L080CC86A:
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080CC886
	cmp r5, #0
	beq .L080CC882
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CC882:
	adds r5, #0x10
	b .L080CC8A8
.L080CC886:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CC8A6
.L080CC88E:
	cmp r2, #0
	beq .L080CC89E
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080CC89E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CC88E
.L080CC8A6:
	adds r5, r2, #0
.L080CC8A8:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CC8B8
.L080CC8B2:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CC8B2
.L080CC8B8:
	cmp r1, #0
	beq .L080CC8C2
	adds r0, r1, #0
	bl free
.L080CC8C2:
	ldr r0, [sp, #0x4c]
	add r0, sb
	ldr r6, [sp, #0x4c]
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080CC8CE:
	ldr r1, [sp, #0x14]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	ldr r6, [r0]
	ldr r7, [sp, #0x44]
	ldr r0, .L080CC90C @ =0x05000200
	adds r2, r7, r0
	add r0, sp, #0x18
	movs r3, #0x20
	bl func_08008F0C
	add r1, sp, #0x18
	mov r8, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CC910
	cmp r1, #0
	beq .L080CC902
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CC902:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080CC9DA
	.align 2, 0
.L080CC90C: .4byte 0x05000200
.L080CC910:
	str r1, [sp, #0x50]
	movs r0, #1
	str r0, [sp, #0x34]
	ldr r1, [r6]
	ldr r5, [sp, #0x50]
	subs r0, r5, r1
	asrs r4, r0, #4
	str r4, [sp, #0x30]
	add r2, sp, #0x34
	add r0, sp, #0x30
	cmp r4, #1
	bhs .L080CC92A
	adds r0, r2, #0
.L080CC92A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CC94A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CC946
	mov r0, sb
	bl func_080D3BC0
.L080CC946:
	ldr r1, [r6]
	b .L080CC94E
.L080CC94A:
	movs r0, #0
	mov sb, r0
.L080CC94E:
	adds r5, r0, #0
	str r5, [sp, #0x4c]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r7, [sp, #0x50]
	cmp r2, r7
	beq .L080CC976
.L080CC95C:
	cmp r3, #0
	beq .L080CC96C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CC96C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x50]
	cmp r2, r0
	bne .L080CC95C
.L080CC976:
	adds r5, r3, #0
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L080CC992
	cmp r5, #0
	beq .L080CC98E
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CC98E:
	adds r5, #0x10
	b .L080CC9B4
.L080CC992:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CC9B2
.L080CC99A:
	cmp r2, #0
	beq .L080CC9AA
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CC9AA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CC99A
.L080CC9B2:
	adds r5, r2, #0
.L080CC9B4:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CC9C4
.L080CC9BE:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CC9BE
.L080CC9C4:
	cmp r1, #0
	beq .L080CC9CE
	adds r0, r1, #0
	bl free
.L080CC9CE:
	ldr r0, [sp, #0x4c]
	add r0, sb
	ldr r7, [sp, #0x4c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CC9DA:
	ldr r0, [sp, #0x40]
	ldrb r1, [r0, #1]
	lsls r1, r1, #6
	add r0, sp, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CCA38 @ =0x0600F080
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r4, #0x20
	str r4, [sp, #8]
	mov r0, sl
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	ldr r3, [sp, #0x74]
	cmp r3, #1
	bls .L080CCA26
	ldr r6, [sp, #0x40]
	ldrb r2, [r6, #1]
	lsls r2, r2, #6
	ldrb r0, [r6]
	lsls r0, r0, #1
	ldr r7, .L080CCA3C @ =0x0600F082
	adds r0, r0, r7
	adds r2, r2, r0
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, sl
	adds r1, r3, #0
	movs r3, #0x20
	bl func_080CAEEC
.L080CCA26:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CCA38: .4byte 0x0600F080
.L080CCA3C: .4byte 0x0600F082

	thumb_func_start func_080CCA40
func_080CCA40: @ 0x080CCA40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	mov sl, r0
	adds r5, r1, #0
	mov r8, r2
	str r3, [sp, #0x30]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	add r0, sl
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r1, r8
	adds r2, r3, #0
	ldr r3, [sp, #0x6c]
	bl func_080CADA0
	lsls r4, r5, #3
	mov r2, sl
	adds r0, r4, r2
	movs r3, #0xab
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r6, r0, #0
	add r4, sl
	movs r7, #0xbb
	lsls r7, r7, #2
	adds r4, r4, r7
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	str r0, [sp, #0x34]
	lsls r5, r5, #2
	ldr r0, .L080CCAF4 @ =gUnk_08117860
	adds r5, r5, r0
	ldr r1, [r5]
	adds r0, r1, #0
	adds r0, #0xf
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, .L080CCAF8 @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x2c]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	ldr r7, [r0]
	lsls r6, r6, #5
	ldr r0, .L080CCAFC @ =0x06010000
	adds r6, r6, r0
	add r0, sp, #0xc
	mov r1, r8
	adds r2, r6, #0
	movs r3, #0x80
	bl func_08008F0C
	add r1, sp, #0xc
	mov sb, r1
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080CCB00
	cmp r1, #0
	beq .L080CCAE0
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CCAE0:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	ldr r5, [sp, #0x34]
	lsls r5, r5, #5
	str r5, [sp, #0x3c]
	mov r6, sp
	adds r6, #0x2c
	str r6, [sp, #0x38]
	b .L080CCBD6
	.align 2, 0
.L080CCAF4: .4byte gUnk_08117860
.L080CCAF8: .4byte 0xFFFFFF00
.L080CCAFC: .4byte 0x06010000
.L080CCB00:
	str r1, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r1, [r7]
	ldr r2, [sp, #0x40]
	subs r0, r2, r1
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r2, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L080CCB1A
	adds r0, r2, #0
.L080CCB1A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CCB3A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CCB36
	mov r0, r8
	bl func_080D3BC0
.L080CCB36:
	ldr r1, [r7]
	b .L080CCB3E
.L080CCB3A:
	movs r0, #0
	mov r8, r0
.L080CCB3E:
	adds r5, r0, #0
	str r5, [sp, #0x44]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r4, [sp, #0x34]
	lsls r4, r4, #5
	str r4, [sp, #0x3c]
	mov r5, sp
	adds r5, #0x2c
	str r5, [sp, #0x38]
	ldr r6, [sp, #0x40]
	cmp r2, r6
	beq .L080CCB72
.L080CCB58:
	cmp r3, #0
	beq .L080CCB68
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080CCB68:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x40]
	cmp r2, r0
	bne .L080CCB58
.L080CCB72:
	adds r5, r3, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L080CCB8E
	cmp r5, #0
	beq .L080CCB8A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CCB8A:
	adds r5, #0x10
	b .L080CCBB0
.L080CCB8E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CCBAE
.L080CCB96:
	cmp r2, #0
	beq .L080CCBA6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080CCBA6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CCB96
.L080CCBAE:
	adds r5, r2, #0
.L080CCBB0:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CCBC0
.L080CCBBA:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CCBBA
.L080CCBC0:
	cmp r1, #0
	beq .L080CCBCA
	adds r0, r1, #0
	bl free
.L080CCBCA:
	ldr r0, [sp, #0x44]
	add r0, r8
	ldr r6, [sp, #0x44]
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080CCBD6:
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	ldr r6, [r0]
	ldr r7, [sp, #0x3c]
	ldr r0, .L080CCC14 @ =0x05000200
	adds r2, r7, r0
	add r0, sp, #0xc
	ldr r1, [sp, #0x30]
	movs r3, #0x20
	bl func_08008F0C
	add r1, sp, #0xc
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CCC18
	cmp r1, #0
	beq .L080CCC0A
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CCC0A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080CCCE2
	.align 2, 0
.L080CCC14: .4byte 0x05000200
.L080CCC18:
	str r1, [sp, #0x48]
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r1, [r6]
	ldr r5, [sp, #0x48]
	subs r0, r5, r1
	asrs r4, r0, #4
	str r4, [sp, #0x24]
	add r2, sp, #0x28
	add r0, sp, #0x24
	cmp r4, #1
	bhs .L080CCC32
	adds r0, r2, #0
.L080CCC32:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CCC52
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CCC4E
	mov r0, r8
	bl func_080D3BC0
.L080CCC4E:
	ldr r1, [r6]
	b .L080CCC56
.L080CCC52:
	movs r0, #0
	mov r8, r0
.L080CCC56:
	adds r5, r0, #0
	str r5, [sp, #0x44]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r7, [sp, #0x48]
	cmp r2, r7
	beq .L080CCC7E
.L080CCC64:
	cmp r3, #0
	beq .L080CCC74
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CCC74:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x48]
	cmp r2, r0
	bne .L080CCC64
.L080CCC7E:
	adds r5, r3, #0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne .L080CCC9A
	cmp r5, #0
	beq .L080CCC96
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CCC96:
	adds r5, #0x10
	b .L080CCCBC
.L080CCC9A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CCCBA
.L080CCCA2:
	cmp r2, #0
	beq .L080CCCB2
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CCCB2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CCCA2
.L080CCCBA:
	adds r5, r2, #0
.L080CCCBC:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CCCCC
.L080CCCC6:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CCCC6
.L080CCCCC:
	cmp r1, #0
	beq .L080CCCD6
	adds r0, r1, #0
	bl free
.L080CCCD6:
	ldr r0, [sp, #0x44]
	add r0, r8
	ldr r7, [sp, #0x44]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CCCE2:
	ldr r0, [sp, #0x38]
	ldrb r1, [r0, #1]
	lsls r1, r1, #6
	add r0, sp, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CCD40 @ =0x0600F080
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r4, #0x20
	str r4, [sp, #8]
	mov r0, sl
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	ldr r3, [sp, #0x6c]
	cmp r3, #1
	bls .L080CCD2E
	ldr r6, [sp, #0x38]
	ldrb r2, [r6, #1]
	lsls r2, r2, #6
	ldrb r0, [r6]
	lsls r0, r0, #1
	ldr r7, .L080CCD44 @ =0x0600F082
	adds r0, r0, r7
	adds r2, r2, r0
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, sl
	adds r1, r3, #0
	movs r3, #0x20
	bl func_080CAEEC
.L080CCD2E:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CCD40: .4byte 0x0600F080
.L080CCD44: .4byte 0x0600F082

	thumb_func_start func_080CCD48
func_080CCD48: @ 0x080CCD48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r5, #0
	bl func_080CAD10
	lsls r4, r4, #2
	ldr r0, .L080CCDDC @ =gUnk_08117860
	adds r4, r4, r0
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xf
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, .L080CCDE0 @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
	add r4, sp, #0xc
	ldrb r1, [r4, #1]
	lsls r1, r1, #6
	adds r0, r4, #0
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CCDE4 @ =0x0600F080
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	mov r8, r0
	str r0, [sp, #4]
	movs r7, #0x20
	str r7, [sp, #8]
	adds r0, r6, #0
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	cmp r5, #1
	bls .L080CCDD0
	ldrb r2, [r4, #1]
	lsls r2, r2, #6
	add r0, sp, #0xc
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, .L080CCDE8 @ =0x0600F082
	adds r0, r0, r1
	adds r2, r2, r0
	mov r0, r8
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0x20
	bl func_080CAEEC
.L080CCDD0:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CCDDC: .4byte gUnk_08117860
.L080CCDE0: .4byte 0xFFFFFF00
.L080CCDE4: .4byte 0x0600F080
.L080CCDE8: .4byte 0x0600F082

	thumb_func_start func_080CCDEC
func_080CCDEC: @ 0x080CCDEC
	push {r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r5
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r0, r1
	bl func_080CADA8
	lsls r4, r4, #2
	ldr r0, .L080CCE4C @ =gUnk_08117860
	adds r4, r4, r0
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xf
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, .L080CCE50 @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
	add r0, sp, #0xc
	ldrb r1, [r0, #1]
	lsls r1, r1, #6
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CCE54 @ =0x0600F080
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080CCE4C: .4byte gUnk_08117860
.L080CCE50: .4byte 0xFFFFFF00
.L080CCE54: .4byte 0x0600F080

	thumb_func_start func_080CCE58
func_080CCE58: @ 0x080CCE58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov sl, r0
	str r3, [sp, #0x30]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r5, #0xa0
	lsls r5, r5, #2
	add r5, sl
	adds r0, r5, #0
	bl func_080CAD18
	movs r0, #0xa7
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r4, r0, #0
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	str r0, [sp, #0x34]
	ldr r1, [r5, #4]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	ldr r6, [r0]
	lsls r4, r4, #5
	ldr r0, .L080CCEE0 @ =0x06010000
	adds r4, r4, r0
	add r0, sp, #0xc
	adds r2, r4, #0
	movs r3, #0x80
	bl func_08008F0C
	add r1, sp, #0xc
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CCEE4
	cmp r1, #0
	beq .L080CCECA
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CCECA:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r5, [sp, #0x34]
	lsls r5, r5, #5
	str r5, [sp, #0x38]
	mov r7, sp
	adds r7, #0x2c
	str r7, [sp, #0x3c]
	b .L080CCFBA
	.align 2, 0
.L080CCEE0: .4byte 0x06010000
.L080CCEE4:
	str r1, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r1, [r6]
	ldr r2, [sp, #0x40]
	subs r0, r2, r1
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r2, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L080CCEFE
	adds r0, r2, #0
.L080CCEFE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CCF1E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CCF1A
	mov r0, r8
	bl func_080D3BC0
.L080CCF1A:
	ldr r1, [r6]
	b .L080CCF22
.L080CCF1E:
	movs r0, #0
	mov r8, r0
.L080CCF22:
	adds r5, r0, #0
	str r5, [sp, #0x44]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r4, [sp, #0x34]
	lsls r4, r4, #5
	str r4, [sp, #0x38]
	mov r5, sp
	adds r5, #0x2c
	str r5, [sp, #0x3c]
	ldr r7, [sp, #0x40]
	cmp r2, r7
	beq .L080CCF56
.L080CCF3C:
	cmp r3, #0
	beq .L080CCF4C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CCF4C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x40]
	cmp r2, r0
	bne .L080CCF3C
.L080CCF56:
	adds r5, r3, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L080CCF72
	cmp r5, #0
	beq .L080CCF6E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CCF6E:
	adds r5, #0x10
	b .L080CCF94
.L080CCF72:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CCF92
.L080CCF7A:
	cmp r2, #0
	beq .L080CCF8A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CCF8A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CCF7A
.L080CCF92:
	adds r5, r2, #0
.L080CCF94:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CCFA4
.L080CCF9E:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CCF9E
.L080CCFA4:
	cmp r1, #0
	beq .L080CCFAE
	adds r0, r1, #0
	bl free
.L080CCFAE:
	ldr r0, [sp, #0x44]
	add r0, r8
	ldr r7, [sp, #0x44]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CCFBA:
	movs r0, #0xa0
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #8]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	ldr r6, [r0]
	ldr r0, [sp, #0x38]
	ldr r3, .L080CCFFC @ =0x05000200
	adds r2, r0, r3
	add r0, sp, #0xc
	movs r3, #0x20
	bl func_08008F0C
	add r4, sp, #0xc
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CD000
	cmp r1, #0
	beq .L080CCFF4
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CCFF4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080CD0CA
	.align 2, 0
.L080CCFFC: .4byte 0x05000200
.L080CD000:
	str r1, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r1, [r6]
	ldr r3, [sp, #0x40]
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x24]
	add r2, sp, #0x28
	add r0, sp, #0x24
	cmp r4, #1
	bhs .L080CD01A
	adds r0, r2, #0
.L080CD01A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CD03A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CD036
	mov r0, r8
	bl func_080D3BC0
.L080CD036:
	ldr r1, [r6]
	b .L080CD03E
.L080CD03A:
	movs r0, #0
	mov r8, r0
.L080CD03E:
	adds r5, r0, #0
	str r5, [sp, #0x44]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r4, [sp, #0x40]
	cmp r2, r4
	beq .L080CD066
.L080CD04C:
	cmp r3, #0
	beq .L080CD05C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CD05C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x40]
	cmp r2, r5
	bne .L080CD04C
.L080CD066:
	adds r5, r3, #0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne .L080CD082
	cmp r5, #0
	beq .L080CD07E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CD07E:
	adds r5, #0x10
	b .L080CD0A4
.L080CD082:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CD0A2
.L080CD08A:
	cmp r2, #0
	beq .L080CD09A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CD09A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CD08A
.L080CD0A2:
	adds r5, r2, #0
.L080CD0A4:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CD0B4
.L080CD0AE:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CD0AE
.L080CD0B4:
	cmp r1, #0
	beq .L080CD0BE
	adds r0, r1, #0
	bl free
.L080CD0BE:
	ldr r0, [sp, #0x44]
	add r0, r8
	ldr r1, [sp, #0x44]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CD0CA:
	ldr r0, .L080CD13C @ =gUnk_0811785C
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xf
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, .L080CD140 @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x3c]
	ldrb r1, [r2, #1]
	lsls r1, r1, #6
	add r0, sp, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r3, .L080CD144 @ =0x0600F080
	adds r0, r0, r3
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r4, #0x20
	str r4, [sp, #8]
	mov r0, sl
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	ldr r7, [sp, #0x30]
	cmp r7, #1
	bls .L080CD12A
	ldr r0, [sp, #0x3c]
	ldrb r2, [r0, #1]
	lsls r2, r2, #6
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, .L080CD148 @ =0x0600F082
	adds r0, r0, r1
	adds r2, r2, r0
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, sl
	adds r1, r7, #0
	movs r3, #0x20
	bl func_080CAEEC
.L080CD12A:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CD13C: .4byte gUnk_0811785C
.L080CD140: .4byte 0xFFFFFF00
.L080CD144: .4byte 0x0600F080
.L080CD148: .4byte 0x0600F082

	thumb_func_start func_080CD14C
func_080CD14C: @ 0x080CD14C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov sl, r0
	str r3, [sp, #0x30]
	movs r5, #0xa0
	lsls r5, r5, #2
	add r5, sl
	adds r0, r5, #0
	bl func_080CADA0
	movs r0, #0xa7
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r4, r0, #0
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	str r0, [sp, #0x34]
	ldr r1, [r5, #4]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	ldr r6, [r0]
	lsls r4, r4, #5
	ldr r0, .L080CD1D0 @ =0x06010000
	adds r4, r4, r0
	add r0, sp, #0xc
	adds r2, r4, #0
	movs r3, #0x80
	bl func_08008F0C
	add r1, sp, #0xc
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CD1D4
	cmp r1, #0
	beq .L080CD1BA
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CD1BA:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r5, [sp, #0x34]
	lsls r5, r5, #5
	str r5, [sp, #0x3c]
	mov r7, sp
	adds r7, #0x2c
	str r7, [sp, #0x38]
	b .L080CD2AA
	.align 2, 0
.L080CD1D0: .4byte 0x06010000
.L080CD1D4:
	str r1, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r1, [r6]
	ldr r2, [sp, #0x40]
	subs r0, r2, r1
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r2, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L080CD1EE
	adds r0, r2, #0
.L080CD1EE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CD20E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CD20A
	mov r0, r8
	bl func_080D3BC0
.L080CD20A:
	ldr r1, [r6]
	b .L080CD212
.L080CD20E:
	movs r0, #0
	mov r8, r0
.L080CD212:
	adds r5, r0, #0
	str r5, [sp, #0x44]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r4, [sp, #0x34]
	lsls r4, r4, #5
	str r4, [sp, #0x3c]
	mov r5, sp
	adds r5, #0x2c
	str r5, [sp, #0x38]
	ldr r7, [sp, #0x40]
	cmp r2, r7
	beq .L080CD246
.L080CD22C:
	cmp r3, #0
	beq .L080CD23C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CD23C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x40]
	cmp r2, r0
	bne .L080CD22C
.L080CD246:
	adds r5, r3, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L080CD262
	cmp r5, #0
	beq .L080CD25E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CD25E:
	adds r5, #0x10
	b .L080CD284
.L080CD262:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CD282
.L080CD26A:
	cmp r2, #0
	beq .L080CD27A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CD27A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CD26A
.L080CD282:
	adds r5, r2, #0
.L080CD284:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CD294
.L080CD28E:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CD28E
.L080CD294:
	cmp r1, #0
	beq .L080CD29E
	adds r0, r1, #0
	bl free
.L080CD29E:
	ldr r0, [sp, #0x44]
	add r0, r8
	ldr r7, [sp, #0x44]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CD2AA:
	movs r0, #0xa0
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #8]
	movs r0, #0x9e
	lsls r0, r0, #2
	add r0, sl
	ldr r6, [r0]
	ldr r0, [sp, #0x3c]
	ldr r3, .L080CD2EC @ =0x05000200
	adds r2, r0, r3
	add r0, sp, #0xc
	movs r3, #0x20
	bl func_08008F0C
	add r4, sp, #0xc
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CD2F0
	cmp r1, #0
	beq .L080CD2E4
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CD2E4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080CD3BA
	.align 2, 0
.L080CD2EC: .4byte 0x05000200
.L080CD2F0:
	str r1, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r1, [r6]
	ldr r3, [sp, #0x40]
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x24]
	add r2, sp, #0x28
	add r0, sp, #0x24
	cmp r4, #1
	bhs .L080CD30A
	adds r0, r2, #0
.L080CD30A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CD32A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CD326
	mov r0, r8
	bl func_080D3BC0
.L080CD326:
	ldr r1, [r6]
	b .L080CD32E
.L080CD32A:
	movs r0, #0
	mov r8, r0
.L080CD32E:
	adds r5, r0, #0
	str r5, [sp, #0x44]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r4, [sp, #0x40]
	cmp r2, r4
	beq .L080CD356
.L080CD33C:
	cmp r3, #0
	beq .L080CD34C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CD34C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x40]
	cmp r2, r5
	bne .L080CD33C
.L080CD356:
	adds r5, r3, #0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne .L080CD372
	cmp r5, #0
	beq .L080CD36E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CD36E:
	adds r5, #0x10
	b .L080CD394
.L080CD372:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CD392
.L080CD37A:
	cmp r2, #0
	beq .L080CD38A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CD38A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CD37A
.L080CD392:
	adds r5, r2, #0
.L080CD394:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CD3A4
.L080CD39E:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CD39E
.L080CD3A4:
	cmp r1, #0
	beq .L080CD3AE
	adds r0, r1, #0
	bl free
.L080CD3AE:
	ldr r0, [sp, #0x44]
	add r0, r8
	ldr r1, [sp, #0x44]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CD3BA:
	ldr r0, .L080CD42C @ =gUnk_0811785C
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xf
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, .L080CD430 @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x38]
	ldrb r1, [r2, #1]
	lsls r1, r1, #6
	add r0, sp, #0x2c
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r3, .L080CD434 @ =0x0600F080
	adds r0, r0, r3
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r4, #0x20
	str r4, [sp, #8]
	mov r0, sl
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	ldr r7, [sp, #0x30]
	cmp r7, #1
	bls .L080CD41A
	ldr r0, [sp, #0x38]
	ldrb r2, [r0, #1]
	lsls r2, r2, #6
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, .L080CD438 @ =0x0600F082
	adds r0, r0, r1
	adds r2, r2, r0
	str r5, [sp]
	str r4, [sp, #4]
	mov r0, sl
	adds r1, r7, #0
	movs r3, #0x20
	bl func_080CAEEC
.L080CD41A:
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CD42C: .4byte gUnk_0811785C
.L080CD430: .4byte 0xFFFFFF00
.L080CD434: .4byte 0x0600F080
.L080CD438: .4byte 0x0600F082
.L080CD43C:
	.byte 0xF0, 0xB5, 0x47, 0x46
	.byte 0x80, 0xB4, 0x84, 0xB0, 0x04, 0x1C, 0x0D, 0x1C, 0xA0, 0x21, 0x89, 0x00, 0x60, 0x18, 0x29, 0x1C
	.byte 0xFD, 0xF7, 0x5E, 0xFC, 0x1B, 0x48, 0x01, 0x68, 0x08, 0x1C, 0x0F, 0x30, 0x00, 0x06, 0x00, 0x0E
	.byte 0x19, 0x4A, 0x11, 0x40, 0x01, 0x43, 0x03, 0x91, 0x03, 0xAE, 0x71, 0x78, 0x89, 0x01, 0x30, 0x1C
	.byte 0x00, 0x78, 0x40, 0x00, 0x15, 0x4A, 0x80, 0x18, 0x09, 0x18, 0x01, 0x20, 0x00, 0x90, 0x00, 0x20
	.byte 0x80, 0x46, 0x01, 0x90, 0x20, 0x27, 0x02, 0x97, 0x20, 0x1C, 0x54, 0x22, 0x02, 0x23, 0xFD, 0xF7
	.byte 0xE7, 0xFC, 0x01, 0x2D, 0x0F, 0xD9, 0x72, 0x78, 0x92, 0x01, 0x03, 0xA8, 0x00, 0x78, 0x40, 0x00
	.byte 0x0B, 0x49, 0x40, 0x18, 0x12, 0x18, 0x40, 0x46, 0x00, 0x90, 0x01, 0x97, 0x20, 0x1C, 0x29, 0x1C
	.byte 0x20, 0x23, 0xFD, 0xF7, 0x1B, 0xFD, 0x04, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0xF0, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0x5C, 0x78, 0x11, 0x08, 0x00, 0xFF, 0xFF, 0xFF, 0x80, 0xF0, 0x00, 0x06
	.byte 0x82, 0xF0, 0x00, 0x06

	thumb_func_start func_080CD4D4
func_080CD4D4: @ 0x080CD4D4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl func_080CADA8
	ldr r0, .L080CD528 @ =gUnk_0811785C
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xf
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, .L080CD52C @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0xc]
	add r0, sp, #0xc
	ldrb r1, [r0, #1]
	lsls r1, r1, #6
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r2, .L080CD530 @ =0x0600F080
	adds r0, r0, r2
	adds r1, r1, r0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x20
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r2, #0x54
	movs r3, #2
	bl func_080CAE60
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080CD528: .4byte gUnk_0811785C
.L080CD52C: .4byte 0xFFFFFF00
.L080CD530: .4byte 0x0600F080

	thumb_func_start func_080CD534
func_080CD534: @ 0x080CD534
	lsls r2, r2, #2
	ldr r1, .L080CD550 @ =gUnk_0811783C
	adds r2, r2, r1
	ldr r2, [r2]
	adds r1, r2, #0
	adds r1, #0x78
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, .L080CD554 @ =0xFFFFFF00
	ands r2, r3
	orrs r2, r1
	str r2, [r0]
	bx lr
	.align 2, 0
.L080CD550: .4byte gUnk_0811783C
.L080CD554: .4byte 0xFFFFFF00

	thumb_func_start func_080CD558
func_080CD558: @ 0x080CD558
	ldr r1, .L080CD570 @ =gUnk_08117838
	ldr r2, [r1]
	adds r1, r2, #0
	adds r1, #0x78
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, .L080CD574 @ =0xFFFFFF00
	ands r2, r3
	orrs r2, r1
	str r2, [r0]
	bx lr
	.align 2, 0
.L080CD570: .4byte gUnk_08117838
.L080CD574: .4byte 0xFFFFFF00

	thumb_func_start func_080CD578
func_080CD578: @ 0x080CD578
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r4, r1, #0
	bl func_08008444
	ldr r0, .L080CD618 @ =vtable_unk_080E85A0
	str r0, [r7, #4]
	str r4, [r7, #8]
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #1
	bl func_08008B54
	adds r6, r7, #0
	adds r6, #0x10
	ldr r1, .L080CD61C @ =gUnk_08754C0C
	adds r0, r6, #0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x40
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #2]
	adds r0, #4
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x58
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
	adds r0, #0x1c
	strb r5, [r0]
	str r4, [r7, #0x78]
	str r4, [r7, #0x7c]
	add r0, sp, #0xc
	bl func_0800835C
	add r5, sp, #0x10
	adds r0, r5, #0
	bl func_0800770C
	adds r0, r7, #0
	adds r0, #0x80
	str r4, [sp]
	add r1, sp, #0xc
	str r1, [sp, #4]
	str r5, [sp, #8]
	movs r1, #0
	movs r2, #0x1d
	movs r3, #0
	bl func_08050CC0
	adds r0, r5, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	adds r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080CD618: .4byte vtable_unk_080E85A0
.L080CD61C: .4byte gUnk_08754C0C

	thumb_func_start func_080CD620
func_080CD620: @ 0x080CD620
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	mov r8, r0
	bl func_08008918
	mov r2, sp
	movs r3, #0xea
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #8]
	mov r0, r8
	bl func_08008918
	mov r2, sp
	ldr r4, .L080CD73C @ =0x00001E41
	adds r1, r4, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	mov r0, r8
	bl func_08008918
	mov r2, sp
	ldr r5, .L080CD740 @ =0x00003F42
	adds r1, r5, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	movs r4, #1
	rsbs r4, r4, #0
	ldr r1, .L080CD744 @ =0x0600F000
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r6, .L080CD748 @ =0x0600F800
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl func_08008EB8
	movs r4, #0xc0
	lsls r4, r4, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	movs r0, #0
	adds r1, r4, #0
	bl func_08008EB8
	mov r0, r8
	bl func_08008918
	mov r2, sp
	movs r7, #0xb2
	lsls r7, r7, #5
	adds r1, r7, #0
	strh r1, [r2]
	strh r1, [r0]
	ldr r0, .L080CD74C @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r0, .L080CD750 @ =gUnk_080F9F70
	ldr r0, [r0]
	ldr r1, .L080CD754 @ =gUnk_080F9F74
	ldr r2, [r1]
	adds r1, r4, #0
	bl func_08008E64
	ldr r0, .L080CD758 @ =0x00030003
	adds r1, r6, #0
	adds r2, r5, #0
	bl func_08008EB8
	add r4, sp, #4
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x4c]
	mov r1, sp
	adds r1, #0x1c
	str r1, [sp, #0x3c]
	mov r2, sp
	adds r2, #0x24
	str r2, [sp, #0x40]
	movs r3, #8
	movs r2, #2
	ldr r0, .L080CD75C @ =0x0600F81C
	movs r1, #0x13
.L080CD6E0:
	strh r3, [r0]
	strh r2, [r0, #2]
	adds r0, #0x40
	subs r1, #1
	cmp r1, #0
	bge .L080CD6E0
	ldr r0, .L080CD760 @ =0x03FF03FF
	ldr r1, .L080CD744 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008EB8
	mov r0, r8
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L080CD764 @ =gUnk_08750C8C
	add r0, sp, #4
	ldr r2, .L080CD768 @ =0x06000400
	movs r3, #0xe0
	lsls r3, r3, #1
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CD76C
	cmp r1, #0
	beq .L080CD728
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080CD728:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r7, r8
	adds r7, #0x44
	str r7, [sp, #0x44]
	mov r0, r8
	adds r0, #0x80
	str r0, [sp, #0x48]
	b .L080CD842
	.align 2, 0
.L080CD73C: .4byte 0x00001E41
.L080CD740: .4byte 0x00003F42
.L080CD744: .4byte 0x0600F000
.L080CD748: .4byte 0x0600F800
.L080CD74C: .4byte gUnk_080F9F78
.L080CD750: .4byte gUnk_080F9F70
.L080CD754: .4byte gUnk_080F9F74
.L080CD758: .4byte 0x00030003
.L080CD75C: .4byte 0x0600F81C
.L080CD760: .4byte 0x03FF03FF
.L080CD764: .4byte gUnk_08750C8C
.L080CD768: .4byte 0x06000400
.L080CD76C:
	str r1, [sp, #0x50]
	movs r0, #1
	str r0, [sp, #0x38]
	ldr r1, [r6]
	ldr r2, [sp, #0x50]
	subs r0, r2, r1
	asrs r4, r0, #4
	str r4, [sp, #0x34]
	add r2, sp, #0x38
	add r0, sp, #0x34
	cmp r4, #1
	bhs .L080CD786
	adds r0, r2, #0
.L080CD786:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CD7A6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080CD7A2
	mov r0, sl
	bl func_080D3BC0
.L080CD7A2:
	ldr r1, [r6]
	b .L080CD7AA
.L080CD7A6:
	movs r0, #0
	mov sl, r0
.L080CD7AA:
	adds r5, r0, #0
	str r5, [sp, #0x54]
	adds r2, r1, #0
	adds r3, r5, #0
	mov r4, r8
	adds r4, #0x44
	str r4, [sp, #0x44]
	mov r5, r8
	adds r5, #0x80
	str r5, [sp, #0x48]
	ldr r7, [sp, #0x50]
	cmp r2, r7
	beq .L080CD7DE
.L080CD7C4:
	cmp r3, #0
	beq .L080CD7D4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CD7D4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x50]
	cmp r2, r0
	bne .L080CD7C4
.L080CD7DE:
	adds r5, r3, #0
	ldr r0, [sp, #0x38]
	cmp r0, #1
	bne .L080CD7FA
	cmp r5, #0
	beq .L080CD7F6
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CD7F6:
	adds r5, #0x10
	b .L080CD81C
.L080CD7FA:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CD81A
.L080CD802:
	cmp r2, #0
	beq .L080CD812
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CD812:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CD802
.L080CD81A:
	adds r5, r2, #0
.L080CD81C:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CD82C
.L080CD826:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CD826
.L080CD82C:
	cmp r1, #0
	beq .L080CD836
	adds r0, r1, #0
	bl free
.L080CD836:
	ldr r0, [sp, #0x54]
	add r0, sl
	ldr r7, [sp, #0x54]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CD842:
	mov r0, r8
	ldr r1, [r0, #0x44]
	ldr r3, [r1]
	ldr r4, [sp, #0x44]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #0x48]
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, [sp, #0x4c]
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L080CD868
	ldr r5, [sp, #0x3c]
	ldrh r2, [r5, #4]
.L080CD868:
	ldr r1, .L080CD898 @ =0x06000380
	bl func_08008E64
	ldr r0, [sp, #0x24]
	movs r2, #0
	cmp r0, #0
	beq .L080CD87A
	ldr r7, [sp, #0x40]
	ldrh r2, [r7, #4]
.L080CD87A:
	ldr r1, .L080CD89C @ =0x05000020
	bl func_08008E64
	ldr r0, [sp, #0x48]
	bl func_08050D5C
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CD898: .4byte 0x06000380
.L080CD89C: .4byte 0x05000020

	thumb_func_start func_080CD8A0
func_080CD8A0: @ 0x080CD8A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	movs r0, #0x80
	adds r0, r0, r7
	mov r8, r0
	bl func_08050D34
	adds r1, r7, #0
	adds r1, #0x84
	str r0, [r1]
	adds r0, r7, #0
	bl func_080088DC
	mov sb, r0
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
	adds r1, #0xc
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, r8
	mov r1, sb
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	adds r1, r7, #0
	adds r1, #0x88
	str r0, [r1]
	ldr r2, [r7, #0x78]
	cmp r2, #0
	beq .L080CD914
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, [r0, #0xc]
	adds r0, r2, #0
	bl _call_via_r1
.L080CD914:
	ldr r4, [r7, #0x7c]
	cmp r4, #0
	beq .L080CD928
	adds r0, r7, #0
	bl func_08008920
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC58C
.L080CD928:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CD938:
	.byte 0xA6, 0x21, 0x89, 0x00, 0x40, 0x18, 0x00, 0x68
	.byte 0x70, 0x47, 0x00, 0x00, 0x9F, 0x21, 0x89, 0x00, 0x40, 0x18, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_080CD950
func_080CD950: @ 0x080CD950
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r3, r0
	ldr r0, .L080CD990 @ =vtable_unk_080E85BC
	str r0, [r1]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r2, r3, r1
	ldr r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r2, r0
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r3, r1
	cmp r0, r2
	beq .L080CD982
.L080CD97C:
	adds r0, #0xc
	cmp r0, r2
	bne .L080CD97C
.L080CD982:
	adds r0, r3, #0
	adds r1, r4, #0
	bl func_080CADF0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080CD990: .4byte vtable_unk_080E85BC
.L080CD994:
	.byte 0x01, 0x49, 0x09, 0x68, 0x01, 0x60, 0x70, 0x47, 0x5C, 0x78, 0x11, 0x08
	.byte 0x92, 0x00, 0x02, 0x49, 0x52, 0x18, 0x11, 0x68, 0x01, 0x60, 0x70, 0x47, 0x60, 0x78, 0x11, 0x08

	thumb_func_start func_080CD9B0
func_080CD9B0: @ 0x080CD9B0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [r7]
	str r2, [r7, #4]
	str r2, [r7, #8]
	adds r4, r7, #0
	adds r4, #0x14
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	adds r6, r7, #0
	adds r6, #0x24
	ldr r1, .L080CDA40 @ =gUnk_08728208
	adds r0, r6, #0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x54
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #2]
	adds r0, #4
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x6c
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
	adds r0, #0x1c
	strb r5, [r0]
	ldr r1, [r7]
	ldr r0, [r1, #0x78]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r7, #0xc]
	ldr r0, [r1, #0x7c]
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #9
	str r0, [r7, #0x10]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080CDA40: .4byte gUnk_08728208

	thumb_func_start func_080CDA44
func_080CDA44: @ 0x080CDA44
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r1, [r3]
	ldr r0, [r1, #0x78]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r3, #0xc]
	ldr r0, [r1, #0x7c]
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #9
	str r0, [r3, #0x10]
	ldr r1, .L080CDA78 @ =gUnk_0811788C
	ldr r2, [r3, #4]
	lsls r0, r2, #4
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r2, #0
	bne .L080CDA7C
	ldr r2, [r3, #8]
	cmp r2, #9
	beq .L080CDA92
	subs r0, r2, #5
	b .L080CDA8A
	.align 2, 0
.L080CDA78: .4byte gUnk_0811788C
.L080CDA7C:
	cmp r2, #9
	bne .L080CDA92
	ldr r2, [r3, #8]
	cmp r2, #0
	beq .L080CDA92
	adds r0, r2, #0
	subs r0, #0xe
.L080CDA8A:
	adds r1, r2, #4
	cmp r0, #3
	bhi .L080CDA92
	adds r1, r2, #0
.L080CDA92:
	cmp r1, #8
	bgt .L080CDAC8
	ldr r4, [r3, #4]
	cmp r1, #0
	bne .L080CDAAE
	ldr r0, [r3]
	ldr r0, [r0, #0x78]
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CDAAE
	adds r1, r4, #4
.L080CDAAE:
	ldr r2, [r3, #0xc]
	cmp r1, r2
	ble .L080CDAF2
	ldr r5, .L080CDAC4 @ =gUnk_0811788C
.L080CDAB6:
	lsls r0, r1, #4
	adds r0, r0, r5
	ldr r1, [r0]
	cmp r1, r2
	bgt .L080CDAB6
	b .L080CDAF2
	.align 2, 0
.L080CDAC4: .4byte gUnk_0811788C
.L080CDAC8:
	ldr r4, [r3, #4]
	cmp r1, #9
	bne .L080CDAE0
	ldr r0, [r3]
	ldr r0, [r0, #0x7c]
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CDAE0
	adds r1, r4, #4
.L080CDAE0:
	ldr r2, [r3, #0x10]
	cmp r1, r2
	ble .L080CDAF2
	ldr r5, .L080CDB04 @ =gUnk_0811788C
.L080CDAE8:
	lsls r0, r1, #4
	adds r0, r0, r5
	ldr r1, [r0]
	cmp r1, r2
	bgt .L080CDAE8
.L080CDAF2:
	cmp r1, r4
	beq .L080CDAFA
	str r4, [r3, #8]
	str r1, [r3, #4]
.L080CDAFA:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L080CDB04: .4byte gUnk_0811788C

	thumb_func_start func_080CDB08
func_080CDB08: @ 0x080CDB08
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	ldr r1, [r3]
	ldr r0, [r1, #0x78]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r3, #0xc]
	ldr r0, [r1, #0x7c]
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #9
	str r0, [r3, #0x10]
	ldr r1, .L080CDB40 @ =gUnk_0811788C
	ldr r2, [r3, #4]
	lsls r0, r2, #4
	adds r1, #4
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r2, #0
	bne .L080CDB44
	ldr r2, [r3, #8]
	cmp r2, #9
	beq .L080CDB5A
	subs r0, r2, #1
	b .L080CDB52
	.align 2, 0
.L080CDB40: .4byte gUnk_0811788C
.L080CDB44:
	cmp r2, #9
	bne .L080CDB5A
	ldr r2, [r3, #8]
	cmp r2, #0
	beq .L080CDB5A
	adds r0, r2, #0
	subs r0, #0xa
.L080CDB52:
	subs r1, r2, #4
	cmp r0, #3
	bhi .L080CDB5A
	adds r1, r2, #0
.L080CDB5A:
	cmp r1, #8
	bgt .L080CDBA8
	ldr r2, [r3, #4]
	cmp r1, #0
	bne .L080CDB76
	ldr r0, [r3]
	ldr r0, [r0, #0x78]
	movs r4, #0x9f
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CDB76
	subs r1, r2, #4
.L080CDB76:
	ldr r0, [r3, #0xc]
	cmp r1, r0
	ble .L080CDBEA
	ldr r5, .L080CDBA4 @ =gUnk_08117890
	adds r4, r0, #0
.L080CDB80:
	lsls r0, r1, #4
	adds r0, r0, r5
	ldr r1, [r0]
	cmp r1, #0
	bne .L080CDB9C
	ldr r0, [r3]
	ldr r0, [r0, #0x78]
	movs r6, #0x9f
	lsls r6, r6, #2
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CDB9C
	adds r1, r2, #0
.L080CDB9C:
	cmp r1, r4
	bgt .L080CDB80
	b .L080CDBEA
	.align 2, 0
.L080CDBA4: .4byte gUnk_08117890
.L080CDBA8:
	ldr r2, [r3, #4]
	cmp r1, #9
	bne .L080CDBC0
	ldr r0, [r3]
	ldr r0, [r0, #0x7c]
	movs r4, #0x9f
	lsls r4, r4, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CDBC0
	subs r1, r2, #4
.L080CDBC0:
	ldr r0, [r3, #0x10]
	cmp r1, r0
	ble .L080CDBEA
	ldr r5, .L080CDBFC @ =gUnk_08117890
	adds r4, r0, #0
.L080CDBCA:
	lsls r0, r1, #4
	adds r0, r0, r5
	ldr r1, [r0]
	cmp r1, #9
	bne .L080CDBE6
	ldr r0, [r3]
	ldr r0, [r0, #0x7c]
	movs r6, #0x9f
	lsls r6, r6, #2
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CDBE6
	adds r1, r2, #0
.L080CDBE6:
	cmp r1, r4
	bgt .L080CDBCA
.L080CDBEA:
	cmp r1, r2
	beq .L080CDBF2
	str r2, [r3, #8]
	str r1, [r3, #4]
.L080CDBF2:
	adds r0, r1, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080CDBFC: .4byte gUnk_08117890

	thumb_func_start func_080CDC00
func_080CDC00: @ 0x080CDC00
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r1, [r7]
	ldr r0, [r1, #0x78]
	mov ip, r0
	movs r0, #0xa6
	lsls r0, r0, #2
	add r0, ip
	ldr r6, [r0]
	str r6, [r7, #0xc]
	ldr r5, [r1, #0x7c]
	movs r1, #0xa6
	lsls r1, r1, #2
	adds r0, r5, r1
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #9
	str r4, [r7, #0x10]
	ldr r1, .L080CDC4C @ =gUnk_0811788C
	ldr r3, [r7, #4]
	lsls r0, r3, #4
	adds r1, #8
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #8
	bgt .L080CDC7C
	cmp r2, #0
	bne .L080CDC50
	movs r0, #0x9f
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0]
	adds r5, r3, #0
	cmp r0, #0
	bne .L080CDC6A
	adds r2, r5, #0
	b .L080CDC6A
	.align 2, 0
.L080CDC4C: .4byte gUnk_0811788C
.L080CDC50:
	adds r5, r3, #0
	cmp r2, r6
	ble .L080CDC6A
	adds r3, r6, #0
.L080CDC58:
	cmp r3, #4
	bgt .L080CDC60
	adds r2, r3, #0
	b .L080CDC66
.L080CDC60:
	lsls r0, r2, #4
	adds r0, r0, r1
	ldr r2, [r0]
.L080CDC66:
	cmp r2, r3
	bgt .L080CDC58
.L080CDC6A:
	cmp r2, #4
	bne .L080CDCBE
	ldr r1, [r7, #8]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	bne .L080CDCBE
	cmp r1, #4
	ble .L080CDCBE
	b .L080CDCBC
.L080CDC7C:
	cmp r2, #9
	bne .L080CDC92
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r5, r1
	ldrb r0, [r0]
	adds r5, r3, #0
	cmp r0, #0
	bne .L080CDCAC
	movs r2, #0
	b .L080CDCAC
.L080CDC92:
	adds r5, r3, #0
	cmp r2, r4
	ble .L080CDCAC
	adds r3, r4, #0
.L080CDC9A:
	cmp r3, #0xd
	bgt .L080CDCA2
	adds r2, r3, #0
	b .L080CDCA8
.L080CDCA2:
	lsls r0, r2, #4
	adds r0, r0, r1
	ldr r2, [r0]
.L080CDCA8:
	cmp r2, r3
	bgt .L080CDC9A
.L080CDCAC:
	cmp r2, #0xd
	bne .L080CDCBE
	ldr r1, [r7, #8]
	ldr r0, [r7, #0x10]
	cmp r1, r0
	bne .L080CDCBE
	cmp r1, #0xd
	ble .L080CDCBE
.L080CDCBC:
	adds r2, r1, #0
.L080CDCBE:
	cmp r2, r5
	beq .L080CDCC6
	str r5, [r7, #8]
	str r2, [r7, #4]
.L080CDCC6:
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080CDCD0
func_080CDCD0: @ 0x080CDCD0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, [r5]
	ldr r7, [r1, #0x78]
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r6, [r0]
	str r6, [r5, #0xc]
	ldr r1, [r1, #0x7c]
	mov ip, r1
	adds r0, r2, #0
	add r0, ip
	ldr r0, [r0]
	adds r4, r0, #0
	adds r4, #9
	str r4, [r5, #0x10]
	ldr r1, .L080CDD18 @ =gUnk_0811788C
	ldr r3, [r5, #4]
	lsls r0, r3, #4
	adds r1, #0xc
	adds r0, r0, r1
	ldr r2, [r0]
	cmp r2, #8
	bgt .L080CDD34
	cmp r2, #0
	bne .L080CDD1C
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CDD5E
	movs r2, #9
	b .L080CDD5E
	.align 2, 0
.L080CDD18: .4byte gUnk_0811788C
.L080CDD1C:
	cmp r2, r6
	ble .L080CDD5E
	cmp r3, #0x11
	bne .L080CDD2E
	movs r2, #1
	b .L080CDD5E
.L080CDD28:
	lsls r0, r2, #4
	adds r0, r0, r1
	ldr r2, [r0]
.L080CDD2E:
	cmp r2, #8
	ble .L080CDD28
	b .L080CDD5E
.L080CDD34:
	cmp r2, #9
	bne .L080CDD48
	movs r0, #0x9f
	lsls r0, r0, #2
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CDD5E
	movs r2, #0
	b .L080CDD5E
.L080CDD48:
	cmp r2, r4
	ble .L080CDD5E
	cmp r4, #0xd
	bgt .L080CDD5A
	movs r2, #1
	b .L080CDD5E
.L080CDD54:
	lsls r0, r2, #4
	adds r0, r0, r1
	ldr r2, [r0]
.L080CDD5A:
	cmp r2, #8
	bgt .L080CDD54
.L080CDD5E:
	cmp r2, #0xa
	bne .L080CDD6A
	ldr r0, [r5, #8]
	cmp r0, #0xe
	bne .L080CDD6A
	movs r2, #0xe
.L080CDD6A:
	cmp r2, r3
	beq .L080CDD72
	str r3, [r5, #8]
	str r2, [r5, #4]
.L080CDD72:
	adds r0, r2, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080CDD7C
func_080CDD7C: @ 0x080CDD7C
	push {lr}
	adds r1, r0, #0
	movs r3, #0xa
	ldr r2, [r1, #4]
	cmp r2, #8
	bgt .L080CDD8E
	ldr r0, [r1]
	ldr r0, [r0, #0x7c]
	b .L080CDD94
.L080CDD8E:
	ldr r0, [r1]
	ldr r0, [r0, #0x78]
	movs r3, #1
.L080CDD94:
	cmp r0, #0
	bne .L080CDD9A
	adds r3, r2, #0
.L080CDD9A:
	ldr r0, [r1, #4]
	cmp r3, r0
	beq .L080CDDA4
	str r0, [r1, #8]
	str r3, [r1, #4]
.L080CDDA4:
	adds r0, r3, #0
	pop {r1}
	bx r1
	.align 2, 0
.L080CDDAC:
	.byte 0x10, 0xB5, 0x03, 0x68
	.byte 0x9A, 0x6F, 0xA6, 0x24, 0xA4, 0x00, 0x12, 0x19, 0x12, 0x68, 0xC2, 0x60, 0xDA, 0x6F, 0x12, 0x19
	.byte 0x12, 0x68, 0x09, 0x32, 0x02, 0x61, 0x42, 0x68, 0x82, 0x60, 0x41, 0x60, 0x10, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00

	thumb_func_start func_080CDDD4
func_080CDDD4: @ 0x080CDDD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	adds r7, r0, #0
	adds r6, r7, #0
	adds r6, #0x88
	movs r4, #0
	movs r0, #1
	mov sl, r0
	mov r1, sl
	strb r1, [r6]
	ldr r1, [r7]
	ldr r2, [r7, #4]
	add r5, sp, #0x4c
	adds r0, r5, #0
	bl func_080CE120
	ldrb r0, [r5]
	movs r2, #0x54
	adds r2, r2, r7
	mov r8, r2
	movs r1, #0
	strh r0, [r2]
	ldrb r0, [r5, #1]
	adds r5, r7, #0
	adds r5, #0x56
	strh r0, [r5]
	mov r0, sp
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [sp, #0xc]
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r4, [sp, #0x14]
	strb r1, [r0, #0x18]
	ldrb r0, [r6]
	cmp r0, #0
	bne .L080CDE2E
	b .L080CE110
.L080CDE2E:
	ldr r0, [r7]
	adds r0, #0x88
	ldr r0, [r0]
	adds r4, r7, #0
	adds r4, #0x58
	cmp r0, #3
	bne .L080CDE42
	adds r0, r4, #0
	bl func_0805E8F0
.L080CDE42:
	add r3, sp, #0x1c
	mov sb, r3
	ldr r1, [r7, #0x58]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r7, #0x5c]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0x6c
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	mov r2, r8
	ldrh r0, [r2]
	strh r0, [r1]
	ldrh r0, [r5]
	strh r0, [r1, #2]
	mov r0, sp
	movs r5, #1
	mov r3, sl
	strh r3, [r0, #8]
	adds r4, r7, #0
	adds r4, #0x1c
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	adds r6, r7, #0
	adds r6, #0x14
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	mov r0, sp
	strb r5, [r0, #0x18]
	ldr r0, [r7]
	bl func_08008920
	ldr r1, [sp, #0x1c]
	movs r2, #0
	str r4, [sp, #0x60]
	cmp r1, #0
	beq .L080CDEBA
	mov r4, sb
	ldrh r2, [r4, #4]
.L080CDEBA:
	mov r3, sp
	bl func_0805E99C
	ldr r0, [r7]
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x24]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0x24
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L080CDEE0
	ldrh r3, [r1, #4]
.L080CDEE0:
	str r4, [sp, #0x68]
	lsls r2, r2, #5
	ldr r6, .L080CDF1C @ =0x06010000
	adds r2, r2, r6
	add r0, sp, #0x3c
	adds r1, r5, #0
	bl func_08008F0C
	add r0, sp, #0x3c
	mov sb, r0
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080CDF20
	cmp r1, #0
	beq .L080CDF0C
	adds r0, r1, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CDF0C:
	ldr r5, [sp, #0x68]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	mov r6, sp
	adds r6, #0x2c
	str r6, [sp, #0x64]
	b .L080CDFF6
	.align 2, 0
.L080CDF1C: .4byte 0x06010000
.L080CDF20:
	mov r8, r1
	mov r0, sl
	str r0, [sp, #0x54]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x50]
	add r1, sp, #0x54
	add r0, sp, #0x50
	cmp r4, #1
	bhs .L080CDF3C
	adds r0, r1, #0
.L080CDF3C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CDF5A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080CDF5E
	mov r0, sl
	bl func_080D3BC0
	b .L080CDF5E
.L080CDF5A:
	movs r0, #0
	mov sl, r0
.L080CDF5E:
	adds r5, r0, #0
	str r5, [sp, #0x6c]
	ldr r3, [sp, #0x68]
	ldr r2, [r3]
	adds r3, r5, #0
	mov r4, sp
	adds r4, #0x2c
	str r4, [sp, #0x64]
	cmp r2, r8
	beq .L080CDF8A
.L080CDF72:
	cmp r3, #0
	beq .L080CDF82
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080CDF82:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080CDF72
.L080CDF8A:
	adds r5, r3, #0
	ldr r0, [sp, #0x54]
	cmp r0, #1
	bne .L080CDFA6
	cmp r5, #0
	beq .L080CDFA2
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080CDFA2:
	adds r5, #0x10
	b .L080CDFCE
.L080CDFA6:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080CDFCC
.L080CDFAE:
	cmp r2, #0
	beq .L080CDFBE
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080CDFBE:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r2, #0x10
	mov r1, r8
	cmp r1, #0
	bne .L080CDFAE
.L080CDFCC:
	adds r5, r2, #0
.L080CDFCE:
	ldr r3, [sp, #0x68]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080CDFE0
.L080CDFDA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080CDFDA
.L080CDFE0:
	cmp r0, #0
	beq .L080CDFE8
	bl free
.L080CDFE8:
	ldr r0, [sp, #0x6c]
	add r0, sl
	ldr r4, [sp, #0x6c]
	ldr r6, [sp, #0x68]
	str r4, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CDFF6:
	ldr r0, [r7]
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x2c]
	ldr r7, [sp, #0x60]
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x2c]
	movs r3, #0
	cmp r0, #0
	beq .L080CE018
	ldr r0, [sp, #0x64]
	ldrh r3, [r0, #4]
.L080CE018:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r1, .L080CE04C @ =0x05000200
	adds r2, r2, r1
	add r0, sp, #0x3c
	adds r1, r5, #0
	bl func_08008F0C
	add r2, sp, #0x3c
	mov r8, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CE050
	cmp r1, #0
	beq .L080CE044
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080CE044:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080CE110
	.align 2, 0
.L080CE04C: .4byte 0x05000200
.L080CE050:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x5c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x58]
	add r1, sp, #0x5c
	add r0, sp, #0x58
	cmp r4, #1
	bhs .L080CE068
	adds r0, r1, #0
.L080CE068:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CE086
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CE08A
	mov r0, sb
	bl func_080D3BC0
	b .L080CE08A
.L080CE086:
	movs r0, #0
	mov sb, r0
.L080CE08A:
	adds r5, r0, #0
	str r5, [sp, #0x6c]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L080CE0AE
.L080CE096:
	cmp r3, #0
	beq .L080CE0A6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CE0A6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080CE096
.L080CE0AE:
	adds r5, r3, #0
	ldr r0, [sp, #0x5c]
	cmp r0, #1
	bne .L080CE0CA
	cmp r5, #0
	beq .L080CE0C6
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CE0C6:
	adds r5, #0x10
	b .L080CE0EC
.L080CE0CA:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CE0EA
.L080CE0D2:
	cmp r2, #0
	beq .L080CE0E2
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CE0E2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CE0D2
.L080CE0EA:
	adds r5, r2, #0
.L080CE0EC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080CE0FC
.L080CE0F6:
	adds r1, #0x10
	cmp r1, r2
	bne .L080CE0F6
.L080CE0FC:
	cmp r0, #0
	beq .L080CE104
	bl free
.L080CE104:
	ldr r0, [sp, #0x6c]
	add r0, sb
	ldr r1, [sp, #0x6c]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CE110:
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080CE120
func_080CE120: @ 0x080CE120
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	cmp r2, #0
	beq .L080CE13A
	cmp r2, #9
	beq .L080CE14A
	cmp r2, #8
	bgt .L080CE166
	ldr r1, [r1, #0x78]
	cmp r1, #0
	beq .L080CE176
	b .L080CE15A
.L080CE13A:
	ldr r1, [r1, #0x78]
	cmp r1, #0
	beq .L080CE176
	mov r0, sp
	bl func_080CC144
	ldr r3, [sp]
	b .L080CE176
.L080CE14A:
	ldr r1, [r1, #0x7c]
	cmp r1, #0
	beq .L080CE176
	add r0, sp, #4
	bl func_080CD558
	ldr r3, [sp, #4]
	b .L080CE176
.L080CE15A:
	subs r2, #1
	add r0, sp, #8
	bl func_080CC134
	ldr r3, [sp, #8]
	b .L080CE176
.L080CE166:
	ldr r1, [r1, #0x7c]
	cmp r1, #0
	beq .L080CE176
	subs r2, #0xa
	add r0, sp, #0xc
	bl func_080CD534
	ldr r3, [sp, #0xc]
.L080CE176:
	str r3, [r4]
	adds r0, r4, #0
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080CE184
func_080CE184: @ 0x080CE184
	push {lr}
	cmp r1, #8
	bgt .L080CE190
	lsls r0, r2, #3
	subs r0, #1
	b .L080CE194
.L080CE190:
	lsls r0, r2, #3
	subs r0, #0xa
.L080CE194:
	adds r0, r1, r0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080CE19C
func_080CE19C: @ 0x080CE19C
	push {r4, lr}
	adds r4, r0, #0
	bl func_080CD578
	ldr r0, .L080CE1C0 @ =vtable_unk_080E85DC
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x8c
	movs r1, #0
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080CE1C0: .4byte vtable_unk_080E85DC

	thumb_func_start func_080CE1C4
func_080CE1C4: @ 0x080CE1C4
	push {lr}
	sub sp, #4
	mov r0, sp
	strb r1, [r0]
	bl GetId__C4Tool
	subs r0, #5
	cmp r0, #0x28
	bhi .L080CE28C
	lsls r0, r0, #2
	ldr r1, .L080CE1E0 @ =.L080CE1E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080CE1E0: .4byte .L080CE1E4
.L080CE1E4: @ jump table
	.4byte .L080CE288 @ case 0
	.4byte .L080CE28C @ case 1
	.4byte .L080CE28C @ case 2
	.4byte .L080CE28C @ case 3
	.4byte .L080CE28C @ case 4
	.4byte .L080CE28C @ case 5
	.4byte .L080CE28C @ case 6
	.4byte .L080CE28C @ case 7
	.4byte .L080CE288 @ case 8
	.4byte .L080CE28C @ case 9
	.4byte .L080CE28C @ case 10
	.4byte .L080CE28C @ case 11
	.4byte .L080CE28C @ case 12
	.4byte .L080CE28C @ case 13
	.4byte .L080CE28C @ case 14
	.4byte .L080CE28C @ case 15
	.4byte .L080CE288 @ case 16
	.4byte .L080CE28C @ case 17
	.4byte .L080CE28C @ case 18
	.4byte .L080CE28C @ case 19
	.4byte .L080CE28C @ case 20
	.4byte .L080CE28C @ case 21
	.4byte .L080CE28C @ case 22
	.4byte .L080CE28C @ case 23
	.4byte .L080CE288 @ case 24
	.4byte .L080CE28C @ case 25
	.4byte .L080CE28C @ case 26
	.4byte .L080CE28C @ case 27
	.4byte .L080CE28C @ case 28
	.4byte .L080CE28C @ case 29
	.4byte .L080CE28C @ case 30
	.4byte .L080CE28C @ case 31
	.4byte .L080CE288 @ case 32
	.4byte .L080CE28C @ case 33
	.4byte .L080CE28C @ case 34
	.4byte .L080CE28C @ case 35
	.4byte .L080CE28C @ case 36
	.4byte .L080CE28C @ case 37
	.4byte .L080CE28C @ case 38
	.4byte .L080CE28C @ case 39
	.4byte .L080CE288 @ case 40
.L080CE288:
	movs r0, #1
	b .L080CE28E
.L080CE28C:
	movs r0, #0
.L080CE28E:
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start func_080CE294
func_080CE294: @ 0x080CE294
	push {r4, lr}
	adds r4, r0, #0
	bl func_080CD620
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #1
	bl func_08050E98
	adds r0, r4, #0
	movs r1, #2
	bl func_08050E98
	adds r0, r4, #0
	movs r1, #4
	bl func_08050E98
	adds r0, r4, #0
	movs r1, #8
	bl func_08050E98
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080CE2C4
func_080CE2C4: @ 0x080CE2C4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq .L080CE2D4
	bl func_080CDDD4
.L080CE2D4:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq .L080CE2E2
	bl func_080CECE8
.L080CE2E2:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq .L080CE2F0
	bl func_080CE790
.L080CE2F0:
	adds r0, r4, #0
	bl func_080CD8A0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080CE2FC
func_080CE2FC: @ 0x080CE2FC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r4, r7, #0
	stm r4!, {r1}
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	adds r4, r7, #0
	adds r4, #0xc
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	adds r6, r7, #0
	adds r6, #0x1c
	ldr r1, .L080CE3D8 @ =gUnk_08527094
	adds r0, r6, #0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x4c
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #2]
	adds r0, #4
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x64
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
	adds r0, #0x1c
	strb r5, [r0]
	adds r0, #4
	strh r4, [r0]
	strh r4, [r0, #2]
	adds r0, #4
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x9c
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
	adds r0, #0x1c
	strb r5, [r0]
	adds r0, #4
	str r4, [r0]
	adds r5, r7, #0
	adds r5, #0xc0
	str r4, [r5, #4]
	movs r0, #0xc
	bl malloc
	cmp r0, #0
	bne .L080CE3C6
	movs r0, #0xc
	bl func_080D3BC0
.L080CE3C6:
	str r0, [r0]
	str r0, [r0, #4]
	str r0, [r5, #4]
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080CE3D8: .4byte gUnk_08527094

	thumb_func_start func_080CE3DC
func_080CE3DC: @ 0x080CE3DC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0xc0
	ldr r0, [r0, #4]
	ldr r1, [r0]
	str r1, [sp]
	str r0, [sp, #4]
	b .L080CE40C
.L080CE3F0:
	ldr r0, [sp]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq .L080CE404
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080CE404:
	ldr r0, [sp]
	ldr r0, [r0]
	str r0, [sp]
	ldr r1, [sp, #4]
.L080CE40C:
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080CE3F0
	adds r4, r5, #0
	adds r4, #0xc0
	adds r0, r4, #0
	bl func_080E586C
	ldr r0, [r4, #4]
	cmp r0, #0
	beq .L080CE42A
	bl free
.L080CE42A:
	ldr r0, .L080CE47C @ =vtable_unk_080E5A28
	str r0, [r5, #0x1c]
	adds r4, r5, #0
	adds r4, #0x14
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
	adds r4, r5, #4
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq .L080CE474
	adds r0, r5, #0
	bl __builtin_delete
.L080CE474:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080CE47C: .4byte vtable_unk_080E5A28

	thumb_func_start func_080CE480
func_080CE480: @ 0x080CE480
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	mov r8, r1
	adds r5, r2, #0
	mov sb, r3
	ldr r6, [sp, #0x34]
	ldr r4, [sp, #0x38]
	ldr r7, [sp, #0x3c]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x20
	bl __builtin_new
	str r6, [sp]
	str r4, [sp, #4]
	str r7, [sp, #8]
	mov r1, r8
	adds r2, r5, #0
	mov r3, sb
	bl func_0804EA58
	adds r4, r0, #0
	mov r0, sl
	adds r0, #0xc0
	ldr r0, [r0, #4]
	str r0, [sp, #0x10]
	movs r0, #0xc
	bl malloc
	adds r2, r0, #0
	cmp r2, #0
	bne .L080CE4D6
	movs r0, #0xc
	bl func_080D3BC0
	adds r2, r0, #0
.L080CE4D6:
	adds r0, r2, #0
	adds r0, #8
	cmp r0, #0
	beq .L080CE4E0
	str r4, [r2, #8]
.L080CE4E0:
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #4]
	str r0, [r2]
	str r1, [r2, #4]
	str r2, [r1]
	str r2, [r0, #4]
	str r2, [sp, #0xc]
	mov r1, sl
	ldr r0, [r1]
	bl func_08008940
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	adds r1, r4, #0
	bl _call_via_r2
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080CE510
func_080CE510: @ 0x080CE510
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	adds r5, r3, #0
	ldr r4, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0x1c
	bl __builtin_new
	str r4, [sp]
	str r6, [sp, #4]
	mov r1, r8
	mov r2, sb
	adds r3, r5, #0
	bl func_0804EE64
	adds r4, r0, #0
	adds r0, r7, #0
	adds r0, #0xc0
	ldr r0, [r0, #4]
	str r0, [sp, #0xc]
	movs r0, #0xc
	bl malloc
	adds r2, r0, #0
	cmp r2, #0
	bne .L080CE560
	movs r0, #0xc
	bl func_080D3BC0
	adds r2, r0, #0
.L080CE560:
	adds r0, r2, #0
	adds r0, #8
	cmp r0, #0
	beq .L080CE56A
	str r4, [r2, #8]
.L080CE56A:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #4]
	str r0, [r2]
	str r1, [r2, #4]
	str r2, [r1]
	str r2, [r0, #4]
	str r2, [sp, #8]
	ldr r0, [r7]
	bl func_08008940
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	adds r1, r4, #0
	bl _call_via_r2
	add sp, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080CE598
func_080CE598: @ 0x080CE598
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	adds r6, r0, #0
	adds r0, #0x50
	ldr r1, [r6, #0x50]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r6, #0x54]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xc
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [r6]
	bl func_08008910
	adds r5, r0, #0
	add r4, sp, #0x1c
	ldr r0, [sp, #0x1c]
	mov r8, r0
	adds r0, r6, #0
	adds r0, #0x14
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x1c]
	movs r3, #0
	cmp r0, #0
	beq .L080CE5E2
	ldrh r3, [r4, #4]
.L080CE5E2:
	str r5, [sp, #0x58]
	lsls r2, r2, #5
	ldr r1, .L080CE638 @ =0x05000200
	adds r2, r2, r1
	add r0, sp, #0x2c
	mov r1, r8
	bl func_08008F0C
	add r2, sp, #0x2c
	mov sb, r2
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080CE63C
	cmp r1, #0
	beq .L080CE60E
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080CE60E:
	ldr r7, [sp, #0x58]
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	adds r0, r6, #0
	adds r0, #0x4c
	str r0, [sp, #0x4c]
	adds r1, r6, #0
	adds r1, #0x4e
	str r1, [sp, #0x50]
	adds r2, r6, #0
	adds r2, #0x84
	str r2, [sp, #0x44]
	adds r3, r6, #0
	adds r3, #0x86
	str r3, [sp, #0x48]
	adds r4, r6, #0
	adds r4, #0xbc
	str r4, [sp, #0x54]
	b .L080CE722
	.align 2, 0
.L080CE638: .4byte 0x05000200
.L080CE63C:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x40]
	ldr r5, [sp, #0x58]
	ldr r0, [r5]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x3c]
	add r1, sp, #0x40
	add r0, sp, #0x3c
	cmp r4, #1
	bhs .L080CE656
	adds r0, r1, #0
.L080CE656:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CE674
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080CE678
	mov r0, sl
	bl func_080D3BC0
	b .L080CE678
.L080CE674:
	movs r0, #0
	mov sl, r0
.L080CE678:
	adds r5, r0, #0
	str r5, [sp, #0x5c]
	ldr r7, [sp, #0x58]
	ldr r2, [r7]
	adds r3, r5, #0
	adds r0, r6, #0
	adds r0, #0x4c
	str r0, [sp, #0x4c]
	adds r1, r6, #0
	adds r1, #0x4e
	str r1, [sp, #0x50]
	adds r4, r6, #0
	adds r4, #0x84
	str r4, [sp, #0x44]
	adds r5, r6, #0
	adds r5, #0x86
	str r5, [sp, #0x48]
	adds r7, r6, #0
	adds r7, #0xbc
	str r7, [sp, #0x54]
	cmp r2, r8
	beq .L080CE6BC
.L080CE6A4:
	cmp r3, #0
	beq .L080CE6B4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CE6B4:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080CE6A4
.L080CE6BC:
	adds r5, r3, #0
	ldr r0, [sp, #0x40]
	cmp r0, #1
	bne .L080CE6D8
	cmp r5, #0
	beq .L080CE6D4
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CE6D4:
	adds r5, #0x10
	b .L080CE6FA
.L080CE6D8:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CE6F8
.L080CE6E0:
	cmp r2, #0
	beq .L080CE6F0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CE6F0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CE6E0
.L080CE6F8:
	adds r5, r2, #0
.L080CE6FA:
	ldr r7, [sp, #0x58]
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080CE70C
.L080CE706:
	adds r1, #0x10
	cmp r1, r2
	bne .L080CE706
.L080CE70C:
	cmp r0, #0
	beq .L080CE714
	bl free
.L080CE714:
	ldr r0, [sp, #0x5c]
	add r0, sl
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x58]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080CE722:
	movs r5, #0
	movs r1, #0xe8
	ldr r3, [sp, #0x4c]
	strh r1, [r3]
	movs r0, #0x28
	ldr r4, [sp, #0x50]
	strh r0, [r4]
	ldr r7, [sp, #0x44]
	strh r1, [r7]
	movs r0, #0x50
	ldr r1, [sp, #0x48]
	strh r0, [r1]
	ldr r2, [sp, #0x54]
	ldr r1, [r2]
	adds r1, #1
	ldr r2, .L080CE784 @ =0x0600F0F6
	str r5, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	adds r0, r6, #0
	movs r3, #0x20
	bl func_080CE510
	ldr r1, .L080CE788 @ =0x0600F0F8
	movs r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	adds r0, r6, #0
	movs r2, #0x2d
	movs r3, #1
	bl func_080CE480
	ldr r2, .L080CE78C @ =0x0600F0FA
	str r5, [sp]
	str r4, [sp, #4]
	adds r0, r6, #0
	movs r1, #8
	movs r3, #0x20
	bl func_080CE510
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CE784: .4byte 0x0600F0F6
.L080CE788: .4byte 0x0600F0F8
.L080CE78C: .4byte 0x0600F0FA

	thumb_func_start func_080CE790
func_080CE790: @ 0x080CE790
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r6, r0, #0
	adds r3, r6, #0
	adds r3, #0x80
	movs r1, #0
	movs r0, #1
	mov r8, r0
	mov r2, r8
	strb r2, [r3]
	adds r0, r6, #0
	adds r0, #0xb8
	strb r2, [r0]
	mov r0, sp
	movs r2, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	str r1, [sp, #0xc]
	strb r2, [r0, #0x10]
	strb r2, [r0, #0x11]
	str r1, [sp, #0x14]
	strb r2, [r0, #0x18]
	ldrb r0, [r3]
	cmp r0, #0
	bne .L080CE7D2
	b .L080CE990
.L080CE7D2:
	ldr r0, [r6]
	adds r0, #0x88
	ldr r0, [r0]
	adds r4, r6, #0
	adds r4, #0x50
	cmp r0, #3
	bne .L080CE7E6
	adds r0, r4, #0
	bl func_0805E8F0
.L080CE7E6:
	add r7, sp, #0x1c
	ldr r1, [r6, #0x50]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r6, #0x54]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r7, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x64
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x4e
	ldrh r0, [r0]
	strh r0, [r1, #2]
	mov r0, sp
	movs r4, #1
	mov r5, r8
	strh r5, [r0, #8]
	adds r0, r6, #0
	adds r0, #0x14
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	adds r5, r6, #4
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	mov r0, sp
	strb r4, [r0, #0x18]
	ldr r0, [r6]
	bl func_08008920
	ldr r1, [sp, #0x1c]
	movs r2, #0
	cmp r1, #0
	beq .L080CE85A
	ldrh r2, [r7, #4]
.L080CE85A:
	mov r3, sp
	bl func_0805E99C
	ldr r0, [r6]
	bl func_08008910
	adds r4, r0, #0
	ldr r7, [sp, #0x24]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0x24
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L080CE880
	ldrh r3, [r1, #4]
.L080CE880:
	str r4, [sp, #0x5c]
	lsls r2, r2, #5
	ldr r0, .L080CE8B8 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x3c
	adds r1, r7, #0
	bl func_08008F0C
	add r1, sp, #0x3c
	mov sb, r1
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080CE8BC
	cmp r1, #0
	beq .L080CE8AC
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CE8AC:
	ldr r5, [sp, #0x5c]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080CE990
	.align 2, 0
.L080CE8B8: .4byte 0x06010000
.L080CE8BC:
	str r1, [sp, #0x60]
	mov r7, r8
	str r7, [sp, #0x50]
	ldr r1, [sp, #0x5c]
	ldr r0, [r1]
	ldr r2, [sp, #0x60]
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x4c]
	add r1, sp, #0x50
	add r0, sp, #0x4c
	cmp r4, #1
	bhs .L080CE8D8
	adds r0, r1, #0
.L080CE8D8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CE8F6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080CE8FA
	mov r0, sl
	bl func_080D3BC0
	b .L080CE8FA
.L080CE8F6:
	movs r0, #0
	mov sl, r0
.L080CE8FA:
	adds r4, r0, #0
	mov r8, r4
	ldr r3, [sp, #0x5c]
	ldr r2, [r3]
	mov r3, r8
	ldr r4, [sp, #0x60]
	cmp r2, r4
	beq .L080CE924
.L080CE90A:
	cmp r3, #0
	beq .L080CE91A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CE91A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x60]
	cmp r2, r5
	bne .L080CE90A
.L080CE924:
	adds r4, r3, #0
	ldr r0, [sp, #0x50]
	cmp r0, #1
	bne .L080CE940
	cmp r4, #0
	beq .L080CE93C
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CE93C:
	adds r4, #0x10
	b .L080CE968
.L080CE940:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080CE966
.L080CE948:
	cmp r2, #0
	beq .L080CE958
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CE958:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L080CE948
.L080CE966:
	adds r4, r2, #0
.L080CE968:
	ldr r3, [sp, #0x5c]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080CE97A
.L080CE974:
	adds r1, #0x10
	cmp r1, r2
	bne .L080CE974
.L080CE97A:
	cmp r0, #0
	beq .L080CE982
	bl free
.L080CE982:
	mov r0, sl
	add r0, r8
	mov r5, r8
	ldr r7, [sp, #0x5c]
	str r5, [r7]
	str r4, [r7, #4]
	str r0, [r7, #0xc]
.L080CE990:
	adds r0, r6, #0
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CE99C
	b .L080CEB4C
.L080CE99C:
	ldr r0, [r6]
	adds r0, #0x88
	ldr r0, [r0]
	adds r4, r6, #0
	adds r4, #0x88
	cmp r0, #3
	bne .L080CE9B0
	adds r0, r4, #0
	bl func_0805E8F0
.L080CE9B0:
	add r7, sp, #0x1c
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0x8c
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r7, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x9c
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x84
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x86
	ldrh r0, [r0]
	strh r0, [r1, #2]
	mov r0, sp
	movs r4, #1
	movs r5, #1
	mov sb, r5
	mov r1, sb
	strh r1, [r0, #8]
	adds r0, r6, #0
	adds r0, #0x14
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	adds r5, r6, #0
	adds r5, #0xc
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	mov r0, sp
	strb r4, [r0, #0x18]
	ldr r0, [r6]
	bl func_08008920
	ldr r1, [sp, #0x1c]
	movs r2, #0
	cmp r1, #0
	beq .L080CEA2E
	ldrh r2, [r7, #4]
.L080CEA2E:
	mov r3, sp
	bl func_0805E99C
	ldr r0, [r6]
	bl func_08008910
	adds r4, r0, #0
	ldr r6, [sp, #0x24]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0x24
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L080CEA54
	ldrh r3, [r1, #4]
.L080CEA54:
	adds r5, r4, #0
	lsls r2, r2, #5
	ldr r4, .L080CEA88 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x3c
	adds r1, r6, #0
	bl func_08008F0C
	add r6, sp, #0x3c
	mov r8, r6
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080CEA8C
	cmp r1, #0
	beq .L080CEA80
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CEA80:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080CEB4C
	.align 2, 0
.L080CEA88: .4byte 0x06010000
.L080CEA8C:
	mov sl, r1
	mov r4, sb
	str r4, [sp, #0x58]
	ldr r0, [r5]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x54]
	add r1, sp, #0x58
	add r0, sp, #0x54
	cmp r4, #1
	bhs .L080CEAA4
	adds r0, r1, #0
.L080CEAA4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CEAC2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CEAC6
	mov r0, sb
	bl func_080D3BC0
	b .L080CEAC6
.L080CEAC2:
	movs r0, #0
	mov sb, r0
.L080CEAC6:
	adds r4, r0, #0
	str r4, [sp, #0x60]
	ldr r2, [r5]
	adds r3, r4, #0
	cmp r2, sl
	beq .L080CEAEA
.L080CEAD2:
	cmp r3, #0
	beq .L080CEAE2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CEAE2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080CEAD2
.L080CEAEA:
	adds r4, r3, #0
	ldr r0, [sp, #0x58]
	cmp r0, #1
	bne .L080CEB06
	cmp r4, #0
	beq .L080CEB02
	adds r0, r4, #0
	mov r1, r8
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CEB02:
	adds r4, #0x10
	b .L080CEB28
.L080CEB06:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080CEB26
.L080CEB0E:
	cmp r2, #0
	beq .L080CEB1E
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CEB1E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CEB0E
.L080CEB26:
	adds r4, r2, #0
.L080CEB28:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080CEB38
.L080CEB32:
	adds r1, #0x10
	cmp r1, r2
	bne .L080CEB32
.L080CEB38:
	cmp r0, #0
	beq .L080CEB40
	bl free
.L080CEB40:
	ldr r0, [sp, #0x60]
	add r0, sb
	ldr r1, [sp, #0x60]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080CEB4C:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
.L080CEB5C:
	.byte 0x00, 0xB5, 0x82, 0xB0
	.byte 0x02, 0x1C, 0xBC, 0x32, 0x11, 0x60, 0x01, 0x31, 0x04, 0x4A, 0x00, 0x23, 0x00, 0x93, 0x20, 0x23
	.byte 0x01, 0x93, 0xFF, 0xF7, 0xCD, 0xFC, 0x02, 0xB0, 0x01, 0xBC, 0x00, 0x47, 0xF6, 0xF0, 0x00, 0x06

	thumb_func_start func_080CEB80
func_080CEB80: @ 0x080CEB80
	push {r4, lr}
	sub sp, #8
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xbc
	ldr r0, [r1]
	cmp r0, #6
	bhi .L080CEB94
	adds r0, #1
	b .L080CEB96
.L080CEB94:
	movs r0, #0
.L080CEB96:
	str r0, [r1]
	adds r4, r3, #0
	adds r4, #0xbc
	ldr r1, [r4]
	adds r1, #1
	ldr r2, .L080CEBBC @ =0x0600F0F6
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #0x20
	bl func_080CE510
	ldr r0, [r4]
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080CEBBC: .4byte 0x0600F0F6

	thumb_func_start func_080CEBC0
func_080CEBC0: @ 0x080CEBC0
	push {r4, lr}
	sub sp, #8
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0xbc
	ldr r0, [r1]
	cmp r0, #0
	beq .L080CEBD4
	subs r0, #1
	b .L080CEBD6
.L080CEBD4:
	movs r0, #7
.L080CEBD6:
	str r0, [r1]
	adds r4, r3, #0
	adds r4, #0xbc
	ldr r1, [r4]
	adds r1, #1
	ldr r2, .L080CEBFC @ =0x0600F0F6
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r3, #0x20
	bl func_080CE510
	ldr r0, [r4]
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080CEBFC: .4byte 0x0600F0F6

	thumb_func_start func_080CEC00
func_080CEC00: @ 0x080CEC00
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r7, #0
	stm r4!, {r1}
	ldr r1, .L080CEC80 @ =gUnk_08754C0C
	adds r0, r4, #0
	bl func_0805E6CC
	movs r6, #0
	movs r5, #0
	strh r5, [r7, #0x34]
	strh r5, [r7, #0x36]
	adds r0, r7, #0
	adds r0, #0x38
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x4c
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
	adds r0, #0x1c
	strb r6, [r0]
	adds r4, r7, #0
	adds r4, #0x6c
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
	movs r0, #0x12
	str r0, [r7, #0x7c]
	adds r0, r7, #0
	adds r0, #0x80
	str r5, [r0]
	adds r0, #4
	strb r6, [r0]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080CEC80: .4byte gUnk_08754C0C

	thumb_func_start func_080CEC84
func_080CEC84: @ 0x080CEC84
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r0, #0x84
	movs r1, #1
	strb r1, [r0]
	subs r0, #0x1c
	strb r1, [r0]
.L080CEC98:
	adds r0, r5, #0
	adds r0, #0x38
	bl func_0805E8F0
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge .L080CEC98
	ldr r1, [r5]
	mov r4, sp
	mov r0, sp
	adds r2, r6, #0
	bl func_080CE120
	mov r0, sp
	ldrb r0, [r0]
	adds r0, #8
	strh r0, [r5, #0x34]
	ldrb r0, [r4, #1]
	strh r0, [r5, #0x36]
	str r6, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x80
	str r7, [r0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080CECD0
func_080CECD0: @ 0x080CECD0
	adds r2, r0, #0
	adds r0, #0x84
	movs r1, #0
	strb r1, [r0]
	subs r0, #0x1c
	strb r1, [r0]
	movs r0, #0x12
	str r0, [r2, #0x7c]
	adds r0, r2, #0
	adds r0, #0x80
	str r1, [r0]
	bx lr

	thumb_func_start func_080CECE8
func_080CECE8: @ 0x080CECE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	mov r8, r0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080CED30
	mov r1, r8
	ldr r0, [r1]
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq .L080CED30
	mov r2, r8
	adds r2, #0x80
	adds r0, #0xbc
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r0, r1
	beq .L080CED28
	mov r2, r8
	ldr r0, [r2, #0x7c]
	cmp r0, #9
	ble .L080CED28
	mov r1, r8
	adds r1, #0x68
	movs r0, #0
	b .L080CED2E
.L080CED28:
	mov r1, r8
	adds r1, #0x68
	movs r0, #1
.L080CED2E:
	strb r0, [r1]
.L080CED30:
	mov r0, r8
	adds r0, #0x68
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CED3C
	b .L080CF040
.L080CED3C:
	mov r3, r8
	ldr r0, [r3]
	adds r0, #0x88
	ldr r0, [r0]
	mov r4, r8
	adds r4, #0x38
	cmp r0, #3
	bne .L080CED52
	adds r0, r4, #0
	bl func_0805E8F0
.L080CED52:
	mov r5, r8
	ldr r1, [r5, #0x38]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r5, #0x3c]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r6, sp, #0x20
	movs r1, #0
	movs r0, #0
	strh r0, [r6]
	strh r0, [r6, #2]
	strh r0, [r6, #4]
	strh r0, [r6, #6]
	strh r0, [r6, #8]
	str r0, [r6, #0xc]
	strb r1, [r6, #0x10]
	strb r1, [r6, #0x11]
	str r0, [r6, #0x14]
	strb r1, [r6, #0x18]
	mov r1, sp
	ldr r0, [sp]
	movs r2, #0
	cmp r0, #0
	beq .L080CED90
	ldrh r2, [r1, #4]
.L080CED90:
	cmp r2, #0
	bne .L080CED96
	b .L080CF040
.L080CED96:
	adds r1, r6, #0
	mov r0, r8
	adds r0, #0x4c
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, r8
	ldrh r0, [r1, #0x34]
	strh r0, [r6]
	ldrh r0, [r1, #0x36]
	strh r0, [r6, #2]
	movs r5, #1
	movs r2, #1
	mov sl, r2
	mov r3, sl
	strh r3, [r6, #8]
	mov r4, r8
	adds r4, #0x74
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	strh r0, [r6, #4]
	mov r7, r8
	adds r7, #0x6c
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_08007D4C
	strh r0, [r6, #6]
	strb r5, [r6, #0x18]
	mov r5, r8
	ldr r0, [r5]
	bl func_08008920
	ldr r1, [sp]
	mov r3, sp
	movs r2, #0
	str r4, [sp, #0x5c]
	cmp r1, #0
	beq .L080CEDF0
	ldrh r2, [r3, #4]
.L080CEDF0:
	adds r3, r6, #0
	bl func_0805E99C
	mov r1, r8
	ldr r0, [r1]
	bl func_08008910
	adds r5, r0, #0
	add r4, sp, #8
	ldr r2, [sp, #8]
	mov sb, r2
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #8]
	movs r3, #0
	cmp r0, #0
	beq .L080CEE1A
	ldrh r3, [r4, #4]
.L080CEE1A:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r4, .L080CEE54 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x3c
	mov r1, sb
	bl func_08008F0C
	add r5, sp, #0x3c
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CEE58
	cmp r1, #0
	beq .L080CEE46
	adds r0, r1, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CEE46:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r4, sp
	adds r4, #0x10
	str r4, [sp, #0x60]
	b .L080CEF24
	.align 2, 0
.L080CEE54: .4byte 0x06010000
.L080CEE58:
	str r1, [sp, #0x64]
	mov r5, sl
	str r5, [sp, #0x50]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x4c]
	add r1, sp, #0x50
	add r0, sp, #0x4c
	cmp r4, #1
	bhs .L080CEE72
	adds r0, r1, #0
.L080CEE72:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CEE90
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080CEE94
	mov r0, sl
	bl func_080D3BC0
	b .L080CEE94
.L080CEE90:
	movs r0, #0
	mov sl, r0
.L080CEE94:
	adds r5, r0, #0
	str r5, [sp, #0x68]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x60]
	ldr r1, [sp, #0x64]
	cmp r2, r1
	beq .L080CEEC2
.L080CEEA8:
	cmp r3, #0
	beq .L080CEEB8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CEEB8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x64]
	cmp r2, r0
	bne .L080CEEA8
.L080CEEC2:
	adds r5, r3, #0
	ldr r0, [sp, #0x50]
	cmp r0, #1
	bne .L080CEEDE
	cmp r5, #0
	beq .L080CEEDA
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CEEDA:
	adds r5, #0x10
	b .L080CEF00
.L080CEEDE:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CEEFE
.L080CEEE6:
	cmp r2, #0
	beq .L080CEEF6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CEEF6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CEEE6
.L080CEEFE:
	adds r5, r2, #0
.L080CEF00:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080CEF10
.L080CEF0A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080CEF0A
.L080CEF10:
	cmp r0, #0
	beq .L080CEF18
	bl free
.L080CEF18:
	ldr r0, [sp, #0x68]
	add r0, sl
	ldr r7, [sp, #0x68]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CEF24:
	mov r1, r8
	ldr r0, [r1]
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x10]
	ldr r2, [sp, #0x5c]
	ldr r1, [r2, #4]
	adds r0, r2, #0
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x10]
	movs r3, #0
	cmp r0, #0
	beq .L080CEF48
	ldr r7, [sp, #0x60]
	ldrh r3, [r7, #4]
.L080CEF48:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r0, .L080CEF7C @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x3c
	adds r1, r5, #0
	bl func_08008F0C
	add r1, sp, #0x3c
	mov r8, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CEF80
	cmp r1, #0
	beq .L080CEF74
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CEF74:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080CF040
	.align 2, 0
.L080CEF7C: .4byte 0x05000200
.L080CEF80:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x58]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x54]
	add r1, sp, #0x58
	add r0, sp, #0x54
	cmp r4, #1
	bhs .L080CEF98
	adds r0, r1, #0
.L080CEF98:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CEFB6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CEFBA
	mov r0, sb
	bl func_080D3BC0
	b .L080CEFBA
.L080CEFB6:
	movs r0, #0
	mov sb, r0
.L080CEFBA:
	adds r5, r0, #0
	str r5, [sp, #0x68]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L080CEFDE
.L080CEFC6:
	cmp r3, #0
	beq .L080CEFD6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CEFD6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080CEFC6
.L080CEFDE:
	adds r5, r3, #0
	ldr r0, [sp, #0x58]
	cmp r0, #1
	bne .L080CEFFA
	cmp r5, #0
	beq .L080CEFF6
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CEFF6:
	adds r5, #0x10
	b .L080CF01C
.L080CEFFA:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CF01A
.L080CF002:
	cmp r2, #0
	beq .L080CF012
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CF012:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CF002
.L080CF01A:
	adds r5, r2, #0
.L080CF01C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080CF02C
.L080CF026:
	adds r1, #0x10
	cmp r1, r2
	bne .L080CF026
.L080CF02C:
	cmp r0, #0
	beq .L080CF034
	bl free
.L080CF034:
	ldr r0, [sp, #0x68]
	add r0, sb
	ldr r1, [sp, #0x68]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CF040:
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.section .text.tail080CF05C, "ax", %progbits
	thumb_func_start func_080CF05C
func_080CF05C: @ 0x080CF05C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r7, r1, #0
	adds r4, r2, #0
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	adds r0, r4, #0
	bl GetId__C4Tool
	adds r1, r0, #0
	movs r0, #0
	mov sl, r0
	mov r0, sl
	strb r0, [r7]
	cmp r1, #0x50
	beq .L080CF088
	b .L080CF2B8
.L080CF088:
	cmp r5, #0
	bne .L080CF08E
	b .L080CF660
.L080CF08E:
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r4, .L080CF29C @ =0x00001BD8
	adds r0, r0, r4
	bl func_0800E4F0
	adds r5, r0, #0
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	bl func_0800E4FC
	adds r6, r0, #0
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	bl func_0800E51C
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, sp
	movs r2, #3
	bl func_0804EC84
	add r1, sp, #8
	adds r0, r6, #0
	movs r2, #3
	bl func_0804EC84
	add r1, sp, #0x10
	adds r0, r4, #0
	movs r2, #3
	bl func_0804EC84
	ldr r0, .L080CF2A0 @ =gUnk_081179AC
	mov r8, r0
	adds r0, r7, #0
	bl strlen
	adds r6, r7, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF104
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF0F4
	adds r4, r5, #0
.L080CF0F4:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r1, sl
	strb r1, [r0]
.L080CF104:
	mov sb, r7
	ldr r0, .L080CF2A4 @ =gUnk_081179BC
	mov r8, r0
	adds r0, r7, #0
	bl strlen
	adds r6, r7, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF138
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF128
	adds r4, r5, #0
.L080CF128:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080CF138:
	mov r6, sb
	adds r0, r6, #0
	bl strlen
	adds r1, r6, r0
	mov r8, r1
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF16C
	mov r0, sp
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF15A
	adds r4, r5, #0
.L080CF15A:
	mov r0, r8
	mov r1, sp
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L080CF16C:
	ldr r1, .L080CF2A8 @ =gUnk_081179C4
	mov sb, r1
	adds r0, r6, #0
	bl strlen
	adds r1, r6, r0
	mov r8, r1
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF1A2
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF190
	adds r4, r5, #0
.L080CF190:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L080CF1A2:
	adds r0, r6, #0
	bl strlen
	adds r1, r6, r0
	mov r8, r1
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF1D4
	add r0, sp, #0x10
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF1C2
	adds r4, r5, #0
.L080CF1C2:
	mov r0, r8
	add r1, sp, #0x10
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L080CF1D4:
	ldr r1, .L080CF2AC @ =gUnk_081179C8
	mov sb, r1
	adds r0, r6, #0
	bl strlen
	adds r1, r6, r0
	mov r8, r1
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF20A
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF1F8
	adds r4, r5, #0
.L080CF1F8:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L080CF20A:
	ldr r1, .L080CF2B0 @ =gUnk_081179CC
	mov sb, r1
	adds r0, r6, #0
	bl strlen
	adds r1, r6, r0
	mov r8, r1
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF240
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF22E
	adds r4, r5, #0
.L080CF22E:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L080CF240:
	adds r0, r6, #0
	bl strlen
	adds r1, r6, r0
	mov r8, r1
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF272
	add r0, sp, #8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF260
	adds r4, r5, #0
.L080CF260:
	mov r0, r8
	add r1, sp, #8
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L080CF272:
	ldr r1, .L080CF2B4 @ =gUnk_081179D8
	mov r8, r1
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	bne .L080CF288
	b .L080CF654
.L080CF288:
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF296
	adds r4, r5, #0
.L080CF296:
	adds r0, r6, #0
	mov r1, r8
	b .L080CF648
	.align 2, 0
.L080CF29C: .4byte 0x00001BD8
.L080CF2A0: .4byte gUnk_081179AC
.L080CF2A4: .4byte gUnk_081179BC
.L080CF2A8: .4byte gUnk_081179C4
.L080CF2AC: .4byte gUnk_081179C8
.L080CF2B0: .4byte gUnk_081179CC
.L080CF2B4: .4byte gUnk_081179D8
.L080CF2B8:
	cmp r1, #0x4c
	bne .L080CF344
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r1, .L080CF338 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E958
	mov r1, sp
	movs r2, #0xa
	bl func_0804EC84
	ldr r0, .L080CF33C @ =gUnk_081179E0
	mov r8, r0
	adds r0, r7, #0
	bl strlen
	adds r6, r7, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF302
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF2F2
	adds r4, r5, #0
.L080CF2F2:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r1, sl
	strb r1, [r0]
.L080CF302:
	mov r8, r7
	adds r0, r7, #0
	bl strlen
	adds r6, r7, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF332
	mov r0, sp
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF322
	adds r4, r5, #0
.L080CF322:
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080CF332:
	ldr r0, .L080CF340 @ =gUnk_081179F0
	b .L080CF622
	.align 2, 0
.L080CF338: .4byte 0x00001BD8
.L080CF33C: .4byte gUnk_081179E0
.L080CF340: .4byte gUnk_081179F0
.L080CF344:
	cmp r1, #0
	beq .L080CF358
	cmp r1, #8
	beq .L080CF358
	cmp r1, #0x10
	beq .L080CF358
	cmp r1, #0x18
	beq .L080CF358
	cmp r1, #0x28
	bne .L080CF440
.L080CF358:
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r1, .L080CF438 @ =0x00001BD8
	adds r0, r0, r1
	ldrb r1, [r4]
	bl func_0800E550
	adds r1, r0, #0
	add r0, sp, #0x18
	strb r1, [r0]
	bl GetDesc__C4Tool
	adds r6, r0, #0
	ldr r0, .L080CF43C @ =gUnk_081179F8
	mov sb, r0
	adds r0, r7, #0
	bl strlen
	adds r1, r7, r0
	mov r8, r1
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF3A8
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF396
	adds r4, r5, #0
.L080CF396:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L080CF3A8:
	ldrb r0, [r6]
	cmp r0, #0xd
	beq .L080CF3D2
	movs r5, #0
.L080CF3B0:
	ldrb r4, [r6]
	adds r6, #1
	cmp r4, #0
	beq .L080CF3CC
	adds r0, r7, #0
	bl strlen
	adds r1, r0, #1
	cmp r1, #0x63
	bhi .L080CF3CC
	adds r0, r7, r0
	strb r4, [r0]
	adds r0, r7, r1
	strb r5, [r0]
.L080CF3CC:
	ldrb r0, [r6]
	cmp r0, #0xd
	bne .L080CF3B0
.L080CF3D2:
	ldr r1, .L080CF43C @ =gUnk_081179F8
	mov sb, r1
	adds r0, r7, #0
	bl strlen
	adds r1, r7, r0
	mov r8, r1
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF408
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF3F6
	adds r4, r5, #0
.L080CF3F6:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L080CF408:
	ldrb r0, [r6]
	cmp r0, #0
	bne .L080CF410
	b .L080CF654
.L080CF410:
	movs r5, #0
.L080CF412:
	ldrb r4, [r6]
	adds r6, #1
	cmp r4, #0
	beq .L080CF42E
	adds r0, r7, #0
	bl strlen
	adds r1, r0, #1
	cmp r1, #0x63
	bhi .L080CF42E
	adds r0, r7, r0
	strb r4, [r0]
	adds r0, r7, r1
	strb r5, [r0]
.L080CF42E:
	ldrb r0, [r6]
	cmp r0, #0
	bne .L080CF412
	b .L080CF654
	.align 2, 0
.L080CF438: .4byte 0x00001BD8
.L080CF43C: .4byte gUnk_081179F8
.L080CF440:
	cmp r1, #0x20
	beq .L080CF446
	b .L080CF594
.L080CF446:
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r1, .L080CF588 @ =0x00001BD8
	adds r0, r0, r1
	ldrb r1, [r4]
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x19
	strb r1, [r0]
	bl GetDesc__C4Tool
	adds r6, r0, #0
	adds r0, r7, #0
	bl strlen
	adds r1, r7, r0
	mov r8, r1
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF494
	ldr r0, .L080CF58C @ =gUnk_081179F8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF482
	adds r4, r5, #0
.L080CF482:
	mov r0, r8
	ldr r1, .L080CF58C @ =gUnk_081179F8
	adds r2, r4, #0
	bl memcpy
	mov r1, r8
	adds r0, r1, r4
	mov r1, sl
	strb r1, [r0]
.L080CF494:
	ldrb r0, [r6]
	cmp r0, #0xd
	beq .L080CF4BE
	movs r5, #0
.L080CF49C:
	ldrb r4, [r6]
	adds r6, #1
	cmp r4, #0
	beq .L080CF4B8
	adds r0, r7, #0
	bl strlen
	adds r1, r0, #1
	cmp r1, #0x63
	bhi .L080CF4B8
	adds r0, r7, r0
	strb r4, [r0]
	adds r0, r7, r1
	strb r5, [r0]
.L080CF4B8:
	ldrb r0, [r6]
	cmp r0, #0xd
	bne .L080CF49C
.L080CF4BE:
	ldr r0, .L080CF58C @ =gUnk_081179F8
	mov sl, r0
	adds r0, r7, #0
	bl strlen
	adds r1, r7, r0
	mov r8, r1
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF4F4
	mov r0, sl
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF4E2
	adds r4, r5, #0
.L080CF4E2:
	mov r0, r8
	mov r1, sl
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L080CF4F4:
	ldrb r0, [r6]
	cmp r0, #0
	beq .L080CF51E
	movs r5, #0
.L080CF4FC:
	ldrb r4, [r6]
	adds r6, #1
	cmp r4, #0
	beq .L080CF518
	adds r0, r7, #0
	bl strlen
	adds r1, r0, #1
	cmp r1, #0x63
	bhi .L080CF518
	adds r0, r7, r0
	strb r4, [r0]
	adds r0, r7, r1
	strb r5, [r0]
.L080CF518:
	ldrb r0, [r6]
	cmp r0, #0
	bne .L080CF4FC
.L080CF51E:
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r1, .L080CF588 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E94C
	mov r1, sp
	movs r2, #3
	bl func_0804EC84
	adds r0, r7, #0
	bl strlen
	adds r6, r7, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF560
	mov r0, sp
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF550
	adds r4, r5, #0
.L080CF550:
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080CF560:
	ldr r0, .L080CF590 @ =gUnk_081179FC
	mov r8, r0
	adds r0, r7, #0
	bl strlen
	adds r6, r7, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF654
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF582
	adds r4, r5, #0
.L080CF582:
	adds r0, r6, #0
	mov r1, r8
	b .L080CF648
	.align 2, 0
.L080CF588: .4byte 0x00001BD8
.L080CF58C: .4byte gUnk_081179F8
.L080CF590: .4byte gUnk_081179FC
.L080CF594:
	adds r0, r1, #0
	subs r0, #0x21
	cmp r0, #3
	bls .L080CF5A4
	cmp r1, #0x26
	beq .L080CF5A4
	cmp r1, #0x27
	bne .L080CF660
.L080CF5A4:
	mov r1, sb
	ldr r0, [r1, #8]
	ldr r1, .L080CF658 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E94C
	mov r1, sp
	movs r2, #3
	bl func_0804EC84
	adds r0, r4, #0
	bl GetDesc__C4Tool
	mov r8, r0
	mov r4, r8
	adds r0, r7, #0
	bl strlen
	adds r6, r7, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF5F0
	adds r0, r4, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF5E0
	adds r4, r5, #0
.L080CF5E0:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080CF5F0:
	mov r8, r7
	adds r0, r7, #0
	bl strlen
	adds r6, r7, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF620
	mov r0, sp
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF610
	adds r4, r5, #0
.L080CF610:
	adds r0, r6, #0
	mov r1, sp
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080CF620:
	ldr r0, .L080CF65C @ =gUnk_081179FC
.L080CF622:
	mov sb, r0
	mov r0, r8
	bl strlen
	mov r1, r8
	adds r6, r1, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF654
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF644
	adds r4, r5, #0
.L080CF644:
	adds r0, r6, #0
	mov r1, sb
.L080CF648:
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080CF654:
	mov sl, r7
	b .L080CF668
	.align 2, 0
.L080CF658: .4byte 0x00001BD8
.L080CF65C: .4byte gUnk_081179FC
.L080CF660:
	adds r0, r4, #0
	bl GetDesc__C4Tool
	mov sl, r0
.L080CF668:
	mov r0, sl
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080CF67C
func_080CF67C: @ 0x080CF67C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	movs r4, #0
	strb r4, [r6]
	adds r0, r5, #0
	bl func_0800F204
	cmp r0, #5
	bls .L080CF69E
	b .L080CFA14
.L080CF69E:
	lsls r0, r0, #2
	ldr r1, .L080CF6A8 @ =.L080CF6AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080CF6A8: .4byte .L080CF6AC
.L080CF6AC: @ jump table
	.4byte .L080CF6C4 @ case 0
	.4byte .L080CF6F2 @ case 1
	.4byte .L080CF782 @ case 2
	.4byte .L080CF7E8 @ case 3
	.4byte .L080CF910 @ case 4
	.4byte .L080CFA14 @ case 5
.L080CF6C4:
	adds r0, r5, #0
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080CF6E0
	mov r0, sp
	adds r1, r5, #0
	bl func_0800F20C
	mov r0, sp
	bl GetName__C4Food
	b .L080CF70E
.L080CF6E0:
	mov r0, sp
	adds r1, r5, #0
	bl func_0800F20C
	mov r0, sp
	bl GetDesc__C4Food
	adds r4, r0, #0
	b .L080CFA14
.L080CF6F2:
	adds r0, r5, #0
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080CF76C
	adds r0, r5, #0
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x10
	strb r1, [r0]
	bl GetName__C7Article
.L080CF70E:
	adds r5, r0, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x63
	bls .L080CF71C
	movs r4, #0x63
.L080CF71C:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	movs r1, #0
	mov sb, r1
	strb r1, [r0]
	ldr r0, .L080CF768 @ =gUnk_08117AA4
	ldr r0, [r0]
	mov r8, r0
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	bne .L080CF746
	b .L080CFA12
.L080CF746:
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF754
	adds r4, r5, #0
.L080CF754:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	mov r1, sb
.L080CF762:
	strb r1, [r0]
	b .L080CFA12
	.align 2, 0
.L080CF768: .4byte gUnk_08117AA4
.L080CF76C:
	adds r0, r5, #0
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x11
	strb r1, [r0]
	bl GetDesc__C7Article
	adds r4, r0, #0
	b .L080CFA14
.L080CF782:
	ldr r0, [r7, #8]
	ldr r1, .L080CF794 @ =0x00001C70
	adds r0, r0, r1
	bl GetGrowthStage__C3Dog
	cmp r0, #1
	bne .L080CF79C
	ldr r5, .L080CF798 @ =gUnk_08117A0C
	b .L080CF79E
	.align 2, 0
.L080CF794: .4byte 0x00001C70
.L080CF798: .4byte gUnk_08117A0C
.L080CF79C:
	ldr r5, .L080CF7E0 @ =gUnk_08117A14
.L080CF79E:
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x63
	bls .L080CF7AC
	movs r4, #0x63
.L080CF7AC:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r7, #8]
	ldr r1, .L080CF7E4 @ =0x00001C70
	adds r0, r0, r1
	bl GetName__C6Animal
	mov r8, r0
	mov r4, r8
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	bne .L080CF7DC
	b .L080CFA12
.L080CF7DC:
	adds r0, r4, #0
	b .L080CF9F6
	.align 2, 0
.L080CF7E0: .4byte gUnk_08117A14
.L080CF7E4: .4byte 0x00001C70
.L080CF7E8:
	ldr r4, [r7, #8]
	movs r0, #0x82
	lsls r0, r0, #3
	adds r4, r4, r0
	adds r0, r5, #0
	bl func_0800F344
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetChicken__4CoopUi
	mov sb, r0
	bl GetGrowthStage__C7Chicken
	cmp r0, #1
	bne .L080CF810
	ldr r5, .L080CF80C @ =gUnk_08117A1C
	b .L080CF812
	.align 2, 0
.L080CF80C: .4byte gUnk_08117A1C
.L080CF810:
	ldr r5, .L080CF888 @ =gUnk_08117A28
.L080CF812:
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x63
	bls .L080CF820
	movs r4, #0x63
.L080CF820:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	mov r0, sb
	bl GetName__C6Animal
	mov r8, r0
	mov r4, r8
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF868
	adds r0, r4, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF858
	adds r4, r5, #0
.L080CF858:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L080CF868:
	mov r0, sb
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0
	beq .L080CF890
	ldr r1, .L080CF88C @ =gUnk_08117A30
	mov r8, r1
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	b .L080CF9EC
	.align 2, 0
.L080CF888: .4byte gUnk_08117A28
.L080CF88C: .4byte gUnk_08117A30
.L080CF890:
	mov r0, sb
	bl IsUnhappy__C9Livestock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #0
	beq .L080CF8D8
	ldr r0, .L080CF8D4 @ =gUnk_08117A38
	mov r8, r0
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	bne .L080CF8B6
	b .L080CFA12
.L080CF8B6:
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF8C4
	adds r4, r5, #0
.L080CF8C4:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	mov r1, sl
	b .L080CF762
	.align 2, 0
.L080CF8D4: .4byte gUnk_08117A38
.L080CF8D8:
	ldr r0, .L080CF90C @ =gUnk_08117A44
	mov sb, r0
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	bne .L080CF8EE
	b .L080CFA12
.L080CF8EE:
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF8FC
	adds r4, r5, #0
.L080CF8FC:
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	mov r1, r8
	b .L080CF762
	.align 2, 0
.L080CF90C: .4byte gUnk_08117A44
.L080CF910:
	ldr r5, .L080CFA28 @ =gUnk_08117A50
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x63
	bls .L080CF920
	movs r4, #0x63
.L080CF920:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	movs r1, #0
	mov sb, r1
	strb r1, [r0]
	ldr r0, [r7, #8]
	movs r1, #0xe5
	lsls r1, r1, #5
	adds r0, r0, r1
	bl func_0800FFD0
	add r1, sp, #4
	movs r2, #0
	bl func_0804EC84
	ldr r0, .L080CFA2C @ =gUnk_08117A5C
	mov r8, r0
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF978
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF968
	adds r4, r5, #0
.L080CF968:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	mov r1, sb
	strb r1, [r0]
.L080CF978:
	mov sb, r6
	ldr r0, .L080CFA30 @ =gUnk_08117A78
	mov r8, r0
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF9AC
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF99C
	adds r4, r5, #0
.L080CF99C:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L080CF9AC:
	mov r7, sb
	adds r0, r7, #0
	bl strlen
	adds r1, r7, r0
	mov r8, r1
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CF9E0
	add r0, sp, #4
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CF9CE
	adds r4, r5, #0
.L080CF9CE:
	mov r0, r8
	add r1, sp, #4
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L080CF9E0:
	ldr r1, .L080CFA34 @ =gUnk_08117A84
	mov r8, r1
	adds r0, r7, #0
	bl strlen
	adds r7, r7, r0
.L080CF9EC:
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CFA12
	mov r0, r8
.L080CF9F6:
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CFA02
	adds r4, r5, #0
.L080CFA02:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L080CFA12:
	adds r4, r6, #0
.L080CFA14:
	adds r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080CFA28: .4byte gUnk_08117A50
.L080CFA2C: .4byte gUnk_08117A5C
.L080CFA30: .4byte gUnk_08117A78
.L080CFA34: .4byte gUnk_08117A84

	thumb_func_start func_080CFA38
func_080CFA38: @ 0x080CFA38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r1, #0
	str r2, [sp]
	movs r0, #0
	mov sb, r0
	mov r1, sb
	strb r1, [r6]
	mov r0, sp
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L080CFA5E
	cmp r0, #1
	beq .L080CFA8E
	b .L080CFB18
.L080CFA5E:
	mov r0, sp
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080CFA7C
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, sp
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetName__C4Food
	b .L080CFAAA
.L080CFA7C:
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, sp
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetDesc__C4Food
	b .L080CFB16
.L080CFA8E:
	mov r0, sp
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080CFB04
	mov r0, sp
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetName__C7Article
.L080CFAAA:
	adds r5, r0, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x63
	bls .L080CFAB8
	movs r4, #0x63
.L080CFAB8:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r1, sb
	strb r1, [r0]
	ldr r0, .L080CFB00 @ =gUnk_08117AA4
	ldr r0, [r0]
	mov r8, r0
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080CFAFC
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080CFAEC
	adds r4, r5, #0
.L080CFAEC:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	mov r1, sb
	strb r1, [r0]
.L080CFAFC:
	mov sb, r6
	b .L080CFB18
	.align 2, 0
.L080CFB00: .4byte gUnk_08117AA4
.L080CFB04:
	mov r0, sp
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	bl GetDesc__C7Article
.L080CFB16:
	mov sb, r0
.L080CFB18:
	mov r0, sb
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080CFB28
func_080CFB28: @ 0x080CFB28
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl func_080A4A94
	adds r1, r6, #0
	adds r1, #0x90
	ldr r0, .L080CFB58 @ =vtable_unk_080E85E8
	str r0, [r1]
	adds r4, r6, #0
	adds r4, #0x94
	movs r5, #0x53
	movs r7, #1
	rsbs r7, r7, #0
.L080CFB42:
	adds r0, r4, #0
	bl __9FieldPlot
	adds r4, #4
	subs r5, #1
	cmp r5, r7
	bne .L080CFB42
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080CFB58: .4byte vtable_unk_080E85E8

	thumb_func_start func_080CFB5C
func_080CFB5C: @ 0x080CFB5C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	ldr r0, [r5, #4]
	bl GetMapData
	ldr r0, [r0, #4]
	lsls r4, r4, #2
	adds r1, r5, #0
	adds r1, #0x1c
	adds r4, r1, r4
	ldr r1, [r4]
	bl Unpack
	ldr r0, [r5, #4]
	cmp r0, #0x3e
	bne .L080CFB9E
	ldr r0, .L080CFBA4 @ =gUnk_086D6368
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0x60
	bl func_08008E64
	ldr r0, .L080CFBA8 @ =gUnk_08699FF4
	ldr r1, [r4]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0x80
	bl func_08008E64
.L080CFB9E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080CFBA4: .4byte gUnk_086D6368
.L080CFBA8: .4byte gUnk_08699FF4

	thumb_func_start func_080CFBAC
func_080CFBAC: @ 0x080CFBAC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp, #4]
	bl func_080A5CC0
	ldr r1, [sp, #4]
	ldr r0, [r1, #4]
	cmp r0, #0x3e
	bne .L080CFC6A
	movs r0, #0
	mov sl, r0
	adds r7, r1, #0
	adds r7, #0x94
.L080CFBCE:
	movs r4, #0
	mov r1, sl
	lsls r1, r1, #1
	mov sb, r1
	movs r0, #1
	add r0, sl
	mov r8, r0
	mov r1, sl
	subs r1, #1
	str r1, [sp, #8]
	mov r5, r8
.L080CFBE4:
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r6, r7, r0
	adds r3, r6, #0
	movs r0, #0
	cmp r4, #0
	blt .L080CFC08
	mov r1, r8
	cmp r1, #0
	blt .L080CFC08
	cmp r4, #0xb
	bgt .L080CFC08
	cmp r5, #6
	bgt .L080CFC08
	movs r0, #1
.L080CFC08:
	cmp r0, #0
	beq .L080CFC1A
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r1, r7, r0
	b .L080CFC1C
.L080CFC1A:
	movs r1, #0
.L080CFC1C:
	ldr r2, [sp, #8]
	movs r0, #0
	cmp r4, #0
	blt .L080CFC32
	cmp r2, #0
	blt .L080CFC32
	cmp r4, #0xb
	bgt .L080CFC32
	cmp r2, #6
	bgt .L080CFC32
	movs r0, #1
.L080CFC32:
	cmp r0, #0
	beq .L080CFC44
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r2, r7, r0
	b .L080CFC46
.L080CFC44:
	movs r2, #0
.L080CFC46:
	adds r0, r3, #0
	bl method_0800AF5C__C9FieldPlotPC9FieldPlotT1
	lsls r1, r4, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	mov r2, sb
	adds r2, #7
	adds r3, r6, #0
	bl func_080CFEA8
	adds r4, #1
	cmp r4, #0xb
	bls .L080CFBE4
	mov sl, r8
	mov r0, sl
	cmp r0, #6
	bls .L080CFBCE
.L080CFC6A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080CFC7C
func_080CFC7C: @ 0x080CFC7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r4, r0, #0
	adds r5, r1, #0
	bl func_080A5EA0
	ldr r0, [r4, #4]
	cmp r0, #0x3e
	beq .L080CFC98
	b .L080CFE96
.L080CFC98:
	ldr r1, .L080CFCC8 @ =gUnk_086D5508
	mov r0, sp
	ldr r2, .L080CFCCC @ =0x06005FC0
	movs r3, #0xe6
	lsls r3, r3, #4
	bl func_08008F0C
	mov sb, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080CFCD0
	cmp r1, #0
	beq .L080CFCC0
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CFCC0:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080CFD96
	.align 2, 0
.L080CFCC8: .4byte gUnk_086D5508
.L080CFCCC: .4byte 0x06005FC0
.L080CFCD0:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r1, [r5]
	mov r6, sl
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x10]
	add r2, sp, #0x14
	add r0, sp, #0x10
	cmp r4, #1
	bhs .L080CFCEA
	adds r0, r2, #0
.L080CFCEA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CFD0A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CFD06
	mov r0, r8
	bl func_080D3BC0
.L080CFD06:
	ldr r1, [r5]
	b .L080CFD0E
.L080CFD0A:
	movs r0, #0
	mov r8, r0
.L080CFD0E:
	adds r4, r0, #0
	str r4, [sp, #0x20]
	adds r2, r1, #0
	adds r3, r4, #0
	cmp r2, sl
	beq .L080CFD32
.L080CFD1A:
	cmp r3, #0
	beq .L080CFD2A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CFD2A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080CFD1A
.L080CFD32:
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne .L080CFD4E
	cmp r4, #0
	beq .L080CFD4A
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CFD4A:
	adds r4, #0x10
	b .L080CFD70
.L080CFD4E:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080CFD6E
.L080CFD56:
	cmp r2, #0
	beq .L080CFD66
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CFD66:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CFD56
.L080CFD6E:
	adds r4, r2, #0
.L080CFD70:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CFD80
.L080CFD7A:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CFD7A
.L080CFD80:
	cmp r1, #0
	beq .L080CFD8A
	adds r0, r1, #0
	bl free
.L080CFD8A:
	ldr r0, [sp, #0x20]
	add r0, r8
	ldr r1, [sp, #0x20]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080CFD96:
	ldr r1, .L080CFDC8 @ =gUnk_08698E14
	mov r0, sp
	ldr r2, .L080CFDCC @ =0x06006E20
	movs r3, #0x8f
	lsls r3, r3, #5
	bl func_08008F0C
	mov sb, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080CFDD0
	cmp r1, #0
	beq .L080CFDBE
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CFDBE:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080CFE96
	.align 2, 0
.L080CFDC8: .4byte gUnk_08698E14
.L080CFDCC: .4byte 0x06006E20
.L080CFDD0:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r1, [r5]
	mov r6, sl
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x18]
	add r2, sp, #0x1c
	add r0, sp, #0x18
	cmp r4, #1
	bhs .L080CFDEA
	adds r0, r2, #0
.L080CFDEA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CFE0A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080CFE06
	mov r0, r8
	bl func_080D3BC0
.L080CFE06:
	ldr r1, [r5]
	b .L080CFE0E
.L080CFE0A:
	movs r0, #0
	mov r8, r0
.L080CFE0E:
	adds r4, r0, #0
	str r4, [sp, #0x20]
	adds r2, r1, #0
	adds r3, r4, #0
	cmp r2, sl
	beq .L080CFE32
.L080CFE1A:
	cmp r3, #0
	beq .L080CFE2A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CFE2A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080CFE1A
.L080CFE32:
	adds r4, r3, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne .L080CFE4E
	cmp r4, #0
	beq .L080CFE4A
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CFE4A:
	adds r4, #0x10
	b .L080CFE70
.L080CFE4E:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080CFE6E
.L080CFE56:
	cmp r2, #0
	beq .L080CFE66
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CFE66:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CFE56
.L080CFE6E:
	adds r4, r2, #0
.L080CFE70:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CFE80
.L080CFE7A:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CFE7A
.L080CFE80:
	cmp r1, #0
	beq .L080CFE8A
	adds r0, r1, #0
	bl free
.L080CFE8A:
	ldr r0, [sp, #0x20]
	add r0, r8
	ldr r1, [sp, #0x20]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080CFE96:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080CFEA8
func_080CFEA8: @ 0x080CFEA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sb, r1
	adds r7, r2, #0
	str r3, [sp]
	ldr r0, [r6, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov r8, r0
	ldr r0, [sp]
	bl method_0800AF20__C9FieldPlot
	adds r5, r0, #0
	cmp r5, #0
	beq .L080CFF0A
	mov r0, r8
	muls r0, r7, r0
	ldr r1, [r6, #0x10]
	lsls r0, r0, #1
	mov r2, sb
	lsls r4, r2, #1
	adds r1, r4, r1
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #4
	bl memcpy
	adds r0, r7, #1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	ldr r1, [r6, #0x10]
	lsls r0, r0, #1
	adds r4, r4, r1
	adds r0, r0, r4
	adds r1, r5, #4
	movs r2, #4
	bl memcpy
	adds r1, r6, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080CFF0A:
	mov r5, r8
	muls r5, r7, r5
	adds r0, r7, #1
	mov sl, r0
	ldr r1, [sp, #0x24]
	cmp r1, #0
	beq .L080CFF66
	subs r0, r7, #1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r1, [r6, #0x18]
	lsls r0, r0, #1
	mov r3, sb
	lsls r4, r3, #1
	adds r1, r4, r1
	adds r0, r0, r1
	ldr r1, [sp, #0x24]
	movs r2, #4
	bl memcpy
	ldr r1, [r6, #0x14]
	lsls r0, r5, #1
	adds r1, r4, r1
	adds r0, r0, r1
	ldr r1, [sp, #0x24]
	adds r1, #4
	movs r2, #4
	bl memcpy
	mov r1, r8
	mov r0, sl
	muls r0, r1, r0
	ldr r1, [r6, #0x14]
	lsls r0, r0, #1
	adds r4, r4, r1
	adds r0, r0, r4
	ldr r1, [sp, #0x24]
	adds r1, #8
	movs r2, #4
	bl memcpy
	adds r1, r6, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080CFF66:
	ldr r0, [sp]
	bl method_0800A07C__C9FieldPlot
	mov r2, sb
	adds r4, r2, r5
	ldr r2, [r6, #0x2c]
	lsls r4, r4, #2
	adds r4, r4, r2
	mov r3, r8
	mov r1, sl
	muls r1, r3, r1
	add r1, sb
	lsls r1, r1, #2
	adds r1, r1, r2
	movs r5, #1
	ands r5, r0
	ldrb r3, [r1, #4]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r5
	strb r0, [r1, #4]
	ldrb r3, [r1]
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r5
	strb r0, [r1]
	ldrb r1, [r4, #4]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r4, #4]
	ldrb r0, [r4]
	ands r2, r0
	orrs r2, r5
	strb r2, [r4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080CFFC0
func_080CFFC0: @ 0x080CFFC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r2, sl
	adds r2, #0x94
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r3]
	str r1, [r0]
	subs r1, r6, #1
	movs r0, #0
	cmp r5, #0
	blt .L080CFFFC
	cmp r1, #0
	blt .L080CFFFC
	cmp r5, #0xb
	bgt .L080CFFFC
	cmp r1, #6
	bgt .L080CFFFC
	movs r0, #1
.L080CFFFC:
	cmp r0, #0
	beq .L080D000E
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r0, r2, r0
	b .L080D0010
.L080D000E:
	movs r0, #0
.L080D0010:
	mov r7, sl
	adds r7, #0x94
	subs r1, r6, #1
	mov r8, r1
	lsls r4, r5, #1
	cmp r0, #0
	beq .L080D00A0
	lsls r0, r1, #1
	add r0, r8
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r7
	mov sb, r0
	adds r2, r7, #0
	mov r3, r8
	mov r4, sb
	adds r1, r6, #0
	movs r0, #0
	cmp r5, #0
	blt .L080D0048
	cmp r6, #0
	blt .L080D0048
	cmp r5, #0xb
	bgt .L080D0048
	cmp r6, #6
	bgt .L080D0048
	movs r0, #1
.L080D0048:
	cmp r0, #0
	beq .L080D005A
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r1, r2, r0
	b .L080D005C
.L080D005A:
	movs r1, #0
.L080D005C:
	subs r3, #1
	movs r0, #0
	cmp r5, #0
	blt .L080D0072
	cmp r3, #0
	blt .L080D0072
	cmp r5, #0xb
	bgt .L080D0072
	cmp r3, #6
	bgt .L080D0072
	movs r0, #1
.L080D0072:
	cmp r0, #0
	beq .L080D0084
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r2, r2, r0
	b .L080D0086
.L080D0084:
	movs r2, #0
.L080D0086:
	adds r0, r4, #0
	bl method_0800AF5C__C9FieldPlotPC9FieldPlotT1
	lsls r4, r5, #1
	mov r1, r8
	lsls r2, r1, #1
	adds r2, #7
	str r0, [sp]
	mov r0, sl
	adds r1, r4, #0
	mov r3, sb
	bl func_080CFEA8
.L080D00A0:
	lsls r1, r6, #1
	adds r0, r1, r6
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r7
	mov sb, r0
	adds r3, r7, #0
	mov ip, sb
	adds r2, r6, #1
	movs r0, #0
	str r1, [sp, #4]
	adds r6, r2, #0
	cmp r5, #0
	blt .L080D00CC
	cmp r6, #0
	blt .L080D00CC
	cmp r5, #0xb
	bgt .L080D00CC
	cmp r6, #6
	bgt .L080D00CC
	movs r0, #1
.L080D00CC:
	cmp r0, #0
	beq .L080D00DE
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r1, r3, r0
	b .L080D00E0
.L080D00DE:
	movs r1, #0
.L080D00E0:
	mov r2, r8
	movs r0, #0
	cmp r5, #0
	blt .L080D00F6
	cmp r2, #0
	blt .L080D00F6
	cmp r5, #0xb
	bgt .L080D00F6
	cmp r2, #6
	bgt .L080D00F6
	movs r0, #1
.L080D00F6:
	cmp r0, #0
	beq .L080D0108
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r2, r3, r0
	b .L080D010A
.L080D0108:
	movs r2, #0
.L080D010A:
	mov r0, ip
	bl method_0800AF5C__C9FieldPlotPC9FieldPlotT1
	ldr r2, [sp, #4]
	adds r2, #7
	str r0, [sp]
	mov r0, sl
	adds r1, r4, #0
	mov r3, sb
	bl func_080CFEA8
	adds r2, r7, #0
	adds r1, r6, #0
	movs r0, #0
	cmp r5, #0
	blt .L080D0138
	cmp r6, #0
	blt .L080D0138
	cmp r5, #0xb
	bgt .L080D0138
	cmp r6, #6
	bgt .L080D0138
	movs r0, #1
.L080D0138:
	cmp r0, #0
	beq .L080D014A
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r0, r2, r0
	b .L080D014C
.L080D014A:
	movs r0, #0
.L080D014C:
	cmp r0, #0
	beq .L080D01CE
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r8, r0
	adds r2, r7, #0
	adds r3, r6, #0
	mov r7, r8
	adds r1, r6, #1
	movs r0, #0
	cmp r5, #0
	blt .L080D017A
	cmp r1, #0
	blt .L080D017A
	cmp r5, #0xb
	bgt .L080D017A
	cmp r1, #6
	bgt .L080D017A
	movs r0, #1
.L080D017A:
	cmp r0, #0
	beq .L080D018C
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r1, r2, r0
	b .L080D018E
.L080D018C:
	movs r1, #0
.L080D018E:
	subs r3, #1
	movs r0, #0
	cmp r5, #0
	blt .L080D01A4
	cmp r3, #0
	blt .L080D01A4
	cmp r5, #0xb
	bgt .L080D01A4
	cmp r3, #6
	bgt .L080D01A4
	movs r0, #1
.L080D01A4:
	cmp r0, #0
	beq .L080D01B6
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r5, r0
	lsls r0, r0, #2
	adds r2, r2, r0
	b .L080D01B8
.L080D01B6:
	movs r2, #0
.L080D01B8:
	adds r0, r7, #0
	bl method_0800AF5C__C9FieldPlotPC9FieldPlotT1
	lsls r2, r6, #1
	adds r2, #7
	str r0, [sp]
	mov r0, sl
	adds r1, r4, #0
	mov r3, r8
	bl func_080CFEA8
.L080D01CE:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D01E0
func_080D01E0: @ 0x080D01E0
	ldr r2, .L080D01F4 @ =gUnk_03000418
	str r0, [r2]
	subs r1, #0x10
	str r1, [r0]
	movs r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
.L080D01F4: .4byte gUnk_03000418

	thumb_func_start malloc
malloc: @ 0x080D01F8
	push {r4, r5, lr}
	adds r0, #3
	lsrs r0, r0, #2
	lsls r4, r0, #2
	ldr r0, .L080D0244 @ =gUnk_03000418
	ldr r2, [r0]
	cmp r2, #0
	beq .L080D0252
.L080D0208:
	ldr r5, [r2, #4]
	cmp r5, #0
	bne .L080D0248
	ldr r1, [r2]
	cmp r1, r4
	blo .L080D0248
	adds r0, r4, #0
	adds r0, #0x20
	cmp r1, r0
	blo .L080D023C
	adds r0, r2, r4
	adds r3, r0, #0
	adds r3, #0x10
	subs r1, #0x10
	subs r1, r1, r4
	str r1, [r0, #0x10]
	str r5, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [r2, #0xc]
	str r0, [r3, #0xc]
	ldr r0, [r2, #0xc]
	cmp r0, #0
	beq .L080D0238
	str r3, [r0, #8]
.L080D0238:
	str r4, [r2]
	str r3, [r2, #0xc]
.L080D023C:
	movs r0, #1
	str r0, [r2, #4]
	b .L080D024E
	.align 2, 0
.L080D0244: .4byte gUnk_03000418
.L080D0248:
	ldr r2, [r2, #0xc]
	cmp r2, #0
	bne .L080D0208
.L080D024E:
	cmp r2, #0
	bne .L080D0256
.L080D0252:
	movs r0, #0
	b .L080D025A
.L080D0256:
	adds r0, r2, #0
	adds r0, #0x10
.L080D025A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start free
free: @ 0x080D0260
	push {lr}
	cmp r0, #0
	beq .L080D02B4
	adds r3, r0, #0
	subs r3, #0x10
	ldr r2, [r3, #8]
	cmp r2, #0
	beq .L080D028E
	ldr r0, [r2, #4]
	cmp r0, #0
	bne .L080D028E
	ldr r0, [r2]
	adds r0, #0x10
	ldr r1, [r3]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r3, #0xc]
	str r0, [r2, #0xc]
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq .L080D028C
	str r2, [r0, #8]
.L080D028C:
	adds r3, r2, #0
.L080D028E:
	ldr r2, [r3, #0xc]
	cmp r2, #0
	beq .L080D02B0
	ldr r0, [r2, #4]
	cmp r0, #0
	bne .L080D02B0
	ldr r0, [r3]
	adds r0, #0x10
	ldr r1, [r2]
	adds r0, r0, r1
	str r0, [r3]
	ldr r0, [r2, #0xc]
	str r0, [r3, #0xc]
	ldr r1, [r2, #0xc]
	cmp r1, #0
	beq .L080D02B0
	str r3, [r1, #8]
.L080D02B0:
	movs r0, #0
	str r0, [r3, #4]
.L080D02B4:
	pop {r0}
	bx r0
.L080D02B8:
	.byte 0x00, 0xB5, 0x00, 0x28, 0x02, 0xD0, 0x10, 0x38
	.byte 0x00, 0x68, 0x00, 0xE0, 0x00, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start func_080D02CC
func_080D02CC: @ 0x080D02CC
	push {r4, r5, lr}
	ldr r5, .L080D02E8 @ =gUnk_03000420
	str r0, [r5]
	movs r4, #0
	str r4, [r0]
	bl func_080D0B88
	ldr r0, [r5]
	str r4, [r0, #4]
	str r4, [r0, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080D02E8: .4byte gUnk_03000420

	.section .text.tail080D02F0, "ax", %progbits
	thumb_func_start func_080D02F0
func_080D02F0: @ 0x080D02F0
	push {lr}
	sub sp, #0x20
	ldr r0, .L080D033C @ =gUnk_03000420
	ldr r1, [r0]
	ldr r2, [r1]
	cmp r2, #0
	bne .L080D0336
	movs r0, #1
	str r0, [r1]
	str r2, [r1, #0x14]
	str r2, [r1, #0x18]
	str r2, [r1, #0x1c]
	str r0, [r1, #0x20]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r1, r3
	str r2, [r0]
	adds r3, #4
	adds r0, r1, r3
	str r2, [r0]
	subs r3, #8
	adds r0, r1, r3
	str r2, [r0]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [sp]
	mov r0, sp
	bl func_080D0BA8
	movs r0, #0
	movs r1, #0
	bl func_080D0B14
	bl func_080D0ABC
.L080D0336:
	add sp, #0x20
	pop {r0}
	bx r0
	.align 2, 0
.L080D033C: .4byte gUnk_03000420

	thumb_func_start func_080D0340
func_080D0340: @ 0x080D0340
	push {lr}
	ldr r0, .L080D0358 @ =gUnk_03000420
	ldr r1, [r0]
	ldr r0, [r1]
	cmp r0, #0
	beq .L080D0354
	movs r0, #0
	str r0, [r1]
	bl func_080D0AE0
.L080D0354:
	pop {r0}
	bx r0
	.align 2, 0
.L080D0358: .4byte gUnk_03000420

	thumb_func_start func_080D035C
func_080D035C: @ 0x080D035C
	push {r4, r5, lr}
	ldr r5, .L080D039C @ =gUnk_03000420
	ldr r1, [r5]
	ldr r0, [r1]
	cmp r0, #0
	beq .L080D0436
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r0, [r0]
	str r0, [r1, #0x1c]
	ldr r0, .L080D03A0 @ =gUnk_0300041C
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	bne .L080D03C2
	bl func_080D0C10
	cmp r0, #0
	bne .L080D03A4
	ldr r0, [r5]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r4, [r0]
	cmp r4, #0
	bne .L080D03A4
	bl func_080D0BE0
	ldr r0, [r5]
	str r4, [r0, #0x10]
	b .L080D03C2
	.align 2, 0
.L080D039C: .4byte gUnk_03000420
.L080D03A0: .4byte gUnk_0300041C
.L080D03A4:
	ldr r0, .L080D03F0 @ =gUnk_03000420
	ldr r3, [r0]
	ldr r0, [r3, #0x14]
	cmp r0, #0
	beq .L080D03C2
	movs r2, #0
	str r2, [r3, #0x14]
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, [r1]
	str r0, [r3, #0x18]
	str r2, [r1]
	bl func_080D0C2C
.L080D03C2:
	ldr r0, .L080D03F0 @ =gUnk_03000420
	ldr r1, [r0]
	ldr r0, [r1, #0xc]
	adds r0, #1
	str r0, [r1, #0xc]
	ldr r0, [r1, #0xc]
	cmp r0, #0xa
	bls .L080D0400
	movs r0, #0
	str r0, [r1, #0xc]
	ldr r0, .L080D03F4 @ =gUnk_0300041C
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #0
	beq .L080D0400
	cmp r0, #1
	bne .L080D03F8
	movs r0, #1
	movs r1, #0
	bl func_080D0B14
	b .L080D0400
	.align 2, 0
.L080D03F0: .4byte gUnk_03000420
.L080D03F4: .4byte gUnk_0300041C
.L080D03F8:
	movs r0, #1
	movs r1, #1
	bl func_080D0B14
.L080D0400:
	ldr r4, .L080D043C @ =gUnk_03000420
	ldr r1, [r4]
	ldr r0, [r1, #0x10]
	adds r0, #1
	str r0, [r1, #0x10]
	ldr r0, .L080D0440 @ =gUnk_0300041C
	ldr r0, [r0]
	ldr r0, [r0]
	cmp r0, #1
	bls .L080D0436
	ldr r0, [r1, #0x10]
	cmp r0, #0xb4
	bls .L080D0436
	movs r0, #0xb
	bl func_080D0A94
	ldr r0, [r4]
	movs r2, #0
	str r2, [r0, #0x14]
	movs r1, #0xa
	str r1, [r0, #0x18]
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r2, [r0]
	bl func_080D0C2C
.L080D0436:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080D043C: .4byte gUnk_03000420
.L080D0440: .4byte gUnk_0300041C

	.if 0
	thumb_func_start func_080D0444
func_080D0444: @ 0x080D0444
	ldr r2, .L080D0450 @ =gUnk_03000420
	ldr r2, [r2]
	str r0, [r2, #4]
	str r1, [r2, #8]
	bx lr
	.align 2, 0
.L080D0450: .4byte gUnk_03000420

	.endif
	.section .text.tail080D0454, "ax", %progbits
	thumb_func_start func_080D0454
func_080D0454: @ 0x080D0454
	push {r4, lr}
	sub sp, #0x20
	ldr r4, .L080D048C @ =gUnk_03000420
	ldr r1, [r4]
	movs r0, #1
	str r0, [r1, #0x14]
	str r0, [sp]
	mov r0, sp
	bl func_080D0BA8
	movs r0, #3
	str r0, [sp]
	ldr r0, [r4]
	adds r0, #0x24
	str r0, [sp, #0x10]
	movs r0, #2
	str r0, [sp, #0x18]
	mov r1, sp
	movs r0, #0
	strh r0, [r1, #0x1c]
	mov r0, sp
	bl func_080D0BA8
	add sp, #0x20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080D048C: .4byte gUnk_03000420
.L080D0490:
	.byte 0x70, 0xB5, 0x4E, 0x46, 0x45, 0x46, 0x60, 0xB4, 0x88, 0xB0, 0x81, 0x46, 0x0E, 0x1C, 0x14, 0x48
	.byte 0x80, 0x46, 0x01, 0x68, 0x02, 0x24, 0x4C, 0x61, 0x04, 0x20, 0x00, 0x90, 0x24, 0x31, 0x04, 0x91
	.byte 0x06, 0x94, 0x68, 0x46, 0x00, 0x25, 0x85, 0x83, 0x00, 0xF0, 0x76, 0xFB, 0x00, 0x94, 0x49, 0x46
	.byte 0x04, 0x91, 0x01, 0x36, 0x76, 0x08, 0x06, 0x96, 0x68, 0x46, 0x85, 0x83, 0x00, 0xF0, 0x6C, 0xFB
	.byte 0x41, 0x46, 0x08, 0x68, 0xC5, 0x61, 0x06, 0x62, 0xC2, 0x21, 0x49, 0x00, 0x40, 0x18, 0x05, 0x60
	.byte 0x08, 0xB0, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x20, 0x04, 0x00, 0x03, 0x70, 0xB5, 0x4E, 0x46, 0x45, 0x46, 0x60, 0xB4, 0x88, 0xB0, 0x81, 0x46
	.byte 0x0D, 0x1C, 0x14, 0x48, 0x80, 0x46, 0x01, 0x68, 0x03, 0x26, 0x4E, 0x61, 0x04, 0x20, 0x00, 0x90
	.byte 0x24, 0x31, 0x04, 0x91, 0x02, 0x20, 0x06, 0x90, 0x68, 0x46, 0x00, 0x24, 0x84, 0x83, 0x00, 0xF0
	.byte 0x43, 0xFB, 0x00, 0x96, 0x49, 0x46, 0x04, 0x91, 0x01, 0x35, 0x6D, 0x08, 0x06, 0x95, 0x68, 0x46
	.byte 0x84, 0x83, 0x00, 0xF0, 0x39, 0xFB, 0x41, 0x46, 0x08, 0x68, 0xC4, 0x61, 0x05, 0x62, 0xC2, 0x21
	.byte 0x49, 0x00, 0x40, 0x18, 0x04, 0x60, 0x08, 0xB0, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0x70, 0xBC
	.byte 0x01, 0xBC, 0x00, 0x47, 0x20, 0x04, 0x00, 0x03

	thumb_func_start func_080D0558
func_080D0558: @ 0x080D0558
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	adds r4, r1, #0
	mov sb, r2
	adds r6, r3, #0
	ldr r0, .L080D05D8 @ =gUnk_03000420
	mov sl, r0
	ldr r0, [r0]
	movs r1, #4
	str r1, [r0, #0x14]
	str r1, [sp]
	adds r0, #0x24
	str r0, [sp, #0x10]
	movs r1, #2
	mov r8, r1
	str r1, [sp, #0x18]
	mov r0, sp
	movs r5, #0
	strh r5, [r0, #0x1c]
	bl func_080D0BA8
	movs r0, #3
	str r0, [sp]
	mov r0, sb
	str r0, [sp, #0x10]
	adds r6, #1
	lsrs r6, r6, #1
	str r6, [sp, #0x18]
	mov r0, sp
	strh r5, [r0, #0x1c]
	bl func_080D0BA8
	mov r1, r8
	str r1, [sp]
	str r7, [sp, #0x10]
	adds r4, #1
	lsrs r4, r4, #1
	str r4, [sp, #0x18]
	mov r0, sp
	strh r5, [r0, #0x1c]
	bl func_080D0BA8
	mov r1, sl
	ldr r0, [r1]
	str r5, [r0, #0x1c]
	adds r4, r4, r6
	str r4, [r0, #0x20]
	movs r1, #0xc2
	lsls r1, r1, #1
	adds r0, r0, r1
	str r5, [r0]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080D05D8: .4byte gUnk_03000420

	thumb_func_start func_080D05DC
func_080D05DC: @ 0x080D05DC
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r6, .L080D0640 @ =gUnk_03000420
	ldr r0, [r6]
	movs r1, #5
	str r1, [r0, #0x14]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq .L080D05F8
	movs r0, #1
	str r0, [sp]
	mov r0, sp
	bl func_080D0BA8
.L080D05F8:
	movs r0, #4
	str r0, [sp]
	ldr r0, [r6]
	adds r0, #0x24
	str r0, [sp, #0x10]
	movs r4, #2
	str r4, [sp, #0x18]
	mov r0, sp
	movs r5, #0
	strh r5, [r0, #0x1c]
	bl func_080D0BA8
	movs r0, #3
	str r0, [sp]
	ldr r0, [r6]
	adds r0, #0x2c
	str r0, [sp, #0x10]
	str r4, [sp, #0x18]
	mov r0, sp
	strh r5, [r0, #0x1c]
	bl func_080D0BA8
	str r4, [sp]
	ldr r0, [r6]
	adds r0, #0x28
	str r0, [sp, #0x10]
	str r4, [sp, #0x18]
	mov r0, sp
	strh r5, [r0, #0x1c]
	bl func_080D0BA8
	add sp, #0x20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080D0640: .4byte gUnk_03000420

	thumb_func_start func_080D0644
func_080D0644: @ 0x080D0644
	push {r4, lr}
	ldr r4, .L080D0674 @ =gUnk_03000420
	ldr r2, [r4]
	adds r2, #0x28
	strb r0, [r2]
	ldr r2, [r4]
	lsrs r3, r0, #8
	adds r2, #0x29
	strb r3, [r2]
	ldr r2, [r4]
	lsrs r3, r0, #0x10
	adds r2, #0x2a
	strb r3, [r2]
	ldr r2, [r4]
	lsrs r0, r0, #0x18
	adds r2, #0x2b
	strb r0, [r2]
	ldr r0, [r4]
	str r1, [r0, #0x30]
	bl func_080D05DC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080D0674: .4byte gUnk_03000420

	thumb_func_start func_080D0678
func_080D0678: @ 0x080D0678
	ldr r0, .L080D06A4 @ =gUnk_03000420
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0x2d
	ldrb r1, [r1]
	lsls r1, r1, #8
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x2e
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r0, r1
	adds r1, r2, #0
	adds r1, #0x2f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	orrs r0, r1
	bx lr
	.align 2, 0
.L080D06A4: .4byte gUnk_03000420

	.if 0
	thumb_func_start func_080D06A8
func_080D06A8: @ 0x080D06A8
	push {lr}
	movs r0, #0xb
	bl func_080D0A94
	pop {r0}
	bx r0

	.endif
	.section .text.tail080D06B4, "ax", %progbits
	thumb_func_start func_080D06B4
func_080D06B4: @ 0x080D06B4
	push {lr}
	movs r1, #0
	ldr r0, .L080D06CC @ =gUnk_03000420
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne .L080D06C4
	movs r1, #1
.L080D06C4:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0
.L080D06CC: .4byte gUnk_03000420

	.section .text.tail080D06DC, "ax", %progbits
.L080D06DC:
	.byte 0x00, 0xB5, 0x06, 0x48
	.byte 0x00, 0x68, 0x02, 0x6A, 0x00, 0x2A, 0x09, 0xD0, 0xC1, 0x69, 0x64, 0x20, 0x48, 0x43, 0x11, 0x1C
	.byte 0x00, 0xF0, 0xF3, 0xFB, 0x03, 0xE0, 0x00, 0x00, 0x20, 0x04, 0x00, 0x03, 0x00, 0x20, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	thumb_func_start func_080D0704
func_080D0704: @ 0x080D0704
	push {r4, r5, lr}
	sub sp, #4
	movs r5, #0
	ldr r0, .L080D077C @ =0x04000140
	ldrh r0, [r0]
	adds r4, r0, #0
	ldr r0, .L080D0780 @ =gUnk_03000420
	ldr r0, [r0]
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L080D0754
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq .L080D0736
	ldr r0, .L080D0784 @ =0x04000150
	ldr r0, [r0]
	str r0, [sp]
	mov r0, sp
	bl func_080D078C
	adds r5, r0, #0
.L080D0736:
	cmp r5, #0
	bne .L080D0748
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq .L080D0748
	bl func_080D091C
	adds r5, r0, #0
.L080D0748:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq .L080D0754
	bl func_080D0A14
.L080D0754:
	cmp r5, #0
	beq .L080D0764
	ldr r1, .L080D0788 @ =0x04000158
	movs r0, #0
	strh r0, [r1]
	adds r0, r5, #0
	bl func_080D0A54
.L080D0764:
	ldr r0, .L080D077C @ =0x04000140
	strh r4, [r0]
	ldr r0, .L080D0780 @ =gUnk_03000420
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080D077C: .4byte 0x04000140
.L080D0780: .4byte gUnk_03000420
.L080D0784: .4byte 0x04000150
.L080D0788: .4byte 0x04000158

	thumb_func_start func_080D078C
func_080D078C: @ 0x080D078C
	push {r4, r5, lr}
	sub sp, #8
	adds r3, r0, #0
	ldr r0, .L080D07AC @ =gUnk_0300041C
	ldr r2, [r0]
	ldr r1, [r2]
	adds r5, r0, #0
	cmp r1, #4
	bls .L080D07A0
	b .L080D090C
.L080D07A0:
	ldr r0, [r2]
	lsls r0, r0, #2
	ldr r1, .L080D07B0 @ =.L080D07B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080D07AC: .4byte gUnk_0300041C
.L080D07B0: .4byte .L080D07B4
.L080D07B4: @ jump table
	.4byte .L080D0910 @ case 0
	.4byte .L080D07C8 @ case 1
	.4byte .L080D07FC @ case 2
	.4byte .L080D083A @ case 3
	.4byte .L080D07FC @ case 4
.L080D07C8:
	ldr r0, [r5]
	ldr r0, [r0, #4]
	cmp r0, #1
	bhi .L080D07D2
	b .L080D0910
.L080D07D2:
	cmp r0, #2
	beq .L080D07D8
	b .L080D0910
.L080D07D8:
	ldr r0, .L080D07E8 @ =gUnk_03000420
	ldr r0, [r0]
	ldr r1, [r3]
	ldr r0, [r0, #8]
	cmp r1, r0
	beq .L080D07EC
	movs r0, #1
	b .L080D0912
	.align 2, 0
.L080D07E8: .4byte gUnk_03000420
.L080D07EC:
	ldr r1, .L080D07F8 @ =0x04000158
	movs r0, #0x30
	strh r0, [r1]
.L080D07F2:
	bl func_080D0A74
	b .L080D0910
	.align 2, 0
.L080D07F8: .4byte 0x04000158
.L080D07FC:
	ldr r4, [r5]
	ldr r0, [r4, #4]
	cmp r0, #1
	beq .L080D0836
	cmp r0, #1
	blo .L080D080E
	cmp r0, #2
	beq .L080D0830
	b .L080D0910
.L080D080E:
	ldrb r0, [r3]
	cmp r0, #0x42
	bne .L080D0828
	ldrb r0, [r3, #2]
	ldrb r1, [r3, #3]
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, [r4, #0x18]
	cmp r0, r1
	bne .L080D0860
	mov r1, sp
	movs r2, #0x43
	b .L080D08EC
.L080D0828:
	cmp r0, #0x41
	bne .L080D0910
	movs r0, #5
	b .L080D0912
.L080D0830:
	ldrb r0, [r3]
	cmp r0, #0x46
	beq .L080D07F2
.L080D0836:
	movs r0, #7
	b .L080D0912
.L080D083A:
	ldr r4, [r5]
	ldr r0, [r4, #4]
	cmp r0, #1
	beq .L080D0872
	cmp r0, #1
	blo .L080D084C
	cmp r0, #2
	beq .L080D0908
	b .L080D0910
.L080D084C:
	ldrb r0, [r3]
	cmp r0, #0x41
	bne .L080D086A
	ldrb r0, [r3, #2]
	ldrb r1, [r3, #3]
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, [r4, #0x18]
	cmp r0, r1
	beq .L080D0864
.L080D0860:
	movs r0, #4
	b .L080D0912
.L080D0864:
	mov r1, sp
	movs r2, #0x43
	b .L080D08EC
.L080D086A:
	cmp r0, #0x42
	bne .L080D0910
	movs r0, #6
	b .L080D0912
.L080D0872:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	bhs .L080D08D0
	ldrb r0, [r3]
	cmp r0, #0x44
	bne .L080D0908
	ldrb r0, [r3, #1]
	ldr r1, [r4, #8]
	movs r2, #0xff
	ands r1, r2
	cmp r0, r1
	bne .L080D0908
	ldr r0, [r4, #8]
	lsls r0, r0, #1
	ldr r1, [r4, #0x10]
	adds r0, r0, r1
	ldrb r1, [r3, #2]
	strb r1, [r0]
	ldrb r1, [r3, #3]
	strb r1, [r0, #1]
	ldr r2, [r5]
	ldr r0, [r2, #8]
	lsls r0, r0, #1
	ldr r1, [r2, #0x10]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	ldrh r0, [r2, #0x1c]
	adds r1, r1, r0
	strh r1, [r2, #0x1c]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
	ldr r0, .L080D08CC @ =gUnk_03000420
	ldr r1, [r0]
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b .L080D0910
	.align 2, 0
.L080D08CC: .4byte gUnk_03000420
.L080D08D0:
	ldrb r0, [r3]
	cmp r0, #0x45
	bne .L080D0908
	ldrb r0, [r3, #2]
	ldrb r1, [r3, #3]
	lsls r1, r1, #8
	orrs r0, r1
	ldrh r1, [r4, #0x1c]
	cmp r1, r0
	beq .L080D08E8
	movs r0, #3
	b .L080D0912
.L080D08E8:
	mov r1, sp
	movs r2, #0x46
.L080D08EC:
	movs r0, #0
	strb r2, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r1, .L080D0904 @ =0x04000154
	ldr r0, [sp]
	str r0, [r1]
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	b .L080D0910
	.align 2, 0
.L080D0904: .4byte 0x04000154
.L080D0908:
	movs r0, #8
	b .L080D0912
.L080D090C:
	movs r0, #9
	b .L080D0912
.L080D0910:
	movs r0, #0
.L080D0912:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080D091C
func_080D091C: @ 0x080D091C
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, .L080D0938 @ =gUnk_0300041C
	ldr r2, [r0]
	ldr r1, [r2]
	adds r3, r0, #0
	cmp r1, #4
	bhi .L080D0A06
	ldr r0, [r2]
	lsls r0, r0, #2
	ldr r1, .L080D093C @ =.L080D0940
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080D0938: .4byte gUnk_0300041C
.L080D093C: .4byte .L080D0940
.L080D0940: @ jump table
	.4byte .L080D0A0A @ case 0
	.4byte .L080D0954 @ case 1
	.4byte .L080D0964 @ case 2
	.4byte .L080D09F4 @ case 3
	.4byte .L080D0964 @ case 4
.L080D0954:
	ldr r1, [r3]
	ldr r0, [r1, #4]
	cmp r0, #1
	bne .L080D0A0A
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	b .L080D0A0A
.L080D0964:
	ldr r5, [r3]
	ldr r0, [r5, #4]
	cmp r0, #1
	bne .L080D0A0A
	ldr r1, [r5, #8]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	bhs .L080D09D0
	ldr r1, [r5, #8]
	mov r2, sp
	movs r3, #0x44
	ldr r4, [r5, #8]
	lsls r1, r1, #1
	ldr r0, [r5, #0x10]
	adds r1, r1, r0
	strb r3, [r2]
	strb r4, [r2, #1]
	ldrb r0, [r1]
	strb r0, [r2, #2]
	ldrb r0, [r1, #1]
	strb r0, [r2, #3]
	ldr r0, [r5, #8]
	lsls r0, r0, #1
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	orrs r1, r0
	ldrh r0, [r5, #0x1c]
	adds r1, r1, r0
	strh r1, [r5, #0x1c]
	ldr r1, .L080D09C8 @ =0x04000154
	ldr r0, [sp]
	str r0, [r1]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
	ldr r0, [r5]
	cmp r0, #4
	beq .L080D0A0A
	ldr r0, .L080D09CC @ =gUnk_03000420
	ldr r1, [r0]
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	b .L080D0A0A
	.align 2, 0
.L080D09C8: .4byte 0x04000154
.L080D09CC: .4byte gUnk_03000420
.L080D09D0:
	ldrh r2, [r5, #0x1c]
	mov r1, sp
	movs r0, #0x45
	strb r0, [r1]
	movs r0, #0
	strb r0, [r1, #1]
	strb r2, [r1, #2]
	lsrs r2, r2, #8
	strb r2, [r1, #3]
	ldr r1, .L080D09F0 @ =0x04000154
	ldr r0, [sp]
	str r0, [r1]
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
	b .L080D0A0A
	.align 2, 0
.L080D09F0: .4byte 0x04000154
.L080D09F4:
	ldr r0, [r3]
	ldr r0, [r0, #4]
	cmp r0, #1
	bls .L080D0A0A
	cmp r0, #2
	bne .L080D0A0A
	bl func_080D0A74
	b .L080D0A0A
.L080D0A06:
	movs r0, #9
	b .L080D0A0C
.L080D0A0A:
	movs r0, #0
.L080D0A0C:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_080D0A14
func_080D0A14: @ 0x080D0A14
	push {lr}
	ldr r0, .L080D0A44 @ =gUnk_0300041C
	ldr r2, [r0]
	ldr r0, [r2]
	cmp r0, #1
	bne .L080D0A40
	ldr r0, [r2, #4]
	cmp r0, #2
	bhi .L080D0A40
	ldr r0, .L080D0A48 @ =0x04000150
	ldr r0, [r0]
	ldr r1, .L080D0A4C @ =0x04000154
	ldr r0, .L080D0A50 @ =gUnk_03000420
	ldr r0, [r0]
	ldr r0, [r0, #4]
	str r0, [r1]
	adds r1, #4
	movs r0, #0x20
	strh r0, [r1]
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
.L080D0A40:
	pop {r0}
	bx r0
	.align 2, 0
.L080D0A44: .4byte gUnk_0300041C
.L080D0A48: .4byte 0x04000150
.L080D0A4C: .4byte 0x04000154
.L080D0A50: .4byte gUnk_03000420

	thumb_func_start func_080D0A54
func_080D0A54: @ 0x080D0A54
	ldr r1, .L080D0A6C @ =gUnk_0300041C
	ldr r2, [r1]
	movs r1, #0
	str r1, [r2]
	ldr r1, .L080D0A70 @ =gUnk_03000420
	ldr r1, [r1]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	str r0, [r1]
	bx lr
	.align 2, 0
.L080D0A6C: .4byte gUnk_0300041C
.L080D0A70: .4byte gUnk_03000420

	thumb_func_start func_080D0A74
func_080D0A74: @ 0x080D0A74
	ldr r0, .L080D0A8C @ =gUnk_0300041C
	ldr r0, [r0]
	movs r1, #0
	str r1, [r0]
	ldr r0, .L080D0A90 @ =gUnk_03000420
	ldr r0, [r0]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r0, r0, r2
	str r1, [r0]
	bx lr
	.align 2, 0
.L080D0A8C: .4byte gUnk_0300041C
.L080D0A90: .4byte gUnk_03000420

	thumb_func_start func_080D0A94
func_080D0A94: @ 0x080D0A94
	push {r4, r5, lr}
	ldr r5, .L080D0AB8 @ =gUnk_03000420
	ldr r1, [r5]
	movs r4, #0xbe
	lsls r4, r4, #1
	adds r1, r1, r4
	movs r2, #1
	str r2, [r1]
	bl func_080D0A54
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080D0AB8: .4byte gUnk_03000420

	thumb_func_start func_080D0ABC
func_080D0ABC: @ 0x080D0ABC
	push {r4, lr}
	ldr r3, .L080D0AD8 @ =0x04000208
	ldrh r2, [r3]
	movs r0, #0
	strh r0, [r3]
	ldr r4, .L080D0ADC @ =0x04000200
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
	strh r2, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080D0AD8: .4byte 0x04000208
.L080D0ADC: .4byte 0x04000200

	thumb_func_start func_080D0AE0
func_080D0AE0: @ 0x080D0AE0
	push {r4, lr}
	ldr r4, .L080D0B04 @ =0x04000208
	ldrh r3, [r4]
	movs r0, #0
	strh r0, [r4]
	ldr r2, .L080D0B08 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, .L080D0B0C @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldr r1, .L080D0B10 @ =0x04000202
	movs r0, #0x80
	strh r0, [r1]
	strh r3, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080D0B04: .4byte 0x04000208
.L080D0B08: .4byte 0x04000200
.L080D0B0C: .4byte 0x0000FF7F
.L080D0B10: .4byte 0x04000202

	thumb_func_start func_080D0B14
func_080D0B14: @ 0x080D0B14
	push {r4, lr}
	adds r3, r1, #0
	ldr r2, .L080D0B44 @ =0x04000208
	ldrh r1, [r2]
	adds r4, r1, #0
	movs r1, #0
	strh r1, [r2]
	cmp r0, #0
	beq .L080D0B30
	ldr r1, .L080D0B48 @ =0x04000134
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
.L080D0B30:
	ldr r1, .L080D0B48 @ =0x04000134
	movs r2, #0xc0
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	cmp r3, #0
	bne .L080D0B50
	ldr r0, .L080D0B4C @ =0x04000158
	strh r3, [r0]
	b .L080D0B56
	.align 2, 0
.L080D0B44: .4byte 0x04000208
.L080D0B48: .4byte 0x04000134
.L080D0B4C: .4byte 0x04000158
.L080D0B50:
	ldr r1, .L080D0B78 @ =0x04000158
	movs r0, #0x30
	strh r0, [r1]
.L080D0B56:
	ldr r0, .L080D0B7C @ =0x04000150
	ldr r0, [r0]
	ldr r1, .L080D0B80 @ =0x04000154
	movs r0, #0
	str r0, [r1]
	subs r1, #0x14
	movs r0, #0x47
	strh r0, [r1]
	adds r1, #0xc2
	movs r0, #0x80
	strh r0, [r1]
	ldr r0, .L080D0B84 @ =0x04000208
	strh r4, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080D0B78: .4byte 0x04000158
.L080D0B7C: .4byte 0x04000150
.L080D0B80: .4byte 0x04000154
.L080D0B84: .4byte 0x04000208

	thumb_func_start func_080D0B88
func_080D0B88: @ 0x080D0B88
	ldr r0, .L080D0BA0 @ =gUnk_03000420
	ldr r1, [r0]
	movs r2, #0
	str r2, [r1, #0x34]
	str r2, [r1, #0x38]
	ldr r3, .L080D0BA4 @ =gUnk_0300041C
	adds r0, r1, #0
	adds r0, #0x3c
	str r0, [r3]
	str r2, [r1, #0x3c]
	bx lr
	.align 2, 0
.L080D0BA0: .4byte gUnk_03000420
.L080D0BA4: .4byte gUnk_0300041C

	thumb_func_start func_080D0BA8
func_080D0BA8: @ 0x080D0BA8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, .L080D0BDC @ =gUnk_03000420
	ldr r4, [r0]
	ldr r0, [r4, #0x38]
	adds r0, #1
	movs r1, #0xa
	bl __umodsi3
	str r0, [r4, #0x38]
	movs r0, #0
	str r0, [r5, #4]
	str r0, [r5, #8]
	ldr r0, [r4, #0x38]
	lsls r0, r0, #5
	adds r4, r4, r0
	adds r4, #0x3c
	ldm r5!, {r0, r1, r2}
	stm r4!, {r0, r1, r2}
	ldm r5!, {r0, r1, r2}
	stm r4!, {r0, r1, r2}
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080D0BDC: .4byte gUnk_03000420

	thumb_func_start func_080D0BE0
func_080D0BE0: @ 0x080D0BE0
	push {r4, lr}
	ldr r0, .L080D0C08 @ =gUnk_03000420
	ldr r4, [r0]
	ldr r1, [r4, #0x34]
	ldr r0, [r4, #0x38]
	cmp r1, r0
	beq .L080D0C02
	adds r0, r1, #1
	movs r1, #0xa
	bl __umodsi3
	str r0, [r4, #0x34]
	ldr r1, .L080D0C0C @ =gUnk_0300041C
	lsls r0, r0, #5
	adds r0, #0x3c
	adds r0, r4, r0
	str r0, [r1]
.L080D0C02:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080D0C08: .4byte gUnk_03000420
.L080D0C0C: .4byte gUnk_0300041C

	thumb_func_start func_080D0C10
func_080D0C10: @ 0x080D0C10
	push {lr}
	movs r2, #0
	ldr r0, .L080D0C28 @ =gUnk_03000420
	ldr r0, [r0]
	ldr r1, [r0, #0x34]
	ldr r0, [r0, #0x38]
	cmp r1, r0
	bne .L080D0C22
	movs r2, #1
.L080D0C22:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
.L080D0C28: .4byte gUnk_03000420

	thumb_func_start func_080D0C2C
func_080D0C2C: @ 0x080D0C2C
	push {r4, lr}
	ldr r0, .L080D0C60 @ =gUnk_03000420
	ldr r4, [r0]
	ldr r0, [r4, #0x34]
	adds r0, #1
	movs r1, #0xa
	bl __umodsi3
	str r0, [r4, #0x38]
	lsls r0, r0, #5
	adds r1, r4, #0
	adds r1, #0x3c
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1]
	ldr r0, [r4, #0x38]
	str r0, [r4, #0x34]
	ldr r1, .L080D0C64 @ =gUnk_0300041C
	lsls r0, r0, #5
	adds r0, #0x3c
	adds r4, r4, r0
	str r4, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080D0C60: .4byte gUnk_03000420
.L080D0C64: .4byte gUnk_0300041C
