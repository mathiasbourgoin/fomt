	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_0807565C
func_0807565C: @ 0x0807565C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_080769A0
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
.L08075678:
	.byte 0x10, 0xB5, 0x81, 0xB0, 0x9C, 0x68, 0x1B, 0x69
	.byte 0x00, 0x93, 0x23, 0x1C, 0xFF, 0xF7, 0x56, 0xFE, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x10, 0xB5, 0x81, 0xB0, 0xDC, 0x00, 0x05, 0x4B, 0xE4, 0x18, 0x23, 0x68, 0x64, 0x68, 0x00, 0x94
	.byte 0xFF, 0xF7, 0x48, 0xFE, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x24, 0xC0, 0x0F, 0x08

	thumb_func_start func_080756B0
func_080756B0: @ 0x080756B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, .L080756CC @ =vtable_unk_080E7B5C
	str r0, [r4, #4]
	movs r0, #0x28
	bl __builtin_new
	bl func_080E2DC8
	str r0, [r4]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080756CC: .4byte vtable_unk_080E7B5C

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

	thumb_func_start func_08075DD4
func_08075DD4: @ 0x08075DD4
	push {lr}
	ldr r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	subs r2, r2, r1
	asrs r2, r2, #6
	lsls r2, r2, #6
	adds r0, r1, #0
	movs r1, #0xff
	bl memset
	pop {r0}
	bx r0

	thumb_func_start func_08075DEC
func_08075DEC: @ 0x08075DEC
	push {lr}
	ldr r2, .L08075DFC @ =vtable_unk_080E7B68
	str r2, [r0, #8]
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0
.L08075DFC: .4byte vtable_unk_080E7B68
.L08075E00:
	.byte 0x10, 0xB5, 0x04, 0x1C, 0xE0, 0x68, 0x21, 0x69, 0x62, 0x69, 0x93, 0xF7, 0x2B, 0xF8, 0xE1, 0x69
	.byte 0x00, 0x29, 0x03, 0xD0, 0xA0, 0x69, 0x22, 0x6A, 0x93, 0xF7, 0x24, 0xF8, 0x00, 0x20, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47

	thumb_func_start func_08075E24
func_08075E24: @ 0x08075E24
	push {r4, r5, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2, #4]
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r1, r0
	bgt .L08075E3C
	strh r4, [r2, #0xe]
	b .L08075E3E
.L08075E3C:
	strh r3, [r2, #0xe]
.L08075E3E:
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	cmp r0, #0x9f
	bgt .L08075E4A
	movs r0, #0xa0
	strh r0, [r2, #0xe]
.L08075E4A:
	pop {r4, r5}
	pop {r0}
	bx r0
.L08075E50:
	.byte 0x70, 0xB5, 0x04, 0x9C, 0x05, 0x9D, 0x06, 0x9E, 0xC1, 0x60, 0x02, 0x61, 0x43, 0x61, 0x84, 0x61
	.byte 0xC5, 0x61, 0x06, 0x62, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x00, 0x21, 0x01, 0x60
	.byte 0x41, 0x60, 0x01, 0x49, 0x81, 0x60, 0x70, 0x47, 0x68, 0x7B, 0x0E, 0x08

	thumb_func_start func_08075E7C
func_08075E7C: @ 0x08075E7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	adds r7, r0, #0
	lsls r1, r1, #0x18
	mov sl, r1
	mov r0, sl
	lsrs r0, r0, #0x18
	mov sl, r0
	adds r0, r7, #0
	bl func_08008444
	ldr r0, .L0807615C @ =vtable_unk_080E7B78
	str r0, [r7, #4]
	movs r4, #0
	str r4, [r7, #8]
	movs r1, #0xc
	adds r1, r1, r7
	mov r8, r1
	ldr r1, .L08076160 @ =gUnk_08527094
	mov r0, r8
	bl func_0805E6CC
	movs r6, #0xe8
	movs r0, #0x18
	movs r5, #0
	strh r6, [r7, #0x3c]
	strh r0, [r7, #0x3e]
	adds r0, r7, #0
	adds r0, #0x40
	mov r1, r8
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x54
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
	movs r1, #0x98
	strh r6, [r0]
	strh r1, [r0, #2]
	adds r0, #4
	mov r1, r8
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x8c
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
	movs r2, #8
	mov sb, r2
	strh r6, [r0]
	mov r3, sb
	strh r3, [r0, #2]
	adds r0, #4
	mov r1, r8
	movs r2, #2
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0xc4
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
	mov r6, sb
	strh r6, [r0, #2]
	adds r0, #4
	mov r1, r8
	movs r2, #3
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0xfc
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
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r7, r1
	strb r5, [r0]
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r0, r7, r2
	mov r3, sl
	strb r3, [r0]
	adds r0, r7, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r5, .L08076164 @ =0x00001E41
	adds r1, r5, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	movs r6, #0xea
	lsls r6, r6, #5
	adds r1, r6, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L08076168 @ =0x00003F42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r5, .L0807616C @ =0x00001C48
	adds r1, r5, #0
	strh r1, [r2]
	strh r1, [r0, #8]
	movs r0, #1
	rsbs r0, r0, #0
	ldr r6, .L08076170 @ =0x0600E000
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r6, #0
	bl func_08008EB8
	ldr r1, .L08076174 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	movs r3, #0xfa
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	ldr r0, .L08076178 @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L0807617C @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L08076180 @ =0x00030003
	ldr r1, .L08076184 @ =0x0600F800
	movs r5, #0x80
	lsls r5, r5, #4
	adds r2, r5, #0
	bl func_08008EB8
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	ldr r0, .L08076188 @ =0x0600E800
	movs r1, #3
	str r1, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0
	movs r2, #0x1d
	movs r3, #0x1e
	bl func_08051320
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0x1a]
	ldr r1, .L0807618C @ =0x06008000
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r0, .L08076190 @ =0x0600E008
	str r4, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #1
	movs r2, #0x16
	movs r3, #2
	bl func_0804E9F4
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r4, .L08076194 @ =0x0000FFFC
	adds r1, r4, #0
	strh r1, [r2]
	strh r1, [r0, #0x12]
	ldr r0, .L08076198 @ =gUnk_080F9F78
	ldr r4, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	adds r0, r4, #0
	movs r2, #0x20
	bl func_08008E64
	ldr r1, .L0807619C @ =0x05000200
	adds r0, r4, #0
	movs r2, #0x20
	bl func_08008E64
	movs r6, #0
	add r5, sp, #0x84
	mov sb, r5
	add r0, sp, #0x14
	mov r8, r0
	mov r1, sp
	adds r1, #0x54
	str r1, [sp, #0x90]
	mov r2, sp
	adds r2, #0x64
	str r2, [sp, #0x94]
	mov r3, sp
	adds r3, #0x74
	str r3, [sp, #0x98]
	movs r4, #2
	mov sl, r4
	ldr r5, .L080761A0 @ =0x06002400
	ldr r4, .L080761A4 @ =gUnk_080FC082
.L080760C6:
	ldrh r1, [r4]
	add r0, sp, #0x84
	movs r2, #1
	strh r2, [r0]
	mov r0, sl
	mov r3, sb
	strh r0, [r3, #2]
	ldr r0, [sp, #0x84]
	str r1, [sp]
	add r1, sp, #0x14
	movs r2, #0
	movs r3, #0
	bl func_0804E4AC
	mov r0, r8
	adds r1, r5, #0
	movs r2, #0x40
	bl func_08008E64
	adds r5, #0x40
	adds r4, #2
	adds r6, #1
	cmp r6, #9
	ble .L080760C6
	adds r0, r7, #0
	adds r0, #0xe8
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	adds r0, #4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, [sp, #0x90]
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r7, #0
	bl func_08008910
	adds r2, r0, #0
	ldr r0, [sp, #0x64]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L08076128
	ldr r4, [sp, #0x94]
	ldrh r3, [r4, #4]
.L08076128:
	str r2, [sp, #0x9c]
	add r0, sp, #0x74
	ldr r2, .L0807619C @ =0x05000200
	bl func_08008F0C
	ldr r5, [sp, #0x98]
	mov sb, r5
	ldr r6, [sp, #0x9c]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080761A8
	cmp r1, #0
	beq .L08076150
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08076150:
	ldr r5, [sp, #0x9c]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0807627A
	.align 2, 0
.L0807615C: .4byte vtable_unk_080E7B78
.L08076160: .4byte gUnk_08527094
.L08076164: .4byte 0x00001E41
.L08076168: .4byte 0x00003F42
.L0807616C: .4byte 0x00001C48
.L08076170: .4byte 0x0600E000
.L08076174: .4byte 0x06007FE0
.L08076178: .4byte gUnk_080F9F70
.L0807617C: .4byte gUnk_080F9F74
.L08076180: .4byte 0x00030003
.L08076184: .4byte 0x0600F800
.L08076188: .4byte 0x0600E800
.L0807618C: .4byte 0x06008000
.L08076190: .4byte 0x0600E008
.L08076194: .4byte 0x0000FFFC
.L08076198: .4byte gUnk_080F9F78
.L0807619C: .4byte 0x05000200
.L080761A0: .4byte 0x06002400
.L080761A4: .4byte gUnk_080FC082
.L080761A8:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x8c
	str r0, [r1]
	ldr r6, [sp, #0x9c]
	ldr r0, [r6]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x88]
	ldr r0, [r1]
	add r2, sp, #0x88
	cmp r4, r0
	bhs .L080761C6
	adds r2, r1, #0
.L080761C6:
	ldr r0, [r2]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080761E4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080761E8
	mov r0, sl
	bl func_080D3BC0
	b .L080761E8
.L080761E4:
	movs r0, #0
	mov sl, r0
.L080761E8:
	adds r5, r0, #0
	str r5, [sp, #0xa0]
	ldr r3, [sp, #0x9c]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0807620E
.L080761F6:
	cmp r3, #0
	beq .L08076206
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08076206:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080761F6
.L0807620E:
	adds r5, r3, #0
	ldr r1, [sp, #0x8c]
	cmp r1, #1
	bne .L0807622A
	cmp r5, #0
	beq .L08076226
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08076226:
	adds r5, #0x10
	b .L08076252
.L0807622A:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L08076250
.L08076232:
	cmp r2, #0
	beq .L08076242
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08076242:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L08076232
.L08076250:
	adds r5, r2, #0
.L08076252:
	ldr r6, [sp, #0x9c]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08076264
.L0807625E:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807625E
.L08076264:
	cmp r0, #0
	beq .L0807626C
	bl free
.L0807626C:
	ldr r0, [sp, #0xa0]
	add r0, sl
	ldr r1, [sp, #0xa0]
	ldr r2, [sp, #0x9c]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0807627A:
	adds r0, r7, #0
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0807628C
func_0807628C: @ 0x0807628C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe4
	adds r7, r0, #0
	ldr r1, [r7, #8]
	ldr r0, [r1, #4]
	movs r2, #0xe
	ldrsh r0, [r0, r2]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0
	movs r3, #0xb2
	lsls r3, r3, #3
	adds r1, r1, r3
	movs r4, #0
	ldrsh r1, [r1, r4]
	cmp r1, r0
	bge .L080762BA
	movs r2, #1
.L080762BA:
	adds r0, r7, #0
	adds r0, #0xa8
	movs r6, #0
	strb r2, [r0]
	ldr r1, [r7, #8]
	movs r2, #0
	adds r1, r1, r3
	movs r5, #0
	ldrsh r1, [r1, r5]
	str r0, [sp, #0xcc]
	cmp r1, #0
	ble .L080762D4
	movs r2, #1
.L080762D4:
	adds r5, r7, #0
	adds r5, #0x70
	strb r2, [r5]
	mov r0, sp
	movs r1, #0
	strh r6, [r0]
	strh r6, [r0, #2]
	strh r6, [r0, #4]
	strh r6, [r0, #6]
	strh r6, [r0, #8]
	str r6, [sp, #0xc]
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r6, [sp, #0x14]
	strb r1, [r0, #0x18]
	adds r4, r7, #0
	adds r4, #0xe8
	adds r0, r4, #0
	bl func_0805E8F0
	add r0, sp, #0x1c
	mov r8, r0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r7, #0
	adds r0, #0xec
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, r8
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0xfc
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0xe4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xe6
	ldrh r0, [r0]
	strh r0, [r1, #2]
	mov r0, sp
	strh r6, [r0, #4]
	strh r6, [r0, #6]
	adds r0, r7, #0
	bl func_08008920
	ldr r1, [sp, #0x1c]
	movs r2, #0
	str r5, [sp, #0xc4]
	cmp r1, #0
	beq .L08076358
	mov r5, r8
	ldrh r2, [r5, #4]
.L08076358:
	mov r3, sp
	bl func_0805E99C
	adds r0, r7, #0
	bl func_08008910
	ldr r1, [sp, #0x24]
	add r2, sp, #0x24
	movs r3, #0
	cmp r1, #0
	beq .L08076370
	ldrh r3, [r2, #4]
.L08076370:
	str r0, [sp, #0xd8]
	add r0, sp, #0x3c
	ldr r2, .L080763D8 @ =0x06010000
	bl func_08008F0C
	add r6, sp, #0x3c
	mov sl, r6
	ldr r0, [sp, #0xd8]
	ldr r1, [r0, #4]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	beq .L080763DC
	cmp r1, #0
	beq .L08076398
	adds r0, r1, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08076398:
	ldr r5, [sp, #0xd8]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	movs r6, #0xb0
	adds r6, r6, r7
	mov r8, r6
	mov r0, sp
	adds r0, #0x4c
	str r0, [sp, #0xb8]
	adds r1, r7, #0
	adds r1, #0xb4
	str r1, [sp, #0xac]
	adds r2, r7, #0
	adds r2, #0xc4
	str r2, [sp, #0xb0]
	adds r3, r7, #0
	adds r3, #0xac
	str r3, [sp, #0xd0]
	adds r4, r7, #0
	adds r4, #0xae
	str r4, [sp, #0xd4]
	mov r5, sp
	adds r5, #0x54
	str r5, [sp, #0xc0]
	adds r6, r7, #0
	adds r6, #0x40
	str r6, [sp, #0xbc]
	adds r0, r7, #0
	adds r0, #0x78
	str r0, [sp, #0xc8]
	b .L080764E4
	.align 2, 0
.L080763D8: .4byte 0x06010000
.L080763DC:
	str r1, [sp, #0xdc]
	movs r0, #1
	add r1, sp, #0x90
	str r0, [r1]
	ldr r2, [sp, #0xd8]
	ldr r0, [r2]
	ldr r3, [sp, #0xdc]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x8c
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080763FA
	adds r0, r1, #0
.L080763FA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08076418
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0xb4]
	cmp r0, #0
	bne .L0807641E
	adds r0, r4, #0
	bl func_080D3BC0
	b .L0807641E
.L08076418:
	movs r0, #0
	movs r4, #0
	str r4, [sp, #0xb4]
.L0807641E:
	adds r4, r0, #0
	mov sb, r4
	ldr r5, [sp, #0xd8]
	ldr r2, [r5]
	mov r3, sb
	movs r6, #0xb0
	adds r6, r6, r7
	mov r8, r6
	mov r0, sp
	adds r0, #0x4c
	str r0, [sp, #0xb8]
	adds r1, r7, #0
	adds r1, #0xb4
	str r1, [sp, #0xac]
	adds r4, r7, #0
	adds r4, #0xc4
	str r4, [sp, #0xb0]
	adds r5, r7, #0
	adds r5, #0xac
	str r5, [sp, #0xd0]
	adds r6, r7, #0
	adds r6, #0xae
	str r6, [sp, #0xd4]
	adds r0, #8
	str r0, [sp, #0xc0]
	subs r1, #0x74
	str r1, [sp, #0xbc]
	subs r4, #0x4c
	str r4, [sp, #0xc8]
	ldr r5, [sp, #0xdc]
	cmp r2, r5
	beq .L08076478
.L0807645E:
	cmp r3, #0
	beq .L0807646E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0807646E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0xdc]
	cmp r2, r6
	bne .L0807645E
.L08076478:
	adds r4, r3, #0
	ldr r1, [sp, #0x90]
	cmp r1, #1
	bne .L08076494
	cmp r4, #0
	beq .L08076490
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08076490:
	adds r4, #0x10
	b .L080764BC
.L08076494:
	mov ip, r1
	adds r2, r4, #0
	cmp r1, #0
	beq .L080764BA
.L0807649C:
	cmp r2, #0
	beq .L080764AC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080764AC:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r6, ip
	cmp r6, #0
	bne .L0807649C
.L080764BA:
	adds r4, r2, #0
.L080764BC:
	ldr r0, [sp, #0xd8]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080764CE
.L080764C8:
	adds r1, #0x10
	cmp r1, r2
	bne .L080764C8
.L080764CE:
	cmp r0, #0
	beq .L080764D6
	bl free
.L080764D6:
	ldr r0, [sp, #0xb4]
	add r0, sb
	mov r1, sb
	ldr r2, [sp, #0xd8]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080764E4:
	mov r0, r8
	bl func_0805E8F0
	mov r3, r8
	ldr r1, [r3]
	ldr r3, [r1]
	mov r4, r8
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0xac]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, [sp, #0xb8]
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r1, sp
	ldr r0, [sp, #0xb0]
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	ldr r2, [sp, #0xd0]
	ldrh r0, [r2]
	movs r2, #0
	strh r0, [r1]
	ldr r3, [sp, #0xd4]
	ldrh r0, [r3]
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	movs r4, #1
	strh r4, [r0, #6]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x4c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08076544
	ldr r5, [sp, #0xb8]
	ldrh r2, [r5, #4]
.L08076544:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	adds r0, r7, #0
	bl func_08008910
	ldr r1, [sp, #0x54]
	movs r3, #0
	cmp r1, #0
	beq .L0807655E
	ldr r6, [sp, #0xc0]
	ldrh r3, [r6, #4]
.L0807655E:
	str r0, [sp, #0xdc]
	add r0, sp, #0x3c
	ldr r2, .L08076590 @ =0x06010020
	bl func_08008F0C
	add r0, sp, #0x3c
	mov sl, r0
	ldr r2, [sp, #0xdc]
	ldr r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq .L08076594
	cmp r1, #0
	beq .L08076586
	adds r0, r1, #0
	add r1, sp, #0x3c
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08076586:
	ldr r6, [sp, #0xdc]
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08076668
	.align 2, 0
.L08076590: .4byte 0x06010020
.L08076594:
	str r1, [sp, #0xd8]
	add r1, sp, #0x98
	str r4, [r1]
	ldr r2, [sp, #0xdc]
	ldr r0, [r2]
	ldr r3, [sp, #0xd8]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x94
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080765B0
	adds r0, r1, #0
.L080765B0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080765CE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080765D2
	mov r0, sb
	bl func_080D3BC0
	b .L080765D2
.L080765CE:
	movs r0, #0
	mov sb, r0
.L080765D2:
	adds r4, r0, #0
	mov r8, r4
	ldr r4, [sp, #0xdc]
	ldr r2, [r4]
	mov r3, r8
	ldr r5, [sp, #0xd8]
	cmp r2, r5
	beq .L080765FC
.L080765E2:
	cmp r3, #0
	beq .L080765F2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080765F2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0xd8]
	cmp r2, r6
	bne .L080765E2
.L080765FC:
	adds r4, r3, #0
	ldr r1, [sp, #0x98]
	cmp r1, #1
	bne .L08076618
	cmp r4, #0
	beq .L08076614
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08076614:
	adds r4, #0x10
	b .L08076640
.L08076618:
	mov ip, r1
	adds r2, r4, #0
	cmp r1, #0
	beq .L0807663E
.L08076620:
	cmp r2, #0
	beq .L08076630
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08076630:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r6, ip
	cmp r6, #0
	bne .L08076620
.L0807663E:
	adds r4, r2, #0
.L08076640:
	ldr r0, [sp, #0xdc]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08076652
.L0807664C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807664C
.L08076652:
	cmp r0, #0
	beq .L0807665A
	bl free
.L0807665A:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0xdc]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L08076668:
	ldr r0, [sp, #0xbc]
	bl func_0805E8F0
	ldr r3, [sp, #0xc4]
	ldrb r0, [r3]
	cmp r0, #0
	bne .L08076678
	b .L080767EE
.L08076678:
	add r4, sp, #0x6c
	ldr r1, [r7, #0x40]
	ldr r3, [r1]
	ldr r5, [sp, #0xbc]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r0, [r7, #0x44]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0x54
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	ldrh r0, [r7, #0x3c]
	movs r2, #0
	strh r0, [r1]
	ldrh r0, [r7, #0x3e]
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	movs r0, #2
	strh r0, [r1, #6]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x6c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080766CC
	ldrh r2, [r4, #4]
.L080766CC:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	adds r0, r7, #0
	bl func_08008910
	ldr r1, [sp, #0x74]
	add r2, sp, #0x74
	movs r3, #0
	cmp r1, #0
	beq .L080766E6
	ldrh r3, [r2, #4]
.L080766E6:
	str r0, [sp, #0xd8]
	add r0, sp, #0x3c
	ldr r2, .L08076718 @ =0x06010040
	bl func_08008F0C
	add r3, sp, #0x3c
	mov sl, r3
	ldr r4, [sp, #0xd8]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L0807671C
	cmp r1, #0
	beq .L0807670E
	adds r0, r1, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0807670E:
	ldr r3, [sp, #0xd8]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L080767EE
	.align 2, 0
.L08076718: .4byte 0x06010040
.L0807671C:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0xa0
	str r0, [r1]
	ldr r4, [sp, #0xd8]
	ldr r0, [r4]
	mov r5, r8
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x9c
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L0807673A
	adds r0, r1, #0
.L0807673A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08076758
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0807675C
	mov r0, sb
	bl func_080D3BC0
	b .L0807675C
.L08076758:
	movs r0, #0
	mov sb, r0
.L0807675C:
	adds r5, r0, #0
	str r5, [sp, #0xe0]
	ldr r6, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08076782
.L0807676A:
	cmp r3, #0
	beq .L0807677A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0807677A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0807676A
.L08076782:
	adds r5, r3, #0
	ldr r1, [sp, #0xa0]
	cmp r1, #1
	bne .L0807679E
	cmp r5, #0
	beq .L0807679A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807679A:
	adds r5, #0x10
	b .L080767C6
.L0807679E:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L080767C4
.L080767A6:
	cmp r2, #0
	beq .L080767B6
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080767B6:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L080767A6
.L080767C4:
	adds r5, r2, #0
.L080767C6:
	ldr r6, [sp, #0xd8]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080767D8
.L080767D2:
	adds r1, #0x10
	cmp r1, r2
	bne .L080767D2
.L080767D8:
	cmp r0, #0
	beq .L080767E0
	bl free
.L080767E0:
	ldr r0, [sp, #0xe0]
	add r0, sb
	ldr r1, [sp, #0xe0]
	ldr r2, [sp, #0xd8]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080767EE:
	ldr r0, [sp, #0xc8]
	bl func_0805E8F0
	ldr r3, [sp, #0xcc]
	ldrb r0, [r3]
	cmp r0, #0
	bne .L080767FE
	b .L0807697E
.L080767FE:
	add r4, sp, #0x6c
	ldr r1, [r7, #0x78]
	ldr r3, [r1]
	ldr r5, [sp, #0xc8]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r0, [r7, #0x7c]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0x8c
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0x74
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x76
	ldrh r0, [r0]
	strh r0, [r1, #2]
	mov r0, sp
	strh r2, [r0, #4]
	movs r0, #3
	strh r0, [r1, #6]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x6c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0807685A
	ldrh r2, [r4, #4]
.L0807685A:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	adds r0, r7, #0
	bl func_08008910
	ldr r1, [sp, #0x74]
	add r2, sp, #0x74
	movs r3, #0
	cmp r1, #0
	beq .L08076874
	ldrh r3, [r2, #4]
.L08076874:
	str r0, [sp, #0xd8]
	add r0, sp, #0x3c
	ldr r2, .L080768A8 @ =0x06010060
	bl func_08008F0C
	add r3, sp, #0x3c
	mov sb, r3
	ldr r4, [sp, #0xd8]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080768AC
	cmp r1, #0
	beq .L0807689C
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0807689C:
	ldr r3, [sp, #0xd8]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L0807697E
	.align 2, 0
.L080768A8: .4byte 0x06010060
.L080768AC:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0xa8
	str r0, [r1]
	ldr r4, [sp, #0xd8]
	ldr r0, [r4]
	mov r5, r8
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xa4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080768CA
	adds r0, r1, #0
.L080768CA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080768E8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080768EC
	mov r0, sl
	bl func_080D3BC0
	b .L080768EC
.L080768E8:
	movs r0, #0
	mov sl, r0
.L080768EC:
	adds r5, r0, #0
	str r5, [sp, #0xe0]
	ldr r6, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08076912
.L080768FA:
	cmp r3, #0
	beq .L0807690A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0807690A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080768FA
.L08076912:
	adds r5, r3, #0
	ldr r1, [sp, #0xa8]
	cmp r1, #1
	bne .L0807692E
	cmp r5, #0
	beq .L0807692A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807692A:
	adds r5, #0x10
	b .L08076956
.L0807692E:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L08076954
.L08076936:
	cmp r2, #0
	beq .L08076946
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08076946:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L08076936
.L08076954:
	adds r5, r2, #0
.L08076956:
	ldr r6, [sp, #0xd8]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08076968
.L08076962:
	adds r1, #0x10
	cmp r1, r2
	bne .L08076962
.L08076968:
	cmp r0, #0
	beq .L08076970
	bl free
.L08076970:
	ldr r0, [sp, #0xe0]
	add r0, sl
	ldr r1, [sp, #0xe0]
	ldr r2, [sp, #0xd8]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0807697E:
	ldr r0, [r7, #8]
	ldr r3, .L0807699C @ =0x000005B4
	adds r1, r0, r3
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	bl _call_via_r1
	add sp, #0xe4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0807699C: .4byte 0x000005B4

	thumb_func_start func_080769A0
func_080769A0: @ 0x080769A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r6, r0, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	adds r0, r6, #0
	bl func_08008918
	adds r1, r0, #0
	add r4, sp, #4
	movs r0, #0
	str r0, [sp, #4]
	str r0, [r4, #4]
	ldr r0, .L08076A60 @ =vtable_unk_080E5B80
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	bl func_08009300
	ldr r1, .L08076A64 @ =0x00000889
	add r0, sp, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	adds r1, r4, #0
	bl _call_via_r2
	movs r0, #0
	mov r8, r0
	adds r0, r6, #0
	bl func_08076BEC
	lsls r5, r0, #4
	mov sb, r4
.L080769FE:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	adds r0, r6, #0
	bl func_080088C4
	str r0, [sp, #0x14]
	adds r0, r6, #0
	bl func_080088CC
	adds r4, r0, #0
	adds r0, r6, #0
	bl func_080088D4
	adds r7, r0, #0
	ldr r1, [sp, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08076A9C
	mov r1, r8
	cmp r1, #0
	beq .L08076A34
	b .L08076B4E
.L08076A34:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq .L08076A68
	movs r0, #1
	mov r8, r0
	add r0, sp, #0x10
	ldr r1, .L08076A64 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	mov r1, sb
	bl _call_via_r2
	b .L08076A9C
	.align 2, 0
.L08076A60: .4byte vtable_unk_080E5B80
.L08076A64: .4byte 0x00000889
.L08076A68:
	movs r1, #0x8e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08076A9C
	movs r0, #4
	ands r0, r4
	cmp r0, #0
	beq .L08076A9C
	movs r0, #1
	mov r8, r0
	add r0, sp, #0x10
	ldr r1, .L08076ABC @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r1, [r0, #8]
	ldr r2, [r1, #0x10]
	mov r1, sb
	bl _call_via_r2
.L08076A9C:
	add r3, sp, #0x14
	ldrb r1, [r3]
	movs r0, #0x40
	ands r0, r1
	adds r2, r3, #0
	cmp r0, #0
	beq .L08076AD6
	cmp r5, #0
	ble .L08076ACE
	ldrb r1, [r2, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L08076AC0
	subs r5, #0x80
	b .L08076ACE
	.align 2, 0
.L08076ABC: .4byte 0x00000889
.L08076AC0:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq .L08076ACC
	subs r5, #8
	b .L08076ACE
.L08076ACC:
	subs r5, #0x40
.L08076ACE:
	cmp r5, #0
	bge .L08076B16
	movs r5, #0
	b .L08076B16
.L08076AD6:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08076B20
	ldr r0, [r6, #8]
	ldr r0, [r0, #4]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	asrs r0, r5, #4
	cmp r0, r2
	bge .L08076B0E
	ldrb r1, [r3, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L08076B00
	adds r5, #0x80
	b .L08076B0E
.L08076B00:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq .L08076B0C
	adds r5, #8
	b .L08076B0E
.L08076B0C:
	adds r5, #0x40
.L08076B0E:
	asrs r0, r5, #4
	cmp r0, r2
	ble .L08076B16
	lsls r5, r2, #4
.L08076B16:
	asrs r1, r5, #4
	adds r0, r6, #0
	bl func_08076BE0
	b .L08076B46
.L08076B20:
	lsls r1, r7, #0x1b
	lsls r0, r7, #0x1a
	lsrs r1, r1, #0x1f
	lsrs r0, r0, #0x1f
	cmp r1, r0
	beq .L08076B46
	ldr r2, [r6, #4]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x1c
	movs r1, #1
	bics r1, r0
	ldr r2, [r2, #0xc]
	adds r0, r6, #0
	bl _call_via_r2
	adds r0, r6, #0
	bl func_08076BEC
	lsls r5, r0, #4
.L08076B46:
	adds r0, r6, #0
	bl func_0807628C
	b .L080769FE
.L08076B4E:
	mov r0, sb
	movs r1, #2
	bl func_080094B8
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_08076B64
func_08076B64: @ 0x08076B64
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r4, #8
	movs r5, #0
	ldr r1, [r0, #8]
	cmp r5, r1
	beq .L08076B86
	cmp r1, #0
	beq .L08076B86
	ldr r2, .L08076B90 @ =0x000005B4
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08076B86:
	str r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L08076B90: .4byte 0x000005B4

	thumb_func_start func_08076B94
func_08076B94: @ 0x08076B94
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	adds r6, #8
	ldr r2, [r4]
	movs r1, #0
	str r1, [r4]
	adds r5, r2, #0
	ldr r1, [r0, #8]
	cmp r5, r1
	beq .L08076BBE
	cmp r1, #0
	beq .L08076BBE
	ldr r2, .L08076BDC @ =0x000005B4
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08076BBE:
	str r5, [r6]
	ldr r1, [r4]
	cmp r1, #0
	beq .L08076BD6
	ldr r2, .L08076BDC @ =0x000005B4
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08076BD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08076BDC: .4byte 0x000005B4

	thumb_func_start func_08076BE0
func_08076BE0: @ 0x08076BE0
	ldr r0, [r0, #8]
	movs r2, #0xb2
	lsls r2, r2, #3
	adds r0, r0, r2
	strh r1, [r0]
	bx lr

	thumb_func_start func_08076BEC
func_08076BEC: @ 0x08076BEC
	ldr r0, [r0, #8]
	movs r1, #0xb2
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0

	thumb_func_start func_08076BFC
func_08076BFC: @ 0x08076BFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	mov sb, r0
	adds r7, r1, #0
	mov r8, r2
	adds r6, r3, #0
	ldr r1, .L08076CB8 @ =0x000005B4
	add r1, sb
	ldr r0, .L08076CBC @ =vtable_unk_080E7B88
	str r0, [r1]
	mov r0, sb
	str r7, [r0]
	movs r0, #0x4c
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r3, r0, #0
	ldr r0, .L08076CC0 @ =0x0600F000
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_08075B00
	mov r1, sb
	str r0, [r1, #4]
	ldr r0, .L08076CC4 @ =0x0000058C
	add r0, sb
	mov r2, r8
	str r2, [r0]
	movs r1, #0xb2
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0
	strh r0, [r1]
	ldr r1, .L08076CC8 @ =0x00000594
	add r1, sb
	str r0, [r1]
	str r0, [r1, #4]
	ldr r1, .L08076CCC @ =0x0000059C
	add r1, sb
	str r0, [r1, #4]
	ldr r1, .L08076CD0 @ =0x000005A4
	add r1, sb
	str r0, [r1]
	str r0, [r1, #4]
	ldr r1, .L08076CD4 @ =0x000005AC
	add r1, sb
	str r0, [r1, #4]
	add r0, sp, #0x1c
	movs r5, #0x16
	movs r6, #2
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x1c]
	mov r4, sb
	adds r4, #0xc
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [sp, #0x58]
	bl strlen
	adds r1, r0, #0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne .L08076CD8
	subs r2, r5, r1
	lsls r2, r2, #2
	add r0, sp, #0x20
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x58]
	str r3, [sp]
	adds r1, r4, #0
	movs r3, #0
	bl func_0804E8F0
	b .L08076CF2
	.align 2, 0
.L08076CB8: .4byte 0x000005B4
.L08076CBC: .4byte vtable_unk_080E7B88
.L08076CC0: .4byte 0x0600F000
.L08076CC4: .4byte 0x0000058C
.L08076CC8: .4byte 0x00000594
.L08076CCC: .4byte 0x0000059C
.L08076CD0: .4byte 0x000005A4
.L08076CD4: .4byte 0x000005AC
.L08076CD8:
	movs r2, #0x15
	subs r2, r2, r1
	lsls r2, r2, #2
	add r0, sp, #0x24
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x24]
	ldr r5, [sp, #0x58]
	str r5, [sp]
	adds r1, r4, #0
	movs r3, #0
	bl func_0804E8F0
.L08076CF2:
	adds r0, r7, #0
	bl func_08008910
	mov r1, sb
	adds r1, #0xc
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r6, r0, #0
	add r0, sp, #0xc
	ldr r2, .L08076D30 @ =0x06008020
	bl func_08008F0C
	add r7, sp, #0xc
	mov r8, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08076D34
	cmp r1, #0
	beq .L08076D26
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08076D26:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08076DFA
	.align 2, 0
.L08076D30: .4byte 0x06008020
.L08076D34:
	str r1, [sp, #0x30]
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r1, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L08076D4E
	adds r0, r1, #0
.L08076D4E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08076D6C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08076D70
	mov r0, sl
	bl func_080D3BC0
	b .L08076D70
.L08076D6C:
	movs r0, #0
	mov sl, r0
.L08076D70:
	adds r5, r0, #0
	str r5, [sp, #0x34]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x30]
	cmp r2, r7
	beq .L08076D98
.L08076D7E:
	cmp r3, #0
	beq .L08076D8E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08076D8E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x30]
	cmp r2, r0
	bne .L08076D7E
.L08076D98:
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L08076DB4
	cmp r5, #0
	beq .L08076DB0
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08076DB0:
	adds r5, #0x10
	b .L08076DD6
.L08076DB4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08076DD4
.L08076DBC:
	cmp r2, #0
	beq .L08076DCC
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08076DCC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08076DBC
.L08076DD4:
	adds r5, r2, #0
.L08076DD6:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08076DE6
.L08076DE0:
	adds r1, #0x10
	cmp r1, r2
	bne .L08076DE0
.L08076DE6:
	cmp r0, #0
	beq .L08076DEE
	bl free
.L08076DEE:
	ldr r0, [sp, #0x34]
	add r0, sl
	ldr r7, [sp, #0x34]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08076DFA:
	mov r0, sb
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_08076E0C
func_08076E0C: @ 0x08076E0C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, .L08076E98 @ =0x000005B4
	adds r1, r5, r0
	ldr r0, .L08076E9C @ =vtable_unk_080E7B88
	str r0, [r1]
	ldr r1, .L08076EA0 @ =0x000005A4
	adds r0, r5, r1
	ldr r2, [r0, #4]
	ldr r1, [r0]
	cmp r1, r2
	beq .L08076E2C
.L08076E26:
	adds r1, #0x10
	cmp r1, r2
	bne .L08076E26
.L08076E2C:
	ldr r0, [r0]
	cmp r0, #0
	beq .L08076E36
	bl free
.L08076E36:
	ldr r1, .L08076EA4 @ =0x00000594
	adds r0, r5, r1
	ldr r2, [r0, #4]
	ldr r1, [r0]
	cmp r1, r2
	beq .L08076E48
.L08076E42:
	adds r1, #0x10
	cmp r1, r2
	bne .L08076E42
.L08076E48:
	ldr r0, [r0]
	cmp r0, #0
	beq .L08076E52
	bl free
.L08076E52:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq .L08076E84
	adds r4, r0, #0
	adds r0, #0x28
	movs r1, #2
	bl func_08075DEC
	adds r0, r4, #0
	adds r0, #0x18
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x18]
	cmp r1, r2
	beq .L08076E74
.L08076E6E:
	adds r1, #0x40
	cmp r1, r2
	bne .L08076E6E
.L08076E74:
	ldr r0, [r0]
	cmp r0, #0
	beq .L08076E7E
	bl free
.L08076E7E:
	adds r0, r4, #0
	bl __builtin_delete
.L08076E84:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq .L08076E92
	adds r0, r5, #0
	bl __builtin_delete
.L08076E92:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08076E98: .4byte 0x000005B4
.L08076E9C: .4byte vtable_unk_080E7B88
.L08076EA0: .4byte 0x000005A4
.L08076EA4: .4byte 0x00000594

	thumb_func_start func_08076EA8
func_08076EA8: @ 0x08076EA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	mov sl, r0
	movs r0, #0
	mov r8, r0
	ldr r1, .L08076ED8 @ =0x00000594
	add r1, sl
	ldr r0, [r1, #4]
	ldr r2, [r1]
	subs r0, r0, r2
	asrs r4, r0, #4
	cmp r4, #0
	beq .L08076EF4
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #0x30
	movs r3, #0xb2
	lsls r3, r3, #3
	add r3, sl
	b .L08076EEC
	.align 2, 0
.L08076ED8: .4byte 0x00000594
.L08076EDC:
	adds r2, #0x10
	movs r6, #1
	add r8, r6
	cmp r4, #0
	beq .L08076EF4
	movs r7, #0
	ldrsh r0, [r2, r7]
	adds r0, #0x30
.L08076EEC:
	movs r5, #0
	ldrsh r1, [r3, r5]
	cmp r0, r1
	blt .L08076EDC
.L08076EF4:
	movs r6, #0
	str r6, [sp, #0x40]
	ldr r0, .L08076FA0 @ =0x00000594
	add r0, sl
	ldr r1, [r0, #4]
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #4
	cmp r8, r1
	blo .L08076F0A
	b .L080771FE
.L08076F0A:
	ldr r7, .L08076FA0 @ =0x00000594
	add r7, sl
	str r7, [sp, #0x44]
.L08076F10:
	ldr r1, [sp, #0x44]
	ldr r0, [r1]
	mov r2, r8
	lsls r1, r2, #4
	adds r0, r0, r1
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0xb2
	lsls r0, r0, #3
	add r0, sl
	movs r4, #0
	ldrsh r0, [r0, r4]
	adds r0, #0xa0
	mov r5, r8
	adds r5, #1
	str r5, [sp, #0x5c]
	str r1, [sp, #0x60]
	cmp r2, r0
	ble .L08076F38
	b .L080771EA
.L08076F38:
	ldr r6, [sp, #0x40]
	lsls r0, r6, #2
	adds r0, #0x20
	str r0, [sp, #0x48]
	adds r6, #2
	str r6, [sp, #0x4c]
	mov r7, sl
	ldr r0, [r7]
	bl func_08008910
	ldr r2, [sp, #0x44]
	ldr r1, [r2]
	ldr r3, [sp, #0x60]
	adds r1, r1, r3
	adds r5, r0, #0
	ldr r1, [r1, #8]
	ldr r4, [sp, #0x48]
	lsls r2, r4, #5
	ldr r6, .L08076FA4 @ =0x06010000
	adds r2, r2, r6
	add r0, sp, #0x10
	movs r3, #0x80
	bl func_08008F0C
	mov r7, sp
	adds r7, #0x10
	str r7, [sp, #0x50]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08076FA8
	cmp r1, #0
	beq .L08076F86
	adds r0, r1, #0
	add r1, sp, #0x10
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08076F86:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r5, [sp, #0x4c]
	lsls r5, r5, #5
	mov r8, r5
	mov r6, sp
	adds r6, #0x30
	str r6, [sp, #0x64]
	ldr r7, [sp, #0x40]
	adds r7, #1
	str r7, [sp, #0x68]
	b .L08077084
	.align 2, 0
.L08076FA0: .4byte 0x00000594
.L08076FA4: .4byte 0x06010000
.L08076FA8:
	str r1, [sp, #0x6c]
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r0, [r5]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r1, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L08076FC0
	adds r0, r1, #0
.L08076FC0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08076FDE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08076FE2
	mov r0, sb
	bl func_080D3BC0
	b .L08076FE2
.L08076FDE:
	movs r0, #0
	mov sb, r0
.L08076FE2:
	adds r4, r0, #0
	str r4, [sp, #0x70]
	ldr r2, [r5]
	adds r3, r4, #0
	mov r4, r8
	adds r4, #1
	str r4, [sp, #0x5c]
	ldr r6, [sp, #0x4c]
	lsls r6, r6, #5
	mov r8, r6
	mov r7, sp
	adds r7, #0x30
	str r7, [sp, #0x64]
	ldr r0, [sp, #0x40]
	adds r0, #1
	str r0, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	cmp r2, r1
	beq .L08077022
.L08077008:
	cmp r3, #0
	beq .L08077018
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08077018:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x6c]
	cmp r2, r0
	bne .L08077008
.L08077022:
	adds r4, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L0807703E
	cmp r4, #0
	beq .L0807703A
	adds r0, r4, #0
	ldr r1, [sp, #0x50]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0807703A:
	adds r4, #0x10
	b .L08077060
.L0807703E:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L0807705E
.L08077046:
	cmp r2, #0
	beq .L08077056
	adds r0, r2, #0
	ldr r1, [sp, #0x50]
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08077056:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08077046
.L0807705E:
	adds r4, r2, #0
.L08077060:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08077070
.L0807706A:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807706A
.L08077070:
	cmp r0, #0
	beq .L08077078
	bl free
.L08077078:
	ldr r0, [sp, #0x70]
	add r0, sb
	ldr r7, [sp, #0x70]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L08077084:
	mov r1, sl
	ldr r0, [r1]
	bl func_08008910
	ldr r2, [sp, #0x44]
	ldr r1, [r2]
	ldr r3, [sp, #0x60]
	adds r1, r1, r3
	adds r5, r0, #0
	ldr r1, [r1, #0xc]
	ldr r2, .L080770C8 @ =0x05000200
	add r2, r8
	add r0, sp, #0x10
	movs r3, #0x20
	bl func_08008F0C
	add r4, sp, #0x10
	mov sb, r4
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080770CC
	cmp r1, #0
	beq .L080770C0
	adds r0, r1, #0
	add r1, sp, #0x10
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080770C0:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08077192
	.align 2, 0
.L080770C8: .4byte 0x05000200
.L080770CC:
	str r1, [sp, #0x6c]
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r0, [r5]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r1, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L080770E6
	adds r0, r1, #0
.L080770E6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08077104
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08077108
	mov r0, r8
	bl func_080D3BC0
	b .L08077108
.L08077104:
	movs r0, #0
	mov r8, r0
.L08077108:
	adds r4, r0, #0
	str r4, [sp, #0x70]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r4, [sp, #0x6c]
	cmp r2, r4
	beq .L08077130
.L08077116:
	cmp r3, #0
	beq .L08077126
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08077126:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x6c]
	cmp r2, r6
	bne .L08077116
.L08077130:
	adds r4, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L0807714C
	cmp r4, #0
	beq .L08077148
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08077148:
	adds r4, #0x10
	b .L0807716E
.L0807714C:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L0807716C
.L08077154:
	cmp r2, #0
	beq .L08077164
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08077164:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08077154
.L0807716C:
	adds r4, r2, #0
.L0807716E:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0807717E
.L08077178:
	adds r1, #0x10
	cmp r1, r2
	bne .L08077178
.L0807717E:
	cmp r0, #0
	beq .L08077186
	bl free
.L08077186:
	ldr r0, [sp, #0x70]
	add r0, r8
	ldr r1, [sp, #0x70]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L08077192:
	mov r2, sl
	ldr r0, [r2]
	bl func_08008920
	adds r4, r0, #0
	ldr r3, [sp, #0x44]
	ldr r1, [r3]
	ldr r5, [sp, #0x60]
	adds r1, r1, r5
	movs r6, #0
	ldrsh r2, [r1, r6]
	movs r0, #0xb2
	lsls r0, r0, #3
	add r0, sl
	movs r7, #0
	ldrsh r0, [r0, r7]
	subs r2, r2, r0
	ldr r1, [r1, #4]
	ldr r0, [sp, #0x4c]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x64]
	ldr r3, [sp, #0x48]
	bl func_0804EA94
	ldrb r2, [r4]
	cmp r2, #0x7f
	bhi .L080771E6
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r4, r1
	ldr r0, [sp, #0x30]
	str r0, [r1]
	ldr r3, [sp, #0x64]
	ldrh r0, [r3, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r4]
.L080771E6:
	ldr r4, [sp, #0x68]
	str r4, [sp, #0x40]
.L080771EA:
	ldr r5, [sp, #0x5c]
	mov r8, r5
	ldr r6, [sp, #0x44]
	ldr r0, [r6, #4]
	ldr r1, [r6]
	subs r0, r0, r1
	asrs r0, r0, #4
	cmp r8, r0
	bhs .L080771FE
	b .L08076F10
.L080771FE:
	movs r7, #0
	mov r8, r7
	ldr r1, .L08077224 @ =0x000005A4
	add r1, sl
	ldr r0, [r1, #4]
	ldr r2, [r1]
	subs r0, r0, r2
	asrs r4, r0, #4
	cmp r8, r4
	blo .L08077214
	b .L080773A0
.L08077214:
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r0, #0x30
	movs r3, #0xb2
	lsls r3, r3, #3
	add r3, sl
	b .L08077238
	.align 2, 0
.L08077224: .4byte 0x000005A4
.L08077228:
	adds r2, #0x10
	movs r6, #1
	add r8, r6
	cmp r8, r4
	bhs .L08077240
	movs r7, #0
	ldrsh r0, [r2, r7]
	adds r0, #0x30
.L08077238:
	movs r5, #0
	ldrsh r1, [r3, r5]
	cmp r0, r1
	blt .L08077228
.L08077240:
	ldr r0, .L080772C0 @ =0x000005A4
	add r0, sl
	ldr r1, [r0, #4]
	ldr r0, [r0]
	subs r1, r1, r0
	asrs r1, r1, #4
	cmp r8, r1
	blo .L08077252
	b .L080773A0
.L08077252:
	ldr r6, .L080772C0 @ =0x000005A4
	add r6, sl
	str r6, [sp, #0x54]
.L08077258:
	ldr r7, [sp, #0x54]
	ldr r0, [r7]
	mov r1, r8
	lsls r4, r1, #4
	adds r0, r0, r4
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xb2
	lsls r0, r0, #3
	add r0, sl
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0xa0
	mov r5, r8
	adds r5, #1
	str r5, [sp, #0x5c]
	cmp r1, r0
	ble .L0807727E
	b .L0807738C
.L0807727E:
	mov r6, sl
	ldr r0, [r6]
	bl func_08008910
	ldr r3, [r7]
	adds r3, r3, r4
	adds r5, r0, #0
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	add r0, sp, #0x10
	bl func_08008F0C
	mov r7, sp
	adds r7, #0x10
	str r7, [sp, #0x58]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080772C4
	cmp r1, #0
	beq .L080772B6
	adds r0, r1, #0
	add r1, sp, #0x10
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080772B6:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0807738C
	.align 2, 0
.L080772C0: .4byte 0x000005A4
.L080772C4:
	str r1, [sp, #0x6c]
	movs r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r1, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs .L080772DE
	adds r0, r1, #0
.L080772DE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080772FC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08077300
	mov r0, sb
	bl func_080D3BC0
	b .L08077300
.L080772FC:
	movs r0, #0
	mov sb, r0
.L08077300:
	adds r4, r0, #0
	str r4, [sp, #0x70]
	ldr r2, [r5]
	adds r3, r4, #0
	mov r7, r8
	adds r7, #1
	str r7, [sp, #0x5c]
	b .L08077324
.L08077310:
	cmp r3, #0
	beq .L08077320
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08077320:
	adds r2, #0x10
	adds r3, #0x10
.L08077324:
	ldr r0, [sp, #0x6c]
	cmp r2, r0
	bne .L08077310
	adds r4, r3, #0
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L08077346
	cmp r4, #0
	beq .L08077342
	adds r0, r4, #0
	ldr r1, [sp, #0x58]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08077342:
	adds r4, #0x10
	b .L08077368
.L08077346:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L08077366
.L0807734E:
	cmp r2, #0
	beq .L0807735E
	adds r0, r2, #0
	ldr r1, [sp, #0x58]
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807735E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807734E
.L08077366:
	adds r4, r2, #0
.L08077368:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08077378
.L08077372:
	adds r1, #0x10
	cmp r1, r2
	bne .L08077372
.L08077378:
	cmp r0, #0
	beq .L08077380
	bl free
.L08077380:
	ldr r0, [sp, #0x70]
	add r0, sb
	ldr r7, [sp, #0x70]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0807738C:
	ldr r0, [sp, #0x5c]
	mov r8, r0
	ldr r1, [sp, #0x54]
	ldr r0, [r1, #4]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #4
	cmp r8, r0
	bhs .L080773A0
	b .L08077258
.L080773A0:
	mov r2, sl
	ldr r0, [r2, #4]
	movs r1, #0xb2
	lsls r1, r1, #3
	add r1, sl
	movs r3, #0
	ldrsh r1, [r1, r3]
	bl func_08075C88
	movs r0, #1
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
.L080773C4:
	.byte 0xB2, 0x22, 0xD2, 0x00, 0x80, 0x18, 0x01, 0x80, 0x70, 0x47, 0x00, 0x00
	.byte 0x40, 0x68, 0x0E, 0x21, 0x40, 0x5E, 0xA0, 0x38, 0x00, 0x04, 0x00, 0x14, 0x70, 0x47, 0x00, 0x00
	.byte 0x40, 0x68, 0x70, 0x47, 0x00, 0x68, 0x70, 0x47

	thumb_func_start func_080773E8
func_080773E8: @ 0x080773E8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	mov r3, sp
	movs r1, #0x1e
	movs r2, #1
	movs r5, #0
	mov r0, sp
	strh r1, [r0]
	movs r6, #1
	strh r2, [r3, #2]
	adds r0, r4, #0
	mov r1, sp
	bl func_080084DC
	ldr r0, .L0807747C @ =vtable_unk_080E7B98
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl func_08008B54
	adds r0, r4, #0
	adds r0, #0xc
	movs r1, #1
	bl func_08008B54
	add r2, sp, #4
	movs r0, #0x1c
	movs r1, #2
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r0, [sp, #4]
	adds r1, r4, #0
	adds r1, #0x14
	movs r2, #0
	bl func_0804E7A0
	ldr r0, .L08077480 @ =0x00000714
	adds r1, r4, r0
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r1, .L08077484 @ =0x00000716
	adds r0, r4, r1
	strh r5, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	str r5, [r0]
	adds r1, #4
	adds r0, r4, r1
	strb r6, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r5, [r0]
	ldr r0, .L08077488 @ =0x0000072C
	adds r1, r4, r0
	ldr r0, .L0807748C @ =gUnk_080FC4B4
	str r0, [r1]
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L0807747C: .4byte vtable_unk_080E7B98
.L08077480: .4byte 0x00000714
.L08077484: .4byte 0x00000716
.L08077488: .4byte 0x0000072C
.L0807748C: .4byte gUnk_080FC4B4

	thumb_func_start func_08077490
func_08077490: @ 0x08077490
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sb, r0
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
	ldr r0, .L0807753C @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	adds r0, r5, #0
	bl func_08077810
	adds r0, r5, #0
	bl func_080779B4
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0x24
	bl func_08008B6C
	ldr r0, [sp, #4]
	ldr r1, .L08077540 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #0
	bl func_0800934C
	adds r0, r5, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #0
	add r0, sp, #8
	mov r8, r0
	add r1, sp, #0xc
	mov sl, r1
.L08077518:
	adds r0, r5, #0
	bl func_080087C8
	adds r0, r5, #0
	bl func_080088B8
	ldr r2, .L08077544 @ =0x0000072A
	adds r0, r5, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #8
	bls .L08077532
	b .L08077796
.L08077532:
	lsls r0, r0, #2
	ldr r1, .L08077548 @ =.L0807754C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0807753C: .4byte vtable_unk_080E5B80
.L08077540: .4byte 0x00000889
.L08077544: .4byte 0x0000072A
.L08077548: .4byte .L0807754C
.L0807754C: @ jump table
	.4byte .L08077570 @ case 0
	.4byte .L080775A0 @ case 1
	.4byte .L080775BC @ case 2
	.4byte .L080776C4 @ case 3
	.4byte .L08077738 @ case 4
	.4byte .L08077758 @ case 5
	.4byte .L08077788 @ case 6
	.4byte .L08077650 @ case 7
	.4byte .L080776A8 @ case 8
.L08077570:
	ldr r4, .L08077598 @ =0x00000716
	adds r2, r5, r4
	movs r1, #0
	strh r1, [r2]
	movs r6, #0xe3
	lsls r6, r6, #3
	adds r0, r5, r6
	strh r1, [r0]
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r5, r0
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r2, .L0807759C @ =0x0000072A
	adds r1, r5, r2
	movs r0, #1
	strh r0, [r1]
	b .L08077796
	.align 2, 0
.L08077598: .4byte 0x00000716
.L0807759C: .4byte 0x0000072A
.L080775A0:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080775AE
	b .L08077796
.L080775AE:
	ldr r3, .L080775B8 @ =0x0000072A
	adds r1, r5, r3
	movs r0, #2
	strh r0, [r1]
	b .L08077796
	.align 2, 0
.L080775B8: .4byte 0x0000072A
.L080775BC:
	ldr r4, .L08077634 @ =0x00000716
	adds r3, r5, r4
	ldrh r1, [r3]
	ldr r4, .L08077638 @ =0x0000FFF0
	adds r0, r4, #0
	ands r0, r1
	movs r6, #0xe3
	lsls r6, r6, #3
	adds r2, r5, r6
	strh r0, [r2]
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r1, r5, r0
	ldr r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #8
	adds r0, r0, r6
	str r0, [r1]
	asrs r0, r0, #0x10
	strh r0, [r3]
	ldrh r1, [r2]
	ands r0, r4
	cmp r1, r0
	beq .L080775F2
	adds r0, r5, #0
	bl func_08077A1C
.L080775F2:
	ldr r1, .L0807763C @ =0x0000071C
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0x8a
	bgt .L080775FE
	b .L08077796
.L080775FE:
	ldr r2, .L08077640 @ =0x00000724
	adds r1, r5, r2
	ldr r3, .L08077644 @ =0x00000714
	adds r0, r5, r3
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r0, [sp, #4]
	ldr r1, .L08077648 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #0
	bl func_08009378
	adds r0, r5, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r4, .L0807764C @ =0x0000072A
	adds r1, r5, r4
	movs r0, #7
	strh r0, [r1]
	b .L08077796
	.align 2, 0
.L08077634: .4byte 0x00000716
.L08077638: .4byte 0x0000FFF0
.L0807763C: .4byte 0x0000071C
.L08077640: .4byte 0x00000724
.L08077644: .4byte 0x00000714
.L08077648: .4byte 0x00000889
.L0807764C: .4byte 0x0000072A
.L08077650:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0807765E
	b .L08077796
.L0807765E:
	ldr r6, .L080776A0 @ =0x0000072A
	adds r1, r5, r6
	movs r0, #8
	strh r0, [r1]
	adds r0, r5, #0
	bl func_08077A1C
	adds r0, r5, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0xc8
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, .L080776A4 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #0
	bl func_0800934C
	adds r0, r5, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L08077796
	.align 2, 0
.L080776A0: .4byte 0x0000072A
.L080776A4: .4byte 0x00000889
.L080776A8:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08077796
	ldr r4, .L080776C0 @ =0x0000072A
	adds r1, r5, r4
	movs r0, #3
	strh r0, [r1]
	b .L08077796
	.align 2, 0
.L080776C0: .4byte 0x0000072A
.L080776C4:
	ldr r6, .L08077724 @ =0x00000716
	adds r2, r5, r6
	ldrh r1, [r2]
	ldr r3, .L08077728 @ =0x0000FFF0
	adds r0, r3, #0
	ands r0, r1
	movs r4, #0xe3
	lsls r4, r4, #3
	adds r1, r5, r4
	strh r0, [r1]
	adds r6, #0xa
	adds r4, r5, r6
	ldr r0, [r4]
	movs r6, #0x80
	lsls r6, r6, #8
	adds r0, r0, r6
	str r0, [r4]
	asrs r0, r0, #0x10
	strh r0, [r2]
	ldrh r1, [r1]
	ands r0, r3
	cmp r1, r0
	beq .L080776F8
	adds r0, r5, #0
	bl func_08077A1C
.L080776F8:
	ldr r0, .L0807772C @ =0x00000724
	adds r1, r5, r0
	ldr r0, [r1]
	adds r0, r0, r6
	str r0, [r1]
	asrs r0, r0, #0x10
	ldr r2, .L08077730 @ =0x00000714
	adds r1, r5, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bne .L08077796
	movs r0, #0x96
	lsls r0, r0, #1
	str r0, [r4]
	ldr r3, .L08077734 @ =0x0000072A
	adds r1, r5, r3
	movs r0, #4
	strh r0, [r1]
	b .L08077796
	.align 2, 0
.L08077724: .4byte 0x00000716
.L08077728: .4byte 0x0000FFF0
.L0807772C: .4byte 0x00000724
.L08077730: .4byte 0x00000714
.L08077734: .4byte 0x0000072A
.L08077738:
	movs r4, #0xe4
	lsls r4, r4, #3
	adds r1, r5, r4
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	cmp r0, #0
	bge .L08077796
	ldr r6, .L08077754 @ =0x0000072A
	adds r1, r5, r6
	movs r0, #5
	strh r0, [r1]
	b .L08077796
	.align 2, 0
.L08077754: .4byte 0x0000072A
.L08077758:
	ldr r0, [sp, #4]
	ldr r1, .L08077780 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #0
	bl func_08009378
	adds r0, r5, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r0, .L08077784 @ =0x0000072A
	adds r1, r5, r0
	movs r0, #6
	strh r0, [r1]
	b .L08077796
	.align 2, 0
.L08077780: .4byte 0x00000889
.L08077784: .4byte 0x0000072A
.L08077788:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08077796
	movs r7, #1
.L08077796:
	adds r0, r5, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L08077808 @ =0x00000716
	adds r1, r5, r3
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x16]
	adds r0, r5, #0
	bl func_08008918
	mov r2, sp
	ldr r4, .L0807780C @ =0x00000714
	adds r1, r5, r4
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x1a]
	cmp r7, #1
	beq .L080777C0
	b .L08077518
.L080777C0:
	movs r0, #0
	str r0, [sp, #8]
	mov r6, r8
	str r6, [sp, #0xc]
	mov r1, sl
	str r0, [r1, #4]
	str r0, [r6]
	mov r2, sb
	str r0, [r2]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080777E4
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080777E4:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L080777F6
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080777F6:
	mov r0, sb
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08077808: .4byte 0x00000716
.L0807780C: .4byte 0x00000714

	thumb_func_start func_08077810
func_08077810: @ 0x08077810
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L08077974 @ =0xFFFFF7FC
	add sp, r4
	adds r5, r0, #0
	bl func_08008918
	mov r1, sp
	movs r4, #0
	strh r4, [r1]
	strh r4, [r0, #0x14]
	adds r0, r5, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x16]
	adds r0, r5, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x18]
	adds r0, r5, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	adds r0, r5, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1c]
	adds r0, r5, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	ldr r1, .L08077978 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	ldr r1, .L0807797C @ =0x0600FFE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, .L08077980 @ =0x0600C800
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
	adds r0, r6, #0
	mov r1, sb
	mov r2, r8
	bl func_08008EB8
	ldr r1, .L08077984 @ =0x0600F000
	adds r0, r6, #0
	mov r2, r8
	bl func_08008EB8
	adds r0, r5, #0
	bl func_08008918
	mov r1, sp
	movs r3, #0x90
	lsls r3, r3, #2
	adds r2, r3, #0
	strh r2, [r1]
	movs r7, #0
	mov sl, r7
	strh r2, [r0]
	adds r0, r5, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L08077988 @ =0x0000994A
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r5, #0
	bl func_08008918
	mov r2, sp
	ldr r7, .L0807798C @ =0x00001E42
	adds r1, r7, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	ldr r0, .L08077990 @ =gUnk_0874E648
	ldr r1, .L08077994 @ =0x06008000
	bl Unpack
	ldr r0, .L08077998 @ =gUnk_0874EB40
	movs r4, #0xa0
	lsls r4, r4, #0x13
	adds r1, r4, #0
	movs r2, #0x20
	bl func_08008E64
	ldr r0, .L0807799C @ =gUnk_0874ECCC
	mov r1, sb
	bl Unpack
	mov r0, sl
	strh r0, [r4]
	ldr r1, .L080779A0 @ =0x05000042
	ldr r2, .L080779A4 @ =0x00007BDE
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, .L080779A8 @ =0x00003DEF
	adds r0, r3, #0
	strh r0, [r1]
	add r4, sp, #4
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_08008EB8
	ldr r6, .L080779AC @ =0x00002060
	movs r2, #0
	mov sb, r4
	movs r7, #6
	add r7, sp
	mov r8, r7
.L0807791E:
	movs r5, #0
	lsls r1, r2, #7
	lsls r0, r2, #1
	adds r4, r6, #0
	adds r4, #0x38
	adds r2, #1
	mov sl, r2
	adds r0, #1
	lsls r0, r0, #6
	adds r3, r6, #0
	adds r3, #0x1c
	mov r7, r8
	adds r2, r0, r7
	add r1, r8
.L0807793A:
	adds r0, r6, r5
	strh r0, [r1]
	strh r3, [r2]
	adds r3, #1
	adds r2, #2
	adds r1, #2
	adds r5, #1
	cmp r5, #0x1b
	ble .L0807793A
	lsls r0, r4, #0x10
	lsrs r6, r0, #0x10
	mov r2, sl
	cmp r2, #0xf
	ble .L0807791E
	ldr r1, .L08077984 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	mov r0, sb
	bl func_08008E64
	ldr r3, .L080779B0 @ =0x00000804
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08077974: .4byte 0xFFFFF7FC
.L08077978: .4byte 0x06007FE0
.L0807797C: .4byte 0x0600FFE0
.L08077980: .4byte 0x0600C800
.L08077984: .4byte 0x0600F000
.L08077988: .4byte 0x0000994A
.L0807798C: .4byte 0x00001E42
.L08077990: .4byte gUnk_0874E648
.L08077994: .4byte 0x06008000
.L08077998: .4byte gUnk_0874EB40
.L0807799C: .4byte gUnk_0874ECCC
.L080779A0: .4byte 0x05000042
.L080779A4: .4byte 0x00007BDE
.L080779A8: .4byte 0x00003DEF
.L080779AC: .4byte 0x00002060
.L080779B0: .4byte 0x00000804

	thumb_func_start func_080779B4
func_080779B4: @ 0x080779B4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, .L08077A14 @ =0x06000C00
	movs r2, #0xe0
	lsls r2, r2, #4
	movs r0, #0
	bl func_08008EB8
	mov r5, sp
	movs r0, #0x1c
	mov sb, r0
	movs r0, #2
	mov r8, r0
	adds r4, #0x14
	ldr r7, .L08077A18 @ =0x06001A00
	movs r6, #8
.L080779DC:
	mov r0, sb
	strh r0, [r5]
	mov r0, r8
	strh r0, [r5, #2]
	ldr r0, [sp]
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0xe0
	lsls r2, r2, #3
	bl func_08008E64
	movs r0, #0xe0
	lsls r0, r0, #3
	adds r7, r7, r0
	subs r6, #1
	cmp r6, #0
	bge .L080779DC
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08077A14: .4byte 0x06000C00
.L08077A18: .4byte 0x06001A00

	thumb_func_start func_08077A1C
func_08077A1C: @ 0x08077A1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	adds r5, r0, #0
	ldr r0, .L08077B0C @ =0x0000071C
	adds r4, r5, r0
	ldr r0, [r4]
	adds r0, #0xb
	mov r8, r0
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	add r2, sp, #0x40
	movs r0, #0x1c
	movs r1, #2
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r0, [sp, #0x40]
	adds r1, r5, #0
	adds r1, #0x14
	movs r2, #0
	bl func_0804E7A0
	movs r3, #0xe5
	lsls r3, r3, #3
	adds r2, r5, r3
	ldrb r0, [r2]
	add r7, sp, #0x30
	cmp r0, #0
	beq .L08077B18
	ldr r0, [r4]
	ldr r4, .L08077B10 @ =0x0000072C
	adds r1, r5, r4
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L08077B14
	add r2, sp, #0x2c
	add r6, sp, #0x44
	mov sb, r6
	movs r1, #0x20
	mov r0, sp
	adds r0, #0x2a
.L08077A7E:
	strb r1, [r0]
	subs r0, #1
	add r3, sp, #0xc
	cmp r0, r3
	bge .L08077A7E
	movs r0, #0
	strb r0, [r2]
	movs r3, #0
	ldr r4, .L08077B0C @ =0x0000071C
	adds r0, r5, r4
	ldr r0, [r0]
	ldr r6, .L08077B10 @ =0x0000072C
	adds r1, r5, r6
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0
	beq .L08077AB0
.L08077AA6:
	adds r3, #1
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08077AA6
.L08077AB0:
	cmp r3, #0
	ble .L08077AE6
	movs r0, #0x1c
	subs r0, r0, r3
	asrs r6, r0, #1
	movs r2, #0
	cmp r2, r3
	bge .L08077AE6
	ldr r1, .L08077B0C @ =0x0000071C
	adds r0, r5, r1
	ldr r0, [r0]
	ldr r4, .L08077B10 @ =0x0000072C
	adds r1, r5, r4
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r4, r0, r1
	adds r1, r6, #0
	add r1, sp
	adds r1, #0xc
.L08077AD6:
	ldr r0, [r4]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, #1
	adds r2, #1
	cmp r2, r3
	blt .L08077AD6
.L08077AE6:
	movs r3, #0
	movs r4, #1
	movs r1, #0x1c
	movs r2, #2
	add r0, sp, #0x44
	strh r1, [r0]
	mov r6, sb
	strh r2, [r6, #2]
	ldr r0, [sp, #0x44]
	adds r1, r5, #0
	adds r1, #0x14
	add r2, sp, #0xc
	str r2, [sp]
	str r3, [sp, #4]
	str r4, [sp, #8]
	movs r2, #0
	bl func_0804E958
	b .L08077B18
	.align 2, 0
.L08077B0C: .4byte 0x0000071C
.L08077B10: .4byte 0x0000072C
.L08077B14:
	movs r0, #0
	strb r0, [r2]
.L08077B18:
	ldr r3, .L08077B68 @ =0x0000071C
	adds r1, r5, r3
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	adds r0, r5, #0
	bl func_08008910
	adds r1, r5, #0
	adds r1, #0x14
	adds r5, r0, #0
	mov r4, r8
	lsls r2, r4, #3
	subs r2, r2, r4
	lsls r2, r2, #8
	ldr r6, .L08077B6C @ =0x06000C00
	adds r2, r2, r6
	add r0, sp, #0x30
	movs r3, #0xe0
	lsls r3, r3, #3
	bl func_08008F0C
	mov r8, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08077B70
	cmp r1, #0
	beq .L08077B5E
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08077B5E:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08077C30
	.align 2, 0
.L08077B68: .4byte 0x0000071C
.L08077B6C: .4byte 0x06000C00
.L08077B70:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x4c]
	ldr r0, [r5]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x48]
	add r1, sp, #0x4c
	add r0, sp, #0x48
	cmp r4, #1
	bhs .L08077B88
	adds r0, r1, #0
.L08077B88:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08077BA6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08077BAA
	mov r0, sb
	bl func_080D3BC0
	b .L08077BAA
.L08077BA6:
	movs r0, #0
	mov sb, r0
.L08077BAA:
	adds r4, r0, #0
	str r4, [sp, #0x50]
	ldr r2, [r5]
	adds r3, r4, #0
	cmp r2, sl
	beq .L08077BCE
.L08077BB6:
	cmp r3, #0
	beq .L08077BC6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08077BC6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08077BB6
.L08077BCE:
	adds r4, r3, #0
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne .L08077BEA
	cmp r4, #0
	beq .L08077BE6
	adds r0, r4, #0
	mov r1, r8
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08077BE6:
	adds r4, #0x10
	b .L08077C0C
.L08077BEA:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L08077C0A
.L08077BF2:
	cmp r2, #0
	beq .L08077C02
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08077C02:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08077BF2
.L08077C0A:
	adds r4, r2, #0
.L08077C0C:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08077C1C
.L08077C16:
	adds r1, #0x10
	cmp r1, r2
	bne .L08077C16
.L08077C1C:
	cmp r0, #0
	beq .L08077C24
	bl free
.L08077C24:
	ldr r0, [sp, #0x50]
	add r0, sb
	ldr r7, [sp, #0x50]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L08077C30:
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_08077C40
func_08077C40: @ 0x08077C40
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L08077C68 @ =vtable_unk_080E7BA4
	str r0, [r4]
	movs r0, #0xe6
	lsls r0, r0, #3
	bl __builtin_new
	bl func_080773E8
	str r0, [r4, #4]
	ldr r1, [r5]
	movs r0, #0
	str r0, [r5]
	str r1, [r4, #8]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L08077C68: .4byte vtable_unk_080E7BA4
.L08077C6C:
	.byte 0x30, 0xB5, 0x04, 0x1C
	.byte 0x0D, 0x1C, 0x0D, 0x48, 0x20, 0x60, 0xA1, 0x68, 0x00, 0x29, 0x05, 0xD0, 0x08, 0x68, 0x82, 0x68
	.byte 0x08, 0x1C, 0x03, 0x21, 0x5B, 0xF0, 0x46, 0xFE, 0x61, 0x68, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68
	.byte 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x5B, 0xF0, 0x3D, 0xFE, 0x20, 0x1C, 0x29, 0x1C, 0x88, 0xF7
	.byte 0xA5, 0xFD, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xA4, 0x7B, 0x0E, 0x08, 0x30, 0xB5, 0x81, 0xB0
	.byte 0x05, 0x1C, 0x0C, 0x1C, 0x61, 0x68, 0x68, 0x46, 0xFF, 0xF7, 0xEA, 0xFB, 0x00, 0x99, 0x00, 0x29
	.byte 0x05, 0xD0, 0x08, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x5B, 0xF0, 0x23, 0xFE, 0xA1, 0x68
	.byte 0x00, 0x20, 0xA0, 0x60, 0x29, 0x60, 0x28, 0x1C, 0x01, 0xB0, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start func_08077CE0
func_08077CE0: @ 0x08077CE0
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
	ldr r0, .L08077D2C @ =vtable_unk_080E5B80
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	bl func_08009300
	ldr r1, .L08077D30 @ =0x00000889
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
	b .L08077D40
	.align 2, 0
.L08077D2C: .4byte vtable_unk_080E5B80
.L08077D30: .4byte 0x00000889
.L08077D34:
	adds r0, r5, #0
	bl func_080785C8
	adds r0, r5, #0
	bl func_080087C8
.L08077D40:
	ldr r1, [sp, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08077D34
	adds r0, r4, #0
	movs r1, #2
	bl func_080094B8
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08077D5C
func_08077D5C: @ 0x08077D5C
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
	ldr r0, .L08077DA8 @ =vtable_unk_080E5B80
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	bl func_08009300
	ldr r1, .L08077DAC @ =0x00000889
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
	b .L08077DBC
	.align 2, 0
.L08077DA8: .4byte vtable_unk_080E5B80
.L08077DAC: .4byte 0x00000889
.L08077DB0:
	adds r0, r5, #0
	bl func_080785C8
	adds r0, r5, #0
	bl func_080087C8
.L08077DBC:
	ldr r1, [sp, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08077DB0
	adds r0, r4, #0
	movs r1, #2
	bl func_080094B8
	add sp, #0x14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08077DD8
func_08077DD8: @ 0x08077DD8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x30
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	add r0, sp, #0xc
	movs r1, #0
	bl func_080091E8
	adds r0, r4, #0
	bl func_08008920
	mov r8, r0
	adds r0, r4, #0
	bl func_08008918
	adds r6, r0, #0
	adds r0, r4, #0
	bl func_08008940
	adds r5, r0, #0
	adds r0, r4, #0
	bl func_0800894C
	adds r4, #0x18
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, sb
	str r0, [sp, #8]
	adds r0, r4, #0
	add r1, sp, #0xc
	mov r2, r8
	adds r3, r6, #0
	bl func_08050D3C
	add sp, #0x30
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08077E34
func_08077E34: @ 0x08077E34
	push {r4, r5, r6, lr}
	movs r3, #0
	lsls r5, r1, #0xb
	movs r6, #0xc0
	lsls r6, r6, #0x13
.L08077E3E:
	movs r1, #0
	lsls r0, r3, #6
	adds r4, r3, #1
	adds r0, r0, r6
	adds r3, r5, r0
.L08077E48:
	ldrh r0, [r2]
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	adds r1, #1
	cmp r1, #0x1d
	bls .L08077E48
	adds r3, r4, #0
	cmp r3, #0xc
	bls .L08077E3E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08077E64
func_08077E64: @ 0x08077E64
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r1, #0
	adds r6, r2, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	adds r5, r6, r0
	adds r1, r1, r3
	mov sb, r1
	cmp r3, sb
	bhs .L08077EB2
	lsls r0, r6, #1
	mov r8, r0
	lsls r4, r4, #0xb
	mov ip, r4
.L08077E88:
	adds r1, r6, #0
	adds r4, r3, #1
	cmp r1, r5
	bhs .L08077EAC
	lsls r0, r3, #6
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r0, r0, r3
	add r0, ip
	mov r7, r8
	adds r3, r7, r0
.L08077E9E:
	ldrh r0, [r2]
	strh r0, [r3]
	adds r2, #2
	adds r3, #2
	adds r1, #1
	cmp r1, r5
	blo .L08077E9E
.L08077EAC:
	adds r3, r4, #0
	cmp r3, sb
	blo .L08077E88
.L08077EB2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08077EC0
func_08077EC0: @ 0x08077EC0
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #8]
	adds r0, #0x10
	bl func_0800E324
	adds r6, r0, #0
	movs r0, #0
	cmp r6, #3
	bne .L08077ED8
	movs r0, #1
.L08077ED8:
	adds r5, r0, #0
	ldr r0, .L08077F38 @ =gUnk_08755848
	cmp r5, #0
	beq .L08077EE2
	ldr r0, .L08077F3C @ =gUnk_0875822C
.L08077EE2:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L08077F40 @ =gUnk_08757AE0
	cmp r5, #0
	beq .L08077EF2
	ldr r0, .L08077F44 @ =gUnk_0875A358
.L08077EF2:
	ldr r1, .L08077F48 @ =0x05000020
	movs r2, #0xc0
	bl func_08008E64
	ldr r2, .L08077F4C @ =gUnk_08755230
	cmp r5, #0
	beq .L08077F02
	ldr r2, .L08077F50 @ =gUnk_08757C14
.L08077F02:
	adds r0, r4, #0
	movs r1, #0x1e
	bl func_08077E34
	ldr r2, .L08077F54 @ =gUnk_0875553C
	cmp r5, #0
	beq .L08077F12
	ldr r2, .L08077F58 @ =gUnk_08757F20
.L08077F12:
	adds r0, r4, #0
	movs r1, #0x1d
	bl func_08077E34
	cmp r6, #0
	bne .L08077F60
	movs r0, #5
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, .L08077F5C @ =gUnk_08757BD8
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x1e
	movs r2, #0xa
	movs r3, #0xa
	bl func_08077E64
	b .L08077F7C
	.align 2, 0
.L08077F38: .4byte gUnk_08755848
.L08077F3C: .4byte gUnk_0875822C
.L08077F40: .4byte gUnk_08757AE0
.L08077F44: .4byte gUnk_0875A358
.L08077F48: .4byte 0x05000020
.L08077F4C: .4byte gUnk_08755230
.L08077F50: .4byte gUnk_08757C14
.L08077F54: .4byte gUnk_0875553C
.L08077F58: .4byte gUnk_08757F20
.L08077F5C: .4byte gUnk_08757BD8
.L08077F60:
	cmp r6, #2
	bne .L08077F7C
	movs r0, #5
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, .L08077FB4 @ =gUnk_08757BAC
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x1e
	movs r2, #0xa
	movs r3, #0xa
	bl func_08077E64
.L08077F7C:
	cmp r6, #1
	bne .L08077F98
	movs r0, #3
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, .L08077FB8 @ =gUnk_08757BCC
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x1d
	movs r2, #0x18
	movs r3, #7
	bl func_08077E64
.L08077F98:
	ldr r0, [r4, #8]
	bl func_08010E48
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08077FD0
	movs r0, #3
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	cmp r5, #0
	beq .L08077FC0
	ldr r0, .L08077FBC @ =gUnk_0875A418
	b .L08077FC2
	.align 2, 0
.L08077FB4: .4byte gUnk_08757BAC
.L08077FB8: .4byte gUnk_08757BCC
.L08077FBC: .4byte gUnk_0875A418
.L08077FC0:
	ldr r0, .L08077FEC @ =gUnk_08757BA0
.L08077FC2:
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x1d
	movs r2, #0
	movs r3, #5
	bl func_08077E64
.L08077FD0:
	ldr r0, [r4, #8]
	bl func_08010E50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08078004
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	cmp r5, #0
	beq .L08077FF4
	ldr r0, .L08077FF0 @ =gUnk_0875A438
	b .L08077FF6
	.align 2, 0
.L08077FEC: .4byte gUnk_08757BA0
.L08077FF0: .4byte gUnk_0875A438
.L08077FF4:
	ldr r0, .L08078020 @ =gUnk_08757C0C
.L08077FF6:
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x1d
	movs r2, #0xe
	movs r3, #5
	bl func_08077E64
.L08078004:
	ldr r0, [r4, #8]
	bl func_08010E58
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08078038
	movs r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	cmp r5, #0
	beq .L08078028
	ldr r0, .L08078024 @ =gUnk_0875A424
	b .L0807802A
	.align 2, 0
.L08078020: .4byte gUnk_08757C0C
.L08078024: .4byte gUnk_0875A424
.L08078028:
	ldr r0, .L08078040 @ =gUnk_08757BF8
.L0807802A:
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x1d
	movs r2, #0x1b
	movs r3, #6
	bl func_08077E64
.L08078038:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08078040: .4byte gUnk_08757BF8

	thumb_func_start func_08078044
func_08078044: @ 0x08078044
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	mov sl, r1
	str r2, [sp, #0x24]
	adds r0, #0x8c
	ldr r0, [r0]
	adds r3, r0, r1
	movs r0, #0xe8
	lsls r0, r0, #8
	cmp r3, r0
	ble .L08078068
	adds r3, r0, #0
	b .L08078072
.L08078068:
	ldr r0, .L08078088 @ =0x000007FF
	cmp r3, r0
	bgt .L08078072
	movs r3, #0x80
	lsls r3, r3, #4
.L08078072:
	adds r1, r7, #0
	adds r1, #0x90
	ldr r0, [r1]
	ldr r4, [sp, #0x24]
	adds r2, r0, r4
	movs r0, #0xc0
	lsls r0, r0, #7
	cmp r2, r0
	ble .L0807808C
	adds r2, r0, #0
	b .L08078096
	.align 2, 0
.L08078088: .4byte 0x000007FF
.L0807808C:
	ldr r0, .L08078108 @ =0x000003FF
	cmp r2, r0
	bgt .L08078096
	movs r2, #0x80
	lsls r2, r2, #3
.L08078096:
	adds r0, r7, #0
	adds r0, #0x8c
	str r3, [r0]
	str r2, [r1]
	adds r0, r3, #0
	cmp r0, #0
	bge .L080780A6
	adds r0, #0xff
.L080780A6:
	asrs r0, r0, #8
	mov sb, r0
	adds r0, r2, #0
	cmp r0, #0
	bge .L080780B2
	adds r0, #0xff
.L080780B2:
	asrs r0, r0, #8
	mov r8, r0
	mov r0, sl
	cmp r0, #0
	bne .L0807810C
	ldr r1, [sp, #0x24]
	cmp r1, #0
	bne .L0807810C
	adds r4, r7, #0
	adds r4, #0x78
	adds r0, r4, #0
	bl func_0805E8F0
	adds r0, r7, #0
	bl func_08008920
	adds r5, r0, #0
	ldr r1, [r7, #0x78]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r7, #0x7c]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #4
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	adds r0, r7, #0
	adds r0, #0x20
	mov r3, r8
	str r3, [sp]
	adds r1, r5, #0
	add r2, sp, #4
	mov r3, sb
	bl func_08075AE8
	b .L08078126
	.align 2, 0
.L08078108: .4byte 0x000003FF
.L0807810C:
	adds r0, r7, #0
	bl func_08008920
	adds r1, r0, #0
	adds r0, r7, #0
	adds r0, #0x20
	adds r2, r7, #0
	adds r2, #0x58
	mov r4, r8
	str r4, [sp]
	mov r3, sb
	bl func_08075AE8
.L08078126:
	adds r0, r7, #0
	adds r0, #0x94
	ldr r6, [r0]
	str r0, [sp, #0x28]
	mov r0, sl
	cmp r0, #0
	bne .L0807813A
	ldr r1, [sp, #0x24]
	cmp r1, #0
	beq .L080781F6
.L0807813A:
	movs r6, #0x28
	ldr r0, [r7, #8]
	bl func_08010E48
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08078164
	ldr r3, .L08078160 @ =gUnk_080FD080
	adds r0, r7, #0
	mov r1, sb
	mov r2, r8
	bl func_080782C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08078164
	movs r6, #0
	b .L080781F2
	.align 2, 0
.L08078160: .4byte gUnk_080FD080
.L08078164:
	ldr r0, [r7, #8]
	bl func_08010E50
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807818C
	ldr r3, .L08078188 @ =gUnk_080FD0A8
	adds r0, r7, #0
	mov r1, sb
	mov r2, r8
	bl func_080782C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807818C
	movs r6, #2
	b .L080781F2
	.align 2, 0
.L08078188: .4byte gUnk_080FD0A8
.L0807818C:
	ldr r0, [r7, #8]
	bl func_08010E58
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080781B4
	ldr r3, .L080781B0 @ =gUnk_080FD094
	adds r0, r7, #0
	mov r1, sb
	mov r2, r8
	bl func_080782C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080781B4
	movs r6, #1
	b .L080781F2
	.align 2, 0
.L080781B0: .4byte gUnk_080FD094
.L080781B4:
	ldr r0, [r7, #8]
	ldr r3, .L080781D0 @ =0x00002210
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	movs r1, #9
	cmp r0, #0
	bge .L080781C6
	movs r1, #3
.L080781C6:
	adds r4, r1, #0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r5, r0, #2
	b .L080781D8
	.align 2, 0
.L080781D0: .4byte 0x00002210
.L080781D4:
	adds r5, #0x14
	adds r4, #1
.L080781D8:
	cmp r4, #0x27
	bgt .L080781F2
	ldr r3, .L08078204 @ =gUnk_080FD080
	adds r3, r5, r3
	adds r0, r7, #0
	mov r1, sb
	mov r2, r8
	bl func_080782C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080781D4
	adds r6, r4, #0
.L080781F2:
	ldr r4, [sp, #0x28]
	str r6, [r4]
.L080781F6:
	cmp r6, #0x1d
	beq .L08078214
	cmp r6, #0x1d
	bgt .L08078208
	cmp r6, #0xa
	beq .L08078228
	b .L08078264
	.align 2, 0
.L08078204: .4byte gUnk_080FD080
.L08078208:
	cmp r6, #0x28
	bne .L08078264
	ldr r4, .L08078210 @ =gUnk_080FCE14
	b .L08078288
	.align 2, 0
.L08078210: .4byte gUnk_080FCE14
.L08078214:
	ldrb r0, [r7, #0x14]
	cmp r0, #0
	beq .L08078222
	movs r0, #0x8c
	lsls r0, r0, #1
	adds r4, r7, r0
	b .L08078288
.L08078222:
	adds r4, r7, #0
	adds r4, #0x98
	b .L08078288
.L08078228:
	ldrb r0, [r7, #0x14]
	cmp r0, #0
	beq .L08078258
	ldr r0, [r7, #8]
	ldr r1, .L08078240 @ =0x00001E28
	adds r0, r0, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bls .L08078248
	ldr r4, .L08078244 @ =gUnk_080FD550
	b .L08078288
	.align 2, 0
.L08078240: .4byte 0x00001E28
.L08078244: .4byte gUnk_080FD550
.L08078248:
	ldrb r0, [r7, #0x14]
	cmp r0, #0
	beq .L08078258
	ldr r0, .L08078254 @ =gUnk_080FD080
	adds r0, #0xcc
	b .L08078286
	.align 2, 0
.L08078254: .4byte gUnk_080FD080
.L08078258:
	ldr r0, .L08078260 @ =gUnk_080FD080
	adds r0, #0xc8
	b .L08078286
	.align 2, 0
.L08078260: .4byte gUnk_080FD080
.L08078264:
	ldrb r0, [r7, #0x14]
	cmp r0, #0
	beq .L0807827C
	ldr r1, .L08078278 @ =gUnk_080FD080
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, #4
	b .L08078284
	.align 2, 0
.L08078278: .4byte gUnk_080FD080
.L0807827C:
	ldr r1, .L080782BC @ =gUnk_080FD080
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #2
.L08078284:
	adds r0, r0, r1
.L08078286:
	ldr r4, [r0]
.L08078288:
	cmp r4, #0
	bne .L0807828E
	ldr r4, .L080782C0 @ =gUnk_080FCE14
.L0807828E:
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r5, r7, r3
	ldr r0, [r5]
	cmp r4, r0
	beq .L080782AA
	adds r0, r7, #0
	adds r0, #0x18
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	str r4, [r5]
.L080782AA:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080782BC: .4byte gUnk_080FD080
.L080782C0: .4byte gUnk_080FCE14

	thumb_func_start func_080782C4
func_080782C4: @ 0x080782C4
	push {r4, lr}
	movs r4, #0
	ldrb r0, [r3, #0x10]
	cmp r0, r1
	bhi .L080782E2
	ldrb r0, [r3, #0x12]
	cmp r1, r0
	bhi .L080782E2
	ldrb r0, [r3, #0x11]
	cmp r0, r2
	bhi .L080782E2
	ldrb r3, [r3, #0x13]
	cmp r2, r3
	bhi .L080782E2
	movs r4, #1
.L080782E2:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080782EC
func_080782EC: @ 0x080782EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	mov sl, r0
	adds r3, r1, #0
	str r2, [sp, #0x40]
	movs r0, #0xce
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0, #0x20]
	cmp r2, r0
	blo .L0807830C
	b .L080785B6
.L0807830C:
	movs r6, #0
	ldrh r0, [r3]
	lsls r0, r0, #0x16
	lsrs r1, r0, #0x16
	cmp r1, #0x33
	bhi .L0807839A
	lsls r1, r1, #3
	ldr r0, .L0807838C @ =gUnk_080FD3A0
	adds r7, r1, r0
	ldr r5, [r7, #4]
	cmp r5, #0
	beq .L08078382
	ldrb r1, [r3, #1]
	lsrs r1, r1, #2
	ldrh r0, [r3, #2]
	ldr r2, .L08078390 @ =0x000003FF
	ands r0, r2
	lsls r0, r0, #6
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	ldrb r1, [r3, #3]
	lsrs r1, r1, #2
	ldrh r0, [r3, #4]
	ands r0, r2
	lsls r0, r0, #6
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r2, r5, #0
	ldrh r0, [r2]
	ldrh r3, [r2, #4]
	cmp r0, r3
	bhs .L08078382
	ldrh r0, [r2, #2]
	ldrh r5, [r2, #6]
	cmp r0, r5
	bhs .L08078382
.L08078358:
	ldrh r0, [r2]
	cmp r0, r4
	bgt .L08078370
	ldrh r0, [r2, #4]
	cmp r4, r0
	bge .L08078370
	ldrh r0, [r2, #2]
	cmp r0, r1
	bgt .L08078370
	ldrh r3, [r2, #6]
	cmp r1, r3
	blt .L08078394
.L08078370:
	adds r2, #0xc
	ldrh r0, [r2]
	ldrh r5, [r2, #4]
	cmp r0, r5
	bhs .L08078382
	ldrh r0, [r2, #2]
	ldrh r3, [r2, #6]
	cmp r0, r3
	blo .L08078358
.L08078382:
	cmp r6, #0
	bne .L080783BC
	adds r6, r7, #0
	b .L080783B6
	.align 2, 0
.L0807838C: .4byte gUnk_080FD3A0
.L08078390: .4byte 0x000003FF
.L08078394:
	adds r6, r2, #0
	adds r6, #8
	b .L08078382
.L0807839A:
	adds r0, r1, #0
	subs r0, #0x34
	cmp r0, #0xff
	bhi .L080783AC
	ldr r6, .L080783A8 @ =gUnk_080FD540
	b .L080783B6
	.align 2, 0
.L080783A8: .4byte gUnk_080FD540
.L080783AC:
	ldr r4, .L080783F8 @ =0xFFFFFECC
	adds r0, r1, r4
	cmp r0, #0xff
	bhi .L080783B6
	ldr r6, .L080783FC @ =gUnk_080FD548
.L080783B6:
	cmp r6, #0
	bne .L080783BC
	b .L080785B6
.L080783BC:
	mov sb, sp
	movs r7, #0xee
	lsls r7, r7, #1
	add r7, sl
	add r5, sp, #0x1c
	mov r8, r5
	ldr r3, [r7, #4]
	ldr r1, [r3, #4]
	cmp r1, #0
	beq .L08078406
	ldrb r4, [r6]
.L080783D2:
	adds r2, r1, #0
	adds r2, #0x10
	movs r5, #0
	ldrb r0, [r1, #0x10]
	cmp r0, r4
	blo .L080783EA
	cmp r4, r0
	blo .L080783EC
	ldrb r0, [r2, #1]
	ldrb r2, [r6, #1]
	cmp r0, r2
	bhs .L080783EC
.L080783EA:
	movs r5, #1
.L080783EC:
	cmp r5, #0
	bne .L08078400
	adds r3, r1, #0
	ldr r1, [r3, #8]
	b .L08078402
	.align 2, 0
.L080783F8: .4byte 0xFFFFFECC
.L080783FC: .4byte gUnk_080FD548
.L08078400:
	ldr r1, [r1, #0xc]
.L08078402:
	cmp r1, #0
	bne .L080783D2
.L08078406:
	mov r4, r8
	str r3, [r4]
	movs r5, #0
	ldr r0, [r7, #4]
	str r0, [sp, #0x20]
	movs r2, #0
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	bne .L0807841A
	movs r2, #1
.L0807841A:
	cmp r2, #0
	bne .L0807843E
	adds r3, r1, #0
	adds r3, #0x10
	movs r4, #0
	ldrb r2, [r6]
	ldrb r0, [r1, #0x10]
	cmp r2, r0
	blo .L08078438
	cmp r0, r2
	blo .L0807843A
	ldrb r0, [r6, #1]
	ldrb r3, [r3, #1]
	cmp r0, r3
	bhs .L0807843A
.L08078438:
	movs r4, #1
.L0807843A:
	cmp r4, #0
	beq .L08078440
.L0807843E:
	movs r5, #1
.L08078440:
	cmp r5, #0
	beq .L08078464
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x28]
	movs r1, #0
	add r3, sp, #0x2c
	ldr r0, [r6]
	str r0, [sp, #0x2c]
	strb r1, [r3, #4]
	add r2, sp, #0x34
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x34]
	add r0, sp, #0x24
	adds r1, r7, #0
	bl func_080E3054
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x1c]
.L08078464:
	ldr r1, [sp, #0x1c]
	ldrb r2, [r6]
	ldrb r4, [r1, #0x14]
	adds r0, r4, #1
	strb r0, [r1, #0x14]
	lsls r4, r4, #0x18
	ldrb r5, [r6, #1]
	lsrs r4, r4, #0x15
	adds r4, r4, r2
	movs r1, #0xce
	lsls r1, r1, #1
	add r1, sl
	movs r3, #0x80
	lsls r3, r3, #1
	add r0, sp, #0x1c
	ldr r2, [sp, #0x40]
	bl func_0805E824
	mov r7, sb
	str r4, [r7]
	str r5, [r7, #4]
	mov r1, sb
	adds r1, #8
	add r0, sp, #0x1c
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r5, r7}
	stm r1!, {r5, r7}
	movs r6, #0xe6
	lsls r6, r6, #1
	add r6, sl
	mov sb, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080784C8
	cmp r1, #0
	beq .L080784C0
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080784C0:
	ldr r0, [r6, #4]
	adds r0, #0x1c
	str r0, [r6, #4]
	b .L080785B6
.L080784C8:
	str r1, [sp, #0x44]
	movs r0, #1
	str r0, [sp, #0x3c]
	ldr r2, [r6]
	adds r3, r1, #0
	subs r1, r3, r2
	ldr r0, .L08078510 @ =0xB6DB6DB7
	muls r0, r1, r0
	asrs r4, r0, #2
	str r4, [sp, #0x38]
	add r3, sp, #0x3c
	add r0, sp, #0x38
	adds r1, r2, #0
	cmp r4, #1
	bhs .L080784E8
	adds r0, r3, #0
.L080784E8:
	ldr r0, [r0]
	adds r4, r4, r0
	mov r8, r4
	cmp r4, #0
	beq .L08078514
	lsls r4, r4, #3
	mov r5, r8
	subs r0, r4, r5
	lsls r5, r0, #2
	adds r0, r5, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L0807850C
	adds r0, r5, #0
	bl func_080D3BC0
.L0807850C:
	ldr r1, [r6]
	b .L08078518
	.align 2, 0
.L08078510: .4byte 0xB6DB6DB7
.L08078514:
	movs r0, #0
	mov sl, r0
.L08078518:
	adds r5, r0, #0
	str r5, [sp, #0x48]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r7, [sp, #0x44]
	cmp r2, r7
	beq .L08078544
.L08078526:
	cmp r3, #0
	beq .L0807853A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807853A:
	adds r2, #0x1c
	adds r3, #0x1c
	ldr r0, [sp, #0x44]
	cmp r2, r0
	bne .L08078526
.L08078544:
	adds r5, r3, #0
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L08078564
	cmp r5, #0
	beq .L08078560
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08078560:
	adds r5, #0x1c
	b .L0807858A
.L08078564:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08078588
.L0807856C:
	cmp r2, #0
	beq .L08078580
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08078580:
	subs r3, #1
	adds r2, #0x1c
	cmp r3, #0
	bne .L0807856C
.L08078588:
	adds r5, r2, #0
.L0807858A:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L0807859A
.L08078594:
	adds r0, #0x1c
	cmp r0, r3
	bne .L08078594
.L0807859A:
	cmp r1, #0
	beq .L080785A4
	adds r0, r1, #0
	bl free
.L080785A4:
	mov r1, sl
	mov r2, r8
	subs r0, r1, r2
	lsls r0, r0, #2
	ldr r3, [sp, #0x48]
	adds r0, r0, r3
	str r3, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080785B6:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080785C8
func_080785C8: @ 0x080785C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r6, r0, #0
	bl func_08077DD8
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r5, [r0]
	ldr r7, [r0, #4]
	cmp r5, r7
	beq .L08078620
.L080785E0:
	adds r0, r6, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r1, [r5, #8]
	ldr r3, [r1]
	ldrh r2, [r5, #0x14]
	lsls r2, r2, #2
	ldr r0, [r5, #0xc]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #4
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #4
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r3, [r5]
	ldr r0, [r5, #4]
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x20
	adds r1, r4, #0
	add r2, sp, #4
	bl func_08075AE8
	adds r5, #0x1c
	cmp r5, r7
	bne .L080785E0
.L08078620:
	ldr r0, [r6, #8]
	ldr r1, .L08078658 @ =0x00002210
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge .L0807864E
	adds r0, r6, #0
	bl func_08008920
	adds r4, r0, #0
	adds r0, r6, #0
	bl func_08008940
	adds r1, r6, #0
	adds r1, #0x1c
	str r0, [sp]
	adds r0, r1, #0
	movs r1, #0x98
	movs r2, #0x50
	adds r3, r4, #0
	bl func_0803C7C8
.L0807864E:
	add sp, #0x24
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08078658: .4byte 0x00002210

	thumb_func_start func_0807865C
func_0807865C: @ 0x0807865C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x90
	str r0, [sp, #0x78]
	adds r4, r1, #0
	str r2, [sp, #0x7c]
	adds r6, r3, #0
	ldr r0, .L080789F8 @ =vtable_unk_080E7BC0
	ldr r1, [sp, #0x78]
	str r0, [r1]
	movs r0, #0xf6
	lsls r0, r0, #1
	bl __builtin_new
	adds r1, r0, #0
	ldr r2, [sp, #0x7c]
	ldr r0, [r2]
	movs r3, #0
	mov r8, r3
	str r3, [r2]
	str r0, [sp, #0xc]
	add r5, sp, #0x10
	adds r7, r1, #0
	adds r0, r7, #0
	bl func_08008444
	ldr r0, .L080789FC @ =vtable_unk_080E7BB4
	str r0, [r7, #4]
	str r4, [r7, #8]
	ldr r0, [sp, #0xc]
	mov r1, r8
	str r1, [sp, #0xc]
	str r0, [r7, #0xc]
	str r6, [r7, #0x10]
	strb r1, [r7, #0x14]
	adds r0, r5, #0
	bl func_0800835C
	add r0, sp, #0x14
	bl func_0800770C
	add r4, sp, #0x14
	adds r0, r7, #0
	adds r0, #0x18
	mov r2, r8
	str r2, [sp]
	str r5, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl func_08050CC0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007714
	adds r0, r5, #0
	movs r1, #2
	bl func_08008364
	adds r0, r7, #0
	adds r0, #0x1c
	bl func_0803C5B0
	adds r0, r7, #0
	adds r0, #0x20
	bl func_080756B0
	adds r5, r7, #0
	adds r5, #0x28
	ldr r1, .L08078A00 @ =gUnk_08728208
	adds r0, r5, #0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x58
	adds r1, r5, #0
	movs r2, #0
	bl func_0805E790
	adds r0, r7, #0
	adds r0, #0x78
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x8c
	mov r3, r8
	str r3, [r0]
	adds r0, #4
	str r3, [r0]
	adds r1, r7, #0
	adds r1, #0x94
	movs r0, #0x28
	str r0, [r1]
	movs r0, #0x98
	adds r0, r0, r7
	mov sl, r0
	strb r3, [r0]
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sb, r1
	mov r2, r8
	strb r2, [r1]
	movs r3, #0xcc
	lsls r3, r3, #1
	adds r0, r7, r3
	mov r1, r8
	str r1, [r0]
	movs r2, #0xce
	lsls r2, r2, #1
	adds r6, r7, r2
	ldr r1, .L08078A04 @ =gUnk_087537D0
	adds r0, r6, #0
	bl func_0805E6CC
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r0, r7, r3
	mov r1, r8
	str r1, [r0]
	str r1, [r0, #4]
	movs r2, #0xea
	lsls r2, r2, #1
	adds r0, r7, r2
	str r1, [r0, #4]
	adds r3, #0x10
	adds r4, r7, r3
	str r1, [r4, #4]
	movs r0, #0x18
	bl malloc
	cmp r0, #0
	bne .L0807877E
	movs r0, #0x18
	bl func_080D3BC0
.L0807877E:
	str r0, [r4, #4]
	mov r1, r8
	str r1, [r4, #8]
	str r1, [r4, #0xc]
	strb r1, [r0]
	str r1, [r0, #4]
	ldr r0, [r4, #4]
	str r0, [r0, #8]
	ldr r0, [r4, #4]
	str r0, [r0, #0xc]
	movs r4, #0
	ldrh r5, [r5, #0x22]
	mov r2, sl
	str r2, [sp, #0x8c]
	mov r3, sb
	str r3, [sp, #0x84]
	mov sb, r6
	mov r0, sp
	adds r0, #0x24
	str r0, [sp, #0x80]
	mov r1, sp
	adds r1, #0x64
	str r1, [sp, #0x88]
	add r2, sp, #0x6c
	mov sl, r2
	cmp r4, r5
	bhs .L080787D0
.L080787B4:
	add r0, sp, #0x24
	adds r1, r7, #0
	adds r1, #0x28
	adds r2, r4, #0
	bl func_0805E790
	adds r0, r7, #0
	adds r0, #0x20
	add r1, sp, #0x24
	bl func_080757E8
	adds r4, #1
	cmp r4, r5
	blo .L080787B4
.L080787D0:
	ldr r1, .L08078A08 @ =gUnk_080FC6C2
	add r0, sp, #0x24
	movs r2, #8
	bl memcpy
	movs r6, #0
	mov r8, sl
.L080787DE:
	lsls r0, r6, #1
	ldr r3, [sp, #0x80]
	adds r0, r3, r0
	ldrh r2, [r0]
	ldr r0, [sp, #0x88]
	mov r1, sb
	bl func_0805E760
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	movs r4, #0
	ldr r0, [sp, #0x6c]
	movs r1, #0
	cmp r0, #0
	beq .L08078804
	mov r0, sl
	ldrh r1, [r0, #4]
.L08078804:
	adds r5, r1, #0
	adds r6, #1
	cmp r4, r5
	bhs .L0807882E
.L0807880C:
	lsls r0, r4, #2
	mov r2, r8
	ldr r1, [r2]
	adds r1, r1, r0
	ldrh r2, [r1]
	add r0, sp, #0x44
	mov r1, sb
	bl func_0805E790
	adds r0, r7, #0
	adds r0, #0x20
	add r1, sp, #0x44
	bl func_080757E8
	adds r4, #1
	cmp r4, r5
	blo .L0807880C
.L0807882E:
	cmp r6, #3
	bls .L080787DE
	ldr r0, [r7, #8]
	adds r0, #0x14
	bl method_08009AF4__C4Farm
	mov sb, r0
	ldr r6, [sp, #0x8c]
	mov r4, sb
	adds r0, r6, #0
	bl strlen
	adds r3, r6, r0
	mov r8, r3
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L08078872
	adds r0, r4, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08078860
	adds r4, r5, #0
.L08078860:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r4
	movs r0, #0
	strb r0, [r1]
.L08078872:
	ldr r1, .L08078A0C @ =gUnk_080FC6CC
	mov sb, r1
	adds r0, r6, #0
	bl strlen
	adds r2, r6, r0
	mov r8, r2
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080788A8
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08078896
	adds r4, r5, #0
.L08078896:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	mov r3, r8
	adds r1, r3, r4
	movs r0, #0
	strb r0, [r1]
.L080788A8:
	ldr r0, .L08078A10 @ =gUnk_080FC6D4
	mov r8, r0
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L080788DA
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080788CA
	adds r4, r5, #0
.L080788CA:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L080788DA:
	ldr r0, [r7, #8]
	adds r0, #0x14
	bl method_08009AF4__C4Farm
	mov sb, r0
	ldr r6, [sp, #0x84]
	mov r4, sb
	adds r0, r6, #0
	bl strlen
	adds r1, r6, r0
	mov r8, r1
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807891A
	adds r0, r4, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L08078908
	adds r4, r5, #0
.L08078908:
	mov r0, r8
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r4
	movs r0, #0
	strb r0, [r1]
.L0807891A:
	ldr r3, .L08078A14 @ =gUnk_080FC6E8
	mov r8, r3
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807894C
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807893C
	adds r4, r5, #0
.L0807893C:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807894C:
	ldr r4, [r7, #8]
	ldr r0, .L08078A18 @ =0x00001BD8
	adds r5, r4, r0
	add r0, sp, #0x2c
	adds r1, r5, #0
	bl func_0800E924
	adds r0, r7, #0
	add r1, sp, #0x2c
	movs r2, #0
	bl func_080782EC
	ldr r1, [r7, #8]
	ldr r2, .L08078A1C @ =0x0000219C
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt .L08078986
	ldr r3, .L08078A20 @ =0x00001C70
	adds r1, r1, r3
	add r0, sp, #0x2c
	bl __5ActorRC5Actor
	adds r0, r7, #0
	add r1, sp, #0x2c
	movs r2, #1
	bl func_080782EC
.L08078986:
	adds r0, r5, #0
	bl func_0800E934
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080789C4
	ldr r0, .L08078A24 @ =0x00001C2C
	adds r4, r4, r0
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080789AC
	adds r0, r4, #0
	bl func_0800F204
	cmp r0, #4
	beq .L080789C4
.L080789AC:
	ldr r1, [r7, #8]
	movs r2, #0xe5
	lsls r2, r2, #5
	adds r1, r1, r2
	add r0, sp, #0x2c
	bl func_0800FFE0
	adds r0, r7, #0
	add r1, sp, #0x2c
	movs r2, #3
	bl func_080782EC
.L080789C4:
	adds r0, r5, #0
	bl func_0800E940
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08078AA6
	adds r4, r5, #0
	adds r4, #0x54
	adds r0, r4, #0
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08078A32
	adds r0, r4, #0
	bl func_0800F204
	cmp r0, #1
	bne .L08078A32
	adds r0, r4, #0
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x74
	b .L08078A28
	.align 2, 0
.L080789F8: .4byte vtable_unk_080E7BC0
.L080789FC: .4byte vtable_unk_080E7BB4
.L08078A00: .4byte gUnk_08728208
.L08078A04: .4byte gUnk_087537D0
.L08078A08: .4byte gUnk_080FC6C2
.L08078A0C: .4byte gUnk_080FC6CC
.L08078A10: .4byte gUnk_080FC6D4
.L08078A14: .4byte gUnk_080FC6E8
.L08078A18: .4byte 0x00001BD8
.L08078A1C: .4byte 0x0000219C
.L08078A20: .4byte 0x00001C70
.L08078A24: .4byte 0x00001C2C
.L08078A28:
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x35
	beq .L08078AA6
.L08078A32:
	adds r0, r5, #0
	adds r0, #0x60
	movs r1, #0x35
	bl GetFirstSlotWithArticle__C8RucksackUi
	cmp r0, #0
	bge .L08078AA6
	ldr r0, [r7, #8]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl GetShelf__C9FarmHouse
	cmp r0, #0
	beq .L08078A5A
	movs r1, #0x35
	bl GetFirstSlotWith__C5ShelfUi
	cmp r0, #0
	bge .L08078A70
.L08078A5A:
	ldr r1, [r7, #8]
	ldr r0, .L08078A6C @ =0x00001CCC
	adds r1, r1, r0
	adds r0, r7, #0
	movs r2, #2
	bl func_080782EC
	b .L08078AA6
	.align 2, 0
.L08078A6C: .4byte 0x00001CCC
.L08078A70:
	add r1, sp, #0x2c
	movs r4, #0x1d
	ldrh r2, [r1]
	ldr r3, .L08078AE4 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	ldrb r4, [r1, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r4
	strb r0, [r1, #1]
	ldrh r4, [r1, #2]
	adds r0, r3, #0
	ands r0, r4
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r2, r0
	strb r2, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	strh r3, [r1, #4]
	adds r0, r7, #0
	movs r2, #2
	bl func_080782EC
.L08078AA6:
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq .L08078AB8
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08078AB8:
	ldr r1, [sp, #0x78]
	str r7, [r1, #4]
	ldr r2, [sp, #0x7c]
	ldr r1, [r2]
	cmp r1, #0
	beq .L08078AD0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08078AD0:
	ldr r0, [sp, #0x78]
	add sp, #0x90
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08078AE4: .4byte 0xFFFFFC00
.L08078AE8:
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x09, 0x48
	.byte 0x20, 0x60, 0x61, 0x68, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21
	.byte 0x5A, 0xF0, 0x08, 0xFF, 0x20, 0x1C, 0x29, 0x1C, 0x87, 0xF7, 0x70, 0xFE, 0x30, 0xBC, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xC0, 0x7B, 0x0E, 0x08, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
	.byte 0xE0, 0xB4, 0x91, 0xB0, 0x0D, 0x90, 0x0E, 0x90, 0x4F, 0x68, 0x38, 0x1C, 0x8F, 0xF7, 0xF4, 0xFE
	.byte 0x02, 0x1C, 0x15, 0x1C, 0x04, 0xA9, 0xE2, 0x23, 0x5B, 0x01, 0x18, 0x1C, 0x08, 0x80, 0x10, 0x80
	.byte 0xB8, 0x68, 0x30, 0x4B, 0xC0, 0x18, 0x00, 0x78, 0x80, 0x07, 0x00, 0x28, 0x02, 0xDA, 0xF2, 0x20
	.byte 0x40, 0x01, 0x10, 0x80, 0xF2, 0x21, 0x49, 0x01, 0x08, 0x1C, 0x6A, 0x46, 0x10, 0x82, 0xE8, 0x81
	.byte 0xEA, 0x23, 0x5B, 0x01, 0x18, 0x1C, 0x10, 0x82, 0xA8, 0x81, 0x38, 0x1C, 0xFF, 0xF7, 0xA8, 0xF9
	.byte 0x25, 0x49, 0x08, 0x1C, 0x6A, 0x46, 0x10, 0x82, 0x68, 0x81, 0x24, 0x48, 0x00, 0x68, 0x24, 0x49
	.byte 0x0A, 0x68, 0x24, 0x49, 0x90, 0xF7, 0x6E, 0xF9, 0x00, 0x20, 0x23, 0x49, 0x20, 0x22, 0x90, 0xF7
	.byte 0x93, 0xF9, 0x01, 0x20, 0x40, 0x42, 0x21, 0x49, 0x80, 0x22, 0x12, 0x01, 0x90, 0xF7, 0x8C, 0xF9
	.byte 0x03, 0x20, 0x00, 0x90, 0x00, 0x20, 0x01, 0x90, 0x0F, 0x20, 0x02, 0x90, 0x1B, 0x48, 0x13, 0x21
	.byte 0x0A, 0x22, 0x0B, 0x23, 0xD8, 0xF7, 0xB4, 0xFB, 0x3C, 0x1C, 0x1C, 0x34, 0xB9, 0x68, 0x10, 0x31
	.byte 0x20, 0x1C, 0x01, 0x22, 0xC4, 0xF7, 0xC2, 0xF8, 0xB8, 0x68, 0x81, 0x68, 0x20, 0x1C, 0xC4, 0xF7
	.byte 0xE7, 0xFB, 0x38, 0x1C, 0x18, 0x30, 0xD8, 0xF7, 0xC7, 0xF8, 0x28, 0x89, 0x40, 0x21, 0x08, 0x43
	.byte 0x28, 0x81, 0x38, 0x1C, 0xF0, 0x21, 0xC9, 0x01, 0xC8, 0x22, 0x92, 0x01, 0xFF, 0xF7, 0x2A, 0xFA
	.byte 0x38, 0x1C, 0xFF, 0xF7, 0x75, 0xF8, 0x6B, 0x46, 0x24, 0x33, 0x0F, 0x93, 0x68, 0x46, 0x2C, 0x30
	.byte 0x10, 0x90, 0xE0, 0xE0, 0x10, 0x22, 0x00, 0x00, 0x48, 0x1C, 0x00, 0x00, 0x70, 0x9F, 0x0F, 0x08
	.byte 0x74, 0x9F, 0x0F, 0x08, 0x00, 0x80, 0x00, 0x06, 0xE0, 0xFF, 0x00, 0x06, 0x00, 0xE0, 0x00, 0x06
	.byte 0x01, 0x24, 0x01, 0x20, 0x08, 0x40, 0x00, 0x28, 0x7A, 0xD0, 0x3E, 0x69, 0x01, 0x2E, 0x71, 0xD1
	.byte 0x3D, 0x1C, 0x94, 0x35, 0x29, 0x68, 0x28, 0x29, 0x68, 0xD0, 0x30, 0x4A, 0x90, 0x46, 0x88, 0x00
	.byte 0x40, 0x18, 0x80, 0x00, 0x41, 0x46, 0x08, 0x31, 0x40, 0x18, 0x01, 0x68, 0x2C, 0x48, 0x81, 0x42
	.byte 0x5C, 0xDC, 0xB1, 0x20, 0x90, 0xF7, 0xA8, 0xF8, 0x07, 0xAC, 0x20, 0x1C, 0x00, 0x21, 0x8F, 0xF7
	.byte 0x79, 0xFF, 0x20, 0x1C, 0x02, 0x21, 0x8F, 0xF7, 0xC7, 0xFF, 0x28, 0x68, 0x82, 0x00, 0x12, 0x18
	.byte 0x92, 0x00, 0x42, 0x44, 0xF8, 0x68, 0x06, 0x71, 0xF8, 0x68, 0x06, 0x30, 0x0C, 0x23, 0xD6, 0x5E
	.byte 0x0E, 0x23, 0xD1, 0x5E, 0x89, 0x46, 0x05, 0xA9, 0x93, 0x68, 0x1E, 0x4A, 0x92, 0x46, 0x52, 0x46
	.byte 0x13, 0x40, 0x0C, 0x88, 0x1C, 0x4A, 0x90, 0x46, 0x22, 0x40, 0x1A, 0x43, 0x0A, 0x80, 0x36, 0x04
	.byte 0x33, 0x0C, 0x3F, 0x22, 0x94, 0x46, 0x13, 0x40, 0x9B, 0x00, 0x4D, 0x78, 0x03, 0x24, 0x22, 0x1C
	.byte 0x2A, 0x40, 0x1A, 0x43, 0x4A, 0x70, 0xB6, 0x0D, 0x53, 0x46, 0x1E, 0x40, 0x4B, 0x88, 0x42, 0x46
	.byte 0x1A, 0x40, 0x32, 0x43, 0x4A, 0x80, 0x4A, 0x46, 0x12, 0x04, 0x91, 0x46, 0x12, 0x0C, 0x63, 0x46
	.byte 0x1A, 0x40, 0x92, 0x00, 0xCB, 0x78, 0x1C, 0x40, 0x14, 0x43, 0xCC, 0x70, 0x4A, 0x46, 0x92, 0x0D
	.byte 0x53, 0x46, 0x1A, 0x40, 0x91, 0x46, 0x8A, 0x88, 0x43, 0x46, 0x13, 0x40, 0x4A, 0x46, 0x13, 0x43
	.byte 0x8B, 0x80, 0x06, 0x22, 0x5A, 0xF0, 0x4E, 0xFE, 0x71, 0xE0, 0x00, 0x00, 0x80, 0xD0, 0x0F, 0x08
	.byte 0x33, 0x02, 0x00, 0x00, 0xFF, 0x03, 0x00, 0x00, 0x00, 0xFC, 0xFF, 0xFF, 0xC7, 0x20, 0x90, 0xF7
	.byte 0x4B, 0xF8, 0x05, 0xE0, 0xCA, 0x20, 0x90, 0xF7, 0x47, 0xF8, 0x38, 0x7D, 0x60, 0x40, 0x38, 0x75
	.byte 0x38, 0x1C, 0x8F, 0xF7, 0xCF, 0xFD, 0x03, 0x1C, 0x08, 0x93, 0x00, 0x25, 0x00, 0x22, 0x00, 0x24
	.byte 0x19, 0x06, 0x58, 0x06, 0xC9, 0x0F, 0xC0, 0x0F, 0x81, 0x42, 0x04, 0xD0, 0x99, 0x06, 0xD8, 0x06
	.byte 0xCC, 0x0F, 0xC0, 0x0F, 0x44, 0x40, 0x80, 0x23, 0x9B, 0x00, 0x00, 0x2C, 0x00, 0xD0, 0x96, 0x3B
	.byte 0x08, 0xAC, 0x61, 0x78, 0x01, 0x20, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD0, 0x5B, 0x00, 0x02, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x02, 0xD0, 0xD8, 0x0F, 0x18, 0x18, 0x43, 0x10, 0x21, 0x78, 0x80, 0x20
	.byte 0x08, 0x40, 0x00, 0x28, 0x00, 0xD0, 0x1A, 0x1C, 0x40, 0x20, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD0
	.byte 0xD2, 0x1A, 0x20, 0x20, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD0, 0x5D, 0x42, 0x10, 0x20, 0x08, 0x40
	.byte 0x00, 0x28, 0x00, 0xD0, 0xED, 0x18, 0x38, 0x1C, 0x29, 0x1C, 0xFF, 0xF7, 0x53, 0xF9, 0xE6, 0x23
	.byte 0x5B, 0x00, 0xF8, 0x18, 0x04, 0x68, 0x45, 0x68, 0xAC, 0x42, 0x06, 0xD0, 0x20, 0x1C, 0x08, 0x30
	.byte 0xE5, 0xF7, 0x9E, 0xFD, 0x1C, 0x34, 0xAC, 0x42, 0xF8, 0xD1, 0x38, 0x1C, 0xFF, 0xF7, 0x04, 0xFC
	.byte 0x38, 0x1C, 0x8F, 0xF7, 0x01, 0xFD, 0x38, 0x1C, 0x8F, 0xF7, 0x76, 0xFD, 0x38, 0x1C, 0x8F, 0xF7
	.byte 0x7D, 0xFD, 0x01, 0x1C, 0x02, 0x20, 0x08, 0x40, 0x00, 0x28, 0x00, 0xD1, 0x20, 0xE7, 0x38, 0x1C
	.byte 0xFE, 0xF7, 0xBC, 0xFF, 0xF8, 0x68, 0x00, 0x24, 0xFC, 0x60, 0x04, 0x90, 0x04, 0xA9, 0x09, 0x91
	.byte 0x0F, 0x9A, 0x50, 0x60, 0x04, 0x94, 0x03, 0x90, 0x21, 0x1C, 0x00, 0x29, 0x05, 0xD0, 0x08, 0x68
	.byte 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x5A, 0xF0, 0x85, 0xFD, 0x03, 0x99, 0x03, 0xAB, 0x0B, 0x93
	.byte 0x10, 0x98, 0x41, 0x60, 0x0B, 0x98, 0x04, 0x60, 0x0E, 0x9A, 0x11, 0x60, 0x03, 0x99, 0x00, 0x29
	.byte 0x05, 0xD0, 0x08, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x5A, 0xF0, 0x73, 0xFD, 0x0D, 0x98
	.byte 0x11, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start func_08078E40
func_08078E40: @ 0x08078E40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	adds r4, r1, #0
	mov sb, r2
	add r1, sp, #4
	movs r0, #0x1e
	movs r2, #1
	movs r3, #0
	mov r8, r3
	movs r7, #0
	strh r0, [r1]
	movs r0, #1
	mov sl, r0
	strh r2, [r1, #2]
	adds r0, r6, #0
	bl func_080084DC
	ldr r0, .L0807900C @ =vtable_unk_080E7BD0
	str r0, [r6, #4]
	str r4, [r6, #8]
	adds r0, r6, #0
	adds r0, #0xc
	movs r1, #1
	bl func_08008B54
	add r2, sp, #8
	movs r0, #0x1c
	movs r1, #2
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r0, [sp, #8]
	adds r1, r6, #0
	adds r1, #0x14
	movs r2, #0
	bl func_0804E7A0
	ldr r1, .L08079010 @ =0x00000714
	adds r4, r6, r1
	ldr r1, .L08079014 @ =gUnk_08527094
	adds r0, r4, #0
	bl func_0805E6CC
	ldr r3, .L08079018 @ =0x00000744
	adds r5, r6, r3
	ldr r1, .L0807901C @ =gUnk_08728208
	adds r0, r5, #0
	bl func_0805E6CC
	ldr r1, .L08079020 @ =0x00000774
	adds r0, r6, r1
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r3, #0xf1
	lsls r3, r3, #3
	adds r0, r6, r3
	strh r7, [r0]
	strh r7, [r0, #2]
	strh r7, [r0, #4]
	strh r7, [r0, #6]
	strh r7, [r0, #8]
	str r7, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r7, [r0, #0x14]
	strb r1, [r0, #0x18]
	adds r3, #0x1c
	adds r0, r6, r3
	strb r1, [r0]
	movs r1, #0xf5
	lsls r1, r1, #3
	adds r0, r6, r1
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r3, .L08079024 @ =0x000007BC
	adds r0, r6, r3
	strh r7, [r0]
	strh r7, [r0, #2]
	strh r7, [r0, #4]
	strh r7, [r0, #6]
	strh r7, [r0, #8]
	str r7, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r7, [r0, #0x14]
	strb r1, [r0, #0x18]
	adds r3, #0x1c
	adds r0, r6, r3
	strb r1, [r0]
	ldr r1, .L08079028 @ =0x000007DC
	adds r0, r6, r1
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r3, #0xfe
	lsls r3, r3, #3
	adds r0, r6, r3
	strh r7, [r0]
	strh r7, [r0, #2]
	strh r7, [r0, #4]
	strh r7, [r0, #6]
	strh r7, [r0, #8]
	str r7, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r7, [r0, #0x14]
	strb r1, [r0, #0x18]
	adds r3, #0x1c
	adds r0, r6, r3
	strb r1, [r0]
	movs r0, #0x81
	lsls r0, r0, #4
	adds r4, r6, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r4, #4]
	ldr r1, .L0807902C @ =0x00000818
	adds r4, r6, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r3, #0x82
	lsls r3, r3, #4
	adds r4, r6, r3
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L08079030 @ =0x00000828
	adds r4, r6, r0
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0x83
	lsls r1, r1, #4
	adds r4, r6, r1
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	ldr r3, .L08079034 @ =0x00000838
	adds r4, r6, r3
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0xa6
	lsls r1, r1, #4
	adds r0, r6, r1
	str r7, [r0]
	str r7, [r0, #4]
	ldr r3, .L08079038 @ =0x00000A68
	adds r0, r6, r3
	str r7, [r0, #4]
	movs r1, #0x84
	lsls r1, r1, #4
	adds r0, r6, r1
	strh r7, [r0]
	ldr r3, .L0807903C @ =0x00000842
	adds r0, r6, r3
	strh r7, [r0]
	adds r1, #0x16
	adds r0, r6, r1
	strh r7, [r0]
	adds r3, #2
	adds r0, r6, r3
	str r7, [r0]
	subs r1, #0xa
	adds r0, r6, r1
	strh r7, [r0]
	adds r3, #0xa
	adds r0, r6, r3
	strh r7, [r0]
	movs r0, #0x80
	lsls r0, r0, #5
	cmp sb, r0
	bne .L08079048
	ldr r1, .L08079040 @ =0x00000A56
	adds r0, r6, r1
	mov r3, r8
	strb r3, [r0]
	adds r1, #1
	adds r0, r6, r1
	strb r3, [r0]
	ldr r3, .L08079044 @ =0x00000A58
	adds r0, r6, r3
	str r7, [r0]
	b .L080790C6
	.align 2, 0
.L0807900C: .4byte vtable_unk_080E7BD0
.L08079010: .4byte 0x00000714
.L08079014: .4byte gUnk_08527094
.L08079018: .4byte 0x00000744
.L0807901C: .4byte gUnk_08728208
.L08079020: .4byte 0x00000774
.L08079024: .4byte 0x000007BC
.L08079028: .4byte 0x000007DC
.L0807902C: .4byte 0x00000818
.L08079030: .4byte 0x00000828
.L08079034: .4byte 0x00000838
.L08079038: .4byte 0x00000A68
.L0807903C: .4byte 0x00000842
.L08079040: .4byte 0x00000A56
.L08079044: .4byte 0x00000A58
.L08079048:
	ldr r0, .L08079064 @ =0x00001001
	cmp sb, r0
	bne .L0807906C
	ldr r1, .L08079068 @ =0x00000A56
	adds r0, r6, r1
	mov r3, r8
	strb r3, [r0]
	adds r1, #1
	adds r0, r6, r1
	mov r3, sl
	strb r3, [r0]
	adds r1, #1
	b .L08079082
	.align 2, 0
.L08079064: .4byte 0x00001001
.L08079068: .4byte 0x00000A56
.L0807906C:
	ldr r0, .L08079088 @ =0x00001002
	cmp sb, r0
	bne .L08079094
	ldr r3, .L0807908C @ =0x00000A56
	adds r0, r6, r3
	mov r1, r8
	strb r1, [r0]
	adds r3, #1
	adds r0, r6, r3
	strb r1, [r0]
	ldr r1, .L08079090 @ =0x00000A58
.L08079082:
	adds r0, r6, r1
	str r7, [r0]
	b .L080790C6
	.align 2, 0
.L08079088: .4byte 0x00001002
.L0807908C: .4byte 0x00000A56
.L08079090: .4byte 0x00000A58
.L08079094:
	movs r3, #0xa7
	lsls r3, r3, #4
	adds r0, r6, r3
	mov r1, sb
	strh r1, [r0]
	subs r3, #0x14
	adds r2, r6, r3
	ldr r1, .L080790D8 @ =gUnk_0810828C
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r1, .L080790DC @ =0x00000A56
	adds r0, r6, r1
	mov r3, sl
	strb r3, [r0]
	adds r1, #1
	adds r0, r6, r1
	strb r3, [r0]
	ldr r3, .L080790E0 @ =0x00000A58
	adds r1, r6, r3
	movs r0, #7
	str r0, [r1]
.L080790C6:
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080790D8: .4byte gUnk_0810828C
.L080790DC: .4byte 0x00000A56
.L080790E0: .4byte 0x00000A58

	thumb_func_start func_080790E4
func_080790E4: @ 0x080790E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
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
	ldr r0, .L080791C0 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	adds r0, r5, #0
	bl func_08079860
	adds r0, r5, #0
	bl func_0807A878
	movs r0, #0
	mov r8, r0
	add r1, sp, #8
	mov sb, r1
	mov r2, sp
	adds r2, #0x14
	str r2, [sp, #0x1c]
.L08079148:
	ldr r3, .L080791C4 @ =0x00000A58
	adds r0, r5, r3
	ldr r0, [r0]
	cmp r0, #6
	ble .L08079154
	b .L08079504
.L08079154:
	adds r0, r5, #0
	bl func_08008724
	ldr r4, .L080791C8 @ =0x00000856
	adds r0, r5, r4
	ldrh r1, [r0]
	movs r6, #0x84
	lsls r6, r6, #4
	adds r2, r5, r6
	strh r1, [r2]
	ldr r3, .L080791CC @ =0x00000842
	adds r0, r5, r3
	strh r1, [r0]
	subs r4, #0x12
	adds r1, r5, r4
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	str r0, [r1]
	adds r0, r5, #0
	bl func_08079A64
	ldr r0, [sp, #4]
	ldr r1, .L080791D0 @ =0x00000889
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
	movs r4, #0
.L0807919E:
	adds r0, r5, #0
	bl func_080087C8
	adds r0, r5, #0
	bl func_080088B8
	ldr r6, .L080791C4 @ =0x00000A58
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r0, #6
	bhi .L080791F4
	lsls r0, r0, #2
	ldr r1, .L080791D4 @ =.L080791D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080791C0: .4byte vtable_unk_080E5B80
.L080791C4: .4byte 0x00000A58
.L080791C8: .4byte 0x00000856
.L080791CC: .4byte 0x00000842
.L080791D0: .4byte 0x00000889
.L080791D4: .4byte .L080791D8
.L080791D8: @ jump table
	.4byte .L080791F4 @ case 0
	.4byte .L0807920C @ case 1
	.4byte .L0807921C @ case 2
	.4byte .L080793D0 @ case 3
	.4byte .L08079410 @ case 4
	.4byte .L0807945C @ case 5
	.4byte .L0807948C @ case 6
.L080791F4:
	ldr r1, .L08079204 @ =0x0000080C
	adds r0, r5, r1
	movs r1, #1
	strb r1, [r0]
	ldr r2, .L08079208 @ =0x00000A58
	adds r0, r5, r2
	str r1, [r0]
	b .L080794B6
	.align 2, 0
.L08079204: .4byte 0x0000080C
.L08079208: .4byte 0x00000A58
.L0807920C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0807921A
	b .L080794B6
.L0807921A:
	b .L08079444
.L0807921C:
	adds r0, r5, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L080792A0
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	ldr r6, .L0807924C @ =0x0000084C
	adds r1, r5, r6
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble .L08079250
	subs r0, r2, #1
	strh r0, [r1]
	adds r1, r0, #0
	b .L08079252
	.align 2, 0
.L0807924C: .4byte 0x0000084C
.L08079250:
	movs r1, #0
.L08079252:
	ldr r6, .L0807928C @ =0x0000084C
	adds r0, r5, r6
	strh r1, [r0]
	ldr r0, .L08079290 @ =0x0000084E
	adds r2, r5, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r1, r0
	blt .L0807926C
	b .L080794B6
.L0807926C:
	subs r0, r3, #1
	strh r0, [r2]
	movs r1, #0x84
	lsls r1, r1, #4
	adds r0, r5, r1
	ldrh r1, [r0]
	ldr r0, .L08079294 @ =0x0000FFF0
	ands r0, r1
	ldr r2, .L08079298 @ =0x00000842
	adds r1, r5, r2
	strh r0, [r1]
	ldr r3, .L0807929C @ =0x00000A58
	adds r1, r5, r3
	movs r0, #3
	str r0, [r1]
	b .L080794B6
	.align 2, 0
.L0807928C: .4byte 0x0000084C
.L08079290: .4byte 0x0000084E
.L08079294: .4byte 0x0000FFF0
.L08079298: .4byte 0x00000842
.L0807929C: .4byte 0x00000A58
.L080792A0:
	adds r0, r5, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08079330
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xcb
	bl func_08008B6C
	ldr r6, .L080792D8 @ =0x0000084C
	adds r3, r5, r6
	movs r0, #0
	ldrsh r1, [r3, r0]
	adds r6, #4
	adds r2, r5, r6
	movs r6, #0
	ldrsh r0, [r2, r6]
	subs r0, #1
	cmp r1, r0
	bge .L080792DC
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	adds r1, r0, #0
	b .L080792E0
	.align 2, 0
.L080792D8: .4byte 0x0000084C
.L080792DC:
	ldrh r0, [r2]
	subs r1, r0, #1
.L080792E0:
	ldr r2, .L0807931C @ =0x0000084C
	adds r0, r5, r2
	strh r1, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r6, .L08079320 @ =0x0000084E
	adds r2, r5, r6
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	cmp r1, #7
	bgt .L080792FA
	b .L080794B6
.L080792FA:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	subs r6, #0xe
	adds r0, r5, r6
	ldrh r1, [r0]
	ldr r0, .L08079324 @ =0x0000FFF0
	ands r0, r1
	ldr r2, .L08079328 @ =0x00000842
	adds r1, r5, r2
	strh r0, [r1]
	ldr r3, .L0807932C @ =0x00000A58
	adds r1, r5, r3
	movs r0, #4
	str r0, [r1]
	b .L080794B6
	.align 2, 0
.L0807931C: .4byte 0x0000084C
.L08079320: .4byte 0x0000084E
.L08079324: .4byte 0x0000FFF0
.L08079328: .4byte 0x00000842
.L0807932C: .4byte 0x00000A58
.L08079330:
	adds r0, r5, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08079398
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xc5
	bl func_08008B6C
	movs r6, #0x84
	lsls r6, r6, #4
	adds r0, r5, r6
	ldrh r1, [r0]
	ldr r2, .L08079388 @ =0x00000856
	adds r0, r5, r2
	strh r1, [r0]
	ldr r3, .L0807938C @ =0x0000084C
	adds r0, r5, r3
	movs r6, #0
	ldrsh r1, [r0, r6]
	lsls r1, r1, #1
	adds r2, #2
	adds r0, r5, r2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r3, #0xa7
	lsls r3, r3, #4
	adds r0, r5, r3
	strh r1, [r0]
	ldr r6, .L08079390 @ =0x00000A5C
	adds r2, r5, r6
	ldr r1, .L08079394 @ =gUnk_0810828C
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	subs r6, #4
	adds r1, r5, r6
	b .L080793C0
	.align 2, 0
.L08079388: .4byte 0x00000856
.L0807938C: .4byte 0x0000084C
.L08079390: .4byte 0x00000A5C
.L08079394: .4byte gUnk_0810828C
.L08079398:
	adds r0, r5, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L080793A8
	b .L080794B6
.L080793A8:
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xc6
	bl func_08008B6C
	movs r0, #0xa7
	lsls r0, r0, #4
	adds r1, r5, r0
	ldr r0, .L080793C8 @ =0x0000FFFF
	strh r0, [r1]
	ldr r2, .L080793CC @ =0x00000A58
	adds r1, r5, r2
.L080793C0:
	movs r0, #5
	str r0, [r1]
	b .L080794B6
	.align 2, 0
.L080793C8: .4byte 0x0000FFFF
.L080793CC: .4byte 0x00000A58
.L080793D0:
	ldr r3, .L08079404 @ =0x00000844
	adds r1, r5, r3
	ldr r0, [r1]
	ldr r6, .L08079408 @ =0xFFFC0000
	adds r0, r0, r6
	str r0, [r1]
	cmp r0, #0
	bge .L080793E4
	movs r0, #0
	str r0, [r1]
.L080793E4:
	movs r2, #2
	ldrsh r0, [r1, r2]
	movs r3, #0x84
	lsls r3, r3, #4
	adds r1, r5, r3
	strh r0, [r1]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne .L080794B6
	adds r0, r5, #0
	bl func_08079DC0
	ldr r6, .L0807940C @ =0x00000A58
	adds r1, r5, r6
	b .L08079448
	.align 2, 0
.L08079404: .4byte 0x00000844
.L08079408: .4byte 0xFFFC0000
.L0807940C: .4byte 0x00000A58
.L08079410:
	ldr r0, .L08079450 @ =0x00000844
	adds r2, r5, r0
	ldr r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #0xb
	adds r1, r1, r3
	str r1, [r2]
	ldr r6, .L08079454 @ =0x00000848
	adds r0, r5, r6
	ldr r0, [r0]
	cmp r1, r0
	ble .L0807942A
	str r0, [r2]
.L0807942A:
	movs r1, #2
	ldrsh r0, [r2, r1]
	movs r2, #0x84
	lsls r2, r2, #4
	adds r1, r5, r2
	strh r0, [r1]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne .L080794B6
	adds r0, r5, #0
	bl func_08079DC0
.L08079444:
	ldr r3, .L08079458 @ =0x00000A58
	adds r1, r5, r3
.L08079448:
	movs r0, #2
	str r0, [r1]
	b .L080794B6
	.align 2, 0
.L08079450: .4byte 0x00000844
.L08079454: .4byte 0x00000848
.L08079458: .4byte 0x00000A58
.L0807945C:
	ldr r0, [sp, #4]
	ldr r1, .L08079484 @ =0x00000889
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
	ldr r6, .L08079488 @ =0x00000A58
	adds r1, r5, r6
	movs r0, #6
	str r0, [r1]
	b .L080794B6
	.align 2, 0
.L08079484: .4byte 0x00000889
.L08079488: .4byte 0x00000A58
.L0807948C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080794B6
	movs r1, #0xa7
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge .L080794AC
	movs r3, #1
	mov r8, r3
	b .L080794B4
.L080794AC:
	ldr r4, .L08079554 @ =0x00000A58
	adds r1, r5, r4
	movs r0, #7
	str r0, [r1]
.L080794B4:
	movs r4, #1
.L080794B6:
	adds r0, r5, #0
	bl func_08008918
	mov r2, sp
	movs r6, #0x84
	lsls r6, r6, #4
	adds r1, r5, r6
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x16]
	ldr r0, .L08079558 @ =0x00000852
	adds r1, r5, r0
	movs r0, #0xc
	strh r0, [r1]
	ldr r1, .L0807955C @ =0x0000084C
	adds r0, r5, r1
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #4
	ldr r3, .L08079560 @ =0x0000084E
	adds r0, r5, r3
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #4
	subs r0, #0x28
	subs r1, r1, r0
	ldr r2, .L08079564 @ =0x00000854
	adds r0, r5, r2
	strh r1, [r0]
	adds r0, r5, #0
	bl func_0807A98C
	cmp r4, #1
	beq .L080794FC
	b .L0807919E
.L080794FC:
	mov r3, r8
	cmp r3, #0
	beq .L08079504
	b .L0807980C
.L08079504:
	adds r0, r5, #0
	bl func_08008724
	adds r0, r5, #0
	bl func_08079F8C
	ldr r0, [sp, #4]
	ldr r1, .L08079568 @ =0x00000889
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
	movs r7, #0
.L08079530:
	adds r0, r5, #0
	bl func_080087C8
	adds r0, r5, #0
	bl func_080088B8
	ldr r4, .L08079554 @ =0x00000A58
	adds r0, r5, r4
	ldr r0, [r0]
	subs r0, #7
	cmp r0, #7
	bhi .L08079590
	lsls r0, r0, #2
	ldr r1, .L0807956C @ =.L08079570
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08079554: .4byte 0x00000A58
.L08079558: .4byte 0x00000852
.L0807955C: .4byte 0x0000084C
.L08079560: .4byte 0x0000084E
.L08079564: .4byte 0x00000854
.L08079568: .4byte 0x00000889
.L0807956C: .4byte .L08079570
.L08079570: @ jump table
	.4byte .L08079590 @ case 0
	.4byte .L080795C8 @ case 1
	.4byte .L080795D8 @ case 2
	.4byte .L080796DE @ case 3
	.4byte .L08079718 @ case 4
	.4byte .L08079764 @ case 5
	.4byte .L08079790 @ case 6
	.4byte .L080797C0 @ case 7
.L08079590:
	movs r6, #0x84
	lsls r6, r6, #4
	adds r2, r5, r6
	movs r3, #0
	movs r1, #0
	strh r1, [r2]
	ldr r4, .L080795BC @ =0x00000842
	adds r0, r5, r4
	strh r1, [r0]
	adds r6, #4
	adds r1, r5, r6
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	str r0, [r1]
	ldr r1, .L080795C0 @ =0x0000080C
	adds r0, r5, r1
	strb r3, [r0]
	ldr r2, .L080795C4 @ =0x00000A58
	adds r1, r5, r2
	movs r0, #8
	str r0, [r1]
	b .L080797EC
	.align 2, 0
.L080795BC: .4byte 0x00000842
.L080795C0: .4byte 0x0000080C
.L080795C4: .4byte 0x00000A58
.L080795C8:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080795D6
	b .L080797EC
.L080795D6:
	b .L08079782
.L080795D8:
	adds r0, r5, #0
	bl func_080088C4
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl func_080088CC
	adds r3, r0, #0
	movs r0, #3
	ands r0, r3
	cmp r0, #0
	beq .L08079608
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0xc6
	bl func_08008B6C
	ldr r4, .L08079604 @ =0x00000A58
	adds r1, r5, r4
	movs r0, #0xd
	str r0, [r1]
	b .L080797EC
	.align 2, 0
.L08079604: .4byte 0x00000A58
.L08079608:
	ldr r0, [sp, #0xc]
	lsls r1, r0, #0x19
	lsls r0, r0, #0x18
	lsrs r1, r1, #0x1f
	lsrs r0, r0, #0x1f
	cmp r1, r0
	bne .L08079618
	b .L080797EC
.L08079618:
	add r0, sp, #0xc
	ldrb r2, [r0, #1]
	movs r1, #2
	ands r1, r2
	adds r6, r0, #0
	cmp r1, #0
	beq .L080796A4
	movs r1, #0xa6
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r1, #0
	ldr r4, [r0]
	ldr r2, [r0, #4]
	cmp r4, r2
	bne .L08079638
	movs r1, #1
.L08079638:
	cmp r1, #0
	bne .L080796A4
	movs r0, #0xb0
	lsls r0, r0, #2
	ands r0, r3
	cmp r0, #0
	bne .L08079648
	b .L080797EC
.L08079648:
	movs r3, #0x84
	lsls r3, r3, #4
	adds r0, r5, r3
	ldrh r0, [r0]
	lsrs r3, r0, #4
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0807968C
	adds r2, r3, #0
	ldr r6, .L08079680 @ =0x00000844
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r1, .L08079684 @ =0x000FFFFF
	ands r0, r1
	cmp r0, #0
	beq .L0807966E
	adds r2, r3, #1
.L0807966E:
	ldr r0, [r4]
	cmp r2, r0
	bhi .L08079676
	b .L080797EC
.L08079676:
	ldr r0, .L08079688 @ =0x00000A58
	adds r1, r5, r0
	movs r0, #0xa
	str r0, [r1]
	b .L080797EC
	.align 2, 0
.L08079680: .4byte 0x00000844
.L08079684: .4byte 0x000FFFFF
.L08079688: .4byte 0x00000A58
.L0807968C:
	subs r0, r2, #4
	ldr r0, [r0]
	cmp r3, r0
	blo .L08079696
	b .L080797EC
.L08079696:
	ldr r2, .L080796A0 @ =0x00000A58
	adds r1, r5, r2
	movs r0, #0xb
	str r0, [r1]
	b .L080797EC
	.align 2, 0
.L080796A0: .4byte 0x00000A58
.L080796A4:
	ldrb r1, [r6, #1]
	movs r0, #1
	ands r0, r1
	movs r2, #0x80
	lsls r2, r2, #0xb
	cmp r0, #0
	beq .L080796B6
	movs r2, #0x80
	lsls r2, r2, #0xc
.L080796B6:
	ldrb r1, [r6]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L080796CA
	rsbs r1, r2, #0
	adds r0, r5, #0
	bl func_0807AF78
	b .L080797EC
.L080796CA:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne .L080796D4
	b .L080797EC
.L080796D4:
	adds r0, r5, #0
	adds r1, r2, #0
	bl func_0807AF78
	b .L080797EC
.L080796DE:
	ldr r3, .L0807970C @ =0x00000844
	adds r4, r5, r3
	ldr r2, [r4]
	subs r1, r2, #1
	ldr r0, .L08079710 @ =0xFFF00000
	ands r1, r0
	subs r1, r1, r2
	adds r0, r5, #0
	bl func_0807AF78
	ldr r0, [r4]
	cmp r0, #0
	beq .L08079704
	adds r0, r5, #0
	bl func_0807AFF4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080797EC
.L08079704:
	ldr r4, .L08079714 @ =0x00000A58
	adds r1, r5, r4
	b .L0807974C
	.align 2, 0
.L0807970C: .4byte 0x00000844
.L08079710: .4byte 0xFFF00000
.L08079714: .4byte 0x00000A58
.L08079718:
	ldr r6, .L08079754 @ =0x00000844
	adds r4, r5, r6
	ldr r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #0xd
	adds r1, r2, r0
	ldr r0, .L08079758 @ =0xFFF00000
	ands r1, r0
	subs r1, r1, r2
	adds r0, r5, #0
	bl func_0807AF78
	ldr r1, .L0807975C @ =0x00000848
	adds r0, r5, r1
	ldr r1, [r4]
	ldr r0, [r0]
	cmp r1, r0
	beq .L08079748
	adds r0, r5, #0
	bl func_0807AFF4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080797EC
.L08079748:
	ldr r2, .L08079760 @ =0x00000A58
	adds r1, r5, r2
.L0807974C:
	movs r0, #0xc
	str r0, [r1]
	b .L080797EC
	.align 2, 0
.L08079754: .4byte 0x00000844
.L08079758: .4byte 0xFFF00000
.L0807975C: .4byte 0x00000848
.L08079760: .4byte 0x00000A58
.L08079764:
	adds r0, r5, #0
	bl func_080088C4
	str r0, [sp, #0x10]
	add r2, sp, #0x10
	ldrb r1, [r2]
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0
	beq .L08079782
	ldrb r1, [r2, #1]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne .L080797EC
.L08079782:
	ldr r3, .L0807978C @ =0x00000A58
	adds r1, r5, r3
	movs r0, #9
	str r0, [r1]
	b .L080797EC
	.align 2, 0
.L0807978C: .4byte 0x00000A58
.L08079790:
	ldr r0, [sp, #4]
	ldr r1, .L080797B8 @ =0x00000889
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
	ldr r4, .L080797BC @ =0x00000A58
	adds r1, r5, r4
	movs r0, #0xe
	str r0, [r1]
	b .L080797EC
	.align 2, 0
.L080797B8: .4byte 0x00000889
.L080797BC: .4byte 0x00000A58
.L080797C0:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	bne .L080797EC
	ldr r6, .L080797E0 @ =0x00000A56
	adds r0, r5, r6
	ldrb r0, [r0]
	cmp r0, #1
	bne .L080797E4
	movs r0, #1
	mov r8, r0
	b .L080797EA
	.align 2, 0
.L080797E0: .4byte 0x00000A56
.L080797E4:
	ldr r2, .L0807985C @ =0x00000A58
	adds r0, r5, r2
	str r1, [r0]
.L080797EA:
	movs r7, #1
.L080797EC:
	adds r0, r5, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0x84
	lsls r3, r3, #4
	adds r1, r5, r3
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x16]
	adds r0, r5, #0
	bl func_0807A98C
	cmp r7, #1
	beq .L0807980C
	b .L08079530
.L0807980C:
	mov r4, r8
	cmp r4, #1
	beq .L08079814
	b .L08079148
.L08079814:
	movs r0, #0
	str r0, [sp, #8]
	mov r6, sb
	str r6, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	str r0, [r1, #4]
	str r0, [r6]
	mov r2, sl
	str r0, [r2]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L08079838
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08079838:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L0807984A
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0807984A:
	mov r0, sl
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0807985C: .4byte 0x00000A58

	thumb_func_start func_08079860
func_08079860: @ 0x08079860
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L08079A18 @ =0xFFFFF7F0
	add sp, r4
	adds r5, r0, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r4, #0
	strh r4, [r1]
	strh r4, [r0, #0x14]
	adds r0, r5, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x16]
	adds r0, r5, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x18]
	adds r0, r5, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	adds r0, r5, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1c]
	adds r0, r5, #0
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	ldr r1, .L08079A1C @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r0, #1
	rsbs r0, r0, #0
	mov sl, r0
	ldr r4, .L08079A20 @ =0x0600E000
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
	adds r1, r4, #0
	mov r2, r8
	bl func_08008EB8
	ldr r6, .L08079A24 @ =0x0600E800
	mov r0, sl
	adds r1, r6, #0
	mov r2, r8
	bl func_08008EB8
	ldr r1, .L08079A28 @ =0x0600F000
	mov r0, sl
	mov r2, r8
	bl func_08008EB8
	adds r0, r5, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L08079A2C @ =0x00001C43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r5, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r7, .L08079A30 @ =0x00001D41
	adds r1, r7, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r5, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L08079A34 @ =0x00001E42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	ldr r0, .L08079A38 @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L08079A3C @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L08079A40 @ =0x00030003
	adds r1, r4, #0
	mov r2, r8
	bl func_08008EB8
	movs r0, #3
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	str r4, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl func_08051320
	ldr r0, .L08079A44 @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r0, .L08079A48 @ =0x05000040
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r6, r7, #0
	strh r6, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	ldr r1, .L08079A4C @ =0x00004218
	mov sb, r1
	strh r1, [r0]
	ldr r3, .L08079A50 @ =0x00000828
	adds r5, r5, r3
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r7, .L08079A54 @ =0x05000200
	adds r0, r0, r7
	strh r6, [r0]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L08079A58 @ =0x05000202
	adds r0, r0, r1
	strh r4, [r0]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L08079A5C @ =0x05000204
	adds r0, r0, r3
	mov r7, sb
	strh r7, [r0]
	add r4, sp, #0x10
	mov r0, sl
	adds r1, r4, #0
	mov r2, r8
	bl func_08008EB8
	ldr r6, .L08079A60 @ =0x00002060
	movs r2, #0
	mov sb, r4
	movs r0, #0x12
	add r0, sp
	mov r8, r0
.L080799C0:
	movs r5, #0
	lsls r1, r2, #7
	lsls r0, r2, #1
	adds r4, r6, #0
	adds r4, #0x38
	adds r2, #1
	mov sl, r2
	adds r0, #1
	lsls r0, r0, #6
	adds r3, r6, #0
	adds r3, #0x1c
	mov r7, r8
	adds r2, r0, r7
	add r1, r8
.L080799DC:
	adds r0, r6, r5
	strh r0, [r1]
	strh r3, [r2]
	adds r3, #1
	adds r2, #2
	adds r1, #2
	adds r5, #1
	cmp r5, #0x1b
	ble .L080799DC
	lsls r0, r4, #0x10
	lsrs r6, r0, #0x10
	mov r2, sl
	cmp r2, #0xf
	ble .L080799C0
	ldr r1, .L08079A28 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	mov r0, sb
	bl func_08008E64
	movs r3, #0x81
	lsls r3, r3, #4
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08079A18: .4byte 0xFFFFF7F0
.L08079A1C: .4byte 0x06007FE0
.L08079A20: .4byte 0x0600E000
.L08079A24: .4byte 0x0600E800
.L08079A28: .4byte 0x0600F000
.L08079A2C: .4byte 0x00001C43
.L08079A30: .4byte 0x00001D41
.L08079A34: .4byte 0x00001E42
.L08079A38: .4byte gUnk_080F9F70
.L08079A3C: .4byte gUnk_080F9F74
.L08079A40: .4byte 0x00030003
.L08079A44: .4byte gUnk_080F9F78
.L08079A48: .4byte 0x05000040
.L08079A4C: .4byte 0x00004218
.L08079A50: .4byte 0x00000828
.L08079A54: .4byte 0x05000200
.L08079A58: .4byte 0x05000202
.L08079A5C: .4byte 0x05000204
.L08079A60: .4byte 0x00002060

	thumb_func_start func_08079A64
func_08079A64: @ 0x08079A64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x88
	adds r5, r0, #0
	movs r0, #0x85
	lsls r0, r0, #4
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r2, .L08079BB4 @ =0x00000A57
	adds r0, r5, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08079A88
	b .L08079BC0
.L08079A88:
	movs r3, #0
	mov r0, sp
	adds r0, #0x70
	str r0, [sp, #0x84]
	movs r2, #0x14
	adds r2, r2, r5
	mov sl, r2
	adds r2, r1, #0
	ldr r0, .L08079BB8 @ =0x00000858
	adds r4, r5, r0
	ldr r6, .L08079BBC @ =gUnk_080FD920
.L08079A9E:
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #1
	adds r0, r4, r0
	ldm r6!, {r1}
	strh r1, [r0]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	adds r3, #1
	cmp r3, #7
	bls .L08079A9E
	ldr r0, [r5, #8]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl HasVase__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08079AE4
	movs r3, #0x85
	lsls r3, r3, #4
	adds r2, r5, r3
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #1
	adds r3, #8
	adds r1, r5, r3
	adds r1, r1, r0
	movs r0, #0x4a
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
.L08079AE4:
	ldr r0, [r5, #8]
	adds r0, r0, r4
	bl GetFridge__9FarmHouse
	cmp r0, #0
	beq .L08079B0C
	movs r0, #0x85
	lsls r0, r0, #4
	adds r2, r5, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #1
	ldr r3, .L08079BB8 @ =0x00000858
	adds r1, r5, r3
	adds r1, r1, r0
	movs r0, #0x4b
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
.L08079B0C:
	ldr r0, [r5, #8]
	adds r0, r0, r4
	bl GetShelf__9FarmHouse
	cmp r0, #0
	beq .L08079B34
	movs r0, #0x85
	lsls r0, r0, #4
	adds r2, r5, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #1
	ldr r3, .L08079BB8 @ =0x00000858
	adds r1, r5, r3
	adds r1, r1, r0
	movs r0, #0x4c
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
.L08079B34:
	ldr r0, [r5, #8]
	adds r0, r0, r4
	bl HasKitchen__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08079B5E
	movs r0, #0x85
	lsls r0, r0, #4
	adds r2, r5, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #1
	ldr r3, .L08079BB8 @ =0x00000858
	adds r1, r5, r3
	adds r1, r1, r0
	movs r0, #0xc
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
.L08079B5E:
	ldr r0, [r5, #8]
	adds r0, r0, r4
	bl HasBathroom__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08079B88
	movs r0, #0x85
	lsls r0, r0, #4
	adds r2, r5, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #1
	ldr r3, .L08079BB8 @ =0x00000858
	adds r1, r5, r3
	adds r1, r1, r0
	movs r0, #0x49
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
.L08079B88:
	ldr r0, [r5, #8]
	adds r0, r0, r4
	bl GetRecordPlayer__9FarmHouse
	cmp r0, #0
	beq .L08079C02
	movs r0, #0x85
	lsls r0, r0, #4
	adds r2, r5, r0
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #1
	ldr r3, .L08079BB8 @ =0x00000858
	adds r1, r5, r3
	adds r1, r1, r0
	movs r0, #0x48
	strh r0, [r1]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	b .L08079C02
	.align 2, 0
.L08079BB4: .4byte 0x00000A57
.L08079BB8: .4byte 0x00000858
.L08079BBC: .4byte gUnk_080FD920
.L08079BC0:
	movs r6, #0x4d
	mov r0, sp
	adds r0, #0x70
	str r0, [sp, #0x84]
	movs r1, #0x14
	adds r1, r1, r5
	mov sl, r1
	movs r2, #0x85
	lsls r2, r2, #4
	adds r4, r5, r2
.L08079BD4:
	ldr r0, [r5, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r0, r3
	adds r1, r6, #0
	bl func_0800BD40
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08079BFC
	movs r1, #0
	ldrsh r0, [r4, r1]
	lsls r0, r0, #1
	ldr r2, .L08079C1C @ =0x00000858
	adds r1, r5, r2
	adds r1, r1, r0
	strh r6, [r1]
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
.L08079BFC:
	adds r6, #1
	cmp r6, #0x88
	ble .L08079BD4
.L08079C02:
	movs r3, #0x85
	lsls r3, r3, #4
	adds r0, r5, r3
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r0, r2, #2
	cmp r0, #0xa
	ble .L08079C20
	subs r3, #8
	adds r1, r5, r3
	subs r0, #0xa
	lsls r0, r0, #0x14
	b .L08079C26
	.align 2, 0
.L08079C1C: .4byte 0x00000858
.L08079C20:
	ldr r0, .L08079DA0 @ =0x00000848
	adds r1, r5, r0
	movs r0, #0
.L08079C26:
	str r0, [r1]
	movs r4, #0
	movs r1, #0x1c
	mov r8, r1
	movs r7, #2
	mov r6, sl
	ldr r2, .L08079DA4 @ =0x00000A5C
	adds r2, r2, r5
	mov sb, r2
.L08079C38:
	add r0, sp, #0x70
	mov r3, r8
	strh r3, [r0]
	ldr r0, [sp, #0x84]
	strh r7, [r0, #2]
	ldr r0, [sp, #0x70]
	adds r1, r6, #0
	movs r2, #0
	bl func_0804E7A0
	ldr r1, .L08079DA8 @ =0x0000084E
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r1, r0, r4
	cmp r1, #1
	ble .L08079CB0
	movs r3, #0x85
	lsls r3, r3, #4
	adds r0, r5, r3
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #2
	cmp r1, r0
	bge .L08079CB0
	subs r1, #2
	lsls r1, r1, #1
	adds r3, #8
	adds r0, r5, r3
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #2
	ldr r2, .L08079DAC @ =gUnk_0810828C
	adds r0, r0, r2
	ldr r0, [r0]
	mov r3, sb
	str r0, [r3]
	ldr r1, [r0]
	cmp r1, #0
	beq .L08079CB0
	adds r0, r5, #0
	add r2, sp, #0xc
	bl func_0807A708
	add r0, sp, #0x74
	mov r1, r8
	strh r1, [r0]
	strh r7, [r0, #2]
	ldr r0, [sp, #0x74]
	add r2, sp, #0xc
	str r2, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r1, r6, #0
	movs r2, #0
	bl func_0804E958
.L08079CB0:
	movs r2, #0x84
	lsls r2, r2, #4
	adds r0, r5, r2
	ldrh r0, [r0]
	lsrs r0, r0, #4
	adds r0, r0, r4
	movs r1, #0xf
	ands r0, r1
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r3, .L08079DB0 @ =0x06000C00
	adds r1, r1, r3
	mov r0, sl
	movs r2, #0xe0
	lsls r2, r2, #3
	bl func_08008E64
	adds r4, #1
	cmp r4, #0xa
	ble .L08079C38
	movs r1, #0x82
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r2, .L08079DB4 @ =0x06010000
	adds r1, r1, r2
	movs r2, #0xe0
	lsls r2, r2, #3
	movs r0, #0
	bl func_08008EB8
	movs r6, #0
	movs r7, #1
	add r3, sp, #0x78
	mov sb, r3
	movs r0, #2
	mov sl, r0
	add r1, sp, #0x7c
	mov r8, r1
	mov r2, sp
	adds r2, #0x30
	str r2, [sp, #0x80]
.L08079D0E:
	ldr r3, .L08079DB8 @ =0x00000A57
	adds r0, r5, r3
	ldrb r0, [r0]
	adds r1, r7, #0
	ands r1, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	ldr r1, .L08079DBC @ =gUnk_080FD940
	adds r0, r0, r1
	ldrb r4, [r0]
	cmp r4, #0
	beq .L08079D7C
	mov r2, sb
	strh r7, [r2]
	mov r3, sl
	strh r3, [r2, #2]
	ldr r0, [sp, #0x78]
	add r1, sp, #0x30
	movs r2, #0
	bl func_0804E7A0
	mov r0, r8
	strh r7, [r0]
	mov r1, sl
	strh r1, [r0, #2]
	ldr r0, [sp, #0x7c]
	str r4, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r7, [sp, #8]
	add r1, sp, #0x30
	movs r3, #0
	bl func_0804E5AC
	movs r3, #0x82
	lsls r3, r3, #4
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r0, r6, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, .L08079DB4 @ =0x06010000
	adds r1, r1, r0
	ldr r0, [sp, #0x80]
	movs r2, #0x40
	bl func_08008E64
	adds r6, #1
	cmp r6, #0xb
	ble .L08079D0E
.L08079D7C:
	adds r0, r5, #0
	bl func_08008918
	add r2, sp, #0xc
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	add sp, #0x88
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08079DA0: .4byte 0x00000848
.L08079DA4: .4byte 0x00000A5C
.L08079DA8: .4byte 0x0000084E
.L08079DAC: .4byte gUnk_0810828C
.L08079DB0: .4byte 0x06000C00
.L08079DB4: .4byte 0x06010000
.L08079DB8: .4byte 0x00000A57
.L08079DBC: .4byte gUnk_080FD940

	thumb_func_start func_08079DC0
func_08079DC0: @ 0x08079DC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r6, r0, #0
	movs r1, #0x84
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r2, .L08079DF0 @ =0x00000842
	adds r1, r6, r2
	ldrh r0, [r0]
	lsls r2, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls .L08079DF4
	lsrs r0, r2, #0x14
	adds r7, r0, #0
	adds r7, #8
	adds r5, r0, #0
	adds r5, #0xa
	movs r0, #0xf
	b .L08079DFA
	.align 2, 0
.L08079DF0: .4byte 0x00000842
.L08079DF4:
	lsrs r0, r2, #0x14
	subs r7, r0, #2
	movs r5, #0xf
.L08079DFA:
	ands r5, r0
	add r0, sp, #0x2c
	movs r3, #0x1c
	mov r8, r3
	movs r4, #2
	mov sb, r4
	mov r1, r8
	strh r1, [r0]
	mov r2, sb
	strh r2, [r0, #2]
	ldr r0, [sp, #0x2c]
	adds r4, r6, #0
	adds r4, #0x14
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	cmp r7, #0
	blt .L08079E6A
	ldr r0, .L08079EAC @ =0x00000A5C
	adds r3, r6, r0
	ldr r2, .L08079EB0 @ =gUnk_0810828C
	lsls r1, r7, #1
	ldr r7, .L08079EB4 @ =0x00000858
	adds r0, r6, r7
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r3]
	ldr r1, [r0]
	cmp r1, #0
	beq .L08079E6A
	adds r0, r6, #0
	add r2, sp, #0xc
	bl func_0807A708
	movs r2, #1
	add r0, sp, #0x30
	mov r3, r8
	strh r3, [r0]
	mov r7, sb
	strh r7, [r0, #2]
	ldr r0, [sp, #0x30]
	add r1, sp, #0xc
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L08079E6A:
	adds r0, r6, #0
	bl func_08008910
	adds r6, r0, #0
	lsls r2, r5, #3
	subs r2, r2, r5
	lsls r2, r2, #8
	ldr r3, .L08079EB8 @ =0x06000C00
	adds r2, r2, r3
	add r0, sp, #0xc
	adds r1, r4, #0
	movs r3, #0xe0
	lsls r3, r3, #3
	bl func_08008F0C
	add r4, sp, #0xc
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08079EBC
	cmp r1, #0
	beq .L08079EA4
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08079EA4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08079F7C
	.align 2, 0
.L08079EAC: .4byte 0x00000A5C
.L08079EB0: .4byte gUnk_0810828C
.L08079EB4: .4byte 0x00000858
.L08079EB8: .4byte 0x06000C00
.L08079EBC:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x38]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x34]
	add r1, sp, #0x38
	add r0, sp, #0x34
	cmp r4, #1
	bhs .L08079ED4
	adds r0, r1, #0
.L08079ED4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08079EF2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08079EF6
	mov r0, r8
	bl func_080D3BC0
	b .L08079EF6
.L08079EF2:
	movs r0, #0
	mov r8, r0
.L08079EF6:
	adds r4, r0, #0
	str r4, [sp, #0x3c]
	ldr r2, [r6]
	adds r3, r4, #0
	cmp r2, sl
	beq .L08079F1A
.L08079F02:
	cmp r3, #0
	beq .L08079F12
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08079F12:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08079F02
.L08079F1A:
	adds r4, r3, #0
	ldr r0, [sp, #0x38]
	cmp r0, #1
	bne .L08079F36
	cmp r4, #0
	beq .L08079F32
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08079F32:
	adds r4, #0x10
	b .L08079F58
.L08079F36:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L08079F56
.L08079F3E:
	cmp r2, #0
	beq .L08079F4E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08079F4E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08079F3E
.L08079F56:
	adds r4, r2, #0
.L08079F58:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08079F68
.L08079F62:
	adds r1, #0x10
	cmp r1, r2
	bne .L08079F62
.L08079F68:
	cmp r0, #0
	beq .L08079F70
	bl free
.L08079F70:
	ldr r0, [sp, #0x3c]
	add r0, r8
	ldr r7, [sp, #0x3c]
	str r7, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L08079F7C:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_08079F8C
func_08079F8C: @ 0x08079F8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	mov sb, r0
	movs r5, #0
	ldr r2, .L0807A03C @ =0x00000A5C
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0x9c]
	cmp r0, #0
	beq .L0807A022
	add r4, sp, #0xc
.L08079FB0:
	lsls r1, r5, #0x10
	mov r3, sb
	adds r0, r3, r2
	ldr r0, [r0]
	asrs r1, r1, #0xe
	adds r1, r1, r0
	ldr r1, [r1]
	ldrb r0, [r1]
	cmp r0, #0x3c
	bne .L0807A006
	adds r3, r1, #0
	ldrb r0, [r3, #1]
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi .L0807A006
	movs r2, #0
.L08079FD4:
	mov r1, sp
	adds r1, r1, r2
	adds r1, #0xc
	adds r0, r2, r3
	ldrb r0, [r0, #1]
	subs r0, #0x30
	strb r0, [r1]
	adds r2, #1
	cmp r2, #2
	ble .L08079FD4
	ldrb r1, [r4]
	movs r0, #0x64
	muls r1, r0, r1
	ldrb r2, [r4, #1]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldrb r0, [r4, #2]
	adds r1, r1, r0
	mov r0, sb
	bl func_0807A2AC
	cmp r0, #1
	beq .L0807A022
.L0807A006:
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	ldr r2, .L0807A03C @ =0x00000A5C
	mov r3, sb
	adds r1, r3, r2
	ldr r1, [r1]
	asrs r0, r0, #0xe
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne .L08079FB0
.L0807A022:
	lsls r0, r5, #0x10
	ldr r1, .L0807A040 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r5, r0, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #2
	cmp r0, #0xa
	ble .L0807A048
	ldr r1, .L0807A044 @ =0x00000848
	add r1, sb
	subs r0, #0xa
	lsls r0, r0, #0x14
	b .L0807A04E
	.align 2, 0
.L0807A03C: .4byte 0x00000A5C
.L0807A040: .4byte 0xFFFF0000
.L0807A044: .4byte 0x00000848
.L0807A048:
	ldr r1, .L0807A0AC @ =0x00000848
	add r1, sb
	movs r0, #0
.L0807A04E:
	str r0, [r1]
	movs r0, #0xa6
	lsls r0, r0, #4
	add r0, sb
	ldr r1, [r0]
	str r1, [r0, #4]
	lsls r0, r5, #0x10
	movs r3, #0
	str r0, [sp, #0x98]
	mov r0, sb
	adds r0, #0x14
	str r0, [sp, #0x94]
	ldr r1, [sp, #0x98]
	cmp r1, #0
	ble .L0807A148
.L0807A06C:
	ldr r0, .L0807A0B0 @ =0x00000A5C
	add r0, sb
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0, #4]
	ldrb r1, [r0]
	lsls r1, r1, #8
	ldrb r0, [r0, #1]
	orrs r1, r0
	ldr r0, .L0807A0B4 @ =0x0000819A
	adds r7, r3, #1
	cmp r1, r0
	bne .L0807A13E
	str r3, [sp, #0x74]
	movs r5, #0xa6
	lsls r5, r5, #4
	add r5, sb
	add r0, sp, #0x74
	mov sl, r0
	ldr r4, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r4, r0
	beq .L0807A0B8
	cmp r4, #0
	beq .L0807A0A2
	str r3, [r4]
.L0807A0A2:
	ldr r0, [r5, #4]
	adds r0, #4
	str r0, [r5, #4]
	b .L0807A13E
	.align 2, 0
.L0807A0AC: .4byte 0x00000848
.L0807A0B0: .4byte 0x00000A5C
.L0807A0B4: .4byte 0x0000819A
.L0807A0B8:
	adds r7, r4, #0
	movs r0, #1
	str r0, [sp, #0x7c]
	ldr r0, [r5]
	subs r0, r7, r0
	asrs r4, r0, #2
	str r4, [sp, #0x78]
	add r1, sp, #0x7c
	add r0, sp, #0x78
	cmp r4, #1
	bhs .L0807A0D0
	adds r0, r1, #0
.L0807A0D0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807A0F4
	lsls r4, r0, #2
	adds r0, r4, #0
	str r3, [sp, #0xa0]
	bl malloc
	mov r8, r4
	ldr r3, [sp, #0xa0]
	cmp r0, #0
	bne .L0807A0F8
	mov r0, r8
	bl func_080D3BC0
	ldr r3, [sp, #0xa0]
	b .L0807A0F8
.L0807A0F4:
	movs r0, #0
	mov r8, r0
.L0807A0F8:
	adds r6, r0, #0
	ldr r1, [r5]
	cmp r7, r1
	beq .L0807A110
	subs r4, r7, r1
	adds r2, r4, #0
	str r3, [sp, #0xa0]
	bl memmove
	adds r0, r0, r4
	ldr r3, [sp, #0xa0]
	b .L0807A112
.L0807A110:
	adds r0, r6, #0
.L0807A112:
	adds r4, r0, #0
	ldr r1, [sp, #0x7c]
	ldr r2, [r5]
	adds r7, r3, #1
	cmp r1, #0
	beq .L0807A12A
.L0807A11E:
	mov r3, sl
	ldr r0, [r3]
	stm r4!, {r0}
	subs r1, #1
	cmp r1, #0
	bne .L0807A11E
.L0807A12A:
	cmp r2, #0
	beq .L0807A134
	adds r0, r2, #0
	bl free
.L0807A134:
	mov r1, r8
	adds r0, r1, r6
	str r6, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0807A13E:
	adds r3, r7, #0
	ldr r1, [sp, #0x98]
	asrs r0, r1, #0x10
	cmp r3, r0
	blt .L0807A06C
.L0807A148:
	ldr r1, .L0807A29C @ =0x06000C00
	movs r2, #0xe0
	lsls r2, r2, #4
	movs r0, #0
	bl func_08008EB8
	movs r4, #0
	movs r3, #2
	mov sl, r3
	ldr r7, [sp, #0x94]
	ldr r0, .L0807A2A0 @ =0x06001A00
	mov r8, r0
	add r6, sp, #0x10
	add r5, sp, #0x84
.L0807A164:
	add r0, sp, #0x80
	movs r1, #0x1c
	strh r1, [r0]
	mov r0, sl
	ldr r3, [sp, #0x9c]
	strh r0, [r3, #2]
	ldr r0, [sp, #0x80]
	adds r1, r7, #0
	movs r2, #0
	bl func_0804E7A0
	ldr r1, [sp, #0x98]
	asrs r0, r1, #0x10
	cmp r4, r0
	bge .L0807A1B8
	ldr r0, .L0807A2A4 @ =0x00000A5C
	add r0, sb
	ldr r1, [r0]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0, #4]
	cmp r1, #0
	beq .L0807A1B8
	mov r0, sb
	adds r2, r6, #0
	bl func_0807A708
	movs r3, #0x1c
	strh r3, [r5]
	mov r0, sl
	strh r0, [r5, #2]
	ldr r0, [sp, #0x84]
	str r6, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L0807A1B8:
	ldr r0, [sp, #0x94]
	mov r1, r8
	movs r2, #0xe0
	lsls r2, r2, #3
	bl func_08008E64
	movs r0, #0xe0
	lsls r0, r0, #3
	add r8, r0
	adds r4, #1
	cmp r4, #8
	ble .L0807A164
	movs r0, #0x82
	lsls r0, r0, #4
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r3, .L0807A2A8 @ =0x06010000
	adds r1, r1, r3
	movs r2, #0xe0
	lsls r2, r2, #3
	movs r0, #0
	bl func_08008EB8
	ldr r0, .L0807A2A4 @ =0x00000A5C
	add r0, sb
	ldr r0, [r0]
	ldr r1, [r0]
	cmp r1, #0
	beq .L0807A278
	mov r0, sb
	add r2, sp, #0xc
	bl func_0807A708
	movs r5, #0
	add r7, sp, #0x88
	movs r0, #1
	mov r8, r0
	movs r1, #2
	mov sl, r1
	add r6, sp, #0x8c
	mov r3, sp
	adds r3, #0x34
	str r3, [sp, #0x90]
.L0807A216:
	mov r0, sp
	adds r0, r0, r5
	adds r0, #0xc
	ldrb r4, [r0]
	cmp r4, #0
	beq .L0807A278
	mov r0, r8
	strh r0, [r7]
	mov r1, sl
	strh r1, [r7, #2]
	ldr r0, [sp, #0x88]
	add r1, sp, #0x34
	movs r2, #0
	bl func_0804E7A0
	mov r3, r8
	strh r3, [r6]
	mov r0, sl
	strh r0, [r6, #2]
	ldr r0, [r6]
	str r4, [sp]
	movs r1, #0
	str r1, [sp, #4]
	mov r3, r8
	str r3, [sp, #8]
	add r1, sp, #0x34
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	movs r0, #0x82
	lsls r0, r0, #4
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r0, r5, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r0, .L0807A2A8 @ =0x06010000
	adds r1, r1, r0
	ldr r0, [sp, #0x90]
	movs r2, #0x40
	bl func_08008E64
	adds r5, #1
	cmp r5, #0x1b
	ble .L0807A216
.L0807A278:
	mov r0, sb
	bl func_08008918
	add r2, sp, #0xc
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0807A29C: .4byte 0x06000C00
.L0807A2A0: .4byte 0x06001A00
.L0807A2A4: .4byte 0x00000A5C
.L0807A2A8: .4byte 0x06010000

	thumb_func_start func_0807A2AC
func_0807A2AC: @ 0x0807A2AC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r6, #0
	adds r0, r5, #0
	movs r1, #0xa
	bl __udivsi3
	cmp r0, #0x24
	bls .L0807A2C2
	b .L0807A53C
.L0807A2C2:
	lsls r0, r0, #2
	ldr r1, .L0807A2CC @ =.L0807A2D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0807A2CC: .4byte .L0807A2D0
.L0807A2D0: @ jump table
	.4byte .L0807A364 @ case 0
	.4byte .L0807A370 @ case 1
	.4byte .L0807A37C @ case 2
	.4byte .L0807A388 @ case 3
	.4byte .L0807A394 @ case 4
	.4byte .L0807A3A0 @ case 5
	.4byte .L0807A3AC @ case 6
	.4byte .L0807A3B8 @ case 7
	.4byte .L0807A3C4 @ case 8
	.4byte .L0807A3D0 @ case 9
	.4byte .L0807A3DC @ case 10
	.4byte .L0807A3E8 @ case 11
	.4byte .L0807A3F4 @ case 12
	.4byte .L0807A400 @ case 13
	.4byte .L0807A40C @ case 14
	.4byte .L0807A418 @ case 15
	.4byte .L0807A424 @ case 16
	.4byte .L0807A430 @ case 17
	.4byte .L0807A43C @ case 18
	.4byte .L0807A448 @ case 19
	.4byte .L0807A454 @ case 20
	.4byte .L0807A460 @ case 21
	.4byte .L0807A46C @ case 22
	.4byte .L0807A478 @ case 23
	.4byte .L0807A484 @ case 24
	.4byte .L0807A490 @ case 25
	.4byte .L0807A49C @ case 26
	.4byte .L0807A4A8 @ case 27
	.4byte .L0807A4B4 @ case 28
	.4byte .L0807A4C0 @ case 29
	.4byte .L0807A4CC @ case 30
	.4byte .L0807A4D8 @ case 31
	.4byte .L0807A4E4 @ case 32
	.4byte .L0807A4F4 @ case 33
	.4byte .L0807A508 @ case 34
	.4byte .L0807A51C @ case 35
	.4byte .L0807A528 @ case 36
.L0807A364:
	ldr r0, [r4, #8]
	ldr r1, .L0807A36C @ =0x000021AC
	b .L0807A4F8
	.align 2, 0
.L0807A36C: .4byte 0x000021AC
.L0807A370:
	ldr r0, [r4, #8]
	ldr r1, .L0807A378 @ =0x000021AC
	b .L0807A50C
	.align 2, 0
.L0807A378: .4byte 0x000021AC
.L0807A37C:
	ldr r0, [r4, #8]
	ldr r1, .L0807A384 @ =0x000021AC
	b .L0807A52C
	.align 2, 0
.L0807A384: .4byte 0x000021AC
.L0807A388:
	ldr r0, [r4, #8]
	ldr r1, .L0807A390 @ =0x000021AC
	b .L0807A4E8
	.align 2, 0
.L0807A390: .4byte 0x000021AC
.L0807A394:
	ldr r0, [r4, #8]
	ldr r1, .L0807A39C @ =0x000021AD
	b .L0807A4F8
	.align 2, 0
.L0807A39C: .4byte 0x000021AD
.L0807A3A0:
	ldr r0, [r4, #8]
	ldr r1, .L0807A3A8 @ =0x000021AD
	b .L0807A50C
	.align 2, 0
.L0807A3A8: .4byte 0x000021AD
.L0807A3AC:
	ldr r0, [r4, #8]
	ldr r1, .L0807A3B4 @ =0x000021AD
	b .L0807A52C
	.align 2, 0
.L0807A3B4: .4byte 0x000021AD
.L0807A3B8:
	ldr r0, [r4, #8]
	ldr r1, .L0807A3C0 @ =0x000021AD
	b .L0807A4E8
	.align 2, 0
.L0807A3C0: .4byte 0x000021AD
.L0807A3C4:
	ldr r0, [r4, #8]
	ldr r1, .L0807A3CC @ =0x000021AE
	b .L0807A4F8
	.align 2, 0
.L0807A3CC: .4byte 0x000021AE
.L0807A3D0:
	ldr r0, [r4, #8]
	ldr r1, .L0807A3D8 @ =0x000021AE
	b .L0807A50C
	.align 2, 0
.L0807A3D8: .4byte 0x000021AE
.L0807A3DC:
	ldr r0, [r4, #8]
	ldr r1, .L0807A3E4 @ =0x000021AE
	b .L0807A52C
	.align 2, 0
.L0807A3E4: .4byte 0x000021AE
.L0807A3E8:
	ldr r0, [r4, #8]
	ldr r1, .L0807A3F0 @ =0x000021AE
	b .L0807A4E8
	.align 2, 0
.L0807A3F0: .4byte 0x000021AE
.L0807A3F4:
	ldr r0, [r4, #8]
	ldr r1, .L0807A3FC @ =0x000021AF
	b .L0807A4F8
	.align 2, 0
.L0807A3FC: .4byte 0x000021AF
.L0807A400:
	ldr r0, [r4, #8]
	ldr r1, .L0807A408 @ =0x000021AF
	b .L0807A50C
	.align 2, 0
.L0807A408: .4byte 0x000021AF
.L0807A40C:
	ldr r0, [r4, #8]
	ldr r1, .L0807A414 @ =0x000021AF
	b .L0807A52C
	.align 2, 0
.L0807A414: .4byte 0x000021AF
.L0807A418:
	ldr r0, [r4, #8]
	ldr r1, .L0807A420 @ =0x000021AF
	b .L0807A4E8
	.align 2, 0
.L0807A420: .4byte 0x000021AF
.L0807A424:
	ldr r0, [r4, #8]
	ldr r1, .L0807A42C @ =0x000021B0
	b .L0807A4F8
	.align 2, 0
.L0807A42C: .4byte 0x000021B0
.L0807A430:
	ldr r0, [r4, #8]
	ldr r1, .L0807A438 @ =0x000021B0
	b .L0807A50C
	.align 2, 0
.L0807A438: .4byte 0x000021B0
.L0807A43C:
	ldr r0, [r4, #8]
	ldr r1, .L0807A444 @ =0x000021B0
	b .L0807A52C
	.align 2, 0
.L0807A444: .4byte 0x000021B0
.L0807A448:
	ldr r0, [r4, #8]
	ldr r1, .L0807A450 @ =0x000021B0
	b .L0807A4E8
	.align 2, 0
.L0807A450: .4byte 0x000021B0
.L0807A454:
	ldr r0, [r4, #8]
	ldr r1, .L0807A45C @ =0x000021B1
	b .L0807A4F8
	.align 2, 0
.L0807A45C: .4byte 0x000021B1
.L0807A460:
	ldr r0, [r4, #8]
	ldr r1, .L0807A468 @ =0x000021B1
	b .L0807A50C
	.align 2, 0
.L0807A468: .4byte 0x000021B1
.L0807A46C:
	ldr r0, [r4, #8]
	ldr r1, .L0807A474 @ =0x000021B1
	b .L0807A52C
	.align 2, 0
.L0807A474: .4byte 0x000021B1
.L0807A478:
	ldr r0, [r4, #8]
	ldr r1, .L0807A480 @ =0x000021B1
	b .L0807A4E8
	.align 2, 0
.L0807A480: .4byte 0x000021B1
.L0807A484:
	ldr r0, [r4, #8]
	ldr r1, .L0807A48C @ =0x000021B2
	b .L0807A4F8
	.align 2, 0
.L0807A48C: .4byte 0x000021B2
.L0807A490:
	ldr r0, [r4, #8]
	ldr r1, .L0807A498 @ =0x000021B2
	b .L0807A50C
	.align 2, 0
.L0807A498: .4byte 0x000021B2
.L0807A49C:
	ldr r0, [r4, #8]
	ldr r1, .L0807A4A4 @ =0x000021B2
	b .L0807A52C
	.align 2, 0
.L0807A4A4: .4byte 0x000021B2
.L0807A4A8:
	ldr r0, [r4, #8]
	ldr r1, .L0807A4B0 @ =0x000021B2
	b .L0807A4E8
	.align 2, 0
.L0807A4B0: .4byte 0x000021B2
.L0807A4B4:
	ldr r0, [r4, #8]
	ldr r1, .L0807A4BC @ =0x000021B3
	b .L0807A4F8
	.align 2, 0
.L0807A4BC: .4byte 0x000021B3
.L0807A4C0:
	ldr r0, [r4, #8]
	ldr r1, .L0807A4C8 @ =0x000021B3
	b .L0807A50C
	.align 2, 0
.L0807A4C8: .4byte 0x000021B3
.L0807A4CC:
	ldr r0, [r4, #8]
	ldr r1, .L0807A4D4 @ =0x000021B3
	b .L0807A52C
	.align 2, 0
.L0807A4D4: .4byte 0x000021B3
.L0807A4D8:
	ldr r0, [r4, #8]
	ldr r1, .L0807A4E0 @ =0x000021B3
	b .L0807A4E8
	.align 2, 0
.L0807A4E0: .4byte 0x000021B3
.L0807A4E4:
	ldr r0, [r4, #8]
	ldr r1, .L0807A4F0 @ =0x000021AB
.L0807A4E8:
	adds r0, r0, r1
	ldrb r0, [r0]
	lsrs r4, r0, #6
	b .L0807A53E
	.align 2, 0
.L0807A4F0: .4byte 0x000021AB
.L0807A4F4:
	ldr r0, [r4, #8]
	ldr r1, .L0807A504 @ =0x000021B4
.L0807A4F8:
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r4, r0, #0x1e
	b .L0807A53E
	.align 2, 0
.L0807A504: .4byte 0x000021B4
.L0807A508:
	ldr r0, [r4, #8]
	ldr r1, .L0807A518 @ =0x000021B4
.L0807A50C:
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r4, r0, #0x1e
	b .L0807A53E
	.align 2, 0
.L0807A518: .4byte 0x000021B4
.L0807A51C:
	ldr r0, [r4, #8]
	ldr r1, .L0807A524 @ =0x000021B4
	b .L0807A52C
	.align 2, 0
.L0807A524: .4byte 0x000021B4
.L0807A528:
	ldr r0, [r4, #8]
	ldr r1, .L0807A538 @ =0x000021AB
.L0807A52C:
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r4, r0, #0x1e
	b .L0807A53E
	.align 2, 0
.L0807A538: .4byte 0x000021AB
.L0807A53C:
	movs r4, #0
.L0807A53E:
	adds r0, r5, #0
	movs r1, #0xa
	bl __umodsi3
	cmp r4, r0
	bhi .L0807A54C
	movs r6, #1
.L0807A54C:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start func_0807A554
func_0807A554: @ 0x0807A554
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r7, r0, #0
	movs r1, #0x84
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r2, .L0807A584 @ =0x00000842
	adds r1, r7, r2
	ldrh r0, [r0]
	lsls r2, r0, #0x10
	ldrh r1, [r1]
	cmp r0, r1
	bls .L0807A588
	lsrs r0, r2, #0x14
	adds r6, r0, #0
	adds r6, #8
	adds r5, r0, #0
	adds r5, #0xa
	movs r0, #0xf
	b .L0807A58E
	.align 2, 0
.L0807A584: .4byte 0x00000842
.L0807A588:
	lsrs r0, r2, #0x14
	subs r6, r0, #2
	movs r5, #0xf
.L0807A58E:
	ands r5, r0
	add r0, sp, #0x2c
	movs r3, #0x1c
	mov r8, r3
	movs r4, #2
	mov sb, r4
	mov r1, r8
	strh r1, [r0]
	mov r2, sb
	strh r2, [r0, #2]
	ldr r0, [sp, #0x2c]
	adds r4, r7, #0
	adds r4, #0x14
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	cmp r6, #0
	blt .L0807A5EE
	ldr r3, .L0807A630 @ =0x00000A5C
	adds r0, r7, r3
	ldr r1, [r0]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r1, [r0, #4]
	cmp r1, #0
	beq .L0807A5EE
	adds r0, r7, #0
	add r2, sp, #0xc
	bl func_0807A708
	movs r2, #1
	add r0, sp, #0x30
	mov r1, r8
	strh r1, [r0]
	mov r3, sb
	strh r3, [r0, #2]
	ldr r0, [sp, #0x30]
	add r1, sp, #0xc
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L0807A5EE:
	adds r0, r7, #0
	bl func_08008910
	adds r6, r0, #0
	lsls r2, r5, #3
	subs r2, r2, r5
	lsls r2, r2, #8
	ldr r3, .L0807A634 @ =0x06000C00
	adds r2, r2, r3
	add r0, sp, #0xc
	adds r1, r4, #0
	movs r3, #0xe0
	lsls r3, r3, #3
	bl func_08008F0C
	add r4, sp, #0xc
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0807A638
	cmp r1, #0
	beq .L0807A628
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807A628:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0807A6F8
	.align 2, 0
.L0807A630: .4byte 0x00000A5C
.L0807A634: .4byte 0x06000C00
.L0807A638:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x38]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x34]
	add r1, sp, #0x38
	add r0, sp, #0x34
	cmp r4, #1
	bhs .L0807A650
	adds r0, r1, #0
.L0807A650:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807A66E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0807A672
	mov r0, r8
	bl func_080D3BC0
	b .L0807A672
.L0807A66E:
	movs r0, #0
	mov r8, r0
.L0807A672:
	adds r4, r0, #0
	str r4, [sp, #0x3c]
	ldr r2, [r6]
	adds r3, r4, #0
	cmp r2, sl
	beq .L0807A696
.L0807A67E:
	cmp r3, #0
	beq .L0807A68E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807A68E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L0807A67E
.L0807A696:
	adds r4, r3, #0
	ldr r0, [sp, #0x38]
	cmp r0, #1
	bne .L0807A6B2
	cmp r4, #0
	beq .L0807A6AE
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0807A6AE:
	adds r4, #0x10
	b .L0807A6D4
.L0807A6B2:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L0807A6D2
.L0807A6BA:
	cmp r2, #0
	beq .L0807A6CA
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807A6CA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807A6BA
.L0807A6D2:
	adds r4, r2, #0
.L0807A6D4:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0807A6E4
.L0807A6DE:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807A6DE
.L0807A6E4:
	cmp r0, #0
	beq .L0807A6EC
	bl free
.L0807A6EC:
	ldr r0, [sp, #0x3c]
	add r0, r8
	ldr r7, [sp, #0x3c]
	str r7, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L0807A6F8:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0807A708
func_0807A708: @ 0x0807A708
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r0
	adds r3, r1, #0
	adds r5, r2, #0
	movs r0, #0
	mov ip, r0
	mov r1, sp
	ldrb r0, [r3]
	strb r0, [r1]
	ldrb r0, [r3, #1]
	strb r0, [r1, #1]
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0807A730
	b .L0807A866
.L0807A730:
	mov sb, sp
.L0807A732:
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, #0x3c
	beq .L0807A73C
	b .L0807A83C
.L0807A73C:
	ldrb r1, [r1, #1]
	adds r0, r1, #0
	subs r0, #0x30
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi .L0807A74E
	adds r3, #5
	b .L0807A848
.L0807A74E:
	adds r0, r1, #0
	cmp r0, #0x70
	bne .L0807A794
	movs r4, #0
	adds r7, r3, #3
	mov r6, ip
	adds r6, #1
	b .L0807A774
.L0807A75E:
	mov r2, r8
	ldr r0, [r2, #8]
	ldr r1, .L0807A790 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E4E0
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	adds r4, #1
.L0807A774:
	cmp r4, #0xc
	bgt .L0807A7CC
	mov r2, r8
	ldr r0, [r2, #8]
	ldr r1, .L0807A790 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E4E0
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0807A75E
	b .L0807A7CC
	.align 2, 0
.L0807A790: .4byte 0x00001BD8
.L0807A794:
	cmp r0, #0x66
	bne .L0807A7D0
	movs r4, #0
	adds r7, r3, #3
	mov r6, ip
	adds r6, #1
	b .L0807A7B6
.L0807A7A2:
	mov r2, r8
	ldr r0, [r2, #8]
	adds r0, #0x14
	bl method_08009AF4__C4Farm
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r5]
	adds r5, #1
	adds r4, #1
.L0807A7B6:
	cmp r4, #0xc
	bgt .L0807A7CC
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, #0x14
	bl method_08009AF4__C4Farm
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0807A7A2
.L0807A7CC:
	adds r3, r7, #0
	b .L0807A84C
.L0807A7D0:
	mov r6, ip
	adds r6, #1
	cmp r0, #0x63
	bne .L0807A84C
	ldrb r0, [r3, #2]
	mov r2, sb
	strb r0, [r2, #2]
	movs r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x70
	bne .L0807A7F4
	mov r1, r8
	ldr r0, [r1, #8]
	ldr r1, .L0807A7F0 @ =0x000021F0
	b .L0807A810
	.align 2, 0
.L0807A7F0: .4byte 0x000021F0
.L0807A7F4:
	cmp r0, #0x66
	bne .L0807A804
	mov r2, r8
	ldr r0, [r2, #8]
	ldr r1, .L0807A800 @ =0x000021E0
	b .L0807A810
	.align 2, 0
.L0807A800: .4byte 0x000021E0
.L0807A804:
	cmp r0, #0x73
	bne .L0807A812
	mov r2, r8
	ldr r0, [r2, #8]
	movs r1, #0x88
	lsls r1, r1, #6
.L0807A810:
	adds r2, r0, r1
.L0807A812:
	adds r1, r3, #4
	mov r6, ip
	adds r6, #1
	cmp r2, #0
	beq .L0807A838
	ldrb r0, [r2]
	cmp r0, #0
	beq .L0807A838
	adds r3, r2, #0
	adds r3, #0x10
.L0807A826:
	ldrb r0, [r2]
	strb r0, [r5]
	adds r5, #1
	adds r2, #1
	cmp r2, r3
	bgt .L0807A838
	ldrb r0, [r2]
	cmp r0, #0
	bne .L0807A826
.L0807A838:
	adds r3, r1, #0
	b .L0807A84C
.L0807A83C:
	strb r0, [r5]
	mov r2, sb
	ldrb r0, [r2, #1]
	strb r0, [r5, #1]
	adds r5, #2
	adds r3, #2
.L0807A848:
	mov r6, ip
	adds r6, #1
.L0807A84C:
	mov ip, r6
	cmp r6, #0xd
	bgt .L0807A866
	ldrb r1, [r3]
	mov r0, sb
	strb r1, [r0]
	ldrb r0, [r3, #1]
	mov r2, sb
	strb r0, [r2, #1]
	lsls r1, r1, #0x18
	cmp r1, #0
	beq .L0807A866
	b .L0807A732
.L0807A866:
	movs r0, #0
	strb r0, [r5]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0807A878
func_0807A878: @ 0x0807A878
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x40
	adds r5, r0, #0
	mov r1, sp
	movs r0, #0
	str r0, [sp]
	strh r0, [r1, #4]
	add r1, sp, #8
	mov sb, r1
	str r0, [sp, #8]
	strh r0, [r1, #4]
	add r7, sp, #0x10
	str r0, [sp, #0x10]
	strh r0, [r7, #4]
	add r1, sp, #0x18
	str r0, [sp, #0x18]
	strh r0, [r1, #4]
	ldr r2, .L0807A974 @ =0x00000774
	adds r0, r5, r2
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r4, #0xef
	lsls r4, r4, #3
	adds r0, r5, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x20
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x20
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r6, [sp, #0x10]
	ldr r3, .L0807A978 @ =0x00000818
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L0807A97C @ =0x05000200
	mov r8, r1
	adds r1, r0, r1
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0807A8FA
	ldrh r2, [r7, #4]
.L0807A8FA:
	adds r0, r6, #0
	bl func_08008E64
	ldr r2, .L0807A980 @ =0x00000744
	adds r1, r5, r2
	adds r0, r4, #0
	movs r2, #0
	bl func_0805E790
	mov r1, sp
	adds r0, r4, #0
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r4, [sp, #0x10]
	ldr r3, .L0807A984 @ =0x00000838
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	mov r6, r8
	adds r1, r0, r6
	ldr r0, [sp, #0x10]
	movs r2, #0
	cmp r0, #0
	beq .L0807A938
	ldrh r2, [r7, #4]
.L0807A938:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #8]
	movs r1, #0x83
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L0807A988 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #8]
	movs r2, #0
	cmp r0, #0
	beq .L0807A95E
	mov r3, sb
	ldrh r2, [r3, #4]
.L0807A95E:
	adds r0, r4, #0
	bl func_08008E64
	add sp, #0x40
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0807A974: .4byte 0x00000774
.L0807A978: .4byte 0x00000818
.L0807A97C: .4byte 0x05000200
.L0807A980: .4byte 0x00000744
.L0807A984: .4byte 0x00000838
.L0807A988: .4byte 0x06010000

	thumb_func_start func_0807A98C
func_0807A98C: @ 0x0807A98C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
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
	ldr r1, .L0807AB84 @ =0xFFFFFCFF
	ldr r0, [sp, #0x5c]
	ands r0, r1
	ldr r4, .L0807AB88 @ =0xFFFFF3FF
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, .L0807AB8C @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L0807AB90 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L0807AB94 @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L0807AB98 @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L0807AB9C @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L0807ABA0 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp, #0x5c]
	ldr r0, .L0807ABA4 @ =0x00000828
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0807ABA8 @ =0xFFFF0FFF
	add r3, sp, #0x5c
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L0807ABAC @ =0x0000FFFF
	ands r1, r0
	ands r1, r4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r3, #4]
	ldr r1, .L0807ABB0 @ =0xFFFFFF00
	ldr r0, [sp, #0x5c]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [sp, #0x5c]
	movs r4, #0
	mov sb, r3
	movs r5, #0x82
	lsls r5, r5, #4
	add r5, r8
	movs r7, #8
	mov sl, sb
.L0807AA42:
	ldr r1, .L0807ABB4 @ =0x000001FF
	ands r1, r7
	lsls r1, r1, #0x10
	ldr r2, .L0807ABB8 @ =0xFE00FFFF
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
	ldr r2, .L0807ABBC @ =0xFFFFFC00
	mov r3, sl
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0807AA90
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
.L0807AA90:
	adds r7, #8
	adds r4, #1
	cmp r4, #0x1b
	ble .L0807AA42
	ldr r0, .L0807ABC0 @ =0x00000844
	add r0, r8
	ldr r0, [r0]
	cmp r0, #0
	bgt .L0807AAA4
	b .L0807ACB0
.L0807AAA4:
	ldr r4, .L0807ABC4 @ =0x00000774
	add r4, r8
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	movs r0, #0xef
	lsls r0, r0, #3
	add r0, r8
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r7, sp, #0x3c
	adds r0, r7, #0
	adds r1, r7, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	adds r0, r7, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r1, sp
	movs r0, #0xf1
	lsls r0, r0, #3
	add r0, r8
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x1a
	strh r0, [r1, #2]
	movs r4, #0x81
	lsls r4, r4, #4
	add r4, r8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	ldr r0, .L0807ABC8 @ =0x00000818
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	mov r0, sp
	movs r6, #1
	mov sb, r6
	mov r1, sb
	strb r1, [r0, #0x18]
	mov r0, r8
	bl func_08008910
	adds r5, r0, #0
	ldr r6, [sp, #0x24]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0807AB52
	mov r4, sp
	ldrh r3, [r4, #0x28]
.L0807AB52:
	lsls r2, r2, #5
	ldr r0, .L0807ABCC @ =0x06010000
	adds r2, r2, r0
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_08008F0C
	mov sl, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0807ABD0
	cmp r1, #0
	beq .L0807AB7A
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807AB7A:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0807AC92
	.align 2, 0
.L0807AB84: .4byte 0xFFFFFCFF
.L0807AB88: .4byte 0xFFFFF3FF
.L0807AB8C: .4byte 0xFFFFDFFF
.L0807AB90: .4byte 0xFFFF3FFF
.L0807AB94: .4byte 0xF1FFFFFF
.L0807AB98: .4byte 0xEFFFFFFF
.L0807AB9C: .4byte 0xDFFFFFFF
.L0807ABA0: .4byte 0x3FFFFFFF
.L0807ABA4: .4byte 0x00000828
.L0807ABA8: .4byte 0xFFFF0FFF
.L0807ABAC: .4byte 0x0000FFFF
.L0807ABB0: .4byte 0xFFFFFF00
.L0807ABB4: .4byte 0x000001FF
.L0807ABB8: .4byte 0xFE00FFFF
.L0807ABBC: .4byte 0xFFFFFC00
.L0807ABC0: .4byte 0x00000844
.L0807ABC4: .4byte 0x00000774
.L0807ABC8: .4byte 0x00000818
.L0807ABCC: .4byte 0x06010000
.L0807ABD0:
	str r1, [sp, #0x74]
	mov r6, sb
	str r6, [sp, #0x68]
	ldr r0, [r5]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L0807ABEA
	adds r0, r1, #0
.L0807ABEA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807AC08
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0807AC0C
	mov r0, sb
	bl func_080D3BC0
	b .L0807AC0C
.L0807AC08:
	movs r0, #0
	mov sb, r0
.L0807AC0C:
	adds r4, r0, #0
	str r4, [sp, #0x78]
	ldr r2, [r5]
	adds r3, r4, #0
	b .L0807AC2A
.L0807AC16:
	cmp r3, #0
	beq .L0807AC26
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807AC26:
	adds r2, #0x10
	adds r3, #0x10
.L0807AC2A:
	ldr r0, [sp, #0x74]
	cmp r2, r0
	bne .L0807AC16
	adds r4, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L0807AC4C
	cmp r4, #0
	beq .L0807AC48
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0807AC48:
	adds r4, #0x10
	b .L0807AC6E
.L0807AC4C:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L0807AC6C
.L0807AC54:
	cmp r2, #0
	beq .L0807AC64
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807AC64:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807AC54
.L0807AC6C:
	adds r4, r2, #0
.L0807AC6E:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0807AC7E
.L0807AC78:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807AC78
.L0807AC7E:
	cmp r0, #0
	beq .L0807AC86
	bl free
.L0807AC86:
	ldr r0, [sp, #0x78]
	add r0, sb
	ldr r7, [sp, #0x78]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0807AC92:
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0807ACA8
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L0807ACA8:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0807ACB0:
	ldr r0, .L0807ADA0 @ =0x00000844
	add r0, r8
	ldr r1, .L0807ADA4 @ =0x00000848
	add r1, r8
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	blt .L0807ACC2
	b .L0807AE9C
.L0807ACC2:
	movs r4, #0xf5
	lsls r4, r4, #3
	add r4, r8
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	ldr r0, .L0807ADA8 @ =0x000007AC
	add r0, r8
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r7, sp, #0x3c
	adds r0, r7, #0
	adds r1, r7, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	adds r0, r7, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r1, sp
	ldr r0, .L0807ADAC @ =0x000007BC
	add r0, r8
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x98
	strh r0, [r1, #2]
	movs r4, #0x81
	lsls r4, r4, #4
	add r4, r8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #4
	strh r0, [r1, #6]
	ldr r0, .L0807ADB0 @ =0x00000818
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	mov r0, sp
	movs r6, #1
	strb r6, [r0, #0x18]
	mov r0, r8
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	mov sb, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0807AD6E
	mov r1, sp
	ldrh r3, [r1, #0x28]
.L0807AD6E:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r4, .L0807ADB4 @ =0x06010080
	adds r2, r2, r4
	adds r0, r7, #0
	mov r1, sb
	bl func_08008F0C
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0807ADB8
	cmp r1, #0
	beq .L0807AD98
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807AD98:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0807AE7E
	.align 2, 0
.L0807ADA0: .4byte 0x00000844
.L0807ADA4: .4byte 0x00000848
.L0807ADA8: .4byte 0x000007AC
.L0807ADAC: .4byte 0x000007BC
.L0807ADB0: .4byte 0x00000818
.L0807ADB4: .4byte 0x06010080
.L0807ADB8:
	str r1, [sp, #0x78]
	movs r3, #1
	str r3, [sp, #0x70]
	ldr r0, [r6]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x6c]
	add r1, sp, #0x70
	add r0, sp, #0x6c
	cmp r4, #1
	bhs .L0807ADD2
	adds r0, r1, #0
.L0807ADD2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807ADF0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0807ADF4
	mov r0, sb
	bl func_080D3BC0
	b .L0807ADF4
.L0807ADF0:
	movs r0, #0
	mov sb, r0
.L0807ADF4:
	adds r5, r0, #0
	str r5, [sp, #0x7c]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x78]
	cmp r2, r5
	beq .L0807AE1C
.L0807AE02:
	cmp r3, #0
	beq .L0807AE12
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807AE12:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x78]
	cmp r2, r7
	bne .L0807AE02
.L0807AE1C:
	adds r5, r3, #0
	ldr r0, [sp, #0x70]
	cmp r0, #1
	bne .L0807AE38
	cmp r5, #0
	beq .L0807AE34
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807AE34:
	adds r5, #0x10
	b .L0807AE5A
.L0807AE38:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0807AE58
.L0807AE40:
	cmp r2, #0
	beq .L0807AE50
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807AE50:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807AE40
.L0807AE58:
	adds r5, r2, #0
.L0807AE5A:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0807AE6A
.L0807AE64:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807AE64
.L0807AE6A:
	cmp r0, #0
	beq .L0807AE72
	bl free
.L0807AE72:
	ldr r0, [sp, #0x7c]
	add r0, sb
	ldr r7, [sp, #0x7c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807AE7E:
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0807AE94
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L0807AE94:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0807AE9C:
	ldr r0, .L0807AF64 @ =0x0000080C
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0807AF52
	ldr r4, .L0807AF68 @ =0x000007DC
	add r4, r8
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	movs r0, #0xfc
	lsls r0, r0, #3
	add r0, r8
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
	ldm r4!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	mov r1, sp
	movs r0, #0xfe
	lsls r0, r0, #3
	add r0, r8
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	ldr r0, .L0807AF6C @ =0x00000852
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, .L0807AF70 @ =0x00000854
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1, #2]
	movs r0, #0x83
	lsls r0, r0, #4
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	ldr r0, .L0807AF74 @ =0x00000838
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #8]
	mov r0, sp
	strb r2, [r0, #0x18]
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0807AF4A
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L0807AF4A:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0807AF52:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0807AF64: .4byte 0x0000080C
.L0807AF68: .4byte 0x000007DC
.L0807AF6C: .4byte 0x00000852
.L0807AF70: .4byte 0x00000854
.L0807AF74: .4byte 0x00000838

	thumb_func_start func_0807AF78
func_0807AF78: @ 0x0807AF78
	push {r4, lr}
	adds r3, r0, #0
	movs r2, #0x84
	lsls r2, r2, #4
	adds r0, r3, r2
	ldrh r2, [r0]
	ldr r0, .L0807AFA0 @ =0x0000FFF0
	ands r0, r2
	ldr r4, .L0807AFA4 @ =0x00000842
	adds r2, r3, r4
	strh r0, [r2]
	ldr r0, .L0807AFA8 @ =0x00000844
	adds r2, r3, r0
	ldr r0, [r2]
	adds r1, r0, r1
	str r1, [r2]
	cmp r1, #0
	bge .L0807AFAC
	movs r0, #0
	b .L0807AFB6
	.align 2, 0
.L0807AFA0: .4byte 0x0000FFF0
.L0807AFA4: .4byte 0x00000842
.L0807AFA8: .4byte 0x00000844
.L0807AFAC:
	ldr r4, .L0807AFE4 @ =0x00000848
	adds r0, r3, r4
	ldr r0, [r0]
	cmp r1, r0
	ble .L0807AFB8
.L0807AFB6:
	str r0, [r2]
.L0807AFB8:
	ldr r1, .L0807AFE8 @ =0x00000844
	adds r0, r3, r1
	movs r2, #2
	ldrsh r1, [r0, r2]
	movs r4, #0x84
	lsls r4, r4, #4
	adds r0, r3, r4
	strh r1, [r0]
	ldr r2, .L0807AFEC @ =0x00000842
	adds r0, r3, r2
	ldr r2, .L0807AFF0 @ =0x0000FFF0
	ldrh r0, [r0]
	ands r1, r2
	cmp r0, r1
	beq .L0807AFDC
	adds r0, r3, #0
	bl func_0807A554
.L0807AFDC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L0807AFE4: .4byte 0x00000848
.L0807AFE8: .4byte 0x00000844
.L0807AFEC: .4byte 0x00000842
.L0807AFF0: .4byte 0x0000FFF0

	thumb_func_start func_0807AFF4
func_0807AFF4: @ 0x0807AFF4
	push {r4, lr}
	sub sp, #8
	movs r2, #0xa6
	lsls r2, r2, #4
	adds r1, r0, r2
	ldr r2, [r1]
	ldr r4, [r1, #4]
	movs r1, #0x84
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r0, r0, #4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp]
	adds r0, r2, #0
	adds r1, r4, #0
	add r2, sp, #4
	movs r3, #0
	bl func_080E3398
	movs r2, #0
	cmp r0, r4
	beq .L0807B02E
	ldr r1, [sp, #4]
	ldr r0, [r0]
	cmp r1, r0
	blo .L0807B02E
	movs r2, #1
.L0807B02E:
	adds r0, r2, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0807B038
func_0807B038: @ 0x0807B038
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r0, .L0807B074 @ =vtable_unk_080E7BDC
	str r0, [r4]
	ldr r0, .L0807B078 @ =0x00000A74
	bl __builtin_new
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_08078E40
	str r0, [r4, #4]
	mov r0, r8
	ldr r1, [r0]
	movs r0, #0
	mov r2, r8
	str r0, [r2]
	str r1, [r4, #8]
	adds r0, r4, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L0807B074: .4byte vtable_unk_080E7BDC
.L0807B078: .4byte 0x00000A74
.L0807B07C:
	.byte 0x30, 0xB5, 0x04, 0x1C
	.byte 0x0D, 0x1C, 0x0D, 0x48, 0x20, 0x60, 0xA1, 0x68, 0x00, 0x29, 0x05, 0xD0, 0x08, 0x68, 0x82, 0x68
	.byte 0x08, 0x1C, 0x03, 0x21, 0x58, 0xF0, 0x3E, 0xFC, 0x61, 0x68, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68
	.byte 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x58, 0xF0, 0x35, 0xFC, 0x20, 0x1C, 0x29, 0x1C, 0x85, 0xF7
	.byte 0x9D, 0xFB, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xDC, 0x7B, 0x0E, 0x08, 0x30, 0xB5, 0x81, 0xB0
	.byte 0x05, 0x1C, 0x0C, 0x1C, 0x61, 0x68, 0x68, 0x46, 0xFE, 0xF7, 0x0C, 0xF8, 0x00, 0x99, 0x00, 0x29
	.byte 0x05, 0xD0, 0x08, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x58, 0xF0, 0x1B, 0xFC, 0xA1, 0x68
	.byte 0x00, 0x20, 0xA0, 0x60, 0x29, 0x60, 0x28, 0x1C, 0x01, 0xB0, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start func_0807B0F0
func_0807B0F0: @ 0x0807B0F0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	bl func_080C7F58
	ldr r0, .L0807B10C @ =vtable_unk_080E7BEC
	str r0, [r5, #4]
	ldr r0, .L0807B110 @ =0x000006A4
	adds r1, r5, r0
	cmp r4, #0
	beq .L0807B114
	movs r0, #4
	str r0, [r1]
	b .L0807B116
	.align 2, 0
.L0807B10C: .4byte vtable_unk_080E7BEC
.L0807B110: .4byte 0x000006A4
.L0807B114:
	str r4, [r1]
.L0807B116:
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, .L0807B164 @ =0x000006EC
	adds r0, r5, r2
	str r1, [r0]
	movs r0, #8
	ldr r7, .L0807B168 @ =gUnk_080FD9EC
	subs r1, #1
.L0807B12C:
	subs r0, #1
	cmp r0, r1
	bne .L0807B12C
	ldr r0, .L0807B16C @ =0x00002234
	adds r6, r5, r0
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L0807B144
	movs r4, #0x7f
.L0807B144:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	ldr r2, .L0807B170 @ =0x000022B4
	adds r1, r5, r2
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0807B164: .4byte 0x000006EC
.L0807B168: .4byte gUnk_080FD9EC
.L0807B16C: .4byte 0x00002234
.L0807B170: .4byte 0x000022B4
.L0807B174:
	.byte 0x00, 0xB5, 0x03, 0x4A, 0x42, 0x60, 0x4D, 0xF0, 0xF1, 0xF8, 0x01, 0xBC
	.byte 0x00, 0x47, 0x00, 0x00, 0xEC, 0x7B, 0x0E, 0x08

	thumb_func_start func_0807B188
func_0807B188: @ 0x0807B188
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
	beq .L0807B1BA
.L0807B1B4:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807B1B4
.L0807B1BA:
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
	blo .L0807B1D4
	b .L0807B398
.L0807B1D4:
	mov r3, sp
	adds r3, #0x1c
	str r3, [sp, #0xe4]
	movs r5, #0
	movs r4, #4
	str r4, [sp, #0xe8]
.L0807B1E0:
	movs r7, #0xa9
	lsls r7, r7, #2
	adds r0, r6, r7
	ldr r1, [sp, #0xe8]
	adds r0, r0, r1
	ldr r3, [r0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r2, .L0807B290 @ =gUnk_080FD988
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
	cmp r0, #1
	bls .L0807B212
	b .L0807B31A
.L0807B212:
	movs r0, #0x10
	ldr r7, [sp, #0xe4]
	str r0, [r7, #4]
	add r4, sp, #0x2c
	adds r0, r4, #0
	ldr r1, .L0807B294 @ =gUnk_086678A0
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
	bne .L0807B298
	add r4, sp, #0xd4
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetIconId__C7Article
	b .L0807B2AA
	.align 2, 0
.L0807B290: .4byte gUnk_080FD988
.L0807B294: .4byte gUnk_086678A0
.L0807B298:
	mov r4, sp
	adds r4, #0xd5
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetIconId__C4Tool
.L0807B2AA:
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
	bhi .L0807B316
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0807B310
	adds r1, r7, #0
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x28]
	str r1, [r0]
.L0807B310:
	ldr r0, [r6, #0x20]
	adds r0, #1
	str r0, [r6, #0x20]
.L0807B316:
	ldr r0, .L0807B3AC @ =vtable_unk_080E5A28
	str r0, [sp, #0x2c]
.L0807B31A:
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
	cmp r0, #2
	bhi .L0807B37C
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
.L0807B37C:
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
	bhs .L0807B398
	b .L0807B1E0
.L0807B398:
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
.L0807B3AC: .4byte vtable_unk_080E5A28

	thumb_func_start func_0807B3B0
func_0807B3B0: @ 0x0807B3B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov r8, r0
	movs r0, #4
	str r0, [sp, #0x4c]
	mov r4, r8
	adds r4, #0x20
	mov r6, r8
	adds r6, #0x24
	mov r1, r8
	ldr r0, [r1, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	adds r2, r0, #0
	adds r1, r6, #0
	ldr r5, [r4]
	mov r7, r8
	ldr r3, [r7, #8]
	cmp r1, r2
	beq .L0807B3E8
.L0807B3E2:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807B3E2
.L0807B3E8:
	subs r0, r0, r6
	asrs r0, r0, #4
	subs r0, r5, r0
	str r0, [r4]
	movs r0, #0
	str r0, [sp, #0x54]
	b .L0807B8B8
.L0807B3F6:
	mov r2, r8
	ldr r0, [r2, #8]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetChicken__4CoopUi
	str r0, [sp, #0x50]
	movs r0, #0x10
	str r0, [sp, #0x10]
	add r1, sp, #0xc
	ldr r4, [sp, #0x4c]
	lsls r0, r4, #3
	strh r0, [r1]
	ldr r0, .L0807B544 @ =gUnk_0875268C
	str r0, [sp, #0x14]
	ldr r0, .L0807B548 @ =gUnk_0875270C
	str r0, [sp, #0x18]
	mov r1, r8
	adds r1, #0x20
	mov r5, r8
	ldr r0, [r5, #0x20]
	adds r4, r1, #0
	cmp r0, #0x27
	bhi .L0807B444
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0807B43C
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B43C:
	mov r5, r8
	ldr r0, [r5, #0x20]
	adds r0, #1
	str r0, [r5, #0x20]
.L0807B444:
	ldr r0, [sp, #0x50]
	bl IsFestivalWinner__C6Animal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807B480
	movs r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, .L0807B54C @ =gUnk_0875196C
	str r0, [sp, #0x14]
	ldr r0, .L0807B550 @ =gUnk_087519EC
	str r0, [sp, #0x18]
	mov r7, r8
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L0807B480
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807B478
	add r1, sp, #0xc
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807B478:
	mov r5, r8
	ldr r0, [r5, #0x20]
	adds r0, #1
	str r0, [r5, #0x20]
.L0807B480:
	ldr r7, [sp, #0x54]
	lsls r4, r7, #1
	adds r4, r4, r7
	lsls r4, r4, #6
	adds r4, r4, r7
	lsls r4, r4, #2
	mov r0, r8
	adds r1, r4, r0
	movs r2, #0xe2
	lsls r2, r2, #3
	adds r1, r1, r2
	add r0, sp, #0x2c
	movs r5, #0xc
	movs r6, #2
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x2c]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [sp, #0x50]
	bl GetName__C6Animal
	adds r2, r0, #0
	mov r3, r8
	adds r1, r4, r3
	movs r7, #0xe2
	lsls r7, r7, #3
	adds r1, r1, r7
	add r0, sp, #0x30
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x30]
	adds r1, #4
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	ldr r1, [sp, #0x54]
	adds r1, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0xd0
	mov sb, r0
	mov r0, r8
	bl func_08008910
	add r4, r8
	adds r4, r4, r7
	adds r4, #4
	adds r6, r0, #0
	mov r5, sb
	lsls r2, r5, #5
	movs r7, #0xc0
	lsls r7, r7, #0x13
	adds r2, r2, r7
	add r0, sp, #0x1c
	adds r1, r4, #0
	movs r3, #0xc0
	lsls r3, r3, #2
	bl func_08008F0C
	add r0, sp, #0x1c
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0807B554
	cmp r1, #0
	beq .L0807B524
	adds r0, r1, #0
	add r1, sp, #0x1c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807B524:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r5, [sp, #0x4c]
	lsls r5, r5, #6
	str r5, [sp, #0x60]
	mov r7, sb
	lsls r7, r7, #0x10
	mov sb, r7
	ldr r0, [sp, #0x4c]
	adds r0, #2
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x54]
	adds r1, #1
	str r1, [sp, #0x58]
	b .L0807B634
	.align 2, 0
.L0807B544: .4byte gUnk_0875268C
.L0807B548: .4byte gUnk_0875270C
.L0807B54C: .4byte gUnk_0875196C
.L0807B550: .4byte gUnk_087519EC
.L0807B554:
	str r1, [sp, #0x68]
	movs r2, #1
	str r2, [sp, #0x38]
	ldr r0, [r6]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x34]
	add r1, sp, #0x38
	add r0, sp, #0x34
	cmp r4, #1
	bhs .L0807B56E
	adds r0, r1, #0
.L0807B56E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807B58C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0x64]
	cmp r0, #0
	bne .L0807B592
	adds r0, r4, #0
	bl func_080D3BC0
	b .L0807B592
.L0807B58C:
	movs r0, #0
	movs r4, #0
	str r4, [sp, #0x64]
.L0807B592:
	adds r5, r0, #0
	str r5, [sp, #0x6c]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x4c]
	lsls r5, r5, #6
	str r5, [sp, #0x60]
	mov r7, sb
	lsls r7, r7, #0x10
	mov sb, r7
	ldr r0, [sp, #0x4c]
	adds r0, #2
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x54]
	adds r1, #1
	str r1, [sp, #0x58]
	ldr r4, [sp, #0x68]
	cmp r2, r4
	beq .L0807B5D2
.L0807B5B8:
	cmp r3, #0
	beq .L0807B5C8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B5C8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x68]
	cmp r2, r5
	bne .L0807B5B8
.L0807B5D2:
	adds r5, r3, #0
	ldr r0, [sp, #0x38]
	cmp r0, #1
	bne .L0807B5EE
	cmp r5, #0
	beq .L0807B5EA
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B5EA:
	adds r5, #0x10
	b .L0807B610
.L0807B5EE:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0807B60E
.L0807B5F6:
	cmp r2, #0
	beq .L0807B606
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B606:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807B5F6
.L0807B60E:
	adds r5, r2, #0
.L0807B610:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0807B620
.L0807B61A:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807B61A
.L0807B620:
	cmp r0, #0
	beq .L0807B628
	bl free
.L0807B628:
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x6c]
	adds r0, r1, r2
	str r2, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807B634:
	mov r3, r8
	ldr r0, [r3, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r4, [sp, #0x60]
	adds r0, r0, r4
	adds r0, #0xc
	mov r5, sb
	lsrs r1, r5, #0x10
	movs r7, #0
	str r7, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	mov r0, r8
	bl func_08008910
	adds r6, r0, #0
	movs r0, #0xf8
	lsls r0, r0, #1
	lsls r2, r0, #5
	add r0, sp, #0x1c
	ldr r1, .L0807B698 @ =gUnk_0875254C
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r2, r2, r3
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #0x1c
	mov sl, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0807B69C
	cmp r1, #0
	beq .L0807B68E
	adds r0, r1, #0
	add r1, sp, #0x1c
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B68E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0807B766
	.align 2, 0
.L0807B698: .4byte gUnk_0875254C
.L0807B69C:
	str r1, [sp, #0x68]
	movs r0, #1
	str r0, [sp, #0x40]
	ldr r1, [r6]
	ldr r3, [sp, #0x68]
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x3c]
	add r2, sp, #0x40
	add r0, sp, #0x3c
	cmp r4, #1
	bhs .L0807B6B6
	adds r0, r2, #0
.L0807B6B6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807B6D6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0807B6D2
	mov r0, sb
	bl func_080D3BC0
.L0807B6D2:
	ldr r1, [r6]
	b .L0807B6DA
.L0807B6D6:
	movs r0, #0
	mov sb, r0
.L0807B6DA:
	adds r5, r0, #0
	str r5, [sp, #0x6c]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r4, [sp, #0x68]
	cmp r2, r4
	beq .L0807B702
.L0807B6E8:
	cmp r3, #0
	beq .L0807B6F8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B6F8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x68]
	cmp r2, r5
	bne .L0807B6E8
.L0807B702:
	adds r5, r3, #0
	ldr r0, [sp, #0x40]
	cmp r0, #1
	bne .L0807B71E
	cmp r5, #0
	beq .L0807B71A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B71A:
	adds r5, #0x10
	b .L0807B740
.L0807B71E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0807B73E
.L0807B726:
	cmp r2, #0
	beq .L0807B736
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B736:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807B726
.L0807B73E:
	adds r5, r2, #0
.L0807B740:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0807B750
.L0807B74A:
	adds r0, #0x10
	cmp r0, r2
	bne .L0807B74A
.L0807B750:
	cmp r1, #0
	beq .L0807B75A
	adds r0, r1, #0
	bl free
.L0807B75A:
	ldr r0, [sp, #0x6c]
	add r0, sb
	ldr r1, [sp, #0x6c]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807B766:
	mov r0, r8
	bl func_08008910
	adds r6, r0, #0
	add r0, sp, #0x1c
	ldr r1, .L0807B7A0 @ =gUnk_087525CC
	ldr r2, .L0807B7A4 @ =0x05000020
	movs r3, #0x20
	bl func_08008F0C
	add r2, sp, #0x1c
	mov sl, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0807B7A8
	cmp r1, #0
	beq .L0807B796
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0807B796:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0807B86E
	.align 2, 0
.L0807B7A0: .4byte gUnk_087525CC
.L0807B7A4: .4byte 0x05000020
.L0807B7A8:
	str r1, [sp, #0x68]
	movs r0, #1
	str r0, [sp, #0x48]
	ldr r1, [r6]
	ldr r7, [sp, #0x68]
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x44]
	add r2, sp, #0x48
	add r0, sp, #0x44
	cmp r4, #1
	bhs .L0807B7C2
	adds r0, r2, #0
.L0807B7C2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807B7E2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0807B7DE
	mov r0, sb
	bl func_080D3BC0
.L0807B7DE:
	ldr r1, [r6]
	b .L0807B7E6
.L0807B7E2:
	movs r0, #0
	mov sb, r0
.L0807B7E6:
	adds r5, r0, #0
	str r5, [sp, #0x6c]
	adds r2, r1, #0
	adds r3, r5, #0
	b .L0807B804
.L0807B7F0:
	cmp r3, #0
	beq .L0807B800
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B800:
	adds r2, #0x10
	adds r3, #0x10
.L0807B804:
	ldr r0, [sp, #0x68]
	cmp r2, r0
	bne .L0807B7F0
	adds r5, r3, #0
	ldr r0, [sp, #0x48]
	cmp r0, #1
	bne .L0807B826
	cmp r5, #0
	beq .L0807B822
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807B822:
	adds r5, #0x10
	b .L0807B848
.L0807B826:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0807B846
.L0807B82E:
	cmp r2, #0
	beq .L0807B83E
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0807B83E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0807B82E
.L0807B846:
	adds r5, r2, #0
.L0807B848:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0807B858
.L0807B852:
	adds r0, #0x10
	cmp r0, r2
	bne .L0807B852
.L0807B858:
	cmp r1, #0
	beq .L0807B862
	adds r0, r1, #0
	bl free
.L0807B862:
	ldr r0, [sp, #0x6c]
	add r0, sb
	ldr r7, [sp, #0x6c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807B86E:
	movs r5, #0
	ldr r0, [sp, #0x4c]
	adds r0, #1
	lsls r7, r0, #6
	movs r4, #0x26
	movs r0, #0xf8
	lsls r0, r0, #1
	lsls r6, r0, #0x10
	b .L0807B8A0
.L0807B880:
	mov r1, r8
	ldr r0, [r1, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r7
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
.L0807B8A0:
	mov r0, r8
	ldr r1, [sp, #0x50]
	bl func_0807B8F4
	cmp r5, r0
	blo .L0807B880
	ldr r2, [sp, #0x5c]
	str r2, [sp, #0x4c]
	ldr r3, [sp, #0x58]
	str r3, [sp, #0x54]
	mov r4, r8
	ldr r3, [r4, #8]
.L0807B8B8:
	movs r5, #0x82
	lsls r5, r5, #3
	adds r0, r3, r5
	bl GetCapacity__C4Coop
	ldr r7, [sp, #0x54]
	cmp r7, r0
	bhs .L0807B8DC
	lsls r0, r7, #3
	ldr r1, .L0807B8F0 @ =0x000006AC
	add r1, r8
	adds r1, r1, r0
	ldr r1, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq .L0807B8DC
	b .L0807B3F6
.L0807B8DC:
	ldr r0, [sp, #0x4c]
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0807B8F0: .4byte 0x000006AC

	thumb_func_start func_0807B8F4
func_0807B8F4: @ 0x0807B8F4
	push {lr}
	sub sp, #8
	adds r0, r1, #0
	movs r1, #0xa
	str r1, [sp]
	bl GetAffection__C6Animal
	movs r1, #0x19
	bl __udivsi3
	str r0, [sp, #4]
	add r2, sp, #4
	ldr r1, [sp]
	mov r3, sp
	cmp r1, r0
	bls .L0807B916
	adds r3, r2, #0
.L0807B916:
	ldr r0, [r3]
	add sp, #8
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0807B920
func_0807B920: @ 0x0807B920
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r2, .L0807B978 @ =gUnk_080FD988
	mov r1, sp
	adds r0, r0, r2
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r5, .L0807B97C @ =0x00002234
	add r5, r8
	ldr r6, .L0807B980 @ =gUnk_080FD964
	adds r0, r6, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L0807B956
	movs r4, #0x7f
.L0807B956:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r5, r4
	movs r0, #0
	strb r0, [r1]
	ldr r0, [sp, #0x10]
	cmp r0, #4
	bls .L0807B96E
	b .L0807BE4C
.L0807B96E:
	lsls r0, r0, #2
	ldr r1, .L0807B984 @ =.L0807B988
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0807B978: .4byte gUnk_080FD988
.L0807B97C: .4byte 0x00002234
.L0807B980: .4byte gUnk_080FD964
.L0807B984: .4byte .L0807B988
.L0807B988: @ jump table
	.4byte .L0807B99C @ case 0
	.4byte .L0807B9B0 @ case 1
	.4byte .L0807B9C6 @ case 2
	.4byte .L0807B9C6 @ case 3
	.4byte .L0807B9D0 @ case 4
.L0807B99C:
	add r4, sp, #0x28
	ldr r1, [sp]
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetDesc__C7Article
	adds r1, r0, #0
	b .L0807B9C8
.L0807B9B0:
	mov r4, sp
	adds r4, #0x29
	ldr r1, [sp]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetDesc__C4Tool
	adds r1, r0, #0
	b .L0807B9C8
.L0807B9C6:
	ldr r1, [sp, #0xc]
.L0807B9C8:
	mov r0, r8
	bl func_080CABEC
	b .L0807BE4C
.L0807B9D0:
	mov r4, r8
	ldr r0, [r4, #8]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r2, [r4, #0x10]
	lsls r2, r2, #3
	ldr r1, .L0807BA30 @ =0x000006AC
	add r1, r8
	adds r1, r1, r2
	ldr r1, [r1]
	bl GetChicken__4CoopUi
	mov sl, r0
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0
	beq .L0807BA3C
	ldr r4, .L0807BA34 @ =0x00002234
	add r4, r8
	ldr r7, .L0807BA38 @ =gUnk_080FD9F0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BABC
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BA1E
	adds r4, r5, #0
.L0807BA1E:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	b .L0807BABC
	.align 2, 0
.L0807BA30: .4byte 0x000006AC
.L0807BA34: .4byte 0x00002234
.L0807BA38: .4byte gUnk_080FD9F0
.L0807BA3C:
	mov r0, sl
	bl IsUnhappy__C9Livestock
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq .L0807BA88
	ldr r4, .L0807BA80 @ =0x00002234
	add r4, r8
	ldr r7, .L0807BA84 @ =gUnk_080FD9FC
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BABC
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BA6E
	adds r4, r5, #0
.L0807BA6E:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r2, sb
	strb r2, [r0]
	b .L0807BABC
	.align 2, 0
.L0807BA80: .4byte 0x00002234
.L0807BA84: .4byte gUnk_080FD9FC
.L0807BA88:
	ldr r4, .L0807BB94 @ =0x00002234
	add r4, r8
	ldr r3, .L0807BB98 @ =gUnk_080FDA10
	mov sb, r3
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BABC
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BAAE
	adds r4, r5, #0
.L0807BAAE:
	adds r0, r6, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	strb r7, [r0]
.L0807BABC:
	mov r0, sl
	bl GetAge__C6Animal
	movs r1, #0x78
	bl __udivsi3
	adds r6, r0, #0
	cmp r6, #9
	bgt .L0807BB04
	ldr r4, .L0807BB94 @ =0x00002234
	add r4, r8
	ldr r0, .L0807BB9C @ =gUnk_080FDA20
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BB04
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BAF4
	adds r4, r5, #0
.L0807BAF4:
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807BB04:
	add r4, sp, #0x14
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl func_0804EC84
	ldr r6, .L0807BB94 @ =0x00002234
	add r6, r8
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BB42
	add r0, sp, #0x14
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BB32
	adds r4, r5, #0
.L0807BB32:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807BB42:
	ldr r7, .L0807BBA0 @ =gUnk_080FDA24
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BB72
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BB62
	adds r4, r5, #0
.L0807BB62:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807BB72:
	mov r0, sl
	bl GetAge__C6Animal
	adds r4, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	ldrb r1, [r0, #0x11]
	mov r0, sp
	adds r0, #0x2a
	strb r1, [r0]
	adds r6, r0, #0
	cmp r4, #0x1d
	bhi .L0807BBA4
	adds r5, r4, #0
	movs r4, #0
	b .L0807BBB8
	.align 2, 0
.L0807BB94: .4byte 0x00002234
.L0807BB98: .4byte gUnk_080FDA10
.L0807BB9C: .4byte gUnk_080FDA20
.L0807BBA0: .4byte gUnk_080FDA24
.L0807BBA4:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x1e
	bl __udivsi3
	adds r4, r0, #0
.L0807BBB8:
	ldrb r0, [r6]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1b
	adds r2, r5, #0
	subs r2, #0x1e
	subs r3, r1, r2
	cmp r3, #0x1d
	bhi .L0807BBCC
	adds r4, #1
	b .L0807BBCE
.L0807BBCC:
	subs r3, #0x1e
.L0807BBCE:
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
	mov sl, r1
	lsls r1, r1, #0x1e
	lsrs r6, r1, #0x1e
	cmp r6, #1
	beq .L0807BC50
	cmp r6, #1
	bgt .L0807BC06
	cmp r6, #0
	beq .L0807BC10
	b .L0807BCA4
.L0807BC06:
	cmp r6, #2
	beq .L0807BC60
	cmp r6, #3
	beq .L0807BC70
	b .L0807BCA4
.L0807BC10:
	ldr r4, .L0807BC48 @ =0x00002234
	add r4, r8
	ldr r2, .L0807BC4C @ =gUnk_080FDA40
	mov sb, r2
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BCA4
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BC36
	adds r4, r5, #0
.L0807BC36:
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	strb r6, [r0]
	b .L0807BCA4
	.align 2, 0
.L0807BC48: .4byte 0x00002234
.L0807BC4C: .4byte gUnk_080FDA40
.L0807BC50:
	ldr r4, .L0807BC58 @ =0x00002234
	add r4, r8
	ldr r7, .L0807BC5C @ =gUnk_080FDA48
	b .L0807BC76
	.align 2, 0
.L0807BC58: .4byte 0x00002234
.L0807BC5C: .4byte gUnk_080FDA48
.L0807BC60:
	ldr r4, .L0807BC68 @ =0x00002234
	add r4, r8
	ldr r7, .L0807BC6C @ =gUnk_080FDA50
	b .L0807BC76
	.align 2, 0
.L0807BC68: .4byte 0x00002234
.L0807BC6C: .4byte gUnk_080FDA50
.L0807BC70:
	ldr r4, .L0807BE5C @ =0x00002234
	add r4, r8
	ldr r7, .L0807BE60 @ =gUnk_080FDA58
.L0807BC76:
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BCA4
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BC94
	adds r4, r5, #0
.L0807BC94:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807BCA4:
	mov r3, sl
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1b
	adds r6, r0, #1
	cmp r6, #9
	bgt .L0807BCE4
	ldr r4, .L0807BE5C @ =0x00002234
	add r4, r8
	ldr r7, .L0807BE64 @ =gUnk_080FDA20
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BCE4
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BCD4
	adds r4, r5, #0
.L0807BCD4:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807BCE4:
	mov r4, sl
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	add r1, sp, #0x14
	movs r2, #0
	bl func_0804EC84
	ldr r6, .L0807BE5C @ =0x00002234
	add r6, r8
	ldr r0, .L0807BE64 @ =gUnk_080FDA20
	mov sb, r0
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BD2A
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BD1A
	adds r4, r5, #0
.L0807BD1A:
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807BD2A:
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BD58
	add r0, sp, #0x14
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BD48
	adds r4, r5, #0
.L0807BD48:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807BD58:
	ldr r7, .L0807BE68 @ =gUnk_080FDA60
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BD88
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BD78
	adds r4, r5, #0
.L0807BD78:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807BD88:
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #3
	movs r1, #0xd6
	lsls r1, r1, #3
	add r1, r8
	adds r1, r1, r0
	ldr r6, [r1]
	ldr r0, .L0807BE6C @ =0x000003E7
	cmp r6, r0
	bgt .L0807BDD4
	ldr r4, .L0807BE5C @ =0x00002234
	add r4, r8
	ldr r2, .L0807BE64 @ =gUnk_080FDA20
	mov sb, r2
	adds r0, r4, #0
	bl strlen
	adds r7, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BDD4
	mov r0, sb
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BDC4
	adds r4, r5, #0
.L0807BDC4:
	adds r0, r7, #0
	mov r1, sb
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807BDD4:
	add r4, sp, #0x14
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0
	bl func_0804EC84
	ldr r6, .L0807BE5C @ =0x00002234
	add r6, r8
	adds r0, r6, #0
	bl strlen
	adds r7, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BE12
	adds r0, r4, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BE02
	adds r4, r5, #0
.L0807BE02:
	adds r0, r7, #0
	add r1, sp, #0x14
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L0807BE12:
	ldr r7, .L0807BE70 @ =gUnk_080FDA78
	adds r0, r6, #0
	bl strlen
	adds r6, r6, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807BE42
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807BE32
	adds r4, r5, #0
.L0807BE32:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807BE42:
	ldr r1, .L0807BE5C @ =0x00002234
	add r1, r8
	mov r0, r8
	bl func_080CABEC
.L0807BE4C:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0807BE5C: .4byte 0x00002234
.L0807BE60: .4byte gUnk_080FDA58
.L0807BE64: .4byte gUnk_080FDA20
.L0807BE68: .4byte gUnk_080FDA60
.L0807BE6C: .4byte 0x000003E7
.L0807BE70: .4byte gUnk_080FDA78

	thumb_func_start func_0807BE74
func_0807BE74: @ 0x0807BE74
	push {r4, lr}
	ldr r0, [r0, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetChicken__4CoopUi
	movs r4, #0xfa
	lsls r4, r4, #1
	bl GetProductRank__C9Livestock
	cmp r0, #4
	bhi .L0807BEC0
	lsls r0, r0, #2
	ldr r1, .L0807BE98 @ =.L0807BE9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0807BE98: .4byte .L0807BE9C
.L0807BE9C: @ jump table
	.4byte .L0807BEB0 @ case 0
	.4byte .L0807BEB0 @ case 1
	.4byte .L0807BEB0 @ case 2
	.4byte .L0807BEB6 @ case 3
	.4byte .L0807BEBC @ case 4
.L0807BEB0:
	movs r4, #0xfa
	lsls r4, r4, #1
	b .L0807BEC0
.L0807BEB6:
	movs r4, #0xfa
	lsls r4, r4, #2
	b .L0807BEC0
.L0807BEBC:
	movs r4, #0xfa
	lsls r4, r4, #3
.L0807BEC0:
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0807BEC8
func_0807BEC8: @ 0x0807BEC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080C85A0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807BF00
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807BEFA
	movs r0, #0
	str r0, [r2]
.L0807BEFA:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807BF00:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807BF20
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807BF1A
	movs r0, #1
	str r0, [r2]
.L0807BF1A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807BF20:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807BF40
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807BF3A
	movs r0, #2
	str r0, [r2]
.L0807BF3A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807BF40:
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807BF60
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807BF5A
	movs r0, #3
	str r0, [r2]
.L0807BF5A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807BF60:
	movs r5, #0
	mov sb, r5
	mov r6, sp
	adds r6, #0x6c
	str r6, [sp, #0x9c]
	mov r0, sp
	adds r0, #0x20
	str r0, [sp, #0x98]
.L0807BF70:
	mov r2, sb
	lsls r1, r2, #2
	add r1, sb
	lsls r1, r1, #2
	ldr r2, .L0807C02C @ =gUnk_080FD988
	add r0, sp, #0xc
	adds r1, r1, r2
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldm r1!, {r2, r6}
	stm r0!, {r2, r6}
	mov r3, sb
	lsls r0, r3, #1
	adds r4, r0, r3
	lsls r0, r4, #6
	add r0, sb
	lsls r5, r0, #2
	adds r1, r5, r7
	movs r6, #0xe2
	lsls r6, r6, #3
	adds r1, r1, r6
	add r0, sp, #0x6c
	movs r2, #0xc
	strh r2, [r0]
	movs r6, #2
	ldr r3, [sp, #0x9c]
	strh r6, [r3, #2]
	ldr r0, [sp, #0x6c]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	mov r0, sb
	cmp r0, #1
	bls .L0807BFD8
	adds r1, r5, r7
	ldr r2, [sp, #0x10]
	add r0, sp, #0x70
	movs r3, #0xc
	strh r3, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x70]
	ldr r6, .L0807C030 @ =0x00000714
	adds r1, r1, r6
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
.L0807BFD8:
	lsls r4, r4, #3
	adds r4, #0xd0
	adds r0, r7, #0
	bl func_08008910
	adds r1, r5, r7
	movs r5, #0xe2
	lsls r5, r5, #3
	adds r1, r1, r5
	adds r1, #4
	adds r6, r0, #0
	lsls r4, r4, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r4, r4, r0
	add r0, sp, #0x20
	adds r2, r4, #0
	movs r3, #0xc0
	lsls r3, r3, #2
	bl func_08008F0C
	ldr r1, [sp, #0x98]
	str r1, [sp, #0x8c]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0807C034
	cmp r1, #0
	beq .L0807C01E
	adds r0, r1, #0
	ldr r1, [sp, #0x8c]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807C01E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r5, #1
	add sb, r5
	b .L0807C102
	.align 2, 0
.L0807C02C: .4byte gUnk_080FD988
.L0807C030: .4byte 0x00000714
.L0807C034:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x78]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r1, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L0807C04C
	adds r0, r1, #0
.L0807C04C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807C06A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L0807C06E
	mov r0, sl
	bl func_080D3BC0
	b .L0807C06E
.L0807C06A:
	movs r0, #0
	mov sl, r0
.L0807C06E:
	adds r5, r0, #0
	str r5, [sp, #0xa0]
	ldr r2, [r6]
	mov ip, r5
	movs r1, #1
	add sb, r1
	cmp r2, r8
	beq .L0807C09A
.L0807C07E:
	mov r3, ip
	cmp r3, #0
	beq .L0807C090
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0807C090:
	adds r2, #0x10
	movs r4, #0x10
	add ip, r4
	cmp r2, r8
	bne .L0807C07E
.L0807C09A:
	mov r5, ip
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L0807C0B6
	cmp r5, #0
	beq .L0807C0B2
	adds r0, r5, #0
	ldr r1, [sp, #0x8c]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807C0B2:
	adds r5, #0x10
	b .L0807C0DE
.L0807C0B6:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0807C0DC
.L0807C0BE:
	cmp r2, #0
	beq .L0807C0CE
	adds r0, r2, #0
	ldr r1, [sp, #0x8c]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0807C0CE:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L0807C0BE
.L0807C0DC:
	adds r5, r2, #0
.L0807C0DE:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0807C0EE
.L0807C0E8:
	adds r1, #0x10
	cmp r1, r2
	bne .L0807C0E8
.L0807C0EE:
	cmp r0, #0
	beq .L0807C0F6
	bl free
.L0807C0F6:
	ldr r0, [sp, #0xa0]
	add r0, sl
	ldr r1, [sp, #0xa0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0807C102:
	mov r2, sb
	cmp r2, #4
	bhi .L0807C10A
	b .L0807BF70
.L0807C10A:
	adds r0, r7, #0
	bl func_0807B188
	adds r5, r0, #0
	ldr r0, [r7, #0x1c]
	movs r3, #0xc
	ldrsh r1, [r7, r3]
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
	movs r4, #0xaa
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_0807B920
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
	ldr r0, .L0807C1CC @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0xc]
	ldr r1, .L0807C1D0 @ =0x00000889
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
	movs r5, #0
	str r5, [sp, #0x90]

	thumb_func_start sub_0807C194
sub_0807C194: @ 0x0807C194
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0807C1B0
	bl .L0807D054
.L0807C1B0:
	ldr r6, [sp, #0x90]
	cmp r6, #0
	beq .L0807C1D4
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	movs r0, #1
	rsbs r0, r0, #0
	bl .L0807D05E
	.align 2, 0
.L0807C1CC: .4byte vtable_unk_080E5B80
.L0807C1D0: .4byte 0x00000889
.L0807C1D4:
	ldr r1, .L0807C1EC @ =0x000006A4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0xa
	bls .L0807C1E2
	bl .L0807D054
.L0807C1E2:
	lsls r0, r0, #2
	ldr r1, .L0807C1F0 @ =.L0807C1F4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0807C1EC: .4byte 0x000006A4
.L0807C1F0: .4byte .L0807C1F4
.L0807C1F4: @ jump table
	.4byte .L0807C220 @ case 0
	.4byte .L0807C9D0 @ case 1
	.4byte .L0807CB60 @ case 2
	.4byte .L0807CD50 @ case 3
	.4byte .L0807CE48 @ case 4
	.4byte .L0807CE78 @ case 5
	.4byte .L0807CEA8 @ case 6
	.4byte .L0807CED4 @ case 7
	.4byte .L0807CF44 @ case 8
	.4byte .L0807CFEC @ case 9
	.4byte .L0807D02C @ case 10
.L0807C220:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L0807C23A
	lsls r0, r1, #2
	adds r0, r0, r7
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_0807B920
.L0807C23A:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r4, r7, r3
	ldr r1, [r4]
	adds r0, r7, #0
	bl func_080C9020
	ldr r5, .L0807C294 @ =0x000006A1
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0807C258
	b .L0807C970
.L0807C258:
	add r5, sp, #0x10
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	ldr r3, [r0]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r2, .L0807C298 @ =gUnk_080FD988
	adds r0, r5, #0
	adds r1, r1, r2
	ldm r1!, {r2, r4, r6}
	stm r0!, {r2, r4, r6}
	ldm r1!, {r2, r6}
	stm r0!, {r2, r6}
	cmp r3, #1
	bne .L0807C27E
	b .L0807C484
.L0807C27E:
	cmp r3, #1
	blo .L0807C29C
	cmp r3, #2
	bne .L0807C288
	b .L0807C73C
.L0807C288:
	cmp r3, #3
	bne .L0807C28E
	b .L0807C800
.L0807C28E:
	bl .L0807D054
	.align 2, 0
.L0807C294: .4byte 0x000006A1
.L0807C298: .4byte gUnk_080FD988
.L0807C29C:
	ldr r3, [r7, #8]
	ldr r4, .L0807C2D0 @ =0x00001AA8
	adds r0, r3, r4
	ldr r1, [r0]
	movs r2, #0
	ldr r0, [r5, #8]
	cmp r1, r0
	bhs .L0807C2AE
	movs r2, #1
.L0807C2AE:
	mov sl, r2
	cmp r2, #0
	beq .L0807C2DC
	ldr r1, .L0807C2D4 @ =gUnk_080FDA7C
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xe
	bl func_08050E50
	ldr r6, .L0807C2D8 @ =0x000006A4
	adds r1, r7, r6
	bl .L0807CF36
	.align 2, 0
.L0807C2D0: .4byte 0x00001AA8
.L0807C2D4: .4byte gUnk_080FDA7C
.L0807C2D8: .4byte 0x000006A4
.L0807C2DC:
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r3, r1
	bl GetStoredBushelCount__C4Coop
	ldr r1, .L0807C2FC @ =0x000003E6
	cmp r0, r1
	bls .L0807C308
	ldr r1, .L0807C300 @ =gUnk_080FDAA8
	adds r0, r7, #0
	bl func_080CABA0
	ldr r2, .L0807C304 @ =0x000006A4
	adds r1, r7, r2
	bl .L0807CF36
	.align 2, 0
.L0807C2FC: .4byte 0x000003E6
.L0807C300: .4byte gUnk_080FDAA8
.L0807C304: .4byte 0x000006A4
.L0807C308:
	ldr r0, [r7, #8]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetStoredBushelCount__C4Coop
	ldr r1, .L0807C46C @ =0x000003E7
	subs r1, r1, r0
	str r1, [sp, #0x94]
	ldr r4, .L0807C470 @ =0x00000684
	adds r0, r7, r4
	ldr r1, [r5, #8]
	ldr r2, [sp, #0x94]
	movs r3, #5
	bl func_080CA8B4
	ldr r0, [r7, #8]
	movs r5, #0x82
	lsls r5, r5, #3
	adds r0, r0, r5
	bl GetStoredBushelCount__C4Coop
	add r1, sp, #0x30
	movs r2, #7
	bl func_0804EC84
	add r5, sp, #0x7c
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl __7ArticleUi
	ldr r6, .L0807C474 @ =0x000022B4
	adds r4, r7, r6
	mov r0, sl
	strb r0, [r4]
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
	beq .L0807C38A
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C378
	adds r5, r6, #0
.L0807C378:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r0, r2, r5
	mov r3, sl
	strb r3, [r0]
.L0807C38A:
	ldr r5, .L0807C478 @ =gUnk_080FDAD4
	mov sb, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	mov r8, r6
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C3C0
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C3AE
	adds r5, r6, #0
.L0807C3AE:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L0807C3C0:
	ldr r0, .L0807C47C @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C3F8
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C3E6
	adds r5, r6, #0
.L0807C3E6:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807C3F8:
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C42A
	add r0, sp, #0x30
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C418
	adds r5, r6, #0
.L0807C418:
	mov r0, r8
	add r1, sp, #0x30
	adds r2, r5, #0
	bl memcpy
	mov r6, r8
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
.L0807C42A:
	ldr r0, .L0807C480 @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807C45E
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807C44E
	adds r4, r5, #0
.L0807C44E:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807C45E:
	ldr r0, .L0807C474 @ =0x000022B4
	adds r1, r7, r0
	adds r0, r7, #0
	bl func_080CABEC
	b .L0807C710
	.align 2, 0
.L0807C46C: .4byte 0x000003E7
.L0807C470: .4byte 0x00000684
.L0807C474: .4byte 0x000022B4
.L0807C478: .4byte gUnk_080FDAD4
.L0807C47C: .4byte gUnk_08117828
.L0807C480: .4byte gUnk_08117814
.L0807C484:
	ldr r3, [r7, #8]
	ldr r4, .L0807C4B8 @ =0x00001AA8
	adds r0, r3, r4
	ldr r1, [r0]
	movs r2, #0
	ldr r0, [r5, #8]
	cmp r1, r0
	bhs .L0807C496
	movs r2, #1
.L0807C496:
	cmp r2, #0
	beq .L0807C4C4
	ldr r1, .L0807C4BC @ =gUnk_080FDA7C
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xe
	bl func_08050E50
	ldr r6, .L0807C4C0 @ =0x000006A4
	adds r1, r7, r6
	bl .L0807CF36
	.align 2, 0
.L0807C4B8: .4byte 0x00001AA8
.L0807C4BC: .4byte gUnk_080FDA7C
.L0807C4C0: .4byte 0x000006A4
.L0807C4C4:
	movs r5, #0
	ldr r1, .L0807C4E8 @ =0x00001C38
	adds r0, r3, r1
	movs r1, #0x4a
	bl GetAvailableSpaceForTool__C8RucksackUi
	adds r6, r0, #0
	ldr r0, [r7, #8]
	ldr r4, .L0807C4EC @ =0x00001C34
	adds r0, r0, r4
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807C4F0
	movs r5, #0x63
	b .L0807C522
	.align 2, 0
.L0807C4E8: .4byte 0x00001C38
.L0807C4EC: .4byte 0x00001C34
.L0807C4F0:
	ldr r0, [r7, #8]
	ldr r2, .L0807C558 @ =0x00001C34
	adds r0, r0, r2
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x7d
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x4a
	bne .L0807C522
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetAmount__C9ToolStack
	cmp r0, #0x63
	beq .L0807C522
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r5, r1, r0
.L0807C522:
	ldr r0, [r7, #8]
	movs r3, #0xe0
	lsls r3, r3, #2
	adds r0, r0, r3
	movs r1, #0x4a
	bl GetAvailableSpaceFor__C9ToolChestUi
	adds r1, r6, r5
	adds r1, r1, r0
	str r1, [sp, #0x94]
	cmp r1, #0
	bne .L0807C564
	ldr r1, .L0807C55C @ =gUnk_080FDADC
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0xe
	bl func_08050E50
	ldr r5, .L0807C560 @ =0x000006A4
	adds r1, r7, r5
	bl .L0807CF36
	.align 2, 0
.L0807C558: .4byte 0x00001C34
.L0807C55C: .4byte gUnk_080FDADC
.L0807C560: .4byte 0x000006A4
.L0807C564:
	ldr r0, [r7, #8]
	ldr r6, .L0807C71C @ =0x00001C38
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
	ldr r5, .L0807C720 @ =0x00001C34
	adds r0, r0, r5
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0807C5C2
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x7e
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bne .L0807C5B4
	movs r2, #1
.L0807C5B4:
	cmp r2, #0
	beq .L0807C5C2
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetAmount__C9ToolStack
	mov r8, r0
.L0807C5C2:
	mov r2, r8
	adds r0, r6, r2
	adds r0, r0, r4
	add r1, sp, #0x24
	movs r2, #7
	bl func_0804EC84
	mov r5, sp
	adds r5, #0x7f
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl __4ToolUi
	ldr r3, .L0807C724 @ =0x000022B4
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
	beq .L0807C624
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C612
	adds r5, r6, #0
.L0807C612:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r0, r2, r5
	mov r3, sl
	strb r3, [r0]
.L0807C624:
	ldr r5, .L0807C728 @ =gUnk_080FDAD4
	mov sb, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	mov r8, r6
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C65A
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C648
	adds r5, r6, #0
.L0807C648:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L0807C65A:
	ldr r0, .L0807C72C @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C692
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C680
	adds r5, r6, #0
.L0807C680:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807C692:
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807C6C4
	add r0, sp, #0x24
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807C6B2
	adds r5, r6, #0
.L0807C6B2:
	mov r0, r8
	add r1, sp, #0x24
	adds r2, r5, #0
	bl memcpy
	mov r6, r8
	adds r1, r6, r5
	movs r0, #0
	strb r0, [r1]
.L0807C6C4:
	ldr r0, .L0807C730 @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807C6F8
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807C6E8
	adds r4, r5, #0
.L0807C6E8:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807C6F8:
	ldr r0, .L0807C724 @ =0x000022B4
	adds r1, r7, r0
	adds r0, r7, #0
	bl func_080CABEC
	ldr r1, .L0807C734 @ =0x00000684
	adds r0, r7, r1
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x94]
	movs r3, #5
	bl func_080CA8B4
.L0807C710:
	ldr r2, .L0807C738 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	bl .L0807D054
	.align 2, 0
.L0807C71C: .4byte 0x00001C38
.L0807C720: .4byte 0x00001C34
.L0807C724: .4byte 0x000022B4
.L0807C728: .4byte gUnk_080FDAD4
.L0807C72C: .4byte gUnk_08117828
.L0807C730: .4byte gUnk_08117814
.L0807C734: .4byte 0x00000684
.L0807C738: .4byte 0x000006A4
.L0807C73C:
	ldr r3, [r7, #8]
	ldr r4, .L0807C770 @ =0x00001AA8
	adds r0, r3, r4
	ldr r1, [r0]
	movs r2, #0
	ldr r0, [r5, #8]
	cmp r1, r0
	bhs .L0807C74E
	movs r2, #1
.L0807C74E:
	cmp r2, #0
	beq .L0807C77C
	ldr r1, .L0807C774 @ =gUnk_080FDA7C
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xe
	bl func_08050E50
	ldr r6, .L0807C778 @ =0x000006A4
	adds r1, r7, r6
	bl .L0807CF36
	.align 2, 0
.L0807C770: .4byte 0x00001AA8
.L0807C774: .4byte gUnk_080FDA7C
.L0807C778: .4byte 0x000006A4
.L0807C77C:
	movs r4, #0x82
	lsls r4, r4, #3
	adds r0, r3, r4
	bl GetCapacity__C4Coop
	mov r8, r0
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl CountChickens__C4Coop
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
	b .L0807C7B0
.L0807C798:
	ldr r0, [r7, #8]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r4, #0
	bl IsIncubatorOccupied__C4CoopUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807C7AE
	adds r5, #1
.L0807C7AE:
	adds r4, #1
.L0807C7B0:
	ldr r0, [r7, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetIncubatorCapacity__C4Coop
	cmp r4, r0
	blo .L0807C798
	mov r3, r8
	subs r0, r3, r6
	cmp r0, r5
	bne .L0807C7D8
	ldr r1, .L0807C7D4 @ =gUnk_080FDB0C
	adds r0, r7, #0
	bl func_080CABA0
	b .L0807CF32
	.align 2, 0
.L0807C7D4: .4byte gUnk_080FDB0C
.L0807C7D8:
	ldr r1, .L0807C7F8 @ =gUnk_080FDB38
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xf
	bl func_08050E50
	ldr r6, .L0807C7FC @ =0x000006A4
	adds r1, r7, r6
	movs r0, #3
	str r0, [r1]
	bl .L0807D054
	.align 2, 0
.L0807C7F8: .4byte gUnk_080FDB38
.L0807C7FC: .4byte 0x000006A4
.L0807C800:
	ldr r0, [r7, #8]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUnkEnt__C4Coop
	adds r6, r0, #0
	movs r2, #1
	rsbs r2, r2, #0
	movs r1, #7
	ldr r3, .L0807C82C @ =0x000006E4
	adds r0, r7, r3
.L0807C818:
	str r2, [r0]
	subs r0, #8
	subs r1, #1
	cmp r1, #0
	bge .L0807C818
	movs r5, #0
	movs r4, #0x82
	lsls r4, r4, #3
	b .L0807C832
	.align 2, 0
.L0807C82C: .4byte 0x000006E4
.L0807C830:
	adds r5, #1
.L0807C832:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetCapacity__C4Coop
	cmp r5, r0
	bhs .L0807C860
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq .L0807C84A
	cmp r5, r6
	beq .L0807C830
.L0807C84A:
	ldr r0, [r7, #8]
	adds r0, r0, r4
	adds r1, r5, #0
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L0807C830
	bl GetGrowthStage__C7Chicken
	cmp r0, #1
	bne .L0807C830
.L0807C860:
	ldr r0, [r7, #8]
	movs r4, #0x82
	lsls r4, r4, #3
	adds r0, r0, r4
	bl GetCapacity__C4Coop
	cmp r5, r0
	bne .L0807C880
	ldr r1, .L0807C87C @ =gUnk_080FDB6C
	adds r0, r7, #0
	bl func_080CABA0
	b .L0807CF32
	.align 2, 0
.L0807C87C: .4byte gUnk_080FDB6C
.L0807C880:
	ldr r5, .L0807C8A8 @ =0x000006EC
	adds r2, r7, r5
	movs r0, #0xde
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
	mov r8, r1
	movs r5, #0
	mov sb, r4
	b .L0807C910
	.align 2, 0
.L0807C8A8: .4byte 0x000006EC
.L0807C8AC:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	beq .L0807C8B8
	cmp r5, r6
	beq .L0807C90E
.L0807C8B8:
	ldr r0, [r7, #8]
	add r0, sb
	adds r1, r5, #0
	bl GetChicken__4CoopUi
	cmp r0, #0
	beq .L0807C90E
	bl GetGrowthStage__C7Chicken
	cmp r0, #1
	bne .L0807C90E
	movs r2, #4
	ldr r3, .L0807C964 @ =0x000006EC
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #7
	bhi .L0807C8EC
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0807C8E6
	str r2, [r0]
.L0807C8E6:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807C8EC:
	mov r0, r8
	lsls r4, r0, #3
	ldr r1, .L0807C968 @ =0x000006AC
	adds r0, r7, r1
	adds r0, r0, r4
	str r5, [r0]
	adds r0, r7, #0
	adds r1, r5, #0
	bl func_0807BE74
	movs r2, #0xd6
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r1, r1, r4
	str r0, [r1]
	movs r3, #1
	add r8, r3
.L0807C90E:
	adds r5, #1
.L0807C910:
	ldr r0, [r7, #8]
	add r0, sb
	bl GetCapacity__C4Coop
	cmp r5, r0
	blo .L0807C8AC
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	bl func_0807B3B0
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
	ldr r3, .L0807C96C @ =0x000006A4
	adds r1, r7, r3
	movs r0, #1
	str r0, [r1]
	b .L0807D054
	.align 2, 0
.L0807C964: .4byte 0x000006EC
.L0807C968: .4byte 0x000006AC
.L0807C96C: .4byte 0x000006A4
.L0807C970:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L0807C980
	b .L0807D054
.L0807C980:
	movs r4, #0xd5
	lsls r4, r4, #3
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0807C9A8
	ldr r1, .L0807C9A4 @ =gUnk_080FDB9C
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xe
	bl func_08050E50
	b .L0807C9BC
	.align 2, 0
.L0807C9A4: .4byte gUnk_080FDB9C
.L0807C9A8:
	ldr r1, .L0807C9C8 @ =gUnk_080FDBC4
	adds r0, r7, #0
	bl func_080CABA0
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0x11
	bl func_08050E50
.L0807C9BC:
	ldr r0, .L0807C9CC @ =0x000006A4
	adds r1, r7, r0
	movs r0, #9
	str r0, [r1]
	b .L0807D054
	.align 2, 0
.L0807C9C8: .4byte gUnk_080FDBC4
.L0807C9CC: .4byte 0x000006A4
.L0807C9D0:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L0807C9EA
	lsls r0, r1, #2
	adds r0, r0, r7
	movs r1, #0xde
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_0807B920
.L0807C9EA:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	ldr r2, .L0807CAF0 @ =0x000006EC
	adds r0, r7, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_080C9020
	ldr r3, .L0807CAF4 @ =0x000006A1
	adds r0, r7, r3
	ldrb r4, [r0]
	cmp r4, #0
	bne .L0807CA06
	b .L0807CB10
.L0807CA06:
	ldr r5, .L0807CAF8 @ =0x00002234
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
	ldr r3, .L0807CAFC @ =gUnk_080FDBE8
	mov sb, r3
	adds r0, r4, #0
	bl strlen
	adds r5, r4, r0
	mov r8, r5
	movs r1, #0x7f
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807CA5E
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807CA4C
	adds r5, r6, #0
.L0807CA4C:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r6, r8
	adds r0, r6, r5
	mov r1, sl
	strb r1, [r0]
.L0807CA5E:
	adds r0, r4, #0
	bl strlen
	adds r2, r4, r0
	mov r8, r2
	movs r1, #0x7f
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807CA90
	add r0, sp, #0x24
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807CA7E
	adds r5, r6, #0
.L0807CA7E:
	mov r0, r8
	add r1, sp, #0x24
	adds r2, r5, #0
	bl memcpy
	mov r3, r8
	adds r1, r3, r5
	movs r0, #0
	strb r0, [r1]
.L0807CA90:
	ldr r5, .L0807CB00 @ =gUnk_080FDA78
	mov r8, r5
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x7f
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807CAC2
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807CAB2
	adds r4, r5, #0
.L0807CAB2:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807CAC2:
	ldr r6, .L0807CAF8 @ =0x00002234
	adds r1, r7, r6
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r2, .L0807CB04 @ =gUnk_080FDBF8
	ldr r3, .L0807CB08 @ =gUnk_080FDBFC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl func_08050E30
	adds r0, r4, #0
	movs r1, #0xf
	bl func_08050E50
	ldr r2, .L0807CB0C @ =0x000006A4
	adds r1, r7, r2
	movs r0, #8
	str r0, [r1]
	b .L0807D054
	.align 2, 0
.L0807CAF0: .4byte 0x000006EC
.L0807CAF4: .4byte 0x000006A1
.L0807CAF8: .4byte 0x00002234
.L0807CAFC: .4byte gUnk_080FDBE8
.L0807CB00: .4byte gUnk_080FDA78
.L0807CB04: .4byte gUnk_080FDBF8
.L0807CB08: .4byte gUnk_080FDBFC
.L0807CB0C: .4byte 0x000006A4
.L0807CB10:
	ldr r3, .L0807CB58 @ =0x000006A3
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0807CB1C
	b .L0807D054
.L0807CB1C:
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	bl func_0807B188
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
	ldr r3, .L0807CB5C @ =0x000006A4
	adds r0, r7, r3
	str r4, [r0]
	str r4, [r7, #0x10]
	b .L0807CFDE
	.align 2, 0
.L0807CB58: .4byte 0x000006A3
.L0807CB5C: .4byte 0x000006A4
.L0807CB60:
	adds r0, r7, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne .L0807CB72
	b .L0807CD10
.L0807CB72:
	ldr r4, .L0807CBD0 @ =0x00000684
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
	ldr r2, .L0807CBD4 @ =gUnk_080FD988
	adds r0, r3, #0
	adds r1, r1, r2
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldm r1!, {r2, r5}
	stm r0!, {r2, r5}
	ldr r0, [r7, #8]
	ldr r6, .L0807CBD8 @ =0x00001AA8
	adds r0, r0, r6
	ldr r1, [r3, #8]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r4, r4, r0
	ldr r4, [r4]
	cmp r4, #0
	beq .L0807CBDC
	cmp r4, #1
	beq .L0807CC04
	b .L0807CCF8
	.align 2, 0
.L0807CBD0: .4byte 0x00000684
.L0807CBD4: .4byte gUnk_080FD988
.L0807CBD8: .4byte 0x00001AA8
.L0807CBDC:
	ldr r0, [r7, #8]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	mov r1, r8
	bl AddStoredBushels__4CoopUi
	ldr r1, .L0807CC00 @ =gUnk_080FDC00
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0xe
	bl func_08050E50
	b .L0807CCF8
	.align 2, 0
.L0807CC00: .4byte gUnk_080FDC00
.L0807CC04:
	movs r4, #0
	ldr r0, [r7, #8]
	ldr r5, .L0807CC44 @ =0x00001C34
	adds r0, r0, r5
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807CC48
	ldr r5, [r7, #8]
	ldr r6, .L0807CC44 @ =0x00001C34
	adds r5, r5, r6
	add r6, sp, #0x24
	add r4, sp, #0x80
	adds r0, r4, #0
	movs r1, #0x4a
	bl __4ToolUi
	ldrb r1, [r4]
	adds r0, r6, #0
	mov r2, r8
	bl __9ToolStackG4ToolUi
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	bl memcpy
	movs r0, #0
	mov r8, r0
	b .L0807CC90
	.align 2, 0
.L0807CC44: .4byte 0x00001C34
.L0807CC48:
	ldr r0, [r7, #8]
	ldr r1, .L0807CCC8 @ =0x00001C34
	adds r0, r0, r1
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x81
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x4a
	bne .L0807CC92
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetAmount__C9ToolStack
	cmp r0, #0x63
	beq .L0807CC92
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	cmp r8, r4
	bhs .L0807CC80
	mov r4, r8
.L0807CC80:
	ldr r0, [r7, #8]
	adds r0, r0, r5
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	mov r2, r8
	subs r2, r2, r4
	mov r8, r2
.L0807CC90:
	movs r4, #1
.L0807CC92:
	mov r3, r8
	cmp r3, #0
	beq .L0807CCE4
	ldr r0, [r7, #8]
	ldr r5, .L0807CCCC @ =0x00001C38
	adds r0, r0, r5
	movs r1, #0x4a
	mov r2, r8
	bl AddAmountOfTool__8RucksackUiUi
	adds r2, r0, #0
	cmp r8, r2
	beq .L0807CCAE
	movs r4, #1
.L0807CCAE:
	cmp r2, #0
	beq .L0807CCE4
	ldr r0, [r7, #8]
	movs r6, #0xe0
	lsls r6, r6, #2
	adds r0, r0, r6
	movs r1, #0x4a
	bl AddAmountOf__9ToolChestUiUi
	cmp r4, #0
	beq .L0807CCD4
	ldr r1, .L0807CCD0 @ =gUnk_080FDC58
	b .L0807CCD6
	.align 2, 0
.L0807CCC8: .4byte 0x00001C34
.L0807CCCC: .4byte 0x00001C38
.L0807CCD0: .4byte gUnk_080FDC58
.L0807CCD4:
	ldr r1, .L0807CCE0 @ =gUnk_080FDCBC
.L0807CCD6:
	adds r0, r7, #0
	bl func_080CABA0
	b .L0807CCEC
	.align 2, 0
.L0807CCE0: .4byte gUnk_080FDCBC
.L0807CCE4:
	ldr r1, .L0807CD08 @ =gUnk_080FDD04
	adds r0, r7, #0
	bl func_080CABA0
.L0807CCEC:
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r1, #0xf
	bl func_08050E50
.L0807CCF8:
	movs r2, #0xd5
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	ldr r3, .L0807CD0C @ =0x000006A4
	adds r1, r7, r3
	b .L0807CF36
	.align 2, 0
.L0807CD08: .4byte gUnk_080FDD04
.L0807CD0C: .4byte 0x000006A4
.L0807CD10:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0807CD38
	ldr r5, .L0807CD30 @ =0x00000684
	adds r0, r7, r5
	bl func_080CAAF4
	ldr r6, .L0807CD34 @ =0x000006A4
	adds r0, r7, r6
	str r4, [r0]
	b .L0807CFDE
	.align 2, 0
.L0807CD30: .4byte 0x00000684
.L0807CD34: .4byte 0x000006A4
.L0807CD38:
	ldr r0, .L0807CD4C @ =0x00000684
	adds r1, r7, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne .L0807CD44
	b .L0807D054
.L0807CD44:
	adds r0, r1, #0
	bl func_080CA98C
	b .L0807D054
	.align 2, 0
.L0807CD4C: .4byte 0x00000684
.L0807CD50:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r6, [r0]
	cmp r6, #3
	beq .L0807CD5E
	b .L0807D054
.L0807CD5E:
	add r3, sp, #0x10
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L0807CE2C @ =gUnk_080FD988
	adds r0, r3, #0
	adds r1, r1, r2
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldm r1!, {r4, r5}
	stm r0!, {r4, r5}
	ldr r0, [r7, #8]
	ldr r1, .L0807CE30 @ =0x00001AA8
	adds r0, r0, r1
	ldr r1, [r3, #8]
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	add r1, sp, #0x2c
	movs r4, #0x11
	ldrh r2, [r1]
	ldr r3, .L0807CE34 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r5, #0x90
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
	movs r5, #0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	strb r5, [r4, #6]
	add r5, sp, #0x40
	ldr r1, .L0807CE38 @ =gUnk_080FD964
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #7
	bl __7ChickenPCcRC13ActorLocationUiUi
	ldr r0, [r7, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r1, r5, #0
	bl InsertChicken__4CoopRC7Chicken
	adds r4, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, .L0807CE3C @ =0x00000889
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
	ldr r3, .L0807CE40 @ =0x000006A4
	adds r1, r7, r3
	movs r0, #0xa
	str r0, [r1]
	ldr r5, .L0807CE44 @ =0x00002318
	adds r0, r7, r5
	str r4, [r0]
	b .L0807D054
	.align 2, 0
.L0807CE2C: .4byte gUnk_080FD988
.L0807CE30: .4byte 0x00001AA8
.L0807CE34: .4byte 0xFFFFFC00
.L0807CE38: .4byte gUnk_080FD964
.L0807CE3C: .4byte 0x00000889
.L0807CE40: .4byte 0x000006A4
.L0807CE44: .4byte 0x00002318
.L0807CE48:
	ldr r1, .L0807CE70 @ =gUnk_080FDD1C
	adds r0, r7, #0
	bl func_080CABA0
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0xf
	bl func_08050E50
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	ldr r2, .L0807CE74 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #5
	str r0, [r1]
	b .L0807D054
	.align 2, 0
.L0807CE70: .4byte gUnk_080FDD1C
.L0807CE74: .4byte 0x000006A4
.L0807CE78:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807CE86
	b .L0807D054
.L0807CE86:
	ldr r1, .L0807CEA0 @ =gUnk_080FDD68
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0xe
	bl func_08050E50
	ldr r5, .L0807CEA4 @ =0x000006A4
	adds r1, r7, r5
	b .L0807CF36
	.align 2, 0
.L0807CEA0: .4byte gUnk_080FDD68
.L0807CEA4: .4byte 0x000006A4
.L0807CEA8:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807CEB6
	b .L0807D054
.L0807CEB6:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	bl func_08050E5C
	ldr r2, .L0807CED0 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	b .L0807D054
	.align 2, 0
.L0807CED0: .4byte 0x000006A4
.L0807CED4:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807CEE2
	b .L0807D054
.L0807CEE2:
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r0, r7, #0
	bl func_0807B188
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
	ldr r1, .L0807CF3C @ =gUnk_080FDD68
	adds r0, r7, #0
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0xe
	bl func_08050E50
.L0807CF32:
	ldr r4, .L0807CF40 @ =0x000006A4
	adds r1, r7, r4
.L0807CF36:
	movs r0, #6
	str r0, [r1]
	b .L0807D054
	.align 2, 0
.L0807CF3C: .4byte gUnk_080FDD68
.L0807CF40: .4byte 0x000006A4
.L0807CF44:
	movs r5, #0xd4
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807CF52
	b .L0807D054
.L0807CF52:
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r4, r7, r6
	adds r0, r4, #0
	bl func_08050DF0
	adds r5, r0, #0
	cmp r5, #1
	beq .L0807CF6A
	cmp r5, #2
	beq .L0807CFD0
	b .L0807D054
.L0807CF6A:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r1, .L0807CFC0 @ =0x000006AC
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x84]
	str r1, [sp, #0x88]
	ldr r0, [r7, #8]
	ldr r2, .L0807CFC4 @ =0x00001AA8
	adds r0, r0, r2
	ldr r1, [sp, #0x88]
	bl func_0809ABD8
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [r7, #8]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r1, [sp, #0x84]
	bl Remove__4CoopUi
	ldr r1, .L0807CFC8 @ =gUnk_080FDD84
	adds r0, r7, #0
	bl func_080CABA0
	adds r0, r4, #0
	movs r1, #0xf
	bl func_08050E50
	ldr r4, .L0807CFCC @ =0x000006A4
	adds r1, r7, r4
	movs r0, #7
	str r0, [r1]
	movs r6, #0xd5
	lsls r6, r6, #3
	adds r0, r7, r6
	strb r5, [r0]
	b .L0807D054
	.align 2, 0
.L0807CFC0: .4byte 0x000006AC
.L0807CFC4: .4byte 0x00001AA8
.L0807CFC8: .4byte gUnk_080FDD84
.L0807CFCC: .4byte 0x000006A4
.L0807CFD0:
	adds r0, r4, #0
	bl func_08050E5C
	ldr r1, .L0807CFE8 @ =0x000006A4
	adds r0, r7, r1
	movs r1, #1
	str r1, [r0]
.L0807CFDE:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x14]
	b .L0807D054
	.align 2, 0
.L0807CFE8: .4byte 0x000006A4
.L0807CFEC:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #3
	bne .L0807D054
	ldr r2, [sp, #0xc]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0807D054
	movs r3, #1
	str r3, [sp, #0x90]
	ldr r1, .L0807D028 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L0807D054
	.align 2, 0
.L0807D028: .4byte 0x00000889
.L0807D02C:
	ldr r3, [sp, #0xc]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0807D054
	ldr r4, .L0807D050 @ =0x00002318
	adds r0, r7, r4
	ldr r4, [r0]
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	adds r0, r4, #0
	b .L0807D05E
	.align 2, 0
.L0807D050: .4byte 0x00002318
.L0807D054:
	adds r0, r7, #0
	bl func_080C96C4
	bl sub_0807C194
.L0807D05E:
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0807D070
func_0807D070: @ 0x0807D070
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r6, r3, #0
	ldr r0, .L0807D0AC @ =vtable_unk_080E7BF8
	str r0, [r4]
	ldr r0, .L0807D0B0 @ =0x0000231C
	bl __builtin_new
	mov r1, r8
	adds r2, r6, #0
	bl func_0807B0F0
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
.L0807D0AC: .4byte vtable_unk_080E7BF8
.L0807D0B0: .4byte 0x0000231C
.L0807D0B4:
	.byte 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x0D, 0x48, 0x20, 0x60, 0xA1, 0x68
	.byte 0x00, 0x29, 0x05, 0xD0, 0x08, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x56, 0xF0, 0x22, 0xFC
	.byte 0x61, 0x68, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x56, 0xF0
	.byte 0x19, 0xFC, 0x20, 0x1C, 0x29, 0x1C, 0x83, 0xF7, 0x81, 0xFB, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xF8, 0x7B, 0x0E, 0x08, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4, 0x85, 0xB0, 0x80, 0x46
	.byte 0x0F, 0x1C, 0x78, 0x68, 0xFE, 0xF7, 0xE0, 0xFE, 0x06, 0x1C, 0x01, 0x20, 0x40, 0x42, 0x86, 0x42
	.byte 0x32, 0xD0, 0x10, 0x20, 0x83, 0xF7, 0x5E, 0xFA, 0xBD, 0x68, 0x00, 0x24, 0xBC, 0x60, 0x01, 0xA9
	.byte 0x89, 0x46, 0x3A, 0x69, 0x01, 0x23, 0x12, 0x49, 0x01, 0x60, 0x01, 0x94, 0x45, 0x60, 0x82, 0x60
	.byte 0xC3, 0x60, 0x00, 0x90, 0x14, 0x20, 0x83, 0xF7, 0x4D, 0xFA, 0x00, 0x9D, 0x00, 0x94, 0x3A, 0x69
	.byte 0x03, 0x23, 0x0C, 0x49, 0x01, 0x60, 0x02, 0x94, 0x45, 0x60, 0x82, 0x60, 0xC3, 0x60, 0x06, 0x74
	.byte 0x49, 0x46, 0x03, 0x91, 0x04, 0x90, 0x01, 0x94, 0x41, 0x46, 0x08, 0x60, 0x00, 0x99, 0x00, 0x29
	.byte 0x0F, 0xD0, 0x08, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0x56, 0xF0, 0xD3, 0xFB, 0x08, 0xE0
	.byte 0xA4, 0x5D, 0x0E, 0x08, 0x64, 0x5C, 0x0E, 0x08, 0xB9, 0x68, 0x00, 0x20, 0xB8, 0x60, 0x40, 0x46
	.byte 0x01, 0x60, 0x40, 0x46, 0x05, 0xB0, 0x18, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xF0, 0xBC, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00

	thumb_func_start func_0807D194
func_0807D194: @ 0x0807D194
	push {r4, lr}
	adds r4, r0, #0
	bl func_080C7F58
	ldr r0, .L0807D1C0 @ =vtable_unk_080E7C14
	str r0, [r4, #4]
	ldr r1, .L0807D1C4 @ =0x000006A4
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r4, r2
	str r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L0807D1C0: .4byte vtable_unk_080E7C14
.L0807D1C4: .4byte 0x000006A4
.L0807D1C8:
	.byte 0x00, 0xB5, 0x03, 0x4A, 0x42, 0x60, 0x4B, 0xF0
	.byte 0xC7, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x14, 0x7C, 0x0E, 0x08

	thumb_func_start func_0807D1DC
func_0807D1DC: @ 0x0807D1DC
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, .L0807D214 @ =gUnk_080FDDD8
	lsls r1, r1, #2
	adds r1, r1, r4
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r2
	ldr r1, [r0]
	mov r0, sp
	bl __4ToolUi
	mov r0, sp
	bl GetDesc__C4Tool
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CABEC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L0807D214: .4byte gUnk_080FDDD8

	thumb_func_start func_0807D218
func_0807D218: @ 0x0807D218
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe8
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080C85A0
	ldr r0, [r7, #8]
	adds r4, r0, #0
	adds r4, #0x54
	ldrb r0, [r0, #0x11]
	lsls r0, r0, #0x1e
	lsrs r2, r0, #0x1e
	cmp r2, #1
	beq .L0807D32A
	cmp r2, #1
	bgt .L0807D24A
	cmp r2, #0
	beq .L0807D252
	b .L0807D506
.L0807D24A:
	cmp r2, #2
	bne .L0807D250
	b .L0807D40C
.L0807D250:
	b .L0807D506
.L0807D252:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D270
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0807D26A
	str r2, [r0]
.L0807D26A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D270:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D290
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D28A
	movs r0, #1
	str r0, [r2]
.L0807D28A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D290:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D2B0
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D2AA
	movs r0, #2
	str r0, [r2]
.L0807D2AA:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D2B0:
	movs r5, #0
	adds r0, r4, #0
	movs r1, #0
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D2CE
	adds r0, r4, #0
	movs r1, #0
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D2CE
	movs r5, #1
.L0807D2CE:
	adds r0, r4, #0
	movs r1, #1
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D2EA
	adds r0, r4, #0
	movs r1, #1
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D2EA
	adds r5, #1
.L0807D2EA:
	adds r0, r4, #0
	movs r1, #2
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D306
	adds r0, r4, #0
	movs r1, #2
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D306
	adds r5, #1
.L0807D306:
	cmp r5, #3
	beq .L0807D30C
	b .L0807D4E6
.L0807D30C:
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bls .L0807D31A
	b .L0807D4E6
.L0807D31A:
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	bne .L0807D326
	b .L0807D4E0
.L0807D326:
	str r5, [r0]
	b .L0807D4E0
.L0807D32A:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D34A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D344
	movs r0, #4
	str r0, [r2]
.L0807D344:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D34A:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D36A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D364
	movs r0, #5
	str r0, [r2]
.L0807D364:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D36A:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D38A
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D384
	movs r0, #6
	str r0, [r2]
.L0807D384:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D38A:
	movs r5, #0
	adds r0, r4, #0
	movs r1, #5
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D3A8
	adds r0, r4, #0
	movs r1, #5
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D3A8
	movs r5, #1
.L0807D3A8:
	adds r0, r4, #0
	movs r1, #6
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D3C4
	adds r0, r4, #0
	movs r1, #6
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D3C4
	adds r5, #1
.L0807D3C4:
	adds r0, r4, #0
	movs r1, #7
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D3E0
	adds r0, r4, #0
	movs r1, #7
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D3E0
	adds r5, #1
.L0807D3E0:
	cmp r5, #3
	bne .L0807D404
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D404
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D3FE
	movs r0, #7
	str r0, [r2]
.L0807D3FE:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D404:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	b .L0807D4EC
.L0807D40C:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D42C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D426
	movs r0, #8
	str r0, [r2]
.L0807D426:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D42C:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D44C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D446
	movs r0, #9
	str r0, [r2]
.L0807D446:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D44C:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D46C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D466
	movs r0, #0xa
	str r0, [r2]
.L0807D466:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D46C:
	movs r5, #0
	adds r0, r4, #0
	movs r1, #0xa
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D48A
	adds r0, r4, #0
	movs r1, #0xa
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D48A
	movs r5, #1
.L0807D48A:
	adds r0, r4, #0
	movs r1, #0xb
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D4A6
	adds r0, r4, #0
	movs r1, #0xb
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D4A6
	adds r5, #1
.L0807D4A6:
	adds r0, r4, #0
	movs r1, #0xc
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0807D4C2
	adds r0, r4, #0
	movs r1, #0xc
	bl GetAmountShipped__C11ShippingBini
	cmp r0, #0x63
	bls .L0807D4C2
	adds r5, #1
.L0807D4C2:
	cmp r5, #3
	bne .L0807D4E6
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D4E6
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D4E0
	movs r0, #0xb
	str r0, [r2]
.L0807D4E0:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D4E6:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
.L0807D4EC:
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0807D506
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0807D500
	movs r0, #0xc
	str r0, [r2]
.L0807D500:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0807D506:
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r1, #4
	mov sl, r1
	add r6, sp, #0x18
	ldr r1, .L0807D71C @ =gUnk_086678A0
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
	movs r6, #0
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	adds r1, #0x10
	str r1, [sp, #0xe4]
	cmp r6, r0
	bhs .L0807D666
	adds r2, r4, #0
	adds r2, r7, r2
	str r2, [sp, #0xd4]
	adds r3, r7, #0
	adds r3, #0x20
	str r3, [sp, #0xd8]
	add r4, sp, #0xc4
	mov sb, r4
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r5, r7, r0
	add r1, sp, #0x4c
	mov r8, r1
.L0807D58E:
	add r1, sp, #8
	mov r2, sl
	lsls r0, r2, #3
	strh r0, [r1]
	ldr r0, [r5]
	lsls r0, r0, #3
	ldr r1, .L0807D720 @ =gUnk_080FDDD8
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r2, sp, #0xc4
	str r0, [r2]
	str r1, [r2, #4]
	add r4, sp, #0xc0
	ldr r1, [r2]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetIconId__C4Tool
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	bl func_0805E860
	ldr r1, [sp, #0x4c]
	ldr r3, [r1]
	mov r4, r8
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x50]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xa0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0xe4]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x80
	ldr r0, [sp, #0xe4]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp, #0x88]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x90]
	str r0, [sp, #0x14]
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L0807D620
	lsls r0, r0, #4
	adds r0, #4
	ldr r4, [sp, #0xd8]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0807D61A
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0807D61A:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L0807D620:
	ldr r0, [r7, #0x1c]
	ldr r1, [r0, #0x18]
	mov r0, sl
	lsls r4, r0, #6
	adds r1, r1, r4
	adds r1, #0x32
	mov r2, sb
	ldr r0, [r2, #4]
	movs r3, #0x20
	str r3, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	movs r1, #0
	str r1, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r1, #0x20
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	movs r0, #2
	add sl, r0
	adds r5, #4
	adds r6, #1
	ldr r1, [sp, #0xd4]
	ldr r0, [r1]
	cmp r6, r0
	blo .L0807D58E
.L0807D666:
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075C88
	ldr r0, [r7, #0x1c]
	mov r1, sl
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r1, [r7, #0x10]
	adds r0, r7, #0
	bl func_0807D1DC
	adds r0, r7, #0
	bl func_08008918
	movs r1, #0x3f
	ldr r3, [sp, #0xe4]
	strh r1, [r3]
	adds r0, #0x50
	strh r1, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L0807D724 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	ldr r0, [sp, #0xe4]
	str r4, [r0]
	ldr r1, .L0807D728 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r3, [sp, #0xe4]
	ldr r1, [r3]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r4, #0
	str r4, [sp, #0xdc]
.L0807D6E0:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r0, [sp, #0xe4]
	ldr r3, [r0]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0807D6FC
	b .L0807DD08
.L0807D6FC:
	ldr r1, [sp, #0xdc]
	cmp r1, #0
	beq .L0807D704
	b .L0807DD14
.L0807D704:
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #4
	bls .L0807D712
	b .L0807DD08
.L0807D712:
	lsls r0, r0, #2
	ldr r1, .L0807D72C @ =.L0807D730
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0807D71C: .4byte gUnk_086678A0
.L0807D720: .4byte gUnk_080FDDD8
.L0807D724: .4byte vtable_unk_080E5B80
.L0807D728: .4byte 0x00000889
.L0807D72C: .4byte .L0807D730
.L0807D730: @ jump table
	.4byte .L0807D744 @ case 0
	.4byte .L0807DAA0 @ case 1
	.4byte .L0807DAD4 @ case 2
	.4byte .L0807DAFC @ case 3
	.4byte .L0807DCCC @ case 4
.L0807D744:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L0807D752
	adds r0, r7, #0
	bl func_0807D1DC
.L0807D752:
	ldr r3, .L0807D7B4 @ =0x000006A1
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0807D75E
	b .L0807DA30
.L0807D75E:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r4, #0xaa
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L0807D7B8 @ =gUnk_080FDDD8
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r4, sp, #0xc4
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, [r4, #4]
	str r0, [sp, #0xe0]
	ldr r0, [r7, #8]
	ldr r1, .L0807D7BC @ =0x00001C38
	adds r0, r0, r1
	ldr r1, [r4]
	bl GetAvailableSpaceForTool__C8RucksackUi
	adds r5, r0, #0
	ldr r0, [r7, #8]
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r4]
	bl GetAvailableSpaceFor__C9ToolChestUi
	adds r5, r5, r0
	ldr r0, [r7, #8]
	ldr r6, .L0807D7C0 @ =0x00001C34
	adds r0, r0, r6
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	mov sb, r4
	cmp r0, #0
	beq .L0807D7C4
	adds r5, #0x63
	b .L0807D7F6
	.align 2, 0
.L0807D7B4: .4byte 0x000006A1
.L0807D7B8: .4byte gUnk_080FDDD8
.L0807D7BC: .4byte 0x00001C38
.L0807D7C0: .4byte 0x00001C34
.L0807D7C4:
	ldr r0, [r7, #8]
	ldr r3, .L0807D898 @ =0x00001C34
	adds r0, r0, r3
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0xcc
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	mov r4, sb
	ldr r1, [r4]
	cmp r0, r1
	bne .L0807D7E4
	movs r2, #1
.L0807D7E4:
	cmp r2, #0
	beq .L0807D7F6
	ldr r0, [r7, #8]
	adds r0, r0, r6
	bl GetAmount__C9ToolStack
	adds r1, r5, #0
	adds r1, #0x63
	subs r5, r1, r0
.L0807D7F6:
	ldr r0, [r7, #8]
	ldr r1, .L0807D89C @ =0x00001C38
	adds r0, r0, r1
	mov r2, sb
	ldr r1, [r2]
	bl GetAmountOfTool__C8RucksackUi
	mov r8, r0
	movs r3, #0
	mov sl, r3
	ldr r0, [r7, #8]
	movs r4, #0xe0
	lsls r4, r4, #2
	adds r0, r0, r4
	add r1, sp, #0xc4
	ldr r1, [r1]
	bl GetAmountOf__C9ToolChestUi
	adds r4, r0, #0
	ldr r0, [r7, #8]
	ldr r6, .L0807D898 @ =0x00001C34
	adds r0, r0, r6
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0807D85A
	ldr r0, [r7, #8]
	adds r0, r0, r6
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xcd
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	mov r3, sb
	ldr r1, [r3]
	cmp r0, r1
	bne .L0807D84C
	movs r2, #1
.L0807D84C:
	cmp r2, #0
	beq .L0807D85A
	ldr r0, [r7, #8]
	adds r0, r0, r6
	bl GetAmount__C9ToolStack
	mov sl, r0
.L0807D85A:
	mov r0, r8
	add r0, sl
	adds r0, r0, r4
	add r1, sp, #0xa4
	movs r2, #7
	bl func_0804EC84
	ldr r0, [r7, #8]
	ldr r4, .L0807D8A0 @ =0x00001AA8
	adds r0, r0, r4
	ldr r1, [r0]
	movs r2, #0
	mov r3, sb
	ldr r0, [r3, #4]
	cmp r1, r0
	blo .L0807D87C
	movs r2, #1
.L0807D87C:
	cmp r2, #0
	bne .L0807D882
	b .L0807DA0C
.L0807D882:
	cmp r5, #0
	bne .L0807D8A8
	ldr r1, .L0807D8A4 @ =gUnk_080FDE40
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r7, r4
	movs r0, #2
	b .L0807DA84
	.align 2, 0
.L0807D898: .4byte 0x00001C34
.L0807D89C: .4byte 0x00001C38
.L0807D8A0: .4byte 0x00001AA8
.L0807D8A4: .4byte gUnk_080FDE40
.L0807D8A8:
	ldr r1, .L0807D9F8 @ =0x00000684
	adds r0, r7, r1
	ldr r1, [sp, #0xe0]
	adds r2, r5, #0
	movs r3, #5
	bl func_080CA8B4
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r0, #3
	str r0, [r1]
	mov r5, sp
	adds r5, #0xce
	mov r3, sb
	ldr r1, [r3]
	adds r0, r5, #0
	bl __4ToolUi
	ldr r0, .L0807D9FC @ =0x000006A4
	adds r4, r7, r0
	movs r1, #0
	mov sl, r1
	mov r2, sl
	strb r2, [r4]
	adds r0, r5, #0
	bl GetName__C4Tool
	mov sb, r0
	mov r5, sb
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807D916
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807D904
	adds r5, r6, #0
.L0807D904:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r1, r8
	adds r0, r1, r5
	mov r2, sl
	strb r2, [r0]
.L0807D916:
	ldr r3, .L0807DA00 @ =gUnk_080FDE70
	mov sb, r3
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807D94C
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807D93A
	adds r5, r6, #0
.L0807D93A:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807D94C:
	ldr r0, .L0807DA04 @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r4, #0
	bl strlen
	adds r3, r4, r0
	mov r8, r3
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807D984
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807D972
	adds r5, r6, #0
.L0807D972:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r0, r8
	adds r1, r0, r5
	movs r0, #0
	strb r0, [r1]
.L0807D984:
	adds r0, r4, #0
	bl strlen
	adds r1, r4, r0
	mov r8, r1
	movs r1, #0x63
	subs r6, r1, r0
	cmp r6, #0
	beq .L0807D9B6
	add r0, sp, #0xa4
	bl strlen
	adds r5, r0, #0
	cmp r5, r6
	bls .L0807D9A4
	adds r5, r6, #0
.L0807D9A4:
	mov r0, r8
	add r1, sp, #0xa4
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0807D9B6:
	ldr r0, .L0807DA08 @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r4, #0
	bl strlen
	adds r6, r4, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L0807D9EA
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0807D9DA
	adds r4, r5, #0
.L0807D9DA:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0807D9EA:
	ldr r3, .L0807D9FC @ =0x000006A4
	adds r1, r7, r3
	adds r0, r7, #0
	bl func_080CABEC
	b .L0807DA86
	.align 2, 0
.L0807D9F8: .4byte 0x00000684
.L0807D9FC: .4byte 0x000006A4
.L0807DA00: .4byte gUnk_080FDE70
.L0807DA04: .4byte gUnk_08117828
.L0807DA08: .4byte gUnk_08117814
.L0807DA0C:
	ldr r1, .L0807DA2C @ =gUnk_080FDE78
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0x46
	bl func_08050E50
	movs r0, #0xe1
	lsls r0, r0, #3
	adds r1, r7, r0
	movs r0, #2
	b .L0807DA84
	.align 2, 0
.L0807DA2C: .4byte gUnk_080FDE78
.L0807DA30:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0807DA86
	ldr r1, .L0807DA60 @ =0x0000070C
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L0807DA68
	ldr r1, .L0807DA64 @ =gUnk_080FDEAC
	adds r0, r7, #0
	bl func_080CABA0
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r1, #0x43
	bl func_08050E50
	b .L0807DA7C
	.align 2, 0
.L0807DA60: .4byte 0x0000070C
.L0807DA64: .4byte gUnk_080FDEAC
.L0807DA68:
	ldr r1, .L0807DA9C @ =gUnk_080FDEC4
	adds r0, r7, #0
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0x46
	bl func_08050E50
.L0807DA7C:
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r7, r4
	movs r0, #4
.L0807DA84:
	str r0, [r1]
.L0807DA86:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_080C9020
	b .L0807DD08
	.align 2, 0
.L0807DA9C: .4byte gUnk_080FDEC4
.L0807DAA0:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807DAAE
	b .L0807DD08
.L0807DAAE:
	ldr r1, .L0807DAD0 @ =gUnk_080FDEDC
	adds r0, r7, #0
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0x43
	bl func_08050E50
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r7, r4
	movs r0, #2
	str r0, [r1]
	b .L0807DD08
	.align 2, 0
.L0807DAD0: .4byte gUnk_080FDEDC
.L0807DAD4:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L0807DAE2
	b .L0807DD08
.L0807DAE2:
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r7, r2
	bl func_08050E5C
	movs r3, #0xe1
	lsls r3, r3, #3
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]
	subs r0, #1
	str r0, [r7, #0x14]
	b .L0807DD08
.L0807DAFC:
	adds r0, r7, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	bne .L0807DB0E
	b .L0807DC88
.L0807DB0E:
	ldr r4, .L0807DB98 @ =0x00000684
	adds r0, r7, r4
	ldr r1, [r0, #0x14]
	mov r8, r1
	movs r6, #1
	bl func_080CAAF4
	ldr r1, [r7, #0x10]
	adds r0, r7, #0
	bl func_0807D1DC
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L0807DB9C @ =gUnk_080FDDD8
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r4, sp, #0xc4
	str r0, [r4]
	str r1, [r4, #4]
	ldr r0, [r7, #8]
	ldr r3, .L0807DBA0 @ =0x00001AA8
	adds r0, r0, r3
	ldr r1, [r4, #4]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [r7, #8]
	ldr r5, .L0807DBA4 @ =0x00001C34
	adds r0, r0, r5
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	mov sb, r4
	cmp r0, #0
	beq .L0807DBA8
	ldr r5, [r7, #8]
	ldr r3, .L0807DBA4 @ =0x00001C34
	adds r5, r5, r3
	add r6, sp, #0xa4
	mov r4, sp
	adds r4, #0xcf
	mov r0, sb
	ldr r1, [r0]
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
	b .L0807DC58
	.align 2, 0
.L0807DB98: .4byte 0x00000684
.L0807DB9C: .4byte gUnk_080FDDD8
.L0807DBA0: .4byte 0x00001AA8
.L0807DBA4: .4byte 0x00001C34
.L0807DBA8:
	ldr r0, [r7, #8]
	ldr r1, .L0807DBF4 @ =0x00001C34
	adds r0, r0, r1
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0xd0
	strb r1, [r0]
	bl GetId__C4Tool
	movs r2, #0
	mov r3, sb
	ldr r1, [r3]
	cmp r0, r1
	bne .L0807DBC8
	movs r2, #1
.L0807DBC8:
	cmp r2, #0
	beq .L0807DC06
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetAmount__C9ToolStack
	movs r1, #0x63
	subs r4, r1, r0
	cmp r8, r4
	bls .L0807DBF8
	ldr r0, [r7, #8]
	adds r0, r0, r5
	adds r1, r4, #0
	bl AddAmount__9ToolStackUi
	mov r0, r8
	subs r0, r0, r4
	mov r8, r0
	cmp r4, #0
	beq .L0807DC06
	movs r6, #0
	b .L0807DC06
	.align 2, 0
.L0807DBF4: .4byte 0x00001C34
.L0807DBF8:
	ldr r0, [r7, #8]
	adds r0, r0, r5
	mov r1, r8
	bl AddAmount__9ToolStackUi
	movs r1, #0
	mov r8, r1
.L0807DC06:
	mov r2, r8
	cmp r2, #0
	beq .L0807DC58
	ldr r0, [r7, #8]
	ldr r3, .L0807DC40 @ =0x00001C38
	adds r0, r0, r3
	mov r4, sb
	ldr r1, [r4]
	bl AddAmountOfTool__8RucksackUiUi
	adds r2, r0, #0
	cmp r8, r2
	bls .L0807DC22
	movs r6, #0
.L0807DC22:
	cmp r2, #0
	beq .L0807DC58
	ldr r0, [r7, #8]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r3, sb
	ldr r1, [r3]
	bl AddAmountOf__9ToolChestUiUi
	cmp r6, #0
	beq .L0807DC48
	ldr r1, .L0807DC44 @ =gUnk_080FDEF8
	b .L0807DC4A
	.align 2, 0
.L0807DC40: .4byte 0x00001C38
.L0807DC44: .4byte gUnk_080FDEF8
.L0807DC48:
	ldr r1, .L0807DC54 @ =gUnk_080FDF50
.L0807DC4A:
	adds r0, r7, #0
	bl func_080CABA0
	b .L0807DC60
	.align 2, 0
.L0807DC54: .4byte gUnk_080FDF50
.L0807DC58:
	ldr r1, .L0807DC80 @ =gUnk_080FDEAC
	adds r0, r7, #0
	bl func_080CABA0
.L0807DC60:
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0x44
	bl func_08050E50
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r1, #1
	str r1, [r0]
	ldr r2, .L0807DC84 @ =0x0000070C
	adds r0, r7, r2
	strb r1, [r0]
	b .L0807DD08
	.align 2, 0
.L0807DC80: .4byte gUnk_080FDEAC
.L0807DC84: .4byte 0x0000070C
.L0807DC88:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0807DCB4
	ldr r3, .L0807DCB0 @ =0x00000684
	adds r0, r7, r3
	bl func_080CAAF4
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r7, r1
	str r4, [r0]
	ldr r1, [r7, #0x10]
	adds r0, r7, #0
	bl func_0807D1DC
	b .L0807DD08
	.align 2, 0
.L0807DCB0: .4byte 0x00000684
.L0807DCB4:
	ldr r2, .L0807DCC8 @ =0x00000684
	adds r1, r7, r2
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq .L0807DD08
	adds r0, r1, #0
	bl func_080CA98C
	b .L0807DD08
	.align 2, 0
.L0807DCC8: .4byte 0x00000684
.L0807DCCC:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L0807DD08
	ldr r4, [sp, #0xe4]
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0807DD08
	movs r0, #1
	str r0, [sp, #0xdc]
	ldr r1, .L0807DD10 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L0807DD08:
	adds r0, r7, #0
	bl func_080C96C4
	b .L0807D6E0
	.align 2, 0
.L0807DD10: .4byte 0x00000889
.L0807DD14:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	ldr r0, .L0807DD34 @ =vtable_unk_080E5A28
	str r0, [sp, #0x18]
	add sp, #0xe8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0807DD34: .4byte vtable_unk_080E5A28

	thumb_func_start func_0807DD38
func_0807DD38: @ 0x0807DD38
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L0807DD64 @ =vtable_unk_080E7C30
	str r0, [r4]
	movs r0, #0xe2
	lsls r0, r0, #3
	bl __builtin_new
	adds r1, r5, #0
	bl func_0807D194
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
.L0807DD64: .4byte vtable_unk_080E7C30

