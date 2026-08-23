	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_080E09E4
func_080E09E4: @ 0x080E09E4
	push {r4, lr}
	adds r4, r1, #0
	adds r1, r0, #0
	adds r1, #0x30
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r3, r0, r2
	ldr r2, [r3]
	cmp r2, #0x63
	bhi .L080E0A02
	lsls r0, r2, #2
	adds r0, r1, r0
	str r4, [r0]
	adds r0, r2, #1
	str r0, [r3]
.L080E0A02:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080E0A08
func_080E0A08: @ 0x080E0A08
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r4, [r2, #0xc]
	ldr r3, [r2, #0x10]
	ldrb r0, [r2, #0x15]
	cmp r0, #0
	beq .L080E0A68
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #5
	adds r5, r3, r0
	ldrb r0, [r2, #0x16]
	movs r1, #1
	eors r0, r1
	strb r0, [r2, #0x16]
	lsls r0, r0, #2
	ldr r2, .L080E0A64 @ =0x0F0F0F0F
	lsls r2, r0
	mvns r1, r2
.L080E0A2C:
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
	cmp r3, r5
	bne .L080E0A2C
	movs r0, #1
	b .L080E0A76
	.align 2, 0
.L080E0A64: .4byte 0x0F0F0F0F
.L080E0A68:
	ldrb r2, [r2, #0x14]
	lsls r2, r2, #3
	adds r0, r4, #0
	adds r1, r3, #0
	bl CpuFastSet
	movs r0, #0
.L080E0A76:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_080E0A7C
func_080E0A7C: @ 0x080E0A7C
	push {lr}
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E0A88
func_080E0A88: @ 0x080E0A88
	push {lr}
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E0A94
func_080E0A94: @ 0x080E0A94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	ldr r1, .L080E0C2C @ =gUnk_0871E7A8
	bl func_0805E6CC
	adds r4, r7, #0
	adds r4, #0x30
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	adds r0, r7, #0
	adds r0, #0x38
	movs r4, #0
	str r4, [r7, #0x38]
	str r4, [r0, #4]
	ldr r6, .L080E0C30 @ =vtable_unk_080E77D0
	str r6, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	movs r0, #0x34
	bl __builtin_new
	adds r5, r0, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #8
	str r4, [r5, #8]
	str r4, [r0, #4]
	str r6, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	adds r0, #0x18
	adds r1, r7, #0
	movs r2, #7
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	str r5, [r7, #0x50]
	adds r1, r7, #0
	adds r1, #0x54
	movs r0, #6
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080E0B0C:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080E0B0C
	movs r0, #0x70
	adds r0, r0, r7
	mov r8, r0
	movs r2, #0xdd
	lsls r2, r2, #2
	adds r4, r7, r2
	movs r5, #2
	movs r0, #0
	mov sb, r0
	movs r6, #1
	rsbs r6, r6, #0
.L080E0B2A:
	adds r0, r4, #0
	bl func_08007874
	mov r2, sb
	str r2, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r6
	bne .L080E0B2A
	movs r0, #0xc7
	lsls r0, r0, #2
	add r0, r8
	movs r2, #5
	movs r1, #0
	ldr r4, .L080E0C30 @ =vtable_unk_080E77D0
	movs r3, #1
	rsbs r3, r3, #0
.L080E0B4C:
	str r1, [r0]
	str r1, [r0, #4]
	str r4, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	adds r0, #0x18
	subs r2, #1
	cmp r2, r3
	bne .L080E0B4C
	movs r6, #0
	movs r5, #0xc2
	lsls r5, r5, #2
	add r5, r8
.L080E0B68:
	lsls r4, r6, #3
	add r4, r8
	movs r0, #0xc1
	lsls r0, r0, #2
	adds r4, r4, r0
	ldr r1, [r5]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r5]
	adds r5, #8
	adds r6, #1
	cmp r6, #2
	bls .L080E0B68
	movs r2, #0
	mov r8, r2
	movs r6, #0
	movs r0, #0x54
	adds r0, r0, r7
	mov sb, r0
.L080E0B98:
	movs r0, #0x34
	bl __builtin_new
	adds r4, r0, #0
	ldr r1, .L080E0C34 @ =gUnk_080F19CC
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #8
	str r6, [r4, #8]
	str r6, [r1, #4]
	ldr r0, .L080E0C30 @ =vtable_unk_080E77D0
	str r0, [r1, #8]
	str r6, [r1, #0xc]
	str r6, [r1, #0x10]
	str r6, [r1, #0x14]
	adds r0, r4, #0
	adds r0, #0x20
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	mov r0, sb
	ldr r5, [r0]
	cmp r4, r5
	beq .L080E0C08
	cmp r5, #0
	beq .L080E0C08
	adds r0, r5, #0
	adds r0, #8
	movs r1, #2
	bl func_080098AC
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #2
	bl func_080079E8
	adds r0, r5, #0
	bl __builtin_delete
.L080E0C08:
	mov r2, sb
	adds r2, #4
	mov sb, r2
	subs r2, #4
	stm r2!, {r4}
	movs r0, #1
	add r8, r0
	mov r2, r8
	cmp r2, #6
	bls .L080E0B98
	adds r0, r7, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080E0C2C: .4byte gUnk_0871E7A8
.L080E0C30: .4byte vtable_unk_080E77D0
.L080E0C34: .4byte gUnk_080F19CC

	thumb_func_start func_080E0C38
func_080E0C38: @ 0x080E0C38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	str r1, [sp]
	movs r0, #0x70
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r0, r6, r1
	cmp r0, #0
	beq .L080E0C78
	adds r1, #0x90
	adds r4, r6, r1
	cmp r0, r4
	beq .L080E0C78
	movs r0, #0xe3
	lsls r0, r0, #2
	adds r5, r6, r0
.L080E0C66:
	subs r4, #0x18
	ldr r0, [r4, #8]
	ldr r2, [r0, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl _call_via_r2
	cmp r5, r4
	bne .L080E0C66
.L080E0C78:
	movs r5, #0xc1
	lsls r5, r5, #2
	add r5, r8
	adds r7, r6, #0
	adds r7, #0x54
	movs r1, #0x38
	adds r1, r1, r6
	mov sl, r1
	movs r0, #0x30
	adds r0, r0, r6
	mov sb, r0
	cmp r5, #0
	beq .L080E0CB2
	movs r4, #0xc7
	lsls r4, r4, #2
	add r4, r8
	cmp r5, r4
	beq .L080E0CB2
.L080E0C9C:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	cmp r5, r4
	bne .L080E0C9C
.L080E0CB2:
	cmp r7, #0
	beq .L080E0CE8
	adds r5, r6, #0
	adds r5, #0x70
.L080E0CBA:
	cmp r7, r5
	beq .L080E0CE8
	subs r5, #4
	ldr r4, [r5]
	cmp r4, #0
	beq .L080E0CBA
	adds r0, r4, #0
	adds r0, #8
	movs r1, #2
	bl func_080098AC
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	adds r0, r4, #0
	bl __builtin_delete
	b .L080E0CBA
.L080E0CE8:
	ldr r4, [r6, #0x50]
	cmp r4, #0
	beq .L080E0D0E
	adds r0, r4, #0
	adds r0, #8
	movs r1, #2
	bl func_080098AC
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	adds r0, r4, #0
	bl __builtin_delete
.L080E0D0E:
	mov r0, sl
	movs r1, #2
	bl func_080098AC
	mov r0, sb
	ldr r1, [r0, #4]
	bl func_080073E0
	mov r0, sb
	movs r1, #2
	bl func_08007184
	ldr r0, .L080E0D4C @ =vtable_unk_080E5A28
	str r0, [r6]
	movs r0, #1
	ldr r1, [sp]
	ands r0, r1
	cmp r0, #0
	beq .L080E0D3A
	adds r0, r6, #0
	bl __builtin_delete
.L080E0D3A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080E0D4C: .4byte vtable_unk_080E5A28

	thumb_func_start func_080E0D50
func_080E0D50: @ 0x080E0D50
	push {lr}
	ldr r3, [r0, #0xc]
	ldr r1, [r0, #0x10]
	ldr r2, [r0, #0x14]
	adds r0, r3, #0
	bl func_08008E64
	movs r0, #0
	pop {r1}
	bx r1

	thumb_func_start func_080E0D64
func_080E0D64: @ 0x080E0D64
	push {lr}
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E0D70
func_080E0D70: @ 0x080E0D70
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r1, #0xd0
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #2
	bl func_080098AC
	movs r0, #0xce
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0xc7
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #2
	bl func_080098AC
	movs r0, #0xc5
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #2
	bl func_080098AC
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #2
	bl func_080098AC
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0xad
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #2
	bl func_080098AC
	movs r0, #0xaa
	lsls r0, r0, #2
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
	movs r1, #2
	bl func_080098AC
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	adds r0, r6, #0
	adds r0, #0x68
	movs r1, #2
	bl func_080098AC
	adds r4, r6, #0
	adds r4, #0x60
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	ldr r0, .L080E0E7C @ =vtable_unk_080E5A28
	str r0, [r6, #0x30]
	str r0, [r6]
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq .L080E0E74
	adds r0, r6, #0
	bl __builtin_delete
.L080E0E74:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080E0E7C: .4byte vtable_unk_080E5A28

	thumb_func_start func_080E0E80
func_080E0E80: @ 0x080E0E80
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r2, #0
	subs r3, r1, r6
.L080E0E88:
	cmp r3, #0
	ble .L080E0EAC
	asrs r2, r3, #1
	adds r5, r6, r2
	ldrb r1, [r5]
	movs r4, #0
	ldr r0, [r7]
	cmp r1, r0
	bhs .L080E0E9C
	movs r4, #1
.L080E0E9C:
	cmp r4, #0
	beq .L080E0EA8
	adds r6, r5, #1
	subs r0, r3, r2
	subs r3, r0, #1
	b .L080E0E88
.L080E0EA8:
	adds r3, r2, #0
	b .L080E0E88
.L080E0EAC:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
