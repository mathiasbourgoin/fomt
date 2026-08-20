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

