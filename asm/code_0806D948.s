	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_0806D948
func_0806D948: @ 0x0806D948
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, sp
	bl func_0806A1F4
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
	beq .L0806D978
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0806D978:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L0806D984:
	.byte 0x49, 0x68, 0x8A, 0x69, 0x49, 0x69, 0x01, 0x60, 0x42, 0x60, 0x70, 0x47

	thumb_func_start func_0806D990
func_0806D990: @ 0x0806D990
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r6, r1, #0
	add r1, sp, #0x14
	movs r0, #0x1e
	movs r2, #1
	movs r3, #0
	mov r8, r3
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r7, #0
	bl func_080084DC
	ldr r0, .L0806DAB0 @ =vtable_unk_080E7AC4
	str r0, [r7, #4]
	mov r0, r8
	str r0, [r7, #8]
	movs r0, #4
	bl __builtin_new
	adds r5, r0, #0
	add r0, sp, #0xc
	bl func_0800835C
	add r4, sp, #0x10
	adds r0, r4, #0
	bl func_0800770C
	ldr r0, [r7, #8]
	str r0, [sp]
	add r1, sp, #0xc
	str r1, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl func_08050CC0
	str r0, [r7, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	adds r0, r7, #0
	adds r0, #0x10
	movs r1, #1
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x14
	movs r1, #2
	bl func_08008B54
	adds r4, r7, #0
	adds r4, #0x18
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #7
	bl func_08007B54
	str r0, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	lsls r1, r6, #0x1e
	lsls r6, r6, #0x19
	movs r2, #0x89
	lsls r2, r2, #3
	adds r4, r7, r2
	lsrs r1, r1, #0x1e
	ldrb r2, [r4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r4]
	lsrs r2, r6, #0x1b
	cmp r2, #0x1d
	bls .L0806DA78
	adds r0, r2, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r2, r0, #0
.L0806DA78:
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #2
	ldrb r1, [r4]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	ldr r3, .L0806DAB4 @ =0x0000044C
	adds r0, r7, r3
	mov r1, r8
	strh r1, [r0]
	ldr r2, .L0806DAB8 @ =0x0000044E
	adds r1, r7, r2
	movs r0, #2
	strh r0, [r1]
	ldrb r0, [r4]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq .L0806DAD4
	cmp r0, #1
	bgt .L0806DABC
	cmp r0, #0
	beq .L0806DAC6
	b .L0806DAF4
	.align 2, 0
.L0806DAB0: .4byte vtable_unk_080E7AC4
.L0806DAB4: .4byte 0x0000044C
.L0806DAB8: .4byte 0x0000044E
.L0806DABC:
	cmp r0, #2
	beq .L0806DAE0
	cmp r0, #3
	beq .L0806DAEC
	b .L0806DAF4
.L0806DAC6:
	ldr r3, .L0806DAD0 @ =0x00000449
	adds r1, r7, r3
	movs r0, #0
	b .L0806DAF2
	.align 2, 0
.L0806DAD0: .4byte 0x00000449
.L0806DAD4:
	ldr r0, .L0806DADC @ =0x00000449
	adds r1, r7, r0
	movs r0, #4
	b .L0806DAF2
	.align 2, 0
.L0806DADC: .4byte 0x00000449
.L0806DAE0:
	ldr r2, .L0806DAE8 @ =0x00000449
	adds r1, r7, r2
	movs r0, #8
	b .L0806DAF2
	.align 2, 0
.L0806DAE8: .4byte 0x00000449
.L0806DAEC:
	ldr r3, .L0806DB30 @ =0x00000449
	adds r1, r7, r3
	movs r0, #0xc
.L0806DAF2:
	strb r0, [r1]
.L0806DAF4:
	movs r1, #0x89
	lsls r1, r1, #3
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	ldr r2, .L0806DB34 @ =0x0000044A
	adds r1, r7, r2
	movs r2, #0
	strb r0, [r1]
	ldr r3, .L0806DB30 @ =0x00000449
	adds r0, r7, r3
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x38
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, #0xa
	strb r2, [r0]
	adds r0, r7, #0
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0806DB30: .4byte 0x00000449
.L0806DB34: .4byte 0x0000044A

	thumb_func_start func_0806DB38
func_0806DB38: @ 0x0806DB38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	adds r5, r1, #0
	adds r0, r5, #0
	bl func_08008724
	adds r0, r5, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r5, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L0806DBE4 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	adds r0, r5, #0
	bl func_0806E234
	adds r0, r5, #0
	bl func_0806E43C
	adds r0, r5, #0
	bl func_0806E578
	ldr r0, [sp, #4]
	ldr r1, .L0806DBE8 @ =0x00000889
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
	movs r0, #0
	mov r8, r0
	add r1, sp, #8
	mov sb, r1
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x14]
.L0806DBC0:
	adds r0, r5, #0
	bl func_080087C8
	adds r0, r5, #0
	bl func_080088B8
	ldr r1, .L0806DBEC @ =0x0000044C
	adds r0, r5, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	bls .L0806DBDA
	b .L0806DD3C
.L0806DBDA:
	lsls r0, r0, #2
	ldr r1, .L0806DBF0 @ =.L0806DBF4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0806DBE4: .4byte vtable_unk_080E5B80
.L0806DBE8: .4byte 0x00000889
.L0806DBEC: .4byte 0x0000044C
.L0806DBF0: .4byte .L0806DBF4
.L0806DBF4: @ jump table
	.4byte .L0806DC08 @ case 0
	.4byte .L0806DC20 @ case 1
	.4byte .L0806DC50 @ case 2
	.4byte .L0806DCF8 @ case 3
	.4byte .L0806DD2C @ case 4
.L0806DC08:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0806DC16
	b .L0806DD3C
.L0806DC16:
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #1
	strb r0, [r1]
	b .L0806DD16
.L0806DC20:
	adds r0, r5, #0
	bl func_0806DEC0
	adds r0, r5, #0
	bl func_0806E02C
	adds r0, r5, #0
	bl func_0806E164
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806DC48
	ldr r0, .L0806DC44 @ =0x0000044E
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	b .L0806DD16
	.align 2, 0
.L0806DC44: .4byte 0x0000044E
.L0806DC48:
	adds r0, r5, #0
	bl func_0806E1E8
	b .L0806DD3C
.L0806DC50:
	ldr r1, .L0806DC84 @ =0x0000044E
	adds r0, r5, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bne .L0806DD3C
	movs r1, #0x8a
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne .L0806DCE8
	ldr r1, .L0806DC88 @ =0x00000449
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	beq .L0806DC96
	cmp r0, #4
	bgt .L0806DC8C
	cmp r0, #0
	beq .L0806DC92
	b .L0806DC9E
	.align 2, 0
.L0806DC84: .4byte 0x0000044E
.L0806DC88: .4byte 0x00000449
.L0806DC8C:
	cmp r0, #8
	beq .L0806DC9A
	b .L0806DC9E
.L0806DC92:
	movs r2, #0
	b .L0806DCA0
.L0806DC96:
	movs r2, #1
	b .L0806DCA0
.L0806DC9A:
	movs r2, #2
	b .L0806DCA0
.L0806DC9E:
	movs r2, #3
.L0806DCA0:
	movs r0, #0x89
	lsls r0, r0, #3
	adds r6, r5, r0
	ldr r1, .L0806DCE4 @ =0x0000044A
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r4, #4
	rsbs r4, r4, #0
	ands r4, r7
	orrs r4, r2
	subs r1, r0, #1
	cmp r1, #0x1d
	bls .L0806DCC8
	adds r0, r1, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r1, r0, #0
.L0806DCC8:
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r4
	orrs r0, r1
	adds r7, r0, #0
	strb r0, [r6]
	adds r1, r5, #0
	adds r1, #0x44
	movs r0, #0
	strb r0, [r1]
	b .L0806DD16
	.align 2, 0
.L0806DCE4: .4byte 0x0000044A
.L0806DCE8:
	ldr r0, .L0806DCF4 @ =0x0000044C
	adds r1, r5, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	b .L0806DD3C
	.align 2, 0
.L0806DCF4: .4byte 0x0000044C
.L0806DCF8:
	ldr r0, [sp, #4]
	ldr r1, .L0806DD24 @ =0x00000889
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
.L0806DD16:
	ldr r0, .L0806DD28 @ =0x0000044C
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b .L0806DD3C
	.align 2, 0
.L0806DD24: .4byte 0x00000889
.L0806DD28: .4byte 0x0000044C
.L0806DD2C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0806DD3C
	movs r1, #1
	mov r8, r1
.L0806DD3C:
	adds r0, r5, #0
	bl func_0806DD9C
	adds r0, r5, #0
	bl func_0806E7E0
	mov r0, r8
	cmp r0, #0
	bne .L0806DD50
	b .L0806DBC0
.L0806DD50:
	movs r0, #0
	str r0, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x14]
	str r0, [r1, #4]
	mov r1, sb
	str r0, [r1]
	mov r1, sl
	str r0, [r1]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L0806DD76
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0806DD76:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L0806DD88
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0806DD88:
	mov r0, sl
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0806DD9C
func_0806DD9C: @ 0x0806DD9C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0xc]
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
	adds r1, #0x10
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bhi .L0806DEA4
	lsls r0, r0, #2
	ldr r1, .L0806DDF8 @ =.L0806DDFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0806DDF8: .4byte .L0806DDFC
.L0806DDFC: @ jump table
	.4byte .L0806DE18 @ case 0
	.4byte .L0806DEA4 @ case 1
	.4byte .L0806DEA4 @ case 2
	.4byte .L0806DE3A @ case 3
	.4byte .L0806DEA4 @ case 4
	.4byte .L0806DEA4 @ case 5
	.4byte .L0806DEA4 @ case 6
.L0806DE18:
	ldr r1, .L0806DE30 @ =0x0000044E
	adds r4, r7, r1
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne .L0806DE34
	ldr r0, [r7, #0xc]
	bl func_08050D5C
	movs r0, #3
	strh r0, [r4]
	b .L0806DEA4
	.align 2, 0
.L0806DE30: .4byte 0x0000044E
.L0806DE34:
	movs r0, #2
	strh r0, [r4]
	b .L0806DEA4
.L0806DE3A:
	ldr r0, .L0806DE50 @ =0x0000044E
	adds r5, r7, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #5
	bne .L0806DE54
	ldr r0, [r7, #0xc]
	bl func_08050D74
	movs r0, #1
	b .L0806DEA2
	.align 2, 0
.L0806DE50: .4byte 0x0000044E
.L0806DE54:
	cmp r0, #4
	bne .L0806DE84
	ldr r0, [r7, #0xc]
	bl func_08050DF0
	adds r1, r0, #0
	movs r0, #5
	strh r0, [r5]
	cmp r1, #1
	bne .L0806DE74
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #0
	strh r0, [r1]
	b .L0806DEA4
.L0806DE74:
	cmp r1, #2
	bne .L0806DEA4
	movs r0, #0x8a
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #1
	strh r0, [r1]
	b .L0806DEA4
.L0806DE84:
	cmp r0, #3
	bne .L0806DEA4
	movs r4, #0
	movs r0, #5
	strh r0, [r5]
	ldr r0, [r7, #0xc]
	ldr r1, .L0806DEB4 @ =gUnk_080FBD18
	ldr r2, .L0806DEB8 @ =gUnk_080FBD28
	ldr r3, .L0806DEBC @ =gUnk_080FBD2C
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	movs r0, #4
.L0806DEA2:
	strh r0, [r5]
.L0806DEA4:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0806DEB4: .4byte gUnk_080FBD18
.L0806DEB8: .4byte gUnk_080FBD28
.L0806DEBC: .4byte gUnk_080FBD2C

	thumb_func_start func_0806DEC0
func_0806DEC0: @ 0x0806DEC0
	push {r4, r5, lr}
	adds r4, r0, #0
	bl func_080088D4
	adds r1, r0, #0
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0806DF1A
	adds r5, r4, #0
	adds r5, #0x39
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne .L0806DEE0
	b .L0806E024
.L0806DEE0:
	adds r0, r4, #0
	adds r0, #0x14
	movs r1, #0xcb
	bl func_08008B6C
	ldrb r0, [r5]
	movs r1, #0
	ldrsb r1, [r5, r1]
	cmp r1, #1
	ble .L0806DEFA
	subs r0, #1
	strb r0, [r5]
	b .L0806E024
.L0806DEFA:
	cmp r1, #1
	beq .L0806DF00
	b .L0806E024
.L0806DF00:
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble .L0806DF14
	movs r0, #4
	strb r0, [r5]
	b .L0806E024
.L0806DF14:
	movs r0, #5
	strb r0, [r5]
	b .L0806E024
.L0806DF1A:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L0806DF5E
	adds r5, r4, #0
	adds r5, #0x39
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq .L0806E024
	adds r0, r4, #0
	adds r0, #0x14
	movs r1, #0xcb
	bl func_08008B6C
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #6
	beq .L0806DF58
	cmp r0, #5
	bne .L0806E024
	adds r0, r4, #0
	adds r0, #0x38
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble .L0806E024
.L0806DF58:
	movs r0, #1
	strb r0, [r5]
	b .L0806E024
.L0806DF5E:
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L0806DFBE
	adds r0, r4, #0
	adds r0, #0x14
	movs r1, #0xcb
	bl func_08008B6C
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne .L0806DF92
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r0, [r1]
	subs r0, #4
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge .L0806E024
	movs r0, #0xc
	strb r0, [r1]
	b .L0806E024
.L0806DF92:
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r0, [r1]
	subs r0, #2
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bge .L0806E024
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt .L0806DFB8
	movs r0, #5
	strb r0, [r2]
	movs r0, #3
	strb r0, [r1]
	b .L0806E024
.L0806DFB8:
	movs r0, #0xd
	strb r0, [r1]
	b .L0806E024
.L0806DFBE:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L0806E024
	adds r0, r4, #0
	adds r0, #0x14
	movs r1, #0xcb
	bl func_08008B6C
	adds r2, r4, #0
	adds r2, #0x39
	movs r3, #0
	ldrsb r3, [r2, r3]
	cmp r3, #0
	bne .L0806DFF2
	adds r1, r4, #0
	adds r1, #0x38
	ldrb r0, [r1]
	adds r0, #4
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xc
	ble .L0806E024
	strb r3, [r1]
	b .L0806E024
.L0806DFF2:
	adds r3, r4, #0
	adds r3, #0x38
	ldrb r0, [r3]
	adds r1, r0, #2
	strb r1, [r3]
	ldrb r4, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #5
	bne .L0806E014
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble .L0806E024
	movs r0, #1
	strb r0, [r2]
	b .L0806E022
.L0806E014:
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	ble .L0806E024
	adds r0, r4, #1
	strb r0, [r2]
	movs r0, #1
.L0806E022:
	strb r0, [r3]
.L0806E024:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0806E02C
func_0806E02C: @ 0x0806E02C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x38
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #4
	ldr r2, .L0806E068 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	ldrh r2, [r5, #0x3e]
	ldr r0, .L0806E06C @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r5, #0x3e]
	adds r1, r5, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble .L0806E070
	subs r0, #1
	lsls r1, r0, #3
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #0x40
	adds r0, r5, #0
	adds r0, #0x3c
	strb r1, [r0]
	b .L0806E078
	.align 2, 0
.L0806E068: .4byte 0x000001FF
.L0806E06C: .4byte 0xFFFFFE00
.L0806E070:
	adds r1, r5, #0
	adds r1, #0x3c
	movs r0, #0x28
	strb r0, [r1]
.L0806E078:
	adds r1, r5, #0
	adds r1, #0x39
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L0806E106
	adds r0, r5, #0
	adds r0, #0x38
	ldrb r1, [r0]
	ldr r2, .L0806E0A4 @ =0x00000449
	adds r0, r5, r2
	strb r1, [r0]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	beq .L0806E0C4
	cmp r0, #4
	bgt .L0806E0A8
	cmp r0, #0
	beq .L0806E0AE
	b .L0806E0F0
	.align 2, 0
.L0806E0A4: .4byte 0x00000449
.L0806E0A8:
	cmp r0, #8
	beq .L0806E0DA
	b .L0806E0F0
.L0806E0AE:
	adds r2, r5, #0
	adds r2, #0x4a
	movs r1, #0xf
	adds r0, r5, #0
	adds r0, #0x72
.L0806E0B8:
	strh r1, [r0]
	subs r1, #1
	subs r0, #8
	cmp r0, r2
	bge .L0806E0B8
	b .L0806E15A
.L0806E0C4:
	adds r2, r5, #0
	adds r2, #0x4a
	movs r1, #0x15
	adds r0, r5, #0
	adds r0, #0x72
.L0806E0CE:
	strh r1, [r0]
	subs r1, #1
	subs r0, #8
	cmp r0, r2
	bge .L0806E0CE
	b .L0806E15A
.L0806E0DA:
	adds r2, r5, #0
	adds r2, #0x4a
	movs r1, #0x1b
	adds r0, r5, #0
	adds r0, #0x72
.L0806E0E4:
	strh r1, [r0]
	subs r1, #1
	subs r0, #8
	cmp r0, r2
	bge .L0806E0E4
	b .L0806E15A
.L0806E0F0:
	adds r2, r5, #0
	adds r2, #0x4a
	movs r1, #0x21
	adds r0, r5, #0
	adds r0, #0x72
.L0806E0FA:
	strh r1, [r0]
	subs r1, #1
	subs r0, #8
	cmp r0, r2
	bge .L0806E0FA
	b .L0806E15A
.L0806E106:
	adds r0, r5, #0
	adds r0, #0x38
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsrs r0, r2, #0x1f
	adds r2, r2, r0
	asrs r2, r2, #1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r1, #1
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r2, r2, r0
	adds r2, #1
	ldr r1, .L0806E160 @ =0x0000044A
	adds r0, r5, r1
	strb r2, [r0]
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r6, r0, #0x18
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r7, r0, #0
	movs r1, #0x1a
	cmp r0, #0
	beq .L0806E150
	adds r1, r7, #0
.L0806E150:
	adds r0, r5, #0
	adds r0, #0x7a
	strh r1, [r0]
	adds r0, #8
	strh r6, [r0]
.L0806E15A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0806E160: .4byte 0x0000044A

	thumb_func_start func_0806E164
func_0806E164: @ 0x0806E164
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0
	movs r5, #0
	bl func_080088D4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L0806E186
	adds r0, r4, #0
	bl func_080088D4
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L0806E188
.L0806E186:
	movs r5, #1
.L0806E188:
	cmp r5, #0
	beq .L0806E1DE
	adds r0, r4, #0
	adds r0, #0x14
	movs r1, #0x6a
	bl func_08008B6C
	adds r6, r4, #0
	adds r6, #0x39
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne .L0806E1DC
	adds r5, r4, #0
	adds r5, #0x38
	ldrb r0, [r5]
	adds r1, r4, #0
	adds r1, #0x3a
	strb r0, [r1]
	ldr r0, .L0806E1D8 @ =0x0000044A
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r0, #1
	movs r1, #7
	bl __divsi3
	adds r0, #1
	strb r0, [r6]
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r0, #1
	movs r1, #7
	bl __modsi3
	lsls r0, r0, #1
	adds r0, #1
	strb r0, [r5]
	b .L0806E1DE
	.align 2, 0
.L0806E1D8: .4byte 0x0000044A
.L0806E1DC:
	movs r7, #1
.L0806E1DE:
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0806E1E8
func_0806E1E8: @ 0x0806E1E8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	bl func_080088D4
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0806E22A
	adds r0, r4, #0
	adds r0, #0x14
	movs r1, #0x6c
	bl func_08008B6C
	adds r2, r4, #0
	adds r2, #0x39
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	ble .L0806E228
	adds r0, r4, #0
	adds r0, #0x3a
	ldrb r1, [r0]
	subs r0, #2
	strb r1, [r0]
	strb r5, [r2]
	adds r0, #0x42
	movs r1, #0x22
	strh r1, [r0]
	adds r0, #8
	strh r1, [r0]
	b .L0806E22A
.L0806E228:
	movs r5, #1
.L0806E22A:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0806E234
func_0806E234: @ 0x0806E234
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
	ldr r1, .L0806E400 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, .L0806E404 @ =0x0600E000
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
	adds r0, r4, #0
	mov r1, sb
	mov r2, r8
	bl func_08008EB8
	ldr r2, .L0806E408 @ =0x0600E800
	mov sl, r2
	adds r0, r4, #0
	mov r1, sl
	mov r2, r8
	bl func_08008EB8
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r3, #0xc2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r5, #0
	strh r2, [r0]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L0806E40C @ =0x00001C03
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	ldr r0, .L0806E410 @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L0806E414 @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L0806E418 @ =0x00030003
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
	ldr r0, .L0806E41C @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r0, .L0806E420 @ =0x05000040
	movs r1, #0xf8
	lsls r1, r1, #2
	mov r8, r1
	strh r1, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	ldr r2, .L0806E424 @ =0x00004218
	mov sb, r2
	strh r2, [r0]
	adds r4, r6, #0
	adds r4, #0x20
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L0806E428 @ =0x05000200
	adds r0, r0, r3
	mov r1, r8
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L0806E42C @ =0x05000202
	adds r0, r0, r2
	strh r5, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L0806E430 @ =0x05000204
	adds r0, r0, r3
	mov r1, sb
	strh r1, [r0]
	add r2, sp, #0x54
	mov sb, r2
	add r3, sp, #0x14
	mov r8, r3
	movs r7, #1
	movs r0, #2
	mov sl, r0
	adds r6, #0x18
.L0806E3A8:
	ldr r0, .L0806E434 @ =gUnk_080FBD30
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	add r0, sp, #0x54
	strh r7, [r0]
	mov r3, sl
	mov r2, sb
	strh r3, [r2, #2]
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
	ldr r2, .L0806E438 @ =0x06010000
	adds r1, r1, r2
	mov r0, r8
	movs r2, #0x40
	bl func_08008E64
	adds r5, #1
	cmp r5, #0x2a
	ble .L0806E3A8
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0806E400: .4byte 0x06007FE0
.L0806E404: .4byte 0x0600E000
.L0806E408: .4byte 0x0600E800
.L0806E40C: .4byte 0x00001C03
.L0806E410: .4byte gUnk_080F9F70
.L0806E414: .4byte gUnk_080F9F74
.L0806E418: .4byte 0x00030003
.L0806E41C: .4byte gUnk_080F9F78
.L0806E420: .4byte 0x05000040
.L0806E424: .4byte 0x00004218
.L0806E428: .4byte 0x05000200
.L0806E42C: .4byte 0x05000202
.L0806E430: .4byte 0x05000204
.L0806E434: .4byte gUnk_080FBD30
.L0806E438: .4byte 0x06010000

	thumb_func_start func_0806E43C
func_0806E43C: @ 0x0806E43C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldr r0, .L0806E550 @ =gUnk_080F9F78
	ldr r4, [r0]
	mov r5, r8
	adds r5, #0x30
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_080074C0
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r0, .L0806E554 @ =0x05000200
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl func_08008E64
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L0806E558 @ =0x0500020E
	adds r0, r0, r1
	ldr r2, .L0806E55C @ =0x0000027F
	adds r1, r2, #0
	strh r1, [r0]
	mov r6, r8
	adds r6, #0x3c
	movs r0, #0
	adds r1, r6, #0
	movs r2, #8
	bl func_08008EB8
	mov r3, r8
	adds r3, #0x3f
	ldrb r2, [r3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	movs r2, #0x40
	orrs r0, r2
	strb r0, [r3]
	mov r2, r8
	adds r2, #0x3d
	ldrb r0, [r2]
	ands r1, r0
	movs r0, #0xd
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #4
	orrs r1, r0
	strb r1, [r2]
	mov r4, r8
	adds r4, #0x28
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r3, r8
	adds r3, #0x40
	ldr r2, .L0806E560 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldrh r2, [r3]
	ldr r1, .L0806E564 @ =0xFFFFFC00
	ands r1, r2
	orrs r1, r0
	strh r1, [r3]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_080074C0
	mov r3, r8
	adds r3, #0x41
	lsls r0, r0, #4
	ldrb r2, [r3]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r0
	movs r0, #0xc
	orrs r1, r0
	strb r1, [r3]
	movs r7, #0
	mov sl, r6
	movs r0, #0x38
	add r0, r8
	mov sb, r0
.L0806E4F6:
	movs r5, #0
	adds r6, r7, #1
.L0806E4FA:
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r0, r0, r7
	lsls r0, r0, #5
	lsls r1, r5, #2
	adds r0, r0, r1
	ldr r1, .L0806E568 @ =0x06010000
	adds r0, r0, r1
	ldr r1, .L0806E56C @ =0x77777777
	str r1, [r0]
	adds r5, #1
	cmp r5, #7
	ble .L0806E4FA
	adds r7, r6, #0
	cmp r7, #7
	ble .L0806E4F6
	mov r2, sb
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #4
	ldr r2, .L0806E570 @ =0x000001FF
	adds r0, r2, #0
	ands r1, r0
	mov r0, r8
	ldrh r2, [r0, #0x3e]
	ldr r0, .L0806E574 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	mov r1, r8
	strh r0, [r1, #0x3e]
	movs r0, #0x28
	mov r2, sl
	strb r0, [r2]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0806E550: .4byte gUnk_080F9F78
.L0806E554: .4byte 0x05000200
.L0806E558: .4byte 0x0500020E
.L0806E55C: .4byte 0x0000027F
.L0806E560: .4byte 0x000003FF
.L0806E564: .4byte 0xFFFFFC00
.L0806E568: .4byte 0x06010000
.L0806E56C: .4byte 0x77777777
.L0806E570: .4byte 0x000001FF
.L0806E574: .4byte 0xFFFFFE00

	thumb_func_start func_0806E578
func_0806E578: @ 0x0806E578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	ldr r1, .L0806E5A8 @ =0x00000446
	adds r0, r6, r1
	movs r1, #0
	strh r1, [r0]
	ldr r2, .L0806E5AC @ =0x00000449
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	beq .L0806E5C8
	cmp r0, #4
	bgt .L0806E5B0
	cmp r0, #0
	beq .L0806E5B6
	b .L0806E5EC
	.align 2, 0
.L0806E5A8: .4byte 0x00000446
.L0806E5AC: .4byte 0x00000449
.L0806E5B0:
	cmp r0, #8
	beq .L0806E5DA
	b .L0806E5EC
.L0806E5B6:
	movs r1, #0xf
	add r0, sp, #0x18
.L0806E5BA:
	str r1, [r0]
	subs r1, #1
	subs r0, #4
	add r2, sp, #4
	cmp r0, r2
	bge .L0806E5BA
	b .L0806E5FC
.L0806E5C8:
	movs r1, #0x15
	add r0, sp, #0x18
.L0806E5CC:
	str r1, [r0]
	subs r1, #1
	subs r0, #4
	add r2, sp, #4
	cmp r0, r2
	bge .L0806E5CC
	b .L0806E5FC
.L0806E5DA:
	movs r1, #0x1b
	add r0, sp, #0x18
.L0806E5DE:
	str r1, [r0]
	subs r1, #1
	subs r0, #4
	add r2, sp, #4
	cmp r0, r2
	bge .L0806E5DE
	b .L0806E5FC
.L0806E5EC:
	movs r1, #0x21
	add r0, sp, #0x18
.L0806E5F0:
	str r1, [r0]
	subs r1, #1
	subs r0, #4
	add r2, sp, #4
	cmp r0, r2
	bge .L0806E5F0
.L0806E5FC:
	add r4, sp, #4
	ldr r1, .L0806E788 @ =0x0000044A
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne .L0806E618
	movs r0, #0x1a
.L0806E618:
	str r0, [r4, #0x18]
	ldr r2, .L0806E788 @ =0x0000044A
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x20]
	add r7, sp, #4
	movs r5, #0x78
	movs r0, #1
	mov r8, r0
	movs r4, #5
.L0806E63A:
	ldm r7!, {r3}
	mov r1, r8
	str r1, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #8
	bl func_0806E78C
	adds r5, #8
	subs r4, #1
	cmp r4, #0
	bge .L0806E63A
	ldr r3, [sp, #0x1c]
	movs r4, #1
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0xc0
	movs r2, #8
	bl func_0806E78C
	ldr r3, [sp, #0x20]
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0xc8
	movs r2, #8
	bl func_0806E78C
	movs r1, #0
.L0806E672:
	movs r2, #0
	mov sb, r2
	lsls r0, r1, #3
	adds r2, r1, #1
	mov sl, r2
	adds r0, r0, r1
	lsls r5, r0, #1
	movs r0, #0x18
	mov r8, r0
	movs r7, #0x10
.L0806E686:
	cmp r4, #9
	bls .L0806E6A8
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r1, #3
	str r1, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r5, #0
	adds r2, #0x40
	bl func_0806E78C
.L0806E6A8:
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r3, r0, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r2, #3
	str r2, [sp]
	adds r0, r6, #0
	mov r1, r8
	adds r2, r5, #0
	adds r2, #0x40
	bl func_0806E78C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1e
	bhi .L0806E6E0
	movs r0, #0x20
	add r8, r0
	adds r7, #0x20
	movs r1, #1
	add sb, r1
	mov r2, sb
	cmp r2, #6
	ble .L0806E686
.L0806E6E0:
	mov r1, sl
	cmp r1, #4
	ble .L0806E672
	movs r4, #0
	movs r5, #3
.L0806E6EA:
	lsls r1, r4, #3
	adds r3, r4, #0
	adds r3, #0xa
	str r5, [sp]
	adds r0, r6, #0
	movs r2, #0x28
	bl func_0806E78C
	adds r4, #1
	cmp r4, #5
	ble .L0806E6EA
	movs r4, #0
	movs r7, #3
	movs r5, #0x40
.L0806E706:
	adds r3, r4, #0
	adds r3, #0x10
	str r7, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x28
	bl func_0806E78C
	adds r5, #8
	adds r4, #1
	cmp r4, #5
	ble .L0806E706
	movs r4, #0
	movs r7, #3
	movs r5, #0x80
.L0806E724:
	adds r3, r4, #0
	adds r3, #0x16
	str r7, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x28
	bl func_0806E78C
	adds r5, #8
	adds r4, #1
	cmp r4, #5
	ble .L0806E724
	movs r4, #0
	movs r7, #3
	movs r5, #0xc0
.L0806E742:
	adds r3, r4, #0
	adds r3, #0x1c
	str r7, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x28
	bl func_0806E78C
	adds r5, #8
	adds r4, #1
	cmp r4, #5
	ble .L0806E742
	movs r4, #0
	movs r7, #3
	movs r5, #8
.L0806E760:
	adds r3, r4, #0
	adds r3, #0x23
	str r7, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #8
	bl func_0806E78C
	adds r5, #8
	adds r4, #1
	cmp r4, #7
	ble .L0806E760
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0806E788: .4byte 0x0000044A

	thumb_func_start func_0806E78C
func_0806E78C: @ 0x0806E78C
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r6, [sp, #0x10]
	ldr r5, .L0806E7DC @ =0x00000446
	add r5, ip
	movs r0, #0
	ldrsh r4, [r5, r0]
	lsls r4, r4, #3
	mov r0, ip
	adds r0, #0x46
	adds r0, r0, r4
	strh r1, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	mov r0, ip
	adds r0, #0x48
	adds r0, r0, r1
	strh r2, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	mov r0, ip
	adds r0, #0x4a
	adds r0, r0, r1
	strh r3, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	mov r0, ip
	adds r0, #0x4c
	adds r0, r0, r1
	strh r6, [r0]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0806E7DC: .4byte 0x00000446

	thumb_func_start func_0806E7E0
func_0806E7E0: @ 0x0806E7E0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r1, .L0806E998 @ =0xFFFFFCFF
	ldr r0, [sp]
	ands r0, r1
	ldr r1, .L0806E99C @ =0xFFFFF3FF
	ands r0, r1
	ldr r1, .L0806E9A0 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L0806E9A4 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L0806E9A8 @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L0806E9AC @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L0806E9B0 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L0806E9B4 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x20
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0806E9B8 @ =0xFFFF0FFF
	ldr r1, [sp, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L0806E9BC @ =0x0000FFFF
	ands r1, r0
	str r1, [sp, #4]
	movs r1, #0x80
	lsls r1, r1, #5
	ldr r0, [sp]
	orrs r0, r1
	str r0, [sp]
	ldr r1, .L0806E9C0 @ =0x00000446
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r7, r0, #1
	cmp r7, #0
	blt .L0806E8DA
	mov r6, sp
.L0806E84C:
	lsls r4, r7, #3
	adds r0, r5, #0
	adds r0, #0x4c
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #0xa
	ldr r2, .L0806E99C @ =0xFFFFF3FF
	ldr r0, [r6, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r6, #4]
	adds r0, r5, #0
	adds r0, #0x46
	adds r0, r0, r4
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, .L0806E9C4 @ =0x000001FF
	ands r2, r0
	lsls r2, r2, #0x10
	ldr r0, .L0806E9C8 @ =0xFE00FFFF
	ldr r1, [sp]
	ands r1, r0
	orrs r1, r2
	adds r0, r5, #0
	adds r0, #0x48
	adds r0, r0, r4
	ldrb r2, [r0]
	ldr r0, .L0806E9CC @ =0xFFFFFF00
	ands r1, r0
	orrs r1, r2
	str r1, [sp]
	adds r0, r5, #0
	adds r0, #0x18
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r5, #0
	adds r1, #0x4a
	adds r1, r1, r4
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0806E9D0 @ =0xFFFFFC00
	ldr r1, [r6, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r6, #4]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0806E8D4
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp]
	str r0, [r1]
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L0806E8D4:
	subs r7, #1
	cmp r7, #0
	bge .L0806E84C
.L0806E8DA:
	adds r0, r5, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0806E990
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0806E908
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [r5, #0x3c]
	str r1, [r0]
	adds r1, r5, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L0806E908:
	adds r0, r5, #0
	adds r0, #0x39
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne .L0806E990
	adds r4, r5, #0
	adds r4, #0x38
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #4
	adds r0, #0x10
	ldr r1, .L0806E9C4 @ =0x000001FF
	adds r7, r1, #0
	ands r0, r7
	ldrh r2, [r5, #0x3e]
	ldr r6, .L0806E9D4 @ =0xFFFFFE00
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r5, #0x3e]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0806E958
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [r5, #0x3c]
	str r1, [r0]
	adds r1, r5, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L0806E958:
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #4
	adds r0, #0x20
	ands r0, r7
	ldrh r2, [r5, #0x3e]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r5, #0x3e]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0806E990
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [r5, #0x3c]
	str r1, [r0]
	adds r1, r5, #0
	adds r1, #0x40
	ldrh r1, [r1]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L0806E990:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0806E998: .4byte 0xFFFFFCFF
.L0806E99C: .4byte 0xFFFFF3FF
.L0806E9A0: .4byte 0xFFFFDFFF
.L0806E9A4: .4byte 0xFFFF3FFF
.L0806E9A8: .4byte 0xF1FFFFFF
.L0806E9AC: .4byte 0xEFFFFFFF
.L0806E9B0: .4byte 0xDFFFFFFF
.L0806E9B4: .4byte 0x3FFFFFFF
.L0806E9B8: .4byte 0xFFFF0FFF
.L0806E9BC: .4byte 0x0000FFFF
.L0806E9C0: .4byte 0x00000446
.L0806E9C4: .4byte 0x000001FF
.L0806E9C8: .4byte 0xFE00FFFF
.L0806E9CC: .4byte 0xFFFFFF00
.L0806E9D0: .4byte 0xFFFFFC00
.L0806E9D4: .4byte 0xFFFFFE00

	thumb_func_start func_0806E9D8
func_0806E9D8: @ 0x0806E9D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L0806E9F8 @ =vtable_unk_080E7AD0
	str r0, [r4]
	ldr r0, .L0806E9FC @ =0x00000454
	bl __builtin_new
	adds r1, r5, #0
	bl func_0806D990
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L0806E9F8: .4byte vtable_unk_080E7AD0
.L0806E9FC: .4byte 0x00000454

