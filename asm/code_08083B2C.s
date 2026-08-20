.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_08083B2C
func_08083B2C: @ 0x08083B2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, [r6, #4]
	bl func_08082CEC
	adds r1, r0, #0
	cmp r1, #0
	bne .L08083B48
	ldr r0, [r6, #8]
	str r1, [r6, #8]
	str r0, [r7]
	b .L08083BC6
.L08083B48:
	cmp r1, #1
	bne .L08083B8C
	movs r0, #0x10
	bl __builtin_new
	ldr r4, [r6, #8]
	movs r2, #0
	str r2, [r6, #8]
	ldr r3, [r6, #0x1c]
	ldr r1, .L08083B88 @ =vtable_unk_080E7CF4
	str r1, [r0]
	str r2, [sp, #4]
	str r4, [r0, #4]
	str r3, [r0, #8]
	strb r2, [r0, #0xc]
	str r0, [sp]
	mov r1, sp
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r2, [r1]
	str r0, [r7]
	ldr r1, [sp]
	cmp r1, #0
	beq .L08083BC6
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	b .L08083BC6
	.align 2, 0
.L08083B88: .4byte vtable_unk_080E7CF4
.L08083B8C:
	movs r0, #0x10
	bl __builtin_new
	ldr r5, [r6, #8]
	movs r2, #0
	str r2, [r6, #8]
	ldr r3, [r6, #0x1c]
	movs r4, #1
	ldr r1, .L08083BD0 @ =vtable_unk_080E7CF4
	str r1, [r0]
	str r2, [sp, #4]
	str r5, [r0, #4]
	str r3, [r0, #8]
	strb r4, [r0, #0xc]
	str r0, [sp]
	mov r1, sp
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r2, [r1]
	str r0, [r7]
	ldr r1, [sp]
	cmp r1, #0
	beq .L08083BC6
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08083BC6:
	adds r0, r7, #0
	add sp, #0x18
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08083BD0: .4byte vtable_unk_080E7CF4

	thumb_func_start func_08083BD4
func_08083BD4: @ 0x08083BD4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl func_080C7F58
	ldr r0, .L08083C3C @ =vtable_unk_080E7D14
	str r0, [r5, #4]
	ldr r1, .L08083C40 @ =0x000006A4
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r5, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	strb r1, [r0]
	adds r2, #4
	adds r0, r5, r2
	str r1, [r0]
	movs r0, #0x13
	subs r1, #1
.L08083C00:
	subs r0, #1
	cmp r0, r1
	bne .L08083C00
	ldr r0, .L08083C44 @ =0x00006170
	adds r6, r5, r0
	ldr r7, .L08083C48 @ =gUnk_080FF838
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L08083C1A
	movs r4, #0x7f
.L08083C1A:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	ldr r2, .L08083C4C @ =0x000061F0
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08083C3C: .4byte vtable_unk_080E7D14
.L08083C40: .4byte 0x000006A4
.L08083C44: .4byte 0x00006170
.L08083C48: .4byte gUnk_080FF838
.L08083C4C: .4byte 0x000061F0

	thumb_func_start func_08083C50
func_08083C50: @ 0x08083C50
	push {lr}
	ldr r2, .L08083C60 @ =vtable_unk_080E7D14
	str r2, [r0, #4]
	bl func_080C8360
	pop {r0}
	bx r0
	.align 2, 0
.L08083C60: .4byte vtable_unk_080E7D14

	thumb_func_start func_08083C64
func_08083C64: @ 0x08083C64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe4
	adds r7, r0, #0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r2, r7, r0
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r2]
	lsls r1, r1, #2
	adds r1, #4
	adds r1, r2, r1
	subs r1, r1, r0
	asrs r1, r1, #2
	ldr r0, [r2]
	subs r0, r0, r1
	str r0, [r2]
	adds r1, r2, #0
	cmp r0, #0x27
	bhi .L08083CAA
	lsls r0, r0, #2
	adds r0, #4
	adds r1, r1, r0
	cmp r1, #0
	beq .L08083CA4
	movs r0, #0
	str r0, [r1]
.L08083CA4:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L08083CAA:
	ldr r0, [r7, #8]
	adds r0, #0x14
	bl GetUnk10__C4Farm
	ldr r1, .L08083D04 @ =0x000003E7
	cmp r0, r1
	bne .L08083CD8
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08083CD8
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08083CD2
	movs r0, #1
	str r0, [r2]
.L08083CD2:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08083CD8:
	ldr r0, [r7, #8]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl GetUpgradeLevel__C9FarmHouse
	cmp r0, #0
	bne .L08083D08
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08083D60
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08083D5A
	movs r0, #2
	b .L08083D58
	.align 2, 0
.L08083D04: .4byte 0x000003E7
.L08083D08:
	ldr r0, [r7, #8]
	movs r6, #0xfa
	lsls r6, r6, #1
	adds r0, r0, r6
	bl GetUpgradeLevel__C9FarmHouse
	cmp r0, #1
	bne .L08083D32
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08083D60
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08083D5A
	movs r0, #3
	b .L08083D58
.L08083D32:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl HasBathroom__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08083D60
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08083D60
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08083D5A
	movs r0, #4
.L08083D58:
	str r0, [r2]
.L08083D5A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08083D60:
	ldr r0, [r7, #8]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetUpgradeLevel__C4Coop
	cmp r0, #0
	bne .L08083D90
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08083D90
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08083D8A
	movs r0, #5
	str r0, [r2]
.L08083D8A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08083D90:
	ldr r0, [r7, #8]
	movs r6, #0xbe
	lsls r6, r6, #3
	adds r0, r0, r6
	bl GetUpgradeLevel__C4Barn
	cmp r0, #0
	bne .L08083DC0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08083DC0
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08083DBA
	movs r0, #6
	str r0, [r2]
.L08083DBA:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08083DC0:
	ldr r0, [r7, #8]
	bl func_08010E50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08083DEC
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08083DEC
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08083DE6
	movs r0, #7
	str r0, [r2]
.L08083DE6:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08083DEC:
	ldr r0, [r7, #8]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl GetUpgradeLevel__C9FarmHouse
	cmp r0, #2
	bne .L08083E5C
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08083E1C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08083E16
	movs r0, #8
	str r0, [r2]
.L08083E16:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08083E1C:
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08083E3C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08083E36
	movs r0, #9
	str r0, [r2]
.L08083E36:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08083E3C:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08083E5C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08083E56
	movs r0, #0xa
	str r0, [r2]
.L08083E56:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08083E5C:
	movs r0, #0x10
	str r0, [sp, #0xc]
	add r6, sp, #0x18
	ldr r1, .L08083F6C @ =gUnk_086678A0
	adds r0, r6, #0
	bl func_0805E6CC
	add r0, sp, #0x48
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #2]
	add r0, sp, #0x4c
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	add r0, sp, #0x60
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
	add r0, sp, #0x7c
	strb r5, [r0]
	add r3, sp, #0x80
	str r4, [sp, #0x80]
	strh r4, [r3, #4]
	add r2, sp, #0x88
	str r4, [r2]
	strh r4, [r2, #4]
	add r1, sp, #0x90
	str r4, [r1]
	strh r4, [r1, #4]
	add r0, sp, #0x98
	str r4, [r0]
	strh r4, [r0, #4]
	movs r4, #4
	mov sb, r4
	adds r5, r7, #0
	adds r5, #0x20
	movs r6, #0x24
	adds r6, r6, r7
	mov ip, r6
	ldr r0, [r7, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r5, r0
	adds r4, r0, #0
	str r5, [sp, #0xdc]
	adds r1, r6, #0
	ldr r2, [r5]
	cmp r1, r4
	beq .L08083EDC
.L08083ED6:
	adds r1, #0x10
	cmp r1, r4
	bne .L08083ED6
.L08083EDC:
	mov r1, ip
	subs r0, r0, r1
	asrs r0, r0, #4
	subs r0, r2, r0
	str r0, [r5]
	movs r2, #0
	mov r8, r2
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r8, r0
	blo .L08083EF8
	b .L08084034
.L08083EF8:
	add r4, sp, #0xa0
	mov sl, r4
	adds r6, r3, #0
	adds r6, r7, r6
	str r6, [sp, #0xd8]
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0xe0]
	mov r1, sb
	lsls r5, r1, #6
.L08083F0E:
	ldr r2, [sp, #0xe0]
	ldr r3, [r2]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r2, .L08083F70 @ =gUnk_080FF6A8
	mov r1, sl
	adds r0, r0, r2
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r4, r6}
	stm r1!, {r4, r6}
	cmp r3, #1
	bhi .L08083FF4
	ldr r0, [r7, #0x1c]
	ldr r1, [r0, #0x18]
	adds r1, r1, r5
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
	adds r0, r0, r5
	adds r0, #0x34
	movs r1, #0
	str r1, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r1, #0x20
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r6, [sp, #0xe0]
	ldr r0, [r6]
	cmp r0, #0
	bne .L08083F74
	add r4, sp, #0xd4
	adds r0, r4, #0
	movs r1, #0x59
	b .L08083F7C
	.align 2, 0
.L08083F6C: .4byte gUnk_086678A0
.L08083F70: .4byte gUnk_080FF6A8
.L08083F74:
	mov r4, sp
	adds r4, #0xd5
	adds r0, r4, #0
	movs r1, #0x5a
.L08083F7C:
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetIconId__C7Article
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	add r4, sp, #0x4c
	adds r0, r4, #0
	bl func_0805E860
	ldr r1, [sp, #0x4c]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x50]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xb4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0xb4
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x80
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r6}
	stm r0!, {r1, r2, r6}
	ldm r4!, {r3, r6}
	stm r0!, {r3, r6}
	add r1, sp, #8
	mov r2, sb
	lsls r0, r2, #3
	strh r0, [r1]
	ldr r0, [sp, #0x88]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x90]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L0808401A
	lsls r0, r0, #4
	adds r0, #4
	ldr r3, [sp, #0xdc]
	adds r0, r3, r0
	cmp r0, #0
	beq .L08083FEC
	ldm r1!, {r2, r4, r6}
	stm r0!, {r2, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08083FEC:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
	b .L0808401A
.L08083FF4:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #0x12
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r5
	adds r0, #4
	movs r3, #0xd0
	lsls r3, r3, #0x10
	adds r1, r1, r3
	lsrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r2, #0x12
	movs r3, #2
	bl func_0804E9F4
.L0808401A:
	adds r5, #0x80
	movs r6, #2
	add sb, r6
	ldr r0, [sp, #0xe0]
	adds r0, #4
	str r0, [sp, #0xe0]
	movs r1, #1
	add r8, r1
	ldr r2, [sp, #0xd8]
	ldr r0, [r2]
	cmp r8, r0
	bhs .L08084034
	b .L08083F0E
.L08084034:
	ldr r0, .L0808404C @ =vtable_unk_080E5A28
	str r0, [sp, #0x18]
	mov r0, sb
	add sp, #0xe4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0808404C: .4byte vtable_unk_080E5A28

	thumb_func_start func_08084050
func_08084050: @ 0x08084050
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	movs r0, #0xb
	mov ip, r0
	movs r7, #4
	mov r4, r8
	adds r4, #0x20
	mov r6, r8
	adds r6, #0x24
	mov r2, r8
	ldr r0, [r2, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	adds r3, r0, #0
	adds r2, r6, #0
	ldr r5, [r4]
	cmp r2, r3
	beq .L08084082
.L0808407C:
	adds r2, #0x10
	cmp r2, r3
	bne .L0808407C
.L08084082:
	subs r0, r0, r6
	asrs r0, r0, #4
	subs r0, r5, r0
	str r0, [r4]
	cmp r1, #9
	beq .L080840A4
	cmp r1, #9
	bgt .L08084098
	cmp r1, #8
	beq .L0808409E
	b .L080840AE
.L08084098:
	cmp r1, #0xa
	beq .L080840AA
	b .L080840AE
.L0808409E:
	movs r0, #0xb
	mov ip, r0
	b .L080840AE
.L080840A4:
	movs r1, #0xe
	mov ip, r1
	b .L080840AE
.L080840AA:
	movs r2, #0x11
	mov ip, r2
.L080840AE:
	mov r1, ip
	lsls r0, r1, #3
	add r0, ip
	lsls r0, r0, #2
	adds r4, r0, #0
	adds r4, #0xd0
	movs r5, #2
.L080840BC:
	mov r2, r8
	ldr r0, [r2, #0x1c]
	ldr r0, [r0, #0x18]
	lsls r1, r7, #6
	adds r0, r0, r1
	adds r0, #4
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0x12
	movs r3, #2
	bl func_0804E9F4
	adds r7, #2
	adds r4, #0x24
	subs r5, #1
	cmp r5, #0
	bge .L080840BC
	adds r0, r7, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080840F4
func_080840F4: @ 0x080840F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r0, .L0808414C @ =0x00006170
	adds r6, r7, r0
	ldr r2, .L08084150 @ =gUnk_080FF83C
	mov r8, r2
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L08084118
	movs r4, #0x7f
.L08084118:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	lsls r3, r5, #2
	adds r1, r3, r5
	lsls r1, r1, #2
	ldr r2, .L08084154 @ =gUnk_080FF6A8
	mov r0, sp
	adds r1, r1, r2
	ldm r1!, {r2, r4, r6}
	stm r0!, {r2, r4, r6}
	ldm r1!, {r4, r6}
	stm r0!, {r4, r6}
	ldr r6, [sp, #0x10]
	cmp r5, #0x13
	bhi .L08084214
	ldr r0, .L08084158 @ =0x0808415C
	adds r0, r3, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808414C: .4byte 0x00006170
.L08084150: .4byte gUnk_080FF83C
.L08084154: .4byte gUnk_080FF6A8
.L08084158: .4byte 0x0808415C
.L0808415C:
	.byte 0xAC, 0x41, 0x08, 0x08
	.byte 0xB4, 0x41, 0x08, 0x08, 0xC8, 0x41, 0x08, 0x08, 0xC8, 0x41, 0x08, 0x08, 0xC8, 0x41, 0x08, 0x08
	.byte 0xC8, 0x41, 0x08, 0x08, 0xC8, 0x41, 0x08, 0x08, 0xC8, 0x41, 0x08, 0x08, 0xC8, 0x41, 0x08, 0x08
	.byte 0xC8, 0x41, 0x08, 0x08, 0xC8, 0x41, 0x08, 0x08, 0xD2, 0x41, 0x08, 0x08, 0xD2, 0x41, 0x08, 0x08
	.byte 0xD2, 0x41, 0x08, 0x08, 0xD2, 0x41, 0x08, 0x08, 0xD2, 0x41, 0x08, 0x08, 0xD2, 0x41, 0x08, 0x08
	.byte 0xD2, 0x41, 0x08, 0x08, 0xD2, 0x41, 0x08, 0x08, 0xD2, 0x41, 0x08, 0x08, 0x05, 0xAC, 0x20, 0x1C
	.byte 0x59, 0x21, 0x03, 0xE0, 0x6C, 0x46, 0x15, 0x34, 0x20, 0x1C, 0x5A, 0x21, 0x89, 0xF7, 0xC8, 0xFE
	.byte 0x20, 0x1C, 0x89, 0xF7, 0x07, 0xFF, 0x06, 0x1C, 0x38, 0x1C, 0x31, 0x1C, 0x46, 0xF0, 0x0E, 0xFD
	.byte 0x20, 0xE0, 0x14, 0x48, 0x3C, 0x18, 0xB1, 0x46, 0x20, 0x1C, 0x4F, 0xF0, 0xCD, 0xFC, 0x24, 0x18
	.byte 0xA0, 0x46, 0x7F, 0x21, 0x0D, 0x1A, 0x00, 0x2D, 0x0F, 0xD0, 0x48, 0x46, 0x4F, 0xF0, 0xC4, 0xFC
	.byte 0x04, 0x1C, 0xAC, 0x42, 0x00, 0xD9, 0x2C, 0x1C, 0x40, 0x46, 0x31, 0x1C, 0x22, 0x1C, 0x4F, 0xF0
	.byte 0xC9, 0xFB, 0x42, 0x46, 0x11, 0x19, 0x00, 0x20, 0x08, 0x70, 0x06, 0x4C, 0x39, 0x19, 0x38, 0x1C
	.byte 0x46, 0xF0, 0xEC, 0xFC
.L08084214:
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08084224:
	.byte 0x70, 0x61, 0x00, 0x00

	thumb_func_start func_08084228
func_08084228: @ 0x08084228
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	adds r6, r0, #0
	bl func_08008724
	adds r0, r6, #0
	bl func_080C85A0
	movs r0, #0
	mov sl, r0
	mov r1, sp
	adds r1, #0x44
	str r1, [sp, #0x60]
	mov r2, sp
	adds r2, #0x48
	str r2, [sp, #0x64]
	mov r3, sp
	adds r3, #0x24
	str r3, [sp, #0x58]
.L08084256:
	mov r4, sl
	lsls r1, r4, #2
	add r1, sl
	lsls r1, r1, #2
	ldr r2, .L08084314 @ =gUnk_080FF6A8
	add r0, sp, #0x10
	adds r1, r1, r2
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldm r1!, {r3, r4}
	stm r0!, {r3, r4}
	mov r7, sl
	lsls r5, r7, #3
	add r5, sl
	lsls r4, r5, #5
	add r4, sl
	lsls r4, r4, #2
	adds r1, r4, r6
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r1, r0
	add r0, sp, #0x44
	movs r2, #0x12
	strh r2, [r0]
	movs r7, #2
	ldr r3, [sp, #0x60]
	strh r7, [r3, #2]
	ldr r0, [sp, #0x44]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	adds r1, r4, r6
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r2, [sp, #0x10]
	add r0, sp, #0x48
	movs r3, #0x12
	strh r3, [r0]
	movs r0, #2
	ldr r7, [sp, #0x64]
	strh r0, [r7, #2]
	ldr r0, [sp, #0x48]
	adds r1, #4
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	lsls r5, r5, #2
	adds r5, #0xd0
	adds r0, r6, #0
	bl func_08008910
	adds r4, r4, r6
	movs r7, #0xe4
	lsls r7, r7, #3
	adds r4, r4, r7
	adds r4, #4
	str r0, [sp, #0x68]
	lsls r5, r5, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r5, r5, r0
	add r0, sp, #0x24
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0x90
	lsls r3, r3, #3
	bl func_08008F0C
	ldr r2, [sp, #0x68]
	ldr r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq .L08084318
	cmp r1, #0
	beq .L08084306
	adds r0, r1, #0
	ldr r1, [sp, #0x58]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08084306:
	ldr r7, [sp, #0x68]
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	movs r0, #1
	add sl, r0
	b .L080843F0
	.align 2, 0
.L08084314: .4byte gUnk_080FF6A8
.L08084318:
	str r1, [sp, #0x6c]
	movs r1, #1
	str r1, [sp, #0x50]
	ldr r2, [sp, #0x68]
	ldr r0, [r2]
	ldr r3, [sp, #0x6c]
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x4c]
	add r1, sp, #0x50
	add r0, sp, #0x4c
	cmp r4, #1
	bhs .L08084334
	adds r0, r1, #0
.L08084334:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08084352
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08084356
	mov r0, sb
	bl func_080D3BC0
	b .L08084356
.L08084352:
	movs r0, #0
	mov sb, r0
.L08084356:
	adds r4, r0, #0
	mov r8, r4
	ldr r4, [sp, #0x68]
	ldr r2, [r4]
	mov r3, r8
	movs r5, #1
	add sl, r5
	ldr r7, [sp, #0x6c]
	cmp r2, r7
	beq .L08084384
.L0808436A:
	cmp r3, #0
	beq .L0808437A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0808437A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x6c]
	cmp r2, r0
	bne .L0808436A
.L08084384:
	adds r4, r3, #0
	ldr r0, [sp, #0x50]
	cmp r0, #1
	bne .L080843A0
	cmp r4, #0
	beq .L0808439C
	adds r0, r4, #0
	ldr r1, [sp, #0x58]
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0808439C:
	adds r4, #0x10
	b .L080843C8
.L080843A0:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080843C6
.L080843A8:
	cmp r2, #0
	beq .L080843B8
	adds r0, r2, #0
	ldr r1, [sp, #0x58]
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080843B8:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080843A8
.L080843C6:
	adds r4, r2, #0
.L080843C8:
	ldr r0, [sp, #0x68]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080843DA
.L080843D4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080843D4
.L080843DA:
	cmp r0, #0
	beq .L080843E2
	bl free
.L080843E2:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x68]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080843F0:
	mov r3, sl
	cmp r3, #0x13
	bhi .L080843F8
	b .L08084256
.L080843F8:
	adds r0, r6, #0
	bl func_08083C64
	adds r7, r0, #0
	ldr r0, [r6, #0x1c]
	movs r4, #0xc
	ldrsh r1, [r6, r4]
	bl func_08075C88
	ldr r0, [r6, #0x1c]
	adds r1, r7, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r6, #0
	bl func_080840F4
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0x10
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
	ldr r0, .L080844D8 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0x10]
	ldr r1, .L080844DC @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #0
	str r7, [sp, #0x5c]
	ldr r0, [r6, #8]
	adds r0, #0x14
	bl GetUnk10__C4Farm
	ldr r1, .L080844E0 @ =0x000003E7
	cmp r0, r1
	bne .L08084498
	ldr r0, .L080844E4 @ =0x000061F0
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
.L08084498:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r3, [sp, #0x10]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080844B4
	bl .L080854C8
.L080844B4:
	ldr r1, [sp, #0x5c]
	cmp r1, #0
	beq .L080844BE
	bl sub_080854D8
.L080844BE:
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r0, #0xb
	bls .L080844CE
	bl .L080854C8
.L080844CE:
	lsls r0, r0, #2
	ldr r1, .L080844E8 @ =.L080844EC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080844D8: .4byte vtable_unk_080E5B80
.L080844DC: .4byte 0x00000889
.L080844E0: .4byte 0x000003E7
.L080844E4: .4byte 0x000061F0
.L080844E8: .4byte .L080844EC
.L080844EC: @ jump table
	.4byte .L0808451C @ case 0
	.4byte .L08084CE4 @ case 1
	.4byte .L08084F24 @ case 2
	.4byte .L08085110 @ case 3
	.4byte .L080850E8 @ case 4
	.4byte .L08085138 @ case 5
	.4byte .L08085196 @ case 6
	.4byte .L08085210 @ case 7
	.4byte .L08085330 @ case 8
	.4byte .L08085374 @ case 9
	.4byte .L08085454 @ case 10
	.4byte .L08085484 @ case 11
.L0808451C:
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x10]
	cmp r0, r1
	beq .L08084536
	lsls r0, r1, #2
	adds r0, r0, r6
	movs r3, #0xaa
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r1, [r0]
	adds r0, r6, #0
	bl func_080840F4
.L08084536:
	ldr r0, [r6, #0x10]
	str r0, [r6, #0x14]
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r5, r6, r4
	ldr r1, [r5]
	adds r0, r6, #0
	bl func_080C9020
	ldr r7, .L08084588 @ =0x000006A1
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08084554
	b .L08084C8C
.L08084554:
	add r4, sp, #0x14
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r5, r0
	ldr r3, [r0]
	lsls r0, r3, #2
	mov r8, r0
	adds r1, r0, r3
	lsls r1, r1, #2
	ldr r2, .L0808458C @ =gUnk_080FF6A8
	adds r0, r4, #0
	adds r1, r1, r2
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldm r1!, {r2, r5}
	stm r0!, {r2, r5}
	mov sl, r4
	cmp r3, #0xa
	bls .L08084580
	bl .L080854C8
.L08084580:
	ldr r0, .L08084590 @ =0x08084594
	add r0, r8
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08084588: .4byte 0x000006A1
.L0808458C: .4byte gUnk_080FF6A8
.L08084590: .4byte 0x08084594
.L08084594:
	.byte 0xC0, 0x45, 0x08, 0x08, 0xA8, 0x46, 0x08, 0x08, 0xDC, 0x48, 0x08, 0x08
	.byte 0xDC, 0x48, 0x08, 0x08, 0xDC, 0x48, 0x08, 0x08, 0xDC, 0x48, 0x08, 0x08, 0xDC, 0x48, 0x08, 0x08
	.byte 0xDC, 0x48, 0x08, 0x08, 0xA4, 0x49, 0x08, 0x08, 0x98, 0x4A, 0x08, 0x08, 0x8C, 0x4B, 0x08, 0x08
	.byte 0xB1, 0x68, 0x0D, 0x4F, 0xC8, 0x19, 0x02, 0x68, 0x00, 0x23, 0x54, 0x46, 0x60, 0x68, 0x82, 0x42
	.byte 0x00, 0xD2, 0x01, 0x23, 0x99, 0x46, 0x00, 0x2B, 0x12, 0xD0, 0x08, 0x49, 0x30, 0x1C, 0x46, 0xF0
	.byte 0xDF, 0xFA, 0xD2, 0x25, 0xAD, 0x00, 0x70, 0x19, 0xAC, 0x21, 0xCC, 0xF7, 0x31, 0xFC, 0xE1, 0x27
	.byte 0xFF, 0x00, 0xF1, 0x19, 0xDF, 0xE2, 0x00, 0x00, 0xA8, 0x1A, 0x00, 0x00, 0x58, 0xF8, 0x0F, 0x08
	.byte 0x08, 0x1C, 0x14, 0x30, 0x85, 0xF7, 0x78, 0xFA, 0x03, 0x49, 0x88, 0x42, 0x08, 0xD9, 0x03, 0x49
	.byte 0x30, 0x1C, 0x46, 0xF0, 0xC5, 0xFA, 0xCB, 0xE2, 0xE6, 0x03, 0x00, 0x00, 0x78, 0xF8, 0x0F, 0x08
	.byte 0xB0, 0x68, 0x14, 0x30, 0x85, 0xF7, 0x68, 0xFA, 0x1B, 0x49, 0x0A, 0x1A, 0x1B, 0x49, 0x70, 0x18
	.byte 0x53, 0x46, 0x59, 0x68, 0x05, 0x23, 0x46, 0xF0, 0x3D, 0xF9, 0xE1, 0x24, 0xE4, 0x00, 0x31, 0x19
	.byte 0x02, 0x20, 0x08, 0x60, 0xB0, 0x68, 0x14, 0x30, 0x85, 0xF7, 0x56, 0xFA, 0x0D, 0xA9, 0x07, 0x22
	.byte 0xCA, 0xF7, 0x18, 0xFB, 0x12, 0x4D, 0x70, 0x19, 0x4F, 0x46, 0x07, 0x70, 0x07, 0x1C, 0x11, 0x48
	.byte 0x82, 0x46, 0x38, 0x1C, 0x4F, 0xF0, 0x88, 0xFA, 0x39, 0x18, 0x88, 0x46, 0x63, 0x21, 0x0D, 0x1A
	.byte 0x00, 0x2D, 0x00, 0xD1, 0xD1, 0xE0, 0x50, 0x46, 0x4F, 0xF0, 0x7E, 0xFA, 0x04, 0x1C, 0xAC, 0x42
	.byte 0x00, 0xD9, 0x2C, 0x1C, 0x40, 0x46, 0x51, 0x46, 0x22, 0x1C, 0x4F, 0xF0, 0x83, 0xF9, 0x42, 0x46
	.byte 0x10, 0x19, 0x4B, 0x46, 0xC0, 0xE0, 0x00, 0x00, 0xE7, 0x03, 0x00, 0x00, 0x84, 0x06, 0x00, 0x00
	.byte 0xA4, 0x06, 0x00, 0x00, 0xA4, 0xF8, 0x0F, 0x08, 0xB1, 0x68, 0x06, 0x4C, 0x08, 0x19, 0x02, 0x68
	.byte 0x00, 0x23, 0x55, 0x46, 0x68, 0x68, 0x82, 0x42, 0x00, 0xD2, 0x01, 0x23, 0x00, 0x2B, 0x05, 0xD0
	.byte 0x01, 0x49, 0x6C, 0xE2, 0xA8, 0x1A, 0x00, 0x00, 0x58, 0xF8, 0x0F, 0x08, 0x00, 0x22, 0x90, 0x46
	.byte 0x1A, 0x4B, 0x99, 0x46, 0xC8, 0x18, 0x8B, 0xF7, 0x51, 0xF8, 0x07, 0x1C, 0xB0, 0x68, 0x18, 0x4C
	.byte 0x00, 0x19, 0x8A, 0xF7, 0x55, 0xFD, 0x00, 0x06, 0x00, 0x0E, 0x41, 0x42, 0x01, 0x43, 0xCD, 0x0F
	.byte 0xB0, 0x68, 0xFA, 0x21, 0x49, 0x00, 0x40, 0x18, 0x87, 0xF7, 0xB2, 0xFC, 0x00, 0x28, 0x09, 0xD0
	.byte 0xB0, 0x68, 0xFA, 0x22, 0x52, 0x00, 0x80, 0x18, 0x87, 0xF7, 0xAA, 0xFC, 0x5A, 0x21, 0x87, 0xF7
	.byte 0xFF, 0xF8, 0x80, 0x46, 0x78, 0x19, 0x43, 0x46, 0xC2, 0x18, 0x00, 0x2A, 0x14, 0xD1, 0x09, 0x49
	.byte 0x30, 0x1C, 0x46, 0xF0, 0x3D, 0xFA, 0xD2, 0x24, 0xA4, 0x00, 0x30, 0x19, 0xAC, 0x21, 0xCC, 0xF7
	.byte 0x8F, 0xFB, 0xE1, 0x25, 0xED, 0x00, 0x71, 0x19, 0x3D, 0xE2, 0x00, 0x00, 0x38, 0x1C, 0x00, 0x00
	.byte 0x2C, 0x1C, 0x00, 0x00, 0xB0, 0xF8, 0x0F, 0x08, 0x5F, 0x4F, 0xF0, 0x19, 0x53, 0x46, 0x59, 0x68
	.byte 0x05, 0x23, 0x46, 0xF0, 0xAF, 0xF8, 0xE1, 0x25, 0xED, 0x00, 0x71, 0x19, 0x02, 0x20, 0x08, 0x60
	.byte 0x00, 0x27, 0xB8, 0x46, 0xB0, 0x68, 0x48, 0x44, 0x5A, 0x21, 0x8B, 0xF7, 0x4B, 0xF8, 0x05, 0x1C
	.byte 0xB0, 0x68, 0x00, 0x19, 0x8A, 0xF7, 0x0C, 0xFD, 0x00, 0x06, 0x00, 0x28, 0x12, 0xD1, 0xB0, 0x68
	.byte 0x00, 0x19, 0x8A, 0xF7, 0x3F, 0xFD, 0x01, 0x28, 0x0C, 0xD1, 0xB0, 0x68, 0x00, 0x19, 0x8A, 0xF7
	.byte 0x63, 0xFD, 0x01, 0x1C, 0x15, 0xA8, 0x01, 0x70, 0x89, 0xF7, 0xDC, 0xFB, 0x5A, 0x28, 0x01, 0xD1
	.byte 0x01, 0x20, 0x80, 0x46, 0xB0, 0x68, 0xFA, 0x21, 0x49, 0x00, 0x40, 0x18, 0x87, 0xF7, 0x58, 0xFC
	.byte 0x00, 0x28, 0x09, 0xD0, 0xB0, 0x68, 0xFA, 0x22, 0x52, 0x00, 0x80, 0x18, 0x87, 0xF7, 0x50, 0xFC
	.byte 0x5A, 0x21, 0x87, 0xF7, 0xD7, 0xF8, 0x07, 0x1C, 0x43, 0x46, 0xE8, 0x18, 0xC0, 0x19, 0x0D, 0xA9
	.byte 0x07, 0x22, 0xCA, 0xF7, 0x57, 0xFA, 0x3D, 0x4C, 0x30, 0x19, 0x00, 0x25, 0xAA, 0x46, 0x57, 0x46
	.byte 0x07, 0x70, 0x07, 0x1C, 0x3A, 0x48, 0x81, 0x46, 0x38, 0x1C, 0x4F, 0xF0, 0xC5, 0xF9, 0x39, 0x18
	.byte 0x88, 0x46, 0x63, 0x21, 0x0D, 0x1A, 0x00, 0x2D, 0x0F, 0xD0, 0x48, 0x46, 0x4F, 0xF0, 0xBC, 0xF9
	.byte 0x04, 0x1C, 0xAC, 0x42, 0x00, 0xD9, 0x2C, 0x1C, 0x40, 0x46, 0x49, 0x46, 0x22, 0x1C, 0x4F, 0xF0
	.byte 0xC1, 0xF8, 0x42, 0x46, 0x10, 0x19, 0x53, 0x46, 0x03, 0x70, 0x2E, 0x48, 0x00, 0x68, 0x81, 0x46
	.byte 0x38, 0x1C, 0x4F, 0xF0, 0xA9, 0xF9, 0x3C, 0x18, 0xA0, 0x46, 0x63, 0x21, 0x0D, 0x1A, 0x00, 0x2D
	.byte 0x0F, 0xD0, 0x48, 0x46, 0x4F, 0xF0, 0xA0, 0xF9, 0x04, 0x1C, 0xAC, 0x42, 0x00, 0xD9, 0x2C, 0x1C
	.byte 0x40, 0x46, 0x49, 0x46, 0x22, 0x1C, 0x4F, 0xF0, 0xA5, 0xF8, 0x45, 0x46, 0x29, 0x19, 0x00, 0x20
	.byte 0x08, 0x70, 0x38, 0x1C, 0x4F, 0xF0, 0x90, 0xF9, 0x39, 0x18, 0x88, 0x46, 0x63, 0x21, 0x0D, 0x1A
	.byte 0x00, 0x2D, 0x0F, 0xD0, 0x0D, 0xA8, 0x4F, 0xF0, 0x87, 0xF9, 0x04, 0x1C, 0xAC, 0x42, 0x00, 0xD9
	.byte 0x2C, 0x1C, 0x40, 0x46, 0x0D, 0xA9, 0x22, 0x1C, 0x4F, 0xF0, 0x8C, 0xF8, 0x42, 0x46, 0x11, 0x19
	.byte 0x00, 0x20, 0x08, 0x70, 0x14, 0x48, 0x00, 0x68, 0x80, 0x46, 0x38, 0x1C, 0x4F, 0xF0, 0x74, 0xF9
	.byte 0x3F, 0x18, 0x63, 0x21, 0x0D, 0x1A, 0x00, 0x2D, 0x0E, 0xD0, 0x40, 0x46, 0x4F, 0xF0, 0x6C, 0xF9
	.byte 0x04, 0x1C, 0xAC, 0x42, 0x00, 0xD9, 0x2C, 0x1C, 0x38, 0x1C, 0x41, 0x46, 0x22, 0x1C, 0x4F, 0xF0
	.byte 0x71, 0xF8, 0x39, 0x19, 0x00, 0x20, 0x08, 0x70, 0x04, 0x4B, 0xF1, 0x18, 0x30, 0x1C, 0x46, 0xF0
	.byte 0x95, 0xF9, 0x00, 0xF0, 0x01, 0xFE, 0x00, 0x00, 0x84, 0x06, 0x00, 0x00, 0xA4, 0x06, 0x00, 0x00
	.byte 0xDC, 0xF8, 0x0F, 0x08, 0x28, 0x78, 0x11, 0x08, 0x14, 0x78, 0x11, 0x08, 0xB0, 0x68, 0x0A, 0x4C
	.byte 0x00, 0x19, 0x1A, 0xF0, 0x41, 0xF9, 0x00, 0x28, 0x12, 0xD0, 0x08, 0x49, 0x30, 0x1C, 0x46, 0xF0
	.byte 0x57, 0xF9, 0xD2, 0x25, 0xAD, 0x00, 0x70, 0x19, 0xAC, 0x21, 0xCC, 0xF7, 0xA9, 0xFA, 0xE1, 0x27
	.byte 0xFF, 0x00, 0xF1, 0x19, 0x57, 0xE1, 0x00, 0x00, 0x64, 0x1F, 0x00, 0x00, 0xF0, 0xF8, 0x0F, 0x08
	.byte 0xB1, 0x68, 0x0C, 0x4A, 0x88, 0x18, 0x02, 0x68, 0x00, 0x23, 0x54, 0x46, 0x60, 0x68, 0x82, 0x42
	.byte 0x00, 0xD2, 0x01, 0x23, 0x00, 0x2B, 0x11, 0xD0, 0x07, 0x49, 0x30, 0x1C, 0x46, 0xF0, 0x38, 0xF9
	.byte 0xD2, 0x25, 0xAD, 0x00, 0x70, 0x19, 0xAC, 0x21, 0xCC, 0xF7, 0x8A, 0xFA, 0xE1, 0x27, 0xFF, 0x00
	.byte 0xF1, 0x19, 0x38, 0xE1, 0xA8, 0x1A, 0x00, 0x00, 0x58, 0xF8, 0x0F, 0x08, 0x08, 0x1C, 0x14, 0x30
	.byte 0x85, 0xF7, 0xD2, 0xF8, 0x52, 0x46, 0x91, 0x68, 0x88, 0x42, 0x0F, 0xD2, 0x06, 0x49, 0x30, 0x1C
	.byte 0x46, 0xF0, 0x1E, 0xF9, 0xD2, 0x23, 0x9B, 0x00, 0xF0, 0x18, 0xAC, 0x21, 0xCC, 0xF7, 0x70, 0xFA
	.byte 0xE1, 0x24, 0xE4, 0x00, 0x31, 0x19, 0x1E, 0xE1, 0x44, 0xF9, 0x0F, 0x08, 0x08, 0x49, 0x30, 0x1C
	.byte 0x46, 0xF0, 0x0E, 0xF9, 0xD2, 0x25, 0xAD, 0x00, 0x70, 0x19, 0xAC, 0x21, 0xCC, 0xF7, 0x60, 0xFA
	.byte 0xE1, 0x27, 0xFF, 0x00, 0xF1, 0x19, 0x06, 0x20, 0x08, 0x60, 0x00, 0xF0, 0x95, 0xFD, 0x00, 0x00
	.byte 0x68, 0xF9, 0x0F, 0x08, 0xB0, 0x68, 0x0A, 0x49, 0x40, 0x18, 0x1A, 0xF0, 0xDD, 0xF8, 0x04, 0x1C
	.byte 0x00, 0x2C, 0x11, 0xD0, 0x07, 0x49, 0x30, 0x1C, 0x46, 0xF0, 0xF2, 0xF8, 0xD2, 0x22, 0x92, 0x00
	.byte 0xB0, 0x18, 0xAC, 0x21, 0xCC, 0xF7, 0x44, 0xFA, 0xE1, 0x23, 0xDB, 0x00, 0xF1, 0x18, 0xF2, 0xE0
	.byte 0x64, 0x1F, 0x00, 0x00, 0xF0, 0xF8, 0x0F, 0x08, 0xF0, 0x69, 0xF1, 0xF7, 0xFB, 0xF9, 0x30, 0x1C
	.byte 0x08, 0x21, 0xFF, 0xF7, 0x35, 0xFB, 0x07, 0x1C, 0xB4, 0x81, 0xC9, 0x24, 0xE4, 0x00, 0x31, 0x19
	.byte 0x28, 0x20, 0x08, 0x60, 0xF0, 0x69, 0x0C, 0x25, 0x71, 0x5F, 0xF1, 0xF7, 0xDD, 0xF9, 0xF0, 0x69
	.byte 0x39, 0x1C, 0x08, 0x31, 0xC9, 0x04, 0x09, 0x14, 0xF1, 0xF7, 0x0C, 0xFA, 0xE2, 0x27, 0xFF, 0x00
	.byte 0xF2, 0x19, 0x20, 0x48, 0x31, 0x18, 0x10, 0x68, 0x80, 0x00, 0x04, 0x30, 0x10, 0x18, 0x40, 0x1A
	.byte 0x80, 0x10, 0x11, 0x68, 0x08, 0x1A, 0x10, 0x60, 0x0B, 0x23, 0x11, 0x1C, 0x02, 0x28, 0x08, 0xD8
	.byte 0x80, 0x00, 0x04, 0x30, 0x08, 0x18, 0x00, 0x28, 0x00, 0xD0, 0x03, 0x60, 0x10, 0x68, 0x01, 0x30
	.byte 0x10, 0x60, 0x0C, 0x22, 0xE2, 0x23, 0xDB, 0x00, 0xF1, 0x18, 0x08, 0x68, 0x02, 0x28, 0x08, 0xD8
	.byte 0x80, 0x00, 0x04, 0x30, 0x08, 0x18, 0x00, 0x28, 0x00, 0xD0, 0x02, 0x60, 0x08, 0x68, 0x01, 0x30
	.byte 0x08, 0x60, 0x0D, 0x22, 0xE2, 0x24, 0xE4, 0x00, 0x31, 0x19, 0x08, 0x68, 0x02, 0x28, 0x08, 0xD8
	.byte 0x80, 0x00, 0x04, 0x30, 0x08, 0x18, 0x00, 0x28, 0x00, 0xD0, 0x02, 0x60, 0x08, 0x68, 0x01, 0x30
	.byte 0x08, 0x60, 0x00, 0x20, 0x30, 0x61, 0x01, 0x38, 0x70, 0x61, 0xE1, 0x25, 0xED, 0x00, 0x71, 0x19
	.byte 0xF6, 0xE0, 0x00, 0x00, 0x14, 0x07, 0x00, 0x00, 0xB0, 0x68, 0x0A, 0x4F, 0xC0, 0x19, 0x1A, 0xF0
	.byte 0x63, 0xF8, 0x04, 0x1C, 0x00, 0x2C, 0x11, 0xD0, 0x07, 0x49, 0x30, 0x1C, 0x46, 0xF0, 0x78, 0xF8
	.byte 0xD2, 0x21, 0x89, 0x00, 0x70, 0x18, 0xAC, 0x21, 0xCC, 0xF7, 0xCA, 0xF9, 0xE1, 0x22, 0xD2, 0x00
	.byte 0xB1, 0x18, 0x78, 0xE0, 0x64, 0x1F, 0x00, 0x00, 0xF0, 0xF8, 0x0F, 0x08, 0xF0, 0x69, 0xF1, 0xF7
	.byte 0x81, 0xF9, 0x30, 0x1C, 0x09, 0x21, 0xFF, 0xF7, 0xBB, 0xFA, 0x07, 0x1C, 0xB4, 0x81, 0xC9, 0x23
	.byte 0xDB, 0x00, 0xF1, 0x18, 0x28, 0x20, 0x08, 0x60, 0xF0, 0x69, 0x0C, 0x24, 0x31, 0x5F, 0xF1, 0xF7
	.byte 0x63, 0xF9, 0xF0, 0x69, 0x39, 0x1C, 0x08, 0x31, 0xC9, 0x04, 0x09, 0x14, 0xF1, 0xF7, 0x92, 0xF9
	.byte 0xE2, 0x25, 0xED, 0x00, 0x72, 0x19, 0x20, 0x4F, 0xF1, 0x19, 0x10, 0x68, 0x80, 0x00, 0x04, 0x30
	.byte 0x10, 0x18, 0x40, 0x1A, 0x80, 0x10, 0x11, 0x68, 0x08, 0x1A, 0x10, 0x60, 0x0E, 0x23, 0x11, 0x1C
	.byte 0x02, 0x28, 0x08, 0xD8, 0x80, 0x00, 0x04, 0x30, 0x08, 0x18, 0x00, 0x28, 0x00, 0xD0, 0x03, 0x60
	.byte 0x10, 0x68, 0x01, 0x30, 0x10, 0x60, 0x0F, 0x22, 0xE2, 0x20, 0xC0, 0x00, 0x31, 0x18, 0x08, 0x68
	.byte 0x02, 0x28, 0x08, 0xD8, 0x80, 0x00, 0x04, 0x30, 0x08, 0x18, 0x00, 0x28, 0x00, 0xD0, 0x02, 0x60
	.byte 0x08, 0x68, 0x01, 0x30, 0x08, 0x60, 0x10, 0x22, 0xE2, 0x23, 0xDB, 0x00, 0xF1, 0x18, 0x08, 0x68
	.byte 0x02, 0x28, 0x08, 0xD8, 0x80, 0x00, 0x04, 0x30, 0x08, 0x18, 0x00, 0x28, 0x00, 0xD0, 0x02, 0x60
	.byte 0x08, 0x68, 0x01, 0x30, 0x08, 0x60, 0x00, 0x20, 0x30, 0x61, 0x01, 0x38, 0x70, 0x61, 0xE1, 0x24
	.byte 0xE4, 0x00, 0x31, 0x19, 0x7C, 0xE0, 0x00, 0x00, 0x14, 0x07, 0x00, 0x00, 0xB0, 0x68, 0x0C, 0x4D
	.byte 0x40, 0x19, 0x19, 0xF0, 0xE9, 0xFF, 0x04, 0x1C, 0x00, 0x2C, 0x15, 0xD0, 0x09, 0x49, 0x30, 0x1C
	.byte 0x45, 0xF0, 0xFE, 0xFF, 0xD2, 0x27, 0xBF, 0x00, 0xF0, 0x19, 0xAC, 0x21, 0xCC, 0xF7, 0x50, 0xF9
	.byte 0xE1, 0x20, 0xC0, 0x00, 0x31, 0x18, 0x03, 0x20, 0x08, 0x60, 0x00, 0xF0, 0x85, 0xFC, 0x00, 0x00
	.byte 0x64, 0x1F, 0x00, 0x00, 0xF0, 0xF8, 0x0F, 0x08, 0xF0, 0x69, 0xF1, 0xF7, 0x03, 0xF9, 0x30, 0x1C
	.byte 0x0A, 0x21, 0xFF, 0xF7, 0x3D, 0xFA, 0x07, 0x1C, 0xB4, 0x81, 0xC9, 0x22, 0xD2, 0x00, 0xB1, 0x18
	.byte 0x28, 0x20, 0x08, 0x60, 0xF0, 0x69, 0x0C, 0x23, 0xF1, 0x5E, 0xF1, 0xF7, 0xE5, 0xF8, 0xF0, 0x69
	.byte 0x39, 0x1C, 0x08, 0x31, 0xC9, 0x04, 0x09, 0x14, 0xF1, 0xF7, 0x14, 0xF9, 0xE2, 0x24, 0xE4, 0x00
	.byte 0x32, 0x19, 0x21, 0x4D, 0x71, 0x19, 0x10, 0x68, 0x80, 0x00, 0x04, 0x30, 0x10, 0x18, 0x40, 0x1A
	.byte 0x80, 0x10, 0x11, 0x68, 0x08, 0x1A, 0x10, 0x60, 0x11, 0x23, 0x11, 0x1C, 0x02, 0x28, 0x08, 0xD8
	.byte 0x80, 0x00, 0x04, 0x30, 0x08, 0x18, 0x00, 0x28, 0x00, 0xD0, 0x03, 0x60, 0x10, 0x68, 0x01, 0x30
	.byte 0x10, 0x60, 0x12, 0x22, 0xE2, 0x27, 0xFF, 0x00, 0xF1, 0x19, 0x08, 0x68, 0x02, 0x28, 0x08, 0xD8
	.byte 0x80, 0x00, 0x04, 0x30, 0x08, 0x18, 0x00, 0x28, 0x00, 0xD0, 0x02, 0x60, 0x08, 0x68, 0x01, 0x30
	.byte 0x08, 0x60, 0x13, 0x22, 0xE2, 0x20, 0xC0, 0x00, 0x31, 0x18, 0x08, 0x68, 0x02, 0x28, 0x08, 0xD8
	.byte 0x80, 0x00, 0x04, 0x30, 0x08, 0x18, 0x00, 0x28, 0x00, 0xD0, 0x02, 0x60, 0x08, 0x68, 0x01, 0x30
	.byte 0x08, 0x60, 0x00, 0x20, 0x30, 0x61, 0x01, 0x38, 0x70, 0x61, 0xE1, 0x22, 0xD2, 0x00, 0xB1, 0x18
	.byte 0x01, 0x20, 0x08, 0x60, 0x00, 0xF0, 0x20, 0xFC, 0x14, 0x07, 0x00, 0x00
.L08084C8C:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L08084C9E
	bl .L080854C8
.L08084C9E:
	ldr r3, .L08084CB4 @ =0x0000070C
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08084CBC
	ldr r1, .L08084CB8 @ =gUnk_080FF998
	adds r0, r6, #0
	bl func_080CABA0
	b .L08084CC4
	.align 2, 0
.L08084CB4: .4byte 0x0000070C
.L08084CB8: .4byte gUnk_080FF998
.L08084CBC:
	ldr r1, .L08084CE0 @ =gUnk_080FF9B8
	adds r0, r6, #0
	bl func_080CABA0
.L08084CC4:
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r6, r4
	movs r1, #0xac
	bl func_08050E50
	movs r5, #0xe1
	lsls r5, r5, #3
	adds r1, r6, r5
	movs r0, #0xb
	str r0, [r1]
	bl .L080854C8
	.align 2, 0
.L08084CE0: .4byte gUnk_080FF9B8
.L08084CE4:
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x10]
	cmp r0, r1
	beq .L08084CFC
	lsls r0, r1, #2
	adds r0, r0, r6
	ldr r7, .L08084D38 @ =0x00000714
	adds r0, r0, r7
	ldr r1, [r0]
	adds r0, r6, #0
	bl func_080840F4
.L08084CFC:
	ldr r0, [r6, #0x10]
	str r0, [r6, #0x14]
	movs r0, #0xe2
	lsls r0, r0, #3
	adds r5, r6, r0
	ldr r1, [r5]
	adds r0, r6, #0
	bl func_080C9020
	ldr r1, .L08084D3C @ =0x000006A1
	adds r0, r6, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne .L08084D1A
	b .L08084ED8
.L08084D1A:
	movs r4, #0
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r5, r0
	ldr r0, [r0]
	subs r0, #0xb
	cmp r0, #8
	bhi .L08084DF6
	lsls r0, r0, #2
	ldr r1, .L08084D40 @ =.L08084D44
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08084D38: .4byte 0x00000714
.L08084D3C: .4byte 0x000006A1
.L08084D40: .4byte .L08084D44
.L08084D44: @ jump table
	.4byte .L08084D68 @ case 0
	.4byte .L08084D76 @ case 1
	.4byte .L08084D84 @ case 2
	.4byte .L08084D92 @ case 3
	.4byte .L08084DA0 @ case 4
	.4byte .L08084DAE @ case 5
	.4byte .L08084DC0 @ case 6
	.4byte .L08084DD2 @ case 7
	.4byte .L08084DE4 @ case 8
.L08084D68:
	ldr r0, [r6, #8]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetWindowStyle__C9FarmHouse
	b .L08084DCC
.L08084D76:
	ldr r0, [r6, #8]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl GetWindowStyle__C9FarmHouse
	b .L08084DDE
.L08084D84:
	ldr r0, [r6, #8]
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r0, r5
	bl GetWindowStyle__C9FarmHouse
	b .L08084DBA
.L08084D92:
	ldr r0, [r6, #8]
	movs r7, #0xfa
	lsls r7, r7, #1
	adds r0, r0, r7
	bl GetDoghouseStyle__C9FarmHouse
	b .L08084DCC
.L08084DA0:
	ldr r0, [r6, #8]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetDoghouseStyle__C9FarmHouse
	b .L08084DDE
.L08084DAE:
	ldr r0, [r6, #8]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetDoghouseStyle__C9FarmHouse
.L08084DBA:
	cmp r0, #2
	bne .L08084DF6
	b .L08084DFA
.L08084DC0:
	ldr r0, [r6, #8]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl GetMailboxStyle__C9FarmHouse
.L08084DCC:
	cmp r0, #0
	bne .L08084DF6
	b .L08084DFA
.L08084DD2:
	ldr r0, [r6, #8]
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r0, r5
	bl GetMailboxStyle__C9FarmHouse
.L08084DDE:
	cmp r0, #1
	bne .L08084DF6
	b .L08084DFA
.L08084DE4:
	ldr r0, [r6, #8]
	movs r7, #0xfa
	lsls r7, r7, #1
	adds r0, r0, r7
	bl GetMailboxStyle__C9FarmHouse
	cmp r0, #2
	bne .L08084DF6
	movs r4, #1
.L08084DF6:
	cmp r4, #0
	beq .L08084E1C
.L08084DFA:
	ldr r1, .L08084E18 @ =gUnk_080FF9CC
	adds r0, r6, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0xac
	bl func_08050E50
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r6, r2
	b .L08084EA8
	.align 2, 0
.L08084E18: .4byte gUnk_080FF9CC
.L08084E1C:
	add r4, sp, #0x14
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r3, .L08084E70 @ =0x00000714
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L08084E74 @ =gUnk_080FF6A8
	adds r0, r4, #0
	adds r1, r1, r2
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldm r1!, {r3, r5}
	stm r0!, {r3, r5}
	ldr r1, [r6, #8]
	ldr r7, .L08084E78 @ =0x00001AA8
	adds r0, r1, r7
	ldr r2, [r0]
	movs r3, #0
	ldr r0, [r4, #4]
	cmp r2, r0
	bhs .L08084E50
	movs r3, #1
.L08084E50:
	cmp r3, #0
	beq .L08084E80
	ldr r1, .L08084E7C @ =gUnk_080FF858
	adds r0, r6, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0xac
	bl func_08050E50
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r6, r2
	b .L08084EA8
	.align 2, 0
.L08084E70: .4byte 0x00000714
.L08084E74: .4byte gUnk_080FF6A8
.L08084E78: .4byte 0x00001AA8
.L08084E7C: .4byte gUnk_080FF858
.L08084E80:
	adds r0, r1, #0
	adds r0, #0x14
	bl GetUnk10__C4Farm
	ldr r1, [r4, #8]
	cmp r0, r1
	bhs .L08084EB4
	ldr r1, .L08084EB0 @ =gUnk_080FF944
	adds r0, r6, #0
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r6, r3
	movs r1, #0xac
	bl func_08050E50
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r6, r4
.L08084EA8:
	movs r0, #4
	str r0, [r1]
	b .L080854C8
	.align 2, 0
.L08084EB0: .4byte gUnk_080FF944
.L08084EB4:
	ldr r1, .L08084ED4 @ =gUnk_080FF968
	adds r0, r6, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r6, r5
	movs r1, #0xac
	bl func_08050E50
	movs r7, #0xe1
	lsls r7, r7, #3
	adds r1, r6, r7
	movs r0, #8
	str r0, [r1]
	b .L080854C8
	.align 2, 0
.L08084ED4: .4byte gUnk_080FF968
.L08084ED8:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L08084EE8
	b .L080854C8
.L08084EE8:
	ldr r0, [r6, #0x1c]
	bl func_08075DD4
	adds r0, r6, #0
	bl func_08083C64
	adds r7, r0, #0
	strh r4, [r6, #0xc]
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r6, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r6, r2]
	bl func_08075DB8
	ldr r0, [r6, #0x1c]
	adds r1, r7, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r0, r6, r3
	str r4, [r0]
	b .L0808518C
.L08084F24:
	adds r0, r6, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne .L08084F36
	b .L08085098
.L08084F36:
	ldr r4, .L08084F98 @ =0x00000684
	adds r0, r6, r4
	ldr r7, [r0, #0x14]
	movs r5, #1
	bl func_080CAAF4
	add r0, sp, #0x14
	mov r8, r0
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r1, r1, r6
	mov sb, r1
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	add r0, sb
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L08084F9C @ =gUnk_080FF6A8
	mov r0, r8
	adds r1, r1, r2
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r0, [r6, #8]
	ldr r4, .L08084FA0 @ =0x00001AA8
	adds r0, r0, r4
	mov r2, r8
	ldr r1, [r2, #4]
	muls r1, r7, r1
	bl func_0809ACC0
	adds r0, r6, #0
	bl func_080C8550
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	mov r3, sb
	adds r4, r3, r0
	ldr r4, [r4]
	cmp r4, #0
	beq .L08084FA4
	cmp r4, #1
	beq .L08084FB8
	b .L08085044
	.align 2, 0
.L08084F98: .4byte 0x00000684
.L08084F9C: .4byte gUnk_080FF6A8
.L08084FA0: .4byte 0x00001AA8
.L08084FA4:
	ldr r0, [r6, #8]
	adds r0, #0x14
	adds r1, r7, #0
	bl method_08009B68__4FarmUi
	ldr r1, .L08084FB4 @ =gUnk_080FF9F4
	b .L0808502E
	.align 2, 0
.L08084FB4: .4byte gUnk_080FF9F4
.L08084FB8:
	ldr r0, [r6, #8]
	ldr r4, .L08085020 @ =0x00001C2C
	adds r0, r0, r4
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08084FE6
	ldr r4, [r6, #8]
	ldr r5, .L08085020 @ =0x00001C2C
	adds r4, r4, r5
	mov r5, sp
	adds r5, #0x55
	adds r0, r5, #0
	movs r1, #0x5a
	bl __7ArticleUi
	ldrb r1, [r5]
	adds r0, r4, #0
	bl func_0800F3E8
	subs r7, #1
	movs r5, #0
.L08084FE6:
	cmp r7, #0
	beq .L0808503C
	ldr r0, [r6, #8]
	ldr r1, .L08085024 @ =0x00001C38
	adds r0, r0, r1
	movs r1, #0x5a
	adds r2, r7, #0
	bl AddAmountOfArticle__8RucksackUiUi
	adds r4, r0, #0
	cmp r7, r4
	bls .L08085000
	movs r5, #0
.L08085000:
	cmp r4, #0
	beq .L0808503C
	ldr r0, [r6, #8]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetShelf__9FarmHouse
	movs r1, #0x5a
	adds r2, r4, #0
	bl AddAmountOf__5ShelfUiUi
	cmp r5, #0
	beq .L0808502C
	ldr r1, .L08085028 @ =gUnk_080FFA24
	b .L0808502E
	.align 2, 0
.L08085020: .4byte 0x00001C2C
.L08085024: .4byte 0x00001C38
.L08085028: .4byte gUnk_080FFA24
.L0808502C:
	ldr r1, .L08085038 @ =gUnk_080FFA70
.L0808502E:
	adds r0, r6, #0
	bl func_080CABA0
	b .L08085044
	.align 2, 0
.L08085038: .4byte gUnk_080FFA70
.L0808503C:
	ldr r1, .L08085088 @ =gUnk_080FFABC
	adds r0, r6, #0
	bl func_080CABA0
.L08085044:
	ldr r3, .L0808508C @ =0x0000070C
	adds r0, r6, r3
	movs r5, #1
	strb r5, [r0]
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r6, r4
	movs r1, #0xac
	bl func_08050E50
	movs r7, #0xe1
	lsls r7, r7, #3
	adds r4, r6, r7
	movs r0, #0xa
	str r0, [r4]
	ldr r0, [r6, #8]
	adds r0, #0x14
	bl GetUnk10__C4Farm
	ldr r1, .L08085090 @ =0x000003E7
	cmp r0, r1
	beq .L08085072
	b .L080854C8
.L08085072:
	ldr r0, .L08085094 @ =0x000061F0
	adds r1, r6, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq .L0808507E
	b .L080854C8
.L0808507E:
	strb r5, [r1]
	movs r0, #5
	str r0, [r4]
	b .L080854C8
	.align 2, 0
.L08085088: .4byte gUnk_080FFABC
.L0808508C: .4byte 0x0000070C
.L08085090: .4byte 0x000003E7
.L08085094: .4byte 0x000061F0
.L08085098:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L080850D0
	ldr r1, .L080850CC @ =0x00000684
	adds r0, r6, r1
	bl func_080CAAF4
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r3, #0xaa
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r1, [r0]
	adds r0, r6, #0
	bl func_080840F4
	b .L080854C8
	.align 2, 0
.L080850CC: .4byte 0x00000684
.L080850D0:
	ldr r4, .L080850E4 @ =0x00000684
	adds r1, r6, r4
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne .L080850DC
	b .L080854C8
.L080850DC:
	adds r0, r1, #0
	bl func_080CA98C
	b .L080854C8
	.align 2, 0
.L080850E4: .4byte 0x00000684
.L080850E8:
	movs r5, #0xd4
	lsls r5, r5, #2
	adds r0, r6, r5
	ldr r0, [r0]
	cmp r0, #3
	beq .L080850F6
	b .L080854C8
.L080850F6:
	movs r7, #0xd2
	lsls r7, r7, #2
	adds r0, r6, r7
	bl func_08050E5C
	movs r0, #0xe1
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #1
	str r0, [r1]
	subs r0, #2
	str r0, [r6, #0x14]
	b .L080854C8
.L08085110:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808511E
	b .L080854C8
.L0808511E:
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r6, r2
	bl func_08050E5C
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r1, r6, r3
	movs r0, #0
	str r0, [r1]
	subs r0, #1
	str r0, [r6, #0x14]
	b .L080854C8
.L08085138:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r6, r4
	ldr r0, [r0]
	cmp r0, #3
	beq .L08085146
	b .L080854C8
.L08085146:
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r6, r5
	bl func_08050E5C
	movs r7, #0xe1
	lsls r7, r7, #3
	adds r0, r6, r7
	movs r4, #0
	str r4, [r0]
	ldr r0, [r6, #0x1c]
	bl func_08075DD4
	adds r0, r6, #0
	bl func_08083C64
	adds r7, r0, #0
	strh r4, [r6, #0xc]
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r6, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r6, r2]
	bl func_08075DB8
	ldr r0, [r6, #0x1c]
	adds r1, r7, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
.L0808518C:
	str r4, [r6, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x14]
	b .L080854C8
.L08085196:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r6, r3
	ldr r0, [r0]
	cmp r0, #3
	beq .L080851A4
	b .L080854C8
.L080851A4:
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r4, r6, r5
	adds r0, r4, #0
	bl func_08050E5C
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r7, #0xaa
	lsls r7, r7, #2
	adds r0, r0, r7
	ldr r0, [r0]
	cmp r0, #7
	bne .L080851E4
	ldr r1, .L080851DC @ =gUnk_080FFACC
	ldr r2, .L080851E0 @ =gUnk_080FFAD4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0
	bl func_08050E0C
	b .L080851FA
	.align 2, 0
.L080851DC: .4byte gUnk_080FFACC
.L080851E0: .4byte gUnk_080FFAD4
.L080851E4:
	ldr r1, .L08085208 @ =gUnk_080FFAE0
	ldr r2, .L0808520C @ =gUnk_080FFAE8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0
	bl func_08050E0C
.L080851FA:
	movs r0, #0xe1
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #7
	str r0, [r1]
	b .L080854C8
	.align 2, 0
.L08085208: .4byte gUnk_080FFAE0
.L0808520C: .4byte gUnk_080FFAE8
.L08085210:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808521E
	b .L080854C8
.L0808521E:
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r2, r2, r6
	mov sb, r2
	mov r0, sb
	bl func_08050DF0
	mov sl, r0
	cmp r0, #1
	beq .L08085238
	cmp r0, #2
	beq .L08085310
	b .L080854C8
.L08085238:
	add r4, sp, #0x14
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r3, #0xaa
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L080852F8 @ =gUnk_080FF6A8
	adds r0, r4, #0
	adds r1, r1, r2
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldm r1!, {r3, r5}
	stm r0!, {r3, r5}
	ldr r0, [r6, #8]
	ldr r7, .L080852FC @ =0x00001F64
	adds r0, r0, r7
	ldr r1, [r4, #0xc]
	bl func_0809EBA8
	ldr r0, [r6, #8]
	ldr r1, .L08085300 @ =0x00001AA8
	adds r0, r0, r1
	ldr r1, [r4, #4]
	bl func_0809ACC0
	adds r0, r6, #0
	bl func_080C8550
	ldr r0, [r6, #8]
	adds r0, #0x14
	ldr r1, [r4, #8]
	bl method_08009BAC__4FarmUi
	ldr r2, .L08085304 @ =0x000061F0
	adds r2, r2, r6
	mov r8, r2
	ldrb r0, [r2]
	cmp r0, #0
	beq .L080852D2
	ldr r0, [r6, #0x1c]
	bl func_08075DD4
	adds r0, r6, #0
	bl func_08083C64
	adds r7, r0, #0
	movs r5, #0
	movs r4, #0
	strh r4, [r6, #0xc]
	movs r3, #0xc9
	lsls r3, r3, #3
	adds r1, r6, r3
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r6, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r6, r2]
	bl func_08075DB8
	ldr r0, [r6, #0x1c]
	adds r1, r7, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	str r4, [r6, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x14]
	mov r3, r8
	strb r5, [r3]
.L080852D2:
	ldr r1, .L08085308 @ =gUnk_080FFAF8
	adds r0, r6, #0
	bl func_080CABA0
	mov r0, sb
	movs r1, #0xad
	bl func_08050E50
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r6, r4
	movs r0, #0xa
	str r0, [r1]
	ldr r5, .L0808530C @ =0x0000070C
	adds r0, r6, r5
	mov r7, sl
	strb r7, [r0]
	b .L080854C8
	.align 2, 0
.L080852F8: .4byte gUnk_080FF6A8
.L080852FC: .4byte 0x00001F64
.L08085300: .4byte 0x00001AA8
.L08085304: .4byte 0x000061F0
.L08085308: .4byte gUnk_080FFAF8
.L0808530C: .4byte 0x0000070C
.L08085310:
	ldr r1, .L0808532C @ =gUnk_080FFB2C
	adds r0, r6, #0
	bl func_080CABA0
	mov r0, sb
	movs r1, #0xac
	bl func_08050E50
	movs r0, #0xe1
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #0xa
	str r0, [r1]
	b .L080854C8
	.align 2, 0
.L0808532C: .4byte gUnk_080FFB2C
.L08085330:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808533E
	b .L080854C8
.L0808533E:
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r4, r6, r2
	adds r0, r4, #0
	bl func_08050E5C
	ldr r1, .L0808536C @ =gUnk_080FFAE0
	ldr r2, .L08085370 @ =gUnk_080FFAE8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0
	bl func_08050E0C
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r1, r6, r3
	movs r0, #9
	str r0, [r1]
	b .L080854C8
	.align 2, 0
.L0808536C: .4byte gUnk_080FFAE0
.L08085370: .4byte gUnk_080FFAE8
.L08085374:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r6, r4
	ldr r0, [r0]
	cmp r0, #3
	beq .L08085382
	b .L080854C8
.L08085382:
	movs r7, #0xd2
	lsls r7, r7, #2
	adds r5, r6, r7
	adds r0, r5, #0
	bl func_08050DF0
	mov r8, r0
	cmp r0, #1
	beq .L0808539A
	cmp r0, #2
	beq .L08085434
	b .L080854C8
.L0808539A:
	add r4, sp, #0x14
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldr r1, .L08085418 @ =0x00000714
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L0808541C @ =gUnk_080FF6A8
	adds r0, r4, #0
	adds r1, r1, r2
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldm r1!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r0, [r6, #8]
	ldr r7, .L08085420 @ =0x00001F64
	adds r0, r0, r7
	ldr r1, [r4, #0xc]
	bl func_0809EBA8
	ldr r0, [r6, #8]
	ldr r1, .L08085424 @ =0x00001AA8
	adds r0, r0, r1
	ldr r1, [r4, #4]
	bl func_0809ACC0
	adds r0, r6, #0
	bl func_080C8550
	ldr r0, [r6, #8]
	adds r0, #0x14
	ldr r1, [r4, #8]
	bl method_08009BAC__4FarmUi
	ldr r2, .L08085428 @ =0x000061F0
	adds r1, r6, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080853F2
	movs r0, #0
	strb r0, [r1]
.L080853F2:
	ldr r1, .L0808542C @ =gUnk_080FFAF8
	adds r0, r6, #0
	bl func_080CABA0
	adds r0, r5, #0
	movs r1, #0xad
	bl func_08050E50
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r1, r6, r3
	movs r0, #5
	str r0, [r1]
	ldr r4, .L08085430 @ =0x0000070C
	adds r0, r6, r4
	mov r5, r8
	strb r5, [r0]
	b .L080854C8
	.align 2, 0
.L08085418: .4byte 0x00000714
.L0808541C: .4byte gUnk_080FF6A8
.L08085420: .4byte 0x00001F64
.L08085424: .4byte 0x00001AA8
.L08085428: .4byte 0x000061F0
.L0808542C: .4byte gUnk_080FFAF8
.L08085430: .4byte 0x0000070C
.L08085434:
	ldr r1, .L08085450 @ =gUnk_080FFB2C
	adds r0, r6, #0
	bl func_080CABA0
	adds r0, r5, #0
	movs r1, #0xac
	bl func_08050E50
	movs r7, #0xe1
	lsls r7, r7, #3
	adds r1, r6, r7
	movs r0, #5
	str r0, [r1]
	b .L080854C8
	.align 2, 0
.L08085450: .4byte gUnk_080FFB2C
.L08085454:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r4, [r0]
	cmp r4, #3
	bne .L080854C8
	ldr r1, .L08085480 @ =gUnk_080FFB3C
	adds r0, r6, #0
	bl func_080CABA0
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0xac
	bl func_08050E50
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r0, r6, r3
	str r4, [r0]
	b .L080854C8
	.align 2, 0
.L08085480: .4byte gUnk_080FFB3C
.L08085484:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r6, r4
	ldr r0, [r0]
	cmp r0, #3
	bne .L080854C8
	ldr r2, [sp, #0x10]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	bne .L080854C8
	movs r5, #0xe1
	lsls r5, r5, #3
	adds r0, r6, r5
	str r1, [r0]
	movs r7, #1
	str r7, [sp, #0x5c]
	ldr r1, .L080854D4 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L080854C8:
	adds r0, r6, #0
	bl func_080C96C4
	bl .L08084498
	.align 2, 0
.L080854D4: .4byte 0x00000889

	thumb_func_start sub_080854D8
sub_080854D8: @ 0x080854D8
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080854F4
func_080854F4: @ 0x080854F4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L08085520 @ =vtable_unk_080E7D20
	str r0, [r4]
	ldr r0, .L08085524 @ =0x000061F4
	bl __builtin_new
	adds r1, r5, #0
	bl func_08083BD4
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
.L08085520: .4byte vtable_unk_080E7D20
.L08085524: .4byte 0x000061F4

	thumb_func_start func_08085528
func_08085528: @ 0x08085528
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L08085564 @ =vtable_unk_080E7D20
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L08085544
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08085544:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L08085556
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08085556:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L08085564: .4byte vtable_unk_080E7D20

	thumb_func_start func_08085568
func_08085568: @ 0x08085568
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_08084228
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_08085584
func_08085584: @ 0x08085584
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	bl func_080C7F58
	ldr r0, .L080855A4 @ =vtable_unk_080E7D30
	str r0, [r5, #4]
	ldr r0, .L080855A8 @ =0x000006A4
	adds r1, r5, r0
	cmp r4, #0
	beq .L080855B2
	cmp r4, #1
	beq .L080855AC
	movs r0, #6
	str r0, [r1]
	b .L080855B4
	.align 2, 0
.L080855A4: .4byte vtable_unk_080E7D30
.L080855A8: .4byte 0x000006A4
.L080855AC:
	movs r0, #5
	str r0, [r1]
	b .L080855B4
.L080855B2:
	str r4, [r1]
.L080855B4:
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, .L08085618 @ =0x0000072C
	adds r0, r5, r2
	str r1, [r0]
	movs r0, #0x10
	ldr r7, .L0808561C @ =gUnk_080FFC6C
	subs r1, #1
.L080855CA:
	subs r0, #1
	cmp r0, r1
	bne .L080855CA
	ldr r0, .L08085620 @ =0x00003AB4
	adds r6, r5, r0
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L080855E2
	movs r4, #0x7f
.L080855E2:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	ldr r2, .L08085624 @ =0x00003B34
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	ldr r1, .L08085628 @ =0x00003B98
	adds r0, r5, r1
	movs r1, #0xf
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L08085606:
	strb r3, [r0, #4]
	adds r0, #0x84
	subs r1, #1
	cmp r1, r2
	bne .L08085606
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08085618: .4byte 0x0000072C
.L0808561C: .4byte gUnk_080FFC6C
.L08085620: .4byte 0x00003AB4
.L08085624: .4byte 0x00003B34
.L08085628: .4byte 0x00003B98

	thumb_func_start func_0808562C
func_0808562C: @ 0x0808562C
	push {lr}
	ldr r2, .L0808563C @ =vtable_unk_080E7D30
	str r2, [r0, #4]
	bl func_080C8360
	pop {r0}
	bx r0
	.align 2, 0
.L0808563C: .4byte vtable_unk_080E7D30

	thumb_func_start func_08085640
func_08085640: @ 0x08085640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xec
	adds r6, r0, #0
	movs r0, #4
	str r0, [sp, #0xd8]
	adds r3, r6, #0
	adds r3, #0x20
	adds r5, r6, #0
	adds r5, #0x24
	ldr r0, [r6, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r3, r0
	adds r2, r0, #0
	adds r1, r5, #0
	ldr r4, [r3]
	cmp r1, r2
	beq .L08085672
.L0808566C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0808566C
.L08085672:
	subs r0, r0, r5
	asrs r0, r0, #4
	subs r0, r4, r0
	str r0, [r3]
	movs r1, #0
	str r1, [sp, #0xdc]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r1, r0
	blo .L0808568C
	b .L08085854
.L0808568C:
	mov r3, sp
	adds r3, #0x1c
	str r3, [sp, #0xe4]
	movs r5, #0
	movs r4, #4
	str r4, [sp, #0xe8]
.L08085698:
	movs r7, #0xa9
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [sp, #0xe8]
	adds r0, r0, r1
	ldr r3, [r0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r2, .L0808574C @ =gUnk_080FFB90
	add r0, sp, #8
	adds r1, r1, r2
	ldm r1!, {r2, r4, r7}
	stm r0!, {r2, r4, r7}
	ldm r1!, {r2, r4}
	stm r0!, {r2, r4}
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #0xd0
	str r0, [sp, #0xe0]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq .L080856CE
	cmp r0, #2
	beq .L080856CE
	b .L080857D6
.L080856CE:
	movs r0, #0x10
	ldr r7, [sp, #0xe4]
	str r0, [r7, #4]
	add r4, sp, #0x2c
	adds r0, r4, #0
	ldr r1, .L08085750 @ =gUnk_086678A0
	bl func_0805E6CC
	add r0, sp, #0x5c
	strh r5, [r0]
	strh r5, [r0, #2]
	add r0, sp, #0x60
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	add r0, sp, #0x74
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r1, [r0, #0x18]
	add r0, sp, #0x90
	strb r1, [r0]
	add r3, sp, #0x94
	str r5, [r3]
	strh r5, [r3, #4]
	add r2, sp, #0x9c
	str r5, [r2]
	strh r5, [r2, #4]
	add r1, sp, #0xa4
	str r5, [r1]
	strh r5, [r1, #4]
	add r0, sp, #0xac
	str r5, [r0]
	strh r5, [r0, #4]
	ldr r4, [sp, #0xd8]
	lsls r0, r4, #3
	strh r0, [r7]
	ldr r0, [sp, #0x18]
	add r7, sp, #0x1c
	mov r8, r3
	mov sb, r2
	mov sl, r1
	cmp r0, #0
	bne .L08085754
	add r4, sp, #0xd4
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetIconId__C7Article
	b .L08085766
	.align 2, 0
.L0808574C: .4byte gUnk_080FFB90
.L08085750: .4byte gUnk_086678A0
.L08085754:
	mov r4, sp
	adds r4, #0xd5
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetIconId__C4Tool
.L08085766:
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	add r4, sp, #0x60
	adds r0, r4, #0
	bl func_0805E860
	ldr r1, [sp, #0x60]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x64]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xb4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0xb4
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	mov r3, sb
	ldr r0, [r3]
	str r0, [r7, #8]
	mov r4, sl
	ldr r0, [r4]
	str r0, [r7, #0xc]
	adds r1, r6, #0
	adds r1, #0x20
	ldr r0, [r6, #0x20]
	cmp r0, #0x27
	bhi .L080857D2
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L080857CC
	adds r1, r7, #0
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x28]
	str r1, [r0]
.L080857CC:
	ldr r0, [r6, #0x20]
	adds r0, #1
	str r0, [r6, #0x20]
.L080857D2:
	ldr r0, .L08085868 @ =vtable_unk_080E5A28
	str r0, [sp, #0x2c]
.L080857D6:
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r7, [sp, #0xd8]
	lsls r4, r7, #6
	adds r0, r0, r4
	adds r0, #4
	ldr r2, [sp, #0xe0]
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	mov sb, r3
	str r3, [sp]
	movs r7, #0x20
	str r7, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r0, r0, r6
	mov r8, r0
	ldr r0, [sp, #0xe8]
	add r0, r8
	ldr r0, [r0]
	cmp r0, #6
	bhi .L08085838
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #0x18]
	adds r1, r1, r4
	adds r1, #0x32
	ldr r0, [sp, #0x10]
	str r7, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	mov r1, sb
	str r1, [sp]
	str r7, [sp, #4]
	movs r1, #0x20
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
.L08085838:
	ldr r2, [sp, #0xd8]
	adds r2, #2
	str r2, [sp, #0xd8]
	ldr r3, [sp, #0xe8]
	adds r3, #4
	str r3, [sp, #0xe8]
	ldr r4, [sp, #0xdc]
	adds r4, #1
	str r4, [sp, #0xdc]
	mov r7, r8
	ldr r0, [r7]
	cmp r4, r0
	bhs .L08085854
	b .L08085698
.L08085854:
	ldr r0, [sp, #0xd8]
	add sp, #0xec
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08085868: .4byte vtable_unk_080E5A28

	thumb_func_start func_0808586C
func_0808586C: @ 0x0808586C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	adds r7, r0, #0
	str r1, [sp, #0x50]
	movs r0, #4
	str r0, [sp, #0x54]
	adds r4, r7, #0
	adds r4, #0x20
	adds r6, r7, #0
	adds r6, #0x24
	ldr r0, [r7, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	adds r2, r0, #0
	adds r1, r6, #0
	ldr r5, [r4]
	ldr r3, [r7, #8]
	cmp r1, r2
	beq .L080858A2
.L0808589C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0808589C
.L080858A2:
	subs r0, r0, r6
	asrs r0, r0, #4
	subs r0, r5, r0
	str r0, [r4]
	movs r1, #0
	str r1, [sp, #0x58]
	b .L08085E8A
.L080858B0:
	movs r2, #0
	str r2, [sp, #0x5c]
	movs r3, #0
	str r3, [sp, #0x60]
	ldr r4, [sp, #0x50]
	cmp r4, #0x1e
	bne .L080858CE
	ldr r0, [r7, #8]
	movs r5, #0xbe
	lsls r5, r5, #3
	adds r0, r0, r5
	bl GetCow__4BarnUi
	str r0, [sp, #0x5c]
	b .L080858DC
.L080858CE:
	ldr r0, [r7, #8]
	movs r6, #0xbe
	lsls r6, r6, #3
	adds r0, r0, r6
	bl GetSheep__4BarnUi
	str r0, [sp, #0x60]
.L080858DC:
	movs r0, #0x10
	str r0, [sp, #0x10]
	add r1, sp, #0xc
	ldr r2, [sp, #0x54]
	lsls r0, r2, #3
	strh r0, [r1]
	ldr r3, [sp, #0x50]
	cmp r3, #0x1e
	bne .L08085900
	ldr r0, .L080858F8 @ =gUnk_08751B4C
	str r0, [sp, #0x14]
	ldr r0, .L080858FC @ =gUnk_08751BCC
	b .L08085906
	.align 2, 0
.L080858F8: .4byte gUnk_08751B4C
.L080858FC: .4byte gUnk_08751BCC
.L08085900:
	ldr r0, .L08085964 @ =gUnk_0875320C
	str r0, [sp, #0x14]
	ldr r0, .L08085968 @ =gUnk_0875328C
.L08085906:
	str r0, [sp, #0x18]
	ldr r0, [r7, #0x20]
	adds r4, r7, #0
	adds r4, #0x20
	cmp r0, #0x27
	bhi .L0808592C
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L08085926
	add r1, sp, #0xc
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085926:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L0808592C:
	ldr r3, [sp, #0x50]
	cmp r3, #0x1e
	bne .L08085974
	ldr r0, [sp, #0x5c]
	bl IsFestivalWinner__C6Animal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080859AC
	movs r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, .L0808596C @ =gUnk_0875196C
	str r0, [sp, #0x14]
	ldr r0, .L08085970 @ =gUnk_087519EC
	str r0, [sp, #0x18]
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L080859AC
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L080859A6
	add r1, sp, #0xc
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	b .L080859A2
	.align 2, 0
.L08085964: .4byte gUnk_0875320C
.L08085968: .4byte gUnk_0875328C
.L0808596C: .4byte gUnk_0875196C
.L08085970: .4byte gUnk_087519EC
.L08085974:
	ldr r0, [sp, #0x60]
	bl IsFestivalWinner__C6Animal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080859AC
	movs r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, .L08085A0C @ =gUnk_0875196C
	str r0, [sp, #0x14]
	ldr r0, .L08085A10 @ =gUnk_087519EC
	str r0, [sp, #0x18]
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L080859AC
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L080859A6
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
.L080859A2:
	ldr r1, [r1]
	str r1, [r0]
.L080859A6:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L080859AC:
	ldr r5, [sp, #0x58]
	lsls r4, r5, #1
	adds r0, r4, r5
	lsls r0, r0, #6
	adds r0, r0, r5
	lsls r5, r0, #2
	adds r1, r5, r7
	add r0, sp, #0x2c
	movs r6, #0xc
	movs r2, #2
	mov r8, r2
	movs r3, #0
	mov sb, r3
	strh r6, [r0]
	mov r2, r8
	strh r2, [r0, #2]
	ldr r0, [sp, #0x2c]
	ldr r3, .L08085A14 @ =0x00000774
	adds r1, r1, r3
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [sp, #0x50]
	cmp r0, #0x1e
	bne .L08085A18
	ldr r0, [sp, #0x5c]
	bl GetName__C6Animal
	adds r2, r0, #0
	adds r1, r5, r7
	add r0, sp, #0x30
	strh r6, [r0]
	mov r3, r8
	strh r3, [r0, #2]
	ldr r0, [sp, #0x30]
	ldr r5, .L08085A14 @ =0x00000774
	adds r1, r1, r5
	str r2, [sp]
	mov r6, sb
	str r6, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	b .L08085A42
	.align 2, 0
.L08085A0C: .4byte gUnk_0875196C
.L08085A10: .4byte gUnk_087519EC
.L08085A14: .4byte 0x00000774
.L08085A18:
	ldr r0, [sp, #0x60]
	bl GetName__C6Animal
	adds r2, r0, #0
	adds r1, r5, r7
	add r0, sp, #0x34
	strh r6, [r0]
	mov r3, r8
	strh r3, [r0, #2]
	ldr r0, [sp, #0x34]
	ldr r5, .L08085AB8 @ =0x00000774
	adds r1, r1, r5
	str r2, [sp]
	mov r6, sb
	str r6, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L08085A42:
	ldr r1, [sp, #0x58]
	adds r1, #9
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xd0
	mov sl, r0
	adds r0, r7, #0
	bl func_08008910
	ldr r3, [sp, #0x58]
	adds r1, r4, r3
	lsls r1, r1, #6
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r4, .L08085AB8 @ =0x00000774
	adds r1, r1, r4
	adds r5, r0, #0
	mov r6, sl
	lsls r2, r6, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x1c
	movs r3, #0xc0
	lsls r3, r3, #2
	bl func_08008F0C
	add r1, sp, #0x1c
	mov sb, r1
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08085ABC
	cmp r1, #0
	beq .L08085A98
	adds r0, r1, #0
	add r1, sp, #0x1c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08085A98:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r5, [sp, #0x54]
	lsls r5, r5, #6
	str r5, [sp, #0x6c]
	mov r6, sl
	lsls r6, r6, #0x10
	mov sl, r6
	ldr r0, [sp, #0x54]
	adds r0, #2
	str r0, [sp, #0x68]
	ldr r1, [sp, #0x58]
	adds r1, #1
	str r1, [sp, #0x64]
	b .L08085BA6
	.align 2, 0
.L08085AB8: .4byte 0x00000774
.L08085ABC:
	str r1, [sp, #0x74]
	movs r2, #1
	str r2, [sp, #0x3c]
	ldr r0, [r5]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r1, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs .L08085AD6
	adds r0, r1, #0
.L08085AD6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08085AF4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0x70]
	cmp r0, #0
	bne .L08085AFA
	adds r0, r4, #0
	bl func_080D3BC0
	b .L08085AFA
.L08085AF4:
	movs r0, #0
	movs r4, #0
	str r4, [sp, #0x70]
.L08085AFA:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r5]
	mov ip, r8
	ldr r6, [sp, #0x54]
	lsls r6, r6, #6
	str r6, [sp, #0x6c]
	mov r0, sl
	lsls r0, r0, #0x10
	mov sl, r0
	ldr r1, [sp, #0x54]
	adds r1, #2
	str r1, [sp, #0x68]
	ldr r3, [sp, #0x58]
	adds r3, #1
	str r3, [sp, #0x64]
	ldr r4, [sp, #0x74]
	cmp r2, r4
	beq .L08085B3E
.L08085B20:
	mov r6, ip
	cmp r6, #0
	beq .L08085B32
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085B32:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	ldr r1, [sp, #0x74]
	cmp r2, r1
	bne .L08085B20
.L08085B3E:
	mov r4, ip
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L08085B5A
	cmp r4, #0
	beq .L08085B56
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085B56:
	adds r4, #0x10
	b .L08085B82
.L08085B5A:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L08085B80
.L08085B62:
	cmp r2, #0
	beq .L08085B72
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085B72:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L08085B62
.L08085B80:
	adds r4, r2, #0
.L08085B82:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08085B92
.L08085B8C:
	adds r1, #0x10
	cmp r1, r2
	bne .L08085B8C
.L08085B92:
	cmp r0, #0
	beq .L08085B9A
	bl free
.L08085B9A:
	ldr r0, [sp, #0x70]
	add r0, r8
	mov r2, r8
	str r2, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L08085BA6:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r3, [sp, #0x6c]
	adds r0, r0, r3
	adds r0, #0xc
	mov r4, sl
	lsrs r1, r4, #0x10
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	movs r6, #0xca
	lsls r6, r6, #2
	lsls r2, r6, #5
	add r0, sp, #0x1c
	ldr r1, .L08085C08 @ =gUnk_0875254C
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #0x1c
	mov sl, r4
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08085C0C
	cmp r1, #0
	beq .L08085BFE
	adds r0, r1, #0
	add r1, sp, #0x1c
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085BFE:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08085CE0
	.align 2, 0
.L08085C08: .4byte gUnk_0875254C
.L08085C0C:
	str r1, [sp, #0x74]
	movs r4, #1
	str r4, [sp, #0x44]
	ldr r1, [r5]
	ldr r6, [sp, #0x74]
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x40]
	add r2, sp, #0x44
	add r0, sp, #0x40
	cmp r4, #1
	bhs .L08085C26
	adds r0, r2, #0
.L08085C26:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08085C46
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08085C42
	mov r0, sb
	bl func_080D3BC0
.L08085C42:
	ldr r1, [r5]
	b .L08085C4A
.L08085C46:
	movs r0, #0
	mov sb, r0
.L08085C4A:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov ip, r8
	ldr r0, [sp, #0x74]
	cmp r2, r0
	beq .L08085C76
.L08085C58:
	mov r1, ip
	cmp r1, #0
	beq .L08085C6A
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085C6A:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	ldr r1, [sp, #0x74]
	cmp r2, r1
	bne .L08085C58
.L08085C76:
	mov r4, ip
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne .L08085C92
	cmp r4, #0
	beq .L08085C8E
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085C8E:
	adds r4, #0x10
	b .L08085CBA
.L08085C92:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L08085CB8
.L08085C9A:
	cmp r2, #0
	beq .L08085CAA
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085CAA:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L08085C9A
.L08085CB8:
	adds r4, r2, #0
.L08085CBA:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08085CCA
.L08085CC4:
	adds r0, #0x10
	cmp r0, r2
	bne .L08085CC4
.L08085CCA:
	cmp r1, #0
	beq .L08085CD4
	adds r0, r1, #0
	bl free
.L08085CD4:
	mov r0, sb
	add r0, r8
	mov r2, r8
	str r2, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L08085CE0:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	add r0, sp, #0x1c
	ldr r1, .L08085D18 @ =gUnk_087525CC
	ldr r2, .L08085D1C @ =0x05000020
	movs r3, #0x20
	bl func_08008F0C
	add r3, sp, #0x1c
	mov sl, r3
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08085D20
	cmp r1, #0
	beq .L08085D10
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r4, r6}
	stm r0!, {r2, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085D10:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08085DF2
	.align 2, 0
.L08085D18: .4byte gUnk_087525CC
.L08085D1C: .4byte 0x05000020
.L08085D20:
	str r1, [sp, #0x74]
	movs r3, #1
	str r3, [sp, #0x4c]
	ldr r1, [r5]
	ldr r4, [sp, #0x74]
	subs r0, r4, r1
	asrs r4, r0, #4
	str r4, [sp, #0x48]
	add r2, sp, #0x4c
	add r0, sp, #0x48
	cmp r4, #1
	bhs .L08085D3A
	adds r0, r2, #0
.L08085D3A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08085D5A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08085D56
	mov r0, sb
	bl func_080D3BC0
.L08085D56:
	ldr r1, [r5]
	b .L08085D5E
.L08085D5A:
	movs r0, #0
	mov sb, r0
.L08085D5E:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov ip, r8
	ldr r6, [sp, #0x74]
	cmp r2, r6
	beq .L08085D88
.L08085D6C:
	mov r0, ip
	cmp r0, #0
	beq .L08085D7C
	adds r1, r2, #0
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085D7C:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	ldr r1, [sp, #0x74]
	cmp r2, r1
	bne .L08085D6C
.L08085D88:
	mov r4, ip
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne .L08085DA4
	cmp r4, #0
	beq .L08085DA0
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085DA0:
	adds r4, #0x10
	b .L08085DCC
.L08085DA4:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L08085DCA
.L08085DAC:
	cmp r2, #0
	beq .L08085DBC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08085DBC:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L08085DAC
.L08085DCA:
	adds r4, r2, #0
.L08085DCC:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08085DDC
.L08085DD6:
	adds r0, #0x10
	cmp r0, r2
	bne .L08085DD6
.L08085DDC:
	cmp r1, #0
	beq .L08085DE6
	adds r0, r1, #0
	bl free
.L08085DE6:
	mov r0, sb
	add r0, r8
	mov r2, r8
	str r2, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L08085DF2:
	ldr r3, [sp, #0x50]
	cmp r3, #0x1e
	bne .L08085E3E
	movs r5, #0
	ldr r0, [sp, #0x54]
	adds r0, #1
	lsls r0, r0, #6
	mov r8, r0
	movs r4, #0x26
	movs r0, #0xca
	lsls r0, r0, #2
	lsls r6, r0, #0x10
	b .L08085E2A
.L08085E0C:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, r8
	adds r0, r0, r4
	movs r1, #1
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r6, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r4, #2
	adds r5, #1
.L08085E2A:
	ldr r0, [sp, #0x5c]
	bl GetAffection__C6Animal
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_08085EC4
	cmp r5, r0
	blo .L08085E0C
	b .L08085E80
.L08085E3E:
	movs r5, #0
	ldr r0, [sp, #0x54]
	adds r0, #1
	lsls r0, r0, #6
	mov r8, r0
	movs r4, #0x26
	movs r2, #0xca
	lsls r2, r2, #2
	lsls r6, r2, #0x10
	b .L08085E6E
.L08085E52:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, r8
	adds r0, r0, r4
	movs r3, #1
	str r3, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r6, #0x10
	movs r2, #1
	bl func_0804E9F4
	adds r4, #2
	adds r5, #1
.L08085E6E:
	ldr r0, [sp, #0x60]
	bl GetAffection__C6Animal
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_08085EC4
	cmp r5, r0
	blo .L08085E52
.L08085E80:
	ldr r4, [sp, #0x68]
	str r4, [sp, #0x54]
	ldr r5, [sp, #0x64]
	str r5, [sp, #0x58]
	ldr r3, [r7, #8]
.L08085E8A:
	movs r6, #0xbe
	lsls r6, r6, #3
	adds r0, r3, r6
	bl GetCapacity__C4Barn
	ldr r1, [sp, #0x58]
	cmp r1, r0
	bhs .L08085EAE
	lsls r0, r1, #3
	ldr r2, .L08085EC0 @ =0x000006AC
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq .L08085EAE
	b .L080858B0
.L08085EAE:
	ldr r0, [sp, #0x54]
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08085EC0: .4byte 0x000006AC

	thumb_func_start func_08085EC4
func_08085EC4: @ 0x08085EC4
	push {r4, lr}
	sub sp, #8
	adds r0, r1, #0
	movs r4, #0xa
	str r4, [sp]
	movs r1, #0x19
	bl __udivsi3
	str r0, [sp, #4]
	add r1, sp, #4
	mov r2, sp
	cmp r4, r0
	bls .L08085EE0
	adds r2, r1, #0
.L08085EE0:
	ldr r0, [r2]
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08085EEC
func_08085EEC: @ 0x08085EEC
	push {lr}
	ldr r1, .L08085F00 @ =0x000043D8
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	bls .L08085EFA
	ldr r0, .L08085F04 @ =0x000003E7
.L08085EFA:
	pop {r1}
	bx r1
	.align 2, 0
.L08085F00: .4byte 0x000043D8
.L08085F04: .4byte 0x000003E7

	thumb_func_start func_08085F08
func_08085F08: @ 0x08085F08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	mov r8, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, .L08085F40 @ =gUnk_080FFB90
	mov r1, sp
	adds r0, r0, r2
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp, #0x10]
	cmp r0, #4
	bls .L08085F34
	bl sub_080868BC
.L08085F34:
	lsls r0, r0, #2
	ldr r1, .L08085F44 @ =.L08085F48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08085F40: .4byte gUnk_080FFB90
.L08085F44: .4byte .L08085F48
.L08085F48: @ jump table
	.4byte .L08085F5C @ case 0
	.4byte .L08085F86 @ case 1
	.4byte .L08085F70 @ case 2
	.4byte .L08085F86 @ case 3
	.4byte .L08085F92 @ case 4
.L08085F5C:
	add r4, sp, #0x28
	ldr r1, [sp]
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetDesc__C7Article
	adds r1, r0, #0
	b .L08085F88
.L08085F70:
	mov r4, sp
	adds r4, #0x29
	ldr r1, [sp]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetDesc__C4Tool
	adds r1, r0, #0
	b .L08085F88
.L08085F86:
	ldr r1, [sp, #0xc]
.L08085F88:
	mov r0, r8
	bl func_080CABEC
	bl sub_080868BC
.L08085F92:
	mov r4, r8
	ldr r0, [r4, #0x10]
	lsls r0, r0, #3
	ldr r7, .L0808604C @ =0x000006AC
	add r7, r8
	adds r0, r7, r0
	ldr r0, [r0]
	mov sl, r0
	lsls r0, r0, #5
	add r0, sl
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r2, .L08086050 @ =0x00003B98
	adds r0, r1, r2
	ldrb r0, [r0]
	str r0, [sp, #0x2c]
	cmp r0, #0
	beq .L08085FBA
	bl sub_080868A8
.L08085FBA:
	ldr r3, .L08086054 @ =0x00003B9C
	adds r5, r1, r3
	ldr r6, .L08086058 @ =gUnk_080FFB60
	adds r0, r6, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L08085FCE
	movs r4, #0x7f
.L08085FCE:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r5, r4
	add r4, sp, #0x2c
	ldrb r4, [r4]
	strb r4, [r0]
	mov r0, r8
	ldr r1, [r0, #0x10]
	lsls r0, r1, #2
	add r0, r8
	movs r2, #0xe6
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #9
	beq .L08085FF6
	b .L08086430
.L08085FF6:
	mov r3, r8
	ldr r0, [r3, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	lsls r1, r1, #3
	adds r1, r7, r1
	ldr r1, [r1]
	bl GetCow__4BarnUi
	str r0, [sp, #0x30]
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08086060
	ldr r7, .L0808605C @ =gUnk_080FFC70
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080860D6
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086036
	adds r4, r5, #0
.L08086036:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	add r1, sp, #0x2c
	ldrb r1, [r1]
	strb r1, [r0]
	b .L080860D6
	.align 2, 0
.L0808604C: .4byte 0x000006AC
.L08086050: .4byte 0x00003B98
.L08086054: .4byte 0x00003B9C
.L08086058: .4byte gUnk_080FFB60
.L0808605C: .4byte gUnk_080FFC70
.L08086060:
	ldr r0, [sp, #0x30]
	bl IsUnhappy__C9Livestock
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080860A4
	ldr r7, .L080860A0 @ =gUnk_080FFC80
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080860D6
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0808608C
	adds r4, r5, #0
.L0808608C:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	add r2, sp, #0x2c
	ldrb r2, [r2]
	strb r2, [r0]
	b .L080860D6
	.align 2, 0
.L080860A0: .4byte gUnk_080FFC80
.L080860A4:
	ldr r7, .L080861C0 @ =gUnk_080FFC90
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080860D6
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080860C4
	adds r4, r5, #0
.L080860C4:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	add r3, sp, #0x2c
	ldrb r3, [r3]
	strb r3, [r0]
.L080860D6:
	ldr r0, [sp, #0x30]
	bl GetAge__C6Animal
	movs r1, #0x78
	bl __udivsi3
	adds r6, r0, #0
	mov r4, sl
	lsls r4, r4, #5
	mov sb, r4
	cmp r6, #9
	bgt .L08086126
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r0, .L080861C4 @ =0x00003B9C
	adds r4, r4, r0
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086126
	ldr r0, .L080861C8 @ =gUnk_080FFCA0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086116
	adds r4, r5, #0
.L08086116:
	adds r0, r7, #0
	ldr r1, .L080861C8 @ =gUnk_080FFCA0
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L08086126:
	add r4, sp, #0x14
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl func_0804EC84
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	mov r1, r8
	adds r6, r0, r1
	ldr r2, .L080861C4 @ =0x00003B9C
	adds r6, r6, r2
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0808616E
	add r0, sp, #0x14
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0808615E
	adds r4, r5, #0
.L0808615E:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0808616E:
	ldr r7, .L080861CC @ =gUnk_080FFCA4
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0808619E
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0808618E
	adds r4, r5, #0
.L0808618E:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0808619E:
	ldr r0, [sp, #0x30]
	bl GetAge__C6Animal
	adds r4, r0, #0
	mov r3, r8
	ldr r0, [r3, #8]
	ldrb r1, [r0, #0x11]
	mov r0, sp
	adds r0, #0x2a
	strb r1, [r0]
	adds r6, r0, #0
	cmp r4, #0x1d
	bhi .L080861D0
	adds r5, r4, #0
	movs r4, #0
	b .L080861E4
	.align 2, 0
.L080861C0: .4byte gUnk_080FFC90
.L080861C4: .4byte 0x00003B9C
.L080861C8: .4byte gUnk_080FFCA0
.L080861CC: .4byte gUnk_080FFCA4
.L080861D0:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x1e
	bl __udivsi3
	adds r4, r0, #0
.L080861E4:
	ldrb r0, [r6]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1b
	adds r2, r5, #0
	subs r2, #0x1e
	subs r3, r1, r2
	cmp r3, #0x1d
	bhi .L080861F8
	adds r4, #1
	b .L080861FA
.L080861F8:
	subs r3, #0x1e
.L080861FA:
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	rsbs r1, r1, #0
	subs r0, r0, r4
	movs r2, #3
	ands r0, r2
	ldrb r2, [r6]
	ands r1, r2
	orrs r1, r0
	movs r0, #0x1f
	ands r3, r0
	lsls r2, r3, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r6]
	add r4, sp, #0x34
	strb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r6, r1, #0x1e
	cmp r6, #1
	beq .L08086280
	cmp r6, #1
	bgt .L08086234
	cmp r6, #0
	beq .L0808623E
	b .L080862EC
.L08086234:
	cmp r6, #2
	beq .L08086298
	cmp r6, #3
	beq .L080862B0
	b .L080862EC
.L0808623E:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r0, .L08086278 @ =0x00003B9C
	adds r4, r4, r0
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080862EC
	ldr r0, .L0808627C @ =gUnk_080FFCC0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086268
	adds r4, r5, #0
.L08086268:
	adds r0, r7, #0
	ldr r1, .L0808627C @ =gUnk_080FFCC0
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	strb r6, [r0]
	b .L080862EC
	.align 2, 0
.L08086278: .4byte 0x00003B9C
.L0808627C: .4byte gUnk_080FFCC0
.L08086280:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r1, .L08086290 @ =0x00003B9C
	adds r4, r4, r1
	ldr r7, .L08086294 @ =gUnk_080FFCC8
	b .L080862BE
	.align 2, 0
.L08086290: .4byte 0x00003B9C
.L08086294: .4byte gUnk_080FFCC8
.L08086298:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r2, .L080862A8 @ =0x00003B9C
	adds r4, r4, r2
	ldr r7, .L080862AC @ =gUnk_080FFCD0
	b .L080862BE
	.align 2, 0
.L080862A8: .4byte 0x00003B9C
.L080862AC: .4byte gUnk_080FFCD0
.L080862B0:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r3, .L08086420 @ =0x00003B9C
	adds r4, r4, r3
	ldr r7, .L08086424 @ =gUnk_080FFCD8
.L080862BE:
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080862EC
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080862DC
	adds r4, r5, #0
.L080862DC:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080862EC:
	add r4, sp, #0x34
	ldrb r4, [r4]
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1b
	adds r6, r0, #1
	cmp r6, #9
	bgt .L08086336
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r0, .L08086420 @ =0x00003B9C
	adds r4, r4, r0
	ldr r7, .L08086428 @ =gUnk_080FFCA0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086336
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086326
	adds r4, r5, #0
.L08086326:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08086336:
	add r1, sp, #0x34
	ldrb r1, [r1]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	add r1, sp, #0x14
	movs r2, #0
	bl func_0804EC84
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	mov r2, r8
	adds r6, r0, r2
	ldr r3, .L08086420 @ =0x00003B9C
	adds r6, r6, r3
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086384
	ldr r0, .L08086428 @ =gUnk_080FFCA0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086374
	adds r4, r5, #0
.L08086374:
	adds r0, r7, #0
	ldr r1, .L08086428 @ =gUnk_080FFCA0
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L08086384:
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080863B2
	add r0, sp, #0x14
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080863A2
	adds r4, r5, #0
.L080863A2:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L080863B2:
	ldr r7, .L0808642C @ =gUnk_080FFCE0
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080863E2
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080863D2
	adds r4, r5, #0
.L080863D2:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080863E2:
	mov r4, r8
	ldr r1, [r4, #0x10]
	lsls r1, r1, #3
	movs r0, #0xd6
	lsls r0, r0, #3
	add r0, r8
	adds r0, r0, r1
	ldr r6, [r0]
	adds r0, r6, #0
	add r1, sp, #0x14
	movs r2, #0
	bl func_0804EC84
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	adds r6, r0, r4
	ldr r0, .L08086420 @ =0x00003B9C
	adds r6, r6, r0
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	bne .L0808641A
	b .L08086866
.L0808641A:
	add r0, sp, #0x14
	b .L0808684A
	.align 2, 0
.L08086420: .4byte 0x00003B9C
.L08086424: .4byte gUnk_080FFCD8
.L08086428: .4byte gUnk_080FFCA0
.L0808642C: .4byte gUnk_080FFCE0
.L08086430:
	mov r2, r8
	ldr r0, [r2, #8]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	lsls r1, r1, #3
	adds r1, r7, r1
	ldr r1, [r1]
	bl GetSheep__4BarnUi
	str r0, [sp, #0x3c]
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0
	beq .L0808648C
	ldr r7, .L08086488 @ =gUnk_080FFCF8
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086500
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086474
	adds r4, r5, #0
.L08086474:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	add r4, sp, #0x2c
	ldrb r4, [r4]
	strb r4, [r0]
	b .L08086500
	.align 2, 0
.L08086488: .4byte gUnk_080FFCF8
.L0808648C:
	ldr r0, [sp, #0x3c]
	bl IsUnhappy__C9Livestock
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq .L080864D0
	ldr r7, .L080864CC @ =gUnk_080FFC80
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086500
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080864BA
	adds r4, r5, #0
.L080864BA:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r1, sb
	strb r1, [r0]
	b .L08086500
	.align 2, 0
.L080864CC: .4byte gUnk_080FFC80
.L080864D0:
	ldr r2, .L080865EC @ =gUnk_080FFC90
	mov sb, r2
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086500
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080864F2
	adds r4, r5, #0
.L080864F2:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	strb r7, [r0]
.L08086500:
	ldr r0, [sp, #0x3c]
	bl GetAge__C6Animal
	movs r1, #0x78
	bl __udivsi3
	adds r6, r0, #0
	mov r3, sl
	lsls r3, r3, #5
	mov sb, r3
	cmp r6, #9
	bgt .L08086552
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r0, .L080865F0 @ =0x00003B9C
	adds r4, r4, r0
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086552
	ldr r0, .L080865F4 @ =gUnk_080FFCA0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086542
	adds r4, r5, #0
.L08086542:
	adds r0, r7, #0
	ldr r1, .L080865F4 @ =gUnk_080FFCA0
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L08086552:
	add r4, sp, #0x14
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl func_0804EC84
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	mov r1, r8
	adds r6, r0, r1
	ldr r2, .L080865F0 @ =0x00003B9C
	adds r6, r6, r2
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0808659A
	add r0, sp, #0x14
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0808658A
	adds r4, r5, #0
.L0808658A:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0808659A:
	ldr r7, .L080865F8 @ =gUnk_080FFD08
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080865CA
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080865BA
	adds r4, r5, #0
.L080865BA:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080865CA:
	ldr r0, [sp, #0x3c]
	bl GetAge__C6Animal
	adds r4, r0, #0
	mov r3, r8
	ldr r0, [r3, #8]
	ldrb r1, [r0, #0x11]
	mov r0, sp
	adds r0, #0x2b
	strb r1, [r0]
	adds r6, r0, #0
	cmp r4, #0x1d
	bhi .L080865FC
	adds r5, r4, #0
	movs r4, #0
	b .L08086610
	.align 2, 0
.L080865EC: .4byte gUnk_080FFC90
.L080865F0: .4byte 0x00003B9C
.L080865F4: .4byte gUnk_080FFCA0
.L080865F8: .4byte gUnk_080FFD08
.L080865FC:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x1e
	bl __udivsi3
	adds r4, r0, #0
.L08086610:
	ldrb r0, [r6]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1b
	adds r2, r5, #0
	subs r2, #0x1e
	subs r3, r1, r2
	cmp r3, #0x1d
	bhi .L08086624
	adds r4, #1
	b .L08086626
.L08086624:
	subs r3, #0x1e
.L08086626:
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r1, #4
	rsbs r1, r1, #0
	subs r0, r0, r4
	movs r2, #3
	ands r0, r2
	ldrb r2, [r6]
	ands r1, r2
	orrs r1, r0
	movs r0, #0x1f
	ands r3, r0
	lsls r2, r3, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r1, r0
	orrs r1, r2
	strb r1, [r6]
	add r4, sp, #0x40
	strb r1, [r4]
	lsls r1, r1, #0x1e
	lsrs r6, r1, #0x1e
	cmp r6, #1
	beq .L080866AC
	cmp r6, #1
	bgt .L08086660
	cmp r6, #0
	beq .L0808666A
	b .L08086718
.L08086660:
	cmp r6, #2
	beq .L080866C4
	cmp r6, #3
	beq .L080866DC
	b .L08086718
.L0808666A:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r0, .L080866A4 @ =0x00003B9C
	adds r4, r4, r0
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086718
	ldr r0, .L080866A8 @ =gUnk_080FFCC0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086694
	adds r4, r5, #0
.L08086694:
	adds r0, r7, #0
	ldr r1, .L080866A8 @ =gUnk_080FFCC0
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	strb r6, [r0]
	b .L08086718
	.align 2, 0
.L080866A4: .4byte 0x00003B9C
.L080866A8: .4byte gUnk_080FFCC0
.L080866AC:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r1, .L080866BC @ =0x00003B9C
	adds r4, r4, r1
	ldr r7, .L080866C0 @ =gUnk_080FFCC8
	b .L080866EA
	.align 2, 0
.L080866BC: .4byte 0x00003B9C
.L080866C0: .4byte gUnk_080FFCC8
.L080866C4:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r2, .L080866D4 @ =0x00003B9C
	adds r4, r4, r2
	ldr r7, .L080866D8 @ =gUnk_080FFCD0
	b .L080866EA
	.align 2, 0
.L080866D4: .4byte 0x00003B9C
.L080866D8: .4byte gUnk_080FFCD0
.L080866DC:
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r3, .L080868CC @ =0x00003B9C
	adds r4, r4, r3
	ldr r7, .L080868D0 @ =gUnk_080FFCD8
.L080866EA:
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086718
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086708
	adds r4, r5, #0
.L08086708:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08086718:
	add r4, sp, #0x40
	ldrb r4, [r4]
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1b
	adds r6, r0, #1
	cmp r6, #9
	bgt .L08086762
	mov r4, sb
	add r4, sl
	lsls r4, r4, #2
	add r4, r8
	ldr r0, .L080868CC @ =0x00003B9C
	adds r4, r4, r0
	ldr r7, .L080868D4 @ =gUnk_080FFCA0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086762
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086752
	adds r4, r5, #0
.L08086752:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08086762:
	add r1, sp, #0x40
	ldrb r1, [r1]
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	add r1, sp, #0x14
	movs r2, #0
	bl func_0804EC84
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	mov r2, r8
	adds r6, r0, r2
	ldr r3, .L080868CC @ =0x00003B9C
	adds r6, r6, r3
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080867B0
	ldr r0, .L080868D4 @ =gUnk_080FFCA0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080867A0
	adds r4, r5, #0
.L080867A0:
	adds r0, r7, #0
	ldr r1, .L080868D4 @ =gUnk_080FFCA0
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L080867B0:
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080867DE
	add r0, sp, #0x14
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080867CE
	adds r4, r5, #0
.L080867CE:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L080867DE:
	ldr r7, .L080868D8 @ =gUnk_080FFD24
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0808680E
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080867FE
	adds r4, r5, #0
.L080867FE:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0808680E:
	mov r4, r8
	ldr r1, [r4, #0x10]
	lsls r1, r1, #3
	movs r0, #0xd6
	lsls r0, r0, #3
	add r0, r8
	adds r0, r0, r1
	ldr r6, [r0]
	add r4, sp, #0x14
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl func_0804EC84
	mov r0, sb
	add r0, sl
	lsls r0, r0, #2
	mov r1, r8
	adds r6, r0, r1
	ldr r2, .L080868CC @ =0x00003B9C
	adds r6, r6, r2
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086866
	adds r0, r4, #0
.L0808684A:
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086856
	adds r4, r5, #0
.L08086856:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L08086866:
	ldr r7, .L080868DC @ =gUnk_080FFCF4
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08086896
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08086886
	adds r4, r5, #0
.L08086886:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08086896:
	mov r3, sl
	lsls r0, r3, #5
	add r0, sl
	lsls r0, r0, #2
	add r0, r8
	ldr r4, .L080868E0 @ =0x00003B98
	adds r0, r0, r4
	movs r1, #1
	strb r1, [r0]

	thumb_func_start sub_080868A8
sub_080868A8: @ 0x080868A8
	mov r0, sl
	lsls r1, r0, #5
	add r1, sl
	lsls r1, r1, #2
	add r1, r8
	ldr r2, .L080868CC @ =0x00003B9C
	adds r1, r1, r2
	mov r0, r8
	bl func_080CABEC

	thumb_func_start sub_080868BC
sub_080868BC: @ 0x080868BC
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080868CC: .4byte 0x00003B9C
.L080868D0: .4byte gUnk_080FFCD8
.L080868D4: .4byte gUnk_080FFCA0
.L080868D8: .4byte gUnk_080FFD24
.L080868DC: .4byte gUnk_080FFCF4
.L080868E0: .4byte 0x00003B98

	thumb_func_start func_080868E4
func_080868E4: @ 0x080868E4
	push {r4, lr}
	ldr r4, .L0808690C @ =0x00000BB8
	cmp r2, #0
	bne .L08086938
	ldr r0, [r0, #8]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetCow__4BarnUi
	bl GetProductRank__C9Livestock
	cmp r0, #4
	bhi .L08086994
	lsls r0, r0, #2
	ldr r1, .L08086910 @ =.L08086914
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808690C: .4byte 0x00000BB8
.L08086910: .4byte .L08086914
.L08086914: @ jump table
	.4byte .L08086984 @ case 0
	.4byte .L0808698C @ case 1
	.4byte .L08086992 @ case 2
	.4byte .L08086928 @ case 3
	.4byte .L08086930 @ case 4
.L08086928:
	ldr r4, .L0808692C @ =0x00001770
	b .L08086994
	.align 2, 0
.L0808692C: .4byte 0x00001770
.L08086930:
	ldr r4, .L08086934 @ =0x00001B58
	b .L08086994
	.align 2, 0
.L08086934: .4byte 0x00001B58
.L08086938:
	cmp r2, #1
	bne .L08086994
	ldr r0, [r0, #8]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetSheep__4BarnUi
	bl GetProductRank__C9Livestock
	cmp r0, #4
	bhi .L08086994
	lsls r0, r0, #2
	ldr r1, .L0808695C @ =.L08086960
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808695C: .4byte .L08086960
.L08086960: @ jump table
	.4byte .L08086974 @ case 0
	.4byte .L0808697A @ case 1
	.4byte .L08086984 @ case 2
	.4byte .L0808698C @ case 3
	.4byte .L08086992 @ case 4
.L08086974:
	movs r4, #0xfa
	lsls r4, r4, #3
	b .L08086994
.L0808697A:
	ldr r4, .L08086980 @ =0x000009C4
	b .L08086994
	.align 2, 0
.L08086980: .4byte 0x000009C4
.L08086984:
	ldr r4, .L08086988 @ =0x00000BB8
	b .L08086994
	.align 2, 0
.L08086988: .4byte 0x00000BB8
.L0808698C:
	movs r4, #0xfa
	lsls r4, r4, #4
	b .L08086994
.L08086992:
	ldr r4, .L0808699C @ =0x00001388
.L08086994:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L0808699C: .4byte 0x00001388

	thumb_func_start func_080869A0
func_080869A0: @ 0x080869A0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r6, #0
	movs r5, #0
	movs r7, #0xbe
	lsls r7, r7, #3
	b .L080869F2
.L080869AE:
	ldr r0, [r4, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r5, #0
	bl GetCow__4BarnUi
	cmp r0, #0
	beq .L080869CC
	ldr r0, [r4, #8]
	adds r0, r0, r7
	adds r1, r5, #0
	bl GetCow__4BarnUi
	b .L080869E4
.L080869CC:
	ldr r0, [r4, #8]
	adds r0, r0, r7
	adds r1, r5, #0
	bl GetSheep__4BarnUi
	cmp r0, #0
	beq .L080869F0
	ldr r0, [r4, #8]
	adds r0, r0, r7
	adds r1, r5, #0
	bl GetSheep__4BarnUi
.L080869E4:
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080869F0
	adds r6, #1
.L080869F0:
	adds r5, #1
.L080869F2:
	ldr r0, [r4, #8]
	adds r0, r0, r7
	bl GetCapacity__C4Barn
	cmp r5, r0
	blo .L080869AE
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08086A08
func_08086A08: @ 0x08086A08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb4
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080C85A0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086A40
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086A3A
	movs r0, #0
	str r0, [r2]
.L08086A3A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086A40:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086A60
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086A5A
	movs r0, #1
	str r0, [r2]
.L08086A5A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086A60:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086A80
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086A7A
	movs r0, #2
	str r0, [r2]
.L08086A7A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086A80:
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086AA0
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086A9A
	movs r0, #3
	str r0, [r2]
.L08086A9A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086AA0:
	movs r5, #0xa9
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086AC0
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086ABA
	movs r0, #4
	str r0, [r2]
.L08086ABA:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086AC0:
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086AE0
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086ADA
	movs r0, #5
	str r0, [r2]
.L08086ADA:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086AE0:
	ldr r0, [r7, #8]
	ldr r1, .L08086C78 @ =0x00001C38
	adds r0, r0, r1
	movs r1, #0x49
	bl GetFirstSlotWithTool__C8RucksackUi
	mvns r0, r0
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	ldr r0, [r7, #8]
	ldr r2, .L08086C7C @ =0x00001C34
	adds r0, r0, r2
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08086B1E
	ldr r0, [r7, #8]
	ldr r3, .L08086C7C @ =0x00001C34
	adds r0, r0, r3
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x78
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x49
	bne .L08086B1E
	movs r4, #1
.L08086B1E:
	ldr r0, [r7, #8]
	movs r5, #0xe0
	lsls r5, r5, #2
	adds r0, r0, r5
	movs r1, #0x49
	bl GetFirstSlotWith__C9ToolChestUi
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq .L08086B36
	movs r4, #1
.L08086B36:
	cmp r4, #0
	bne .L08086B5A
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086B5A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086B54
	movs r0, #6
	str r0, [r2]
.L08086B54:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086B5A:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086B7A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086B74
	movs r0, #7
	str r0, [r2]
.L08086B74:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086B7A:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08086B9A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08086B94
	movs r0, #8
	str r0, [r2]
.L08086B94:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08086B9A:
	movs r3, #0
	mov sb, r3
	mov r4, sp
	adds r4, #0x7c
	str r4, [sp, #0xac]
	mov r5, sp
	adds r5, #0x20
	str r5, [sp, #0xa8]
.L08086BAA:
	mov r6, sb
	lsls r1, r6, #2
	add r1, sb
	lsls r1, r1, #2
	ldr r2, .L08086C80 @ =gUnk_080FFB90
	add r0, sp, #0xc
	adds r1, r1, r2
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r5, r6}
	stm r0!, {r5, r6}
	mov r0, sb
	lsls r4, r0, #1
	adds r0, r4, r0
	lsls r0, r0, #6
	add r0, sb
	lsls r5, r0, #2
	adds r1, r5, r7
	movs r2, #0xee
	lsls r2, r2, #3
	adds r1, r1, r2
	add r0, sp, #0x7c
	movs r3, #0xc
	strh r3, [r0]
	movs r0, #2
	ldr r6, [sp, #0xac]
	strh r0, [r6, #2]
	ldr r0, [sp, #0x7c]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq .L08086C1E
	cmp r0, #2
	beq .L08086C1E
	adds r1, r5, r7
	movs r2, #0xee
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r2, [sp, #0x10]
	add r0, sp, #0x80
	movs r3, #0xc
	strh r3, [r0]
	movs r5, #2
	strh r5, [r0, #2]
	ldr r0, [sp, #0x80]
	adds r1, #4
	str r2, [sp]
	movs r6, #0
	str r6, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L08086C1E:
	add r4, sb
	lsls r5, r4, #3
	adds r5, #0xd0
	adds r0, r7, #0
	bl func_08008910
	lsls r4, r4, #6
	add r4, sb
	lsls r4, r4, #2
	adds r4, r4, r7
	ldr r3, .L08086C84 @ =0x00000774
	adds r4, r4, r3
	adds r6, r0, #0
	lsls r5, r5, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r5, r5, r0
	add r0, sp, #0x20
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0xc0
	lsls r3, r3, #2
	bl func_08008F0C
	ldr r1, [sp, #0xa8]
	str r1, [sp, #0x9c]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08086C88
	cmp r1, #0
	beq .L08086C6A
	adds r0, r1, #0
	ldr r1, [sp, #0x9c]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08086C6A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r5, #1
	add sb, r5
	b .L08086D56
	.align 2, 0
.L08086C78: .4byte 0x00001C38
.L08086C7C: .4byte 0x00001C34
.L08086C80: .4byte gUnk_080FFB90
.L08086C84: .4byte 0x00000774
.L08086C88:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x88]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x84]
	add r1, sp, #0x88
	add r0, sp, #0x84
	cmp r4, #1
	bhs .L08086CA0
	adds r0, r1, #0
.L08086CA0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08086CBE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08086CC2
	mov r0, sl
	bl func_080D3BC0
	b .L08086CC2
.L08086CBE:
	movs r0, #0
	mov sl, r0
.L08086CC2:
	adds r5, r0, #0
	str r5, [sp, #0xb0]
	ldr r2, [r6]
	mov ip, r5
	movs r1, #1
	add sb, r1
	cmp r2, r8
	beq .L08086CEE
.L08086CD2:
	mov r3, ip
	cmp r3, #0
	beq .L08086CE4
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08086CE4:
	adds r2, #0x10
	movs r4, #0x10
	add ip, r4
	cmp r2, r8
	bne .L08086CD2
.L08086CEE:
	mov r5, ip
	ldr r0, [sp, #0x88]
	cmp r0, #1
	bne .L08086D0A
	cmp r5, #0
	beq .L08086D06
	adds r0, r5, #0
	ldr r1, [sp, #0x9c]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08086D06:
	adds r5, #0x10
	b .L08086D32
.L08086D0A:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L08086D30
.L08086D12:
	cmp r2, #0
	beq .L08086D22
	adds r0, r2, #0
	ldr r1, [sp, #0x9c]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08086D22:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L08086D12
.L08086D30:
	adds r5, r2, #0
.L08086D32:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08086D42
.L08086D3C:
	adds r1, #0x10
	cmp r1, r2
	bne .L08086D3C
.L08086D42:
	cmp r0, #0
	beq .L08086D4A
	bl free
.L08086D4A:
	ldr r0, [sp, #0xb0]
	add r0, sl
	ldr r1, [sp, #0xb0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08086D56:
	mov r2, sb
	cmp r2, #8
	bhi .L08086D5E
	b .L08086BAA
.L08086D5E:
	movs r2, #0
	movs r1, #0xf
	ldr r3, .L08086E30 @ =0x00004354
	adds r0, r7, r3
.L08086D66:
	strb r2, [r0]
	subs r0, #0x84
	subs r1, #1
	cmp r1, #0
	bge .L08086D66
	adds r0, r7, #0
	bl func_08085640
	adds r5, r0, #0
	ldr r0, [r7, #0x1c]
	movs r4, #0xc
	ldrsh r1, [r7, r4]
	bl func_08075C88
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_08085F08
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L08086E34 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0xc]
	ldr r1, .L08086E38 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r6, #0
	str r6, [sp, #0xa0]

	non_word_aligned_thumb_func_start sub_08086DFA
sub_08086DFA: @ 0x08086DFA
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08086E16
	bl .L0808814C
.L08086E16:
	ldr r0, [sp, #0xa0]
	cmp r0, #0
	beq .L08086E3C
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	movs r0, #1
	rsbs r0, r0, #0
	bl .L08088156
	.align 2, 0
.L08086E30: .4byte 0x00004354
.L08086E34: .4byte vtable_unk_080E5B80
.L08086E38: .4byte 0x00000889
.L08086E3C:
	ldr r1, .L08086E54 @ =0x000006A4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0xc
	bls .L08086E4A
	bl .L0808814C
.L08086E4A:
	lsls r0, r0, #2
	ldr r1, .L08086E58 @ =.L08086E5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08086E54: .4byte 0x000006A4
.L08086E58: .4byte .L08086E5C
.L08086E5C: @ jump table
	.4byte .L08086E90 @ case 0
	.4byte .L08087764 @ case 1
	.4byte .L080878FC @ case 2
	.4byte .L08087AF8 @ case 3
	.4byte .L08087CB0 @ case 4
	.4byte .L08087E60 @ case 5
	.4byte .L08087E60 @ case 6
	.4byte .L08087E90 @ case 7
	.4byte .L08087EC0 @ case 8
	.4byte .L08087EEC @ case 9
	.4byte .L08087F5C @ case 10
	.4byte .L080880E4 @ case 11
	.4byte .L08088124 @ case 12
.L08086E90:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L08086EAA
	lsls r0, r1, #2
	adds r0, r0, r7
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_08085F08
.L08086EAA:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r4, r7, r3
	ldr r1, [r4]
	adds r0, r7, #0
	bl func_080C9020
	ldr r5, .L08086F00 @ =0x000006A1
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08086ECA
	bl sub_08087710
.L08086ECA:
	add r3, sp, #0x10
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	ldr r4, [r0]
	lsls r1, r4, #2
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r2, .L08086F04 @ =gUnk_080FFB90
	adds r0, r3, #0
	adds r1, r1, r2
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldm r1!, {r2, r6}
	stm r0!, {r2, r6}
	ldr r0, [r3, #0x10]
	cmp r0, #1
	bne .L08086EF2
	b .L08087384
.L08086EF2:
	cmp r0, #1
	bgt .L08086F08
	cmp r0, #0
	beq .L08086F18
	bl .L0808814C
	.align 2, 0
.L08086F00: .4byte 0x000006A1
.L08086F04: .4byte gUnk_080FFB90
.L08086F08:
	cmp r0, #2
	bne .L08086F0E
	b .L080870A0
.L08086F0E:
	cmp r0, #3
	bne .L08086F14
	b .L08087428
.L08086F14:
	bl .L0808814C
.L08086F18:
	ldr r1, [r7, #8]
	ldr r3, .L08086F4C @ =0x00001AA8
	adds r0, r1, r3
	ldr r2, [r0]
	movs r3, #0
	ldr r0, [sp, #0x18]
	cmp r2, r0
	bhs .L08086F2A
	movs r3, #1
.L08086F2A:
	mov sl, r3
	cmp r3, #0
	beq .L08086F58
	ldr r1, .L08086F50 @ =gUnk_080FFD3C
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0xb4
	bl func_08050E50
	ldr r5, .L08086F54 @ =0x000006A4
	adds r1, r7, r5
	bl .L08087F4E
	.align 2, 0
.L08086F4C: .4byte 0x00001AA8
.L08086F50: .4byte gUnk_080FFD3C
.L08086F54: .4byte 0x000006A4
.L08086F58:
	movs r6, #0xbe
	lsls r6, r6, #3
	adds r0, r1, r6
	bl GetStoredBushelCount__C4Barn
	ldr r1, .L08086F78 @ =0x000003E6
	cmp r0, r1
	bls .L08086F84
	ldr r1, .L08086F7C @ =gUnk_080FFD5C
	adds r0, r7, #0
	bl func_080CABA0
	ldr r0, .L08086F80 @ =0x000006A4
	adds r1, r7, r0
	bl .L08087F4E
	.align 2, 0
.L08086F78: .4byte 0x000003E6
.L08086F7C: .4byte gUnk_080FFD5C
.L08086F80: .4byte 0x000006A4
.L08086F84:
	ldr r0, [r7, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetStoredBushelCount__C4Barn
	ldr r1, .L08087090 @ =0x000003E7
	subs r1, r1, r0
	str r1, [sp, #0xa4]
	ldr r0, [r7, #8]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetStoredBushelCount__C4Barn
	add r1, sp, #0x30
	movs r2, #7
	bl func_0804EC84
	add r5, sp, #0x8c
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl __7ArticleUi
	ldr r3, .L08087094 @ =0x00003B34
	adds r4, r7, r3
	mov r6, sl
	strb r6, [r4]
	adds r0, r5, #0
	bl GetName__C7Article
	mov sb, r0
	mov r5, sb
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L08086FF8
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08086FE6
	adds r5, r6, #0
.L08086FE6:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r0, r2, r5
	mov r3, sl
	strb r3, [r0]
.L08086FF8:
	ldr r5, .L08087098 @ =gUnk_080FFD90
	mov sb, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	mov r8, r6
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0808702E
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0808701C
	adds r5, r6, #0
.L0808701C:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L0808702E:
	ldr r0, .L0808709C @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L08087066
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08087054
	adds r5, r6, #0
.L08087054:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L08087066:
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	bne .L0808707A
	b .L080872FC
.L0808707A:
	add r0, sp, #0x30
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08087088
	adds r5, r6, #0
.L08087088:
	mov r0, r8
	add r1, sp, #0x30
	b .L080872EE
	.align 2, 0
.L08087090: .4byte 0x000003E7
.L08087094: .4byte 0x00003B34
.L08087098: .4byte gUnk_080FFD90
.L0808709C: .4byte gUnk_08117828
.L080870A0:
	ldr r3, [r7, #8]
	ldr r5, .L080870D4 @ =0x00001AA8
	adds r0, r3, r5
	ldr r1, [r0]
	movs r2, #0
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bhs .L080870B2
	movs r2, #1
.L080870B2:
	cmp r2, #0
	beq .L080870E0
	ldr r1, .L080870D8 @ =gUnk_080FFD3C
	adds r0, r7, #0
	bl func_080CABA0
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0xb4
	bl func_08050E50
	ldr r0, .L080870DC @ =0x000006A4
	adds r1, r7, r0
	bl .L08087F4E
	.align 2, 0
.L080870D4: .4byte 0x00001AA8
.L080870D8: .4byte gUnk_080FFD3C
.L080870DC: .4byte 0x000006A4
.L080870E0:
	cmp r4, #3
	bhs .L080870E8
	bl .L0808814C
.L080870E8:
	cmp r4, #5
	bls .L080870F6
	cmp r4, #6
	bne .L080870F2
	b .L08087374
.L080870F2:
	bl .L0808814C
.L080870F6:
	movs r5, #0
	ldr r1, .L08087118 @ =0x00001C38
	adds r0, r3, r1
	movs r1, #0x4a
	bl GetAvailableSpaceForTool__C8RucksackUi
	adds r6, r0, #0
	ldr r0, [r7, #8]
	ldr r4, .L0808711C @ =0x00001C34
	adds r0, r0, r4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08087120
	movs r5, #0x63
	b .L0808715C
	.align 2, 0
.L08087118: .4byte 0x00001C38
.L0808711C: .4byte 0x00001C34
.L08087120:
	ldr r0, [r7, #8]
	ldr r2, .L08087190 @ =0x00001C34
	adds r0, r0, r2
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x8d
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bne .L08087140
	movs r2, #1
.L08087140:
	cmp r2, #0
	beq .L0808715C
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetAmount__C9ToolStack
	cmp r0, #0x63
	beq .L0808715C
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
.L0808715C:
	ldr r0, [r7, #8]
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r1, [sp, #0x10]
	bl GetAvailableSpaceFor__C9ToolChestUi
	adds r1, r6, r5
	adds r1, r1, r0
	str r1, [sp, #0xa4]
	cmp r1, #0
	bne .L0808719C
	ldr r1, .L08087194 @ =gUnk_080FFD98
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0xb4
	bl func_08050E50
	ldr r5, .L08087198 @ =0x000006A4
	adds r1, r7, r5
	bl .L08087F4E
	.align 2, 0
.L08087190: .4byte 0x00001C34
.L08087194: .4byte gUnk_080FFD98
.L08087198: .4byte 0x000006A4
.L0808719C:
	ldr r0, [r7, #8]
	ldr r6, .L08087354 @ =0x00001C38
	adds r0, r0, r6
	ldr r1, [sp, #0x10]
	bl GetAmountOfTool__C8RucksackUi
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	ldr r0, [r7, #8]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	bl GetAmountOf__C9ToolChestUi
	adds r4, r0, #0
	ldr r0, [r7, #8]
	ldr r5, .L08087358 @ =0x00001C34
	adds r0, r0, r5
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080871FA
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x8e
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bne .L080871EC
	movs r2, #1
.L080871EC:
	cmp r2, #0
	beq .L080871FA
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetAmount__C9ToolStack
	mov r8, r0
.L080871FA:
	mov r2, r8
	adds r0, r6, r2
	adds r0, r0, r4
	add r1, sp, #0x24
	movs r2, #7
	bl func_0804EC84
	mov r5, sp
	adds r5, #0x8f
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl __4ToolUi
	ldr r3, .L0808735C @ =0x00003B34
	adds r4, r7, r3
	movs r6, #0
	mov sl, r6
	mov r0, sl
	strb r0, [r4]
	adds r0, r5, #0
	bl GetName__C4Tool
	mov sb, r0
	mov r5, sb
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0808725C
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0808724A
	adds r5, r6, #0
.L0808724A:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r0, r2, r5
	mov r3, sl
	strb r3, [r0]
.L0808725C:
	ldr r5, .L08087360 @ =gUnk_080FFD90
	mov sb, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	mov r8, r6
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L08087292
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08087280
	adds r5, r6, #0
.L08087280:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L08087292:
	ldr r0, .L08087364 @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L080872CA
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L080872B8
	adds r5, r6, #0
.L080872B8:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L080872CA:
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L080872FC
	add r0, sp, #0x24
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L080872EA
	adds r5, r6, #0
.L080872EA:
	mov r0, r8
	add r1, sp, #0x24
.L080872EE:
	adds r2, r5, #0
	bl memcpy
	mov r6, r8
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
.L080872FC:
	ldr r0, .L08087368 @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L08087330
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08087320
	adds r4, r5, #0
.L08087320:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08087330:
	ldr r0, .L0808735C @ =0x00003B34
	adds r1, r7, r0
	adds r0, r7, #0
	bl func_080CABEC
	ldr r1, .L0808736C @ =0x00000684
	adds r0, r7, r1
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xa4]
	movs r3, #5
	bl func_080CA8B4
	ldr r2, .L08087370 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	bl .L0808814C
	.align 2, 0
.L08087354: .4byte 0x00001C38
.L08087358: .4byte 0x00001C34
.L0808735C: .4byte 0x00003B34
.L08087360: .4byte gUnk_080FFD90
.L08087364: .4byte gUnk_08117828
.L08087368: .4byte gUnk_08117814
.L0808736C: .4byte 0x00000684
.L08087370: .4byte 0x000006A4
.L08087374:
	ldr r3, .L08087380 @ =0x000006A4
	adds r1, r7, r3
	movs r0, #3
	str r0, [r1]
	bl .L0808814C
	.align 2, 0
.L08087380: .4byte 0x000006A4
.L08087384:
	ldr r1, [r7, #8]
	ldr r4, .L080873B8 @ =0x00001AA8
	adds r0, r1, r4
	ldr r2, [r0]
	movs r3, #0
	ldr r0, [sp, #0x18]
	cmp r2, r0
	bhs .L08087396
	movs r3, #1
.L08087396:
	cmp r3, #0
	beq .L080873C4
	ldr r1, .L080873BC @ =gUnk_080FFD3C
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xb4
	bl func_08050E50
	ldr r6, .L080873C0 @ =0x000006A4
	adds r1, r7, r6
	bl .L08087F4E
	.align 2, 0
.L080873B8: .4byte 0x00001AA8
.L080873BC: .4byte gUnk_080FFD3C
.L080873C0: .4byte 0x000006A4
.L080873C4:
	movs r5, #0xbe
	lsls r5, r5, #3
	adds r0, r1, r5
	bl GetCapacity__C4Barn
	adds r4, r0, #0
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl CountBarnAnimals__C4Barn
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_080869A0
	subs r4, r4, r5
	cmp r4, r0
	bne .L08087400
	ldr r1, .L080873F8 @ =gUnk_080FFDBC
	adds r0, r7, #0
	bl func_080CABA0
	ldr r0, .L080873FC @ =0x000006A4
	adds r1, r7, r0
	bl .L08087F4E
	.align 2, 0
.L080873F8: .4byte gUnk_080FFDBC
.L080873FC: .4byte 0x000006A4
.L08087400:
	ldr r1, .L08087420 @ =gUnk_080FFDD4
	adds r0, r7, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xb5
	bl func_08050E50
	ldr r2, .L08087424 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #4
	str r0, [r1]
	bl .L0808814C
	.align 2, 0
.L08087420: .4byte gUnk_080FFDD4
.L08087424: .4byte 0x000006A4
.L08087428:
	ldr r2, [sp, #0x10]
	movs r3, #1
	rsbs r3, r3, #0
	movs r1, #0xf
	ldr r4, .L08087458 @ =0x00000724
	adds r0, r7, r4
.L08087434:
	str r3, [r0]
	subs r0, #8
	subs r1, #1
	cmp r1, #0
	bge .L08087434
	cmp r2, #7
	beq .L08087444
	b .L08087584
.L08087444:
	ldr r0, [r7, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl method_0800D058__C4Barn
	mov r8, r0
	movs r6, #0
	b .L0808748E
	.align 2, 0
.L08087458: .4byte 0x00000724
.L0808745C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	beq .L08087468
	cmp r6, r8
	beq .L0808748C
.L08087468:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	adds r1, r6, #0
	bl GetCow__4BarnUi
	adds r5, r0, #0
	cmp r5, #0
	beq .L0808748C
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808748C
	adds r0, r5, #0
	bl GetGrowthStage__C3Cow
	cmp r0, #2
	beq .L0808749A
.L0808748C:
	adds r6, #1
.L0808748E:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetCapacity__C4Barn
	cmp r6, r0
	blo .L0808745C
.L0808749A:
	ldr r0, [r7, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl GetCapacity__C4Barn
	cmp r6, r0
	bne .L080874C4
	ldr r1, .L080874BC @ =gUnk_080FFDF8
	adds r0, r7, #0
	bl func_080CABA0
	ldr r5, .L080874C0 @ =0x000006A4
	adds r1, r7, r5
	bl .L08087F4E
	.align 2, 0
.L080874BC: .4byte gUnk_080FFDF8
.L080874C0: .4byte 0x000006A4
.L080874C4:
	ldr r6, .L080874EC @ =0x0000072C
	adds r2, r7, r6
	movs r0, #0xe6
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r2]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r2, r0
	subs r0, r0, r1
	asrs r0, r0, #2
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	movs r1, #0
	mov sb, r1
	movs r6, #0
	mov sl, r4
	b .L08087564
	.align 2, 0
.L080874EC: .4byte 0x0000072C
.L080874F0:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	beq .L080874FC
	cmp r6, r8
	beq .L08087562
.L080874FC:
	ldr r0, [r7, #8]
	add r0, sl
	adds r1, r6, #0
	bl GetCow__4BarnUi
	adds r5, r0, #0
	cmp r5, #0
	beq .L08087562
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08087562
	adds r0, r5, #0
	bl GetGrowthStage__C3Cow
	cmp r0, #2
	bne .L08087562
	movs r2, #9
	ldr r3, .L0808757C @ =0x0000072C
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0xf
	bhi .L0808753E
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L08087538
	str r2, [r0]
.L08087538:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0808753E:
	mov r5, sb
	lsls r4, r5, #3
	ldr r1, .L08087580 @ =0x000006AC
	adds r0, r7, r1
	adds r0, r0, r4
	str r6, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080868E4
	movs r2, #0xd6
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r1, r1, r4
	str r0, [r1]
	movs r3, #1
	add sb, r3
.L08087562:
	adds r6, #1
.L08087564:
	ldr r0, [r7, #8]
	add r0, sl
	bl GetCapacity__C4Barn
	cmp r6, r0
	blo .L080874F0
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	movs r1, #0x1e
	b .L080876C2
	.align 2, 0
.L0808757C: .4byte 0x0000072C
.L08087580: .4byte 0x000006AC
.L08087584:
	ldr r0, [r7, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl method_0800D058__C4Barn
	mov r8, r0
	movs r6, #0
	b .L080875C8
.L08087596:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r8, r0
	beq .L080875A2
	cmp r6, r8
	beq .L080875C6
.L080875A2:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	adds r1, r6, #0
	bl GetSheep__4BarnUi
	adds r5, r0, #0
	cmp r5, #0
	beq .L080875C6
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080875C6
	adds r0, r5, #0
	bl GetGrowthStage__C5Sheep
	cmp r0, #1
	beq .L080875D4
.L080875C6:
	adds r6, #1
.L080875C8:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetCapacity__C4Barn
	cmp r6, r0
	blo .L08087596
.L080875D4:
	ldr r0, [r7, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl GetCapacity__C4Barn
	cmp r6, r0
	bne .L080875F8
	ldr r1, .L080875F4 @ =gUnk_080FFE24
	adds r0, r7, #0
	bl func_080CABA0
	adds r4, #0xb4
	bl .L08087F4C
	.align 2, 0
.L080875F4: .4byte gUnk_080FFE24
.L080875F8:
	ldr r5, .L08087620 @ =0x0000072C
	adds r2, r7, r5
	movs r6, #0xe6
	lsls r6, r6, #3
	adds r1, r7, r6
	ldr r0, [r2]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r2, r0
	subs r0, r0, r1
	asrs r0, r0, #2
	ldr r1, [r2]
	subs r1, r1, r0
	str r1, [r2]
	movs r0, #0
	mov sb, r0
	movs r6, #0
	mov r8, r4
	b .L080876AC
	.align 2, 0
.L08087620: .4byte 0x0000072C
.L08087624:
	ldr r0, [r7, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl method_0800D058__C4Barn
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq .L08087644
	ldr r0, [r7, #8]
	add r0, r8
	bl method_0800D058__C4Barn
	cmp r6, r0
	beq .L080876AA
.L08087644:
	ldr r0, [r7, #8]
	add r0, r8
	adds r1, r6, #0
	bl GetSheep__4BarnUi
	adds r5, r0, #0
	cmp r5, #0
	beq .L080876AA
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080876AA
	adds r0, r5, #0
	bl GetGrowthStage__C5Sheep
	cmp r0, #1
	bne .L080876AA
	movs r2, #0xa
	ldr r3, .L08087704 @ =0x0000072C
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0xf
	bhi .L08087686
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L08087680
	str r2, [r0]
.L08087680:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08087686:
	mov r5, sb
	lsls r4, r5, #3
	ldr r1, .L08087708 @ =0x000006AC
	adds r0, r7, r1
	adds r0, r0, r4
	str r6, [r0]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #1
	bl func_080868E4
	movs r2, #0xd6
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r1, r1, r4
	str r0, [r1]
	movs r3, #1
	add sb, r3
.L080876AA:
	adds r6, #1
.L080876AC:
	ldr r0, [r7, #8]
	add r0, r8
	bl GetCapacity__C4Barn
	cmp r6, r0
	blo .L08087624
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	movs r1, #0x1f
.L080876C2:
	bl func_0808586C
	adds r5, r0, #0
	movs r4, #0
	strh r4, [r7, #0xc]
	movs r6, #0xc9
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075DB8
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	str r4, [r7, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	ldr r3, .L0808770C @ =0x000006A4
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
	bl .L0808814C
	.align 2, 0
.L08087704: .4byte 0x0000072C
.L08087708: .4byte 0x000006AC
.L0808770C: .4byte 0x000006A4

	thumb_func_start sub_08087710
sub_08087710: @ 0x08087710
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L08087722
	bl .L0808814C
.L08087722:
	movs r4, #0xd5
	lsls r4, r4, #3
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0808773C
	ldr r1, .L08087738 @ =gUnk_080FFE50
	adds r0, r7, #0
	bl func_080CABA0
	b .L08087744
	.align 2, 0
.L08087738: .4byte gUnk_080FFE50
.L0808773C:
	ldr r1, .L0808775C @ =gUnk_080FFE88
	adds r0, r7, #0
	bl func_080CABA0
.L08087744:
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xb4
	bl func_08050E50
	ldr r6, .L08087760 @ =0x000006A4
	adds r1, r7, r6
	movs r0, #0xb
	str r0, [r1]
	bl .L0808814C
	.align 2, 0
.L0808775C: .4byte gUnk_080FFE88
.L08087760: .4byte 0x000006A4
.L08087764:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L0808777E
	lsls r0, r1, #2
	adds r0, r0, r7
	movs r1, #0xe6
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_08085F08
.L0808777E:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	ldr r2, .L08087888 @ =0x0000072C
	adds r0, r7, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_080C9020
	ldr r3, .L0808788C @ =0x000006A1
	adds r0, r7, r3
	ldrb r4, [r0]
	cmp r4, #0
	bne .L0808779A
	b .L080878A8
.L0808779A:
	ldr r5, .L08087890 @ =0x00003AB4
	adds r4, r7, r5
	movs r6, #0
	mov sl, r6
	mov r0, sl
	strb r0, [r4]
	ldr r1, [r7, #0x10]
	lsls r1, r1, #3
	movs r2, #0xd6
	lsls r2, r2, #3
	adds r0, r7, r2
	adds r0, r0, r1
	ldr r0, [r0]
	add r1, sp, #0x24
	movs r2, #0
	bl func_0804EC84
	ldr r3, .L08087894 @ =gUnk_080FFE9C
	mov sb, r3
	adds r0, r4, #0
	bl strlen
	adds r5, r4, r0
	mov r8, r5
	movs r1, #0x7f
	subs r6, r1, r0
	cmp r6, #0
	beq .L080877F2
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L080877E0
	adds r5, r6, #0
.L080877E0:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r6, r8
	adds r0, r6, r5
	mov r1, sl
	strb r1, [r0]
.L080877F2:
	adds r0, r4, #0
	bl strlen
	adds r2, r4, r0
	mov r8, r2
	movs r1, #0x7f
	subs r6, r1, r0
	cmp r6, #0
	beq .L08087824
	add r0, sp, #0x24
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08087812
	adds r5, r6, #0
.L08087812:
	mov r0, r8
	add r1, sp, #0x24
	adds r2, r5, #0
	bl memcpy
	mov r3, r8
	adds r1, r3, r5
	movs r0, #0
	strb r0, [r1]
.L08087824:
	ldr r5, .L08087898 @ =gUnk_080FFEA8
	mov r8, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08087856
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08087846
	adds r4, r5, #0
.L08087846:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08087856:
	ldr r6, .L08087890 @ =0x00003AB4
	adds r1, r7, r6
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r2, .L0808789C @ =gUnk_080FFEAC
	ldr r3, .L080878A0 @ =gUnk_080FFEB0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl func_08050E30
	adds r0, r4, #0
	movs r1, #0xb4
	bl func_08050E50
	ldr r2, .L080878A4 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #0xa
	str r0, [r1]
	bl .L0808814C
	.align 2, 0
.L08087888: .4byte 0x0000072C
.L0808788C: .4byte 0x000006A1
.L08087890: .4byte 0x00003AB4
.L08087894: .4byte gUnk_080FFE9C
.L08087898: .4byte gUnk_080FFEA8
.L0808789C: .4byte gUnk_080FFEAC
.L080878A0: .4byte gUnk_080FFEB0
.L080878A4: .4byte 0x000006A4
.L080878A8:
	ldr r3, .L080878F4 @ =0x000006A3
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080878B6
	bl .L0808814C
.L080878B6:
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	bl func_08085640
	adds r5, r0, #0
	strh r4, [r7, #0xc]
	movs r6, #0xc9
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075DB8
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r3, .L080878F8 @ =0x000006A4
	adds r0, r7, r3
	str r4, [r0]
	str r4, [r7, #0x10]
	bl .L080880D6
	.align 2, 0
.L080878F4: .4byte 0x000006A3
.L080878F8: .4byte 0x000006A4
.L080878FC:
	adds r0, r7, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne .L0808790E
	b .L08087AB8
.L0808790E:
	ldr r4, .L08087980 @ =0x00000684
	adds r0, r7, r4
	ldr r5, [r0, #0x14]
	mov r8, r5
	bl func_080CAAF4
	add r3, sp, #0x10
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r4, r7, r6
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L08087984 @ =gUnk_080FFB90
	adds r0, r3, #0
	adds r1, r1, r2
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldm r1!, {r2, r5}
	stm r0!, {r2, r5}
	ldr r0, [r7, #8]
	ldr r6, .L08087988 @ =0x00001AA8
	adds r0, r0, r6
	ldr r1, [r3, #8]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	ldr r3, .L0808798C @ =0x000006A4
	adds r1, r7, r3
	movs r0, #7
	str r0, [r1]
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r4, r4, r0
	ldr r4, [r4]
	cmp r4, #0
	bne .L08087994
	ldr r0, [r7, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	mov r1, r8
	bl AddStoredBushels__4BarnUi
	ldr r1, .L08087990 @ =gUnk_080FFEB4
	b .L08087A86
	.align 2, 0
.L08087980: .4byte 0x00000684
.L08087984: .4byte gUnk_080FFB90
.L08087988: .4byte 0x00001AA8
.L0808798C: .4byte 0x000006A4
.L08087990: .4byte gUnk_080FFEB4
.L08087994:
	cmp r4, #5
	bls .L0808799A
	b .L08087A9C
.L0808799A:
	cmp r4, #3
	bhs .L080879A0
	b .L08087A9C
.L080879A0:
	movs r4, #0
	ldr r0, [r7, #8]
	ldr r6, .L080879E8 @ =0x00001C34
	adds r0, r0, r6
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080879EC
	mov r5, r8
	cmp r5, #0x63
	bls .L080879BC
	movs r0, #0x63
	mov r8, r0
.L080879BC:
	ldr r5, [r7, #8]
	adds r5, r5, r6
	add r6, sp, #0x24
	add r4, sp, #0x90
	ldr r1, [sp, #0x10]
	adds r0, r4, #0
	bl __4ToolUi
	ldrb r1, [r4]
	adds r0, r6, #0
	mov r2, r8
	bl __9ToolStackG4ToolUi
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	bl memcpy
	movs r1, #0
	mov r8, r1
	b .L08087A3E
	.align 2, 0
.L080879E8: .4byte 0x00001C34
.L080879EC:
	ldr r0, [r7, #8]
	ldr r2, .L08087A78 @ =0x00001C34
	adds r0, r0, r2
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x91
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bne .L08087A0C
	movs r2, #1
.L08087A0C:
	cmp r2, #0
	beq .L08087A40
	ldr r0, [r7, #8]
	adds r0, r0, r6
	bl GetAmount__C9ToolStack
	cmp r0, #0x63
	beq .L08087A40
	ldr r0, [r7, #8]
	adds r0, r0, r6
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	cmp r8, r4
	bhs .L08087A2E
	mov r4, r8
.L08087A2E:
	ldr r0, [r7, #8]
	adds r0, r0, r6
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	mov r3, r8
	subs r3, r3, r4
	mov r8, r3
.L08087A3E:
	movs r4, #1
.L08087A40:
	mov r5, r8
	cmp r5, #0
	beq .L08087A94
	ldr r0, [r7, #8]
	ldr r6, .L08087A7C @ =0x00001C38
	adds r0, r0, r6
	ldr r1, [sp, #0x10]
	mov r2, r8
	bl AddAmountOfTool__8RucksackUiUi
	adds r2, r0, #0
	cmp r8, r2
	beq .L08087A5C
	movs r4, #1
.L08087A5C:
	cmp r2, #0
	beq .L08087A94
	ldr r0, [r7, #8]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [sp, #0x10]
	bl AddAmountOf__9ToolChestUiUi
	cmp r4, #0
	beq .L08087A84
	ldr r1, .L08087A80 @ =gUnk_080FFEEC
	b .L08087A86
	.align 2, 0
.L08087A78: .4byte 0x00001C34
.L08087A7C: .4byte 0x00001C38
.L08087A80: .4byte gUnk_080FFEEC
.L08087A84:
	ldr r1, .L08087A90 @ =gUnk_080FFF38
.L08087A86:
	adds r0, r7, #0
	bl func_080CABA0
	b .L08087A9C
	.align 2, 0
.L08087A90: .4byte gUnk_080FFF38
.L08087A94:
	ldr r1, .L08087AB4 @ =gUnk_080FFF84
	adds r0, r7, #0
	bl func_080CABA0
.L08087A9C:
	movs r2, #0xd5
	lsls r2, r2, #3
	adds r0, r7, r2
	movs r1, #1
	strb r1, [r0]
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0xb4
	bl func_08050E50
	b .L0808814C
	.align 2, 0
.L08087AB4: .4byte gUnk_080FFF84
.L08087AB8:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08087AE0
	ldr r5, .L08087AD8 @ =0x00000684
	adds r0, r7, r5
	bl func_080CAAF4
	ldr r6, .L08087ADC @ =0x000006A4
	adds r0, r7, r6
	str r4, [r0]
	b .L080880D6
	.align 2, 0
.L08087AD8: .4byte 0x00000684
.L08087ADC: .4byte 0x000006A4
.L08087AE0:
	ldr r0, .L08087AF4 @ =0x00000684
	adds r1, r7, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne .L08087AEC
	b .L0808814C
.L08087AEC:
	adds r0, r1, #0
	bl func_080CA98C
	b .L0808814C
	.align 2, 0
.L08087AF4: .4byte 0x00000684
.L08087AF8:
	add r4, sp, #0x10
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L08087B58 @ =gUnk_080FFB90
	adds r0, r4, #0
	adds r1, r1, r2
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r1!, {r2, r6}
	stm r0!, {r2, r6}
	ldr r0, [r7, #8]
	ldr r3, .L08087B5C @ =0x00001C34
	adds r0, r0, r3
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08087B60
	ldr r5, [r7, #8]
	ldr r4, .L08087B5C @ =0x00001C34
	adds r5, r5, r4
	add r6, sp, #0x24
	mov r4, sp
	adds r4, #0x92
	adds r0, r4, #0
	movs r1, #0x49
	bl __4ToolUi
	ldrb r1, [r4]
	adds r0, r6, #0
	movs r2, #1
	bl __9ToolStackG4ToolUi
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	bl memcpy
	b .L08087B7C
	.align 2, 0
.L08087B58: .4byte gUnk_080FFB90
.L08087B5C: .4byte 0x00001C34
.L08087B60:
	ldr r0, [r7, #8]
	ldr r5, .L08087B88 @ =0x00001C38
	adds r0, r0, r5
	movs r1, #0x49
	bl GetAvailableSpaceForTool__C8RucksackUi
	cmp r0, #0
	beq .L08087B90
	ldr r0, [r7, #8]
	adds r0, r0, r5
	movs r1, #0x49
	movs r2, #1
	bl AddAmountOfTool__8RucksackUiUi
.L08087B7C:
	ldr r1, .L08087B8C @ =gUnk_080FFF84
	adds r0, r7, #0
	bl func_080CABA0
	b .L08087BDC
	.align 2, 0
.L08087B88: .4byte 0x00001C38
.L08087B8C: .4byte gUnk_080FFF84
.L08087B90:
	ldr r0, [r7, #8]
	movs r6, #0xe0
	lsls r6, r6, #2
	adds r0, r0, r6
	movs r1, #0x49
	bl GetAvailableSpaceFor__C9ToolChestUi
	cmp r0, #0
	bne .L08087BC4
	ldr r1, .L08087BBC @ =gUnk_080FFD98
	adds r0, r7, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xb4
	bl func_08050E50
	ldr r2, .L08087BC0 @ =0x000006A4
	adds r1, r7, r2
	b .L08087F4E
	.align 2, 0
.L08087BBC: .4byte gUnk_080FFD98
.L08087BC0: .4byte 0x000006A4
.L08087BC4:
	ldr r0, [r7, #8]
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r0, r0, r3
	movs r1, #0x49
	movs r2, #1
	bl AddAmountOf__9ToolChestUiUi
	ldr r1, .L08087CA4 @ =gUnk_080FFF38
	adds r0, r7, #0
	bl func_080CABA0
.L08087BDC:
	ldr r0, [r7, #8]
	ldr r4, .L08087CA8 @ =0x00001AA8
	adds r0, r0, r4
	ldr r1, [sp, #0x18]
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	movs r5, #0xd5
	lsls r5, r5, #3
	adds r1, r7, r5
	movs r0, #1
	strb r0, [r1]
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0xb4
	bl func_08050E50
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0
	beq .L08087C14
	subs r0, #1
	str r0, [r1]
.L08087C14:
	ldr r0, [r1]
	cmp r0, #0
	beq .L08087C1E
	subs r0, #1
	str r0, [r1]
.L08087C1E:
	ldr r0, [r1]
	cmp r0, #0
	beq .L08087C28
	subs r0, #1
	str r0, [r1]
.L08087C28:
	movs r2, #7
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08087C42
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L08087C3C
	str r2, [r0]
.L08087C3C:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08087C42:
	movs r2, #8
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08087C62
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L08087C5C
	str r2, [r0]
.L08087C5C:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08087C62:
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	bl func_08085640
	adds r5, r0, #0
	movs r4, #0
	strh r4, [r7, #0xc]
	movs r6, #0xc9
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075DB8
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r3, .L08087CAC @ =0x000006A4
	adds r1, r7, r3
	str r4, [r7, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	b .L08087E82
	.align 2, 0
.L08087CA4: .4byte gUnk_080FFF38
.L08087CA8: .4byte 0x00001AA8
.L08087CAC: .4byte 0x000006A4
.L08087CB0:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r6, [r0]
	cmp r6, #3
	beq .L08087CBE
	b .L0808814C
.L08087CBE:
	add r3, sp, #0x10
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L08087D70 @ =gUnk_080FFB90
	adds r0, r3, #0
	adds r1, r1, r2
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldm r1!, {r2, r4}
	stm r0!, {r2, r4}
	ldr r0, [r7, #8]
	ldr r5, .L08087D74 @ =0x00001AA8
	adds r0, r0, r5
	ldr r1, [r3, #8]
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne .L08087D90
	add r1, sp, #0x2c
	movs r4, #0x25
	ldrh r2, [r1]
	ldr r3, .L08087D78 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r5, #0xb8
	ldrb r2, [r1, #1]
	adds r0, r6, #0
	ands r0, r2
	orrs r0, r5
	strb r0, [r1, #1]
	movs r4, #1
	ldrh r2, [r1, #2]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r6, r0
	orrs r6, r5
	strb r6, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	orrs r3, r4
	strh r3, [r1, #4]
	add r4, sp, #0x24
	movs r6, #0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	strb r6, [r4, #6]
	add r5, sp, #0x40
	ldr r1, .L08087D7C @ =gUnk_080FFB60
	movs r0, #0xe
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0xe
	bl __3CowPCcRC13ActorLocationUiUi
	ldr r0, [r7, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r5, #0
	bl InsertCow__4BarnRC3Cow
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne .L08087D84
	ldr r2, .L08087D80 @ =0x000006A4
	adds r1, r7, r2
	b .L08087E82
	.align 2, 0
.L08087D70: .4byte gUnk_080FFB90
.L08087D74: .4byte 0x00001AA8
.L08087D78: .4byte 0xFFFFFC00
.L08087D7C: .4byte gUnk_080FFB60
.L08087D80: .4byte 0x000006A4
.L08087D84:
	ldr r3, .L08087D8C @ =0x000043D8
	adds r0, r7, r3
	str r6, [r0]
	b .L08087E20
	.align 2, 0
.L08087D8C: .4byte 0x000043D8
.L08087D90:
	cmp r0, #2
	beq .L08087D96
	b .L0808814C
.L08087D96:
	add r1, sp, #0x64
	movs r4, #0x25
	ldrh r2, [r1]
	ldr r3, .L08087E0C @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	ldrb r2, [r1, #1]
	adds r0, r6, #0
	ands r0, r2
	movs r4, #8
	orrs r0, r4
	strb r0, [r1, #1]
	movs r5, #2
	ldrh r2, [r1, #2]
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r5
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r6, r0
	orrs r6, r4
	strb r6, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	orrs r3, r5
	strh r3, [r1, #4]
	add r4, sp, #0x5c
	movs r5, #0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	strb r5, [r4, #6]
	add r5, sp, #0x24
	ldr r1, .L08087E10 @ =gUnk_080FFB60
	movs r0, #0xe
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0xe
	bl __5SheepPCcRC13ActorLocationUiUi
	ldr r0, [r7, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r5, #0
	bl InsertSheep__4BarnRC5Sheep
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne .L08087E18
	ldr r2, .L08087E14 @ =0x000006A4
	adds r1, r7, r2
	b .L08087E82
	.align 2, 0
.L08087E0C: .4byte 0xFFFFFC00
.L08087E10: .4byte gUnk_080FFB60
.L08087E14: .4byte 0x000006A4
.L08087E18:
	ldr r3, .L08087E50 @ =0x000043D8
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
.L08087E20:
	ldr r0, [sp, #0xc]
	ldr r1, .L08087E54 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r5, .L08087E58 @ =0x000006A4
	adds r1, r7, r5
	movs r0, #0xc
	str r0, [r1]
	ldr r6, .L08087E5C @ =0x000043DC
	adds r0, r7, r6
	str r4, [r0]
	b .L0808814C
	.align 2, 0
.L08087E50: .4byte 0x000043D8
.L08087E54: .4byte 0x00000889
.L08087E58: .4byte 0x000006A4
.L08087E5C: .4byte 0x000043DC
.L08087E60:
	ldr r1, .L08087E88 @ =gUnk_080FFF94
	adds r0, r7, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xb4
	bl func_08050E50
	movs r2, #0xd5
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	ldr r3, .L08087E8C @ =0x000006A4
	adds r1, r7, r3
.L08087E82:
	movs r0, #7
	str r0, [r1]
	b .L0808814C
	.align 2, 0
.L08087E88: .4byte gUnk_080FFF94
.L08087E8C: .4byte 0x000006A4
.L08087E90:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #3
	beq .L08087E9E
	b .L0808814C
.L08087E9E:
	ldr r1, .L08087EB8 @ =gUnk_080FFFC4
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xb4
	bl func_08050E50
	ldr r6, .L08087EBC @ =0x000006A4
	adds r1, r7, r6
	b .L08087F4E
	.align 2, 0
.L08087EB8: .4byte gUnk_080FFFC4
.L08087EBC: .4byte 0x000006A4
.L08087EC0:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L08087ECE
	b .L0808814C
.L08087ECE:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r7, r2
	bl func_08050E5C
	ldr r3, .L08087EE8 @ =0x000006A4
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]
	b .L0808814C
	.align 2, 0
.L08087EE8: .4byte 0x000006A4
.L08087EEC:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #3
	beq .L08087EFA
	b .L0808814C
.L08087EFA:
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	bl func_08085640
	adds r5, r0, #0
	movs r4, #0
	strh r4, [r7, #0xc]
	movs r6, #0xc9
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075DB8
	ldr r0, [r7, #0x1c]
	adds r1, r5, #0
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	str r4, [r7, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	ldr r1, .L08087F54 @ =gUnk_080FFFC4
	adds r0, r7, #0
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0xb4
	bl func_08050E50
	ldr r4, .L08087F58 @ =0x000006A4
.L08087F4C:
	adds r1, r7, r4
.L08087F4E:
	movs r0, #8
	str r0, [r1]
	b .L0808814C
	.align 2, 0
.L08087F54: .4byte gUnk_080FFFC4
.L08087F58: .4byte 0x000006A4
.L08087F5C:
	movs r5, #0xd4
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, #3
	beq .L08087F6A
	b .L0808814C
.L08087F6A:
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r4, r7, r6
	adds r0, r4, #0
	bl func_08050DF0
	cmp r0, #1
	beq .L08087F82
	cmp r0, #2
	bne .L08087F80
	b .L080880C8
.L08087F80:
	b .L0808814C
.L08087F82:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r1, .L080880AC @ =0x000006AC
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r4, sp, #0x94
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, [r7, #8]
	ldr r2, .L080880B0 @ =0x00001AA8
	adds r0, r0, r2
	ldr r1, [r4, #4]
	bl func_0809ABD8
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [r7, #8]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r1, [r4]
	bl Remove__4BarnUi
	ldr r4, .L080880B4 @ =0x00003AB4
	adds r5, r7, r4
	ldr r6, .L080880B8 @ =gUnk_080FFB60
	adds r0, r6, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L08087FCA
	movs r4, #0x7f
.L08087FCA:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r5, r4
	movs r6, #0
	mov sb, r6
	strb r6, [r0]
	ldr r0, .L080880BC @ =gUnk_080FFFE8
	mov r8, r0
	adds r0, r5, #0
	bl strlen
	adds r6, r5, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0808800E
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08087FFE
	adds r4, r5, #0
.L08087FFE:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r1, sb
	strb r1, [r0]
.L0808800E:
	ldr r0, [r7, #8]
	adds r0, #0x14
	bl method_08009AF4__C4Farm
	mov sb, r0
	ldr r2, .L080880B4 @ =0x00003AB4
	adds r4, r7, r2
	mov r8, sb
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0808804C
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0808803C
	adds r4, r5, #0
.L0808803C:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0808804C:
	ldr r3, .L080880B4 @ =0x00003AB4
	adds r4, r7, r3
	ldr r5, .L080880C0 @ =gUnk_080FFFFC
	mov r8, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08088082
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08088072
	adds r4, r5, #0
.L08088072:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L08088082:
	ldr r6, .L080880B4 @ =0x00003AB4
	adds r1, r7, r6
	adds r0, r7, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xb5
	bl func_08050E50
	ldr r2, .L080880C4 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #9
	str r0, [r1]
	movs r3, #0xd5
	lsls r3, r3, #3
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	b .L0808814C
	.align 2, 0
.L080880AC: .4byte 0x000006AC
.L080880B0: .4byte 0x00001AA8
.L080880B4: .4byte 0x00003AB4
.L080880B8: .4byte gUnk_080FFB60
.L080880BC: .4byte gUnk_080FFFE8
.L080880C0: .4byte gUnk_080FFFFC
.L080880C4: .4byte 0x000006A4
.L080880C8:
	adds r0, r4, #0
	bl func_08050E5C
	ldr r4, .L080880E0 @ =0x000006A4
	adds r0, r7, r4
	movs r1, #1
	str r1, [r0]
.L080880D6:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	b .L0808814C
	.align 2, 0
.L080880E0: .4byte 0x000006A4
.L080880E4:
	movs r5, #0xd4
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, #3
	bne .L0808814C
	ldr r2, [sp, #0xc]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808814C
	movs r6, #1
	str r6, [sp, #0xa0]
	ldr r1, .L08088120 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L0808814C
	.align 2, 0
.L08088120: .4byte 0x00000889
.L08088124:
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808814C
	ldr r1, .L08088148 @ =0x000043DC
	adds r0, r7, r1
	ldr r4, [r0]
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	adds r0, r4, #0
	b .L08088156
	.align 2, 0
.L08088148: .4byte 0x000043DC
.L0808814C:
	adds r0, r7, #0
	bl func_080C96C4
	bl sub_08086DFA
.L08088156:
	add sp, #0xb4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08088168
func_08088168: @ 0x08088168
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r6, r3, #0
	ldr r0, .L080881A4 @ =vtable_unk_080E7D3C
	str r0, [r4]
	ldr r0, .L080881A8 @ =0x000043E0
	bl __builtin_new
	mov r1, r8
	adds r2, r6, #0
	bl func_08085584
	str r0, [r4, #4]
	ldr r1, [r5]
	movs r0, #0
	str r0, [r5]
	str r1, [r4, #8]
	str r6, [r4, #0xc]
	mov r0, r8
	str r0, [r4, #0x10]
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080881A4: .4byte vtable_unk_080E7D3C
.L080881A8: .4byte 0x000043E0

	thumb_func_start func_080881AC
func_080881AC: @ 0x080881AC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080881E8 @ =vtable_unk_080E7D3C
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L080881C8
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080881C8:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L080881DA
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080881DA:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080881E8: .4byte vtable_unk_080E7D3C

	thumb_func_start func_080881EC
func_080881EC: @ 0x080881EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov r8, r0
	adds r5, r1, #0
	ldr r0, [r5, #4]
	bl func_08086A08
	mov sb, r0
	movs r0, #1
	rsbs r0, r0, #0
	cmp sb, r0
	beq .L08088290
	ldr r0, [r5, #4]
	bl func_08085EEC
	adds r4, r0, #0
	movs r0, #1
	mov sl, r0
	cmp r4, #0
	beq .L08088220
	movs r1, #2
	mov sl, r1
.L08088220:
	movs r0, #0x10
	bl __builtin_new
	adds r2, r0, #0
	ldr r3, [r5, #8]
	movs r6, #0
	str r6, [r5, #8]
	str r3, [sp, #4]
	movs r7, #1
	cmp r4, #0
	beq .L08088238
	movs r7, #2
.L08088238:
	add r4, sp, #4
	ldr r1, [r5, #0x10]
	ldr r0, .L08088288 @ =vtable_unk_080E5D94
	str r0, [r2]
	str r6, [sp, #4]
	str r3, [r2, #4]
	str r1, [r2, #8]
	str r7, [r2, #0xc]
	str r2, [sp]
	movs r0, #0x14
	bl __builtin_new
	ldr r3, [sp]
	str r6, [sp]
	ldr r2, [r5, #0x10]
	ldr r1, .L0808828C @ =vtable_unk_080E5C64
	str r1, [r0]
	str r6, [sp, #8]
	str r3, [r0, #4]
	str r2, [r0, #8]
	mov r1, sl
	str r1, [r0, #0xc]
	mov r1, sb
	strb r1, [r0, #0x10]
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	str r6, [sp, #4]
	mov r1, r8
	str r0, [r1]
	ldr r1, [sp]
	cmp r1, #0
	beq .L0808829A
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	b .L0808829A
	.align 2, 0
.L08088288: .4byte vtable_unk_080E5D94
.L0808828C: .4byte vtable_unk_080E5C64
.L08088290:
	ldr r1, [r5, #8]
	movs r0, #0
	str r0, [r5, #8]
	mov r0, r8
	str r1, [r0]
.L0808829A:
	mov r0, r8
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080882AC
func_080882AC: @ 0x080882AC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl func_080CE19C
	ldr r0, .L080882FC @ =vtable_unk_080E7D4C
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x98
	movs r5, #0
	strb r5, [r0]
	adds r2, r6, #0
	adds r2, #0xfc
	ldr r0, [r6, #8]
	ldr r3, .L08088300 @ =0x00001C2C
	adds r1, r0, r3
	str r1, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r6, r1
	adds r3, #0xc
	adds r1, r0, r3
	str r1, [r2]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r4, r6, r1
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl GetFridge__9FarmHouse
	str r0, [r4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r6, r1
	str r5, [r0]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080882FC: .4byte vtable_unk_080E7D4C
.L08088300: .4byte 0x00001C2C

	thumb_func_start func_08088304
func_08088304: @ 0x08088304
	push {lr}
	ldr r2, .L08088314 @ =vtable_unk_080E7D4C
	str r2, [r0, #4]
	bl func_080E3504
	pop {r0}
	bx r0
	.align 2, 0
.L08088314: .4byte vtable_unk_080E7D4C

	thumb_func_start func_08088318
func_08088318: @ 0x08088318
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0
	cmp r5, r7
	bhs .L080883A2
.L08088326:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	adds r1, r5, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808839C
	movs r4, #0
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L08088356
	cmp r0, #1
	beq .L08088368
	b .L0808837C
.L08088356:
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	b .L08088378
.L08088368:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	bl GetIconId__C7Article
.L08088378:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
.L0808837C:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808838C
	movs r4, #0xb0
	lsls r4, r4, #1
.L0808838C:
	ldr r0, [r6, #0x78]
	movs r1, #1
	str r1, [sp]
	adds r1, r5, #0
	ldr r2, .L080883CC @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CB304
.L0808839C:
	adds r5, #1
	cmp r5, r7
	blo .L08088326
.L080883A2:
	adds r4, r6, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080883B4
	b .L080884E8
.L080883B4:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #5
	bls .L080883C0
	b .L080884E8
.L080883C0:
	lsls r0, r0, #2
	ldr r1, .L080883D0 @ =.L080883D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080883CC: .4byte gUnk_086678A0
.L080883D0: .4byte .L080883D4
.L080883D4: @ jump table
	.4byte .L080883EC @ case 0
	.4byte .L08088424 @ case 1
	.4byte .L08088460 @ case 2
	.4byte .L08088494 @ case 3
	.4byte .L080884DC @ case 4
	.4byte .L080884E8 @ case 5
.L080883EC:
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F20C
	add r0, sp, #4
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088416
	movs r5, #0xb0
	lsls r5, r5, #1
.L08088416:
	ldr r0, [r6, #0x78]
	ldr r1, .L08088420 @ =gUnk_086678A0
	adds r2, r5, #0
	b .L080884CA
	.align 2, 0
.L08088420: .4byte gUnk_086678A0
.L08088424:
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	bl GetIconId__C7Article
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088452
	movs r5, #0xb0
	lsls r5, r5, #1
.L08088452:
	ldr r0, [r6, #0x78]
	ldr r1, .L0808845C @ =gUnk_086678A0
	adds r2, r5, #0
	b .L080884CA
	.align 2, 0
.L0808845C: .4byte gUnk_086678A0
.L08088460:
	ldr r0, [r6, #8]
	ldr r2, .L08088478 @ =0x00001C70
	adds r0, r0, r2
	bl GetGrowthStage__C3Dog
	cmp r0, #0
	bne .L08088484
	ldr r0, [r6, #0x78]
	ldr r1, .L0808847C @ =gUnk_0858BA28
	ldr r2, .L08088480 @ =0x000003DA
	b .L080884CA
	.align 2, 0
.L08088478: .4byte 0x00001C70
.L0808847C: .4byte gUnk_0858BA28
.L08088480: .4byte 0x000003DA
.L08088484:
	ldr r0, [r6, #0x78]
	ldr r1, .L08088490 @ =gUnk_0858BA28
	movs r2, #0xdd
	lsls r2, r2, #2
	b .L080884CA
	.align 2, 0
.L08088490: .4byte gUnk_0858BA28
.L08088494:
	ldr r0, [r4]
	bl func_0800F344
	adds r1, r0, #0
	ldr r0, [r6, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L080884E8
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	bne .L080884C4
	ldr r0, [r6, #0x78]
	ldr r1, .L080884BC @ =gUnk_0858BA28
	ldr r2, .L080884C0 @ =0x0000073D
	b .L080884CA
	.align 2, 0
.L080884BC: .4byte gUnk_0858BA28
.L080884C0: .4byte 0x0000073D
.L080884C4:
	ldr r0, [r6, #0x78]
	ldr r1, .L080884D4 @ =gUnk_0858BA28
	ldr r2, .L080884D8 @ =0x00000734
.L080884CA:
	movs r3, #1
	bl func_080CBAF0
	b .L080884E8
	.align 2, 0
.L080884D4: .4byte gUnk_0858BA28
.L080884D8: .4byte 0x00000734
.L080884DC:
	ldr r0, [r6, #0x78]
	ldr r1, .L080884F0 @ =gUnk_086678A0
	movs r2, #0x35
	movs r3, #1
	bl func_080CBAF0
.L080884E8:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080884F0: .4byte gUnk_086678A0

	thumb_func_start func_080884F4
func_080884F4: @ 0x080884F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	mov r8, r1
	movs r5, #0
	add r7, sp, #8
.L08088504:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r2, r8
	lsls r1, r2, #3
	adds r1, r1, r5
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08088558
	adds r0, r7, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r7, #0
	bl GetIconId__C4Food
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	ldr r1, [r6, #0x7c]
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r5, #0
	ldr r2, .L08088554 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
	b .L08088560
	.align 2, 0
.L08088554: .4byte gUnk_086678A0
.L08088558:
	ldr r0, [r6, #0x7c]
	adds r1, r5, #0
	bl func_080CCDEC
.L08088560:
	adds r5, #1
	cmp r5, #7
	bls .L08088504
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08088574
func_08088574: @ 0x08088574
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl func_080CEB80
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080884F4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08088590
func_08088590: @ 0x08088590
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl func_080CEBC0
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080884F4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080885AC
func_080885AC: @ 0x080885AC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r7, #0
	adds r6, r5, #0
	adds r6, #0x98
	strb r7, [r6]
	cmp r1, #0
	bne .L080885DA
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808865A
	ldr r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080CF67C
	b .L08088658
.L080885DA:
	cmp r1, #8
	bgt .L08088614
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r4, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp]
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808865A
	ldr r2, [sp]
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080CFA38
	b .L08088658
.L08088614:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl func_080CE184
	lsls r4, r4, #3
	adds r6, r4, r0
	movs r0, #0x82
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	adds r1, r6, #0
	bl GetFoodStackAt__6FridgeUi
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808865A
	ldr r0, [r4]
	adds r1, r6, #0
	bl GetFoodStackAt__6FridgeUi
	adds r1, r0, #0
	mov r0, sp
	bl GetFood__C9FoodStack
	mov r0, sp
	bl GetDesc__C4Food
.L08088658:
	adds r7, r0, #0
.L0808865A:
	cmp r7, #0
	beq .L0808866E
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L0808867C
.L0808866E:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L08088684 @ =gUnk_08100030
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L0808867C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08088684: .4byte gUnk_08100030

	thumb_func_start func_08088688
func_08088688: @ 0x08088688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r7, r0, #0
	mov r8, r1
	str r2, [sp, #0x28]
	movs r0, #1
	str r0, [sp, #0x2c]
	cmp r1, #0
	bne .L080886A4
	b .L08088B8C
.L080886A4:
	cmp r1, #8
	ble .L080886AA
	b .L08088876
.L080886AA:
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	mov sb, r4
	cmp r0, #0
	beq .L08088738
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L080886E4
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L080886E6
.L080886E4:
	movs r1, #1
.L080886E6:
	cmp r1, #0
	beq .L080886EC
	b .L08088B8C
.L080886EC:
	ldr r0, [r7, #0x78]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl func_080CBDD4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	add r5, sp, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x14]
	bl func_0800F418
	b .L08088B8C
.L08088738:
	mov r3, sb
	ldr r0, [r3]
	bl func_0800F204
	cmp r0, #5
	bls .L08088746
	b .L08088B8C
.L08088746:
	lsls r0, r0, #2
	ldr r1, .L08088750 @ =.L08088754
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08088750: .4byte .L08088754
.L08088754: @ jump table
	.4byte .L0808876C @ case 0
	.4byte .L0808876C @ case 1
	.4byte .L08088AC6 @ case 2
	.4byte .L08088AC6 @ case 3
	.4byte .L08088AC6 @ case 4
	.4byte .L08088B8C @ case 5
.L0808876C:
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x18
	ldr r0, [r7, #0x78]
	bl func_080CB2FC
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L080887A0
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L080887A2
.L080887A0:
	movs r1, #1
.L080887A2:
	cmp r1, #0
	bne .L08088822
	ldr r0, [r7, #0x78]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl func_080CBDD4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	add r0, sp, #0x10
	mov r4, sb
	ldr r1, [r4]
	bl func_0800F294
	ldr r0, [r4]
	bl func_0800F390
	add r6, sp, #0x14
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x10]
	str r1, [r0]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [sp, #0x14]
	str r1, [sp, #0x24]
	bl func_0800F418
	b .L08088B8C
.L08088822:
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	add r0, sp, #0x24
	mov r2, sb
	ldr r1, [r2]
	bl func_0800F294
	mov r3, sb
	ldr r0, [r3]
	bl func_0800F390
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x24]
	str r1, [r0]
	b .L08088B8C
.L08088876:
	adds r0, r7, #0
	mov r1, r8
	ldr r2, [sp, #0x28]
	bl func_080CE184
	str r0, [sp, #0x30]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	ldr r0, [r1]
	ldr r1, [sp, #0x30]
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088978
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080888B4
	b .L08088B8C
.L080888B4:
	ldr r5, [r4]
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #9
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0xa
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	bl func_0800F3B0
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [sp, #0x30]
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl SubtractAmount__9FoodStackUi
	ldr r5, [r7, #0x78]
	ldr r6, .L0808894C @ =gUnk_086678A0
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r4, #0
	bl GetIconId__C4Food
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #1
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r3, [sp, #0x28]
	cmp r0, r3
	beq .L08088920
	b .L08088B8C
.L08088920:
	mov r4, sl
	ldr r0, [r4]
	ldr r1, [sp, #0x30]
	bl GetFoodStackAt__6FridgeUi
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088950
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L08088B8C
	.align 2, 0
.L0808894C: .4byte gUnk_086678A0
.L08088950:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x30]
	bl GetFoodStackAt__6FridgeUi
	bl GetAmount__C9FoodStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L08088B8C
.L08088978:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #4
	ble .L08088984
	b .L08088B8C
.L08088984:
	cmp r0, #1
	blt .L0808898A
	b .L08088B88
.L0808898A:
	cmp r0, #0
	beq .L08088990
	b .L08088B8C
.L08088990:
	add r2, sp, #8
	mov sb, r2
	ldr r1, [r4]
	mov r0, sb
	bl func_0800F20C
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080889AA
	b .L08088AD0
.L080889AA:
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	cmp r0, #1
	bls .L080889B6
	b .L08088B7C
.L080889B6:
	ldr r0, [r4]
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08088A8C
	ldr r0, [r4]
	bl func_0800F390
	ldr r4, [r4]
	add r5, sp, #0xc
	adds r0, r5, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	ldrb r1, [r5]
	mov r0, sp
	adds r0, #0xd
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0xe
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r4, #0
	bl func_0800F3B0
	mov r4, sl
	ldr r0, [r4]
	ldr r1, [sp, #0x30]
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r4, sp, #0x10
	adds r0, r4, #0
	mov r1, sb
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r6]
	ldr r4, [r7, #0x78]
	ldr r6, .L08088A88 @ =gUnk_086678A0
	adds r0, r5, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r5, #0
	bl GetIconId__C4Food
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #1
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r1, [sp, #0x28]
	cmp r0, r1
	beq .L08088A5E
	b .L08088B8C
.L08088A5E:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sb
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, [sp, #0x2c]
	str r2, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CC728
	b .L08088B8C
	.align 2, 0
.L08088A88: .4byte gUnk_086678A0
.L08088A8C:
	mov r0, sb
	bl GetId__C4Food
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r4, #0
	bl GetId__C4Food
	eors r0, r5
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge .L08088AC6
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08088ACC @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [sp, #0x2c]
	str r4, [r0]
.L08088AC6:
	movs r0, #0
	str r0, [sp, #0x2c]
	b .L08088B8C
	.align 2, 0
.L08088ACC: .4byte gUnk_08100034
.L08088AD0:
	ldr r0, [r4]
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08088B64
	ldr r0, [r4]
	bl func_0800F390
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x30]
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0xc
	add r4, sp, #0x10
	adds r0, r4, #0
	mov r1, sb
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r2, [sp, #0x28]
	cmp r0, r2
	bne .L08088B8C
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, r8
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sb
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L08088B60 @ =gUnk_086678A0
	ldr r0, [sp, #0x2c]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
	b .L08088B8C
	.align 2, 0
.L08088B60: .4byte gUnk_086678A0
.L08088B64:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08088B84 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [sp, #0x2c]
	str r2, [r0]
.L08088B7C:
	movs r3, #0
	str r3, [sp, #0x2c]
	b .L08088B8C
	.align 2, 0
.L08088B84: .4byte gUnk_08100034
.L08088B88:
	movs r4, #0
	str r4, [sp, #0x2c]
.L08088B8C:
	add r1, sp, #0x2c
	ldrb r0, [r1]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_08088BA0
func_08088BA0: @ 0x08088BA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	adds r7, r0, #0
	str r1, [sp, #0x2c]
	mov sl, r2
	movs r0, #1
	str r0, [sp, #0x30]
	cmp r2, #0
	bne .L08088BCC
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	b .L08088D30
.L08088BCC:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq .L08088BD4
	b .L08088DB4
.L08088BD4:
	mov r2, sl
	cmp r2, #8
	bgt .L08088BE8
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_08088688
	bl .L08089AC0
.L08088BE8:
	movs r3, #0xfc
	adds r3, r3, r7
	mov r8, r3
	ldr r0, [r3]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088C10
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sl
	bl func_08088688
	bl .L08089AC0
.L08088C10:
	mov r4, r8
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #0
	beq .L08088C1E
	b .L08088D3E
.L08088C1E:
	mov r2, r8
	ldr r1, [r2]
	add r0, sp, #4
	bl func_0800F294
	mov r3, sp
	adds r3, #8
	str r3, [sp, #0x34]
	adds r0, r3, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r4, r7, #0
	adds r4, #0x94
	str r4, [sp, #0x3c]
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sl
	bl func_080CE184
	str r0, [sp, #0x38]
	add r6, sp, #0xc
	movs r0, #0x82
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
	ldr r0, [r0]
	ldr r1, [sp, #0x38]
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #0xc]
	adds r0, r6, #0
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088CF8
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08088CD6
	mov r1, r8
	ldr r0, [r1]
	bl func_0800F390
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [sp, #0x38]
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0x10
	add r4, sp, #0x14
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x15
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x16
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x10]
	str r0, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [sp, #0x34]
	bl sub_080895C2
.L08088CD6:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08088CF4 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [sp, #0x30]
	str r2, [r0]
	bl .L08089620
	.align 2, 0
.L08088CF4: .4byte gUnk_08100034
.L08088CF8:
	ldr r0, [sp, #0x34]
	bl GetId__C4Food
	adds r5, r0, #0
	add r4, sp, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	bl GetFood__C9FoodStack
	adds r0, r4, #0
	bl GetId__C4Food
	eors r0, r5
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge .L08088D46
	adds r0, r6, #0
	bl GetAmount__C9FoodStack
	cmp r0, #1
	bne .L08088D3E
	ldr r4, [sp, #0x3c]
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sl
.L08088D30:
	bl func_08088688
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x30]
	bl .L08089AC0
.L08088D3E:
	movs r0, #0
	str r0, [sp, #0x30]
	bl .L08089AC0
.L08088D46:
	adds r0, r6, #0
	bl GetAmount__C9FoodStack
	cmp r0, #0x63
	bne .L08088D54
	bl .L080895E0
.L08088D54:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08088D96
	mov r2, r8
	ldr r0, [r2]
	bl func_0800F390
	mov r3, sb
	ldr r0, [r3]
	ldr r1, [sp, #0x38]
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl AddAmount__9FoodStackUi
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [sp, #0x38]
	bl .L08089A0C
.L08088D96:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08088DB0 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r3, [sp, #0x30]
	str r3, [r0]
	b .L0808932C
	.align 2, 0
.L08088DB0: .4byte gUnk_08100034
.L08088DB4:
	ldr r0, [sp, #0x2c]
	cmp r0, #8
	ble .L08088DBC
	b .L0808939A
.L08088DBC:
	mov r1, sl
	cmp r1, #8
	ble .L08088DC4
	b .L08088F8E
.L08088DC4:
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x18
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl func_080CB2E8
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	add r4, sp, #0x10
	mov r8, r4
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0x10]
	add r6, sp, #0x24
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0x24]
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088E50
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088E50
	bl .L08089AC0
.L08088E50:
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088EC8
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x24]
	str r1, [r0]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x28
	bl __12RucksackItem
	ldr r0, [sp, #0x28]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r0, [sp, #0x30]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	bl .L08089AC0
.L08088EC8:
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088F22
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x28
	bl __12RucksackItem
	ldr r0, [sp, #0x28]
	str r0, [r4]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x10]
	str r1, [r0]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	b .L08088F6E
.L08088F22:
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x24]
	str r1, [r0]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x10]
	str r1, [r0]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r0, [sp, #0x30]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
.L08088F6E:
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x30]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	bl .L08089AC0
.L08088F8E:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r7, r1
	str r1, [sp, #0x40]
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sl
	bl func_080CE184
	mov sb, r0
	add r4, sp, #8
	movs r2, #0x82
	lsls r2, r2, #1
	adds r2, r7, r2
	str r2, [sp, #0x44]
	ldr r0, [r2]
	mov r1, sb
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #8]
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	mov r8, r4
	cmp r0, #0
	beq .L080890BC
	mov r0, r8
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08088FF6
	bl .L08089AC0
.L08088FF6:
	add r5, sp, #0xc
	adds r0, r5, #0
	mov r1, r8
	bl GetFood__C9FoodStack
	ldr r3, [sp, #0x40]
	ldr r4, [r3]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	mov r8, r0
	add r6, sp, #0x10
	add r4, sp, #0x14
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x15
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x16
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r6, #0
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0x10]
	mov r4, r8
	str r0, [r4]
	ldr r1, [sp, #0x44]
	ldr r0, [r1]
	mov r1, sb
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl SubtractAmount__9FoodStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L080890A0 @ =gUnk_086678A0
	ldr r0, [sp, #0x30]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_080CB304
	ldr r1, [sp, #0x44]
	ldr r0, [r1]
	mov r1, sb
	bl GetFoodStackAt__6FridgeUi
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080890A4
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	bl .L0808997E
	.align 2, 0
.L080890A0: .4byte gUnk_086678A0
.L080890A4:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r2, [sp, #0x44]
	ldr r0, [r2]
	mov r1, sb
	bl .L08089A0C
.L080890BC:
	mov r0, r8
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080891A0
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L080890D4
	b .L08089620
.L080890D4:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080890FC
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L080890F8 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, [sp, #0x30]
	b .L0808966A
	.align 2, 0
.L080890F8: .4byte gUnk_08100034
.L080890FC:
	add r6, sp, #0xc
	adds r0, r6, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	ldr r3, [sp, #0x44]
	ldr r0, [r3]
	mov r1, sb
	bl GetFoodStackAt__6FridgeUi
	mov r8, r0
	add r5, sp, #0x10
	add r4, sp, #0x14
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x15
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x16
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x10]
	mov r4, r8
	str r0, [r4]
	ldr r0, [sp, #0x40]
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	bl __12RucksackItem
	ldr r0, [sp, #0x10]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808919C @ =gUnk_086678A0
	ldr r1, [sp, #0x30]
	str r1, [sp]
	b .L080895D2
	.align 2, 0
.L0808919C: .4byte gUnk_086678A0
.L080891A0:
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L080891AC
	b .L0808966C
.L080891AC:
	add r5, sp, #0xc
	adds r0, r5, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	add r4, sp, #0x10
	adds r0, r4, #0
	mov r1, r8
	bl GetFood__C9FoodStack
	adds r0, r5, #0
	bl GetId__C4Food
	adds r6, r0, #0
	adds r0, r4, #0
	bl GetId__C4Food
	cmp r6, r0
	beq .L080891DE
	mov r0, r8
	bl GetAmount__C9FoodStack
	cmp r0, #1
	beq .L080891DE
	b .L08089620
.L080891DE:
	add r0, sp, #0xc
	bl GetId__C4Food
	adds r4, r0, #0
	add r0, sp, #0x10
	bl GetId__C4Food
	cmp r4, r0
	bne .L080891F2
	b .L080892FC
.L080891F2:
	mov r0, r8
	bl GetAmount__C9FoodStack
	str r0, [sp, #0x48]
	cmp r0, #1
	beq .L08089200
	b .L080892FC
.L08089200:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089228
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08089224 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, [sp, #0x48]
	b .L0808966A
	.align 2, 0
.L08089224: .4byte gUnk_08100034
.L08089228:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	mov r1, sb
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	add r0, sp, #0x14
	mov sb, r0
	add r5, sp, #0x18
	adds r0, r5, #0
	add r1, sp, #0xc
	movs r2, #3
	bl memcpy
	ldrb r1, [r5]
	movs r2, #0x19
	add r2, sp
	mov r8, r2
	ldrb r0, [r2]
	lsls r0, r0, #8
	orrs r0, r1
	mov r6, sp
	adds r6, #0x1a
	ldrb r1, [r6]
	lsls r1, r1, #0x10
	orrs r1, r0
	mov r0, sb
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x14]
	str r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	add r1, sp, #0x10
	movs r2, #3
	bl memcpy
	ldrb r1, [r5]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r6]
	lsls r1, r1, #0x10
	orrs r1, r0
	mov r0, sb
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0x14]
	str r0, [r4]
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0x10
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r6, .L080892F8 @ =gUnk_086678A0
	ldr r0, [sp, #0x48]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CB304
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0xc
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r1, [sp, #0x48]
	str r1, [sp]
	b .L0808975C
	.align 2, 0
.L080892F8: .4byte gUnk_086678A0
.L080892FC:
	mov r0, r8
	bl GetAmount__C9FoodStack
	cmp r0, #0x63
	bne .L08089308
	b .L0808966C
.L08089308:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089338
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08089334 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
.L0808932C:
	movs r4, #0
	str r4, [sp, #0x30]
	b .L08089AC0
	.align 2, 0
.L08089334: .4byte gUnk_08100034
.L08089338:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r6, r7, r0
	ldr r0, [r6]
	mov r1, sb
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl AddAmount__9FoodStackUi
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x14
	bl __12RucksackItem
	ldr r0, [sp, #0x14]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sb
	b .L08089A0C
.L0808939A:
	adds r2, r7, #0
	adds r2, #0x90
	str r2, [sp, #0x50]
	ldr r0, [r2]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	bl func_080CE184
	str r0, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	str r3, [sp, #0x5c]
	mov r4, sl
	cmp r4, #8
	ble .L080893BE
	b .L0808976C
.L080893BE:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
	ldr r0, [r0]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r5, sp, #8
	movs r1, #0x80
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r4, [r6]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #8]
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	mov r8, r5
	cmp r0, #0
	beq .L0808940E
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808940E
	b .L08089AC0
.L0808940E:
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080894E4
	ldr r4, [r6]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r6, r0, #0
	add r5, sp, #0xc
	add r4, sp, #0x10
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0xc]
	str r0, [r6]
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl SubtractAmount__9FoodStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r5, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r5, #0
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L080894E0 @ =gUnk_086678A0
	ldr r0, [sp, #0x30]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_080CB304
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	bl func_080CF054
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L080894B4
	b .L08089AC0
.L080894B4:
	mov r2, sb
	ldr r0, [r2]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080894CA
	b .L08089978
.L080894CA:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r3, sb
	ldr r0, [r3]
	b .L08089A0A
	.align 2, 0
.L080894E0: .4byte gUnk_086678A0
.L080894E4:
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080895E6
	mov r0, r8
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L080895E0
	mov r0, r8
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089524
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08089520 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, [sp, #0x30]
	b .L0808966A
	.align 2, 0
.L08089520: .4byte gUnk_08100034
.L08089524:
	ldr r4, [r6]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r6, sp, #0xc
	adds r0, r6, #0
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	mov r3, sb
	ldr r0, [r3]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	adds r5, r0, #0
	add r4, sp, #0x10
	adds r0, r4, #0
	mov r1, r8
	bl GetFood__C12RucksackItem
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r6, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r5]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r4, [sp, #0x50]
	ldr r0, [r4]
	bl func_080CF054
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L080895AA
	b .L08089AC0
.L080895AA:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	mov r1, r8
	bl GetFood__C12RucksackItem
	adds r0, r6, #0

	non_word_aligned_thumb_func_start sub_080895C2
sub_080895C2: @ 0x080895C2
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L080895DC @ =gUnk_086678A0
	ldr r0, [sp, #0x30]
	str r0, [sp]
.L080895D2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
	b .L08089AC0
	.align 2, 0
.L080895DC: .4byte gUnk_086678A0
.L080895E0:
	movs r1, #0
	str r1, [sp, #0x30]
	b .L08089AC0
.L080895E6:
	mov r0, r8
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L0808966C
	add r5, sp, #0xc
	adds r0, r5, #0
	mov r1, r8
	bl GetFood__C12RucksackItem
	add r4, sp, #0x10
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r4, #0
	bl GetId__C4Food
	adds r6, r0, #0
	adds r0, r5, #0
	bl GetId__C4Food
	cmp r6, r0
	beq .L08089626
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	cmp r0, #1
	beq .L08089626
.L08089620:
	movs r3, #0
	str r3, [sp, #0x30]
	b .L08089AC0
.L08089626:
	add r0, sp, #0x10
	bl GetId__C4Food
	adds r4, r0, #0
	add r0, sp, #0xc
	bl GetId__C4Food
	cmp r4, r0
	bne .L0808963A
	b .L08089AC0
.L0808963A:
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	str r0, [sp, #0x54]
	cmp r0, #1
	beq .L08089648
	b .L08089AC0
.L08089648:
	mov r0, r8
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089678
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08089674 @ =gUnk_08100034
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, [sp, #0x54]
.L0808966A:
	str r1, [r0]
.L0808966C:
	movs r2, #0
	str r2, [sp, #0x30]
	b .L08089AC0
	.align 2, 0
.L08089674: .4byte gUnk_08100034
.L08089678:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	add r0, sp, #0x14
	mov sb, r0
	add r5, sp, #0x18
	adds r0, r5, #0
	add r1, sp, #0xc
	movs r2, #3
	bl memcpy
	ldrb r1, [r5]
	movs r2, #0x19
	add r2, sp
	mov r8, r2
	ldrb r0, [r2]
	lsls r0, r0, #8
	orrs r0, r1
	mov r6, sp
	adds r6, #0x1a
	ldrb r1, [r6]
	lsls r1, r1, #0x10
	orrs r1, r0
	mov r0, sb
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x14]
	str r0, [r4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	add r1, sp, #0x10
	movs r2, #3
	bl memcpy
	ldrb r1, [r5]
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r6]
	lsls r1, r1, #0x10
	orrs r1, r0
	mov r0, sb
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0x14]
	str r0, [r4]
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0x10
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r6, .L08089768 @ =gUnk_086678A0
	ldr r0, [sp, #0x54]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CB304
	ldr r1, [sp, #0x5c]
	ldr r0, [r1]
	bl func_080CF054
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L0808973E
	b .L08089AC0
.L0808973E:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0xc
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, [sp, #0x54]
	str r2, [sp]
.L0808975C:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CC728
	b .L08089AC0
	.align 2, 0
.L08089768: .4byte gUnk_086678A0
.L0808976C:
	adds r3, r7, #0
	adds r3, #0x94
	str r3, [sp, #0x58]
	ldr r0, [r3]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sl
	bl func_080CE184
	mov r8, r0
	movs r4, #0x82
	lsls r4, r4, #1
	adds r6, r7, r4
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #8
	mov sb, r0
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #8]
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080897BE
	mov r0, sb
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080897BE
	b .L08089AC0
.L080897BE:
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089854
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	ldr r1, [sp, #8]
	str r1, [r0]
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	add r1, sp, #0xc
	mov r8, r1
	mov r0, r8
	bl __9FoodStack
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	ldr r2, [sp, #0x50]
	ldr r0, [r2]
	bl func_080CF054
	ldr r3, [sp, #0x58]
	ldr r1, [r3]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L08089818
	b .L08089AC0
.L08089818:
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	mov r1, sb
	bl GetFood__C9FoodStack
	mov r0, r8
	bl GetIconId__C4Food
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	bl GetAmount__C9FoodStack
	ldr r2, .L08089850 @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CC728
	b .L08089AC0
	.align 2, 0
.L08089850: .4byte gUnk_086678A0
.L08089854:
	mov r0, sb
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080898CC
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	add r5, sp, #0xc
	adds r0, r5, #0
	bl __9FoodStack
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	ldr r1, [sp, #4]
	str r1, [r0]
	ldr r4, [r7, #0x7c]
	mov r8, r4
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r6, r0, #0
	adds r0, r5, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r5, #0
	bl GetIconId__C4Food
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	ldr r2, .L080898C8 @ =gUnk_086678A0
	str r0, [sp]
	mov r0, r8
	adds r1, r6, #0
	adds r3, r4, #0
	bl func_080CC728
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	bl func_080CF054
	ldr r2, [sp, #0x58]
	ldr r1, [r2]
	b .L0808996E
	.align 2, 0
.L080898C8: .4byte gUnk_086678A0
.L080898CC:
	add r4, sp, #0xc
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C9FoodStack
	adds r0, r4, #0
	bl GetId__C4Food
	adds r5, r0, #0
	add r4, sp, #0x10
	adds r0, r4, #0
	mov r1, sb
	bl GetFood__C9FoodStack
	adds r0, r4, #0
	bl GetId__C4Food
	movs r1, #0
	cmp r5, r0
	bne .L080898F6
	movs r1, #1
.L080898F6:
	cmp r1, #0
	bne .L080898FC
	b .L08089A20
.L080898FC:
	mov r0, sb
	bl GetAmount__C9FoodStack
	adds r4, r0, #0
	movs r5, #0x63
	subs r4, r5, r4
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	cmp r4, r0
	blo .L0808998E
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	add r0, sp, #0x14
	bl __9FoodStack
	ldr r0, [sp, #0x14]
	str r0, [r4]
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9FoodStackUi
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	bl GetAmount__C9FoodStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	ldr r3, [sp, #0x50]
	ldr r0, [r3]
	bl func_080CF054
	ldr r4, [sp, #0x58]
	ldr r1, [r4]
.L0808996E:
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L08089978
	b .L08089AC0
.L08089978:
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
.L0808997E:
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L08089AC0
.L0808998E:
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	mov r0, sb
	bl GetAmount__C9FoodStack
	adds r1, r0, #0
	subs r1, r5, r1
	adds r0, r4, #0
	bl SubtractAmount__9FoodStackUi
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	mov r0, sb
	bl GetAmount__C9FoodStack
	adds r1, r0, #0
	subs r1, r5, r1
	adds r0, r4, #0
	bl AddAmount__9FoodStackUi
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	bl GetAmount__C9FoodStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	bl func_080CF054
	ldr r2, [sp, #0x58]
	ldr r1, [r2]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	bne .L08089AC0
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
.L08089A0A:
	ldr r1, [sp, #0x4c]
.L08089A0C:
	bl GetFoodStackAt__6FridgeUi
	bl GetAmount__C9FoodStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L08089AC0
.L08089A20:
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetFoodStackAt__6FridgeUi
	ldr r1, [sp, #8]
	str r1, [r0]
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	ldr r1, [sp, #4]
	str r1, [r0]
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r3, sp, #0x14
	mov r8, r3
	mov r0, r8
	add r1, sp, #4
	bl GetFood__C9FoodStack
	mov r0, r8
	bl GetIconId__C4Food
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C9FoodStack
	ldr r1, .L08089AD4 @ =gUnk_086678A0
	mov sl, r1
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sl
	adds r3, r4, #0
	bl func_080CC728
	ldr r2, [sp, #0x50]
	ldr r0, [r2]
	bl func_080CF054
	ldr r3, [sp, #0x58]
	ldr r1, [r3]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	bne .L08089AC0
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x2c]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	mov r1, sb
	bl GetFood__C9FoodStack
	mov r0, r8
	bl GetIconId__C4Food
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, sb
	bl GetAmount__C9FoodStack
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sl
	adds r3, r4, #0
	bl func_080CC728
.L08089AC0:
	add r4, sp, #0x30
	ldrb r0, [r4]
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08089AD4: .4byte gUnk_086678A0

	thumb_func_start func_08089AD8
func_08089AD8: @ 0x08089AD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	cmp r1, #0
	beq .L08089AF0
	b .L08089C8E
.L08089AF0:
	movs r0, #0xfc
	adds r0, r0, r7
	mov sl, r0
	ldr r1, [r0]
	add r0, sp, #4
	bl func_0800F20C
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	bl func_080CE184
	mov r8, r0
	add r4, sp, #8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089B34
	b .L08089C44
.L08089B34:
	add r0, sp, #0xc
	mov sb, r0
	adds r1, r4, #0
	bl GetFood__C9FoodStack
	add r0, sp, #4
	bl GetId__C4Food
	adds r4, r0, #0
	mov r0, sb
	bl GetId__C4Food
	cmp r4, r0
	bne .L08089B92
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl AddAmount__9FoodStackUi
	mov r1, sl
	ldr r0, [r1]
	bl func_0800F390
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	bl GetAmount__C9FoodStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L08089EE4
.L08089B92:
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0x10
	add r4, sp, #0x14
	adds r0, r4, #0
	add r1, sp, #4
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x15
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x16
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x10]
	str r0, [r6]
	mov r1, sl
	ldr r0, [r1]
	bl func_0800F390
	mov r0, sl
	ldr r4, [r0]
	adds r0, r5, #0
	mov r1, sb
	movs r2, #3
	bl memcpy
	ldrb r1, [r5]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r4, #0
	bl func_0800F3B0
	ldr r4, [r7, #0x78]
	ldr r6, .L08089C40 @ =gUnk_086678A0
	mov r0, sb
	bl GetIconId__C4Food
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #1
	bl func_080CBAF0
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #4
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	b .L08089EE0
	.align 2, 0
.L08089C40: .4byte gUnk_086678A0
.L08089C44:
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0xc
	add r4, sp, #0x10
	adds r0, r4, #0
	add r1, sp, #4
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r6]
	mov r1, sl
	ldr r0, [r1]
	bl func_0800F390
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	b .L08089EBC
.L08089C8E:
	ldr r0, [sp, #0x1c]
	cmp r0, #8
	ble .L08089C96
	b .L08089EF0
.L08089C96:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	bl func_080CE184
	mov r8, r0
	add r4, sp, #8
	movs r0, #0x82
	lsls r0, r0, #1
	adds r6, r7, r0
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08089CF0
	b .L08089E4C
.L08089CF0:
	add r1, sp, #0xc
	mov sb, r1
	mov r0, sb
	adds r1, r4, #0
	bl GetFood__C9FoodStack
	add r0, sp, #4
	bl GetId__C4Food
	adds r4, r0, #0
	mov r0, sb
	bl GetId__C4Food
	cmp r4, r0
	bne .L08089D78
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl AddAmount__9FoodStackUi
	mov r0, sl
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x10
	bl __12RucksackItem
	ldr r0, [sp, #0x10]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	bl GetAmount__C9FoodStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L08089EE4
.L08089D78:
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r5, r0, #0
	add r6, sp, #0x10
	add r4, sp, #0x18
	adds r0, r4, #0
	add r1, sp, #4
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x19
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x1a
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r6, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x10]
	str r0, [r5]
	mov r1, sl
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0x14
	adds r0, r4, #0
	mov r1, sb
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x15
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x16
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r6, #0
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0x10]
	str r0, [r5]
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sb
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, .L08089E48 @ =gUnk_086678A0
	mov r8, r0
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CB304
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #4
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	b .L08089EE0
	.align 2, 0
.L08089E48: .4byte gUnk_086678A0
.L08089E4C:
	ldr r0, [r6]
	mov r1, r8
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0xc
	add r4, sp, #0x10
	adds r0, r4, #0
	add r1, sp, #4
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r6]
	mov r1, sl
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
.L08089EBC:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #4
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L08089EEC @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
.L08089EE0:
	bl func_080CC728
.L08089EE4:
	adds r7, #0x90
	str r7, [sp, #0x34]
	b .L0808A2D8
	.align 2, 0
.L08089EEC: .4byte gUnk_086678A0
.L08089EF0:
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	cmp r0, r1
	bne .L08089EFC
	movs r0, #0
	str r0, [sp, #0x20]
.L08089EFC:
	adds r4, r7, #0
	adds r4, #0x90
	ldr r0, [r4]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	bl func_080CE184
	str r0, [sp, #0x24]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp, #4]
	str r4, [sp, #0x34]
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq .L08089F30
	b .L0808A0D8
.L08089F30:
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x28]
	movs r0, #0xfc
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [r0]
	ldr r0, [sp, #0x28]
	bl func_0800F20C
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808A048
	add r1, sp, #0xc
	mov sb, r1
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	adds r1, r0, #0
	mov r0, sb
	bl GetFood__C9FoodStack
	mov r0, sb
	bl GetId__C4Food
	adds r4, r0, #0
	ldr r0, [sp, #0x28]
	bl GetId__C4Food
	cmp r4, r0
	bne .L08089F7A
	b .L0808A2D8
.L08089F7A:
	mov r1, r8
	ldr r0, [r1]
	bl func_0800F390
	mov r0, r8
	ldr r4, [r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	mov r1, sb
	movs r2, #3
	bl memcpy
	ldrb r1, [r5]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r4, #0
	bl func_0800F3B0
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r4, sp, #0x14
	adds r0, r4, #0
	ldr r1, [sp, #0x28]
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x15
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x16
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x10]
	str r0, [r6]
	ldr r4, [r7, #0x78]
	ldr r6, .L0808A044 @ =gUnk_086678A0
	mov r0, sb
	bl GetIconId__C4Food
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #1
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x34]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L0808A01A
	b .L0808A2D8
.L0808A01A:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [sp, #0x28]
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CC728
	b .L0808A2D8
	.align 2, 0
.L0808A044: .4byte gUnk_086678A0
.L0808A048:
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0xc
	add r4, sp, #0x10
	adds r0, r4, #0
	ldr r1, [sp, #0x28]
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r6]
	mov r1, r8
	ldr r0, [r1]
	bl func_0800F390
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x34]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L0808A0AA
	b .L0808A2D8
.L0808A0AA:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [sp, #0x28]
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808A0D4 @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
	b .L0808A2D8
	.align 2, 0
.L0808A0D4: .4byte gUnk_086678A0
.L0808A0D8:
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x2c]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r1, r0, #0
	ldr r0, [sp, #0x2c]
	bl GetFood__C12RucksackItem
	add r0, sp, #4
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808A110
	b .L0808A228
.L0808A110:
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x30]
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	adds r1, r0, #0
	ldr r0, [sp, #0x30]
	bl GetFood__C9FoodStack
	ldr r0, [sp, #0x30]
	bl GetId__C4Food
	adds r4, r0, #0
	ldr r0, [sp, #0x2c]
	bl GetId__C4Food
	cmp r4, r0
	bne .L0808A13C
	b .L0808A2D8
.L0808A13C:
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	mov r8, r0
	add r1, sp, #0x10
	mov sb, r1
	add r4, sp, #0x14
	adds r0, r4, #0
	ldr r1, [sp, #0x30]
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r6, sp
	adds r6, #0x15
	ldrb r0, [r6]
	lsls r0, r0, #8
	orrs r0, r1
	mov r5, sp
	adds r5, #0x16
	ldrb r1, [r5]
	lsls r1, r1, #0x10
	orrs r1, r0
	mov r0, sb
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0x10]
	mov r1, r8
	str r0, [r1]
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	mov r8, r0
	adds r0, r4, #0
	ldr r1, [sp, #0x2c]
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	ldrb r0, [r6]
	lsls r0, r0, #8
	orrs r0, r1
	ldrb r1, [r5]
	lsls r1, r1, #0x10
	orrs r1, r0
	mov r0, sb
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0x10]
	mov r1, r8
	str r0, [r1]
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [sp, #0x30]
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, .L0808A224 @ =gUnk_086678A0
	mov r8, r0
	movs r6, #1
	str r6, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CB304
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x34]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	bne .L0808A2D8
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [sp, #0x2c]
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r6, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CC728
	b .L0808A2D8
	.align 2, 0
.L0808A224: .4byte gUnk_086678A0
.L0808A228:
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x24]
	bl GetFoodStackAt__6FridgeUi
	adds r6, r0, #0
	add r5, sp, #0xc
	add r4, sp, #0x10
	adds r0, r4, #0
	ldr r1, [sp, #0x2c]
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x12
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	movs r2, #1
	bl __9FoodStackG4FoodUi
	ldr r0, [sp, #0xc]
	str r0, [r6]
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x34]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	bne .L0808A2D8
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [sp, #0x2c]
	bl GetIconId__C4Food
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808A2F0 @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
.L0808A2D8:
	ldr r1, [sp, #0x34]
	ldr r0, [r1]
	bl func_080CECD0
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808A2F0: .4byte gUnk_086678A0

	thumb_func_start func_0808A2F4
func_0808A2F4: @ 0x0808A2F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r1, #0
	cmp r7, #0
	bne .L0808A380
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808A312
	b .L0808A4AC
.L0808A312:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #0
	beq .L0808A322
	cmp r0, #1
	beq .L0808A344
	b .L0808A3F6
.L0808A322:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808A338 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808A33C @ =gUnk_08100084
	ldr r3, .L0808A340 @ =gUnk_08100088
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	b .L0808A49E
	.align 2, 0
.L0808A338: .4byte gUnk_08117ABC
.L0808A33C: .4byte gUnk_08100084
.L0808A340: .4byte gUnk_08100088
.L0808A344:
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x10
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808A3F6
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808A374 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808A378 @ =gUnk_08100084
	ldr r3, .L0808A37C @ =gUnk_08100088
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	b .L0808A49E
	.align 2, 0
.L0808A374: .4byte gUnk_08117ABC
.L0808A378: .4byte gUnk_08100084
.L0808A37C: .4byte gUnk_08100088
.L0808A380:
	cmp r7, #8
	bgt .L0808A460
	ldr r4, [r5, #0x78]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq .L0808A3A8
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L0808A3AA
.L0808A3A8:
	movs r2, #1
.L0808A3AA:
	adds r6, r2, #0
	cmp r6, #0
	beq .L0808A3B2
	b .L0808A4AC
.L0808A3B2:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	bl GetKind__C12RucksackItem
	cmp r0, #1
	bne .L0808A440
	add r0, sp, #0xc
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x11
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808A420
.L0808A3F6:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808A41C @ =gUnk_08117ADC
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L0808A4AC
	.align 2, 0
.L0808A41C: .4byte gUnk_08117ADC
.L0808A420:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808A434 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808A438 @ =gUnk_08100084
	ldr r3, .L0808A43C @ =gUnk_08100088
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	b .L0808A49E
	.align 2, 0
.L0808A434: .4byte gUnk_08117ABC
.L0808A438: .4byte gUnk_08100084
.L0808A43C: .4byte gUnk_08100088
.L0808A440:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808A454 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808A458 @ =gUnk_08100084
	ldr r3, .L0808A45C @ =gUnk_08100088
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	b .L0808A49E
	.align 2, 0
.L0808A454: .4byte gUnk_08117ABC
.L0808A458: .4byte gUnk_08100084
.L0808A45C: .4byte gUnk_08100088
.L0808A460:
	ldr r4, [r5, #0x7c]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq .L0808A484
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L0808A486
.L0808A484:
	movs r2, #1
.L0808A486:
	adds r4, r2, #0
	cmp r4, #0
	bne .L0808A4AC
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808A4B4 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808A4B8 @ =gUnk_08100084
	ldr r3, .L0808A4BC @ =gUnk_08100088
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
.L0808A49E:
	bl func_08050E30
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
.L0808A4AC:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808A4B4: .4byte gUnk_08117ABC
.L0808A4B8: .4byte gUnk_08100084
.L0808A4BC: .4byte gUnk_08100088

	thumb_func_start func_0808A4C0
func_0808A4C0: @ 0x0808A4C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r6, #0
	bne .L0808A4DC
	adds r0, #0xfc
	ldr r0, [r0]
	bl func_0800F390
	ldr r0, [r5, #0x78]
	bl func_080CC0B4
	b .L0808A552
.L0808A4DC:
	cmp r6, #8
	bgt .L0808A512
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	ldr r4, [r5, #0x78]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	b .L0808A552
.L0808A512:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080CE184
	adds r1, r0, #0
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	bl GetFoodStackAt__6FridgeUi
	adds r4, r0, #0
	mov r0, sp
	bl __9FoodStack
	ldr r0, [sp]
	str r0, [r4]
	ldr r4, [r5, #0x7c]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
.L0808A552:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808A55C
func_0808A55C: @ 0x0808A55C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080CE294
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl GetSize__C8Rucksack
	mov r8, r0
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L0808A7C8 @ =gUnk_0810008C
	str r0, [sp]
	add r4, sp, #4
	movs r0, #1
	strb r0, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r8
	bl func_080CAFC4
	adds r6, r7, #0
	adds r6, #0x78
	adds r5, r0, #0
	ldr r1, [r7, #0x78]
	mov sb, r4
	cmp r5, r1
	beq .L0808A5D4
	cmp r1, #0
	beq .L0808A5D4
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808A5D4:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	adds r0, r7, #0
	mov r1, r8
	bl func_08088318
	movs r0, #0xcb
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L0808A7CC @ =gUnk_08100094
	str r0, [sp]
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl func_080CC15C
	adds r5, r7, #0
	adds r5, #0x7c
	adds r4, r0, #0
	ldr r1, [r7, #0x7c]
	cmp r4, r1
	beq .L0808A634
	cmp r1, #0
	beq .L0808A634
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808A634:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	movs r0, #0xc8
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CE2FC
	adds r4, r7, #0
	adds r4, #0x94
	adds r5, r0, #0
	ldr r0, [r4]
	str r4, [sp, #0x18]
	cmp r5, r0
	beq .L0808A660
	cmp r0, #0
	beq .L0808A660
	movs r1, #3
	bl func_080CE3DC
.L0808A660:
	str r5, [r4]
	ldr r1, [sp, #0x18]
	ldr r0, [r1]
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_080884F4
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	bl func_080CE598
	movs r0, #0x8c
	bl __builtin_new
	adds r1, r7, #0
	movs r2, #1
	bl func_080CD9B0
	movs r1, #0x8c
	adds r1, r1, r7
	mov r8, r1
	mov sb, r0
	ldr r5, [r1]
	mov r6, r8
	cmp sb, r5
	beq .L0808A6CA
	cmp r5, #0
	beq .L0808A6CA
	ldr r0, .L0808A7D0 @ =vtable_unk_080E5A28
	str r0, [r5, #0x24]
	adds r4, r5, #0
	adds r4, #0x1c
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
	adds r0, r5, #0
	bl __builtin_delete
.L0808A6CA:
	mov r2, sb
	mov r0, r8
	str r2, [r0]
	movs r0, #0x88
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CEC00
	movs r1, #0x90
	adds r1, r1, r7
	mov r8, r1
	mov sl, r0
	ldr r5, [r1]
	mov sb, r8
	cmp sl, r5
	beq .L0808A720
	cmp r5, #0
	beq .L0808A720
	adds r4, r5, #0
	adds r4, #0x74
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
	ldr r0, .L0808A7D0 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L0808A720:
	mov r2, sl
	mov r0, r8
	str r2, [r0]
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_080885AC
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0x10
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L0808A7D4 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0x14]
	ldr r1, .L0808A7D8 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r1, #0
	mov r8, r1
.L0808A786:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	adds r0, r7, #0
	bl func_080CE2C4
	ldr r3, [sp, #0x14]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808A786
	mov r2, r8
	cmp r2, #0
	beq .L0808A7AC
	b .L0808AB1C
.L0808A7AC:
	ldr r0, [r6]
	ldr r5, [r0, #4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi .L0808A786
	lsls r0, r0, #2
	ldr r1, .L0808A7DC @ =.L0808A7E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808A7C8: .4byte gUnk_0810008C
.L0808A7CC: .4byte gUnk_08100094
.L0808A7D0: .4byte vtable_unk_080E5A28
.L0808A7D4: .4byte vtable_unk_080E5B80
.L0808A7D8: .4byte 0x00000889
.L0808A7DC: .4byte .L0808A7E0
.L0808A7E0: @ jump table
	.4byte .L0808A7F4 @ case 0
	.4byte .L0808AA52 @ case 1
	.4byte .L0808AA88 @ case 2
	.4byte .L0808AAC6 @ case 3
	.4byte .L0808AAFA @ case 4
.L0808A7F4:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0808A81C
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #9
	ble .L0808A814
	cmp r0, #0xd
	bgt .L0808A814
	adds r0, r7, #0
	bl func_08088590
.L0808A814:
	ldr r0, [r6]
	bl func_080CDA44
	b .L0808A89A
.L0808A81C:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L0808A840
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #0xd
	ble .L0808A838
	adds r0, r7, #0
	bl func_08088574
.L0808A838:
	ldr r0, [r6]
	bl func_080CDB08
	b .L0808A89A
.L0808A840:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L0808A856
	ldr r0, [r6]
	bl func_080CDCD0
	b .L0808A89A
.L0808A856:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L0808A86C
	ldr r0, [r6]
	bl func_080CDC00
	b .L0808A89A
.L0808A86C:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L0808A88E
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L0808A890
.L0808A88E:
	movs r4, #1
.L0808A890:
	cmp r4, #0
	beq .L0808A8A6
	ldr r0, [r6]
	bl func_080CDD7C
.L0808A89A:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	b .L0808AA40
.L0808A8A6:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L0808A8B6
	b .L0808A9CE
.L0808A8B6:
	mov r2, sb
	ldr r3, [r2]
	adds r0, r3, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0808A8E6
	ldr r0, [r6]
	ldr r1, [r0, #4]
	cmp r1, #8
	bgt .L0808A8D6
	adds r0, r3, #0
	movs r2, #0
	bl func_080CEC84
	b .L0808AA40
.L0808A8D6:
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r3, #0
	bl func_080CEC84
	b .L0808AA40
.L0808A8E6:
	ldr r0, [r6]
	ldr r4, [r0, #4]
	adds r0, r3, #0
	bl func_080CF050
	cmp r4, r0
	bne .L0808A97E
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	cmp r0, #9
	ble .L0808A936
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r4, [r0]
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L0808A936
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_08088BA0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808A958
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r7, r2
	b .L0808A9BC
.L0808A936:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r4, r0, #0
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl func_08088688
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808A976
.L0808A958:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_080885AC
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r1, sb
	ldr r0, [r1]
	bl func_080CECD0
	b .L0808AA40
.L0808A976:
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r7, r2
	b .L0808A9BC
.L0808A97E:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_08088BA0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808A9B6
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_080885AC
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r2, sb
	ldr r0, [r2]
	bl func_080CECD0
	b .L0808AA40
.L0808A9B6:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
.L0808A9BC:
	ldr r0, [r0]
	cmp r0, #1
	beq .L0808AA40
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L0808AA40
.L0808A9CE:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0808AA28
	mov r2, sb
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0808A9F2
	adds r0, r1, #0
	bl func_080CECD0
	b .L0808AA40
.L0808A9F2:
	ldr r2, [sp, #0x14]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808AA40
	movs r0, #1
	mov r8, r0
	ldr r1, .L0808AA24 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L0808AA40
	.align 2, 0
.L0808AA24: .4byte 0x00000889
.L0808AA28:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L0808AA40
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808A2F4
.L0808AA40:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	cmp r5, r1
	bne .L0808AA4A
	b .L0808A786
.L0808AA4A:
	adds r0, r7, #0
	bl func_080885AC
	b .L0808A786
.L0808AA52:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808AA5E
	b .L0808A786
.L0808AA5E:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808AA80 @ =gUnk_08100084
	ldr r2, .L0808AA84 @ =gUnk_08100088
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	bl func_08050E0C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	b .L0808A786
	.align 2, 0
.L0808AA80: .4byte gUnk_08100084
.L0808AA84: .4byte gUnk_08100088
.L0808AA88:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808AA94
	b .L0808A786
.L0808AA94:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050DF0
	cmp r0, #1
	beq .L0808AAA6
	cmp r0, #2
	beq .L0808AABC
	b .L0808AB06
.L0808AAA6:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_08089AD8
	b .L0808AB06
.L0808AABC:
	mov r2, sb
	ldr r0, [r2]
	bl func_080CECD0
	b .L0808AB06
.L0808AAC6:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808AAD2
	b .L0808A786
.L0808AAD2:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050DF0
	cmp r0, #1
	bne .L0808AAE8
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808A4C0
.L0808AAE8:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_080885AC
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	b .L0808AB16
.L0808AAFA:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808AB06
	b .L0808A786
.L0808AB06:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_080885AC
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
.L0808AB16:
	movs r0, #0
	str r0, [r1]
	b .L0808A786
.L0808AB1C:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0808AB38
func_0808AB38: @ 0x0808AB38
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L0808AB64 @ =vtable_unk_080E7D58
	str r0, [r4]
	movs r0, #0x86
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r5, #0
	bl func_080882AC
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
.L0808AB64: .4byte vtable_unk_080E7D58

	thumb_func_start func_0808AB68
func_0808AB68: @ 0x0808AB68
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L0808ABA4 @ =vtable_unk_080E7D58
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L0808AB84
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808AB84:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L0808AB96
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808AB96:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0808ABA4: .4byte vtable_unk_080E7D58

	thumb_func_start func_0808ABA8
func_0808ABA8: @ 0x0808ABA8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_0808A55C
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0808ABC4
func_0808ABC4: @ 0x0808ABC4
	push {r4, r5, lr}
	adds r4, r0, #0
	bl func_080CE19C
	ldr r0, .L0808AC0C @ =vtable_unk_080E7D68
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x98
	movs r3, #0
	strb r3, [r0]
	adds r2, r4, #0
	adds r2, #0xfc
	ldr r1, [r4, #8]
	ldr r5, .L0808AC10 @ =0x00001C34
	adds r0, r1, r5
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r4, r0
	subs r5, #8
	adds r0, r1, r5
	str r0, [r2]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r4, r2
	adds r5, #0xc
	adds r1, r1, r5
	str r1, [r0]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r4, r1
	str r3, [r0]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L0808AC0C: .4byte vtable_unk_080E7D68
.L0808AC10: .4byte 0x00001C34

	thumb_func_start func_0808AC14
func_0808AC14: @ 0x0808AC14
	push {lr}
	ldr r2, .L0808AC24 @ =vtable_unk_080E7D68
	str r2, [r0, #4]
	bl func_080E3504
	pop {r0}
	bx r0
	.align 2, 0
.L0808AC24: .4byte vtable_unk_080E7D68

	thumb_func_start func_0808AC28
func_0808AC28: @ 0x0808AC28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	mov sb, r1
	movs r0, #1
	str r0, [sp, #0x34]
	cmp r1, #9
	bne .L0808AC42
	b .L0808B158
.L0808AC42:
	cmp r1, #0
	bne .L0808AC48
	b .L0808B158
.L0808AC48:
	cmp r1, #8
	ble .L0808AC4E
	b .L0808AF80
.L0808AC4E:
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	mov sl, r4
	cmp r0, #0
	beq .L0808ACE2
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L0808AC88
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808AC8A
.L0808AC88:
	movs r1, #1
.L0808AC8A:
	cmp r1, #0
	beq .L0808AC90
	b .L0808B158
.L0808AC90:
	ldr r4, [r7, #0x78]
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	bl func_080CAD14
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBDD4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	add r5, sp, #0x10
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	mov r2, sl
	ldr r0, [r2]
	adds r1, r5, #0
	b .L0808AF78
.L0808ACE2:
	ldr r0, [r7, #0x78]
	bl func_080CB2FC
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r5, sp, #0x14
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	adds r1, r5, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x20
	mov r3, sl
	ldr r1, [r3]
	adds r0, r4, #0
	movs r2, #2
	bl memcpy
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080CE1C4
	lsls r0, r0, #0x18
	mov r8, r5
	cmp r0, #0
	beq .L0808AD54
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808AD50 @ =gUnk_08117B10
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #2
	str r0, [r1]
	movs r0, #0
	str r0, [sp, #0x34]
	b .L0808B158
	.align 2, 0
.L0808AD50: .4byte gUnk_08117B10
.L0808AD54:
	movs r1, #0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq .L0808AD62
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne .L0808AD64
.L0808AD62:
	movs r1, #1
.L0808AD64:
	cmp r1, #0
	beq .L0808AD6A
	b .L0808AF18
.L0808AD6A:
	add r6, sp, #0x24
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r7, r1
	str r1, [sp, #0x38]
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #2
	bl memcpy
	add r5, sp, #0x20
	adds r0, r5, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x30
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x31
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808ADC0
	movs r1, #1
.L0808ADC0:
	cmp r1, #0
	beq .L0808AE96
	adds r0, r5, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	cmp r5, r0
	blo .L0808AE2A
	mov r2, sl
	ldr r4, [r2]
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	ldr r3, [sp, #0x38]
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x28
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	mov r1, sl
	ldr r0, [r1]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	b .L0808B158
.L0808AE2A:
	mov r2, sl
	ldr r0, [r2]
	adds r1, r5, #0
	bl AddAmount__9ToolStackUi
	ldr r3, [sp, #0x38]
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	ldr r4, [r7, #0x78]
	mov r1, sl
	ldr r0, [r1]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	ldr r2, [sp, #0x38]
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	b .L0808B158
.L0808AE96:
	ldr r4, [r7, #0x78]
	ldr r5, [sp, #0x18]
	ldr r6, [sp, #0x1c]
	mov r0, r8
	bl func_080CAD14
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBDD4
	ldr r3, [r7, #0x78]
	mov r8, r3
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	mov r4, sl
	ldr r6, [r4]
	ldr r0, [sp, #0x38]
	ldr r5, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r4, sp, #0x28
	adds r0, r4, #0
	adds r1, r5, #0
	bl ExtractToolAt__8RucksackUi
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r1, [sp, #0x38]
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #0x20
	b .L0808AF78
.L0808AF18:
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r2, [r7, #0x78]
	mov r8, r2
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	mov r4, sl
	ldr r1, [r4]
	movs r2, #2
	bl memcpy
	ldr r5, [r4]
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
.L0808AF78:
	movs r2, #2
	bl memcpy
	b .L0808B158
.L0808AF80:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B012
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L0808AFBA
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808AFBC
.L0808AFBA:
	movs r1, #1
.L0808AFBC:
	cmp r1, #0
	beq .L0808AFC2
	b .L0808B158
.L0808AFC2:
	ldr r0, [r7, #0x7c]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl func_080CD14C
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	add r5, sp, #0x10
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x14]
	bl func_0800F418
	b .L0808B158
.L0808B012:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #5
	bls .L0808B01E
	b .L0808B158
.L0808B01E:
	lsls r0, r0, #2
	ldr r1, .L0808B028 @ =.L0808B02C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808B028: .4byte .L0808B02C
.L0808B02C: @ jump table
	.4byte .L0808B044 @ case 0
	.4byte .L0808B044 @ case 1
	.4byte .L0808B154 @ case 2
	.4byte .L0808B154 @ case 3
	.4byte .L0808B154 @ case 4
	.4byte .L0808B158 @ case 5
.L0808B044:
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x10
	ldr r0, [r7, #0x7c]
	bl func_080CC720
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L0808B078
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808B07A
.L0808B078:
	movs r1, #1
.L0808B07A:
	cmp r1, #0
	bne .L0808B0FE
	ldr r0, [r7, #0x7c]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl func_080CD14C
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CCA40
	add r0, sp, #0x1c
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r7, r3
	ldr r1, [r6]
	bl func_0800F294
	ldr r0, [r6]
	bl func_0800F390
	add r4, sp, #0x20
	mov r8, r4
	movs r0, #0x82
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	mov r0, r8
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x1c]
	str r1, [r0]
	ldr r0, [r6]
	ldr r1, [sp, #0x20]
	str r1, [sp, #0x2c]
	bl func_0800F418
	b .L0808B158
.L0808B0FE:
	ldr r0, [r7, #0x7c]
	bl func_080CD4D4
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CCA40
	add r0, sp, #0x1c
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r1, [r4]
	bl func_0800F294
	ldr r0, [r4]
	bl func_0800F390
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x1c]
	str r1, [r0]
	b .L0808B158
.L0808B154:
	movs r3, #0
	str r3, [sp, #0x34]
.L0808B158:
	add r4, sp, #0x34
	ldrb r0, [r4]
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0808B16C
func_0808B16C: @ 0x0808B16C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r7, r0, #0
	mov sl, r1
	mov sb, r2
	movs r0, #1
	str r0, [sp, #0x38]
	cmp r2, #0
	beq .L0808B18A
	cmp r2, #9
	bne .L0808B190
.L0808B18A:
	adds r0, r7, #0
	mov r1, sl
	b .L0808B860
.L0808B190:
	mov r1, sl
	cmp r1, #0
	beq .L0808B198
	b .L0808B4D0
.L0808B198:
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	str r4, [sp, #0x44]
	cmp r0, #0
	beq .L0808B22E
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L0808B1D2
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808B1D4
.L0808B1D2:
	movs r1, #1
.L0808B1D4:
	cmp r1, #0
	beq .L0808B1DC
	bl .L0808BA4A
.L0808B1DC:
	ldr r4, [r7, #0x78]
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	bl func_080CAD14
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBDD4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	add r5, sp, #0x10
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r2, [sp, #0x44]
	ldr r0, [r2]
	adds r1, r5, #0
	b .L0808B4C8
.L0808B22E:
	ldr r0, [r7, #0x78]
	bl func_080CB2FC
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r5, sp, #0x14
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	adds r1, r5, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x20
	ldr r3, [sp, #0x44]
	ldr r1, [r3]
	adds r0, r4, #0
	movs r2, #2
	bl memcpy
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080CE1C4
	lsls r0, r0, #0x18
	mov r8, r5
	cmp r0, #0
	beq .L0808B2A0
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808B29C @ =gUnk_08117B10
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #2
	str r0, [r1]
	movs r0, #0
	str r0, [sp, #0x38]
	b .L0808BA4A
	.align 2, 0
.L0808B29C: .4byte gUnk_08117B10
.L0808B2A0:
	movs r1, #0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq .L0808B2AE
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne .L0808B2B0
.L0808B2AE:
	movs r1, #1
.L0808B2B0:
	cmp r1, #0
	beq .L0808B2B6
	b .L0808B466
.L0808B2B6:
	add r5, sp, #0x24
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #2
	bl memcpy
	add r6, sp, #0x20
	adds r0, r6, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x34
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x35
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808B30C
	movs r1, #1
.L0808B30C:
	cmp r1, #0
	beq .L0808B3E4
	adds r0, r5, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	cmp r5, r0
	blo .L0808B39A
	mov r2, sl
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	ldr r3, [sp, #0x44]
	ldr r5, [r3]
	add r4, sp, #0x28
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, sl
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	b .L0808BA4A
.L0808B39A:
	mov r1, sl
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl AddAmount__9ToolStackUi
	ldr r2, [sp, #0x44]
	ldr r0, [r2]
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	ldr r4, [r7, #0x78]
	ldr r3, [sp, #0x44]
	ldr r0, [r3]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, sl
	b .L0808B7A4
.L0808B3E4:
	ldr r4, [r7, #0x78]
	ldr r5, [sp, #0x18]
	ldr r6, [sp, #0x1c]
	mov r0, r8
	bl func_080CAD14
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBDD4
	ldr r1, [r7, #0x78]
	mov r8, r1
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	ldr r2, [sp, #0x44]
	ldr r6, [r2]
	mov r3, sl
	ldr r5, [r3]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r4, sp, #0x28
	adds r0, r4, #0
	adds r1, r5, #0
	bl ExtractToolAt__8RucksackUi
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r0, sl
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #0x20
	b .L0808B4C8
.L0808B466:
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r1, [r7, #0x78]
	mov r8, r1
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	ldr r3, [sp, #0x44]
	ldr r1, [r3]
	movs r2, #2
	bl memcpy
	ldr r4, [sp, #0x44]
	ldr r5, [r4]
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
.L0808B4C8:
	movs r2, #2
	bl memcpy
	b .L0808BA4A
.L0808B4D0:
	mov r0, sl
	cmp r0, #9
	bne .L0808B4D8
	b .L0808B85C
.L0808B4D8:
	mov r1, sl
	cmp r1, #8
	ble .L0808B4E0
	b .L0808B856
.L0808B4E0:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	ldr r4, [r2]
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r5, sp, #8
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #2
	bl memcpy
	mov r4, sp
	adds r4, #0xc
	str r4, [sp, #0x3c]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	ldr r1, [sp, #0x3c]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0x40]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	ldr r1, [sp, #0x40]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B580
	adds r0, r5, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B580
	b .L0808BA4A
.L0808B580:
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B5EE
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r1, r8
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x2c
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r2, [r7, #0x78]
	mov r8, r2
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	ldr r0, [sp, #0x40]
	b .L0808B842
.L0808B5EE:
	adds r0, r5, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B64A
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x2c
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r1, [r7, #0x78]
	mov r8, r1
	b .L0808B830
.L0808B64A:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x36
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x37
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808B678
	movs r1, #1
.L0808B678:
	cmp r1, #0
	bne .L0808B67E
	b .L0808B7C8
.L0808B67E:
	adds r0, r5, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	cmp r5, r0
	bls .L0808B72A
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0x2c
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	b .L0808BA4A
.L0808B72A:
	mov r1, r8
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl AddAmount__9ToolStackUi
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
.L0808B7A4:
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	b .L0808BA4A
.L0808B7C8:
	mov r1, r8
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r3, [r7, #0x78]
	mov r8, r3
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	ldr r0, [sp, #0x40]
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	ldr r4, [r7, #0x78]
	mov r8, r4
.L0808B830:
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	ldr r0, [sp, #0x3c]
.L0808B842:
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	b .L0808BA4A
.L0808B856:
	mov r0, sl
	cmp r0, #9
	bne .L0808B86C
.L0808B85C:
	adds r0, r7, #0
	mov r1, sb
.L0808B860:
	bl func_0808AC28
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x38]
	b .L0808BA4A
.L0808B86C:
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x10
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl func_080CC70C
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	add r4, sp, #0x1c
	mov r8, r4
	movs r0, #0x82
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0x1c]
	add r6, sp, #0x20
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B8F6
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B8F6
	b .L0808BA4A
.L0808B8F6:
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B96C
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x20]
	str r1, [r0]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x30
	bl __12RucksackItem
	ldr r0, [sp, #0x30]
	str r0, [r4]
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CCA40
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L0808BA4A
.L0808B96C:
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808B9E2
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x30
	bl __12RucksackItem
	ldr r0, [sp, #0x30]
	str r0, [r4]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x1c]
	str r1, [r0]
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CCA40
	b .L0808BA4A
.L0808B9E2:
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x20]
	str r1, [r0]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x1c]
	str r1, [r0]
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sl
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CCA40
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CCA40
.L0808BA4A:
	add r1, sp, #0x38
	ldrb r0, [r1]
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0808BA60
func_0808BA60: @ 0x0808BA60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r1, #0
	cmp r7, #8
	bgt .L0808BAA6
	cmp r7, #0
	bne .L0808BA78
	ldr r0, [r5, #0x78]
	bl func_080CB2FC
	b .L0808BA8C
.L0808BA78:
	ldr r4, [r5, #0x78]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
.L0808BA8C:
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq .L0808BA9C
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L0808BA9E
.L0808BA9C:
	movs r2, #1
.L0808BA9E:
	cmp r2, #0
	beq .L0808BAA4
	b .L0808BC00
.L0808BAA4:
	b .L0808BB8A
.L0808BAA6:
	cmp r7, #9
	bne .L0808BB18
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808BABE
	b .L0808BC00
.L0808BABE:
	ldr r0, [r4]
	bl func_0800F204
	adds r6, r0, #0
	cmp r6, #0
	bne .L0808BACC
	b .L0808BBE0
.L0808BACC:
	cmp r6, #1
	bne .L0808BB8A
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x10
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	bne .L0808BB8A
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808BB0C @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808BB10 @ =gUnk_081000A8
	ldr r3, .L0808BB14 @ =gUnk_081000AC
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	b .L0808BC00
	.align 2, 0
.L0808BB0C: .4byte gUnk_08117ABC
.L0808BB10: .4byte gUnk_081000A8
.L0808BB14: .4byte gUnk_081000AC
.L0808BB18:
	ldr r4, [r5, #0x7c]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq .L0808BB3C
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L0808BB3E
.L0808BB3C:
	movs r2, #1
.L0808BB3E:
	adds r6, r2, #0
	cmp r6, #0
	bne .L0808BC00
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	bl GetKind__C12RucksackItem
	adds r4, r0, #0
	cmp r4, #1
	bne .L0808BBE0
	add r0, sp, #0xc
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x11
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808BBB4
.L0808BB8A:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808BBB0 @ =gUnk_08117ADC
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #2
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L0808BC00
	.align 2, 0
.L0808BBB0: .4byte gUnk_08117ADC
.L0808BBB4:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808BBD4 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808BBD8 @ =gUnk_081000A8
	ldr r3, .L0808BBDC @ =gUnk_081000AC
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl func_08050E30
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	b .L0808BC00
	.align 2, 0
.L0808BBD4: .4byte gUnk_08117ABC
.L0808BBD8: .4byte gUnk_081000A8
.L0808BBDC: .4byte gUnk_081000AC
.L0808BBE0:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808BC08 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808BC0C @ =gUnk_081000A8
	ldr r3, .L0808BC10 @ =gUnk_081000AC
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	bl func_08050E30
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #1
	str r0, [r1]
.L0808BC00:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808BC08: .4byte gUnk_08117ABC
.L0808BC0C: .4byte gUnk_081000A8
.L0808BC10: .4byte gUnk_081000AC

	thumb_func_start func_0808BC14
func_0808BC14: @ 0x0808BC14
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r6, #9
	bne .L0808BC68
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #1
	bne .L0808BC4E
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #4
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x35
	bne .L0808BC4E
	ldr r0, [r5, #8]
	ldr r1, .L0808BC64 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800ED2C
.L0808BC4E:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl func_0800F390
	ldr r0, [r5, #0x7c]
	bl func_080CD4D4
	b .L0808BCC2
	.align 2, 0
.L0808BC64: .4byte 0x00001BD8
.L0808BC68:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	mov r0, sp
	bl GetKind__C12RucksackItem
	cmp r0, #1
	bne .L0808BCAE
	mov r0, sp
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #5
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x35
	bne .L0808BCAE
	ldr r0, [r5, #8]
	ldr r1, .L0808BCCC @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800ED2C
.L0808BCAE:
	ldr r4, [r5, #0x7c]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
.L0808BCC2:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0808BCCC: .4byte 0x00001BD8

	thumb_func_start func_0808BCD0
func_0808BCD0: @ 0x0808BCD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	mov r8, r1
	movs r7, #0
	cmp r1, #0
	beq .L0808BD42
.L0808BCE2:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	adds r1, r7, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808BD3C
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r5, #8]
	ldr r2, .L0808BD98 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E550
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetIconId__C4Tool
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, [r5, #0x78]
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	ldr r2, .L0808BD9C @ =gUnk_086678A0
	adds r3, r6, #0
	bl func_080CB304
.L0808BD3C:
	adds r7, #1
	cmp r7, r8
	blo .L0808BCE2
.L0808BD42:
	adds r7, r5, #0
	adds r7, #0xfc
	ldr r0, [r7]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808BD8A
	ldr r0, [r7]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r5, #8]
	ldr r2, .L0808BD98 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	bl GetIconId__C4Tool
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, [r5, #0x78]
	ldr r5, .L0808BD9C @ =gUnk_086678A0
	ldr r0, [r7]
	bl GetAmount__C9ToolStack
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBAF0
.L0808BD8A:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808BD98: .4byte 0x00001BD8
.L0808BD9C: .4byte gUnk_086678A0

	thumb_func_start func_0808BDA0
func_0808BDA0: @ 0x0808BDA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	cmp r6, r7
	bhs .L0808BE2A
.L0808BDAE:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808BE24
	movs r4, #0
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L0808BDDE
	cmp r0, #1
	beq .L0808BDF0
	b .L0808BE04
.L0808BDDE:
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	b .L0808BE00
.L0808BDF0:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	bl GetIconId__C7Article
.L0808BE00:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
.L0808BE04:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808BE14
	movs r4, #0xb0
	lsls r4, r4, #1
.L0808BE14:
	ldr r0, [r5, #0x7c]
	movs r1, #1
	str r1, [sp]
	adds r1, r6, #0
	ldr r2, .L0808BE54 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
.L0808BE24:
	adds r6, #1
	cmp r6, r7
	blo .L0808BDAE
.L0808BE2A:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808BE3E
	b .L0808BF80
.L0808BE3E:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #5
	bls .L0808BE4A
	b .L0808BF80
.L0808BE4A:
	lsls r0, r0, #2
	ldr r1, .L0808BE58 @ =.L0808BE5C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808BE54: .4byte gUnk_086678A0
.L0808BE58: .4byte .L0808BE5C
.L0808BE5C: @ jump table
	.4byte .L0808BE74 @ case 0
	.4byte .L0808BEB0 @ case 1
	.4byte .L0808BEF0 @ case 2
	.4byte .L0808BF24 @ case 3
	.4byte .L0808BF74 @ case 4
	.4byte .L0808BF80 @ case 5
.L0808BE74:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F20C
	add r0, sp, #4
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808BEA4
	movs r6, #0xb0
	lsls r6, r6, #1
.L0808BEA4:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BEAC @ =gUnk_086678A0
	adds r2, r6, #0
	b .L0808BF62
	.align 2, 0
.L0808BEAC: .4byte gUnk_086678A0
.L0808BEB0:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	bl GetIconId__C7Article
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808BEE4
	movs r6, #0xb0
	lsls r6, r6, #1
.L0808BEE4:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BEEC @ =gUnk_086678A0
	adds r2, r6, #0
	b .L0808BF62
	.align 2, 0
.L0808BEEC: .4byte gUnk_086678A0
.L0808BEF0:
	ldr r0, [r5, #8]
	ldr r2, .L0808BF08 @ =0x00001C70
	adds r0, r0, r2
	bl GetGrowthStage__C3Dog
	cmp r0, #0
	bne .L0808BF14
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BF0C @ =gUnk_0858BA28
	ldr r2, .L0808BF10 @ =0x000003DA
	b .L0808BF62
	.align 2, 0
.L0808BF08: .4byte 0x00001C70
.L0808BF0C: .4byte gUnk_0858BA28
.L0808BF10: .4byte 0x000003DA
.L0808BF14:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BF20 @ =gUnk_0858BA28
	movs r2, #0xdd
	lsls r2, r2, #2
	b .L0808BF62
	.align 2, 0
.L0808BF20: .4byte gUnk_0858BA28
.L0808BF24:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl func_0800F344
	adds r1, r0, #0
	ldr r0, [r5, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L0808BF80
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	bne .L0808BF5C
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BF54 @ =gUnk_0858BA28
	ldr r2, .L0808BF58 @ =0x0000073D
	b .L0808BF62
	.align 2, 0
.L0808BF54: .4byte gUnk_0858BA28
.L0808BF58: .4byte 0x0000073D
.L0808BF5C:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BF6C @ =gUnk_0858BA28
	ldr r2, .L0808BF70 @ =0x00000734
.L0808BF62:
	movs r3, #1
	bl func_080CCE58
	b .L0808BF80
	.align 2, 0
.L0808BF6C: .4byte gUnk_0858BA28
.L0808BF70: .4byte 0x00000734
.L0808BF74:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0808BF88 @ =gUnk_086678A0
	movs r2, #0x35
	movs r3, #1
	bl func_080CCE58
.L0808BF80:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808BF88: .4byte gUnk_086678A0

	thumb_func_start func_0808BF8C
func_0808BF8C: @ 0x0808BF8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov r8, r0
	adds r5, r6, #0
	adds r5, #0x98
	mov r1, r8
	strb r1, [r5]
	cmp r7, #0
	beq .L0808BFDA
	cmp r7, #9
	beq .L0808C000
	cmp r7, #8
	bgt .L0808C04E
	movs r0, #0x82
	lsls r0, r0, #1
	adds r0, r0, r6
	mov sb, r0
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C086
	b .L0808C01E
.L0808BFDA:
	adds r4, r6, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C086
	ldr r0, [r4]
	bl GetTool__C9ToolStack
	add r2, sp, #8
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl func_080CF05C
	b .L0808C084
.L0808C000:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r6, r1
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C086
	ldr r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CF67C
	b .L0808C084
.L0808C01E:
	adds r5, r6, #0
	adds r5, #0x98
	mov r0, sb
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	mov r2, sp
	adds r2, #9
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl func_080CF05C
	b .L0808C084
.L0808C04E:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp]
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C086
	ldr r2, [sp]
	str r2, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CFA38
.L0808C084:
	mov r8, r0
.L0808C086:
	mov r0, r8
	cmp r0, #0
	beq .L0808C09C
	adds r0, r6, #0
	adds r0, #0x80
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L0808C0AA
.L0808C09C:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L0808C0B8 @ =gUnk_081000B0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L0808C0AA:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808C0B8: .4byte gUnk_081000B0

	thumb_func_start func_0808C0BC
func_0808C0BC: @ 0x0808C0BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080CE294
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl GetSize__C8Rucksack
	mov r8, r0
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L0808C2F0 @ =gUnk_081000B4
	str r0, [sp]
	add r4, sp, #4
	movs r0, #1
	strb r0, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r8
	bl func_080CAFC4
	adds r6, r7, #0
	adds r6, #0x78
	adds r5, r0, #0
	ldr r1, [r7, #0x78]
	mov sb, r4
	cmp r5, r1
	beq .L0808C134
	cmp r1, #0
	beq .L0808C134
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808C134:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	adds r0, r7, #0
	mov r1, r8
	bl func_0808BCD0
	movs r0, #0xcb
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L0808C2F4 @ =gUnk_081000BC
	str r0, [sp]
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r3, r8
	bl func_080CC15C
	adds r5, r7, #0
	adds r5, #0x7c
	adds r4, r0, #0
	ldr r1, [r7, #0x7c]
	cmp r4, r1
	beq .L0808C194
	cmp r1, #0
	beq .L0808C194
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808C194:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	adds r0, r7, #0
	mov r1, r8
	bl func_0808BDA0
	movs r0, #0x8c
	bl __builtin_new
	adds r1, r7, #0
	movs r2, #1
	bl func_080CD9B0
	adds r6, r7, #0
	adds r6, #0x8c
	mov sb, r0
	ldr r5, [r6]
	mov r8, r6
	cmp sb, r5
	beq .L0808C1F4
	cmp r5, #0
	beq .L0808C1F4
	ldr r0, .L0808C2F8 @ =vtable_unk_080E5A28
	str r0, [r5, #0x24]
	adds r4, r5, #0
	adds r4, #0x1c
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
	adds r0, r5, #0
	bl __builtin_delete
.L0808C1F4:
	mov r0, sb
	str r0, [r6]
	movs r0, #0x88
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CEC00
	adds r6, r7, #0
	adds r6, #0x90
	mov sl, r0
	ldr r5, [r6]
	mov sb, r6
	cmp sl, r5
	beq .L0808C246
	cmp r5, #0
	beq .L0808C246
	adds r4, r5, #0
	adds r4, #0x74
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
	ldr r0, .L0808C2F8 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L0808C246:
	mov r1, sl
	str r1, [r6]
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808BF8C
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #8
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L0808C2FC @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0xc]
	ldr r1, .L0808C300 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r0, #0
	mov sl, r0
.L0808C2AC:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	adds r0, r7, #0
	bl func_080CE2C4
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808C2AC
	mov r1, sl
	cmp r1, #0
	beq .L0808C2D2
	b .L0808C550
.L0808C2D2:
	mov r4, r8
	ldr r0, [r4]
	ldr r6, [r0, #4]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r0, [r5]
	cmp r0, #1
	bne .L0808C2E6
	b .L0808C502
.L0808C2E6:
	cmp r0, #1
	bgt .L0808C304
	cmp r0, #0
	beq .L0808C30C
	b .L0808C2AC
	.align 2, 0
.L0808C2F0: .4byte gUnk_081000B4
.L0808C2F4: .4byte gUnk_081000BC
.L0808C2F8: .4byte vtable_unk_080E5A28
.L0808C2FC: .4byte vtable_unk_080E5B80
.L0808C300: .4byte 0x00000889
.L0808C304:
	cmp r0, #2
	bne .L0808C30A
	b .L0808C536
.L0808C30A:
	b .L0808C2AC
.L0808C30C:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0808C322
	ldr r0, [r4]
	bl func_080CDA44
	b .L0808C394
.L0808C322:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L0808C338
	ldr r0, [r4]
	bl func_080CDB08
	b .L0808C394
.L0808C338:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L0808C34E
	ldr r0, [r4]
	bl func_080CDCD0
	b .L0808C394
.L0808C34E:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L0808C364
	ldr r0, [r4]
	bl func_080CDC00
	b .L0808C394
.L0808C364:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L0808C386
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L0808C388
.L0808C386:
	movs r4, #1
.L0808C388:
	cmp r4, #0
	beq .L0808C3A0
	mov r1, r8
	ldr r0, [r1]
	bl func_080CDD7C
.L0808C394:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	b .L0808C4EE
.L0808C3A0:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L0808C47A
	mov r0, sb
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0808C3CC
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r2, #0
	movs r2, #0
	bl func_080CEC84
	b .L0808C4EE
.L0808C3CC:
	mov r1, r8
	ldr r0, [r1]
	ldr r4, [r0, #4]
	adds r0, r2, #0
	bl func_080CF050
	cmp r4, r0
	bne .L0808C406
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808AC28
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808C46E
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808BF8C
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	b .L0808C464
.L0808C406:
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #4]
	cmp r0, #8
	bgt .L0808C426
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF050
	cmp r0, #8
	bgt .L0808C46E
	mov r1, r8
	ldr r0, [r1]
	ldr r0, [r0, #4]
	cmp r0, #8
	ble .L0808C432
.L0808C426:
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF050
	cmp r0, #8
	ble .L0808C46E
.L0808C432:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	mov r2, r8
	ldr r0, [r2]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_0808B16C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808C46E
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808BF8C
.L0808C464:
	mov r2, sb
	ldr r0, [r2]
	bl func_080CECD0
	b .L0808C4EE
.L0808C46E:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L0808C4EE
.L0808C47A:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0808C4D4
	mov r0, sb
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0808C49E
	adds r0, r1, #0
	bl func_080CECD0
	b .L0808C4EE
.L0808C49E:
	ldr r2, [sp, #0xc]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808C4EE
	movs r1, #1
	mov sl, r1
	adds r0, r2, #0
	adds r0, #0xc
	ldr r1, .L0808C4D0 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L0808C4EE
	.align 2, 0
.L0808C4D0: .4byte 0x00000889
.L0808C4D4:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L0808C4EE
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808BA60
.L0808C4EE:
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #4]
	cmp r6, r1
	bne .L0808C4FA
	b .L0808C2AC
.L0808C4FA:
	adds r0, r7, #0
	bl func_0808BF8C
	b .L0808C2AC
.L0808C502:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808C50E
	b .L0808C2AC
.L0808C50E:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050DF0
	cmp r0, #1
	bne .L0808C524
	ldr r0, [r4]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808BC14
.L0808C524:
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808BF8C
	mov r0, sl
	str r0, [r5]
	b .L0808C2AC
.L0808C536:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808C542
	b .L0808C2AC
.L0808C542:
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0808BF8C
	mov r1, sl
	str r1, [r5]
	b .L0808C2AC
.L0808C550:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0808C56C
func_0808C56C: @ 0x0808C56C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L0808C598 @ =vtable_unk_080E7D74
	str r0, [r4]
	movs r0, #0x86
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r5, #0
	bl func_0808ABC4
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
.L0808C598: .4byte vtable_unk_080E7D74

	thumb_func_start func_0808C59C
func_0808C59C: @ 0x0808C59C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L0808C5D8 @ =vtable_unk_080E7D74
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L0808C5B8
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808C5B8:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L0808C5CA
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808C5CA:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0808C5D8: .4byte vtable_unk_080E7D74

	thumb_func_start func_0808C5DC
func_0808C5DC: @ 0x0808C5DC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_0808C0BC
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0808C5F8
func_0808C5F8: @ 0x0808C5F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl func_080CE19C
	ldr r0, .L0808C648 @ =vtable_unk_080E7D84
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x98
	movs r5, #0
	strb r5, [r0]
	adds r2, r6, #0
	adds r2, #0xfc
	ldr r0, [r6, #8]
	ldr r3, .L0808C64C @ =0x00001C2C
	adds r1, r0, r3
	str r1, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r2, r6, r1
	adds r3, #0xc
	adds r1, r0, r3
	str r1, [r2]
	movs r1, #0x82
	lsls r1, r1, #1
	adds r4, r6, r1
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl GetShelf__9FarmHouse
	str r0, [r4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r6, r1
	str r5, [r0]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L0808C648: .4byte vtable_unk_080E7D84
.L0808C64C: .4byte 0x00001C2C

	thumb_func_start func_0808C650
func_0808C650: @ 0x0808C650
	push {lr}
	ldr r2, .L0808C660 @ =vtable_unk_080E7D84
	str r2, [r0, #4]
	bl func_080E3504
	pop {r0}
	bx r0
	.align 2, 0
.L0808C660: .4byte vtable_unk_080E7D84

	thumb_func_start func_0808C664
func_0808C664: @ 0x0808C664
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0
	cmp r5, r7
	bhs .L0808C6EE
.L0808C672:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	adds r1, r5, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C6E8
	movs r4, #0
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L0808C6A2
	cmp r0, #1
	beq .L0808C6B4
	b .L0808C6C8
.L0808C6A2:
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	b .L0808C6C4
.L0808C6B4:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	bl GetIconId__C7Article
.L0808C6C4:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
.L0808C6C8:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808C6D8
	movs r4, #0xb0
	lsls r4, r4, #1
.L0808C6D8:
	ldr r0, [r6, #0x78]
	movs r1, #1
	str r1, [sp]
	adds r1, r5, #0
	ldr r2, .L0808C718 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CB304
.L0808C6E8:
	adds r5, #1
	cmp r5, r7
	blo .L0808C672
.L0808C6EE:
	adds r4, r6, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808C700
	b .L0808C834
.L0808C700:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #5
	bls .L0808C70C
	b .L0808C834
.L0808C70C:
	lsls r0, r0, #2
	ldr r1, .L0808C71C @ =.L0808C720
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808C718: .4byte gUnk_086678A0
.L0808C71C: .4byte .L0808C720
.L0808C720: @ jump table
	.4byte .L0808C738 @ case 0
	.4byte .L0808C770 @ case 1
	.4byte .L0808C7AC @ case 2
	.4byte .L0808C7E0 @ case 3
	.4byte .L0808C828 @ case 4
	.4byte .L0808C834 @ case 5
.L0808C738:
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F20C
	add r0, sp, #4
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808C762
	movs r5, #0xb0
	lsls r5, r5, #1
.L0808C762:
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C76C @ =gUnk_086678A0
	adds r2, r5, #0
	b .L0808C816
	.align 2, 0
.L0808C76C: .4byte gUnk_086678A0
.L0808C770:
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	bl GetIconId__C7Article
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808C79E
	movs r5, #0xb0
	lsls r5, r5, #1
.L0808C79E:
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C7A8 @ =gUnk_086678A0
	adds r2, r5, #0
	b .L0808C816
	.align 2, 0
.L0808C7A8: .4byte gUnk_086678A0
.L0808C7AC:
	ldr r0, [r6, #8]
	ldr r2, .L0808C7C4 @ =0x00001C70
	adds r0, r0, r2
	bl GetGrowthStage__C3Dog
	cmp r0, #0
	bne .L0808C7D0
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C7C8 @ =gUnk_0858BA28
	ldr r2, .L0808C7CC @ =0x000003DA
	b .L0808C816
	.align 2, 0
.L0808C7C4: .4byte 0x00001C70
.L0808C7C8: .4byte gUnk_0858BA28
.L0808C7CC: .4byte 0x000003DA
.L0808C7D0:
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C7DC @ =gUnk_0858BA28
	movs r2, #0xdd
	lsls r2, r2, #2
	b .L0808C816
	.align 2, 0
.L0808C7DC: .4byte gUnk_0858BA28
.L0808C7E0:
	ldr r0, [r4]
	bl func_0800F344
	adds r1, r0, #0
	ldr r0, [r6, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L0808C834
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	bne .L0808C810
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C808 @ =gUnk_0858BA28
	ldr r2, .L0808C80C @ =0x0000073D
	b .L0808C816
	.align 2, 0
.L0808C808: .4byte gUnk_0858BA28
.L0808C80C: .4byte 0x0000073D
.L0808C810:
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C820 @ =gUnk_0858BA28
	ldr r2, .L0808C824 @ =0x00000734
.L0808C816:
	movs r3, #1
	bl func_080CBAF0
	b .L0808C834
	.align 2, 0
.L0808C820: .4byte gUnk_0858BA28
.L0808C824: .4byte 0x00000734
.L0808C828:
	ldr r0, [r6, #0x78]
	ldr r1, .L0808C83C @ =gUnk_086678A0
	movs r2, #0x35
	movs r3, #1
	bl func_080CBAF0
.L0808C834:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808C83C: .4byte gUnk_086678A0

	thumb_func_start func_0808C840
func_0808C840: @ 0x0808C840
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0
.L0808C84A:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	lsls r1, r7, #3
	adds r1, r1, r5
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C8A4
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	ldr r1, [r6, #0x7c]
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r5, #0
	ldr r2, .L0808C8A0 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
	b .L0808C8AC
	.align 2, 0
.L0808C8A0: .4byte gUnk_086678A0
.L0808C8A4:
	ldr r0, [r6, #0x7c]
	adds r1, r5, #0
	bl func_080CCDEC
.L0808C8AC:
	adds r5, #1
	cmp r5, #7
	bls .L0808C84A
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808C8BC
func_0808C8BC: @ 0x0808C8BC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl func_080CEB80
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0808C840
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808C8D8
func_0808C8D8: @ 0x0808C8D8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl func_080CEBC0
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0808C840
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808C8F4
func_0808C8F4: @ 0x0808C8F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r7, #0
	adds r6, r5, #0
	adds r6, #0x98
	strb r7, [r6]
	cmp r1, #0
	bne .L0808C922
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C9A2
	ldr r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080CF67C
	b .L0808C9A0
.L0808C922:
	cmp r1, #8
	bgt .L0808C95C
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r4, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp]
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C9A2
	ldr r2, [sp]
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080CFA38
	b .L0808C9A0
.L0808C95C:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl func_080CE184
	lsls r4, r4, #3
	adds r6, r4, r0
	movs r0, #0x82
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	adds r1, r6, #0
	bl GetArticleStackAt__5ShelfUi
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808C9A2
	ldr r0, [r4]
	adds r1, r6, #0
	bl GetArticleStackAt__5ShelfUi
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetDesc__C7Article
.L0808C9A0:
	adds r7, r0, #0
.L0808C9A2:
	cmp r7, #0
	beq .L0808C9B6
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L0808C9C4
.L0808C9B6:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808C9CC @ =gUnk_081000D0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L0808C9C4:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808C9CC: .4byte gUnk_081000D0

	thumb_func_start func_0808C9D0
func_0808C9D0: @ 0x0808C9D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r7, r0, #0
	mov sb, r1
	str r2, [sp, #0x2c]
	movs r0, #1
	str r0, [sp, #0x30]
	cmp r1, #0
	bne .L0808C9EC
	b .L0808CEB0
.L0808C9EC:
	cmp r1, #8
	ble .L0808C9F2
	b .L0808CBBE
.L0808C9F2:
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	mov r8, r4
	cmp r0, #0
	beq .L0808CA80
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L0808CA2C
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808CA2E
.L0808CA2C:
	movs r1, #1
.L0808CA2E:
	cmp r1, #0
	beq .L0808CA34
	b .L0808CEB0
.L0808CA34:
	ldr r0, [r7, #0x78]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl func_080CBDD4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	add r5, sp, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x14]
	bl func_0800F418
	b .L0808CEB0
.L0808CA80:
	mov r3, r8
	ldr r0, [r3]
	bl func_0800F204
	cmp r0, #5
	bls .L0808CA8E
	b .L0808CEB0
.L0808CA8E:
	lsls r0, r0, #2
	ldr r1, .L0808CA98 @ =.L0808CA9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808CA98: .4byte .L0808CA9C
.L0808CA9C: @ jump table
	.4byte .L0808CAB4 @ case 0
	.4byte .L0808CAB4 @ case 1
	.4byte .L0808CDFE @ case 2
	.4byte .L0808CDFE @ case 3
	.4byte .L0808CDFE @ case 4
	.4byte .L0808CEB0 @ case 5
.L0808CAB4:
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x18
	ldr r0, [r7, #0x78]
	bl func_080CB2FC
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L0808CAE8
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808CAEA
.L0808CAE8:
	movs r1, #1
.L0808CAEA:
	cmp r1, #0
	bne .L0808CB6A
	ldr r0, [r7, #0x78]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	movs r3, #1
	bl func_080CBDD4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	add r0, sp, #0x10
	mov r4, r8
	ldr r1, [r4]
	bl func_0800F294
	ldr r0, [r4]
	bl func_0800F390
	add r6, sp, #0x14
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x10]
	str r1, [r0]
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [sp, #0x14]
	str r1, [sp, #0x24]
	bl func_0800F418
	b .L0808CEB0
.L0808CB6A:
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	add r0, sp, #0x24
	mov r2, r8
	ldr r1, [r2]
	bl func_0800F294
	mov r3, r8
	ldr r0, [r3]
	bl func_0800F390
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #0x24]
	str r1, [r0]
	b .L0808CEB0
.L0808CBBE:
	adds r0, r7, #0
	mov r1, sb
	ldr r2, [sp, #0x2c]
	bl func_080CE184
	mov sl, r0
	movs r1, #0x82
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	mov r8, r4
	cmp r0, #0
	beq .L0808CCAA
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808CC02
	b .L0808CEB0
.L0808CC02:
	ldr r4, [r4]
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0800F3E8
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl SubtractAmount__12ArticleStackUi
	ldr r4, [r7, #0x78]
	ldr r5, .L0808CC80 @ =gUnk_086678A0
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	add r0, sp, #0x28
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #1
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r2, [sp, #0x2c]
	cmp r0, r2
	beq .L0808CC56
	b .L0808CEB0
.L0808CC56:
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808CC84
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L0808CEB0
	.align 2, 0
.L0808CC80: .4byte gUnk_086678A0
.L0808CC84:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl GetAmount__C12ArticleStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L0808CEB0
.L0808CCAA:
	mov r3, r8
	ldr r0, [r3]
	bl func_0800F204
	cmp r0, #5
	bls .L0808CCB8
	b .L0808CEB0
.L0808CCB8:
	lsls r0, r0, #2
	ldr r1, .L0808CCC4 @ =.L0808CCC8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808CCC4: .4byte .L0808CCC8
.L0808CCC8: @ jump table
	.4byte .L0808CEAC @ case 0
	.4byte .L0808CCE0 @ case 1
	.4byte .L0808CEAC @ case 2
	.4byte .L0808CEAC @ case 3
	.4byte .L0808CEAC @ case 4
	.4byte .L0808CEB0 @ case 5
.L0808CCE0:
	mov r4, r8
	ldr r0, [r4]
	bl func_0800F258
	mov r6, sp
	adds r6, #0x2a
	strb r0, [r6]
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808CCFC
	b .L0808CE08
.L0808CCFC:
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	cmp r0, #1
	bls .L0808CD0C
	movs r4, #0
	str r4, [sp, #0x30]
	b .L0808CEB0
.L0808CD0C:
	ldr r0, [r4]
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808CDC0
	ldr r0, [r4]
	bl func_0800F390
	ldr r4, [r4]
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0800F3E8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #8
	movs r2, #0x2a
	add r2, sp
	ldrb r1, [r2]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x78]
	ldr r6, .L0808CDBC @ =gUnk_086678A0
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x29
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #1
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r3, [sp, #0x2c]
	cmp r0, r3
	beq .L0808CD90
	b .L0808CEB0
.L0808CD90:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x2a
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CC728
	b .L0808CEB0
	.align 2, 0
.L0808CDBC: .4byte gUnk_086678A0
.L0808CDC0:
	mov r0, sp
	adds r0, #0x2a
	bl GetId__C7Article
	adds r4, r0, #0
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x2b
	strb r1, [r0]
	bl GetId__C7Article
	eors r0, r4
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge .L0808CDFE
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808CE04 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #1
	str r0, [r1]
.L0808CDFE:
	movs r0, #0
	str r0, [sp, #0x30]
	b .L0808CEB0
	.align 2, 0
.L0808CE04: .4byte gUnk_081000D4
.L0808CE08:
	mov r1, r8
	ldr r0, [r1]
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808CE88
	mov r2, r8
	ldr r0, [r2]
	bl func_0800F390
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #8
	ldrb r1, [r6]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r4, [sp, #0x2c]
	cmp r0, r4
	bne .L0808CEB0
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808CE84 @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
	b .L0808CEB0
	.align 2, 0
.L0808CE84: .4byte gUnk_086678A0
.L0808CE88:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808CEA8 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #1
	str r0, [r1]
	movs r1, #0
	str r1, [sp, #0x30]
	b .L0808CEB0
	.align 2, 0
.L0808CEA8: .4byte gUnk_081000D4
.L0808CEAC:
	movs r2, #0
	str r2, [sp, #0x30]
.L0808CEB0:
	add r3, sp, #0x30
	ldrb r0, [r3]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0808CEC4
func_0808CEC4: @ 0x0808CEC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	adds r7, r0, #0
	str r1, [sp, #0x3c]
	mov sb, r2
	movs r0, #1
	str r0, [sp, #0x40]
	cmp r2, #0
	bne .L0808CEF0
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	b .L0808D042
.L0808CEF0:
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	beq .L0808CEF8
	b .L0808D0C0
.L0808CEF8:
	mov r2, sb
	cmp r2, #8
	bgt .L0808CF0C
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_0808C9D0
	bl .L0808DD3A
.L0808CF0C:
	adds r6, r7, #0
	adds r6, #0xfc
	ldr r0, [r6]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808CF32
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_0808C9D0
	bl .L0808DD3A
.L0808CF32:
	ldr r0, [r6]
	bl func_0800F204
	cmp r0, #1
	beq .L0808CF40
	bl .L0808D8A2
.L0808CF40:
	ldr r1, [r6]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	add r4, sp, #0x2c
	strb r0, [r4]
	adds r0, r7, #0
	adds r0, #0x94
	str r0, [sp, #0x44]
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_080CE184
	mov sl, r0
	add r5, sp, #8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #2
	bl memcpy
	adds r0, r5, #0
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D004
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808CFE4
	ldr r0, [r6]
	bl func_0800F390
	mov r2, r8
	ldr r0, [r2]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0x2c
	bl .L0808D83C
.L0808CFE4:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D000 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [sp, #0x40]
	str r2, [r0]
	bl .L0808D8A2
	.align 2, 0
.L0808D000: .4byte gUnk_081000D4
.L0808D004:
	adds r0, r4, #0
	bl GetId__C7Article
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x2d
	strb r1, [r0]
	bl GetId__C7Article
	eors r0, r4
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge .L0808D050
	adds r0, r5, #0
	bl GetAmount__C12ArticleStack
	cmp r0, #1
	beq .L0808D036
	bl .L0808D8EC
.L0808D036:
	ldr r1, [sp, #0x44]
	ldr r0, [r1]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
.L0808D042:
	bl func_0808C9D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x40]
	bl .L0808DD3A
.L0808D050:
	adds r0, r5, #0
	bl GetAmount__C12ArticleStack
	cmp r0, #0x63
	bne .L0808D05E
	bl .L0808D8A2
.L0808D05E:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808D09E
	ldr r0, [r6]
	bl func_0800F390
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl AddAmount__12ArticleStackUi
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r2, r8
	ldr r0, [r2]
	mov r1, sl
	bl .L0808DC7A
.L0808D09E:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D0BC @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, [sp, #0x40]
	str r1, [r0]
	bl .L0808D8EC
	.align 2, 0
.L0808D0BC: .4byte gUnk_081000D4
.L0808D0C0:
	ldr r3, [sp, #0x3c]
	cmp r3, #8
	ble .L0808D0C8
	b .L0808D636
.L0808D0C8:
	mov r0, sb
	cmp r0, #8
	ble .L0808D0D0
	b .L0808D296
.L0808D0D0:
	add r4, sp, #0x10
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	adds r1, r3, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl func_080CB2E8
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	add r4, sp, #0x1c
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl func_080CB2E8
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r6, sp, #8
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #8]
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D158
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D158
	bl .L0808DD3A
.L0808D158:
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D1D0
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #8]
	str r1, [r0]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x28
	bl __12RucksackItem
	ldr r0, [sp, #0x28]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #0x40]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	bl .L0808DD3A
.L0808D1D0:
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D22A
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x28
	bl __12RucksackItem
	ldr r0, [sp, #0x28]
	str r0, [r4]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #4]
	str r1, [r0]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	b .L0808D276
.L0808D22A:
	ldr r4, [r5]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #8]
	str r1, [r0]
	ldr r4, [r5]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r1, [sp, #4]
	str r1, [r0]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #0x40]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
.L0808D276:
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	ldr r0, [sp, #0x40]
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CB63C
	bl .L0808DD3A
.L0808D296:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r7, r1
	str r1, [sp, #0x48]
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_080CE184
	mov sl, r0
	add r4, sp, #8
	movs r2, #0x82
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	ldr r0, [r2]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D3A4
	add r0, sp, #8
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D302
	bl .L0808DD3A
.L0808D302:
	add r0, sp, #8
	bl GetArticle__C12ArticleStack
	mov r5, sp
	adds r5, #0x2e
	strb r0, [r5]
	ldr r3, [sp, #0x48]
	ldr r4, [r3]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0xc
	ldrb r1, [r5]
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0xc]
	str r0, [r4]
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl SubtractAmount__12ArticleStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808D388 @ =gUnk_086678A0
	ldr r0, [sp, #0x40]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_080CB304
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D38C
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	bl .L0808DBEC
	.align 2, 0
.L0808D388: .4byte gUnk_086678A0
.L0808D38C:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r2, r8
	ldr r0, [r2]
	mov r1, sl
	bl .L0808DC7A
.L0808D3A4:
	add r0, sp, #8
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D45E
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #1
	beq .L0808D3BC
	b .L0808D8A2
.L0808D3BC:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D3E8
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D3E4 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [sp, #0x40]
	str r2, [r0]
	b .L0808D8A2
	.align 2, 0
.L0808D3E4: .4byte gUnk_081000D4
.L0808D3E8:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	mov r6, sp
	adds r6, #0x2f
	strb r0, [r6]
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	add r5, sp, #0xc
	ldrb r1, [r6]
	adds r0, r5, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	ldr r2, [sp, #0x48]
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	b .L0808D83C
.L0808D45E:
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #1
	beq .L0808D46A
	b .L0808D85C
.L0808D46A:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	add r5, sp, #0x30
	strb r0, [r5]
	add r0, sp, #8
	bl GetArticle__C12ArticleStack
	mov r4, sp
	adds r4, #0x31
	strb r0, [r4]
	adds r0, r5, #0
	bl GetId__C7Article
	adds r6, r0, #0
	adds r0, r4, #0
	bl GetId__C7Article
	cmp r6, r0
	beq .L0808D49E
	add r0, sp, #8
	bl GetAmount__C12ArticleStack
	cmp r0, #1
	beq .L0808D49E
	b .L0808D8EC
.L0808D49E:
	add r0, sp, #0x30
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x31
	bl GetId__C7Article
	cmp r4, r0
	beq .L0808D598
	add r0, sp, #8
	bl GetAmount__C12ArticleStack
	mov r8, r0
	cmp r0, #1
	bne .L0808D598
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D4E8
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D4E4 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r7, r3
	mov r1, r8
	str r1, [r0]
	b .L0808D8EC
	.align 2, 0
.L0808D4E4: .4byte gUnk_081000D4
.L0808D4E8:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	add r0, sp, #0x30
	ldrb r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r5, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	movs r2, #0x31
	add r2, sp
	ldrb r1, [r2]
	adds r0, r4, #0
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0xc]
	str r0, [r5]
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x31
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r6, .L0808D594 @ =gUnk_086678A0
	mov r0, r8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CB304
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0x30
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r1, r8
	str r1, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_080CC728
	b .L0808DD3A
	.align 2, 0
.L0808D594: .4byte gUnk_086678A0
.L0808D598:
	add r0, sp, #8
	bl GetAmount__C12ArticleStack
	cmp r0, #0x63
	bne .L0808D5A4
	b .L0808D8EC
.L0808D5A4:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D5D4
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D5D0 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
	movs r0, #0
	str r0, [sp, #0x40]
	b .L0808DD3A
	.align 2, 0
.L0808D5D0: .4byte gUnk_081000D4
.L0808D5D4:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl AddAmount__12ArticleStackUi
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0xc
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	b .L0808DC7A
.L0808D636:
	adds r3, r7, #0
	adds r3, #0x90
	str r3, [sp, #0x50]
	ldr r0, [r3]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	bl func_080CE184
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x58]
	mov r1, sb
	cmp r1, #8
	ble .L0808D65A
	b .L0808D9B8
.L0808D65A:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	ldr r0, [r2]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r7, r3
	ldr r4, [r6]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #8]
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D6AC
	add r0, sp, #8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D6AC
	b .L0808DD3A
.L0808D6AC:
	add r0, sp, #8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D76C
	ldr r4, [r6]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0xc
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0xc]
	str r0, [r5]
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl SubtractAmount__12ArticleStackUi
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x32
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808D768 @ =gUnk_086678A0
	ldr r0, [sp, #0x40]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CB304
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	bl func_080CF054
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L0808D73E
	b .L0808DD3A
.L0808D73E:
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D754
	b .L0808DBE6
.L0808D754:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r3, r8
	ldr r0, [r3]
	b .L0808DC78
	.align 2, 0
.L0808D768: .4byte gUnk_086678A0
.L0808D76C:
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D862
	add r0, sp, #8
	bl GetKind__C12RucksackItem
	cmp r0, #1
	bne .L0808D85C
	add r0, sp, #8
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D7AC
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D7A8 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r2, [sp, #0x40]
	str r2, [r0]
	b .L0808D8A2
	.align 2, 0
.L0808D7A8: .4byte gUnk_081000D4
.L0808D7AC:
	ldr r4, [r6]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r5]
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r0, sp, #8
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r2, [sp, #0x50]
	ldr r0, [r2]
	bl func_080CF054
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L0808D820
	b .L0808DD3A
.L0808D820:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #8
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x33
	strb r1, [r0]
.L0808D83C:
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808D858 @ =gUnk_086678A0
	ldr r0, [sp, #0x40]
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
	b .L0808DD3A
	.align 2, 0
.L0808D858: .4byte gUnk_086678A0
.L0808D85C:
	movs r1, #0
	str r1, [sp, #0x40]
	b .L0808DD3A
.L0808D862:
	add r0, sp, #8
	bl GetKind__C12RucksackItem
	cmp r0, #1
	bne .L0808D8EC
	add r0, sp, #8
	bl GetArticle__C12RucksackItem
	mov r5, sp
	adds r5, #0x35
	strb r0, [r5]
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	add r4, sp, #0x34
	strb r0, [r4]
	adds r0, r4, #0
	bl GetId__C7Article
	adds r6, r0, #0
	adds r0, r5, #0
	bl GetId__C7Article
	mov sl, r5
	mov r8, r4
	cmp r6, r0
	beq .L0808D8A8
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	cmp r0, #1
	beq .L0808D8A8
.L0808D8A2:
	movs r3, #0
	str r3, [sp, #0x40]
	b .L0808DD3A
.L0808D8A8:
	mov r0, r8
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, sl
	bl GetId__C7Article
	cmp r4, r0
	bne .L0808D8BC
	b .L0808DD3A
.L0808D8BC:
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	adds r6, r0, #0
	cmp r6, #1
	beq .L0808D8CA
	b .L0808DD3A
.L0808D8CA:
	add r0, sp, #8
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808D8F8
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808D8F4 @ =gUnk_081000D4
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	str r6, [r0]
.L0808D8EC:
	movs r2, #0
	str r2, [sp, #0x40]
	b .L0808DD3A
	.align 2, 0
.L0808D8F4: .4byte gUnk_081000D4
.L0808D8F8:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	mov r0, sl
	ldrb r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r5, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r4, #0
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0xc]
	str r0, [r5]
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, r8
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, .L0808D9B4 @ =gUnk_086678A0
	mov r8, r0
	str r6, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CB304
	ldr r1, [sp, #0x58]
	ldr r0, [r1]
	bl func_080CF054
	adds r1, r7, #0
	adds r1, #0x94
	ldr r1, [r1]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L0808D98C
	b .L0808DD3A
.L0808D98C:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sl
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r6, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CC728
	b .L0808DD3A
	.align 2, 0
.L0808D9B4: .4byte gUnk_086678A0
.L0808D9B8:
	adds r2, r7, #0
	adds r2, #0x94
	str r2, [sp, #0x54]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_080CE184
	mov sl, r0
	movs r3, #0x82
	lsls r3, r3, #1
	adds r6, r7, r3
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #8
	mov r8, r0
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	mov r0, r8
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808DA16
	mov r0, r8
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808DA16
	b .L0808DD3A
.L0808DA16:
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808DAB8
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	mov r1, r8
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __12ArticleStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	bl func_080CF054
	ldr r2, [sp, #0x54]
	ldr r1, [r2]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L0808DA78
	b .L0808DD3A
.L0808DA78:
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x36
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	bl GetAmount__C12ArticleStack
	ldr r2, .L0808DAB4 @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CC728
	b .L0808DD3A
	.align 2, 0
.L0808DAB4: .4byte gUnk_086678A0
.L0808DAB8:
	mov r0, r8
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808DB30
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __12ArticleStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x37
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	ldr r2, .L0808DB2C @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CC728
	b .L0808DBD0
	.align 2, 0
.L0808DB2C: .4byte gUnk_086678A0
.L0808DB30:
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	add r0, sp, #0x38
	strb r1, [r0]
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, r8
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x39
	strb r1, [r0]
	bl GetId__C7Article
	movs r1, #0
	cmp r4, r0
	bne .L0808DB5C
	movs r1, #1
.L0808DB5C:
	cmp r1, #0
	bne .L0808DB62
	b .L0808DC8E
.L0808DB62:
	mov r0, r8
	bl GetAmount__C12ArticleStack
	adds r4, r0, #0
	movs r5, #0x63
	subs r4, r5, r4
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	cmp r4, r0
	blo .L0808DBFC
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __12ArticleStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__12ArticleStackUi
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl GetAmount__C12ArticleStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
.L0808DBD0:
	ldr r3, [sp, #0x50]
	ldr r0, [r3]
	bl func_080CF054
	ldr r2, [sp, #0x54]
	ldr r1, [r2]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	beq .L0808DBE6
	b .L0808DD3A
.L0808DBE6:
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
.L0808DBEC:
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L0808DD3A
.L0808DBFC:
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	mov r0, r8
	bl GetAmount__C12ArticleStack
	adds r1, r0, #0
	subs r1, r5, r1
	adds r0, r4, #0
	bl SubtractAmount__12ArticleStackUi
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	mov r0, r8
	bl GetAmount__C12ArticleStack
	adds r1, r0, #0
	subs r1, r5, r1
	adds r0, r4, #0
	bl AddAmount__12ArticleStackUi
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl GetAmount__C12ArticleStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	ldr r3, [sp, #0x50]
	ldr r0, [r3]
	bl func_080CF054
	ldr r2, [sp, #0x54]
	ldr r1, [r2]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	bne .L0808DD3A
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
.L0808DC78:
	ldr r1, [sp, #0x4c]
.L0808DC7A:
	bl GetArticleStackAt__5ShelfUi
	bl GetAmount__C12ArticleStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L0808DD3A
.L0808DC8E:
	ldr r0, [r6]
	ldr r1, [sp, #0x4c]
	bl GetArticleStackAt__5ShelfUi
	mov r1, r8
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3a
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C12ArticleStack
	ldr r3, .L0808DD50 @ =gUnk_086678A0
	mov sb, r3
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sb
	adds r3, r4, #0
	bl func_080CC728
	ldr r1, [sp, #0x50]
	ldr r0, [r1]
	bl func_080CF054
	ldr r2, [sp, #0x54]
	ldr r1, [r2]
	adds r1, #0xbc
	ldr r1, [r1]
	cmp r0, r1
	bne .L0808DD3A
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3b
	strb r1, [r0]
	bl GetIconId__C7Article
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	bl GetAmount__C12ArticleStack
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sb
	adds r3, r4, #0
	bl func_080CC728
.L0808DD3A:
	add r3, sp, #0x40
	ldrb r0, [r3]
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0808DD50: .4byte gUnk_086678A0

	thumb_func_start func_0808DD54
func_0808DD54: @ 0x0808DD54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	cmp r1, #0
	beq .L0808DD6C
	b .L0808DEC6
.L0808DD6C:
	movs r0, #0xfc
	adds r0, r0, r7
	mov sl, r0
	ldr r0, [r0]
	bl func_0800F258
	add r1, sp, #0x10
	mov r8, r1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	bl func_080CE184
	mov sb, r0
	movs r2, #0x82
	lsls r2, r2, #1
	adds r6, r7, r2
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808DE94
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	movs r1, #0x11
	add r1, sp
	mov r8, r1
	strb r0, [r1]
	add r0, sp, #0x10
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, r8
	bl GetId__C7Article
	cmp r4, r0
	bne .L0808DE18
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl AddAmount__12ArticleStackUi
	mov r2, sl
	ldr r0, [r2]
	bl func_0800F390
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	bl GetAmount__C12ArticleStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L0808E0DC
.L0808DE18:
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #8
	mov r0, sp
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r1, sl
	ldr r0, [r1]
	bl func_0800F390
	mov r2, sl
	ldr r0, [r2]
	mov r2, r8
	ldrb r1, [r2]
	bl func_0800F3E8
	ldr r4, [r7, #0x78]
	ldr r6, .L0808DE90 @ =gUnk_086678A0
	mov r0, r8
	bl GetIconId__C7Article
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #1
	bl func_080CBAF0
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	add r0, sp, #0x10
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	b .L0808E0D8
	.align 2, 0
.L0808DE90: .4byte gUnk_086678A0
.L0808DE94:
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #8
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r1, sl
	ldr r0, [r1]
	bl func_0800F390
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	b .L0808E0B4
.L0808DEC6:
	ldr r2, [sp, #0x18]
	cmp r2, #8
	ble .L0808DECE
	b .L0808E0E8
.L0808DECE:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	ldr r4, [r0]
	adds r0, r7, #0
	adds r1, r2, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	movs r1, #0x12
	add r1, sp
	mov r8, r1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	bl func_080CE184
	mov sb, r0
	movs r2, #0x82
	lsls r2, r2, #1
	adds r6, r7, r2
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808DF30
	b .L0808E05C
.L0808DF30:
	add r0, sp, #4
	bl GetArticle__C12ArticleStack
	movs r1, #0x13
	add r1, sp
	mov r8, r1
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x12
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, r8
	bl GetId__C7Article
	cmp r4, r0
	bne .L0808DFBC
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	movs r1, #1
	bl AddAmount__12ArticleStackUi
	mov r2, sl
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0xc
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	bl GetAmount__C12ArticleStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L0808E0DC
.L0808DFBC:
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #0xc
	mov r0, sp
	ldrb r1, [r0, #0x12]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r1, sl
	ldr r5, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r4, #0
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0xc]
	str r0, [r5]
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, r8
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, .L0808E058 @ =gUnk_086678A0
	mov r8, r0
	movs r5, #1
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CB304
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x12
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r5, [sp]
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	b .L0808E0D8
	.align 2, 0
.L0808E058: .4byte gUnk_086678A0
.L0808E05C:
	ldr r0, [r6]
	mov r1, sb
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	add r5, sp, #0xc
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r5, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r0, sl
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
.L0808E0B4:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, r8
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808E0E4 @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
.L0808E0D8:
	bl func_080CC728
.L0808E0DC:
	adds r7, #0x90
	str r7, [sp, #0x20]
	b .L0808E426
	.align 2, 0
.L0808E0E4: .4byte gUnk_086678A0
.L0808E0E8:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	cmp r1, r2
	bne .L0808E0F4
	movs r0, #0
	str r0, [sp, #0x1c]
.L0808E0F4:
	adds r4, r7, #0
	adds r4, #0x90
	ldr r0, [r4]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	bl func_080CE184
	mov sl, r0
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	str r4, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	cmp r2, #0
	beq .L0808E12E
	b .L0808E27C
.L0808E12E:
	movs r0, #0xfc
	adds r0, r0, r7
	mov sb, r0
	ldr r0, [r0]
	bl func_0800F258
	mov r6, sp
	adds r6, #0x15
	strb r0, [r6]
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808E204
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl GetArticle__C12ArticleStack
	add r6, sp, #0x14
	strb r0, [r6]
	adds r0, r6, #0
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x15
	bl GetId__C7Article
	cmp r4, r0
	bne .L0808E174
	b .L0808E426
.L0808E174:
	mov r2, sb
	ldr r0, [r2]
	bl func_0800F390
	mov r1, sb
	ldr r0, [r1]
	ldrb r1, [r6]
	bl func_0800F3E8
	mov r2, r8
	ldr r0, [r2]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #8
	mov r0, sp
	ldrb r1, [r0, #0x15]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x78]
	ldr r1, .L0808E200 @ =gUnk_086678A0
	mov r8, r1
	adds r0, r6, #0
	bl GetIconId__C7Article
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	mov r1, r8
	movs r3, #1
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r2, [sp, #0x20]
	ldr r0, [r2]
	bl func_080CF054
	cmp r4, r0
	beq .L0808E1DE
	b .L0808E426
.L0808E1DE:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x15
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #1
	str r0, [sp]
	b .L0808E380
	.align 2, 0
.L0808E200: .4byte gUnk_086678A0
.L0808E204:
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	add r4, sp, #8
	ldrb r1, [r6]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r2, sb
	ldr r0, [r2]
	bl func_0800F390
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x20]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L0808E24C
	b .L0808E426
.L0808E24C:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808E278 @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
	b .L0808E426
	.align 2, 0
.L0808E278: .4byte gUnk_086678A0
.L0808E27C:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sb, r2
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	mov r6, sp
	adds r6, #0x17
	strb r0, [r6]
	add r0, sp, #4
	bl IsEmpty__C12ArticleStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808E390
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	bl GetArticle__C12ArticleStack
	mov r6, sp
	adds r6, #0x16
	strb r0, [r6]
	adds r0, r6, #0
	bl GetId__C7Article
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x17
	bl GetId__C7Article
	cmp r4, r0
	bne .L0808E2D8
	b .L0808E426
.L0808E2D8:
	mov r2, sb
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #8
	ldrb r1, [r6]
	adds r0, r4, #0
	bl __12RucksackItemG7Article
	ldr r0, [sp, #8]
	str r0, [r5]
	mov r1, r8
	ldr r0, [r1]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r5, r0, #0
	mov r2, sp
	ldrb r1, [r2, #0x17]
	adds r0, r4, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r5, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r0, .L0808E38C @ =gUnk_086678A0
	mov r8, r0
	movs r6, #1
	str r6, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CB304
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x20]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	bne .L0808E426
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r0, sp
	adds r0, #0x17
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	str r6, [sp]
.L0808E380:
	adds r0, r5, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080CC728
	b .L0808E426
	.align 2, 0
.L0808E38C: .4byte gUnk_086678A0
.L0808E390:
	mov r2, r8
	ldr r0, [r2]
	mov r1, sl
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	add r5, sp, #8
	ldrb r1, [r6]
	adds r0, r5, #0
	movs r2, #1
	bl __12ArticleStackG7ArticleUi
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r0, sb
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	adds r0, r5, #0
	bl __12RucksackItem
	ldr r0, [sp, #8]
	str r0, [r4]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x1c]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x20]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	bne .L0808E426
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x18]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetIconId__C7Article
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldr r2, .L0808E440 @ =gUnk_086678A0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CC728
.L0808E426:
	ldr r2, [sp, #0x20]
	ldr r0, [r2]
	bl func_080CECD0
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808E440: .4byte gUnk_086678A0

	thumb_func_start func_0808E444
func_0808E444: @ 0x0808E444
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r1, #0
	cmp r7, #0
	bne .L0808E4D0
	adds r4, r5, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808E462
	b .L0808E648
.L0808E462:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #0
	beq .L0808E472
	cmp r0, #1
	beq .L0808E494
	b .L0808E5FC
.L0808E472:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808E488 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808E48C @ =gUnk_08100120
	ldr r3, .L0808E490 @ =gUnk_08100124
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	b .L0808E63A
	.align 2, 0
.L0808E488: .4byte gUnk_08117ABC
.L0808E48C: .4byte gUnk_08100120
.L0808E490: .4byte gUnk_08100124
.L0808E494:
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x10
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808E4B0
	b .L0808E5FC
.L0808E4B0:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808E4C4 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808E4C8 @ =gUnk_08100120
	ldr r3, .L0808E4CC @ =gUnk_08100124
	str r7, [sp]
	str r7, [sp, #4]
	str r7, [sp, #8]
	b .L0808E63A
	.align 2, 0
.L0808E4C4: .4byte gUnk_08117ABC
.L0808E4C8: .4byte gUnk_08100120
.L0808E4CC: .4byte gUnk_08100124
.L0808E4D0:
	cmp r7, #8
	bgt .L0808E588
	ldr r4, [r5, #0x78]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq .L0808E4F8
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L0808E4FA
.L0808E4F8:
	movs r2, #1
.L0808E4FA:
	adds r6, r2, #0
	cmp r6, #0
	beq .L0808E502
	b .L0808E648
.L0808E502:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0xc]
	add r0, sp, #0xc
	bl GetKind__C12RucksackItem
	cmp r0, #1
	bne .L0808E568
	add r0, sp, #0xc
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x11
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808E5FC
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808E55C @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808E560 @ =gUnk_08100120
	ldr r3, .L0808E564 @ =gUnk_08100124
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	b .L0808E63A
	.align 2, 0
.L0808E55C: .4byte gUnk_08117ABC
.L0808E560: .4byte gUnk_08100120
.L0808E564: .4byte gUnk_08100124
.L0808E568:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808E57C @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808E580 @ =gUnk_08100120
	ldr r3, .L0808E584 @ =gUnk_08100124
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	b .L0808E63A
	.align 2, 0
.L0808E57C: .4byte gUnk_08117ABC
.L0808E580: .4byte gUnk_08100120
.L0808E584: .4byte gUnk_08100124
.L0808E588:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r7, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetArticleStackAt__5ShelfUi
	adds r1, r0, #0
	add r0, sp, #0xc
	movs r2, #2
	bl memcpy
	ldr r4, [r5, #0x7c]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	adds r1, r0, #0
	movs r2, #0
	ldr r0, [r1, #4]
	cmp r0, #0
	beq .L0808E5D8
	ldr r0, [r1, #8]
	cmp r0, #0
	bne .L0808E5DA
.L0808E5D8:
	movs r2, #1
.L0808E5DA:
	cmp r2, #0
	bne .L0808E648
	add r0, sp, #0xc
	bl GetArticle__C12ArticleStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x12
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq .L0808E628
.L0808E5FC:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808E624 @ =gUnk_08117ADC
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L0808E648
	.align 2, 0
.L0808E624: .4byte gUnk_08117ADC
.L0808E628:
	adds r0, r5, #0
	adds r0, #0x80
	ldr r1, .L0808E650 @ =gUnk_08117ABC
	ldr r1, [r1]
	ldr r2, .L0808E654 @ =gUnk_08100120
	ldr r3, .L0808E658 @ =gUnk_08100124
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
.L0808E63A:
	bl func_08050E30
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
.L0808E648:
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808E650: .4byte gUnk_08117ABC
.L0808E654: .4byte gUnk_08100120
.L0808E658: .4byte gUnk_08100124

	thumb_func_start func_0808E65C
func_0808E65C: @ 0x0808E65C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r6, #0
	bne .L0808E678
	adds r0, #0xfc
	ldr r0, [r0]
	bl func_0800F390
	ldr r0, [r5, #0x78]
	bl func_080CC0B4
	b .L0808E6F4
.L0808E678:
	cmp r6, #8
	bgt .L0808E6AE
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl ExtractItemAt__8RucksackUi
	ldr r4, [r5, #0x78]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	b .L0808E6F4
.L0808E6AE:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080CE184
	adds r1, r0, #0
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r0, [r0]
	bl GetArticleStackAt__5ShelfUi
	adds r4, r0, #0
	mov r0, sp
	bl __12ArticleStack
	adds r0, r4, #0
	mov r1, sp
	movs r2, #2
	bl memcpy
	ldr r4, [r5, #0x7c]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
.L0808E6F4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start func_0808E6FC
func_0808E6FC: @ 0x0808E6FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080CE294
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl GetSize__C8Rucksack
	mov r8, r0
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L0808E968 @ =gUnk_08100128
	str r0, [sp]
	add r4, sp, #4
	movs r0, #1
	strb r0, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r8
	bl func_080CAFC4
	adds r6, r7, #0
	adds r6, #0x78
	adds r5, r0, #0
	ldr r1, [r7, #0x78]
	mov sb, r4
	cmp r5, r1
	beq .L0808E774
	cmp r1, #0
	beq .L0808E774
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808E774:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	adds r0, r7, #0
	mov r1, r8
	bl func_0808C664
	movs r0, #0xcb
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L0808E96C @ =gUnk_08100130
	str r0, [sp]
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl func_080CC15C
	adds r5, r7, #0
	adds r5, #0x7c
	adds r4, r0, #0
	ldr r1, [r7, #0x7c]
	cmp r4, r1
	beq .L0808E7D4
	cmp r1, #0
	beq .L0808E7D4
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808E7D4:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	movs r0, #0xc8
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CE2FC
	adds r4, r7, #0
	adds r4, #0x94
	adds r5, r0, #0
	ldr r0, [r4]
	str r4, [sp, #0x18]
	cmp r5, r0
	beq .L0808E800
	cmp r0, #0
	beq .L0808E800
	movs r1, #3
	bl func_080CE3DC
.L0808E800:
	str r5, [r4]
	ldr r1, [sp, #0x18]
	ldr r0, [r1]
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_0808C840
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	bl func_080CE598
	movs r0, #0x8c
	bl __builtin_new
	adds r1, r7, #0
	movs r2, #1
	bl func_080CD9B0
	movs r1, #0x8c
	adds r1, r1, r7
	mov r8, r1
	mov sb, r0
	ldr r5, [r1]
	mov r6, r8
	cmp sb, r5
	beq .L0808E86A
	cmp r5, #0
	beq .L0808E86A
	ldr r0, .L0808E970 @ =vtable_unk_080E5A28
	str r0, [r5, #0x24]
	adds r4, r5, #0
	adds r4, #0x1c
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
	adds r0, r5, #0
	bl __builtin_delete
.L0808E86A:
	mov r2, sb
	mov r0, r8
	str r2, [r0]
	movs r0, #0x88
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CEC00
	movs r1, #0x90
	adds r1, r1, r7
	mov r8, r1
	mov sl, r0
	ldr r5, [r1]
	mov sb, r8
	cmp sl, r5
	beq .L0808E8C0
	cmp r5, #0
	beq .L0808E8C0
	adds r4, r5, #0
	adds r4, #0x74
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
	ldr r0, .L0808E970 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L0808E8C0:
	mov r2, sl
	mov r0, r8
	str r2, [r0]
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808C8F4
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0x10
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L0808E974 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0x14]
	ldr r1, .L0808E978 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r1, #0
	mov r8, r1
.L0808E926:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	adds r0, r7, #0
	bl func_080CE2C4
	ldr r3, [sp, #0x14]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808E926
	mov r2, r8
	cmp r2, #0
	beq .L0808E94C
	b .L0808ECBC
.L0808E94C:
	ldr r0, [r6]
	ldr r5, [r0, #4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi .L0808E926
	lsls r0, r0, #2
	ldr r1, .L0808E97C @ =.L0808E980
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0808E968: .4byte gUnk_08100128
.L0808E96C: .4byte gUnk_08100130
.L0808E970: .4byte vtable_unk_080E5A28
.L0808E974: .4byte vtable_unk_080E5B80
.L0808E978: .4byte 0x00000889
.L0808E97C: .4byte .L0808E980
.L0808E980: @ jump table
	.4byte .L0808E994 @ case 0
	.4byte .L0808EBF2 @ case 1
	.4byte .L0808EC28 @ case 2
	.4byte .L0808EC66 @ case 3
	.4byte .L0808EC9A @ case 4
.L0808E994:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0808E9BC
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #9
	ble .L0808E9B4
	cmp r0, #0xd
	bgt .L0808E9B4
	adds r0, r7, #0
	bl func_0808C8D8
.L0808E9B4:
	ldr r0, [r6]
	bl func_080CDA44
	b .L0808EA3A
.L0808E9BC:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L0808E9E0
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #0xd
	ble .L0808E9D8
	adds r0, r7, #0
	bl func_0808C8BC
.L0808E9D8:
	ldr r0, [r6]
	bl func_080CDB08
	b .L0808EA3A
.L0808E9E0:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L0808E9F6
	ldr r0, [r6]
	bl func_080CDCD0
	b .L0808EA3A
.L0808E9F6:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L0808EA0C
	ldr r0, [r6]
	bl func_080CDC00
	b .L0808EA3A
.L0808EA0C:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L0808EA2E
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L0808EA30
.L0808EA2E:
	movs r4, #1
.L0808EA30:
	cmp r4, #0
	beq .L0808EA46
	ldr r0, [r6]
	bl func_080CDD7C
.L0808EA3A:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	b .L0808EBE0
.L0808EA46:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L0808EA56
	b .L0808EB6E
.L0808EA56:
	mov r2, sb
	ldr r3, [r2]
	adds r0, r3, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0808EA86
	ldr r0, [r6]
	ldr r1, [r0, #4]
	cmp r1, #8
	bgt .L0808EA76
	adds r0, r3, #0
	movs r2, #0
	bl func_080CEC84
	b .L0808EBE0
.L0808EA76:
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r3, #0
	bl func_080CEC84
	b .L0808EBE0
.L0808EA86:
	ldr r0, [r6]
	ldr r4, [r0, #4]
	adds r0, r3, #0
	bl func_080CF050
	cmp r4, r0
	bne .L0808EB1E
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	cmp r0, #9
	ble .L0808EAD6
	ldr r2, [sp, #0x18]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r4, [r0]
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L0808EAD6
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_0808CEC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808EAF8
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r7, r2
	b .L0808EB5C
.L0808EAD6:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r4, r0, #0
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl func_0808C9D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808EB16
.L0808EAF8:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808C8F4
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r1, sb
	ldr r0, [r1]
	bl func_080CECD0
	b .L0808EBE0
.L0808EB16:
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r7, r2
	b .L0808EB5C
.L0808EB1E:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_0808CEC4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808EB56
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808C8F4
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r2, sb
	ldr r0, [r2]
	bl func_080CECD0
	b .L0808EBE0
.L0808EB56:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
.L0808EB5C:
	ldr r0, [r0]
	cmp r0, #1
	beq .L0808EBE0
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L0808EBE0
.L0808EB6E:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0808EBC8
	mov r2, sb
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0808EB92
	adds r0, r1, #0
	bl func_080CECD0
	b .L0808EBE0
.L0808EB92:
	ldr r2, [sp, #0x14]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0808EBE0
	movs r0, #1
	mov r8, r0
	ldr r1, .L0808EBC4 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L0808EBE0
	.align 2, 0
.L0808EBC4: .4byte 0x00000889
.L0808EBC8:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L0808EBE0
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808E444
.L0808EBE0:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	cmp r5, r1
	bne .L0808EBEA
	b .L0808E926
.L0808EBEA:
	adds r0, r7, #0
	bl func_0808C8F4
	b .L0808E926
.L0808EBF2:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808EBFE
	b .L0808E926
.L0808EBFE:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808EC20 @ =gUnk_08100120
	ldr r2, .L0808EC24 @ =gUnk_08100124
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	bl func_08050E0C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	b .L0808E926
	.align 2, 0
.L0808EC20: .4byte gUnk_08100120
.L0808EC24: .4byte gUnk_08100124
.L0808EC28:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808EC34
	b .L0808E926
.L0808EC34:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050DF0
	cmp r0, #1
	beq .L0808EC46
	cmp r0, #2
	beq .L0808EC5C
	b .L0808ECA6
.L0808EC46:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_0808DD54
	b .L0808ECA6
.L0808EC5C:
	mov r2, sb
	ldr r0, [r2]
	bl func_080CECD0
	b .L0808ECA6
.L0808EC66:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808EC72
	b .L0808E926
.L0808EC72:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050DF0
	cmp r0, #1
	bne .L0808EC88
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808E65C
.L0808EC88:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808C8F4
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	b .L0808ECB6
.L0808EC9A:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808ECA6
	b .L0808E926
.L0808ECA6:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808C8F4
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
.L0808ECB6:
	movs r0, #0
	str r0, [r1]
	b .L0808E926
.L0808ECBC:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0808ECD8
func_0808ECD8: @ 0x0808ECD8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L0808ED04 @ =vtable_unk_080E7D90
	str r0, [r4]
	movs r0, #0x86
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r5, #0
	bl func_0808C5F8
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
.L0808ED04: .4byte vtable_unk_080E7D90

	thumb_func_start func_0808ED08
func_0808ED08: @ 0x0808ED08
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L0808ED44 @ =vtable_unk_080E7D90
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L0808ED24
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808ED24:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L0808ED36
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0808ED36:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0808ED44: .4byte vtable_unk_080E7D90

	thumb_func_start func_0808ED48
func_0808ED48: @ 0x0808ED48
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_0808E6FC
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0808ED64
func_0808ED64: @ 0x0808ED64
	push {r4, r5, lr}
	adds r4, r0, #0
	bl func_080CE19C
	ldr r0, .L0808EDB0 @ =vtable_unk_080E7DA0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x98
	movs r3, #0
	strb r3, [r0]
	adds r2, r4, #0
	adds r2, #0xfc
	ldr r1, [r4, #8]
	ldr r5, .L0808EDB4 @ =0x00001C34
	adds r0, r1, r5
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r4, r0
	adds r5, #4
	adds r0, r1, r5
	str r0, [r2]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r4, r2
	movs r5, #0xe0
	lsls r5, r5, #2
	adds r1, r1, r5
	str r1, [r0]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r4, r1
	str r3, [r0]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L0808EDB0: .4byte vtable_unk_080E7DA0
.L0808EDB4: .4byte 0x00001C34

	thumb_func_start func_0808EDB8
func_0808EDB8: @ 0x0808EDB8
	push {lr}
	ldr r2, .L0808EDC8 @ =vtable_unk_080E7DA0
	str r2, [r0, #4]
	bl func_080E3504
	pop {r0}
	bx r0
	.align 2, 0
.L0808EDC8: .4byte vtable_unk_080E7DA0

	thumb_func_start func_0808EDCC
func_0808EDCC: @ 0x0808EDCC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	mov r8, r1
	movs r7, #0
	cmp r1, #0
	beq .L0808EE3E
.L0808EDDE:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	adds r1, r7, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808EE38
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r5, #8]
	ldr r2, .L0808EE94 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E550
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetIconId__C4Tool
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, [r5, #0x78]
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	ldr r2, .L0808EE98 @ =gUnk_086678A0
	adds r3, r6, #0
	bl func_080CB304
.L0808EE38:
	adds r7, #1
	cmp r7, r8
	blo .L0808EDDE
.L0808EE3E:
	adds r7, r5, #0
	adds r7, #0xfc
	ldr r0, [r7]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808EE86
	ldr r0, [r7]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r5, #8]
	ldr r2, .L0808EE94 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	bl GetIconId__C4Tool
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, [r5, #0x78]
	ldr r5, .L0808EE98 @ =gUnk_086678A0
	ldr r0, [r7]
	bl GetAmount__C9ToolStack
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBAF0
.L0808EE86:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808EE94: .4byte 0x00001BD8
.L0808EE98: .4byte gUnk_086678A0

	thumb_func_start func_0808EE9C
func_0808EE9C: @ 0x0808EE9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r6, r0, #0
	mov r8, r1
	movs r7, #0
.L0808EEAA:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	mov r2, r8
	lsls r1, r2, #3
	adds r1, r1, r7
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808EF14
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r6, #8]
	ldr r2, .L0808EF0C @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E550
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, [r6, #0x7c]
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	ldr r2, .L0808EF10 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
	b .L0808EF1C
	.align 2, 0
.L0808EF0C: .4byte 0x00001BD8
.L0808EF10: .4byte gUnk_086678A0
.L0808EF14:
	ldr r0, [r6, #0x7c]
	adds r1, r7, #0
	bl func_080CCDEC
.L0808EF1C:
	adds r7, #1
	cmp r7, #7
	bls .L0808EEAA
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808EF30
func_0808EF30: @ 0x0808EF30
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl func_080CEB80
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0808EE9C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808EF4C
func_0808EF4C: @ 0x0808EF4C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl func_080CEBC0
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0808EE9C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0808EF68
func_0808EF68: @ 0x0808EF68
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov sb, r0
	cmp r7, #0
	bne .L0808EFA6
	adds r5, r6, #0
	adds r5, #0xfc
	ldr r0, [r5]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808F048
	adds r4, r6, #0
	adds r4, #0x98
	ldr r0, [r5]
	bl GetTool__C9ToolStack
	mov r1, sp
	strb r0, [r1]
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, sp
	movs r3, #1
	b .L0808F042
.L0808EFA6:
	cmp r7, #9
	beq .L0808F048
	cmp r7, #8
	bgt .L0808EFFE
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r6
	mov r8, r1
	ldr r4, [r1]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808F048
	adds r5, r6, #0
	adds r5, #0x98
	mov r0, r8
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	mov r2, sp
	adds r2, #1
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r5, #0
	b .L0808F040
.L0808EFFE:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r4, [r0]
	adds r0, r6, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0808F048
	adds r4, r6, #0
	adds r4, #0x98
	adds r0, r5, #0
	bl GetTool__C9ToolStack
	mov r2, sp
	adds r2, #2
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r4, #0
.L0808F040:
	movs r3, #0
.L0808F042:
	bl func_080CF05C
	mov sb, r0
.L0808F048:
	mov r0, sb
	cmp r0, #0
	beq .L0808F05E
	adds r0, r6, #0
	adds r0, #0x80
	mov r1, sb
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L0808F06C
.L0808F05E:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L0808F07C @ =gUnk_08100144
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L0808F06C:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0808F07C: .4byte gUnk_08100144

	thumb_func_start func_0808F080
func_0808F080: @ 0x0808F080
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r7, r0, #0
	mov sb, r1
	str r2, [sp, #0x34]
	movs r0, #1
	str r0, [sp, #0x38]
	cmp r1, #0
	bne .L0808F09C
	b .L0808F766
.L0808F09C:
	cmp r1, #8
	ble .L0808F0A2
	b .L0808F3CE
.L0808F0A2:
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	mov sl, r4
	cmp r0, #0
	beq .L0808F136
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r1, #0
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L0808F0DC
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne .L0808F0DE
.L0808F0DC:
	movs r1, #1
.L0808F0DE:
	cmp r1, #0
	beq .L0808F0E4
	b .L0808F766
.L0808F0E4:
	ldr r4, [r7, #0x78]
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	bl func_080CAD14
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBDD4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	add r5, sp, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	mov r2, sl
	ldr r0, [r2]
	adds r1, r5, #0
	b .L0808F6C2
.L0808F136:
	ldr r0, [r7, #0x78]
	bl func_080CB2FC
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r5, sp, #0x14
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	adds r1, r5, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x20
	mov r3, sl
	ldr r1, [r3]
	adds r0, r4, #0
	movs r2, #2
	bl memcpy
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080CE1C4
	lsls r0, r0, #0x18
	mov r8, r5
	cmp r0, #0
	beq .L0808F1A8
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808F1A4 @ =gUnk_08117B10
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r4, #0x84
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, [sp, #0x38]
	str r1, [r0]
	movs r2, #0
	str r2, [sp, #0x38]
	b .L0808F766
	.align 2, 0
.L0808F1A4: .4byte gUnk_08117B10
.L0808F1A8:
	movs r1, #0
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq .L0808F1B6
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne .L0808F1B8
.L0808F1B6:
	movs r1, #1
.L0808F1B8:
	cmp r1, #0
	beq .L0808F1BE
	b .L0808F36C
.L0808F1BE:
	add r6, sp, #0x24
	movs r3, #0x80
	lsls r3, r3, #1
	adds r3, r7, r3
	str r3, [sp, #0x3c]
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #2
	bl memcpy
	add r5, sp, #0x20
	adds r0, r5, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x2c
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r0, r6, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x2d
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808F214
	movs r1, #1
.L0808F214:
	cmp r1, #0
	beq .L0808F2EA
	adds r0, r5, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	cmp r5, r0
	blo .L0808F27E
	mov r0, sl
	ldr r4, [r0]
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	ldr r1, [sp, #0x3c]
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x28
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	mov r2, sl
	ldr r0, [r2]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	b .L0808F766
.L0808F27E:
	mov r3, sl
	ldr r0, [r3]
	adds r1, r5, #0
	bl AddAmount__9ToolStackUi
	ldr r0, [sp, #0x3c]
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	ldr r4, [r7, #0x78]
	mov r1, sl
	ldr r0, [r1]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	ldr r2, [sp, #0x3c]
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	b .L0808F766
.L0808F2EA:
	ldr r4, [r7, #0x78]
	ldr r5, [sp, #0x18]
	ldr r6, [sp, #0x1c]
	mov r0, r8
	bl func_080CAD14
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBDD4
	ldr r3, [r7, #0x78]
	mov r8, r3
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	mov r4, sl
	ldr r6, [r4]
	ldr r0, [sp, #0x3c]
	ldr r5, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r4, sp, #0x28
	adds r0, r4, #0
	adds r1, r5, #0
	bl ExtractToolAt__8RucksackUi
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r1, [sp, #0x3c]
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #0x20
	b .L0808F6C2
.L0808F36C:
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r2, [r7, #0x78]
	mov r8, r2
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	mov r4, sl
	ldr r1, [r4]
	movs r2, #2
	bl memcpy
	ldr r5, [r4]
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	b .L0808F6C2
.L0808F3CE:
	adds r0, r7, #0
	mov r1, sb
	ldr r2, [sp, #0x34]
	bl func_080CE184
	str r0, [sp, #0x40]
	movs r0, #0x82
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sl, r0
	ldr r0, [r0]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	movs r1, #0xfc
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808F498
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808F414
	b .L0808F766
.L0808F414:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r6, r0, #0
	mov r2, r8
	ldr r0, [r2]
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #8
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r0, [r7, #8]
	ldr r4, .L0808F490 @ =0x00001BD8
	adds r0, r0, r4
	adds r1, r6, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x2e
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, [r7, #0x78]
	ldr r6, .L0808F494 @ =gUnk_086678A0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r1, [sp, #0x34]
	cmp r0, r1
	beq .L0808F48C
	b .L0808F766
.L0808F48C:
	b .L0808F586
	.align 2, 0
.L0808F490: .4byte 0x00001BD8
.L0808F494: .4byte gUnk_086678A0
.L0808F498:
	mov r2, r8
	ldr r0, [r2]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080CE1C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808F4D4
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808F4D0 @ =gUnk_08117B10
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [sp, #0x38]
	str r4, [r0]
	movs r0, #0
	str r0, [sp, #0x38]
	b .L0808F766
	.align 2, 0
.L0808F4D0: .4byte gUnk_08117B10
.L0808F4D4:
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808F4E2
	b .L0808F6D4
.L0808F4E2:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x2f
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	mov r1, r8
	ldr r0, [r1]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x30
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808F510
	movs r1, #1
.L0808F510:
	cmp r1, #0
	beq .L0808F60A
	mov r2, r8
	ldr r0, [r2]
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	cmp r4, r0
	blo .L0808F59C
	mov r3, r8
	ldr r4, [r3]
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	mov r4, sl
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #8
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x78]
	mov r1, r8
	ldr r0, [r1]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	cmp r4, r0
	beq .L0808F586
	b .L0808F766
.L0808F586:
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L0808F766
.L0808F59C:
	mov r2, r8
	ldr r0, [r2]
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r4, #0
	bl SubtractAmount__9ToolStackUi
	ldr r4, [r7, #0x78]
	mov r1, r8
	ldr r0, [r1]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	cmp r4, r0
	beq .L0808F5E2
	b .L0808F766
.L0808F5E2:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L0808F766
.L0808F60A:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r4, r0, #0
	mov r3, r8
	ldr r0, [r3]
	bl GetTool__C9ToolStack
	adds r6, r0, #0
	ldr r0, [r7, #8]
	ldr r1, .L0808F6CC @ =0x00001BD8
	adds r0, r0, r1
	adds r1, r4, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x31
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, [r7, #0x78]
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r3, r0, #0
	adds r0, r5, #0
	ldr r1, .L0808F6D0 @ =gUnk_086678A0
	adds r2, r4, #0
	bl func_080CBAF0
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	cmp r4, r0
	bne .L0808F6A8
	ldr r0, [r7, #8]
	ldr r2, .L0808F6CC @ =0x00001BD8
	adds r0, r0, r2
	adds r1, r6, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x32
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r3, r8
	ldr r0, [r3]
	bl GetAmount__C9ToolStack
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	ldr r2, .L0808F6D0 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
.L0808F6A8:
	mov r4, sl
	ldr r0, [r4]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	mov r2, r8
	ldr r1, [r2]
	movs r2, #2
	bl memcpy
	mov r3, r8
	ldr r0, [r3]
	add r1, sp, #4
.L0808F6C2:
	movs r2, #2
	bl memcpy
	b .L0808F766
	.align 2, 0
.L0808F6CC: .4byte 0x00001BD8
.L0808F6D0: .4byte gUnk_086678A0
.L0808F6D4:
	mov r4, r8
	ldr r0, [r4]
	bl GetTool__C9ToolStack
	adds r5, r0, #0
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	cmp r4, r0
	bne .L0808F73E
	ldr r0, [r7, #8]
	ldr r1, .L0808F77C @ =0x00001BD8
	adds r0, r0, r1
	adds r1, r5, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x33
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r2, r8
	ldr r0, [r2]
	bl GetAmount__C9ToolStack
	ldr r2, .L0808F780 @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CC728
.L0808F73E:
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0x40]
	bl GetToolStackAt__9ToolChestUi
	mov r4, r8
	ldr r1, [r4]
	movs r2, #2
	bl memcpy
	ldr r5, [r4]
	add r4, sp, #8
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
.L0808F766:
	add r1, sp, #0x38
	ldrb r0, [r1]
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0808F77C: .4byte 0x00001BD8
.L0808F780: .4byte gUnk_086678A0

	thumb_func_start func_0808F784
func_0808F784: @ 0x0808F784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	adds r7, r0, #0
	str r1, [sp, #0x48]
	mov sb, r2
	movs r0, #1
	str r0, [sp, #0x4c]
	cmp r2, #0
	bne .L0808F7B0
	adds r0, r7, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	b .L0808F7C4
.L0808F7B0:
	ldr r1, [sp, #0x48]
	cmp r1, #0
	beq .L0808F7B8
	b .L0808FA38
.L0808F7B8:
	mov r2, sb
	cmp r2, #8
	bgt .L0808F7D2
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
.L0808F7C4:
	bl func_0808F080
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x4c]
	bl .L080908B0
.L0808F7D2:
	ldr r0, [r7, #0x78]
	bl func_080CB2FC
	add r1, sp, #4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r3, sp, #0x10
	mov r8, r3
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	mov r1, r8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r6, sp, #0x1c
	adds r4, r7, #0
	adds r4, #0xfc
	ldr r1, [r4]
	adds r0, r6, #0
	movs r2, #2
	bl memcpy
	adds r0, r7, #0
	adds r0, #0x94
	str r0, [sp, #0x50]
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_080CE184
	mov sl, r0
	add r5, sp, #0x20
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #2
	bl memcpy
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	mov r8, r4
	cmp r0, #0
	beq .L0808F85E
	ldr r2, [sp, #0x50]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_0808F080
	bl .L080908B0
.L0808F85E:
	add r0, sp, #0x1c
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080CE1C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808F898
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L0808F894 @ =gUnk_08117B10
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r3, #0x84
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r4, [sp, #0x4c]
	str r4, [r0]
	movs r0, #0
	str r0, [sp, #0x4c]
	bl .L080908B0
	.align 2, 0
.L0808F894: .4byte gUnk_08117B10
.L0808F898:
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq .L0808F8A6
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne .L0808F8A8
.L0808F8A6:
	movs r1, #1
.L0808F8A8:
	cmp r1, #0
	beq .L0808F8AE
	b .L0808F9EE
.L0808F8AE:
	add r0, sp, #0x1c
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x34
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r6, r5, #0
	adds r0, r6, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x35
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808F8DC
	movs r1, #1
.L0808F8DC:
	cmp r1, #0
	beq .L0808F99C
	adds r0, r6, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	add r0, sp, #0x1c
	bl GetAmount__C9ToolStack
	cmp r4, r0
	blo .L0808F956
	movs r1, #0x82
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r4, r0, #0
	add r0, sp, #0x1c
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	mov r2, r8
	ldr r5, [r2]
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	bl .L080908B0
.L0808F956:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r6, r7, r3
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	mov r1, r8
	ldr r0, [r1]
	adds r1, r4, #0
	bl SubtractAmount__9ToolStackUi
	ldr r4, [r7, #0x78]
	mov r2, r8
	ldr r0, [r2]
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB9DC
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl .L080907D6
.L0808F99C:
	mov r3, r8
	ldr r0, [r3]
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	movs r4, #0x82
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r0, [r0]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	add r1, sp, #0x1c
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x78]
	ldr r5, [sp, #0x14]
	ldr r6, [sp, #0x18]
	add r0, sp, #0x10
	bl func_080CAD14
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBDD4
	ldr r0, [r7, #0x7c]
	mov r8, r0
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	b .L080900E2
.L0808F9EE:
	mov r1, r8
	ldr r5, [r1]
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	add r1, sp, #0x1c
	movs r2, #2
	bl memcpy
	ldr r0, [r7, #0x78]
	bl func_080CC0B4
	ldr r3, [r7, #0x7c]
	mov r8, r3
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #8]
	ldr r6, [sp, #0xc]
	add r0, sp, #4
	b .L080900E2
.L0808FA38:
	ldr r4, [sp, #0x48]
	cmp r4, #8
	ble .L0808FA40
	b .L080900F6
.L0808FA40:
	mov r0, sb
	cmp r0, #8
	ble .L0808FA48
	b .L0808FDAE
.L0808FA48:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r5, sp, #8
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #2
	bl memcpy
	mov r3, sp
	adds r3, #0xc
	str r3, [sp, #0x54]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	ldr r1, [sp, #0x54]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r4, sp, #0x28
	mov sl, r4
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	mov r1, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FAEA
	adds r0, r5, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FAEA
	bl .L080908B0
.L0808FAEA:
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FB58
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r1, r8
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x18
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r2, [r7, #0x78]
	mov r8, r2
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	mov r0, sl
	b .L0808FED2
.L0808FB58:
	adds r0, r5, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FBC6
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x18
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r1, [r7, #0x78]
	mov r8, r1
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	ldr r0, [sp, #0x54]
	b .L0808FED2
.L0808FBC6:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x36
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x37
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808FBF4
	movs r1, #1
.L0808FBF4:
	cmp r1, #0
	bne .L0808FBFA
	b .L0808FD32
.L0808FBFA:
	adds r0, r5, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	cmp r5, r0
	bls .L0808FC92
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0x18
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	b .L0808FFE8
.L0808FC92:
	mov r1, r8
	ldr r4, [r1]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl AddAmount__9ToolStackUi
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	bl .L080908B0
.L0808FD32:
	mov r1, r8
	ldr r4, [r1]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r3, [r7, #0x78]
	mov r8, r3
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x2c]
	ldr r6, [sp, #0x30]
	mov r0, sl
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	ldr r4, [r7, #0x78]
	mov r8, r4
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	ldr r0, [sp, #0x54]
	b .L0808FED2
.L0808FDAE:
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_080CE184
	str r0, [sp, #0x58]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r5, sp, #8
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sl, r1
	ldr r0, [r1]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #2
	bl memcpy
	mov r2, sp
	adds r2, #0xc
	str r2, [sp, #0x5c]
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	ldr r1, [sp, #0x5c]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	mov r3, sp
	adds r3, #0x18
	str r3, [sp, #0x60]
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
	ldr r1, [sp, #0x60]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FE60
	adds r0, r5, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FE60
	bl .L080908B0
.L0808FE60:
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FEE8
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	ldr r2, [r7, #0x78]
	mov r8, r2
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	ldr r0, [sp, #0x60]
.L0808FED2:
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	bl .L080908B0
.L0808FEE8:
	adds r0, r5, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808FF38
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r2, r0, #0
	add r0, sp, #0x24
	adds r1, r4, #0
	bl ExtractToolAt__8RucksackUi
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	ldr r1, [r7, #0x7c]
	mov r8, r1
	b .L080900D0
.L0808FF38:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x38
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	adds r0, r5, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x39
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L0808FF64
	movs r1, #1
.L0808FF64:
	cmp r1, #0
	bne .L0808FF6A
	b .L08090074
.L0808FF6A:
	adds r0, r5, #0
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	cmp r5, r0
	bls .L08090000
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0x24
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
.L0808FFE8:
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	bl .L080908B0
.L08090000:
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r5, #0
	bl AddAmount__9ToolStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [sp, #0x58]
	b .L080907D6
.L08090074:
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	movs r2, #2
	bl memcpy
	mov r3, sl
	ldr r0, [r3]
	ldr r1, [sp, #0x58]
	bl GetToolStackAt__9ToolChestUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r4, [r7, #0x78]
	mov r8, r4
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	ldr r0, [sp, #0x60]
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CB63C
	ldr r0, [r7, #0x7c]
	mov r8, r0
.L080900D0:
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	ldr r0, [sp, #0x5c]
.L080900E2:
	bl func_080CAD14
	str r0, [sp]
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080CCA40
	b .L080908B0
.L080900F6:
	adds r1, r7, #0
	adds r1, #0x90
	str r1, [sp, #0x68]
	ldr r0, [r1]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	bl func_080CE184
	str r0, [sp, #0x64]
	mov r2, sb
	cmp r2, #8
	ble .L08090116
	b .L08090500
.L08090116:
	movs r3, #0x82
	lsls r3, r3, #1
	adds r3, r7, r3
	str r3, [sp, #0x6c]
	ldr r0, [r3]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r4, sp, #8
	mov sl, r4
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	mov r0, sl
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08090174
	mov r0, sl
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08090174
	b .L080908B0
.L08090174:
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08090224
	ldr r1, [sp, #0x6c]
	ldr r0, [r1]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	mov r1, sl
	movs r2, #2
	bl memcpy
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r0, sl
	bl GetTool__C9ToolStack
	adds r5, r0, #0
	ldr r4, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CBA60
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r3, [sp, #0x68]
	ldr r0, [r3]
	bl func_080CF054
	cmp r4, r0
	beq .L080901F0
	b .L080908B0
.L080901F0:
	ldr r0, [r7, #8]
	ldr r4, .L08090220 @ =0x00001BD8
	adds r0, r0, r4
	adds r1, r5, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3a
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, sl
	b .L080905F4
	.align 2, 0
.L08090220: .4byte 0x00001BD8
.L08090224:
	mov r0, sl
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080902CC
	ldr r1, [sp, #0x6c]
	ldr r0, [r1]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r7, #8]
	ldr r3, .L080902C4 @ =0x00001BD8
	adds r0, r0, r3
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3b
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	ldr r2, .L080902C8 @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CB304
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	b .L08090750
	.align 2, 0
.L080902C4: .4byte 0x00001BD8
.L080902C8: .4byte gUnk_086678A0
.L080902CC:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x3c
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	mov r0, sl
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3d
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L080902F8
	movs r1, #1
.L080902F8:
	cmp r1, #0
	bne .L080902FE
	b .L08090422
.L080902FE:
	mov r0, sl
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	cmp r5, r0
	bls .L08090398
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	ldr r3, [sp, #0x6c]
	ldr r0, [r3]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	b .L08090750
.L08090398:
	mov r2, r8
	ldr r4, [r2]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r5, #0
	bl AddAmount__9ToolStackUi
	ldr r3, [sp, #0x6c]
	ldr r0, [r3]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r5, #0
	bl SubtractAmount__9ToolStackUi
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	ldr r4, [r0]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CB948
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L0809040E
	b .L080908B0
.L0809040E:
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r0, [r2]
	b .L080907D4
.L08090422:
	mov r3, r8
	ldr r4, [r3]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r4, [sp, #0x6c]
	ldr r0, [r4]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	mov r1, sl
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r4, r0, #0
	mov r0, sl
	bl GetTool__C9ToolStack
	mov r8, r0
	ldr r0, [r7, #8]
	ldr r1, .L080904F8 @ =0x00001BD8
	adds r0, r0, r1
	adds r1, r4, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3e
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x78]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	ldr r2, .L080904FC @ =gUnk_086678A0
	mov sb, r2
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CB304
	adds r0, r7, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r3, [sp, #0x68]
	ldr r0, [r3]
	bl func_080CF054
	cmp r4, r0
	beq .L080904BC
	b .L080908B0
.L080904BC:
	ldr r0, [r7, #8]
	ldr r4, .L080904F8 @ =0x00001BD8
	adds r0, r0, r4
	mov r1, r8
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3f
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, sl
	bl GetAmount__C9ToolStack
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sb
	b .L08090600
	.align 2, 0
.L080904F8: .4byte 0x00001BD8
.L080904FC: .4byte gUnk_086678A0
.L08090500:
	adds r0, r7, #0
	adds r0, #0x94
	str r0, [sp, #0x70]
	ldr r0, [r0]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r7, #0
	mov r1, sb
	bl func_080CE184
	mov sl, r0
	movs r1, #0x82
	lsls r1, r1, #1
	adds r6, r7, r1
	ldr r0, [r6]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r2, sp, #8
	mov r8, r2
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r1, r0, #0
	mov r0, r8
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809055E
	mov r0, r8
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809055E
	b .L080908B0
.L0809055E:
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08090610
	ldr r0, [r6]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	mov r1, r8
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	mov r0, r8
	bl GetTool__C9ToolStack
	adds r5, r0, #0
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	ldr r3, [sp, #0x70]
	ldr r0, [r3]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L080905C8
	b .L080908B0
.L080905C8:
	ldr r0, [r7, #8]
	ldr r2, .L08090608 @ =0x00001BD8
	adds r0, r0, r2
	adds r1, r5, #0
	bl func_0800E550
	adds r1, r0, #0
	add r0, sp, #0x40
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
.L080905F4:
	bl GetAmount__C9ToolStack
	ldr r2, .L0809060C @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
.L08090600:
	adds r3, r4, #0
	bl func_080CC728
	b .L080908B0
	.align 2, 0
.L08090608: .4byte 0x00001BD8
.L0809060C: .4byte gUnk_086678A0
.L08090610:
	mov r0, r8
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080906A4
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r7, #8]
	ldr r3, .L0809069C @ =0x00001BD8
	adds r0, r0, r3
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x41
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	ldr r2, .L080906A0 @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r4, #0
	bl func_080CC728
	ldr r4, [sp, #0x70]
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	b .L08090750
	.align 2, 0
.L0809069C: .4byte 0x00001BD8
.L080906A0: .4byte gUnk_086678A0
.L080906A4:
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x42
	strb r1, [r0]
	bl GetId__C4Tool
	adds r4, r0, #0
	mov r0, r8
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x43
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #0
	cmp r4, r0
	bne .L080906D2
	movs r1, #1
.L080906D2:
	cmp r1, #0
	bne .L080906D8
	b .L080907EA
.L080906D8:
	mov r0, r8
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	cmp r4, r0
	bls .L08090770
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r4, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl AddAmount__9ToolStackUi
	ldr r0, [r6]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r5, r0, #0
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __9ToolStack
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl memcpy
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	ldr r2, [sp, #0x70]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r3, [sp, #0x68]
	ldr r0, [r3]
.L08090750:
	bl func_080CF054
	cmp r4, r0
	beq .L0809075A
	b .L080908B0
.L0809075A:
	ldr r4, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CCDEC
	b .L080908B0
.L08090770:
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	ldr r0, [r6]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	adds r1, r4, #0
	bl SubtractAmount__9ToolStackUi
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	ldr r4, [sp, #0x70]
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	bne .L080908B0
	ldr r5, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r4, r0, #0
	ldr r0, [r6]
.L080907D4:
	ldr r1, [sp, #0x64]
.L080907D6:
	bl GetToolStackAt__9ToolChestUi
	bl GetAmount__C9ToolStack
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_080CCD48
	b .L080908B0
.L080907EA:
	ldr r0, [r6]
	ldr r1, [sp, #0x64]
	bl GetToolStackAt__9ToolChestUi
	mov r1, r8
	movs r2, #2
	bl memcpy
	ldr r0, [r6]
	mov r1, sl
	bl GetToolStackAt__9ToolChestUi
	add r1, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r4, r0, #0
	mov r0, r8
	bl GetTool__C9ToolStack
	mov sl, r0
	ldr r0, [r7, #8]
	ldr r2, .L080908C4 @ =0x00001BD8
	adds r0, r0, r2
	adds r1, r4, #0
	bl func_0800E550
	adds r1, r0, #0
	add r0, sp, #0x44
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	mov r1, sb
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	ldr r3, .L080908C8 @ =gUnk_086678A0
	mov sb, r3
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sb
	adds r3, r4, #0
	bl func_080CC728
	ldr r4, [sp, #0x70]
	ldr r0, [r4]
	adds r0, #0xbc
	ldr r4, [r0]
	ldr r1, [sp, #0x68]
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	bne .L080908B0
	ldr r0, [r7, #8]
	ldr r2, .L080908C4 @ =0x00001BD8
	adds r0, r0, r2
	mov r1, sl
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x45
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r6, [r7, #0x7c]
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	movs r2, #0
	bl func_080CE184
	adds r5, r0, #0
	mov r0, r8
	bl GetAmount__C9ToolStack
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r2, sb
	adds r3, r4, #0
	bl func_080CC728
.L080908B0:
	add r3, sp, #0x4c
	ldrb r0, [r3]
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080908C4: .4byte 0x00001BD8
.L080908C8: .4byte gUnk_086678A0

	thumb_func_start func_080908CC
func_080908CC: @ 0x080908CC
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	mov r0, sp
	bl func_080CAC70
	cmp r5, #0
	bne .L080908E6
	ldr r0, [r6, #0x78]
	bl func_080CB2FC
	b .L08090914
.L080908E6:
	cmp r5, #8
	bgt .L08090900
	ldr r4, [r6, #0x78]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CB2E8
	b .L08090914
.L08090900:
	ldr r4, [r6, #0x7c]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CC70C
.L08090914:
	mov r1, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq .L08090928
	ldr r0, [sp, #8]
	cmp r0, #0
	bne .L0809092A
.L08090928:
	movs r1, #1
.L0809092A:
	cmp r1, #0
	bne .L08090952
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L0809095C @ =gUnk_08117ADC
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r6, r0
	movs r0, #1
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
.L08090952:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0809095C: .4byte gUnk_08117ADC

	thumb_func_start func_08090960
func_08090960: @ 0x08090960
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080CE294
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl GetSize__C8Rucksack
	mov r8, r0
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08090BC8 @ =gUnk_08100148
	str r0, [sp]
	add r4, sp, #4
	movs r0, #1
	strb r0, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r8
	bl func_080CAFC4
	adds r6, r7, #0
	adds r6, #0x78
	adds r5, r0, #0
	ldr r1, [r7, #0x78]
	mov sb, r4
	cmp r5, r1
	beq .L080909D8
	cmp r1, #0
	beq .L080909D8
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080909D8:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	adds r0, r7, #0
	mov r1, r8
	bl func_0808EDCC
	movs r0, #0xcb
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08090BCC @ =gUnk_08100150
	str r0, [sp]
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl func_080CC15C
	adds r5, r7, #0
	adds r5, #0x7c
	adds r4, r0, #0
	ldr r1, [r7, #0x7c]
	cmp r4, r1
	beq .L08090A38
	cmp r1, #0
	beq .L08090A38
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08090A38:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	movs r0, #0xc8
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CE2FC
	adds r4, r7, #0
	adds r4, #0x94
	adds r5, r0, #0
	ldr r0, [r4]
	str r4, [sp, #0x10]
	cmp r5, r0
	beq .L08090A64
	cmp r0, #0
	beq .L08090A64
	movs r1, #3
	bl func_080CE3DC
.L08090A64:
	str r5, [r4]
	ldr r1, [sp, #0x10]
	ldr r0, [r1]
	adds r0, #0xbc
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_0808EE9C
	ldr r2, [sp, #0x10]
	ldr r0, [r2]
	bl func_080CE598
	movs r0, #0x8c
	bl __builtin_new
	adds r1, r7, #0
	movs r2, #1
	bl func_080CD9B0
	movs r1, #0x8c
	adds r1, r1, r7
	mov r8, r1
	mov sb, r0
	ldr r5, [r1]
	mov r6, r8
	cmp sb, r5
	beq .L08090ACE
	cmp r5, #0
	beq .L08090ACE
	ldr r0, .L08090BD0 @ =vtable_unk_080E5A28
	str r0, [r5, #0x24]
	adds r4, r5, #0
	adds r4, #0x1c
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
	adds r0, r5, #0
	bl __builtin_delete
.L08090ACE:
	mov r2, sb
	mov r0, r8
	str r2, [r0]
	movs r0, #0x88
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CEC00
	movs r1, #0x90
	adds r1, r1, r7
	mov r8, r1
	mov sl, r0
	ldr r5, [r1]
	mov sb, r8
	cmp sl, r5
	beq .L08090B24
	cmp r5, #0
	beq .L08090B24
	adds r4, r5, #0
	adds r4, #0x74
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
	ldr r0, .L08090BD0 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L08090B24:
	mov r2, sl
	mov r0, r8
	str r2, [r0]
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808EF68
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #8
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L08090BD4 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0xc]
	ldr r1, .L08090BD8 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r1, #0
	mov r8, r1
.L08090B8A:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	adds r0, r7, #0
	bl func_080CE2C4
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08090B8A
	mov r2, r8
	cmp r2, #0
	beq .L08090BB0
	b .L08090E38
.L08090BB0:
	ldr r0, [r6]
	ldr r5, [r0, #4]
	movs r0, #0x84
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r0, [r4]
	cmp r0, #0
	beq .L08090BDC
	cmp r0, #1
	bne .L08090BC6
	b .L08090E1E
.L08090BC6:
	b .L08090B8A
	.align 2, 0
.L08090BC8: .4byte gUnk_08100148
.L08090BCC: .4byte gUnk_08100150
.L08090BD0: .4byte vtable_unk_080E5A28
.L08090BD4: .4byte vtable_unk_080E5B80
.L08090BD8: .4byte 0x00000889
.L08090BDC:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08090C04
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #9
	ble .L08090BFC
	cmp r0, #0xd
	bgt .L08090BFC
	adds r0, r7, #0
	bl func_0808EF4C
.L08090BFC:
	ldr r0, [r6]
	bl func_080CDA44
	b .L08090C82
.L08090C04:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08090C28
	ldr r0, [r6]
	ldr r0, [r0, #4]
	cmp r0, #0xd
	ble .L08090C20
	adds r0, r7, #0
	bl func_0808EF30
.L08090C20:
	ldr r0, [r6]
	bl func_080CDB08
	b .L08090C82
.L08090C28:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L08090C3E
	ldr r0, [r6]
	bl func_080CDCD0
	b .L08090C82
.L08090C3E:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L08090C54
	ldr r0, [r6]
	bl func_080CDC00
	b .L08090C82
.L08090C54:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L08090C76
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L08090C78
.L08090C76:
	movs r4, #1
.L08090C78:
	cmp r4, #0
	beq .L08090C8E
	ldr r0, [r6]
	bl func_080CDD7C
.L08090C82:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	b .L08090E0C
.L08090C8E:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08090D9A
	mov r1, sb
	ldr r3, [r1]
	adds r0, r3, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08090CCC
	ldr r0, [r6]
	ldr r1, [r0, #4]
	cmp r1, #8
	bgt .L08090CBC
	adds r0, r3, #0
	movs r2, #0
	bl func_080CEC84
	b .L08090E0C
.L08090CBC:
	ldr r2, [sp, #0x10]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r2, [r0]
	adds r0, r3, #0
	bl func_080CEC84
	b .L08090E0C
.L08090CCC:
	ldr r0, [r6]
	ldr r4, [r0, #4]
	adds r0, r3, #0
	bl func_080CF050
	cmp r4, r0
	bne .L08090D56
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	cmp r0, #9
	ble .L08090D32
	ldr r2, [sp, #0x10]
	ldr r0, [r2]
	adds r0, #0xbc
	ldr r4, [r0]
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF054
	cmp r4, r0
	beq .L08090D32
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_0808F784
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08090D8E
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808EF68
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r1, sb
	ldr r0, [r1]
	bl func_080CECD0
	b .L08090E0C
.L08090D32:
	mov r2, sb
	ldr r0, [r2]
	bl func_080CF050
	adds r4, r0, #0
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF054
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r4, #0
	bl func_0808F080
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08090D70
	b .L08090D8E
.L08090D56:
	mov r1, sb
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	ldr r0, [r6]
	ldr r2, [r0, #4]
	adds r0, r7, #0
	bl func_0808F784
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08090D8E
.L08090D70:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_0808EF68
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	mov r2, sb
	ldr r0, [r2]
	bl func_080CECD0
	b .L08090E0C
.L08090D8E:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L08090E0C
.L08090D9A:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08090DF4
	mov r0, sb
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08090DBE
	adds r0, r1, #0
	bl func_080CECD0
	b .L08090E0C
.L08090DBE:
	ldr r2, [sp, #0xc]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08090E0C
	movs r1, #1
	mov r8, r1
	adds r0, r2, #0
	adds r0, #0xc
	ldr r1, .L08090DF0 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L08090E0C
	.align 2, 0
.L08090DF0: .4byte 0x00000889
.L08090DF4:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L08090E0C
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_080908CC
.L08090E0C:
	ldr r0, [r6]
	ldr r1, [r0, #4]
	cmp r5, r1
	bne .L08090E16
	b .L08090B8A
.L08090E16:
	adds r0, r7, #0
	bl func_0808EF68
	b .L08090B8A
.L08090E1E:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L08090E2A
	b .L08090B8A
.L08090E2A:
	adds r0, r7, #0
	adds r1, r5, #0
	bl func_0808EF68
	mov r2, r8
	str r2, [r4]
	b .L08090B8A
.L08090E38:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_08090E54
func_08090E54: @ 0x08090E54
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L08090E80 @ =vtable_unk_080E7DAC
	str r0, [r4]
	movs r0, #0x86
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r5, #0
	bl func_0808ED64
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
.L08090E80: .4byte vtable_unk_080E7DAC

	thumb_func_start func_08090E84
func_08090E84: @ 0x08090E84
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L08090EC0 @ =vtable_unk_080E7DAC
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L08090EA0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08090EA0:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L08090EB2
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08090EB2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L08090EC0: .4byte vtable_unk_080E7DAC

	thumb_func_start func_08090EC4
func_08090EC4: @ 0x08090EC4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_08090960
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_08090EE0
func_08090EE0: @ 0x08090EE0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r1, r2, #0
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	bl func_080CE19C
	ldr r0, .L08090F50 @ =vtable_unk_080E7DBC
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x98
	movs r3, #0
	strb r3, [r0]
	adds r2, r6, #0
	adds r2, #0xfc
	ldr r1, [r6, #8]
	ldr r7, .L08090F54 @ =0x00001C34
	adds r0, r1, r7
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r6, r0
	subs r7, #8
	adds r0, r1, r7
	str r0, [r2]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r7, #0xc
	adds r1, r1, r7
	str r1, [r0]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r6, r1
	str r3, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r3, [r0]
	movs r7, #0x88
	lsls r7, r7, #1
	adds r1, r6, r7
	ldr r0, [r5]
	str r3, [r5]
	str r0, [r1]
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r6, r1
	strb r4, [r0]
	adds r2, #0xc
	adds r0, r6, r2
	strb r3, [r0]
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08090F50: .4byte vtable_unk_080E7DBC
.L08090F54: .4byte 0x00001C34

	thumb_func_start func_08090F58
func_08090F58: @ 0x08090F58
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, .L08090FC4 @ =vtable_unk_080E7DBC
	str r0, [r6, #4]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L08090F7A
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08090F7A:
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r5, [r0]
	cmp r5, #0
	beq .L08090FB6
	adds r4, r5, #0
	adds r4, #0x74
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
	ldr r0, .L08090FC8 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L08090FB6:
	adds r0, r6, #0
	adds r1, r7, #0
	bl func_080E3504
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08090FC4: .4byte vtable_unk_080E7DBC
.L08090FC8: .4byte vtable_unk_080E5A28

	thumb_func_start func_08090FCC
func_08090FCC: @ 0x08090FCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r7, r1, #0
	movs r5, #0
	cmp r7, #0
	beq .L0809103A
.L08090FDA:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	adds r1, r5, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08091034
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r4, #8]
	ldr r2, .L0809108C @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E550
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetIconId__C4Tool
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	ldr r1, [r4, #0x78]
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r5, #0
	ldr r2, .L08091090 @ =gUnk_086678A0
	adds r3, r6, #0
	bl func_080CB304
.L08091034:
	adds r5, #1
	cmp r5, r7
	blo .L08090FDA
.L0809103A:
	adds r7, r4, #0
	adds r7, #0xfc
	ldr r0, [r7]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08091082
	ldr r0, [r7]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	ldr r0, [r4, #8]
	ldr r2, .L0809108C @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	bl GetIconId__C4Tool
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, [r4, #0x78]
	ldr r5, .L08091090 @ =gUnk_086678A0
	ldr r0, [r7]
	bl GetAmount__C9ToolStack
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_080CBAF0
.L08091082:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0809108C: .4byte 0x00001BD8
.L08091090: .4byte gUnk_086678A0

	thumb_func_start func_08091094
func_08091094: @ 0x08091094
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	cmp r6, r7
	bhs .L0809111E
.L080910A2:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08091118
	movs r4, #0
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L080910D2
	cmp r0, #1
	beq .L080910E4
	b .L080910F8
.L080910D2:
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	b .L080910F4
.L080910E4:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	bl GetIconId__C7Article
.L080910F4:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
.L080910F8:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091108
	movs r4, #0xb0
	lsls r4, r4, #1
.L08091108:
	ldr r0, [r5, #0x7c]
	movs r1, #1
	str r1, [sp]
	adds r1, r6, #0
	ldr r2, .L08091148 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
.L08091118:
	adds r6, #1
	cmp r6, r7
	blo .L080910A2
.L0809111E:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091132
	b .L08091274
.L08091132:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #5
	bls .L0809113E
	b .L08091274
.L0809113E:
	lsls r0, r0, #2
	ldr r1, .L0809114C @ =.L08091150
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08091148: .4byte gUnk_086678A0
.L0809114C: .4byte .L08091150
.L08091150: @ jump table
	.4byte .L08091168 @ case 0
	.4byte .L080911A4 @ case 1
	.4byte .L080911E4 @ case 2
	.4byte .L08091218 @ case 3
	.4byte .L08091268 @ case 4
	.4byte .L08091274 @ case 5
.L08091168:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F20C
	add r0, sp, #4
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091198
	movs r6, #0xb0
	lsls r6, r6, #1
.L08091198:
	ldr r0, [r5, #0x7c]
	ldr r1, .L080911A0 @ =gUnk_086678A0
	adds r2, r6, #0
	b .L08091256
	.align 2, 0
.L080911A0: .4byte gUnk_086678A0
.L080911A4:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	bl GetIconId__C7Article
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080911D8
	movs r6, #0xb0
	lsls r6, r6, #1
.L080911D8:
	ldr r0, [r5, #0x7c]
	ldr r1, .L080911E0 @ =gUnk_086678A0
	adds r2, r6, #0
	b .L08091256
	.align 2, 0
.L080911E0: .4byte gUnk_086678A0
.L080911E4:
	ldr r0, [r5, #8]
	ldr r2, .L080911FC @ =0x00001C70
	adds r0, r0, r2
	bl GetGrowthStage__C3Dog
	cmp r0, #0
	bne .L08091208
	ldr r0, [r5, #0x7c]
	ldr r1, .L08091200 @ =gUnk_0858BA28
	ldr r2, .L08091204 @ =0x000003DA
	b .L08091256
	.align 2, 0
.L080911FC: .4byte 0x00001C70
.L08091200: .4byte gUnk_0858BA28
.L08091204: .4byte 0x000003DA
.L08091208:
	ldr r0, [r5, #0x7c]
	ldr r1, .L08091214 @ =gUnk_0858BA28
	movs r2, #0xdd
	lsls r2, r2, #2
	b .L08091256
	.align 2, 0
.L08091214: .4byte gUnk_0858BA28
.L08091218:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl func_0800F344
	adds r1, r0, #0
	ldr r0, [r5, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L08091274
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	bne .L08091250
	ldr r0, [r5, #0x7c]
	ldr r1, .L08091248 @ =gUnk_0858BA28
	ldr r2, .L0809124C @ =0x0000073D
	b .L08091256
	.align 2, 0
.L08091248: .4byte gUnk_0858BA28
.L0809124C: .4byte 0x0000073D
.L08091250:
	ldr r0, [r5, #0x7c]
	ldr r1, .L08091260 @ =gUnk_0858BA28
	ldr r2, .L08091264 @ =0x00000734
.L08091256:
	movs r3, #1
	bl func_080CCE58
	b .L08091274
	.align 2, 0
.L08091260: .4byte gUnk_0858BA28
.L08091264: .4byte 0x00000734
.L08091268:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0809127C @ =gUnk_086678A0
	movs r2, #0x35
	movs r3, #1
	bl func_080CCE58
.L08091274:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0809127C: .4byte gUnk_086678A0

	thumb_func_start func_08091280
func_08091280: @ 0x08091280
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov r8, r0
	adds r5, r6, #0
	adds r5, #0x98
	mov r1, r8
	strb r1, [r5]
	cmp r7, #0
	beq .L080912CE
	cmp r7, #9
	beq .L080912F4
	cmp r7, #8
	bgt .L08091342
	movs r0, #0x82
	lsls r0, r0, #1
	adds r0, r0, r6
	mov sb, r0
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0809137A
	b .L08091312
.L080912CE:
	adds r4, r6, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0809137A
	ldr r0, [r4]
	bl GetTool__C9ToolStack
	add r2, sp, #8
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl func_080CF05C
	b .L08091378
.L080912F4:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r6, r1
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0809137A
	ldr r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CF67C
	b .L08091378
.L08091312:
	adds r5, r6, #0
	adds r5, #0x98
	mov r0, sb
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	mov r2, sp
	adds r2, #9
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl func_080CF05C
	b .L08091378
.L08091342:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp]
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0809137A
	ldr r2, [sp]
	str r2, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CFA38
.L08091378:
	mov r8, r0
.L0809137A:
	mov r0, r8
	cmp r0, #0
	beq .L08091390
	adds r0, r6, #0
	adds r0, #0x80
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L0809139E
.L08091390:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L080913AC @ =gUnk_08100168
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L0809139E:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080913AC: .4byte gUnk_08100168

	thumb_func_start func_080913B0
func_080913B0: @ 0x080913B0
	push {lr}
	sub sp, #4
	mov r0, sp
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x2f
	bgt .L080913D2
	mov r0, sp
	bl GetId__C4Tool
	movs r1, #7
	ands r1, r0
	cmp r1, #5
	bne .L080913D2
	movs r0, #1
	b .L080913D4
.L080913D2:
	movs r0, #0
.L080913D4:
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080913DC
func_080913DC: @ 0x080913DC
	push {lr}
	sub sp, #4
	mov r0, sp
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x12
	beq .L08091414
	mov r0, sp
	bl GetId__C7Article
	cmp r0, #0x13
	beq .L08091414
	mov r0, sp
	bl GetId__C7Article
	cmp r0, #0x14
	beq .L08091414
	mov r0, sp
	bl GetId__C7Article
	cmp r0, #0x15
	beq .L08091414
	mov r0, sp
	bl GetId__C7Article
	cmp r0, #0x1c
	bne .L08091418
.L08091414:
	movs r0, #1
	b .L0809141A
.L08091418:
	movs r0, #0
.L0809141A:
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start func_08091420
func_08091420: @ 0x08091420
	push {r4, r5, lr}
	adds r4, r1, #0
	movs r0, #7
	ands r4, r0
	movs r3, #0
	movs r5, #0
	adds r0, r2, #0
	subs r0, #0x12
	cmp r0, #0xa
	bhi .L08091482
	lsls r0, r0, #2
	ldr r1, .L08091440 @ =.L08091444
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08091440: .4byte .L08091444
.L08091444: @ jump table
	.4byte .L08091470 @ case 0
	.4byte .L08091474 @ case 1
	.4byte .L08091478 @ case 2
	.4byte .L0809147C @ case 3
	.4byte .L08091482 @ case 4
	.4byte .L08091482 @ case 5
	.4byte .L08091482 @ case 6
	.4byte .L08091482 @ case 7
	.4byte .L08091482 @ case 8
	.4byte .L08091482 @ case 9
	.4byte .L08091480 @ case 10
.L08091470:
	movs r3, #1
	b .L08091482
.L08091474:
	movs r3, #2
	b .L08091482
.L08091478:
	movs r3, #3
	b .L08091482
.L0809147C:
	movs r3, #4
	b .L08091482
.L08091480:
	movs r3, #7
.L08091482:
	cmp r4, r3
	bne .L0809148A
	movs r5, #1
	b .L08091498
.L0809148A:
	cmp r4, r3
	bls .L08091492
	movs r5, #2
	b .L08091498
.L08091492:
	cmp r4, r3
	bhs .L08091498
	movs r5, #3
.L08091498:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_080914A0
func_080914A0: @ 0x080914A0
	push {r4, r5, lr}
	adds r3, r1, #0
	movs r0, #7
	ands r3, r0
	movs r4, #0
	movs r5, #0
	adds r0, r2, #0
	subs r0, #0x12
	cmp r0, #0xa
	bhi .L08091502
	lsls r0, r0, #2
	ldr r1, .L080914C0 @ =.L080914C4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080914C0: .4byte .L080914C4
.L080914C4: @ jump table
	.4byte .L080914F0 @ case 0
	.4byte .L080914F4 @ case 1
	.4byte .L080914F8 @ case 2
	.4byte .L080914FC @ case 3
	.4byte .L08091502 @ case 4
	.4byte .L08091502 @ case 5
	.4byte .L08091502 @ case 6
	.4byte .L08091502 @ case 7
	.4byte .L08091502 @ case 8
	.4byte .L08091502 @ case 9
	.4byte .L08091500 @ case 10
.L080914F0:
	movs r4, #1
	b .L08091502
.L080914F4:
	movs r4, #2
	b .L08091502
.L080914F8:
	movs r4, #3
	b .L08091502
.L080914FC:
	movs r4, #4
	b .L08091502
.L08091500:
	movs r4, #7
.L08091502:
	cmp r3, r4
	bne .L0809150A
	movs r5, #0
	b .L08091522
.L0809150A:
	cmp r3, r4
	bls .L08091512
	movs r5, #1
	b .L08091522
.L08091512:
	cmp r3, r4
	bhs .L08091522
	subs r5, r4, r3
	cmp r3, #6
	bne .L08091522
	cmp r4, #7
	bne .L08091522
	movs r5, #2
.L08091522:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0809152C
func_0809152C: @ 0x0809152C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	str r0, [sp, #0x40]
	adds r7, r1, #0
	adds r0, r7, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080CE294
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl GetSize__C8Rucksack
	mov r8, r0
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L080917E4 @ =gUnk_0810016C
	str r0, [sp]
	add r4, sp, #4
	movs r0, #1
	strb r0, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r8
	bl func_080CAFC4
	adds r6, r7, #0
	adds r6, #0x78
	adds r5, r0, #0
	ldr r1, [r7, #0x78]
	mov sb, r4
	cmp r5, r1
	beq .L080915A8
	cmp r1, #0
	beq .L080915A8
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080915A8:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	adds r0, r7, #0
	mov r1, r8
	bl func_08090FCC
	movs r0, #0xcb
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L080917E8 @ =gUnk_08100174
	str r0, [sp]
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r3, r8
	bl func_080CC15C
	adds r5, r7, #0
	adds r5, #0x7c
	adds r4, r0, #0
	ldr r1, [r7, #0x7c]
	cmp r4, r1
	beq .L08091608
	cmp r1, #0
	beq .L08091608
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08091608:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	adds r0, r7, #0
	mov r1, r8
	bl func_08091094
	movs r0, #0x8c
	bl __builtin_new
	adds r1, r7, #0
	movs r2, #1
	bl func_080CD9B0
	adds r6, r7, #0
	adds r6, #0x8c
	mov r8, r0
	ldr r5, [r6]
	str r6, [sp, #0x60]
	cmp r8, r5
	beq .L08091668
	cmp r5, #0
	beq .L08091668
	ldr r0, .L080917EC @ =vtable_unk_080E5A28
	str r0, [r5, #0x24]
	adds r4, r5, #0
	adds r4, #0x1c
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
	adds r0, r5, #0
	bl __builtin_delete
.L08091668:
	mov r0, r8
	str r0, [r6]
	movs r0, #0x88
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CEC00
	adds r6, r7, #0
	adds r6, #0x90
	mov r8, r0
	ldr r5, [r6]
	str r6, [sp, #0x64]
	cmp r8, r5
	beq .L080916BA
	cmp r5, #0
	beq .L080916BA
	adds r4, r5, #0
	adds r4, #0x74
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
	ldr r0, .L080917EC @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L080916BA:
	mov r1, r8
	str r1, [r6]
	movs r0, #0x88
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CEC00
	movs r2, #0x86
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	adds r6, r0, #0
	ldr r5, [r2]
	cmp r6, r5
	beq .L0809170E
	cmp r5, #0
	beq .L0809170E
	adds r4, r5, #0
	adds r4, #0x74
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
	ldr r0, .L080917EC @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L0809170E:
	mov r0, r8
	str r6, [r0]
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_08091280
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0x10
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L080917F0 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0x14]
	ldr r1, .L080917F4 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r2, #0
	str r2, [sp, #0x44]
	movs r0, #0
	str r0, [sp, #0x48]
	movs r1, #0x51
	str r1, [sp, #0x4c]
	movs r2, #0x5f
	str r2, [sp, #0x50]
	str r0, [sp, #0x54]
	movs r1, #0
	str r1, [sp, #0x58]
	movs r2, #0
	str r2, [sp, #0x5c]
.L0809178A:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	adds r0, r7, #0
	bl func_080CE2C4
	ldr r0, [sp, #0x14]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	cmp r5, #0
	bne .L0809178A
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq .L080917FC
	movs r0, #0x20
	bl __builtin_new
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r3, [r1]
	str r5, [r1]
	adds r2, #4
	adds r1, r7, r2
	ldrb r4, [r1]
	ldr r2, [r7, #8]
	ldr r1, .L080917F8 @ =vtable_unk_080E5E14
	str r1, [r0]
	str r5, [sp, #0x1c]
	str r3, [r0, #4]
	str r2, [r0, #8]
	movs r1, #0x51
	str r1, [r0, #0xc]
	movs r1, #0x5f
	str r1, [r0, #0x10]
	str r5, [r0, #0x14]
	str r5, [r0, #0x18]
	bl .L080924F4
	.align 2, 0
.L080917E4: .4byte gUnk_0810016C
.L080917E8: .4byte gUnk_08100174
.L080917EC: .4byte vtable_unk_080E5A28
.L080917F0: .4byte vtable_unk_080E5B80
.L080917F4: .4byte 0x00000889
.L080917F8: .4byte vtable_unk_080E5E14
.L080917FC:
	ldr r2, [sp, #0x60]
	ldr r0, [r2]
	ldr r0, [r0, #4]
	mov sb, r0
	ldr r1, [sp, #0x64]
	ldr r0, [r1]
	cmp r0, #0
	beq .L08091818
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_080CECE8
.L08091818:
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #7
	bhi .L0809178A
	lsls r0, r0, #2
	ldr r1, .L08091830 @ =.L08091834
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08091830: .4byte .L08091834
.L08091834: @ jump table
	.4byte .L08091854 @ case 0
	.4byte .L08091F00 @ case 1
	.4byte .L08092054 @ case 2
	.4byte .L08092352 @ case 3
	.4byte .L08092398 @ case 4
	.4byte .L08092484 @ case 5
	.4byte .L080924B4 @ case 6
	.4byte .L08092514 @ case 7
.L08091854:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0809186C
	ldr r2, [sp, #0x60]
	ldr r0, [r2]
	bl func_080CDA44
	b .L080918E4
.L0809186C:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08091884
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	bl func_080CDB08
	b .L080918E4
.L08091884:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L0809189C
	ldr r2, [sp, #0x60]
	ldr r0, [r2]
	bl func_080CDCD0
	b .L080918E4
.L0809189C:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L080918B4
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	bl func_080CDC00
	b .L080918E4
.L080918B4:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L080918D6
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L080918D8
.L080918D6:
	movs r4, #1
.L080918D8:
	cmp r4, #0
	beq .L080918F0
	ldr r2, [sp, #0x60]
	ldr r0, [r2]
	bl func_080CDD7C
.L080918E4:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	b .L08091EE8
.L080918F0:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L08091900
	b .L08091E88
.L08091900:
	ldr r0, [sp, #0x64]
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08091910
	b .L08091C60
.L08091910:
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	cmp r1, #8
	ble .L08091990
	movs r5, #1
	cmp r1, #9
	bne .L08091938
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_0800F190
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
	b .L0809195C
.L08091938:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0]
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0809195C
	movs r5, #0
.L0809195C:
	cmp r5, #0
	beq .L08091962
	b .L08091EE8
.L08091962:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L0809198C @ =gUnk_0810017C
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L0809198C: .4byte gUnk_0810017C
.L08091990:
	cmp r1, #0
	beq .L08091996
	b .L08091AC0
.L08091996:
	adds r5, r7, #0
	adds r5, #0xfc
	ldr r0, [r5]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080919A8
	b .L08091EE8
.L080919A8:
	ldr r0, [r5]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x34
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x2f
	bgt .L08091A94
	ldr r0, [r5]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080913B0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080919FC
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L080919F8 @ =gUnk_081001A4
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xaa
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L080919F8: .4byte gUnk_081001A4
.L080919FC:
	ldr r1, [sp, #0x64]
	ldr r0, [r1]
	ldr r2, [sp, #0x60]
	ldr r1, [r2]
	ldr r1, [r1, #4]
	movs r2, #0
	bl func_080CEC84
	ldr r0, [r5]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x35
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne .L08091A54
	ldr r4, [r7, #8]
	ldr r0, .L08091A50 @ =0x00001BD8
	adds r4, r4, r0
	ldr r0, [r5]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x36
	strb r1, [r0]
	bl GetId__C4Tool
	str r0, [sp, #0x4c]
	movs r1, #1
	str r1, [sp, #0x58]
	b .L08091A68
	.align 2, 0
.L08091A50: .4byte 0x00001BD8
.L08091A54:
	ldr r0, [r5]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x37
	strb r1, [r0]
	bl GetId__C4Tool
	str r0, [sp, #0x4c]
.L08091A68:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091A90 @ =gUnk_081001D4
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091A90: .4byte gUnk_081001D4
.L08091A94:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091ABC @ =gUnk_08100208
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091ABC: .4byte gUnk_08100208
.L08091AC0:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r5, r7, r2
	ldr r4, [r5]
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091AE4
	b .L08091EE8
.L08091AE4:
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r6, [r0, #4]
	ldr r4, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x38
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x2f
	ble .L08091B12
	b .L08091C34
.L08091B12:
	ldr r4, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080913B0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091B64
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091B60 @ =gUnk_081001A4
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091B60: .4byte gUnk_081001A4
.L08091B64:
	ldr r1, [sp, #0x64]
	ldr r0, [r1]
	ldr r2, [sp, #0x60]
	ldr r1, [r2]
	ldr r1, [r1, #4]
	movs r2, #0
	bl func_080CEC84
	ldr r4, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x39
	strb r1, [r0]
	bl GetId__C4Tool
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	bne .L08091BE0
	ldr r4, [r7, #8]
	ldr r0, .L08091BDC @ =0x00001BD8
	adds r4, r4, r0
	ldr r5, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0800E550
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3a
	strb r1, [r0]
	bl GetId__C4Tool
	str r0, [sp, #0x4c]
	movs r1, #1
	str r1, [sp, #0x58]
	b .L08091C06
	.align 2, 0
.L08091BDC: .4byte 0x00001BD8
.L08091BE0:
	ldr r4, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3b
	strb r1, [r0]
	bl GetId__C4Tool
	str r0, [sp, #0x4c]
.L08091C06:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091C30 @ =gUnk_081001D4
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091C30: .4byte gUnk_081001D4
.L08091C34:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091C5C @ =gUnk_08100208
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091C5C: .4byte gUnk_08100208
.L08091C60:
	ldr r2, [sp, #0x60]
	ldr r0, [r2]
	ldr r4, [r0, #4]
	adds r0, r1, #0
	bl func_080CF050
	cmp r4, r0
	bne .L08091C72
	b .L08091EE8
.L08091C72:
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	cmp r1, #8
	bgt .L08091CEC
	movs r5, #0
	cmp r1, #0
	bne .L08091C94
	adds r0, r7, #0
	adds r0, #0xfc
	ldr r0, [r0]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08091CB8
	b .L08091CBE
.L08091C94:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0]
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08091CB8
	movs r5, #1
.L08091CB8:
	cmp r5, #0
	bne .L08091CBE
	b .L08091EE8
.L08091CBE:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091CE8 @ =gUnk_08100224
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091CE8: .4byte gUnk_08100224
.L08091CEC:
	cmp r1, #9
	bne .L08091D90
	movs r1, #0x80
	lsls r1, r1, #1
	adds r5, r7, r1
	ldr r0, [r5]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091D04
	b .L08091EE8
.L08091D04:
	ldr r0, [r5]
	bl func_0800F204
	adds r6, r0, #0
	cmp r6, #1
	bne .L08091D64
	ldr r0, [r5]
	bl func_0800F258
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080913DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091D64
	movs r2, #0x86
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r0, [r4]
	bl func_080CECD0
	ldr r0, [r4]
	ldr r2, [sp, #0x60]
	ldr r1, [r2]
	ldr r1, [r1, #4]
	movs r2, #0
	bl func_080CEC84
	ldr r0, [r5]
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x3c
	strb r1, [r0]
	bl GetId__C7Article
	str r0, [sp, #0x50]
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	str r6, [r0]
	b .L08091EE8
.L08091D64:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091D8C @ =gUnk_08100224
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091D8C: .4byte gUnk_08100224
.L08091D90:
	movs r0, #0x82
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, [r5]
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091DB4
	b .L08091EE8
.L08091DB4:
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r6, [r0, #4]
	ldr r4, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetKind__C12RucksackItem
	mov r8, r0
	cmp r0, #1
	bne .L08091E5A
	ldr r4, [r5]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	adds r0, r7, #0
	bl func_080913DC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08091E5A
	movs r2, #0x86
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r0, [r4]
	bl func_080CECD0
	ldr r0, [r4]
	ldr r2, [sp, #0x60]
	ldr r1, [r2]
	ldr r1, [r1, #4]
	movs r2, #0
	bl func_080CEC84
	ldr r5, [r5]
	ldr r0, [r4]
	bl func_080CF050
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r5, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x3d
	strb r1, [r0]
	bl GetId__C7Article
	str r0, [sp, #0x50]
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r2, r8
	str r2, [r0]
	b .L08091EE8
.L08091E5A:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091E84 @ =gUnk_08100224
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	b .L08091EE6
	.align 2, 0
.L08091E84: .4byte gUnk_08100224
.L08091E88:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08091EE8
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08091EB0
	adds r0, r1, #0
	bl func_080CECD0
	b .L08091EE8
.L08091EB0:
	ldr r2, [sp, #0x64]
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08091ECA
	adds r0, r1, #0
	bl func_080CECD0
	movs r0, #0
	str r0, [sp, #0x58]
	b .L08091EE8
.L08091ECA:
	adds r4, r7, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	ldr r1, .L08091EFC @ =gUnk_0810026C
	adds r0, r4, #0
	bl func_08050D8C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #7
.L08091EE6:
	str r0, [r1]
.L08091EE8:
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	cmp sb, r1
	bne .L08091EF4
	b .L0809178A
.L08091EF4:
	adds r0, r7, #0
	bl func_08091280
	b .L0809178A
	.align 2, 0
.L08091EFC: .4byte gUnk_0810026C
.L08091F00:
	movs r4, #0
	movs r2, #1
	ldr r1, [sp, #0x4c]
	lsrs r0, r1, #3
	cmp r0, #5
	bhi .L08091F4A
	lsls r0, r0, #2
	ldr r1, .L08091F18 @ =.L08091F1C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08091F18: .4byte .L08091F1C
.L08091F1C: @ jump table
	.4byte .L08091F34 @ case 0
	.4byte .L08091F38 @ case 1
	.4byte .L08091F3C @ case 2
	.4byte .L08091F40 @ case 3
	.4byte .L08091F44 @ case 4
	.4byte .L08091F48 @ case 5
.L08091F34:
	movs r2, #1
	b .L08091F4A
.L08091F38:
	movs r2, #0
	b .L08091F4A
.L08091F3C:
	movs r2, #2
	b .L08091F4A
.L08091F40:
	movs r2, #3
	b .L08091F4A
.L08091F44:
	movs r2, #4
	b .L08091F4A
.L08091F48:
	movs r2, #5
.L08091F4A:
	ldr r0, [sp, #0x50]
	subs r0, #0x12
	cmp r0, #0xa
	bhi .L08091FA6
	lsls r0, r0, #2
	ldr r1, .L08091F5C @ =.L08091F60
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08091F5C: .4byte .L08091F60
.L08091F60: @ jump table
	.4byte .L08091F8C @ case 0
	.4byte .L08091F94 @ case 1
	.4byte .L08091F9C @ case 2
	.4byte .L08091FA4 @ case 3
	.4byte .L08091FA6 @ case 4
	.4byte .L08091FA6 @ case 5
	.4byte .L08091FA6 @ case 6
	.4byte .L08091FA6 @ case 7
	.4byte .L08091FA6 @ case 8
	.4byte .L08091FA6 @ case 9
	.4byte .L08091FA4 @ case 10
.L08091F8C:
	ldr r4, .L08091F90 @ =0x00001770
	b .L08091FA6
	.align 2, 0
.L08091F90: .4byte 0x00001770
.L08091F94:
	ldr r4, .L08091F98 @ =0x00004650
	b .L08091FA6
	.align 2, 0
.L08091F98: .4byte 0x00004650
.L08091F9C:
	ldr r4, .L08091FA0 @ =0x00008CA0
	b .L08091FA6
	.align 2, 0
.L08091FA0: .4byte 0x00008CA0
.L08091FA4:
	ldr r4, .L08091FE4 @ =0x0000FFFF
.L08091FA6:
	ldr r0, [r7, #8]
	ldr r1, .L08091FE8 @ =0x00001BD8
	adds r0, r0, r1
	adds r1, r2, #0
	bl func_0800EB2C
	bl func_0800EF68
	cmp r4, r0
	bls .L08091FF0
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08091FEC @ =gUnk_0810029C
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_080CECD0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	b .L08092476
	.align 2, 0
.L08091FE4: .4byte 0x0000FFFF
.L08091FE8: .4byte 0x00001BD8
.L08091FEC: .4byte gUnk_0810029C
.L08091FF0:
	adds r0, r7, #0
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	bl func_08091420
	cmp r0, #2
	beq .L08092020
	cmp r0, #2
	bhi .L0809200A
	cmp r0, #1
	beq .L08092012
	bl .L0809178A
.L0809200A:
	cmp r0, #3
	beq .L0809204C
	bl .L0809178A
.L08092012:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L0809201C @ =gUnk_081002D8
	b .L08092456
	.align 2, 0
.L0809201C: .4byte gUnk_081002D8
.L08092020:
	adds r4, r7, #0
	adds r4, #0x80
	ldr r1, .L08092048 @ =gUnk_08100314
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	movs r0, #1
	str r0, [sp, #0x54]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #3
	str r0, [r1]
	bl .L0809178A
	.align 2, 0
.L08092048: .4byte gUnk_08100314
.L0809204C:
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	b .L080923CC
.L08092054:
	ldr r0, [sp, #0x50]
	subs r0, #0x12
	cmp r0, #0xa
	bhi .L080920C0
	lsls r0, r0, #2
	ldr r1, .L08092068 @ =.L0809206C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08092068: .4byte .L0809206C
.L0809206C: @ jump table
	.4byte .L08092098 @ case 0
	.4byte .L080920A0 @ case 1
	.4byte .L080920A6 @ case 2
	.4byte .L080920B0 @ case 3
	.4byte .L080920C0 @ case 4
	.4byte .L080920C0 @ case 5
	.4byte .L080920C0 @ case 6
	.4byte .L080920C0 @ case 7
	.4byte .L080920C0 @ case 8
	.4byte .L080920C0 @ case 9
	.4byte .L080920BC @ case 10
.L08092098:
	movs r1, #0xfa
	lsls r1, r1, #2
	str r1, [sp, #0x44]
	b .L080920C0
.L080920A0:
	movs r2, #0xfa
	lsls r2, r2, #3
	b .L080920BE
.L080920A6:
	ldr r0, .L080920AC @ =0x00000BB8
	str r0, [sp, #0x44]
	b .L080920C0
	.align 2, 0
.L080920AC: .4byte 0x00000BB8
.L080920B0:
	ldr r1, .L080920B8 @ =0x00001388
	str r1, [sp, #0x44]
	b .L080920C0
	.align 2, 0
.L080920B8: .4byte 0x00001388
.L080920BC:
	ldr r2, .L08092308 @ =0x0000C350
.L080920BE:
	str r2, [sp, #0x44]
.L080920C0:
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r4, r7, r0
	movs r1, #0
	mov sb, r1
	mov r2, sb
	strb r2, [r4]
	ldr r0, .L0809230C @ =gUnk_08100350
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x9f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08092100
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080920F0
	adds r4, r5, #0
.L080920F0:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r1, sb
	strb r1, [r0]
.L08092100:
	add r4, sp, #0x20
	ldr r0, [sp, #0x44]
	adds r1, r4, #0
	movs r2, #0
	bl func_0804EC84
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	mov r0, r8
	bl strlen
	mov r1, r8
	adds r1, r1, r0
	mov sb, r1
	movs r1, #0x9f
	subs r6, r1, r0
	mov sl, r4
	cmp r6, #0
	beq .L0809214A
	mov r0, sl
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08092138
	adds r5, r6, #0
.L08092138:
	mov r0, sb
	mov r1, sl
	adds r2, r5, #0
	bl memcpy
	mov r2, sb
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0809214A:
	mov r4, r8
	ldr r0, .L08092310 @ =gUnk_08100360
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x9f
	subs r6, r1, r0
	cmp r6, #0
	beq .L08092182
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L08092170
	adds r5, r6, #0
.L08092170:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L08092182:
	ldr r0, .L08092314 @ =gUnk_08100368
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r4, r4, r0
	movs r1, #0x9f
	subs r6, r1, r0
	cmp r6, #0
	beq .L080921B4
	mov r0, r8
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L080921A4
	adds r5, r6, #0
.L080921A4:
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl memcpy
	adds r1, r4, r5
	movs r0, #0
	strb r0, [r1]
.L080921B4:
	adds r0, r7, #0
	ldr r1, [sp, #0x4c]
	ldr r2, [sp, #0x50]
	bl func_080914A0
	str r0, [sp, #0x48]
	mov r5, sl
	adds r1, r5, #0
	movs r2, #0
	bl func_0804EC84
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	bl strlen
	adds r2, r4, r0
	mov r8, r2
	movs r1, #0x9f
	subs r6, r1, r0
	cmp r6, #0
	beq .L08092202
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L080921F0
	adds r5, r6, #0
.L080921F0:
	mov r0, r8
	mov r1, sl
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L08092202:
	adds r6, r4, #0
	ldr r1, .L08092318 @ =gUnk_0810037C
	mov sb, r1
	adds r0, r6, #0
	bl strlen
	adds r2, r6, r0
	mov r8, r2
	movs r1, #0x9f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0809223A
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08092228
	adds r4, r5, #0
.L08092228:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L0809223A:
	ldr r1, .L0809231C @ =gUnk_08100388
	mov r8, r1
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x9f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0809226C
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0809225C
	adds r4, r5, #0
.L0809225C:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0809226C:
	ldr r0, [r7, #8]
	ldr r2, .L08092320 @ =0x00001AA8
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #0
	ldr r2, [sp, #0x44]
	cmp r0, r2
	bhs .L0809227E
	movs r1, #1
.L0809227E:
	cmp r1, #0
	beq .L0809232C
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r6, r7, r0
	ldr r1, .L08092324 @ =gUnk_08100398
	mov sb, r1
	adds r0, r6, #0
	bl strlen
	adds r2, r6, r0
	mov r8, r2
	movs r1, #0x9f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080922BE
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080922AC
	adds r4, r5, #0
.L080922AC:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L080922BE:
	ldr r1, .L08092328 @ =gUnk_0810039C
	mov r8, r1
	mov r4, r8
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x9f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080922F2
	adds r0, r4, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080922E2
	adds r4, r5, #0
.L080922E2:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080922F2:
	movs r2, #0x86
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_080CECD0
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #5
	b .L08092334
	.align 2, 0
.L08092308: .4byte 0x0000C350
.L0809230C: .4byte gUnk_08100350
.L08092310: .4byte gUnk_08100360
.L08092314: .4byte gUnk_08100368
.L08092318: .4byte gUnk_0810037C
.L0809231C: .4byte gUnk_08100388
.L08092320: .4byte 0x00001AA8
.L08092324: .4byte gUnk_08100398
.L08092328: .4byte gUnk_0810039C
.L0809232C:
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #3
.L08092334:
	str r0, [r1]
	adds r4, r7, #0
	adds r4, #0x80
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r1, r7, r0
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	bl .L0809178A
.L08092352:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L08092360
	bl .L0809178A
.L08092360:
	adds r4, r7, #0
	adds r4, #0x80
	adds r0, r4, #0
	bl func_08050E5C
	ldr r1, .L08092390 @ =gUnk_081003DC
	ldr r2, .L08092394 @ =gUnk_081003E0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0
	bl func_08050E0C
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #4
	str r0, [r1]
	bl .L0809178A
	.align 2, 0
.L08092390: .4byte gUnk_081003DC
.L08092394: .4byte gUnk_081003E0
.L08092398:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L080923A6
	bl .L0809178A
.L080923A6:
	adds r4, r7, #0
	adds r4, #0x80
	adds r0, r4, #0
	bl func_08050DF0
	cmp r0, #1
	beq .L080923BC
	cmp r0, #2
	beq .L08092454
	bl .L0809178A
.L080923BC:
	ldr r0, [sp, #0x54]
	cmp r0, #0
	beq .L080923D4
	movs r1, #0
	str r1, [sp, #0x54]
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
.L080923CC:
	movs r0, #2
	str r0, [r1]
	bl .L0809178A
.L080923D4:
	ldr r1, [sp, #0x64]
	ldr r0, [r1]
	bl func_080CF050
	cmp r0, #0
	bne .L080923EE
	adds r0, r7, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #1
	bl SubtractAmount__9ToolStackUi
	b .L08092416
.L080923EE:
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r4, [r0]
	ldr r1, [sp, #0x64]
	ldr r0, [r1]
	bl func_080CF050
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	movs r1, #1
	bl SubtractAmount__9ToolStackUi
.L08092416:
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq .L08092424
	ldr r1, [sp, #0x4c]
	lsrs r0, r1, #3
	lsls r0, r0, #3
	str r0, [sp, #0x4c]
.L08092424:
	ldr r0, [sp, #0x14]
	ldr r1, .L08092450 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #6
	str r0, [r1]
	bl .L0809178A
	.align 2, 0
.L08092450: .4byte 0x00000889
.L08092454:
	ldr r1, .L08092480 @ =gUnk_0810026C
.L08092456:
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	movs r1, #0x86
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_080CECD0
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
.L08092476:
	movs r0, #5
	str r0, [r1]
	bl .L0809178A
	.align 2, 0
.L08092480: .4byte gUnk_0810026C
.L08092484:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L08092492
	bl .L0809178A
.L08092492:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050E5C
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_08091280
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	bl .L0809178A
.L080924B4:
	ldr r0, [sp, #0x14]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r5, r0, #0x1f
	cmp r5, #0
	bne .L08092514
	movs r0, #0x20
	bl __builtin_new
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r3, [r1]
	str r5, [r1]
	adds r2, #4
	adds r1, r7, r2
	ldrb r4, [r1]
	ldr r2, [r7, #8]
	ldr r1, .L08092510 @ =vtable_unk_080E5E14
	str r1, [r0]
	str r5, [sp, #0x1c]
	str r3, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [sp, #0x4c]
	str r1, [r0, #0xc]
	ldr r2, [sp, #0x50]
	str r2, [r0, #0x10]
	ldr r1, [sp, #0x44]
	str r1, [r0, #0x14]
	ldr r2, [sp, #0x48]
	str r2, [r0, #0x18]
.L080924F4:
	strb r4, [r0, #0x1c]
	str r5, [sp, #0x18]
	ldr r1, [sp, #0x40]
	str r0, [r1]
	ldr r1, [sp, #0x14]
	cmp r1, #0
	beq .L0809255C
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	b .L0809255C
	.align 2, 0
.L08092510: .4byte vtable_unk_080E5E14
.L08092514:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L08092522
	bl .L0809178A
.L08092522:
	ldr r2, [sp, #0x14]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08092532
	bl .L0809178A
.L08092532:
	movs r0, #1
	str r0, [sp, #0x5c]
	ldr r1, .L08092558 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	bl .L0809178A
	.align 2, 0
.L08092558: .4byte 0x00000889
.L0809255C:
	ldr r0, [sp, #0x40]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08092570
func_08092570: @ 0x08092570
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	mov sb, r2
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	ldr r0, .L080925C0 @ =vtable_unk_080E7DC8
	str r0, [r6]
	ldr r0, [r5]
	movs r1, #0
	mov r8, r1
	str r1, [r5]
	str r0, [sp]
	movs r0, #0xdc
	lsls r0, r0, #1
	bl __builtin_new
	mov r1, sp
	mov r2, sb
	adds r3, r4, #0
	bl func_08090EE0
	str r0, [r6, #4]
	ldr r0, [r5]
	mov r1, r8
	str r1, [r5]
	str r0, [r6, #8]
	adds r0, r6, #0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080925C0: .4byte vtable_unk_080E7DC8

	thumb_func_start func_080925C4
func_080925C4: @ 0x080925C4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L08092600 @ =vtable_unk_080E7DC8
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L080925E0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080925E0:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L080925F2
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080925F2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L08092600: .4byte vtable_unk_080E7DC8

	thumb_func_start func_08092604
func_08092604: @ 0x08092604
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, sp
	bl func_0809152C
	ldr r2, [sp]
	mov r0, sp
	str r0, [sp, #4]
	str r2, [sp, #8]
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1]
	str r2, [r4]
	ldr r1, [sp]
	cmp r1, #0
	beq .L08092634
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08092634:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08092640
func_08092640: @ 0x08092640
	push {r4, r5, lr}
	adds r4, r0, #0
	bl func_080CE19C
	ldr r0, .L08092688 @ =vtable_unk_080E7DD8
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x98
	movs r3, #0
	strb r3, [r0]
	adds r2, r4, #0
	adds r2, #0xfc
	ldr r1, [r4, #8]
	ldr r5, .L0809268C @ =0x00001C34
	adds r0, r1, r5
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r2, r4, r0
	subs r5, #8
	adds r0, r1, r5
	str r0, [r2]
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r4, r2
	adds r5, #0xc
	adds r1, r1, r5
	str r1, [r0]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r4, r1
	str r3, [r0]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L08092688: .4byte vtable_unk_080E7DD8
.L0809268C: .4byte 0x00001C34

	thumb_func_start func_08092690
func_08092690: @ 0x08092690
	push {lr}
	ldr r2, .L080926A0 @ =vtable_unk_080E7DD8
	str r2, [r0, #4]
	bl func_080E3504
	pop {r0}
	bx r0
	.align 2, 0
.L080926A0: .4byte vtable_unk_080E7DD8

	thumb_func_start func_080926A4
func_080926A4: @ 0x080926A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	movs r5, #0
	cmp r5, r7
	bhs .L08092708
.L080926B2:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0]
	adds r1, r5, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #4
	movs r2, #2
	bl memcpy
	add r0, sp, #4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092702
	add r0, sp, #4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	add r0, sp, #4
	bl GetAmount__C9ToolStack
	ldr r1, [r6, #0x78]
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r5, #0
	ldr r2, .L08092750 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CB304
.L08092702:
	adds r5, #1
	cmp r5, r7
	blo .L080926B2
.L08092708:
	adds r7, r6, #0
	adds r7, #0xfc
	ldr r0, [r7]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092746
	ldr r0, [r7]
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	bl GetIconId__C4Tool
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	ldr r5, [r6, #0x78]
	ldr r6, .L08092750 @ =gUnk_086678A0
	ldr r0, [r7]
	bl GetAmount__C9ToolStack
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080CBAF0
.L08092746:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08092750: .4byte gUnk_086678A0

	thumb_func_start func_08092754
func_08092754: @ 0x08092754
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	cmp r6, r7
	bhs .L080927DE
.L08092762:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	adds r1, r6, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #4]
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080927D8
	movs r4, #0
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L08092792
	cmp r0, #1
	beq .L080927A4
	b .L080927B8
.L08092792:
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	b .L080927B4
.L080927A4:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	bl GetIconId__C7Article
.L080927B4:
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
.L080927B8:
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080927C8
	movs r4, #0xb0
	lsls r4, r4, #1
.L080927C8:
	ldr r0, [r5, #0x7c]
	movs r1, #1
	str r1, [sp]
	adds r1, r6, #0
	ldr r2, .L08092808 @ =gUnk_086678A0
	adds r3, r4, #0
	bl func_080CC728
.L080927D8:
	adds r6, #1
	cmp r6, r7
	blo .L08092762
.L080927DE:
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r5, r2
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080927F2
	b .L08092934
.L080927F2:
	ldr r0, [r4]
	bl func_0800F204
	cmp r0, #5
	bls .L080927FE
	b .L08092934
.L080927FE:
	lsls r0, r0, #2
	ldr r1, .L0809280C @ =.L08092810
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08092808: .4byte gUnk_086678A0
.L0809280C: .4byte .L08092810
.L08092810: @ jump table
	.4byte .L08092828 @ case 0
	.4byte .L08092864 @ case 1
	.4byte .L080928A4 @ case 2
	.4byte .L080928D8 @ case 3
	.4byte .L08092928 @ case 4
	.4byte .L08092934 @ case 5
.L08092828:
	movs r0, #0x80
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F20C
	add r0, sp, #4
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092858
	movs r6, #0xb0
	lsls r6, r6, #1
.L08092858:
	ldr r0, [r5, #0x7c]
	ldr r1, .L08092860 @ =gUnk_086678A0
	adds r2, r6, #0
	b .L08092916
	.align 2, 0
.L08092860: .4byte gUnk_086678A0
.L08092864:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	bl GetIconId__C7Article
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [r4]
	add r0, sp, #4
	bl func_0800F294
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092898
	movs r6, #0xb0
	lsls r6, r6, #1
.L08092898:
	ldr r0, [r5, #0x7c]
	ldr r1, .L080928A0 @ =gUnk_086678A0
	adds r2, r6, #0
	b .L08092916
	.align 2, 0
.L080928A0: .4byte gUnk_086678A0
.L080928A4:
	ldr r0, [r5, #8]
	ldr r2, .L080928BC @ =0x00001C70
	adds r0, r0, r2
	bl GetGrowthStage__C3Dog
	cmp r0, #0
	bne .L080928C8
	ldr r0, [r5, #0x7c]
	ldr r1, .L080928C0 @ =gUnk_0858BA28
	ldr r2, .L080928C4 @ =0x000003DA
	b .L08092916
	.align 2, 0
.L080928BC: .4byte 0x00001C70
.L080928C0: .4byte gUnk_0858BA28
.L080928C4: .4byte 0x000003DA
.L080928C8:
	ldr r0, [r5, #0x7c]
	ldr r1, .L080928D4 @ =gUnk_0858BA28
	movs r2, #0xdd
	lsls r2, r2, #2
	b .L08092916
	.align 2, 0
.L080928D4: .4byte gUnk_0858BA28
.L080928D8:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl func_0800F344
	adds r1, r0, #0
	ldr r0, [r5, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L08092934
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	bne .L08092910
	ldr r0, [r5, #0x7c]
	ldr r1, .L08092908 @ =gUnk_0858BA28
	ldr r2, .L0809290C @ =0x0000073D
	b .L08092916
	.align 2, 0
.L08092908: .4byte gUnk_0858BA28
.L0809290C: .4byte 0x0000073D
.L08092910:
	ldr r0, [r5, #0x7c]
	ldr r1, .L08092920 @ =gUnk_0858BA28
	ldr r2, .L08092924 @ =0x00000734
.L08092916:
	movs r3, #1
	bl func_080CCE58
	b .L08092934
	.align 2, 0
.L08092920: .4byte gUnk_0858BA28
.L08092924: .4byte 0x00000734
.L08092928:
	ldr r0, [r5, #0x7c]
	ldr r1, .L0809293C @ =gUnk_086678A0
	movs r2, #0x35
	movs r3, #1
	bl func_080CCE58
.L08092934:
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0809293C: .4byte gUnk_086678A0

	thumb_func_start func_08092940
func_08092940: @ 0x08092940
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0
	mov r8, r0
	adds r5, r6, #0
	adds r5, #0x98
	mov r1, r8
	strb r1, [r5]
	cmp r7, #0
	beq .L0809298E
	cmp r7, #9
	beq .L080929B4
	cmp r7, #8
	bgt .L08092A02
	movs r0, #0x82
	lsls r0, r0, #1
	adds r0, r0, r6
	mov sb, r0
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092A3A
	b .L080929D2
.L0809298E:
	adds r4, r6, #0
	adds r4, #0xfc
	ldr r0, [r4]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092A3A
	ldr r0, [r4]
	bl GetTool__C9ToolStack
	add r2, sp, #8
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl func_080CF05C
	b .L08092A38
.L080929B4:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r6, r1
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092A3A
	ldr r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CF67C
	b .L08092A38
.L080929D2:
	adds r5, r6, #0
	adds r5, #0x98
	mov r0, sb
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	mov r2, sp
	adds r2, #9
	strb r0, [r2]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl func_080CF05C
	b .L08092A38
.L08092A02:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r4, [r0]
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp]
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092A3A
	ldr r2, [sp]
	str r2, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080CFA38
.L08092A38:
	mov r8, r0
.L08092A3A:
	mov r0, r8
	cmp r0, #0
	beq .L08092A50
	adds r0, r6, #0
	adds r0, #0x80
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L08092A5E
.L08092A50:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08092A6C @ =gUnk_081003F0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L08092A5E:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08092A6C: .4byte gUnk_081003F0

	thumb_func_start func_08092A70
func_08092A70: @ 0x08092A70
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	cmp r1, #0
	bne .L08092A8C
	adds r0, #0xfc
	ldr r0, [r0]
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092A8A
	b .L08092C84
.L08092A8A:
	b .L08092C62
.L08092A8C:
	cmp r1, #8
	bgt .L08092AC2
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r4, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetToolAt__8RucksackUi
	adds r1, r0, #0
	add r0, sp, #0xc
	movs r2, #2
	bl memcpy
	add r0, sp, #0xc
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092AC0
	b .L08092C84
.L08092AC0:
	b .L08092C62
.L08092AC2:
	cmp r1, #9
	beq .L08092AC8
	b .L08092C04
.L08092AC8:
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r5, r1
	ldr r0, [r4]
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092ADC
	b .L08092C84
.L08092ADC:
	ldr r0, [r4]
	bl func_0800F204
	adds r6, r0, #0
	cmp r6, #1
	beq .L08092B5C
	cmp r6, #1
	bgt .L08092AF2
	cmp r6, #0
	beq .L08092AF8
	b .L08092C62
.L08092AF2:
	cmp r6, #2
	beq .L08092BDC
	b .L08092C62
.L08092AF8:
	ldr r0, [r4]
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092B28
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092B24 @ =gUnk_081003F4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r5, r2
	b .L08092C80
	.align 2, 0
.L08092B24: .4byte gUnk_081003F4
.L08092B28:
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092B50 @ =gUnk_08100420
	ldr r2, .L08092B54 @ =gUnk_08100430
	ldr r3, .L08092B58 @ =gUnk_08100434
	str r6, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	adds r0, r4, #0
	bl func_08050E30
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
	b .L08092CB8
	.align 2, 0
.L08092B50: .4byte gUnk_08100420
.L08092B54: .4byte gUnk_08100430
.L08092B58: .4byte gUnk_08100434
.L08092B5C:
	ldr r0, [r4]
	bl func_0800F388
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08092B8C
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092B88 @ =gUnk_081003F4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r5, r2
	b .L08092C80
	.align 2, 0
.L08092B88: .4byte gUnk_081003F4
.L08092B8C:
	ldr r0, [r4]
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x14
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne .L08092C62
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092BD0 @ =gUnk_08100420
	ldr r2, .L08092BD4 @ =gUnk_08100430
	ldr r3, .L08092BD8 @ =gUnk_08100434
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl func_08050E30
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r1, #0x84
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0]
	b .L08092CBC
	.align 2, 0
.L08092BD0: .4byte gUnk_08100420
.L08092BD4: .4byte gUnk_08100430
.L08092BD8: .4byte gUnk_08100434
.L08092BDC:
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092C00 @ =gUnk_08100438
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x45
	bl func_08050E50
	movs r2, #0x84
	lsls r2, r2, #1
	adds r0, r5, r2
	str r6, [r0]
	b .L08092C84
	.align 2, 0
.L08092C00: .4byte gUnk_08100438
.L08092C04:
	add r6, sp, #0x10
	movs r2, #0x82
	lsls r2, r2, #1
	adds r0, r5, r2
	ldr r4, [r0]
	adds r0, r5, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [sp, #0x10]
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092C84
	adds r0, r6, #0
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08092C62
	adds r0, r6, #0
	bl GetKind__C12RucksackItem
	cmp r0, #0
	beq .L08092C94
	adds r0, r6, #0
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x15
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq .L08092C94
.L08092C62:
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092C90 @ =gUnk_081003F4
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r5, r0
.L08092C80:
	movs r0, #2
	str r0, [r1]
.L08092C84:
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xc7
	bl func_08008B6C
	b .L08092CBC
	.align 2, 0
.L08092C90: .4byte gUnk_081003F4
.L08092C94:
	adds r4, r5, #0
	adds r4, #0x80
	ldr r1, .L08092CC4 @ =gUnk_08100420
	ldr r2, .L08092CC8 @ =gUnk_08100430
	ldr r3, .L08092CCC @ =gUnk_08100434
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl func_08050E30
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r5, r2
.L08092CB8:
	movs r0, #1
	str r0, [r1]
.L08092CBC:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08092CC4: .4byte gUnk_08100420
.L08092CC8: .4byte gUnk_08100430
.L08092CCC: .4byte gUnk_08100434

	thumb_func_start func_08092CD0
func_08092CD0: @ 0x08092CD0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r6, #9
	bne .L08092CFC
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	bl func_0800F528
	ldr r0, [r5, #0x7c]
	ldr r1, .L08092CF8 @ =gUnk_086678A0
	movs r2, #0xb0
	lsls r2, r2, #1
	movs r3, #1
	bl func_080CCE58
	b .L08092D38
	.align 2, 0
.L08092CF8: .4byte gUnk_086678A0
.L08092CFC:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	adds r0, r4, #0
	bl GetItemAt__8RucksackUi
	bl TryWrap__12RucksackItem
	ldr r4, [r5, #0x7c]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080CE184
	adds r1, r0, #0
	ldr r2, .L08092D58 @ =gUnk_086678A0
	movs r3, #0xb0
	lsls r3, r3, #1
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	bl func_080CC728
.L08092D38:
	ldr r0, [r5, #8]
	ldr r1, .L08092D5C @ =0x00001AA8
	adds r0, r0, r1
	movs r1, #0x64
	bl func_0809ACC0
	ldr r0, [r5, #8]
	ldr r1, .L08092D60 @ =0x00001CD4
	adds r0, r0, r1
	movs r1, #1
	bl func_080A0A54
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08092D58: .4byte gUnk_086678A0
.L08092D5C: .4byte 0x00001AA8
.L08092D60: .4byte 0x00001CD4

	thumb_func_start func_08092D64
func_08092D64: @ 0x08092D64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080CE294
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	bl GetSize__C8Rucksack
	mov r8, r0
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08092FA0 @ =gUnk_08100450
	str r0, [sp]
	add r4, sp, #4
	movs r0, #1
	strb r0, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, r8
	bl func_080CAFC4
	adds r6, r7, #0
	adds r6, #0x78
	adds r5, r0, #0
	ldr r1, [r7, #0x78]
	mov sb, r4
	cmp r5, r1
	beq .L08092DDC
	cmp r1, #0
	beq .L08092DDC
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08092DDC:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	adds r0, r7, #0
	mov r1, r8
	bl func_080926A4
	movs r0, #0xcb
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08092FA4 @ =gUnk_08100458
	str r0, [sp]
	movs r0, #1
	mov r1, sb
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	mov r3, r8
	bl func_080CC15C
	adds r5, r7, #0
	adds r5, #0x7c
	adds r4, r0, #0
	ldr r1, [r7, #0x7c]
	cmp r4, r1
	beq .L08092E3C
	cmp r1, #0
	beq .L08092E3C
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08092E3C:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	adds r0, r7, #0
	mov r1, r8
	bl func_08092754
	movs r0, #0x8c
	bl __builtin_new
	adds r1, r7, #0
	movs r2, #1
	bl func_080CD9B0
	adds r6, r7, #0
	adds r6, #0x8c
	mov r8, r0
	ldr r5, [r6]
	mov sb, r6
	cmp r8, r5
	beq .L08092E9C
	cmp r5, #0
	beq .L08092E9C
	ldr r0, .L08092FA8 @ =vtable_unk_080E5A28
	str r0, [r5, #0x24]
	adds r4, r5, #0
	adds r4, #0x1c
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
	adds r0, r5, #0
	bl __builtin_delete
.L08092E9C:
	mov r0, r8
	str r0, [r6]
	movs r0, #0x88
	bl __builtin_new
	adds r1, r7, #0
	bl func_080CEC00
	movs r1, #0x90
	adds r1, r1, r7
	mov r8, r1
	adds r6, r0, #0
	ldr r5, [r1]
	cmp r6, r5
	beq .L08092EEE
	cmp r5, #0
	beq .L08092EEE
	adds r4, r5, #0
	adds r4, #0x74
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
	ldr r0, .L08092FA8 @ =vtable_unk_080E5A28
	str r0, [r5, #4]
	adds r0, r5, #0
	bl __builtin_delete
.L08092EEE:
	mov r2, r8
	str r6, [r2]
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_08092940
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #8
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L08092FAC @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0xc]
	ldr r1, .L08092FB0 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r2, #0
	str r2, [sp, #0x10]
	mov sl, r2
.L08092F56:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	adds r0, r7, #0
	bl func_080CE2C4
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r4, r0, #0x1f
	cmp r4, #0
	bne .L08092F56
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq .L08092F7E
	b .L08093194
.L08092F7E:
	mov r6, sb
	ldr r0, [r6]
	ldr r5, [r0, #4]
	movs r1, #0x84
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1]
	cmp r0, #1
	bne .L08092F94
	b .L080930B8
.L08092F94:
	cmp r0, #1
	bgt .L08092FB4
	cmp r0, #0
	beq .L08092FBC
	b .L08092F56
	.align 2, 0
.L08092FA0: .4byte gUnk_08100450
.L08092FA4: .4byte gUnk_08100458
.L08092FA8: .4byte vtable_unk_080E5A28
.L08092FAC: .4byte vtable_unk_080E5B80
.L08092FB0: .4byte 0x00000889
.L08092FB4:
	cmp r0, #2
	bne .L08092FBA
	b .L08093128
.L08092FBA:
	b .L08092F56
.L08092FBC:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08092FD2
	ldr r0, [r6]
	bl func_080CDA44
	b .L08093044
.L08092FD2:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08092FE8
	ldr r0, [r6]
	bl func_080CDB08
	b .L08093044
.L08092FE8:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L08092FFE
	ldr r0, [r6]
	bl func_080CDCD0
	b .L08093044
.L08092FFE:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L08093014
	ldr r0, [r6]
	bl func_080CDC00
	b .L08093044
.L08093014:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne .L08093036
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L08093038
.L08093036:
	movs r4, #1
.L08093038:
	cmp r4, #0
	beq .L08093050
	mov r2, sb
	ldr r0, [r2]
	bl func_080CDD7C
.L08093044:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	b .L080930A0
.L08093050:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L0809306C
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_08092A70
	b .L080930A0
.L0809306C:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L080930A0
	adds r4, r7, #0
	adds r4, #0x80
	adds r0, r4, #0
	ldr r1, .L080930B4 @ =gUnk_08100460
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	movs r2, #1
	mov sl, r2
	movs r0, #0x84
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #2
	str r0, [r1]
.L080930A0:
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0, #4]
	cmp r5, r1
	bne .L080930AC
	b .L08092F56
.L080930AC:
	adds r0, r7, #0
	bl func_08092940
	b .L08092F56
	.align 2, 0
.L080930B4: .4byte gUnk_08100460
.L080930B8:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L080930C4
	b .L08092F56
.L080930C4:
	adds r4, r7, #0
	adds r4, #0x80
	adds r0, r4, #0
	bl func_08050DF0
	adds r5, r0, #0
	cmp r5, #1
	beq .L080930DA
	cmp r5, #2
	beq .L08093108
	b .L08092F56
.L080930DA:
	adds r0, r4, #0
	ldr r1, .L08093104 @ =gUnk_08100490
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	ldr r0, [r6]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_08092CD0
	movs r2, #1
	mov sl, r2
	movs r0, #2
	mov r1, r8
	str r0, [r1]
	b .L08092F56
	.align 2, 0
.L08093104: .4byte gUnk_08100490
.L08093108:
	adds r0, r4, #0
	ldr r1, .L08093124 @ =gUnk_081004BC
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	adds r0, r4, #0
	movs r1, #0x43
	bl func_08050E50
	mov r2, r8
	str r5, [r2]
	b .L08092F56
	.align 2, 0
.L08093124: .4byte gUnk_081004BC
.L08093128:
	adds r0, r7, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #3
	beq .L08093134
	b .L08092F56
.L08093134:
	adds r0, r7, #0
	adds r0, #0x80
	bl func_08050E5C
	mov r0, sl
	cmp r0, #0
	beq .L0809317C
	ldr r2, [sp, #0xc]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08093170
	movs r1, #1
	str r1, [sp, #0x10]
	adds r0, r2, #0
	adds r0, #0xc
	ldr r1, .L08093178 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L08093170:
	mov r2, r8
	str r4, [r2]
	b .L08093188
	.align 2, 0
.L08093178: .4byte 0x00000889
.L0809317C:
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r0, #4]
	adds r0, r7, #0
	bl func_08092940
.L08093188:
	movs r2, #0x84
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	b .L08092F56
.L08093194:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080931B0
func_080931B0: @ 0x080931B0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L080931DC @ =vtable_unk_080E7DE4
	str r0, [r4]
	movs r0, #0x86
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r5, #0
	bl func_08092640
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
.L080931DC: .4byte vtable_unk_080E7DE4

	thumb_func_start func_080931E0
func_080931E0: @ 0x080931E0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L0809321C @ =vtable_unk_080E7DE4
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L080931FC
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080931FC:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L0809320E
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0809320E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0809321C: .4byte vtable_unk_080E7DE4

	thumb_func_start func_08093220
func_08093220: @ 0x08093220
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_08092D64
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0809323C
func_0809323C: @ 0x0809323C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r5, r1, #0
	bl func_08008444
	adds r4, r7, #0
	adds r4, #8
	adds r0, r4, #0
	bl func_0809424C
	ldr r0, .L080932FC @ =vtable_unk_080E7F0C
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0x38
	bl func_080D02CC
	adds r0, r4, #0
	movs r1, #0
	bl func_080E3A9C
	ldr r0, .L08093300 @ =vtable_unk_080E7DF4
	str r0, [r7, #8]
	ldr r0, .L08093304 @ =vtable_unk_080E7F00
	str r0, [r7, #4]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r6, #1
	str r6, [r0]
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r5, #0
	bl func_080947BC
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r7, r1
	str r5, [r0]
	add r0, sp, #0xc
	bl func_0800835C
	add r4, sp, #0x10
	adds r0, r4, #0
	bl func_0800770C
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r5, #0
	str r5, [sp]
	add r1, sp, #0xc
	str r1, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0
	movs r2, #0x1d
	movs r3, #0
	bl func_08050CC0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	movs r2, #0xea
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #1
	bl func_08008B54
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r7, r1
	strb r5, [r0]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r7, r2
	str r5, [r0]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r6, [r0]
	adds r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080932FC: .4byte vtable_unk_080E7F0C
.L08093300: .4byte vtable_unk_080E7DF4
.L08093304: .4byte vtable_unk_080E7F00

	thumb_func_start func_08093308
func_08093308: @ 0x08093308
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, .L08093358 @ =vtable_unk_080E7DF4
	str r0, [r5, #8]
	ldr r0, .L0809335C @ =vtable_unk_080E7F00
	str r0, [r5, #4]
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #2
	bl func_08050D0C
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L08093334
	movs r1, #3
	bl func_08094814
.L08093334:
	adds r4, r5, #0
	adds r4, #8
	ldr r0, .L08093360 @ =vtable_unk_080E7F0C
	str r0, [r5, #8]
	bl func_080D02EC
	adds r0, r4, #0
	movs r1, #0
	bl func_08094268
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080086BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08093358: .4byte vtable_unk_080E7DF4
.L0809335C: .4byte vtable_unk_080E7F00
.L08093360: .4byte vtable_unk_080E7F0C

	thumb_func_start func_08093364
func_08093364: @ 0x08093364
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0x10
	movs r3, #0xea
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #8]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0x10
	ldr r3, .L0809355C @ =0x00001E41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0x10
	ldr r3, .L08093560 @ =0x00001F42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, .L08093564 @ =0x0600F000
	mov r8, r0
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl func_08008EB8
	ldr r6, .L08093568 @ =0x0600F800
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L0809356C @ =0x06007FE0
	movs r2, #0x80
	lsls r2, r2, #8
	movs r0, #0
	bl func_08008EB8
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0x10
	movs r3, #0xb2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r1, #0
	mov sb, r1
	strh r2, [r0]
	ldr r0, .L08093570 @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L08093574 @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L08093578 @ =0x00030003
	adds r1, r6, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r0, .L0809357C @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r0, .L08093580 @ =0x03FF03FF
	mov r1, r8
	adds r2, r5, #0
	bl func_08008EB8
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08050D5C
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, .L08093584 @ =0x00001CD4
	adds r0, r0, r1
	movs r1, #0x1f
	bl func_0809FE3C
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_08050E68
	ldr r1, .L08093588 @ =func_080D0704
	movs r0, #7
	bl func_080D100C
	movs r0, #0x80
	bl func_0800050C
	movs r0, #0
	movs r1, #0x80
	bl func_08000540
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0x10
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	mov r2, sb
	str r2, [r4]
	str r2, [r4, #4]
	ldr r0, .L0809358C @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0x14]
	ldr r1, .L08093590 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r3, #0
	str r3, [sp, #0x50]
.L080934B8:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r0, [r7, #8]
	movs r1, #8
	adds r1, r1, r7
	mov sl, r1
	ldr r1, [r0, #0xc]
	mov r0, sl
	bl _call_via_r1
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	mov r0, r8
	bl func_08050D34
	movs r3, #0xec
	lsls r3, r3, #1
	adds r1, r7, r3
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
	movs r2, #0xea
	lsls r2, r2, #1
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, r8
	mov r1, sb
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	movs r3, #0xee
	lsls r3, r3, #1
	adds r1, r7, r3
	str r0, [r1]
	movs r0, #0xfb
	lsls r0, r0, #2
	adds r1, r7, r0
	ldrb r0, [r1]
	mov r2, sl
	str r2, [sp, #0x58]
	cmp r0, #0
	beq .L08093626
	movs r0, #0
	strb r0, [r1]
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #8
	bhi .L08093626
	lsls r0, r0, #2
	ldr r1, .L08093594 @ =.L08093598
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0809355C: .4byte 0x00001E41
.L08093560: .4byte 0x00001F42
.L08093564: .4byte 0x0600F000
.L08093568: .4byte 0x0600F800
.L0809356C: .4byte 0x06007FE0
.L08093570: .4byte gUnk_080F9F70
.L08093574: .4byte gUnk_080F9F74
.L08093578: .4byte 0x00030003
.L0809357C: .4byte gUnk_080F9F78
.L08093580: .4byte 0x03FF03FF
.L08093584: .4byte 0x00001CD4
.L08093588: .4byte func_080D0704
.L0809358C: .4byte vtable_unk_080E5B80
.L08093590: .4byte 0x00000889
.L08093594: .4byte .L08093598
.L08093598: @ jump table
	.4byte .L08093626 @ case 0
	.4byte .L08093626 @ case 1
	.4byte .L08093626 @ case 2
	.4byte .L08093626 @ case 3
	.4byte .L08093626 @ case 4
	.4byte .L08093626 @ case 5
	.4byte .L080935BC @ case 6
	.4byte .L08093626 @ case 7
	.4byte .L08093626 @ case 8
.L080935BC:
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x18]
	ldr r0, [sp, #0x58]
	bl _call_via_r1
	cmp r0, #1
	beq .L080935D8
	cmp r0, #1
	ble .L08093626
	cmp r0, #2
	beq .L080935F4
	cmp r0, #3
	beq .L08093610
	b .L08093626
.L080935D8:
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r1, .L080935F0 @ =gUnk_08100610
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
	b .L08093626
	.align 2, 0
.L080935F0: .4byte gUnk_08100610
.L080935F4:
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r1, .L0809360C @ =gUnk_08100638
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x3a
	bl func_08050E50
	b .L08093626
	.align 2, 0
.L0809360C: .4byte gUnk_08100638
.L08093610:
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r1, .L08093640 @ =gUnk_08100678
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x3a
	bl func_08050E50
.L08093626:
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #8
	bls .L08093634
	b .L08093A14
.L08093634:
	lsls r0, r0, #2
	ldr r1, .L08093644 @ =.L08093648
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08093640: .4byte gUnk_08100678
.L08093644: .4byte .L08093648
.L08093648: @ jump table
	.4byte .L0809366C @ case 0
	.4byte .L08093698 @ case 1
	.4byte .L080936B8 @ case 2
	.4byte .L080936F8 @ case 3
	.4byte .L08093758 @ case 4
	.4byte .L080937CA @ case 5
	.4byte .L08093940 @ case 6
	.4byte .L080939CC @ case 7
	.4byte .L08093A14 @ case 8
.L0809366C:
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r1, .L08093694 @ =gUnk_081006C4
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
	movs r1, #1
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	movs r3, #0xfb
	lsls r3, r3, #2
	adds r0, r7, r3
	b .L08093A12
	.align 2, 0
.L08093694: .4byte gUnk_081006C4
.L08093698:
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L080936A6
	b .L08093A14
.L080936A6:
	movs r1, #2
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	movs r3, #0xfb
	lsls r3, r3, #2
	adds r1, r7, r3
	b .L080937C4
.L080936B8:
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r1, .L080936EC @ =gUnk_0810073C
	ldr r2, .L080936F0 @ =gUnk_0810058C
	ldr r3, .L080936F4 @ =gUnk_08100590
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl func_08050E30
	adds r0, r4, #0
	movs r1, #0x39
	bl func_08050E50
	movs r1, #3
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	movs r3, #0xfb
	lsls r3, r3, #2
	adds r1, r7, r3
	b .L080937C4
	.align 2, 0
.L080936EC: .4byte gUnk_0810073C
.L080936F0: .4byte gUnk_0810058C
.L080936F4: .4byte gUnk_08100590
.L080936F8:
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L08093706
	b .L08093A14
.L08093706:
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08050DF0
	adds r2, r0, #0
	cmp r2, #1
	beq .L0809371E
	cmp r2, #2
	beq .L08093732
	b .L08093A14
.L0809371E:
	movs r0, #4
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r1, r7, r3
	str r0, [r1]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r2, [r0]
	b .L08093A14
.L08093732:
	ldr r1, .L08093754 @ =gUnk_08100758
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x3a
	bl func_08050E50
	movs r1, #7
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	movs r3, #0xfb
	lsls r3, r3, #2
	adds r0, r7, r3
	b .L080939B8
	.align 2, 0
.L08093754: .4byte gUnk_08100758
.L08093758:
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r4, r7, r3
	ldr r0, [r4]
	bl func_08094844
	ldr r0, [r4]
	bl func_080948E0
	str r0, [sp, #0x54]
	ldr r0, [r4]
	bl func_080948EC
	mov sl, r0
	ldr r0, [r4]
	bl func_080948FC
	mov sb, r0
	ldr r0, [r4]
	bl func_08094900
	mov r8, r0
	ldr r0, [r4]
	bl func_08094904
	adds r6, r0, #0
	ldr r0, [r4]
	bl func_08094908
	adds r5, r0, #0
	ldr r0, [r4]
	bl func_0809490C
	ldr r1, [r7, #8]
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	ldr r4, [r1, #8]
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x54]
	mov r2, sl
	mov r3, sb
	bl _call_via_r4
	movs r1, #5
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r0, r7, r3
	str r1, [r0]
	movs r0, #0xfb
	lsls r0, r0, #2
	adds r1, r7, r0
.L080937C4:
	movs r0, #1
	strb r0, [r1]
	b .L08093A14
.L080937CA:
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r6, #1
	strb r6, [r0]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #0x58]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080937E6
	b .L08093A14
.L080937E6:
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x18]
	ldr r0, [sp, #0x58]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r5, #0
	beq .L080937F8
	b .L0809392C
.L080937F8:
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r1, .L08093918 @ =gUnk_08100790
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x39
	bl func_08050E50
	movs r1, #7
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r0, r7, r3
	str r1, [r0]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r6, [r0]
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r0, r7, r2
	str r5, [r0]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r5, r7, r3
	ldr r0, [r5]
	bl func_08094910
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r1, [r4]
	ldr r2, .L0809391C @ =0x000021CC
	adds r1, r1, r2
	str r0, [r1, #4]
	ldr r0, [r5]
	bl func_0809496C
	adds r1, r0, #0
	ldr r0, [r4]
	ldr r3, .L08093920 @ =0x000021D4
	adds r0, r0, r3
	adds r5, r1, #0
	adds r5, #8
	cmp r5, r1
	beq .L08093862
	subs r4, r5, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
.L08093862:
	add r1, sp, #0x18
	str r5, [sp, #0x18]
	str r0, [sp, #0x1c]
	adds r0, r1, #0
	movs r2, #8
	bl memcpy
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
	ldr r0, [r0]
	add r5, sp, #0x20
	adds r1, r5, #0
	bl func_08094940
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1]
	ldr r2, .L08093924 @ =0x000021E0
	adds r6, r0, r2
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xe
	bls .L0809389E
	movs r4, #0xe
.L0809389E:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	movs r3, #0
	mov sl, r3
	strb r3, [r0]
	mov r1, sb
	ldr r0, [r1]
	add r5, sp, #0x30
	adds r1, r5, #0
	bl func_0809494C
	mov r2, r8
	ldr r0, [r2]
	ldr r3, .L08093928 @ =0x000021F0
	adds r6, r0, r3
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xe
	bls .L080938D2
	movs r4, #0xe
.L080938D2:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r1, sl
	strb r1, [r0]
	mov r2, sb
	ldr r0, [r2]
	add r5, sp, #0x40
	adds r1, r5, #0
	bl func_0809495C
	mov r3, r8
	ldr r0, [r3]
	movs r1, #0x88
	lsls r1, r1, #6
	adds r6, r0, r1
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xe
	bls .L08093906
	movs r4, #0xe
.L08093906:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r2, sl
	strb r2, [r0]
	b .L08093A14
	.align 2, 0
.L08093918: .4byte gUnk_08100790
.L0809391C: .4byte 0x000021CC
.L08093920: .4byte 0x000021D4
.L08093924: .4byte 0x000021E0
.L08093928: .4byte 0x000021F0
.L0809392C:
	movs r0, #6
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r1, r7, r3
	str r0, [r1]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r6, [r0]
	b .L08093A14
.L08093940:
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08050D34
	cmp r0, #3
	bne .L08093A14
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x18]
	ldr r0, [sp, #0x58]
	bl _call_via_r1
	cmp r0, #2
	beq .L08093998
	cmp r0, #3
	bne .L080939A8
	ldr r1, .L08093994 @ =gUnk_08100610
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
	movs r1, #7
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r0, r7, r3
	str r1, [r0]
	movs r0, #0xfb
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	b .L08093A14
	.align 2, 0
.L08093994: .4byte gUnk_08100610
.L08093998:
	ldr r1, .L080939C8 @ =gUnk_08100610
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
.L080939A8:
	movs r1, #7
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r0, r7, r3
	str r1, [r0]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r7, r1
.L080939B8:
	movs r1, #1
	strb r1, [r0]
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r0, r7, r2
	str r1, [r0]
	b .L08093A14
	.align 2, 0
.L080939C8: .4byte gUnk_08100610
.L080939CC:
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L08093A14
	bl func_080D02EC
	movs r0, #1
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x14]
	ldr r1, .L08093A54 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r1, #8
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	movs r3, #0xfb
	lsls r3, r3, #2
	adds r0, r7, r3
	add r1, sp, #0x50
	ldrb r1, [r1]
.L08093A12:
	strb r1, [r0]
.L08093A14:
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #0x58]
	bl _call_via_r1
	ldr r3, [sp, #0x14]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ldr r2, [sp, #0x50]
	cmp r2, #0
	bne .L08093A30
	b .L080934B8
.L08093A30:
	cmp r0, #0
	beq .L08093A36
	b .L080934B8
.L08093A36:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08093A54: .4byte 0x00000889

	thumb_func_start func_08093A58
func_08093A58: @ 0x08093A58
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L08093A84 @ =vtable_unk_080E8018
	str r0, [r4]
	movs r0, #0xfc
	lsls r0, r0, #2
	bl __builtin_new
	adds r1, r5, #0
	bl func_0809323C
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
.L08093A84: .4byte vtable_unk_080E8018

	thumb_func_start func_08093A88
func_08093A88: @ 0x08093A88
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L08093AC4 @ =vtable_unk_080E8018
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L08093AA4
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08093AA4:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L08093AB6
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08093AB6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L08093AC4: .4byte vtable_unk_080E8018

	thumb_func_start func_08093AC8
func_08093AC8: @ 0x08093AC8
	ldr r0, [r0, #4]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr

	thumb_func_start func_08093AD4
func_08093AD4: @ 0x08093AD4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_08093364
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
.L08093AF0:
	.byte 0xFB, 0x21, 0x89, 0x00, 0x40, 0x18, 0x01, 0x21, 0x01, 0x70, 0x70, 0x47, 0x02, 0x1C, 0xFA, 0x23
	.byte 0x9B, 0x00, 0xD0, 0x18, 0x01, 0x60, 0xFB, 0x20, 0x80, 0x00, 0x11, 0x18, 0x01, 0x20, 0x08, 0x70
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x84, 0xB0, 0x01, 0x1C, 0x00, 0x24
	.byte 0xF9, 0x20, 0x80, 0x00, 0x0A, 0x18, 0x10, 0x68, 0x00, 0x28, 0x02, 0xD0, 0x01, 0x28, 0x19, 0xD0
	.byte 0x2B, 0xE0, 0xEE, 0x23, 0x5B, 0x00, 0xC8, 0x18, 0x00, 0x68, 0x03, 0x28, 0x25, 0xD1, 0x01, 0x20
	.byte 0x10, 0x60, 0xE8, 0x22, 0x52, 0x00, 0x88, 0x18, 0x04, 0x49, 0x05, 0x4A, 0x00, 0x94, 0x01, 0x94
	.byte 0x02, 0x94, 0x03, 0x94, 0x00, 0x23, 0xBD, 0xF7, 0x59, 0xF9, 0x16, 0xE0, 0x8C, 0x05, 0x10, 0x08
	.byte 0x90, 0x05, 0x10, 0x08, 0xEE, 0x23, 0x5B, 0x00, 0xC8, 0x18, 0x00, 0x68, 0x03, 0x28, 0x0C, 0xD1
	.byte 0xE8, 0x22, 0x52, 0x00, 0x88, 0x18, 0xBD, 0xF7, 0x3B, 0xF9, 0x01, 0x28, 0x02, 0xD0, 0x02, 0x28
	.byte 0x02, 0xD0, 0x02, 0xE0, 0x02, 0x24, 0x00, 0xE0, 0x03, 0x24, 0x20, 0x1C, 0x04, 0xB0, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x30, 0xB5, 0x05, 0x1C, 0xF8, 0x21, 0x89, 0x00, 0x68, 0x18, 0x00, 0x21
	.byte 0x01, 0x60, 0xF9, 0x22, 0x92, 0x00, 0xA8, 0x18, 0x01, 0x60, 0xE8, 0x20, 0x40, 0x00, 0x2C, 0x18
	.byte 0x07, 0x49, 0x20, 0x1C, 0xBD, 0xF7, 0xEA, 0xF8, 0x20, 0x1C, 0x3A, 0x21, 0xBD, 0xF7, 0x48, 0xF9
	.byte 0xEE, 0x22, 0x52, 0x00, 0xA9, 0x18, 0x04, 0x20, 0x08, 0x60, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xEC, 0x05, 0x10, 0x08, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x04, 0x1C, 0xE8, 0x20, 0x40, 0x00
	.byte 0x24, 0x18, 0x05, 0x49, 0x20, 0x1C, 0xBD, 0xF7, 0xD1, 0xF8, 0x20, 0x1C, 0x38, 0x21, 0xBD, 0xF7
	.byte 0x2F, 0xF9, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xD8, 0x05, 0x10, 0x08, 0x00, 0xB5, 0x74, 0xF7
	.byte 0x65, 0xFE, 0x02, 0x21, 0x08, 0x40, 0x00, 0x28, 0x01, 0xD1, 0x00, 0x20, 0x00, 0xE0, 0x01, 0x20
	.byte 0x02, 0xBC, 0x08, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0xE8, 0x20, 0x40, 0x00, 0x24, 0x18, 0x06, 0x49
	.byte 0x20, 0x1C, 0x00, 0x22, 0x00, 0x23, 0xBD, 0xF7, 0xCF, 0xF8, 0x20, 0x1C, 0x38, 0x21, 0xBD, 0xF7
	.byte 0x0F, 0xF9, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x94, 0x05, 0x10, 0x08

	thumb_func_start func_08093C3C
func_08093C3C: @ 0x08093C3C
	bx lr
	.align 2, 0
.L08093C40:
	.byte 0x70, 0xB5, 0x83, 0xB0, 0x01, 0x1C, 0x00, 0x26, 0xF9, 0x20, 0x80, 0x00, 0x0C, 0x18, 0x20, 0x68
	.byte 0x00, 0x28, 0x02, 0xD0, 0x01, 0x28, 0x1B, 0xD0, 0x2D, 0xE0, 0xE8, 0x20, 0x40, 0x00, 0x0D, 0x18
	.byte 0x28, 0x1C, 0xBD, 0xF7, 0x67, 0xF8, 0x03, 0x28, 0x25, 0xD1, 0x01, 0x20, 0x20, 0x60, 0x05, 0x49
	.byte 0x05, 0x4A, 0x06, 0x4B, 0x00, 0x96, 0x01, 0x96, 0x02, 0x96, 0x28, 0x1C, 0xBD, 0xF7, 0xD8, 0xF8
	.byte 0x19, 0xE0, 0x00, 0x00, 0x88, 0x05, 0x10, 0x08, 0x8C, 0x05, 0x10, 0x08, 0x90, 0x05, 0x10, 0x08
	.byte 0xE8, 0x20, 0x40, 0x00, 0x0C, 0x18, 0x20, 0x1C, 0xBD, 0xF7, 0x4C, 0xF8, 0x03, 0x28, 0x0A, 0xD1
	.byte 0x20, 0x1C, 0xBD, 0xF7, 0xA5, 0xF8, 0x01, 0x28, 0x02, 0xD0, 0x02, 0x28, 0x02, 0xD0, 0x02, 0xE0
	.byte 0x02, 0x26, 0x00, 0xE0, 0x03, 0x26, 0x30, 0x1C, 0x03, 0xB0, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x10, 0xB5, 0x02, 0x1C, 0xF8, 0x21, 0x89, 0x00, 0x50, 0x18, 0x00, 0x21, 0x01, 0x60, 0xF9, 0x23
	.byte 0x9B, 0x00, 0xD0, 0x18, 0x01, 0x60, 0xE8, 0x20, 0x40, 0x00, 0x14, 0x18, 0x06, 0x49, 0x20, 0x1C
	.byte 0x00, 0x22, 0x00, 0x23, 0xBD, 0xF7, 0x70, 0xF8, 0x20, 0x1C, 0x3A, 0x21, 0xBD, 0xF7, 0xB0, 0xF8
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x58, 0x05, 0x10, 0x08, 0x10, 0xB5, 0x04, 0x1C
	.byte 0xE8, 0x20, 0x40, 0x00, 0x24, 0x18, 0x06, 0x49, 0x20, 0x1C, 0x00, 0x22, 0x00, 0x23, 0xBD, 0xF7
	.byte 0x5B, 0xF8, 0x20, 0x1C, 0x38, 0x21, 0xBD, 0xF7, 0x9B, 0xF8, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x40, 0x05, 0x10, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0xE8, 0x20, 0x40, 0x00, 0x24, 0x18, 0x06, 0x49
	.byte 0x20, 0x1C, 0x00, 0x22, 0x00, 0x23, 0xBD, 0xF7, 0x47, 0xF8, 0x20, 0x1C, 0x38, 0x21, 0xBD, 0xF7
	.byte 0x87, 0xF8, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x24, 0x05, 0x10, 0x08, 0x00, 0xB5, 0x74, 0xF7
	.byte 0xBD, 0xFD, 0x02, 0x21, 0x08, 0x40, 0x00, 0x28, 0x01, 0xD1, 0x00, 0x20, 0x00, 0xE0, 0x01, 0x20
	.byte 0x02, 0xBC, 0x08, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0xE8, 0x20, 0x40, 0x00, 0x24, 0x18, 0x06, 0x49
	.byte 0x20, 0x1C, 0x00, 0x22, 0x00, 0x23, 0xBD, 0xF7, 0x27, 0xF8, 0x20, 0x1C, 0x39, 0x21, 0xBD, 0xF7
	.byte 0x67, 0xF8, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xE0, 0x04, 0x10, 0x08, 0x00, 0xB5, 0x74, 0xF7
	.byte 0x9D, 0xFD, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x74, 0xF7, 0x93, 0xFD, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0xE2, 0x21, 0x49, 0x00, 0x40, 0x18, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00
	.byte 0x04, 0x49, 0x01, 0x60, 0x04, 0x49, 0x41, 0x60, 0x00, 0x21, 0x81, 0x60, 0x01, 0x21, 0x41, 0x73
	.byte 0x70, 0x47, 0x00, 0x00, 0x2C, 0x81, 0x0E, 0x08, 0x9C, 0x08, 0x10, 0x08

	thumb_func_start func_08093DCC
func_08093DCC: @ 0x08093DCC
	push {lr}
	adds r2, r0, #0
	ldr r0, .L08093DE8 @ =vtable_unk_080E812C
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L08093DE2
	adds r0, r2, #0
	bl __builtin_delete
.L08093DE2:
	pop {r0}
	bx r0
	.align 2, 0
.L08093DE8: .4byte vtable_unk_080E812C

	thumb_func_start func_08093DEC
func_08093DEC: @ 0x08093DEC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x14]
	ldr r7, [sp, #0x18]
	ldr r0, [r4]
	ldr r3, [r0, #0x20]
	adds r0, r4, #0
	bl _call_via_r3
	str r5, [r4, #0x14]
	str r6, [r4, #0x18]
	str r7, [r4, #0x1c]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x24]
	ldr r0, .L08093E1C @ =gUnk_081007AC
	str r0, [r4, #8]
	movs r0, #0
	strb r0, [r4, #0xd]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08093E1C: .4byte gUnk_081007AC

	thumb_func_start func_08093E20
func_08093E20: @ 0x08093E20
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x24]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L08093E8C
	str r1, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #0x12
	ldrsh r2, [r1, r0]
	cmp r2, #0
	ble .L08093E54
	movs r3, #0x14
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L08093E56
.L08093E54:
	ldr r1, [r1, #0x14]
.L08093E56:
	ldr r0, [r4, #4]
	movs r2, #0x10
	ldrsh r0, [r0, r2]
	adds r0, r4, r0
	bl _call_via_r1
	ldr r0, [r4, #4]
	movs r3, #2
	ldrsh r2, [r0, r3]
	cmp r2, #0
	ble .L08093E7E
	movs r1, #4
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L08093E80
.L08093E7E:
	ldr r1, [r0, #4]
.L08093E80:
	ldr r0, [r4, #4]
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r4, r0
	bl _call_via_r1
.L08093E8C:
	ldr r0, [r4, #4]
	movs r3, #0x1a
	ldrsh r2, [r0, r3]
	cmp r2, #0
	ble .L08093EA8
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L08093EAA
.L08093EA8:
	ldr r1, [r0, #0x1c]
.L08093EAA:
	ldr r0, [r4, #4]
	movs r2, #0x18
	ldrsh r0, [r0, r2]
	adds r0, r4, r0
	bl _call_via_r1
	adds r3, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0xa
	ldrsh r2, [r0, r1]
	cmp r2, #0
	ble .L08093ED4
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r2, [r0]
	b .L08093ED6
.L08093ED4:
	ldr r2, [r0, #0xc]
.L08093ED6:
	ldr r0, [r4, #4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	adds r1, r3, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08093EEC
func_08093EEC: @ 0x08093EEC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #4]
	movs r1, #0x22
	ldrsh r3, [r0, r1]
	cmp r3, #0
	ble .L08093F0C
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L08093F0E
.L08093F0C:
	ldr r1, [r0, #0x24]
.L08093F0E:
	ldr r0, [r2, #4]
	movs r3, #0x20
	ldrsh r0, [r0, r3]
	adds r0, r2, r0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08093F20
func_08093F20: @ 0x08093F20
	ldrb r0, [r0, #0xd]
	bx lr

	thumb_func_start func_08093F24
func_08093F24: @ 0x08093F24
	ldr r0, [r0, #0x10]
	bx lr

	thumb_func_start func_08093F28
func_08093F28: @ 0x08093F28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, [r4]
	ldr r1, [r0, #0x30]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08093F48
func_08093F48: @ 0x08093F48
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	bne .L08093F5A
	ldr r0, [r4]
	ldr r1, [r0, #0x3c]
	adds r0, r4, #0
	bl _call_via_r1
.L08093F5A:
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08093FA4
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08093F84
	ldr r0, .L08093F80 @ =gUnk_081008C4
	b .L08093FA2
	.align 2, 0
.L08093F80: .4byte gUnk_081008C4
.L08093F84:
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08093FA0
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, .L08093F9C @ =gUnk_0810089C
	b .L08093FA2
	.align 2, 0
.L08093F9C: .4byte gUnk_0810089C
.L08093FA0:
	ldr r0, .L08093FAC @ =gUnk_081007D4
.L08093FA2:
	str r0, [r4, #8]
.L08093FA4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08093FAC: .4byte gUnk_081007D4

	thumb_func_start func_08093FB0
func_08093FB0: @ 0x08093FB0
	push {lr}
	ldr r2, [r0]
	ldr r1, [r0, #0x14]
	ldr r1, [r1]
	ldr r3, [r2, #0x38]
	movs r2, #0
	bl _call_via_r3
	pop {r0}
	bx r0

	thumb_func_start func_08093FC4
func_08093FC4: @ 0x08093FC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08093FF4
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08093FF0
	ldr r0, .L08093FEC @ =gUnk_081008C4
	b .L08093FF2
	.align 2, 0
.L08093FEC: .4byte gUnk_081008C4
.L08093FF0:
	ldr r0, .L08093FFC @ =gUnk_081007FC
.L08093FF2:
	str r0, [r4, #8]
.L08093FF4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08093FFC: .4byte gUnk_081007FC

	thumb_func_start func_08094000
func_08094000: @ 0x08094000
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x4c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, [r4, #0x14]
	str r0, [r1, #8]
	ldr r0, [r4]
	ldr r1, [r0, #0x50]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094032
	ldr r0, [r4]
	ldr r3, [r0, #0x38]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	b .L08094040
.L08094032:
	ldr r0, [r4]
	ldr r3, [r0, #0x38]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
.L08094040:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08094048
func_08094048: @ 0x08094048
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080940B0
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094074
	ldr r0, .L08094070 @ =gUnk_081008C4
	b .L080940AE
	.align 2, 0
.L08094070: .4byte gUnk_081008C4
.L08094074:
	ldr r0, [r4]
	ldr r1, [r0, #0x54]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080940A8
	ldr r0, [r4]
	ldr r1, [r0, #0x58]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809409C
	ldr r0, .L08094098 @ =gUnk_08100824
	b .L080940AE
	.align 2, 0
.L08094098: .4byte gUnk_08100824
.L0809409C:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, .L080940A4 @ =gUnk_0810084C
	b .L080940AE
	.align 2, 0
.L080940A4: .4byte gUnk_0810084C
.L080940A8:
	movs r0, #3
	str r0, [r4, #0x10]
	ldr r0, .L080940B8 @ =gUnk_0810089C
.L080940AE:
	str r0, [r4, #8]
.L080940B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080940B8: .4byte gUnk_0810089C
.L080940BC:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_080940C0
func_080940C0: @ 0x080940C0
	push {lr}
	adds r2, r0, #0
	cmp r1, #2
	beq .L080940CE
	cmp r1, #3
	beq .L080940D2
	b .L080940DA
.L080940CE:
	movs r0, #1
	b .L080940D4
.L080940D2:
	movs r0, #0
.L080940D4:
	strb r0, [r2, #0xc]
	ldr r0, .L080940E0 @ =gUnk_0810084C
	str r0, [r2, #8]
.L080940DA:
	pop {r0}
	bx r0
	.align 2, 0
.L080940E0: .4byte gUnk_0810084C

	thumb_func_start func_080940E4
func_080940E4: @ 0x080940E4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq .L080940FE
	ldr r0, [r1]
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #1
	bl _call_via_r3
	b .L0809410C
.L080940FE:
	ldr r0, [r1]
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl _call_via_r3
.L0809410C:
	pop {r0}
	bx r0

	thumb_func_start func_08094110
func_08094110: @ 0x08094110
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	bne .L08094122
	ldr r0, [r4]
	ldr r1, [r0, #0x3c]
	adds r0, r4, #0
	bl _call_via_r1
.L08094122:
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809419C
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809414C
	ldr r0, .L08094148 @ =gUnk_081008C4
	b .L0809419A
	.align 2, 0
.L08094148: .4byte gUnk_081008C4
.L0809414C:
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094168
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, .L08094164 @ =gUnk_0810089C
	b .L0809419A
	.align 2, 0
.L08094164: .4byte gUnk_0810089C
.L08094168:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne .L0809417C
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, .L08094178 @ =gUnk_0810089C
	b .L0809419A
	.align 2, 0
.L08094178: .4byte gUnk_0810089C
.L0809417C:
	ldr r0, [r4]
	ldr r1, [r0, #0x5c]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08094198
	movs r0, #2
	str r0, [r4, #0x10]
	ldr r0, .L08094194 @ =gUnk_0810089C
	b .L0809419A
	.align 2, 0
.L08094194: .4byte gUnk_0810089C
.L08094198:
	ldr r0, .L080941A4 @ =gUnk_08100874
.L0809419A:
	str r0, [r4, #8]
.L0809419C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080941A4: .4byte gUnk_08100874

	thumb_func_start func_080941A8
func_080941A8: @ 0x080941A8
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, [r0]
	ldr r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	ldr r3, [r0, #0x20]
	ldr r4, [r0, #0x24]
	str r4, [sp]
	ldr r4, [r5, #0x34]
	bl _call_via_r4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080941C8
func_080941C8: @ 0x080941C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080941FE
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq .L080941F8
	ldr r0, .L080941F4 @ =gUnk_081008C4
	b .L080941FC
	.align 2, 0
.L080941F4: .4byte gUnk_081008C4
.L080941F8:
	str r0, [r4, #0x10]
	ldr r0, .L08094204 @ =gUnk_0810089C
.L080941FC:
	str r0, [r4, #8]
.L080941FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08094204: .4byte gUnk_0810089C
.L08094208:
	.byte 0x00, 0xB5, 0x01, 0x21, 0x41, 0x73, 0x01, 0x68
	.byte 0xC9, 0x6A, 0x3F, 0xF0, 0x7D, 0xFB, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x02, 0x1C, 0x02, 0x29, 0x02, 0xD0, 0x03, 0x29, 0x05, 0xD0
	.byte 0x08, 0xE0, 0x01, 0x48, 0x05, 0xE0, 0x00, 0x00, 0xAC, 0x07, 0x10, 0x08, 0x01, 0x20, 0x10, 0x61
	.byte 0x01, 0x48, 0x90, 0x60, 0x01, 0xBC, 0x00, 0x47, 0x9C, 0x08, 0x10, 0x08

	thumb_func_start func_0809424C
func_0809424C: @ 0x0809424C
	ldr r1, .L08094260 @ =vtable_unk_080E8028
	str r1, [r0]
	ldr r1, .L08094264 @ =gUnk_081009DC
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0, #8]
	movs r1, #1
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0
.L08094260: .4byte vtable_unk_080E8028
.L08094264: .4byte gUnk_081009DC

	thumb_func_start func_08094268
func_08094268: @ 0x08094268
	push {lr}
	adds r2, r0, #0
	ldr r0, .L08094284 @ =vtable_unk_080E8028
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L0809427E
	adds r0, r2, #0
	bl __builtin_delete
.L0809427E:
	pop {r0}
	bx r0
	.align 2, 0
.L08094284: .4byte vtable_unk_080E8028

	thumb_func_start func_08094288
func_08094288: @ 0x08094288
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x14]
	ldr r7, [sp, #0x18]
	ldr r0, [r4]
	ldr r3, [r0, #0x20]
	adds r0, r4, #0
	bl _call_via_r3
	str r5, [r4, #0x14]
	str r6, [r4, #0x20]
	str r7, [r4, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x2c]
	ldr r0, .L080942B8 @ =gUnk_081008EC
	str r0, [r4, #8]
	movs r0, #0
	strb r0, [r4, #0xd]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080942B8: .4byte gUnk_081008EC

	thumb_func_start func_080942BC
func_080942BC: @ 0x080942BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x24]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L08094328
	str r1, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #0x12
	ldrsh r2, [r1, r0]
	cmp r2, #0
	ble .L080942F0
	movs r3, #0x14
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L080942F2
.L080942F0:
	ldr r1, [r1, #0x14]
.L080942F2:
	ldr r0, [r4, #4]
	movs r2, #0x10
	ldrsh r0, [r0, r2]
	adds r0, r4, r0
	bl _call_via_r1
	ldr r0, [r4, #4]
	movs r3, #2
	ldrsh r2, [r0, r3]
	cmp r2, #0
	ble .L0809431A
	movs r1, #4
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L0809431C
.L0809431A:
	ldr r1, [r0, #4]
.L0809431C:
	ldr r0, [r4, #4]
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r4, r0
	bl _call_via_r1
.L08094328:
	ldr r0, [r4, #4]
	movs r3, #0x1a
	ldrsh r2, [r0, r3]
	cmp r2, #0
	ble .L08094344
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L08094346
.L08094344:
	ldr r1, [r0, #0x1c]
.L08094346:
	ldr r0, [r4, #4]
	movs r2, #0x18
	ldrsh r0, [r0, r2]
	adds r0, r4, r0
	bl _call_via_r1
	adds r3, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0xa
	ldrsh r2, [r0, r1]
	cmp r2, #0
	ble .L08094370
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r2, [r0]
	b .L08094372
.L08094370:
	ldr r2, [r0, #0xc]
.L08094372:
	ldr r0, [r4, #4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	adds r1, r3, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08094388
func_08094388: @ 0x08094388
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #4]
	movs r1, #0x22
	ldrsh r3, [r0, r1]
	cmp r3, #0
	ble .L080943A8
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L080943AA
.L080943A8:
	ldr r1, [r0, #0x24]
.L080943AA:
	ldr r0, [r2, #4]
	movs r3, #0x20
	ldrsh r0, [r0, r3]
	adds r0, r2, r0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080943BC
func_080943BC: @ 0x080943BC
	ldrb r0, [r0, #0xd]
	bx lr

	thumb_func_start func_080943C0
func_080943C0: @ 0x080943C0
	ldr r0, [r0, #0x10]
	bx lr

	thumb_func_start func_080943C4
func_080943C4: @ 0x080943C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, [r4]
	ldr r1, [r0, #0x30]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080943E4
func_080943E4: @ 0x080943E4
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	bne .L080943F6
	ldr r0, [r4]
	ldr r1, [r0, #0x3c]
	adds r0, r4, #0
	bl _call_via_r1
.L080943F6:
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094440
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094420
	ldr r0, .L0809441C @ =gUnk_08100A04
	b .L0809443E
	.align 2, 0
.L0809441C: .4byte gUnk_08100A04
.L08094420:
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809443C
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, .L08094438 @ =gUnk_081009DC
	b .L0809443E
	.align 2, 0
.L08094438: .4byte gUnk_081009DC
.L0809443C:
	ldr r0, .L08094448 @ =gUnk_08100914
.L0809443E:
	str r0, [r4, #8]
.L08094440:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08094448: .4byte gUnk_08100914

	thumb_func_start func_0809444C
func_0809444C: @ 0x0809444C
	push {r4, lr}
	sub sp, #4
	ldr r4, [r0]
	ldr r1, [r0, #0x14]
	adds r3, r0, #0
	adds r3, #0x18
	movs r2, #8
	str r2, [sp]
	ldr r4, [r4, #0x34]
	bl _call_via_r4
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809446C
func_0809446C: @ 0x0809446C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809449C
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094498
	ldr r0, .L08094494 @ =gUnk_08100A04
	b .L0809449A
	.align 2, 0
.L08094494: .4byte gUnk_08100A04
.L08094498:
	ldr r0, .L080944A4 @ =gUnk_0810093C
.L0809449A:
	str r0, [r4, #8]
.L0809449C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080944A4: .4byte gUnk_0810093C

	thumb_func_start func_080944A8
func_080944A8: @ 0x080944A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #8]
	ldr r0, [r4]
	ldr r1, [r0, #0x50]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080944D2
	ldr r0, [r4]
	ldr r3, [r0, #0x38]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	b .L080944E0
.L080944D2:
	ldr r0, [r4]
	ldr r3, [r0, #0x38]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
.L080944E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080944E8
func_080944E8: @ 0x080944E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094550
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094514
	ldr r0, .L08094510 @ =gUnk_08100A04
	b .L0809454E
	.align 2, 0
.L08094510: .4byte gUnk_08100A04
.L08094514:
	ldr r0, [r4]
	ldr r1, [r0, #0x54]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094548
	ldr r0, [r4]
	ldr r1, [r0, #0x58]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809453C
	ldr r0, .L08094538 @ =gUnk_08100964
	b .L0809454E
	.align 2, 0
.L08094538: .4byte gUnk_08100964
.L0809453C:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, .L08094544 @ =gUnk_0810098C
	b .L0809454E
	.align 2, 0
.L08094544: .4byte gUnk_0810098C
.L08094548:
	movs r0, #3
	str r0, [r4, #0x10]
	ldr r0, .L08094558 @ =gUnk_081009DC
.L0809454E:
	str r0, [r4, #8]
.L08094550:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08094558: .4byte gUnk_081009DC
.L0809455C:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_08094560
func_08094560: @ 0x08094560
	push {lr}
	adds r2, r0, #0
	cmp r1, #2
	beq .L0809456E
	cmp r1, #3
	beq .L08094572
	b .L0809457A
.L0809456E:
	movs r0, #1
	b .L08094574
.L08094572:
	movs r0, #0
.L08094574:
	strb r0, [r2, #0xc]
	ldr r0, .L08094580 @ =gUnk_0810098C
	str r0, [r2, #8]
.L0809457A:
	pop {r0}
	bx r0
	.align 2, 0
.L08094580: .4byte gUnk_0810098C

	thumb_func_start func_08094584
func_08094584: @ 0x08094584
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq .L0809459E
	ldr r0, [r1]
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #1
	bl _call_via_r3
	b .L080945AC
.L0809459E:
	ldr r0, [r1]
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl _call_via_r3
.L080945AC:
	pop {r0}
	bx r0

	thumb_func_start func_080945B0
func_080945B0: @ 0x080945B0
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	bne .L080945C2
	ldr r0, [r4]
	ldr r1, [r0, #0x3c]
	adds r0, r4, #0
	bl _call_via_r1
.L080945C2:
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809463C
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080945EC
	ldr r0, .L080945E8 @ =gUnk_08100A04
	b .L0809463A
	.align 2, 0
.L080945E8: .4byte gUnk_08100A04
.L080945EC:
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094608
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, .L08094604 @ =gUnk_081009DC
	b .L0809463A
	.align 2, 0
.L08094604: .4byte gUnk_081009DC
.L08094608:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne .L0809461C
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, .L08094618 @ =gUnk_081009DC
	b .L0809463A
	.align 2, 0
.L08094618: .4byte gUnk_081009DC
.L0809461C:
	ldr r0, [r4]
	ldr r1, [r0, #0x5c]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08094638
	movs r0, #2
	str r0, [r4, #0x10]
	ldr r0, .L08094634 @ =gUnk_081009DC
	b .L0809463A
	.align 2, 0
.L08094634: .4byte gUnk_081009DC
.L08094638:
	ldr r0, .L08094644 @ =gUnk_081009B4
.L0809463A:
	str r0, [r4, #8]
.L0809463C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08094644: .4byte gUnk_081009B4

	thumb_func_start func_08094648
func_08094648: @ 0x08094648
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, [r0]
	ldr r1, [r0, #0x20]
	ldr r2, [r0, #0x24]
	ldr r3, [r0, #0x28]
	ldr r4, [r0, #0x2c]
	str r4, [sp]
	ldr r4, [r5, #0x34]
	bl _call_via_r4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08094668
func_08094668: @ 0x08094668
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809469E
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq .L08094698
	ldr r0, .L08094694 @ =gUnk_08100A04
	b .L0809469C
	.align 2, 0
.L08094694: .4byte gUnk_08100A04
.L08094698:
	str r0, [r4, #0x10]
	ldr r0, .L080946A4 @ =gUnk_081009DC
.L0809469C:
	str r0, [r4, #8]
.L0809469E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080946A4: .4byte gUnk_081009DC

	thumb_func_start func_080946A8
func_080946A8: @ 0x080946A8
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	ldr r1, [r0]
	ldr r1, [r1, #0x2c]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080946BC
func_080946BC: @ 0x080946BC
	bx lr
	.align 2, 0

	thumb_func_start func_080946C0
func_080946C0: @ 0x080946C0
	bx lr
	.align 2, 0

	thumb_func_start func_080946C4
func_080946C4: @ 0x080946C4
	push {lr}
	adds r2, r0, #0
	cmp r1, #2
	beq .L080946D2
	cmp r1, #3
	beq .L080946DC
	b .L080946E4
.L080946D2:
	ldr r0, .L080946D8 @ =gUnk_081008EC
	b .L080946E2
	.align 2, 0
.L080946D8: .4byte gUnk_081008EC
.L080946DC:
	movs r0, #1
	str r0, [r2, #0x10]
	ldr r0, .L080946E8 @ =gUnk_081009DC
.L080946E2:
	str r0, [r2, #8]
.L080946E4:
	pop {r0}
	bx r0
	.align 2, 0
.L080946E8: .4byte gUnk_081009DC
.L080946EC:
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x40, 0x69, 0x80, 0x68
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47
	.byte 0x70, 0x47, 0x00, 0x00, 0x40, 0x69, 0x80, 0x68, 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_080947BC
func_080947BC: @ 0x080947BC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	str r1, [r4]
	bl func_08094904
	bl __builtin_vec_new
	str r0, [r4, #4]
	adds r0, r4, #0
	bl func_0809490C
	bl __builtin_vec_new
	str r0, [r4, #8]
	movs r3, #0
	movs r6, #1
	adds r5, r4, #0
	adds r5, #0x18
.L080947E0:
	ldr r0, [r4]
	adds r2, r3, #0
	cmp r3, #0
	bge .L080947EA
	adds r2, r3, #7
.L080947EA:
	asrs r2, r2, #3
	lsls r1, r2, #3
	subs r1, r3, r1
	ldr r7, .L08094810 @ =0x000021D4
	adds r0, r0, r7
	adds r0, r0, r2
	ldrb r0, [r0]
	asrs r0, r1
	ands r0, r6
	adds r1, r5, r3
	strb r0, [r1]
	adds r3, #1
	cmp r3, #0x30
	ble .L080947E0
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08094810: .4byte 0x000021D4

	thumb_func_start func_08094814
func_08094814: @ 0x08094814
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq .L08094824
	bl __builtin_vec_delete
.L08094824:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq .L0809482E
	bl __builtin_vec_delete
.L0809482E:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq .L0809483C
	adds r0, r4, #0
	bl __builtin_delete
.L0809483C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08094844
func_08094844: @ 0x08094844
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, [r4, #4]
	ldr r0, [r4]
	ldr r2, .L080948D0 @ =0x000021CC
	adds r1, r0, r2
	ldr r7, [r1]
	ldr r1, [r1, #4]
	str r1, [sp]
	adds r0, #0x14
	bl method_08009AF4__C4Farm
	mov sb, r0
	ldr r0, [r4]
	ldr r1, .L080948D4 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E4E0
	mov sl, r0
	ldr r0, [r4]
	ldr r2, .L080948D8 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A0A04
	bl func_0809EACC
	mov r8, r0
	ldr r5, [r4]
	ldr r0, .L080948DC @ =0x000021DC
	adds r5, r5, r0
	str r7, [r4, #0xc]
	ldr r1, [sp]
	str r1, [r4, #0x10]
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, sb
	bl func_08094994
	adds r1, r6, #0
	adds r1, #0xd
	adds r0, r4, #0
	mov r2, sl
	bl func_08094994
	adds r1, r6, #0
	adds r1, #0x1a
	adds r0, r4, #0
	mov r2, r8
	bl func_08094994
	adds r6, #0x27
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #4
	bl func_08094974
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080948D0: .4byte 0x000021CC
.L080948D4: .4byte 0x00001BD8
.L080948D8: .4byte 0x00001CD4
.L080948DC: .4byte 0x000021DC

	thumb_func_start func_080948E0
func_080948E0: @ 0x080948E0
	ldr r0, .L080948E8 @ =gUnk_08100A98
	ldr r0, [r0]
	bx lr
	.align 2, 0
.L080948E8: .4byte gUnk_08100A98

	thumb_func_start func_080948EC
func_080948EC: @ 0x080948EC
	ldr r0, .L080948F4 @ =gUnk_08100AA0
	ldr r0, [r0]
	bx lr
	.align 2, 0
.L080948F4: .4byte gUnk_08100AA0
.L080948F8:
	.byte 0x0C, 0x30, 0x70, 0x47

	thumb_func_start func_080948FC
func_080948FC: @ 0x080948FC
	adds r0, #0xc
	bx lr

	thumb_func_start func_08094900
func_08094900: @ 0x08094900
	ldr r0, [r0, #4]
	bx lr

	thumb_func_start func_08094904
func_08094904: @ 0x08094904
	movs r0, #0x2b
	bx lr

	thumb_func_start func_08094908
func_08094908: @ 0x08094908
	ldr r0, [r0, #8]
	bx lr

	thumb_func_start func_0809490C
func_0809490C: @ 0x0809490C
	movs r0, #0x2f
	bx lr

	thumb_func_start func_08094910
func_08094910: @ 0x08094910
	ldr r0, [r0, #0x14]
	bx lr
.L08094914:
	.byte 0x00, 0xB5, 0x82, 0x68, 0x00, 0xF0, 0x72, 0xF8, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x82, 0x68, 0x0D, 0x32, 0x00, 0xF0, 0x6B, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x82, 0x68, 0x1A, 0x32, 0x00, 0xF0, 0x63, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	thumb_func_start func_08094940
func_08094940: @ 0x08094940
	push {lr}
	ldr r2, [r0, #8]
	bl func_08094A00
	pop {r0}
	bx r0

	thumb_func_start func_0809494C
func_0809494C: @ 0x0809494C
	push {lr}
	ldr r2, [r0, #8]
	adds r2, #0xd
	bl func_08094A00
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809495C
func_0809495C: @ 0x0809495C
	push {lr}
	ldr r2, [r0, #8]
	adds r2, #0x1a
	bl func_08094A00
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809496C
func_0809496C: @ 0x0809496C
	ldr r0, [r0, #8]
	adds r0, #0x27
	bx lr
	.align 2, 0

	thumb_func_start func_08094974
func_08094974: @ 0x08094974
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	movs r2, #0
	cmp r2, r3
	bhs .L0809498E
.L08094980:
	adds r0, r5, r2
	adds r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, r3
	blo .L08094980
.L0809498E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_08094994
func_08094994: @ 0x08094994
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r4, r2, #0
	movs r5, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq .L080949EA
	ldr r0, .L080949D4 @ =gUnk_08100A36
	ldrb r0, [r0]
	mov ip, r0
	adds r2, r7, #0
.L080949AA:
	ldrb r1, [r4]
	adds r4, #1
	movs r3, #0
	cmp r1, ip
	beq .L080949C8
	ldr r6, .L080949D4 @ =gUnk_08100A36
.L080949B6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x60
	bhi .L080949CC
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r1, r0
	bne .L080949B6
.L080949C8:
	cmp r3, #0x60
	bls .L080949D8
.L080949CC:
	movs r0, #0
	strb r0, [r2]
	b .L080949EA
	.align 2, 0
.L080949D4: .4byte gUnk_08100A36
.L080949D8:
	adds r0, r3, #1
	strb r0, [r2]
	adds r2, #1
	adds r5, #1
	cmp r5, #0xb
	bhi .L080949EA
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080949AA
.L080949EA:
	cmp r5, #0xc
	bhi .L080949FA
	movs r2, #0
.L080949F0:
	adds r0, r7, r5
	strb r2, [r0]
	adds r5, #1
	cmp r5, #0xc
	bls .L080949F0
.L080949FA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_08094A00
func_08094A00: @ 0x08094A00
	push {r4, lr}
	movs r3, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq .L08094A2E
	subs r0, #1
	cmp r0, #0x60
	bhi .L08094A2E
	ldr r4, .L08094A38 @ =gUnk_08100A36
.L08094A12:
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, #1
	adds r3, #1
	cmp r3, #0xb
	bgt .L08094A2E
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08094A2E
	subs r0, #1
	cmp r0, #0x60
	bls .L08094A12
.L08094A2E:
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08094A38: .4byte gUnk_08100A36

	thumb_func_start func_08094A3C
func_08094A3C: @ 0x08094A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r7, r1, #0
	ldr r0, .L08094AB8 @ =0x00000814
	add r0, r8
	mov sb, r0
	movs r6, #0
.L08094A50:
	lsls r1, r6, #7
	adds r1, r1, r6
	lsls r1, r1, #2
	adds r1, #4
	add r1, r8
	adds r4, r1, #4
	ldr r0, [r1]
	lsls r0, r0, #2
	adds r0, #4
	adds r5, r1, r0
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, .L08094ABC @ =func_03000C08
	bl _call_via_r2
	adds r6, #1
	cmp r4, r5
	beq .L08094AA2
	movs r1, #0x7f
	mov ip, r1
.L08094A78:
	ldr r0, [r4]
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #3
	mov r1, sb
	adds r3, r0, r1
	ldrb r2, [r7]
	cmp r2, #0x7f
	bhi .L08094A9C
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r7, r0
	ldr r1, [r3]
	str r1, [r0]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r7]
.L08094A9C:
	adds r4, #4
	cmp r4, r5
	bne .L08094A78
.L08094AA2:
	cmp r6, #3
	bls .L08094A50
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08094AB8: .4byte 0x00000814
.L08094ABC: .4byte func_03000C08

	thumb_func_start func_08094AC0
func_08094AC0: @ 0x08094AC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #4]
	bl func_080CD578
	ldr r0, .L08094E9C @ =vtable_unk_080E8230
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x8c
	str r4, [r0]
	adds r0, #4
	movs r1, #0
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x94
	movs r1, #2
	bl func_08008B54
	adds r6, r7, #0
	adds r6, #0x98
	ldr r1, .L08094EA0 @ =gUnk_08527094
	adds r0, r6, #0
	bl func_0805E6CC
	movs r0, #0xc8
	adds r0, r0, r7
	mov r8, r0
	ldr r1, .L08094EA4 @ =gUnk_08728208
	bl func_0805E6CC
	movs r1, #0xf8
	adds r1, r1, r7
	mov sb, r1
	ldr r1, .L08094EA8 @ =gUnk_08754C0C
	mov r0, sb
	bl func_0805E6CC
	movs r2, #0x94
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sl, r2
	ldr r1, .L08094EAC @ =gUnk_08754674
	mov r0, sl
	bl func_0805E6CC
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r7, r3
	adds r1, r6, #0
	movs r2, #3
	subs r3, #0x58
	bl func_0805E824
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r5, #0
	movs r4, #0
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
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r0, r7, r3
	adds r1, r6, #0
	movs r2, #2
	subs r3, #0x90
	bl func_0805E824
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r0, r7, r1
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
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r0, r7, r3
	adds r1, r6, #0
	movs r2, #0
	subs r3, #0xc8
	bl func_0805E824
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r7, r1
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
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r7, r1
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
	movs r2, #0x8d
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0x8e
	lsls r3, r3, #2
	adds r0, r7, r3
	mov r1, r8
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r7, r1
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
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r0, r7, r3
	mov r1, sb
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0xa1
	lsls r1, r1, #2
	adds r0, r7, r1
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
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0xaa
	lsls r3, r3, #2
	adds r0, r7, r3
	mov r1, sl
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r7, r1
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
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0xb8
	lsls r3, r3, #2
	adds r5, r7, r3
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r5, #4]
	movs r0, #0xba
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r1, #0xbc
	lsls r1, r1, #2
	adds r5, r7, r1
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r5, #4]
	movs r2, #0xbe
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	bl func_08007128
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r5, #4]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r5, r7, r3
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r5, #4]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r1, #0xc4
	lsls r1, r1, #2
	adds r5, r7, r1
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r2, #0xc6
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r3, #0xc8
	lsls r3, r3, #2
	adds r5, r7, r3
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r0, #0xca
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #7
	bl func_08007B54
	str r0, [r5, #4]
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r1, r7, r2
	strh r4, [r1]
	ldrh r2, [r1, #0x12]
	ldr r0, .L08094EB0 @ =0xFFFFF000
	ands r0, r2
	strh r0, [r1, #0x12]
	ldrb r2, [r1, #0x13]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0x13]
	movs r2, #0
	movs r1, #7
	movs r3, #0xd1
	lsls r3, r3, #2
	adds r0, r7, r3
.L08094D7C:
	strh r2, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge .L08094D7C
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	strh r0, [r1]
	ldrh r2, [r1, #0x12]
	ldr r0, .L08094EB0 @ =0xFFFFF000
	ands r0, r2
	strh r0, [r1, #0x12]
	ldrb r2, [r1, #0x13]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0x13]
	movs r1, #0x8c
	adds r1, r1, r7
	mov sb, r1
	movs r2, #0
	movs r1, #7
	movs r3, #0xd6
	lsls r3, r3, #2
	adds r0, r7, r3
.L08094DB2:
	strh r2, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge .L08094DB2
	movs r0, #7
	movs r1, #1
	rsbs r1, r1, #0
.L08094DC2:
	subs r0, #1
	cmp r0, r1
	bne .L08094DC2
	ldr r0, .L08094EB4 @ =0x00002BB0
	adds r4, r7, r0
	movs r5, #7
	movs r6, #1
	rsbs r6, r6, #0
.L08094DD2:
	adds r0, r4, #0
	bl __12RucksackItem
	adds r4, #4
	subs r5, #1
	cmp r5, r6
	bne .L08094DD2
	ldr r2, .L08094EB8 @ =0x000033D8
	adds r1, r7, r2
	ldr r0, .L08094EBC @ =vtable_unk_080E823C
	str r0, [r1]
	movs r3, #0
	mov r8, r3
	movs r2, #0
	strh r2, [r1, #4]
	mov r0, r8
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	ldr r1, .L08094EC0 @ =0x0000035E
	adds r0, r7, r1
	mov r3, sp
	ldrb r3, [r3, #4]
	strb r3, [r0]
	mov r5, sb
	ldr r0, [r5]
	ldr r1, .L08094EC4 @ =0x00002C1A
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r3, #0xda
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r1, [r0]
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r4, r7, r0
	strh r2, [r4]
	ldr r0, [r5]
	movs r6, #0xfa
	lsls r6, r6, #1
	adds r0, r0, r6
	bl HasKitchenKnife__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094E34
	ldrh r0, [r4]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4]
.L08094E34:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenFryingPan__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094E4A
	ldrh r0, [r4]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4]
.L08094E4A:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenPot__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094E60
	ldrh r0, [r4]
	movs r1, #4
	orrs r0, r1
	strh r0, [r4]
.L08094E60:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenMixer__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094E76
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
.L08094E76:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenWhisk__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094E8C
	ldrh r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4]
.L08094E8C:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenRollingPin__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	b .L08094EC8
	.align 2, 0
.L08094E9C: .4byte vtable_unk_080E8230
.L08094EA0: .4byte gUnk_08527094
.L08094EA4: .4byte gUnk_08728208
.L08094EA8: .4byte gUnk_08754C0C
.L08094EAC: .4byte gUnk_08754674
.L08094EB0: .4byte 0xFFFFF000
.L08094EB4: .4byte 0x00002BB0
.L08094EB8: .4byte 0x000033D8
.L08094EBC: .4byte vtable_unk_080E823C
.L08094EC0: .4byte 0x0000035E
.L08094EC4: .4byte 0x00002C1A
.L08094EC8:
	beq .L08094ED2
	ldrh r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r4]
.L08094ED2:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenOven__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094EE8
	ldrh r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4]
.L08094EE8:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenSeasoningSet__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094F02
	ldrh r0, [r4]
	movs r2, #0xf8
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
.L08094F02:
	mov r3, sb
	ldr r0, [r3]
	ldr r1, .L08094F58 @ =0x00001C38
	adds r0, r0, r1
	bl GetSize__C8Rucksack
	ldr r2, .L08094F5C @ =0x00002BA0
	adds r1, r7, r2
	str r0, [r1]
	ldr r3, .L08094F60 @ =0x00002BB0
	adds r5, r7, r3
	movs r4, #7
.L08094F1A:
	mov r0, sp
	bl __12RucksackItem
	ldr r0, [sp]
	stm r5!, {r0}
	subs r4, #1
	cmp r4, #0
	bge .L08094F1A
	movs r2, #0
	movs r1, #8
	ldr r3, .L08094F64 @ =0x00002BAF
	adds r0, r7, r3
.L08094F32:
	strb r2, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge .L08094F32
	ldr r0, .L08094F68 @ =0x000033D0
	adds r1, r7, r0
	movs r0, #0
	strh r0, [r1]
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08094F58: .4byte 0x00001C38
.L08094F5C: .4byte 0x00002BA0
.L08094F60: .4byte 0x00002BB0
.L08094F64: .4byte 0x00002BAF
.L08094F68: .4byte 0x000033D0

	thumb_func_start func_08094F6C
func_08094F6C: @ 0x08094F6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov r8, r0
	adds r4, r1, #0
	adds r0, r4, #0
	bl func_08008724
	movs r7, #0
	add r0, sp, #4
	mov sb, r0
.L08094F86:
	ldr r1, .L08094FA0 @ =0x000033D0
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #7
	bls .L08094F94
	b .L08095176
.L08094F94:
	lsls r0, r0, #2
	ldr r1, .L08094FA4 @ =.L08094FA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08094FA0: .4byte 0x000033D0
.L08094FA4: .4byte .L08094FA8
.L08094FA8: @ jump table
	.4byte .L08094FC8 @ case 0
	.4byte .L08095020 @ case 1
	.4byte .L08095048 @ case 2
	.4byte .L08095074 @ case 3
	.4byte .L080950C0 @ case 4
	.4byte .L080950F4 @ case 5
	.4byte .L08095138 @ case 6
	.4byte .L08095138 @ case 7
.L08094FC8:
	ldr r1, .L08095010 @ =0x0000035E
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08094FD4
	b .L080950E4
.L08094FD4:
	ldr r1, .L08095014 @ =0x00000366
	adds r0, r4, r1
	movs r5, #0
	strb r5, [r0]
	movs r2, #0xda
	lsls r2, r2, #2
	adds r1, r4, r2
	ldrb r0, [r1]
	lsrs r3, r0, #3
	ldr r0, .L08095018 @ =0x00000367
	adds r2, r4, r0
	strb r3, [r2]
	ldrb r0, [r1]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne .L08094FFA
	subs r0, r3, #1
	strb r0, [r2]
.L08094FFA:
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r4, r2
	strb r5, [r0]
	adds r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, .L0809501C @ =0x000033D0
	adds r1, r4, r0
	b .L080950B4
	.align 2, 0
.L08095010: .4byte 0x0000035E
.L08095014: .4byte 0x00000366
.L08095018: .4byte 0x00000367
.L0809501C: .4byte 0x000033D0
.L08095020:
	adds r0, r4, #0
	bl func_080951B4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne .L08095034
	movs r7, #1
.L08095034:
	cmp r1, #1
	beq .L0809503A
	b .L08095176
.L0809503A:
	ldr r2, .L08095044 @ =0x000033D0
	adds r1, r4, r2
	movs r0, #2
	strh r0, [r1]
	b .L08095176
	.align 2, 0
.L08095044: .4byte 0x000033D0
.L08095048:
	adds r0, r4, #0
	bl func_080958C0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne .L0809505C
	movs r7, #1
.L0809505C:
	cmp r2, #1
	bne .L08095068
	ldr r0, .L08095070 @ =0x000033D0
	adds r1, r4, r0
	movs r0, #3
	strh r0, [r1]
.L08095068:
	cmp r2, #2
	beq .L0809506E
	b .L08095176
.L0809506E:
	b .L080950B0
	.align 2, 0
.L08095070: .4byte 0x000033D0
.L08095074:
	adds r0, r4, #0
	bl func_08095D80
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne .L08095088
	movs r7, #1
.L08095088:
	cmp r2, #1
	bne .L08095094
	ldr r0, .L080950A8 @ =0x000033D0
	adds r1, r4, r0
	movs r0, #4
	strh r0, [r1]
.L08095094:
	cmp r2, #2
	bne .L08095176
	ldr r1, .L080950AC @ =0x0000035E
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080950B0
	movs r7, #1
	b .L08095176
	.align 2, 0
.L080950A8: .4byte 0x000033D0
.L080950AC: .4byte 0x0000035E
.L080950B0:
	ldr r2, .L080950BC @ =0x000033D0
	adds r1, r4, r2
.L080950B4:
	movs r0, #1
	strh r0, [r1]
	b .L08095176
	.align 2, 0
.L080950BC: .4byte 0x000033D0
.L080950C0:
	adds r0, r4, #0
	bl func_080962F0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne .L080950D4
	movs r7, #1
.L080950D4:
	cmp r2, #1
	bne .L080950E0
	ldr r0, .L080950F0 @ =0x000033D0
	adds r1, r4, r0
	movs r0, #5
	strh r0, [r1]
.L080950E0:
	cmp r2, #2
	bne .L08095176
.L080950E4:
	ldr r2, .L080950F0 @ =0x000033D0
	adds r1, r4, r2
	movs r0, #3
	strh r0, [r1]
	b .L08095176
	.align 2, 0
.L080950F0: .4byte 0x000033D0
.L080950F4:
	adds r0, r4, #0
	bl func_080972AC
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne .L08095108
	movs r7, #1
.L08095108:
	cmp r2, #1
	bne .L08095114
	ldr r0, .L08095134 @ =0x000033D0
	adds r1, r4, r0
	movs r0, #4
	strh r0, [r1]
.L08095114:
	cmp r2, #2
	bne .L08095120
	ldr r0, .L08095134 @ =0x000033D0
	adds r1, r4, r0
	movs r0, #3
	strh r0, [r1]
.L08095120:
	cmp r2, #3
	bne .L08095126
	movs r7, #1
.L08095126:
	cmp r2, #4
	bne .L08095176
	ldr r2, .L08095134 @ =0x000033D0
	adds r1, r4, r2
	movs r0, #6
	strh r0, [r1]
	b .L08095176
	.align 2, 0
.L08095134: .4byte 0x000033D0
.L08095138:
	ldr r0, .L08095170 @ =0x000033D0
	adds r5, r4, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r6, #6
	eors r0, r6
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	bl func_08097AE4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne .L0809515E
	movs r7, #1
.L0809515E:
	cmp r1, #1
	bne .L08095176
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #6
	bne .L08095174
	movs r0, #7
	strh r0, [r5]
	b .L08095176
	.align 2, 0
.L08095170: .4byte 0x000033D0
.L08095174:
	strh r6, [r5]
.L08095176:
	cmp r7, #1
	beq .L0809517C
	b .L08094F86
.L0809517C:
	movs r1, #0
	str r1, [sp]
	mov r0, sp
	str r0, [sp, #4]
	mov r2, sb
	str r1, [r2, #4]
	ldr r0, [sp, #4]
	str r1, [r0]
	mov r0, r8
	str r1, [r0]
	ldr r1, [sp]
	cmp r1, #0
	beq .L080951A2
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080951A2:
	mov r0, r8
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080951B4
func_080951B4: @ 0x080951B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	movs r0, #0
	mov sb, r0
	movs r7, #0
	adds r0, r6, #0
	bl func_08008724
	movs r1, #0xba
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	adds r0, r6, #0
	bl func_0809800C
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
	mov r3, sb
	str r3, [r4]
	str r3, [r4, #4]
	ldr r0, .L0809527C @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #4]
	ldr r1, .L08095280 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	adds r0, r6, #0
	bl func_08095580
	movs r4, #0
	mov sl, r4
.L0809525C:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	adds r0, r7, #0
	cmp r0, #4
	bls .L08095270
	b .L08095508
.L08095270:
	lsls r0, r0, #2
	ldr r1, .L08095284 @ =.L08095288
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0809527C: .4byte vtable_unk_080E5B80
.L08095280: .4byte 0x00000889
.L08095284: .4byte .L08095288
.L08095288: @ jump table
	.4byte .L0809529C @ case 0
	.4byte .L080952AE @ case 1
	.4byte .L080954C8 @ case 2
	.4byte .L080954D2 @ case 3
	.4byte .L080954F8 @ case 4
.L0809529C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080952AA
	b .L08095508
.L080952AA:
	movs r7, #1
	b .L08095508
.L080952AE:
	ldr r1, .L080952FC @ =0x00000366
	adds r0, r6, r1
	ldrb r5, [r0]
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r0, [r0]
	mov r8, r0
	movs r4, #0
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne .L080952DE
	adds r0, r6, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq .L080952E0
.L080952DE:
	movs r4, #1
.L080952E0:
	cmp r4, #0
	beq .L08095308
	ldr r3, .L080952FC @ =0x00000366
	adds r2, r6, r3
	ldr r4, .L08095300 @ =0x00000367
	adds r0, r6, r4
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhs .L08095304
	adds r0, r1, #1
	strb r0, [r2]
	adds r1, r0, #0
	b .L0809534A
	.align 2, 0
.L080952FC: .4byte 0x00000366
.L08095300: .4byte 0x00000367
.L08095304:
	movs r1, #0
	b .L0809534A
.L08095308:
	movs r4, #0
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne .L08095328
	adds r0, r6, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L0809532A
.L08095328:
	movs r4, #1
.L0809532A:
	cmp r4, #0
	beq .L0809535C
	ldr r3, .L08095340 @ =0x00000366
	adds r1, r6, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq .L08095344
	subs r0, #1
	strb r0, [r1]
	adds r1, r0, #0
	b .L0809534A
	.align 2, 0
.L08095340: .4byte 0x00000366
.L08095344:
	ldr r4, .L08095354 @ =0x00000367
	adds r0, r6, r4
	ldrb r1, [r0]
.L0809534A:
	ldr r2, .L08095358 @ =0x00000366
	adds r0, r6, r2
	strb r1, [r0]
	movs r7, #2
	b .L080953BC
	.align 2, 0
.L08095354: .4byte 0x00000367
.L08095358: .4byte 0x00000366
.L0809535C:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L0809538C
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r2, r6, r3
	ldr r4, .L08095384 @ =0x00000365
	adds r0, r6, r4
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhs .L08095388
	adds r0, r1, #1
	strb r0, [r2]
	adds r1, r0, #0
	b .L080953B4
	.align 2, 0
.L08095384: .4byte 0x00000365
.L08095388:
	movs r1, #0
	b .L080953B4
.L0809538C:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L080953BC
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r1, r6, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080953AE
	subs r0, #1
	strb r0, [r1]
	adds r1, r0, #0
	b .L080953B4
.L080953AE:
	ldr r4, .L080953D4 @ =0x00000365
	adds r0, r6, r4
	ldrb r1, [r0]
.L080953B4:
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r6, r2
	strb r1, [r0]
.L080953BC:
	ldr r3, .L080953D8 @ =0x00000366
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r5, r0
	beq .L080953DC
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xca
	bl func_08008B6C
	b .L080953F2
	.align 2, 0
.L080953D4: .4byte 0x00000365
.L080953D8: .4byte 0x00000366
.L080953DC:
	movs r4, #0xd9
	lsls r4, r4, #2
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r8, r0
	beq .L080953F2
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xcb
	bl func_08008B6C
.L080953F2:
	movs r4, #0
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L08095410
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L08095412
.L08095410:
	movs r4, #1
.L08095412:
	cmp r4, #0
	beq .L080954A6
	add r2, sp, #8
	movs r0, #0
	strh r0, [r2]
	ldrh r1, [r2, #0x12]
	ldr r0, .L08095490 @ =0xFFFFF000
	ands r0, r1
	strh r0, [r2, #0x12]
	ldrb r1, [r2, #0x13]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x13]
	adds r4, r6, #0
	adds r4, #0x94
	adds r5, r2, #0
	adds r0, r6, #0
	adds r0, #0x8c
	adds r2, #2
	movs r3, #0
	add r1, sp, #0x18
.L0809543E:
	strh r3, [r1]
	subs r1, #2
	cmp r1, r2
	bge .L0809543E
	ldr r0, [r0]
	ldr r1, .L08095494 @ =0x00002214
	adds r0, r0, r1
	ldr r2, .L08095498 @ =0x00000366
	adds r1, r6, r2
	ldrb r2, [r1]
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r1, r6, r3
	lsls r2, r2, #3
	ldrb r1, [r1]
	adds r2, r2, r1
	adds r1, r5, #0
	bl func_0809A970
	ldrb r1, [r5, #0x13]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L0809549C
	adds r0, r4, #0
	movs r1, #0xc5
	bl func_08008B6C
	movs r4, #0xcd
	lsls r4, r4, #2
	adds r1, r6, r4
	adds r0, r5, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r4, #1
	mov sb, r4
	movs r7, #3
	b .L08095508
	.align 2, 0
.L08095490: .4byte 0xFFFFF000
.L08095494: .4byte 0x00002214
.L08095498: .4byte 0x00000366
.L0809549C:
	adds r0, r4, #0
	movs r1, #0xc7
	bl func_08008B6C
	b .L08095508
.L080954A6:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08095508
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc6
	bl func_08008B6C
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	movs r7, #3
	b .L08095508
.L080954C8:
	adds r0, r6, #0
	bl func_08095580
	movs r7, #1
	b .L08095508
.L080954D2:
	ldr r0, [sp, #4]
	ldr r1, .L080954F4 @ =0x00000889
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
	movs r7, #4
	b .L08095508
	.align 2, 0
.L080954F4: .4byte 0x00000889
.L080954F8:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08095508
	movs r1, #1
	mov sl, r1
.L08095508:
	movs r2, #0xd8
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r0, #0x10
	strh r0, [r1]
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, #0x28
	ldr r4, .L0809557C @ =0x00000362
	adds r1, r6, r4
	strh r0, [r1]
	adds r0, r6, #0
	bl func_080983E8
	mov r0, sl
	cmp r0, #0
	bne .L08095532
	b .L0809525C
.L08095532:
	movs r1, #0xba
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r5, #0
	str r5, [r4, #4]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	mov r4, sb
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L08095568
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08095568:
	adds r0, r4, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0809557C: .4byte 0x00000362

	thumb_func_start func_08095580
func_08095580: @ 0x08095580
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sl, r0
	add r1, sp, #0xc
	movs r0, #0
	strh r0, [r1]
	ldrh r2, [r1, #0x12]
	ldr r0, .L0809563C @ =0xFFFFF000
	ands r0, r2
	strh r0, [r1, #0x12]
	ldrb r2, [r1, #0x13]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0x13]
	mov r0, sp
	adds r0, #0x40
	str r0, [sp, #0x60]
	adds r1, #0x14
	str r1, [sp, #0x5c]
	movs r2, #0
	movs r1, #7
	add r0, sp, #0x1c
.L080955B6:
	strh r2, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge .L080955B6
	ldr r0, .L08095640 @ =0x00000366
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #3
	str r0, [sp, #0x58]
	ldr r1, .L08095644 @ =0x00000365
	add r1, sl
	movs r0, #0
	strb r0, [r1]
	movs r6, #0
.L080955D4:
	lsls r4, r6, #2
	adds r1, r4, r6
	lsls r1, r1, #6
	adds r1, r1, r6
	lsls r1, r1, #2
	add r1, sl
	add r0, sp, #0x40
	movs r2, #0x14
	strh r2, [r0]
	movs r7, #2
	ldr r3, [sp, #0x60]
	strh r7, [r3, #2]
	ldr r0, [sp, #0x40]
	movs r2, #0xdd
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	bl func_0804E7A0
	ldr r3, [sp, #0x58]
	adds r2, r3, r6
	movs r0, #0xda
	lsls r0, r0, #2
	add r0, sl
	mov r8, r4
	adds r4, r6, #1
	str r4, [sp, #0x64]
	ldrb r0, [r0]
	cmp r2, r0
	bge .L08095702
	mov r0, sl
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r7, .L08095648 @ =0x00002214
	adds r0, r0, r7
	add r1, sp, #0xc
	bl func_0809A970
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0xab
	bhi .L0809564C
	add r0, sp, #0xc
	ldrh r1, [r0]
	subs r1, #1
	ldr r0, [sp, #0x5c]
	bl __4FoodUi
	ldr r0, [sp, #0x5c]
	bl GetName__C4Food
	b .L08095660
	.align 2, 0
.L0809563C: .4byte 0xFFFFF000
.L08095640: .4byte 0x00000366
.L08095644: .4byte 0x00000365
.L08095648: .4byte 0x00002214
.L0809564C:
	add r4, sp, #0x44
	add r0, sp, #0xc
	ldrh r1, [r0]
	subs r1, #0xac
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetName__C7Article
.L08095660:
	adds r2, r0, #0
	add r0, sp, #0xc
	ldrb r1, [r0, #0x13]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L080956A2
	mov r0, r8
	adds r1, r0, r6
	lsls r1, r1, #6
	adds r1, r1, r6
	lsls r1, r1, #2
	add r1, sl
	add r0, sp, #0x48
	movs r3, #0x14
	strh r3, [r0]
	movs r4, #2
	strh r4, [r0, #2]
	ldr r0, [sp, #0x48]
	movs r7, #0xdd
	lsls r7, r7, #2
	adds r1, r1, r7
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	adds r4, r6, #1
	str r4, [sp, #0x64]
	b .L080956F8
.L080956A2:
	movs r1, #0
	ldrb r0, [r2]
	add r3, sp, #0x24
	add r7, sp, #0x4c
	adds r4, r6, #1
	str r4, [sp, #0x64]
	cmp r0, #0
	beq .L080956C4
	adds r5, r3, #0
	movs r4, #0x3f
.L080956B6:
	adds r0, r5, r1
	strb r4, [r0]
	adds r2, #1
	adds r1, #1
	ldrb r0, [r2]
	cmp r0, #0
	bne .L080956B6
.L080956C4:
	adds r0, r3, r1
	movs r1, #0
	strb r1, [r0]
	mov r2, r8
	adds r1, r2, r6
	lsls r1, r1, #6
	adds r1, r1, r6
	lsls r1, r1, #2
	add r1, sl
	add r0, sp, #0x4c
	movs r4, #0x14
	strh r4, [r0]
	movs r0, #2
	strh r0, [r7, #2]
	ldr r0, [sp, #0x4c]
	movs r2, #0xdd
	lsls r2, r2, #2
	adds r1, r1, r2
	str r3, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	movs r2, #0
	bl func_0804E958
.L080956F8:
	ldr r1, .L08095750 @ =0x00000365
	add r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
.L08095702:
	mov r0, sl
	bl func_08008910
	mov r7, r8
	adds r2, r7, r6
	lsls r1, r2, #6
	adds r1, r1, r6
	lsls r1, r1, #2
	add r1, sl
	movs r3, #0xdd
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r5, r0, #0
	lsls r2, r2, #8
	ldr r4, .L08095754 @ =0x06002000
	adds r2, r2, r4
	add r0, sp, #0x20
	movs r3, #0xa0
	lsls r3, r3, #3
	bl func_08008F0C
	ldr r6, [sp, #0x5c]
	mov sb, r6
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08095758
	cmp r1, #0
	beq .L08095748
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08095748:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0809581E
	.align 2, 0
.L08095750: .4byte 0x00000365
.L08095754: .4byte 0x06002000
.L08095758:
	str r1, [sp, #0x68]
	movs r4, #1
	str r4, [sp, #0x54]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x50]
	add r1, sp, #0x54
	add r0, sp, #0x50
	cmp r4, #1
	bhs .L08095772
	adds r0, r1, #0
.L08095772:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08095790
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08095794
	mov r0, r8
	bl func_080D3BC0
	b .L08095794
.L08095790:
	movs r0, #0
	mov r8, r0
.L08095794:
	adds r4, r0, #0
	str r4, [sp, #0x6c]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r7, [sp, #0x68]
	cmp r2, r7
	beq .L080957BC
.L080957A2:
	cmp r3, #0
	beq .L080957B2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080957B2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x68]
	cmp r2, r0
	bne .L080957A2
.L080957BC:
	adds r4, r3, #0
	ldr r0, [sp, #0x54]
	cmp r0, #1
	bne .L080957D8
	cmp r4, #0
	beq .L080957D4
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080957D4:
	adds r4, #0x10
	b .L080957FA
.L080957D8:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080957F8
.L080957E0:
	cmp r2, #0
	beq .L080957F0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080957F0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080957E0
.L080957F8:
	adds r4, r2, #0
.L080957FA:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0809580A
.L08095804:
	adds r1, #0x10
	cmp r1, r2
	bne .L08095804
.L0809580A:
	cmp r0, #0
	beq .L08095812
	bl free
.L08095812:
	ldr r0, [sp, #0x6c]
	add r0, r8
	ldr r7, [sp, #0x6c]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0809581E:
	ldr r6, [sp, #0x64]
	cmp r6, #7
	bgt .L08095826
	b .L080955D4
.L08095826:
	ldr r1, .L080958A4 @ =0x00000365
	add r1, sl
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	movs r3, #0xd9
	lsls r3, r3, #2
	add r3, sl
	ldrb r1, [r3]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bls .L08095842
	strb r2, [r3]
.L08095842:
	ldr r4, .L080958A8 @ =0x00000366
	add r4, sl
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0xa
	bl __divsi3
	ldr r1, .L080958AC @ =0x00000369
	add r1, sl
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0xa
	bl __modsi3
	ldr r1, .L080958B0 @ =0x0000036A
	add r1, sl
	strb r0, [r1]
	ldr r1, .L080958B4 @ =0x0000036B
	add r1, sl
	movs r0, #0xd
	strb r0, [r1]
	ldr r4, .L080958B8 @ =0x00000367
	add r4, sl
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0xa
	bl __divsi3
	movs r1, #0xdb
	lsls r1, r1, #2
	add r1, sl
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0xa
	bl __modsi3
	ldr r1, .L080958BC @ =0x0000036D
	add r1, sl
	strb r0, [r1]
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080958A4: .4byte 0x00000365
.L080958A8: .4byte 0x00000366
.L080958AC: .4byte 0x00000369
.L080958B0: .4byte 0x0000036A
.L080958B4: .4byte 0x0000036B
.L080958B8: .4byte 0x00000367
.L080958BC: .4byte 0x0000036D

	thumb_func_start func_080958C0
func_080958C0: @ 0x080958C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	movs r7, #0
	movs r1, #1
	str r1, [sp, #0xc]
	movs r2, #0
	mov sb, r2
	adds r0, r6, #0
	bl func_08008724
	movs r3, #0xc8
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r4, .L080959A8 @ =0x00002BB0
	adds r5, r6, r4
	movs r4, #7
.L080958FE:
	mov r0, sp
	bl __12RucksackItem
	ldr r0, [sp]
	stm r5!, {r0}
	subs r4, #1
	cmp r4, #0
	bge .L080958FE
	movs r2, #0
	movs r1, #8
	ldr r3, .L080959AC @ =0x00002BAF
	adds r0, r6, r3
.L08095916:
	strb r2, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge .L08095916
	movs r4, #0xcd
	lsls r4, r4, #2
	adds r1, r6, r4
	adds r0, r6, #0
	bl func_080989DC
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
	ldr r0, .L080959B0 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp]
	ldr r1, .L080959B4 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r0, .L080959B8 @ =0x000033D2
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
	movs r1, #0
	mov sl, r1
.L0809598A:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	adds r0, r7, #0
	cmp r0, #0xa
	bls .L0809599E
	b .L08095D10
.L0809599E:
	lsls r0, r0, #2
	ldr r1, .L080959BC @ =.L080959C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080959A8: .4byte 0x00002BB0
.L080959AC: .4byte 0x00002BAF
.L080959B0: .4byte vtable_unk_080E5B80
.L080959B4: .4byte 0x00000889
.L080959B8: .4byte 0x000033D2
.L080959BC: .4byte .L080959C0
.L080959C0: @ jump table
	.4byte .L080959EC @ case 0
	.4byte .L08095A40 @ case 1
	.4byte .L08095A90 @ case 2
	.4byte .L08095AB8 @ case 3
	.4byte .L08095AD8 @ case 4
	.4byte .L08095B7C @ case 5
	.4byte .L08095BAE @ case 6
	.4byte .L08095BD4 @ case 7
	.4byte .L08095C0C @ case 8
	.4byte .L08095CCC @ case 9
	.4byte .L08095D00 @ case 10
.L080959EC:
	ldr r0, [sp]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080959FA
	b .L08095D10
.L080959FA:
	ldr r2, .L08095A18 @ =0x0000035D
	adds r0, r6, r2
	ldrb r2, [r0]
	cmp r2, #0
	bne .L08095A24
	ldr r3, .L08095A1C @ =0x000033D4
	adds r0, r6, r3
	movs r1, #0
	strh r2, [r0]
	ldr r4, .L08095A20 @ =0x000033D2
	adds r0, r6, r4
	strb r1, [r0]
	movs r7, #1
	b .L08095D10
	.align 2, 0
.L08095A18: .4byte 0x0000035D
.L08095A1C: .4byte 0x000033D4
.L08095A20: .4byte 0x000033D2
.L08095A24:
	ldr r0, .L08095A38 @ =0x000033D4
	adds r1, r6, r0
	movs r2, #0
	movs r0, #1
	strh r0, [r1]
	ldr r1, .L08095A3C @ =0x000033D2
	adds r0, r6, r1
	strb r2, [r0]
	movs r7, #7
	b .L08095D10
	.align 2, 0
.L08095A38: .4byte 0x000033D4
.L08095A3C: .4byte 0x000033D2
.L08095A40:
	ldr r2, .L08095A6C @ =0x000033D2
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq .L08095A50
	b .L08095D10
.L08095A50:
	ldr r3, .L08095A70 @ =0x000033D3
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne .L08095A60
	b .L08095C00
.L08095A60:
	cmp r0, #1
	bgt .L08095A74
	cmp r0, #0
	beq .L08095A7C
	b .L08095D10
	.align 2, 0
.L08095A6C: .4byte 0x000033D2
.L08095A70: .4byte 0x000033D3
.L08095A74:
	cmp r0, #2
	bne .L08095A7A
	b .L08095C04
.L08095A7A:
	b .L08095D10
.L08095A7C:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08095A8C @ =gUnk_08100AC0
	bl func_08050D8C
	movs r7, #2
	b .L08095D10
	.align 2, 0
.L08095A8C: .4byte gUnk_08100AC0
.L08095A90:
	ldr r0, [sp]
	ldr r1, .L08095AB4 @ =0x00000889
	adds r0, #0xc
	movs r2, #2
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #3
	b .L08095D10
	.align 2, 0
.L08095AB4: .4byte 0x00000889
.L08095AB8:
	ldr r0, [sp]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08095AC6
	b .L08095D10
.L08095AC6:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xad
	bl func_08008B6C
	movs r0, #0x78
	mov sb, r0
	movs r7, #4
	b .L08095D10
.L08095AD8:
	mov r1, sb
	lsls r0, r1, #0x10
	ldr r2, .L08095B74 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov sb, r3
	cmp r0, #0
	blt .L08095AEA
	b .L08095D10
.L08095AEA:
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #4
	movs r4, #0x82
	lsls r4, r4, #5
	adds r1, r4, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r4, r6, #0
	adds r4, #0x7c
	movs r5, #0
	ldr r1, [r6, #0x7c]
	cmp r5, r1
	beq .L08095B1E
	cmp r1, #0
	beq .L08095B1E
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08095B1E:
	str r5, [r4]
	adds r4, r6, #0
	adds r4, #0x78
	movs r5, #0
	ldr r1, [r6, #0x78]
	cmp r5, r1
	beq .L08095B42
	cmp r1, #0
	beq .L08095B42
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08095B42:
	str r5, [r4]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	str r4, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, .L08095B78 @ =0x00000889
	adds r0, #0xc
	movs r2, #2
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #5
	b .L08095D10
	.align 2, 0
.L08095B74: .4byte 0xFFFF0000
.L08095B78: .4byte 0x00000889
.L08095B7C:
	ldr r0, [sp]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08095B8A
	b .L08095D10
.L08095B8A:
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r0, r6, r2
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r0, r6, #0
	bl func_080975F4
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	movs r7, #6
	b .L08095D10
.L08095BAE:
	ldr r1, .L08095BCC @ =0x000033D2
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq .L08095BBE
	b .L08095D10
.L08095BBE:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08095BD0 @ =gUnk_08100AC0
	bl func_08050D8C
	movs r7, #9
	b .L08095D10
	.align 2, 0
.L08095BCC: .4byte 0x000033D2
.L08095BD0: .4byte gUnk_08100AC0
.L08095BD4:
	ldr r2, .L08095BF8 @ =0x000033D2
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq .L08095BE4
	b .L08095D10
.L08095BE4:
	ldr r3, .L08095BFC @ =0x000033D3
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq .L08095C00
	cmp r0, #1
	beq .L08095C04
	b .L08095D10
	.align 2, 0
.L08095BF8: .4byte 0x000033D2
.L08095BFC: .4byte 0x000033D3
.L08095C00:
	movs r7, #8
	b .L08095D10
.L08095C04:
	movs r4, #2
	mov r8, r4
	movs r7, #9
	b .L08095D10
.L08095C0C:
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r0, r6, r2
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	movs r5, #0
	ldr r0, .L08095CAC @ =0x00002BB0
	adds r4, r6, r0
	movs r7, #1
.L08095C28:
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	asrs r0, r5
	eors r0, r7
	ands r0, r7
	cmp r0, #0
	beq .L08095C50
	lsls r1, r5, #1
	ldr r2, .L08095CB0 @ =0x0000034A
	adds r0, r6, r2
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	add r0, sp, #8
	bl __12RucksackItem
	ldr r0, [sp, #8]
	str r0, [r4]
.L08095C50:
	adds r4, #4
	adds r5, #1
	cmp r5, #7
	ble .L08095C28
	movs r4, #0
.L08095C5A:
	lsls r0, r4, #1
	ldr r3, .L08095CB0 @ =0x0000034A
	adds r1, r6, r3
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r5, r4, #1
	cmp r0, #0
	bne .L08095CBE
	adds r3, r5, #0
	cmp r5, #7
	bgt .L08095CBE
	mov ip, r1
	movs r0, #0
	mov r8, r0
	lsls r0, r5, #1
	ldr r1, .L08095CB0 @ =0x0000034A
	adds r0, r0, r1
	adds r2, r0, r6
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, .L08095CAC @ =0x00002BB0
	adds r7, r0, r1
	lsls r0, r5, #2
	adds r0, r0, r1
	adds r4, r0, r6
.L08095C8C:
	ldrh r0, [r2]
	cmp r0, #0
	beq .L08095CB4
	mov r3, ip
	strh r0, [r3]
	ldr r0, [r4]
	str r0, [r7]
	mov r0, r8
	strh r0, [r2]
	add r0, sp, #4
	bl __12RucksackItem
	ldr r0, [sp, #4]
	str r0, [r4]
	b .L08095CBE
	.align 2, 0
.L08095CAC: .4byte 0x00002BB0
.L08095CB0: .4byte 0x0000034A
.L08095CB4:
	adds r2, #2
	adds r4, #4
	adds r3, #1
	cmp r3, #7
	ble .L08095C8C
.L08095CBE:
	adds r4, r5, #0
	cmp r4, #6
	ble .L08095C5A
	movs r1, #1
	mov r8, r1
	movs r7, #9
	b .L08095D10
.L08095CCC:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08095CF8 @ =gUnk_08100AC0
	bl func_08050D8C
	ldr r0, [sp]
	ldr r1, .L08095CFC @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #0xa
	b .L08095D10
	.align 2, 0
.L08095CF8: .4byte gUnk_08100AC0
.L08095CFC: .4byte 0x00000889
.L08095D00:
	ldr r0, [sp]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08095D10
	movs r2, #1
	mov sl, r2
.L08095D10:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq .L08095D30
	ldr r4, .L08095D7C @ =0x00000346
	adds r0, r6, r4
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r2, [r0]
	adds r0, r6, #0
	movs r3, #0
	bl func_08099144
.L08095D30:
	adds r0, r6, #0
	bl func_080CD8A0
	adds r0, r6, #0
	bl func_08097D38
	mov r3, sl
	cmp r3, #0
	bne .L08095D44
	b .L0809598A
.L08095D44:
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r0, #0
	str r0, [r4, #4]
	mov r4, r8
	ldr r1, [sp]
	cmp r1, #0
	beq .L08095D6A
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08095D6A:
	adds r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08095D7C: .4byte 0x00000346

	thumb_func_start func_08095D80
func_08095D80: @ 0x08095D80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	mov sl, r0
	adds r0, r6, #0
	bl func_08008724
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r1, r6, r3
	adds r0, r6, #0
	bl func_08098CE8
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
	ldr r0, [sp, #8]
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L08095E64 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #4]
	ldr r1, .L08095E68 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r1, #0
	mov sb, r1
	movs r2, #0
	str r2, [sp, #0xc]
	mov r8, r2
	movs r3, #0
	str r3, [sp, #0x10]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #0x14]
	ldr r0, .L08095E6C @ =0x00000362
	adds r1, r6, r0
	movs r0, #0xc8
	strh r0, [r1]
	movs r1, #0
	str r1, [sp, #0x18]
.L08095E44:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	mov r0, sl
	cmp r0, #6
	bls .L08095E58
	b .L08096278
.L08095E58:
	lsls r0, r0, #2
	ldr r1, .L08095E70 @ =.L08095E74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08095E64: .4byte vtable_unk_080E5B80
.L08095E68: .4byte 0x00000889
.L08095E6C: .4byte 0x00000362
.L08095E70: .4byte .L08095E74
.L08095E74: @ jump table
	.4byte .L08095E90 @ case 0
	.4byte .L08095EA4 @ case 1
	.4byte .L080960C8 @ case 2
	.4byte .L080961D4 @ case 3
	.4byte .L080961F8 @ case 4
	.4byte .L08096240 @ case 5
	.4byte .L08096268 @ case 6
.L08095E90:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08095E9E
	b .L08096278
.L08095E9E:
	movs r2, #1
	mov sl, r2
	b .L08096278
.L08095EA4:
	mov r5, sb
	ldr r7, [sp, #0xc]
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L08095EC4
	cmp r5, #2
	bgt .L08095EC0
	mov r0, sb
	adds r0, #1
	b .L08095EE0
.L08095EC0:
	movs r0, #0
	b .L08095EE0
.L08095EC4:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L08095EE4
	mov r3, sb
	cmp r3, #0
	ble .L08095EDE
	mov r0, sb
	subs r0, #1
	b .L08095EE0
.L08095EDE:
	movs r0, #3
.L08095EE0:
	mov sb, r0
	b .L08095F10
.L08095EE4:
	movs r4, #0
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne .L08095F02
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08095F04
.L08095F02:
	movs r4, #1
.L08095F04:
	cmp r4, #0
	beq .L08095F10
	movs r0, #1
	ldr r4, [sp, #0xc]
	eors r4, r0
	str r4, [sp, #0xc]
.L08095F10:
	cmp r5, sb
	bne .L08095F1A
	ldr r0, [sp, #0xc]
	cmp r7, r0
	beq .L08095F24
.L08095F1A:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xcb
	bl func_08008B6C
.L08095F24:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #2
	mov r2, sb
	adds r7, r0, r2
	ldr r0, .L08095F80 @ =gUnk_08117838
	adds r1, r7, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r0, r6, r3
	strh r2, [r0]
	ldrb r1, [r1, #1]
	ldr r4, .L08095F84 @ =0x00000362
	adds r0, r6, r4
	strh r1, [r0]
	ldr r0, [sp, #0x14]
	cmp r0, r7
	beq .L08095FB6
	str r7, [sp, #0x14]
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r0, [r0]
	asrs r0, r7
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08095FAC
	cmp r7, #7
	beq .L08095F8C
	movs r0, #0xb
	adds r4, r7, #0
	muls r4, r0, r4
	ldr r0, .L08095F88 @ =gUnk_08101064
	adds r4, r4, r0
	adds r5, r6, #0
	adds r5, #0x80
	adds r0, r5, #0
	movs r1, #4
	bl func_08050E98
	adds r0, r5, #0
	adds r1, r4, #0
	b .L08095F9E
	.align 2, 0
.L08095F80: .4byte gUnk_08117838
.L08095F84: .4byte 0x00000362
.L08095F88: .4byte gUnk_08101064
.L08095F8C:
	ldr r5, .L08095FA8 @ =gUnk_08100DE4
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050E98
	adds r0, r4, #0
	adds r1, r5, #0
.L08095F9E:
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L08095FB6
	.align 2, 0
.L08095FA8: .4byte gUnk_08100DE4
.L08095FAC:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08095FFC @ =gUnk_08100AC0
	bl func_08050D8C
.L08095FB6:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08096016
	movs r2, #0xcc
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	asrs r0, r7
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	beq .L08096078
	cmp r7, #7
	beq .L0809600C
	ldr r0, .L08096000 @ =0x0000035A
	adds r3, r6, r0
	ldrh r2, [r3]
	lsls r1, r2, #0x14
	lsrs r1, r1, #0x14
	adds r0, r4, #0
	lsls r0, r7
	eors r1, r0
	ldr r4, .L08096004 @ =0x00000FFF
	adds r0, r4, #0
	ands r1, r0
	ldr r0, .L08096008 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	b .L08096066
	.align 2, 0
.L08095FFC: .4byte gUnk_08100AC0
.L08096000: .4byte 0x0000035A
.L08096004: .4byte 0x00000FFF
.L08096008: .4byte 0xFFFFF000
.L0809600C:
	movs r0, #1
	str r0, [sp, #0x10]
	movs r1, #2
	mov sl, r1
	b .L08096066
.L08096016:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L080960A8
	ldr r2, .L08096054 @ =0x0000035A
	adds r4, r6, r2
	ldrh r3, [r4]
	ldr r5, .L08096058 @ =0x00000FFF
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq .L08096084
	cmp r7, #7
	beq .L08096078
	lsls r0, r3, #0x14
	lsrs r1, r0, #0x14
	movs r2, #1
	lsls r2, r7
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq .L08096060
	bics r1, r2
	ands r1, r5
	ldr r0, .L0809605C @ =0xFFFFF000
	ands r0, r3
	orrs r0, r1
	b .L08096064
	.align 2, 0
.L08096054: .4byte 0x0000035A
.L08096058: .4byte 0x00000FFF
.L0809605C: .4byte 0xFFFFF000
.L08096060:
	ldr r0, .L08096074 @ =0xFFFFF000
	ands r0, r3
.L08096064:
	strh r0, [r4]
.L08096066:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc5
	bl func_08008B6C
	b .L08096278
	.align 2, 0
.L08096074: .4byte 0xFFFFF000
.L08096078:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc7
	bl func_08008B6C
	b .L08096278
.L08096084:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc6
	bl func_08008B6C
	movs r3, #2
	str r3, [sp, #8]
	movs r4, #5
	mov sl, r4
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L080960A4 @ =gUnk_08100AC0
	bl func_08050D8C
	b .L08096278
	.align 2, 0
.L080960A4: .4byte gUnk_08100AC0
.L080960A8:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne .L080960B8
	b .L08096278
.L080960B8:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc5
	bl func_08008B6C
	movs r0, #3
	mov sl, r0
	b .L08096278
.L080960C8:
	mov r4, r8
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L080960E6
	cmp r4, #3
	bgt .L080960E2
	mov r0, r8
	adds r0, #1
	b .L08096102
.L080960E2:
	movs r0, #0
	b .L08096102
.L080960E6:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08096106
	mov r1, r8
	cmp r1, #0
	ble .L08096100
	mov r0, r8
	subs r0, #1
	b .L08096102
.L08096100:
	movs r0, #4
.L08096102:
	mov r8, r0
	b .L08096144
.L08096106:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L08096126
	movs r2, #2
	add r8, r2
	mov r3, r8
	cmp r3, #4
	ble .L08096144
	movs r0, #5
	rsbs r0, r0, #0
	add r8, r0
	b .L08096144
.L08096126:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L08096144
	movs r1, #2
	rsbs r1, r1, #0
	add r8, r1
	mov r2, r8
	cmp r2, #0
	bge .L08096144
	movs r3, #5
	add r8, r3
.L08096144:
	cmp r4, r8
	beq .L08096152
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xcb
	bl func_08008B6C
.L08096152:
	movs r4, #0xd8
	lsls r4, r4, #2
	adds r1, r6, r4
	movs r0, #0x90
	strh r0, [r1]
	mov r1, r8
	lsls r0, r1, #4
	adds r0, #0x18
	ldr r2, .L080961C4 @ =0x00000362
	adds r1, r6, r2
	strh r0, [r1]
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L080961A2
	ldr r3, .L080961C8 @ =0x0000035A
	adds r4, r6, r3
	ldrh r3, [r4]
	lsls r1, r3, #0x14
	lsrs r1, r1, #0x14
	mov r2, r8
	adds r2, #7
	movs r0, #1
	lsls r0, r2
	eors r1, r0
	ldr r2, .L080961CC @ =0x00000FFF
	adds r0, r2, #0
	ands r1, r0
	ldr r0, .L080961D0 @ =0xFFFFF000
	ands r0, r3
	orrs r0, r1
	strh r0, [r4]
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc5
	bl func_08008B6C
.L080961A2:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08096278
	movs r3, #0
	str r3, [sp, #0x10]
	movs r4, #1
	mov sl, r4
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc6
	bl func_08008B6C
	b .L08096278
	.align 2, 0
.L080961C4: .4byte 0x00000362
.L080961C8: .4byte 0x0000035A
.L080961CC: .4byte 0x00000FFF
.L080961D0: .4byte 0xFFFFF000
.L080961D4:
	ldr r5, .L080961F4 @ =gUnk_08100DF4
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050E98
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r0, #4
	mov sl, r0
	b .L08096278
	.align 2, 0
.L080961F4: .4byte gUnk_08100DF4
.L080961F8:
	movs r4, #0
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L08096216
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08096218
.L08096216:
	movs r4, #1
.L08096218:
	cmp r4, #0
	beq .L08096278
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc5
	bl func_08008B6C
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L0809623C @ =gUnk_08100AC0
	bl func_08050D8C
	movs r1, #1
	str r1, [sp, #8]
	movs r2, #5
	mov sl, r2
	b .L08096278
	.align 2, 0
.L0809623C: .4byte gUnk_08100AC0
.L08096240:
	ldr r0, [sp, #4]
	ldr r1, .L08096264 @ =0x00000889
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
	movs r3, #6
	mov sl, r3
	b .L08096278
	.align 2, 0
.L08096264: .4byte 0x00000889
.L08096268:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08096278
	movs r4, #1
	str r4, [sp, #0x18]
.L08096278:
	ldr r4, [sp, #0x10]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_08099000
	ldr r1, .L080962EC @ =0x0000035A
	adds r0, r6, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	adds r0, r6, #0
	movs r2, #0
	adds r3, r4, #0
	bl func_08099144
	adds r0, r6, #0
	bl func_080CD8A0
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bne .L080962A4
	b .L08095E44
.L080962A4:
	movs r3, #0xc8
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r5, #0
	str r5, [r4, #4]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	ldr r4, [sp, #8]
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L080962DA
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080962DA:
	adds r0, r4, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080962EC: .4byte 0x0000035A

	thumb_func_start func_080962F0
func_080962F0: @ 0x080962F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xcc
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0xa8]
	movs r1, #0
	str r1, [sp, #0xac]
	add r0, sp, #4
	add r2, sp, #0xa8
	ldrb r2, [r2]
	strb r2, [r0]
	add r6, sp, #0x84
	add r4, sp, #0xa8
	ldrb r4, [r4]
	strb r4, [r6]
	adds r0, r7, #0
	bl func_08008724
	movs r0, #0xba
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r4, r7, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	adds r0, r7, #0
	bl func_0809964C
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0x8c
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	ldr r0, [sp, #0xa8]
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L0809640C @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	add r5, sp, #0x90
	str r4, [r5]
	ldr r1, .L08096410 @ =0x00002B90
	adds r0, r7, r1
	add r2, sp, #0xa8
	ldrb r2, [r2]
	strb r2, [r0]
	adds r0, r7, #0
	bl func_08096B88
	movs r4, #0
	str r4, [sp, #0xb0]
	movs r0, #1
	str r0, [sp, #0xb4]
	movs r1, #0
	str r1, [sp, #0xb8]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp, #0xbc]
	ldr r4, .L08096414 @ =0x00000362
	adds r1, r7, r4
	movs r0, #0xc8
	strh r0, [r1]
	ldr r0, [r5]
	ldr r1, .L08096418 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r5]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r0, .L0809641C @ =0x000033D2
	adds r1, r7, r0
	movs r0, #2
	strb r0, [r1]
	movs r1, #0
	str r1, [sp, #0xc0]
.L080963EE:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r0, [sp, #0xac]
	cmp r0, #4
	bls .L08096402
	b .L08096B14
.L08096402:
	lsls r0, r0, #2
	ldr r1, .L08096420 @ =.L08096424
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0809640C: .4byte vtable_unk_080E5B80
.L08096410: .4byte 0x00002B90
.L08096414: .4byte 0x00000362
.L08096418: .4byte 0x00000889
.L0809641C: .4byte 0x000033D2
.L08096420: .4byte .L08096424
.L08096424: @ jump table
	.4byte .L08096438 @ case 0
	.4byte .L0809644C @ case 1
	.4byte .L08096ABC @ case 2
	.4byte .L08096ADC @ case 3
	.4byte .L08096B04 @ case 4
.L08096438:
	ldr r0, [sp, #0x90]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08096446
	b .L08096B14
.L08096446:
	movs r2, #1
	str r2, [sp, #0xac]
	b .L08096B14
.L0809644C:
	movs r6, #0
	ldr r4, .L0809648C @ =0x00002B90
	adds r5, r7, r4
.L08096452:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	bne .L08096474
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq .L08096476
.L08096474:
	movs r4, #1
.L08096476:
	cmp r4, #0
	beq .L08096490
	movs r0, #0
	ldr r1, [sp, #0xb0]
	cmp r1, #3
	bgt .L08096484
	movs r0, #4
.L08096484:
	str r0, [sp, #0xb0]
	movs r2, #1
	str r2, [sp, #0xb4]
	b .L08096544
	.align 2, 0
.L0809648C: .4byte 0x00002B90
.L08096490:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L080964B2
	ldr r4, [sp, #0xb0]
	cmp r4, #6
	bgt .L080964AA
	adds r0, r4, #0
	adds r0, #1
	b .L080964AC
.L080964AA:
	movs r0, #0
.L080964AC:
	str r0, [sp, #0xb0]
	str r0, [sp, #0xb8]
	b .L08096544
.L080964B2:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L080964CE
	ldr r0, [sp, #0xb0]
	cmp r0, #0
	ble .L080964CA
	subs r0, #1
	b .L080964AC
.L080964CA:
	movs r0, #7
	b .L080964AC
.L080964CE:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08096554
	ldr r1, [sp, #0xb4]
	adds r1, #1
	str r1, [sp, #0xb4]
	cmp r1, #2
	ble .L0809651E
	movs r2, #0
	str r2, [sp, #0xb4]
	ldr r4, [sp, #0xb0]
	cmp r4, #3
	ble .L08096544
	ldr r0, .L08096500 @ =0x00002B90
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #7
	bhi .L08096504
	adds r0, #1
	strb r0, [r1]
	b .L08096506
	.align 2, 0
.L08096500: .4byte 0x00002B90
.L08096504:
	movs r0, #0
.L08096506:
	strb r0, [r5]
	adds r0, r7, #0
	bl func_08096B88
	ldrb r0, [r5]
	cmp r0, #0
	bne .L08096544
	ldr r1, [sp, #0xb0]
	str r1, [sp, #0xb8]
	movs r2, #4
	str r2, [sp, #0xb0]
	b .L08096544
.L0809651E:
	ldrb r0, [r5]
	cmp r0, #0
	bne .L08096544
	ldr r4, [sp, #0xb4]
	cmp r4, #1
	bne .L08096544
	ldr r1, .L08096550 @ =0x00002BA0
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, [sp, #0xb8]
	str r2, [sp, #0xb0]
	cmp r1, #3
	bgt .L08096544
	adds r0, r2, #0
	subs r0, #4
	cmp r1, r0
	bgt .L08096544
	adds r1, #3
	str r1, [sp, #0xb0]
.L08096544:
	adds r0, r7, #0
	adds r0, #0x94
	movs r1, #0xcb
	bl func_08008B6C
	b .L080965E4
	.align 2, 0
.L08096550: .4byte 0x00002BA0
.L08096554:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L080965E4
	ldr r4, [sp, #0xb4]
	subs r4, #1
	str r4, [sp, #0xb4]
	cmp r4, #0
	bge .L080965C2
	movs r0, #2
	str r0, [sp, #0xb4]
	ldr r1, [sp, #0xb0]
	cmp r1, #3
	ble .L080965DA
	ldr r2, .L08096588 @ =0x00002B90
	adds r1, r7, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq .L0809658C
	subs r0, #1
	strb r0, [r1]
	b .L0809658E
	.align 2, 0
.L08096588: .4byte 0x00002B90
.L0809658C:
	movs r0, #8
.L0809658E:
	strb r0, [r5]
	adds r0, r7, #0
	bl func_08096B88
	ldrb r0, [r5]
	cmp r0, #0
	bne .L080965BC
	ldr r4, .L080965B8 @ =0x00002BA0
	adds r0, r7, r4
	ldr r1, [r0]
	ldr r0, [sp, #0xb8]
	str r0, [sp, #0xb0]
	cmp r1, #3
	bgt .L080965DA
	subs r0, #4
	cmp r1, r0
	bgt .L080965DA
	adds r1, #3
	str r1, [sp, #0xb0]
	b .L080965DA
	.align 2, 0
.L080965B8: .4byte 0x00002BA0
.L080965BC:
	ldr r1, [sp, #0xb8]
	str r1, [sp, #0xb0]
	b .L080965DA
.L080965C2:
	ldr r2, [sp, #0xb0]
	cmp r2, #3
	ble .L080965DA
	ldrb r0, [r5]
	cmp r0, #0
	bne .L080965DA
	ldr r4, [sp, #0xb4]
	cmp r4, #0
	bne .L080965DA
	str r2, [sp, #0xb8]
	movs r0, #4
	str r0, [sp, #0xb0]
.L080965DA:
	adds r0, r7, #0
	adds r0, #0x94
	movs r1, #0xcb
	bl func_08008B6C
.L080965E4:
	ldr r1, .L08096620 @ =0x00002BA4
	adds r0, r7, r1
	ldr r2, [sp, #0xb4]
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #7
	ldr r4, [sp, #0xb0]
	subs r0, r0, r4
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq .L08096600
	movs r6, #1
.L08096600:
	cmp r6, #0
	bne .L08096606
	b .L08096452
.L08096606:
	ldr r0, [sp, #0xb4]
	cmp r0, #0
	beq .L08096624
	adds r1, r0, #0
	subs r1, #1
	lsls r1, r1, #2
	movs r0, #3
	ldr r2, [sp, #0xb0]
	ands r0, r2
	adds r1, r1, r0
	adds r6, r1, #1
	b .L08096626
	.align 2, 0
.L08096620: .4byte 0x00002BA4
.L08096624:
	movs r6, #0
.L08096626:
	movs r0, #4
	ldr r4, [sp, #0xb0]
	ands r0, r4
	asrs r0, r0, #2
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r2, .L08096694 @ =gUnk_08117838
	lsls r3, r6, #2
	adds r2, r3, r2
	lsls r1, r1, #3
	ldrb r0, [r2]
	adds r1, r1, r0
	movs r4, #0xd8
	lsls r4, r4, #2
	adds r0, r7, r4
	strh r1, [r0]
	ldrb r1, [r2, #1]
	ldr r2, .L08096698 @ =0x00000362
	adds r0, r7, r2
	strh r1, [r0]
	ldr r4, .L0809669C @ =0x00002B90
	adds r5, r7, r4
	ldrb r1, [r5]
	lsls r1, r1, #3
	ldr r2, [sp, #0xb4]
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r4, [sp, #0xb0]
	adds r1, r1, r4
	ldr r0, [sp, #0xbc]
	cmp r0, r1
	bne .L0809666A
	b .L080967D0
.L0809666A:
	str r1, [sp, #0xbc]
	cmp r2, #0
	bne .L08096672
	b .L080967C6
.L08096672:
	add r4, sp, #0x94
	adds r0, r4, #0
	str r3, [sp, #0xc8]
	bl __12RucksackItem
	mov r8, r4
	ldr r3, [sp, #0xc8]
	ldr r1, [sp, #0xb0]
	cmp r1, #3
	ble .L080966A0
	ldrb r2, [r5]
	subs r3, r6, #1
	adds r0, r7, #0
	mov r1, r8
	bl func_08096EE8
	b .L080966AC
	.align 2, 0
.L08096694: .4byte gUnk_08117838
.L08096698: .4byte 0x00000362
.L0809669C: .4byte 0x00002B90
.L080966A0:
	adds r0, r3, r7
	ldr r2, .L08096704 @ =0x00002BAC
	adds r0, r0, r2
	ldr r0, [r0]
	mov r4, r8
	str r0, [r4]
.L080966AC:
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne .L080967A6
	mov r0, r8
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08096772
	ldr r5, .L08096708 @ =gUnk_08100E28
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #7
	bls .L080966D6
	movs r4, #7
.L080966D6:
	add r0, sp, #0x84
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x84
	strb r6, [r0]
	mov r0, r8
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L0809670C
	add r4, sp, #0x98
	adds r0, r4, #0
	mov r1, r8
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetName__C4Food
	b .L0809671C
	.align 2, 0
.L08096704: .4byte 0x00002BAC
.L08096708: .4byte gUnk_08100E28
.L0809670C:
	mov r0, r8
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xa0
	strb r1, [r0]
	bl GetName__C7Article
.L0809671C:
	adds r5, r0, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L0809672A
	movs r4, #0x7f
.L0809672A:
	add r0, sp, #4
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	strb r6, [r0]
	add r0, sp, #0x84
	bl strlen
	mov r6, sp
	adds r6, r6, r0
	adds r6, #0x84
	movs r1, #7
	subs r5, r1, r0
	cmp r5, #0
	beq .L0809676E
	add r0, sp, #4
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0809675E
	adds r4, r5, #0
.L0809675E:
	adds r0, r6, #0
	add r1, sp, #4
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0809676E:
	add r5, sp, #4
	b .L080967A8
.L08096772:
	mov r0, r8
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L08096790
	add r4, sp, #0x98
	adds r0, r4, #0
	mov r1, r8
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetDesc__C4Food
	adds r5, r0, #0
	b .L080967A8
.L08096790:
	mov r0, r8
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xa1
	strb r1, [r0]
	bl GetDesc__C7Article
	adds r5, r0, #0
	b .L080967A8
.L080967A6:
	movs r5, #0
.L080967A8:
	cmp r5, #0
	beq .L080967C6
	adds r4, r7, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050E98
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L080967D0
.L080967C6:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08096838 @ =gUnk_08100AC0
	bl func_08050D8C
.L080967D0:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L080967E0
	b .L08096980
.L080967E0:
	ldr r0, [sp, #0xb4]
	cmp r0, #0
	bne .L080967E8
	b .L08096974
.L080967E8:
	adds r1, r0, #0
	subs r1, #1
	lsls r1, r1, #2
	movs r0, #3
	ldr r2, [sp, #0xb0]
	ands r0, r2
	adds r6, r1, r0
	cmp r2, #3
	bgt .L080967FC
	b .L0809693E
.L080967FC:
	add r5, sp, #0x94
	adds r0, r5, #0
	bl __12RucksackItem
	ldr r0, .L0809683C @ =0x00002B90
	adds r4, r7, r0
	ldrb r2, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl func_08096EE8
	ldr r1, .L08096840 @ =0x00002BA7
	adds r0, r7, r1
	ldrb r4, [r4]
	adds r0, r0, r4
	ldrb r1, [r0]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	mov r8, r5
	cmp r1, #0
	beq .L0809682C
	b .L08096930
.L0809682C:
	movs r6, #0
	movs r2, #0x94
	adds r2, r2, r7
	mov sb, r2
	b .L08096846
	.align 2, 0
.L08096838: .4byte gUnk_08100AC0
.L0809683C: .4byte 0x00002B90
.L08096840: .4byte 0x00002BA7
.L08096844:
	adds r6, #1
.L08096846:
	cmp r6, #7
	bgt .L0809692C
	lsls r4, r6, #2
	ldr r1, .L080968BC @ =0x00002BB0
	adds r0, r4, r1
	adds r0, r7, r0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	mov sl, r4
	cmp r0, #0
	beq .L08096844
	mov r5, r8
	adds r0, r5, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08096928
	adds r0, r5, #0
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08096924
	adds r0, r5, #0
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L080968C4
	add r4, sp, #0x9c
	adds r0, r4, #0
	adds r1, r5, #0
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r2, sl
	adds r0, r2, r7
	ldr r4, .L080968BC @ =0x00002BB0
	adds r0, r0, r4
	ldr r1, [r5]
	str r1, [r0]
	ldr r0, [r7, #0x78]
	ldr r2, .L080968C0 @ =gUnk_086678A0
	movs r1, #1
	str r1, [sp]
	adds r1, r6, #0
	bl func_080CB304
	adds r0, r7, #0
	adds r1, r5, #0
	bl func_08096FB4
	b .L08096A80
	.align 2, 0
.L080968BC: .4byte 0x00002BB0
.L080968C0: .4byte gUnk_086678A0
.L080968C4:
	mov r0, r8
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xa2
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08096920
	mov r0, r8
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xa3
	strb r1, [r0]
	bl GetIconId__C7Article
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r4, r7
	ldr r1, .L08096918 @ =0x00002BB0
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, [r7, #0x78]
	ldr r2, .L0809691C @ =gUnk_086678A0
	movs r1, #1
	str r1, [sp]
	adds r1, r6, #0
	bl func_080CB304
	adds r0, r7, #0
	mov r1, r8
	bl func_08096FB4
	b .L08096A80
	.align 2, 0
.L08096918: .4byte 0x00002BB0
.L0809691C: .4byte gUnk_086678A0
.L08096920:
	mov r0, sb
	b .L08096978
.L08096924:
	mov r0, sb
	b .L08096978
.L08096928:
	mov r0, sb
	b .L08096978
.L0809692C:
	mov r0, sb
	b .L08096978
.L08096930:
	adds r0, r7, #0
	adds r1, r5, #0
	bl func_08097114
	adds r0, r7, #0
	adds r0, #0x94
	b .L08096A82
.L0809693E:
	lsls r0, r6, #2
	ldr r4, .L0809696C @ =0x00002BB0
	adds r0, r0, r4
	adds r4, r7, r0
	adds r0, r4, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08096974
	adds r0, r7, #0
	adds r1, r4, #0
	bl func_08097114
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08096970 @ =gUnk_08100AC0
	bl func_08050D8C
	adds r0, r7, #0
	adds r0, #0x94
	b .L08096A82
	.align 2, 0
.L0809696C: .4byte 0x00002BB0
.L08096970: .4byte gUnk_08100AC0
.L08096974:
	adds r0, r7, #0
	adds r0, #0x94
.L08096978:
	movs r1, #0xc7
	bl func_08008B6C
	b .L08096B14
.L08096980:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L080969B0
	movs r0, #2
	str r0, [sp, #0xa8]
	movs r1, #3
	str r1, [sp, #0xac]
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L080969AC @ =gUnk_08100AC0
	bl func_08050D8C
	adds r0, r7, #0
	adds r0, #0x94
	movs r1, #0xc6
	bl func_08008B6C
	b .L08096B14
	.align 2, 0
.L080969AC: .4byte gUnk_08100AC0
.L080969B0:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne .L080969C0
	b .L08096B14
.L080969C0:
	movs r5, #0
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r5, [r0]
	movs r4, #0x94
	adds r4, r4, r7
	mov sb, r4
	adds r0, r2, #0
	adds r0, r0, r7
	mov r8, r0
	ldr r1, .L08096A10 @ =0x00002BB0
	adds r4, r7, r1
	mov sl, r5
	add r6, sp, #0x94
	movs r2, #7
	str r2, [sp, #0xc4]
.L080969E2:
	adds r0, r4, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08096A44
	adds r0, r4, #0
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L08096A18
	adds r0, r6, #0
	adds r1, r4, #0
	bl GetFood__C12RucksackItem
	adds r0, r6, #0
	bl GetId__C4Food
	ldr r2, .L08096A14 @ =0x0000034A
	adds r1, r7, r2
	add r1, sl
	adds r0, #1
	b .L08096A30
	.align 2, 0
.L08096A10: .4byte 0x00002BB0
.L08096A14: .4byte 0x0000034A
.L08096A18:
	adds r0, r4, #0
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xa4
	strb r1, [r0]
	bl GetId__C7Article
	ldr r2, .L08096A8C @ =0x0000034A
	adds r1, r7, r2
	add r1, sl
	adds r0, #0xac
.L08096A30:
	strh r0, [r1]
	movs r0, #1
	lsls r0, r5
	mov r2, r8
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	add sl, r0
	adds r5, #1
.L08096A44:
	adds r4, #4
	ldr r1, [sp, #0xc4]
	subs r1, #1
	str r1, [sp, #0xc4]
	cmp r1, #0
	bge .L080969E2
	cmp r5, #0
	beq .L08096A94
	adds r2, r7, #0
	adds r2, #0x80
	ldr r1, .L08096A90 @ =gUnk_08100AC0
	cmp r5, #7
	bgt .L08096A72
	movs r3, #0
	lsls r0, r5, #1
	ldr r4, .L08096A8C @ =0x0000034A
	adds r0, r0, r4
	adds r0, r0, r7
.L08096A68:
	strh r3, [r0]
	adds r0, #2
	adds r5, #1
	cmp r5, #7
	ble .L08096A68
.L08096A72:
	adds r0, r2, #0
	bl func_08050D8C
	movs r0, #1
	str r0, [sp, #0xa8]
	movs r1, #3
	str r1, [sp, #0xac]
.L08096A80:
	mov r0, sb
.L08096A82:
	movs r1, #0xc5
	bl func_08008B6C
	b .L08096B14
	.align 2, 0
.L08096A8C: .4byte 0x0000034A
.L08096A90: .4byte gUnk_08100AC0
.L08096A94:
	ldr r2, .L08096AB4 @ =0x000033D4
	adds r1, r7, r2
	movs r2, #0
	movs r0, #0xa
	strh r0, [r1]
	ldr r4, .L08096AB8 @ =0x000033D2
	adds r0, r7, r4
	strb r2, [r0]
	mov r0, sb
	movs r1, #0xc7
	bl func_08008B6C
	movs r0, #2
	str r0, [sp, #0xac]
	b .L08096B14
	.align 2, 0
.L08096AB4: .4byte 0x000033D4
.L08096AB8: .4byte 0x000033D2
.L08096ABC:
	ldr r1, .L08096AD8 @ =0x000033D2
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne .L08096B14
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp, #0xbc]
	movs r4, #1
	str r4, [sp, #0xac]
	b .L08096B14
	.align 2, 0
.L08096AD8: .4byte 0x000033D2
.L08096ADC:
	ldr r0, [sp, #0x90]
	ldr r1, .L08096B00 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x90]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r0, #4
	str r0, [sp, #0xac]
	b .L08096B14
	.align 2, 0
.L08096B00: .4byte 0x00000889
.L08096B04:
	ldr r0, [sp, #0x90]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08096B14
	movs r1, #1
	str r1, [sp, #0xc0]
.L08096B14:
	adds r0, r7, #0
	bl func_08099ACC
	adds r0, r7, #0
	bl func_080CD8A0
	adds r0, r7, #0
	bl func_08097D38
	ldr r2, [sp, #0xc0]
	cmp r2, #0
	bne .L08096B2E
	b .L080963EE
.L08096B2E:
	movs r0, #0xba
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r5, #0
	str r5, [r4, #4]
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r4, r7, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	ldr r4, [sp, #0xa8]
	ldr r1, [sp, #0x90]
	cmp r1, #0
	beq .L08096B74
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08096B74:
	adds r0, r4, #0
	add sp, #0xcc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08096B88
func_08096B88: @ 0x08096B88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r5, r0, #0
	movs r0, #8
	mov r8, r0
	add r0, sp, #4
	bl __12RucksackItem
	ldr r1, .L08096BF0 @ =0x00002B90
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08096BB2
	ldr r2, .L08096BF4 @ =0x00002BA0
	adds r0, r5, r2
	ldr r0, [r0]
	mov r8, r0
.L08096BB2:
	movs r6, #0
	add r3, sp, #0xc
	mov sl, r3
	cmp r6, r8
	bge .L08096C4A
.L08096BBC:
	ldr r4, .L08096BF0 @ =0x00002B90
	adds r0, r5, r4
	ldrb r2, [r0]
	adds r0, r5, #0
	add r1, sp, #4
	adds r3, r6, #0
	bl func_08096EE8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08096C3C
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08096BF8
	movs r3, #0xb0
	lsls r3, r3, #1
	b .L08096C28
	.align 2, 0
.L08096BF0: .4byte 0x00002B90
.L08096BF4: .4byte 0x00002BA0
.L08096BF8:
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L08096C14
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	b .L08096C24
.L08096C14:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0x1c
	strb r1, [r0]
	bl GetIconId__C7Article
.L08096C24:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
.L08096C28:
	ldr r0, [r5, #0x7c]
	str r7, [sp]
	adds r1, r6, #0
	ldr r2, .L08096C38 @ =gUnk_086678A0
	bl func_080CC728
	b .L08096C44
	.align 2, 0
.L08096C38: .4byte gUnk_086678A0
.L08096C3C:
	ldr r0, [r5, #0x7c]
	adds r1, r6, #0
	bl func_080CCDEC
.L08096C44:
	adds r6, #1
	cmp r6, r8
	blt .L08096BBC
.L08096C4A:
	mov r6, r8
	cmp r6, #7
	bgt .L08096C60
	mov r4, r8
.L08096C52:
	ldr r0, [r5, #0x7c]
	adds r1, r4, #0
	bl func_080CCDEC
	adds r4, #1
	cmp r4, #7
	ble .L08096C52
.L08096C60:
	ldr r7, .L08096C74 @ =0x00002B90
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08096C7C
	ldr r1, .L08096C78 @ =0x00002BA0
	adds r0, r5, r1
	ldrh r0, [r0]
	b .L08096C7E
	.align 2, 0
.L08096C74: .4byte 0x00002B90
.L08096C78: .4byte 0x00002BA0
.L08096C7C:
	movs r0, #8
.L08096C7E:
	adds r4, r0, #0
	ldr r2, .L08096D70 @ =0x00002B90
	adds r0, r5, r2
	ldrb r0, [r0]
	movs r1, #3
	cmp r0, #0
	bne .L08096C8E
	ldr r1, .L08096D74 @ =0x0000101C
.L08096C8E:
	mov r8, r1
	movs r3, #0
	cmp r3, r4
	bge .L08096CD6
	ldr r6, .L08096D78 @ =gUnk_0811785C
	mov sb, r6
	ldr r6, .L08096D74 @ =0x0000101C
	ldr r7, .L08096D7C @ =0x00002BD0
.L08096C9E:
	adds r3, #1
	lsls r0, r3, #2
	add r0, sb
	ldrb r1, [r0]
	adds r1, #0xf
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r2, [r0, #1]
	adds r0, r1, #1
	lsls r0, r0, #1
	lsls r2, r2, #6
	adds r0, r0, r7
	adds r0, r2, r0
	adds r0, r0, r5
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r2, r2, r1
	adds r2, r2, r5
	movs r1, #1
.L08096CC4:
	strh r6, [r2]
	strh r6, [r0]
	adds r0, #0x40
	adds r2, #0x40
	subs r1, #1
	cmp r1, #0
	bge .L08096CC4
	cmp r3, r4
	blt .L08096C9E
.L08096CD6:
	cmp r4, #7
	bhi .L08096D1E
	adds r3, r4, #0
	cmp r3, #7
	bgt .L08096D1E
	ldr r7, .L08096D78 @ =gUnk_0811785C
	movs r4, #3
	ldr r6, .L08096D7C @ =0x00002BD0
.L08096CE6:
	adds r3, #1
	lsls r0, r3, #2
	adds r0, r0, r7
	ldrb r1, [r0]
	adds r1, #0xf
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r2, [r0, #1]
	adds r0, r1, #1
	lsls r0, r0, #1
	lsls r2, r2, #6
	adds r0, r0, r6
	adds r0, r2, r0
	adds r0, r0, r5
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r2, r2, r1
	adds r2, r2, r5
	movs r1, #1
.L08096D0C:
	strh r4, [r2]
	strh r4, [r0]
	adds r0, #0x40
	adds r2, #0x40
	subs r1, #1
	cmp r1, #0
	bge .L08096D0C
	cmp r3, #7
	ble .L08096CE6
.L08096D1E:
	movs r1, #0
	ldr r7, .L08096D80 @ =0x00002C32
	adds r0, r5, r7
.L08096D24:
	mov r2, r8
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #0x40
	adds r1, #1
	cmp r1, #1
	ble .L08096D24
	adds r0, r5, #0
	bl func_08008910
	str r0, [sp, #0x28]
	ldr r3, .L08096D7C @ =0x00002BD0
	adds r1, r5, r3
	add r0, sp, #0xc
	ldr r2, .L08096D84 @ =0x0600F800
	movs r3, #0xc0
	lsls r3, r3, #2
	bl func_08008F0C
	mov sb, sl
	ldr r4, [sp, #0x28]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08096D88
	cmp r1, #0
	beq .L08096D66
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08096D66:
	ldr r3, [sp, #0x28]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L08096E5C
	.align 2, 0
.L08096D70: .4byte 0x00002B90
.L08096D74: .4byte 0x0000101C
.L08096D78: .4byte gUnk_0811785C
.L08096D7C: .4byte 0x00002BD0
.L08096D80: .4byte 0x00002C32
.L08096D84: .4byte 0x0600F800
.L08096D88:
	str r1, [sp, #0x2c]
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r4, [sp, #0x28]
	ldr r1, [r4]
	ldr r6, [sp, #0x2c]
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r2, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L08096DA4
	adds r0, r2, #0
.L08096DA4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08096DC6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08096DC0
	mov r0, sl
	bl func_080D3BC0
.L08096DC0:
	ldr r7, [sp, #0x28]
	ldr r1, [r7]
	b .L08096DCA
.L08096DC6:
	movs r0, #0
	mov sl, r0
.L08096DCA:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov r3, r8
	b .L08096DE8
.L08096DD4:
	cmp r3, #0
	beq .L08096DE4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08096DE4:
	adds r2, #0x10
	adds r3, #0x10
.L08096DE8:
	ldr r0, [sp, #0x2c]
	cmp r2, r0
	bne .L08096DD4
	adds r4, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L08096E0A
	cmp r4, #0
	beq .L08096E06
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08096E06:
	adds r4, #0x10
	b .L08096E32
.L08096E0A:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L08096E30
.L08096E12:
	cmp r2, #0
	beq .L08096E22
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08096E22:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L08096E12
.L08096E30:
	adds r4, r2, #0
.L08096E32:
	ldr r0, [sp, #0x28]
	ldr r2, [r0, #4]
	ldr r1, [r0]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08096E44
.L08096E3E:
	adds r0, #0x10
	cmp r0, r2
	bne .L08096E3E
.L08096E44:
	cmp r1, #0
	beq .L08096E4E
	adds r0, r1, #0
	bl free
.L08096E4E:
	mov r0, sl
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x28]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L08096E5C:
	ldr r4, .L08096EAC @ =0x00002B90
	adds r3, r5, r4
	ldrb r1, [r3]
	ldr r6, .L08096EB0 @ =0x00000369
	adds r0, r5, r6
	movs r2, #0
	strb r1, [r0]
	ldr r7, .L08096EB4 @ =0x0000036A
	adds r1, r5, r7
	movs r0, #0xd
	strb r0, [r1]
	ldr r1, .L08096EB8 @ =0x0000036B
	adds r0, r5, r1
	movs r6, #8
	strb r6, [r0]
	ldr r7, .L08096EBC @ =0x00002BA4
	adds r4, r5, r7
	strb r2, [r4]
	ldr r0, .L08096EC0 @ =0x00002BA5
	adds r2, r5, r0
	movs r0, #0xff
	strb r0, [r2]
	adds r7, #2
	adds r1, r5, r7
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldrb r0, [r3]
	cmp r0, #0
	bne .L08096ED4
	strb r6, [r4]
	ldr r1, .L08096EC4 @ =0x00002BA0
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #2
	beq .L08096EC8
	cmp r0, #4
	beq .L08096ECC
	b .L08096ED4
	.align 2, 0
.L08096EAC: .4byte 0x00002B90
.L08096EB0: .4byte 0x00000369
.L08096EB4: .4byte 0x0000036A
.L08096EB8: .4byte 0x0000036B
.L08096EBC: .4byte 0x00002BA4
.L08096EC0: .4byte 0x00002BA5
.L08096EC4: .4byte 0x00002BA0
.L08096EC8:
	movs r0, #0xfc
	strb r0, [r2]
.L08096ECC:
	ldr r2, .L08096EE4 @ =0x00002BA6
	adds r1, r5, r2
	movs r0, #0xf0
	strb r0, [r1]
.L08096ED4:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08096EE4: .4byte 0x00002BA6

	thumb_func_start func_08096EE8
func_08096EE8: @ 0x08096EE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	movs r0, #0
	mov r8, r0
	cmp r6, #0
	bne .L08096F36
	ldr r1, .L08096F24 @ =0x00002BA0
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r5, r0
	bge .L08096F2C
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r1, .L08096F28 @ =0x00001C38
	adds r0, r0, r1
	adds r1, r5, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [r7]
	movs r0, #1
	mov r8, r0
	b .L08096FA4
	.align 2, 0
.L08096F24: .4byte 0x00002BA0
.L08096F28: .4byte 0x00001C38
.L08096F2C:
	mov r0, sp
	bl __12RucksackItem
	ldr r0, [sp]
	b .L08096FA2
.L08096F36:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetFridge__9FarmHouse
	subs r1, r6, #1
	lsls r1, r1, #3
	adds r1, r1, r5
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp]
	mov r0, sp
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08096F9A
	add r5, sp, #4
	add r4, sp, #8
	adds r0, r4, #0
	mov r1, sp
	bl GetFood__C9FoodStack
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #9
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0xa
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	bl __12RucksackItemG4Food
	ldr r0, [sp, #4]
	str r0, [r7]
	mov r0, sp
	bl GetAmount__C9FoodStack
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b .L08096FA4
.L08096F9A:
	add r0, sp, #4
	bl __12RucksackItem
	ldr r0, [sp, #4]
.L08096FA2:
	str r0, [r7]
.L08096FA4:
	mov r0, r8
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08096FB4
func_08096FB4: @ 0x08096FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	adds r5, r1, #0
	mov r0, sp
	bl __12RucksackItem
	ldr r0, .L08096FEC @ =0x0000FFFF
	mov sb, r0
	adds r0, r5, #0
	bl GetKind__C12RucksackItem
	adds r6, r0, #0
	cmp r6, #0
	bne .L08096FF0
	add r4, sp, #4
	adds r0, r4, #0
	adds r1, r5, #0
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetId__C4Food
	b .L08097000
	.align 2, 0
.L08096FEC: .4byte 0x0000FFFF
.L08096FF0:
	adds r0, r5, #0
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetId__C7Article
.L08097000:
	mov sl, r0
	movs r5, #0
	ldr r7, .L08097040 @ =0x00002BA7
	add r7, r8
.L08097008:
	mov r0, r8
	mov r1, sp
	movs r2, #0
	adds r3, r5, #0
	bl func_08096EE8
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0809707C
	mov r0, sp
	bl GetKind__C12RucksackItem
	cmp r0, r6
	bne .L0809707C
	cmp r6, #0
	bne .L08097044
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, sp
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetId__C4Food
	b .L08097056
	.align 2, 0
.L08097040: .4byte 0x00002BA7
.L08097044:
	mov r0, sp
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	bl GetId__C7Article
.L08097056:
	cmp r0, sl
	bne .L0809707C
	movs r0, #1
	lsls r0, r5
	ldrb r1, [r7]
	orrs r0, r1
	strb r0, [r7]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne .L08097078
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	b .L0809707A
.L08097078:
	lsrs r0, r1, #0x10
.L0809707A:
	mov sb, r0
.L0809707C:
	adds r5, #1
	cmp r5, #7
	ble .L08097008
	cmp r6, #0
	bne .L080970FE
	movs r6, #8
.L08097088:
	adds r0, r6, #0
	cmp r6, #0
	bge .L08097090
	adds r0, r6, #7
.L08097090:
	asrs r5, r0, #3
	lsls r0, r5, #3
	subs r7, r6, r0
	mov r0, r8
	mov r1, sp
	adds r2, r5, #0
	adds r3, r7, #0
	bl func_08096EE8
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080970F8
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, sp
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetId__C4Food
	movs r1, #0
	cmp sl, r0
	bne .L080970C6
	movs r1, #1
.L080970C6:
	cmp r1, #0
	beq .L080970F8
	ldr r2, .L080970F0 @ =0x00002BA7
	add r2, r8
	adds r2, r2, r5
	movs r0, #1
	lsls r0, r7
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne .L080970F4
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	b .L080970F6
	.align 2, 0
.L080970F0: .4byte 0x00002BA7
.L080970F4:
	lsrs r0, r1, #0x10
.L080970F6:
	mov sb, r0
.L080970F8:
	adds r6, #1
	cmp r6, #0x47
	ble .L08097088
.L080970FE:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_08097114
func_08097114: @ 0x08097114
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	adds r5, r1, #0
	mov r0, sp
	bl __12RucksackItem
	adds r0, r5, #0
	bl GetKind__C12RucksackItem
	mov r8, r0
	cmp r0, #0
	bne .L08097148
	add r4, sp, #4
	adds r0, r4, #0
	adds r1, r5, #0
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetId__C4Food
	b .L08097158
.L08097148:
	adds r0, r5, #0
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	bl GetId__C7Article
.L08097158:
	mov sl, r0
	movs r4, #0
	add r6, sp, #4
	ldr r5, .L0809719C @ =0x00002BA7
	add r5, sb
.L08097162:
	mov r0, sb
	mov r1, sp
	movs r2, #0
	adds r3, r4, #0
	bl func_08096EE8
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080971C0
	mov r0, sp
	bl GetKind__C12RucksackItem
	cmp r0, r8
	bne .L080971C0
	mov r0, r8
	cmp r0, #0
	bne .L080971A0
	adds r0, r6, #0
	mov r1, sp
	bl GetFood__C12RucksackItem
	adds r0, r6, #0
	bl GetId__C4Food
	b .L080971B2
	.align 2, 0
.L0809719C: .4byte 0x00002BA7
.L080971A0:
	mov r0, sp
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	bl GetId__C7Article
.L080971B2:
	cmp r0, sl
	bne .L080971C0
	movs r1, #1
	lsls r1, r4
	ldrb r0, [r5]
	bics r0, r1
	strb r0, [r5]
.L080971C0:
	adds r4, #1
	cmp r4, #7
	ble .L08097162
	mov r1, r8
	cmp r1, #0
	bne .L08097226
	movs r5, #8
	add r7, sp, #4
.L080971D0:
	adds r0, r5, #0
	cmp r5, #0
	bge .L080971D8
	adds r0, r5, #7
.L080971D8:
	asrs r4, r0, #3
	lsls r0, r4, #3
	subs r6, r5, r0
	mov r0, sb
	mov r1, sp
	adds r2, r4, #0
	adds r3, r6, #0
	bl func_08096EE8
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08097220
	adds r0, r7, #0
	mov r1, sp
	bl GetFood__C12RucksackItem
	adds r0, r7, #0
	bl GetId__C4Food
	movs r1, #0
	cmp sl, r0
	bne .L0809720C
	movs r1, #1
.L0809720C:
	cmp r1, #0
	beq .L08097220
	ldr r2, .L08097260 @ =0x00002BA7
	add r2, sb
	adds r2, r2, r4
	movs r1, #1
	lsls r1, r6
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
.L08097220:
	adds r5, #1
	cmp r5, #0x47
	ble .L080971D0
.L08097226:
	movs r5, #0
	ldr r4, .L08097264 @ =0x00002BB0
	add r4, sb
	add r6, sp, #4
.L0809722E:
	ldr r0, [r4]
	str r0, [sp]
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08097292
	mov r0, sp
	bl GetKind__C12RucksackItem
	cmp r0, r8
	bne .L08097292
	mov r0, r8
	cmp r0, #0
	bne .L08097268
	adds r0, r6, #0
	mov r1, sp
	bl GetFood__C12RucksackItem
	adds r0, r6, #0
	bl GetId__C4Food
	b .L0809727A
	.align 2, 0
.L08097260: .4byte 0x00002BA7
.L08097264: .4byte 0x00002BB0
.L08097268:
	mov r0, sp
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xe
	strb r1, [r0]
	bl GetId__C7Article
.L0809727A:
	cmp r0, sl
	bne .L08097292
	add r0, sp, #8
	bl __12RucksackItem
	ldr r0, [sp, #8]
	str r0, [r4]
	mov r1, sb
	ldr r0, [r1, #0x78]
	adds r1, r5, #0
	bl func_080CBA60
.L08097292:
	adds r4, #4
	adds r5, #1
	cmp r5, #7
	ble .L0809722E
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080972AC
func_080972AC: @ 0x080972AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	movs r7, #0
	movs r1, #1
	str r1, [sp, #8]
	movs r2, #0
	mov sb, r2
	adds r0, r6, #0
	bl func_08008724
	movs r3, #0xc8
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r6, r0
	adds r0, r6, #0
	bl func_080989DC
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
	mov r2, r8
	str r2, [r4]
	str r2, [r4, #4]
	ldr r0, .L0809736C @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #4]
	ldr r1, .L08097370 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r3, .L08097374 @ =0x000033D2
	adds r1, r6, r3
	movs r0, #2
	strb r0, [r1]
	movs r0, #0
	mov sl, r0
.L0809734E:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	adds r0, r7, #0
	cmp r0, #8
	bls .L08097362
	b .L08097584
.L08097362:
	lsls r0, r0, #2
	ldr r1, .L08097378 @ =.L0809737C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0809736C: .4byte vtable_unk_080E5B80
.L08097370: .4byte 0x00000889
.L08097374: .4byte 0x000033D2
.L08097378: .4byte .L0809737C
.L0809737C: @ jump table
	.4byte .L080973A0 @ case 0
	.4byte .L080973CC @ case 1
	.4byte .L08097414 @ case 2
	.4byte .L0809743C @ case 3
	.4byte .L0809745C @ case 4
	.4byte .L08097500 @ case 5
	.4byte .L08097526 @ case 6
	.4byte .L0809754C @ case 7
	.4byte .L08097574 @ case 8
.L080973A0:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080973AE
	b .L08097584
.L080973AE:
	ldr r2, .L080973C4 @ =0x000033D4
	adds r1, r6, r2
	movs r2, #0
	movs r0, #2
	strh r0, [r1]
	ldr r3, .L080973C8 @ =0x000033D2
	adds r0, r6, r3
	strb r2, [r0]
	movs r7, #1
	b .L08097584
	.align 2, 0
.L080973C4: .4byte 0x000033D4
.L080973C8: .4byte 0x000033D2
.L080973CC:
	ldr r1, .L080973F0 @ =0x000033D2
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq .L080973DC
	b .L08097584
.L080973DC:
	ldr r2, .L080973F4 @ =0x000033D3
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne .L080973F8
	movs r7, #2
	b .L08097404
	.align 2, 0
.L080973F0: .4byte 0x000033D2
.L080973F4: .4byte 0x000033D3
.L080973F8:
	cmp r0, #0
	blt .L08097404
	cmp r0, #2
	bgt .L08097404
	mov r8, r0
	movs r7, #7
.L08097404:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097410 @ =gUnk_08100AC0
	bl func_08050D8C
	b .L08097584
	.align 2, 0
.L08097410: .4byte gUnk_08100AC0
.L08097414:
	ldr r0, [sp, #4]
	ldr r1, .L08097438 @ =0x00000889
	adds r0, #0xc
	movs r2, #2
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #3
	b .L08097584
	.align 2, 0
.L08097438: .4byte 0x00000889
.L0809743C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0809744A
	b .L08097584
.L0809744A:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xad
	bl func_08008B6C
	movs r3, #0x78
	mov sb, r3
	movs r7, #4
	b .L08097584
.L0809745C:
	mov r1, sb
	lsls r0, r1, #0x10
	ldr r2, .L080974F8 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov sb, r3
	cmp r0, #0
	blt .L0809746E
	b .L08097584
.L0809746E:
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0x82
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r4, r6, #0
	adds r4, #0x7c
	movs r5, #0
	ldr r1, [r6, #0x7c]
	cmp r5, r1
	beq .L080974A2
	cmp r1, #0
	beq .L080974A2
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080974A2:
	str r5, [r4]
	adds r4, r6, #0
	adds r4, #0x78
	movs r5, #0
	ldr r1, [r6, #0x78]
	cmp r5, r1
	beq .L080974C6
	cmp r1, #0
	beq .L080974C6
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080974C6:
	str r5, [r4]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, .L080974FC @ =0x00000889
	adds r0, #0xc
	movs r2, #2
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #5
	b .L08097584
	.align 2, 0
.L080974F8: .4byte 0xFFFF0000
.L080974FC: .4byte 0x00000889
.L08097500:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08097584
	adds r0, r6, #0
	bl func_080975F4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #4
	mov r8, r1
	cmp r0, #3
	beq .L08097522
	movs r2, #3
	mov r8, r2
.L08097522:
	movs r7, #6
	b .L08097584
.L08097526:
	ldr r3, .L08097544 @ =0x000033D2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne .L08097584
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097548 @ =gUnk_08100AC0
	bl func_08050D8C
	movs r7, #7
	b .L08097584
	.align 2, 0
.L08097544: .4byte 0x000033D2
.L08097548: .4byte gUnk_08100AC0
.L0809754C:
	ldr r0, [sp, #4]
	ldr r1, .L08097570 @ =0x00000889
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
	movs r7, #8
	b .L08097584
	.align 2, 0
.L08097570: .4byte 0x00000889
.L08097574:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08097584
	movs r0, #1
	mov sl, r0
.L08097584:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080975A4
	ldr r2, .L080975F0 @ =0x0000035A
	adds r0, r6, r2
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r3, #0xd7
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r2, [r0]
	adds r0, r6, #0
	movs r3, #0
	bl func_08099144
.L080975A4:
	adds r0, r6, #0
	bl func_080CD8A0
	adds r0, r6, #0
	bl func_08097D38
	mov r0, sl
	cmp r0, #0
	bne .L080975B8
	b .L0809734E
.L080975B8:
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r0, #0
	str r0, [r4, #4]
	mov r4, r8
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L080975DE
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080975DE:
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080975F0: .4byte 0x0000035A

	thumb_func_start func_080975F4
func_080975F4: @ 0x080975F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r7, #0
	adds r1, r4, #0
	mov r2, sp
	bl func_080977A0
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetFridge__9FarmHouse
	mov sb, r0
	movs r2, #1
	rsbs r2, r2, #0
	mov sl, r2
	ldr r4, .L08097670 @ =0x00002BB0
	adds r6, r7, r4
	movs r0, #7
	mov r8, r0
.L08097634:
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	adds r5, r7, #0
	adds r5, #0x8c
	cmp r0, #0
	bne .L08097686
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_08096FB4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, sl
	beq .L08097686
	cmp r1, #7
	bgt .L08097678
	ldr r0, [r5]
	ldr r2, .L08097674 @ =0x00001C38
	adds r0, r0, r2
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x14
	bl __12RucksackItem
	ldr r0, [sp, #0x14]
	str r0, [r4]
	b .L08097686
	.align 2, 0
.L08097670: .4byte 0x00002BB0
.L08097674: .4byte 0x00001C38
.L08097678:
	subs r1, #8
	mov r0, sb
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl SubtractAmount__9FoodStackUi
.L08097686:
	adds r6, #4
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	mov r0, r8
	cmp r0, #0
	bge .L08097634
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r1, r7, r2
	ldrh r0, [r1]
	cmp r0, #0xab
	bhi .L080976F4
	add r6, sp, #0x14
	adds r1, r0, #0
	subs r1, #1
	adds r0, r6, #0
	bl __4FoodUi
	mov r0, sp
	ldrh r1, [r0, #2]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r2, #4
	ldrsb r2, [r0, r2]
	adds r0, r6, #0
	bl AddBonuses__4FoodScSc
	ldr r5, [r5]
	ldr r4, .L080976F0 @ =0x00001C2C
	adds r5, r5, r4
	add r4, sp, #0x18
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x19
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x1a
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	bl func_0800F3B0
	b .L0809770C
	.align 2, 0
.L080976F0: .4byte 0x00001C2C
.L080976F4:
	add r4, sp, #0x1c
	ldrh r1, [r1]
	subs r1, #0xac
	adds r0, r4, #0
	bl __7ArticleUi
	ldr r0, [r5]
	ldr r1, .L0809773C @ =0x00001C2C
	adds r0, r0, r1
	ldrb r1, [r4]
	bl func_0800F3E8
.L0809770C:
	adds r0, r7, #0
	mov r1, sp
	bl func_08097800
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq .L0809772C
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	ldrh r1, [r0]
	ldr r4, .L08097740 @ =0x000033DC
	adds r0, r7, r4
	strh r1, [r0]
.L0809772C:
	cmp r2, #1
	beq .L0809775C
	cmp r2, #1
	bgt .L08097744
	cmp r2, #0
	beq .L0809774E
	b .L0809777C
	.align 2, 0
.L0809773C: .4byte 0x00001C2C
.L08097740: .4byte 0x000033DC
.L08097744:
	cmp r2, #2
	beq .L08097768
	cmp r2, #3
	beq .L08097774
	b .L0809777C
.L0809774E:
	ldr r0, .L08097758 @ =0x000033D4
	adds r1, r7, r0
	movs r0, #3
	b .L0809777A
	.align 2, 0
.L08097758: .4byte 0x000033D4
.L0809775C:
	ldr r2, .L08097764 @ =0x000033D4
	adds r1, r7, r2
	movs r0, #4
	b .L0809777A
	.align 2, 0
.L08097764: .4byte 0x000033D4
.L08097768:
	ldr r4, .L08097770 @ =0x000033D4
	adds r1, r7, r4
	movs r0, #5
	b .L0809777A
	.align 2, 0
.L08097770: .4byte 0x000033D4
.L08097774:
	ldr r0, .L08097798 @ =0x000033D4
	adds r1, r7, r0
	movs r0, #6
.L0809777A:
	strh r0, [r1]
.L0809777C:
	ldr r2, .L0809779C @ =0x000033D2
	adds r1, r7, r2
	movs r0, #0
	strb r0, [r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08097798: .4byte 0x000033D4
.L0809779C: .4byte 0x000033D2

	thumb_func_start func_080977A0
func_080977A0: @ 0x080977A0
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	mov r0, sp
	bl func_0809A58C
	adds r1, r4, #0
	mov r0, sp
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldrh r0, [r4]
	cmp r0, #0
	bne .L080977F4
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	movs r3, #0
	ldr r6, .L080977DC @ =gUnk_081010E8
	ldrh r5, [r4, #6]
	adds r2, r6, #2
	adds r1, r6, #0
.L080977CC:
	ldrh r0, [r1]
	ands r0, r5
	cmp r0, #0
	beq .L080977E0
	ldrh r0, [r2]
	strh r0, [r4]
	b .L080977EA
	.align 2, 0
.L080977DC: .4byte gUnk_081010E8
.L080977E0:
	adds r2, #4
	adds r1, #4
	adds r3, #1
	cmp r3, #7
	ble .L080977CC
.L080977EA:
	ldrh r0, [r4]
	cmp r0, #0
	bne .L080977F4
	ldrh r0, [r6, #0x22]
	strh r0, [r4]
.L080977F4:
	ldrh r0, [r4]
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08097800
func_08097800: @ 0x08097800
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	mov sb, r1
	ldrh r0, [r1]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi .L08097860
	adds r4, r7, #0
	adds r4, #0x8c
	ldr r0, [r4]
	ldr r1, .L08097858 @ =0x00002214
	adds r0, r0, r1
	mov r2, sb
	ldrh r1, [r2]
	bl func_0809AA58
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08097852
	ldr r2, [r4]
	ldr r3, .L0809785C @ =0x000021C3
	adds r2, r2, r3
	ldrb r3, [r2]
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
.L08097852:
	movs r0, #0
	b .L08097ACC
	.align 2, 0
.L08097858: .4byte 0x00002214
.L0809785C: .4byte 0x000021C3
.L08097860:
	movs r4, #0
	movs r6, #0xda
	lsls r6, r6, #2
	adds r0, r7, r6
	ldrb r0, [r0]
	cmp r4, r0
	bge .L08097912
	movs r0, #0x8c
	adds r0, r0, r7
	mov r8, r0
	ldr r3, .L080978C8 @ =0x00002214
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r6, r7, r1
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r5, r7, r2
.L08097882:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r3
	adds r1, r5, #0
	adds r2, r4, #0
	str r3, [sp, #0x28]
	bl func_0809A970
	ldrh r0, [r6]
	ldr r3, [sp, #0x28]
	ldrh r2, [r5]
	cmp r0, r2
	bne .L08097904
	ldr r4, .L080978CC @ =0x00000347
	adds r0, r7, r4
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne .L08097912
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r3
	adds r1, r6, #0
	bl func_0809A9C0
	mov r2, sb
	ldrh r0, [r2]
	cmp r0, #0x50
	beq .L080978D8
	cmp r0, #0x50
	bgt .L080978D0
	cmp r0, #0x19
	beq .L080978D8
	b .L080978FA
	.align 2, 0
.L080978C8: .4byte 0x00002214
.L080978CC: .4byte 0x00000347
.L080978D0:
	cmp r0, #0x7e
	beq .L080978D8
	cmp r0, #0x8d
	bne .L080978FA
.L080978D8:
	mov r4, r8
	ldr r3, [r4]
	ldr r6, .L08097900 @ =0x000021C3
	adds r3, r3, r6
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1c
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #3
	movs r4, #0x79
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3]
.L080978FA:
	movs r0, #1
	b .L08097ACC
	.align 2, 0
.L08097900: .4byte 0x000021C3
.L08097904:
	adds r4, #1
	movs r1, #0xda
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r4, r0
	blt .L08097882
.L08097912:
	movs r2, #0
	mov ip, r2
	add r1, sp, #0x14
	movs r3, #0xcd
	lsls r3, r3, #2
	adds r0, r7, r3
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	movs r6, #0
	mov r8, r6
	movs r0, #0x16
	add r0, sp
	mov sl, r0
	ldr r1, .L0809795C @ =0x0000034A
	adds r4, r7, r1
	adds r5, r4, #0
.L08097936:
	ldrh r0, [r4]
	cmp r0, #0
	beq .L08097966
	movs r2, #0
	ldrh r3, [r5]
	mov r1, sl
.L08097942:
	adds r0, r1, #0
	ldrh r6, [r0]
	cmp r3, r6
	beq .L08097960
	adds r1, r0, #2
	adds r2, #1
	cmp r2, #7
	ble .L08097942
.L08097952:
	cmp r2, #8
	bne .L08097966
	movs r0, #1
	mov ip, r0
	b .L08097974
	.align 2, 0
.L0809795C: .4byte 0x0000034A
.L08097960:
	movs r0, #0
	strh r0, [r1]
	b .L08097952
.L08097966:
	adds r4, #2
	adds r5, #2
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #7
	ble .L08097936
.L08097974:
	movs r1, #0
	mov r3, sl
	ldrh r0, [r3]
	cmp r0, #0
	beq .L08097984
	movs r4, #1
	mov ip, r4
	b .L08097998
.L08097984:
	adds r1, #1
	cmp r1, #7
	bgt .L08097998
	lsls r0, r1, #1
	add r0, sl
	ldrh r0, [r0]
	cmp r0, #0
	beq .L08097984
	movs r6, #1
	mov ip, r6
.L08097998:
	ldr r1, .L080979BC @ =0x0000035A
	adds r0, r7, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	ldr r2, .L080979C0 @ =0x00000346
	adds r0, r7, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	cmp r1, r0
	beq .L080979B0
	movs r3, #1
	mov ip, r3
.L080979B0:
	mov r4, ip
	cmp r4, #0
	bne .L080979C4
	movs r0, #2
	b .L08097ACC
	.align 2, 0
.L080979BC: .4byte 0x0000035A
.L080979C0: .4byte 0x00000346
.L080979C4:
	movs r6, #0xcd
	lsls r6, r6, #2
	adds r1, r7, r6
	adds r0, r7, #0
	mov r2, sp
	bl func_080977A0
	mov r0, sb
	movs r2, #2
	ldrsh r1, [r0, r2]
	mov r0, sp
	movs r3, #2
	ldrsh r0, [r0, r3]
	subs r2, r1, r0
	mov r4, sb
	movs r6, #4
	ldrsh r1, [r4, r6]
	mov r0, sp
	movs r3, #4
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	movs r3, #0
	movs r0, #0xb
	rsbs r0, r0, #0
	cmp r2, r0
	bgt .L080979FC
	adds r4, r3, #0
	b .L08097A38
.L080979FC:
	movs r0, #6
	rsbs r0, r0, #0
	cmp r2, r0
	bgt .L08097A08
	movs r4, #1
	b .L08097A38
.L08097A08:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bgt .L08097A14
	movs r4, #2
	b .L08097A38
.L08097A14:
	movs r0, #1
	rsbs r0, r0, #0
	movs r4, #3
	cmp r2, r0
	beq .L08097A38
	movs r4, #4
	cmp r2, #0
	beq .L08097A38
	movs r4, #5
	cmp r2, #1
	beq .L08097A38
	movs r4, #6
	cmp r2, #5
	ble .L08097A38
	movs r4, #8
	cmp r2, #0xa
	bgt .L08097A38
	movs r4, #7
.L08097A38:
	movs r0, #0xb
	rsbs r0, r0, #0
	cmp r1, r0
	bgt .L08097A4A
	movs r3, #0x11
	cmp r4, #8
	bne .L08097ABE
	movs r3, #0x10
	b .L08097ABE
.L08097A4A:
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bgt .L08097A5C
	movs r3, #0xf
	cmp r4, #7
	bne .L08097ABE
	movs r3, #0xe
	b .L08097ABE
.L08097A5C:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bgt .L08097A6E
	movs r3, #0xd
	cmp r4, #6
	bne .L08097ABE
	movs r3, #0xc
	b .L08097ABE
.L08097A6E:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne .L08097A80
	movs r3, #0xb
	cmp r4, #5
	bne .L08097ABE
	movs r3, #0xa
	b .L08097ABE
.L08097A80:
	cmp r1, #0
	bne .L08097A8E
	movs r3, #9
	cmp r4, #4
	bne .L08097ABE
	movs r3, #8
	b .L08097ABE
.L08097A8E:
	cmp r1, #1
	bne .L08097A9C
	movs r3, #7
	cmp r4, #3
	bne .L08097ABE
	movs r3, #6
	b .L08097ABE
.L08097A9C:
	cmp r1, #5
	bgt .L08097AAA
	movs r3, #5
	cmp r4, #2
	bne .L08097ABE
	movs r3, #4
	b .L08097ABE
.L08097AAA:
	cmp r1, #0xa
	bgt .L08097AB8
	movs r3, #3
	cmp r4, #1
	bne .L08097ABE
	movs r3, #2
	b .L08097ABE
.L08097AB8:
	rsbs r0, r4, #0
	orrs r0, r4
	lsrs r3, r0, #0x1f
.L08097ABE:
	ldr r6, .L08097ADC @ =0x000033DE
	adds r0, r7, r6
	strb r4, [r0]
	ldr r1, .L08097AE0 @ =0x000033DF
	adds r0, r7, r1
	strb r3, [r0]
	movs r0, #3
.L08097ACC:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08097ADC: .4byte 0x000033DE
.L08097AE0: .4byte 0x000033DF

	thumb_func_start func_08097AE4
func_08097AE4: @ 0x08097AE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	movs r0, #0
	mov sb, r0
	movs r7, #0
	adds r0, r6, #0
	bl func_08008724
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	mov r2, r8
	cmp r2, #0
	bne .L08097B28
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r6, r0
	adds r0, r6, #0
	bl func_080989DC
	b .L08097B34
.L08097B28:
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r1, r6, r2
	adds r0, r6, #0
	bl func_080989DC
.L08097B34:
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
	ldr r0, .L08097BAC @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #4]
	ldr r1, .L08097BB0 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r0, .L08097BB4 @ =0x000033D2
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
	movs r4, #0
.L08097B90:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	adds r0, r7, #0
	cmp r0, #1
	beq .L08097BFC
	cmp r0, #1
	bgt .L08097BB8
	cmp r0, #0
	beq .L08097BC2
	b .L08097CAA
	.align 2, 0
.L08097BAC: .4byte vtable_unk_080E5B80
.L08097BB0: .4byte 0x00000889
.L08097BB4: .4byte 0x000033D2
.L08097BB8:
	cmp r0, #2
	beq .L08097C66
	cmp r0, #3
	beq .L08097C9C
	b .L08097CAA
.L08097BC2:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08097CAA
	mov r1, r8
	cmp r1, #0
	bne .L08097BE0
	ldr r2, .L08097BDC @ =0x000033D4
	adds r1, r6, r2
	movs r0, #8
	b .L08097BE6
	.align 2, 0
.L08097BDC: .4byte 0x000033D4
.L08097BE0:
	ldr r0, .L08097BF4 @ =0x000033D4
	adds r1, r6, r0
	movs r0, #9
.L08097BE6:
	strh r0, [r1]
	ldr r2, .L08097BF8 @ =0x000033D2
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
	movs r7, #1
	b .L08097CAA
	.align 2, 0
.L08097BF4: .4byte 0x000033D4
.L08097BF8: .4byte 0x000033D2
.L08097BFC:
	ldr r1, .L08097C24 @ =0x000033D2
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne .L08097CAA
	ldr r2, .L08097C28 @ =0x000033D3
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq .L08097C54
	cmp r0, #1
	bgt .L08097C2C
	cmp r0, #0
	beq .L08097C32
	b .L08097CAA
	.align 2, 0
.L08097C24: .4byte 0x000033D2
.L08097C28: .4byte 0x000033D3
.L08097C2C:
	cmp r0, #2
	beq .L08097C5E
	b .L08097CAA
.L08097C32:
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r1, .L08097C50 @ =0x00002214
	adds r0, r0, r1
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r1, r6, r2
	bl func_0809A9C0
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	movs r7, #2
	b .L08097CAA
	.align 2, 0
.L08097C50: .4byte 0x00002214
.L08097C54:
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	movs r7, #2
	b .L08097CAA
.L08097C5E:
	movs r2, #1
	mov sb, r2
	movs r7, #2
	b .L08097CAA
.L08097C66:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097C94 @ =gUnk_08100AC0
	bl func_08050D8C
	ldr r0, [sp, #4]
	adds r0, #0xc
	ldr r1, .L08097C98 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #3
	b .L08097CAA
	.align 2, 0
.L08097C94: .4byte gUnk_08100AC0
.L08097C98: .4byte 0x00000889
.L08097C9C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08097CAA
	movs r4, #1
.L08097CAA:
	mov r0, r8
	cmp r0, #0
	bne .L08097CD0
	ldr r1, .L08097CCC @ =0x0000035A
	adds r0, r6, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r2, [r0]
	adds r0, r6, #0
	movs r3, #0
	bl func_08099144
	b .L08097CEA
	.align 2, 0
.L08097CCC: .4byte 0x0000035A
.L08097CD0:
	ldr r1, .L08097D34 @ =0x00000346
	adds r0, r6, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r2, [r0]
	adds r0, r6, #0
	movs r3, #0
	bl func_08099144
.L08097CEA:
	adds r0, r6, #0
	bl func_080CD8A0
	adds r0, r6, #0
	bl func_08097D38
	cmp r4, #0
	bne .L08097CFC
	b .L08097B90
.L08097CFC:
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r0, #0
	str r0, [r4, #4]
	mov r4, sb
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L08097D22
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08097D22:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08097D34: .4byte 0x00000346

	thumb_func_start func_08097D38
func_08097D38: @ 0x08097D38
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #6
	bls .L08097D48
	b .L08097FFE
.L08097D48:
	lsls r0, r0, #2
	ldr r1, .L08097D54 @ =.L08097D58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08097D54: .4byte .L08097D58
.L08097D58: @ jump table
	.4byte .L08097FFE @ case 0
	.4byte .L08097FFE @ case 1
	.4byte .L08097FFE @ case 2
	.4byte .L08097D74 @ case 3
	.4byte .L08097FFE @ case 4
	.4byte .L08097FFE @ case 5
	.4byte .L08097FFE @ case 6
.L08097D74:
	ldr r0, .L08097D88 @ =0x000033D2
	adds r4, r6, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne .L08097D8C
	movs r0, #3
	strb r0, [r4]
	b .L08097FFE
	.align 2, 0
.L08097D88: .4byte 0x000033D2
.L08097D8C:
	cmp r0, #5
	bne .L08097D96
	movs r0, #2
	strb r0, [r4]
	b .L08097FFE
.L08097D96:
	cmp r0, #4
	bne .L08097E08
	adds r0, r6, #0
	adds r0, #0x80
	bl func_08050DF0
	adds r1, r0, #0
	movs r0, #3
	strb r0, [r4]
	ldr r2, .L08097DD0 @ =0x000033D4
	adds r0, r6, r2
	ldrh r0, [r0]
	cmp r0, #0
	bge .L08097DB4
	b .L08097FFE
.L08097DB4:
	cmp r0, #2
	ble .L08097DC4
	cmp r0, #9
	ble .L08097DBE
	b .L08097FFE
.L08097DBE:
	cmp r0, #8
	bge .L08097DC4
	b .L08097FFE
.L08097DC4:
	cmp r1, #1
	bne .L08097DD8
	ldr r0, .L08097DD4 @ =0x000033D3
	adds r1, r6, r0
	movs r0, #0
	b .L08097DF2
	.align 2, 0
.L08097DD0: .4byte 0x000033D4
.L08097DD4: .4byte 0x000033D3
.L08097DD8:
	cmp r1, #2
	bne .L08097DE8
	ldr r2, .L08097DE4 @ =0x000033D3
	adds r1, r6, r2
	movs r0, #1
	b .L08097DF2
	.align 2, 0
.L08097DE4: .4byte 0x000033D3
.L08097DE8:
	cmp r1, #3
	bne .L08097DF4
	ldr r0, .L08097E00 @ =0x000033D3
	adds r1, r6, r0
	movs r0, #2
.L08097DF2:
	strb r0, [r1]
.L08097DF4:
	ldr r2, .L08097E04 @ =0x000033D2
	adds r1, r6, r2
	movs r0, #5
	strb r0, [r1]
	b .L08097FFE
	.align 2, 0
.L08097E00: .4byte 0x000033D3
.L08097E04: .4byte 0x000033D2
.L08097E08:
	cmp r0, #3
	beq .L08097E0E
	b .L08097FFE
.L08097E0E:
	movs r0, #5
	strb r0, [r4]
	ldr r1, .L08097E28 @ =0x000033D4
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0xa
	bls .L08097E1E
	b .L08097FFE
.L08097E1E:
	lsls r0, r0, #2
	ldr r1, .L08097E2C @ =.L08097E30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08097E28: .4byte 0x000033D4
.L08097E2C: .4byte .L08097E30
.L08097E30: @ jump table
	.4byte .L08097E5C @ case 0
	.4byte .L08097E8C @ case 1
	.4byte .L08097EB0 @ case 2
	.4byte .L08097EE0 @ case 3
	.4byte .L08097EFC @ case 4
	.4byte .L08097F04 @ case 5
	.4byte .L08097F20 @ case 6
	.4byte .L08097F5C @ case 7
	.4byte .L08097F80 @ case 8
	.4byte .L08097FB0 @ case 9
	.4byte .L08097FE4 @ case 10
.L08097E5C:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097E7C @ =gUnk_08100E34
	ldr r2, .L08097E80 @ =gUnk_08100E48
	ldr r3, .L08097E84 @ =gUnk_08100E5C
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	bl func_08050E0C
	ldr r2, .L08097E88 @ =0x000033D2
	adds r1, r6, r2
	b .L08097FCC
	.align 2, 0
.L08097E7C: .4byte gUnk_08100E34
.L08097E80: .4byte gUnk_08100E48
.L08097E84: .4byte gUnk_08100E5C
.L08097E88: .4byte 0x000033D2
.L08097E8C:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097EA4 @ =gUnk_08100E74
	ldr r2, .L08097EA8 @ =gUnk_08100E90
	ldr r3, .L08097EAC @ =gUnk_08100E5C
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	b .L08097FC8
	.align 2, 0
.L08097EA4: .4byte gUnk_08100E74
.L08097EA8: .4byte gUnk_08100E90
.L08097EAC: .4byte gUnk_08100E5C
.L08097EB0:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097ED0 @ =gUnk_08100EA4
	ldr r2, .L08097ED4 @ =gUnk_08100EBC
	ldr r3, .L08097ED8 @ =gUnk_08100ED8
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	bl func_08050E0C
	ldr r2, .L08097EDC @ =0x000033D2
	adds r1, r6, r2
	b .L08097FCC
	.align 2, 0
.L08097ED0: .4byte gUnk_08100EA4
.L08097ED4: .4byte gUnk_08100EBC
.L08097ED8: .4byte gUnk_08100ED8
.L08097EDC: .4byte 0x000033D2
.L08097EE0:
	ldr r5, .L08097EF4 @ =gUnk_08100EF0
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050EBC
	ldr r0, .L08097EF8 @ =0x000033D8
	adds r2, r6, r0
	b .L08097F6E
	.align 2, 0
.L08097EF4: .4byte gUnk_08100EF0
.L08097EF8: .4byte 0x000033D8
.L08097EFC:
	ldr r5, .L08097F00 @ =gUnk_08100F04
	b .L08097F5E
	.align 2, 0
.L08097F00: .4byte gUnk_08100F04
.L08097F04:
	ldr r5, .L08097F18 @ =gUnk_08100F30
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050EBC
	ldr r0, .L08097F1C @ =0x000033D8
	adds r2, r6, r0
	b .L08097F6E
	.align 2, 0
.L08097F18: .4byte gUnk_08100F30
.L08097F1C: .4byte 0x000033D8
.L08097F20:
	ldr r5, .L08097F4C @ =gUnk_08100F30
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050EBC
	ldr r1, .L08097F50 @ =0x000033D8
	adds r2, r6, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_08050DA0
	ldr r2, .L08097F54 @ =0x000033D2
	adds r1, r6, r2
	movs r0, #3
	strb r0, [r1]
	ldr r0, .L08097F58 @ =0x000033D4
	adds r1, r6, r0
	movs r0, #7
	strh r0, [r1]
	b .L08097FFE
	.align 2, 0
.L08097F4C: .4byte gUnk_08100F30
.L08097F50: .4byte 0x000033D8
.L08097F54: .4byte 0x000033D2
.L08097F58: .4byte 0x000033D4
.L08097F5C:
	ldr r5, .L08097F78 @ =gUnk_08100F44
.L08097F5E:
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050EBC
	ldr r1, .L08097F7C @ =0x000033D8
	adds r2, r6, r1
.L08097F6E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_08050DA0
	b .L08097FFE
	.align 2, 0
.L08097F78: .4byte gUnk_08100F44
.L08097F7C: .4byte 0x000033D8
.L08097F80:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097FA0 @ =gUnk_08100F78
	ldr r2, .L08097FA4 @ =gUnk_08100F90
	ldr r3, .L08097FA8 @ =gUnk_08100FA4
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	bl func_08050E0C
	ldr r2, .L08097FAC @ =0x000033D2
	adds r1, r6, r2
	b .L08097FCC
	.align 2, 0
.L08097FA0: .4byte gUnk_08100F78
.L08097FA4: .4byte gUnk_08100F90
.L08097FA8: .4byte gUnk_08100FA4
.L08097FAC: .4byte 0x000033D2
.L08097FB0:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097FD4 @ =gUnk_08100FBC
	ldr r2, .L08097FD8 @ =gUnk_08100F90
	ldr r3, .L08097FDC @ =gUnk_08100FCC
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	bl func_08050E0C
.L08097FC8:
	ldr r0, .L08097FE0 @ =0x000033D2
	adds r1, r6, r0
.L08097FCC:
	movs r0, #4
	strb r0, [r1]
	b .L08097FFE
	.align 2, 0
.L08097FD4: .4byte gUnk_08100FBC
.L08097FD8: .4byte gUnk_08100F90
.L08097FDC: .4byte gUnk_08100FCC
.L08097FE0: .4byte 0x000033D2
.L08097FE4:
	ldr r5, .L08098008 @ =gUnk_08100FE0
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050E98
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L08097FFE:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08098008: .4byte gUnk_08100FE0

	thumb_func_start func_0809800C
func_0809800C: @ 0x0809800C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb8
	mov sl, r0
	bl func_08008918
	add r1, sp, #0xc
	movs r4, #0
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
	movs r7, #0xc0
	lsls r7, r7, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	movs r0, #0
	adds r1, r7, #0
	bl func_08008EB8
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, .L08098394 @ =0x0600E000
	mov r8, r0
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl func_08008EB8
	ldr r1, .L08098398 @ =0x0600F800
	mov sb, r1
	adds r0, r6, #0
	adds r2, r4, #0
	bl func_08008EB8
	ldr r1, .L0809839C @ =0x0600F000
	adds r0, r6, #0
	adds r2, r4, #0
	bl func_08008EB8
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r5, #0
	strh r2, [r0]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080983A0 @ =0x00001C43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080983A4 @ =0x00001F41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080983A8 @ =0x00001E42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	ldr r0, .L080983AC @ =gUnk_080F9F70
	ldr r0, [r0]
	ldr r1, .L080983B0 @ =gUnk_080F9F74
	ldr r2, [r1]
	adds r1, r7, #0
	bl func_08008E64
	ldr r0, .L080983B4 @ =0x00030003
	mov r1, r8
	adds r2, r4, #0
	bl func_08008EB8
	movs r0, #3
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, sb
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl func_08051320
	ldr r0, .L080983B8 @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r1, .L080983BC @ =0x05000040
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r0, r7, #0
	strh r0, [r1]
	ldr r0, .L080983C0 @ =0x05000042
	strh r5, [r0]
	adds r1, #4
	ldr r2, .L080983C4 @ =0x00004218
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, .L080983C8 @ =0x00002BD0
	add r1, sl
	adds r0, r6, #0
	adds r2, r4, #0
	bl func_08008EB8
	movs r5, #0x84
	lsls r5, r5, #6
	movs r1, #0
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0xa4]
	mov r4, sp
	adds r4, #0x18
	str r4, [sp, #0xa8]
	mov r7, sp
	adds r7, #0x20
	str r7, [sp, #0xb0]
	mov r0, sp
	adds r0, #0x28
	str r0, [sp, #0xb4]
	add r2, sp, #0x30
	mov sb, r2
	movs r3, #0xae
	lsls r3, r3, #1
	add r3, sl
	str r3, [sp, #0xa0]
	mov r4, sl
	adds r4, #0xc8
	str r4, [sp, #0xac]
	ldr r7, .L080983CC @ =0x00002BD4
	add r7, sl
	mov r8, r7
.L08098174:
	movs r4, #0
	lsls r0, r1, #1
	adds r6, r5, #0
	adds r6, #0x28
	adds r1, #1
	mov ip, r1
	adds r1, r0, #4
	lsls r1, r1, #6
	adds r0, #5
	lsls r0, r0, #6
	adds r3, r5, #0
	adds r3, #0x14
	mov r7, r8
	adds r2, r0, r7
	add r1, r8
.L08098192:
	adds r0, r5, r4
	strh r0, [r1]
	strh r3, [r2]
	adds r3, #1
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x13
	ble .L08098192
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	mov r1, ip
	cmp r1, #7
	ble .L08098174
	ldr r0, .L080983C8 @ =0x00002BD0
	add r0, sl
	ldr r1, .L0809839C @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008E64
	ldr r4, .L080983D0 @ =gUnk_08750C8C
	movs r0, #0xc4
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r7, .L080983D4 @ =0x06010000
	adds r1, r1, r7
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r5, [sp, #0xa4]
	movs r0, #0
	str r0, [sp, #0x10]
	strh r0, [r5, #4]
	ldr r1, [sp, #0xa8]
	str r0, [sp, #0x18]
	strh r0, [r1, #4]
	ldr r6, [sp, #0xb0]
	str r0, [sp, #0x20]
	strh r0, [r6, #4]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0xb4]
	strh r0, [r1, #4]
	movs r0, #0xac
	lsls r0, r0, #1
	add r0, sl
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0xa0]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x30
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r4, sb
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	ldm r4!, {r0, r1, r2}
	stm r5!, {r0, r1, r2}
	ldm r4!, {r0, r1, r3}
	stm r5!, {r0, r1, r3}
	ldm r4!, {r2, r3}
	stm r5!, {r2, r3}
	ldr r4, [sp, #0x20]
	movs r0, #0xba
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r5, .L080983D8 @ =0x05000200
	adds r1, r0, r5
	ldr r0, [sp, #0x20]
	movs r2, #0
	cmp r0, #0
	beq .L0809824A
	ldrh r2, [r6, #4]
.L0809824A:
	adds r0, r4, #0
	bl func_08008E64
	mov r0, sb
	ldr r1, [sp, #0xac]
	movs r2, #0
	bl func_0805E790
	ldr r1, [sp, #0xa4]
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r4}
	stm r1!, {r2, r4}
	ldr r4, [sp, #0x20]
	movs r0, #0xbe
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x20]
	movs r2, #0
	cmp r0, #0
	beq .L08098288
	ldr r3, [sp, #0xb0]
	ldrh r2, [r3, #4]
.L08098288:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #0x18]
	movs r0, #0xbc
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	adds r1, r0, r7
	ldr r0, [sp, #0x18]
	movs r2, #0
	cmp r0, #0
	beq .L080982AC
	ldr r0, [sp, #0xa8]
	ldrh r2, [r0, #4]
.L080982AC:
	adds r0, r4, #0
	bl func_08008E64
	movs r0, #0xc0
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	adds r1, r1, r7
	movs r2, #0xe0
	lsls r2, r2, #3
	movs r0, #0
	bl func_08008EB8
	movs r5, #0
	add r7, sp, #0x94
	movs r1, #1
	mov r8, r1
	movs r2, #2
	mov sb, r2
	add r6, sp, #0x98
	mov r3, sp
	adds r3, #0x54
	str r3, [sp, #0x9c]
.L080982E2:
	ldr r0, .L080983DC @ =gUnk_08101008
	adds r0, r5, r0
	ldrb r4, [r0]
	cmp r4, #0
	beq .L0809833C
	mov r0, r8
	strh r0, [r7]
	mov r1, sb
	strh r1, [r7, #2]
	ldr r0, [r7]
	add r1, sp, #0x54
	movs r2, #0
	bl func_0804E7A0
	mov r2, r8
	strh r2, [r6]
	mov r3, sb
	strh r3, [r6, #2]
	ldr r0, [r6]
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	add r1, sp, #0x54
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	movs r0, #0xc0
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r0, r5, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r2, .L080983D4 @ =0x06010000
	adds r1, r1, r2
	ldr r0, [sp, #0x9c]
	movs r2, #0x40
	bl func_08008E64
.L0809833C:
	adds r5, #1
	cmp r5, #0x15
	ble .L080982E2
	movs r4, #0xc2
	lsls r4, r4, #2
	add r4, sl
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L080983D8 @ =0x05000200
	adds r0, r0, r3
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r1, r7, #0
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L080983E0 @ =0x05000202
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L080983E4 @ =0x05000204
	adds r0, r0, r2
	ldr r3, .L080983C4 @ =0x00004218
	adds r1, r3, #0
	strh r1, [r0]
	add sp, #0xb8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08098394: .4byte 0x0600E000
.L08098398: .4byte 0x0600F800
.L0809839C: .4byte 0x0600F000
.L080983A0: .4byte 0x00001C43
.L080983A4: .4byte 0x00001F41
.L080983A8: .4byte 0x00001E42
.L080983AC: .4byte gUnk_080F9F70
.L080983B0: .4byte gUnk_080F9F74
.L080983B4: .4byte 0x00030003
.L080983B8: .4byte gUnk_080F9F78
.L080983BC: .4byte 0x05000040
.L080983C0: .4byte 0x05000042
.L080983C4: .4byte 0x00004218
.L080983C8: .4byte 0x00002BD0
.L080983CC: .4byte 0x00002BD4
.L080983D0: .4byte gUnk_08750C8C
.L080983D4: .4byte 0x06010000
.L080983D8: .4byte 0x05000200
.L080983DC: .4byte gUnk_08101008
.L080983E0: .4byte 0x05000202
.L080983E4: .4byte 0x05000204

	thumb_func_start func_080983E8
func_080983E8: @ 0x080983E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x90
	mov r8, r0
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
	add r6, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r6, #4]
	add r5, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r5, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	ldr r1, .L080986CC @ =0xFFFFFCFF
	ldr r0, [sp, #0x5c]
	ands r0, r1
	ldr r4, .L080986D0 @ =0xFFFFF3FF
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, .L080986D4 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L080986D8 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L080986DC @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L080986E0 @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L080986E4 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L080986E8 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp, #0x5c]
	movs r0, #0xc2
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L080986EC @ =0xFFFF0FFF
	add r3, sp, #0x5c
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L080986F0 @ =0x0000FFFF
	ands r1, r0
	ands r1, r4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r3, #4]
	ldr r1, .L080986F4 @ =0xFFFFFF00
	ldr r0, [sp, #0x5c]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [sp, #0x5c]
	movs r4, #0
	mov sb, r3
	add r0, sp, #0x64
	mov sl, r0
	mov r1, sp
	adds r1, #0x3c
	str r1, [sp, #0x80]
	movs r5, #0xc0
	lsls r5, r5, #2
	add r5, r8
	movs r6, #8
.L080984A8:
	ldr r1, .L080986F8 @ =0x000001FF
	ands r1, r6
	lsls r1, r1, #0x10
	ldr r2, .L080986FC @ =0xFE00FFFF
	ldr r0, [sp, #0x5c]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x5c]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	lsls r1, r4, #1
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L08098700 @ =0xFFFFFC00
	ldr r1, [sp, #0x60]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x60]
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080984F4
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x5c]
	str r0, [r1]
	mov r7, sb
	ldrh r0, [r7, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080984F4:
	adds r6, #8
	adds r4, #1
	cmp r4, #0x15
	ble .L080984A8
	ldr r1, .L080986CC @ =0xFFFFFCFF
	ldr r0, [sp, #0x64]
	ands r0, r1
	ldr r4, .L080986D0 @ =0xFFFFF3FF
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, .L080986D4 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L080986D8 @ =0xFFFF3FFF
	ands r0, r1
	ldr r1, .L080986DC @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L080986E0 @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L080986E4 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L080986E8 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp, #0x64]
	movs r0, #0xc2
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L080986EC @ =0xFFFF0FFF
	mov r3, sl
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L080986F0 @ =0x0000FFFF
	ands r1, r0
	ands r1, r4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r3, #4]
	ldr r1, .L080986F4 @ =0xFFFFFF00
	ldr r0, [sp, #0x64]
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	str r0, [sp, #0x64]
	movs r4, #0
	movs r5, #0xae
	lsls r5, r5, #1
	add r5, r8
	mov sb, r5
	movs r6, #0xca
	lsls r6, r6, #1
	add r6, r8
	str r6, [sp, #0x7c]
	movs r7, #0xc4
	lsls r7, r7, #2
	add r7, r8
	str r7, [sp, #0x84]
	movs r7, #0xc0
	mov r5, sl
.L0809857E:
	ldr r1, .L080986F8 @ =0x000001FF
	ands r1, r7
	lsls r1, r1, #0x10
	ldr r2, .L080986FC @ =0xFE00FFFF
	ldr r0, [sp, #0x64]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x84]
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r1, .L08098704 @ =0x00000369
	add r1, r8
	adds r1, r1, r4
	ldrb r1, [r1]
	adds r1, r1, r0
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r2, .L08098700 @ =0xFFFFFC00
	ldr r0, [r5, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080985D0
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x64]
	str r0, [r1]
	mov r6, sl
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080985D0:
	adds r7, #8
	adds r4, #1
	cmp r4, #4
	ble .L0809857E
	movs r5, #0xc4
	lsls r5, r5, #1
	add r5, r8
	movs r4, #0xac
	lsls r4, r4, #1
	add r4, r8
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r5]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	mov r7, sb
	ldr r0, [r7]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x80]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	ldr r0, [sp, #0x80]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r1, sp
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, r8
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	movs r4, #0xb8
	lsls r4, r4, #2
	add r4, r8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r0, #0xba
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r1, #1
	movs r7, #1
	mov sb, r7
	mov r2, sb
	strh r2, [r0, #8]
	strb r1, [r0, #0x18]
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08098676
	b .L080987CE
.L08098676:
	mov r0, r8
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x24]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L08098696
	mov r4, sp
	ldrh r3, [r4, #0x28]
.L08098696:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r5, .L08098708 @ =0x06010000
	adds r2, r2, r5
	ldr r0, [sp, #0x80]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r7, [sp, #0x80]
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0809870C
	cmp r1, #0
	beq .L080986C2
	adds r0, r1, #0
	adds r1, r7, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080986C2:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080987CE
	.align 2, 0
.L080986CC: .4byte 0xFFFFFCFF
.L080986D0: .4byte 0xFFFFF3FF
.L080986D4: .4byte 0xFFFFDFFF
.L080986D8: .4byte 0xFFFF3FFF
.L080986DC: .4byte 0xF1FFFFFF
.L080986E0: .4byte 0xEFFFFFFF
.L080986E4: .4byte 0xDFFFFFFF
.L080986E8: .4byte 0x3FFFFFFF
.L080986EC: .4byte 0xFFFF0FFF
.L080986F0: .4byte 0x0000FFFF
.L080986F4: .4byte 0xFFFFFF00
.L080986F8: .4byte 0x000001FF
.L080986FC: .4byte 0xFE00FFFF
.L08098700: .4byte 0xFFFFFC00
.L08098704: .4byte 0x00000369
.L08098708: .4byte 0x06010000
.L0809870C:
	str r1, [sp, #0x88]
	mov r5, sb
	str r5, [sp, #0x70]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x6c]
	add r1, sp, #0x70
	add r0, sp, #0x6c
	cmp r4, #1
	bhs .L08098726
	adds r0, r1, #0
.L08098726:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08098744
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08098748
	mov r0, sb
	bl func_080D3BC0
	b .L08098748
.L08098744:
	movs r0, #0
	mov sb, r0
.L08098748:
	adds r5, r0, #0
	str r5, [sp, #0x8c]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L08098766
.L08098752:
	cmp r3, #0
	beq .L08098762
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08098762:
	adds r2, #0x10
	adds r3, #0x10
.L08098766:
	ldr r0, [sp, #0x88]
	cmp r2, r0
	bne .L08098752
	adds r5, r3, #0
	ldr r0, [sp, #0x70]
	cmp r0, #1
	bne .L08098788
	cmp r5, #0
	beq .L08098784
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08098784:
	adds r5, #0x10
	b .L080987AA
.L08098788:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080987A8
.L08098790:
	cmp r2, #0
	beq .L080987A0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080987A0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08098790
.L080987A8:
	adds r5, r2, #0
.L080987AA:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080987BA
.L080987B4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080987B4
.L080987BA:
	cmp r0, #0
	beq .L080987C2
	bl free
.L080987C2:
	ldr r0, [sp, #0x8c]
	add r0, sb
	ldr r7, [sp, #0x8c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080987CE:
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080987E4
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L080987E4:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	movs r5, #0xe0
	lsls r5, r5, #1
	add r5, r8
	movs r4, #0xc8
	lsls r4, r4, #1
	add r4, r8
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r5]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x7c]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r4, [sp, #0x80]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x1c
	ldm r4!, {r1, r6, r7}
	stm r0!, {r1, r6, r7}
	ldm r4!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldm r4!, {r1, r7}
	stm r0!, {r1, r7}
	mov r1, sp
	movs r0, #0xd2
	lsls r0, r0, #1
	add r0, r8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	movs r4, #0xb8
	lsls r4, r4, #2
	add r4, r8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #2
	strh r0, [r1, #6]
	movs r0, #0xba
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r1, #1
	movs r3, #1
	mov sb, r3
	mov r6, sb
	strh r6, [r0, #8]
	strb r1, [r0, #0x18]
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L0809888C
	b .L080989A8
.L0809888C:
	mov r0, r8
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x24]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L080988AC
	mov r0, sp
	ldrh r3, [r0, #0x28]
.L080988AC:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r1, .L080988E0 @ =0x06010040
	adds r2, r2, r1
	ldr r0, [sp, #0x80]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r2, [sp, #0x80]
	mov sl, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080988E4
	cmp r1, #0
	beq .L080988D8
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080988D8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080989A8
	.align 2, 0
.L080988E0: .4byte 0x06010040
.L080988E4:
	str r1, [sp, #0x88]
	mov r7, sb
	str r7, [sp, #0x78]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r1, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L080988FC
	adds r0, r1, #0
.L080988FC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0809891A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0809891E
	mov r0, sb
	bl func_080D3BC0
	b .L0809891E
.L0809891A:
	movs r0, #0
	mov sb, r0
.L0809891E:
	adds r5, r0, #0
	str r5, [sp, #0x8c]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x88]
	cmp r2, r4
	beq .L08098946
.L0809892C:
	cmp r3, #0
	beq .L0809893C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0809893C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x88]
	cmp r2, r5
	bne .L0809892C
.L08098946:
	adds r5, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L08098962
	cmp r5, #0
	beq .L0809895E
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0809895E:
	adds r5, #0x10
	b .L08098984
.L08098962:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08098982
.L0809896A:
	cmp r2, #0
	beq .L0809897A
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0809897A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0809896A
.L08098982:
	adds r5, r2, #0
.L08098984:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08098994
.L0809898E:
	adds r1, #0x10
	cmp r1, r2
	bne .L0809898E
.L08098994:
	cmp r0, #0
	beq .L0809899C
	bl free
.L0809899C:
	ldr r0, [sp, #0x8c]
	add r0, sb
	ldr r1, [sp, #0x8c]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080989A8:
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080989BE
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L080989BE:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	mov r0, r8
	bl func_0809A3E0
	add sp, #0x90
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080989DC
func_080989DC: @ 0x080989DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	adds r7, r0, #0
	mov sb, r1
	bl func_080CD620
	adds r4, r7, #0
	adds r4, #0x78
	movs r5, #0
	ldr r1, [r7, #0x78]
	cmp r5, r1
	beq .L08098A12
	cmp r1, #0
	beq .L08098A12
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098A12:
	str r5, [r4]
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08098BB0 @ =gUnk_08101020
	str r0, [sp]
	add r4, sp, #4
	movs r0, #0
	strb r0, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #8
	bl func_080CAFC4
	adds r6, r7, #0
	adds r6, #0x78
	adds r5, r0, #0
	ldr r1, [r7, #0x78]
	str r4, [sp, #0x68]
	cmp r5, r1
	beq .L08098A66
	cmp r1, #0
	beq .L08098A66
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098A66:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	movs r4, #0
	movs r0, #0x7c
	adds r0, r0, r7
	mov r8, r0
	mov r1, sb
	adds r1, #2
	str r1, [sp, #0x70]
	add r2, sp, #0xc
	mov sl, r2
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x6c]
	mov r0, sp
	adds r0, #0x1c
	str r0, [sp, #0x74]
	mov r1, sp
	adds r1, #0x24
	str r1, [sp, #0x78]
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0x7c]
	adds r3, r7, #0
	adds r3, #0xf8
	str r3, [sp, #0x64]
	adds r0, #0x3c
	str r0, [sp, #0x60]
	adds r1, #0x10
	str r1, [sp, #0x80]
	movs r6, #1
	ldr r5, .L08098BB4 @ =gUnk_08100AC2
.L08098AAA:
	movs r2, #0xcc
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrh r0, [r0]
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq .L08098AC8
	ldr r0, [r7, #0x78]
	ldrh r3, [r5]
	str r6, [sp]
	adds r1, r4, #0
	ldr r2, .L08098BB8 @ =gUnk_086678A0
	bl func_080CB304
.L08098AC8:
	adds r5, #2
	adds r4, #1
	cmp r4, #7
	ble .L08098AAA
	mov r4, r8
	movs r5, #0
	ldr r1, [r7, #0x7c]
	cmp r5, r1
	beq .L08098AF0
	cmp r1, #0
	beq .L08098AF0
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098AF0:
	str r5, [r4]
	movs r0, #0xcb
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08098BBC @ =gUnk_0810102C
	str r0, [sp]
	movs r0, #0
	ldr r1, [sp, #0x68]
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl func_080CC15C
	mov r5, r8
	adds r4, r0, #0
	ldr r1, [r7, #0x7c]
	cmp r4, r1
	beq .L08098B40
	cmp r1, #0
	beq .L08098B40
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098B40:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	add r0, sp, #8
	bl __12RucksackItem
	ldr r3, .L08098BC0 @ =0x0000035D
	adds r0, r7, r3
	movs r1, #0
	strb r1, [r0]
	movs r4, #0xd7
	lsls r4, r4, #2
	adds r0, r7, r4
	strb r1, [r0]
	mov r8, r1
	mov sb, sl
	ldr r0, .L08098BC4 @ =0x00002BB0
	adds r6, r7, r0
	ldr r5, [sp, #0x70]
.L08098B68:
	ldrh r0, [r5]
	cmp r0, #0
	beq .L08098C44
	cmp r0, #0xab
	bhi .L08098BC8
	add r4, sp, #0x10
	adds r1, r0, #0
	subs r1, #1
	adds r0, r4, #0
	bl __4FoodUi
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r2, [r0]
	lsls r2, r2, #8
	orrs r2, r1
	adds r0, #1
	ldrb r1, [r0]
	lsls r1, r1, #0x10
	orrs r1, r2
	mov r0, sb
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	ldrh r1, [r5]
	subs r1, #1
	mov r0, sb
	bl __4FoodUi
	mov r0, sb
	bl GetIconId__C4Food
	b .L08098BF4
	.align 2, 0
.L08098BB0: .4byte gUnk_08101020
.L08098BB4: .4byte gUnk_08100AC2
.L08098BB8: .4byte gUnk_086678A0
.L08098BBC: .4byte gUnk_0810102C
.L08098BC0: .4byte 0x0000035D
.L08098BC4: .4byte 0x00002BB0
.L08098BC8:
	ldrh r1, [r5]
	subs r1, #0xac
	add r0, sp, #0x54
	bl __7ArticleUi
	add r0, sp, #0x54
	ldrb r1, [r0]
	mov r0, sl
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r4, sp
	adds r4, #0x55
	ldrh r1, [r5]
	subs r1, #0xac
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetIconId__C7Article
.L08098BF4:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r7, #0x7c]
	movs r4, #1
	str r4, [sp]
	mov r1, r8
	ldr r2, .L08098C34 @ =gUnk_086678A0
	bl func_080CC728
	ldr r0, [sp, #8]
	str r0, [r6]
	adds r0, r7, #0
	add r1, sp, #8
	bl func_08096FB4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq .L08098C38
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r1, r4, #0
	mov r3, r8
	lsls r1, r3
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	b .L08098C4E
	.align 2, 0
.L08098C34: .4byte gUnk_086678A0
.L08098C38:
	ldr r1, .L08098C40 @ =0x0000035D
	adds r0, r7, r1
	strb r4, [r0]
	b .L08098C4E
	.align 2, 0
.L08098C40: .4byte 0x0000035D
.L08098C44:
	mov r0, sl
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r6]
.L08098C4E:
	adds r6, #4
	adds r5, #2
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #7
	ble .L08098B68
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r4, [sp, #0x6c]
	strh r0, [r4, #4]
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x74]
	strh r0, [r1, #4]
	str r0, [sp, #0x24]
	ldr r2, [sp, #0x78]
	strh r0, [r2, #4]
	str r0, [sp, #0x2c]
	ldr r3, [sp, #0x7c]
	strh r0, [r3, #4]
	ldr r0, [sp, #0x64]
	ldr r4, [r0]
	ldr r0, [sp, #0x60]
	ldr r3, [r4, #0xc]
	ldr r1, [sp, #0x64]
	movs r2, #1
	bl _call_via_r3
	ldr r0, [sp, #0x58]
	ldrh r2, [r0]
	add r0, sp, #0x34
	ldr r3, [r4, #0x10]
	ldr r1, [sp, #0x64]
	bl _call_via_r3
	ldr r0, [sp, #0x80]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r1, [sp, #0x6c]
	ldr r0, [sp, #0x80]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x24]
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L08098CE4 @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x24]
	movs r2, #0
	cmp r0, #0
	beq .L08098CCE
	ldr r3, [sp, #0x78]
	ldrh r2, [r3, #4]
.L08098CCE:
	adds r0, r4, #0
	bl func_08008E64
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08098CE4: .4byte 0x05000200

	thumb_func_start func_08098CE8
func_08098CE8: @ 0x08098CE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc4
	mov r8, r0
	bl func_080CD620
	mov r4, r8
	adds r4, #0x78
	movs r5, #0
	mov r0, r8
	ldr r1, [r0, #0x78]
	cmp r5, r1
	beq .L08098D1E
	cmp r1, #0
	beq .L08098D1E
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098D1E:
	str r5, [r4]
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	mov r0, r8
	bl func_08008910
	adds r4, r0, #0
	mov r0, r8
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08098FDC @ =gUnk_08101020
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl func_080CAFC4
	mov r5, r8
	adds r5, #0x78
	adds r4, r0, #0
	mov r3, r8
	ldr r1, [r3, #0x78]
	cmp r4, r1
	beq .L08098D72
	cmp r1, #0
	beq .L08098D72
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098D72:
	str r4, [r5]
	mov r3, r8
	ldr r0, [r3, #0x78]
	bl func_080CB090
	movs r4, #0
	movs r0, #0x7c
	add r0, r8
	mov sl, r0
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0xb4]
	mov r2, sp
	adds r2, #0x1c
	str r2, [sp, #0xb8]
	mov r3, sp
	adds r3, #0x24
	str r3, [sp, #0xbc]
	mov r7, r8
	adds r7, #0xf8
	mov r0, sp
	adds r0, #0x90
	str r0, [sp, #0xa8]
	add r1, sp, #0x2c
	mov sb, r1
	mov r2, r8
	adds r2, #0xc8
	str r2, [sp, #0xa0]
	adds r3, #0x74
	str r3, [sp, #0xac]
	adds r0, #0xc
	str r0, [sp, #0xb0]
	mov r1, sp
	adds r1, #0x50
	str r1, [sp, #0xa4]
	movs r6, #1
	ldr r5, .L08098FE0 @ =gUnk_08100AC2
.L08098DBC:
	movs r0, #0xcc
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq .L08098DDC
	mov r2, r8
	ldr r0, [r2, #0x78]
	ldrh r3, [r5]
	str r6, [sp]
	adds r1, r4, #0
	ldr r2, .L08098FE4 @ =gUnk_086678A0
	bl func_080CB304
.L08098DDC:
	adds r5, #2
	adds r4, #1
	cmp r4, #7
	ble .L08098DBC
	mov r4, sl
	movs r5, #0
	mov r3, r8
	ldr r1, [r3, #0x7c]
	cmp r5, r1
	beq .L08098E06
	cmp r1, #0
	beq .L08098E06
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098E06:
	str r5, [r4]
	add r1, sp, #0xc
	movs r0, #0
	str r0, [sp, #0xc]
	strh r0, [r1, #4]
	ldr r1, [sp, #0xb4]
	str r0, [sp, #0x14]
	strh r0, [r1, #4]
	ldr r5, [sp, #0xb8]
	str r0, [sp, #0x1c]
	strh r0, [r5, #4]
	str r0, [sp, #0x24]
	ldr r3, [sp, #0xbc]
	strh r0, [r3, #4]
	ldr r4, [r7]
	ldr r0, [sp, #0xa8]
	ldr r3, [r4, #0xc]
	adds r1, r7, #0
	movs r2, #1
	bl _call_via_r3
	add r0, sp, #0x90
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x2c
	ldr r3, [r4, #0x10]
	adds r1, r7, #0
	bl _call_via_r3
	mov r4, sb
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0xc
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	ldr r4, [sp, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r6, .L08098FE8 @ =0x05000200
	adds r1, r0, r6
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L08098E78
	ldrh r2, [r5, #4]
.L08098E78:
	adds r0, r4, #0
	bl func_08008E64
	mov r0, sb
	ldr r1, [sp, #0xa0]
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0xc
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x1c]
	movs r0, #0xbe
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r6
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L08098EB6
	ldr r0, [sp, #0xb8]
	ldrh r2, [r0, #4]
.L08098EB6:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #0x14]
	movs r0, #0xbc
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r5, .L08098FEC @ =0x06010000
	adds r1, r0, r5
	ldr r0, [sp, #0x14]
	movs r2, #0
	cmp r0, #0
	beq .L08098EDC
	ldr r3, [sp, #0xb4]
	ldrh r2, [r3, #4]
.L08098EDC:
	adds r0, r4, #0
	bl func_08008E64
	movs r0, #0xc0
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	adds r1, r1, r5
	movs r2, #0xe0
	lsls r2, r2, #3
	movs r0, #0
	bl func_08008EB8
	movs r7, #0
	movs r4, #1
	mov sb, r4
.L08098F04:
	movs r6, #0
	adds r0, r7, #0
	adds r0, #8
	lsls r1, r7, #2
	mov sl, r1
	adds r2, r7, #1
	str r2, [sp, #0xc0]
	movs r1, #0xb
	muls r0, r1, r0
	ldr r3, .L08098FF0 @ =gUnk_08101059
	adds r5, r0, r3
.L08098F1A:
	ldrb r4, [r5]
	add r0, sp, #0x98
	mov r1, sb
	strh r1, [r0]
	movs r3, #2
	ldr r2, [sp, #0xac]
	strh r3, [r2, #2]
	ldr r0, [r0]
	add r1, sp, #0x50
	movs r2, #0
	bl func_0804E7A0
	add r0, sp, #0x9c
	mov r1, sb
	strh r1, [r0]
	movs r3, #2
	ldr r2, [sp, #0xb0]
	strh r3, [r2, #2]
	ldr r0, [r0]
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	add r1, sp, #0x50
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	movs r0, #0xc0
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	mov r2, sl
	adds r0, r2, r7
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r0, r6, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r3, .L08098FEC @ =0x06010000
	adds r1, r1, r3
	ldr r0, [sp, #0xa4]
	movs r2, #0x40
	bl func_08008E64
	adds r5, #1
	adds r6, #1
	cmp r6, #9
	ble .L08098F1A
	ldr r7, [sp, #0xc0]
	cmp r7, #4
	ble .L08098F04
	movs r4, #0xc2
	lsls r4, r4, #2
	add r4, r8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L08098FE8 @ =0x05000200
	adds r0, r0, r1
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L08098FF4 @ =0x05000202
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r4, .L08098FF8 @ =0x05000204
	adds r0, r0, r4
	ldr r2, .L08098FFC @ =0x00004218
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #0xc4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08098FDC: .4byte gUnk_08101020
.L08098FE0: .4byte gUnk_08100AC2
.L08098FE4: .4byte gUnk_086678A0
.L08098FE8: .4byte 0x05000200
.L08098FEC: .4byte 0x06010000
.L08098FF0: .4byte gUnk_08101059
.L08098FF4: .4byte 0x05000202
.L08098FF8: .4byte 0x05000204
.L08098FFC: .4byte 0x00004218

	thumb_func_start func_08099000
func_08099000: @ 0x08099000
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	bl func_0809A3E0
	cmp r4, #1
	bne .L080990FA
	ldr r1, .L0809910C @ =0xFFFFFCFF
	ldr r0, [sp]
	ands r0, r1
	ldr r4, .L08099110 @ =0xFFFFF3FF
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, .L08099114 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L08099118 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L0809911C @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L08099120 @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L08099124 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L08099128 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp]
	movs r1, #0xc2
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0809912C @ =0xFFFF0FFF
	ldr r1, [sp, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L08099130 @ =0x0000FFFF
	ands r1, r0
	ands r1, r4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [sp, #4]
	movs r1, #0
	mov r4, sp
.L0809907A:
	movs r5, #0
	lsls r2, r1, #4
	mov sb, r2
	lsls r0, r1, #2
	adds r2, r1, #1
	mov sl, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r8, r0
	movs r6, #0x98
.L0809908E:
	ldr r0, .L08099134 @ =0x000001FF
	ands r0, r6
	lsls r0, r0, #0x10
	ldr r2, .L08099138 @ =0xFE00FFFF
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	mov r0, sb
	adds r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, .L0809913C @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r1, r5, #1
	add r1, r8
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L08099140 @ =0xFFFFFC00
	ldr r1, [r4, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #4]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080990EC
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [sp]
	str r1, [r0]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080990EC:
	adds r6, #8
	adds r5, #1
	cmp r5, #9
	ble .L0809908E
	mov r1, sl
	cmp r1, #4
	ble .L0809907A
.L080990FA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0809910C: .4byte 0xFFFFFCFF
.L08099110: .4byte 0xFFFFF3FF
.L08099114: .4byte 0xFFFFDFFF
.L08099118: .4byte 0xFFFF3FFF
.L0809911C: .4byte 0xF1FFFFFF
.L08099120: .4byte 0xEFFFFFFF
.L08099124: .4byte 0xDFFFFFFF
.L08099128: .4byte 0x3FFFFFFF
.L0809912C: .4byte 0xFFFF0FFF
.L08099130: .4byte 0x0000FFFF
.L08099134: .4byte 0x000001FF
.L08099138: .4byte 0xFE00FFFF
.L0809913C: .4byte 0xFFFFFF00
.L08099140: .4byte 0xFFFFFC00

	thumb_func_start func_08099144
func_08099144: @ 0x08099144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x6c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x70]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x74]
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
	add r5, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r5, #4]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r1, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	movs r6, #0xa8
	lsls r6, r6, #2
	add r6, sb
	movs r4, #0x9c
	lsls r4, r4, #2
	add r4, sb
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r6]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	movs r0, #0x9d
	lsls r0, r0, #2
	add r0, sb
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
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r1, sp
	movs r0, #0xa1
	lsls r0, r0, #2
	add r0, sb
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	movs r7, #0xc6
	lsls r7, r7, #2
	add r7, sb
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	mov r0, sp
	movs r1, #1
	strb r1, [r0, #0x18]
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L0809922C
	b .L0809935A
.L0809922C:
	ldr r0, [sp, #0x24]
	movs r1, #0
	cmp r0, #0
	beq .L08099238
	mov r2, sp
	ldrh r1, [r2, #0x28]
.L08099238:
	cmp r1, #0
	bne .L0809923E
	b .L0809935A
.L0809923E:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x24]
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0809925E
	mov r7, sp
	ldrh r3, [r7, #0x28]
.L0809925E:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r0, .L08099294 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x3c
	adds r1, r5, #0
	bl func_08008F0C
	add r1, sp, #0x3c
	mov sl, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08099298
	cmp r1, #0
	beq .L0809928A
	adds r0, r1, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0809928A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0809935A
	.align 2, 0
.L08099294: .4byte 0x06010000
.L08099298:
	str r1, [sp, #0x78]
	movs r5, #1
	str r5, [sp, #0x60]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r1, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L080992B2
	adds r0, r1, #0
.L080992B2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080992D0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080992D4
	mov r0, r8
	bl func_080D3BC0
	b .L080992D4
.L080992D0:
	movs r0, #0
	mov r8, r0
.L080992D4:
	adds r5, r0, #0
	str r5, [sp, #0x7c]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080992F2
.L080992DE:
	cmp r3, #0
	beq .L080992EE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080992EE:
	adds r2, #0x10
	adds r3, #0x10
.L080992F2:
	ldr r0, [sp, #0x78]
	cmp r2, r0
	bne .L080992DE
	adds r5, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L08099314
	cmp r5, #0
	beq .L08099310
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08099310:
	adds r5, #0x10
	b .L08099336
.L08099314:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08099334
.L0809931C:
	cmp r2, #0
	beq .L0809932C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0809932C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0809931C
.L08099334:
	adds r5, r2, #0
.L08099336:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08099346
.L08099340:
	adds r1, #0x10
	cmp r1, r2
	bne .L08099340
.L08099346:
	cmp r0, #0
	beq .L0809934E
	bl free
.L0809934E:
	ldr r0, [sp, #0x7c]
	add r0, r8
	ldr r7, [sp, #0x7c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0809935A:
	movs r2, #0
	mov r5, sp
	ldr r6, .L08099530 @ =gUnk_08117838
.L08099360:
	ldr r1, [sp, #0x6c]
	asrs r1, r2
	movs r0, #1
	ands r1, r0
	adds r4, r2, #1
	cmp r1, #0
	beq .L0809939A
	lsls r1, r4, #2
	adds r1, r1, r6
	ldrb r0, [r1]
	adds r0, #8
	strh r0, [r5]
	ldrb r0, [r1, #1]
	strh r0, [r5, #2]
	mov r0, sb
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08099392
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L08099392:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0809939A:
	adds r2, r4, #0
	cmp r2, #6
	ble .L08099360
	movs r0, #0xf8
	lsls r0, r0, #4
	ldr r1, [sp, #0x6c]
	ands r0, r1
	cmp r0, #0
	beq .L080993DE
	mov r2, sp
	ldr r1, .L08099530 @ =gUnk_08117838
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r0, #8
	strh r0, [r2]
	adds r1, #0x21
	ldrb r0, [r1]
	strh r0, [r2, #2]
	mov r0, sb
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080993D6
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L080993D6:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L080993DE:
	ldr r5, [sp, #0x74]
	cmp r5, #1
	beq .L08099432
	movs r2, #0
	mov r5, sp
	ldr r6, .L08099530 @ =gUnk_08117838
.L080993EA:
	ldr r1, [sp, #0x70]
	asrs r1, r2
	movs r0, #1
	ands r1, r0
	adds r4, r2, #1
	cmp r1, #0
	beq .L08099424
	lsls r1, r4, #2
	adds r1, r1, r6
	ldrb r0, [r1]
	adds r0, #0x80
	strh r0, [r5]
	ldrb r0, [r1, #1]
	strh r0, [r5, #2]
	mov r0, sb
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0809941C
	mov r7, sp
	ldrh r2, [r7, #0x20]
.L0809941C:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L08099424:
	adds r2, r4, #0
	cmp r2, #7
	ble .L080993EA
	ldr r0, [sp, #0x74]
	cmp r0, #1
	beq .L08099432
	b .L0809963A
.L08099432:
	movs r5, #0xb6
	lsls r5, r5, #2
	add r5, sb
	movs r4, #0xaa
	lsls r4, r4, #2
	add r4, sb
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r5]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	movs r0, #0xab
	lsls r0, r0, #2
	add r0, sb
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
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r7}
	stm r0!, {r1, r2, r7}
	ldm r4!, {r3, r7}
	stm r0!, {r3, r7}
	mov r1, sp
	movs r0, #0xaf
	lsls r0, r0, #2
	add r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	movs r4, #0xca
	lsls r4, r4, #2
	add r4, sb
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	mov r0, sp
	movs r7, #1
	mov r8, r7
	mov r1, r8
	strb r1, [r0, #0x18]
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080994CA
	b .L080995FA
.L080994CA:
	add r1, sp, #0x24
	ldr r0, [sp, #0x24]
	movs r2, #0
	cmp r0, #0
	beq .L080994D6
	ldrh r2, [r1, #4]
.L080994D6:
	cmp r2, #0
	bne .L080994DC
	b .L080995FA
.L080994DC:
	mov r0, sb
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x24]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L080994FC
	mov r4, sp
	ldrh r3, [r4, #0x28]
.L080994FC:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r5, .L08099534 @ =0x06010000
	adds r2, r2, r5
	add r0, sp, #0x3c
	adds r1, r7, #0
	bl func_08008F0C
	add r7, sp, #0x3c
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08099538
	cmp r1, #0
	beq .L08099528
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08099528:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080995FA
	.align 2, 0
.L08099530: .4byte gUnk_08117838
.L08099534: .4byte 0x06010000
.L08099538:
	str r1, [sp, #0x78]
	mov r5, r8
	str r5, [sp, #0x68]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L08099552
	adds r0, r1, #0
.L08099552:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08099570
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08099574
	mov r0, r8
	bl func_080D3BC0
	b .L08099574
.L08099570:
	movs r0, #0
	mov r8, r0
.L08099574:
	adds r5, r0, #0
	str r5, [sp, #0x7c]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L08099592
.L0809957E:
	cmp r3, #0
	beq .L0809958E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0809958E:
	adds r2, #0x10
	adds r3, #0x10
.L08099592:
	ldr r0, [sp, #0x78]
	cmp r2, r0
	bne .L0809957E
	adds r5, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L080995B4
	cmp r5, #0
	beq .L080995B0
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080995B0:
	adds r5, #0x10
	b .L080995D6
.L080995B4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080995D4
.L080995BC:
	cmp r2, #0
	beq .L080995CC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080995CC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080995BC
.L080995D4:
	adds r5, r2, #0
.L080995D6:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080995E6
.L080995E0:
	adds r1, #0x10
	cmp r1, r2
	bne .L080995E0
.L080995E6:
	cmp r0, #0
	beq .L080995EE
	bl free
.L080995EE:
	ldr r0, [sp, #0x7c]
	add r0, r8
	ldr r7, [sp, #0x7c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080995FA:
	movs r4, #0
	mov r5, sp
.L080995FE:
	adds r0, r4, #7
	ldr r1, [sp, #0x6c]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq .L08099634
	movs r0, #0x90
	strh r0, [r5]
	lsls r0, r4, #4
	adds r0, #0x10
	strh r0, [r5, #2]
	mov r0, sb
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0809962C
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L0809962C:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L08099634:
	adds r4, #1
	cmp r4, #4
	ble .L080995FE
.L0809963A:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809964C
func_0809964C: @ 0x0809964C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc8
	adds r7, r0, #0
	bl func_080CD620
	adds r4, r7, #0
	adds r4, #0x78
	movs r5, #0
	ldr r1, [r7, #0x78]
	cmp r5, r1
	beq .L08099680
	cmp r1, #0
	beq .L08099680
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08099680:
	str r5, [r4]
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08099740 @ =gUnk_08101038
	str r0, [sp]
	add r4, sp, #4
	movs r0, #0
	strb r0, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #8
	bl func_080CAFC4
	adds r6, r7, #0
	adds r6, #0x78
	adds r5, r0, #0
	ldr r1, [r7, #0x78]
	mov r8, r4
	cmp r5, r1
	beq .L080996D4
	cmp r1, #0
	beq .L080996D4
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080996D4:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	movs r5, #0
	adds r6, r7, #0
	adds r6, #0x7c
	mov r4, sp
	adds r4, #0x10
	str r4, [sp, #0xb8]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0xbc]
	mov r1, sp
	adds r1, #0x20
	str r1, [sp, #0xc0]
	add r2, sp, #0x28
	mov sb, r2
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r3, r7, r3
	str r3, [sp, #0xb4]
	adds r4, #0x20
	str r4, [sp, #0xc4]
	movs r0, #0xf8
	adds r0, r0, r7
	mov sl, r0
	adds r1, #0x78
	str r1, [sp, #0xac]
	adds r2, r7, #0
	adds r2, #0xc8
	str r2, [sp, #0xb0]
	ldr r3, .L08099744 @ =0x00002BB0
	adds r4, r7, r3
.L08099718:
	adds r0, r4, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0809976A
	adds r0, r4, #0
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L08099748
	add r0, sp, #0xc
	adds r1, r4, #0
	bl GetFood__C12RucksackItem
	add r0, sp, #0xc
	bl GetIconId__C4Food
	b .L08099758
	.align 2, 0
.L08099740: .4byte gUnk_08101038
.L08099744: .4byte 0x00002BB0
.L08099748:
	adds r0, r4, #0
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0x94
	strb r1, [r0]
	bl GetIconId__C7Article
.L08099758:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r7, #0x78]
	movs r1, #1
	str r1, [sp]
	adds r1, r5, #0
	ldr r2, .L08099A94 @ =gUnk_086678A0
	bl func_080CB304
.L0809976A:
	adds r4, #4
	adds r5, #1
	cmp r5, #7
	ble .L08099718
	adds r4, r6, #0
	movs r5, #0
	ldr r1, [r7, #0x7c]
	cmp r5, r1
	beq .L08099792
	cmp r1, #0
	beq .L08099792
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08099792:
	str r5, [r4]
	movs r0, #0xcb
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08099A98 @ =gUnk_08101044
	str r0, [sp]
	movs r0, #0
	mov r3, r8
	strb r0, [r3]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl func_080CC15C
	adds r5, r6, #0
	adds r4, r0, #0
	ldr r1, [r7, #0x7c]
	cmp r4, r1
	beq .L080997E2
	cmp r1, #0
	beq .L080997E2
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080997E2:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	ldr r4, .L08099A9C @ =gUnk_08750C8C
	movs r3, #0xc4
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r0, .L08099AA0 @ =0x06010000
	adds r1, r1, r0
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r6, [sp, #0xb8]
	movs r0, #0
	str r0, [sp, #0x10]
	strh r0, [r6, #4]
	ldr r1, [sp, #0xbc]
	str r0, [sp, #0x18]
	strh r0, [r1, #4]
	ldr r1, [sp, #0xc0]
	mov r8, r1
	str r0, [sp, #0x20]
	strh r0, [r1, #4]
	str r0, [sp, #0x28]
	mov r2, sb
	strh r0, [r2, #4]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0xb4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x30
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r5, [sp, #0xc4]
	adds r0, r5, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r6, #0
	adds r0, r5, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x20]
	movs r1, #0xba
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L08099AA4 @ =0x05000200
	mov sb, r2
	adds r1, r0, r2
	ldr r0, [sp, #0x20]
	movs r2, #0
	cmp r0, #0
	beq .L08099882
	mov r3, r8
	ldrh r2, [r3, #4]
.L08099882:
	adds r0, r4, #0
	bl func_08008E64
	mov r0, sl
	ldr r4, [r0]
	ldr r0, [sp, #0xac]
	ldr r3, [r4, #0xc]
	mov r1, sl
	movs r2, #1
	bl _call_via_r3
	add r0, sp, #0x98
	ldr r0, [r0]
	ldrh r2, [r0]
	adds r0, r5, #0
	ldr r3, [r4, #0x10]
	mov r1, sl
	bl _call_via_r3
	adds r0, r5, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r6, #0
	adds r0, r5, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x20]
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	mov r2, sb
	adds r1, r0, r2
	ldr r0, [sp, #0x20]
	movs r2, #0
	cmp r0, #0
	beq .L080998E2
	mov r3, r8
	ldrh r2, [r3, #4]
.L080998E2:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #0xc4]
	ldr r1, [sp, #0xb0]
	movs r2, #0
	bl func_0805E790
	ldr r1, [sp, #0xb8]
	ldr r0, [sp, #0xc4]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r4}
	stm r1!, {r2, r4}
	ldr r4, [sp, #0x20]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	mov r2, sb
	adds r1, r0, r2
	ldr r0, [sp, #0x20]
	movs r2, #0
	cmp r0, #0
	beq .L08099922
	ldr r3, [sp, #0xc0]
	ldrh r2, [r3, #4]
.L08099922:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #0x18]
	movs r1, #0xbc
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L08099AA0 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #0x18]
	movs r2, #0
	cmp r0, #0
	beq .L08099948
	ldr r3, [sp, #0xbc]
	ldrh r2, [r3, #4]
.L08099948:
	adds r0, r4, #0
	bl func_08008E64
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r0, .L08099AA0 @ =0x06010000
	adds r1, r1, r0
	movs r2, #0xe0
	lsls r2, r2, #3
	movs r0, #0
	bl func_08008EB8
	movs r5, #0
	add r1, sp, #0xa0
	mov r8, r1
	movs r2, #1
	mov sb, r2
	movs r3, #2
	mov sl, r3
	add r6, sp, #0xa4
	mov r4, sp
	adds r4, #0x54
	str r4, [sp, #0xa8]
.L08099982:
	ldr r0, .L08099AA8 @ =gUnk_08101048
	adds r0, r5, r0
	ldrb r4, [r0]
	cmp r4, #0
	beq .L080999DE
	mov r1, sb
	mov r0, r8
	strh r1, [r0]
	mov r2, sl
	strh r2, [r0, #2]
	ldr r0, [r0]
	add r1, sp, #0x54
	movs r2, #0
	bl func_0804E7A0
	mov r3, sb
	strh r3, [r6]
	mov r0, sl
	strh r0, [r6, #2]
	ldr r0, [r6]
	str r4, [sp]
	movs r1, #0
	str r1, [sp, #4]
	mov r2, sb
	str r2, [sp, #8]
	add r1, sp, #0x54
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r0, r5, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r4, .L08099AA0 @ =0x06010000
	adds r1, r1, r4
	ldr r0, [sp, #0xa8]
	movs r2, #0x40
	bl func_08008E64
.L080999DE:
	adds r5, #1
	cmp r5, #0x10
	ble .L08099982
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L08099AA4 @ =0x05000200
	adds r0, r0, r1
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L08099AAC @ =0x05000202
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r4, .L08099AB0 @ =0x05000204
	adds r0, r0, r4
	ldr r2, .L08099AB4 @ =0x00004218
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, .L08099AB8 @ =0x00030003
	ldr r4, .L08099ABC @ =0x00002BD0
	adds r1, r7, r4
	movs r2, #0xc0
	lsls r2, r2, #2
	bl func_08008EB8
	movs r3, #0
	ldr r6, .L08099AC0 @ =gUnk_0811785C
	ldr r5, .L08099AC4 @ =0x0000101C
.L08099A3A:
	adds r3, #1
	lsls r0, r3, #2
	adds r0, r0, r6
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	adds r0, r1, #1
	lsls r0, r0, #1
	lsls r2, r2, #6
	adds r0, r0, r4
	adds r0, r2, r0
	adds r0, r0, r7
	lsls r1, r1, #1
	adds r1, r1, r4
	adds r2, r2, r1
	adds r2, r2, r7
	movs r1, #1
.L08099A5A:
	strh r5, [r2]
	strh r5, [r0]
	adds r0, #0x40
	adds r2, #0x40
	subs r1, #1
	cmp r1, #0
	bge .L08099A5A
	cmp r3, #7
	ble .L08099A3A
	movs r3, #8
	ldr r4, .L08099AC8 @ =0x00002BEC
	adds r0, r7, r4
	movs r2, #2
	movs r1, #0xb
.L08099A76:
	strh r3, [r0]
	strh r2, [r0, #2]
	adds r0, #0x40
	subs r1, #1
	cmp r1, #0
	bge .L08099A76
	add sp, #0xc8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08099A94: .4byte gUnk_086678A0
.L08099A98: .4byte gUnk_08101044
.L08099A9C: .4byte gUnk_08750C8C
.L08099AA0: .4byte 0x06010000
.L08099AA4: .4byte 0x05000200
.L08099AA8: .4byte gUnk_08101048
.L08099AAC: .4byte 0x05000202
.L08099AB0: .4byte 0x05000204
.L08099AB4: .4byte 0x00004218
.L08099AB8: .4byte 0x00030003
.L08099ABC: .4byte 0x00002BD0
.L08099AC0: .4byte gUnk_0811785C
.L08099AC4: .4byte 0x0000101C
.L08099AC8: .4byte 0x00002BEC

	thumb_func_start func_08099ACC
func_08099ACC: @ 0x08099ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
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
	add r5, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r5, #4]
	add r4, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r4, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	adds r0, r7, #0
	bl func_0809A3E0
	ldr r1, .L08099C18 @ =0x00000369
	adds r0, r7, r1
	ldrb r0, [r0]
	movs r2, #0
	str r2, [sp, #0x7c]
	cmp r0, #0
	bne .L08099B24
	movs r3, #0x18
	str r3, [sp, #0x7c]
.L08099B24:
	ldr r1, .L08099C1C @ =0xFFFFFCFF
	ldr r0, [sp, #0x5c]
	ands r0, r1
	ldr r4, .L08099C20 @ =0xFFFFF3FF
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, .L08099C24 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L08099C28 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L08099C2C @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L08099C30 @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L08099C34 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L08099C38 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp, #0x5c]
	movs r5, #0xc2
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L08099C3C @ =0xFFFF0FFF
	add r3, sp, #0x5c
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L08099C40 @ =0x0000FFFF
	ands r1, r0
	ands r1, r4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r3, #4]
	ldr r1, .L08099C44 @ =0xFFFFFF00
	ldr r0, [sp, #0x5c]
	ands r0, r1
	str r0, [sp, #0x5c]
	mov sb, r3
	ldr r6, [sp, #0x7c]
	cmp r6, #0
	beq .L08099C54
	movs r4, #0
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x80]
	add r1, sp, #0x3c
	mov sl, r1
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r2, r7, r2
	str r2, [sp, #0x84]
	movs r3, #0x81
	lsls r3, r3, #2
	adds r3, r7, r3
	str r3, [sp, #0x88]
	subs r5, #8
	adds r5, r7, r5
	str r5, [sp, #0x8c]
	movs r6, #0xb8
	mov r8, sb
.L08099BBA:
	ldr r1, .L08099C48 @ =0x000001FF
	ands r1, r6
	lsls r1, r1, #0x10
	ldr r2, .L08099C4C @ =0xFE00FFFF
	ldr r0, [sp, #0x5c]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x8c]
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r1, r4, #1
	adds r0, r0, r1
	ldr r1, [sp, #0x7c]
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L08099C50 @ =0xFFFFFC00
	mov r3, r8
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L08099C0C
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x5c]
	str r0, [r1]
	mov r5, sb
	ldrh r0, [r5, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L08099C0C:
	adds r6, #8
	adds r4, #1
	cmp r4, #3
	ble .L08099BBA
	b .L08099CE4
	.align 2, 0
.L08099C18: .4byte 0x00000369
.L08099C1C: .4byte 0xFFFFFCFF
.L08099C20: .4byte 0xFFFFF3FF
.L08099C24: .4byte 0xFFFFDFFF
.L08099C28: .4byte 0xFFFF3FFF
.L08099C2C: .4byte 0xF1FFFFFF
.L08099C30: .4byte 0xEFFFFFFF
.L08099C34: .4byte 0xDFFFFFFF
.L08099C38: .4byte 0x3FFFFFFF
.L08099C3C: .4byte 0xFFFF0FFF
.L08099C40: .4byte 0x0000FFFF
.L08099C44: .4byte 0xFFFFFF00
.L08099C48: .4byte 0x000001FF
.L08099C4C: .4byte 0xFE00FFFF
.L08099C50: .4byte 0xFFFFFC00
.L08099C54:
	movs r5, #0
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r6, r7, r6
	str r6, [sp, #0x80]
	add r0, sp, #0x3c
	mov sl, r0
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r1, r7, r1
	str r1, [sp, #0x84]
	movs r2, #0x81
	lsls r2, r2, #2
	adds r2, r7, r2
	str r2, [sp, #0x88]
	mov r4, sb
	movs r3, #0x88
	mov r8, r3
	movs r6, #0xc0
	lsls r6, r6, #2
	adds r6, r7, r6
	str r6, [sp, #0x90]
.L08099C80:
	ldr r1, .L08099E78 @ =0x000001FF
	adds r0, r1, #0
	mov r2, r8
	ands r2, r0
	ldrh r0, [r4, #2]
	ldr r3, .L08099E7C @ =0xFFFFFE00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #2]
	ldr r6, [sp, #0x90]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	lsls r1, r5, #1
	adds r0, r0, r1
	ldr r1, [sp, #0x7c]
	adds r0, r0, r1
	ldr r2, .L08099E80 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldrh r1, [r4, #4]
	ldr r3, .L08099E84 @ =0xFFFFFC00
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r4, #4]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L08099CDA
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x5c]
	str r0, [r1]
	mov r6, sb
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L08099CDA:
	movs r0, #8
	add r8, r0
	adds r5, #1
	cmp r5, #0xb
	ble .L08099C80
.L08099CE4:
	ldr r1, .L08099E88 @ =0x00000369
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08099D7C
	mov r3, sb
	ldrb r2, [r3, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #3]
	movs r2, #0x18
	add r0, sp, #0x5c
	strb r2, [r0]
	ldrb r0, [r3, #1]
	ands r1, r0
	strb r1, [r3, #1]
	movs r5, #0
	mov r4, sb
	movs r6, #0xd0
	mov r8, r6
	movs r0, #0xc4
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x90]
.L08099D16:
	ldr r1, .L08099E78 @ =0x000001FF
	adds r0, r1, #0
	mov r2, r8
	ands r2, r0
	ldrh r0, [r4, #2]
	ldr r3, .L08099E7C @ =0xFFFFFE00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #2]
	ldr r6, [sp, #0x90]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	ldr r2, .L08099E88 @ =0x00000369
	adds r1, r7, r2
	adds r1, r1, r5
	ldrb r2, [r1]
	adds r2, r2, r0
	ldr r3, .L08099E80 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r6, .L08099E84 @ =0xFFFFFC00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L08099D72
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x5c]
	str r0, [r1]
	mov r6, sb
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L08099D72:
	movs r0, #8
	add r8, r0
	adds r5, #1
	cmp r5, #2
	ble .L08099D16
.L08099D7C:
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r5, r7, r1
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r5]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x80]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	mov r0, sl
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r1, sp
	movs r6, #0xa1
	lsls r6, r6, #2
	adds r0, r7, r6
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0]
	str r0, [r1]
	movs r6, #0xc6
	lsls r6, r6, #2
	adds r4, r7, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r7, r1
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
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08099E10
	b .L08099F60
.L08099E10:
	ldr r0, [sp, #0x24]
	movs r1, #0
	cmp r0, #0
	beq .L08099E1C
	mov r5, sp
	ldrh r1, [r5, #0x28]
.L08099E1C:
	cmp r1, #0
	bne .L08099E22
	b .L08099F60
.L08099E22:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r6, [sp, #0x24]
	mov r8, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L08099E44
	mov r0, sp
	ldrh r3, [r0, #0x28]
.L08099E44:
	str r5, [sp, #0x90]
	lsls r2, r2, #5
	ldr r1, .L08099E8C @ =0x06010000
	adds r2, r2, r1
	mov r0, sl
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08099E90
	cmp r1, #0
	beq .L08099E6C
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08099E6C:
	ldr r5, [sp, #0x90]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08099F60
	.align 2, 0
.L08099E78: .4byte 0x000001FF
.L08099E7C: .4byte 0xFFFFFE00
.L08099E80: .4byte 0x000003FF
.L08099E84: .4byte 0xFFFFFC00
.L08099E88: .4byte 0x00000369
.L08099E8C: .4byte 0x06010000
.L08099E90:
	mov r8, r1
	mov r6, sb
	str r6, [sp, #0x68]
	ldr r1, [sp, #0x90]
	ldr r0, [r1]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L08099EAC
	adds r0, r1, #0
.L08099EAC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08099ECA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08099ECE
	mov r0, sb
	bl func_080D3BC0
	b .L08099ECE
.L08099ECA:
	movs r0, #0
	mov sb, r0
.L08099ECE:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r3, [sp, #0x90]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08099EF4
.L08099EDC:
	cmp r3, #0
	beq .L08099EEC
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08099EEC:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08099EDC
.L08099EF4:
	adds r5, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L08099F10
	cmp r5, #0
	beq .L08099F0C
	adds r0, r5, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08099F0C:
	adds r5, #0x10
	b .L08099F38
.L08099F10:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L08099F36
.L08099F18:
	cmp r2, #0
	beq .L08099F28
	adds r0, r2, #0
	add r1, sp, #0x3c
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08099F28:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L08099F18
.L08099F36:
	adds r5, r2, #0
.L08099F38:
	ldr r6, [sp, #0x90]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08099F4A
.L08099F44:
	adds r1, #0x10
	cmp r1, r2
	bne .L08099F44
.L08099F4A:
	cmp r0, #0
	beq .L08099F52
	bl free
.L08099F52:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x90]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08099F60:
	movs r6, #0
	mov r5, sp
	ldr r3, .L0809A0E4 @ =gUnk_08117838
	mov r8, r3
.L08099F68:
	lsls r0, r6, #2
	ldr r4, .L0809A0E8 @ =0x00002BB0
	adds r0, r0, r4
	adds r0, r7, r0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	adds r4, r6, #1
	cmp r0, #0
	bne .L08099FA8
	lsls r1, r4, #2
	add r1, r8
	ldrb r0, [r1]
	adds r0, #8
	strh r0, [r5]
	ldrb r0, [r1, #1]
	strh r0, [r5, #2]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08099FA0
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L08099FA0:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L08099FA8:
	ldr r2, .L0809A0EC @ =0x00002B90
	adds r1, r7, r2
	ldr r3, .L0809A0F0 @ =0x00002BA7
	adds r0, r7, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r0, [r0]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08099FEC
	lsls r1, r4, #2
	add r1, r8
	ldrb r0, [r1]
	adds r0, #0x80
	strh r0, [r5]
	ldrb r0, [r1, #1]
	strh r0, [r5, #2]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08099FE4
	mov r6, sp
	ldrh r2, [r6, #0x20]
.L08099FE4:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L08099FEC:
	adds r6, r4, #0
	cmp r6, #7
	ble .L08099F68
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r5, r7, r0
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r5]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x84]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	mov r0, sl
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r1, sp
	movs r6, #0xee
	lsls r6, r6, #1
	adds r0, r7, r6
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x28
	strh r0, [r1, #2]
	movs r6, #0xb8
	lsls r6, r6, #2
	adds r4, r7, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r1, #0xba
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r1, #1
	movs r2, #1
	mov sb, r2
	mov r3, sb
	strh r3, [r0, #8]
	strb r1, [r0, #0x18]
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L0809A090
	b .L0809A1C8
.L0809A090:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r6, [sp, #0x24]
	mov r8, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0809A0B2
	mov r0, sp
	ldrh r3, [r0, #0x28]
.L0809A0B2:
	str r5, [sp, #0x90]
	lsls r2, r2, #5
	ldr r1, .L0809A0F4 @ =0x06010000
	adds r2, r2, r1
	mov r0, sl
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0809A0F8
	cmp r1, #0
	beq .L0809A0DA
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0809A0DA:
	ldr r5, [sp, #0x90]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0809A1C8
	.align 2, 0
.L0809A0E4: .4byte gUnk_08117838
.L0809A0E8: .4byte 0x00002BB0
.L0809A0EC: .4byte 0x00002B90
.L0809A0F0: .4byte 0x00002BA7
.L0809A0F4: .4byte 0x06010000
.L0809A0F8:
	mov r8, r1
	mov r6, sb
	str r6, [sp, #0x70]
	ldr r1, [sp, #0x90]
	ldr r0, [r1]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x6c]
	add r1, sp, #0x70
	add r0, sp, #0x6c
	cmp r4, #1
	bhs .L0809A114
	adds r0, r1, #0
.L0809A114:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0809A132
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0809A136
	mov r0, sb
	bl func_080D3BC0
	b .L0809A136
.L0809A132:
	movs r0, #0
	mov sb, r0
.L0809A136:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r3, [sp, #0x90]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0809A15C
.L0809A144:
	cmp r3, #0
	beq .L0809A154
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0809A154:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0809A144
.L0809A15C:
	adds r5, r3, #0
	ldr r0, [sp, #0x70]
	cmp r0, #1
	bne .L0809A178
	cmp r5, #0
	beq .L0809A174
	adds r0, r5, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0809A174:
	adds r5, #0x10
	b .L0809A1A0
.L0809A178:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0809A19E
.L0809A180:
	cmp r2, #0
	beq .L0809A190
	adds r0, r2, #0
	add r1, sp, #0x3c
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0809A190:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L0809A180
.L0809A19E:
	adds r5, r2, #0
.L0809A1A0:
	ldr r6, [sp, #0x90]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0809A1B2
.L0809A1AC:
	adds r1, #0x10
	cmp r1, r2
	bne .L0809A1AC
.L0809A1B2:
	cmp r0, #0
	beq .L0809A1BA
	bl free
.L0809A1BA:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x90]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0809A1C8:
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0809A1DE
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L0809A1DE:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	movs r6, #0x8c
	lsls r6, r6, #2
	adds r5, r7, r6
	movs r0, #0x80
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r5]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x88]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r4, sl
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x1c
	ldm r4!, {r1, r2, r6}
	stm r0!, {r1, r2, r6}
	ldm r4!, {r1, r3, r6}
	stm r0!, {r1, r3, r6}
	ldm r4!, {r2, r3}
	stm r0!, {r2, r3}
	mov r1, sp
	movs r4, #0x85
	lsls r4, r4, #2
	adds r0, r7, r4
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x50
	strh r0, [r1, #2]
	movs r3, #0xb8
	lsls r3, r3, #2
	adds r4, r7, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #2
	strh r0, [r1, #6]
	movs r6, #0xba
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r1, #1
	movs r2, #1
	mov sb, r2
	mov r3, sb
	strh r3, [r0, #8]
	strb r1, [r0, #0x18]
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L0809A286
	b .L0809A3B0
.L0809A286:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r6, [sp, #0x24]
	mov r8, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0809A2A8
	mov r0, sp
	ldrh r3, [r0, #0x28]
.L0809A2A8:
	str r5, [sp, #0x90]
	lsls r2, r2, #5
	ldr r1, .L0809A2DC @ =0x06010040
	adds r2, r2, r1
	mov r0, sl
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0809A2E0
	cmp r1, #0
	beq .L0809A2D0
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0809A2D0:
	ldr r5, [sp, #0x90]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0809A3B0
	.align 2, 0
.L0809A2DC: .4byte 0x06010040
.L0809A2E0:
	mov r8, r1
	mov r6, sb
	str r6, [sp, #0x78]
	ldr r1, [sp, #0x90]
	ldr r0, [r1]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r1, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L0809A2FC
	adds r0, r1, #0
.L0809A2FC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0809A31A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0809A31E
	mov r0, sb
	bl func_080D3BC0
	b .L0809A31E
.L0809A31A:
	movs r0, #0
	mov sb, r0
.L0809A31E:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r3, [sp, #0x90]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0809A344
.L0809A32C:
	cmp r3, #0
	beq .L0809A33C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0809A33C:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0809A32C
.L0809A344:
	adds r5, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L0809A360
	cmp r5, #0
	beq .L0809A35C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0809A35C:
	adds r5, #0x10
	b .L0809A388
.L0809A360:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0809A386
.L0809A368:
	cmp r2, #0
	beq .L0809A378
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0809A378:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L0809A368
.L0809A386:
	adds r5, r2, #0
.L0809A388:
	ldr r6, [sp, #0x90]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0809A39A
.L0809A394:
	adds r1, #0x10
	cmp r1, r2
	bne .L0809A394
.L0809A39A:
	cmp r0, #0
	beq .L0809A3A2
	bl free
.L0809A3A2:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x90]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0809A3B0:
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0809A3C6
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L0809A3C6:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809A3E0
func_0809A3E0: @ 0x0809A3E0
	push {r4, r5, r6, lr}
	sub sp, #0x5c
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
	add r6, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r6, #4]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r1, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	movs r0, #0x8e
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	movs r4, #0x8f
	lsls r4, r4, #2
	adds r0, r5, r4
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
	adds r0, r6, #0
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	mov r1, sp
	movs r3, #0x93
	lsls r3, r3, #2
	adds r0, r5, r3
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r4, #0xd8
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r2, .L0809A4D0 @ =0x00000362
	adds r0, r5, r2
	ldrh r0, [r0]
	strh r0, [r1, #2]
	movs r3, #0xbc
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	subs r4, #0x68
	adds r0, r5, r4
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
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
	beq .L0809A4BE
	ldrh r2, [r6, #4]
.L0809A4BE:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	add sp, #0x5c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0809A4D0: .4byte 0x00000362

	thumb_func_start func_0809A4D4
func_0809A4D4: @ 0x0809A4D4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r5, r0, #0
	mov r8, r1
	adds r6, r2, #0
	lsls r4, r3, #0x18
	lsrs r4, r4, #0x18
	ldr r0, .L0809A510 @ =vtable_unk_080E824C
	str r0, [r5]
	ldr r0, .L0809A514 @ =0x000033E0
	bl __builtin_new
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_08094AC0
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
.L0809A510: .4byte vtable_unk_080E824C
.L0809A514: .4byte 0x000033E0

