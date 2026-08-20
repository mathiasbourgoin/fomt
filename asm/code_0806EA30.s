	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_0806EA30
func_0806EA30: @ 0x0806EA30
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, sp
	bl func_0806DB38
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
	beq .L0806EA60
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0806EA60:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0806EA6C
func_0806EA6C: @ 0x0806EA6C
	ldr r0, [r0, #4]
	movs r1, #0x89
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr

	thumb_func_start func_0806EA78
func_0806EA78: @ 0x0806EA78
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	adds r0, r5, #0
	bl func_08008918
	adds r1, r0, #0
	add r4, sp, #4
	movs r0, #0
	str r0, [sp, #4]
	str r0, [r4, #4]
	ldr r0, .L0806EAC4 @ =vtable_unk_080E5B80
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	bl func_08009300
	ldr r1, .L0806EAC8 @ =0x00000889
	add r0, sp, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r5, #0
	bl func_08008940
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	adds r1, r4, #0
	bl _call_via_r2
	b .L0806EAD8
	.align 2, 0
.L0806EAC4: .4byte vtable_unk_080E5B80
.L0806EAC8: .4byte 0x00000889
.L0806EACC:
	adds r0, r5, #0
	bl func_08070140
	adds r0, r5, #0
	bl func_080087C8
.L0806EAD8:
	ldr r1, [sp, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0806EACC
	adds r0, r4, #0
	movs r1, #2
	bl func_080094B8
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0806EAF4
func_0806EAF4: @ 0x0806EAF4
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	adds r0, r5, #0
	bl func_08008918
	adds r1, r0, #0
	add r4, sp, #4
	movs r0, #0
	str r0, [sp, #4]
	str r0, [r4, #4]
	ldr r0, .L0806EB40 @ =vtable_unk_080E5B80
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	bl func_08009300
	ldr r1, .L0806EB44 @ =0x00000889
	add r0, sp, #0x10
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r5, #0
	bl func_08008940
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	adds r1, r4, #0
	bl _call_via_r2
	b .L0806EB54
	.align 2, 0
.L0806EB40: .4byte vtable_unk_080E5B80
.L0806EB44: .4byte 0x00000889
.L0806EB48:
	adds r0, r5, #0
	bl func_08070140
	adds r0, r5, #0
	bl func_080087C8
.L0806EB54:
	ldr r1, [sp, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0806EB48
	adds r0, r4, #0
	movs r1, #2
	bl func_080094B8
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0806EB70
func_0806EB70: @ 0x0806EB70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	mov r8, r1
	adds r5, r2, #0
	cmp r5, #0
	beq .L0806EC1A
	mov r6, sp
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	add r0, sp, #8
	str r4, [r0, #4]
	movs r0, #0xb0
	lsls r0, r0, #5
	bl malloc
	adds r1, r0, #0
	cmp r1, #0
	bne .L0806EBA4
	movs r0, #0xb0
	lsls r0, r0, #5
	bl func_080D3BC0
	adds r1, r0, #0
.L0806EBA4:
	str r1, [sp]
	str r1, [sp, #4]
	movs r2, #0xb0
	lsls r2, r2, #5
	adds r0, r1, r2
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	strh r4, [r0]
	adds r3, r0, #0
	movs r2, #0xb0
	lsls r2, r2, #4
.L0806EBBA:
	ldrh r0, [r3]
	strh r0, [r1]
	subs r2, #1
	adds r1, #2
	cmp r2, #0
	bne .L0806EBBA
	str r1, [r6, #4]
	ldr r1, [sp]
	adds r0, r5, #0
	bl Unpack
	ldr r3, [sp]
	movs r1, #0
	mov ip, r3
	movs r7, #0x1f
.L0806EBD8:
	movs r2, #0
	lsrs r0, r1, #5
	adds r6, r1, #1
	lsls r5, r0, #1
	ands r1, r7
	lsls r0, r1, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r4, r0, r1
.L0806EBEA:
	lsrs r0, r2, #5
	adds r0, r5, r0
	add r0, r8
	lsls r0, r0, #0xb
	adds r0, r0, r4
	adds r1, r2, #0
	ands r1, r7
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r3]
	strh r1, [r0]
	adds r3, #2
	adds r2, #1
	cmp r2, #0x3f
	bls .L0806EBEA
	adds r1, r6, #0
	cmp r1, #0x2b
	bls .L0806EBD8
	mov r2, ip
	cmp r2, #0
	beq .L0806EC1A
	mov r0, ip
	bl free
.L0806EC1A:
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0806EC28
func_0806EC28: @ 0x0806EC28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r1
	mov sb, r2
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	ldr r4, [sp, #0x28]
	adds r7, r2, r0
	adds r1, r1, r3
	mov r8, r1
	cmp r3, r8
	bhs .L0806EC84
.L0806EC46:
	mov r2, sb
	adds r0, r3, #1
	mov ip, r0
	cmp r2, r7
	bhs .L0806EC7E
	lsrs r0, r3, #5
	lsls r5, r0, #1
	movs r6, #0x1f
	ands r3, r6
	lsls r0, r3, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r3, r0, r1
.L0806EC60:
	lsrs r0, r2, #5
	adds r0, r5, r0
	add r0, sl
	lsls r0, r0, #0xb
	adds r0, r0, r3
	adds r1, r2, #0
	ands r1, r6
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r4]
	strh r1, [r0]
	adds r4, #2
	adds r2, #1
	cmp r2, r7
	blo .L0806EC60
.L0806EC7E:
	mov r3, ip
	cmp r3, r8
	blo .L0806EC46
.L0806EC84:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0806EC94
func_0806EC94: @ 0x0806EC94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	mov sb, r0
	ldr r0, [r0, #8]
	adds r0, #0x10
	bl func_0800E324
	movs r1, #0
	cmp r0, #3
	bne .L0806ECB2
	movs r1, #1
.L0806ECB2:
	str r1, [sp, #0xc]
	ldr r0, .L0806ED6C @ =gUnk_085275D0
	cmp r1, #0
	beq .L0806ECBC
	ldr r0, .L0806ED70 @ =gUnk_0852AA6C
.L0806ECBC:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L0806ED74 @ =gUnk_08529794
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq .L0806ECCE
	ldr r0, .L0806ED78 @ =gUnk_0852CA40
.L0806ECCE:
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl func_08008E64
	ldr r2, .L0806ED7C @ =gUnk_08527238
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq .L0806ECE4
	ldr r2, .L0806ED80 @ =gUnk_0852A6D8
.L0806ECE4:
	mov r0, sb
	movs r1, #0x1c
	bl func_0806EB70
	ldr r2, .L0806ED84 @ =gUnk_08527348
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq .L0806ECF6
	ldr r2, .L0806ED88 @ =gUnk_0852A7EC
.L0806ECF6:
	mov r0, sb
	movs r1, #0x18
	bl func_0806EB70
	ldr r2, .L0806ED8C @ =gUnk_08527520
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq .L0806ED08
	ldr r2, .L0806ED90 @ =gUnk_0852A9BC
.L0806ED08:
	mov r0, sb
	movs r1, #0x14
	bl func_0806EB70
	movs r1, #0
	ldr r2, [sp, #0xc]
	lsls r2, r2, #2
	str r2, [sp, #0x1c]
	ldr r3, [sp, #0xc]
	lsls r3, r3, #1
	str r3, [sp, #0x18]
	mov r2, sb
	ldr r0, [r2, #8]
	ldr r3, .L0806ED94 @ =0x000009DC
	adds r3, r0, r3
	str r3, [sp, #0x10]
	movs r0, #0x1f
	mov ip, r0
.L0806ED2C:
	movs r2, #0
	mov r8, r2
	adds r7, r1, #0
	adds r7, #0xb
	adds r3, r1, #1
	str r3, [sp, #0x14]
	lsrs r0, r7, #5
	lsls r5, r0, #1
	mov sl, r5
	adds r0, r7, #0
	mov r2, ip
	ands r0, r2
	lsls r0, r0, #6
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r6, r0, r3
	movs r0, #0xac
	muls r0, r1, r0
	ldr r1, [sp, #0x10]
	adds r4, r0, r1
.L0806ED54:
	mov r2, r8
	adds r2, #0x11
	ldr r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq .L0806ED98
	cmp r0, #1
	ble .L0806EDE2
	cmp r0, #2
	beq .L0806EDC8
	b .L0806EDE2
	.align 2, 0
.L0806ED6C: .4byte gUnk_085275D0
.L0806ED70: .4byte gUnk_0852AA6C
.L0806ED74: .4byte gUnk_08529794
.L0806ED78: .4byte gUnk_0852CA40
.L0806ED7C: .4byte gUnk_08527238
.L0806ED80: .4byte gUnk_0852A6D8
.L0806ED84: .4byte gUnk_08527348
.L0806ED88: .4byte gUnk_0852A7EC
.L0806ED8C: .4byte gUnk_08527520
.L0806ED90: .4byte gUnk_0852A9BC
.L0806ED94: .4byte 0x000009DC
.L0806ED98:
	lsrs r1, r2, #5
	add r1, sl
	adds r1, #0x1c
	lsls r1, r1, #0xb
	adds r0, r7, #0
	mov r3, ip
	ands r0, r3
	lsls r0, r0, #6
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r0, r0, r3
	adds r1, r1, r0
	adds r0, r2, #0
	mov r3, ip
	ands r0, r3
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r3, .L0806EDC4 @ =0x00009186
	adds r0, r3, #0
	strh r0, [r1]
	b .L0806EDE2
	.align 2, 0
.L0806EDC4: .4byte 0x00009186
.L0806EDC8:
	lsrs r0, r2, #5
	adds r0, r5, r0
	adds r0, #0x1c
	lsls r0, r0, #0xb
	adds r0, r0, r6
	adds r1, r2, #0
	mov r3, ip
	ands r1, r3
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r3, .L0806EF84 @ =0x00009187
	adds r1, r3, #0
	strh r1, [r0]
.L0806EDE2:
	ldr r1, [r4]
	lsls r0, r1, #0x14
	lsrs r0, r0, #0x1c
	cmp r0, #8
	bgt .L0806EE14
	cmp r0, #1
	blt .L0806EE14
	lsls r0, r1, #0x18
	lsrs r3, r0, #0x1a
	cmp r3, #0x26
	bhi .L0806EE14
	lsrs r1, r2, #5
	adds r1, r5, r1
	adds r1, #0x18
	lsls r1, r1, #0xb
	adds r1, r1, r6
	mov r0, ip
	ands r2, r0
	lsls r0, r2, #1
	adds r1, r1, r0
	ldr r2, .L0806EF88 @ =gUnk_080FBDA4
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r1]
.L0806EE14:
	adds r4, #4
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #0x2a
	bls .L0806ED54
	ldr r1, [sp, #0x14]
	cmp r1, #0x18
	bhi .L0806EE28
	b .L0806ED2C
.L0806EE28:
	mov r3, sb
	ldr r0, [r3, #8]
	movs r6, #0xfa
	lsls r6, r6, #1
	adds r0, r0, r6
	bl GetUpgradeLevel__C9FarmHouse
	lsls r0, r0, #4
	ldr r1, .L0806EF8C @ =gUnk_080FBDF4
	adds r0, r0, r1
	ldrh r2, [r0, #8]
	ldrh r3, [r0, #0xa]
	ldrb r1, [r0, #0xc]
	str r1, [sp]
	ldrb r1, [r0, #0xd]
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	mov r0, sb
	movs r1, #0x18
	bl func_0806EC28
	mov r2, sb
	ldr r0, [r2, #8]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetUpgradeLevel__C4Coop
	lsls r0, r0, #4
	ldr r1, .L0806EF90 @ =gUnk_080FBE24
	adds r0, r0, r1
	ldrh r2, [r0, #8]
	ldrh r3, [r0, #0xa]
	ldrb r1, [r0, #0xc]
	str r1, [sp]
	ldrb r1, [r0, #0xd]
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	mov r0, sb
	movs r1, #0x18
	bl func_0806EC28
	mov r2, sb
	ldr r0, [r2, #8]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetUpgradeLevel__C4Barn
	lsls r0, r0, #4
	ldr r1, .L0806EF94 @ =gUnk_080FBE44
	adds r0, r0, r1
	ldrh r2, [r0, #8]
	ldrh r3, [r0, #0xa]
	ldrb r1, [r0, #0xc]
	str r1, [sp]
	ldrb r1, [r0, #0xd]
	str r1, [sp, #4]
	ldr r1, [sp, #0x1c]
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #8]
	mov r0, sb
	movs r1, #0x18
	bl func_0806EC28
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r6
	bl GetDoghouseStyle__C9FarmHouse
	adds r4, r0, #0
	ldr r1, .L0806EF98 @ =gUnk_08529994
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq .L0806EECE
	ldr r1, .L0806EF9C @ =gUnk_0852CC40
.L0806EECE:
	adds r0, r1, #4
	ldrh r2, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r1, .L0806EFA0 @ =0x060002C0
	lsls r2, r2, #5
	bl func_08008E64
	movs r5, #2
	str r5, [sp]
	str r5, [sp, #4]
	ldr r0, .L0806EFA4 @ =gUnk_080FBE64
	adds r0, r4, r0
	ldrb r0, [r0]
	str r0, [sp, #8]
	mov r0, sb
	movs r1, #0x14
	movs r2, #0x18
	movs r3, #3
	bl func_080700B8
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r6
	bl GetMailboxStyle__C9FarmHouse
	adds r4, r0, #0
	ldr r1, .L0806EFA8 @ =gUnk_08529BA8
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq .L0806EF12
	ldr r1, .L0806EFAC @ =gUnk_0852CE54
.L0806EF12:
	adds r0, r1, #4
	ldrh r2, [r1]
	adds r1, r2, #0
	muls r1, r4, r1
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r1, .L0806EFB0 @ =0x06000340
	lsls r2, r2, #5
	bl func_08008E64
	movs r0, #1
	str r0, [sp]
	str r5, [sp, #4]
	ldr r1, .L0806EFB4 @ =gUnk_080FBE67
	ldr r3, [sp, #0x18]
	ldr r2, [sp, #0xc]
	adds r0, r3, r2
	adds r0, r4, r0
	adds r0, r0, r1
	ldrb r0, [r0]
	str r0, [sp, #8]
	mov r0, sb
	movs r1, #0x14
	movs r2, #0x11
	movs r3, #3
	bl func_080700B8
	ldr r4, .L0806EFB8 @ =gUnk_08529DA4
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq .L0806EF52
	ldr r4, .L0806EFBC @ =gUnk_0852D050
.L0806EF52:
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r6
	bl GetWindowStyle__C9FarmHouse
	adds r1, r0, #0
	adds r0, r4, #4
	ldrh r2, [r4]
	muls r1, r2, r1
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #0x13
	lsls r2, r2, #5
	bl func_08008E64
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0806EF84: .4byte 0x00009187
.L0806EF88: .4byte gUnk_080FBDA4
.L0806EF8C: .4byte gUnk_080FBDF4
.L0806EF90: .4byte gUnk_080FBE24
.L0806EF94: .4byte gUnk_080FBE44
.L0806EF98: .4byte gUnk_08529994
.L0806EF9C: .4byte gUnk_0852CC40
.L0806EFA0: .4byte 0x060002C0
.L0806EFA4: .4byte gUnk_080FBE64
.L0806EFA8: .4byte gUnk_08529BA8
.L0806EFAC: .4byte gUnk_0852CE54
.L0806EFB0: .4byte 0x06000340
.L0806EFB4: .4byte gUnk_080FBE67
.L0806EFB8: .4byte gUnk_08529DA4
.L0806EFBC: .4byte gUnk_0852D050

	thumb_func_start func_0806EFC0
func_0806EFC0: @ 0x0806EFC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	adds r7, r0, r2
	cmp r7, #0
	bge .L0806EFDA
	movs r7, #0
	b .L0806EFE4
.L0806EFDA:
	movs r0, #0xc0
	lsls r0, r0, #8
	cmp r7, r0
	ble .L0806EFE4
	adds r7, r0, #0
.L0806EFE4:
	ldr r0, [r5, #0x14]
	adds r6, r0, r1
	cmp r6, #0
	bge .L0806EFF0
	movs r6, #0
	b .L0806EFFA
.L0806EFF0:
	movs r0, #0x88
	lsls r0, r0, #9
	cmp r6, r0
	ble .L0806EFFA
	adds r6, r0, #0
.L0806EFFA:
	adds r0, r5, #0
	bl func_08008918
	adds r3, r0, #0
	adds r0, r7, #0
	cmp r7, #0
	bge .L0806F00A
	adds r0, #0xff
.L0806F00A:
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	adds r1, r6, #0
	cmp r6, #0
	bge .L0806F016
	adds r1, #0xff
.L0806F016:
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	add r0, sp, #4
	strh r2, [r0]
	strh r2, [r3, #0x1e]
	strh r2, [r0]
	strh r2, [r3, #0x1a]
	strh r2, [r0]
	strh r2, [r3, #0x16]
	strh r1, [r0]
	strh r1, [r3, #0x1c]
	strh r1, [r0]
	strh r1, [r3, #0x18]
	strh r1, [r0]
	strh r1, [r3, #0x14]
	adds r4, r5, #0
	adds r4, #0x50
	adds r0, r4, #0
	bl func_0805E8F0
	movs r0, #0x64
	adds r0, r0, r5
	mov sl, r0
	bl func_0805E8F0
	adds r0, r5, #0
	adds r0, #0x78
	str r0, [sp, #0x28]
	bl func_0805E8F0
	movs r0, #0x8c
	adds r0, r0, r5
	mov sb, r0
	bl func_0805E8F0
	adds r0, r5, #0
	bl func_08008920
	mov r8, r0
	cmp r7, #0
	ble .L0806F09C
	ldr r1, [r5, #0x50]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r5, #0x54]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #8
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #8
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r0, r5, #0
	adds r0, #0x18
	movs r1, #0
	str r1, [sp]
	mov r1, r8
	adds r2, r4, #0
	movs r3, #0x74
	bl func_08075AE8
.L0806F09C:
	ldr r0, .L0806F160 @ =0x0000BFFF
	cmp r7, r0
	bgt .L0806F0D6
	ldr r1, [r5, #0x64]
	ldr r3, [r1]
	mov r0, sl
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r5, #0x68]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #4
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	adds r0, r5, #0
	adds r0, #0x18
	movs r1, #0x98
	str r1, [sp]
	mov r1, r8
	add r2, sp, #4
	movs r3, #0x74
	bl func_08075AE8
.L0806F0D6:
	ldr r0, .L0806F164 @ =0x00010FFF
	cmp r6, r0
	bgt .L0806F110
	ldr r1, [r5, #0x78]
	ldr r3, [r1]
	ldr r0, [sp, #0x28]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r5, #0x7c]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #4
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	adds r0, r5, #0
	adds r0, #0x18
	movs r1, #0x4c
	str r1, [sp]
	mov r1, r8
	add r2, sp, #4
	movs r3, #0xe8
	bl func_08075AE8
.L0806F110:
	cmp r6, #0
	ble .L0806F14C
	mov r0, sb
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	adds r0, r5, #0
	adds r0, #0x90
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #4
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	adds r0, r5, #0
	adds r0, #0x18
	movs r1, #0x4c
	str r1, [sp]
	mov r1, r8
	add r2, sp, #4
	movs r3, #0
	bl func_08075AE8
.L0806F14C:
	str r7, [r5, #0x10]
	str r6, [r5, #0x14]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0806F160: .4byte 0x0000BFFF
.L0806F164: .4byte 0x00010FFF

	thumb_func_start func_0806F168
func_0806F168: @ 0x0806F168
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	adds r7, r0, #0
	adds r4, r2, #0
	ldr r2, [sp, #0xd0]
	adds r0, #0xa0
	ldrh r0, [r0, #0x20]
	cmp r2, r0
	blo .L0806F186
	bl .L0806FB92
.L0806F186:
	subs r0, r1, #2
	cmp r0, #0x23
	bls .L0806F190
	bl .L0806FB92
.L0806F190:
	lsls r0, r0, #2
	ldr r1, .L0806F19C @ =.L0806F1A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0806F19C: .4byte .L0806F1A0
.L0806F1A0: @ jump table
	.4byte .L0806F230 @ case 0
	.4byte .L0806FB92 @ case 1
	.4byte .L0806FB92 @ case 2
	.4byte .L0806FB92 @ case 3
	.4byte .L0806FB92 @ case 4
	.4byte .L0806FB92 @ case 5
	.4byte .L0806FB92 @ case 6
	.4byte .L0806F976 @ case 7
	.4byte .L0806FB92 @ case 8
	.4byte .L0806FB92 @ case 9
	.4byte .L0806FB92 @ case 10
	.4byte .L0806FB92 @ case 11
	.4byte .L0806FB92 @ case 12
	.4byte .L0806FB92 @ case 13
	.4byte .L0806FB92 @ case 14
	.4byte .L0806F592 @ case 15
	.4byte .L0806FB92 @ case 16
	.4byte .L0806FB92 @ case 17
	.4byte .L0806FB92 @ case 18
	.4byte .L0806FB92 @ case 19
	.4byte .L0806FB92 @ case 20
	.4byte .L0806FB92 @ case 21
	.4byte .L0806FB92 @ case 22
	.4byte .L0806FB92 @ case 23
	.4byte .L0806FB92 @ case 24
	.4byte .L0806FB92 @ case 25
	.4byte .L0806FB92 @ case 26
	.4byte .L0806F39A @ case 27
	.4byte .L0806FB92 @ case 28
	.4byte .L0806FB92 @ case 29
	.4byte .L0806FB92 @ case 30
	.4byte .L0806FB92 @ case 31
	.4byte .L0806FB92 @ case 32
	.4byte .L0806FB92 @ case 33
	.4byte .L0806FB92 @ case 34
	.4byte .L0806F77E @ case 35
.L0806F230:
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r6, r0, #1
	lsrs r0, r3, #0x1f
	adds r0, r3, r0
	asrs r5, r0, #1
	cmp r6, #0
	bge .L0806F244
	movs r6, #0
	b .L0806F24E
.L0806F244:
	movs r0, #0x80
	lsls r0, r0, #2
	cmp r6, r0
	bls .L0806F24E
	adds r6, r0, #0
.L0806F24E:
	cmp r5, #0
	bge .L0806F256
	movs r5, #0
	b .L0806F260
.L0806F256:
	movs r0, #0xb0
	lsls r0, r0, #1
	cmp r5, r0
	bls .L0806F260
	adds r5, r0, #0
.L0806F260:
	add r4, sp, #0x1c
	adds r1, r7, #0
	adds r1, #0xa0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r4, #0
	bl func_0805E824
	str r6, [sp]
	str r5, [sp, #4]
	add r0, sp, #8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r5}
	stm r0!, {r1, r5}
	adds r6, r7, #0
	adds r6, #0xd0
	mov sb, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806F2AA
	cmp r1, #0
	beq .L0806F2A0
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806F2A0:
	ldr r0, [r6, #4]
	adds r0, #0x1c
	str r0, [r6, #4]
	bl .L0806FB92
.L0806F2AA:
	str r1, [sp, #0xa8]
	movs r0, #1
	str r0, [sp, #0x34]
	ldr r2, [r6]
	adds r3, r1, #0
	subs r1, r3, r2
	ldr r0, .L0806F2F4 @ =0xB6DB6DB7
	muls r0, r1, r0
	asrs r4, r0, #2
	str r4, [sp, #0x30]
	add r3, sp, #0x34
	add r0, sp, #0x30
	adds r1, r2, #0
	cmp r4, #1
	bhs .L0806F2CA
	adds r0, r3, #0
.L0806F2CA:
	ldr r0, [r0]
	adds r4, r4, r0
	mov r8, r4
	cmp r4, #0
	beq .L0806F2F8
	lsls r4, r4, #3
	mov r5, r8
	subs r0, r4, r5
	lsls r5, r0, #2
	adds r0, r5, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L0806F2EE
	adds r0, r5, #0
	bl func_080D3BC0
.L0806F2EE:
	ldr r1, [r6]
	b .L0806F2FC
	.align 2, 0
.L0806F2F4: .4byte 0xB6DB6DB7
.L0806F2F8:
	movs r0, #0
	mov sl, r0
.L0806F2FC:
	adds r4, r0, #0
	str r4, [sp, #0xac]
	adds r2, r1, #0
	adds r3, r4, #0
	ldr r7, [sp, #0xa8]
	cmp r2, r7
	beq .L0806F328
.L0806F30A:
	cmp r3, #0
	beq .L0806F31E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806F31E:
	adds r2, #0x1c
	adds r3, #0x1c
	ldr r0, [sp, #0xa8]
	cmp r2, r0
	bne .L0806F30A
.L0806F328:
	adds r4, r3, #0
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L0806F348
	cmp r4, #0
	beq .L0806F344
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806F344:
	adds r4, #0x1c
	b .L0806F36E
.L0806F348:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L0806F36C
.L0806F350:
	cmp r2, #0
	beq .L0806F364
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806F364:
	subs r3, #1
	adds r2, #0x1c
	cmp r3, #0
	bne .L0806F350
.L0806F36C:
	adds r4, r2, #0
.L0806F36E:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L0806F37E
.L0806F378:
	adds r0, #0x1c
	cmp r0, r3
	bne .L0806F378
.L0806F37E:
	cmp r1, #0
	beq .L0806F388
	adds r0, r1, #0
	bl free
.L0806F388:
	mov r1, sl
	mov r2, r8
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, [sp, #0xac]
	adds r0, r0, r3
	str r3, [r6]
	bl sub_0806FB8E
.L0806F39A:
	adds r5, r7, #0
	adds r5, #0xe0
	str r2, [sp, #0x38]
	cmp r2, #0x10
	bls .L0806F3A8
	bl .L0806FB92
.L0806F3A8:
	lsls r0, r2, #2
	ldr r1, .L0806F3B4 @ =.L0806F3B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0806F3B4: .4byte .L0806F3B8
.L0806F3B8: @ jump table
	.4byte .L0806F3FC @ case 0
	.4byte .L0806F3FC @ case 1
	.4byte .L0806F3FC @ case 2
	.4byte .L0806F3FC @ case 3
	.4byte .L0806F3FC @ case 4
	.4byte .L0806F50E @ case 5
	.4byte .L0806F50E @ case 6
	.4byte .L0806F48A @ case 7
	.4byte .L0806F48A @ case 8
	.4byte .L0806F50E @ case 9
	.4byte .L0806F3FC @ case 10
	.4byte .L0806F3FC @ case 11
	.4byte .L0806F3FC @ case 12
	.4byte .L0806F3FC @ case 13
	.4byte .L0806F3FC @ case 14
	.4byte .L0806F3FC @ case 15
	.4byte .L0806F3FC @ case 16
.L0806F3FC:
	add r4, sp, #0x38
	mov sb, r4
	ldr r4, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r1, r4, #0
	cmp r1, r0
	beq .L0806F414
	cmp r1, #0
	bne .L0806F410
	b .L0806F9F0
.L0806F410:
	ldr r0, [sp, #0x38]
	b .L0806F9EE
.L0806F414:
	adds r7, r4, #0
	movs r0, #1
	str r0, [sp, #0x40]
	ldr r0, [r5]
	subs r0, r7, r0
	asrs r4, r0, #2
	str r4, [sp, #0x3c]
	add r1, sp, #0x40
	add r0, sp, #0x3c
	cmp r4, #1
	bhs .L0806F42C
	adds r0, r1, #0
.L0806F42C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806F44A
	lsls r4, r0, #2
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806F44E
	mov r0, r8
	bl func_080D3BC0
	b .L0806F44E
.L0806F44A:
	movs r0, #0
	mov r8, r0
.L0806F44E:
	adds r6, r0, #0
	ldr r1, [r5]
	cmp r7, r1
	beq .L0806F462
	subs r4, r7, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
	b .L0806F464
.L0806F462:
	adds r0, r6, #0
.L0806F464:
	adds r4, r0, #0
	ldr r1, [sp, #0x40]
	ldr r2, [r5]
	cmp r1, #0
	beq .L0806F47A
.L0806F46E:
	mov r7, sb
	ldr r0, [r7]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0806F46E
.L0806F47A:
	cmp r2, #0
	beq .L0806F484
	adds r0, r2, #0
	bl free
.L0806F484:
	mov r1, r8
	adds r0, r1, r6
	b .L0806FA70
.L0806F48A:
	adds r6, r5, #0
	adds r6, #0x10
	add r2, sp, #0x38
	mov sb, r2
	ldr r4, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r4, r0
	beq .L0806F4A4
	cmp r4, #0
	bne .L0806F4A0
	b .L0806FB0A
.L0806F4A0:
	ldr r0, [sp, #0x38]
	b .L0806FB08
.L0806F4A4:
	adds r7, r4, #0
	movs r0, #1
	str r0, [sp, #0x48]
	ldr r0, [r5, #0x10]
	subs r0, r7, r0
	asrs r1, r0, #2
	str r1, [sp, #0x44]
	add r2, sp, #0x48
	add r0, sp, #0x44
	cmp r1, #1
	bhs .L0806F4BC
	adds r0, r2, #0
.L0806F4BC:
	ldr r0, [r0]
	adds r0, r1, r0
	cmp r0, #0
	beq .L0806F4DA
	lsls r4, r0, #2
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806F4DE
	mov r0, r8
	bl func_080D3BC0
	b .L0806F4DE
.L0806F4DA:
	movs r0, #0
	mov r8, r0
.L0806F4DE:
	adds r5, r0, #0
	ldr r1, [r6]
	cmp r7, r1
	beq .L0806F4F2
	subs r4, r7, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
	b .L0806F4F4
.L0806F4F2:
	adds r0, r5, #0
.L0806F4F4:
	adds r4, r0, #0
	ldr r1, [sp, #0x48]
	ldr r2, [r6]
	cmp r1, #0
	bne .L0806F500
	b .L0806FB7E
.L0806F500:
	mov r3, sb
	ldr r0, [r3]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0806F500
	b .L0806FB7E
.L0806F50E:
	adds r6, r5, #0
	adds r6, #0x20
	add r0, sp, #0x38
	mov sb, r0
	ldr r4, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r4, r0
	beq .L0806F528
	cmp r4, #0
	bne .L0806F524
	b .L0806FB0A
.L0806F524:
	ldr r0, [sp, #0x38]
	b .L0806FB08
.L0806F528:
	adds r7, r4, #0
	movs r0, #1
	str r0, [sp, #0x50]
	ldr r0, [r5, #0x20]
	subs r0, r7, r0
	asrs r1, r0, #2
	str r1, [sp, #0x4c]
	add r2, sp, #0x50
	add r0, sp, #0x4c
	cmp r1, #1
	bhs .L0806F540
	adds r0, r2, #0
.L0806F540:
	ldr r0, [r0]
	adds r0, r1, r0
	cmp r0, #0
	beq .L0806F55E
	lsls r4, r0, #2
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806F562
	mov r0, r8
	bl func_080D3BC0
	b .L0806F562
.L0806F55E:
	movs r0, #0
	mov r8, r0
.L0806F562:
	adds r5, r0, #0
	ldr r1, [r6]
	cmp r7, r1
	beq .L0806F576
	subs r4, r7, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
	b .L0806F578
.L0806F576:
	adds r0, r5, #0
.L0806F578:
	adds r4, r0, #0
	ldr r1, [sp, #0x50]
	ldr r2, [r6]
	cmp r1, #0
	bne .L0806F584
	b .L0806FB7E
.L0806F584:
	mov r3, sb
	ldr r0, [r3]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0806F584
	b .L0806FB7E
.L0806F592:
	movs r0, #0x88
	lsls r0, r0, #1
	adds r5, r7, r0
	str r2, [sp, #0x54]
	cmp r2, #0x10
	bls .L0806F5A0
	b .L0806FB92
.L0806F5A0:
	lsls r0, r2, #2
	ldr r1, .L0806F5AC @ =.L0806F5B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0806F5AC: .4byte .L0806F5B0
.L0806F5B0: @ jump table
	.4byte .L0806F5F4 @ case 0
	.4byte .L0806F5F4 @ case 1
	.4byte .L0806F5F4 @ case 2
	.4byte .L0806F5F4 @ case 3
	.4byte .L0806F5F4 @ case 4
	.4byte .L0806F6FA @ case 5
	.4byte .L0806F6FA @ case 6
	.4byte .L0806F676 @ case 7
	.4byte .L0806F676 @ case 8
	.4byte .L0806F6FA @ case 9
	.4byte .L0806F5F4 @ case 10
	.4byte .L0806F5F4 @ case 11
	.4byte .L0806F5F4 @ case 12
	.4byte .L0806F5F4 @ case 13
	.4byte .L0806F5F4 @ case 14
	.4byte .L0806F5F4 @ case 15
	.4byte .L0806F5F4 @ case 16
.L0806F5F4:
	add r1, sp, #0x54
	mov sb, r1
	ldr r4, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r1, r4, #0
	cmp r1, r0
	beq .L0806F60C
	cmp r1, #0
	bne .L0806F608
	b .L0806F9F0
.L0806F608:
	ldr r0, [sp, #0x54]
	b .L0806F9EE
.L0806F60C:
	adds r7, r4, #0
	movs r0, #1
	str r0, [sp, #0x5c]
	ldr r0, [r5]
	subs r0, r7, r0
	asrs r4, r0, #2
	str r4, [sp, #0x58]
	add r1, sp, #0x5c
	add r0, sp, #0x58
	cmp r4, #1
	bhs .L0806F624
	adds r0, r1, #0
.L0806F624:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806F642
	lsls r4, r0, #2
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806F646
	mov r0, r8
	bl func_080D3BC0
	b .L0806F646
.L0806F642:
	movs r0, #0
	mov r8, r0
.L0806F646:
	adds r6, r0, #0
	ldr r1, [r5]
	cmp r7, r1
	beq .L0806F65A
	subs r4, r7, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
	b .L0806F65C
.L0806F65A:
	adds r0, r6, #0
.L0806F65C:
	adds r4, r0, #0
	ldr r1, [sp, #0x5c]
	ldr r2, [r5]
	cmp r1, #0
	bne .L0806F668
	b .L0806FA62
.L0806F668:
	mov r3, sb
	ldr r0, [r3]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0806F668
	b .L0806FA62
.L0806F676:
	adds r6, r5, #0
	adds r6, #0x10
	add r0, sp, #0x54
	mov sb, r0
	ldr r4, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r4, r0
	beq .L0806F690
	cmp r4, #0
	bne .L0806F68C
	b .L0806FB0A
.L0806F68C:
	ldr r0, [sp, #0x54]
	b .L0806FB08
.L0806F690:
	adds r7, r4, #0
	movs r0, #1
	str r0, [sp, #0x64]
	ldr r0, [r5, #0x10]
	subs r0, r7, r0
	asrs r1, r0, #2
	str r1, [sp, #0x60]
	add r2, sp, #0x64
	add r0, sp, #0x60
	cmp r1, #1
	bhs .L0806F6A8
	adds r0, r2, #0
.L0806F6A8:
	ldr r0, [r0]
	adds r0, r1, r0
	cmp r0, #0
	beq .L0806F6C6
	lsls r4, r0, #2
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806F6CA
	mov r0, r8
	bl func_080D3BC0
	b .L0806F6CA
.L0806F6C6:
	movs r0, #0
	mov r8, r0
.L0806F6CA:
	adds r5, r0, #0
	ldr r1, [r6]
	cmp r7, r1
	beq .L0806F6DE
	subs r4, r7, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
	b .L0806F6E0
.L0806F6DE:
	adds r0, r5, #0
.L0806F6E0:
	adds r4, r0, #0
	ldr r1, [sp, #0x64]
	ldr r2, [r6]
	cmp r1, #0
	bne .L0806F6EC
	b .L0806FB7E
.L0806F6EC:
	mov r3, sb
	ldr r0, [r3]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0806F6EC
	b .L0806FB7E
.L0806F6FA:
	adds r6, r5, #0
	adds r6, #0x20
	add r0, sp, #0x54
	mov sb, r0
	ldr r4, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r4, r0
	beq .L0806F714
	cmp r4, #0
	bne .L0806F710
	b .L0806FB0A
.L0806F710:
	ldr r0, [sp, #0x54]
	b .L0806FB08
.L0806F714:
	adds r7, r4, #0
	movs r0, #1
	str r0, [sp, #0x6c]
	ldr r0, [r5, #0x20]
	subs r0, r7, r0
	asrs r1, r0, #2
	str r1, [sp, #0x68]
	add r2, sp, #0x6c
	add r0, sp, #0x68
	cmp r1, #1
	bhs .L0806F72C
	adds r0, r2, #0
.L0806F72C:
	ldr r0, [r0]
	adds r0, r1, r0
	cmp r0, #0
	beq .L0806F74A
	lsls r4, r0, #2
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806F74E
	mov r0, r8
	bl func_080D3BC0
	b .L0806F74E
.L0806F74A:
	movs r0, #0
	mov r8, r0
.L0806F74E:
	adds r5, r0, #0
	ldr r1, [r6]
	cmp r7, r1
	beq .L0806F762
	subs r4, r7, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
	b .L0806F764
.L0806F762:
	adds r0, r5, #0
.L0806F764:
	adds r4, r0, #0
	ldr r1, [sp, #0x6c]
	ldr r2, [r6]
	cmp r1, #0
	bne .L0806F770
	b .L0806FB7E
.L0806F770:
	mov r3, sb
	ldr r0, [r3]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0806F770
	b .L0806FB7E
.L0806F77E:
	movs r0, #0xa0
	lsls r0, r0, #1
	adds r5, r7, r0
	str r2, [sp, #0x70]
	cmp r2, #0x10
	bls .L0806F78C
	b .L0806FB92
.L0806F78C:
	lsls r0, r2, #2
	ldr r1, .L0806F798 @ =.L0806F79C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0806F798: .4byte .L0806F79C
.L0806F79C: @ jump table
	.4byte .L0806F7E0 @ case 0
	.4byte .L0806F7E0 @ case 1
	.4byte .L0806F7E0 @ case 2
	.4byte .L0806F7E0 @ case 3
	.4byte .L0806F7E0 @ case 4
	.4byte .L0806F8EC @ case 5
	.4byte .L0806F8EC @ case 6
	.4byte .L0806F862 @ case 7
	.4byte .L0806F862 @ case 8
	.4byte .L0806F8EC @ case 9
	.4byte .L0806F7E0 @ case 10
	.4byte .L0806F7E0 @ case 11
	.4byte .L0806F7E0 @ case 12
	.4byte .L0806F7E0 @ case 13
	.4byte .L0806F7E0 @ case 14
	.4byte .L0806F7E0 @ case 15
	.4byte .L0806F7E0 @ case 16
.L0806F7E0:
	add r1, sp, #0x70
	mov sb, r1
	ldr r4, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r1, r4, #0
	cmp r1, r0
	beq .L0806F7F8
	cmp r1, #0
	bne .L0806F7F4
	b .L0806F9F0
.L0806F7F4:
	ldr r0, [sp, #0x70]
	b .L0806F9EE
.L0806F7F8:
	adds r7, r4, #0
	movs r0, #1
	str r0, [sp, #0x78]
	ldr r0, [r5]
	subs r0, r7, r0
	asrs r4, r0, #2
	str r4, [sp, #0x74]
	add r1, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L0806F810
	adds r0, r1, #0
.L0806F810:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806F82E
	lsls r4, r0, #2
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806F832
	mov r0, r8
	bl func_080D3BC0
	b .L0806F832
.L0806F82E:
	movs r0, #0
	mov r8, r0
.L0806F832:
	adds r6, r0, #0
	ldr r1, [r5]
	cmp r7, r1
	beq .L0806F846
	subs r4, r7, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
	b .L0806F848
.L0806F846:
	adds r0, r6, #0
.L0806F848:
	adds r4, r0, #0
	ldr r1, [sp, #0x78]
	ldr r2, [r5]
	cmp r1, #0
	bne .L0806F854
	b .L0806FA62
.L0806F854:
	mov r3, sb
	ldr r0, [r3]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0806F854
	b .L0806FA62
.L0806F862:
	adds r6, r5, #0
	adds r6, #0x10
	add r0, sp, #0x70
	mov sb, r0
	ldr r4, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r4, r0
	beq .L0806F87C
	cmp r4, #0
	bne .L0806F878
	b .L0806FB0A
.L0806F878:
	ldr r0, [sp, #0x70]
	b .L0806FB08
.L0806F87C:
	adds r7, r4, #0
	movs r0, #1
	add r1, sp, #0x80
	str r0, [r1]
	ldr r0, [r5, #0x10]
	subs r0, r7, r0
	asrs r2, r0, #2
	str r2, [sp, #0x7c]
	ldr r0, [r1]
	add r3, sp, #0x7c
	mov sl, r1
	cmp r2, r0
	bhs .L0806F898
	mov r3, sl
.L0806F898:
	ldr r0, [r3]
	adds r0, r2, r0
	cmp r0, #0
	beq .L0806F8B6
	lsls r4, r0, #2
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806F8BA
	mov r0, r8
	bl func_080D3BC0
	b .L0806F8BA
.L0806F8B6:
	movs r0, #0
	mov r8, r0
.L0806F8BA:
	adds r5, r0, #0
	ldr r1, [r6]
	cmp r7, r1
	beq .L0806F8CE
	subs r4, r7, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
	b .L0806F8D0
.L0806F8CE:
	adds r0, r5, #0
.L0806F8D0:
	adds r4, r0, #0
	mov r2, sl
	ldr r1, [r2]
	ldr r2, [r6]
	cmp r1, #0
	bne .L0806F8DE
	b .L0806FB7E
.L0806F8DE:
	mov r3, sb
	ldr r0, [r3]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0806F8DE
	b .L0806FB7E
.L0806F8EC:
	adds r6, r5, #0
	adds r6, #0x20
	add r0, sp, #0x70
	mov sb, r0
	ldr r4, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r4, r0
	beq .L0806F906
	cmp r4, #0
	bne .L0806F902
	b .L0806FB0A
.L0806F902:
	ldr r0, [sp, #0x70]
	b .L0806FB08
.L0806F906:
	adds r7, r4, #0
	movs r0, #1
	add r1, sp, #0x88
	str r0, [r1]
	ldr r0, [r5, #0x20]
	subs r0, r7, r0
	asrs r4, r0, #2
	add r0, sp, #0x84
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L0806F922
	mov r0, sl
.L0806F922:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806F940
	lsls r4, r0, #2
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806F944
	mov r0, r8
	bl func_080D3BC0
	b .L0806F944
.L0806F940:
	movs r0, #0
	mov r8, r0
.L0806F944:
	adds r5, r0, #0
	ldr r1, [r6]
	cmp r7, r1
	beq .L0806F958
	subs r4, r7, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
	b .L0806F95A
.L0806F958:
	adds r0, r5, #0
.L0806F95A:
	adds r4, r0, #0
	mov r2, sl
	ldr r1, [r2]
	ldr r2, [r6]
	cmp r1, #0
	bne .L0806F968
	b .L0806FB7E
.L0806F968:
	mov r3, sb
	ldr r0, [r3]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0806F968
	b .L0806FB7E
.L0806F976:
	movs r0, #0xb8
	lsls r0, r0, #1
	adds r5, r7, r0
	add r0, sp, #0x8c
	str r2, [r0]
	adds r3, r0, #0
	cmp r2, #0x10
	bls .L0806F988
	b .L0806FB92
.L0806F988:
	lsls r0, r2, #2
	ldr r1, .L0806F994 @ =.L0806F998
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0806F994: .4byte .L0806F998
.L0806F998: @ jump table
	.4byte .L0806F9DC @ case 0
	.4byte .L0806F9DC @ case 1
	.4byte .L0806F9DC @ case 2
	.4byte .L0806F9DC @ case 3
	.4byte .L0806F9DC @ case 4
	.4byte .L0806FAF4 @ case 5
	.4byte .L0806FAF4 @ case 6
	.4byte .L0806FA78 @ case 7
	.4byte .L0806FA78 @ case 8
	.4byte .L0806FAF4 @ case 9
	.4byte .L0806F9DC @ case 10
	.4byte .L0806F9DC @ case 11
	.4byte .L0806F9DC @ case 12
	.4byte .L0806F9DC @ case 13
	.4byte .L0806F9DC @ case 14
	.4byte .L0806F9DC @ case 15
	.4byte .L0806F9DC @ case 16
.L0806F9DC:
	mov sb, r3
	ldr r4, [r5, #4]
	ldr r0, [r5, #0xc]
	adds r1, r4, #0
	cmp r1, r0
	beq .L0806F9F6
	cmp r1, #0
	beq .L0806F9F0
	ldr r0, [r3]
.L0806F9EE:
	str r0, [r1]
.L0806F9F0:
	adds r0, r1, #4
	str r0, [r5, #4]
	b .L0806FB92
.L0806F9F6:
	adds r7, r4, #0
	movs r0, #1
	add r1, sp, #0x94
	str r0, [r1]
	ldr r0, [r5]
	subs r0, r7, r0
	asrs r4, r0, #2
	add r0, sp, #0x90
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L0806FA12
	mov r0, sl
.L0806FA12:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806FA30
	lsls r4, r0, #2
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806FA34
	mov r0, r8
	bl func_080D3BC0
	b .L0806FA34
.L0806FA30:
	movs r0, #0
	mov r8, r0
.L0806FA34:
	adds r6, r0, #0
	ldr r1, [r5]
	cmp r7, r1
	beq .L0806FA48
	subs r4, r7, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
	b .L0806FA4A
.L0806FA48:
	adds r0, r6, #0
.L0806FA4A:
	adds r4, r0, #0
	mov r2, sl
	ldr r1, [r2]
	ldr r2, [r5]
	cmp r1, #0
	beq .L0806FA62
.L0806FA56:
	mov r3, sb
	ldr r0, [r3]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0806FA56
.L0806FA62:
	cmp r2, #0
	beq .L0806FA6C
	adds r0, r2, #0
	bl free
.L0806FA6C:
	mov r7, r8
	adds r0, r7, r6
.L0806FA70:
	str r6, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
	b .L0806FB92
.L0806FA78:
	adds r6, r5, #0
	adds r6, #0x10
	mov sb, r3
	ldr r4, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r4, r0
	bne .L0806FB02
	adds r7, r4, #0
	movs r0, #1
	add r1, sp, #0x9c
	str r0, [r1]
	ldr r0, [r5, #0x10]
	subs r0, r7, r0
	asrs r4, r0, #2
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L0806FAA2
	mov r0, sl
.L0806FAA2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806FAC0
	lsls r4, r0, #2
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806FAC4
	mov r0, r8
	bl func_080D3BC0
	b .L0806FAC4
.L0806FAC0:
	movs r0, #0
	mov r8, r0
.L0806FAC4:
	adds r5, r0, #0
	ldr r1, [r6]
	cmp r7, r1
	beq .L0806FAD8
	subs r4, r7, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
	b .L0806FADA
.L0806FAD8:
	adds r0, r5, #0
.L0806FADA:
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [r0]
	ldr r2, [r6]
	cmp r1, #0
	beq .L0806FB7E
.L0806FAE6:
	mov r3, sb
	ldr r0, [r3]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0806FAE6
	b .L0806FB7E
.L0806FAF4:
	adds r6, r5, #0
	adds r6, #0x20
	mov sb, r3
	ldr r4, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r4, r0
	beq .L0806FB12
.L0806FB02:
	cmp r4, #0
	beq .L0806FB0A
	ldr r0, [r3]
.L0806FB08:
	str r0, [r4]
.L0806FB0A:
	ldr r0, [r6, #4]
	adds r0, #4
	str r0, [r6, #4]
	b .L0806FB92
.L0806FB12:
	adds r7, r4, #0
	movs r0, #1
	add r1, sp, #0xa4
	str r0, [r1]
	ldr r0, [r5, #0x20]
	subs r0, r7, r0
	asrs r4, r0, #2
	add r0, sp, #0xa0
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L0806FB2E
	mov r0, sl
.L0806FB2E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806FB4C
	lsls r4, r0, #2
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806FB50
	mov r0, r8
	bl func_080D3BC0
	b .L0806FB50
.L0806FB4C:
	movs r0, #0
	mov r8, r0
.L0806FB50:
	adds r5, r0, #0
	ldr r1, [r6]
	cmp r7, r1
	beq .L0806FB64
	subs r4, r7, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
	b .L0806FB66
.L0806FB64:
	adds r0, r5, #0
.L0806FB66:
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [r0]
	ldr r2, [r6]
	cmp r1, #0
	beq .L0806FB7E
.L0806FB72:
	mov r3, sb
	ldr r0, [r3]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0806FB72
.L0806FB7E:
	cmp r2, #0
	beq .L0806FB88
	adds r0, r2, #0
	bl free
.L0806FB88:
	mov r7, r8
	adds r0, r7, r5
	str r5, [r6]

	non_word_aligned_thumb_func_start sub_0806FB8E
sub_0806FB8E: @ 0x0806FB8E
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L0806FB92:
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0806FBA4
func_0806FBA4: @ 0x0806FBA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa0
	str r0, [sp, #0x48]
	lsls r2, r1, #2
	ldr r0, .L0806FC68 @ =gUnk_080FBD94
	adds r2, r2, r0
	str r2, [sp, #0x4c]
	ldrh r0, [r2, #2]
	str r0, [sp, #0x50]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xe0
	ldr r1, [sp, #0x48]
	adds r0, r1, r0
	str r0, [sp, #0x54]
	movs r1, #0
	ldr r2, [r0]
	ldr r0, [r0, #4]
	cmp r2, r0
	bne .L0806FBD8
	movs r1, #1
.L0806FBD8:
	ldr r3, [sp, #0x54]
	adds r3, #0x10
	str r3, [sp, #0x80]
	ldr r4, [sp, #0x54]
	adds r4, #0x20
	str r4, [sp, #0x84]
	cmp r1, #0
	beq .L0806FBEA
	b .L0806FD76
.L0806FBEA:
	ldr r5, [sp, #0x4c]
	ldrh r5, [r5]
	mov sl, r5
	adds r6, r2, #0
	str r0, [sp, #0x58]
	ldr r7, [sp, #0x48]
	adds r7, #0xa0
	str r7, [sp, #0x90]
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x74]
	ldr r1, [sp, #0x48]
	adds r1, #0xd0
	str r1, [sp, #0x94]
	ldr r2, [sp, #0x50]
	adds r2, #0xc
	str r2, [sp, #0x7c]
	str r1, [sp, #0x98]
	mov r3, sp
	str r3, [sp, #0x60]
	mov r4, sp
	adds r4, #0x1c
	str r4, [sp, #0x5c]
.L0806FC18:
	ldr r2, [r6]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x90]
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	mov r5, sl
	str r5, [sp]
	ldr r7, [sp, #0x50]
	str r7, [sp, #4]
	ldr r1, [sp, #0x74]
	ldr r0, [sp, #0x5c]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r5, r7}
	stm r1!, {r5, r7}
	ldr r0, [sp, #0x98]
	ldr r1, [r0, #4]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	beq .L0806FC6C
	cmp r1, #0
	beq .L0806FC58
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806FC58:
	ldr r3, [sp, #0x98]
	ldr r0, [r3, #4]
	adds r0, #0x1c
	str r0, [r3, #4]
	movs r4, #4
	add sl, r4
	adds r6, #4
	b .L0806FD6A
	.align 2, 0
.L0806FC68: .4byte gUnk_080FBD94
.L0806FC6C:
	ldr r5, [sp, #0x94]
	ldr r5, [r5, #4]
	mov r8, r5
	movs r0, #1
	str r0, [sp, #0x34]
	ldr r7, [sp, #0x94]
	ldr r2, [r7]
	subs r1, r5, r2
	ldr r0, .L0806FCBC @ =0xB6DB6DB7
	muls r0, r1, r0
	asrs r4, r0, #2
	str r4, [sp, #0x30]
	add r3, sp, #0x34
	add r0, sp, #0x30
	adds r1, r2, #0
	cmp r4, #1
	bhs .L0806FC90
	adds r0, r3, #0
.L0806FC90:
	ldr r0, [r0]
	adds r4, r4, r0
	mov sb, r4
	cmp r4, #0
	beq .L0806FCC0
	lsls r4, r4, #3
	mov r1, sb
	subs r0, r4, r1
	lsls r5, r0, #2
	adds r0, r5, #0
	bl malloc
	str r4, [sp, #0x88]
	cmp r0, #0
	bne .L0806FCB4
	adds r0, r5, #0
	bl func_080D3BC0
.L0806FCB4:
	ldr r2, [sp, #0x98]
	ldr r1, [r2]
	b .L0806FCC6
	.align 2, 0
.L0806FCBC: .4byte 0xB6DB6DB7
.L0806FCC0:
	movs r0, #0
	movs r3, #0
	str r3, [sp, #0x88]
.L0806FCC6:
	adds r4, r0, #0
	str r4, [sp, #0x9c]
	adds r2, r1, #0
	adds r3, r4, #0
	movs r4, #4
	add sl, r4
	adds r6, #4
	cmp r2, r8
	beq .L0806FCF4
.L0806FCD8:
	cmp r3, #0
	beq .L0806FCEC
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806FCEC:
	adds r2, #0x1c
	adds r3, #0x1c
	cmp r2, r8
	bne .L0806FCD8
.L0806FCF4:
	adds r4, r3, #0
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L0806FD14
	cmp r4, #0
	beq .L0806FD10
	adds r0, r4, #0
	ldr r1, [sp, #0x60]
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldm r1!, {r3, r5, r7}
	stm r0!, {r3, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806FD10:
	adds r4, #0x1c
	b .L0806FD3A
.L0806FD14:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L0806FD38
.L0806FD1C:
	cmp r2, #0
	beq .L0806FD30
	adds r0, r2, #0
	ldr r1, [sp, #0x60]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806FD30:
	subs r3, #1
	adds r2, #0x1c
	cmp r3, #0
	bne .L0806FD1C
.L0806FD38:
	adds r4, r2, #0
.L0806FD3A:
	ldr r0, [sp, #0x98]
	ldr r2, [r0, #4]
	ldr r1, [r0]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0806FD4C
.L0806FD46:
	adds r0, #0x1c
	cmp r0, r2
	bne .L0806FD46
.L0806FD4C:
	cmp r1, #0
	beq .L0806FD56
	adds r0, r1, #0
	bl free
.L0806FD56:
	ldr r1, [sp, #0x88]
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, [sp, #0x9c]
	adds r0, r0, r3
	ldr r5, [sp, #0x98]
	str r3, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0806FD6A:
	ldr r7, [sp, #0x58]
	cmp r6, r7
	beq .L0806FD72
	b .L0806FC18
.L0806FD72:
	ldr r0, [sp, #0x7c]
	str r0, [sp, #0x50]
.L0806FD76:
	movs r1, #0
	ldr r3, [sp, #0x54]
	ldr r2, [r3, #0x10]
	ldr r4, [sp, #0x80]
	ldr r0, [r4, #4]
	cmp r2, r0
	bne .L0806FD86
	movs r1, #1
.L0806FD86:
	cmp r1, #0
	beq .L0806FD8C
	b .L0806FF12
.L0806FD8C:
	ldr r5, [sp, #0x4c]
	ldrh r5, [r5]
	mov sl, r5
	adds r6, r2, #0
	str r0, [sp, #0x58]
	ldr r7, [sp, #0x48]
	adds r7, #0xa0
	str r7, [sp, #0x90]
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x74]
	ldr r1, [sp, #0x48]
	adds r1, #0xd0
	str r1, [sp, #0x94]
	ldr r2, [sp, #0x50]
	adds r2, #0xc
	str r2, [sp, #0x7c]
	str r1, [sp, #0x98]
	mov r3, sp
	str r3, [sp, #0x68]
	mov r4, sp
	adds r4, #0x1c
	str r4, [sp, #0x64]
.L0806FDBA:
	ldr r2, [r6]
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x90]
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	mov r5, sl
	str r5, [sp]
	ldr r7, [sp, #0x50]
	str r7, [sp, #4]
	ldr r1, [sp, #0x74]
	ldr r0, [sp, #0x64]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r5, r7}
	stm r1!, {r5, r7}
	ldr r0, [sp, #0x98]
	ldr r1, [r0, #4]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	beq .L0806FE0A
	cmp r1, #0
	beq .L0806FDFA
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806FDFA:
	ldr r3, [sp, #0x98]
	ldr r0, [r3, #4]
	adds r0, #0x1c
	str r0, [r3, #4]
	adds r6, #4
	movs r4, #4
	add sl, r4
	b .L0806FF06
.L0806FE0A:
	ldr r5, [sp, #0x94]
	ldr r5, [r5, #4]
	mov r8, r5
	movs r0, #1
	str r0, [sp, #0x3c]
	ldr r7, [sp, #0x94]
	ldr r2, [r7]
	subs r1, r5, r2
	ldr r0, .L0806FE58 @ =0xB6DB6DB7
	muls r0, r1, r0
	asrs r4, r0, #2
	str r4, [sp, #0x38]
	add r3, sp, #0x3c
	add r0, sp, #0x38
	adds r1, r2, #0
	cmp r4, #1
	bhs .L0806FE2E
	adds r0, r3, #0
.L0806FE2E:
	ldr r0, [r0]
	adds r4, r4, r0
	mov sb, r4
	cmp r4, #0
	beq .L0806FE5C
	lsls r4, r4, #3
	mov r1, sb
	subs r0, r4, r1
	lsls r5, r0, #2
	adds r0, r5, #0
	bl malloc
	str r4, [sp, #0x78]
	cmp r0, #0
	bne .L0806FE52
	adds r0, r5, #0
	bl func_080D3BC0
.L0806FE52:
	ldr r2, [sp, #0x98]
	ldr r1, [r2]
	b .L0806FE62
	.align 2, 0
.L0806FE58: .4byte 0xB6DB6DB7
.L0806FE5C:
	movs r0, #0
	movs r3, #0
	str r3, [sp, #0x78]
.L0806FE62:
	adds r4, r0, #0
	str r4, [sp, #0x9c]
	adds r2, r1, #0
	adds r3, r4, #0
	adds r6, #4
	movs r4, #4
	add sl, r4
	cmp r2, r8
	beq .L0806FE90
.L0806FE74:
	cmp r3, #0
	beq .L0806FE88
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806FE88:
	adds r2, #0x1c
	adds r3, #0x1c
	cmp r2, r8
	bne .L0806FE74
.L0806FE90:
	adds r4, r3, #0
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L0806FEB0
	cmp r4, #0
	beq .L0806FEAC
	adds r0, r4, #0
	ldr r1, [sp, #0x68]
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldm r1!, {r3, r5, r7}
	stm r0!, {r3, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806FEAC:
	adds r4, #0x1c
	b .L0806FED6
.L0806FEB0:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L0806FED4
.L0806FEB8:
	cmp r2, #0
	beq .L0806FECC
	adds r0, r2, #0
	ldr r1, [sp, #0x68]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806FECC:
	subs r3, #1
	adds r2, #0x1c
	cmp r3, #0
	bne .L0806FEB8
.L0806FED4:
	adds r4, r2, #0
.L0806FED6:
	ldr r0, [sp, #0x98]
	ldr r2, [r0, #4]
	ldr r1, [r0]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0806FEE8
.L0806FEE2:
	adds r0, #0x1c
	cmp r0, r2
	bne .L0806FEE2
.L0806FEE8:
	cmp r1, #0
	beq .L0806FEF2
	adds r0, r1, #0
	bl free
.L0806FEF2:
	ldr r1, [sp, #0x78]
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, [sp, #0x9c]
	adds r0, r0, r3
	ldr r5, [sp, #0x98]
	str r3, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0806FF06:
	ldr r7, [sp, #0x58]
	cmp r6, r7
	beq .L0806FF0E
	b .L0806FDBA
.L0806FF0E:
	ldr r0, [sp, #0x7c]
	str r0, [sp, #0x50]
.L0806FF12:
	movs r1, #0
	ldr r3, [sp, #0x54]
	ldr r2, [r3, #0x20]
	ldr r4, [sp, #0x84]
	ldr r0, [r4, #4]
	cmp r2, r0
	bne .L0806FF22
	movs r1, #1
.L0806FF22:
	cmp r1, #0
	beq .L0806FF28
	b .L080700A6
.L0806FF28:
	ldr r5, [sp, #0x4c]
	ldrh r5, [r5]
	mov sl, r5
	adds r6, r2, #0
	str r0, [sp, #0x58]
	ldr r7, [sp, #0x48]
	adds r7, #0xa0
	str r7, [sp, #0x90]
	mov r0, sp
	adds r0, #8
	str r0, [sp, #0x74]
	ldr r1, [sp, #0x48]
	adds r1, #0xd0
	str r1, [sp, #0x94]
	str r1, [sp, #0x98]
	mov r2, sp
	str r2, [sp, #0x70]
	mov r3, sp
	adds r3, #0x1c
	str r3, [sp, #0x6c]
.L0806FF50:
	ldr r2, [r6]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x90]
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	mov r4, sl
	str r4, [sp]
	ldr r5, [sp, #0x50]
	str r5, [sp, #4]
	ldr r1, [sp, #0x74]
	ldr r0, [sp, #0x6c]
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	ldr r7, [sp, #0x98]
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L0806FFA0
	cmp r1, #0
	beq .L0806FF90
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806FF90:
	ldr r3, [sp, #0x98]
	ldr r0, [r3, #4]
	adds r0, #0x1c
	str r0, [r3, #4]
	adds r6, #4
	movs r4, #4
	add sl, r4
	b .L0807009E
.L0806FFA0:
	ldr r5, [sp, #0x94]
	ldr r5, [r5, #4]
	mov r8, r5
	movs r0, #1
	str r0, [sp, #0x44]
	ldr r7, [sp, #0x94]
	ldr r2, [r7]
	subs r1, r5, r2
	ldr r0, .L0806FFF0 @ =0xB6DB6DB7
	muls r0, r1, r0
	asrs r4, r0, #2
	str r4, [sp, #0x40]
	add r3, sp, #0x44
	add r0, sp, #0x40
	adds r1, r2, #0
	cmp r4, #1
	bhs .L0806FFC4
	adds r0, r3, #0
.L0806FFC4:
	ldr r0, [r0]
	adds r4, r4, r0
	mov sb, r4
	cmp r4, #0
	beq .L0806FFF4
	lsls r4, r4, #3
	mov r1, sb
	subs r0, r4, r1
	lsls r5, r0, #2
	adds r0, r5, #0
	bl malloc
	str r4, [sp, #0x8c]
	cmp r0, #0
	bne .L0806FFE8
	adds r0, r5, #0
	bl func_080D3BC0
.L0806FFE8:
	ldr r2, [sp, #0x98]
	ldr r1, [r2]
	b .L0806FFFA
	.align 2, 0
.L0806FFF0: .4byte 0xB6DB6DB7
.L0806FFF4:
	movs r0, #0
	movs r3, #0
	str r3, [sp, #0x8c]
.L0806FFFA:
	adds r4, r0, #0
	str r4, [sp, #0x9c]
	adds r2, r1, #0
	adds r3, r4, #0
	adds r6, #4
	movs r4, #4
	add sl, r4
	cmp r2, r8
	beq .L08070028
.L0807000C:
	cmp r3, #0
	beq .L08070020
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08070020:
	adds r2, #0x1c
	adds r3, #0x1c
	cmp r2, r8
	bne .L0807000C
.L08070028:
	adds r4, r3, #0
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne .L08070048
	cmp r4, #0
	beq .L08070044
	adds r0, r4, #0
	ldr r1, [sp, #0x70]
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldm r1!, {r3, r5, r7}
	stm r0!, {r3, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08070044:
	adds r4, #0x1c
	b .L0807006E
.L08070048:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L0807006C
.L08070050:
	cmp r2, #0
	beq .L08070064
	adds r0, r2, #0
	ldr r1, [sp, #0x70]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08070064:
	subs r3, #1
	adds r2, #0x1c
	cmp r3, #0
	bne .L08070050
.L0807006C:
	adds r4, r2, #0
.L0807006E:
	ldr r0, [sp, #0x98]
	ldr r2, [r0, #4]
	ldr r1, [r0]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08070080
.L0807007A:
	adds r0, #0x1c
	cmp r0, r2
	bne .L0807007A
.L08070080:
	cmp r1, #0
	beq .L0807008A
	adds r0, r1, #0
	bl free
.L0807008A:
	ldr r1, [sp, #0x8c]
	mov r2, sb
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, [sp, #0x9c]
	adds r0, r0, r3
	ldr r5, [sp, #0x98]
	str r3, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0807009E:
	ldr r7, [sp, #0x58]
	cmp r6, r7
	beq .L080700A6
	b .L0806FF50
.L080700A6:
	add sp, #0xa0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080700B8
func_080700B8: @ 0x080700B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r1, [sp]
	mov sl, r2
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	adds r6, r2, r0
	adds r1, r1, r3
	mov sb, r1
	cmp r3, sb
	bhs .L0807012C
	ldr r0, [sp, #0x2c]
	lsls r5, r0, #0xc
	movs r1, #0xf0
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r5, r0
.L080700E2:
	mov r2, sl
	adds r7, r3, #1
	mov ip, r7
	cmp r2, r6
	bhs .L08070126
	lsrs r0, r3, #5
	lsls r4, r0, #1
	movs r0, #0x1f
	ands r3, r0
	lsls r0, r3, #6
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r3, r0, r1
	ldr r7, .L0807013C @ =0x00000FFF
	mov r8, r7
.L08070100:
	lsrs r0, r2, #5
	adds r0, r4, r0
	ldr r1, [sp]
	adds r0, r1, r0
	lsls r0, r0, #0xb
	adds r0, r0, r3
	adds r1, r2, #0
	movs r7, #0x1f
	ands r1, r7
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	mov r7, r8
	ands r1, r7
	orrs r1, r5
	strh r1, [r0]
	adds r2, #1
	cmp r2, r6
	blo .L08070100
.L08070126:
	mov r3, ip
	cmp r3, sb
	blo .L080700E2
.L0807012C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0807013C: .4byte 0x00000FFF

	thumb_func_start func_08070140
func_08070140: @ 0x08070140
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x24
	adds r5, r0, #0
	adds r0, #0xd0
	ldr r4, [r0]
	ldr r7, [r0, #4]
	cmp r4, r7
	beq .L080701B0
	movs r0, #0x18
	adds r0, r0, r5
	mov r8, r0
.L0807015A:
	adds r0, r5, #0
	bl func_08008920
	adds r6, r0, #0
	ldr r1, [r4, #8]
	ldr r3, [r1]
	ldrh r2, [r4, #0x14]
	lsls r2, r2, #2
	ldr r0, [r4, #0xc]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #4
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r1, [r5, #0x14]
	cmp r1, #0
	bge .L0807018A
	adds r1, #0xff
.L0807018A:
	asrs r1, r1, #8
	ldr r0, [r4]
	subs r3, r0, r1
	ldr r1, [r5, #0x10]
	cmp r1, #0
	bge .L08070198
	adds r1, #0xff
.L08070198:
	asrs r1, r1, #8
	ldr r0, [r4, #4]
	subs r0, r0, r1
	str r0, [sp]
	mov r0, r8
	adds r1, r6, #0
	add r2, sp, #4
	bl func_08075AE8
	adds r4, #0x1c
	cmp r4, r7
	bne .L0807015A
.L080701B0:
	add sp, #0x24
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080701BC
func_080701BC: @ 0x080701BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	str r0, [sp, #0x30]
	adds r4, r1, #0
	str r2, [sp, #0x34]
	ldr r0, .L080704EC @ =vtable_unk_080E7AEC
	ldr r1, [sp, #0x30]
	str r0, [r1]
	movs r0, #0xd0
	lsls r0, r0, #1
	bl __builtin_new
	ldr r2, [sp, #0x34]
	ldr r1, [r2]
	movs r5, #0
	str r5, [r2]
	str r1, [sp, #4]
	adds r7, r0, #0
	bl func_08008444
	ldr r0, .L080704F0 @ =vtable_unk_080E7AE0
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [sp, #4]
	str r5, [sp, #4]
	str r0, [r7, #0xc]
	str r5, [r7, #0x10]
	str r5, [r7, #0x14]
	adds r0, r7, #0
	adds r0, #0x18
	bl func_080756B0
	adds r4, r7, #0
	adds r4, #0x20
	ldr r1, .L080704F4 @ =gUnk_08527094
	adds r0, r4, #0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x50
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x64
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x78
	adds r1, r4, #0
	movs r2, #2
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x8c
	adds r1, r4, #0
	movs r2, #3
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0xa0
	ldr r1, .L080704F8 @ =gUnk_087537D0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0xd0
	str r5, [r0]
	str r5, [r0, #4]
	adds r0, #8
	str r5, [r0, #4]
	adds r4, #0xc0
	movs r5, #3
	add r6, sp, #0xc
	movs r3, #1
	rsbs r3, r3, #0
	mov r8, r3
.L08070272:
	adds r0, r4, #0
	bl func_080E2094
	adds r4, #0x30
	subs r5, #1
	cmp r5, r8
	bne .L08070272
	movs r4, #0
	adds r0, r7, #0
	adds r0, #0x20
	ldrh r5, [r0, #0x22]
	mov sb, r0
	movs r0, #0xa0
	adds r0, r0, r7
	mov r8, r0
	cmp r4, r5
	bhs .L080702AE
.L08070294:
	add r0, sp, #0xc
	mov r1, sb
	adds r2, r4, #0
	bl func_0805E790
	adds r0, r7, #0
	adds r0, #0x18
	add r1, sp, #0xc
	bl func_080757E8
	adds r4, #1
	cmp r4, r5
	blo .L08070294
.L080702AE:
	movs r4, #0
	mov r1, r8
	ldrh r5, [r1, #0x22]
	cmp r4, r5
	bhs .L080702D2
.L080702B8:
	add r0, sp, #0xc
	mov r1, r8
	adds r2, r4, #0
	bl func_0805E790
	adds r0, r7, #0
	adds r0, #0x18
	add r1, sp, #0xc
	bl func_080757E8
	adds r4, #1
	cmp r4, r5
	blo .L080702B8
.L080702D2:
	ldr r0, [r7, #8]
	ldr r2, .L080704FC @ =0x00001BD8
	adds r2, r2, r0
	mov r8, r2
	movs r4, #0
	add r0, sp, #0x14
	mov r1, r8
	bl func_0800E924
	add r0, sp, #0xc
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	ldr r5, .L08070500 @ =0x000003FF
	ands r2, r5
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	ands r3, r5
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r7, #0
	bl func_0806F168
	ldr r2, [r7, #8]
	ldr r3, .L08070504 @ =0x0000219C
	adds r0, r2, r3
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne .L08070372
	movs r4, #1
	ldr r0, .L08070508 @ =0x00001C70
	adds r1, r2, r0
	add r0, sp, #0x14
	bl __5ActorRC5Actor
	adds r0, r6, #0
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	ands r2, r5
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	ands r3, r5
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r7, #0
	bl func_0806F168
.L08070372:
	ldr r0, [r7, #8]
	adds r0, #0x14
	bl GetHorse__4Farm
	adds r3, r0, #0
	cmp r3, #0
	beq .L080703E0
	ldr r2, [r7, #8]
	ldr r1, .L0807050C @ =0x0000219A
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne .L080703E0
	ldr r4, .L08070510 @ =0x000021A1
	adds r0, r2, r4
	ldrb r1, [r0]
	movs r4, #4
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne .L080703E0
	add r0, sp, #0x14
	adds r1, r3, #0
	bl __5ActorRC5Actor
	adds r0, r6, #0
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	ands r2, r5
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	ands r3, r5
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r7, #0
	bl func_0806F168
.L080703E0:
	mov r0, r8
	bl func_0800E934
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08070446
	mov r4, r8
	adds r4, #0x54
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08070406
	adds r0, r4, #0
	bl func_0800F204
	cmp r0, #4
	beq .L08070446
.L08070406:
	movs r5, #3
	ldr r1, [r7, #8]
	movs r0, #0xe5
	lsls r0, r0, #5
	adds r1, r1, r0
	add r0, sp, #0xc
	bl func_0800FFE0
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	ldr r4, .L08070500 @ =0x000003FF
	ands r2, r4
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	ands r3, r4
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r5, [sp]
	adds r0, r7, #0
	bl func_0806F168
.L08070446:
	mov r0, r8
	bl func_0800E940
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08070528
	mov r4, r8
	adds r4, #0x54
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08070480
	adds r0, r4, #0
	bl func_0800F204
	cmp r0, #1
	bne .L08070480
	adds r0, r4, #0
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x2c
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x35
	beq .L08070528
.L08070480:
	mov r0, r8
	adds r0, #0x60
	movs r1, #0x35
	bl GetFirstSlotWithArticle__C8RucksackUi
	cmp r0, #0
	bge .L08070528
	ldr r0, [r7, #8]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetShelf__9FarmHouse
	cmp r0, #0
	beq .L080704A8
	movs r1, #0x35
	bl GetFirstSlotWith__C5ShelfUi
	cmp r0, #0
	bge .L08070518
.L080704A8:
	movs r5, #2
	ldr r1, [r7, #8]
	ldr r2, .L08070514 @ =0x00001CCC
	adds r1, r1, r2
	add r0, sp, #0xc
	movs r2, #6
	bl memcpy
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	ldr r4, .L08070500 @ =0x000003FF
	ands r2, r4
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	ands r3, r4
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r5, [sp]
	adds r0, r7, #0
	bl func_0806F168
	b .L08070528
	.align 2, 0
.L080704EC: .4byte vtable_unk_080E7AEC
.L080704F0: .4byte vtable_unk_080E7AE0
.L080704F4: .4byte gUnk_08527094
.L080704F8: .4byte gUnk_087537D0
.L080704FC: .4byte 0x00001BD8
.L08070500: .4byte 0x000003FF
.L08070504: .4byte 0x0000219C
.L08070508: .4byte 0x00001C70
.L0807050C: .4byte 0x0000219A
.L08070510: .4byte 0x000021A1
.L08070514: .4byte 0x00001CCC
.L08070518:
	movs r0, #2
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0x1d
	movs r2, #0
	movs r3, #0
	bl func_0806F168
.L08070528:
	movs r4, #0xe
	ldr r1, [r7, #8]
	ldr r3, .L080708E4 @ =0x00002010
	adds r1, r1, r3
	add r0, sp, #0x14
	bl GetLocation__C3Npc
	add r0, sp, #0xc
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	ldr r5, .L080708E8 @ =0x000003FF
	mov sl, r5
	ands r2, r5
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	ands r3, r5
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r7, #0
	bl func_0806F168
	movs r4, #0xb
	ldr r1, [r7, #8]
	ldr r0, .L080708EC @ =0x00002034
	adds r1, r1, r0
	add r0, sp, #0x14
	bl GetLocation__C3Npc
	adds r0, r6, #0
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	ands r2, r5
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	ands r3, r5
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r7, #0
	bl func_0806F168
	movs r4, #0xf
	ldr r1, [r7, #8]
	ldr r2, .L080708F0 @ =0x00002058
	adds r1, r1, r2
	add r0, sp, #0x14
	bl GetLocation__C3Npc
	adds r0, r6, #0
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	ands r2, r5
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	ands r3, r5
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r7, #0
	bl func_0806F168
	movs r4, #0xa
	ldr r1, [r7, #8]
	ldr r3, .L080708F4 @ =0x0000207C
	adds r1, r1, r3
	add r0, sp, #0x14
	bl GetLocation__C3Npc
	adds r0, r6, #0
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	ands r2, r5
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	ands r3, r5
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r7, #0
	bl func_0806F168
	movs r4, #0x10
	ldr r1, [r7, #8]
	ldr r5, .L080708F8 @ =0x000020A0
	adds r1, r1, r5
	add r0, sp, #0x14
	bl GetLocation__C3Npc
	adds r0, r6, #0
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	mov r3, sl
	ands r2, r3
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	mov r5, sl
	ands r3, r5
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r7, #0
	bl func_0806F168
	movs r4, #0xd
	ldr r1, [r7, #8]
	ldr r0, .L080708FC @ =0x000020C4
	adds r1, r1, r0
	add r0, sp, #0x14
	bl GetLocation__C3Npc
	adds r0, r6, #0
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	ands r2, r5
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	ands r3, r5
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r7, #0
	bl func_0806F168
	movs r4, #0xc
	ldr r1, [r7, #8]
	ldr r2, .L08070900 @ =0x000020E8
	adds r1, r1, r2
	add r0, sp, #0x14
	bl GetLocation__C3Npc
	adds r0, r6, #0
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	ands r2, r5
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	ands r3, r5
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r4, [sp]
	adds r0, r7, #0
	bl func_0806F168
	ldr r0, [r7, #8]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r3, r3, r0
	mov r8, r3
	mov r0, r8
	bl GetCapacity__C4Barn
	str r0, [sp, #0x38]
	mov r0, r8
	bl method_0800D058__C4Barn
	mov sb, r0
	movs r5, #0
	ldr r4, [sp, #0x38]
	cmp r5, r4
	bhs .L080707BC
	adds r4, r6, #0
.L0807073E:
	mov r0, sb
	cmp r0, #0
	blt .L08070748
	cmp r5, sb
	beq .L080707B4
.L08070748:
	movs r1, #7
	mov sl, r1
	mov r0, r8
	adds r1, r5, #0
	bl GetCow__C4BarnUi
	adds r1, r0, #0
	cmp r1, #0
	bne .L0807076C
	movs r2, #8
	mov sl, r2
	mov r0, r8
	adds r1, r5, #0
	bl GetSheep__C4BarnUi
	adds r1, r0, #0
	cmp r1, #0
	beq .L080707B4
.L0807076C:
	add r0, sp, #0x14
	bl __5ActorRC5Actor
	add r0, sp, #0xc
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r4]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r4, #1]
	lsrs r0, r0, #2
	ldrh r2, [r4, #2]
	ldr r3, .L080708E8 @ =0x000003FF
	ands r2, r3
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov ip, r2
	ldrb r0, [r4, #3]
	lsrs r0, r0, #2
	ldrh r3, [r4, #4]
	ldr r2, .L080708E8 @ =0x000003FF
	ands r3, r2
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r0, sl
	str r0, [sp]
	adds r0, r7, #0
	mov r2, ip
	bl func_0806F168
.L080707B4:
	adds r5, #1
	ldr r1, [sp, #0x38]
	cmp r5, r1
	blo .L0807073E
.L080707BC:
	ldr r0, [r7, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r2, r0, r2
	str r2, [sp, #0x3c]
	adds r0, r2, #0
	bl GetCapacity__C4Coop
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	bl GetUnkEnt__C4Coop
	str r0, [sp, #0x44]
	movs r3, #0
	mov r8, r3
	ldr r4, [sp, #0x40]
	cmp r8, r4
	bhs .L080708A6
	adds r5, r6, #0
	ldr r0, .L080708E8 @ =0x000003FF
	mov sl, r0
.L080707E6:
	ldr r1, [sp, #0x44]
	cmp r1, #0
	blt .L080707F0
	cmp r8, r1
	beq .L08070852
.L080707F0:
	ldr r0, [sp, #0x3c]
	mov r1, r8
	bl GetChicken__C4CoopUi
	adds r4, r0, #0
	cmp r4, #0
	beq .L08070852
	bl GetGrowthStage__C7Chicken
	movs r2, #6
	mov sb, r2
	cmp r0, #1
	bne .L0807080E
	movs r3, #5
	mov sb, r3
.L0807080E:
	add r0, sp, #0x14
	adds r1, r4, #0
	bl __5ActorRC5Actor
	add r0, sp, #0xc
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r5]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r5, #1]
	lsrs r0, r0, #2
	ldrh r2, [r5, #2]
	mov r4, sl
	ands r2, r4
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r5, #3]
	lsrs r0, r0, #2
	ldrh r3, [r5, #4]
	ands r3, r4
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	mov r0, sb
	str r0, [sp]
	adds r0, r7, #0
	bl func_0806F168
.L08070852:
	ldr r0, [sp, #0x3c]
	mov r1, r8
	bl GetEgg__C4CoopUi
	adds r1, r0, #0
	cmp r1, #0
	beq .L0807089C
	add r0, sp, #0xc
	movs r2, #6
	bl memcpy
	ldrh r1, [r5]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r5, #1]
	lsrs r0, r0, #2
	ldrh r2, [r5, #2]
	mov r3, sl
	ands r2, r3
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r5, #3]
	lsrs r0, r0, #2
	ldrh r3, [r5, #4]
	mov r4, sl
	ands r3, r4
	lsls r3, r3, #6
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r0, #9
	str r0, [sp]
	adds r0, r7, #0
	bl func_0806F168
.L0807089C:
	movs r1, #1
	add r8, r1
	ldr r2, [sp, #0x40]
	cmp r8, r2
	blo .L080707E6
.L080708A6:
	movs r5, #0x13
	ldr r1, [r7, #8]
	ldr r3, .L08070904 @ =0x000034DC
	adds r1, r1, r3
	add r0, sp, #0x14
	bl __5ActorRC5Actor
	add r0, sp, #0xc
	add r1, sp, #0x14
	movs r2, #6
	bl memcpy
	ldrh r1, [r6]
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldrb r0, [r6, #1]
	lsrs r0, r0, #2
	ldrh r2, [r6, #2]
	ldr r4, .L080708E8 @ =0x000003FF
	ands r2, r4
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldrb r0, [r6, #3]
	lsrs r0, r0, #2
	ldrh r3, [r6, #4]
	ands r3, r4
	lsls r3, r3, #6
	b .L08070908
	.align 2, 0
.L080708E4: .4byte 0x00002010
.L080708E8: .4byte 0x000003FF
.L080708EC: .4byte 0x00002034
.L080708F0: .4byte 0x00002058
.L080708F4: .4byte 0x0000207C
.L080708F8: .4byte 0x000020A0
.L080708FC: .4byte 0x000020C4
.L08070900: .4byte 0x000020E8
.L08070904: .4byte 0x000034DC
.L08070908:
	orrs r3, r0
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	str r5, [sp]
	adds r0, r7, #0
	bl func_0806F168
	ldr r0, [r7, #8]
	adds r0, #0x10
	bl func_0800E324
	cmp r0, #2
	bne .L08070966
	ldr r0, [r7, #8]
	ldr r4, .L080709D4 @ =0x000034C8
	adds r4, r4, r0
	mov r8, r4
	movs r4, #0x5b
	adds r5, r6, #0
.L0807092E:
	mov r0, r8
	adds r1, r4, #0
	movs r2, #2
	bl func_080A1ED4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08070960
	add r0, sp, #0xc
	mov r1, r8
	adds r2, r4, #0
	bl func_080A1CBC
	ldr r1, [sp, #0x10]
	movs r0, #8
	ldrsh r2, [r5, r0]
	adds r2, #8
	movs r0, #0xa
	ldrsh r3, [r5, r0]
	adds r3, #8
	movs r0, #0x11
	str r0, [sp]
	adds r0, r7, #0
	bl func_0806F168
.L08070960:
	adds r4, #1
	cmp r4, #0x5d
	bls .L0807092E
.L08070966:
	ldr r0, [r7, #8]
	adds r0, #0x14
	bl GetUnkFlag11__C4Farm
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08070986
	movs r0, #0x12
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0x88
	movs r3, #0xb4
	lsls r3, r3, #1
	bl func_0806F168
.L08070986:
	movs r4, #0
.L08070988:
	adds r0, r7, #0
	adds r1, r4, #0
	bl func_0806FBA4
	adds r4, #1
	cmp r4, #3
	bls .L08070988
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L080709A8
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080709A8:
	ldr r1, [sp, #0x30]
	str r7, [r1, #4]
	ldr r2, [sp, #0x34]
	ldr r1, [r2]
	cmp r1, #0
	beq .L080709C0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080709C0:
	ldr r0, [sp, #0x30]
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080709D4: .4byte 0x000034C8

