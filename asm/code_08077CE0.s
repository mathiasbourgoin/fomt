	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

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

