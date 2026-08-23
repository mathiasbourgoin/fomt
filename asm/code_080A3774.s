	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_080A37A8
func_080A37A8: @ 0x080A37A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov sl, r0
	adds r5, r1, #0
	ldr r0, [r5, #8]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUnkEnt__C4Coop
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne .L080A37E4
	ldr r0, [r5, #4]
	movs r2, #0
	str r2, [r5, #4]
	str r0, [sp]
	mov r1, sp
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r2, [r1]
	mov r2, sl
	str r0, [r2]
	b .L080A380A
.L080A37E4:
	ldr r0, [r5, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetChicken__4CoopUi
	mov r8, r0
	cmp r0, #0
	bne .L080A381E
	ldr r1, [r5, #4]
	str r0, [r5, #4]
	str r1, [sp]
	mov r0, sp
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	mov r2, r8
	str r2, [r0]
	mov r0, sl
	str r1, [r0]
.L080A380A:
	ldr r1, [sp]
	cmp r1, #0
	beq .L080A38EC
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	b .L080A38EC
.L080A381E:
	add r7, sp, #4
	adds r0, r7, #0
	bl func_080B3C90
	ldr r0, [r5, #8]
	movs r3, #0xc8
	str r3, [sp, #0x30]
	ldrb r0, [r0, #0x10]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #0x34]
	add r2, sp, #0x34
	add r0, sp, #0x30
	cmp r3, r1
	bls .L080A3846
	adds r0, r2, #0
.L080A3846:
	ldr r0, [r0]
	movs r1, #0
	mov sb, r1
	strb r0, [r7, #0x10]
	mov r0, r8
	bl GetName__C6Animal
	adds r6, r0, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xc
	bls .L080A3862
	movs r4, #0xc
.L080A3862:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	mov r2, sb
	strb r2, [r0]
	mov r0, r8
	bl GetAffection__C6Animal
	strb r0, [r7, #0x11]
	add r6, sp, #0x18
	adds r0, r6, #0
	adds r1, r7, #0
	bl func_080BC898
	mov r0, sp
	adds r1, r6, #0
	bl func_080BC8FC
	ldr r1, [sp]
	cmp r1, #0
	beq .L080A389E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A389E:
	adds r0, r6, #0
	bl func_080BC8F0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A38B0
	mov r0, r8
	bl SetFestivalWinner__6Animal
.L080A38B0:
	ldr r4, [r5, #4]
	adds r0, r6, #0
	bl func_080BC8F0
	strb r0, [r4, #0xc]
	ldr r1, [r5, #4]
	mov r0, sb
	str r0, [r5, #4]
	str r1, [sp]
	mov r2, sp
	str r2, [sp, #0x38]
	str r1, [sp, #0x3c]
	adds r0, r2, #0
	mov r2, sb
	str r2, [r0]
	mov r0, sl
	str r1, [r0]
	ldr r1, [sp]
	cmp r1, #0
	beq .L080A38E4
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A38E4:
	adds r0, r6, #0
	movs r1, #2
	bl func_080BC8C0
.L080A38EC:
	mov r0, sl
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A3900
func_080A3900: @ 0x080A3900
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r5, r1, #0
	add r1, sp, #0xc
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0x12
	strb r0, [r1, #4]
	ldr r0, [r5, #0xc]
	subs r0, #0x24
	adds r4, r1, #0
	cmp r0, #6
	bhi .L080A3968
	lsls r0, r0, #2
	ldr r1, .L080A392C @ =.L080A3930
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A392C: .4byte .L080A3930
.L080A3930: @ jump table
	.4byte .L080A394C @ case 0
	.4byte .L080A3950 @ case 1
	.4byte .L080A3954 @ case 2
	.4byte .L080A3958 @ case 3
	.4byte .L080A395C @ case 4
	.4byte .L080A3960 @ case 5
	.4byte .L080A3964 @ case 6
.L080A394C:
	movs r0, #0
	b .L080A3966
.L080A3950:
	movs r0, #2
	b .L080A3966
.L080A3954:
	movs r0, #3
	b .L080A3966
.L080A3958:
	movs r0, #4
	b .L080A3966
.L080A395C:
	movs r0, #5
	b .L080A3966
.L080A3960:
	movs r0, #6
	b .L080A3966
.L080A3964:
	movs r0, #1
.L080A3966:
	str r0, [sp, #0xc]
.L080A3968:
	ldr r0, [r5, #8]
	ldr r1, .L080A39F8 @ =0x00001CD4
	adds r0, r0, r1
	ldr r1, [r5, #0xc]
	bl func_080A0930
	adds r6, r0, #0
	movs r1, #2
	bl GetMinigameExp__C13HarvestSpriteQ213HarvestSprite4Task
	movs r1, #0
	mov r8, r1
	strb r0, [r4, #4]
	mov r0, sp
	adds r1, r4, #0
	bl func_080B3BE4
	add r7, sp, #8
	adds r0, r7, #0
	mov r1, sp
	bl func_080B3C3C
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080A39A6
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A39A6:
	mov r0, sp
	bl func_080B3C78
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	movs r1, #2
	adds r2, r4, #0
	bl SetPlayedMinigame__13HarvestSpriteQ213HarvestSprite4Taskb
	ldr r0, [r5, #4]
	strb r4, [r0, #0xc]
	ldr r4, [r5, #8]
	mov r0, sp
	bl func_080B3C84
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_08011498
	ldr r0, [r5, #4]
	mov r1, r8
	str r1, [r5, #4]
	str r7, [sp, #0x14]
	str r0, [sp, #0x18]
	str r1, [sp, #8]
	mov r1, sb
	str r0, [r1]
	mov r0, sp
	movs r1, #2
	bl func_080B3C0C
	mov r0, sb
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A39F8: .4byte 0x00001CD4

	thumb_func_start func_080A39FC
func_080A39FC: @ 0x080A39FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r5, r1, #0
	add r1, sp, #0xc
	movs r0, #4
	str r0, [sp, #0xc]
	movs r0, #0x12
	strb r0, [r1, #4]
	ldr r0, [r5, #0xc]
	subs r0, #0x24
	adds r4, r1, #0
	cmp r0, #6
	bhi .L080A3A64
	lsls r0, r0, #2
	ldr r1, .L080A3A28 @ =.L080A3A2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A3A28: .4byte .L080A3A2C
.L080A3A2C: @ jump table
	.4byte .L080A3A48 @ case 0
	.4byte .L080A3A4C @ case 1
	.4byte .L080A3A50 @ case 2
	.4byte .L080A3A54 @ case 3
	.4byte .L080A3A58 @ case 4
	.4byte .L080A3A5C @ case 5
	.4byte .L080A3A60 @ case 6
.L080A3A48:
	movs r0, #0
	b .L080A3A62
.L080A3A4C:
	movs r0, #2
	b .L080A3A62
.L080A3A50:
	movs r0, #3
	b .L080A3A62
.L080A3A54:
	movs r0, #4
	b .L080A3A62
.L080A3A58:
	movs r0, #5
	b .L080A3A62
.L080A3A5C:
	movs r0, #6
	b .L080A3A62
.L080A3A60:
	movs r0, #1
.L080A3A62:
	str r0, [sp, #0xc]
.L080A3A64:
	ldr r0, [r5, #8]
	ldr r1, .L080A3AF4 @ =0x00001CD4
	adds r0, r0, r1
	ldr r1, [r5, #0xc]
	bl func_080A0930
	adds r6, r0, #0
	movs r1, #0
	bl GetMinigameExp__C13HarvestSpriteQ213HarvestSprite4Task
	movs r1, #0
	mov r8, r1
	strb r0, [r4, #4]
	mov r0, sp
	adds r1, r4, #0
	bl func_080C0D1C
	add r7, sp, #8
	adds r0, r7, #0
	mov r1, sp
	bl func_080C0D90
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080A3AA2
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3AA2:
	mov r0, sp
	bl func_080C0D74
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl SetPlayedMinigame__13HarvestSpriteQ213HarvestSprite4Taskb
	ldr r0, [r5, #4]
	strb r4, [r0, #0xc]
	ldr r4, [r5, #8]
	mov r0, sp
	bl func_080C0D80
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_08011464
	ldr r0, [r5, #4]
	mov r1, r8
	str r1, [r5, #4]
	str r7, [sp, #0x14]
	str r0, [sp, #0x18]
	str r1, [sp, #8]
	mov r1, sb
	str r0, [r1]
	mov r0, sp
	movs r1, #2
	bl func_080C0D44
	mov r0, sb
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A3AF4: .4byte 0x00001CD4

	thumb_func_start func_080A3AF8
func_080A3AF8: @ 0x080A3AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r5, r1, #0
	add r1, sp, #0xc
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #0xf
	strb r0, [r1, #4]
	ldr r0, [r5, #0xc]
	subs r0, #0x24
	adds r4, r1, #0
	cmp r0, #6
	bhi .L080A3B60
	lsls r0, r0, #2
	ldr r1, .L080A3B24 @ =.L080A3B28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A3B24: .4byte .L080A3B28
.L080A3B28: @ jump table
	.4byte .L080A3B44 @ case 0
	.4byte .L080A3B48 @ case 1
	.4byte .L080A3B4C @ case 2
	.4byte .L080A3B50 @ case 3
	.4byte .L080A3B54 @ case 4
	.4byte .L080A3B58 @ case 5
	.4byte .L080A3B5C @ case 6
.L080A3B44:
	movs r0, #0
	b .L080A3B5E
.L080A3B48:
	movs r0, #2
	b .L080A3B5E
.L080A3B4C:
	movs r0, #3
	b .L080A3B5E
.L080A3B50:
	movs r0, #4
	b .L080A3B5E
.L080A3B54:
	movs r0, #5
	b .L080A3B5E
.L080A3B58:
	movs r0, #6
	b .L080A3B5E
.L080A3B5C:
	movs r0, #1
.L080A3B5E:
	str r0, [sp, #0xc]
.L080A3B60:
	ldr r0, [r5, #8]
	ldr r1, .L080A3BF0 @ =0x00001CD4
	adds r0, r0, r1
	ldr r1, [r5, #0xc]
	bl func_080A0930
	adds r6, r0, #0
	movs r1, #1
	bl GetMinigameExp__C13HarvestSpriteQ213HarvestSprite4Task
	movs r1, #0
	mov r8, r1
	strb r0, [r4, #4]
	mov r0, sp
	adds r1, r4, #0
	bl func_080C7EA8
	add r7, sp, #8
	adds r0, r7, #0
	mov r1, sp
	bl func_080C7F1C
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080A3B9E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3B9E:
	mov r0, sp
	bl func_080C7F00
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	movs r1, #1
	adds r2, r4, #0
	bl SetPlayedMinigame__13HarvestSpriteQ213HarvestSprite4Taskb
	ldr r0, [r5, #4]
	strb r4, [r0, #0xc]
	ldr r4, [r5, #8]
	mov r0, sp
	bl func_080C7F0C
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080114C8
	ldr r0, [r5, #4]
	mov r1, r8
	str r1, [r5, #4]
	str r7, [sp, #0x14]
	str r0, [sp, #0x18]
	str r1, [sp, #8]
	mov r1, sb
	str r0, [r1]
	mov r0, sp
	movs r1, #2
	bl func_080C7ED0
	mov r0, sb
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A3BF0: .4byte 0x00001CD4

	thumb_func_start func_080A3BF4
func_080A3BF4: @ 0x080A3BF4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080A3C20 @ =vtable_unk_080E8288
	str r0, [r4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L080A3C10
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3C10:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080A3C20: .4byte vtable_unk_080E8288
.L080A3C24:
	.byte 0x30, 0xB5, 0x05, 0x4C, 0x04, 0x60, 0x0D, 0x68, 0x00, 0x24, 0x0C, 0x60
	.byte 0x45, 0x60, 0x82, 0x60, 0xC3, 0x60, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x88, 0x82, 0x0E, 0x08

	thumb_func_start func_080A3C40
func_080A3C40: @ 0x080A3C40
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080A3C6C @ =vtable_unk_080E8298
	str r0, [r4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L080A3C5C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3C5C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080A3C6C: .4byte vtable_unk_080E8298
.L080A3C70:
	.byte 0x30, 0xB5, 0x05, 0x4C, 0x04, 0x60, 0x0D, 0x68, 0x00, 0x24, 0x0C, 0x60, 0x45, 0x60, 0x82, 0x60
	.byte 0xC3, 0x60, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x98, 0x82, 0x0E, 0x08

	thumb_func_start func_080A3C8C
func_080A3C8C: @ 0x080A3C8C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080A3CB8 @ =vtable_unk_080E82A8
	str r0, [r4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L080A3CA8
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3CA8:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080A3CB8: .4byte vtable_unk_080E82A8
.L080A3CBC:
	.byte 0x30, 0xB5, 0x05, 0x4C
	.byte 0x04, 0x60, 0x0D, 0x68, 0x00, 0x24, 0x0C, 0x60, 0x45, 0x60, 0x82, 0x60, 0xC3, 0x60, 0x30, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0xA8, 0x82, 0x0E, 0x08, 0x10, 0xB5, 0x05, 0x4B, 0x03, 0x60, 0x0C, 0x68
	.byte 0x00, 0x23, 0x0B, 0x60, 0x44, 0x60, 0x82, 0x60, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0xB8, 0x82, 0x0E, 0x08

	thumb_func_start func_080A3CF4
func_080A3CF4: @ 0x080A3CF4
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	movs r1, #0
	ldr r0, [r5, #0xc]
	cmp r0, #5
	bhi .L080A3D5C
	lsls r0, r0, #2
	ldr r1, .L080A3D10 @ =.L080A3D14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A3D10: .4byte .L080A3D14
.L080A3D14: @ jump table
	.4byte .L080A3D2C @ case 0
	.4byte .L080A3D34 @ case 1
	.4byte .L080A3D3C @ case 2
	.4byte .L080A3D44 @ case 3
	.4byte .L080A3D4C @ case 4
	.4byte .L080A3D54 @ case 5
.L080A3D2C:
	ldr r1, .L080A3D30 @ =gUnk_08104E0C
	b .L080A3D64
	.align 2, 0
.L080A3D30: .4byte gUnk_08104E0C
.L080A3D34:
	ldr r1, .L080A3D38 @ =gUnk_08104E14
	b .L080A3D64
	.align 2, 0
.L080A3D38: .4byte gUnk_08104E14
.L080A3D3C:
	ldr r1, .L080A3D40 @ =gUnk_08104E1C
	b .L080A3D64
	.align 2, 0
.L080A3D40: .4byte gUnk_08104E1C
.L080A3D44:
	ldr r1, .L080A3D48 @ =gUnk_08104E24
	b .L080A3D64
	.align 2, 0
.L080A3D48: .4byte gUnk_08104E24
.L080A3D4C:
	ldr r1, .L080A3D50 @ =gUnk_08104E30
	b .L080A3D64
	.align 2, 0
.L080A3D50: .4byte gUnk_08104E30
.L080A3D54:
	ldr r1, .L080A3D58 @ =gUnk_08104E38
	b .L080A3D64
	.align 2, 0
.L080A3D58: .4byte gUnk_08104E38
.L080A3D5C:
	ldr r0, [r5, #4]
	str r1, [r5, #4]
	str r0, [r6]
	b .L080A3E66
.L080A3D64:
	mov r0, sp
	movs r2, #0
	bl func_08007078
	add r0, sp, #8
	mov r1, sp
	bl func_080070D4
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080A3D86
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3D86:
	ldr r0, [r5, #0xc]
	cmp r0, #5
	bhi .L080A3E44
	lsls r0, r0, #2
	ldr r1, .L080A3D98 @ =.L080A3D9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A3D98: .4byte .L080A3D9C
.L080A3D9C: @ jump table
	.4byte .L080A3DB4 @ case 0
	.4byte .L080A3DBE @ case 1
	.4byte .L080A3DCE @ case 2
	.4byte .L080A3DDE @ case 3
	.4byte .L080A3E02 @ case 4
	.4byte .L080A3E28 @ case 5
.L080A3DB4:
	ldr r0, [r5, #8]
	adds r0, #0x14
	bl GetHorse__4Farm
	b .L080A3DEC
.L080A3DBE:
	ldr r0, [r5, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0x10]
	bl GetCow__4BarnUi
	b .L080A3DEC
.L080A3DCE:
	ldr r0, [r5, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0x10]
	bl GetSheep__4BarnUi
	b .L080A3DEC
.L080A3DDE:
	ldr r0, [r5, #8]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0x10]
	bl GetChicken__4CoopUi
.L080A3DEC:
	adds r4, r0, #0
	cmp r4, #0
	beq .L080A3E56
	mov r0, sp
	bl func_08007110
	adds r1, r0, #0
	adds r0, r4, #0
	bl SetName__6AnimalPCc
	b .L080A3E56
.L080A3E02:
	ldr r0, [r5, #8]
	ldr r1, .L080A3E24 @ =0x00001CD4
	adds r0, r0, r1
	bl func_080A0A04
	adds r4, r0, #0
	cmp r4, #0
	beq .L080A3E56
	mov r0, sp
	bl func_08007110
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0809EB20
	b .L080A3E56
	.align 2, 0
.L080A3E24: .4byte 0x00001CD4
.L080A3E28:
	ldr r4, [r5, #8]
	ldr r0, .L080A3E40 @ =0x00001BD8
	adds r4, r4, r0
	mov r0, sp
	bl func_08007110
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0800E9A8
	b .L080A3E56
	.align 2, 0
.L080A3E40: .4byte 0x00001BD8
.L080A3E44:
	ldr r1, [r5, #4]
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r6]
	mov r0, sp
	movs r1, #2
	bl func_080070A4
	b .L080A3E66
.L080A3E56:
	ldr r1, [r5, #4]
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r6]
	mov r0, sp
	movs r1, #2
	bl func_080070A4
.L080A3E66:
	adds r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
.L080A3E70:
	.byte 0x70, 0xB5, 0x04, 0x9E, 0x05, 0x4C, 0x04, 0x60, 0x0D, 0x68, 0x00, 0x24, 0x0C, 0x60, 0x45, 0x60
	.byte 0x82, 0x60, 0xC3, 0x60, 0x06, 0x74, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xC8, 0x82, 0x0E, 0x08

	thumb_func_start func_080A3E90
func_080A3E90: @ 0x080A3E90
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	bl func_080A45A8
	str r0, [sp, #4]
	cmp r0, #7
	bne .L080A3EAA
	movs r0, #0
	str r0, [sp]
	b .L080A3F2E
.L080A3EAA:
	movs r1, #3
	ldrh r0, [r4]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #3
	movs r3, #0xfa
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080A3EC2
	movs r1, #0
	b .L080A3EE4
.L080A3EC2:
	lsrs r0, r2, #3
	movs r3, #0xf7
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi .L080A3ED4
	movs r1, #1
	b .L080A3EE4
.L080A3ED4:
	lsrs r0, r2, #3
	movs r2, #0xef
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080A3EE4
	movs r1, #2
.L080A3EE4:
	ldr r2, .L080A3F40 @ =gUnk_08104E74
	lsls r1, r1, #1
	ldr r0, [sp, #4]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x10
	ldr r2, .L080A3F44 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	movs r4, #0
	bl rand
	asrs r0, r0, #8
	ldr r1, [sp, #4]
	cmp r1, #6
	bgt .L080A3F1E
	cmp r1, #0
	blt .L080A3F1E
	movs r1, #6
	bl __modsi3
	adds r4, r0, #5
.L080A3F1E:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #0x11
	ldr r2, .L080A3F48 @ =0x0000FFFF
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
.L080A3F2E:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r5]
	str r1, [r5, #4]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r2}
	bx r2
	.align 2, 0
.L080A3F40: .4byte gUnk_08104E74
.L080A3F44: .4byte 0xFFFF0000
.L080A3F48: .4byte 0x0000FFFF

	thumb_func_start func_080A3F4C
func_080A3F4C: @ 0x080A3F4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	str r0, [sp, #0x90]
	str r1, [sp, #0x94]
	mov sb, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x98]
	movs r7, #0
	mov r5, sp
	ldr r0, .L080A3FD8 @ =gUnk_08104E4C
	str r0, [sp]
	movs r4, #0
	strh r7, [r5, #4]
	add r0, sp, #8
	bl __12RucksackItem
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xd]
	movs r0, #0x3b
	str r0, [sp, #0x10]
	strb r4, [r5, #0x14]
	movs r6, #0
	bl rand
	asrs r0, r0, #8
	movs r1, #0x64
	bl __modsi3
	movs r4, #0
	movs r3, #0
	ldr r1, .L080A3FDC @ =gUnk_08104EAC
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	ldr r2, [sp, #0x94]
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r1, r0, r1
.L080A3FA0:
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble .L080A3FBA
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt .L080A3FE0
.L080A3FBA:
	adds r1, #1
	adds r3, #1
	cmp r3, #4
	ble .L080A3FA0
.L080A3FC2:
	movs r5, #0
	movs r2, #0
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq .L080A3FF4
	cmp r0, #2
	bgt .L080A3FE6
	cmp r0, #1
	beq .L080A3FF0
	b .L080A4006
	.align 2, 0
.L080A3FD8: .4byte gUnk_08104E4C
.L080A3FDC: .4byte gUnk_08104EAC
.L080A3FE0:
	lsls r0, r3, #0x18
	lsrs r6, r0, #0x18
	b .L080A3FC2
.L080A3FE6:
	cmp r0, #3
	beq .L080A3FFA
	cmp r0, #4
	beq .L080A4000
	b .L080A4006
.L080A3FF0:
	movs r2, #3
	b .L080A400A
.L080A3FF4:
	movs r5, #4
	movs r2, #7
	b .L080A400A
.L080A3FFA:
	movs r5, #8
	movs r2, #0x34
	b .L080A400A
.L080A4000:
	movs r5, #0x35
	movs r2, #0x3a
	b .L080A400A
.L080A4006:
	movs r7, #1
	rsbs r7, r7, #0
.L080A400A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	bne .L080A4014
	b .L080A449C
.L080A4014:
	movs r3, #0
	mov sl, r3
	movs r7, #0
	movs r4, #0
	mov r8, r4
	movs r1, #0
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0xa0]
	mov r3, sp
	adds r3, #0x48
	str r3, [sp, #0x9c]
	adds r2, #1
	mov ip, r2
	adds r4, r0, #0
	movs r2, #0
.L080A4034:
	adds r0, r4, r1
	strb r2, [r0]
	adds r0, r3, r1
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x2c
	ble .L080A4034
	adds r4, r5, #0
	cmp r4, ip
	bge .L080A410C
	mov r1, sb
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1e
	lsrs r5, r0, #0x1e
	lsls r3, r4, #5
.L080A4052:
	cmp r5, #1
	beq .L080A4074
	cmp r5, #1
	bgt .L080A4060
	cmp r5, #0
	beq .L080A406A
	b .L080A4092
.L080A4060:
	cmp r5, #2
	beq .L080A4080
	cmp r5, #3
	beq .L080A408C
	b .L080A4092
.L080A406A:
	ldr r2, .L080A4070 @ =gUnk_08104ED2
	b .L080A408E
	.align 2, 0
.L080A4070: .4byte gUnk_08104ED2
.L080A4074:
	ldr r0, .L080A407C @ =gUnk_08104ED9
	adds r0, r0, r3
	mov r8, r0
	b .L080A4092
	.align 2, 0
.L080A407C: .4byte gUnk_08104ED9
.L080A4080:
	ldr r1, .L080A4088 @ =gUnk_08104EE0
	adds r1, r1, r3
	mov r8, r1
	b .L080A4092
	.align 2, 0
.L080A4088: .4byte gUnk_08104EE0
.L080A408C:
	ldr r2, .L080A40E8 @ =gUnk_08104EE7
.L080A408E:
	adds r2, r2, r3
	mov r8, r2
.L080A4092:
	ldr r0, [sp, #0x94]
	add r0, r8
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #0
	beq .L080A4104
	cmp r1, #0
	bge .L080A40AC
	rsbs r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
.L080A40AC:
	lsls r0, r2, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r2, r0, #0x18
	ldr r0, [sp, #0x98]
	cmp r0, #6
	beq .L080A40C0
	cmp r2, #7
	bne .L080A40C2
.L080A40C0:
	ldr r2, [sp, #0x98]
.L080A40C2:
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	ldr r1, [sp, #0x98]
	cmp r1, r0
	bne .L080A4104
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	ble .L080A40EC
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp, #0x9c]
	adds r1, r2, r0
	strb r4, [r1]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	b .L080A4104
	.align 2, 0
.L080A40E8: .4byte gUnk_08104EE7
.L080A40EC:
	cmp r0, #0
	bge .L080A4104
	mov r1, sl
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp, #0xa0]
	adds r1, r2, r0
	strb r4, [r1]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
.L080A4104:
	adds r3, #0x20
	adds r4, #1
	cmp r4, ip
	blt .L080A4052
.L080A410C:
	cmp r7, #0
	bne .L080A4118
	mov r3, sl
	cmp r3, #0
	bne .L080A4118
	b .L080A4456
.L080A4118:
	lsls r0, r7, #0x18
	cmp r0, #0
	ble .L080A413E
	mov r4, sl
	lsls r0, r4, #0x18
	cmp r0, #0
	ble .L080A413E
	bl rand
	asrs r0, r0, #8
	movs r1, #0x64
	bl __modsi3
	cmp r0, #0x45
	bgt .L080A413C
	movs r0, #0
	mov sl, r0
	b .L080A413E
.L080A413C:
	movs r7, #0
.L080A413E:
	lsls r0, r7, #0x18
	asrs r1, r0, #0x18
	mov r2, sl
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	ble .L080A4154
	adds r7, r1, #0
	ldr r3, [sp, #0x9c]
	mov r8, r3
	b .L080A415A
.L080A4154:
	adds r7, r0, #0
	ldr r4, [sp, #0xa0]
	mov r8, r4
.L080A415A:
	cmp r7, #1
	ble .L080A416E
	bl rand
	asrs r0, r0, #8
	adds r1, r7, #0
	bl __modsi3
	adds r7, r0, #0
	b .L080A4170
.L080A416E:
	movs r7, #0
.L080A4170:
	mov r1, r8
	adds r0, r1, r7
	movs r7, #0
	ldrsb r7, [r0, r7]
	subs r0, r7, #2
	cmp r0, #0x38
	bls .L080A4180
	b .L080A445A
.L080A4180:
	lsls r0, r0, #2
	ldr r1, .L080A418C @ =.L080A4190
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A418C: .4byte .L080A4190
.L080A4190: @ jump table
	.4byte .L080A4274 @ case 0
	.4byte .L080A4288 @ case 1
	.4byte .L080A445A @ case 2
	.4byte .L080A445A @ case 3
	.4byte .L080A445A @ case 4
	.4byte .L080A445A @ case 5
	.4byte .L080A445A @ case 6
	.4byte .L080A445A @ case 7
	.4byte .L080A445A @ case 8
	.4byte .L080A445A @ case 9
	.4byte .L080A445A @ case 10
	.4byte .L080A445A @ case 11
	.4byte .L080A445A @ case 12
	.4byte .L080A445A @ case 13
	.4byte .L080A445A @ case 14
	.4byte .L080A445A @ case 15
	.4byte .L080A445A @ case 16
	.4byte .L080A445A @ case 17
	.4byte .L080A445A @ case 18
	.4byte .L080A445A @ case 19
	.4byte .L080A445A @ case 20
	.4byte .L080A445A @ case 21
	.4byte .L080A445A @ case 22
	.4byte .L080A445A @ case 23
	.4byte .L080A445A @ case 24
	.4byte .L080A445A @ case 25
	.4byte .L080A445A @ case 26
	.4byte .L080A445A @ case 27
	.4byte .L080A445A @ case 28
	.4byte .L080A445A @ case 29
	.4byte .L080A445A @ case 30
	.4byte .L080A445A @ case 31
	.4byte .L080A445A @ case 32
	.4byte .L080A445A @ case 33
	.4byte .L080A445A @ case 34
	.4byte .L080A445A @ case 35
	.4byte .L080A445A @ case 36
	.4byte .L080A445A @ case 37
	.4byte .L080A445A @ case 38
	.4byte .L080A445A @ case 39
	.4byte .L080A445A @ case 40
	.4byte .L080A445A @ case 41
	.4byte .L080A445A @ case 42
	.4byte .L080A445A @ case 43
	.4byte .L080A445A @ case 44
	.4byte .L080A445A @ case 45
	.4byte .L080A445A @ case 46
	.4byte .L080A445A @ case 47
	.4byte .L080A445A @ case 48
	.4byte .L080A445A @ case 49
	.4byte .L080A445A @ case 50
	.4byte .L080A429C @ case 51
	.4byte .L080A4330 @ case 52
	.4byte .L080A435A @ case 53
	.4byte .L080A436C @ case 54
	.4byte .L080A43D0 @ case 55
	.4byte .L080A443A @ case 56
.L080A4274:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #2
	bl func_0809CE1C
	cmp r0, #0
	bne .L080A4286
	b .L080A445A
.L080A4286:
	b .L080A4456
.L080A4288:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #3
	bl func_0809CE1C
	cmp r0, #0
	bne .L080A429A
	b .L080A445A
.L080A429A:
	b .L080A4456
.L080A429C:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #0x35
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A42AE
	b .L080A4456
.L080A42AE:
	add r1, sp, #0x78
	strh r0, [r1]
	ldrh r2, [r1, #0x12]
	ldr r0, .L080A4324 @ =0xFFFFF000
	ands r0, r2
	strh r0, [r1, #0x12]
	ldrb r2, [r1, #0x13]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0x13]
	mov r2, sp
	adds r2, #0x7a
	movs r3, #0
	add r0, sp, #0x88
.L080A42CC:
	strh r3, [r0]
	subs r0, #2
	cmp r0, r2
	bge .L080A42CC
	movs r6, #0
	movs r5, #0
	ldr r0, .L080A4328 @ =0x00002C1A
	add r0, sb
	ldrb r0, [r0]
	cmp r6, r0
	bge .L080A431A
	adds r4, r1, #0
.L080A42E4:
	ldr r0, .L080A432C @ =0x00002214
	add r0, sb
	adds r1, r4, #0
	adds r2, r5, #0
	bl func_0809A970
	ldrh r0, [r4]
	cmp r0, #0x7a
	beq .L080A4302
	cmp r0, #0x7a
	blt .L080A430E
	cmp r0, #0x81
	bgt .L080A430E
	cmp r0, #0x80
	blt .L080A430E
.L080A4302:
	ldrb r1, [r4, #0x13]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L080A430E
	adds r6, #1
.L080A430E:
	adds r5, #1
	ldr r0, .L080A4328 @ =0x00002C1A
	add r0, sb
	ldrb r0, [r0]
	cmp r5, r0
	blt .L080A42E4
.L080A431A:
	cmp r6, #2
	ble .L080A4320
	b .L080A445A
.L080A4320:
	b .L080A4456
	.align 2, 0
.L080A4324: .4byte 0xFFFFF000
.L080A4328: .4byte 0x00002C1A
.L080A432C: .4byte 0x00002214
.L080A4330:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #0x36
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A4342
	b .L080A4456
.L080A4342:
	mov r2, sb
	ldrb r0, [r2, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #3
	movs r3, #0xf8
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls .L080A4358
	b .L080A445A
.L080A4358:
	b .L080A4456
.L080A435A:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #0x37
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A445A
	b .L080A4456
.L080A436C:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #0x38
	bl func_0809CE1C
	cmp r0, #0
	bne .L080A4456
	movs r5, #0
	mov r4, sb
	adds r4, #0x54
	adds r0, r4, #0
	movs r1, #0x3d
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A439A
	adds r0, r4, #0
	movs r1, #0x3d
	bl GetAmountShipped__C11ShippingBini
	adds r5, r0, #0
.L080A439A:
	adds r0, r4, #0
	movs r1, #0x3e
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A43B2
	adds r0, r4, #0
	movs r1, #0x3e
	bl GetAmountShipped__C11ShippingBini
	adds r5, r5, r0
.L080A43B2:
	adds r0, r4, #0
	movs r1, #0x3f
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A43CA
	adds r0, r4, #0
	movs r1, #0x3f
	bl GetAmountShipped__C11ShippingBini
	adds r5, r5, r0
.L080A43CA:
	cmp r5, #0xc7
	bhi .L080A445A
	b .L080A4456
.L080A43D0:
	movs r5, #0xb2
	lsls r5, r5, #6
	add r5, sb
	adds r0, r5, #0
	movs r1, #0x39
	bl func_0809CE1C
	cmp r0, #0
	bne .L080A4456
	adds r0, r5, #0
	movs r1, #0x35
	bl func_0809CE1C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	adds r0, r5, #0
	movs r1, #0x36
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A43FE
	adds r4, #1
.L080A43FE:
	adds r0, r5, #0
	movs r1, #0x37
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A4410
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
.L080A4410:
	adds r0, r5, #0
	movs r1, #0x38
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A4422
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
.L080A4422:
	adds r0, r5, #0
	movs r1, #0x3a
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A4434
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
.L080A4434:
	cmp r4, #4
	bhi .L080A445A
	b .L080A4456
.L080A443A:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #0x3a
	bl func_0809CE1C
	cmp r0, #0
	bne .L080A4456
	mov r0, sb
	bl func_08010F04
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A445A
.L080A4456:
	movs r7, #1
	rsbs r7, r7, #0
.L080A445A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq .L080A449C
	cmp r7, #7
	bgt .L080A44C4
	cmp r7, #2
	beq .L080A44A8
	add r4, sp, #0x8c
	ldr r1, .L080A44A4 @ =gUnk_08104E54
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl __7ArticleUi
	ldrb r1, [r4]
	ldr r0, [sp, #0xa0]
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	mov r4, sp
	adds r4, #0x8d
	adds r0, r4, #0
	adds r1, r5, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetName__C7Article
	str r0, [sp]
.L080A449C:
	mov r1, sp
	movs r0, #0
	strh r0, [r1, #4]
	b .L080A454C
	.align 2, 0
.L080A44A4: .4byte gUnk_08104E54
.L080A44A8:
	mov r1, sp
	movs r4, #0
	movs r0, #1
	strb r0, [r1, #0xc]
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #2
	bl func_0809CE7C
	str r0, [sp]
	mov r0, sp
	strh r4, [r0, #4]
	b .L080A454C
.L080A44C4:
	mov r2, sp
	ldr r1, .L080A4500 @ =gUnk_08104ED0
	lsls r0, r7, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	strh r1, [r2, #4]
	ldrb r1, [r0, #1]
	mov r0, sp
	ldrh r0, [r0, #4]
	subs r6, r1, r0
	cmp r6, #0
	ble .L080A44F2
	bl rand
	mov r5, sp
	mov r4, sp
	asrs r0, r0, #8
	adds r1, r6, #1
	bl __modsi3
	ldrh r1, [r4, #4]
	adds r1, r1, r0
	strh r1, [r5, #4]
.L080A44F2:
	movs r1, #0xa2
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r0, #0x19
	bhi .L080A4504
	movs r1, #0xa0
	b .L080A450A
	.align 2, 0
.L080A4500: .4byte gUnk_08104ED0
.L080A4504:
	cmp r0, #0x31
	bhi .L080A450A
	movs r1, #0xa1
.L080A450A:
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __4FoodUi
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x1d
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x1e
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldr r0, [sp, #0xa0]
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	adds r1, r7, #0
	bl func_0809CE7C
	str r0, [sp]
	cmp r7, #0x34
	ble .L080A454C
	mov r1, sp
	movs r0, #1
	strb r0, [r1, #0xd]
	str r7, [sp, #0x10]
.L080A454C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq .L080A4588
	movs r4, #0xb2
	lsls r4, r4, #6
	add r4, sb
	adds r0, r4, #0
	adds r1, r7, #0
	bl func_0809CE24
	movs r5, #0
	cmp r0, #0
	bne .L080A456A
	movs r5, #1
.L080A456A:
	mov r0, sp
	ldrh r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	bl func_0809CD98
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r5, #0
	bne .L080A4588
	cmp r0, #0
	beq .L080A4588
	mov r1, sp
	movs r0, #1
	strb r0, [r1, #0x14]
.L080A4588:
	ldr r1, [sp, #0x90]
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [sp, #0x90]
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A45A8
func_080A45A8: @ 0x080A45A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	movs r0, #7
	mov r8, r0
	ldrb r1, [r2, #1]
	lsrs r1, r1, #2
	ldrh r0, [r2, #2]
	ldr r3, .L080A4630 @ =0x000003FF
	ands r0, r3
	lsls r0, r0, #6
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge .L080A45CC
	adds r0, #7
.L080A45CC:
	asrs r5, r0, #3
	ldrb r1, [r2, #3]
	lsrs r1, r1, #2
	ldrh r0, [r2, #4]
	ands r0, r3
	lsls r0, r0, #6
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge .L080A45E4
	adds r0, #7
.L080A45E4:
	asrs r3, r0, #3
	movs r4, #0
	ldrh r0, [r2]
	ldr r6, .L080A4634 @ =gUnk_0810563C
	lsls r0, r0, #0x16
	lsrs r7, r0, #0x16
	adds r2, r6, #0
	mov ip, r2
	movs r1, #0
.L080A45F6:
	ldr r0, [r2]
	cmp r7, r0
	bne .L080A4638
	adds r0, r6, #4
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r5, r0
	blt .L080A4638
	mov r0, ip
	adds r0, #0xc
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r5, r0
	bgt .L080A4638
	mov r0, ip
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt .L080A4638
	mov r0, ip
	adds r0, #0x10
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	bgt .L080A4638
	ldr r2, [r2, #0x14]
	mov r8, r2
	b .L080A4642
	.align 2, 0
.L080A4630: .4byte 0x000003FF
.L080A4634: .4byte gUnk_0810563C
.L080A4638:
	adds r2, #0x18
	adds r1, #0x18
	adds r4, #1
	cmp r4, #7
	ble .L080A45F6
.L080A4642:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A4650
func_080A4650: @ 0x080A4650
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r4, .L080A4688 @ =gUnk_08105708
	lsls r3, r3, #2
	lsls r2, r2, #4
	adds r3, r3, r2
	adds r3, r3, r4
	ldr r3, [r3]
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	ldrh r1, [r3]
	ldr r4, .L080A468C @ =0x0000FFFF
.L080A4678:
	cmp r1, r4
	beq .L080A4690
	cmp r1, r2
	bhi .L080A4690
	ldrb r0, [r3, #2]
	adds r3, #4
	ldrh r1, [r3]
	b .L080A4678
	.align 2, 0
.L080A4688: .4byte gUnk_08105708
.L080A468C: .4byte 0x0000FFFF
.L080A4690:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start GetMapData
GetMapData: @ 0x080A4698
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, .L080A46A8 @ =gUnk_08105EDC
	adds r0, r0, r1
	bx lr
	.align 2, 0
.L080A46A8: .4byte gUnk_08105EDC

	thumb_func_start func_080A46AC
func_080A46AC: @ 0x080A46AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x20]
	mov sb, r0
	ldr r0, .L080A473C @ =vtable_unk_080E82D8
	str r0, [r6, #0x24]
	adds r4, r6, #0
	stm r4!, {r7}
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_08007B54
	adds r1, r0, #0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	movs r1, #0
	movs r2, #0
	strh r0, [r6, #0xc]
	mov r0, sp
	strb r1, [r0]
	str r2, [r6, #0x10]
	mov r2, sb
	cmp r2, #0x10
	bhi .L080A4704
	adds r0, r6, #0
	adds r0, #0x14
	mov r1, sp
	ldrb r1, [r1]
	bl memset
	mov r0, sb
	str r0, [r6, #0x10]
.L080A4704:
	movs r5, #0
	cmp r5, sb
	bhs .L080A472C
	adds r4, r6, #0
	adds r4, #0x14
.L080A470E:
	ldr r0, [r7]
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	ldr r2, [r0, #0x48]
	adds r0, r7, #0
	bl _call_via_r2
	strb r0, [r4]
	adds r4, #1
	adds r5, #1
	cmp r5, sb
	blo .L080A470E
.L080A472C:
	adds r0, r6, #0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A473C: .4byte vtable_unk_080E82D8

	thumb_func_start func_080A4740
func_080A4740: @ 0x080A4740
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, .L080A47B0 @ =vtable_unk_080E82D8
	str r0, [r5, #0x24]
	adds r4, r5, #0
	stm r4!, {r6}
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	mov r1, r8
	bl func_08007B54
	adds r1, r0, #0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	movs r1, #0
	movs r2, #0
	strh r0, [r5, #0xc]
	movs r4, #1
	mov r0, sp
	strb r1, [r0]
	str r2, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x14
	mov r1, sp
	ldrb r1, [r1]
	movs r2, #1
	bl memset
	str r4, [r5, #0x10]
	ldr r0, [r6]
	ldr r2, [r0, #0x48]
	adds r0, r6, #0
	mov r1, sb
	bl _call_via_r2
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080A47B0: .4byte vtable_unk_080E82D8

	thumb_func_start func_080A47B4
func_080A47B4: @ 0x080A47B4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, .L080A4808 @ =vtable_unk_080E82D8
	str r0, [r5, #0x24]
	movs r6, #0
	ldr r0, [r5, #0x10]
	cmp r6, r0
	bhs .L080A47E0
	adds r4, r5, #0
	adds r4, #0x14
.L080A47CA:
	ldr r0, [r5]
	ldr r2, [r0]
	ldrb r1, [r4]
	ldr r2, [r2, #0x4c]
	bl _call_via_r2
	adds r4, #1
	adds r6, #1
	ldr r0, [r5, #0x10]
	cmp r6, r0
	blo .L080A47CA
.L080A47E0:
	adds r4, r5, #4
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq .L080A4800
	adds r0, r5, #0
	bl __builtin_delete
.L080A4800:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A4808: .4byte vtable_unk_080E82D8

	thumb_func_start func_080A480C
func_080A480C: @ 0x080A480C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r1, #0
	ldr r6, [r2]
	movs r4, #0
	cmp r6, #0
	beq .L080A4824
	ldrh r4, [r2, #4]
.L080A4824:
	cmp r4, #0
	bne .L080A482A
	b .L080A4932
.L080A482A:
	adds r0, #4
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	lsls r2, r2, #5
	ldr r0, .L080A4868 @ =0x06010000
	adds r2, r2, r0
	mov r0, sp
	adds r1, r6, #0
	adds r3, r4, #0
	bl func_08008F0C
	mov sb, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080A486C
	cmp r1, #0
	beq .L080A485E
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A485E:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080A4932
	.align 2, 0
.L080A4868: .4byte 0x06010000
.L080A486C:
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
	bhs .L080A4886
	adds r0, r2, #0
.L080A4886:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A48A6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A48A2
	mov r0, r8
	bl func_080D3BC0
.L080A48A2:
	ldr r1, [r5]
	b .L080A48AA
.L080A48A6:
	movs r0, #0
	mov r8, r0
.L080A48AA:
	adds r4, r0, #0
	str r4, [sp, #0x18]
	adds r2, r1, #0
	adds r3, r4, #0
	cmp r2, sl
	beq .L080A48CE
.L080A48B6:
	cmp r3, #0
	beq .L080A48C6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A48C6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A48B6
.L080A48CE:
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne .L080A48EA
	cmp r4, #0
	beq .L080A48E6
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A48E6:
	adds r4, #0x10
	b .L080A490C
.L080A48EA:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080A490A
.L080A48F2:
	cmp r2, #0
	beq .L080A4902
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A4902:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A48F2
.L080A490A:
	adds r4, r2, #0
.L080A490C:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080A491C
.L080A4916:
	adds r0, #0x10
	cmp r0, r2
	bne .L080A4916
.L080A491C:
	cmp r1, #0
	beq .L080A4926
	adds r0, r1, #0
	bl free
.L080A4926:
	ldr r0, [sp, #0x18]
	add r0, r8
	ldr r1, [sp, #0x18]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080A4932:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A4944
func_080A4944: @ 0x080A4944
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r3, [r1]
	movs r2, #0
	cmp r3, #0
	beq .L080A495E
	ldrh r2, [r1, #4]
.L080A495E:
	cmp r2, #0
	beq .L080A4992
	ldr r1, [r0]
	mov r8, r1
	lsrs r2, r2, #5
	mov sb, r2
	adds r6, r3, #0
	movs r7, #0
	cmp r7, sb
	bhs .L080A4992
	adds r5, r0, #0
	adds r5, #0x14
.L080A4976:
	mov r1, r8
	ldr r0, [r1]
	ldrb r2, [r5]
	ldr r4, [r0, #0x54]
	mov r0, r8
	adds r1, r6, #0
	mov r3, sl
	bl _call_via_r4
	adds r5, #1
	adds r7, #1
	adds r6, #0x20
	cmp r7, sb
	blo .L080A4976
.L080A4992:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080A49A0
func_080A49A0: @ 0x080A49A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r1, r3, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r4, [sp, #0x24]
	add r0, sp, #0x28
	ldrb r0, [r0]
	mov r8, r0
	str r4, [sp]
	adds r0, r7, #0
	bl func_080A46AC
	ldr r0, .L080A49FC @ =vtable_unk_080E681C
	str r0, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x28
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_0805E824
	adds r1, r7, #0
	adds r1, #0x3c
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x3d
	mov r1, r8
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, r7, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A49FC: .4byte vtable_unk_080E681C

	thumb_func_start func_080A4A00
func_080A4A00: @ 0x080A4A00
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r1, r3, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, sp, #0x1c
	ldrb r6, [r0]
	adds r0, r7, #0
	bl func_080A4740
	ldr r0, .L080A4A48 @ =vtable_unk_080E681C
	str r0, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x28
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl func_0805E824
	adds r1, r7, #0
	adds r1, #0x3c
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x3d
	strb r6, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A4A48: .4byte vtable_unk_080E681C
.L080A4A4C:
	.byte 0x70, 0xB5, 0x85, 0xB0
	.byte 0x04, 0x1C, 0x0D, 0x1C, 0x16, 0x1C, 0xA1, 0x68, 0x48, 0x42, 0x08, 0x43, 0x00, 0x28, 0x01, 0xDB
	.byte 0x00, 0x20, 0x11, 0xE0, 0xA1, 0x89, 0x22, 0x1C, 0x10, 0x32, 0x0A, 0x98, 0x00, 0x90, 0x0B, 0x98
	.byte 0x01, 0x90, 0x0C, 0x98, 0x02, 0x90, 0x03, 0x91, 0x04, 0x92, 0x28, 0x1C, 0x31, 0x1C, 0x1A, 0x1C
	.byte 0x09, 0x9B, 0x03, 0x4C, 0x2E, 0xF0, 0x4A, 0xFF, 0x05, 0xB0, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0xDC, 0x04, 0x00, 0x03

	thumb_func_start func_080A4A94
func_080A4A94: @ 0x080A4A94
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x90
	ldr r0, .L080A4B64 @ =vtable_unk_080E82E4
	str r0, [r1]
	movs r0, #0x8d
	lsls r0, r0, #2
	str r0, [r4]
	movs r0, #0x42
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	subs r1, #0x68
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	str r0, [r4, #0x2c]
	adds r1, #6
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x5c
	str r0, [r4, #0x5c]
	str r0, [r2, #4]
	ldr r1, .L080A4B68 @ =vtable_unk_080E830C
	str r1, [r2, #8]
	adds r1, r4, #0
	adds r1, #0x8c
	str r0, [r1]
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x1c
.L080A4B2A:
	movs r0, #0xf0
	lsls r0, r0, #1
	bl __builtin_vec_new
	stm r6!, {r0}
	adds r5, #1
	cmp r5, #2
	bls .L080A4B2A
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x10
.L080A4B40:
	movs r0, #0xf2
	lsls r0, r0, #7
	bl __builtin_vec_new
	stm r6!, {r0}
	adds r5, #1
	cmp r5, #2
	bls .L080A4B40
	movs r0, #0xf2
	lsls r0, r0, #8
	bl __builtin_vec_new
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080A4B64: .4byte vtable_unk_080E82E4
.L080A4B68: .4byte vtable_unk_080E830C

	thumb_func_start func_080A4B6C
func_080A4B6C: @ 0x080A4B6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	adds r1, r6, #0
	adds r1, #0x90
	ldr r0, .L080A4BE8 @ =vtable_unk_080E82E4
	str r0, [r1]
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq .L080A4B8A
	bl __builtin_vec_delete
.L080A4B8A:
	movs r5, #0
	adds r7, r6, #0
	adds r7, #0x1c
	movs r0, #0x5c
	adds r0, r0, r6
	mov r8, r0
	adds r4, r6, #0
	adds r4, #0x10
.L080A4B9A:
	ldr r0, [r4]
	cmp r0, #0
	beq .L080A4BA4
	bl __builtin_vec_delete
.L080A4BA4:
	adds r4, #4
	adds r5, #1
	cmp r5, #2
	bls .L080A4B9A
	movs r5, #0
	adds r4, r7, #0
.L080A4BB0:
	ldr r0, [r4]
	cmp r0, #0
	beq .L080A4BBA
	bl __builtin_vec_delete
.L080A4BBA:
	adds r4, #4
	adds r5, #1
	cmp r5, #2
	bls .L080A4BB0
	mov r0, r8
	movs r1, #2
	bl func_080098AC
	movs r0, #1
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq .L080A4BDA
	adds r0, r6, #0
	bl __builtin_delete
.L080A4BDA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A4BE8: .4byte vtable_unk_080E82E4

	thumb_func_start func_080A4BEC
func_080A4BEC: @ 0x080A4BEC
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x8c
	ldr r0, [r3]
	cmp r0, #0
	beq .L080A4C20
	adds r1, r2, #0
	adds r1, #0x84
	ldr r0, [r2, #8]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x88
	ldr r0, [r2, #0xc]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r3]
	subs r0, #1
	str r0, [r3]
	adds r1, r2, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080A4C20:
	ldr r0, [r2, #4]
	cmp r0, #0x3f
	bls .L080A4C28
	b .L080A4F40
.L080A4C28:
	lsls r0, r0, #2
	ldr r1, .L080A4C34 @ =.L080A4C38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A4C34: .4byte .L080A4C38
.L080A4C38: @ jump table
	.4byte .L080A4ED8 @ case 0
	.4byte .L080A4F08 @ case 1
	.4byte .L080A4F40 @ case 2
	.4byte .L080A4F40 @ case 3
	.4byte .L080A4F40 @ case 4
	.4byte .L080A4F40 @ case 5
	.4byte .L080A4E78 @ case 6
	.4byte .L080A4EA8 @ case 7
	.4byte .L080A4E38 @ case 8
	.4byte .L080A4E58 @ case 9
	.4byte .L080A4F40 @ case 10
	.4byte .L080A4F40 @ case 11
	.4byte .L080A4F40 @ case 12
	.4byte .L080A4F40 @ case 13
	.4byte .L080A4D38 @ case 14
	.4byte .L080A4D98 @ case 15
	.4byte .L080A4F40 @ case 16
	.4byte .L080A4F40 @ case 17
	.4byte .L080A4F40 @ case 18
	.4byte .L080A4F40 @ case 19
	.4byte .L080A4F40 @ case 20
	.4byte .L080A4F40 @ case 21
	.4byte .L080A4F40 @ case 22
	.4byte .L080A4F40 @ case 23
	.4byte .L080A4F40 @ case 24
	.4byte .L080A4F40 @ case 25
	.4byte .L080A4F40 @ case 26
	.4byte .L080A4F40 @ case 27
	.4byte .L080A4F40 @ case 28
	.4byte .L080A4F40 @ case 29
	.4byte .L080A4F40 @ case 30
	.4byte .L080A4E18 @ case 31
	.4byte .L080A4F40 @ case 32
	.4byte .L080A4F40 @ case 33
	.4byte .L080A4F40 @ case 34
	.4byte .L080A4F40 @ case 35
	.4byte .L080A4F40 @ case 36
	.4byte .L080A4F40 @ case 37
	.4byte .L080A4F40 @ case 38
	.4byte .L080A4F40 @ case 39
	.4byte .L080A4F40 @ case 40
	.4byte .L080A4F40 @ case 41
	.4byte .L080A4F40 @ case 42
	.4byte .L080A4F40 @ case 43
	.4byte .L080A4F40 @ case 44
	.4byte .L080A4F40 @ case 45
	.4byte .L080A4F40 @ case 46
	.4byte .L080A4F40 @ case 47
	.4byte .L080A4F40 @ case 48
	.4byte .L080A4F40 @ case 49
	.4byte .L080A4F40 @ case 50
	.4byte .L080A4F40 @ case 51
	.4byte .L080A4F40 @ case 52
	.4byte .L080A4F40 @ case 53
	.4byte .L080A4F40 @ case 54
	.4byte .L080A4F40 @ case 55
	.4byte .L080A4F40 @ case 56
	.4byte .L080A4F40 @ case 57
	.4byte .L080A4F40 @ case 58
	.4byte .L080A4F40 @ case 59
	.4byte .L080A4DF8 @ case 60
	.4byte .L080A4F40 @ case 61
	.4byte .L080A4ED8 @ case 62
	.4byte .L080A4ED8 @ case 63
.L080A4D38:
	adds r3, r2, #0
	adds r3, #0x40
	ldr r1, .L080A4D8C @ =gUnk_0810718C
	ldrb r0, [r3, #2]
	adds r0, #1
	movs r4, #0
	strb r0, [r3, #2]
	movs r5, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4D58
	strb r4, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4D58:
	adds r3, r2, #0
	adds r3, #0x44
	ldr r1, .L080A4D90 @ =gUnk_08107198
	ldrb r0, [r3, #2]
	adds r0, #1
	strb r0, [r3, #2]
	ands r0, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4D72
	strb r4, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4D72:
	adds r2, #0x48
	ldr r1, .L080A4D94 @ =gUnk_081071A4
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	ands r0, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	bhs .L080A4D86
	b .L080A4F40
.L080A4D86:
	strb r4, [r2, #2]
	b .L080A4F3C
	.align 2, 0
.L080A4D8C: .4byte gUnk_0810718C
.L080A4D90: .4byte gUnk_08107198
.L080A4D94: .4byte gUnk_081071A4
.L080A4D98:
	adds r3, r2, #0
	adds r3, #0x40
	ldr r1, .L080A4DEC @ =gUnk_081071B0
	ldrb r0, [r3, #2]
	adds r0, #1
	movs r4, #0
	strb r0, [r3, #2]
	movs r5, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4DB8
	strb r4, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4DB8:
	adds r3, r2, #0
	adds r3, #0x44
	ldr r1, .L080A4DF0 @ =gUnk_081071BC
	ldrb r0, [r3, #2]
	adds r0, #1
	strb r0, [r3, #2]
	ands r0, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4DD2
	strb r4, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4DD2:
	adds r2, #0x48
	ldr r1, .L080A4DF4 @ =gUnk_081071C8
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	ands r0, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	bhs .L080A4DE6
	b .L080A4F40
.L080A4DE6:
	strb r4, [r2, #2]
	b .L080A4F3C
	.align 2, 0
.L080A4DEC: .4byte gUnk_081071B0
.L080A4DF0: .4byte gUnk_081071BC
.L080A4DF4: .4byte gUnk_081071C8
.L080A4DF8:
	adds r2, #0x50
	ldr r1, .L080A4E14 @ =gUnk_081071F8
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	bhs .L080A4E0E
	b .L080A4F40
.L080A4E0E:
	movs r0, #0
	strb r0, [r2, #2]
	b .L080A4F3C
	.align 2, 0
.L080A4E14: .4byte gUnk_081071F8
.L080A4E18:
	adds r2, #0x54
	ldr r1, .L080A4E34 @ =gUnk_081071E0
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	bhs .L080A4E2E
	b .L080A4F40
.L080A4E2E:
	movs r0, #0
	strb r0, [r2, #2]
	b .L080A4F3C
	.align 2, 0
.L080A4E34: .4byte gUnk_081071E0
.L080A4E38:
	adds r2, #0x4c
	ldr r1, .L080A4E54 @ =gUnk_081071D4
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4F40
	movs r0, #0
	strb r0, [r2, #2]
	b .L080A4F3C
	.align 2, 0
.L080A4E54: .4byte gUnk_081071D4
.L080A4E58:
	adds r2, #0x4c
	ldr r1, .L080A4E74 @ =gUnk_081071EC
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4F40
	movs r0, #0
	strb r0, [r2, #2]
	b .L080A4F3C
	.align 2, 0
.L080A4E74: .4byte gUnk_081071EC
.L080A4E78:
	adds r3, r2, #0
	adds r3, #0x38
	ldr r1, .L080A4EA0 @ =gUnk_0810715C
	ldrb r0, [r3, #2]
	adds r0, #1
	movs r5, #0
	strb r0, [r3, #2]
	movs r4, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4E98
	strb r5, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4E98:
	adds r2, #0x3c
	ldr r1, .L080A4EA4 @ =gUnk_08107168
	b .L080A4F2C
	.align 2, 0
.L080A4EA0: .4byte gUnk_0810715C
.L080A4EA4: .4byte gUnk_08107168
.L080A4EA8:
	adds r3, r2, #0
	adds r3, #0x38
	ldr r1, .L080A4ED0 @ =gUnk_08107174
	ldrb r0, [r3, #2]
	adds r0, #1
	movs r5, #0
	strb r0, [r3, #2]
	movs r4, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4EC8
	strb r5, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4EC8:
	adds r2, #0x3c
	ldr r1, .L080A4ED4 @ =gUnk_08107180
	b .L080A4F2C
	.align 2, 0
.L080A4ED0: .4byte gUnk_08107174
.L080A4ED4: .4byte gUnk_08107180
.L080A4ED8:
	adds r3, r2, #0
	adds r3, #0x30
	ldr r1, .L080A4F00 @ =gUnk_08107114
	ldrb r0, [r3, #2]
	adds r0, #1
	movs r5, #0
	strb r0, [r3, #2]
	movs r4, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4EF8
	strb r5, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4EF8:
	adds r2, #0x34
	ldr r1, .L080A4F04 @ =gUnk_0810712C
	b .L080A4F2C
	.align 2, 0
.L080A4F00: .4byte gUnk_08107114
.L080A4F04: .4byte gUnk_0810712C
.L080A4F08:
	adds r3, r2, #0
	adds r3, #0x30
	ldr r1, .L080A4F48 @ =gUnk_08107120
	ldrb r0, [r3, #2]
	adds r0, #1
	movs r5, #0
	strb r0, [r3, #2]
	movs r4, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4F28
	strb r5, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4F28:
	adds r2, #0x34
	ldr r1, .L080A4F4C @ =gUnk_08107138
.L080A4F2C:
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	ands r0, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4F40
	strb r5, [r2, #2]
.L080A4F3C:
	movs r0, #1
	strb r0, [r2, #1]
.L080A4F40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080A4F48: .4byte gUnk_08107120
.L080A4F4C: .4byte gUnk_08107138

	thumb_func_start func_080A4F50
func_080A4F50: @ 0x080A4F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	adds r6, r0, #0
	mov sl, r1
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	adds r4, r6, #0
	adds r4, #0x29
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080A4F70
	b .L080A50C2
.L080A4F70:
	ldr r0, [r6, #4]
	bl GetMapData
	movs r2, #0xa
	ldrsh r1, [r6, r2]
	mov ip, r1
	movs r3, #0xe
	ldrsh r7, [r6, r3]
	ldrh r0, [r0, #0x20]
	str r0, [sp, #0x24]
	mov r0, ip
	cmp r1, #0
	bge .L080A4F8C
	adds r0, #7
.L080A4F8C:
	asrs r1, r0, #3
	adds r0, r7, #0
	cmp r7, #0
	bge .L080A4F96
	adds r0, r7, #7
.L080A4F96:
	asrs r0, r0, #3
	ldr r5, [sp, #0x24]
	muls r0, r5, r0
	adds r1, r1, r0
	str r1, [sp, #0x28]
	movs r0, #0
	str r0, [sp, #0x2c]
	str r4, [sp, #0x38]
	adds r1, r6, #0
	adds r1, #0x10
	str r1, [sp, #0x34]
	adds r2, r6, #0
	adds r2, #0x80
	str r2, [sp, #0x48]
	ldr r3, [sp, #0x20]
	ldr r3, [r3, #8]
	str r3, [sp, #0x40]
	adds r4, r6, #0
	adds r4, #0x5c
	str r4, [sp, #0x44]
	mov r5, sp
	str r5, [sp, #0x30]
	movs r0, #0x68
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x4c]
.L080A4FCC:
	ldr r2, [sp, #0x2c]
	lsls r4, r2, #2
	ldr r3, [sp, #0x34]
	adds r0, r3, r4
	ldr r5, [r0]
	cmp r5, #0
	beq .L080A5090
	ldr r0, .L080A507C @ =gUnk_081073A0
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp, #0x50]
	ldr r0, .L080A5080 @ =gUnk_08107394
	adds r0, r4, r0
	ldr r2, [r0]
	ldr r0, .L080A5084 @ =gUnk_08107388
	adds r0, r4, r0
	ldr r0, [r0]
	mov sb, r0
	lsls r1, r0, #8
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	orrs r2, r1
	ldr r0, [sp, #0x30]
	strh r2, [r0]
	ldr r1, [sp, #0x50]
	movs r0, #0xfc
	lsls r0, r0, #0x18
	adds r3, r1, r0
	ldr r1, [sp, #0x1c]
	adds r3, r1, r3
	strh r2, [r3]
	ldr r0, .L080A5088 @ =gUnk_081073AC
	adds r0, r4, r0
	ldr r1, [r0]
	mov r2, sp
	mov r0, ip
	cmp r0, #0
	bge .L080A5022
	adds r0, #7
.L080A5022:
	asrs r0, r0, #3
	lsls r0, r0, #3
	mov r3, ip
	subs r0, r3, r0
	strh r0, [r2]
	movs r2, #0xfc
	lsls r2, r2, #0x18
	adds r1, r1, r2
	ldr r3, [sp, #0x1c]
	adds r1, r3, r1
	strh r0, [r1]
	ldr r0, .L080A508C @ =gUnk_081073B8
	adds r0, r4, r0
	ldr r0, [r0]
	mov r2, sp
	adds r1, r7, #0
	cmp r7, #0
	bge .L080A5048
	adds r1, r7, #7
.L080A5048:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r7, r1
	strh r1, [r2]
	movs r4, #0xfc
	lsls r4, r4, #0x18
	adds r0, r0, r4
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	strh r1, [r0]
	ldr r3, [sp, #0x28]
	lsls r0, r3, #1
	adds r0, r5, r0
	mov r4, r8
	str r0, [r4]
	adds r1, r6, #0
	adds r1, #0x6c
	ldr r5, [sp, #0x4c]
	adds r1, r1, r5
	mov r2, sb
	lsls r0, r2, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r0, r0, r3
	str r0, [r1]
	b .L080A5094
	.align 2, 0
.L080A507C: .4byte gUnk_081073A0
.L080A5080: .4byte gUnk_08107394
.L080A5084: .4byte gUnk_08107388
.L080A5088: .4byte gUnk_081073AC
.L080A508C: .4byte gUnk_081073B8
.L080A5090:
	mov r4, r8
	str r5, [r4]
.L080A5094:
	movs r5, #8
	add r8, r5
	ldr r0, [sp, #0x4c]
	adds r0, #8
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x2c]
	adds r1, #1
	str r1, [sp, #0x2c]
	cmp r1, #2
	bls .L080A4FCC
	movs r4, #0
	mov r2, sp
	ldrh r3, [r2, #0x24]
	ldr r2, [sp, #0x48]
	strh r3, [r2]
	ldr r5, [sp, #0x40]
	ldr r2, [r5, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x44]
	bl _call_via_r2
	ldr r7, [sp, #0x38]
	strb r4, [r7]
.L080A50C2:
	adds r4, r6, #0
	adds r4, #0x28
	ldrb r0, [r4]
	cmp r0, #0
	beq .L080A50E0
	adds r0, r6, #0
	adds r0, #0x90
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r0, r6, #0
	mov r1, sl
	bl _call_via_r2
	movs r0, #0
	strb r0, [r4]
.L080A50E0:
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	str r0, [sp, #0x3c]
	cmp r1, #0
	bne .L080A50EE
	b .L080A5200
.L080A50EE:
	ldr r1, [r6, #0x24]
	add r0, sp, #4
	ldr r2, .L080A5124 @ =0x05000020
	movs r3, #0xf0
	lsls r3, r3, #1
	bl func_08008F0C
	add r0, sp, #4
	mov r8, r0
	mov r2, sl
	ldr r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq .L080A5128
	cmp r1, #0
	beq .L080A511A
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080A511A:
	mov r7, sl
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A51FA
	.align 2, 0
.L080A5124: .4byte 0x05000020
.L080A5128:
	str r1, [sp, #0x54]
	movs r0, #1
	str r0, [sp, #0x18]
	mov r0, sl
	ldr r1, [r0]
	ldr r2, [sp, #0x54]
	subs r0, r2, r1
	asrs r4, r0, #4
	str r4, [sp, #0x14]
	add r2, sp, #0x18
	add r0, sp, #0x14
	cmp r4, #1
	bhs .L080A5144
	adds r0, r2, #0
.L080A5144:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A5166
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080A5160
	mov r0, sb
	bl func_080D3BC0
.L080A5160:
	mov r3, sl
	ldr r1, [r3]
	b .L080A516A
.L080A5166:
	movs r0, #0
	mov sb, r0
.L080A516A:
	adds r4, r0, #0
	str r4, [sp, #0x58]
	adds r2, r1, #0
	adds r3, r4, #0
	ldr r4, [sp, #0x54]
	cmp r2, r4
	beq .L080A5192
.L080A5178:
	cmp r3, #0
	beq .L080A5188
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A5188:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x54]
	cmp r2, r5
	bne .L080A5178
.L080A5192:
	adds r4, r3, #0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne .L080A51AE
	cmp r4, #0
	beq .L080A51AA
	adds r0, r4, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A51AA:
	adds r4, #0x10
	b .L080A51D0
.L080A51AE:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080A51CE
.L080A51B6:
	cmp r2, #0
	beq .L080A51C6
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A51C6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A51B6
.L080A51CE:
	adds r4, r2, #0
.L080A51D0:
	mov r0, sl
	ldr r2, [r0, #4]
	ldr r1, [r0]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080A51E2
.L080A51DC:
	adds r0, #0x10
	cmp r0, r2
	bne .L080A51DC
.L080A51E2:
	cmp r1, #0
	beq .L080A51EC
	adds r0, r1, #0
	bl free
.L080A51EC:
	ldr r0, [sp, #0x58]
	add r0, sb
	ldr r1, [sp, #0x58]
	mov r2, sl
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080A51FA:
	movs r0, #0
	ldr r3, [sp, #0x3c]
	strb r0, [r3]
.L080A5200:
	ldr r0, [r6, #4]
	cmp r0, #0x41
	bls .L080A5208
	b .L080A565C
.L080A5208:
	lsls r0, r0, #2
	ldr r1, .L080A5214 @ =.L080A5218
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A5214: .4byte .L080A5218
.L080A5218: @ jump table
	.4byte .L080A54E8 @ case 0
	.4byte .L080A556C @ case 1
	.4byte .L080A565C @ case 2
	.4byte .L080A565C @ case 3
	.4byte .L080A565C @ case 4
	.4byte .L080A565C @ case 5
	.4byte .L080A5458 @ case 6
	.4byte .L080A54A0 @ case 7
	.4byte .L080A5440 @ case 8
	.4byte .L080A544C @ case 9
	.4byte .L080A565C @ case 10
	.4byte .L080A565C @ case 11
	.4byte .L080A565C @ case 12
	.4byte .L080A565C @ case 13
	.4byte .L080A5320 @ case 14
	.4byte .L080A53A4 @ case 15
	.4byte .L080A565C @ case 16
	.4byte .L080A565C @ case 17
	.4byte .L080A565C @ case 18
	.4byte .L080A565C @ case 19
	.4byte .L080A565C @ case 20
	.4byte .L080A565C @ case 21
	.4byte .L080A565C @ case 22
	.4byte .L080A565C @ case 23
	.4byte .L080A565C @ case 24
	.4byte .L080A565C @ case 25
	.4byte .L080A565C @ case 26
	.4byte .L080A565C @ case 27
	.4byte .L080A565C @ case 28
	.4byte .L080A565C @ case 29
	.4byte .L080A565C @ case 30
	.4byte .L080A5434 @ case 31
	.4byte .L080A565C @ case 32
	.4byte .L080A565C @ case 33
	.4byte .L080A565C @ case 34
	.4byte .L080A565C @ case 35
	.4byte .L080A5624 @ case 36
	.4byte .L080A5624 @ case 37
	.4byte .L080A5624 @ case 38
	.4byte .L080A5624 @ case 39
	.4byte .L080A565C @ case 40
	.4byte .L080A565C @ case 41
	.4byte .L080A565C @ case 42
	.4byte .L080A565C @ case 43
	.4byte .L080A565C @ case 44
	.4byte .L080A565C @ case 45
	.4byte .L080A565C @ case 46
	.4byte .L080A565C @ case 47
	.4byte .L080A565C @ case 48
	.4byte .L080A565C @ case 49
	.4byte .L080A565C @ case 50
	.4byte .L080A565C @ case 51
	.4byte .L080A565C @ case 52
	.4byte .L080A565C @ case 53
	.4byte .L080A565C @ case 54
	.4byte .L080A565C @ case 55
	.4byte .L080A565C @ case 56
	.4byte .L080A565C @ case 57
	.4byte .L080A565C @ case 58
	.4byte .L080A565C @ case 59
	.4byte .L080A5428 @ case 60
	.4byte .L080A565C @ case 61
	.4byte .L080A54E8 @ case 62
	.4byte .L080A54E8 @ case 63
	.4byte .L080A5624 @ case 64
	.4byte .L080A5624 @ case 65
.L080A5320:
	adds r4, r6, #0
	adds r4, #0x40
	ldr r5, .L080A5398 @ =gUnk_0810718C
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A5358
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A5352
	movs r2, #1
.L080A5352:
	cmp r2, #0
	beq .L080A5358
	strb r7, [r4]
.L080A5358:
	adds r4, r6, #0
	adds r4, #0x44
	ldr r5, .L080A539C @ =gUnk_08107198
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A5390
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A538A
	movs r2, #1
.L080A538A:
	cmp r2, #0
	beq .L080A5390
	strb r7, [r4]
.L080A5390:
	adds r4, r6, #0
	adds r4, #0x48
	ldr r5, .L080A53A0 @ =gUnk_081071A4
	b .L080A55E2
	.align 2, 0
.L080A5398: .4byte gUnk_0810718C
.L080A539C: .4byte gUnk_08107198
.L080A53A0: .4byte gUnk_081071A4
.L080A53A4:
	adds r4, r6, #0
	adds r4, #0x40
	ldr r5, .L080A541C @ =gUnk_081071B0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A53DC
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A53D6
	movs r2, #1
.L080A53D6:
	cmp r2, #0
	beq .L080A53DC
	strb r7, [r4]
.L080A53DC:
	adds r4, r6, #0
	adds r4, #0x44
	ldr r5, .L080A5420 @ =gUnk_081071BC
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A5414
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A540E
	movs r2, #1
.L080A540E:
	cmp r2, #0
	beq .L080A5414
	strb r7, [r4]
.L080A5414:
	adds r4, r6, #0
	adds r4, #0x48
	ldr r5, .L080A5424 @ =gUnk_081071C8
	b .L080A55E2
	.align 2, 0
.L080A541C: .4byte gUnk_081071B0
.L080A5420: .4byte gUnk_081071BC
.L080A5424: .4byte gUnk_081071C8
.L080A5428:
	adds r4, r6, #0
	adds r4, #0x50
	ldr r5, .L080A5430 @ =gUnk_081071F8
	b .L080A55E2
	.align 2, 0
.L080A5430: .4byte gUnk_081071F8
.L080A5434:
	adds r4, r6, #0
	adds r4, #0x54
	ldr r5, .L080A543C @ =gUnk_081071E0
	b .L080A55E2
	.align 2, 0
.L080A543C: .4byte gUnk_081071E0
.L080A5440:
	adds r4, r6, #0
	adds r4, #0x4c
	ldr r5, .L080A5448 @ =gUnk_081071D4
	b .L080A55E2
	.align 2, 0
.L080A5448: .4byte gUnk_081071D4
.L080A544C:
	adds r4, r6, #0
	adds r4, #0x4c
	ldr r5, .L080A5454 @ =gUnk_081071EC
	b .L080A55E2
	.align 2, 0
.L080A5454: .4byte gUnk_081071EC
.L080A5458:
	adds r4, r6, #0
	adds r4, #0x38
	ldr r5, .L080A5498 @ =gUnk_0810715C
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A5490
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A548A
	movs r2, #1
.L080A548A:
	cmp r2, #0
	beq .L080A5490
	strb r7, [r4]
.L080A5490:
	adds r4, r6, #0
	adds r4, #0x3c
	ldr r5, .L080A549C @ =gUnk_08107168
	b .L080A55E2
	.align 2, 0
.L080A5498: .4byte gUnk_0810715C
.L080A549C: .4byte gUnk_08107168
.L080A54A0:
	adds r4, r6, #0
	adds r4, #0x38
	ldr r5, .L080A54E0 @ =gUnk_08107174
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A54D8
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A54D2
	movs r2, #1
.L080A54D2:
	cmp r2, #0
	beq .L080A54D8
	strb r7, [r4]
.L080A54D8:
	adds r4, r6, #0
	adds r4, #0x3c
	ldr r5, .L080A54E4 @ =gUnk_08107180
	b .L080A55E2
	.align 2, 0
.L080A54E0: .4byte gUnk_08107174
.L080A54E4: .4byte gUnk_08107180
.L080A54E8:
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080A5520
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne .L080A5510
	ldr r1, .L080A550C @ =gUnk_08107144
	adds r0, r6, #0
	movs r2, #0
	mov r3, sl
	bl func_080A5AB0
	b .L080A5520
	.align 2, 0
.L080A550C: .4byte gUnk_08107144
.L080A5510:
	cmp r0, #0xa
	bne .L080A5520
	ldr r1, .L080A5560 @ =gUnk_08107144
	adds r0, r6, #0
	movs r2, #1
	mov r3, sl
	bl func_080A5AB0
.L080A5520:
	adds r4, r6, #0
	adds r4, #0x30
	ldr r5, .L080A5564 @ =gUnk_08107114
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A5558
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A5552
	movs r2, #1
.L080A5552:
	cmp r2, #0
	beq .L080A5558
	strb r7, [r4]
.L080A5558:
	adds r4, r6, #0
	adds r4, #0x34
	ldr r5, .L080A5568 @ =gUnk_0810712C
	b .L080A55E2
	.align 2, 0
.L080A5560: .4byte gUnk_08107144
.L080A5564: .4byte gUnk_08107114
.L080A5568: .4byte gUnk_0810712C
.L080A556C:
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080A55A4
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne .L080A5594
	ldr r1, .L080A5590 @ =gUnk_0810714C
	adds r0, r6, #0
	movs r2, #0
	mov r3, sl
	bl func_080A5AB0
	b .L080A55A4
	.align 2, 0
.L080A5590: .4byte gUnk_0810714C
.L080A5594:
	cmp r0, #0xa
	bne .L080A55A4
	ldr r1, .L080A5618 @ =gUnk_0810714C
	adds r0, r6, #0
	movs r2, #1
	mov r3, sl
	bl func_080A5AB0
.L080A55A4:
	adds r4, r6, #0
	adds r4, #0x30
	ldr r5, .L080A561C @ =gUnk_08107120
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A55DC
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A55D6
	movs r2, #1
.L080A55D6:
	cmp r2, #0
	beq .L080A55DC
	strb r7, [r4]
.L080A55DC:
	adds r4, r6, #0
	adds r4, #0x34
	ldr r5, .L080A5620 @ =gUnk_08107138
.L080A55E2:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A565C
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A560E
	movs r2, #1
.L080A560E:
	cmp r2, #0
	beq .L080A565C
	strb r7, [r4]
	b .L080A565C
	.align 2, 0
.L080A5618: .4byte gUnk_0810714C
.L080A561C: .4byte gUnk_08107120
.L080A5620: .4byte gUnk_08107138
.L080A5624:
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080A565C
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne .L080A564C
	ldr r1, .L080A5648 @ =gUnk_08107154
	adds r0, r6, #0
	movs r2, #0
	mov r3, sl
	bl func_080A5AB0
	b .L080A565C
	.align 2, 0
.L080A5648: .4byte gUnk_08107154
.L080A564C:
	cmp r0, #0xa
	bne .L080A565C
	ldr r1, .L080A566C @ =gUnk_08107154
	adds r0, r6, #0
	movs r2, #1
	mov r3, sl
	bl func_080A5AB0
.L080A565C:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A566C: .4byte gUnk_08107154

	thumb_func_start func_080A5670
func_080A5670: @ 0x080A5670
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldrh r0, [r0, #0x24]
	lsls r0, r0, #1
	mov sb, r0
	ldr r0, .L080A56D4 @ =0x040000D4
	mov sl, r0
	movs r1, #0
.L080A5688:
	lsls r2, r1, #3
	mov r0, r8
	adds r0, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	adds r7, r1, #1
	cmp r0, #0
	beq .L080A56BC
	adds r5, r0, #0
	mov r0, r8
	adds r0, #0x10
	adds r0, r0, r2
	ldr r4, [r0]
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r6, r4, r1
.L080A56A8:
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, .L080A56D8 @ =0x8000001F
	mov r3, sl
	bl func_080D0EBC
	add r5, sb
	adds r4, #0x40
	cmp r4, r6
	bne .L080A56A8
.L080A56BC:
	adds r1, r7, #0
	cmp r1, #2
	bls .L080A5688
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A56D4: .4byte 0x040000D4
.L080A56D8: .4byte 0x8000001F

	thumb_func_start func_080A56DC
func_080A56DC: @ 0x080A56DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, [sp, #0x14]
	ldrh r0, [r5]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	mov r4, r8
	str r0, [r4]
	ldrb r4, [r5, #1]
	lsrs r4, r4, #2
	ldrh r0, [r5, #2]
	ldr r6, .L080A575C @ =0x000003FF
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r4
	lsls r0, r0, #0x10
	mov r4, r8
	str r0, [r4, #8]
	ldrb r4, [r5, #3]
	lsrs r4, r4, #2
	ldrh r0, [r5, #4]
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r4
	lsls r0, r0, #0x10
	mov r4, r8
	str r0, [r4, #0xc]
	mov r0, r8
	adds r0, #0x90
	ldr r0, [r0]
	ldr r4, [r0, #0x14]
	mov r0, r8
	bl _call_via_r4
	ldrb r0, [r5, #1]
	lsrs r0, r0, #2
	ldrh r1, [r5, #2]
	ands r1, r6
	lsls r1, r1, #6
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r0, [r5, #3]
	lsrs r0, r0, #2
	ldrh r2, [r5, #4]
	ands r2, r6
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	bl func_080A5960
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080A575C: .4byte 0x000003FF

	thumb_func_start func_080A5760
func_080A5760: @ 0x080A5760
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r4, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	adds r7, r4, #0
	adds r7, #0x90
	ldr r0, [r7]
	ldr r1, [r0, #0x18]
	adds r0, r4, #0
	bl _call_via_r1
	str r0, [r4, #4]
	bl GetMapData
	adds r5, r0, #0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq .L080A581A
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq .L080A581A
	movs r6, #0
	mov ip, r7
	adds r0, r4, #0
	adds r0, #0x28
	str r0, [sp, #0x24]
	adds r1, r4, #0
	adds r1, #0x30
	str r1, [sp, #0x28]
	adds r2, r4, #0
	adds r2, #0x34
	str r2, [sp, #0x2c]
	adds r0, #0x10
	str r0, [sp, #0x30]
	movs r1, #0x3c
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	movs r0, #0x44
	adds r0, r0, r4
	mov sl, r0
	adds r1, r4, #0
	adds r1, #0x48
	str r1, [sp, #0x10]
	adds r2, r4, #0
	adds r2, #0x4c
	str r2, [sp, #0x14]
	adds r0, r4, #0
	adds r0, #0x50
	str r0, [sp, #0x18]
	adds r1, #0xc
	str r1, [sp, #0x1c]
	adds r2, #0xc
	str r2, [sp, #0x20]
	ldrh r0, [r5, #0x22]
	cmp r6, r0
	bhs .L080A5874
.L080A57E2:
	movs r3, #0
	ldrh r0, [r5, #0x20]
	adds r7, r6, #1
	cmp r3, r0
	bhs .L080A5810
.L080A57EC:
	adds r1, r6, #0
	muls r1, r0, r1
	adds r1, r3, r1
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, [r4, #0x2c]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r5, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r3, #1
	ldrh r0, [r5, #0x20]
	cmp r3, r0
	blo .L080A57EC
.L080A5810:
	adds r6, r7, #0
	ldrh r1, [r5, #0x22]
	cmp r6, r1
	blo .L080A57E2
	b .L080A5874
.L080A581A:
	movs r0, #0
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	movs r0, #0xf2
	lsls r0, r0, #8
	adds r2, r1, r0
	mov r3, sp
	movs r0, #0x90
	adds r0, r0, r4
	mov ip, r0
	adds r0, r4, #0
	adds r0, #0x28
	str r0, [sp, #0x24]
	adds r0, #8
	str r0, [sp, #0x28]
	adds r0, #4
	str r0, [sp, #0x2c]
	adds r0, #4
	str r0, [sp, #0x30]
	movs r0, #0x3c
	adds r0, r0, r4
	mov r8, r0
	movs r0, #0x40
	adds r0, r0, r4
	mov sb, r0
	movs r0, #0x44
	adds r0, r0, r4
	mov sl, r0
	adds r0, r4, #0
	adds r0, #0x48
	str r0, [sp, #0x10]
	adds r0, #4
	str r0, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x18]
	adds r0, #4
	str r0, [sp, #0x1c]
	adds r0, #4
	str r0, [sp, #0x20]
	cmp r1, r2
	beq .L080A5874
.L080A586C:
	ldr r0, [r3]
	stm r1!, {r0}
	cmp r1, r2
	bne .L080A586C
.L080A5874:
	mov r1, ip
	ldr r0, [r1]
	ldr r1, [r0, #0x20]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	ldr r1, [sp, #4]
	bl func_080A5D14
	adds r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl func_080A5DFC
	movs r0, #0
	movs r1, #1
	ldr r2, [sp, #0x24]
	strb r1, [r2]
	ldr r1, [sp, #0x28]
	strb r0, [r1]
	strb r0, [r1, #1]
	ldr r2, [sp, #0x2c]
	strb r0, [r2]
	strb r0, [r2, #1]
	ldr r1, [sp, #0x30]
	strb r0, [r1]
	strb r0, [r1, #1]
	mov r2, r8
	strb r0, [r2]
	strb r0, [r2, #1]
	mov r1, sb
	strb r0, [r1]
	strb r0, [r1, #1]
	mov r2, sl
	strb r0, [r2]
	strb r0, [r2, #1]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	strb r0, [r1, #1]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	strb r0, [r2, #1]
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	strb r0, [r1, #1]
	ldr r2, [sp, #0x1c]
	strb r0, [r2]
	strb r0, [r2, #1]
	ldr r1, [sp, #0x20]
	strb r0, [r1]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A58EC
func_080A58EC: @ 0x080A58EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r4, r2, #0
	mov sb, r3
	movs r0, #0xa
	ldrsh r5, [r1, r0]
	movs r3, #0xe
	ldrsh r2, [r1, r3]
	mov sl, r2
	adds r6, r5, #0
	adds r6, #0x78
	movs r0, #0x50
	add r0, sl
	mov r8, r0
	ldr r0, [r1, #4]
	bl GetMapData
	ldrh r1, [r0, #0x20]
	lsls r1, r1, #3
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #3
	subs r4, r4, r6
	mov r3, sb
	mov r6, r8
	subs r2, r3, r6
	adds r5, r5, r4
	cmp r5, #0
	bge .L080A5930
	movs r5, #0
	b .L080A5938
.L080A5930:
	subs r1, #0xf0
	cmp r5, r1
	ble .L080A5938
	adds r5, r1, #0
.L080A5938:
	mov r3, sl
	adds r1, r3, r2
	cmp r1, #0
	bge .L080A5944
	movs r1, #0
	b .L080A594C
.L080A5944:
	subs r0, #0xa0
	cmp r1, r0
	ble .L080A594C
	adds r1, r0, #0
.L080A594C:
	strh r5, [r7]
	strh r1, [r7, #2]
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080A5960
func_080A5960: @ 0x080A5960
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl func_080A58EC
	ldr r0, [sp]
	str r0, [sp, #4]
	add r2, sp, #4
	adds r3, r2, #0
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	beq .L080A5998
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #0x10
	str r0, [r5, #8]
.L080A5998:
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r1, r0
	beq .L080A59B4
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	movs r1, #2
	ldrsh r0, [r3, r1]
	lsls r0, r0, #0x10
	str r0, [r5, #0xc]
.L080A59B4:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080A59BC
func_080A59BC: @ 0x080A59BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	mov r0, sp
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl func_080A58EC
	ldr r0, [sp]
	str r0, [sp, #4]
	add r5, sp, #4
	cmp r7, #0
	bne .L080A59E8
	movs r7, #1
.L080A59E8:
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	movs r2, #0
	ldrsh r0, [r5, r2]
	subs r3, r0, r1
	movs r0, #0xe
	ldrsh r1, [r6, r0]
	movs r2, #2
	ldrsh r0, [r5, r2]
	subs r2, r0, r1
	cmp r3, #0
	bne .L080A5A04
	cmp r2, #0
	beq .L080A5A84
.L080A5A04:
	adds r1, r3, #0
	muls r1, r3, r1
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, r0
	movs r4, #0
	ldr r3, .L080A5A80 @ =0x3FFFFFFF
	movs r0, #0x84
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0x88
	adds r1, r1, r6
	mov sb, r1
	movs r0, #0x8c
	adds r0, r0, r6
	mov sl, r0
	cmp r2, r3
	bhi .L080A5A34
.L080A5A28:
	adds r4, #1
	lsls r1, r4, #1
	adds r0, r2, #0
	lsls r0, r1
	cmp r0, r3
	bls .L080A5A28
.L080A5A34:
	lsls r0, r4, #1
	lsls r2, r0
	adds r0, r2, #0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r4
	adds r1, r7, #0
	bl __udivsi3
	adds r4, r0, #0
	cmp r4, #0
	bne .L080A5A52
	movs r4, #1
.L080A5A52:
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	ldr r1, [r6, #8]
	subs r0, r0, r1
	adds r1, r4, #0
	bl __divsi3
	mov r2, r8
	str r0, [r2]
	movs r1, #2
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	ldr r1, [r6, #0xc]
	subs r0, r0, r1
	adds r1, r4, #0
	bl __divsi3
	mov r2, sb
	str r0, [r2]
	mov r0, sl
	str r4, [r0]
	b .L080A5A8A
	.align 2, 0
.L080A5A80: .4byte 0x3FFFFFFF
.L080A5A84:
	adds r0, r6, #0
	adds r0, #0x8c
	str r2, [r0]
.L080A5A8A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A5A9C
func_080A5A9C: @ 0x080A5A9C
	push {lr}
	movs r1, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne .L080A5AAA
	movs r1, #1
.L080A5AAA:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start func_080A5AB0
func_080A5AB0: @ 0x080A5AB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r1, #0
	adds r5, r3, #0
	ldr r1, [r4, #4]
	ldrh r3, [r1]
	adds r1, #4
	adds r0, r3, #0
	muls r0, r2, r0
	lsls r0, r0, #5
	adds r1, r1, r0
	ldrh r2, [r4]
	lsls r3, r3, #5
	lsls r2, r2, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	mov r0, sp
	bl func_08008F0C
	mov sb, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080A5B02
	cmp r1, #0
	beq .L080A5AFA
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A5AFA:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080A5BC8
.L080A5B02:
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
	bhs .L080A5B1C
	adds r0, r2, #0
.L080A5B1C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A5B3C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A5B38
	mov r0, r8
	bl func_080D3BC0
.L080A5B38:
	ldr r1, [r5]
	b .L080A5B40
.L080A5B3C:
	movs r0, #0
	mov r8, r0
.L080A5B40:
	adds r4, r0, #0
	str r4, [sp, #0x18]
	adds r2, r1, #0
	adds r3, r4, #0
	cmp r2, sl
	beq .L080A5B64
.L080A5B4C:
	cmp r3, #0
	beq .L080A5B5C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A5B5C:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A5B4C
.L080A5B64:
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne .L080A5B80
	cmp r4, #0
	beq .L080A5B7C
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A5B7C:
	adds r4, #0x10
	b .L080A5BA2
.L080A5B80:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080A5BA0
.L080A5B88:
	cmp r2, #0
	beq .L080A5B98
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A5B98:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A5B88
.L080A5BA0:
	adds r4, r2, #0
.L080A5BA2:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080A5BB2
.L080A5BAC:
	adds r0, #0x10
	cmp r0, r2
	bne .L080A5BAC
.L080A5BB2:
	cmp r1, #0
	beq .L080A5BBC
	adds r0, r1, #0
	bl free
.L080A5BBC:
	ldr r0, [sp, #0x18]
	add r0, r8
	ldr r1, [sp, #0x18]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080A5BC8:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080A5BD8
func_080A5BD8: @ 0x080A5BD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp]
	mov r8, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r0, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	str r0, [sp, #0xc]
	mov r0, r8
	ldrb r6, [r0]
	ldrb r1, [r0, #1]
	mov sb, r1
	adds r0, #4
	str r0, [sp, #0x10]
	movs r3, #0
.L080A5C04:
	lsls r2, r3, #2
	ldr r4, [sp, #0x10]
	adds r1, r2, r4
	ldr r0, [r1]
	adds r3, #1
	mov sl, r3
	cmp r0, #0
	beq .L080A5C52
	movs r4, #0
	cmp r4, sb
	bhs .L080A5C52
	ldr r0, [sp]
	adds r0, #0x10
	adds r3, r0, r2
	str r1, [sp, #0x18]
	movs r5, #0
.L080A5C24:
	ldr r7, [sp, #8]
	adds r0, r7, r4
	ldr r1, [sp, #0xc]
	muls r0, r1, r0
	ldr r2, [r3]
	lsls r0, r0, #1
	ldr r7, [sp, #4]
	lsls r1, r7, #1
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r2, [sp, #0x18]
	ldr r1, [r2]
	adds r1, r5, r1
	lsls r2, r6, #1
	str r3, [sp, #0x14]
	bl memcpy
	lsls r0, r6, #1
	adds r5, r5, r0
	adds r4, #1
	ldr r3, [sp, #0x14]
	cmp r4, sb
	blo .L080A5C24
.L080A5C52:
	mov r3, sl
	cmp r3, #2
	bls .L080A5C04
	mov r3, r8
	ldr r0, [r3, #0x14]
	cmp r0, #0
	beq .L080A5CB0
	ldr r0, [r3, #0x10]
	cmp r0, #0
	beq .L080A5CB0
	movs r2, #0
	cmp r2, sb
	bhs .L080A5CB0
	ldr r4, [sp, #4]
	lsls r4, r4, #2
	mov sl, r4
.L080A5C72:
	adds r1, r2, #0
	muls r1, r6, r1
	mov r7, r8
	ldr r0, [r7, #0x14]
	adds r3, r0, r1
	ldr r0, [sp]
	ldr r1, [r0, #0x2c]
	add r1, sl
	ldr r4, [sp, #8]
	adds r0, r4, r2
	ldr r7, [sp, #0xc]
	muls r0, r7, r0
	lsls r0, r0, #2
	adds r5, r1, r0
	movs r4, #0
	adds r2, #1
	cmp r4, r6
	bhs .L080A5CAC
.L080A5C96:
	ldrb r0, [r3]
	mov r7, r8
	ldr r1, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	stm r5!, {r0}
	adds r3, #1
	adds r4, #1
	cmp r4, r6
	blo .L080A5C96
.L080A5CAC:
	cmp r2, sb
	blo .L080A5C72
.L080A5CB0:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080A5CC0
func_080A5CC0: @ 0x080A5CC0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	bl GetMapData
	adds r5, r0, #0
	movs r6, #0
	adds r4, r7, #0
	adds r4, #0x10
.L080A5CD2:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080A5CE8
	ldr r1, [r4]
	bl Unpack
	b .L080A5CF8
.L080A5CE8:
	ldr r1, [r4]
	ldrh r2, [r5, #0x20]
	ldrh r0, [r5, #0x22]
	lsls r0, r0, #1
	muls r2, r0, r2
	ldr r0, .L080A5D10 @ =0x03FF03FF
	bl func_08008EB8
.L080A5CF8:
	adds r4, #4
	adds r6, #1
	cmp r6, #2
	bls .L080A5CD2
	adds r1, r7, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A5D10: .4byte 0x03FF03FF

	thumb_func_start func_080A5D14
func_080A5D14: @ 0x080A5D14
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r1, #1
	beq .L080A5D66
	cmp r1, #1
	bgt .L080A5D26
	cmp r1, #0
	beq .L080A5D4A
	b .L080A5DA8
.L080A5D26:
	cmp r1, #2
	beq .L080A5D88
	cmp r1, #3
	bne .L080A5DA8
	adds r4, r5, #0
	adds r4, #0x90
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #0
	b .L080A5D80
.L080A5D4A:
	adds r4, r5, #0
	adds r4, #0x90
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #1
	b .L080A5D80
.L080A5D66:
	adds r4, r5, #0
	adds r4, #0x90
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #2
.L080A5D80:
	movs r2, #1
	bl _call_via_r3
	b .L080A5DA8
.L080A5D88:
	adds r4, r5, #0
	adds r4, #0x90
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	bl _call_via_r3
.L080A5DA8:
	adds r1, r5, #0
	adds r1, #0x2a
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A5DB8
func_080A5DB8: @ 0x080A5DB8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	ldr r0, [r4, #4]
	bl GetMapData
	adds r6, r0, #0
	ldr r0, [r6, #4]
	lsls r5, r5, #2
	adds r4, #0x1c
	adds r4, r4, r5
	ldr r1, [r4]
	bl Unpack
	cmp r7, #0
	blt .L080A5DF6
	cmp r7, #2
	ble .L080A5DE4
	cmp r7, #3
	beq .L080A5DEE
	b .L080A5DF6
.L080A5DE4:
	ldr r0, [r6, #4]
	ldr r1, [r4]
	bl Unpack
	b .L080A5DF6
.L080A5DEE:
	ldr r0, [r6, #8]
	ldr r1, [r4]
	bl Unpack
.L080A5DF6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080A5DFC
func_080A5DFC: @ 0x080A5DFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	mov sb, r1
	movs r0, #0
	str r0, [sp]
	movs r0, #0x1f
	ands r1, r0
	mov sb, r1
	mov r0, sl
	ldr r0, [r0, #0x20]
	mov r8, r0
	mov r1, sl
	ldr r7, [r1, #0x1c]
	ldr r6, [r1, #0x24]
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #5
	str r2, [sp, #4]
.L080A5E2A:
	movs r0, #0x20
	rsbs r0, r0, #0
	adds r1, r0, #0
	adds r0, r5, #0
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, .L080A5E90 @ =0xFFFFFF00
	ands r5, r1
	orrs r5, r0
	ldr r0, .L080A5E94 @ =0xFFFFFC1F
	adds r1, r0, #0
	adds r0, r5, #0
	ands r0, r1
	ldr r1, [sp, #4]
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, .L080A5E98 @ =0xFFFF0000
	ands r5, r1
	orrs r5, r0
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r5, #0
	ldr r4, .L080A5E9C @ =func_03000C2C
	bl _call_via_r4
	movs r0, #0x20
	add r8, r0
	adds r7, #0x20
	adds r6, #0x20
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp]
	cmp r1, #0xe
	bls .L080A5E2A
	mov r1, sl
	adds r1, #0x2a
	movs r0, #1
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A5E90: .4byte 0xFFFFFF00
.L080A5E94: .4byte 0xFFFFFC1F
.L080A5E98: .4byte 0xFFFF0000
.L080A5E9C: .4byte func_03000C2C

	thumb_func_start func_080A5EA0
func_080A5EA0: @ 0x080A5EA0
	push {lr}
	ldr r0, [r0, #4]
	bl GetMapData
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A5EB8
func_080A5EB8: @ 0x080A5EB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	cmp r0, #1
	bne .L080A5F68
	ldr r0, [r5]
	cmp r0, #1
	bne .L080A5F68
	ldr r0, [r5, #4]
	cmp r0, #8
	bne .L080A5F68
	ldrb r1, [r2, #1]
	lsrs r1, r1, #2
	ldrh r0, [r2, #2]
	ldr r3, .L080A5F5C @ =0x000003FF
	mov r8, r3
	ands r0, r3
	lsls r0, r0, #6
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge .L080A5EF4
	adds r0, #7
.L080A5EF4:
	asrs r3, r0, #3
	ldrb r1, [r2, #3]
	lsrs r1, r1, #2
	ldrh r0, [r2, #4]
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #6
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge .L080A5F0E
	adds r0, #7
.L080A5F0E:
	asrs r2, r0, #3
	mov r1, sp
	mov r0, sp
	strh r3, [r0]
	strh r2, [r1, #2]
	movs r0, #8
	bl GetMapData
	ldrh r2, [r0, #0x20]
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0x10
	mov r1, sp
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r6, r0, #1
	movs r3, #2
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	lsls r5, r0, #1
	mov r3, r8
	movs r2, #8
.L080A5F3A:
	adds r0, r7, r2
	ldr r0, [r0]
	adds r0, r0, r6
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r1, r3, #0
	ands r1, r0
	cmp r1, r3
	beq .L080A5F60
	adds r0, r1, #0
	subs r0, #0x58
	cmp r0, #0x3c
	bls .L080A5F58
	cmp r1, #0x33
	bhi .L080A5F68
.L080A5F58:
	movs r0, #1
	b .L080A5F6A
	.align 2, 0
.L080A5F5C: .4byte 0x000003FF
.L080A5F60:
	subs r2, #4
	adds r4, #1
	cmp r4, #2
	bls .L080A5F3A
.L080A5F68:
	movs r0, #0
.L080A5F6A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A5F78
func_080A5F78: @ 0x080A5F78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [r5, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov sl, r0
	movs r6, #0
	ldr r0, [sp, #0x24]
	cmp r6, r0
	bhs .L080A5FFE
	lsls r4, r4, #2
	str r4, [sp]
.L080A5FA2:
	movs r4, #0
	adds r1, r6, #1
	mov ip, r1
	cmp r4, sb
	bhs .L080A5FF6
	adds r0, r5, #0
	adds r0, #0x10
	ldr r2, [sp]
	adds r7, r0, r2
.L080A5FB4:
	mov r3, r8
	movs r0, #0
	ldrsh r1, [r3, r0]
	adds r1, r1, r4
	movs r2, #2
	ldrsh r0, [r3, r2]
	adds r0, r0, r6
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	lsls r2, r1, #1
	ldr r0, [r7]
	adds r0, r0, r2
	ldr r2, .L080A6018 @ =0x000003FF
	strh r2, [r0]
	ldr r2, [r5, #0x2c]
	lsls r1, r1, #2
	adds r2, r1, r2
	ldrb r3, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	strb r0, [r2]
	ldr r0, [r5, #0x2c]
	adds r1, r1, r0
	ldrh r2, [r1, #2]
	movs r0, #1
	ands r0, r2
	strh r0, [r1, #2]
	adds r4, #1
	cmp r4, sb
	blo .L080A5FB4
.L080A5FF6:
	mov r6, ip
	ldr r3, [sp, #0x24]
	cmp r6, r3
	blo .L080A5FA2
.L080A5FFE:
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6018: .4byte 0x000003FF

	thumb_func_start func_080A601C
func_080A601C: @ 0x080A601C
	adds r0, #0x58
	movs r1, #0x14
	strb r1, [r0]
	bx lr

	thumb_func_start func_080A6024
func_080A6024: @ 0x080A6024
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0x24
	blt .L080A6064
	cmp r0, #0x25
	ble .L080A603A
	cmp r0, #0x40
	beq .L080A6054
	b .L080A6064
.L080A603A:
	ldr r1, .L080A604C @ =gUnk_08106C8C
	ldr r0, .L080A6050 @ =gUnk_081073C4
	adds r0, r2, r0
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r3, #8
	bl func_080A5BD8
	b .L080A6064
	.align 2, 0
.L080A604C: .4byte gUnk_08106C8C
.L080A6050: .4byte gUnk_081073C4
.L080A6054:
	ldr r1, .L080A6074 @ =gUnk_08106C8C
	ldr r0, .L080A6078 @ =gUnk_081073CC
	adds r0, r2, r0
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r3, #4
	bl func_080A5BD8
.L080A6064:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6074: .4byte gUnk_08106C8C
.L080A6078: .4byte gUnk_081073CC

	thumb_func_start func_080A607C
func_080A607C: @ 0x080A607C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0x27
	beq .L080A60CC
	cmp r0, #0x27
	bgt .L080A6092
	cmp r0, #0x26
	beq .L080A6098
	b .L080A6120
.L080A6092:
	cmp r0, #0x41
	beq .L080A6110
	b .L080A6120
.L080A6098:
	cmp r2, #0xf
	bls .L080A60BC
	ldr r1, .L080A60B4 @ =gUnk_08106C74
	ldr r3, .L080A60B8 @ =gUnk_081073D0
	adds r0, r2, #0
	subs r0, #0x10
	lsls r0, r0, #1
	adds r2, r0, r3
	ldrb r2, [r2]
	adds r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	b .L080A6100
	.align 2, 0
.L080A60B4: .4byte gUnk_08106C74
.L080A60B8: .4byte gUnk_081073D0
.L080A60BC:
	ldr r1, .L080A60C4 @ =gUnk_08106C74
	ldr r0, .L080A60C8 @ =gUnk_081073F0
	b .L080A60F4
	.align 2, 0
.L080A60C4: .4byte gUnk_08106C74
.L080A60C8: .4byte gUnk_081073F0
.L080A60CC:
	cmp r2, #0xf
	bls .L080A60F0
	ldr r1, .L080A60E8 @ =gUnk_08106C74
	ldr r3, .L080A60EC @ =gUnk_081073D0
	adds r0, r2, #0
	subs r0, #0x10
	lsls r0, r0, #1
	adds r2, r0, r3
	ldrb r2, [r2]
	adds r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	b .L080A6100
	.align 2, 0
.L080A60E8: .4byte gUnk_08106C74
.L080A60EC: .4byte gUnk_081073D0
.L080A60F0:
	ldr r1, .L080A6108 @ =gUnk_08106C74
	ldr r0, .L080A610C @ =gUnk_08107400
.L080A60F4:
	lsls r3, r2, #1
	adds r2, r3, r0
	ldrb r2, [r2]
	adds r0, #1
	adds r3, r3, r0
	ldrb r3, [r3]
.L080A6100:
	adds r0, r4, #0
	bl func_080A5BD8
	b .L080A6120
	.align 2, 0
.L080A6108: .4byte gUnk_08106C74
.L080A610C: .4byte gUnk_08107400
.L080A6110:
	ldr r1, .L080A6130 @ =gUnk_08106C74
	ldr r0, .L080A6134 @ =gUnk_08107420
	adds r0, r2, r0
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r3, #5
	bl func_080A5BD8
.L080A6120:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6130: .4byte gUnk_08106C74
.L080A6134: .4byte gUnk_08107420

	thumb_func_start func_080A6138
func_080A6138: @ 0x080A6138
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A6160
	cmp r0, #0x2a
	bgt .L080A614C
	cmp r0, #0x29
	beq .L080A6152
	b .L080A6180
.L080A614C:
	cmp r0, #0x2b
	beq .L080A6174
	b .L080A6180
.L080A6152:
	ldr r1, .L080A615C @ =gUnk_08106A7C
	adds r0, r4, #0
	movs r2, #0x19
	b .L080A6166
	.align 2, 0
.L080A615C: .4byte gUnk_08106A7C
.L080A6160:
	ldr r1, .L080A6170 @ =gUnk_08106A7C
	adds r0, r4, #0
	movs r2, #0x28
.L080A6166:
	movs r3, #0xf
	bl func_080A5BD8
	b .L080A6180
	.align 2, 0
.L080A6170: .4byte gUnk_08106A7C
.L080A6174:
	ldr r1, .L080A6190 @ =gUnk_08106A7C
	adds r0, r4, #0
	movs r2, #0x36
	movs r3, #0xf
	bl func_080A5BD8
.L080A6180:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6190: .4byte gUnk_08106A7C

	thumb_func_start func_080A6194
func_080A6194: @ 0x080A6194
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A61BC
	cmp r0, #0x2a
	bgt .L080A61A8
	cmp r0, #0x29
	beq .L080A61AE
	b .L080A61DC
.L080A61A8:
	cmp r0, #0x2b
	beq .L080A61D0
	b .L080A61DC
.L080A61AE:
	ldr r1, .L080A61B8 @ =gUnk_08106A94
	adds r0, r4, #0
	movs r2, #0x19
	b .L080A61C2
	.align 2, 0
.L080A61B8: .4byte gUnk_08106A94
.L080A61BC:
	ldr r1, .L080A61CC @ =gUnk_08106A94
	adds r0, r4, #0
	movs r2, #0x28
.L080A61C2:
	movs r3, #0xf
	bl func_080A5BD8
	b .L080A61DC
	.align 2, 0
.L080A61CC: .4byte gUnk_08106A94
.L080A61D0:
	ldr r1, .L080A61EC @ =gUnk_08106A94
	adds r0, r4, #0
	movs r2, #0x36
	movs r3, #0xf
	bl func_080A5BD8
.L080A61DC:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A61EC: .4byte gUnk_08106A94

	thumb_func_start func_080A61F0
func_080A61F0: @ 0x080A61F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A6200
	cmp r0, #0x2b
	beq .L080A6214
	b .L080A6220
.L080A6200:
	ldr r1, .L080A6210 @ =gUnk_08106AAC
	adds r0, r4, #0
	movs r2, #0xb
	movs r3, #3
	bl func_080A5BD8
	b .L080A6220
	.align 2, 0
.L080A6210: .4byte gUnk_08106AAC
.L080A6214:
	ldr r1, .L080A6230 @ =gUnk_08106AAC
	adds r0, r4, #0
	movs r2, #0x13
	movs r3, #3
	bl func_080A5BD8
.L080A6220:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6230: .4byte gUnk_08106AAC

	thumb_func_start func_080A6234
func_080A6234: @ 0x080A6234
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A6244
	cmp r0, #0x2b
	beq .L080A6258
	b .L080A6264
.L080A6244:
	ldr r1, .L080A6254 @ =gUnk_08106AC4
	adds r0, r4, #0
	movs r2, #0xb
	movs r3, #3
	bl func_080A5BD8
	b .L080A6264
	.align 2, 0
.L080A6254: .4byte gUnk_08106AC4
.L080A6258:
	ldr r1, .L080A6274 @ =gUnk_08106AC4
	adds r0, r4, #0
	movs r2, #0x13
	movs r3, #3
	bl func_080A5BD8
.L080A6264:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6274: .4byte gUnk_08106AC4

	thumb_func_start func_080A6278
func_080A6278: @ 0x080A6278
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A6288
	cmp r0, #0x2b
	beq .L080A629C
	b .L080A62A8
.L080A6288:
	ldr r1, .L080A6298 @ =gUnk_08106ADC
	adds r0, r4, #0
	movs r2, #0xf
	movs r3, #2
	bl func_080A5BD8
	b .L080A62A8
	.align 2, 0
.L080A6298: .4byte gUnk_08106ADC
.L080A629C:
	ldr r1, .L080A62B8 @ =gUnk_08106ADC
	adds r0, r4, #0
	movs r2, #0x17
	movs r3, #2
	bl func_080A5BD8
.L080A62A8:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A62B8: .4byte gUnk_08106ADC

	thumb_func_start func_080A62BC
func_080A62BC: @ 0x080A62BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A62CC
	cmp r0, #0x2b
	beq .L080A62E0
	b .L080A62EC
.L080A62CC:
	ldr r1, .L080A62DC @ =gUnk_08106AF4
	adds r0, r4, #0
	movs r2, #0xf
	movs r3, #2
	bl func_080A5BD8
	b .L080A62EC
	.align 2, 0
.L080A62DC: .4byte gUnk_08106AF4
.L080A62E0:
	ldr r1, .L080A62FC @ =gUnk_08106AF4
	adds r0, r4, #0
	movs r2, #0x17
	movs r3, #2
	bl func_080A5BD8
.L080A62EC:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A62FC: .4byte gUnk_08106AF4

	thumb_func_start func_080A6300
func_080A6300: @ 0x080A6300
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A6328
	cmp r0, #0x2a
	bgt .L080A6314
	cmp r0, #0x29
	beq .L080A631A
	b .L080A6350
.L080A6314:
	cmp r0, #0x2b
	beq .L080A633C
	b .L080A6350
.L080A631A:
	ldr r1, .L080A6324 @ =gUnk_08106B3C
	adds r0, r4, #0
	movs r2, #1
	b .L080A632E
	.align 2, 0
.L080A6324: .4byte gUnk_08106B3C
.L080A6328:
	ldr r1, .L080A6338 @ =gUnk_08106B3C
	adds r0, r4, #0
	movs r2, #0x10
.L080A632E:
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A6348
	.align 2, 0
.L080A6338: .4byte gUnk_08106B3C
.L080A633C:
	ldr r1, .L080A6358 @ =gUnk_08106B3C
	adds r0, r4, #0
	movs r2, #0x18
	movs r3, #0x11
	bl func_080A5BD8
.L080A6348:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080A6350:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6358: .4byte gUnk_08106B3C

	thumb_func_start func_080A635C
func_080A635C: @ 0x080A635C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A6384
	cmp r0, #0x2a
	bgt .L080A6370
	cmp r0, #0x29
	beq .L080A6376
	b .L080A63AC
.L080A6370:
	cmp r0, #0x2b
	beq .L080A6398
	b .L080A63AC
.L080A6376:
	ldr r1, .L080A6380 @ =gUnk_08106B24
	adds r0, r4, #0
	movs r2, #1
	b .L080A638A
	.align 2, 0
.L080A6380: .4byte gUnk_08106B24
.L080A6384:
	ldr r1, .L080A6394 @ =gUnk_08106B24
	adds r0, r4, #0
	movs r2, #0x10
.L080A638A:
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A63A4
	.align 2, 0
.L080A6394: .4byte gUnk_08106B24
.L080A6398:
	ldr r1, .L080A63B4 @ =gUnk_08106B24
	adds r0, r4, #0
	movs r2, #0x18
	movs r3, #0x11
	bl func_080A5BD8
.L080A63A4:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080A63AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A63B4: .4byte gUnk_08106B24

	thumb_func_start func_080A63B8
func_080A63B8: @ 0x080A63B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x25
	beq .L080A63F8
	cmp r0, #0x25
	bgt .L080A63CC
	cmp r0, #0x24
	beq .L080A63E4
	b .L080A6414
.L080A63CC:
	cmp r0, #0x40
	bne .L080A6414
	ldr r1, .L080A63E0 @ =gUnk_081070C4
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0xd
	bl func_080A5BD8
	b .L080A640C
	.align 2, 0
.L080A63E0: .4byte gUnk_081070C4
.L080A63E4:
	ldr r1, .L080A63F4 @ =gUnk_081070C4
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A640C
	.align 2, 0
.L080A63F4: .4byte gUnk_081070C4
.L080A63F8:
	ldr r2, .L080A641C @ =gUnk_081070C4
	movs r3, #0xd
	cmp r1, #0
	bne .L080A6402
	movs r3, #0x11
.L080A6402:
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #1
	bl func_080A5BD8
.L080A640C:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080A6414:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A641C: .4byte gUnk_081070C4

	thumb_func_start func_080A6420
func_080A6420: @ 0x080A6420
	push {lr}
	sub sp, #4
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl func_0803A8A4
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
.L080A643C:
	.byte 0x70, 0xB5, 0x06, 0x1C
	.byte 0x0C, 0x1C, 0x15, 0x1C, 0x70, 0x68, 0xFE, 0xF7, 0x27, 0xF9, 0x00, 0x8C, 0x68, 0x43, 0x24, 0x18
	.byte 0xA4, 0x00, 0xF0, 0x6A, 0x00, 0x19, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x40, 0x68, 0x70, 0x47
	.byte 0x00, 0x68, 0x70, 0x47, 0x0E, 0x21, 0x40, 0x5E, 0x70, 0x47, 0x00, 0x00, 0x0A, 0x21, 0x40, 0x5E
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_080A6474
func_080A6474: @ 0x080A6474
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl func_080A4A94
	adds r1, r5, #0
	adds r1, #0x90
	ldr r0, .L080A64B4 @ =vtable_unk_080E831C
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x94
	str r4, [r0]
	adds r0, #4
	movs r4, #0
	strb r4, [r0]
	adds r0, #4
	bl func_080E43FC
	adds r0, r5, #0
	adds r0, #0xb4
	strb r4, [r0]
	strb r4, [r0, #1]
	strb r4, [r0, #2]
	adds r0, #4
	strb r4, [r0]
	strb r4, [r0, #1]
	strb r4, [r0, #2]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L080A64B4: .4byte vtable_unk_080E831C

	thumb_func_start func_080A64B8
func_080A64B8: @ 0x080A64B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl func_080A4BEC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r1, [r0]
	ldr r0, [r4]
	cmp r0, #6
	bne .L080A6510
	ldr r2, .L080A6518 @ =0x000021A0
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r3, r0, #0x1e
	cmp r3, #1
	bne .L080A6510
	adds r2, r4, #0
	adds r2, #0xb4
	ldr r1, .L080A651C @ =gUnk_08107338
	ldrb r0, [r2, #2]
	adds r0, #1
	movs r6, #0
	strb r0, [r2, #2]
	movs r5, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A64F8
	strb r6, [r2, #2]
	strb r3, [r2, #1]
.L080A64F8:
	adds r2, r4, #0
	adds r2, #0xb8
	ldr r1, .L080A6520 @ =gUnk_08107344
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	ands r0, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A6510
	strb r6, [r2, #2]
	strb r3, [r2, #1]
.L080A6510:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6518: .4byte 0x000021A0
.L080A651C: .4byte gUnk_08107338
.L080A6520: .4byte gUnk_08107344

	thumb_func_start func_080A6524
func_080A6524: @ 0x080A6524
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	bl func_080A4F50
	adds r4, r5, #0
	adds r4, #0x94
	ldr r0, [r4]
	ldr r1, [r5]
	cmp r1, #6
	beq .L080A65A0
	cmp r1, #0x1d
	bne .L080A662A
	adds r1, r5, #0
	adds r1, #0x98
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080A662A
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl HasStocking__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A658C
	ldr r0, [r4]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetStockingArticleId__C9FarmHouse
	cmp r0, #0x5f
	bne .L080A6580
	ldr r1, .L080A657C @ =gUnk_0810710C
	adds r0, r5, #0
	movs r2, #1
	b .L080A6592
	.align 2, 0
.L080A657C: .4byte gUnk_0810710C
.L080A6580:
	ldr r1, .L080A6588 @ =gUnk_0810710C
	adds r0, r5, #0
	movs r2, #2
	b .L080A6592
	.align 2, 0
.L080A6588: .4byte gUnk_0810710C
.L080A658C:
	ldr r1, .L080A659C @ =gUnk_0810710C
	adds r0, r5, #0
	movs r2, #0
.L080A6592:
	adds r3, r6, #0
	bl func_080A5AB0
	b .L080A662A
	.align 2, 0
.L080A659C: .4byte gUnk_0810710C
.L080A65A0:
	ldr r1, .L080A6634 @ =0x000021A0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A662A
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r7, .L080A6638 @ =gUnk_08107338
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A65EC
	movs r0, #0
	mov r8, r0
	mov r1, r8
	strb r1, [r4, #1]
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r6, #0
	bl func_080A5AB0
	ldr r0, [r7, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A65E4
	movs r2, #1
.L080A65E4:
	cmp r2, #0
	beq .L080A65EC
	mov r0, r8
	strb r0, [r4]
.L080A65EC:
	adds r4, r5, #0
	adds r4, #0xb8
	ldr r7, .L080A663C @ =gUnk_08107344
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A662A
	movs r1, #0
	mov r8, r1
	mov r0, r8
	strb r0, [r4, #1]
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r6, #0
	bl func_080A5AB0
	ldr r0, [r7, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A6622
	movs r2, #1
.L080A6622:
	cmp r2, #0
	beq .L080A662A
	mov r1, r8
	strb r1, [r4]
.L080A662A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6634: .4byte 0x000021A0
.L080A6638: .4byte gUnk_08107338
.L080A663C: .4byte gUnk_08107344

	thumb_func_start func_080A6640
func_080A6640: @ 0x080A6640
	push {r4, lr}
	adds r4, r0, #0
	bl func_080A5760
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	adds r4, #0xb8
	strb r0, [r4]
	strb r0, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A6660
func_080A6660: @ 0x080A6660
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	bl func_080A5CC0
	mov r0, r8
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0x10
	bl func_0800E324
	adds r6, r0, #0
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0x2e
	bgt .L080A668E
	cmp r0, #0x2d
	bge .L080A6694
	b .L080A669A
.L080A668E:
	cmp r0, #0x2f
	beq .L080A6698
	b .L080A669A
.L080A6694:
	movs r6, #1
	b .L080A669A
.L080A6698:
	movs r6, #3
.L080A669A:
	mov r0, r8
	adds r0, #0x94
	ldr r4, [r0]
	ldr r2, .L080A66D8 @ =0x0000214C
	adds r7, r4, r2
	mov r3, r8
	ldr r2, [r3]
	mov sb, r0
	cmp r2, #6
	beq .L080A66E4
	cmp r2, #6
	ble .L080A66B4
	b .L080A6806
.L080A66B4:
	cmp r2, #1
	beq .L080A66BA
	b .L080A6806
.L080A66BA:
	ldr r1, .L080A66DC @ =0x0000219C
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq .L080A66CA
	b .L080A6806
.L080A66CA:
	ldr r1, .L080A66E0 @ =gUnk_08106D34
	mov r0, r8
	movs r2, #0x17
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A6806
	.align 2, 0
.L080A66D8: .4byte 0x0000214C
.L080A66DC: .4byte 0x0000219C
.L080A66E0: .4byte gUnk_08106D34
.L080A66E4:
	ldr r2, .L080A681C @ =0x000021A9
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A66FE
	ldr r1, .L080A6820 @ =gUnk_0810725C
	mov r0, r8
	movs r2, #0x13
	movs r3, #0x11
	bl func_080A5BD8
.L080A66FE:
	ldr r3, .L080A6824 @ =0x000021A0
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A6718
	ldr r1, .L080A6828 @ =gUnk_0810730C
	mov r0, r8
	movs r2, #0x16
	movs r3, #0x10
	bl func_080A5BD8
.L080A6718:
	ldr r0, .L080A682C @ =0x0000219A
	adds r5, r4, r0
	ldrh r0, [r5]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A6732
	ldr r1, .L080A6830 @ =gUnk_08107230
	mov r0, r8
	movs r2, #0x13
	movs r3, #0x11
	bl func_080A5BD8
.L080A6732:
	ldr r1, .L080A6834 @ =0x0000219B
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A674C
	ldr r1, .L080A6830 @ =gUnk_08107230
	mov r0, r8
	movs r2, #0x13
	movs r3, #0x11
	bl func_080A5BD8
.L080A674C:
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A676E
	ldr r1, .L080A6838 @ =gUnk_08107204
	mov r0, r8
	movs r2, #8
	movs r3, #0xc
	bl func_080A5BD8
	ldr r1, .L080A683C @ =gUnk_081072B4
	mov r0, r8
	movs r2, #0x11
	movs r3, #0xf
	bl func_080A5BD8
.L080A676E:
	ldr r2, .L080A6840 @ =0x0000219D
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A6788
	ldr r1, .L080A6844 @ =gUnk_08107288
	mov r0, r8
	movs r2, #0x17
	movs r3, #0x17
	bl func_080A5BD8
.L080A6788:
	ldr r3, .L080A6848 @ =0x0000219E
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A67A2
	ldr r1, .L080A6838 @ =gUnk_08107204
	mov r0, r8
	movs r2, #8
	movs r3, #0xc
	bl func_080A5BD8
.L080A67A2:
	ldr r1, .L080A684C @ =0x000021A1
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A67C8
	ldr r1, .L080A6838 @ =gUnk_08107204
	mov r0, r8
	movs r2, #8
	movs r3, #0xc
	bl func_080A5BD8
	ldr r1, .L080A683C @ =gUnk_081072B4
	mov r0, r8
	movs r2, #0x11
	movs r3, #0xf
	bl func_080A5BD8
.L080A67C8:
	ldr r2, .L080A6850 @ =0x000021A2
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A67E2
	ldr r1, .L080A6838 @ =gUnk_08107204
	mov r0, r8
	movs r2, #8
	movs r3, #0xc
	bl func_080A5BD8
.L080A67E2:
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsrs r0, r0, #6
	cmp r0, #1
	bne .L080A6806
	ldr r1, .L080A6854 @ =gUnk_081072E0
	mov r0, r8
	movs r2, #0x1b
	movs r3, #0x1a
	bl func_080A5BD8
	ldr r1, .L080A6830 @ =gUnk_08107230
	mov r0, r8
	movs r2, #0x13
	movs r3, #0x11
	bl func_080A5BD8
.L080A6806:
	mov r3, r8
	ldr r2, [r3, #4]
	cmp r2, #0x3d
	bls .L080A6812
	bl .L080A746E
.L080A6812:
	lsls r0, r2, #2
	ldr r1, .L080A6858 @ =.L080A685C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A681C: .4byte 0x000021A9
.L080A6820: .4byte gUnk_0810725C
.L080A6824: .4byte 0x000021A0
.L080A6828: .4byte gUnk_0810730C
.L080A682C: .4byte 0x0000219A
.L080A6830: .4byte gUnk_08107230
.L080A6834: .4byte 0x0000219B
.L080A6838: .4byte gUnk_08107204
.L080A683C: .4byte gUnk_081072B4
.L080A6840: .4byte 0x0000219D
.L080A6844: .4byte gUnk_08107288
.L080A6848: .4byte 0x0000219E
.L080A684C: .4byte 0x000021A1
.L080A6850: .4byte 0x000021A2
.L080A6854: .4byte gUnk_081072E0
.L080A6858: .4byte .L080A685C
.L080A685C: @ jump table
	.4byte .L080A6C18 @ case 0
	.4byte .L080A6D78 @ case 1
	.4byte .L080A746E @ case 2
	.4byte .L080A746E @ case 3
	.4byte .L080A746E @ case 4
	.4byte .L080A746E @ case 5
	.4byte .L080A6BD4 @ case 6
	.4byte .L080A6BF0 @ case 7
	.4byte .L080A6954 @ case 8
	.4byte .L080A6988 @ case 9
	.4byte .L080A746E @ case 10
	.4byte .L080A746E @ case 11
	.4byte .L080A746E @ case 12
	.4byte .L080A746E @ case 13
	.4byte .L080A7428 @ case 14
	.4byte .L080A7448 @ case 15
	.4byte .L080A746E @ case 16
	.4byte .L080A746E @ case 17
	.4byte .L080A746E @ case 18
	.4byte .L080A69A8 @ case 19
	.4byte .L080A746E @ case 20
	.4byte .L080A746E @ case 21
	.4byte .L080A69B4 @ case 22
	.4byte .L080A69C0 @ case 23
	.4byte .L080A69F4 @ case 24
	.4byte .L080A6B20 @ case 25
	.4byte .L080A746E @ case 26
	.4byte .L080A746E @ case 27
	.4byte .L080A746E @ case 28
	.4byte .L080A746E @ case 29
	.4byte .L080A69D4 @ case 30
	.4byte .L080A6B0C @ case 31
	.4byte .L080A746E @ case 32
	.4byte .L080A746E @ case 33
	.4byte .L080A746E @ case 34
	.4byte .L080A746E @ case 35
	.4byte .L080A7260 @ case 36
	.4byte .L080A72B2 @ case 37
	.4byte .L080A733C @ case 38
	.4byte .L080A7396 @ case 39
	.4byte .L080A746E @ case 40
	.4byte .L080A6EE4 @ case 41
	.4byte .L080A6FA0 @ case 42
	.4byte .L080A70DC @ case 43
	.4byte .L080A746E @ case 44
	.4byte .L080A746E @ case 45
	.4byte .L080A746E @ case 46
	.4byte .L080A746E @ case 47
	.4byte .L080A69E8 @ case 48
	.4byte .L080A746E @ case 49
	.4byte .L080A746E @ case 50
	.4byte .L080A746E @ case 51
	.4byte .L080A746E @ case 52
	.4byte .L080A746E @ case 53
	.4byte .L080A746E @ case 54
	.4byte .L080A746E @ case 55
	.4byte .L080A6A68 @ case 56
	.4byte .L080A6A68 @ case 57
	.4byte .L080A6A68 @ case 58
	.4byte .L080A6A68 @ case 59
	.4byte .L080A746E @ case 60
	.4byte .L080A6A68 @ case 61
.L080A6954:
	cmp r6, #1
	bne .L080A6964
	ldr r1, .L080A6980 @ =gUnk_08106D1C
	mov r0, r8
	movs r2, #0xa
	movs r3, #0x19
	bl func_080A5BD8
.L080A6964:
	mov r1, sb
	ldr r0, [r1]
	bl func_08010E58
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A6976
	bl .L080A746E
.L080A6976:
	ldr r1, .L080A6984 @ =gUnk_08106CEC
	mov r0, r8
	movs r2, #0x17
	b .L080A6ED6
	.align 2, 0
.L080A6980: .4byte gUnk_08106D1C
.L080A6984: .4byte gUnk_08106CEC
.L080A6988:
	mov r2, sb
	ldr r0, [r2]
	bl func_08010E58
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A699A
	bl .L080A746E
.L080A699A:
	ldr r1, .L080A69A4 @ =gUnk_08106D04
	mov r0, r8
	movs r2, #0x17
	b .L080A6ED6
	.align 2, 0
.L080A69A4: .4byte gUnk_08106D04
.L080A69A8:
	mov r0, r8
	movs r1, #0
	bl func_080AA850
	bl .L080A746E
.L080A69B4:
	mov r0, r8
	movs r1, #1
	bl func_080AA850
	bl .L080A746E
.L080A69C0:
	mov r0, r8
	movs r1, #2
	bl func_080AA850
	mov r0, r8
	movs r1, #3
	bl func_080AA850
	bl .L080A746E
.L080A69D4:
	mov r0, r8
	movs r1, #6
	bl func_080AA850
	mov r0, r8
	movs r1, #7
	bl func_080AA850
	bl .L080A746E
.L080A69E8:
	mov r0, r8
	movs r1, #8
	bl func_080AA850
	bl .L080A746E
.L080A69F4:
	mov r3, sb
	ldr r1, [r3]
	ldr r2, .L080A6A60 @ =0x00002186
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne .L080A6A4A
	ldrb r2, [r1, #0x10]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	ldrb r3, [r1, #0x11]
	lsls r0, r3, #0x1e
	lsrs r0, r0, #0x1e
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1b
	adds r2, #6
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r3, r1
	cmp r1, #6
	bls .L080A6A36
	adds r0, r1, #0
	movs r1, #7
	bl __umodsi3
	adds r1, r0, #0
.L080A6A36:
	movs r0, #7
	ands r1, r0
	cmp r1, #3
	bne .L080A6A4A
	ldr r1, .L080A6A64 @ =gUnk_08106E0C
	mov r0, r8
	movs r2, #0x28
	movs r3, #0x1d
	bl func_080A5BD8
.L080A6A4A:
	mov r0, r8
	movs r1, #4
	bl func_080AA850
	mov r0, r8
	movs r1, #5
	bl func_080AA850
	bl .L080A746E
	.align 2, 0
.L080A6A60: .4byte 0x00002186
.L080A6A64: .4byte gUnk_08106E0C
.L080A6A68:
	adds r0, r2, #0
	subs r0, #0x38
	cmp r0, #5
	bhi .L080A6AAA
	lsls r0, r0, #2
	ldr r1, .L080A6A7C @ =.L080A6A80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A6A7C: .4byte .L080A6A80
.L080A6A80: @ jump table
	.4byte .L080A6AAA @ case 0
	.4byte .L080A6AA4 @ case 1
	.4byte .L080A6A9E @ case 2
	.4byte .L080A6A98 @ case 3
	.4byte .L080A6AAA @ case 4
	.4byte .L080A6AAA @ case 5
.L080A6A98:
	movs r0, #7
	mov sl, r0
	b .L080A6AAE
.L080A6A9E:
	movs r1, #7
	mov sl, r1
	b .L080A6AAE
.L080A6AA4:
	movs r2, #7
	mov sl, r2
	b .L080A6AAE
.L080A6AAA:
	movs r3, #7
	mov sl, r3
.L080A6AAE:
	mov r1, sb
	ldr r0, [r1]
	ldr r2, .L080A6ABC @ =0x00002E58
	adds r6, r0, r2
	movs r7, #0
	b .L080A6AFE
	.align 2, 0
.L080A6ABC: .4byte 0x00002E58
.L080A6AC0:
	movs r5, #0
	adds r3, r7, #1
	mov sb, r3
	b .L080A6AF2
.L080A6AC8:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl func_0809D8D4
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl func_0809E0AC
	lsls r1, r5, #1
	adds r1, #2
	lsls r2, r7, #1
	add r2, sl
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl func_080AA540
	adds r5, #1
.L080A6AF2:
	adds r0, r6, #0
	bl func_0809D8A4
	cmp r5, r0
	blo .L080A6AC8
	mov r7, sb
.L080A6AFE:
	adds r0, r6, #0
	bl func_0809D8B8
	cmp r7, r0
	blo .L080A6AC0
	bl .L080A746E
.L080A6B0C:
	mov r0, r8
	movs r1, #0xa
	bl func_080AA850
	mov r0, r8
	movs r1, #0xb
	bl func_080AA850
	bl .L080A746E
.L080A6B20:
	mov r0, r8
	movs r1, #9
	bl func_080AA850
	mov r1, sb
	ldr r0, [r1]
	ldr r2, .L080A6B40 @ =0x00001C38
	adds r0, r0, r2
	bl GetUpgradeLevel__C8Rucksack
	cmp r0, #0
	beq .L080A6B44
	cmp r0, #1
	beq .L080A6B58
	b .L080A6B74
	.align 2, 0
.L080A6B40: .4byte 0x00001C38
.L080A6B44:
	ldr r1, .L080A6B54 @ =gUnk_08106D7C
	mov r0, r8
	movs r2, #0x21
	movs r3, #0x14
	bl func_080A5BD8
	b .L080A6B74
	.align 2, 0
.L080A6B54: .4byte gUnk_08106D7C
.L080A6B58:
	mov r3, sb
	ldr r0, [r3]
	ldr r1, .L080A6B9C @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E9A0
	cmp r0, #7
	bne .L080A6B74
	ldr r1, .L080A6BA0 @ =gUnk_08106D7C
	mov r0, r8
	movs r2, #0x21
	movs r3, #0x14
	bl func_080A5BD8
.L080A6B74:
	mov r0, r8
	bl func_080AA8F0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A6B8C
	ldr r1, .L080A6BA4 @ =gUnk_08106D94
	mov r0, r8
	movs r2, #0x21
	movs r3, #0x17
	bl func_080A5BD8
.L080A6B8C:
	cmp r6, #1
	beq .L080A6BB8
	cmp r6, #1
	bgt .L080A6BA8
	cmp r6, #0
	beq .L080A6BB0
	bl .L080A746E
	.align 2, 0
.L080A6B9C: .4byte 0x00001BD8
.L080A6BA0: .4byte gUnk_08106D7C
.L080A6BA4: .4byte gUnk_08106D94
.L080A6BA8:
	cmp r6, #2
	beq .L080A6BC0
	bl .L080A746E
.L080A6BB0:
	ldr r1, .L080A6BB4 @ =gUnk_08106DC4
	b .L080A6BC2
	.align 2, 0
.L080A6BB4: .4byte gUnk_08106DC4
.L080A6BB8:
	ldr r1, .L080A6BBC @ =gUnk_08106DDC
	b .L080A6BC2
	.align 2, 0
.L080A6BBC: .4byte gUnk_08106DDC
.L080A6BC0:
	ldr r1, .L080A6BD0 @ =gUnk_08106DF4
.L080A6BC2:
	mov r0, r8
	movs r2, #0xc
	movs r3, #0x14
	bl func_080A5BD8
	bl .L080A746E
	.align 2, 0
.L080A6BD0: .4byte gUnk_08106DF4
.L080A6BD4:
	mov r2, sb
	ldr r0, [r2]
	bl func_08010E50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A6BE6
	bl .L080A746E
.L080A6BE6:
	ldr r1, .L080A6BEC @ =gUnk_08106CBC
	b .L080A6C04
	.align 2, 0
.L080A6BEC: .4byte gUnk_08106CBC
.L080A6BF0:
	mov r3, sb
	ldr r0, [r3]
	bl func_08010E50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A6C02
	bl .L080A746E
.L080A6C02:
	ldr r1, .L080A6C14 @ =gUnk_08106CD4
.L080A6C04:
	mov r0, r8
	movs r2, #0x3c
	movs r3, #0
	bl func_080A5BD8
	bl .L080A746E
	.align 2, 0
.L080A6C14: .4byte gUnk_08106CD4
.L080A6C18:
	movs r0, #0
.L080A6C1A:
	movs r4, #0
	adds r6, r0, #1
	subs r1, r0, #1
	str r1, [sp, #0x1c]
	lsls r2, r0, #1
	str r2, [sp, #0x20]
	movs r1, #0x2b
	adds r3, r0, #0
	muls r3, r1, r3
	str r3, [sp, #4]
	str r6, [sp, #8]
	adds r2, r6, #0
	muls r2, r1, r2
	str r2, [sp, #0xc]
	movs r3, #0x22
	mov sl, r3
.L080A6C3A:
	mov r0, sb
	ldr r1, [r0]
	ldr r2, .L080A6C74 @ =0x000009DC
	adds r1, r1, r2
	ldr r3, [sp, #4]
	adds r0, r4, r3
	lsls r0, r0, #2
	adds r5, r1, r0
	adds r2, r1, #0
	adds r7, r5, #0
	movs r0, #0
	cmp r4, #0
	blt .L080A6C64
	cmp r6, #0
	blt .L080A6C64
	cmp r4, #0x2a
	bgt .L080A6C64
	ldr r1, [sp, #8]
	cmp r1, #0x18
	bgt .L080A6C64
	movs r0, #1
.L080A6C64:
	cmp r0, #0
	beq .L080A6C78
	ldr r3, [sp, #0xc]
	adds r0, r4, r3
	lsls r0, r0, #2
	adds r1, r2, r0
	b .L080A6C7A
	.align 2, 0
.L080A6C74: .4byte 0x000009DC
.L080A6C78:
	movs r1, #0
.L080A6C7A:
	ldr r0, [sp, #0x1c]
	movs r3, #0
	cmp r4, #0
	blt .L080A6C90
	cmp r0, #0
	blt .L080A6C90
	cmp r4, #0x2a
	bgt .L080A6C90
	cmp r0, #0x18
	bgt .L080A6C90
	movs r3, #1
.L080A6C90:
	cmp r3, #0
	beq .L080A6CA0
	movs r3, #0x2b
	muls r0, r3, r0
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r2, r2, r0
	b .L080A6CA2
.L080A6CA0:
	movs r2, #0
.L080A6CA2:
	adds r0, r7, #0
	bl method_0800AF5C__C9FieldPlotPC9FieldPlotT1
	str r0, [sp]
	mov r0, r8
	mov r1, sl
	ldr r2, [sp, #0x20]
	adds r2, #0x16
	adds r3, r5, #0
	bl func_080AA6D0
	movs r0, #2
	add sl, r0
	adds r4, #1
	cmp r4, #0x2a
	bls .L080A6C3A
	adds r0, r6, #0
	cmp r0, #0x18
	bls .L080A6C1A
	mov r1, sb
	ldr r0, [r1]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetUpgradeLevel__C9FarmHouse
	cmp r0, #1
	beq .L080A6CF0
	cmp r0, #1
	blo .L080A6CE4
	cmp r0, #2
	beq .L080A6D04
	b .L080A6D10
.L080A6CE4:
	ldr r1, .L080A6CEC @ =gUnk_0810692C
	mov r0, r8
	movs r2, #0x1a
	b .L080A6CF6
	.align 2, 0
.L080A6CEC: .4byte gUnk_0810692C
.L080A6CF0:
	ldr r1, .L080A6D00 @ =gUnk_0810695C
	mov r0, r8
	movs r2, #0x12
.L080A6CF6:
	movs r3, #3
	bl func_080A5BD8
	b .L080A6D10
	.align 2, 0
.L080A6D00: .4byte gUnk_0810695C
.L080A6D04:
	ldr r1, .L080A6D28 @ =gUnk_0810698C
	mov r0, r8
	movs r2, #0xa
	movs r3, #2
	bl func_080A5BD8
.L080A6D10:
	mov r3, sb
	ldr r0, [r3]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUpgradeLevel__C4Barn
	cmp r0, #0
	beq .L080A6D2C
	cmp r0, #1
	beq .L080A6D40
	b .L080A6D4C
	.align 2, 0
.L080A6D28: .4byte gUnk_0810698C
.L080A6D2C:
	ldr r1, .L080A6D3C @ =gUnk_081069BC
	mov r0, r8
	movs r2, #0x3a
	movs r3, #2
	bl func_080A5BD8
	b .L080A6D4C
	.align 2, 0
.L080A6D3C: .4byte gUnk_081069BC
.L080A6D40:
	ldr r1, .L080A6D64 @ =gUnk_081069EC
	mov r0, r8
	movs r2, #0x3a
	movs r3, #2
	bl func_080A5BD8
.L080A6D4C:
	mov r2, sb
	ldr r0, [r2]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetUpgradeLevel__C4Coop
	cmp r0, #0
	beq .L080A6D68
	cmp r0, #1
	beq .L080A6D70
	b .L080A746E
	.align 2, 0
.L080A6D64: .4byte gUnk_081069EC
.L080A6D68:
	ldr r1, .L080A6D6C @ =gUnk_08106A1C
	b .L080A6ED2
	.align 2, 0
.L080A6D6C: .4byte gUnk_08106A1C
.L080A6D70:
	ldr r1, .L080A6D74 @ =gUnk_08106A4C
	b .L080A6ED2
	.align 2, 0
.L080A6D74: .4byte gUnk_08106A4C
.L080A6D78:
	movs r0, #0
.L080A6D7A:
	movs r4, #0
	adds r6, r0, #1
	subs r1, r0, #1
	str r1, [sp, #0x24]
	lsls r2, r0, #1
	str r2, [sp, #0x28]
	movs r1, #0x2b
	adds r3, r0, #0
	muls r3, r1, r3
	str r3, [sp, #0x10]
	str r6, [sp, #0x14]
	adds r2, r6, #0
	muls r2, r1, r2
	str r2, [sp, #0x18]
	movs r3, #0x22
	mov sl, r3
.L080A6D9A:
	mov r0, sb
	ldr r1, [r0]
	ldr r2, .L080A6DD4 @ =0x000009DC
	adds r1, r1, r2
	ldr r3, [sp, #0x10]
	adds r0, r4, r3
	lsls r0, r0, #2
	adds r5, r1, r0
	adds r2, r1, #0
	adds r7, r5, #0
	movs r0, #0
	cmp r4, #0
	blt .L080A6DC4
	cmp r6, #0
	blt .L080A6DC4
	cmp r4, #0x2a
	bgt .L080A6DC4
	ldr r1, [sp, #0x14]
	cmp r1, #0x18
	bgt .L080A6DC4
	movs r0, #1
.L080A6DC4:
	cmp r0, #0
	beq .L080A6DD8
	ldr r3, [sp, #0x18]
	adds r0, r4, r3
	lsls r0, r0, #2
	adds r1, r2, r0
	b .L080A6DDA
	.align 2, 0
.L080A6DD4: .4byte 0x000009DC
.L080A6DD8:
	movs r1, #0
.L080A6DDA:
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r4, #0
	blt .L080A6DF0
	cmp r0, #0
	blt .L080A6DF0
	cmp r4, #0x2a
	bgt .L080A6DF0
	cmp r0, #0x18
	bgt .L080A6DF0
	movs r3, #1
.L080A6DF0:
	cmp r3, #0
	beq .L080A6E00
	movs r3, #0x2b
	muls r0, r3, r0
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r2, r2, r0
	b .L080A6E02
.L080A6E00:
	movs r2, #0
.L080A6E02:
	adds r0, r7, #0
	bl method_0800AF5C__C9FieldPlotPC9FieldPlotT1
	str r0, [sp]
	mov r0, r8
	mov r1, sl
	ldr r2, [sp, #0x28]
	adds r2, #0x16
	adds r3, r5, #0
	bl func_080AA6D0
	movs r0, #2
	add sl, r0
	adds r4, #1
	cmp r4, #0x2a
	bls .L080A6D9A
	adds r0, r6, #0
	cmp r0, #0x18
	bls .L080A6D7A
	mov r1, sb
	ldr r0, [r1]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetUpgradeLevel__C9FarmHouse
	cmp r0, #1
	beq .L080A6E50
	cmp r0, #1
	blo .L080A6E44
	cmp r0, #2
	beq .L080A6E64
	b .L080A6E70
.L080A6E44:
	ldr r1, .L080A6E4C @ =gUnk_08106944
	mov r0, r8
	movs r2, #0x1a
	b .L080A6E56
	.align 2, 0
.L080A6E4C: .4byte gUnk_08106944
.L080A6E50:
	ldr r1, .L080A6E60 @ =gUnk_08106974
	mov r0, r8
	movs r2, #0x12
.L080A6E56:
	movs r3, #3
	bl func_080A5BD8
	b .L080A6E70
	.align 2, 0
.L080A6E60: .4byte gUnk_08106974
.L080A6E64:
	ldr r1, .L080A6E88 @ =gUnk_081069A4
	mov r0, r8
	movs r2, #0xa
	movs r3, #2
	bl func_080A5BD8
.L080A6E70:
	mov r3, sb
	ldr r0, [r3]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUpgradeLevel__C4Barn
	cmp r0, #0
	beq .L080A6E8C
	cmp r0, #1
	beq .L080A6EA0
	b .L080A6EAC
	.align 2, 0
.L080A6E88: .4byte gUnk_081069A4
.L080A6E8C:
	ldr r1, .L080A6E9C @ =gUnk_081069D4
	mov r0, r8
	movs r2, #0x3a
	movs r3, #2
	bl func_080A5BD8
	b .L080A6EAC
	.align 2, 0
.L080A6E9C: .4byte gUnk_081069D4
.L080A6EA0:
	ldr r1, .L080A6EC4 @ =gUnk_08106A04
	mov r0, r8
	movs r2, #0x3a
	movs r3, #2
	bl func_080A5BD8
.L080A6EAC:
	mov r2, sb
	ldr r0, [r2]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetUpgradeLevel__C4Coop
	cmp r0, #0
	beq .L080A6EC8
	cmp r0, #1
	beq .L080A6ED0
	b .L080A746E
	.align 2, 0
.L080A6EC4: .4byte gUnk_08106A04
.L080A6EC8:
	ldr r1, .L080A6ECC @ =gUnk_08106A34
	b .L080A6ED2
	.align 2, 0
.L080A6ECC: .4byte gUnk_08106A34
.L080A6ED0:
	ldr r1, .L080A6EE0 @ =gUnk_08106A64
.L080A6ED2:
	mov r0, r8
	movs r2, #0xe
.L080A6ED6:
	movs r3, #0x34
	bl func_080A5BD8
	b .L080A746E
	.align 2, 0
.L080A6EE0: .4byte gUnk_08106A64
.L080A6EE4:
	ldr r1, .L080A6F10 @ =gUnk_08106A94
	mov r0, r8
	movs r2, #0x19
	movs r3, #0xf
	bl func_080A5BD8
	mov r1, sb
	ldr r0, [r1]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetRecordPlayer__C9FarmHouse
	cmp r0, #0
	beq .L080A6F2C
	bl HasAlbum__C12RecordPlayer
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A6F18
	ldr r1, .L080A6F14 @ =gUnk_08106B24
	b .L080A6F1A
	.align 2, 0
.L080A6F10: .4byte gUnk_08106A94
.L080A6F14: .4byte gUnk_08106B24
.L080A6F18:
	ldr r1, .L080A6F28 @ =gUnk_08106B3C
.L080A6F1A:
	mov r0, r8
	movs r2, #1
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A6F38
	.align 2, 0
.L080A6F28: .4byte gUnk_08106B3C
.L080A6F2C:
	ldr r1, .L080A6F90 @ =gUnk_08106B0C
	mov r0, r8
	movs r2, #1
	movs r3, #0x11
	bl func_080A5BD8
.L080A6F38:
	mov r3, sb
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl HasVase__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A6F58
	ldr r1, .L080A6F94 @ =gUnk_08106BB4
	mov r0, r8
	movs r2, #0x13
	movs r3, #6
	bl func_080A5BD8
.L080A6F58:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	bl HasMirror__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A6F74
	ldr r1, .L080A6F98 @ =gUnk_08106BCC
	mov r0, r8
	movs r2, #8
	movs r3, #2
	bl func_080A5BD8
.L080A6F74:
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r4
	bl HasClock__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A6F86
	b .L080A746E
.L080A6F86:
	ldr r1, .L080A6F9C @ =gUnk_08106BE4
	mov r0, r8
	movs r2, #5
	b .L080A70C0
	.align 2, 0
.L080A6F90: .4byte gUnk_08106B0C
.L080A6F94: .4byte gUnk_08106BB4
.L080A6F98: .4byte gUnk_08106BCC
.L080A6F9C: .4byte gUnk_08106BE4
.L080A6FA0:
	ldr r1, .L080A701C @ =gUnk_08106A94
	mov r0, r8
	movs r2, #0x28
	movs r3, #0xf
	bl func_080A5BD8
	mov r3, sb
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl HasKitchen__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A6FCC
	ldr r1, .L080A7020 @ =gUnk_08106B54
	mov r0, r8
	movs r2, #2
	movs r3, #1
	bl func_080A5BD8
.L080A6FCC:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	bl GetFridge__C9FarmHouse
	cmp r0, #0
	beq .L080A6FE6
	ldr r1, .L080A7024 @ =gUnk_08106AC4
	mov r0, r8
	movs r2, #0xb
	movs r3, #3
	bl func_080A5BD8
.L080A6FE6:
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r4
	bl GetShelf__C9FarmHouse
	cmp r0, #0
	beq .L080A7000
	ldr r1, .L080A7028 @ =gUnk_08106AF4
	mov r0, r8
	movs r2, #0xf
	movs r3, #2
	bl func_080A5BD8
.L080A7000:
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r4
	bl GetRecordPlayer__C9FarmHouse
	cmp r0, #0
	beq .L080A7044
	bl HasAlbum__C12RecordPlayer
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7030
	ldr r1, .L080A702C @ =gUnk_08106B24
	b .L080A7032
	.align 2, 0
.L080A701C: .4byte gUnk_08106A94
.L080A7020: .4byte gUnk_08106B54
.L080A7024: .4byte gUnk_08106AC4
.L080A7028: .4byte gUnk_08106AF4
.L080A702C: .4byte gUnk_08106B24
.L080A7030:
	ldr r1, .L080A7040 @ =gUnk_08106B3C
.L080A7032:
	mov r0, r8
	movs r2, #0x10
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A7050
	.align 2, 0
.L080A7040: .4byte gUnk_08106B3C
.L080A7044:
	ldr r1, .L080A70C8 @ =gUnk_08106B0C
	mov r0, r8
	movs r2, #0x10
	movs r3, #0x11
	bl func_080A5BD8
.L080A7050:
	mov r1, sb
	ldr r0, [r1]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl HasCarpet__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7070
	ldr r1, .L080A70CC @ =gUnk_08106B9C
	mov r0, r8
	movs r2, #0x17
	movs r3, #0xa
	bl func_080A5BD8
.L080A7070:
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r4
	bl HasVase__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A708C
	ldr r1, .L080A70D0 @ =gUnk_08106BB4
	mov r0, r8
	movs r2, #0x22
	movs r3, #6
	bl func_080A5BD8
.L080A708C:
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r4
	bl HasMirror__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A70A8
	ldr r1, .L080A70D4 @ =gUnk_08106BCC
	mov r0, r8
	movs r2, #0x17
	movs r3, #2
	bl func_080A5BD8
.L080A70A8:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	bl HasClock__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A70BA
	b .L080A746E
.L080A70BA:
	ldr r1, .L080A70D8 @ =gUnk_08106BE4
	mov r0, r8
	movs r2, #0x14
.L080A70C0:
	movs r3, #3
	bl func_080A5BD8
	b .L080A746E
	.align 2, 0
.L080A70C8: .4byte gUnk_08106B0C
.L080A70CC: .4byte gUnk_08106B9C
.L080A70D0: .4byte gUnk_08106BB4
.L080A70D4: .4byte gUnk_08106BCC
.L080A70D8: .4byte gUnk_08106BE4
.L080A70DC:
	ldr r1, .L080A7158 @ =gUnk_08106A94
	mov r0, r8
	movs r2, #0x36
	movs r3, #0xf
	bl func_080A5BD8
	mov r2, sb
	ldr r0, [r2]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl HasKitchen__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7108
	ldr r1, .L080A715C @ =gUnk_08106B54
	mov r0, r8
	movs r2, #0xa
	movs r3, #1
	bl func_080A5BD8
.L080A7108:
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r4
	bl GetFridge__C9FarmHouse
	cmp r0, #0
	beq .L080A7122
	ldr r1, .L080A7160 @ =gUnk_08106AC4
	mov r0, r8
	movs r2, #0x13
	movs r3, #3
	bl func_080A5BD8
.L080A7122:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	bl GetShelf__C9FarmHouse
	cmp r0, #0
	beq .L080A713C
	ldr r1, .L080A7164 @ =gUnk_08106AF4
	mov r0, r8
	movs r2, #0x17
	movs r3, #2
	bl func_080A5BD8
.L080A713C:
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r4
	bl GetRecordPlayer__C9FarmHouse
	cmp r0, #0
	beq .L080A7180
	bl HasAlbum__C12RecordPlayer
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A716C
	ldr r1, .L080A7168 @ =gUnk_08106B24
	b .L080A716E
	.align 2, 0
.L080A7158: .4byte gUnk_08106A94
.L080A715C: .4byte gUnk_08106B54
.L080A7160: .4byte gUnk_08106AC4
.L080A7164: .4byte gUnk_08106AF4
.L080A7168: .4byte gUnk_08106B24
.L080A716C:
	ldr r1, .L080A717C @ =gUnk_08106B3C
.L080A716E:
	mov r0, r8
	movs r2, #0x18
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A718C
	.align 2, 0
.L080A717C: .4byte gUnk_08106B3C
.L080A7180:
	ldr r1, .L080A7244 @ =gUnk_08106B0C
	mov r0, r8
	movs r2, #0x18
	movs r3, #0x11
	bl func_080A5BD8
.L080A718C:
	ldr r1, .L080A7248 @ =gUnk_08106B6C
	mov r0, r8
	movs r2, #4
	movs r3, #1
	bl func_080A5BD8
	mov r3, sb
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl HasLargeBed__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A71B8
	ldr r1, .L080A724C @ =gUnk_08106B84
	mov r0, r8
	movs r2, #0x34
	movs r3, #5
	bl func_080A5BD8
.L080A71B8:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	bl HasCarpet__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A71D4
	ldr r1, .L080A7250 @ =gUnk_08106B9C
	mov r0, r8
	movs r2, #0x1f
	movs r3, #0xa
	bl func_080A5BD8
.L080A71D4:
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r4
	bl HasVase__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A71F0
	ldr r1, .L080A7254 @ =gUnk_08106BB4
	mov r0, r8
	movs r2, #0x2a
	movs r3, #6
	bl func_080A5BD8
.L080A71F0:
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r4
	bl HasMirror__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A720C
	ldr r1, .L080A7258 @ =gUnk_08106BCC
	mov r0, r8
	movs r2, #0x1f
	movs r3, #2
	bl func_080A5BD8
.L080A720C:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	bl HasClock__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7228
	ldr r1, .L080A725C @ =gUnk_08106BE4
	mov r0, r8
	movs r2, #0x1c
	movs r3, #3
	bl func_080A5BD8
.L080A7228:
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r4
	bl HasBathroom__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A723A
	b .L080A746E
.L080A723A:
	mov r0, r8
	movs r1, #0xc
	bl func_080AA850
	b .L080A746E
	.align 2, 0
.L080A7244: .4byte gUnk_08106B0C
.L080A7248: .4byte gUnk_08106B6C
.L080A724C: .4byte gUnk_08106B84
.L080A7250: .4byte gUnk_08106B9C
.L080A7254: .4byte gUnk_08106BB4
.L080A7258: .4byte gUnk_08106BCC
.L080A725C: .4byte gUnk_08106BE4
.L080A7260:
	mov r3, sb
	ldr r0, [r3]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r5, r0, r1
	movs r4, #0
	b .L080A7286
.L080A726E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl HasBushelForEnt__C4CoopUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7284
	mov r0, r8
	adds r1, r4, #0
	bl func_080A6024
.L080A7284:
	adds r4, #1
.L080A7286:
	adds r0, r5, #0
	bl GetCapacity__C4Coop
	cmp r4, r0
	blo .L080A726E
	mov r2, sb
	ldr r0, [r2]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	movs r1, #0
	bl IsIncubatorOccupied__C4CoopUi
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A72A8
	b .L080A746E
.L080A72A8:
	mov r0, r8
	movs r1, #0
	bl func_080A63B8
	b .L080A746E
.L080A72B2:
	mov r1, sb
	ldr r0, [r1]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r5, r0, r2
	movs r4, #0
	b .L080A72D8
.L080A72C0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl HasBushelForEnt__C4CoopUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A72D6
	mov r0, r8
	adds r1, r4, #0
	bl func_080A6024
.L080A72D6:
	adds r4, #1
.L080A72D8:
	adds r0, r5, #0
	bl GetCapacity__C4Coop
	cmp r4, r0
	blo .L080A72C0
	adds r0, r5, #0
	bl method_0800C5C4__C4Coop
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A72FA
	ldr r1, .L080A7338 @ =gUnk_08106C2C
	mov r0, r8
	movs r2, #2
	movs r3, #5
	bl func_080A5BD8
.L080A72FA:
	mov r3, sb
	ldr r0, [r3]
	movs r4, #0x82
	lsls r4, r4, #3
	adds r0, r0, r4
	movs r1, #0
	bl IsIncubatorOccupied__C4CoopUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7318
	mov r0, r8
	movs r1, #0
	bl func_080A63B8
.L080A7318:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	movs r1, #1
	bl IsIncubatorOccupied__C4CoopUi
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A732C
	b .L080A746E
.L080A732C:
	mov r0, r8
	movs r1, #1
	bl func_080A63B8
	b .L080A746E
	.align 2, 0
.L080A7338: .4byte gUnk_08106C2C
.L080A733C:
	mov r2, sb
	ldr r0, [r2]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r5, r0, r3
	movs r4, #0
	b .L080A7362
.L080A734A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl HasBushelForStall__C4BarnUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7360
	mov r0, r8
	adds r1, r4, #0
	bl func_080A607C
.L080A7360:
	adds r4, #1
.L080A7362:
	adds r0, r5, #0
	bl GetCapacity__C4Barn
	cmp r4, r0
	blo .L080A734A
	movs r4, #0
	b .L080A738A
.L080A7370:
	adds r0, r5, #0
	adds r1, r4, #0
	bl HasBushelForPregnancyStall__C4BarnUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7388
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, r8
	bl func_080A607C
.L080A7388:
	adds r4, #1
.L080A738A:
	adds r0, r5, #0
	bl GetPregnancyStallCapacity__C4Barn
	cmp r4, r0
	blo .L080A7370
	b .L080A746E
.L080A7396:
	mov r1, sb
	ldr r0, [r1]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r5, r0, r2
	movs r4, #0
	b .L080A73BC
.L080A73A4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl HasBushelForStall__C4BarnUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A73BA
	mov r0, r8
	adds r1, r4, #0
	bl func_080A607C
.L080A73BA:
	adds r4, #1
.L080A73BC:
	adds r0, r5, #0
	bl GetCapacity__C4Barn
	cmp r4, r0
	blo .L080A73A4
	movs r4, #0
	b .L080A73E4
.L080A73CA:
	adds r0, r5, #0
	adds r1, r4, #0
	bl HasBushelForPregnancyStall__C4BarnUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A73E2
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, r8
	bl func_080A607C
.L080A73E2:
	adds r4, #1
.L080A73E4:
	adds r0, r5, #0
	bl GetPregnancyStallCapacity__C4Barn
	cmp r4, r0
	blo .L080A73CA
	adds r0, r5, #0
	bl method_0800CF00__C4Barn
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7406
	ldr r1, .L080A7420 @ =gUnk_08106C5C
	mov r0, r8
	movs r2, #0xc
	movs r3, #5
	bl func_080A5BD8
.L080A7406:
	adds r0, r5, #0
	bl method_0800CF08__C4Barn
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A746E
	ldr r1, .L080A7424 @ =gUnk_08106C44
	mov r0, r8
	movs r2, #8
	movs r3, #5
	bl func_080A5BD8
	b .L080A746E
	.align 2, 0
.L080A7420: .4byte gUnk_08106C5C
.L080A7424: .4byte gUnk_08106C44
.L080A7428:
	mov r3, sb
	ldr r0, [r3]
	bl func_08010E48
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A746E
	ldr r1, .L080A7444 @ =gUnk_08106D4C
	mov r0, r8
	movs r2, #0x24
	movs r3, #2
	bl func_080A5BD8
	b .L080A746E
	.align 2, 0
.L080A7444: .4byte gUnk_08106D4C
.L080A7448:
	ldr r1, .L080A7484 @ =gUnk_08106CA4
	mov r0, r8
	movs r2, #0x20
	movs r3, #0x20
	bl func_080A5BD8
	mov r1, sb
	ldr r0, [r1]
	bl func_08010E48
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A746E
	ldr r1, .L080A7488 @ =gUnk_08106D64
	mov r0, r8
	movs r2, #0x24
	movs r3, #2
	bl func_080A5BD8
.L080A746E:
	mov r0, r8
	bl func_080AACB8
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A7484: .4byte gUnk_08106CA4
.L080A7488: .4byte gUnk_08106D64

	thumb_func_start func_080A748C
func_080A748C: @ 0x080A748C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c4
	str r0, [sp, #0x190]
	adds r7, r1, #0
	bl func_080A5EA0
	ldr r0, [sp, #0x190]
	adds r0, #0x94
	ldr r0, [r0]
	ldr r1, .L080A74CC @ =0x0000214C
	adds r1, r0, r1
	str r1, [sp, #0x194]
	adds r0, #0x10
	bl func_0800E324
	adds r6, r0, #0
	ldr r1, .L080A74D0 @ =gUnk_086678A0
	mov r0, sp
	bl func_0805E6CC
	ldr r2, [sp, #0x190]
	ldr r0, [r2]
	cmp r0, #0x2e
	bgt .L080A74D4
	cmp r0, #0x2d
	bge .L080A74DA
	b .L080A74E0
	.align 2, 0
.L080A74CC: .4byte 0x0000214C
.L080A74D0: .4byte gUnk_086678A0
.L080A74D4:
	cmp r0, #0x2f
	beq .L080A74DE
	b .L080A74E0
.L080A74DA:
	movs r6, #1
	b .L080A74E0
.L080A74DE:
	movs r6, #3
.L080A74E0:
	ldr r3, [sp, #0x190]
	ldr r0, [r3, #4]
	adds r3, #0x9c
	str r3, [sp, #0x1b4]
	cmp r0, #0x33
	bls .L080A74F0
	bl .L080A9224
.L080A74F0:
	lsls r0, r0, #2
	ldr r1, .L080A74FC @ =.L080A7500
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A74FC: .4byte .L080A7500
.L080A7500: @ jump table
	.4byte .L080A8094 @ case 0
	.4byte .L080A863C @ case 1
	.4byte .L080A9224 @ case 2
	.4byte .L080A9224 @ case 3
	.4byte .L080A8E26 @ case 4
	.4byte .L080A9224 @ case 5
	.4byte .L080A8D04 @ case 6
	.4byte .L080A9224 @ case 7
	.4byte .L080A9224 @ case 8
	.4byte .L080A9224 @ case 9
	.4byte .L080A9224 @ case 10
	.4byte .L080A9224 @ case 11
	.4byte .L080A9224 @ case 12
	.4byte .L080A9224 @ case 13
	.4byte .L080A9224 @ case 14
	.4byte .L080A9224 @ case 15
	.4byte .L080A9224 @ case 16
	.4byte .L080A9224 @ case 17
	.4byte .L080A9224 @ case 18
	.4byte .L080A9224 @ case 19
	.4byte .L080A9224 @ case 20
	.4byte .L080A9224 @ case 21
	.4byte .L080A9224 @ case 22
	.4byte .L080A9224 @ case 23
	.4byte .L080A9224 @ case 24
	.4byte .L080A9224 @ case 25
	.4byte .L080A9224 @ case 26
	.4byte .L080A9224 @ case 27
	.4byte .L080A9224 @ case 28
	.4byte .L080A9224 @ case 29
	.4byte .L080A9224 @ case 30
	.4byte .L080A9224 @ case 31
	.4byte .L080A9224 @ case 32
	.4byte .L080A9224 @ case 33
	.4byte .L080A9224 @ case 34
	.4byte .L080A9224 @ case 35
	.4byte .L080A9212 @ case 36
	.4byte .L080A9212 @ case 37
	.4byte .L080A9212 @ case 38
	.4byte .L080A9212 @ case 39
	.4byte .L080A9224 @ case 40
	.4byte .L080A9224 @ case 41
	.4byte .L080A75D0 @ case 42
	.4byte .L080A75D0 @ case 43
	.4byte .L080A9224 @ case 44
	.4byte .L080A9224 @ case 45
	.4byte .L080A9224 @ case 46
	.4byte .L080A9224 @ case 47
	.4byte .L080A9224 @ case 48
	.4byte .L080A9224 @ case 49
	.4byte .L080A9224 @ case 50
	.4byte .L080A88F0 @ case 51
.L080A75D0:
	add r5, sp, #0x30
	movs r0, #0
	str r0, [sp, #0x30]
	strh r0, [r5, #4]
	add r4, sp, #0x38
	str r0, [sp, #0x38]
	strh r0, [r4, #4]
	add r1, sp, #0x40
	str r0, [sp, #0x40]
	strh r0, [r1, #4]
	add r1, sp, #0x48
	str r0, [sp, #0x48]
	strh r0, [r1, #4]
	ldr r0, [sp, #0x190]
	adds r0, #0x94
	ldr r0, [r0]
	movs r6, #0xfa
	lsls r6, r6, #1
	adds r6, r0, r6
	str r6, [sp, #0x198]
	adds r0, r6, #0
	bl HasKitchenWhisk__C9FarmHouse
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x190]
	adds r1, #0x9c
	str r1, [sp, #0x1b4]
	cmp r0, #0
	bne .L080A760C
	b .L080A7752
.L080A760C:
	ldr r4, [sp]
	add r0, sp, #0x70
	ldr r3, [r4, #0xc]
	mov r1, sp
	movs r2, #0xec
	lsls r2, r2, #1
	bl _call_via_r3
	ldr r0, [sp, #0x70]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7654
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7654:
	adds r0, r4, #0
	ldr r2, .L080A7680 @ =0x060045A0
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7684
	cmp r1, #0
	beq .L080A7676
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7676:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A7752
	.align 2, 0
.L080A7680: .4byte 0x060045A0
.L080A7684:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x7c]
	ldr r1, [r7]
	mov r5, sl
	subs r0, r5, r1
	asrs r4, r0, #4
	str r4, [sp, #0x78]
	add r5, sp, #0x7c
	add r0, sp, #0x78
	adds r3, r1, #0
	cmp r4, #1
	bhs .L080A76A0
	adds r0, r5, #0
.L080A76A0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A76C0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A76BC
	mov r0, r8
	bl func_080D3BC0
.L080A76BC:
	ldr r3, [r7]
	b .L080A76C4
.L080A76C0:
	movs r0, #0
	mov r8, r0
.L080A76C4:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x190]
	adds r6, #0x9c
	str r6, [sp, #0x1b4]
	cmp r2, sl
	beq .L080A76EE
.L080A76D6:
	cmp r3, #0
	beq .L080A76E6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A76E6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A76D6
.L080A76EE:
	adds r5, r3, #0
	ldr r0, [sp, #0x7c]
	cmp r0, #1
	bne .L080A770A
	cmp r5, #0
	beq .L080A7706
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7706:
	adds r5, #0x10
	b .L080A772C
.L080A770A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A772A
.L080A7712:
	cmp r2, #0
	beq .L080A7722
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7722:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A7712
.L080A772A:
	adds r5, r2, #0
.L080A772C:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A773C
.L080A7736:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A7736
.L080A773C:
	cmp r3, #0
	beq .L080A7746
	adds r0, r3, #0
	bl free
.L080A7746:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r6, [sp, #0x1bc]
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A7752:
	ldr r0, [sp, #0x198]
	bl HasKitchenKnife__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A7760
	b .L080A78AC
.L080A7760:
	ldr r5, [sp]
	add r4, sp, #0x80
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080A77D4 @ =0x00000109
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A77A8
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A77A8:
	adds r0, r4, #0
	ldr r2, .L080A77D8 @ =0x06004620
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A77DC
	cmp r1, #0
	beq .L080A77CA
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A77CA:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A78AC
	.align 2, 0
.L080A77D4: .4byte 0x00000109
.L080A77D8: .4byte 0x06004620
.L080A77DC:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0x8c
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0x88
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A77FA
	mov r0, sl
.L080A77FA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A781A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A7816
	mov r0, r8
	bl func_080D3BC0
.L080A7816:
	ldr r3, [r7]
	b .L080A781E
.L080A781A:
	movs r0, #0
	mov r8, r0
.L080A781E:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A7846
.L080A782C:
	cmp r3, #0
	beq .L080A783C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A783C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A782C
.L080A7846:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A7864
	cmp r5, #0
	beq .L080A7860
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7860:
	adds r5, #0x10
	b .L080A7886
.L080A7864:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A7884
.L080A786C:
	cmp r2, #0
	beq .L080A787C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A787C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A786C
.L080A7884:
	adds r5, r2, #0
.L080A7886:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A7896
.L080A7890:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A7890
.L080A7896:
	cmp r3, #0
	beq .L080A78A0
	adds r0, r3, #0
	bl free
.L080A78A0:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A78AC:
	ldr r0, [sp, #0x198]
	bl HasKitchenPot__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A78BA
	b .L080A7A04
.L080A78BA:
	ldr r5, [sp]
	add r4, sp, #0x90
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0xad
	lsls r2, r2, #1
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7904
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7904:
	adds r0, r4, #0
	ldr r2, .L080A7930 @ =0x060046A0
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7934
	cmp r1, #0
	beq .L080A7926
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7926:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A7A04
	.align 2, 0
.L080A7930: .4byte 0x060046A0
.L080A7934:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0x9c
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A7952
	mov r0, sl
.L080A7952:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A7972
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A796E
	mov r0, r8
	bl func_080D3BC0
.L080A796E:
	ldr r3, [r7]
	b .L080A7976
.L080A7972:
	movs r0, #0
	mov r8, r0
.L080A7976:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A799E
.L080A7984:
	cmp r3, #0
	beq .L080A7994
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7994:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A7984
.L080A799E:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A79BC
	cmp r5, #0
	beq .L080A79B8
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A79B8:
	adds r5, #0x10
	b .L080A79DE
.L080A79BC:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A79DC
.L080A79C4:
	cmp r2, #0
	beq .L080A79D4
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A79D4:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A79C4
.L080A79DC:
	adds r5, r2, #0
.L080A79DE:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A79EE
.L080A79E8:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A79E8
.L080A79EE:
	cmp r3, #0
	beq .L080A79F8
	adds r0, r3, #0
	bl free
.L080A79F8:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A7A04:
	ldr r0, [sp, #0x198]
	bl HasKitchenFryingPan__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A7A12
	b .L080A7B58
.L080A7A12:
	ldr r5, [sp]
	add r4, sp, #0xa0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0xcc
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7A5A
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7A5A:
	adds r0, r4, #0
	ldr r2, .L080A7A84 @ =0x06004720
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7A88
	cmp r1, #0
	beq .L080A7A7C
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7A7C:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A7B58
	.align 2, 0
.L080A7A84: .4byte 0x06004720
.L080A7A88:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0xac
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0xa8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A7AA6
	mov r0, sl
.L080A7AA6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A7AC6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A7AC2
	mov r0, r8
	bl func_080D3BC0
.L080A7AC2:
	ldr r3, [r7]
	b .L080A7ACA
.L080A7AC6:
	movs r0, #0
	mov r8, r0
.L080A7ACA:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A7AF2
.L080A7AD8:
	cmp r3, #0
	beq .L080A7AE8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7AE8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A7AD8
.L080A7AF2:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A7B10
	cmp r5, #0
	beq .L080A7B0C
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7B0C:
	adds r5, #0x10
	b .L080A7B32
.L080A7B10:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A7B30
.L080A7B18:
	cmp r2, #0
	beq .L080A7B28
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7B28:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A7B18
.L080A7B30:
	adds r5, r2, #0
.L080A7B32:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A7B42
.L080A7B3C:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A7B3C
.L080A7B42:
	cmp r3, #0
	beq .L080A7B4C
	adds r0, r3, #0
	bl free
.L080A7B4C:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A7B58:
	ldr r0, [sp, #0x198]
	bl HasKitchenOven__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A7B66
	b .L080A7CB0
.L080A7B66:
	ldr r5, [sp]
	add r4, sp, #0xb0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080A7BD8 @ =0x00000147
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7BAE
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7BAE:
	adds r0, r4, #0
	ldr r2, .L080A7BDC @ =0x060047A0
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7BE0
	cmp r1, #0
	beq .L080A7BD0
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7BD0:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A7CB0
	.align 2, 0
.L080A7BD8: .4byte 0x00000147
.L080A7BDC: .4byte 0x060047A0
.L080A7BE0:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0xbc
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0xb8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A7BFE
	mov r0, sl
.L080A7BFE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A7C1E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A7C1A
	mov r0, r8
	bl func_080D3BC0
.L080A7C1A:
	ldr r3, [r7]
	b .L080A7C22
.L080A7C1E:
	movs r0, #0
	mov r8, r0
.L080A7C22:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A7C4A
.L080A7C30:
	cmp r3, #0
	beq .L080A7C40
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7C40:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A7C30
.L080A7C4A:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A7C68
	cmp r5, #0
	beq .L080A7C64
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7C64:
	adds r5, #0x10
	b .L080A7C8A
.L080A7C68:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A7C88
.L080A7C70:
	cmp r2, #0
	beq .L080A7C80
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7C80:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A7C70
.L080A7C88:
	adds r5, r2, #0
.L080A7C8A:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A7C9A
.L080A7C94:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A7C94
.L080A7C9A:
	cmp r3, #0
	beq .L080A7CA4
	adds r0, r3, #0
	bl free
.L080A7CA4:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A7CB0:
	ldr r0, [sp, #0x198]
	bl HasKitchenRollingPin__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A7CBE
	b .L080A7E08
.L080A7CBE:
	ldr r5, [sp]
	add r4, sp, #0xc0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080A7D30 @ =0x00000139
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7D06
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7D06:
	adds r0, r4, #0
	ldr r2, .L080A7D34 @ =0x06004820
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7D38
	cmp r1, #0
	beq .L080A7D28
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7D28:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A7E08
	.align 2, 0
.L080A7D30: .4byte 0x00000139
.L080A7D34: .4byte 0x06004820
.L080A7D38:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0xcc
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0xc8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A7D56
	mov r0, sl
.L080A7D56:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A7D76
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A7D72
	mov r0, r8
	bl func_080D3BC0
.L080A7D72:
	ldr r3, [r7]
	b .L080A7D7A
.L080A7D76:
	movs r0, #0
	mov r8, r0
.L080A7D7A:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A7DA2
.L080A7D88:
	cmp r3, #0
	beq .L080A7D98
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7D98:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A7D88
.L080A7DA2:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A7DC0
	cmp r5, #0
	beq .L080A7DBC
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7DBC:
	adds r5, #0x10
	b .L080A7DE2
.L080A7DC0:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A7DE0
.L080A7DC8:
	cmp r2, #0
	beq .L080A7DD8
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7DD8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A7DC8
.L080A7DE0:
	adds r5, r2, #0
.L080A7DE2:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A7DF2
.L080A7DEC:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A7DEC
.L080A7DF2:
	cmp r3, #0
	beq .L080A7DFC
	adds r0, r3, #0
	bl free
.L080A7DFC:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A7E08:
	ldr r0, [sp, #0x198]
	bl HasKitchenMixer__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A7E16
	b .L080A7F5C
.L080A7E16:
	ldr r5, [sp]
	add r4, sp, #0xd0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0x40
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7E5E
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7E5E:
	adds r0, r4, #0
	ldr r2, .L080A7E88 @ =0x060048A0
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7E8C
	cmp r1, #0
	beq .L080A7E80
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7E80:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A7F5C
	.align 2, 0
.L080A7E88: .4byte 0x060048A0
.L080A7E8C:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0xdc
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0xd8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A7EAA
	mov r0, sl
.L080A7EAA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A7ECA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A7EC6
	mov r0, r8
	bl func_080D3BC0
.L080A7EC6:
	ldr r3, [r7]
	b .L080A7ECE
.L080A7ECA:
	movs r0, #0
	mov r8, r0
.L080A7ECE:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A7EF6
.L080A7EDC:
	cmp r3, #0
	beq .L080A7EEC
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7EEC:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A7EDC
.L080A7EF6:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A7F14
	cmp r5, #0
	beq .L080A7F10
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7F10:
	adds r5, #0x10
	b .L080A7F36
.L080A7F14:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A7F34
.L080A7F1C:
	cmp r2, #0
	beq .L080A7F2C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7F2C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A7F1C
.L080A7F34:
	adds r5, r2, #0
.L080A7F36:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A7F46
.L080A7F40:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A7F40
.L080A7F46:
	cmp r3, #0
	beq .L080A7F50
	adds r0, r3, #0
	bl free
.L080A7F50:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A7F5C:
	ldr r0, [sp, #0x198]
	bl HasKitchenSeasoningSet__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A7F6C
	bl .L080A9224
.L080A7F6C:
	ldr r5, [sp]
	add r4, sp, #0xe0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0xc8
	lsls r2, r2, #1
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7FB6
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7FB6:
	adds r0, r4, #0
	ldr r2, .L080A800C @ =0x06004920
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7FCC
	bl sub_080A9122
.L080A7FCC:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0xec
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0xe8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A7FEA
	mov r0, sl
.L080A7FEA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8010
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A8006
	mov r0, r8
	bl func_080D3BC0
.L080A8006:
	ldr r3, [r7]
	b .L080A8014
	.align 2, 0
.L080A800C: .4byte 0x06004920
.L080A8010:
	movs r0, #0
	mov r8, r0
.L080A8014:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A803C
.L080A8022:
	cmp r3, #0
	beq .L080A8032
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8032:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A8022
.L080A803C:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A805A
	cmp r5, #0
	beq .L080A8056
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8056:
	adds r5, #0x10
	b .L080A807C
.L080A805A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A807A
.L080A8062:
	cmp r2, #0
	beq .L080A8072
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8072:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8062
.L080A807A:
	adds r5, r2, #0
.L080A807C:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	bne .L080A808A
	bl .L080A91FA
.L080A808A:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A808A
	bl .L080A91FA
.L080A8094:
	ldr r1, .L080A80D4 @ =gUnk_086D5508
	add r0, sp, #0x30
	ldr r2, .L080A80D8 @ =0x06005FC0
	movs r3, #0xe6
	lsls r3, r3, #4
	bl func_08008F0C
	add r2, sp, #0x30
	mov sb, r2
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A80DC
	cmp r1, #0
	beq .L080A80BE
	adds r0, r1, #0
	add r1, sp, #0x30
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080A80BE:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	ldr r0, [sp, #0x190]
	adds r0, #0x94
	str r0, [sp, #0x1b0]
	ldr r1, [sp, #0x190]
	adds r1, #0x9c
	str r1, [sp, #0x1b4]
	b .L080A81BA
	.align 2, 0
.L080A80D4: .4byte gUnk_086D5508
.L080A80D8: .4byte 0x06005FC0
.L080A80DC:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0xf4
	str r0, [r1]
	ldr r3, [r7]
	mov r2, r8
	subs r0, r2, r3
	asrs r4, r0, #4
	add r0, sp, #0xf0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080A80F8
	adds r0, r1, #0
.L080A80F8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8118
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080A8114
	mov r0, sl
	bl func_080D3BC0
.L080A8114:
	ldr r3, [r7]
	b .L080A811C
.L080A8118:
	movs r0, #0
	mov sl, r0
.L080A811C:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	mov ip, r5
	ldr r3, [sp, #0x190]
	adds r3, #0x94
	str r3, [sp, #0x1b0]
	ldr r4, [sp, #0x190]
	adds r4, #0x9c
	str r4, [sp, #0x1b4]
	cmp r2, r8
	beq .L080A8150
.L080A8134:
	mov r5, ip
	cmp r5, #0
	beq .L080A8146
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080A8146:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080A8134
.L080A8150:
	mov r5, ip
	ldr r1, [sp, #0xf4]
	cmp r1, #1
	bne .L080A816C
	cmp r5, #0
	beq .L080A8168
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8168:
	adds r5, #0x10
	b .L080A8194
.L080A816C:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L080A8192
.L080A8174:
	cmp r2, #0
	beq .L080A8184
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080A8184:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080A8174
.L080A8192:
	adds r5, r2, #0
.L080A8194:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A81A4
.L080A819E:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A819E
.L080A81A4:
	cmp r3, #0
	beq .L080A81AE
	adds r0, r3, #0
	bl free
.L080A81AE:
	ldr r0, [sp, #0x1bc]
	add r0, sl
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A81BA:
	cmp r6, #1
	bne .L080A81C0
	b .L080A82BE
.L080A81C0:
	cmp r6, #1
	bgt .L080A81CA
	cmp r6, #0
	beq .L080A81D2
	b .L080A84C8
.L080A81CA:
	cmp r6, #2
	bne .L080A81D0
	b .L080A83BE
.L080A81D0:
	b .L080A84C8
.L080A81D2:
	ldr r1, .L080A81FC @ =gUnk_08698E14
	add r0, sp, #0x30
	ldr r2, .L080A8200 @ =0x06006E20
	movs r3, #0x8f
	lsls r3, r3, #5
	bl func_08008F0C
	add r2, sp, #0x30
	mov sb, r2
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8204
	cmp r1, #0
	bne .L080A81F2
	b .L080A83E8
.L080A81F2:
	adds r0, r1, #0
	add r1, sp, #0x30
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	b .L080A83E4
	.align 2, 0
.L080A81FC: .4byte gUnk_08698E14
.L080A8200: .4byte 0x06006E20
.L080A8204:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0xfc
	str r0, [r1]
	ldr r3, [r7]
	ldr r6, [sp, #0x1c0]
	subs r0, r6, r3
	asrs r4, r0, #4
	add r0, sp, #0xf8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A8222
	mov r0, sl
.L080A8222:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8242
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A823E
	mov r0, r8
	bl func_080D3BC0
.L080A823E:
	ldr r3, [r7]
	b .L080A8246
.L080A8242:
	movs r0, #0
	mov r8, r0
.L080A8246:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	b .L080A8264
.L080A8250:
	cmp r3, #0
	beq .L080A8260
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8260:
	adds r2, #0x10
	adds r3, #0x10
.L080A8264:
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A8250
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A8288
	cmp r5, #0
	beq .L080A8284
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8284:
	adds r5, #0x10
	b .L080A82AA
.L080A8288:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A82A8
.L080A8290:
	cmp r2, #0
	beq .L080A82A0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A82A0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8290
.L080A82A8:
	adds r5, r2, #0
.L080A82AA:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	bne .L080A82B6
	b .L080A84B2
.L080A82B6:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A82B6
	b .L080A84B2
.L080A82BE:
	ldr r1, .L080A82E8 @ =gUnk_0869A0A4
	add r0, sp, #0x30
	ldr r2, .L080A82EC @ =0x06006E20
	movs r3, #0x8f
	lsls r3, r3, #5
	bl func_08008F0C
	add r2, sp, #0x30
	mov sb, r2
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A82F0
	cmp r1, #0
	bne .L080A82DE
	b .L080A83E8
.L080A82DE:
	adds r0, r1, #0
	add r1, sp, #0x30
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	b .L080A83E4
	.align 2, 0
.L080A82E8: .4byte gUnk_0869A0A4
.L080A82EC: .4byte 0x06006E20
.L080A82F0:
	mov r8, r1
	add r1, sp, #0x104
	str r6, [r1]
	ldr r2, [r7]
	mov r6, r8
	subs r0, r6, r2
	asrs r4, r0, #4
	add r0, sp, #0x100
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x100
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A8310
	adds r1, r5, #0
.L080A8310:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8330
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0x1bc]
	cmp r0, #0
	bne .L080A832C
	adds r0, r4, #0
	bl func_080D3BC0
.L080A832C:
	ldr r3, [r7]
	b .L080A8336
.L080A8330:
	movs r0, #0
	movs r1, #0
	str r1, [sp, #0x1bc]
.L080A8336:
	adds r5, r0, #0
	mov sl, r5
	adds r2, r3, #0
	mov r3, sl
	cmp r2, r8
	beq .L080A835A
.L080A8342:
	cmp r3, #0
	beq .L080A8352
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8352:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080A8342
.L080A835A:
	adds r5, r3, #0
	add r0, sp, #0x104
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8378
	cmp r5, #0
	beq .L080A8374
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8374:
	adds r5, #0x10
	b .L080A839A
.L080A8378:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A8398
.L080A8380:
	cmp r2, #0
	beq .L080A8390
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8390:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8380
.L080A8398:
	adds r5, r2, #0
.L080A839A:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A83AA
.L080A83A4:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A83A4
.L080A83AA:
	cmp r3, #0
	beq .L080A83B4
	adds r0, r3, #0
	bl free
.L080A83B4:
	ldr r0, [sp, #0x1bc]
	add r0, sl
	mov r6, sl
	str r6, [r7]
	b .L080A84C4
.L080A83BE:
	ldr r1, .L080A83F0 @ =gUnk_08697920
	add r0, sp, #0x30
	ldr r2, .L080A83F4 @ =0x06006E20
	movs r3, #0x8f
	lsls r3, r3, #5
	bl func_08008F0C
	add r0, sp, #0x30
	mov sb, r0
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A83F8
	cmp r1, #0
	beq .L080A83E8
	adds r0, r1, #0
	add r1, sp, #0x30
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
.L080A83E4:
	ldr r1, [r1]
	str r1, [r0]
.L080A83E8:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A84C8
	.align 2, 0
.L080A83F0: .4byte gUnk_08697920
.L080A83F4: .4byte 0x06006E20
.L080A83F8:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x10c
	str r0, [r1]
	ldr r2, [r7]
	mov r5, sl
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x108
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x108
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A841A
	adds r1, r5, #0
.L080A841A:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A843A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A8436
	mov r0, r8
	bl func_080D3BC0
.L080A8436:
	ldr r3, [r7]
	b .L080A843E
.L080A843A:
	movs r0, #0
	mov r8, r0
.L080A843E:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L080A8462
.L080A844A:
	cmp r3, #0
	beq .L080A845A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A845A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A844A
.L080A8462:
	adds r5, r3, #0
	add r0, sp, #0x10c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8480
	cmp r5, #0
	beq .L080A847C
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A847C:
	adds r5, #0x10
	b .L080A84A2
.L080A8480:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A84A0
.L080A8488:
	cmp r2, #0
	beq .L080A8498
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8498:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8488
.L080A84A0:
	adds r5, r2, #0
.L080A84A2:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A84B2
.L080A84AC:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A84AC
.L080A84B2:
	cmp r3, #0
	beq .L080A84BC
	adds r0, r3, #0
	bl free
.L080A84BC:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
.L080A84C4:
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A84C8:
	ldr r1, .L080A8624 @ =gUnk_08107144
	ldr r0, [sp, #0x190]
	movs r2, #0
	adds r3, r7, #0
	bl func_080A5AB0
	ldr r4, .L080A8628 @ =gUnk_081070DC
	ldr r2, [sp, #0x1b0]
	ldr r0, [r2]
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r0, r5
	bl GetMailboxStyle__C9FarmHouse
	adds r2, r0, #0
	ldr r0, [sp, #0x190]
	adds r1, r4, #0
	adds r3, r7, #0
	bl func_080A5AB0
	movs r3, #6
	mov sb, r3
	add r6, sp, #0x30
	ldr r4, [sp, #0x1b0]
	mov sl, r4
.L080A84FA:
	movs r5, #0x22
	mov r8, r5
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x1a4]
.L080A8504:
	adds r0, r6, #0
	ldr r1, .L080A862C @ =gUnk_0810742E
	movs r2, #3
	bl memcpy
	ldr r1, [sp, #0x190]
	ldr r0, [r1, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov r4, sb
	muls r4, r0, r4
	add r4, r8
	lsls r4, r4, #1
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x14]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetMailboxStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x18]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl GetMailboxStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	movs r5, #1
	add r8, r5
	mov r0, r8
	cmp r0, #0x23
	bls .L080A8504
	ldr r1, [sp, #0x1a4]
	mov sb, r1
	cmp r1, #8
	bls .L080A84FA
	ldr r4, .L080A8630 @ =gUnk_081070EC
	ldr r2, [sp, #0x1b0]
	ldr r0, [r2]
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r0, r5
	bl GetDoghouseStyle__C9FarmHouse
	adds r2, r0, #0
	ldr r0, [sp, #0x190]
	adds r1, r4, #0
	adds r3, r7, #0
	bl func_080A5AB0
	movs r3, #7
	mov sb, r3
	add r6, sp, #0x30
	ldr r4, [sp, #0x1b0]
	mov sl, r4
.L080A85A0:
	movs r5, #0x31
	mov r8, r5
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x1a8]
.L080A85AA:
	adds r0, r6, #0
	ldr r1, .L080A8634 @ =gUnk_08107431
	movs r2, #3
	bl memcpy
	ldr r1, [sp, #0x190]
	ldr r0, [r1, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov r4, sb
	muls r4, r0, r4
	add r4, r8
	lsls r4, r4, #1
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x14]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetDoghouseStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x18]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl GetDoghouseStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	movs r5, #1
	add r8, r5
	mov r0, r8
	cmp r0, #0x33
	bls .L080A85AA
	ldr r1, [sp, #0x1a8]
	mov sb, r1
	cmp r1, #0xa
	bls .L080A85A0
	ldr r4, .L080A8638 @ =gUnk_081070FC
	b .L080A88BA
	.align 2, 0
.L080A8624: .4byte gUnk_08107144
.L080A8628: .4byte gUnk_081070DC
.L080A862C: .4byte gUnk_0810742E
.L080A8630: .4byte gUnk_081070EC
.L080A8634: .4byte gUnk_08107431
.L080A8638: .4byte gUnk_081070FC
.L080A863C:
	ldr r1, .L080A867C @ =gUnk_086D6698
	add r0, sp, #0x30
	ldr r2, .L080A8680 @ =0x06005FC0
	movs r3, #0xe6
	lsls r3, r3, #4
	bl func_08008F0C
	add r4, sp, #0x30
	mov r8, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8684
	cmp r1, #0
	beq .L080A8666
	adds r0, r1, #0
	add r1, sp, #0x30
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8666:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	ldr r3, [sp, #0x190]
	adds r3, #0x94
	str r3, [sp, #0x1b0]
	ldr r4, [sp, #0x190]
	adds r4, #0x9c
	str r4, [sp, #0x1b4]
	b .L080A8760
	.align 2, 0
.L080A867C: .4byte gUnk_086D6698
.L080A8680: .4byte 0x06005FC0
.L080A8684:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x114
	str r0, [r1]
	ldr r2, [r7]
	mov r5, sl
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x110
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x110
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A86A6
	adds r1, r5, #0
.L080A86A6:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A86C6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080A86C2
	mov r0, sb
	bl func_080D3BC0
.L080A86C2:
	ldr r3, [r7]
	b .L080A86CA
.L080A86C6:
	movs r0, #0
	mov sb, r0
.L080A86CA:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x190]
	adds r6, #0x94
	str r6, [sp, #0x1b0]
	ldr r0, [sp, #0x190]
	adds r0, #0x9c
	str r0, [sp, #0x1b4]
	cmp r2, sl
	beq .L080A86FA
.L080A86E2:
	cmp r3, #0
	beq .L080A86F2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A86F2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A86E2
.L080A86FA:
	adds r5, r3, #0
	add r0, sp, #0x114
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8718
	cmp r5, #0
	beq .L080A8714
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8714:
	adds r5, #0x10
	b .L080A873A
.L080A8718:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A8738
.L080A8720:
	cmp r2, #0
	beq .L080A8730
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8730:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8720
.L080A8738:
	adds r5, r2, #0
.L080A873A:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A874A
.L080A8744:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A8744
.L080A874A:
	cmp r3, #0
	beq .L080A8754
	adds r0, r3, #0
	bl free
.L080A8754:
	ldr r0, [sp, #0x1bc]
	add r0, sb
	ldr r6, [sp, #0x1bc]
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A8760:
	ldr r1, .L080A88D8 @ =gUnk_0810714C
	ldr r0, [sp, #0x190]
	movs r2, #0
	adds r3, r7, #0
	bl func_080A5AB0
	ldr r4, .L080A88DC @ =gUnk_081070E4
	ldr r1, [sp, #0x1b0]
	ldr r0, [r1]
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r0, r5
	bl GetMailboxStyle__C9FarmHouse
	adds r2, r0, #0
	ldr r0, [sp, #0x190]
	adds r1, r4, #0
	adds r3, r7, #0
	bl func_080A5AB0
	movs r2, #6
	mov sb, r2
	add r6, sp, #0x30
	ldr r3, [sp, #0x1b0]
	mov sl, r3
.L080A8792:
	movs r4, #0x22
	mov r8, r4
	mov r5, sb
	adds r5, #1
	str r5, [sp, #0x1ac]
.L080A879C:
	adds r0, r6, #0
	ldr r1, .L080A88E0 @ =gUnk_08107434
	movs r2, #3
	bl memcpy
	ldr r1, [sp, #0x190]
	ldr r0, [r1, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov r4, sb
	muls r4, r0, r4
	add r4, r8
	lsls r4, r4, #1
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x14]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetMailboxStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x18]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl GetMailboxStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	movs r5, #1
	add r8, r5
	mov r0, r8
	cmp r0, #0x23
	bls .L080A879C
	ldr r1, [sp, #0x1ac]
	mov sb, r1
	cmp r1, #8
	bls .L080A8792
	ldr r4, .L080A88E4 @ =gUnk_081070F4
	ldr r2, [sp, #0x1b0]
	ldr r0, [r2]
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r0, r5
	bl GetDoghouseStyle__C9FarmHouse
	adds r2, r0, #0
	ldr r0, [sp, #0x190]
	adds r1, r4, #0
	adds r3, r7, #0
	bl func_080A5AB0
	movs r3, #7
	mov sb, r3
	add r6, sp, #0x30
	ldr r4, [sp, #0x1b0]
	mov sl, r4
.L080A8838:
	movs r5, #0x31
	mov r8, r5
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x1b8]
.L080A8842:
	adds r0, r6, #0
	ldr r1, .L080A88E8 @ =gUnk_08107431
	movs r2, #3
	bl memcpy
	ldr r1, [sp, #0x190]
	ldr r0, [r1, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov r4, sb
	muls r4, r0, r4
	add r4, r8
	lsls r4, r4, #1
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x14]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetDoghouseStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x18]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl GetDoghouseStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	movs r5, #1
	add r8, r5
	mov r0, r8
	cmp r0, #0x33
	bls .L080A8842
	ldr r1, [sp, #0x1b8]
	mov sb, r1
	cmp r1, #0xa
	bls .L080A8838
	ldr r4, .L080A88EC @ =gUnk_08107104
.L080A88BA:
	ldr r2, [sp, #0x1b0]
	ldr r0, [r2]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl GetWindowStyle__C9FarmHouse
	adds r2, r0, #0
	ldr r0, [sp, #0x190]
	adds r1, r4, #0
	adds r3, r7, #0
	bl func_080A5AB0
	bl .L080A9224
	.align 2, 0
.L080A88D8: .4byte gUnk_0810714C
.L080A88DC: .4byte gUnk_081070E4
.L080A88E0: .4byte gUnk_08107434
.L080A88E4: .4byte gUnk_081070F4
.L080A88E8: .4byte gUnk_08107431
.L080A88EC: .4byte gUnk_08107104
.L080A88F0:
	add r5, sp, #0x30
	movs r0, #0
	str r0, [sp, #0x30]
	strh r0, [r5, #4]
	add r4, sp, #0x38
	mov r8, r4
	str r0, [sp, #0x38]
	strh r0, [r4, #4]
	add r1, sp, #0x40
	str r0, [sp, #0x40]
	strh r0, [r1, #4]
	add r1, sp, #0x48
	str r0, [sp, #0x48]
	strh r0, [r1, #4]
	cmp r6, #1
	bne .L080A8912
	b .L080A8A62
.L080A8912:
	cmp r6, #1
	bgt .L080A891C
	cmp r6, #0
	beq .L080A892C
	b .L080A8C24
.L080A891C:
	cmp r6, #2
	bne .L080A8922
	b .L080A8BB4
.L080A8922:
	ldr r6, [sp, #0x190]
	adds r6, #0x9c
	str r6, [sp, #0x1b4]
	bl .L080A9224
.L080A892C:
	ldr r4, [sp]
	add r0, sp, #0x118
	ldr r3, [r4, #0xc]
	mov r1, sp
	ldr r2, .L080A89C8 @ =0x0000012F
	bl _call_via_r3
	add r0, sp, #0x118
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r1, [sp, #0x38]
	movs r3, #0
	cmp r1, #0
	beq .L080A8972
	mov r0, r8
	ldrh r3, [r0, #4]
.L080A8972:
	adds r0, r4, #0
	ldr r2, .L080A89CC @ =0x06003000
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8986
	b .L080A8C0E
.L080A8986:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x124
	str r0, [r1]
	ldr r2, [r7]
	mov r6, sl
	subs r0, r6, r2
	asrs r4, r0, #4
	add r0, sp, #0x120
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x120
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A89A8
	adds r1, r5, #0
.L080A89A8:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A89D0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A89C4
	mov r0, r8
	bl func_080D3BC0
.L080A89C4:
	ldr r3, [r7]
	b .L080A89D4
	.align 2, 0
.L080A89C8: .4byte 0x0000012F
.L080A89CC: .4byte 0x06003000
.L080A89D0:
	movs r0, #0
	mov r8, r0
.L080A89D4:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r0, [sp, #0x190]
	adds r0, #0x9c
	str r0, [sp, #0x1b4]
	cmp r2, sl
	beq .L080A89FE
.L080A89E6:
	cmp r3, #0
	beq .L080A89F6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A89F6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A89E6
.L080A89FE:
	adds r5, r3, #0
	add r0, sp, #0x124
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8A1C
	cmp r5, #0
	beq .L080A8A18
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8A18:
	adds r5, #0x10
	b .L080A8A3E
.L080A8A1C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A8A3C
.L080A8A24:
	cmp r2, #0
	beq .L080A8A34
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8A34:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8A24
.L080A8A3C:
	adds r5, r2, #0
.L080A8A3E:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A8A4E
.L080A8A48:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A8A48
.L080A8A4E:
	cmp r3, #0
	beq .L080A8A58
	adds r0, r3, #0
	bl free
.L080A8A58:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r6, [sp, #0x1bc]
	str r6, [r7]
	b .L080A920C
.L080A8A62:
	ldr r4, [sp]
	add r0, sp, #0x128
	ldr r3, [r4, #0xc]
	mov r1, sp
	ldr r2, .L080A8AD8 @ =0x00000151
	bl _call_via_r3
	add r0, sp, #0x128
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r1, [sp, #0x38]
	movs r3, #0
	cmp r1, #0
	beq .L080A8AA8
	mov r5, r8
	ldrh r3, [r5, #4]
.L080A8AA8:
	adds r0, r4, #0
	ldr r2, .L080A8ADC @ =0x06003000
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8AE0
	cmp r1, #0
	beq .L080A8ACA
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8ACA:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	ldr r4, [sp, #0x190]
	adds r4, #0x9c
	str r4, [sp, #0x1b4]
	b .L080A9224
	.align 2, 0
.L080A8AD8: .4byte 0x00000151
.L080A8ADC: .4byte 0x06003000
.L080A8AE0:
	mov r8, r1
	add r1, sp, #0x134
	str r6, [r1]
	ldr r2, [r7]
	mov r5, r8
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x130
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x130
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A8B00
	adds r1, r5, #0
.L080A8B00:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8B20
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0x1bc]
	cmp r0, #0
	bne .L080A8B1C
	adds r0, r4, #0
	bl func_080D3BC0
.L080A8B1C:
	ldr r3, [r7]
	b .L080A8B26
.L080A8B20:
	movs r0, #0
	movs r6, #0
	str r6, [sp, #0x1bc]
.L080A8B26:
	adds r5, r0, #0
	mov sl, r5
	adds r2, r3, #0
	mov r3, sl
	ldr r0, [sp, #0x190]
	adds r0, #0x9c
	str r0, [sp, #0x1b4]
	cmp r2, r8
	beq .L080A8B50
.L080A8B38:
	cmp r3, #0
	beq .L080A8B48
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8B48:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080A8B38
.L080A8B50:
	adds r5, r3, #0
	add r0, sp, #0x134
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8B6E
	cmp r5, #0
	beq .L080A8B6A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8B6A:
	adds r5, #0x10
	b .L080A8B90
.L080A8B6E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A8B8E
.L080A8B76:
	cmp r2, #0
	beq .L080A8B86
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8B86:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8B76
.L080A8B8E:
	adds r5, r2, #0
.L080A8B90:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A8BA0
.L080A8B9A:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A8B9A
.L080A8BA0:
	cmp r3, #0
	beq .L080A8BAA
	adds r0, r3, #0
	bl free
.L080A8BAA:
	ldr r0, [sp, #0x1bc]
	add r0, sl
	mov r6, sl
	str r6, [r7]
	b .L080A920C
.L080A8BB4:
	ldr r4, [sp]
	add r0, sp, #0x138
	ldr r3, [r4, #0xc]
	mov r1, sp
	movs r2, #0x88
	lsls r2, r2, #1
	bl _call_via_r3
	add r0, sp, #0x138
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r1, [sp, #0x38]
	movs r3, #0
	cmp r1, #0
	beq .L080A8BFC
	mov r0, r8
	ldrh r3, [r0, #4]
.L080A8BFC:
	adds r0, r4, #0
	ldr r2, .L080A8C2C @ =0x06003000
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8C30
.L080A8C0E:
	cmp r1, #0
	beq .L080A8C1E
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8C1E:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
.L080A8C24:
	ldr r5, [sp, #0x190]
	adds r5, #0x9c
	str r5, [sp, #0x1b4]
	b .L080A9224
	.align 2, 0
.L080A8C2C: .4byte 0x06003000
.L080A8C30:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x144
	str r0, [r1]
	ldr r2, [r7]
	mov r6, sl
	subs r0, r6, r2
	asrs r4, r0, #4
	add r0, sp, #0x140
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x140
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A8C52
	adds r1, r5, #0
.L080A8C52:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8C72
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A8C6E
	mov r0, r8
	bl func_080D3BC0
.L080A8C6E:
	ldr r3, [r7]
	b .L080A8C76
.L080A8C72:
	movs r0, #0
	mov r8, r0
.L080A8C76:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r0, [sp, #0x190]
	adds r0, #0x9c
	str r0, [sp, #0x1b4]
	cmp r2, sl
	beq .L080A8CA0
.L080A8C88:
	cmp r3, #0
	beq .L080A8C98
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8C98:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A8C88
.L080A8CA0:
	adds r5, r3, #0
	add r0, sp, #0x144
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8CBE
	cmp r5, #0
	beq .L080A8CBA
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8CBA:
	adds r5, #0x10
	b .L080A8CE0
.L080A8CBE:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A8CDE
.L080A8CC6:
	cmp r2, #0
	beq .L080A8CD6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8CD6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8CC6
.L080A8CDE:
	adds r5, r2, #0
.L080A8CE0:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A8CF0
.L080A8CEA:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A8CEA
.L080A8CF0:
	cmp r3, #0
	beq .L080A8CFA
	adds r0, r3, #0
	bl free
.L080A8CFA:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r6, [sp, #0x1bc]
	str r6, [r7]
	b .L080A920C
.L080A8D04:
	ldr r0, [sp, #0x190]
	adds r0, #0x9c
	str r0, [sp, #0x1b4]
	cmp r6, #1
	beq .L080A8D10
	b .L080A8E26
.L080A8D10:
	add r0, sp, #0x30
	ldr r1, .L080A8D40 @ =0x06007D00
	ldr r2, .L080A8D44 @ =0x06007C80
	movs r3, #0x80
	bl func_08008F0C
	add r1, sp, #0x30
	mov sb, r1
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8D48
	cmp r1, #0
	beq .L080A8D38
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8D38:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A8E26
	.align 2, 0
.L080A8D40: .4byte 0x06007D00
.L080A8D44: .4byte 0x06007C80
.L080A8D48:
	mov r8, r1
	add r1, sp, #0x14c
	str r6, [r1]
	ldr r2, [r7]
	mov r5, r8
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x148
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x148
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A8D68
	adds r1, r5, #0
.L080A8D68:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8D88
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080A8D84
	mov r0, sl
	bl func_080D3BC0
.L080A8D84:
	ldr r3, [r7]
	b .L080A8D8C
.L080A8D88:
	movs r0, #0
	mov sl, r0
.L080A8D8C:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	mov ip, r5
	ldr r0, [sp, #0x190]
	adds r0, #0x9c
	str r0, [sp, #0x1b4]
	cmp r2, r8
	beq .L080A8DBA
.L080A8D9E:
	mov r1, ip
	cmp r1, #0
	beq .L080A8DB0
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080A8DB0:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080A8D9E
.L080A8DBA:
	mov r5, ip
	add r0, sp, #0x14c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8DD8
	cmp r5, #0
	beq .L080A8DD4
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8DD4:
	adds r5, #0x10
	b .L080A8E00
.L080A8DD8:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080A8DFE
.L080A8DE0:
	cmp r2, #0
	beq .L080A8DF0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080A8DF0:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080A8DE0
.L080A8DFE:
	adds r5, r2, #0
.L080A8E00:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A8E10
.L080A8E0A:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A8E0A
.L080A8E10:
	cmp r3, #0
	beq .L080A8E1A
	adds r0, r3, #0
	bl free
.L080A8E1A:
	ldr r0, [sp, #0x1bc]
	add r0, sl
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A8E26:
	add r5, sp, #0x30
	movs r0, #0
	str r0, [sp, #0x30]
	strh r0, [r5, #4]
	add r2, sp, #0x38
	mov r8, r2
	str r0, [sp, #0x38]
	strh r0, [r2, #4]
	add r1, sp, #0x40
	str r0, [sp, #0x40]
	strh r0, [r1, #4]
	add r1, sp, #0x48
	str r0, [sp, #0x48]
	strh r0, [r1, #4]
	cmp r6, #1
	bne .L080A8E48
	b .L080A8F8A
.L080A8E48:
	cmp r6, #1
	bgt .L080A8E52
	cmp r6, #0
	beq .L080A8E5A
	b .L080A9224
.L080A8E52:
	cmp r6, #2
	bne .L080A8E58
	b .L080A90C8
.L080A8E58:
	b .L080A9224
.L080A8E5A:
	ldr r4, [sp]
	add r0, sp, #0x150
	ldr r3, [r4, #0xc]
	mov r1, sp
	ldr r2, .L080A8EC4 @ =0x0000012F
	bl _call_via_r3
	add r0, sp, #0x150
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r1, [sp, #0x38]
	movs r3, #0
	cmp r1, #0
	beq .L080A8EA0
	mov r5, r8
	ldrh r3, [r5, #4]
.L080A8EA0:
	adds r0, r4, #0
	ldr r2, .L080A8EC8 @ =0x06007C00
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8ECC
	cmp r1, #0
	bne .L080A8EB8
	b .L080A9132
.L080A8EB8:
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	b .L080A912E
	.align 2, 0
.L080A8EC4: .4byte 0x0000012F
.L080A8EC8: .4byte 0x06007C00
.L080A8ECC:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x15c
	str r0, [r1]
	ldr r2, [r7]
	mov r4, sl
	subs r0, r4, r2
	asrs r4, r0, #4
	add r0, sp, #0x158
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x158
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A8EEE
	adds r1, r5, #0
.L080A8EEE:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8F0E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A8F0A
	mov r0, r8
	bl func_080D3BC0
.L080A8F0A:
	ldr r3, [r7]
	b .L080A8F12
.L080A8F0E:
	movs r0, #0
	mov r8, r0
.L080A8F12:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L080A8F36
.L080A8F1E:
	cmp r3, #0
	beq .L080A8F2E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8F2E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A8F1E
.L080A8F36:
	adds r5, r3, #0
	add r0, sp, #0x15c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8F54
	cmp r5, #0
	beq .L080A8F50
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8F50:
	adds r5, #0x10
	b .L080A8F76
.L080A8F54:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A8F74
.L080A8F5C:
	cmp r2, #0
	beq .L080A8F6C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8F6C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8F5C
.L080A8F74:
	adds r5, r2, #0
.L080A8F76:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	bne .L080A8F82
	b .L080A91FA
.L080A8F82:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A8F82
	b .L080A91FA
.L080A8F8A:
	ldr r4, [sp]
	add r0, sp, #0x160
	ldr r3, [r4, #0xc]
	mov r1, sp
	ldr r2, .L080A8FF4 @ =0x00000151
	bl _call_via_r3
	add r0, sp, #0x160
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r1, [sp, #0x38]
	movs r3, #0
	cmp r1, #0
	beq .L080A8FD0
	mov r5, r8
	ldrh r3, [r5, #4]
.L080A8FD0:
	adds r0, r4, #0
	ldr r2, .L080A8FF8 @ =0x06007C00
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8FFC
	cmp r1, #0
	bne .L080A8FE8
	b .L080A9132
.L080A8FE8:
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	b .L080A912E
	.align 2, 0
.L080A8FF4: .4byte 0x00000151
.L080A8FF8: .4byte 0x06007C00
.L080A8FFC:
	mov r8, r1
	add r1, sp, #0x16c
	str r6, [r1]
	ldr r2, [r7]
	mov r4, r8
	subs r0, r4, r2
	asrs r4, r0, #4
	add r0, sp, #0x168
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x168
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A901C
	adds r1, r5, #0
.L080A901C:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A903C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0x1bc]
	cmp r0, #0
	bne .L080A9038
	adds r0, r4, #0
	bl func_080D3BC0
.L080A9038:
	ldr r3, [r7]
	b .L080A9042
.L080A903C:
	movs r0, #0
	movs r5, #0
	str r5, [sp, #0x1bc]
.L080A9042:
	adds r5, r0, #0
	mov sl, r5
	adds r2, r3, #0
	mov r3, sl
	cmp r2, r8
	beq .L080A9066
.L080A904E:
	cmp r3, #0
	beq .L080A905E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A905E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080A904E
.L080A9066:
	adds r5, r3, #0
	add r0, sp, #0x16c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A9084
	cmp r5, #0
	beq .L080A9080
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A9080:
	adds r5, #0x10
	b .L080A90A6
.L080A9084:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A90A4
.L080A908C:
	cmp r2, #0
	beq .L080A909C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A909C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A908C
.L080A90A4:
	adds r5, r2, #0
.L080A90A6:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A90B6
.L080A90B0:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A90B0
.L080A90B6:
	cmp r3, #0
	beq .L080A90C0
	adds r0, r3, #0
	bl free
.L080A90C0:
	ldr r0, [sp, #0x1bc]
	add r0, sl
	mov r1, sl
	b .L080A920A
.L080A90C8:
	ldr r4, [sp]
	add r0, sp, #0x170
	ldr r3, [r4, #0xc]
	mov r1, sp
	movs r2, #0x88
	lsls r2, r2, #1
	bl _call_via_r3
	add r0, sp, #0x170
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r1, [sp, #0x38]
	movs r3, #0
	cmp r1, #0
	beq .L080A9110
	mov r0, r8
	ldrh r3, [r0, #4]
.L080A9110:
	adds r0, r4, #0
	ldr r2, .L080A913C @ =0x06007C00
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A9140

	non_word_aligned_thumb_func_start sub_080A9122
sub_080A9122: @ 0x080A9122
	cmp r1, #0
	beq .L080A9132
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
.L080A912E:
	ldr r1, [r1]
	str r1, [r0]
.L080A9132:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A9224
	.align 2, 0
.L080A913C: .4byte 0x06007C00
.L080A9140:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x17c
	str r0, [r1]
	ldr r2, [r7]
	mov r5, sl
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x178
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x178
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A9162
	adds r1, r5, #0
.L080A9162:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A9182
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A917E
	mov r0, r8
	bl func_080D3BC0
.L080A917E:
	ldr r3, [r7]
	b .L080A9186
.L080A9182:
	movs r0, #0
	mov r8, r0
.L080A9186:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L080A91AA
.L080A9192:
	cmp r3, #0
	beq .L080A91A2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A91A2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A9192
.L080A91AA:
	adds r5, r3, #0
	add r0, sp, #0x17c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A91C8
	cmp r5, #0
	beq .L080A91C4
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A91C4:
	adds r5, #0x10
	b .L080A91EA
.L080A91C8:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A91E8
.L080A91D0:
	cmp r2, #0
	beq .L080A91E0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A91E0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A91D0
.L080A91E8:
	adds r5, r2, #0
.L080A91EA:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A91FA
.L080A91F4:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A91F4
.L080A91FA:
	cmp r3, #0
	beq .L080A9204
	adds r0, r3, #0
	bl free
.L080A9204:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
.L080A920A:
	str r1, [r7]
.L080A920C:
	str r5, [r7, #4]
	str r0, [r7, #0xc]
	b .L080A9224
.L080A9212:
	ldr r1, .L080A9238 @ =gUnk_08107154
	ldr r0, [sp, #0x190]
	movs r2, #0
	adds r3, r7, #0
	bl func_080A5AB0
	ldr r2, [sp, #0x190]
	adds r2, #0x9c
	str r2, [sp, #0x1b4]
.L080A9224:
	ldr r3, [sp, #0x190]
	ldr r0, [r3]
	cmp r0, #8
	bne .L080A922E
	b .L080A93F2
.L080A922E:
	cmp r0, #8
	bgt .L080A923C
	cmp r0, #6
	beq .L080A924C
	b .L080A93F2
	.align 2, 0
.L080A9238: .4byte gUnk_08107154
.L080A923C:
	cmp r0, #0x1d
	beq .L080A9242
	b .L080A93F2
.L080A9242:
	ldr r1, [sp, #0x190]
	adds r1, #0x98
	movs r0, #1
	strb r0, [r1]
	b .L080A93F2
.L080A924C:
	ldr r0, [sp, #0x194]
	adds r0, #0x5d
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9270
	ldr r1, .L080A9488 @ =gUnk_0810725C
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A9270
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	bl Unpack
.L080A9270:
	ldr r0, [sp, #0x194]
	adds r0, #0x54
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9294
	ldr r1, .L080A948C @ =gUnk_0810730C
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A9294
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	bl Unpack
.L080A9294:
	ldr r1, [sp, #0x194]
	adds r1, #0x4e
	ldrh r0, [r1]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1e
	adds r4, r1, #0
	cmp r0, #1
	bne .L080A92BA
	ldr r1, .L080A9490 @ =gUnk_08107230
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A92BA
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r1, r1, r6
	bl Unpack
.L080A92BA:
	ldr r0, [sp, #0x194]
	adds r0, #0x4f
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A92DE
	ldr r1, .L080A9490 @ =gUnk_08107230
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A92DE
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl Unpack
.L080A92DE:
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9314
	ldr r1, .L080A9494 @ =gUnk_08107204
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A92FE
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	bl Unpack
.L080A92FE:
	ldr r1, .L080A9498 @ =gUnk_081072B4
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A9314
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	bl Unpack
.L080A9314:
	ldr r0, [sp, #0x194]
	adds r0, #0x51
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9338
	ldr r1, .L080A949C @ =gUnk_08107288
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A9338
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	bl Unpack
.L080A9338:
	ldr r0, [sp, #0x194]
	adds r0, #0x52
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A935C
	ldr r1, .L080A9494 @ =gUnk_08107204
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A935C
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r1, r1, r6
	bl Unpack
.L080A935C:
	ldr r0, [sp, #0x194]
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9396
	ldr r1, .L080A9494 @ =gUnk_08107204
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A9380
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl Unpack
.L080A9380:
	ldr r1, .L080A9498 @ =gUnk_081072B4
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A9396
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	bl Unpack
.L080A9396:
	ldr r0, [sp, #0x194]
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A93BA
	ldr r1, .L080A9494 @ =gUnk_08107204
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A93BA
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	bl Unpack
.L080A93BA:
	ldr r0, [sp, #0x194]
	adds r0, #0x4c
	ldrb r0, [r0]
	lsrs r0, r0, #6
	cmp r0, #1
	bne .L080A93F2
	ldr r1, .L080A94A0 @ =gUnk_081072E0
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A93DC
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	bl Unpack
.L080A93DC:
	ldr r1, .L080A9490 @ =gUnk_08107230
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A93F2
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r1, r1, r6
	bl Unpack
.L080A93F2:
	ldr r0, [sp, #0x1b4]
	bl func_080AAF10
	mov sl, r0
	ldr r0, [sp, #0x1b4]
	bl func_080AAF1C
	str r0, [sp, #0x19c]
	mov r1, sl
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080A9410
	b .L080A958C
.L080A9410:
	mov r0, sp
	adds r0, #0x30
	str r0, [sp, #0x1a0]
.L080A9416:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0
	bl func_080AAF28
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, [sp]
	add r0, sp, #0x180
	ldr r3, [r4, #0xc]
	mov r1, sp
	bl _call_via_r3
	add r0, sp, #0x180
	ldr r0, [r0]
	ldrh r2, [r0]
	ldr r0, [sp, #0x1a0]
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	mov r3, sl
	ldrh r2, [r3, #0x14]
	add r0, sp, #0x38
	movs r3, #0
	cmp r1, #0
	beq .L080A9454
	ldrh r3, [r0, #4]
.L080A9454:
	lsls r2, r2, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r2, r2, r4
	add r0, sp, #0x50
	bl func_08008F0C
	add r5, sp, #0x50
	mov sb, r5
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A94A4
	cmp r1, #0
	beq .L080A947E
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A947E:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A9574
	.align 2, 0
.L080A9488: .4byte gUnk_0810725C
.L080A948C: .4byte gUnk_0810730C
.L080A9490: .4byte gUnk_08107230
.L080A9494: .4byte gUnk_08107204
.L080A9498: .4byte gUnk_081072B4
.L080A949C: .4byte gUnk_08107288
.L080A94A0: .4byte gUnk_081072E0
.L080A94A4:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r5, sp, #0x18c
	str r0, [r5]
	ldr r2, [r7]
	ldr r4, [sp, #0x1c0]
	subs r0, r4, r2
	asrs r4, r0, #4
	add r0, sp, #0x188
	str r4, [r0]
	ldr r1, [r5]
	adds r3, r2, #0
	cmp r4, r1
	bhs .L080A94C2
	adds r0, r5, #0
.L080A94C2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A94E2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A94DE
	mov r0, r8
	bl func_080D3BC0
.L080A94DE:
	ldr r3, [r7]
	b .L080A94E6
.L080A94E2:
	movs r0, #0
	mov r8, r0
.L080A94E6:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r5, [sp, #0x1c0]
	cmp r2, r5
	beq .L080A950E
.L080A94F4:
	cmp r3, #0
	beq .L080A9504
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A9504:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	bne .L080A94F4
.L080A950E:
	adds r5, r3, #0
	add r0, sp, #0x18c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A952C
	cmp r5, #0
	beq .L080A9528
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A9528:
	adds r5, #0x10
	b .L080A954E
.L080A952C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A954C
.L080A9534:
	cmp r2, #0
	beq .L080A9544
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A9544:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A9534
.L080A954C:
	adds r5, r2, #0
.L080A954E:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A955E
.L080A9558:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A9558
.L080A955E:
	cmp r3, #0
	beq .L080A9568
	adds r0, r3, #0
	bl free
.L080A9568:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r6, [sp, #0x1bc]
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A9574:
	mov r0, sl
	bl func_080E2B28
	mov sl, r0
	mov r1, sl
	ldr r0, [sp, #0x19c]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080A958C
	b .L080A9416
.L080A958C:
	ldr r0, .L080A95A0 @ =vtable_unk_080E5A28
	str r0, [sp]
	add sp, #0x1c4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A95A0: .4byte vtable_unk_080E5A28

	thumb_func_start func_080A95A4
func_080A95A4: @ 0x080A95A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe8
	adds r7, r0, #0
	str r1, [sp, #0xd8]
	mov sb, r2
	adds r4, r7, #0
	adds r4, #0x94
	ldr r0, [r4]
	ldr r1, .L080A95EC @ =0x0000214C
	adds r1, r0, r1
	str r1, [sp, #0xdc]
	ldr r0, [r7, #4]
	bl GetMapData
	adds r5, r0, #0
	ldr r0, [r4]
	adds r0, #0x10
	bl func_0800E324
	adds r6, r0, #0
	ldr r0, [r4]
	ldr r4, [r0, #8]
	ldr r1, .L080A95F0 @ =gUnk_086678A0
	mov r0, sp
	bl func_0805E6CC
	ldr r0, [r7]
	cmp r0, #0x2e
	bgt .L080A95F4
	cmp r0, #0x2d
	bge .L080A95FA
	b .L080A960C
	.align 2, 0
.L080A95EC: .4byte 0x0000214C
.L080A95F0: .4byte gUnk_086678A0
.L080A95F4:
	cmp r0, #0x2f
	beq .L080A9604
	b .L080A960C
.L080A95FA:
	movs r6, #1
	movs r2, #1
	str r2, [sp, #0xd8]
	movs r4, #0
	b .L080A960C
.L080A9604:
	movs r6, #3
	movs r3, #1
	str r3, [sp, #0xd8]
	movs r4, #4
.L080A960C:
	ldr r0, [r7, #4]
	cmp r0, #0x10
	beq .L080A9626
	cmp r0, #0x11
	beq .L080A9664
	ldr r4, [sp, #0xd8]
	cmp r4, #0
	blt .L080A96DE
	cmp r4, #2
	ble .L080A96B8
	cmp r4, #3
	beq .L080A96CC
	b .L080A96DE
.L080A9626:
	ldr r0, [sp, #0xd8]
	cmp r0, #0
	blt .L080A96DE
	cmp r0, #2
	ble .L080A9636
	cmp r0, #3
	beq .L080A964C
	b .L080A96DE
.L080A9636:
	cmp r4, #0
	bne .L080A9642
	ldr r0, [r5, #4]
	mov r1, sb
	lsls r2, r1, #2
	b .L080A96BE
.L080A9642:
	ldr r0, .L080A9648 @ =gUnk_08714A30
	b .L080A96BA
	.align 2, 0
.L080A9648: .4byte gUnk_08714A30
.L080A964C:
	cmp r4, #0
	bne .L080A9658
	ldr r0, [r5, #8]
	mov r4, sb
	lsls r2, r4, #2
	b .L080A96BE
.L080A9658:
	ldr r0, .L080A9660 @ =gUnk_08714B60
	mov r1, sb
	lsls r2, r1, #2
	b .L080A96BE
	.align 2, 0
.L080A9660: .4byte gUnk_08714B60
.L080A9664:
	ldr r0, [sp, #0xdc]
	adds r0, #0x5d
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A967C
	ldr r0, .L080A9678 @ =gUnk_08714BEC
	b .L080A96BA
	.align 2, 0
.L080A9678: .4byte gUnk_08714BEC
.L080A967C:
	ldr r0, [sp, #0xd8]
	cmp r0, #0
	blt .L080A96DE
	cmp r0, #2
	ble .L080A968C
	cmp r0, #3
	beq .L080A96A0
	b .L080A96DE
.L080A968C:
	cmp r4, #0
	bne .L080A9698
	ldr r0, [r5, #4]
	mov r1, sb
	lsls r2, r1, #2
	b .L080A96BE
.L080A9698:
	ldr r0, .L080A969C @ =gUnk_08716F84
	b .L080A96BA
	.align 2, 0
.L080A969C: .4byte gUnk_08716F84
.L080A96A0:
	cmp r4, #0
	bne .L080A96AC
	ldr r0, [r5, #8]
	mov r4, sb
	lsls r2, r4, #2
	b .L080A96BE
.L080A96AC:
	ldr r0, .L080A96B4 @ =gUnk_087170B8
	mov r1, sb
	lsls r2, r1, #2
	b .L080A96BE
	.align 2, 0
.L080A96B4: .4byte gUnk_087170B8
.L080A96B8:
	ldr r0, [r5, #4]
.L080A96BA:
	mov r3, sb
	lsls r2, r3, #2
.L080A96BE:
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	bl Unpack
	b .L080A96DE
.L080A96CC:
	ldr r0, [r5, #8]
	mov r4, sb
	lsls r2, r4, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	bl Unpack
.L080A96DE:
	ldr r0, [r7, #4]
	movs r1, #0x9c
	adds r1, r1, r7
	mov r8, r1
	cmp r0, #0x33
	bls .L080A96EC
	b .L080A9E42
.L080A96EC:
	lsls r0, r0, #2
	ldr r1, .L080A96F8 @ =.L080A96FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A96F8: .4byte .L080A96FC
.L080A96FC: @ jump table
	.4byte .L080A97CC @ case 0
	.4byte .L080A98DC @ case 1
	.4byte .L080A9E42 @ case 2
	.4byte .L080A9E42 @ case 3
	.4byte .L080A9B44 @ case 4
	.4byte .L080A9E42 @ case 5
	.4byte .L080A9B44 @ case 6
	.4byte .L080A9E42 @ case 7
	.4byte .L080A9E42 @ case 8
	.4byte .L080A9E42 @ case 9
	.4byte .L080A9E42 @ case 10
	.4byte .L080A9E42 @ case 11
	.4byte .L080A996C @ case 12
	.4byte .L080A9E42 @ case 13
	.4byte .L080A9E42 @ case 14
	.4byte .L080A9E42 @ case 15
	.4byte .L080A9E42 @ case 16
	.4byte .L080A9E42 @ case 17
	.4byte .L080A9E42 @ case 18
	.4byte .L080A9E42 @ case 19
	.4byte .L080A9E42 @ case 20
	.4byte .L080A9E42 @ case 21
	.4byte .L080A9E42 @ case 22
	.4byte .L080A9E42 @ case 23
	.4byte .L080A9E42 @ case 24
	.4byte .L080A9E42 @ case 25
	.4byte .L080A9E42 @ case 26
	.4byte .L080A9E42 @ case 27
	.4byte .L080A9E42 @ case 28
	.4byte .L080A9E42 @ case 29
	.4byte .L080A9E42 @ case 30
	.4byte .L080A9E42 @ case 31
	.4byte .L080A9E42 @ case 32
	.4byte .L080A9E42 @ case 33
	.4byte .L080A9E42 @ case 34
	.4byte .L080A9E42 @ case 35
	.4byte .L080A9E42 @ case 36
	.4byte .L080A9E42 @ case 37
	.4byte .L080A9E42 @ case 38
	.4byte .L080A9E42 @ case 39
	.4byte .L080A9E42 @ case 40
	.4byte .L080A9E42 @ case 41
	.4byte .L080A9CBC @ case 42
	.4byte .L080A9CBC @ case 43
	.4byte .L080A9E42 @ case 44
	.4byte .L080A9E42 @ case 45
	.4byte .L080A9E42 @ case 46
	.4byte .L080A9E42 @ case 47
	.4byte .L080A9E42 @ case 48
	.4byte .L080A9E42 @ case 49
	.4byte .L080A9E42 @ case 50
	.4byte .L080A99E8 @ case 51
.L080A97CC:
	ldr r2, [sp, #0xd8]
	cmp r2, #3
	beq .L080A97F4
	ldr r0, .L080A97F0 @ =gUnk_086D6368
	mov r3, sb
	lsls r4, r3, #2
	adds r5, r7, #0
	adds r5, #0x1c
	adds r1, r5, r4
	ldr r1, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0x60
	bl func_08008E64
	b .L080A980E
	.align 2, 0
.L080A97F0: .4byte gUnk_086D6368
.L080A97F4:
	ldr r0, .L080A981C @ =gUnk_086D6548
	mov r3, sb
	lsls r4, r3, #2
	adds r5, r7, #0
	adds r5, #0x1c
	adds r1, r5, r4
	ldr r1, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0x60
	bl func_08008E64
.L080A980E:
	cmp r6, #1
	beq .L080A9838
	cmp r6, #1
	bgt .L080A9820
	cmp r6, #0
	beq .L080A9826
	b .L080A9862
	.align 2, 0
.L080A981C: .4byte gUnk_086D6548
.L080A9820:
	cmp r6, #2
	beq .L080A9850
	b .L080A9862
.L080A9826:
	ldr r0, .L080A9834 @ =gUnk_08699FF4
	adds r1, r5, r4
	ldr r1, [r1]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	b .L080A9844
	.align 2, 0
.L080A9834: .4byte gUnk_08699FF4
.L080A9838:
	ldr r0, .L080A984C @ =gUnk_0869B284
	adds r1, r5, r4
	ldr r1, [r1]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
.L080A9844:
	movs r2, #0x80
	bl func_08008E64
	b .L080A9862
	.align 2, 0
.L080A984C: .4byte gUnk_0869B284
.L080A9850:
	ldr r0, .L080A98CC @ =gUnk_08698B00
	adds r1, r5, r4
	ldr r1, [r1]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0x80
	bl func_08008E64
.L080A9862:
	movs r0, #0x9c
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [sp, #0xd8]
	cmp r1, #3
	beq .L080A9870
	b .L080A9E42
.L080A9870:
	adds r4, r5, r4
	add r2, sp, #0x70
	movs r3, #0xa
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	movs r3, #0xa0
	lsls r3, r3, #2
	ldrh r1, [r2]
	ldr r0, .L080A98D0 @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r3
	strh r0, [r2]
	ldr r0, [r4]
	mov sl, r2
	ldr r6, .L080A98D4 @ =0x000014A5
	str r6, [sp, #0x74]
	add r2, sp, #0x30
	add r3, sp, #0x50
	cmp r2, r3
	beq .L080A98A8
.L080A98A0:
	strh r6, [r2]
	adds r2, #2
	cmp r2, r3
	bne .L080A98A0
.L080A98A8:
	movs r6, #9
	movs r2, #0x90
	lsls r2, r2, #1
	adds r4, r0, r2
	ldr r5, .L080A98D8 @ =func_03000C2C
.L080A98B2:
	mov r0, sl
	ldr r3, [r0]
	adds r0, r4, #0
	add r1, sp, #0x30
	adds r2, r4, #0
	bl _call_via_r5
	adds r4, #0x20
	adds r6, #1
	cmp r6, #0xf
	blo .L080A98B2
	b .L080A9E42
	.align 2, 0
.L080A98CC: .4byte gUnk_08698B00
.L080A98D0: .4byte 0xFFFFFC1F
.L080A98D4: .4byte 0x000014A5
.L080A98D8: .4byte func_03000C2C
.L080A98DC:
	ldr r0, .L080A995C @ =gUnk_086D74F8
	mov r1, sb
	lsls r2, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r4, r1, r2
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0x60
	bl func_08008E64
	movs r3, #0x9c
	adds r3, r3, r7
	mov r8, r3
	ldr r0, [sp, #0xd8]
	cmp r0, #3
	beq .L080A9904
	b .L080A9E42
.L080A9904:
	add r2, sp, #0x78
	movs r3, #0xa
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	movs r3, #0xa0
	lsls r3, r3, #2
	ldrh r1, [r2]
	ldr r0, .L080A9960 @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r3
	strh r0, [r2]
	ldr r0, [r4]
	mov sl, r2
	ldr r4, .L080A9964 @ =0x000014A5
	str r4, [sp, #0x7c]
	add r2, sp, #0x30
	add r3, sp, #0x50
	cmp r2, r3
	beq .L080A993A
.L080A9932:
	strh r4, [r2]
	adds r2, #2
	cmp r2, r3
	bne .L080A9932
.L080A993A:
	movs r5, #8
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r6, .L080A9968 @ =func_03000C2C
.L080A9944:
	mov r2, sl
	ldr r3, [r2]
	adds r0, r4, #0
	add r1, sp, #0x30
	adds r2, r4, #0
	bl _call_via_r6
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xf
	blo .L080A9944
	b .L080A9E42
	.align 2, 0
.L080A995C: .4byte gUnk_086D74F8
.L080A9960: .4byte 0xFFFFFC1F
.L080A9964: .4byte 0x000014A5
.L080A9968: .4byte func_03000C2C
.L080A996C:
	ldr r3, [sp, #0xd8]
	cmp r3, #3
	beq .L080A99A0
	cmp r6, #0
	beq .L080A997C
	cmp r6, #2
	beq .L080A9984
	b .L080A9B7A
.L080A997C:
	ldr r0, .L080A9980 @ =gUnk_086EACE4
	b .L080A99AC
	.align 2, 0
.L080A9980: .4byte gUnk_086EACE4
.L080A9984:
	ldr r0, .L080A999C @ =gUnk_086EAD24
	mov r3, sb
	lsls r2, r3, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0xc0
	movs r2, #0x20
	bl func_08008E64
	b .L080A9B7A
	.align 2, 0
.L080A999C: .4byte gUnk_086EAD24
.L080A99A0:
	cmp r6, #0
	beq .L080A99AA
	cmp r6, #2
	beq .L080A99CC
	b .L080A9E3C
.L080A99AA:
	ldr r0, .L080A99C8 @ =gUnk_086EAD04
.L080A99AC:
	mov r1, sb
	lsls r2, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0xc0
	movs r2, #0x20
	bl func_08008E64
	movs r2, #0x9c
	adds r2, r2, r7
	mov r8, r2
	b .L080A9E42
	.align 2, 0
.L080A99C8: .4byte gUnk_086EAD04
.L080A99CC:
	ldr r0, .L080A99E4 @ =gUnk_086EAD44
	mov r3, sb
	lsls r2, r3, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0xc0
	movs r2, #0x20
	bl func_08008E64
	b .L080A9B7A
	.align 2, 0
.L080A99E4: .4byte gUnk_086EAD44
.L080A99E8:
	add r0, sp, #0x30
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x30]
	mov r1, r8
	strh r0, [r1, #4]
	add r1, sp, #0x38
	str r0, [sp, #0x38]
	strh r0, [r1, #4]
	add r2, sp, #0x40
	mov sl, r2
	str r0, [sp, #0x40]
	strh r0, [r2, #4]
	add r1, sp, #0x48
	str r0, [sp, #0x48]
	strh r0, [r1, #4]
	cmp r6, #1
	beq .L080A9A80
	cmp r6, #1
	bgt .L080A9A16
	cmp r6, #0
	beq .L080A9A1C
	b .L080A9B6E
.L080A9A16:
	cmp r6, #2
	beq .L080A9AE4
	b .L080A9B7A
.L080A9A1C:
	ldr r5, [sp]
	add r4, sp, #0x80
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080A9A7C @ =0x0000012F
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
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
	ldr r3, [sp, #0x40]
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9A72
	mov r4, sl
	ldrh r2, [r4, #4]
.L080A9A72:
	adds r0, r3, #0
	bl func_08008E64
	b .L080A9E3C
	.align 2, 0
.L080A9A7C: .4byte 0x0000012F
.L080A9A80:
	ldr r5, [sp]
	add r4, sp, #0x88
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080A9AE0 @ =0x00000151
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
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
	ldr r3, [sp, #0x40]
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9AD6
	mov r4, sl
	ldrh r2, [r4, #4]
.L080A9AD6:
	adds r0, r3, #0
	bl func_08008E64
	b .L080A9E3C
	.align 2, 0
.L080A9AE0: .4byte 0x00000151
.L080A9AE4:
	ldr r5, [sp]
	add r4, sp, #0x90
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0x88
	lsls r2, r2, #1
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
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
	ldr r3, [sp, #0x40]
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9B3C
	mov r4, sl
	ldrh r2, [r4, #4]
.L080A9B3C:
	adds r0, r3, #0
	bl func_08008E64
	b .L080A9E3C
.L080A9B44:
	add r1, sp, #0x30
	mov r8, r1
	movs r0, #0
	str r0, [sp, #0x30]
	strh r0, [r1, #4]
	add r1, sp, #0x38
	str r0, [sp, #0x38]
	strh r0, [r1, #4]
	add r2, sp, #0x40
	mov sl, r2
	str r0, [sp, #0x40]
	strh r0, [r2, #4]
	add r1, sp, #0x48
	str r0, [sp, #0x48]
	strh r0, [r1, #4]
	cmp r6, #1
	beq .L080A9BEA
	cmp r6, #1
	bgt .L080A9B76
	cmp r6, #0
	beq .L080A9B82
.L080A9B6E:
	movs r3, #0x9c
	adds r3, r3, r7
	mov r8, r3
	b .L080A9E42
.L080A9B76:
	cmp r6, #2
	beq .L080A9C52
.L080A9B7A:
	movs r4, #0x9c
	adds r4, r4, r7
	mov r8, r4
	b .L080A9E42
.L080A9B82:
	movs r2, #0x98
	lsls r2, r2, #1
	ldr r0, [sp, #0xd8]
	cmp r0, #3
	beq .L080A9B8E
	subs r2, #1
.L080A9B8E:
	ldr r5, [sp]
	add r4, sp, #0x98
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
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
	ldr r3, [sp, #0x40]
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9BE2
	mov r4, sl
	ldrh r2, [r4, #4]
.L080A9BE2:
	adds r0, r3, #0
	bl func_08008E64
	b .L080A9E3C
.L080A9BEA:
	movs r2, #0xa9
	lsls r2, r2, #1
	ldr r1, [sp, #0xd8]
	cmp r1, #3
	beq .L080A9BF6
	subs r2, #1
.L080A9BF6:
	ldr r5, [sp]
	add r4, sp, #0xa0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r3, [sp, #0x40]
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9C4A
	mov r4, sl
	ldrh r2, [r4, #4]
.L080A9C4A:
	adds r0, r3, #0
	bl func_08008E64
	b .L080A9E3C
.L080A9C52:
	ldr r2, .L080A9CB8 @ =0x00000111
	ldr r1, [sp, #0xd8]
	cmp r1, #3
	beq .L080A9C5C
	subs r2, #1
.L080A9C5C:
	ldr r5, [sp]
	add r4, sp, #0xa8
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r3, [sp, #0x40]
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9CB0
	mov r4, sl
	ldrh r2, [r4, #4]
.L080A9CB0:
	adds r0, r3, #0
	bl func_08008E64
	b .L080A9E3C
	.align 2, 0
.L080A9CB8: .4byte 0x00000111
.L080A9CBC:
	add r1, sp, #0x30
	mov sl, r1
	movs r0, #0
	str r0, [sp, #0x30]
	strh r0, [r1, #4]
	add r1, sp, #0x38
	str r0, [sp, #0x38]
	strh r0, [r1, #4]
	mov r2, sp
	adds r2, #0x40
	str r2, [sp, #0xe0]
	str r0, [sp, #0x40]
	strh r0, [r2, #4]
	add r1, sp, #0x48
	str r0, [sp, #0x48]
	strh r0, [r1, #4]
	ldr r5, [sp]
	add r4, sp, #0xb0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080AA074 @ =0x00000109
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r6, sp, #0x50
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sl
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r0, [sp, #0x40]
	adds r3, r0, #0
	mov r0, sb
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9D38
	ldr r4, [sp, #0xe0]
	ldrh r2, [r4, #4]
.L080A9D38:
	adds r0, r3, #0
	bl func_08008E64
	ldr r5, [sp]
	add r4, sp, #0xb8
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080AA078 @ =0x00000147
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sl
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r3, [sp, #0x40]
	mov r4, r8
	ldr r0, [r4]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9D8C
	ldr r4, [sp, #0xe0]
	ldrh r2, [r4, #4]
.L080A9D8C:
	adds r0, r3, #0
	bl func_08008E64
	ldr r5, [sp]
	add r4, sp, #0xc0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0x40
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sl
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r3, [sp, #0x40]
	mov r4, r8
	ldr r0, [r4]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9DE0
	ldr r4, [sp, #0xe0]
	ldrh r2, [r4, #4]
.L080A9DE0:
	adds r0, r3, #0
	bl func_08008E64
	ldr r5, [sp]
	add r4, sp, #0xc8
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0xc8
	lsls r2, r2, #1
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sl
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r3, [sp, #0x40]
	mov r4, r8
	ldr r0, [r4]
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9E36
	ldr r4, [sp, #0xe0]
	ldrh r2, [r4, #4]
.L080A9E36:
	adds r0, r3, #0
	bl func_08008E64
.L080A9E3C:
	movs r0, #0x9c
	adds r0, r0, r7
	mov r8, r0
.L080A9E42:
	ldr r0, [r7]
	cmp r0, #6
	beq .L080A9E4A
	b .L080AA1A6
.L080A9E4A:
	ldr r0, [sp, #0xdc]
	adds r0, #0x5d
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9EA4
	ldr r2, .L080AA07C @ =gUnk_0810725C
	movs r0, #0
	ldr r1, [sp, #0xd8]
	cmp r1, #3
	bne .L080A9E64
	movs r0, #4
.L080A9E64:
	adds r1, r2, #0
	adds r1, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080A9EA4
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r4, r0, #8
	movs r0, #0
	ldr r3, [sp, #0xd8]
	cmp r3, #3
	bne .L080A9E82
	movs r0, #4
.L080A9E82:
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #2
	adds r3, r7, #0
	adds r3, #0x1c
	adds r3, r3, r1
	adds r1, r2, #0
	adds r1, #0x28
	ldrb r2, [r1]
	subs r2, #1
	lsls r2, r2, #5
	ldr r1, [r3]
	adds r1, r1, r2
	lsrs r2, r4, #3
	bl func_08008E64
.L080A9EA4:
	ldr r0, [sp, #0xdc]
	adds r0, #0x54
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9EE0
	ldr r3, .L080AA080 @ =gUnk_0810730C
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080A9EE0
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080A9EE0:
	ldr r1, [sp, #0xdc]
	adds r1, #0x4e
	ldrh r0, [r1]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1e
	adds r5, r1, #0
	cmp r0, #1
	bne .L080A9F1E
	ldr r3, .L080AA084 @ =gUnk_08107230
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080A9F1E
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080A9F1E:
	ldr r0, [sp, #0xdc]
	adds r0, #0x4f
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9F5A
	ldr r3, .L080AA084 @ =gUnk_08107230
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080A9F5A
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080A9F5A:
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9FC0
	ldr r3, .L080AA088 @ =gUnk_08107204
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080A9F92
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080A9F92:
	ldr r3, .L080AA08C @ =gUnk_081072B4
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080A9FC0
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080A9FC0:
	ldr r0, [sp, #0xdc]
	adds r0, #0x51
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9FFC
	ldr r3, .L080AA090 @ =gUnk_08107288
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080A9FFC
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080A9FFC:
	ldr r0, [sp, #0xdc]
	adds r0, #0x52
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080AA038
	ldr r3, .L080AA088 @ =gUnk_08107204
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080AA038
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080AA038:
	ldr r0, [sp, #0xdc]
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080AA0C6
	ldr r3, .L080AA088 @ =gUnk_08107204
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080AA098
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	b .L080AA094
	.align 2, 0
.L080AA074: .4byte 0x00000109
.L080AA078: .4byte 0x00000147
.L080AA07C: .4byte gUnk_0810725C
.L080AA080: .4byte gUnk_0810730C
.L080AA084: .4byte gUnk_08107230
.L080AA088: .4byte gUnk_08107204
.L080AA08C: .4byte gUnk_081072B4
.L080AA090: .4byte gUnk_08107288
.L080AA094:
	bl func_08008E64
.L080AA098:
	ldr r3, .L080AA25C @ =gUnk_081072B4
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080AA0C6
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080AA0C6:
	ldr r0, [sp, #0xdc]
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080AA102
	ldr r3, .L080AA260 @ =gUnk_08107204
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080AA102
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080AA102:
	ldr r0, [sp, #0xdc]
	adds r0, #0x4c
	ldrb r0, [r0]
	lsrs r0, r0, #6
	cmp r0, #1
	bne .L080AA1A6
	ldr r2, .L080AA264 @ =gUnk_081072E0
	movs r0, #0
	ldr r3, [sp, #0xd8]
	cmp r3, #3
	bne .L080AA11A
	movs r0, #4
.L080AA11A:
	adds r1, r2, #0
	adds r1, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080AA15A
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r4, r0, #8
	movs r0, #0
	ldr r3, [sp, #0xd8]
	cmp r3, #3
	bne .L080AA138
	movs r0, #4
.L080AA138:
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #2
	adds r3, r7, #0
	adds r3, #0x1c
	adds r3, r3, r1
	adds r1, r2, #0
	adds r1, #0x28
	ldrb r2, [r1]
	subs r2, #1
	lsls r2, r2, #5
	ldr r1, [r3]
	adds r1, r1, r2
	lsrs r2, r4, #3
	bl func_08008E64
.L080AA15A:
	ldr r2, .L080AA268 @ =gUnk_08107230
	movs r0, #0
	ldr r4, [sp, #0xd8]
	cmp r4, #3
	bne .L080AA166
	movs r0, #4
.L080AA166:
	adds r1, r2, #0
	adds r1, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080AA1A6
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r4, r0, #8
	movs r0, #0
	ldr r3, [sp, #0xd8]
	cmp r3, #3
	bne .L080AA184
	movs r0, #4
.L080AA184:
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #2
	adds r3, r7, #0
	adds r3, #0x1c
	adds r3, r3, r1
	adds r1, r2, #0
	adds r1, #0x28
	ldrb r2, [r1]
	subs r2, #1
	lsls r2, r2, #5
	ldr r1, [r3]
	adds r1, r1, r2
	lsrs r2, r4, #3
	bl func_08008E64
.L080AA1A6:
	mov r0, r8
	bl func_080AAF10
	adds r5, r0, #0
	mov r0, r8
	bl func_080AAF1C
	mov r8, r0
	adds r1, r5, #0
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080AA23C
	mov r4, sp
	adds r4, #0x30
	str r4, [sp, #0xe4]
	mov r0, sb
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	mov sl, r0
.L080AA1D4:
	ldr r0, [r5, #0x10]
	adds r6, r5, #0
	adds r6, #0x14
	movs r1, #0
	ldr r2, [sp, #0xd8]
	cmp r2, #3
	bne .L080AA1E4
	movs r1, #1
.L080AA1E4:
	bl func_080AAF28
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, [sp]
	add r0, sp, #0xd0
	ldr r3, [r4, #0xc]
	mov r1, sp
	bl _call_via_r3
	add r0, sp, #0xd0
	ldr r0, [r0]
	ldrh r2, [r0]
	ldr r0, [sp, #0xe4]
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	ldr r3, [sp, #0x40]
	ldrb r0, [r6, #2]
	lsls r0, r0, #5
	mov r4, sl
	ldr r1, [r4]
	adds r1, r1, r0
	add r0, sp, #0x40
	movs r2, #0
	cmp r3, #0
	beq .L080AA220
	ldrh r2, [r0, #4]
.L080AA220:
	adds r0, r3, #0
	bl func_08008E64
	adds r0, r5, #0
	bl func_080E2B28
	adds r5, r0, #0
	adds r1, r5, #0
	mov r0, r8
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080AA1D4
.L080AA23C:
	adds r0, r7, #0
	ldr r1, [sp, #0xd8]
	mov r2, sb
	bl func_080AA270
	ldr r0, .L080AA26C @ =vtable_unk_080E5A28
	str r0, [sp]
	add sp, #0xe8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AA25C: .4byte gUnk_081072B4
.L080AA260: .4byte gUnk_08107204
.L080AA264: .4byte gUnk_081072E0
.L080AA268: .4byte gUnk_08107230
.L080AA26C: .4byte vtable_unk_080E5A28

	thumb_func_start func_080AA270
func_080AA270: @ 0x080AA270
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r6, r0, #0
	adds r5, r1, #0
	mov sb, r2
	adds r4, r6, #0
	adds r4, #0x94
	ldr r0, [r4]
	adds r0, #0x10
	bl func_0800E324
	mov sl, r0
	ldr r1, [r6]
	ldr r0, [r4]
	adds r0, #8
	cmp r1, #0x2e
	beq .L080AA2AC
	cmp r1, #0x2e
	ble .L080AA2A4
	cmp r1, #0x2f
	beq .L080AA2B0
	b .L080AA2B4
.L080AA2A4:
	cmp r1, #0x2c
	blt .L080AA2B4
	movs r7, #0
	b .L080AA2B6
.L080AA2AC:
	movs r7, #1
	b .L080AA2B6
.L080AA2B0:
	movs r7, #2
	b .L080AA2B6
.L080AA2B4:
	ldr r7, [r0]
.L080AA2B6:
	ldr r0, [r6, #4]
	bl GetMapData
	adds r0, #0x24
	ldrb r0, [r0]
	movs r4, #1
	adds r1, r4, #0
	eors r1, r0
	mov r8, r1
	ldr r0, [r6, #4]
	bl GetMapData
	adds r0, #0x24
	ldrb r0, [r0]
	adds r1, r4, #0
	eors r1, r0
	str r1, [sp, #0x48]
	movs r4, #0
	ldr r0, [r6, #4]
	bl GetMapData
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080AA2F0
	subs r0, r7, #1
	cmp r0, #1
	bhi .L080AA2F0
	movs r4, #1
.L080AA2F0:
	cmp r4, #0
	beq .L080AA35C
	mov r1, sb
	lsls r0, r1, #2
	adds r3, r6, #0
	adds r3, #0x1c
	adds r3, r3, r0
	add r2, sp, #0x20
	movs r4, #0xa
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r4, #0xa0
	lsls r4, r4, #2
	ldrh r1, [r2]
	ldr r0, .L080AA350 @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	ldr r0, [r3]
	adds r6, r2, #0
	ldr r2, .L080AA354 @ =0x000031AE
	str r2, [sp, #0x24]
	mov r1, sp
	adds r5, r6, #0
	cmp sp, r6
	beq .L080AA334
.L080AA32C:
	strh r2, [r1]
	adds r1, #2
	cmp r1, r5
	bne .L080AA32C
.L080AA334:
	movs r5, #0
	adds r4, r0, #0
	ldr r7, .L080AA358 @ =func_03000C2C
.L080AA33A:
	ldr r3, [r6]
	adds r0, r4, #0
	mov r1, sp
	adds r2, r4, #0
	bl _call_via_r7
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xf
	blo .L080AA33A
	b .L080AA522
	.align 2, 0
.L080AA350: .4byte 0xFFFFFC1F
.L080AA354: .4byte 0x000031AE
.L080AA358: .4byte func_03000C2C
.L080AA35C:
	mov r0, r8
	cmp r0, #0
	beq .L080AA43A
	cmp r5, #1
	beq .L080AA43A
	cmp r5, #1
	bgt .L080AA370
	cmp r5, #0
	beq .L080AA376
	b .L080AA43A
.L080AA370:
	cmp r5, #2
	beq .L080AA3DC
	b .L080AA43A
.L080AA376:
	mov r1, sb
	lsls r0, r1, #2
	adds r3, r6, #0
	adds r3, #0x1c
	adds r3, r3, r0
	add r2, sp, #0x28
	movs r4, #9
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r4, #0xa8
	lsls r4, r4, #2
	ldrh r1, [r2]
	ldr r0, .L080AA3D4 @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	ldr r0, [r3]
	mov r8, r2
	adds r4, #0x23
	str r4, [sp, #0x2c]
	mov r1, sp
	add r2, sp, #0x20
	cmp sp, r2
	beq .L080AA3B6
.L080AA3AE:
	strh r4, [r1]
	adds r1, #2
	cmp r1, r2
	bne .L080AA3AE
.L080AA3B6:
	movs r5, #0
	adds r4, r0, #0
	ldr r7, .L080AA3D8 @ =func_03000C2C
.L080AA3BC:
	mov r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	mov r1, sp
	adds r2, r4, #0
	bl _call_via_r7
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xf
	blo .L080AA3BC
	b .L080AA43A
	.align 2, 0
.L080AA3D4: .4byte 0xFFFFFC1F
.L080AA3D8: .4byte func_03000C2C
.L080AA3DC:
	mov r1, sb
	lsls r0, r1, #2
	adds r3, r6, #0
	adds r3, #0x1c
	adds r3, r3, r0
	add r2, sp, #0x30
	movs r4, #3
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r4, #0xd8
	lsls r4, r4, #2
	ldrh r1, [r2]
	ldr r0, .L080AA450 @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	ldr r3, [r3]
	mov r8, r2
	movs r0, #0x1f
	str r0, [sp, #0x34]
	mov r0, sp
	add r1, sp, #0x20
	cmp sp, r1
	beq .L080AA41E
	movs r2, #0x1f
.L080AA416:
	strh r2, [r0]
	adds r0, #2
	cmp r0, r1
	bne .L080AA416
.L080AA41E:
	movs r5, #0
	adds r4, r3, #0
	ldr r7, .L080AA454 @ =func_03000C2C
.L080AA424:
	mov r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	mov r1, sp
	adds r2, r4, #0
	bl _call_via_r7
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xf
	blo .L080AA424
.L080AA43A:
	ldr r1, [sp, #0x48]
	cmp r1, #0
	beq .L080AA522
	mov r0, sl
	cmp r0, #1
	beq .L080AA522
	cmp r0, #1
	bgt .L080AA458
	cmp r0, #0
	beq .L080AA460
	b .L080AA522
	.align 2, 0
.L080AA450: .4byte 0xFFFFFC1F
.L080AA454: .4byte func_03000C2C
.L080AA458:
	mov r1, sl
	cmp r1, #2
	beq .L080AA4C8
	b .L080AA522
.L080AA460:
	mov r1, sb
	lsls r0, r1, #2
	adds r3, r6, #0
	adds r3, #0x1c
	adds r3, r3, r0
	add r2, sp, #0x38
	movs r4, #4
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #2
	ldrh r1, [r2]
	ldr r0, .L080AA4BC @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	ldr r0, [r3]
	adds r7, r2, #0
	ldr r5, .L080AA4C0 @ =0x000003DF
	str r5, [sp, #0x3c]
	mov r1, sp
	add r2, sp, #0x20
	cmp sp, r2
	beq .L080AA4A0
.L080AA498:
	strh r5, [r1]
	adds r1, #2
	cmp r1, r2
	bne .L080AA498
.L080AA4A0:
	movs r5, #0
	adds r4, r0, #0
	ldr r6, .L080AA4C4 @ =func_03000C2C
.L080AA4A6:
	ldr r3, [r7]
	adds r0, r4, #0
	mov r1, sp
	adds r2, r4, #0
	bl _call_via_r6
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xf
	blo .L080AA4A6
	b .L080AA522
	.align 2, 0
.L080AA4BC: .4byte 0xFFFFFC1F
.L080AA4C0: .4byte 0x000003DF
.L080AA4C4: .4byte func_03000C2C
.L080AA4C8:
	mov r1, sb
	lsls r0, r1, #2
	adds r3, r6, #0
	adds r3, #0x1c
	adds r3, r3, r0
	add r2, sp, #0x40
	movs r4, #4
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #2
	ldrh r1, [r2]
	ldr r0, .L080AA534 @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	ldr r0, [r3]
	adds r7, r2, #0
	ldr r5, .L080AA538 @ =0x0000559F
	str r5, [sp, #0x44]
	mov r1, sp
	add r2, sp, #0x20
	cmp sp, r2
	beq .L080AA508
.L080AA500:
	strh r5, [r1]
	adds r1, #2
	cmp r1, r2
	bne .L080AA500
.L080AA508:
	movs r5, #0
	adds r4, r0, #0
	ldr r6, .L080AA53C @ =func_03000C2C
.L080AA50E:
	ldr r3, [r7]
	adds r0, r4, #0
	mov r1, sp
	adds r2, r4, #0
	bl _call_via_r6
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xf
	blo .L080AA50E
.L080AA522:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AA534: .4byte 0xFFFFFC1F
.L080AA538: .4byte 0x0000559F
.L080AA53C: .4byte func_03000C2C

	thumb_func_start func_080AA540
func_080AA540: @ 0x080AA540
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	mov sl, r1
	adds r7, r2, #0
	str r3, [sp]
	ldr r5, [sp, #0x24]
	ldr r0, [r0, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov r8, r0
	cmp r5, #0
	beq .L080AA5BC
	subs r0, r7, #1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	mov r2, sb
	ldr r1, [r2, #0x18]
	lsls r0, r0, #1
	mov r3, sl
	lsls r4, r3, #1
	adds r1, r4, r1
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #4
	bl memcpy
	mov r0, r8
	muls r0, r7, r0
	mov r2, sb
	ldr r1, [r2, #0x14]
	lsls r0, r0, #1
	adds r1, r4, r1
	adds r0, r0, r1
	adds r1, r5, #4
	movs r2, #4
	bl memcpy
	adds r0, r7, #1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	mov r2, sb
	ldr r1, [r2, #0x14]
	lsls r0, r0, #1
	adds r4, r4, r1
	adds r0, r0, r4
	adds r1, r5, #0
	adds r1, #8
	movs r2, #4
	bl memcpy
	mov r1, sb
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080AA5BC:
	movs r3, #0
	mov ip, r3
	mov r6, r8
	muls r6, r7, r6
	adds r5, r7, #1
	ldr r0, [sp]
	cmp r0, #4
	bhi .L080AA67A
	lsls r0, r0, #2
	ldr r1, .L080AA5D8 @ =.L080AA5DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AA5D8: .4byte .L080AA5DC
.L080AA5DC: @ jump table
	.4byte .L080AA67A @ case 0
	.4byte .L080AA67A @ case 1
	.4byte .L080AA5F0 @ case 2
	.4byte .L080AA620 @ case 3
	.4byte .L080AA670 @ case 4
.L080AA5F0:
	mov r6, r8
	muls r6, r7, r6
	mov r1, sl
	adds r2, r1, r6
	mov r3, sb
	ldr r0, [r3, #0x2c]
	lsls r2, r2, #2
	adds r2, r2, r0
	adds r5, r7, #1
	mov r1, r8
	muls r1, r5, r1
	add r1, sl
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #4]
	ldr r4, .L080AA618 @ =0xFFFE0003
	ands r0, r4
	ldr r3, .L080AA61C @ =0x00000F48
	b .L080AA644
	.align 2, 0
.L080AA618: .4byte 0xFFFE0003
.L080AA61C: .4byte 0x00000F48
.L080AA620:
	mov r6, r8
	muls r6, r7, r6
	mov r1, sl
	adds r2, r1, r6
	mov r3, sb
	ldr r0, [r3, #0x2c]
	lsls r2, r2, #2
	adds r2, r2, r0
	adds r5, r7, #1
	mov r1, r8
	muls r1, r5, r1
	add r1, sl
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #4]
	ldr r4, .L080AA668 @ =0xFFFE0003
	ands r0, r4
	ldr r3, .L080AA66C @ =0x00000F4C
.L080AA644:
	orrs r0, r3
	str r0, [r1, #4]
	ldr r0, [r1]
	ands r0, r4
	orrs r0, r3
	str r0, [r1]
	ldr r0, [r2, #4]
	ands r0, r4
	orrs r0, r3
	str r0, [r2, #4]
	ldr r0, [r2]
	ands r0, r4
	orrs r0, r3
	str r0, [r2]
	movs r0, #0
	mov ip, r0
	b .L080AA67A
	.align 2, 0
.L080AA668: .4byte 0xFFFE0003
.L080AA66C: .4byte 0x00000F4C
.L080AA670:
	movs r1, #1
	mov ip, r1
	mov r6, r8
	muls r6, r7, r6
	adds r5, r7, #1
.L080AA67A:
	mov r2, sl
	adds r4, r2, r6
	mov r3, sb
	ldr r0, [r3, #0x2c]
	lsls r4, r4, #2
	adds r4, r4, r0
	mov r1, r8
	muls r1, r5, r1
	add r1, sl
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r3, [r1, #4]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	mov r3, ip
	orrs r0, r3
	strb r0, [r1, #4]
	mov r5, ip
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
	.align 2, 0

	thumb_func_start func_080AA6D0
func_080AA6D0: @ 0x080AA6D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	str r1, [sp]
	adds r6, r2, #0
	str r3, [sp, #4]
	ldr r0, [r7, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov sl, r0
	ldr r0, [sp, #4]
	bl method_0800AF20__C9FieldPlot
	adds r5, r0, #0
	cmp r5, #0
	beq .L080AA732
	mov r0, sl
	muls r0, r6, r0
	ldr r1, [r7, #0x10]
	lsls r0, r0, #1
	ldr r2, [sp]
	lsls r4, r2, #1
	adds r1, r4, r1
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #4
	bl memcpy
	adds r0, r6, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, [r7, #0x10]
	lsls r0, r0, #1
	adds r4, r4, r1
	adds r0, r0, r4
	adds r1, r5, #4
	movs r2, #4
	bl memcpy
	adds r1, r7, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080AA732:
	mov r5, sl
	muls r5, r6, r5
	adds r2, r6, #1
	str r2, [sp, #8]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq .L080AA78E
	subs r0, r6, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, [r7, #0x18]
	lsls r0, r0, #1
	ldr r2, [sp]
	lsls r4, r2, #1
	adds r1, r4, r1
	adds r0, r0, r1
	ldr r1, [sp, #0x2c]
	movs r2, #4
	bl memcpy
	ldr r1, [r7, #0x14]
	lsls r0, r5, #1
	adds r1, r4, r1
	adds r0, r0, r1
	ldr r1, [sp, #0x2c]
	adds r1, #4
	movs r2, #4
	bl memcpy
	ldr r1, [sp, #8]
	mov r0, sl
	muls r0, r1, r0
	ldr r1, [r7, #0x14]
	lsls r0, r0, #1
	adds r4, r4, r1
	adds r0, r0, r4
	ldr r1, [sp, #0x2c]
	adds r1, #8
	movs r2, #4
	bl memcpy
	adds r1, r7, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080AA78E:
	ldr r0, [sp, #4]
	bl method_0800A07C__C9FieldPlot
	ldr r2, [sp]
	adds r2, r2, r5
	mov r8, r2
	ldr r2, [r7, #0x2c]
	mov r1, r8
	lsls r1, r1, #2
	mov r8, r1
	adds r1, r1, r2
	mov sb, r1
	ldr r1, [sp, #8]
	mov r4, sl
	muls r4, r1, r4
	ldr r1, [sp]
	adds r4, r1, r4
	lsls r4, r4, #2
	adds r2, r4, r2
	movs r6, #1
	adds r5, r6, #0
	ands r5, r0
	ldrb r3, [r2, #4]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r5
	strb r0, [r2, #4]
	ldrb r3, [r2]
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r5
	strb r0, [r2]
	mov r0, sb
	ldrb r2, [r0, #4]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r5
	mov r2, sb
	strb r0, [r2, #4]
	ldrb r0, [r2]
	ands r1, r0
	orrs r1, r5
	strb r1, [r2]
	ldr r0, [sp, #4]
	bl method_0800A0A4__C9FieldPlot
	ldr r1, [r7, #0x2c]
	add r8, r1
	movs r2, #4
	add r2, r8
	mov sb, r2
	adds r4, r4, r1
	adds r3, r4, #4
	lsls r5, r0, #1
	ldrh r2, [r3, #2]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r5
	strh r1, [r3, #2]
	ldr r1, .L080AA84C @ =0x00007FFF
	adds r5, r1, #0
	ands r0, r5
	lsls r3, r0, #1
	ldrh r2, [r4, #2]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r3
	strh r1, [r4, #2]
	ands r0, r5
	lsls r3, r0, #1
	mov r1, sb
	ldrh r2, [r1, #2]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r3
	mov r2, sb
	strh r1, [r2, #2]
	ands r0, r5
	lsls r0, r0, #1
	mov r2, r8
	ldrh r1, [r2, #2]
	ands r6, r1
	orrs r6, r0
	strh r6, [r2, #2]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AA84C: .4byte 0x00007FFF

	thumb_func_start func_080AA850
func_080AA850: @ 0x080AA850
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r5, #0
	adds r4, #0x94
	ldr r0, [r4]
	adds r0, #0x10
	bl func_0800E324
	ldr r1, [r4]
	ldr r2, .L080AA898 @ =0x000034D8
	adds r1, r1, r2
	movs r3, #0
	cmp r0, #3
	bne .L080AA872
	movs r3, #1
.L080AA872:
	mov r0, sp
	adds r2, r6, #0
	bl func_0809C510
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	adds r0, r5, #0
	bl func_080A5BD8
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080AA898: .4byte 0x000034D8

	thumb_func_start func_080AA89C
func_080AA89C: @ 0x080AA89C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, .L080AA8B8 @ =gUnk_08106DAC
	movs r2, #0x21
	movs r3, #0x14
	bl func_080A5BD8
	adds r4, #0x29
	movs r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080AA8B8: .4byte gUnk_08106DAC

	thumb_func_start func_080AA8BC
func_080AA8BC: @ 0x080AA8BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, .L080AA8D8 @ =gUnk_08106DAC
	movs r2, #0x21
	movs r3, #0x17
	bl func_080A5BD8
	adds r4, #0x29
	movs r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080AA8D8: .4byte gUnk_08106DAC

	thumb_func_start func_080AA8DC
func_080AA8DC: @ 0x080AA8DC
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0x1d
	bne .L080AA8EC
	adds r1, #0x98
	movs r0, #1
	strb r0, [r1]
.L080AA8EC:
	pop {r0}
	bx r0

	thumb_func_start func_080AA8F0
func_080AA8F0: @ 0x080AA8F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r5, #0x94
	ldr r0, [r5]
	ldr r1, .L080AA96C @ =0x00001CD4
	adds r7, r0, r1
	adds r0, r7, #0
	bl func_080A0504
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080AA9B6
	adds r0, r7, #0
	bl func_080A041C
	cmp r0, #0
	bne .L080AA9B6
	ldr r0, [r5]
	ldr r2, .L080AA970 @ =0x00001C34
	adds r4, r0, r2
	movs r6, #0
	adds r0, r4, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080AA93C
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x18
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x4b
	beq .L080AA964
.L080AA93C:
	ldr r0, [r5]
	ldr r3, .L080AA974 @ =0x00001C38
	adds r0, r0, r3
	movs r1, #0x4b
	bl GetFirstSlotWithTool__C8RucksackUi
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne .L080AA964
	ldr r0, [r5]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0x4b
	bl GetFirstSlotWith__C9ToolChestUi
	cmp r0, r4
	beq .L080AA966
.L080AA964:
	movs r6, #1
.L080AA966:
	cmp r6, #0
	beq .L080AA97C
	b .L080AA9B6
	.align 2, 0
.L080AA96C: .4byte 0x00001CD4
.L080AA970: .4byte 0x00001C34
.L080AA974: .4byte 0x00001C38
.L080AA978:
	movs r0, #1
	b .L080AA9B8
.L080AA97C:
	mov r1, sp
	ldr r0, .L080AA9C0 @ =gUnk_08107438
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r6, #0
	mov r5, sp
.L080AA98C:
	ldr r1, [r5]
	adds r0, r7, #0
	bl func_080A01F8
	adds r4, r0, #0
	cmp r4, #0
	beq .L080AA9AE
	bl GetLove__C12Bachelorette
	ldr r1, .L080AA9C4 @ =0x0000C34F
	cmp r0, r1
	bls .L080AA9AE
	adds r0, r4, #0
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #3
	bls .L080AA978
.L080AA9AE:
	adds r5, #4
	adds r6, #1
	cmp r6, #5
	bls .L080AA98C
.L080AA9B6:
	movs r0, #0
.L080AA9B8:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080AA9C0: .4byte gUnk_08107438
.L080AA9C4: .4byte 0x0000C34F

	thumb_func_start func_080AA9C8
func_080AA9C8: @ 0x080AA9C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	ldr r0, [r6]
	cmp r1, r0
	beq .L080AA9E2
	b .L080AACA6
.L080AA9E2:
	mov r2, sp
	ldr r1, .L080AAA10 @ =0x0000FFFF
	mov r0, sp
	strh r1, [r0]
	movs r0, #0xff
	strb r0, [r2, #2]
	movs r5, #0
	mov r8, r5
	mov sl, r5
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r2, [r4]
	cmp r2, #0x15
	bls .L080AAA04
	b .L080AAB7C
.L080AAA04:
	lsls r0, r2, #2
	ldr r1, .L080AAA14 @ =.L080AAA18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AAA10: .4byte 0x0000FFFF
.L080AAA14: .4byte .L080AAA18
.L080AAA18: @ jump table
	.4byte .L080AAA70 @ case 0
	.4byte .L080AAA70 @ case 1
	.4byte .L080AAA70 @ case 2
	.4byte .L080AAA70 @ case 3
	.4byte .L080AAA70 @ case 4
	.4byte .L080AAA70 @ case 5
	.4byte .L080AAA70 @ case 6
	.4byte .L080AAA70 @ case 7
	.4byte .L080AAA70 @ case 8
	.4byte .L080AAA70 @ case 9
	.4byte .L080AAA70 @ case 10
	.4byte .L080AAA70 @ case 11
	.4byte .L080AAA70 @ case 12
	.4byte .L080AAA70 @ case 13
	.4byte .L080AAA70 @ case 14
	.4byte .L080AAA70 @ case 15
	.4byte .L080AAA70 @ case 16
	.4byte .L080AAA70 @ case 17
	.4byte .L080AAAB0 @ case 18
	.4byte .L080AAA80 @ case 19
	.4byte .L080AAB54 @ case 20
	.4byte .L080AAB00 @ case 21
.L080AAA70:
	adds r1, r6, #0
	adds r1, #0x9c
	add r0, sp, #4
	bl func_080AAE44
	ldr r0, [sp, #4]
	str r0, [sp]
	b .L080AAB7C
.L080AAA80:
	movs r5, #1
	ldr r0, [r6, #4]
	cmp r0, #0xe
	beq .L080AAA8E
	cmp r0, #0xf
	beq .L080AAA98
	b .L080AACA6
.L080AAA8E:
	ldr r0, .L080AAA94 @ =gUnk_086DCC88
	mov r8, r0
	b .L080AAA9C
	.align 2, 0
.L080AAA94: .4byte gUnk_086DCC88
.L080AAA98:
	ldr r1, .L080AAAA8 @ =gUnk_086DDDEC
	mov r8, r1
.L080AAA9C:
	movs r0, #4
	mov sl, r0
	movs r1, #4
	str r1, [sp, #0xc]
	ldr r0, .L080AAAAC @ =0x000003CB
	b .L080AAB7A
	.align 2, 0
.L080AAAA8: .4byte gUnk_086DDDEC
.L080AAAAC: .4byte 0x000003CB
.L080AAAB0:
	movs r5, #1
	ldr r0, [r6, #4]
	cmp r0, #0xd
	beq .L080AAAEC
	cmp r0, #0xd
	bgt .L080AAAC2
	cmp r0, #0xc
	beq .L080AAAE0
	b .L080AACA6
.L080AAAC2:
	cmp r0, #0xe
	beq .L080AAACC
	cmp r0, #0xf
	beq .L080AAAD8
	b .L080AACA6
.L080AAACC:
	ldr r1, .L080AAAD4 @ =gUnk_086DC57C
	mov r8, r1
	b .L080AAAF0
	.align 2, 0
.L080AAAD4: .4byte gUnk_086DC57C
.L080AAAD8:
	ldr r0, .L080AAADC @ =gUnk_086DD6E0
	b .L080AAAEE
	.align 2, 0
.L080AAADC: .4byte gUnk_086DD6E0
.L080AAAE0:
	ldr r1, .L080AAAE8 @ =gUnk_086EACDC
	mov r8, r1
	b .L080AAAF0
	.align 2, 0
.L080AAAE8: .4byte gUnk_086EACDC
.L080AAAEC:
	ldr r0, .L080AAAFC @ =gUnk_086EAD84
.L080AAAEE:
	mov r8, r0
.L080AAAF0:
	movs r1, #2
	mov sl, r1
	movs r0, #2
	str r0, [sp, #0xc]
	b .L080AAB7C
	.align 2, 0
.L080AAAFC: .4byte gUnk_086EAD84
.L080AAB00:
	movs r5, #1
	ldr r0, [r6, #4]
	cmp r0, #0xd
	beq .L080AAB3C
	cmp r0, #0xd
	bgt .L080AAB12
	cmp r0, #0xc
	beq .L080AAB30
	b .L080AACA6
.L080AAB12:
	cmp r0, #0xe
	beq .L080AAB1C
	cmp r0, #0xf
	beq .L080AAB28
	b .L080AACA6
.L080AAB1C:
	ldr r1, .L080AAB24 @ =gUnk_086DD690
	mov r8, r1
	b .L080AAB40
	.align 2, 0
.L080AAB24: .4byte gUnk_086DD690
.L080AAB28:
	ldr r0, .L080AAB2C @ =gUnk_086DE7F4
	b .L080AAB3E
	.align 2, 0
.L080AAB2C: .4byte gUnk_086DE7F4
.L080AAB30:
	ldr r1, .L080AAB38 @ =gUnk_086EAD64
	mov r8, r1
	b .L080AAB40
	.align 2, 0
.L080AAB38: .4byte gUnk_086EAD64
.L080AAB3C:
	ldr r0, .L080AAB50 @ =gUnk_086EAD8C
.L080AAB3E:
	mov r8, r0
.L080AAB40:
	movs r1, #4
	mov sl, r1
	movs r0, #4
	str r0, [sp, #0xc]
	movs r1, #0xf3
	lsls r1, r1, #2
	str r1, [sp, #0x10]
	b .L080AAB7C
	.align 2, 0
.L080AAB50: .4byte gUnk_086EAD8C
.L080AAB54:
	movs r5, #1
	ldr r0, [r6, #4]
	cmp r0, #0xe
	beq .L080AAB62
	cmp r0, #0xf
	beq .L080AAB6C
	b .L080AACA6
.L080AAB62:
	ldr r0, .L080AAB68 @ =gUnk_086DC54C
	mov r8, r0
	b .L080AAB70
	.align 2, 0
.L080AAB68: .4byte gUnk_086DC54C
.L080AAB6C:
	ldr r1, .L080AAC28 @ =gUnk_086DD6B0
	mov r8, r1
.L080AAB70:
	movs r0, #6
	mov sl, r0
	movs r1, #4
	str r1, [sp, #0xc]
	ldr r0, .L080AAC2C @ =0x000003C9
.L080AAB7A:
	str r0, [sp, #0x10]
.L080AAB7C:
	ldr r0, [r6, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	str r0, [sp, #0x14]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge .L080AAB90
	adds r0, #7
.L080AAB90:
	asrs r2, r0, #3
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge .L080AAB9C
	adds r1, #7
.L080AAB9C:
	asrs r1, r1, #3
	add r0, sp, #8
	strh r2, [r0]
	strh r1, [r0, #2]
	cmp r5, #0
	beq .L080AAC30
	adds r1, r6, #0
	adds r1, #0x29
	str r1, [sp, #0x18]
	mov r0, r8
	cmp r0, #0
	beq .L080AACA0
	movs r7, #0
	ldr r1, [sp, #0xc]
	cmp r7, r1
	bhs .L080AACA0
.L080AABBC:
	movs r5, #0
	adds r0, r7, #1
	mov sb, r0
	cmp r5, sl
	bhs .L080AAC1C
	mov r0, sl
	muls r0, r7, r0
	ldr r1, [sp, #0x10]
	lsls r1, r1, #1
	mov ip, r1
	lsls r0, r0, #1
	mov r1, r8
	adds r4, r1, r0
.L080AABD6:
	mov r0, sp
	movs r1, #8
	ldrsh r2, [r0, r1]
	adds r2, r2, r5
	add r0, sp, #8
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r0, r0, r7
	ldr r1, [sp, #0x14]
	muls r0, r1, r0
	adds r2, r2, r0
	lsls r1, r2, #1
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	ldrh r1, [r4]
	strh r1, [r0]
	ldr r3, [r6, #0x2c]
	lsls r2, r2, #2
	adds r3, r2, r3
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r6, #0x2c]
	adds r2, r2, r0
	ldrh r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	strh r0, [r2, #2]
	adds r4, #2
	adds r5, #1
	cmp r5, sl
	blo .L080AABD6
.L080AAC1C:
	mov r7, sb
	ldr r0, [sp, #0xc]
	cmp r7, r0
	blo .L080AABBC
	b .L080AACA0
	.align 2, 0
.L080AAC28: .4byte gUnk_086DD6B0
.L080AAC2C: .4byte 0x000003C9
.L080AAC30:
	movs r5, #0
	adds r1, r6, #0
	adds r1, #0x29
	str r1, [sp, #0x18]
	mov r7, sp
	ldr r0, [sp, #0x10]
	lsls r0, r0, #1
	mov sb, r0
.L080AAC40:
	movs r4, #0
	lsls r1, r5, #1
	mov ip, r1
	adds r0, r5, #1
	mov r8, r0
.L080AAC4A:
	mov r1, sp
	movs r0, #8
	ldrsh r3, [r1, r0]
	adds r3, r3, r4
	add r0, sp, #8
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r0, r0, r5
	ldr r1, [sp, #0x14]
	muls r0, r1, r0
	adds r3, r3, r0
	lsls r0, r3, #1
	ldr r2, [r6, #0x14]
	adds r2, r2, r0
	ldrh r1, [r7]
	adds r1, r1, r4
	add r1, ip
	ldrb r0, [r7, #2]
	adds r0, #1
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r2]
	ldr r2, [r6, #0x2c]
	lsls r3, r3, #2
	adds r2, r3, r2
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x2c]
	adds r3, r3, r0
	ldrh r1, [r3, #2]
	movs r0, #1
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	strh r0, [r3, #2]
	adds r4, #1
	cmp r4, #1
	bls .L080AAC4A
	mov r5, r8
	cmp r5, #1
	bls .L080AAC40
.L080AACA0:
	movs r0, #1
	ldr r1, [sp, #0x18]
	strb r0, [r1]
.L080AACA6:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080AACB8
func_080AACB8: @ 0x080AACB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0x10
	bl func_0800E324
	mov r8, r0
	ldr r0, [r5, #4]
	cmp r0, #0xf
	bhi .L080AAD82
	lsls r0, r0, #2
	ldr r1, .L080AACE0 @ =.L080AACE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AACE0: .4byte .L080AACE4
.L080AACE4: @ jump table
	.4byte .L080AAD6E @ case 0
	.4byte .L080AAD82 @ case 1
	.4byte .L080AAD82 @ case 2
	.4byte .L080AAD82 @ case 3
	.4byte .L080AAD42 @ case 4
	.4byte .L080AAD82 @ case 5
	.4byte .L080AAD82 @ case 6
	.4byte .L080AAD82 @ case 7
	.4byte .L080AAD38 @ case 8
	.4byte .L080AAD82 @ case 9
	.4byte .L080AAD54 @ case 10
	.4byte .L080AAD5E @ case 11
	.4byte .L080AAD54 @ case 12
	.4byte .L080AAD5E @ case 13
	.4byte .L080AAD24 @ case 14
	.4byte .L080AAD2E @ case 15
.L080AAD24:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0xf2
	lsls r1, r1, #2
	b .L080AAD66
.L080AAD2E:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0xf9
	lsls r1, r1, #2
	b .L080AAD66
.L080AAD38:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0xb0
	lsls r1, r1, #2
	b .L080AAD66
.L080AAD42:
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r1, .L080AAD50 @ =0x000003E6
	movs r2, #0xc
	bl func_080AAE14
	b .L080AAD90
	.align 2, 0
.L080AAD50: .4byte 0x000003E6
.L080AAD54:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0xf8
	lsls r1, r1, #2
	b .L080AAD66
.L080AAD5E:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0xad
	lsls r1, r1, #2
.L080AAD66:
	movs r2, #9
	bl func_080AAE14
	b .L080AAD90
.L080AAD6E:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0
	movs r2, #0
	bl func_080AAE14
	mov r0, r8
	cmp r0, #2
	beq .L080AAD90
	b .L080AAE00
.L080AAD82:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0
	movs r2, #0
	bl func_080AAE14
	b .L080AAE00
.L080AAD90:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	ldr r1, .L080AAE0C @ =0x000034C8
	adds r6, r0, r1
	ldr r0, .L080AAE10 @ =gUnk_08107450
	mov r2, r8
	lsls r1, r2, #1
	adds r2, r1, r0
	adds r0, #1
	adds r1, r1, r0
	ldrb r7, [r1]
	ldrb r4, [r2]
	cmp r4, r7
	bhs .L080AADD6
.L080AADAE:
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080A1ED4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080AADD0
	mov r0, sp
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080A1CBC
	adds r0, r5, #0
	mov r1, sp
	bl func_080AA9C8
.L080AADD0:
	adds r4, #1
	cmp r4, r7
	blo .L080AADAE
.L080AADD6:
	movs r4, #0x60
.L080AADD8:
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080A1ED4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080AADFA
	mov r0, sp
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080A1CBC
	adds r0, r5, #0
	mov r1, sp
	bl func_080AA9C8
.L080AADFA:
	adds r4, #1
	cmp r4, #0x73
	bls .L080AADD8
.L080AAE00:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AAE0C: .4byte 0x000034C8
.L080AAE10: .4byte gUnk_08107450

	thumb_func_start func_080AAE14
func_080AAE14: @ 0x080AAE14
	push {r4, lr}
	str r1, [r0]
	str r2, [r0, #4]
	adds r4, r0, #0
	adds r4, #8
	ldr r0, [r4, #8]
	cmp r0, #0
	beq .L080AAE3E
	ldr r0, [r4, #4]
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl func_080DC57C
	ldr r0, [r4, #4]
	str r0, [r0, #8]
	ldr r0, [r4, #4]
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, [r4, #4]
	str r0, [r0, #0xc]
	str r1, [r4, #8]
.L080AAE3E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080AAE44
func_080AAE44: @ 0x080AAE44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	adds r7, r0, #0
	adds r5, r1, #0
	str r2, [sp, #0x20]
	adds r0, r2, #0
	cmp r0, #0xd
	bne .L080AAE68
	ldr r0, .L080AAE64 @ =0x000003E6
	movs r1, #0xb
	strh r0, [r7]
	strb r1, [r7, #2]
	b .L080AAF00
	.align 2, 0
.L080AAE64: .4byte 0x000003E6
.L080AAE68:
	mov r8, sp
	adds r1, r5, #0
	adds r1, #8
	add r2, sp, #0x20
	mov ip, r2
	ldr r4, [r1, #4]
	ldr r2, [r4, #4]
	mov sb, r1
	cmp r2, #0
	beq .L080AAE98
	adds r6, r0, #0
.L080AAE7E:
	movs r3, #0
	ldr r0, [r2, #0x10]
	cmp r0, r6
	bge .L080AAE88
	movs r3, #1
.L080AAE88:
	cmp r3, #0
	bne .L080AAE92
	adds r4, r2, #0
	ldr r2, [r4, #8]
	b .L080AAE94
.L080AAE92:
	ldr r2, [r2, #0xc]
.L080AAE94:
	cmp r2, #0
	bne .L080AAE7E
.L080AAE98:
	ldr r3, [r1, #4]
	cmp r4, r3
	beq .L080AAEB0
	movs r2, #0
	mov r0, ip
	ldr r1, [r0]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bge .L080AAEAC
	movs r2, #1
.L080AAEAC:
	cmp r2, #0
	beq .L080AAEB2
.L080AAEB0:
	adds r4, r3, #0
.L080AAEB2:
	mov r2, r8
	str r4, [r2]
	mov r0, sb
	ldr r1, [r0, #4]
	str r1, [sp, #4]
	movs r2, #0
	ldr r0, [sp]
	cmp r0, r1
	bne .L080AAEC6
	movs r2, #1
.L080AAEC6:
	cmp r2, #0
	beq .L080AAEFA
	add r0, sp, #8
	add r3, sp, #0x24
	ldr r1, [r5]
	ldr r2, [r5, #4]
	strh r1, [r3]
	strb r2, [r3, #2]
	ldr r2, [sp, #0x20]
	str r2, [sp, #0x18]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x1c]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r1, sb
	add r2, sp, #0x10
	bl func_080E4304
	ldr r0, [sp, #8]
	str r0, [sp]
	ldr r0, [r5]
	adds r0, #4
	str r0, [r5]
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
.L080AAEFA:
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	str r0, [r7]
.L080AAF00:
	adds r0, r7, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080AAF10
func_080AAF10: @ 0x080AAF10
	sub sp, #4
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #8]
	str r0, [sp]
	add sp, #4
	bx lr

	thumb_func_start func_080AAF1C
func_080AAF1C: @ 0x080AAF1C
	sub sp, #4
	ldr r0, [r0, #0xc]
	str r0, [sp]
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start func_080AAF28
func_080AAF28: @ 0x080AAF28
	lsls r1, r1, #0x18
	ldr r2, .L080AAF38 @ =gUnk_08107458
	lsrs r1, r1, #0x17
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	bx lr
	.align 2, 0
.L080AAF38: .4byte gUnk_08107458

	thumb_func_start func_080AAF3C
func_080AAF3C: @ 0x080AAF3C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x94
	ldr r0, [r4]
	adds r0, #0x10
	bl func_0800E324
	mov sb, r0
	ldr r0, [r4]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetUpgradeLevel__C9FarmHouse
	mov r8, r0
	ldr r0, [r4]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUpgradeLevel__C4Coop
	adds r5, r0, #0
	ldr r0, [r4]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUpgradeLevel__C4Barn
	ldr r1, [r6]
	str r0, [sp]
	adds r0, r1, #0
	mov r1, sb
	mov r2, r8
	adds r3, r5, #0
	bl func_0803A8A4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
