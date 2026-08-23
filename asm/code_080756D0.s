	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_080756D0
func_080756D0: @ 0x080756D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov r8, r0
	mov sl, r1
	ldr r0, .L080756F8 @ =vtable_unk_080E7B5C
	mov r1, r8
	str r0, [r1, #4]
	ldr r0, [r1]
	cmp r0, #0
	beq .L080757C8
	adds r5, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r0, #8]
	str r1, [sp]
	str r0, [sp, #4]
	b .L08075710
	.align 2, 0
.L080756F8: .4byte vtable_unk_080E7B5C
.L080756FC:
	ldr r0, [sp]
	ldr r1, [r0, #0x14]
	adds r0, r5, #0
	bl func_08007C28
	ldr r0, [sp]
	bl func_080E2B28
	str r0, [sp]
	ldr r1, [sp, #4]
.L08075710:
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080756FC
	adds r0, r5, #0
	adds r0, #0x18
	ldr r1, [r0, #4]
	ldr r2, [r1, #8]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	eors r2, r1
	rsbs r1, r2, #0
	orrs r1, r2
	adds r2, r5, #4
	mov sb, r2
	adds r7, r0, #0
	adds r6, r5, #0
	adds r6, #0x14
	cmp r1, #0
	bge .L08075758
.L0807573A:
	ldr r0, [sp, #8]
	ldr r1, [r0, #0x14]
	adds r0, r6, #0
	bl func_080073E0
	ldr r0, [sp, #8]
	bl func_080E2B28
	str r0, [sp, #8]
	ldr r2, [sp, #0xc]
	eors r2, r0
	rsbs r1, r2, #0
	orrs r1, r2
	cmp r1, #0
	blt .L0807573A
.L08075758:
	adds r4, r7, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq .L0807577A
	ldr r0, [r4, #4]
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl func_080E2B88
	ldr r0, [r4, #4]
	str r0, [r0, #8]
	ldr r0, [r4, #4]
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, [r4, #4]
	str r0, [r0, #0xc]
	str r1, [r4, #8]
.L0807577A:
	ldr r0, [r7, #4]
	cmp r0, #0
	beq .L08075784
	bl free
.L08075784:
	adds r0, r6, #0
	movs r1, #2
	bl func_08007184
	mov r4, sb
	ldr r0, [r4, #8]
	cmp r0, #0
	beq .L080757AE
	ldr r0, [r4, #4]
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl func_080E2B5C
	ldr r0, [r4, #4]
	str r0, [r0, #8]
	ldr r0, [r4, #4]
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, [r4, #4]
	str r0, [r0, #0xc]
	str r1, [r4, #8]
.L080757AE:
	mov r1, sb
	ldr r0, [r1, #4]
	cmp r0, #0
	beq .L080757BA
	bl free
.L080757BA:
	adds r0, r5, #0
	movs r1, #2
	bl func_080079E8
	adds r0, r5, #0
	bl __builtin_delete
.L080757C8:
	movs r0, #1
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq .L080757D8
	mov r0, r8
	bl __builtin_delete
.L080757D8:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080757E8
func_080757E8: @ 0x080757E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	ldr r0, [r0]
	mov sb, r0
	ldr r0, [r1, #8]
	str r0, [sp, #0x24]
	ldr r2, [r1, #0x10]
	str r2, [sp, #0x28]
	ldr r7, [r1]
	movs r0, #0
	cmp r7, #0
	beq .L0807580A
	ldrh r0, [r1, #4]
.L0807580A:
	lsls r0, r0, #3
	adds r0, r7, r0
	str r0, [sp, #0x2c]
	cmp r7, r0
	bne .L08075816
	b .L080759FE
.L08075816:
	ldr r1, .L08075874 @ =0x53216420
	ldrb r0, [r7, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq .L08075822
	ldr r1, .L08075878 @ =0x00005321
.L08075822:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	lsls r0, r0, #2
	adds r6, r1, #0
	lsrs r6, r0
	movs r0, #0xf
	ands r6, r0
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x11
	ldr r2, [sp, #0x24]
	adds r1, r2, r0
	str r1, [sp, #0x1c]
	mov r5, sp
	mov r0, sb
	adds r0, #4
	ldr r3, [r0, #4]
	ldr r2, [r3, #4]
	mov r8, r0
	movs r0, #0x18
	add r0, sb
	mov sl, r0
	mov r0, sp
	adds r0, #0x20
	str r0, [sp, #0x30]
	adds r0, r7, #0
	adds r0, #8
	str r0, [sp, #0x34]
	cmp r2, #0
	beq .L08075882
	adds r4, r1, #0
.L08075860:
	movs r1, #0
	ldr r0, [r2, #0x10]
	cmp r0, r4
	bhs .L0807586A
	movs r1, #1
.L0807586A:
	cmp r1, #0
	bne .L0807587C
	adds r3, r2, #0
	ldr r2, [r3, #8]
	b .L0807587E
	.align 2, 0
.L08075874: .4byte 0x53216420
.L08075878: .4byte 0x00005321
.L0807587C:
	ldr r2, [r2, #0xc]
.L0807587E:
	cmp r2, #0
	bne .L08075860
.L08075882:
	str r3, [r5]
	movs r3, #0
	mov r1, r8
	ldr r0, [r1, #4]
	str r0, [sp, #4]
	movs r2, #0
	ldr r1, [sp]
	cmp r1, r0
	bne .L08075896
	movs r2, #1
.L08075896:
	cmp r2, #0
	bne .L080758A2
	ldr r1, [r1, #0x10]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	beq .L080758A4
.L080758A2:
	movs r3, #1
.L080758A4:
	cmp r3, #0
	beq .L080758E8
	mov r0, sb
	adds r1, r6, #0
	bl func_08007B54
	adds r5, r0, #0
	cmp r5, #0
	beq .L08075956
	ldr r1, [sp]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #8
	mov r1, r8
	add r2, sp, #0x18
	add r3, sp, #0x10
	bl func_080E2444
	ldr r4, [sp, #0x1c]
	mov r0, sb
	adds r1, r5, #0
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r2, .L080758E4 @ =0x06010000
	adds r1, r1, r2
	b .L0807591E
	.align 2, 0
.L080758E4: .4byte 0x06010000
.L080758E8:
	ldr r0, [sp]
	ldr r1, [r0, #0x14]
	mov r0, sb
	bl func_08007DB8
	cmp r0, r6
	bhs .L08075956
	ldr r0, [sp]
	ldr r1, [r0, #0x14]
	mov r0, sb
	bl func_08007C28
	mov r0, sb
	adds r1, r6, #0
	bl func_08007B54
	adds r1, r0, #0
	cmp r1, #0
	beq .L08075930
	ldr r4, [sp, #0x1c]
	mov r0, sb
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r0, .L0807592C @ =0x06010000
	adds r1, r1, r0
.L0807591E:
	movs r2, #0x20
	lsls r2, r6
	adds r0, r4, #0
	bl func_08008E64
	b .L08075956
	.align 2, 0
.L0807592C: .4byte 0x06010000
.L08075930:
	ldr r0, [sp]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r1, r8
	ldr r3, [r1, #4]
	adds r1, r3, #4
	adds r2, r3, #0
	adds r2, #8
	adds r3, #0xc
	bl func_080E25FC
	cmp r0, #0
	beq .L0807594E
	bl free
.L0807594E:
	mov r2, r8
	ldr r0, [r2, #8]
	subs r0, #1
	str r0, [r2, #8]
.L08075956:
	ldrb r0, [r7, #5]
	lsrs r0, r0, #4
	lsls r0, r0, #5
	ldr r1, [sp, #0x28]
	adds r0, r1, r0
	str r0, [sp, #0x20]
	mov r5, sp
	mov r2, sl
	ldr r3, [r2, #4]
	ldr r1, [r3, #4]
	cmp r1, #0
	beq .L0807598C
	ldr r0, [sp, #0x30]
	ldr r4, [r0]
.L08075972:
	movs r2, #0
	ldr r0, [r1, #0x10]
	cmp r0, r4
	bhs .L0807597C
	movs r2, #1
.L0807597C:
	cmp r2, #0
	bne .L08075986
	adds r3, r1, #0
	ldr r1, [r3, #8]
	b .L08075988
.L08075986:
	ldr r1, [r1, #0xc]
.L08075988:
	cmp r1, #0
	bne .L08075972
.L0807598C:
	str r3, [r5]
	movs r3, #0
	mov r1, sl
	ldr r0, [r1, #4]
	str r0, [sp, #4]
	movs r2, #0
	ldr r1, [sp]
	cmp r1, r0
	bne .L080759A0
	movs r2, #1
.L080759A0:
	cmp r2, #0
	bne .L080759AC
	ldr r1, [r1, #0x10]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	beq .L080759AE
.L080759AC:
	movs r3, #1
.L080759AE:
	cmp r3, #0
	beq .L080759F4
	mov r6, sb
	adds r6, #0x14
	adds r0, r6, #0
	bl func_0800736C
	adds r5, r0, #0
	cmp r5, #0
	beq .L080759F4
	ldr r1, [sp]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #8
	mov r1, sl
	add r2, sp, #0x18
	add r3, sp, #0x10
	bl func_080E2970
	ldr r4, [sp, #0x20]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080074C0
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r2, .L08075A10 @ =0x05000200
	adds r1, r1, r2
	adds r0, r4, #0
	movs r2, #0x20
	bl func_08008E64
.L080759F4:
	ldr r7, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	cmp r7, r0
	beq .L080759FE
	b .L08075816
.L080759FE:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08075A10: .4byte 0x05000200
.L08075A14:
	.byte 0xF0, 0xB5, 0x81, 0xB0, 0x05, 0x68, 0x00, 0x91, 0x2E, 0x1D, 0x6F, 0x46
	.byte 0x74, 0x68, 0x62, 0x68, 0x00, 0x2A, 0x0B, 0xD0, 0x00, 0x23, 0x10, 0x69, 0x88, 0x42, 0x00, 0xD2
	.byte 0x01, 0x23, 0x00, 0x2B, 0x02, 0xD1, 0x14, 0x1C, 0xA2, 0x68, 0xF3, 0xE7, 0xD2, 0x68, 0xF1, 0xE7
	.byte 0x73, 0x68, 0x9C, 0x42, 0x07, 0xD0, 0x00, 0x22, 0x39, 0x68, 0x20, 0x69, 0x81, 0x42, 0x00, 0xD2
	.byte 0x01, 0x22, 0x00, 0x2A, 0x00, 0xD0, 0x1C, 0x1C, 0xA9, 0x68, 0x61, 0x40, 0x48, 0x42, 0x08, 0x43
	.byte 0x00, 0x28, 0x04, 0xDA, 0x61, 0x69, 0x28, 0x1C, 0x92, 0xF7, 0x70, 0xF9, 0x01, 0xE0, 0x01, 0x20
	.byte 0x40, 0x42, 0x01, 0xB0, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0xF0, 0xB5, 0x81, 0xB0
	.byte 0x05, 0x68, 0x00, 0x91, 0x2E, 0x1C, 0x18, 0x36, 0x6F, 0x46, 0x74, 0x68, 0x62, 0x68, 0x00, 0x2A
	.byte 0x0B, 0xD0, 0x00, 0x23, 0x10, 0x69, 0x88, 0x42, 0x00, 0xD2, 0x01, 0x23, 0x00, 0x2B, 0x02, 0xD1
	.byte 0x14, 0x1C, 0xA2, 0x68, 0xF3, 0xE7, 0xD2, 0x68, 0xF1, 0xE7, 0x73, 0x68, 0x9C, 0x42, 0x07, 0xD0
	.byte 0x00, 0x22, 0x39, 0x68, 0x20, 0x69, 0x81, 0x42, 0x00, 0xD2, 0x01, 0x22, 0x00, 0x2A, 0x00, 0xD0
	.byte 0x1C, 0x1C, 0xE9, 0x69, 0x61, 0x40, 0x48, 0x42, 0x08, 0x43, 0x00, 0x28, 0x05, 0xDA, 0x28, 0x1C
	.byte 0x14, 0x30, 0x61, 0x69, 0x91, 0xF7, 0xF4, 0xFC, 0x01, 0xE0, 0x01, 0x20, 0x40, 0x42, 0x01, 0xB0
	.byte 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start func_08075AE8
func_08075AE8: @ 0x08075AE8
	push {r4, lr}
	sub sp, #4
	ldr r4, [sp, #0xc]
	ldr r0, [r0]
	str r4, [sp]
	bl func_080E2BB4
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08075B00
func_08075B00: @ 0x08075B00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x44
	adds r6, r0, #0
	adds r5, r1, #0
	str r2, [r6]
	str r3, [r6, #0x14]
	adds r7, r6, #0
	adds r7, #0x18
	movs r0, #0
	str r0, [r6, #0x18]
	str r0, [r7, #4]
	adds r1, r6, #0
	adds r1, #0x20
	str r0, [r1, #4]
	cmp r5, #0
	beq .L08075B3E
	lsls r4, r5, #6
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08075B42
	mov r0, r8
	bl func_080D3BC0
	b .L08075B42
.L08075B3E:
	movs r0, #0
	mov r8, r0
.L08075B42:
	str r0, [r7]
	str r0, [r7, #4]
	add r0, r8
	str r0, [r7, #0xc]
	add r0, sp, #4
	movs r1, #0
	movs r2, #0x40
	bl memset
	ldr r4, [r7]
	movs r0, #0x28
	adds r0, r0, r6
	mov sb, r0
	lsls r1, r5, #3
	mov sl, r1
	cmp r5, #0
	beq .L08075B7A
.L08075B64:
	cmp r4, #0
	beq .L08075B72
	adds r0, r4, #0
	add r1, sp, #4
	movs r2, #0x40
	bl memcpy
.L08075B72:
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bne .L08075B64
.L08075B7A:
	str r4, [r7, #4]
	movs r4, #0
	str r4, [r6, #0x28]
	mov r0, sb
	str r4, [r0, #4]
	ldr r0, .L08075BC0 @ =vtable_unk_080E7B68
	mov r1, sb
	str r0, [r1, #8]
	ldr r0, [r6, #0x18]
	movs r1, #0xff
	mov r2, r8
	bl memset
	mov r0, sl
	strh r0, [r6, #4]
	ldr r0, .L08075BC4 @ =0x0000FFFF
	strh r0, [r6, #6]
	strh r4, [r6, #8]
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r6, #0xa]
	strh r4, [r6, #0xc]
	movs r0, #0xa0
	strh r0, [r6, #0xe]
	ldr r0, [sp, #0x64]
	str r0, [r6, #0x10]
	adds r0, r6, #0
	add sp, #0x44
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08075BC0: .4byte vtable_unk_080E7B68
.L08075BC4: .4byte 0x0000FFFF

	thumb_func_start func_08075BC8
func_08075BC8: @ 0x08075BC8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r7, #0
	adds r6, #0x28
	ldr r1, [r7, #0x28]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08075C80
	cmp r5, #0
	bne .L08075BE4
	cmp r2, #0
	beq .L08075C80
.L08075BE4:
	subs r0, r2, r5
	cmp r0, #0x20
	ble .L08075BEE
	adds r5, r2, #0
	adds r5, #0x20
.L08075BEE:
	movs r0, #0x1f
	mov ip, r0
	mov r1, ip
	ands r1, r2
	mov ip, r1
	subs r4, r2, r5
	cmp ip, r4
	bhs .L08075C3A
	cmp r1, #0
	beq .L08075C3A
	subs r2, r4, r1
	ldr r4, [r7, #0x18]
	lsls r3, r5, #6
	adds r3, r4, r3
	movs r1, #0x20
	subs r1, r1, r2
	adds r0, r5, r2
	lsls r0, r0, #6
	adds r4, r4, r0
	lsls r1, r1, #6
	ldr r0, [r7, #0x10]
	adds r1, r1, r0
	lsls r2, r2, #6
	mov r5, ip
	lsls r5, r5, #6
	str r3, [r6, #0xc]
	str r1, [r6, #0x10]
	str r2, [r6, #0x14]
	str r4, [r6, #0x18]
	str r0, [r6, #0x1c]
	str r5, [r6, #0x20]
	ldr r0, [r7]
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	adds r1, r6, #0
	bl _call_via_r2
	b .L08075C68
.L08075C3A:
	ldr r3, [r7, #0x18]
	lsls r0, r5, #6
	adds r3, r3, r0
	movs r0, #0x1f
	ands r0, r5
	adds r1, r7, #0
	adds r1, #0x28
	lsls r0, r0, #6
	ldr r2, [r7, #0x10]
	adds r0, r0, r2
	lsls r4, r4, #6
	movs r2, #0
	str r3, [r1, #0xc]
	str r0, [r1, #0x10]
	str r4, [r1, #0x14]
	str r2, [r1, #0x18]
	str r2, [r1, #0x1c]
	str r2, [r1, #0x20]
	ldr r0, [r7]
	ldr r2, [r0, #8]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L08075C68:
	movs r1, #0xc
	ldrsh r0, [r7, r1]
	adds r1, r0, #0
	cmp r0, #0
	bge .L08075C74
	adds r1, r0, #7
.L08075C74:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r0, r1
	ldrh r0, [r7, #0xc]
	subs r0, r0, r1
	strh r0, [r7, #0xa]
.L08075C80:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08075C88
func_08075C88: @ 0x08075C88
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	asrs r2, r1, #0x10
	adds r1, r2, #0
	adds r1, #0xa0
	movs r5, #0xe
	ldrsh r0, [r4, r5]
	cmp r1, r0
	ble .L08075CA6
	movs r0, #0x60
	strh r0, [r4, #8]
	b .L08075DB0
.L08075CA6:
	adds r0, r2, #0
	cmp r2, #0
	bge .L08075CAE
	adds r0, #0xff
.L08075CAE:
	asrs r0, r0, #8
	lsls r0, r0, #8
	subs r0, r2, r0
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #6
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq .L08075CDA
	ldrh r1, [r4, #8]
	ldr r2, [r4, #0x14]
	cmp r2, #0
	beq .L08075CD2
	mov r0, sp
	strh r1, [r0]
	strh r1, [r2, #0x16]
	b .L08075CD6
.L08075CD2:
	ldr r0, .L08075CFC @ =0x04000016
	strh r1, [r0]
.L08075CD6:
	ldrh r0, [r4, #8]
	strh r0, [r4, #6]
.L08075CDA:
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r3, r2, #0
	subs r3, #0x30
	cmp r3, #0
	ble .L08075CF4
	ldrh r5, [r4, #0xe]
	movs r0, #0xe
	ldrsh r1, [r4, r0]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bgt .L08075D00
.L08075CF4:
	movs r0, #0
	strh r0, [r4, #0xc]
	b .L08075D1A
	.align 2, 0
.L08075CFC: .4byte 0x04000016
.L08075D00:
	adds r1, r2, #0
	adds r1, #0xd0
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r1, r0
	blt .L08075D18
	ldr r3, .L08075D14 @ =0xFFFFFF00
	adds r0, r5, r3
	strh r0, [r4, #0xc]
	b .L08075D1A
	.align 2, 0
.L08075D14: .4byte 0xFFFFFF00
.L08075D18:
	strh r3, [r4, #0xc]
.L08075D1A:
	movs r5, #0xc
	ldrsh r3, [r4, r5]
	movs r1, #0xa
	ldrsh r0, [r4, r1]
	cmp r3, r0
	beq .L08075DB0
	movs r1, #0
	movs r2, #0
	cmp r0, #0
	bge .L08075D50
	adds r0, r3, #0
	adds r1, r0, #0
	cmp r0, #0
	bge .L08075D38
	adds r1, r0, #7
.L08075D38:
	asrs r1, r1, #3
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r0, r3
	cmp r2, #0
	bge .L08075D7C
	ldr r5, .L08075D4C @ =0x00000107
	adds r2, r0, r5
	b .L08075D7C
	.align 2, 0
.L08075D4C: .4byte 0x00000107
.L08075D50:
	cmp r3, r0
	ble .L08075D84
	movs r0, #0xc
	ldrsh r5, [r4, r0]
	movs r0, #0xa
	ldrsh r3, [r4, r0]
	subs r0, r5, r3
	cmp r0, #7
	ble .L08075DAA
	movs r0, #0x80
	lsls r0, r0, #1
	adds r1, r3, r0
	cmp r1, #0
	bge .L08075D70
	ldr r2, .L08075D80 @ =0x00000107
	adds r1, r3, r2
.L08075D70:
	asrs r1, r1, #3
	adds r2, r5, r0
	cmp r2, #0
	bge .L08075D7C
	ldr r3, .L08075D80 @ =0x00000107
	adds r2, r5, r3
.L08075D7C:
	asrs r2, r2, #3
	b .L08075DAA
	.align 2, 0
.L08075D80: .4byte 0x00000107
.L08075D84:
	cmp r0, r3
	ble .L08075DAA
	movs r0, #0xa
	ldrsh r5, [r4, r0]
	movs r0, #0xc
	ldrsh r3, [r4, r0]
	subs r0, r5, r3
	cmp r0, #7
	ble .L08075DAA
	adds r1, r3, #0
	cmp r1, #0
	bge .L08075D9E
	adds r1, #7
.L08075D9E:
	asrs r1, r1, #3
	adds r0, r5, #0
	cmp r0, #0
	bge .L08075DA8
	adds r0, #7
.L08075DA8:
	asrs r2, r0, #3
.L08075DAA:
	adds r0, r4, #0
	bl func_08075BC8
.L08075DB0:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_08075DB8
func_08075DB8: @ 0x08075DB8
	push {lr}
	ldr r2, .L08075DD0 @ =0x0000FFFF
	strh r2, [r0, #6]
	movs r2, #1
	rsbs r2, r2, #0
	strh r2, [r0, #0xa]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl func_08075C88
	pop {r0}
	bx r0
	.align 2, 0
.L08075DD0: .4byte 0x0000FFFF
