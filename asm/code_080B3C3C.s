	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_080B3C3C
func_080B3C3C: @ 0x080B3C3C
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, sp
	bl func_080AE4E4
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
	beq .L080B3C6C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080B3C6C:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080B3C78
func_080B3C78: @ 0x080B3C78
	push {lr}
	ldr r0, [r0, #4]
	bl func_080AE4D8
	pop {r1}
	bx r1

	thumb_func_start func_080B3C84
func_080B3C84: @ 0x080B3C84
	ldr r0, [r0, #4]
	movs r1, #0x91
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr

	thumb_func_start func_080B3C90
func_080B3C90: @ 0x080B3C90
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r6, .L080B3CC4 @ =gUnk_081078BC
	adds r0, r6, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xc
	bls .L080B3CA4
	movs r4, #0xc
.L080B3CA4:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r5, r4
	movs r1, #0
	strb r1, [r0]
	movs r0, #0
	strb r0, [r5, #0x10]
	strb r0, [r5, #0x11]
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080B3CC4: .4byte gUnk_081078BC

	thumb_func_start func_080B3CC8
func_080B3CC8: @ 0x080B3CC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	adds r6, r0, #0
	mov sb, r1
	bl func_08008444
	ldr r0, .L080B4090 @ =vtable_unk_080E851C
	str r0, [r6, #4]
	movs r0, #0
	strb r0, [r6, #8]
	movs r0, #5
	add r7, sp, #0x10
	movs r1, #1
	rsbs r1, r1, #0
.L080B3CEC:
	subs r0, #1
	cmp r0, r1
	bne .L080B3CEC
	ldr r1, .L080B4094 @ =0x00000704
	adds r0, r6, r1
	movs r1, #0
	bl func_08008B54
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r0, r6, r2
	movs r1, #1
	bl func_08008B54
	ldr r3, .L080B4098 @ =0x0000070C
	adds r0, r6, r3
	movs r1, #2
	bl func_08008B54
	movs r4, #0xe2
	lsls r4, r4, #3
	adds r0, r6, r4
	movs r1, #3
	bl func_08008B54
	ldr r1, .L080B409C @ =0x00000714
	adds r0, r6, r1
	movs r1, #4
	bl func_08008B54
	movs r0, #4
	bl __builtin_new
	adds r4, r0, #0
	add r0, sp, #0xc
	bl func_0800835C
	adds r0, r7, #0
	bl func_0800770C
	movs r5, #0
	str r5, [sp]
	add r2, sp, #0xc
	str r2, [sp, #4]
	str r7, [sp, #8]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl func_08050CC0
	movs r3, #0xe3
	lsls r3, r3, #3
	adds r1, r6, r3
	str r0, [r1]
	adds r0, r7, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	ldr r0, .L080B40A0 @ =0x0000071C
	adds r4, r6, r0
	adds r0, r4, #0
	bl func_08007128
	str r5, [r4, #4]
	ldr r1, .L080B40A4 @ =0x00000724
	adds r4, r6, r1
	adds r0, r4, #0
	bl func_08007128
	str r5, [r4, #4]
	ldr r2, .L080B40A8 @ =0x0000072C
	adds r4, r6, r2
	movs r5, #1
	ldr r3, .L080B40AC @ =0x000008DC
	adds r3, r3, r6
	mov sl, r3
	ldr r0, .L080B40B0 @ =0x000008E4
	adds r0, r6, r0
	str r0, [sp, #0x14]
	ldr r1, .L080B40B4 @ =0x000008EC
	adds r1, r6, r1
	str r1, [sp, #0x18]
	ldr r2, .L080B40B8 @ =0x00000904
	adds r2, r6, r2
	str r2, [sp, #0x1c]
	ldr r3, .L080B40BC @ =0x0000090C
	adds r3, r6, r3
	str r3, [sp, #0x24]
	ldr r0, .L080B40C0 @ =0x00000914
	adds r0, r6, r0
	str r0, [sp, #0x2c]
	ldr r1, .L080B40C4 @ =0x0000097C
	adds r1, r6, r1
	str r1, [sp, #0x4c]
	ldr r2, .L080B40C8 @ =0x00000984
	adds r2, r6, r2
	str r2, [sp, #0x50]
	ldr r3, .L080B40CC @ =0x0000098C
	adds r3, r6, r3
	str r3, [sp, #0x54]
	ldr r0, .L080B40D0 @ =0x000009A4
	adds r0, r6, r0
	str r0, [sp, #0x58]
	ldr r1, .L080B40D4 @ =0x000009AC
	adds r1, r6, r1
	str r1, [sp, #0x5c]
	ldr r2, .L080B40D8 @ =0x000009B4
	adds r2, r6, r2
	str r2, [sp, #0x60]
	ldr r3, .L080B40DC @ =0x000009CC
	adds r3, r6, r3
	str r3, [sp, #0x64]
	ldr r0, .L080B40E0 @ =0x000009D4
	adds r0, r6, r0
	str r0, [sp, #0x68]
	ldr r1, .L080B40E4 @ =0x000009DC
	adds r1, r6, r1
	str r1, [sp, #0x6c]
	ldr r2, .L080B40E8 @ =0x00000A8C
	adds r2, r6, r2
	str r2, [sp, #0x20]
	ldr r3, .L080B40EC @ =0x00000A94
	adds r3, r6, r3
	str r3, [sp, #0x28]
	ldr r0, .L080B40F0 @ =0x00000A9C
	adds r0, r6, r0
	str r0, [sp, #0x30]
	movs r1, #0xab
	lsls r1, r1, #4
	adds r1, r6, r1
	str r1, [sp, #0x34]
	ldr r2, .L080B40F4 @ =0x00000AB8
	adds r2, r6, r2
	str r2, [sp, #0x38]
	movs r3, #0xac
	lsls r3, r3, #4
	adds r3, r6, r3
	str r3, [sp, #0x3c]
	ldr r0, .L080B40F8 @ =0x00000AD4
	adds r0, r6, r0
	str r0, [sp, #0x40]
	ldr r1, .L080B40FC @ =0x00000ADC
	adds r1, r6, r1
	str r1, [sp, #0x44]
	ldr r2, .L080B4100 @ =0x00000AE4
	adds r2, r6, r2
	str r2, [sp, #0x48]
	movs r3, #0
	mov r8, r3
	movs r7, #1
	rsbs r7, r7, #0
.L080B3E24:
	adds r0, r4, #0
	bl func_08007128
	mov r0, r8
	str r0, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r7
	bne .L080B3E24
	ldr r1, .L080B4104 @ =0x0000073C
	adds r4, r6, r1
	movs r5, #7
	movs r2, #0
	mov r8, r2
	movs r7, #1
	rsbs r7, r7, #0
.L080B3E44:
	adds r0, r4, #0
	bl func_08007128
	mov r3, r8
	str r3, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r7
	bne .L080B3E44
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080B4108 @ =gUnk_0858BA28
	bl func_0805E6CC
	ldr r4, .L080B410C @ =0x0000077C
	adds r1, r6, r4
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080B4110 @ =gUnk_0873DE44
	bl func_0805E6CC
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080B4114 @ =gUnk_0871D51C
	bl func_0805E6CC
	ldr r3, .L080B4118 @ =0x00000784
	adds r1, r6, r3
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080B411C @ =gUnk_08738144
	bl func_0805E6CC
	adds r4, #0xc
	adds r1, r6, r4
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080B4120 @ =gUnk_0873AFC8
	bl func_0805E6CC
	ldr r2, .L080B4124 @ =0x0000078C
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080B4128 @ =gUnk_08731B40
	bl func_0805E6CC
	movs r3, #0xf2
	lsls r3, r3, #3
	adds r1, r6, r3
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080B412C @ =gUnk_0873CEAC
	bl func_0805E6CC
	adds r4, #0xc
	adds r1, r6, r4
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080B4130 @ =gUnk_08729460
	bl func_0805E6CC
	movs r2, #0xf3
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080B4134 @ =gUnk_087409E4
	bl func_0805E6CC
	ldr r3, .L080B4138 @ =0x0000079C
	adds r1, r6, r3
	str r0, [r1]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r6, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L080B413C @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	movs r1, #0xf4
	lsls r1, r1, #3
	adds r0, r6, r1
	str r4, [r0]
	ldr r2, .L080B4140 @ =0x000007A4
	adds r1, r6, r2
	movs r0, #1
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080B3F34:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080B3F34
	ldr r3, .L080B4144 @ =0x000007AC
	adds r1, r6, r3
	movs r0, #1
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080B3F48:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080B3F48
	ldr r4, .L080B4148 @ =0x000007B4
	adds r1, r6, r4
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080B3F5C:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080B3F5C
	movs r0, #0xf9
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080B3F72:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080B3F72
	movs r2, #4
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	ldr r4, .L080B414C @ =0x000007DC
	adds r0, r6, r4
.L080B3F86:
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x1c]
	adds r0, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080B3F86
	ldr r0, .L080B4150 @ =0x0000087C
	adds r1, r6, r0
	movs r0, #1
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080B3FAA:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080B3FAA
	ldr r2, .L080B4154 @ =0x00000884
	adds r1, r6, r2
	movs r0, #1
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080B3FBE:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080B3FBE
	movs r2, #1
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	ldr r4, .L080B4158 @ =0x0000088C
	adds r0, r6, r4
.L080B3FD2:
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x1c]
	adds r0, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080B3FD2
	ldr r0, .L080B415C @ =0x000008CC
	adds r1, r6, r0
	movs r0, #0
	str r0, [r1]
	movs r2, #0x8d
	lsls r2, r2, #4
	adds r1, r6, r2
	str r0, [r1]
	ldr r3, .L080B4160 @ =0x000008D4
	adds r1, r6, r3
	str r0, [r1]
	strh r0, [r1, #4]
	mov r4, sl
	str r0, [r4]
	strh r0, [r4, #4]
	ldr r1, [sp, #0x14]
	str r0, [r1]
	strh r0, [r1, #4]
	ldr r2, [sp, #0x18]
	str r0, [r2]
	strh r0, [r2, #4]
	adds r3, #0x20
	adds r1, r6, r3
	str r0, [r1]
	ldr r4, .L080B4164 @ =0x000008F8
	adds r1, r6, r4
	str r0, [r1]
	ldr r2, .L080B4168 @ =0x000008FC
	adds r1, r6, r2
	str r0, [r1]
	strh r0, [r1, #4]
	ldr r3, [sp, #0x1c]
	str r0, [r3]
	strh r0, [r3, #4]
	ldr r4, [sp, #0x24]
	str r0, [r4]
	strh r0, [r4, #4]
	ldr r1, [sp, #0x2c]
	str r0, [r1]
	strh r0, [r1, #4]
	adds r2, #0x20
	adds r1, r6, r2
	movs r0, #1
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080B4046:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080B4046
	ldr r3, .L080B416C @ =0x00000924
	adds r1, r6, r3
	movs r0, #1
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080B405A:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080B405A
	movs r2, #1
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	ldr r4, .L080B4170 @ =0x0000092C
	adds r0, r6, r4
.L080B406E:
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x1c]
	adds r0, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080B406E
	ldr r0, .L080B4174 @ =0x0000096C
	adds r1, r6, r0
	movs r0, #0
	b .L080B4178
	.align 2, 0
.L080B4090: .4byte vtable_unk_080E851C
.L080B4094: .4byte 0x00000704
.L080B4098: .4byte 0x0000070C
.L080B409C: .4byte 0x00000714
.L080B40A0: .4byte 0x0000071C
.L080B40A4: .4byte 0x00000724
.L080B40A8: .4byte 0x0000072C
.L080B40AC: .4byte 0x000008DC
.L080B40B0: .4byte 0x000008E4
.L080B40B4: .4byte 0x000008EC
.L080B40B8: .4byte 0x00000904
.L080B40BC: .4byte 0x0000090C
.L080B40C0: .4byte 0x00000914
.L080B40C4: .4byte 0x0000097C
.L080B40C8: .4byte 0x00000984
.L080B40CC: .4byte 0x0000098C
.L080B40D0: .4byte 0x000009A4
.L080B40D4: .4byte 0x000009AC
.L080B40D8: .4byte 0x000009B4
.L080B40DC: .4byte 0x000009CC
.L080B40E0: .4byte 0x000009D4
.L080B40E4: .4byte 0x000009DC
.L080B40E8: .4byte 0x00000A8C
.L080B40EC: .4byte 0x00000A94
.L080B40F0: .4byte 0x00000A9C
.L080B40F4: .4byte 0x00000AB8
.L080B40F8: .4byte 0x00000AD4
.L080B40FC: .4byte 0x00000ADC
.L080B4100: .4byte 0x00000AE4
.L080B4104: .4byte 0x0000073C
.L080B4108: .4byte gUnk_0858BA28
.L080B410C: .4byte 0x0000077C
.L080B4110: .4byte gUnk_0873DE44
.L080B4114: .4byte gUnk_0871D51C
.L080B4118: .4byte 0x00000784
.L080B411C: .4byte gUnk_08738144
.L080B4120: .4byte gUnk_0873AFC8
.L080B4124: .4byte 0x0000078C
.L080B4128: .4byte gUnk_08731B40
.L080B412C: .4byte gUnk_0873CEAC
.L080B4130: .4byte gUnk_08729460
.L080B4134: .4byte gUnk_087409E4
.L080B4138: .4byte 0x0000079C
.L080B413C: .4byte vtable_unk_080E5B80
.L080B4140: .4byte 0x000007A4
.L080B4144: .4byte 0x000007AC
.L080B4148: .4byte 0x000007B4
.L080B414C: .4byte 0x000007DC
.L080B4150: .4byte 0x0000087C
.L080B4154: .4byte 0x00000884
.L080B4158: .4byte 0x0000088C
.L080B415C: .4byte 0x000008CC
.L080B4160: .4byte 0x000008D4
.L080B4164: .4byte 0x000008F8
.L080B4168: .4byte 0x000008FC
.L080B416C: .4byte 0x00000924
.L080B4170: .4byte 0x0000092C
.L080B4174: .4byte 0x0000096C
.L080B4178:
	str r0, [r1]
	movs r2, #0x97
	lsls r2, r2, #4
	adds r1, r6, r2
	str r0, [r1]
	ldr r3, .L080B4470 @ =0x00000974
	adds r1, r6, r3
	str r0, [r1]
	strh r0, [r1, #4]
	ldr r4, [sp, #0x4c]
	str r0, [r4]
	strh r0, [r4, #4]
	ldr r1, [sp, #0x50]
	str r0, [r1]
	strh r0, [r1, #4]
	ldr r2, [sp, #0x54]
	str r0, [r2]
	strh r0, [r2, #4]
	adds r3, #0x20
	adds r1, r6, r3
	str r0, [r1]
	ldr r4, .L080B4474 @ =0x00000998
	adds r1, r6, r4
	str r0, [r1]
	ldr r2, .L080B4478 @ =0x0000099C
	adds r1, r6, r2
	str r0, [r1]
	strh r0, [r1, #4]
	ldr r3, [sp, #0x58]
	str r0, [r3]
	strh r0, [r3, #4]
	ldr r4, [sp, #0x5c]
	str r0, [r4]
	strh r0, [r4, #4]
	ldr r1, [sp, #0x60]
	str r0, [r1]
	strh r0, [r1, #4]
	adds r2, #0x20
	adds r1, r6, r2
	str r0, [r1]
	movs r3, #0x9c
	lsls r3, r3, #4
	adds r1, r6, r3
	str r0, [r1]
	ldr r4, .L080B447C @ =0x000009C4
	adds r1, r6, r4
	str r0, [r1]
	strh r0, [r1, #4]
	ldr r1, [sp, #0x64]
	str r0, [r1]
	strh r0, [r1, #4]
	ldr r2, [sp, #0x68]
	str r0, [r2]
	strh r0, [r2, #4]
	ldr r3, [sp, #0x6c]
	str r0, [r3]
	strh r0, [r3, #4]
	adds r4, #0x20
	adds r1, r6, r4
	str r0, [r1]
	ldr r0, .L080B4480 @ =0x000009E8
	adds r1, r6, r0
	movs r0, #1
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080B41FC:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080B41FC
	movs r2, #1
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	movs r4, #0x9f
	lsls r4, r4, #4
	adds r0, r6, r4
.L080B4212:
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x1c]
	adds r0, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080B4212
	movs r0, #0xa3
	lsls r0, r0, #4
	adds r1, r6, r0
	movs r0, #0
	str r0, [r1]
	ldr r2, .L080B4484 @ =0x00000A34
	adds r1, r6, r2
	movs r0, #1
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080B4240:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080B4240
	movs r2, #1
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	ldr r4, .L080B4488 @ =0x00000A3C
	adds r0, r6, r4
.L080B4254:
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x1c]
	adds r0, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080B4254
	ldr r0, .L080B448C @ =0x00000A7C
	adds r1, r6, r0
	movs r0, #0
	str r0, [r1]
	movs r2, #0xa8
	lsls r2, r2, #4
	adds r1, r6, r2
	str r0, [r1]
	ldr r3, .L080B4490 @ =0x00000A84
	adds r1, r6, r3
	str r0, [r1]
	strh r0, [r1, #4]
	ldr r4, [sp, #0x20]
	str r0, [r4]
	strh r0, [r4, #4]
	ldr r1, [sp, #0x28]
	str r0, [r1]
	strh r0, [r1, #4]
	ldr r2, [sp, #0x30]
	str r0, [r2]
	strh r0, [r2, #4]
	adds r3, #0x20
	adds r1, r6, r3
	str r0, [r1]
	ldr r4, .L080B4494 @ =0x00000AA8
	adds r1, r6, r4
	str r0, [r1]
	strh r0, [r1, #4]
	ldr r1, [sp, #0x34]
	str r0, [r1]
	strh r0, [r1, #4]
	ldr r2, [sp, #0x38]
	str r0, [r2]
	strh r0, [r2, #4]
	ldr r3, [sp, #0x3c]
	str r0, [r3]
	strh r0, [r3, #4]
	adds r4, #0x20
	adds r1, r6, r4
	str r0, [r1]
	ldr r2, .L080B4498 @ =0x00000ACC
	adds r1, r6, r2
	str r0, [r1]
	strh r0, [r1, #4]
	ldr r3, [sp, #0x40]
	str r0, [r3]
	strh r0, [r3, #4]
	ldr r4, [sp, #0x44]
	str r0, [r4]
	strh r0, [r4, #4]
	ldr r1, [sp, #0x48]
	str r0, [r1]
	strh r0, [r1, #4]
	adds r2, #0x20
	adds r1, r6, r2
	movs r0, #9
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080B42E2:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080B42E2
	ldr r3, .L080B449C @ =0x00000B1C
	adds r5, r6, r3
	adds r0, r5, #0
	bl func_080B3C90
	movs r4, #0xb3
	lsls r4, r4, #4
	adds r0, r6, r4
	movs r1, #0
	strb r1, [r0]
	ldr r2, .L080B44A0 @ =0x00000B58
	adds r0, r6, r2
	strb r1, [r0]
	ldr r3, .L080B44A4 @ =0x00000B59
	adds r1, r6, r3
	movs r0, #0x5a
	strb r0, [r1]
	adds r4, #0x2a
	adds r0, r6, r4
	movs r2, #0x19
	strb r2, [r0]
	ldr r1, .L080B44A8 @ =0x00000B5B
	adds r0, r6, r1
	strb r2, [r0]
	adds r3, #3
	adds r1, r6, r3
	movs r0, #2
	strb r0, [r1]
	adds r4, #3
	adds r1, r6, r4
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, .L080B44AC @ =0x00000B5E
	adds r0, r6, r1
	strb r2, [r0]
	adds r3, #4
	adds r0, r6, r3
	strh r2, [r0]
	adds r4, #5
	adds r0, r6, r4
	strh r2, [r0]
	ldr r0, .L080B44B0 @ =0x00000B64
	adds r1, r6, r0
	movs r0, #0x22
	strh r0, [r1]
	ldr r1, .L080B44B4 @ =0x00000B66
	adds r0, r6, r1
	strh r2, [r0]
	ldr r2, .L080B44B8 @ =0x00000B68
	adds r1, r6, r2
	movs r0, #0x24
	strh r0, [r1]
	adds r3, #0xa
	adds r1, r6, r3
	movs r0, #0x46
	strb r0, [r1]
	adds r4, #9
	adds r1, r6, r4
	movs r0, #0x14
	strb r0, [r1]
	ldr r1, .L080B44BC @ =0x00000B6C
	adds r0, r6, r1
	movs r2, #0x3c
	strb r2, [r0]
	adds r3, #3
	adds r0, r6, r3
	movs r1, #0x73
	strb r1, [r0]
	adds r4, #3
	adds r0, r6, r4
	strb r2, [r0]
	adds r3, #2
	adds r0, r6, r3
	strb r1, [r0]
	adds r4, #2
	adds r0, r6, r4
	strb r2, [r0]
	ldr r2, .L080B44C0 @ =0x00000B71
	adds r0, r6, r2
	strb r1, [r0]
	adds r3, #3
	adds r4, r6, r3
	movs r0, #0x2d
	strh r0, [r4]
	ldr r1, .L080B44C4 @ =0x00000B74
	adds r0, r6, r1
	movs r1, #0xb4
	strb r1, [r0]
	adds r3, #3
	adds r2, r6, r3
	movs r0, #0x78
	strb r0, [r2]
	ldr r2, .L080B44C8 @ =0x00000B76
	adds r0, r6, r2
	strb r1, [r0]
	adds r3, #2
	adds r0, r6, r3
	strb r1, [r0]
	adds r0, r5, #0
	mov r1, sb
	bl strcpy
	mov r0, sb
	ldrb r1, [r0, #0x10]
	ldr r2, .L080B44CC @ =0x00000B2C
	adds r0, r6, r2
	strb r1, [r0]
	mov r3, sb
	ldrb r1, [r3, #0x11]
	adds r2, #1
	adds r0, r6, r2
	strb r1, [r0]
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	movs r1, #0xb4
	lsls r1, r1, #1
	bl __divsi3
	strh r0, [r4]
	ldr r3, .L080B44D0 @ =0x0000071C
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r0, .L080B44D4 @ =0x00000724
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r7, #0
	movs r1, #0xe6
	lsls r1, r1, #3
	adds r5, r6, r1
.L080B4408:
	lsls r4, r7, #3
	adds r4, r4, r6
	ldr r2, .L080B44D8 @ =0x0000072C
	adds r4, r4, r2
	ldr r1, [r5]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r5]
	adds r5, #8
	adds r7, #1
	cmp r7, #1
	ble .L080B4408
	movs r7, #0
	movs r3, #0xe8
	lsls r3, r3, #3
	adds r5, r6, r3
.L080B4430:
	lsls r4, r7, #3
	adds r4, r4, r6
	ldr r0, .L080B44DC @ =0x0000073C
	adds r4, r4, r0
	ldr r1, [r5]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r5]
	adds r5, #8
	adds r7, #1
	cmp r7, #7
	ble .L080B4430
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r0, [r0]
	movs r1, #0
	bl func_08050E50
	adds r0, r6, #0
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080B4470: .4byte 0x00000974
.L080B4474: .4byte 0x00000998
.L080B4478: .4byte 0x0000099C
.L080B447C: .4byte 0x000009C4
.L080B4480: .4byte 0x000009E8
.L080B4484: .4byte 0x00000A34
.L080B4488: .4byte 0x00000A3C
.L080B448C: .4byte 0x00000A7C
.L080B4490: .4byte 0x00000A84
.L080B4494: .4byte 0x00000AA8
.L080B4498: .4byte 0x00000ACC
.L080B449C: .4byte 0x00000B1C
.L080B44A0: .4byte 0x00000B58
.L080B44A4: .4byte 0x00000B59
.L080B44A8: .4byte 0x00000B5B
.L080B44AC: .4byte 0x00000B5E
.L080B44B0: .4byte 0x00000B64
.L080B44B4: .4byte 0x00000B66
.L080B44B8: .4byte 0x00000B68
.L080B44BC: .4byte 0x00000B6C
.L080B44C0: .4byte 0x00000B71
.L080B44C4: .4byte 0x00000B74
.L080B44C8: .4byte 0x00000B76
.L080B44CC: .4byte 0x00000B2C
.L080B44D0: .4byte 0x0000071C
.L080B44D4: .4byte 0x00000724
.L080B44D8: .4byte 0x0000072C
.L080B44DC: .4byte 0x0000073C

	thumb_func_start func_080B44E0
func_080B44E0: @ 0x080B44E0
	movs r1, #0xb3
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start func_080B44EC
func_080B44EC: @ 0x080B44EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	mov r8, r0
	adds r4, r1, #0
	adds r0, r4, #0
	bl func_080B45E4
	adds r0, r4, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	adds r0, r4, #0
	bl func_080B45F0
	ldr r1, .L080B4548 @ =0x00000704
	adds r0, r4, r1
	movs r1, #0x21
	bl func_08008B6C
	ldr r1, .L080B454C @ =0x00000B32
	adds r0, r4, r1
	ldrb r0, [r0]
	add r6, sp, #4
	add r7, sp, #8
	cmp r0, #0
	bne .L080B4586
.L080B452C:
	adds r0, r4, #0
	bl func_080087C8
	ldr r1, .L080B4550 @ =0x00000B14
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	beq .L080B455E
	cmp r0, #1
	bgt .L080B4554
	cmp r0, #0
	beq .L080B456E
	b .L080B457C
	.align 2, 0
.L080B4548: .4byte 0x00000704
.L080B454C: .4byte 0x00000B32
.L080B4550: .4byte 0x00000B14
.L080B4554:
	cmp r0, #2
	beq .L080B4566
	cmp r0, #3
	beq .L080B4576
	b .L080B457C
.L080B455E:
	adds r0, r4, #0
	bl func_080B469C
	b .L080B457C
.L080B4566:
	adds r0, r4, #0
	bl func_080B7648
	b .L080B457C
.L080B456E:
	adds r0, r4, #0
	bl func_080B5824
	b .L080B457C
.L080B4576:
	adds r0, r4, #0
	bl func_080B888C
.L080B457C:
	ldr r1, .L080B45E0 @ =0x00000B32
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B452C
.L080B4586:
	movs r1, #0xf4
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	ldr r0, [r0]
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge .L080B45B0
	movs r0, #0xf4
	lsls r0, r0, #3
	adds r5, r4, r0
.L080B459E:
	adds r0, r4, #0
	bl func_080087C8
	ldr r0, [r5]
	ldr r0, [r0]
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	blt .L080B459E
.L080B45B0:
	movs r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	str r0, [r7, #4]
	str r0, [r6]
	mov r1, r8
	str r0, [r1]
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L080B45D0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080B45D0:
	mov r0, r8
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080B45E0: .4byte 0x00000B32

	.section .text.tail080B45F0, "ax", %progbits
	thumb_func_start func_080B45F0
func_080B45F0: @ 0x080B45F0
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, .L080B468C @ =0x00000B31
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	ldr r2, .L080B4690 @ =0x00000B32
	adds r0, r4, r2
	strb r1, [r0]
	ldr r3, .L080B4694 @ =0x00000B18
	adds r2, r4, r3
	adds r3, #0x40
	adds r0, r4, r3
	ldrb r0, [r0]
	str r0, [r2]
	ldr r2, .L080B4698 @ =0x00000B14
	adds r0, r4, r2
	str r1, [r0]
	subs r3, #0x1b
	adds r0, r4, r3
	movs r1, #0x16
	strb r1, [r0]
	adds r2, #0x2a
	adds r0, r4, r2
	strb r1, [r0]
	adds r3, #2
	adds r0, r4, r3
	strb r1, [r0]
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	mov sl, r0
	adds r0, r4, #0
	bl func_080088DC
	mov sb, r0
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
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r4, r4, r2
	str r5, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	mov r0, sl
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl func_08050D3C
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080B468C: .4byte 0x00000B31
.L080B4690: .4byte 0x00000B32
.L080B4694: .4byte 0x00000B18
.L080B4698: .4byte 0x00000B14

	thumb_func_start func_080B469C
func_080B469C: @ 0x080B469C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb8
	adds r7, r0, #0
	movs r0, #0xe3
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r5, #0
	ldr r0, [r4]
	cmp r5, r0
	beq .L080B46C2
	cmp r0, #0
	beq .L080B46C2
	movs r1, #3
	bl func_08050D0C
.L080B46C2:
	str r5, [r4]
	movs r0, #4
	bl __builtin_new
	adds r5, r0, #0
	add r0, sp, #0xc
	bl func_0800835C
	add r4, sp, #0x10
	adds r0, r4, #0
	bl func_0800770C
	movs r0, #0
	str r0, [sp]
	add r1, sp, #0xc
	str r1, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl func_08050CC0
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r6, r7, r2
	adds r5, r0, #0
	ldr r0, [r6]
	cmp r5, r0
	beq .L080B4708
	cmp r0, #0
	beq .L080B4708
	movs r1, #3
	bl func_08050D0C
.L080B4708:
	str r5, [r6]
	adds r0, r4, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	movs r3, #0xe3
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	movs r1, #0
	bl func_08050E50
	add r0, sp, #0xc
	bl func_08007874
	movs r5, #0
	str r5, [sp, #0x10]
	add r6, sp, #0x14
	adds r0, r6, #0
	bl func_08007874
	str r5, [r6, #4]
	add r4, sp, #0x1c
	mov r8, r4
	mov r0, r8
	bl func_08007874
	str r5, [r4, #4]
	add r4, sp, #0x24
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	add r4, sp, #0x2c
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	ldr r1, [sp, #0x10]
	add r0, sp, #0xc
	bl func_08007C28
	add r0, sp, #0xc
	movs r1, #3
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	bl func_08007D4C
	str r0, [sp, #0x84]
	ldr r1, [sp, #0x18]
	adds r0, r6, #0
	bl func_08007C28
	adds r0, r6, #0
	movs r1, #7
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x18]
	adds r0, r6, #0
	bl func_08007D4C
	str r0, [sp, #0x88]
	ldr r1, [sp, #0x20]
	mov r0, r8
	bl func_08007C28
	mov r0, r8
	movs r1, #3
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x20]
	mov r0, r8
	bl func_08007D4C
	str r0, [sp, #0x8c]
	add r0, sp, #0x34
	bl func_08007128
	add r0, sp, #0x34
	bl func_0800736C
	str r0, [sp, #0x38]
	movs r0, #0x79
	str r0, [sp, #0x90]
	ldr r1, .L080B4944 @ =0x00000B33
	adds r0, r7, r1
	strb r5, [r0]
	ldr r2, .L080B4948 @ =0x00000B34
	adds r0, r7, r2
	strb r5, [r0]
	ldr r3, .L080B494C @ =0x00000B3C
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	ldr r4, .L080B4950 @ =0x00000B3B
	adds r0, r7, r4
	strb r5, [r0]
	adds r0, r7, #0
	bl func_080B55D0
	add r0, sp, #0x3c
	bl func_08007128
	ldr r1, [sp, #0x38]
	add r0, sp, #0x3c
	bl func_0800745C
	str r0, [sp, #0x40]
	add r4, sp, #0x3c
	adds r0, r7, #0
	adds r1, r4, #0
	bl func_080BC288
	str r5, [sp, #0x94]
	mov r0, sp
	adds r0, #0x44
	str r0, [sp, #0x9c]
.L080B4804:
	movs r0, #0x14
	bl __builtin_new
	ldr r2, .L080B4954 @ =0x00000784
	adds r1, r7, r2
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r5, r0, #0
	ldr r3, [sp, #0x94]
	lsls r3, r3, #2
	mov sb, r3
	adds r4, r3, r7
	ldr r0, .L080B4958 @ =0x0000091C
	adds r4, r4, r0
	ldr r0, [r4]
	cmp r5, r0
	beq .L080B4832
	bl __builtin_delete
.L080B4832:
	str r5, [r4]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	mov r1, sb
	adds r5, r1, r7
	ldr r2, .L080B495C @ =0x00000924
	mov sl, r2
	add r5, sl
	ldr r0, [r5]
	adds r6, r1, r7
	cmp r4, r0
	beq .L080B486A
	bl __builtin_delete
.L080B486A:
	str r4, [r5]
	ldr r3, .L080B4958 @ =0x0000091C
	adds r3, r3, r6
	mov r8, r3
	ldr r0, [r3]
	movs r1, #2
	bl func_0805E860
	mov r4, sl
	adds r2, r6, r4
	ldr r3, [r2]
	ldr r5, [sp, #0x94]
	lsls r1, r5, #6
	adds r1, r7, r1
	adds r0, r1, #0
	adds r0, #0x8a
	ldrh r0, [r0]
	lsrs r0, r0, #8
	subs r0, #9
	strh r0, [r3]
	ldr r3, [r2]
	adds r1, #0x8c
	ldrh r0, [r1]
	lsrs r0, r0, #8
	subs r0, #0x20
	strh r0, [r3, #2]
	ldr r0, [r2]
	ldr r1, [sp, #0x8c]
	add sb, r1
	mov r3, sb
	strh r3, [r0, #6]
	ldr r4, [r2]
	ldr r5, .L080B4960 @ =0x0000071C
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	ldr r0, [sp, #0x94]
	lsls r6, r0, #5
	adds r5, r6, r7
	ldr r1, .L080B4964 @ =0x0000092C
	adds r4, r5, r1
	mov r2, r8
	ldr r0, [r2]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x44
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x9c]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x9c]
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r3}
	stm r4!, {r1, r3}
	adds r0, r7, #0
	bl func_08008910
	ldr r2, .L080B4968 @ =0x00000934
	adds r5, r5, r2
	ldr r1, [r5]
	movs r3, #0
	str r6, [sp, #0xa4]
	cmp r1, #0
	beq .L080B4908
	ldrh r3, [r5, #4]
.L080B4908:
	adds r6, r0, #0
	mov r4, sb
	lsls r2, r4, #5
	ldr r5, .L080B496C @ =0x06010000
	adds r2, r2, r5
	add r0, sp, #0x3c
	bl func_08008F0C
	add r0, sp, #0x3c
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B4970
	cmp r1, #0
	beq .L080B4934
	adds r0, r1, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B4934:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r5, [sp, #0x94]
	adds r5, #1
	str r5, [sp, #0xa0]
	b .L080B4A40
	.align 2, 0
.L080B4944: .4byte 0x00000B33
.L080B4948: .4byte 0x00000B34
.L080B494C: .4byte 0x00000B3C
.L080B4950: .4byte 0x00000B3B
.L080B4954: .4byte 0x00000784
.L080B4958: .4byte 0x0000091C
.L080B495C: .4byte 0x00000924
.L080B4960: .4byte 0x0000071C
.L080B4964: .4byte 0x0000092C
.L080B4968: .4byte 0x00000934
.L080B496C: .4byte 0x06010000
.L080B4970:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x68]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L080B4988
	adds r0, r1, #0
.L080B4988:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B49A6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B49AA
	mov r0, sb
	bl func_080D3BC0
	b .L080B49AA
.L080B49A6:
	movs r0, #0
	mov sb, r0
.L080B49AA:
	adds r5, r0, #0
	str r5, [sp, #0xb4]
	ldr r2, [r6]
	mov ip, r5
	ldr r0, [sp, #0x94]
	adds r0, #1
	str r0, [sp, #0xa0]
	cmp r2, r8
	beq .L080B49D8
.L080B49BC:
	mov r1, ip
	cmp r1, #0
	beq .L080B49CE
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B49CE:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080B49BC
.L080B49D8:
	mov r5, ip
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L080B49F4
	cmp r5, #0
	beq .L080B49F0
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B49F0:
	adds r5, #0x10
	b .L080B4A1C
.L080B49F4:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B4A1A
.L080B49FC:
	cmp r2, #0
	beq .L080B4A0C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B4A0C:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B49FC
.L080B4A1A:
	adds r5, r2, #0
.L080B4A1C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B4A2C
.L080B4A26:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B4A26
.L080B4A2C:
	cmp r0, #0
	beq .L080B4A34
	bl free
.L080B4A34:
	ldr r0, [sp, #0xb4]
	add r0, sb
	ldr r1, [sp, #0xb4]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B4A40:
	adds r0, r7, #0
	bl func_08008910
	mov r8, r0
	ldr r2, [sp, #0xa4]
	adds r0, r2, r7
	ldr r4, .L080B4AA4 @ =0x0000093C
	adds r0, r0, r4
	ldr r5, [r0]
	ldr r3, .L080B4AA8 @ =0x0000071C
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0xa4]
	adds r6, r0, r7
	adds r6, r6, r4
	ldr r0, [r6]
	movs r3, #0
	cmp r0, #0
	beq .L080B4A6E
	ldrh r3, [r6, #4]
.L080B4A6E:
	mov r6, r8
	lsls r2, r2, #5
	ldr r1, .L080B4AAC @ =0x05000200
	adds r2, r2, r1
	add r0, sp, #0x3c
	adds r1, r5, #0
	bl func_08008F0C
	add r2, sp, #0x3c
	mov sl, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B4AB0
	cmp r1, #0
	beq .L080B4A9A
	adds r0, r1, #0
	add r1, sp, #0x3c
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B4A9A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B4B78
	.align 2, 0
.L080B4AA4: .4byte 0x0000093C
.L080B4AA8: .4byte 0x0000071C
.L080B4AAC: .4byte 0x05000200
.L080B4AB0:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x70]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x6c]
	add r1, sp, #0x70
	add r0, sp, #0x6c
	cmp r4, #1
	bhs .L080B4AC8
	adds r0, r1, #0
.L080B4AC8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B4AE6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B4AEA
	mov r0, sb
	bl func_080D3BC0
	b .L080B4AEA
.L080B4AE6:
	movs r0, #0
	mov sb, r0
.L080B4AEA:
	adds r5, r0, #0
	str r5, [sp, #0xb4]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080B4B10
.L080B4AF6:
	mov r0, ip
	cmp r0, #0
	beq .L080B4B06
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B4B06:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080B4AF6
.L080B4B10:
	mov r5, ip
	ldr r0, [sp, #0x70]
	cmp r0, #1
	bne .L080B4B2C
	cmp r5, #0
	beq .L080B4B28
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B4B28:
	adds r5, #0x10
	b .L080B4B54
.L080B4B2C:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B4B52
.L080B4B34:
	cmp r2, #0
	beq .L080B4B44
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B4B44:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B4B34
.L080B4B52:
	adds r5, r2, #0
.L080B4B54:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B4B64
.L080B4B5E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B4B5E
.L080B4B64:
	cmp r0, #0
	beq .L080B4B6C
	bl free
.L080B4B6C:
	ldr r0, [sp, #0xb4]
	add r0, sb
	ldr r1, [sp, #0xb4]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B4B78:
	ldr r2, [sp, #0xa0]
	str r2, [sp, #0x94]
	cmp r2, #1
	bhi .L080B4B82
	b .L080B4804
.L080B4B82:
	ldr r3, .L080B4BC0 @ =0x00000B48
	adds r4, r7, r3
	ldr r5, .L080B4BC4 @ =0x00000B4C
	adds r3, r7, r5
	movs r0, #0xb4
	lsls r0, r0, #4
	adds r2, r7, r0
	subs r5, #8
	adds r1, r7, r5
	movs r0, #1
	str r0, [r1]
	str r0, [r2]
	str r0, [r3]
	str r0, [r4]
	ldr r0, .L080B4BC8 @ =0x00000B54
	adds r2, r7, r0
	movs r3, #0xb5
	lsls r3, r3, #4
	adds r1, r7, r3
	movs r0, #0
	str r0, [r1]
	str r0, [r2]
	adds r0, r7, #0
	ldr r1, [sp, #0x88]
	bl func_080BAC9C
	movs r4, #0
	str r4, [sp, #0x98]
	subs r5, #0x30
	b .L080B528E
	.align 2, 0
.L080B4BC0: .4byte 0x00000B48
.L080B4BC4: .4byte 0x00000B4C
.L080B4BC8: .4byte 0x00000B54
.L080B4BCC:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	movs r1, #0xf4
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080B4BEC
	b .L080B4E4E
.L080B4BEC:
	ldr r2, .L080B4C0C @ =0x00000B18
	adds r0, r7, r2
	ldr r1, [r0]
	cmp r1, #0
	beq .L080B4C00
	ldr r3, .L080B4C10 @ =0x00000B33
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #1
	bne .L080B4C14
.L080B4C00:
	adds r0, r7, #0
	ldr r1, [sp, #0x90]
	bl func_080BA2C4
	str r0, [sp, #0x90]
	b .L080B4E4E
	.align 2, 0
.L080B4C0C: .4byte 0x00000B18
.L080B4C10: .4byte 0x00000B33
.L080B4C14:
	subs r0, r1, #1
	cmp r0, #1
	bls .L080B4C1C
	b .L080B4E4E
.L080B4C1C:
	movs r5, #0xe3
	lsls r5, r5, #3
	adds r4, r7, r5
	ldr r0, [r4]
	bl func_08050D34
	mov sl, r0
	ldr r4, [r4]
	mov sb, r4
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
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L080B4C72
	b .L080B4E4E
.L080B4C72:
	lsls r0, r0, #2
	ldr r1, .L080B4C7C @ =.L080B4C80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B4C7C: .4byte .L080B4C80
.L080B4C80: @ jump table
	.4byte .L080B4C9C @ case 0
	.4byte .L080B4DD4 @ case 1
	.4byte .L080B4DD4 @ case 2
	.4byte .L080B4CC6 @ case 3
	.4byte .L080B4DD4 @ case 4
	.4byte .L080B4DD4 @ case 5
	.4byte .L080B4DD4 @ case 6
.L080B4C9C:
	ldr r3, .L080B4CB0 @ =0x00000B34
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B4CB8
	ldr r4, .L080B4CB4 @ =0x00000B14
	adds r1, r7, r4
	movs r0, #2
	str r0, [r1]
	b .L080B4E4E
	.align 2, 0
.L080B4CB0: .4byte 0x00000B34
.L080B4CB4: .4byte 0x00000B14
.L080B4CB8:
	movs r5, #0xe3
	lsls r5, r5, #3
	adds r0, r7, r5
	ldr r0, [r0]
	bl func_08050D5C
	b .L080B4E4E
.L080B4CC6:
	mov r0, sl
	cmp r0, #5
	bgt .L080B4CD6
	cmp r0, #4
	bge .L080B4D24
	cmp r0, #1
	beq .L080B4CEA
	b .L080B4CDC
.L080B4CD6:
	mov r1, sl
	cmp r1, #6
	beq .L080B4D58
.L080B4CDC:
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_08050D74
	b .L080B4DD4
.L080B4CEA:
	ldr r3, .L080B4D04 @ =0x00000B18
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B4D0C
	movs r4, #0xe3
	lsls r4, r4, #3
	adds r0, r7, r4
	ldr r0, [r0]
	ldr r1, .L080B4D08 @ =gUnk_081079C4
	bl func_08050D8C
	b .L080B4DD4
	.align 2, 0
.L080B4D04: .4byte 0x00000B18
.L080B4D08: .4byte gUnk_081079C4
.L080B4D0C:
	cmp r0, #2
	bne .L080B4DD4
	movs r5, #0xe3
	lsls r5, r5, #3
	adds r0, r7, r5
	ldr r0, [r0]
	ldr r1, .L080B4D20 @ =gUnk_081079E0
	bl func_08050D8C
	b .L080B4DD4
	.align 2, 0
.L080B4D20: .4byte gUnk_081079E0
.L080B4D24:
	ldr r1, .L080B4D48 @ =0x00000B34
	adds r0, r7, r1
	ldrb r4, [r0]
	cmp r4, #0
	bne .L080B4DD4
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	ldr r1, .L080B4D4C @ =gUnk_08107A30
	ldr r2, .L080B4D50 @ =gUnk_08107A4C
	ldr r3, .L080B4D54 @ =gUnk_08107A58
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	b .L080B4DD4
	.align 2, 0
.L080B4D48: .4byte 0x00000B34
.L080B4D4C: .4byte gUnk_08107A30
.L080B4D50: .4byte gUnk_08107A4C
.L080B4D54: .4byte gUnk_08107A58
.L080B4D58:
	movs r3, #0xe3
	lsls r3, r3, #3
	adds r4, r7, r3
	ldr r0, [r4]
	bl func_08050DF0
	cmp r0, #1
	beq .L080B4D6E
	cmp r0, #2
	beq .L080B4DCC
	b .L080B4DD4
.L080B4D6E:
	ldr r5, .L080B4D84 @ =0x00000B18
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, #1
	beq .L080B4D9C
	cmp r0, #1
	bgt .L080B4D88
	cmp r0, #0
	beq .L080B4D8E
	b .L080B4DB4
	.align 2, 0
.L080B4D84: .4byte 0x00000B18
.L080B4D88:
	cmp r0, #2
	beq .L080B4DAC
	b .L080B4DB4
.L080B4D8E:
	ldr r0, [r4]
	ldr r1, .L080B4D98 @ =gUnk_08107A68
	bl func_08050D8C
	b .L080B4DB4
	.align 2, 0
.L080B4D98: .4byte gUnk_08107A68
.L080B4D9C:
	ldr r0, [r4]
	ldr r1, .L080B4DA8 @ =gUnk_08107A80
	bl func_08050D8C
	b .L080B4DB4
	.align 2, 0
.L080B4DA8: .4byte gUnk_08107A80
.L080B4DAC:
	ldr r0, [r4]
	ldr r1, .L080B4DC8 @ =gUnk_08107A9C
	bl func_08050D8C
.L080B4DB4:
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050DD8
	movs r2, #0
	str r2, [sp, #0x90]
	b .L080B4DD4
	.align 2, 0
.L080B4DC8: .4byte gUnk_08107A9C
.L080B4DCC:
	ldr r3, .L080B4F54 @ =0x00000B33
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
.L080B4DD4:
	ldr r4, [sp, #0x90]
	cmp r4, #0x77
	bgt .L080B4DDE
	adds r4, #1
	str r4, [sp, #0x90]
.L080B4DDE:
	ldr r5, [sp, #0x90]
	cmp r5, #0x78
	bne .L080B4E0C
	movs r0, #0xb5
	lsls r0, r0, #4
	adds r1, r7, r0
	movs r0, #1
	str r0, [r1]
	movs r1, #0x7a
	str r1, [sp, #0x90]
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r0, [r4]
	bl func_08050DE4
	ldr r0, [r4]
	ldr r1, .L080B4F58 @ =gUnk_08107AB4
	bl func_08050D8C
	ldr r0, [r4]
	bl func_08050DD8
.L080B4E0C:
	ldr r0, [sp, #0x90]
	subs r0, #0x7a
	cmp r0, #0x59
	bhi .L080B4E1A
	ldr r3, [sp, #0x90]
	adds r3, #1
	str r3, [sp, #0x90]
.L080B4E1A:
	ldr r4, [sp, #0x90]
	cmp r4, #0xd4
	bne .L080B4E4E
	movs r5, #0xb5
	lsls r5, r5, #4
	adds r0, r7, r5
	movs r5, #0
	str r5, [r0]
	movs r0, #0x79
	str r0, [sp, #0x90]
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r4, r7, r1
	ldr r0, [r4]
	bl func_08050DE4
	ldr r0, [r4]
	bl func_08050D74
	ldr r2, .L080B4F54 @ =0x00000B33
	adds r0, r7, r2
	strb r5, [r0]
	ldr r3, .L080B4F5C @ =0x00000B34
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
.L080B4E4E:
	adds r0, r7, #0
	ldr r1, [sp, #0x88]
	bl func_080BB8EC
	adds r0, r7, #0
	bl func_080B9AC0
	movs r4, #0
	mov sl, r4
.L080B4E60:
	mov r5, sl
	lsls r1, r5, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	ldr r2, [sp, #0x84]
	bl func_080B8EBC
	lsls r0, r5, #6
	adds r3, r7, r0
	adds r0, r3, #0
	adds r0, #0xab
	ldrb r0, [r0]
	adds r5, #1
	str r5, [sp, #0xa8]
	cmp r0, #0
	bne .L080B4E82
	b .L080B51AA
.L080B4E82:
	mov r0, sl
	lsls r4, r0, #2
	adds r0, r4, r7
	ldr r1, .L080B4F60 @ =0x00000924
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r3, #0
	adds r0, #0x8a
	ldrh r0, [r0]
	lsrs r0, r0, #8
	subs r0, #9
	strh r0, [r2]
	adds r0, r4, r7
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r3, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	lsrs r0, r0, #8
	subs r0, #0x20
	strh r0, [r1, #2]
	adds r0, r4, r7
	ldr r1, .L080B4F64 @ =0x0000091C
	adds r0, r0, r1
	ldr r0, [r0]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	str r4, [sp, #0xac]
	mov r2, sl
	lsls r2, r2, #5
	str r2, [sp, #0xb0]
	cmp r0, #0
	blt .L080B4EC8
	b .L080B5178
.L080B4EC8:
	adds r5, r2, r7
	ldr r3, .L080B4F68 @ =0x0000092C
	adds r4, r5, r3
	ldr r1, [sp, #0xac]
	adds r0, r1, r7
	ldr r2, .L080B4F64 @ =0x0000091C
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x3c
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x3c
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r3}
	stm r4!, {r1, r3}
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r2, .L080B4F6C @ =0x00000934
	adds r5, r5, r2
	ldr r0, [r5]
	adds r1, r0, #0
	ldr r3, [sp, #0xac]
	ldr r0, [sp, #0x8c]
	adds r2, r3, r0
	movs r3, #0
	cmp r1, #0
	beq .L080B4F24
	ldrh r3, [r5, #4]
.L080B4F24:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r4, .L080B4F70 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x3c
	bl func_08008F0C
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B4F74
	cmp r1, #0
	beq .L080B4F4A
	adds r0, r1, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B4F4A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B5044
	.align 2, 0
.L080B4F54: .4byte 0x00000B33
.L080B4F58: .4byte gUnk_08107AB4
.L080B4F5C: .4byte 0x00000B34
.L080B4F60: .4byte 0x00000924
.L080B4F64: .4byte 0x0000091C
.L080B4F68: .4byte 0x0000092C
.L080B4F6C: .4byte 0x00000934
.L080B4F70: .4byte 0x06010000
.L080B4F74:
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
	bhs .L080B4F8C
	adds r0, r1, #0
.L080B4F8C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B4FAA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B4FAE
	mov r0, sb
	bl func_080D3BC0
	b .L080B4FAE
.L080B4FAA:
	movs r0, #0
	mov sb, r0
.L080B4FAE:
	adds r5, r0, #0
	str r5, [sp, #0xb4]
	ldr r2, [r6]
	mov ip, r5
	mov r4, sl
	adds r4, #1
	str r4, [sp, #0xa8]
	cmp r2, r8
	beq .L080B4FDC
.L080B4FC0:
	mov r5, ip
	cmp r5, #0
	beq .L080B4FD2
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B4FD2:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080B4FC0
.L080B4FDC:
	mov r5, ip
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L080B4FF8
	cmp r5, #0
	beq .L080B4FF4
	adds r0, r5, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B4FF4:
	adds r5, #0x10
	b .L080B5020
.L080B4FF8:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B501E
.L080B5000:
	cmp r2, #0
	beq .L080B5010
	adds r0, r2, #0
	add r1, sp, #0x3c
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B5010:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B5000
.L080B501E:
	adds r5, r2, #0
.L080B5020:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B5030
.L080B502A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B502A
.L080B5030:
	cmp r0, #0
	beq .L080B5038
	bl free
.L080B5038:
	ldr r0, [sp, #0xb4]
	add r0, sb
	ldr r1, [sp, #0xb4]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B5044:
	adds r0, r7, #0
	bl func_08008910
	adds r6, r0, #0
	ldr r2, [sp, #0xb0]
	adds r0, r2, r7
	ldr r4, .L080B50A4 @ =0x0000093C
	adds r0, r0, r4
	ldr r5, [r0]
	ldr r3, .L080B50A8 @ =0x0000071C
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0xb0]
	adds r1, r0, r7
	adds r1, r1, r4
	ldr r0, [r1]
	movs r3, #0
	cmp r0, #0
	beq .L080B5072
	ldrh r3, [r1, #4]
.L080B5072:
	lsls r2, r2, #5
	ldr r1, .L080B50AC @ =0x05000200
	adds r2, r2, r1
	add r0, sp, #0x3c
	adds r1, r5, #0
	bl func_08008F0C
	add r2, sp, #0x3c
	mov sl, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B50B0
	cmp r1, #0
	beq .L080B509C
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B509C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B5178
	.align 2, 0
.L080B50A4: .4byte 0x0000093C
.L080B50A8: .4byte 0x0000071C
.L080B50AC: .4byte 0x05000200
.L080B50B0:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x80]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x7c]
	add r1, sp, #0x80
	add r0, sp, #0x7c
	cmp r4, #1
	bhs .L080B50C8
	adds r0, r1, #0
.L080B50C8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B50E6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B50EA
	mov r0, sb
	bl func_080D3BC0
	b .L080B50EA
.L080B50E6:
	movs r0, #0
	mov sb, r0
.L080B50EA:
	adds r5, r0, #0
	str r5, [sp, #0xb4]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080B5110
.L080B50F6:
	mov r0, ip
	cmp r0, #0
	beq .L080B5106
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B5106:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080B50F6
.L080B5110:
	mov r5, ip
	ldr r0, [sp, #0x80]
	cmp r0, #1
	bne .L080B512C
	cmp r5, #0
	beq .L080B5128
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B5128:
	adds r5, #0x10
	b .L080B5154
.L080B512C:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B5152
.L080B5134:
	cmp r2, #0
	beq .L080B5144
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B5144:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B5134
.L080B5152:
	adds r5, r2, #0
.L080B5154:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B5164
.L080B515E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B515E
.L080B5164:
	cmp r0, #0
	beq .L080B516C
	bl free
.L080B516C:
	ldr r0, [sp, #0xb4]
	add r0, sb
	ldr r1, [sp, #0xb4]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B5178:
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	ldr r2, [sp, #0xb0]
	adds r0, r2, r7
	ldr r1, .L080B51F0 @ =0x0000092C
	adds r0, r0, r1
	ldr r4, [r0]
	adds r5, r2, r7
	adds r5, r5, r1
	ldr r0, [r5]
	movs r2, #0
	cmp r0, #0
	beq .L080B5198
	ldrh r2, [r5, #4]
.L080B5198:
	ldr r3, [sp, #0xac]
	adds r0, r3, r7
	ldr r5, .L080B51F4 @ =0x00000924
	adds r0, r0, r5
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_0805E99C
.L080B51AA:
	ldr r0, [sp, #0xa8]
	mov sl, r0
	cmp r0, #1
	bgt .L080B51B4
	b .L080B4E60
.L080B51B4:
	movs r1, #0
	mov sb, r1
	ldr r2, .L080B51F8 @ =0xFFFFFE8A
	adds r5, r7, r2
	mov r8, r1
.L080B51BE:
	mov r3, sb
	cmp r3, #7
	bgt .L080B5204
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r0, .L080B51FC @ =0x00000ACC
	adds r3, r7, r0
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B51DC
	ldrh r2, [r3, #4]
.L080B51DC:
	mov r3, r8
	adds r0, r3, r7
	ldr r3, .L080B5200 @ =0x00000AEC
	adds r0, r0, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	b .L080B524E
	.align 2, 0
.L080B51F0: .4byte 0x0000092C
.L080B51F4: .4byte 0x00000924
.L080B51F8: .4byte 0xFFFFFE8A
.L080B51FC: .4byte 0x00000ACC
.L080B5200: .4byte 0x00000AEC
.L080B5204:
	mov r4, r8
	adds r0, r4, r7
	ldr r6, .L080B5308 @ =0x00000AEC
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r5]
	lsrs r0, r0, #8
	strh r0, [r1]
	adds r0, r4, r7
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r5, #2]
	lsrs r0, r0, #8
	strh r0, [r1, #2]
	adds r0, r4, r7
	adds r0, r0, r6
	ldr r1, [r0]
	ldrb r0, [r5, #0xb]
	strh r0, [r1, #8]
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r1, .L080B530C @ =0x00000AA8
	adds r0, r7, r1
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080B5240
	ldrh r2, [r0, #4]
.L080B5240:
	mov r3, r8
	adds r0, r3, r7
	adds r0, r0, r6
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080B524E:
	adds r5, #0x40
	movs r4, #4
	add r8, r4
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #9
	ble .L080B51BE
	ldr r2, [sp, #0x98]
	cmp r2, #0
	bne .L080B528C
	movs r3, #0xf4
	lsls r3, r3, #3
	adds r4, r7, r3
	ldr r0, [r4]
	ldr r1, .L080B5310 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r4, #1
	str r4, [sp, #0x98]
.L080B528C:
	ldr r5, .L080B5314 @ =0x00000B14
.L080B528E:
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B5298
	b .L080B4BCC
.L080B5298:
	ldr r1, [sp, #0x38]
	add r0, sp, #0x34
	bl func_080073E0
	add r0, sp, #0x34
	movs r1, #2
	bl func_08007184
	ldr r1, [sp, #0x30]
	add r0, sp, #0x2c
	bl func_08007C28
	add r0, sp, #0x2c
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x28]
	add r0, sp, #0x24
	bl func_08007C28
	add r0, sp, #0x24
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x20]
	add r0, sp, #0x1c
	bl func_08007C28
	add r0, sp, #0x1c
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x18]
	add r0, sp, #0x14
	bl func_08007C28
	add r0, sp, #0x14
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x10]
	add r0, sp, #0xc
	bl func_08007C28
	add r0, sp, #0xc
	movs r1, #2
	bl func_080079E8
	add sp, #0xb8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B5308: .4byte 0x00000AEC
.L080B530C: .4byte 0x00000AA8
.L080B5310: .4byte 0x00000889
.L080B5314: .4byte 0x00000B14

	thumb_func_start func_080B5318
func_080B5318: @ 0x080B5318
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, .L080B533C @ =0x00000B3C
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #6
	bls .L080B5328
	b .L080B55C4
.L080B5328:
	subs r0, #1
	cmp r0, #5
	bls .L080B5330
	b .L080B55BA
.L080B5330:
	lsls r0, r0, #2
	ldr r1, .L080B5340 @ =.L080B5344
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B533C: .4byte 0x00000B3C
.L080B5340: .4byte .L080B5344
.L080B5344: @ jump table
	.4byte .L080B535C @ case 0
	.4byte .L080B5374 @ case 1
	.4byte .L080B53AC @ case 2
	.4byte .L080B5440 @ case 3
	.4byte .L080B54AA @ case 4
	.4byte .L080B5564 @ case 5
.L080B535C:
	movs r2, #0xb4
	lsls r2, r2, #4
	adds r1, r4, r2
	movs r0, #0
	str r0, [r1]
	ldr r0, .L080B5370 @ =0x00000B44
	adds r1, r4, r0
	movs r0, #1
	b .L080B55B8
	.align 2, 0
.L080B5370: .4byte 0x00000B44
.L080B5374:
	movs r1, #0
	str r1, [r4, #0x6c]
	movs r0, #2
	str r0, [r4, #0x74]
	ldr r2, .L080B53A4 @ =0x00000B3B
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x88
	strb r1, [r0]
	movs r1, #0xb4
	lsls r1, r1, #4
	adds r0, r4, r1
	movs r1, #1
	str r1, [r0]
	adds r2, #9
	adds r0, r4, r2
	str r1, [r0]
	ldr r1, .L080B53A8 @ =0x0000070C
	adds r0, r4, r1
	movs r1, #0xcc
	bl func_08008B88
	b .L080B55BA
	.align 2, 0
.L080B53A4: .4byte 0x00000B3B
.L080B53A8: .4byte 0x0000070C
.L080B53AC:
	ldr r2, .L080B53F8 @ =0x00000B3B
	adds r5, r4, r2
	ldrb r6, [r5]
	cmp r6, #1
	bne .L080B53D4
	ldr r1, .L080B53FC @ =0x0000070C
	adds r0, r4, r1
	movs r1, #0xa6
	bl func_08008B6C
	movs r2, #0x92
	lsls r2, r2, #4
	adds r0, r4, r2
	ldr r0, [r0]
	movs r1, #2
	bl func_0805E860
	adds r0, r4, #0
	adds r0, #0xeb
	strb r6, [r0]
.L080B53D4:
	ldrb r0, [r5]
	cmp r0, #0x3b
	bhi .L080B5400
	movs r0, #0xb4
	lsls r0, r0, #4
	adds r1, r4, r0
	movs r0, #2
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0x88
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #5
	str r0, [r4, #0x6c]
	adds r1, #0x24
	movs r0, #3
	b .L080B55B8
	.align 2, 0
.L080B53F8: .4byte 0x00000B3B
.L080B53FC: .4byte 0x0000070C
.L080B5400:
	cmp r0, #0xb3
	bhi .L080B542C
	movs r2, #0xb4
	lsls r2, r2, #4
	adds r1, r4, r2
	movs r0, #1
	str r0, [r1]
	str r0, [r4, #0x6c]
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, .L080B5428 @ =0x00000B64
	adds r0, r4, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0xcf
	strb r0, [r1]
	subs r1, #0x1b
	movs r0, #2
	b .L080B55B8
	.align 2, 0
.L080B5428: .4byte 0x00000B64
.L080B542C:
	adds r1, r4, #0
	adds r1, #0xeb
	movs r0, #0
	strb r0, [r1]
	str r0, [r4, #0x6c]
	subs r1, #0x3f
	str r0, [r1]
	movs r0, #0xb4
	strb r0, [r5]
	b .L080B55BA
.L080B5440:
	ldr r2, .L080B548C @ =0x0000070C
	adds r0, r4, r2
	movs r1, #0xcc
	bl func_08008B88
	ldr r1, .L080B5490 @ =0x00000B3B
	adds r0, r4, r1
	movs r1, #0
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x88
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0xac
	movs r0, #2
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb4
	movs r5, #1
	str r5, [r0]
	movs r0, #3
	str r0, [r4, #0x74]
	adds r0, r4, #0
	adds r0, #0x8a
	ldrh r1, [r0]
	adds r0, #2
	ldrh r2, [r0]
	adds r0, r4, #0
	bl func_080B9464
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x84
	str r1, [r0]
	cmp r1, #0
	ble .L080B5494
	str r5, [r4, #0x6c]
	b .L080B55BA
	.align 2, 0
.L080B548C: .4byte 0x0000070C
.L080B5490: .4byte 0x00000B3B
.L080B5494:
	cmp r1, #0
	beq .L080B549A
	b .L080B55BA
.L080B549A:
	str r1, [r4, #0x6c]
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r0, r4, r2
	ldr r0, [r0]
	bl func_08050DE4
	b .L080B55BA
.L080B54AA:
	adds r0, r4, #0
	adds r0, #0xac
	movs r7, #2
	str r7, [r0]
	adds r0, #8
	movs r6, #1
	str r6, [r0]
	ldr r0, .L080B54EC @ =0x00000B3B
	adds r5, r4, r0
	ldrb r0, [r5]
	cmp r0, #1
	bne .L080B54CC
	ldr r1, .L080B54F0 @ =0x0000070C
	adds r0, r4, r1
	movs r1, #0xa6
	bl func_08008B6C
.L080B54CC:
	ldrb r0, [r5]
	cmp r0, #0x3b
	bhi .L080B54F4
	movs r2, #0xb4
	lsls r2, r2, #4
	adds r0, r4, r2
	str r7, [r0]
	adds r1, r4, #0
	adds r1, #0x88
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #5
	str r0, [r4, #0x6c]
	b .L080B5508
	.align 2, 0
.L080B54EC: .4byte 0x00000B3B
.L080B54F0: .4byte 0x0000070C
.L080B54F4:
	cmp r0, #0xb3
	bhi .L080B5504
	str r6, [r4, #0x6c]
	movs r1, #0xb4
	lsls r1, r1, #4
	adds r0, r4, r1
	str r6, [r0]
	b .L080B5508
.L080B5504:
	movs r0, #0xb4
	strb r0, [r5]
.L080B5508:
	adds r6, r4, #0
	adds r6, #0x84
	ldr r0, [r6]
	cmp r0, #0
	blt .L080B55BA
	adds r0, r4, #0
	adds r0, #0x8a
	ldrh r1, [r0]
	adds r5, r4, #0
	adds r5, #0x8c
	ldrh r2, [r5]
	adds r0, r4, #0
	bl func_080B9464
	str r0, [r6]
	cmp r0, #0
	bge .L080B55BA
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r0, r4, r2
	ldr r0, [r0]
	bl func_08050DE4
	ldr r0, .L080B5560 @ =0x00000B3B
	adds r1, r4, r0
	movs r2, #0
	movs r0, #0xb4
	strb r0, [r1]
	str r2, [r4, #0x6c]
	ldrh r0, [r5]
	lsrs r0, r0, #0xb
	cmp r0, #9
	bhi .L080B5552
	adds r1, r4, #0
	adds r1, #0x95
	movs r0, #2
	strb r0, [r1]
.L080B5552:
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
	b .L080B55BA
	.align 2, 0
.L080B5560: .4byte 0x00000B3B
.L080B5564:
	adds r0, r4, #0
	adds r0, #0x88
	movs r1, #0
	strb r1, [r0]
	ldr r2, .L080B55CC @ =0x00000B3B
	adds r0, r4, r2
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x95
	movs r0, #1
	strb r0, [r1]
	movs r3, #0
	movs r0, #0xb4
	adds r0, r0, r4
	mov ip, r0
	movs r7, #2
	movs r6, #0xf0
	lsls r6, r6, #7
	movs r2, #0xe8
	lsls r2, r2, #6
	adds r0, r4, #0
	adds r0, #0x8a
	subs r1, #0x29
	movs r5, #0xc0
	lsls r5, r5, #5
.L080B5596:
	str r7, [r1]
	strh r6, [r0]
	strh r2, [r0, #2]
	adds r2, r2, r5
	adds r0, #0x40
	adds r1, #0x40
	adds r3, #1
	cmp r3, #1
	bls .L080B5596
	movs r0, #0
	movs r1, #2
	str r1, [r4, #0x74]
	mov r1, ip
	str r0, [r1]
	movs r2, #0xb4
	lsls r2, r2, #4
	adds r1, r4, r2
.L080B55B8:
	str r0, [r1]
.L080B55BA:
	ldr r0, .L080B55CC @ =0x00000B3B
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
.L080B55C4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B55CC: .4byte 0x00000B3B

	thumb_func_start func_080B55D0
func_080B55D0: @ 0x080B55D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r4, .L080B5738 @ =0xFFFFDFF0
	add sp, r4
	adds r7, r0, #0
	bl func_08008724
	ldr r0, .L080B573C @ =gUnk_086FD240
	add r1, sp, #0xc
	bl Unpack
	ldr r0, .L080B5740 @ =0x0000200C
	add r0, sp
	mov r8, r0
	ldr r6, .L080B5744 @ =0x0600F000
	ldr r4, .L080B5748 @ =0x00000896
	add r4, sp
	movs r5, #0x1f
.L080B55F8:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x40
	bl func_08008E64
	adds r6, #0x40
	adds r4, #0x78
	subs r5, #1
	cmp r5, #0
	bge .L080B55F8
	ldr r0, .L080B574C @ =gUnk_086FB004
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L080B5750 @ =gUnk_086FD19C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L080B5754 @ =gUnk_0872C5D0
	ldr r1, .L080B5758 @ =0x0600E800
	bl Unpack
	ldr r0, .L080B575C @ =gUnk_0872C73C
	ldr r1, .L080B5760 @ =0x0600F800
	bl Unpack
	ldr r0, .L080B5764 @ =gUnk_0872C84C
	ldr r1, .L080B5768 @ =0x06004000
	bl Unpack
	ldr r0, .L080B576C @ =gUnk_0872D5AC
	ldr r1, .L080B5770 @ =0x050000E0
	movs r2, #0x80
	lsls r2, r2, #2
	bl func_08008E64
	adds r0, r7, #0
	bl func_08008918
	ldr r4, .L080B5740 @ =0x0000200C
	add r4, sp
	movs r2, #0xfa
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r4]
	mov r2, r8
	ldrh r1, [r2]
	strh r1, [r0]
	adds r0, r7, #0
	bl func_08008918
	ldr r2, .L080B5774 @ =0x00001F45
	adds r1, r2, #0
	strh r1, [r4]
	mov r2, r8
	ldrh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r7, #0
	bl func_08008918
	ldr r2, .L080B5778 @ =0x00001E43
	adds r1, r2, #0
	strh r1, [r4]
	mov r2, r8
	ldrh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r7, #0
	bl func_08008918
	ldr r2, .L080B577C @ =0x00001D46
	adds r1, r2, #0
	strh r1, [r4]
	mov r2, r8
	ldrh r1, [r2]
	strh r1, [r0, #0xe]
	ldr r1, .L080B5780 @ =0x0600BFE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	adds r0, r7, #0
	bl func_08008918
	movs r6, #0xb8
	strh r6, [r4]
	mov r2, r8
	ldrh r1, [r2]
	strh r1, [r0, #0x14]
	adds r0, r7, #0
	bl func_08008918
	movs r5, #0xe0
	strh r5, [r4]
	mov r2, r8
	ldrh r1, [r2]
	strh r1, [r0, #0x16]
	adds r0, r7, #0
	bl func_08008918
	strh r6, [r4]
	mov r2, r8
	ldrh r1, [r2]
	strh r1, [r0, #0x1c]
	adds r0, r7, #0
	bl func_08008918
	strh r5, [r4]
	mov r2, r8
	ldrh r1, [r2]
	strh r1, [r0, #0x1e]
	adds r0, r7, #0
	bl func_080B5788
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
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
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	ldr r3, .L080B5784 @ =0x00002010
	add sp, r3
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B5738: .4byte 0xFFFFDFF0
.L080B573C: .4byte gUnk_086FD240
.L080B5740: .4byte 0x0000200C
.L080B5744: .4byte 0x0600F000
.L080B5748: .4byte 0x00000896
.L080B574C: .4byte gUnk_086FB004
.L080B5750: .4byte gUnk_086FD19C
.L080B5754: .4byte gUnk_0872C5D0
.L080B5758: .4byte 0x0600E800
.L080B575C: .4byte gUnk_0872C73C
.L080B5760: .4byte 0x0600F800
.L080B5764: .4byte gUnk_0872C84C
.L080B5768: .4byte 0x06004000
.L080B576C: .4byte gUnk_0872D5AC
.L080B5770: .4byte 0x050000E0
.L080B5774: .4byte 0x00001F45
.L080B5778: .4byte 0x00001E43
.L080B577C: .4byte 0x00001D46
.L080B5780: .4byte 0x0600BFE0
.L080B5784: .4byte 0x00002010

	thumb_func_start func_080B5788
func_080B5788: @ 0x080B5788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r5, #0
	movs r0, #0
	mov sl, r0
	ldr r1, .L080B5820 @ =0x00000B5E
	adds r1, r1, r4
	mov r8, r1
	movs r7, #1
	mov ip, r7
	adds r2, r4, #0
	adds r2, #0x8c
	movs r6, #0xe8
	lsls r6, r6, #6
	adds r3, r4, #0
	adds r3, #0x8a
	movs r0, #0xf0
	lsls r0, r0, #7
	mov sb, r0
.L080B57B6:
	lsls r1, r5, #6
	mov r7, sb
	strh r7, [r3]
	strh r6, [r2]
	mov r7, r8
	ldrb r0, [r7]
	strb r0, [r2, #3]
	mov r0, ip
	strb r0, [r2, #0x11]
	strb r0, [r2, #9]
	adds r0, r4, #0
	adds r0, #0x6c
	adds r0, r0, r1
	movs r7, #2
	str r7, [r0]
	adds r0, r4, #0
	adds r0, #0x70
	adds r0, r0, r1
	str r7, [r0]
	mov r0, sl
	strb r0, [r2, #0x1f]
	adds r2, #0x40
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r6, r6, r1
	adds r3, #0x40
	adds r5, #1
	cmp r5, #1
	ble .L080B57B6
	movs r0, #3
	str r0, [r4, #0x74]
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0xb4
	movs r1, #1
	str r1, [r0]
	adds r0, #4
	str r1, [r0]
	adds r0, r4, #0
	movs r1, #0
	bl func_080B8DF4
	adds r0, r4, #0
	movs r1, #1
	bl func_080B8DF4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B5820: .4byte 0x00000B5E

	thumb_func_start func_080B5824
func_080B5824: @ 0x080B5824
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1a4
	str r0, [sp, #0x138]
	add r5, sp, #0x30
	adds r0, r5, #0
	bl func_08007874
	movs r4, #0
	str r4, [r5, #4]
	add r6, sp, #0x38
	adds r0, r6, #0
	bl func_08007874
	str r4, [r6, #4]
	add r0, sp, #0x40
	mov r8, r0
	bl func_08007874
	mov r1, r8
	str r4, [r1, #4]
	add r2, sp, #0x48
	mov sb, r2
	mov r0, sb
	bl func_08007874
	mov r3, sb
	str r4, [r3, #4]
	add r7, sp, #0x50
	mov sl, r7
	mov r0, sl
	bl func_08007874
	str r4, [r7, #4]
	add r7, sp, #0x58
	adds r0, r7, #0
	bl func_08007874
	str r4, [r7, #4]
	ldr r1, [sp, #0x34]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #6
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x34]
	adds r0, r5, #0
	bl func_08007D4C
	str r0, [sp, #0x13c]
	ldr r1, [sp, #0x3c]
	adds r0, r6, #0
	bl func_08007C28
	adds r0, r6, #0
	movs r1, #5
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x3c]
	adds r0, r6, #0
	bl func_08007D4C
	str r0, [sp, #0x140]
	ldr r1, [sp, #0x44]
	mov r0, r8
	bl func_08007C28
	mov r0, r8
	movs r1, #8
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x44]
	mov r0, r8
	bl func_08007D4C
	str r0, [sp, #0x144]
	ldr r1, [sp, #0x4c]
	mov r0, sb
	bl func_08007C28
	mov r0, sb
	movs r1, #3
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x4c]
	mov r0, sb
	bl func_08007D4C
	str r0, [sp, #0x148]
	ldr r1, [sp, #0x54]
	mov r0, sl
	bl func_08007C28
	mov r0, sl
	movs r1, #7
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x54]
	mov r0, sl
	bl func_08007D4C
	str r0, [sp, #0x14c]
	ldr r1, [sp, #0x5c]
	adds r0, r7, #0
	bl func_08007C28
	adds r0, r7, #0
	movs r1, #6
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x5c]
	adds r0, r7, #0
	bl func_08007D4C
	str r0, [sp, #0x150]
	ldr r0, [sp, #0x138]
	bl func_080B757C
	ldr r0, [sp, #0x138]
	ldr r1, [sp, #0x13c]
	bl func_080B7164
	mov r0, sp
	adds r0, #0x60
	str r0, [sp, #0x180]
	mov r1, sp
	adds r1, #0x80
	str r1, [sp, #0x184]
	mov r2, sp
	adds r2, #0x88
	str r2, [sp, #0x188]
	mov r3, sp
	adds r3, #0xa0
	str r3, [sp, #0x164]
	mov r4, sp
	adds r4, #0xb0
	str r4, [sp, #0x16c]
	mov r4, sp
	movs r5, #5
	mov sb, r5
.L080B5952:
	movs r0, #0
	adds r1, r4, #0
	movs r2, #8
	bl func_08008EB8
	adds r4, #8
	movs r7, #1
	rsbs r7, r7, #0
	add sb, r7
	mov r0, sb
	cmp r0, #0
	bge .L080B5952
	movs r1, #0
	mov sb, r1
	ldr r2, [sp, #0x140]
	lsls r2, r2, #5
	mov sl, r2
	ldr r3, [sp, #0x144]
	lsls r3, r3, #5
	str r3, [sp, #0x17c]
	ldr r4, [sp, #0x144]
	adds r4, #0x6e
	str r4, [sp, #0x168]
	ldr r5, [sp, #0x144]
	adds r5, #0xdc
	str r5, [sp, #0x170]
	movs r7, #0x3f
	mov r8, r7
	mov r4, sp
	movs r6, #0x58
	movs r5, #0x38
.L080B5990:
	mov r0, sb
	lsls r3, r0, #3
	ldrb r1, [r4, #3]
	mov r0, r8
	ands r0, r1
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #3]
	ldrb r0, [r4, #1]
	mov r2, r8
	ands r2, r0
	movs r0, #0x40
	orrs r2, r0
	ldrb r1, [r4, #5]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r4, #5]
	ldr r1, [sp, #0x13c]
	adds r3, r3, r1
	ldr r7, .L080B59F8 @ =0x000003FF
	adds r0, r7, #0
	ands r3, r0
	ldrh r0, [r4, #4]
	ldr r7, .L080B59FC @ =0xFFFFFC00
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r4, #4]
	movs r0, #0x10
	orrs r2, r0
	strb r2, [r4, #1]
	mov r0, sb
	cmp r0, #2
	bgt .L080B5A08
	ldr r0, [sp, #0x138]
	adds r0, #0x9e
	bl strlen
	lsrs r0, r0, #1
	lsls r0, r0, #3
	subs r0, r5, r0
	ldr r2, .L080B5A00 @ =0x000001FF
	adds r1, r2, #0
	ands r0, r1
	ldrh r1, [r4, #2]
	ldr r3, .L080B5A04 @ =0xFFFFFE00
	ands r1, r3
	orrs r1, r0
	strh r1, [r4, #2]
	movs r0, #0x30
	b .L080B5A28
	.align 2, 0
.L080B59F8: .4byte 0x000003FF
.L080B59FC: .4byte 0xFFFFFC00
.L080B5A00: .4byte 0x000001FF
.L080B5A04: .4byte 0xFFFFFE00
.L080B5A08:
	ldr r0, [sp, #0x138]
	adds r0, #0xde
	bl strlen
	lsrs r0, r0, #1
	lsls r0, r0, #3
	subs r0, r6, r0
	ldr r7, .L080B5B4C @ =0x000001FF
	adds r1, r7, #0
	ands r0, r1
	ldrh r1, [r4, #2]
	ldr r2, .L080B5B50 @ =0xFFFFFE00
	ands r1, r2
	orrs r1, r0
	strh r1, [r4, #2]
	movs r0, #0x88
.L080B5A28:
	strb r0, [r4]
	adds r4, #8
	adds r6, #0x20
	adds r5, #0x20
	movs r3, #1
	add sb, r3
	mov r7, sb
	cmp r7, #5
	ble .L080B5990
	movs r0, #0x14
	bl __builtin_new
	ldr r2, [sp, #0x138]
	movs r3, #0xf1
	lsls r3, r3, #3
	adds r1, r2, r3
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	ldr r5, [sp, #0x138]
	ldr r7, .L080B5B54 @ =0x0000096C
	adds r6, r5, r7
	ldr r0, [r6]
	cmp r4, r0
	beq .L080B5A66
	bl __builtin_delete
.L080B5A66:
	str r4, [r6]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r0, [sp, #0x138]
	movs r1, #0x97
	lsls r1, r1, #4
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r4, r0
	beq .L080B5A9A
	bl __builtin_delete
.L080B5A9A:
	str r4, [r5]
	ldr r0, [r6]
	ldr r2, [sp, #0x138]
	ldr r3, .L080B5B58 @ =0x00000B18
	adds r1, r2, r3
	ldr r1, [r1]
	bl func_0805E860
	ldr r1, [r5]
	movs r0, #0x60
	strh r0, [r1]
	ldr r1, [r5]
	movs r0, #0xa
	strh r0, [r1, #2]
	ldr r0, [r5]
	add r4, sp, #0x140
	ldrh r4, [r4]
	strh r4, [r0, #6]
	ldr r0, [r5]
	movs r1, #1
	movs r7, #1
	mov r8, r7
	mov r2, r8
	strh r2, [r0, #4]
	ldr r0, [r5]
	strb r1, [r0, #0x18]
	ldr r3, [sp, #0x138]
	ldr r5, .L080B5B5C @ =0x00000974
	adds r4, r3, r5
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x60
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x180]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x180]
	ldm r0!, {r1, r2, r7}
	stm r4!, {r1, r2, r7}
	ldm r0!, {r3, r5, r7}
	stm r4!, {r3, r5, r7}
	ldm r0!, {r1, r2}
	stm r4!, {r1, r2}
	ldr r0, [sp, #0x138]
	bl func_08008910
	ldr r3, [sp, #0x138]
	ldr r4, .L080B5B60 @ =0x0000097C
	adds r2, r3, r4
	ldr r1, [r2]
	movs r3, #0
	cmp r1, #0
	beq .L080B5B1A
	ldrh r3, [r2, #4]
.L080B5B1A:
	adds r6, r0, #0
	ldr r2, .L080B5B64 @ =0x06010000
	add r2, sl
	ldr r0, [sp, #0x180]
	bl func_08008F0C
	ldr r5, [sp, #0x180]
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B5B68
	cmp r1, #0
	beq .L080B5B42
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B5B42:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B5C34
	.align 2, 0
.L080B5B4C: .4byte 0x000001FF
.L080B5B50: .4byte 0xFFFFFE00
.L080B5B54: .4byte 0x0000096C
.L080B5B58: .4byte 0x00000B18
.L080B5B5C: .4byte 0x00000974
.L080B5B60: .4byte 0x0000097C
.L080B5B64: .4byte 0x06010000
.L080B5B68:
	str r1, [sp, #0x19c]
	add r1, sp, #0xd4
	mov r4, r8
	str r4, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x19c]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xd0
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080B5B86
	mov r0, sl
.L080B5B86:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B5BA4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B5BA8
	mov r0, r8
	bl func_080D3BC0
	b .L080B5BA8
.L080B5BA4:
	movs r0, #0
	mov r8, r0
.L080B5BA8:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x19c]
	cmp r2, r7
	beq .L080B5BD0
.L080B5BB6:
	cmp r3, #0
	beq .L080B5BC6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B5BC6:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x19c]
	cmp r2, r0
	bne .L080B5BB6
.L080B5BD0:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080B5BEE
	cmp r5, #0
	beq .L080B5BEA
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B5BEA:
	adds r5, #0x10
	b .L080B5C10
.L080B5BEE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B5C0E
.L080B5BF6:
	cmp r2, #0
	beq .L080B5C06
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B5C06:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B5BF6
.L080B5C0E:
	adds r5, r2, #0
.L080B5C10:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B5C20
.L080B5C1A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B5C1A
.L080B5C20:
	cmp r0, #0
	beq .L080B5C28
	bl free
.L080B5C28:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r1, [sp, #0x1a0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B5C34:
	ldr r0, [sp, #0x138]
	bl func_08008910
	adds r4, r0, #0
	ldr r3, [sp, #0x138]
	ldr r5, .L080B5C7C @ =0x00000984
	adds r2, r3, r5
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B5C4E
	ldrh r3, [r2, #4]
.L080B5C4E:
	adds r6, r4, #0
	add r0, sp, #0x60
	ldr r2, .L080B5C80 @ =0x05000220
	bl func_08008F0C
	ldr r7, [sp, #0x180]
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B5C84
	cmp r1, #0
	beq .L080B5C74
	adds r0, r1, #0
	adds r1, r7, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B5C74:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B5D50
	.align 2, 0
.L080B5C7C: .4byte 0x00000984
.L080B5C80: .4byte 0x05000220
.L080B5C84:
	str r1, [sp, #0x19c]
	movs r0, #1
	add r1, sp, #0xdc
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x19c]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xd8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080B5CA2
	mov r0, sl
.L080B5CA2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B5CC0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B5CC4
	mov r0, r8
	bl func_080D3BC0
	b .L080B5CC4
.L080B5CC0:
	movs r0, #0
	mov r8, r0
.L080B5CC4:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x19c]
	cmp r2, r7
	beq .L080B5CEC
.L080B5CD2:
	cmp r3, #0
	beq .L080B5CE2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B5CE2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x19c]
	cmp r2, r0
	bne .L080B5CD2
.L080B5CEC:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080B5D0A
	cmp r5, #0
	beq .L080B5D06
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B5D06:
	adds r5, #0x10
	b .L080B5D2C
.L080B5D0A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B5D2A
.L080B5D12:
	cmp r2, #0
	beq .L080B5D22
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B5D22:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B5D12
.L080B5D2A:
	adds r5, r2, #0
.L080B5D2C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B5D3C
.L080B5D36:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B5D36
.L080B5D3C:
	cmp r0, #0
	beq .L080B5D44
	bl free
.L080B5D44:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r1, [sp, #0x1a0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B5D50:
	movs r0, #0x14
	bl __builtin_new
	ldr r2, [sp, #0x138]
	ldr r3, .L080B5E54 @ =0x0000078C
	adds r1, r2, r3
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	ldr r5, [sp, #0x138]
	ldr r7, .L080B5E58 @ =0x00000994
	adds r6, r5, r7
	ldr r0, [r6]
	cmp r4, r0
	beq .L080B5D7A
	bl __builtin_delete
.L080B5D7A:
	str r4, [r6]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r0, [sp, #0x138]
	ldr r1, .L080B5E5C @ =0x00000998
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r4, r0
	beq .L080B5DAC
	bl __builtin_delete
.L080B5DAC:
	str r4, [r5]
	ldr r0, [r6]
	movs r1, #0
	bl func_0805E860
	ldr r1, [r5]
	movs r0, #0x10
	strh r0, [r1]
	ldr r1, [r5]
	movs r0, #0x4a
	strh r0, [r1, #2]
	ldr r0, [r5]
	add r2, sp, #0x144
	ldrh r2, [r2]
	strh r2, [r0, #6]
	ldr r1, [r5]
	movs r0, #2
	strh r0, [r1, #4]
	ldr r0, [r5]
	movs r5, #1
	strb r5, [r0, #0x18]
	ldr r3, [sp, #0x138]
	ldr r7, .L080B5E60 @ =0x0000099C
	adds r4, r3, r7
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x60
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x180]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x180]
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r2, r7}
	stm r4!, {r1, r2, r7}
	ldm r0!, {r3, r7}
	stm r4!, {r3, r7}
	ldr r0, [sp, #0x138]
	bl func_08008910
	ldr r1, [sp, #0x138]
	ldr r3, .L080B5E64 @ =0x000009A4
	adds r2, r1, r3
	ldr r1, [r2]
	movs r3, #0
	cmp r1, #0
	beq .L080B5E22
	ldrh r3, [r2, #4]
.L080B5E22:
	adds r6, r0, #0
	ldr r4, [sp, #0x17c]
	ldr r7, .L080B5E68 @ =0x06010000
	adds r2, r4, r7
	ldr r0, [sp, #0x180]
	bl func_08008F0C
	ldr r0, [sp, #0x180]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B5E6C
	cmp r1, #0
	beq .L080B5E4C
	adds r0, r1, #0
	ldr r1, [sp, #0x180]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B5E4C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B5F36
	.align 2, 0
.L080B5E54: .4byte 0x0000078C
.L080B5E58: .4byte 0x00000994
.L080B5E5C: .4byte 0x00000998
.L080B5E60: .4byte 0x0000099C
.L080B5E64: .4byte 0x000009A4
.L080B5E68: .4byte 0x06010000
.L080B5E6C:
	str r1, [sp, #0x19c]
	add r1, sp, #0xe4
	str r5, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x19c]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xe0
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080B5E88
	mov r0, sl
.L080B5E88:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B5EA6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B5EAA
	mov r0, r8
	bl func_080D3BC0
	b .L080B5EAA
.L080B5EA6:
	movs r0, #0
	mov r8, r0
.L080B5EAA:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x19c]
	cmp r2, r7
	beq .L080B5ED2
.L080B5EB8:
	cmp r3, #0
	beq .L080B5EC8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B5EC8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x19c]
	cmp r2, r0
	bne .L080B5EB8
.L080B5ED2:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080B5EF0
	cmp r5, #0
	beq .L080B5EEC
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B5EEC:
	adds r5, #0x10
	b .L080B5F12
.L080B5EF0:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B5F10
.L080B5EF8:
	cmp r2, #0
	beq .L080B5F08
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B5F08:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B5EF8
.L080B5F10:
	adds r5, r2, #0
.L080B5F12:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B5F22
.L080B5F1C:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B5F1C
.L080B5F22:
	cmp r0, #0
	beq .L080B5F2A
	bl free
.L080B5F2A:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r1, [sp, #0x1a0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B5F36:
	ldr r0, [sp, #0x138]
	bl func_08008910
	adds r4, r0, #0
	ldr r3, [sp, #0x138]
	ldr r5, .L080B5F80 @ =0x000009AC
	adds r2, r3, r5
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B5F50
	ldrh r3, [r2, #4]
.L080B5F50:
	adds r6, r4, #0
	add r0, sp, #0x60
	ldr r2, .L080B5F84 @ =0x05000240
	bl func_08008F0C
	ldr r7, [sp, #0x180]
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B5F88
	cmp r1, #0
	beq .L080B5F76
	adds r0, r1, #0
	adds r1, r7, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B5F76:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B6054
	.align 2, 0
.L080B5F80: .4byte 0x000009AC
.L080B5F84: .4byte 0x05000240
.L080B5F88:
	str r1, [sp, #0x19c]
	movs r0, #1
	add r1, sp, #0xec
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x19c]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xe8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080B5FA6
	mov r0, sl
.L080B5FA6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B5FC4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B5FC8
	mov r0, r8
	bl func_080D3BC0
	b .L080B5FC8
.L080B5FC4:
	movs r0, #0
	mov r8, r0
.L080B5FC8:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x19c]
	cmp r2, r7
	beq .L080B5FF0
.L080B5FD6:
	cmp r3, #0
	beq .L080B5FE6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B5FE6:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x19c]
	cmp r2, r0
	bne .L080B5FD6
.L080B5FF0:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080B600E
	cmp r5, #0
	beq .L080B600A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B600A:
	adds r5, #0x10
	b .L080B6030
.L080B600E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B602E
.L080B6016:
	cmp r2, #0
	beq .L080B6026
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6026:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B6016
.L080B602E:
	adds r5, r2, #0
.L080B6030:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B6040
.L080B603A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B603A
.L080B6040:
	cmp r0, #0
	beq .L080B6048
	bl free
.L080B6048:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r1, [sp, #0x1a0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B6054:
	movs r1, #0
	movs r0, #0
	ldr r2, [sp, #0x180]
	strh r0, [r2, #8]
	str r0, [r2, #0xc]
	strb r1, [r2, #0x10]
	strb r1, [r2, #0x11]
	str r0, [r2, #0x14]
	movs r0, #0x90
	strh r0, [r2]
	movs r0, #0x26
	strh r0, [r2, #2]
	add r3, sp, #0x168
	ldrh r3, [r3]
	strh r3, [r2, #6]
	movs r0, #3
	strh r0, [r2, #4]
	movs r4, #1
	strb r4, [r2, #0x18]
	ldr r5, [sp, #0x138]
	movs r7, #0xf2
	lsls r7, r7, #3
	adds r0, r5, r7
	ldr r1, [r0]
	ldr r2, [r1]
	ldr r0, [sp, #0x184]
	ldr r3, [r2, #0x10]
	movs r2, #0
	bl _call_via_r3
	ldr r0, [sp, #0x138]
	bl func_08008910
	adds r2, r0, #0
	ldr r1, [sp, #0x188]
	ldr r0, [r1]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B60A8
	ldr r5, [sp, #0x188]
	ldrh r3, [r5, #4]
.L080B60A8:
	adds r6, r2, #0
	ldr r7, [sp, #0x17c]
	ldr r0, .L080B60DC @ =0x06010DC0
	adds r2, r7, r0
	add r0, sp, #0xa0
	bl func_08008F0C
	ldr r1, [sp, #0x164]
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B60E0
	cmp r1, #0
	beq .L080B60D2
	adds r0, r1, #0
	ldr r1, [sp, #0x164]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B60D2:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B61AA
	.align 2, 0
.L080B60DC: .4byte 0x06010DC0
.L080B60E0:
	str r1, [sp, #0x19c]
	add r1, sp, #0xf4
	str r4, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x19c]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xf0
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080B60FC
	mov r0, sl
.L080B60FC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B611A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B611E
	mov r0, r8
	bl func_080D3BC0
	b .L080B611E
.L080B611A:
	movs r0, #0
	mov r8, r0
.L080B611E:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x19c]
	cmp r2, r7
	beq .L080B6146
.L080B612C:
	cmp r3, #0
	beq .L080B613C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B613C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x19c]
	cmp r2, r0
	bne .L080B612C
.L080B6146:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080B6164
	cmp r5, #0
	beq .L080B6160
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6160:
	adds r5, #0x10
	b .L080B6186
.L080B6164:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B6184
.L080B616C:
	cmp r2, #0
	beq .L080B617C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B617C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B616C
.L080B6184:
	adds r5, r2, #0
.L080B6186:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B6196
.L080B6190:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B6190
.L080B6196:
	cmp r0, #0
	beq .L080B619E
	bl free
.L080B619E:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r1, [sp, #0x1a0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B61AA:
	movs r0, #0x14
	bl __builtin_new
	ldr r2, [sp, #0x138]
	movs r3, #0xf2
	lsls r3, r3, #3
	adds r1, r2, r3
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	ldr r5, [sp, #0x138]
	ldr r7, .L080B62C0 @ =0x000009BC
	adds r6, r5, r7
	ldr r0, [r6]
	cmp r4, r0
	beq .L080B61D6
	bl __builtin_delete
.L080B61D6:
	str r4, [r6]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r0, [sp, #0x138]
	movs r1, #0x9c
	lsls r1, r1, #4
	adds r5, r0, r1
	ldr r0, [r5]
	cmp r4, r0
	beq .L080B620A
	bl __builtin_delete
.L080B620A:
	str r4, [r5]
	ldr r0, [r6]
	ldr r3, [sp, #0x138]
	ldr r4, .L080B62C4 @ =0x00000B18
	adds r2, r3, r4
	ldr r7, .L080B62C8 @ =0x00000B3D
	adds r1, r3, r7
	ldr r2, [r2]
	adds r1, r1, r2
	ldrb r1, [r1]
	bl func_0805E860
	ldr r1, [r5]
	movs r0, #0x90
	strh r0, [r1]
	ldr r1, [r5]
	movs r0, #0x26
	strh r0, [r1, #2]
	ldr r0, [r5]
	add r1, sp, #0x170
	ldrh r1, [r1]
	strh r1, [r0, #6]
	ldr r1, [r5]
	movs r0, #3
	strh r0, [r1, #4]
	ldr r0, [r5]
	movs r5, #1
	strb r5, [r0, #0x18]
	ldr r2, [sp, #0x138]
	ldr r3, .L080B62CC @ =0x000009C4
	adds r4, r2, r3
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xb0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x16c]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x16c]
	ldm r0!, {r1, r2, r7}
	stm r4!, {r1, r2, r7}
	ldm r0!, {r1, r3, r7}
	stm r4!, {r1, r3, r7}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	ldr r0, [sp, #0x138]
	bl func_08008910
	ldr r4, [sp, #0x138]
	ldr r7, .L080B62D0 @ =0x000009CC
	adds r2, r4, r7
	ldr r1, [r2]
	movs r3, #0
	cmp r1, #0
	beq .L080B628E
	ldrh r3, [r2, #4]
.L080B628E:
	adds r6, r0, #0
	ldr r0, [sp, #0x17c]
	ldr r4, .L080B62D4 @ =0x06011B80
	adds r2, r0, r4
	add r0, sp, #0xa0
	bl func_08008F0C
	ldr r7, [sp, #0x164]
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B62D8
	cmp r1, #0
	beq .L080B62B8
	adds r0, r1, #0
	adds r1, r7, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B62B8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B63A2
	.align 2, 0
.L080B62C0: .4byte 0x000009BC
.L080B62C4: .4byte 0x00000B18
.L080B62C8: .4byte 0x00000B3D
.L080B62CC: .4byte 0x000009C4
.L080B62D0: .4byte 0x000009CC
.L080B62D4: .4byte 0x06011B80
.L080B62D8:
	str r1, [sp, #0x19c]
	add r1, sp, #0xfc
	str r5, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x19c]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xf8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080B62F4
	mov r0, sl
.L080B62F4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B6312
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B6316
	mov r0, r8
	bl func_080D3BC0
	b .L080B6316
.L080B6312:
	movs r0, #0
	mov r8, r0
.L080B6316:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x19c]
	cmp r2, r7
	beq .L080B633E
.L080B6324:
	cmp r3, #0
	beq .L080B6334
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6334:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x19c]
	cmp r2, r0
	bne .L080B6324
.L080B633E:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080B635C
	cmp r5, #0
	beq .L080B6358
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6358:
	adds r5, #0x10
	b .L080B637E
.L080B635C:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B637C
.L080B6364:
	cmp r2, #0
	beq .L080B6374
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6374:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B6364
.L080B637C:
	adds r5, r2, #0
.L080B637E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B638E
.L080B6388:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B6388
.L080B638E:
	cmp r0, #0
	beq .L080B6396
	bl free
.L080B6396:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r1, [sp, #0x1a0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B63A2:
	ldr r0, [sp, #0x138]
	bl func_08008910
	adds r4, r0, #0
	ldr r3, [sp, #0x138]
	ldr r5, .L080B63EC @ =0x000009D4
	adds r2, r3, r5
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B63BC
	ldrh r3, [r2, #4]
.L080B63BC:
	adds r6, r4, #0
	add r0, sp, #0xa0
	ldr r2, .L080B63F0 @ =0x05000260
	bl func_08008F0C
	ldr r7, [sp, #0x164]
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B63F4
	cmp r1, #0
	beq .L080B63E2
	adds r0, r1, #0
	adds r1, r7, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B63E2:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B64BE
	.align 2, 0
.L080B63EC: .4byte 0x000009D4
.L080B63F0: .4byte 0x05000260
.L080B63F4:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x104
	str r0, [r1]
	ldr r0, [r6]
	mov r5, sl
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x100
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x100
	cmp r4, r0
	bhs .L080B6414
	adds r1, r2, #0
.L080B6414:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B6432
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B6436
	mov r0, r8
	bl func_080D3BC0
	b .L080B6436
.L080B6432:
	movs r0, #0
	mov r8, r0
.L080B6436:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L080B645A
.L080B6442:
	cmp r3, #0
	beq .L080B6452
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6452:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080B6442
.L080B645A:
	adds r5, r3, #0
	add r0, sp, #0x104
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B6478
	cmp r5, #0
	beq .L080B6474
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6474:
	adds r5, #0x10
	b .L080B649A
.L080B6478:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B6498
.L080B6480:
	cmp r2, #0
	beq .L080B6490
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6490:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B6480
.L080B6498:
	adds r5, r2, #0
.L080B649A:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B64AA
.L080B64A4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B64A4
.L080B64AA:
	cmp r0, #0
	beq .L080B64B2
	bl free
.L080B64B2:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r1, [sp, #0x1a0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B64BE:
	movs r0, #0x14
	bl __builtin_new
	ldr r2, [sp, #0x138]
	ldr r3, .L080B65EC @ =0x00000794
	adds r1, r2, r3
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	ldr r7, [sp, #0x138]
	ldr r0, .L080B65F0 @ =0x000009E4
	adds r5, r7, r0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080B64E8
	bl __builtin_delete
.L080B64E8:
	str r4, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl func_0805E860
	movs r1, #0
	mov sb, r1
	movs r3, #0x9f
	lsls r3, r3, #4
	ldr r2, [sp, #0x138]
	adds r3, r2, r3
	str r3, [sp, #0x18c]
	movs r4, #0
	str r4, [sp, #0x190]
	ldr r5, .L080B65F4 @ =0x000009E8
	adds r5, r2, r5
	str r5, [sp, #0x194]
	ldr r7, [sp, #0x148]
	str r7, [sp, #0x198]
.L080B650E:
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	movs r1, #0
	str r1, [r4, #0xc]
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x11]
	str r1, [r4, #0x14]
	strb r0, [r4, #0x18]
	ldr r2, [sp, #0x194]
	ldr r0, [r2]
	cmp r4, r0
	beq .L080B653A
	bl __builtin_delete
.L080B653A:
	ldr r3, [sp, #0x194]
	str r4, [r3]
	movs r0, #0x9e
	mov r5, sb
	muls r5, r0, r5
	adds r0, r5, #0
	adds r0, #0x28
	strh r0, [r4]
	movs r0, #0xe
	strh r0, [r4, #2]
	add r7, sp, #0x198
	ldrh r7, [r7]
	strh r7, [r4, #6]
	movs r0, #4
	strh r0, [r4, #4]
	movs r5, #1
	strb r5, [r4, #0x18]
	mov r0, sb
	cmp r0, #0
	bne .L080B656C
	ldr r1, [sp, #0x138]
	ldr r2, .L080B65F4 @ =0x000009E8
	adds r0, r1, r2
	ldr r0, [r0]
	strb r5, [r0, #0x10]
.L080B656C:
	ldr r3, [sp, #0x138]
	ldr r4, .L080B65F0 @ =0x000009E4
	adds r0, r3, r4
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xa0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x164]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r1, [sp, #0x18c]
	ldr r0, [sp, #0x164]
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r0, [sp, #0x138]
	bl func_08008910
	ldr r7, [sp, #0x18c]
	ldr r1, [r7, #8]
	movs r3, #0
	cmp r1, #0
	beq .L080B65B6
	ldrh r3, [r7, #0xc]
.L080B65B6:
	adds r6, r0, #0
	ldr r0, [sp, #0x198]
	lsls r2, r0, #5
	ldr r4, .L080B65F8 @ =0x06010000
	adds r2, r2, r4
	ldr r0, [sp, #0x164]
	bl func_08008F0C
	ldr r7, [sp, #0x164]
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B65FC
	cmp r1, #0
	beq .L080B65E2
	adds r0, r1, #0
	adds r1, r7, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B65E2:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B66C4
	.align 2, 0
.L080B65EC: .4byte 0x00000794
.L080B65F0: .4byte 0x000009E4
.L080B65F4: .4byte 0x000009E8
.L080B65F8: .4byte 0x06010000
.L080B65FC:
	str r1, [sp, #0x19c]
	add r2, sp, #0x10c
	str r5, [r2]
	ldr r0, [r6]
	ldr r5, [sp, #0x19c]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x108
	str r4, [r0]
	ldr r1, [r2]
	cmp r4, r1
	bhs .L080B6616
	adds r0, r2, #0
.L080B6616:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B6634
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B6638
	mov r0, r8
	bl func_080D3BC0
	b .L080B6638
.L080B6634:
	movs r0, #0
	mov r8, r0
.L080B6638:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x19c]
	cmp r2, r7
	beq .L080B6660
.L080B6646:
	cmp r3, #0
	beq .L080B6656
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6656:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x19c]
	cmp r2, r0
	bne .L080B6646
.L080B6660:
	adds r5, r3, #0
	add r0, sp, #0x10c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B667E
	cmp r5, #0
	beq .L080B667A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B667A:
	adds r5, #0x10
	b .L080B66A0
.L080B667E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B669E
.L080B6686:
	cmp r2, #0
	beq .L080B6696
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6696:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B6686
.L080B669E:
	adds r5, r2, #0
.L080B66A0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B66B0
.L080B66AA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B66AA
.L080B66B0:
	cmp r0, #0
	beq .L080B66B8
	bl free
.L080B66B8:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r7, [sp, #0x1a0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B66C4:
	ldr r0, [sp, #0x138]
	bl func_08008910
	adds r5, r0, #0
	ldr r1, [sp, #0x190]
	ldr r2, [sp, #0x138]
	adds r0, r1, r2
	movs r1, #0xa0
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r3, [sp, #0x190]
	adds r2, r3, r2
	adds r2, r2, r1
	ldr r0, [r2]
	movs r3, #0
	cmp r0, #0
	beq .L080B66EA
	ldrh r3, [r2, #4]
.L080B66EA:
	adds r6, r5, #0
	add r0, sp, #0xa0
	adds r1, r4, #0
	ldr r2, .L080B671C @ =0x05000280
	bl func_08008F0C
	ldr r4, [sp, #0x164]
	mov sl, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B6720
	cmp r1, #0
	beq .L080B6712
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6712:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B67EA
	.align 2, 0
.L080B671C: .4byte 0x05000280
.L080B6720:
	str r1, [sp, #0x19c]
	movs r0, #1
	add r2, sp, #0x114
	str r0, [r2]
	ldr r0, [r6]
	ldr r3, [sp, #0x19c]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x110
	str r4, [r0]
	ldr r1, [r2]
	cmp r4, r1
	bhs .L080B673C
	adds r0, r2, #0
.L080B673C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B675A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B675E
	mov r0, r8
	bl func_080D3BC0
	b .L080B675E
.L080B675A:
	movs r0, #0
	mov r8, r0
.L080B675E:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x19c]
	cmp r2, r4
	beq .L080B6786
.L080B676C:
	cmp r3, #0
	beq .L080B677C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B677C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x19c]
	cmp r2, r5
	bne .L080B676C
.L080B6786:
	adds r5, r3, #0
	add r0, sp, #0x114
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B67A4
	cmp r5, #0
	beq .L080B67A0
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B67A0:
	adds r5, #0x10
	b .L080B67C6
.L080B67A4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B67C4
.L080B67AC:
	cmp r2, #0
	beq .L080B67BC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B67BC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B67AC
.L080B67C4:
	adds r5, r2, #0
.L080B67C6:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B67D6
.L080B67D0:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B67D0
.L080B67D6:
	cmp r0, #0
	beq .L080B67DE
	bl free
.L080B67DE:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r1, [sp, #0x1a0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B67EA:
	ldr r2, [sp, #0x18c]
	adds r2, #0x20
	str r2, [sp, #0x18c]
	ldr r3, [sp, #0x190]
	adds r3, #0x20
	str r3, [sp, #0x190]
	ldr r4, [sp, #0x194]
	adds r4, #4
	str r4, [sp, #0x194]
	ldr r5, [sp, #0x198]
	adds r5, #4
	str r5, [sp, #0x198]
	movs r7, #1
	add sb, r7
	mov r0, sb
	cmp r0, #1
	bgt .L080B680E
	b .L080B650E
.L080B680E:
	movs r0, #0x14
	bl __builtin_new
	ldr r2, [sp, #0x138]
	movs r3, #0xf3
	lsls r3, r3, #3
	adds r1, r2, r3
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	ldr r7, [sp, #0x138]
	movs r0, #0xa3
	lsls r0, r0, #4
	adds r5, r7, r0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080B683C
	bl __builtin_delete
.L080B683C:
	str r4, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl func_0805E860
	ldr r1, [r5]
	movs r0, #0x90
	strh r0, [r1, #0x10]
	movs r1, #0
	mov sb, r1
	movs r2, #0
	mov r8, r2
	movs r5, #0
	ldr r3, [sp, #0x138]
	ldr r4, .L080B69AC @ =0x00000A34
	adds r6, r3, r4
	movs r7, #0
.L080B685E:
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	str r5, [r4, #0xc]
	mov r0, r8
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x11]
	str r5, [r4, #0x14]
	strb r0, [r4, #0x18]
	ldr r0, [r6]
	cmp r4, r0
	beq .L080B6886
	bl __builtin_delete
.L080B6886:
	stm r6!, {r4}
	mov r1, sb
	lsls r0, r1, #7
	adds r0, #0x10
	strh r0, [r4]
	movs r0, #0x4a
	subs r0, r0, r7
	strh r0, [r4, #2]
	add r2, sp, #0x14c
	ldrh r2, [r2]
	strh r2, [r4, #6]
	movs r0, #5
	strh r0, [r4, #4]
	movs r3, #1
	mov sl, r3
	mov r0, sl
	strb r0, [r4, #0x18]
	adds r7, #0x24
	add sb, r3
	mov r1, sb
	cmp r1, #1
	ble .L080B685E
	movs r0, #0x14
	bl __builtin_new
	ldr r2, [sp, #0x138]
	ldr r3, .L080B69B0 @ =0x0000079C
	adds r1, r2, r3
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	ldr r7, [sp, #0x138]
	ldr r0, .L080B69B4 @ =0x00000A7C
	adds r5, r7, r0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080B68DC
	bl __builtin_delete
.L080B68DC:
	str r4, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl func_0805E860
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r1, [sp, #0x138]
	movs r2, #0xa8
	lsls r2, r2, #4
	adds r5, r1, r2
	ldr r0, [r5]
	cmp r4, r0
	beq .L080B6918
	bl __builtin_delete
.L080B6918:
	str r4, [r5]
	movs r0, #0x60
	strh r0, [r4]
	movs r0, #0x48
	strh r0, [r4, #2]
	add r3, sp, #0x150
	ldrh r3, [r3]
	strh r3, [r4, #6]
	movs r0, #6
	strh r0, [r4, #4]
	mov r5, sl
	strb r5, [r4, #0x18]
	movs r7, #1
	str r7, [sp, #0x154]
	movs r0, #0
	str r0, [sp, #0x158]
	ldr r1, [sp, #0x138]
	ldr r2, .L080B69B8 @ =0x00000B14
	adds r0, r1, r2
	ldr r0, [r0]
	cmp r0, #0
	beq .L080B6946
	b .L080B70EA
.L080B6946:
	movs r3, #0xf4
	lsls r3, r3, #3
	adds r3, r1, r3
	str r3, [sp, #0x15c]
.L080B694E:
	ldr r0, [sp, #0x138]
	bl func_080087C8
	ldr r0, [sp, #0x138]
	bl func_080088B8
	ldr r0, [sp, #0x138]
	bl func_080088D4
	adds r4, r0, #0
	ldr r5, [sp, #0x154]
	cmp r5, #0
	beq .L080B698C
	ldr r7, [sp, #0x15c]
	ldr r0, [r7]
	adds r0, #0xc
	ldr r1, .L080B69BC @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	ldr r0, [sp, #0x138]
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r7]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r0, #0
	str r0, [sp, #0x154]
.L080B698C:
	ldr r1, [sp, #0x158]
	cmp r1, #0
	beq .L080B69C0
	ldr r2, [sp, #0x15c]
	ldr r0, [r2]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080B69FC
	ldr r3, [sp, #0x138]
	ldr r4, .L080B69B8 @ =0x00000B14
	adds r0, r3, r4
	movs r5, #1
	str r5, [r0]
	b .L080B69FC
	.align 2, 0
.L080B69AC: .4byte 0x00000A34
.L080B69B0: .4byte 0x0000079C
.L080B69B4: .4byte 0x00000A7C
.L080B69B8: .4byte 0x00000B14
.L080B69BC: .4byte 0x00000889
.L080B69C0:
	movs r7, #1
	ands r4, r7
	cmp r4, #0
	beq .L080B69FC
	ldr r0, [sp, #0x138]
	movs r1, #0xf4
	lsls r1, r1, #3
	adds r4, r0, r1
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080B69FC
	movs r3, #1
	str r3, [sp, #0x158]
	adds r0, r2, #0
	adds r0, #0xc
	ldr r1, .L080B6BCC @ =0x00000889
	movs r2, #1
	bl func_08009378
	ldr r0, [sp, #0x138]
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L080B69FC:
	mov r4, sp
	movs r5, #5
	mov sb, r5
.L080B6A02:
	ldr r0, [sp, #0x138]
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080B6A22
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [r4]
	str r1, [r0]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080B6A22:
	adds r4, #8
	movs r7, #1
	rsbs r7, r7, #0
	add sb, r7
	mov r0, sb
	cmp r0, #0
	bge .L080B6A02
	ldr r0, [sp, #0x138]
	bl func_08008920
	adds r4, r0, #0
	ldr r1, [sp, #0x138]
	ldr r2, .L080B6BD0 @ =0x00000974
	adds r0, r1, r2
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080B6A48
	ldrh r2, [r0, #4]
.L080B6A48:
	ldr r3, [sp, #0x138]
	movs r5, #0x97
	lsls r5, r5, #4
	adds r0, r3, r5
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	ldr r0, [sp, #0x138]
	bl func_08008920
	adds r4, r0, #0
	ldr r7, [sp, #0x138]
	ldr r1, .L080B6BD4 @ =0x0000099C
	adds r0, r7, r1
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080B6A70
	ldrh r2, [r0, #4]
.L080B6A70:
	ldr r3, [sp, #0x138]
	ldr r5, .L080B6BD8 @ =0x00000998
	adds r0, r3, r5
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	ldr r7, [sp, #0x138]
	ldr r0, .L080B6BDC @ =0x00000B18
	adds r1, r7, r0
	ldr r2, .L080B6BE0 @ =0x00000B3D
	adds r0, r7, r2
	ldr r1, [r1]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B6AB8
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r3, .L080B6BE4 @ =0x000009C4
	adds r0, r7, r3
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080B6AA8
	ldrh r2, [r0, #4]
.L080B6AA8:
	ldr r5, [sp, #0x138]
	movs r7, #0x9c
	lsls r7, r7, #4
	adds r0, r5, r7
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080B6AB8:
	ldr r0, [sp, #0x138]
	bl func_08008920
	adds r3, r0, #0
	ldr r1, [sp, #0x184]
	ldr r0, [r1]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B6AD0
	ldr r4, [sp, #0x184]
	ldrh r2, [r4, #4]
.L080B6AD0:
	adds r0, r3, #0
	ldr r3, [sp, #0x180]
	bl func_0805E99C
	movs r5, #0
	mov sb, r5
	ldr r7, [sp, #0x138]
	movs r0, #0x9f
	lsls r0, r0, #4
	adds r4, r7, r0
.L080B6AE4:
	ldr r0, [sp, #0x138]
	bl func_08008920
	adds r5, r0, #0
	ldr r0, [r4]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B6AF8
	ldrh r2, [r4, #4]
.L080B6AF8:
	mov r3, sb
	lsls r0, r3, #2
	ldr r7, [sp, #0x138]
	adds r0, r0, r7
	ldr r3, .L080B6BE8 @ =0x000009E8
	adds r0, r0, r3
	ldr r3, [r0]
	adds r0, r5, #0
	bl func_0805E99C
	adds r4, #0x20
	movs r5, #1
	add sb, r5
	mov r7, sb
	cmp r7, #1
	ble .L080B6AE4
	movs r0, #0
	mov sb, r0
	movs r2, #0xa3
	lsls r2, r2, #4
	ldr r1, [sp, #0x138]
	adds r2, r1, r2
	str r2, [sp, #0x160]
.L080B6B26:
	ldr r3, [sp, #0x160]
	ldr r0, [r3]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	mov r4, sb
	adds r4, #1
	str r4, [sp, #0x174]
	mov r5, sb
	lsls r5, r5, #5
	mov sl, r5
	mov r7, sb
	lsls r7, r7, #2
	str r7, [sp, #0x178]
	cmp r0, #0
	blt .L080B6B48
	b .L080B6DEE
.L080B6B48:
	ldr r5, [sp, #0x138]
	add r5, sl
	ldr r0, .L080B6BEC @ =0x00000A3C
	adds r4, r5, r0
	ldr r1, [sp, #0x160]
	ldr r0, [r1]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xa0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x164]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x164]
	ldm r0!, {r2, r3, r7}
	stm r4!, {r2, r3, r7}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r7}
	stm r4!, {r1, r7}
	ldr r0, [sp, #0x138]
	bl func_08008910
	adds r2, r0, #0
	ldr r3, .L080B6BF0 @ =0x00000A44
	adds r5, r5, r3
	ldr r0, [r5]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B6B9A
	ldrh r3, [r5, #4]
.L080B6B9A:
	adds r6, r2, #0
	ldr r4, [sp, #0x14c]
	lsls r2, r4, #5
	ldr r0, [sp, #0x164]
	ldr r5, .L080B6BF4 @ =0x06010000
	adds r2, r2, r5
	bl func_08008F0C
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B6BF8
	cmp r1, #0
	beq .L080B6BC2
	adds r0, r1, #0
	ldr r1, [sp, #0x164]
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6BC2:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B6CCE
	.align 2, 0
.L080B6BCC: .4byte 0x00000889
.L080B6BD0: .4byte 0x00000974
.L080B6BD4: .4byte 0x0000099C
.L080B6BD8: .4byte 0x00000998
.L080B6BDC: .4byte 0x00000B18
.L080B6BE0: .4byte 0x00000B3D
.L080B6BE4: .4byte 0x000009C4
.L080B6BE8: .4byte 0x000009E8
.L080B6BEC: .4byte 0x00000A3C
.L080B6BF0: .4byte 0x00000A44
.L080B6BF4: .4byte 0x06010000
.L080B6BF8:
	str r1, [sp, #0x19c]
	add r2, sp, #0x11c
	movs r4, #1
	str r4, [r2]
	ldr r0, [r6]
	ldr r5, [sp, #0x19c]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x118
	str r4, [r0]
	ldr r1, [r2]
	cmp r4, r1
	bhs .L080B6C14
	adds r0, r2, #0
.L080B6C14:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B6C32
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B6C36
	mov r0, r8
	bl func_080D3BC0
	b .L080B6C36
.L080B6C32:
	movs r0, #0
	mov r8, r0
.L080B6C36:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r7, sb
	adds r7, #1
	str r7, [sp, #0x174]
	mov r0, sb
	lsls r0, r0, #2
	str r0, [sp, #0x178]
	ldr r1, [sp, #0x19c]
	cmp r2, r1
	beq .L080B6C6A
.L080B6C50:
	cmp r3, #0
	beq .L080B6C60
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6C60:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x19c]
	cmp r2, r0
	bne .L080B6C50
.L080B6C6A:
	adds r5, r3, #0
	add r0, sp, #0x11c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B6C88
	cmp r5, #0
	beq .L080B6C84
	adds r0, r5, #0
	add r1, sp, #0xa0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B6C84:
	adds r5, #0x10
	b .L080B6CAA
.L080B6C88:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B6CA8
.L080B6C90:
	cmp r2, #0
	beq .L080B6CA0
	adds r0, r2, #0
	add r1, sp, #0xa0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6CA0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B6C90
.L080B6CA8:
	adds r5, r2, #0
.L080B6CAA:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B6CBA
.L080B6CB4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B6CB4
.L080B6CBA:
	cmp r0, #0
	beq .L080B6CC2
	bl free
.L080B6CC2:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r7, [sp, #0x1a0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B6CCE:
	ldr r0, [sp, #0x138]
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0x138]
	add r0, sl
	ldr r1, .L080B6D20 @ =0x00000A4C
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r2, [sp, #0x138]
	add r2, sl
	adds r2, r2, r1
	ldr r0, [r2]
	movs r3, #0
	cmp r0, #0
	beq .L080B6CF0
	ldrh r3, [r2, #4]
.L080B6CF0:
	adds r6, r5, #0
	add r0, sp, #0xa0
	adds r1, r4, #0
	ldr r2, .L080B6D24 @ =0x050002A0
	bl func_08008F0C
	ldr r0, [sp, #0x164]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B6D28
	cmp r1, #0
	beq .L080B6D18
	adds r0, r1, #0
	ldr r1, [sp, #0x164]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B6D18:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B6DEE
	.align 2, 0
.L080B6D20: .4byte 0x00000A4C
.L080B6D24: .4byte 0x050002A0
.L080B6D28:
	str r1, [sp, #0x19c]
	add r2, sp, #0x124
	movs r5, #1
	str r5, [r2]
	ldr r0, [r6]
	ldr r7, [sp, #0x19c]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0x120
	str r4, [r0]
	ldr r1, [r2]
	cmp r4, r1
	bhs .L080B6D44
	adds r0, r2, #0
.L080B6D44:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B6D62
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B6D66
	mov r0, r8
	bl func_080D3BC0
	b .L080B6D66
.L080B6D62:
	movs r0, #0
	mov r8, r0
.L080B6D66:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080B6D84
.L080B6D70:
	cmp r3, #0
	beq .L080B6D80
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6D80:
	adds r2, #0x10
	adds r3, #0x10
.L080B6D84:
	ldr r0, [sp, #0x19c]
	cmp r2, r0
	bne .L080B6D70
	adds r5, r3, #0
	add r0, sp, #0x124
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B6DA8
	cmp r5, #0
	beq .L080B6DA4
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B6DA4:
	adds r5, #0x10
	b .L080B6DCA
.L080B6DA8:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B6DC8
.L080B6DB0:
	cmp r2, #0
	beq .L080B6DC0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6DC0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B6DB0
.L080B6DC8:
	adds r5, r2, #0
.L080B6DCA:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B6DDA
.L080B6DD4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B6DD4
.L080B6DDA:
	cmp r0, #0
	beq .L080B6DE2
	bl free
.L080B6DE2:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r7, [sp, #0x1a0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B6DEE:
	ldr r0, [sp, #0x138]
	bl func_08008920
	adds r6, r0, #0
	ldr r0, [sp, #0x138]
	add r0, sl
	ldr r1, .L080B6EC4 @ =0x00000A3C
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r5, [sp, #0x138]
	add r5, sl
	adds r5, r5, r1
	ldr r0, [r5]
	movs r2, #0
	cmp r0, #0
	beq .L080B6E10
	ldrh r2, [r5, #4]
.L080B6E10:
	ldr r1, [sp, #0x178]
	ldr r3, [sp, #0x138]
	adds r0, r1, r3
	ldr r5, .L080B6EC8 @ =0x00000A34
	adds r0, r0, r5
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_0805E99C
	ldr r7, [sp, #0x174]
	mov sb, r7
	mov r0, sb
	cmp r0, #1
	bgt .L080B6E30
	b .L080B6B26
.L080B6E30:
	ldr r1, [sp, #0x138]
	ldr r2, .L080B6ECC @ =0x00000A7C
	adds r4, r1, r2
	ldr r0, [r4]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080B6E44
	b .L080B70B4
.L080B6E44:
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xa0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x164]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r3, [sp, #0x138]
	ldr r4, .L080B6ED0 @ =0x00000A84
	adds r1, r3, r4
	ldr r0, [sp, #0x164]
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	ldr r0, [sp, #0x138]
	bl func_08008910
	ldr r3, [sp, #0x138]
	ldr r4, .L080B6ED4 @ =0x00000A8C
	adds r2, r3, r4
	ldr r1, [r2]
	movs r3, #0
	cmp r1, #0
	beq .L080B6E90
	ldrh r3, [r2, #4]
.L080B6E90:
	adds r6, r0, #0
	ldr r5, [sp, #0x150]
	lsls r2, r5, #5
	ldr r0, [sp, #0x164]
	ldr r7, .L080B6ED8 @ =0x06010000
	adds r2, r2, r7
	bl func_08008F0C
	ldr r0, [sp, #0x164]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B6EDC
	cmp r1, #0
	beq .L080B6EBC
	adds r0, r1, #0
	ldr r1, [sp, #0x164]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B6EBC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B6FA0
	.align 2, 0
.L080B6EC4: .4byte 0x00000A3C
.L080B6EC8: .4byte 0x00000A34
.L080B6ECC: .4byte 0x00000A7C
.L080B6ED0: .4byte 0x00000A84
.L080B6ED4: .4byte 0x00000A8C
.L080B6ED8: .4byte 0x06010000
.L080B6EDC:
	mov sl, r1
	add r2, sp, #0x12c
	movs r5, #1
	str r5, [r2]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	add r0, sp, #0x128
	str r4, [r0]
	ldr r1, [r2]
	cmp r4, r1
	bhs .L080B6EF6
	adds r0, r2, #0
.L080B6EF6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B6F14
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B6F18
	mov r0, r8
	bl func_080D3BC0
	b .L080B6F18
.L080B6F14:
	movs r0, #0
	mov r8, r0
.L080B6F18:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L080B6F3C
.L080B6F24:
	cmp r3, #0
	beq .L080B6F34
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6F34:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080B6F24
.L080B6F3C:
	adds r5, r3, #0
	add r0, sp, #0x12c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B6F5A
	cmp r5, #0
	beq .L080B6F56
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6F56:
	adds r5, #0x10
	b .L080B6F7C
.L080B6F5A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B6F7A
.L080B6F62:
	cmp r2, #0
	beq .L080B6F72
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B6F72:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B6F62
.L080B6F7A:
	adds r5, r2, #0
.L080B6F7C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B6F8C
.L080B6F86:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B6F86
.L080B6F8C:
	cmp r0, #0
	beq .L080B6F94
	bl free
.L080B6F94:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r1, [sp, #0x1a0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B6FA0:
	ldr r0, [sp, #0x138]
	bl func_08008910
	adds r4, r0, #0
	ldr r3, [sp, #0x138]
	ldr r5, .L080B6FE8 @ =0x00000A94
	adds r2, r3, r5
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B6FBA
	ldrh r3, [r2, #4]
.L080B6FBA:
	adds r6, r4, #0
	add r0, sp, #0xa0
	ldr r2, .L080B6FEC @ =0x050002C0
	bl func_08008F0C
	ldr r7, [sp, #0x164]
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B6FF0
	cmp r1, #0
	beq .L080B6FE0
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B6FE0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B70B4
	.align 2, 0
.L080B6FE8: .4byte 0x00000A94
.L080B6FEC: .4byte 0x050002C0
.L080B6FF0:
	mov sl, r1
	add r2, sp, #0x134
	movs r5, #1
	str r5, [r2]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	add r0, sp, #0x130
	str r4, [r0]
	ldr r1, [r2]
	cmp r4, r1
	bhs .L080B700A
	adds r0, r2, #0
.L080B700A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B7028
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B702C
	mov r0, r8
	bl func_080D3BC0
	b .L080B702C
.L080B7028:
	movs r0, #0
	mov r8, r0
.L080B702C:
	adds r5, r0, #0
	str r5, [sp, #0x1a0]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L080B7050
.L080B7038:
	cmp r3, #0
	beq .L080B7048
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B7048:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080B7038
.L080B7050:
	adds r5, r3, #0
	add r0, sp, #0x134
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B706E
	cmp r5, #0
	beq .L080B706A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B706A:
	adds r5, #0x10
	b .L080B7090
.L080B706E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B708E
.L080B7076:
	cmp r2, #0
	beq .L080B7086
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B7086:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B7076
.L080B708E:
	adds r5, r2, #0
.L080B7090:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B70A0
.L080B709A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B709A
.L080B70A0:
	cmp r0, #0
	beq .L080B70A8
	bl free
.L080B70A8:
	ldr r0, [sp, #0x1a0]
	add r0, r8
	ldr r1, [sp, #0x1a0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B70B4:
	ldr r0, [sp, #0x138]
	bl func_08008920
	adds r4, r0, #0
	ldr r2, [sp, #0x138]
	ldr r5, .L080B715C @ =0x00000A84
	adds r3, r2, r5
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B70CE
	ldrh r2, [r3, #4]
.L080B70CE:
	ldr r7, [sp, #0x138]
	movs r3, #0xa8
	lsls r3, r3, #4
	adds r0, r7, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	ldr r4, .L080B7160 @ =0x00000B14
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080B70EA
	b .L080B694E
.L080B70EA:
	ldr r1, [sp, #0x5c]
	add r0, sp, #0x58
	bl func_08007C28
	add r0, sp, #0x58
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x54]
	add r0, sp, #0x50
	bl func_08007C28
	add r0, sp, #0x50
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x4c]
	add r0, sp, #0x48
	bl func_08007C28
	add r0, sp, #0x48
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x44]
	add r0, sp, #0x40
	bl func_08007C28
	add r0, sp, #0x40
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x3c]
	add r0, sp, #0x38
	bl func_08007C28
	add r0, sp, #0x38
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x34]
	add r0, sp, #0x30
	bl func_08007C28
	add r0, sp, #0x30
	movs r1, #2
	bl func_080079E8
	add sp, #0x1a4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B715C: .4byte 0x00000A84
.L080B7160: .4byte 0x00000B14

	thumb_func_start func_080B7164
func_080B7164: @ 0x080B7164
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x7c
	mov sb, r0
	str r1, [sp, #0x40]
	bl func_08008724
	ldr r0, .L080B72E8 @ =gUnk_0872D5CC
	ldr r1, .L080B72EC @ =0x0600F000
	bl Unpack
	ldr r0, .L080B72F0 @ =gUnk_0872D630
	ldr r1, .L080B72F4 @ =0x0600F800
	bl Unpack
	ldr r0, .L080B72F8 @ =gUnk_0872D6D8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r1, .L080B72FC @ =0x0600BFE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	ldr r0, .L080B7300 @ =gUnk_0872DDE4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl func_08008E64
	mov r0, sb
	bl func_08008918
	add r1, sp, #0xc
	movs r3, #0xb2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r4, #0
	strh r2, [r0]
	mov r0, sb
	bl func_08008918
	add r2, sp, #0xc
	ldr r5, .L080B7304 @ =0x00001F41
	adds r1, r5, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	mov r0, sb
	bl func_08008918
	add r2, sp, #0xc
	ldr r6, .L080B7308 @ =0x00001E42
	adds r1, r6, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	mov r0, sb
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x14]
	mov r0, sb
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x16]
	ldr r1, .L080B730C @ =0x05000200
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r0, r7, #0
	strh r0, [r1]
	adds r1, #2
	ldr r2, .L080B7310 @ =0x0000FFFE
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	ldr r3, .L080B7314 @ =0x00007F34
	adds r0, r3, #0
	strh r0, [r1]
	mov sl, r4
	mov r4, sp
	adds r4, #0x20
	str r4, [sp, #0x50]
	mov r5, sp
	adds r5, #0x24
	str r5, [sp, #0x54]
	mov r6, sp
	adds r6, #0x30
	str r6, [sp, #0x64]
	mov r7, sp
	adds r7, #0x34
	str r7, [sp, #0x68]
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x44]
.L080B7230:
	mov r1, sl
	lsls r1, r1, #6
	mov r8, r1
	mov r4, r8
	add r4, sl
	lsls r4, r4, #2
	mov r2, sb
	adds r1, r4, r2
	add r0, sp, #0x20
	movs r3, #4
	strh r3, [r0]
	movs r6, #2
	ldr r5, [sp, #0x50]
	strh r6, [r5, #2]
	ldr r0, [sp, #0x20]
	adds r1, #0xf0
	movs r2, #0
	bl func_0804E7A0
	mov r7, sl
	lsls r6, r7, #1
	mov r0, sb
	movs r1, #2
	adds r2, r6, #0
	mov r3, sb
	adds r3, #0x9e
	bl func_080BC254
	adds r2, r0, #0
	mov r0, sb
	adds r1, r4, r0
	add r0, sp, #0x24
	movs r3, #4
	strh r3, [r0]
	movs r7, #2
	ldr r5, [sp, #0x54]
	strh r7, [r5, #2]
	ldr r0, [sp, #0x24]
	adds r1, #0xf0
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	mov r0, sb
	bl func_08008910
	add r4, sb
	adds r4, #0xf0
	mov r7, sl
	lsls r5, r7, #3
	ldr r1, [sp, #0x40]
	adds r2, r5, r1
	adds r7, r0, #0
	lsls r2, r2, #5
	ldr r3, .L080B7318 @ =0x06010000
	adds r2, r2, r3
	add r0, sp, #0x10
	adds r1, r4, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_08008F0C
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	mov r4, r8
	str r4, [sp, #0x60]
	str r6, [sp, #0x58]
	str r5, [sp, #0x5c]
	cmp r1, r0
	beq .L080B731C
	cmp r1, #0
	beq .L080B72D4
	adds r0, r1, #0
	ldr r1, [sp, #0x44]
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B72D4:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	mov r3, sb
	adds r3, #0xde
	str r3, [sp, #0x48]
	mov r4, sl
	adds r4, #1
	str r4, [sp, #0x4c]
	b .L080B73EE
	.align 2, 0
.L080B72E8: .4byte gUnk_0872D5CC
.L080B72EC: .4byte 0x0600F000
.L080B72F0: .4byte gUnk_0872D630
.L080B72F4: .4byte 0x0600F800
.L080B72F8: .4byte gUnk_0872D6D8
.L080B72FC: .4byte 0x0600BFE0
.L080B7300: .4byte gUnk_0872DDE4
.L080B7304: .4byte 0x00001F41
.L080B7308: .4byte 0x00001E42
.L080B730C: .4byte 0x05000200
.L080B7310: .4byte 0x0000FFFE
.L080B7314: .4byte 0x00007F34
.L080B7318: .4byte 0x06010000
.L080B731C:
	str r1, [sp, #0x6c]
	movs r5, #1
	str r5, [sp, #0x2c]
	ldr r0, [r7]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r1, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L080B7336
	adds r0, r1, #0
.L080B7336:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B7354
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B7358
	mov r0, r8
	bl func_080D3BC0
	b .L080B7358
.L080B7354:
	movs r0, #0
	mov r8, r0
.L080B7358:
	adds r4, r0, #0
	str r4, [sp, #0x70]
	ldr r2, [r7]
	adds r3, r4, #0
	mov r0, sb
	adds r0, #0xde
	str r0, [sp, #0x48]
	mov r1, sl
	adds r1, #1
	str r1, [sp, #0x4c]
	ldr r4, [sp, #0x6c]
	cmp r2, r4
	beq .L080B738C
.L080B7372:
	cmp r3, #0
	beq .L080B7382
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B7382:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x6c]
	cmp r2, r5
	bne .L080B7372
.L080B738C:
	adds r4, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080B73A8
	cmp r4, #0
	beq .L080B73A4
	adds r0, r4, #0
	ldr r1, [sp, #0x44]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B73A4:
	adds r4, #0x10
	b .L080B73CA
.L080B73A8:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080B73C8
.L080B73B0:
	cmp r2, #0
	beq .L080B73C0
	adds r0, r2, #0
	ldr r1, [sp, #0x44]
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B73C0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B73B0
.L080B73C8:
	adds r4, r2, #0
.L080B73CA:
	ldr r2, [r7, #4]
	ldr r0, [r7]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B73DA
.L080B73D4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B73D4
.L080B73DA:
	cmp r0, #0
	beq .L080B73E2
	bl free
.L080B73E2:
	ldr r0, [sp, #0x70]
	add r0, r8
	ldr r1, [sp, #0x70]
	str r1, [r7]
	str r4, [r7, #4]
	str r0, [r7, #0xc]
.L080B73EE:
	ldr r4, [sp, #0x60]
	add r4, sl
	lsls r4, r4, #2
	mov r2, sb
	adds r1, r4, r2
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r1, r1, r3
	add r0, sp, #0x30
	movs r5, #4
	strh r5, [r0]
	movs r7, #2
	ldr r6, [sp, #0x64]
	strh r7, [r6, #2]
	ldr r0, [sp, #0x30]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	mov r0, sb
	movs r1, #2
	ldr r2, [sp, #0x58]
	ldr r3, [sp, #0x48]
	bl func_080BC254
	adds r2, r0, #0
	mov r0, sb
	adds r1, r4, r0
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r1, r1, r3
	movs r5, #1
	add r0, sp, #0x34
	movs r6, #4
	strh r6, [r0]
	movs r0, #2
	ldr r7, [sp, #0x68]
	strh r0, [r7, #2]
	ldr r0, [sp, #0x34]
	adds r1, #4
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r5, [sp, #8]
	movs r3, #0
	bl func_0804E958
	mov r0, sb
	bl func_08008910
	add r4, sb
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r4, r4, r3
	adds r4, #4
	adds r6, r0, #0
	ldr r7, [sp, #0x5c]
	ldr r0, [sp, #0x40]
	adds r2, r7, r0
	lsls r0, r2, #5
	ldr r1, .L080B749C @ =0x06010300
	adds r2, r0, r1
	add r0, sp, #0xc
	adds r1, r4, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_08008F0C
	add r2, sp, #0xc
	mov sl, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B74A0
	cmp r1, #0
	beq .L080B7492
	adds r0, r1, #0
	add r1, sp, #0xc
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B7492:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B7560
	.align 2, 0
.L080B749C: .4byte 0x06010300
.L080B74A0:
	str r1, [sp, #0x74]
	str r5, [sp, #0x3c]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r1, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs .L080B74B8
	adds r0, r1, #0
.L080B74B8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B74D6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B74DA
	mov r0, r8
	bl func_080D3BC0
	b .L080B74DA
.L080B74D6:
	movs r0, #0
	mov r8, r0
.L080B74DA:
	adds r5, r0, #0
	str r5, [sp, #0x78]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080B74F8
.L080B74E4:
	cmp r3, #0
	beq .L080B74F4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B74F4:
	adds r2, #0x10
	adds r3, #0x10
.L080B74F8:
	ldr r0, [sp, #0x74]
	cmp r2, r0
	bne .L080B74E4
	adds r5, r3, #0
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L080B751A
	cmp r5, #0
	beq .L080B7516
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B7516:
	adds r5, #0x10
	b .L080B753C
.L080B751A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B753A
.L080B7522:
	cmp r2, #0
	beq .L080B7532
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B7532:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B7522
.L080B753A:
	adds r5, r2, #0
.L080B753C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B754C
.L080B7546:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B7546
.L080B754C:
	cmp r0, #0
	beq .L080B7554
	bl free
.L080B7554:
	ldr r0, [sp, #0x78]
	add r0, r8
	ldr r7, [sp, #0x78]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B7560:
	ldr r0, [sp, #0x4c]
	mov sl, r0
	cmp r0, #2
	bgt .L080B756A
	b .L080B7230
.L080B756A:
	add sp, #0x7c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080B757C
func_080B757C: @ 0x080B757C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	movs r5, #0
	movs r1, #0
	adds r3, r6, #0
	adds r3, #0x9e
	movs r4, #0
	adds r2, r6, #0
	adds r2, #0xde
	adds r7, r3, #0
	mov r8, r2
.L080B7596:
	adds r0, r3, r1
	strb r4, [r0]
	adds r0, r2, r1
	strb r4, [r0]
	adds r1, #1
	cmp r1, #0xd
	ble .L080B7596
	ldr r0, .L080B75C4 @ =0x00000B1C
	adds r1, r6, r0
	adds r0, r7, #0
	bl strcpy
	ldr r1, .L080B75C8 @ =0x00000B18
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq .L080B75E8
	cmp r0, #1
	bgt .L080B75CC
	cmp r0, #0
	beq .L080B75D2
	b .L080B7612
	.align 2, 0
.L080B75C4: .4byte 0x00000B1C
.L080B75C8: .4byte 0x00000B18
.L080B75CC:
	cmp r0, #2
	beq .L080B7600
	b .L080B7612
.L080B75D2:
	movs r4, #6
	bl rand
	ldr r1, .L080B75E4 @ =0x0000FFFF
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r5, r0, #0x10
	b .L080B7612
	.align 2, 0
.L080B75E4: .4byte 0x0000FFFF
.L080B75E8:
	movs r4, #7
	bl rand
	ldr r1, .L080B75FC @ =0x0000FFFF
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r5, r0, #0x10
	adds r5, #6
	b .L080B7612
	.align 2, 0
.L080B75FC: .4byte 0x0000FFFF
.L080B7600:
	movs r4, #7
	bl rand
	ldr r1, .L080B763C @ =0x0000FFFF
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r5, r0, #0x10
	adds r5, #0xd
.L080B7612:
	ldr r2, .L080B7640 @ =0x00000B18
	adds r1, r6, r2
	adds r2, #0x25
	adds r0, r6, r2
	ldr r1, [r1]
	adds r0, r0, r1
	strb r5, [r0]
	movs r0, #0xd
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, .L080B7644 @ =gUnk_081078BD
	adds r1, r1, r0
	mov r0, r8
	bl strcpy
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B763C: .4byte 0x0000FFFF
.L080B7640: .4byte 0x00000B18
.L080B7644: .4byte gUnk_081078BD

	thumb_func_start func_080B7648
func_080B7648: @ 0x080B7648
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc0
	adds r7, r0, #0
	mov r0, sp
	bl func_08007874
	movs r0, #0
	mov sl, r0
	str r0, [sp, #4]
	add r4, sp, #8
	adds r0, r4, #0
	bl func_08007874
	mov r1, sl
	str r1, [r4, #4]
	add r5, sp, #0x10
	adds r0, r5, #0
	bl func_08007874
	mov r2, sl
	str r2, [r5, #4]
	add r6, sp, #0x18
	adds r0, r6, #0
	bl func_08007874
	mov r3, sl
	str r3, [r6, #4]
	add r0, sp, #0x20
	mov r8, r0
	bl func_08007874
	mov r1, sl
	mov r2, r8
	str r1, [r2, #4]
	add r3, sp, #0x28
	mov sb, r3
	mov r0, sb
	bl func_08007874
	mov r0, sl
	mov r1, sb
	str r0, [r1, #4]
	ldr r1, [sp, #4]
	mov r0, sp
	bl func_08007C28
	mov r0, sp
	movs r1, #6
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #4]
	mov r0, sp
	bl func_08007D4C
	str r0, [sp, #0x90]
	ldr r1, [sp, #0xc]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0xc]
	adds r0, r4, #0
	bl func_08007D4C
	str r0, [sp, #0x94]
	ldr r1, [sp, #0x14]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #7
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x14]
	adds r0, r5, #0
	bl func_08007D4C
	str r0, [sp, #0x98]
	ldr r1, [sp, #0x1c]
	adds r0, r6, #0
	bl func_08007C28
	adds r0, r6, #0
	movs r1, #3
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x1c]
	adds r0, r6, #0
	bl func_08007D4C
	str r0, [sp, #0x9c]
	ldr r1, [sp, #0x24]
	mov r0, r8
	bl func_08007C28
	mov r0, r8
	movs r1, #2
	bl func_08007B54
	str r0, [sp, #0x24]
	ldr r1, [sp, #0x2c]
	mov r0, sb
	bl func_08007C28
	mov r0, sb
	movs r1, #3
	bl func_08007B54
	str r0, [sp, #0x2c]
	add r0, sp, #0x30
	bl func_08007128
	add r0, sp, #0x30
	bl func_0800736C
	str r0, [sp, #0x34]
	movs r0, #0x14
	bl __builtin_new
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r1, r7, r2
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	ldr r3, .L080B784C @ =0x000008F4
	adds r6, r7, r3
	ldr r0, [r6]
	cmp r4, r0
	beq .L080B776E
	bl __builtin_delete
.L080B776E:
	str r4, [r6]
	movs r0, #0x1c
	bl __builtin_new
	adds r5, r0, #0
	movs r0, #0
	mov r4, sl
	strh r4, [r5]
	strh r4, [r5, #2]
	strh r4, [r5, #4]
	strh r4, [r5, #6]
	strh r4, [r5, #8]
	mov r1, sl
	str r1, [r5, #0xc]
	strb r0, [r5, #0x10]
	strb r0, [r5, #0x11]
	str r1, [r5, #0x14]
	strb r0, [r5, #0x18]
	ldr r2, .L080B7850 @ =0x000008F8
	adds r4, r7, r2
	ldr r0, [r4]
	cmp r5, r0
	beq .L080B77A0
	bl __builtin_delete
.L080B77A0:
	str r5, [r4]
	ldr r0, [r6]
	movs r1, #0
	bl func_0805E860
	ldr r0, [r4]
	movs r1, #0x40
	strh r1, [r0]
	ldr r0, [r4]
	strh r1, [r0, #2]
	ldr r0, [r4]
	add r3, sp, #0x90
	ldrh r3, [r3]
	strh r3, [r0, #6]
	ldr r4, [r4]
	ldr r5, .L080B7854 @ =0x00000724
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	ldr r0, .L080B7858 @ =0x000008FC
	adds r4, r7, r0
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x38
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r5, sp, #0x38
	adds r0, r5, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl memcpy
	adds r0, r5, #0
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r2, r6}
	stm r4!, {r1, r2, r6}
	ldm r0!, {r3, r6}
	stm r4!, {r3, r6}
	adds r0, r7, #0
	bl func_08008910
	ldr r1, .L080B785C @ =0x00000904
	adds r2, r7, r1
	ldr r1, [r2]
	movs r3, #0
	cmp r1, #0
	beq .L080B7814
	ldrh r3, [r2, #4]
.L080B7814:
	str r0, [sp, #0xb8]
	ldr r4, [sp, #0x90]
	lsls r2, r4, #5
	ldr r5, .L080B7860 @ =0x06010000
	adds r2, r2, r5
	add r0, sp, #0x38
	bl func_08008F0C
	add r6, sp, #0x38
	mov sl, r6
	ldr r0, [sp, #0xb8]
	ldr r1, [r0, #4]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	beq .L080B7864
	cmp r1, #0
	beq .L080B7842
	adds r0, r1, #0
	add r1, sp, #0x38
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B7842:
	ldr r5, [sp, #0xb8]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080B7932
	.align 2, 0
.L080B784C: .4byte 0x000008F4
.L080B7850: .4byte 0x000008F8
.L080B7854: .4byte 0x00000724
.L080B7858: .4byte 0x000008FC
.L080B785C: .4byte 0x00000904
.L080B7860: .4byte 0x06010000
.L080B7864:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x5c]
	ldr r6, [sp, #0xb8]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x58]
	add r1, sp, #0x5c
	add r0, sp, #0x58
	cmp r4, #1
	bhs .L080B787E
	adds r0, r1, #0
.L080B787E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B789C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B78A0
	mov r0, sb
	bl func_080D3BC0
	b .L080B78A0
.L080B789C:
	movs r0, #0
	mov sb, r0
.L080B78A0:
	adds r5, r0, #0
	str r5, [sp, #0xbc]
	ldr r0, [sp, #0xb8]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080B78C6
.L080B78AE:
	cmp r3, #0
	beq .L080B78BE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B78BE:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080B78AE
.L080B78C6:
	adds r5, r3, #0
	ldr r0, [sp, #0x5c]
	cmp r0, #1
	bne .L080B78E2
	cmp r5, #0
	beq .L080B78DE
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B78DE:
	adds r5, #0x10
	b .L080B790A
.L080B78E2:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B7908
.L080B78EA:
	cmp r2, #0
	beq .L080B78FA
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B78FA:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L080B78EA
.L080B7908:
	adds r5, r2, #0
.L080B790A:
	ldr r6, [sp, #0xb8]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B791C
.L080B7916:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B7916
.L080B791C:
	cmp r0, #0
	beq .L080B7924
	bl free
.L080B7924:
	ldr r0, [sp, #0xbc]
	add r0, sb
	ldr r1, [sp, #0xbc]
	ldr r2, [sp, #0xb8]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080B7932:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r3, .L080B7990 @ =0x0000090C
	adds r4, r7, r3
	ldr r6, [r4]
	mov r8, r6
	ldr r1, .L080B7994 @ =0x00000724
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080B7958
	ldrh r3, [r4, #4]
.L080B7958:
	str r5, [sp, #0xb8]
	lsls r2, r2, #5
	ldr r4, .L080B7998 @ =0x05000200
	adds r2, r2, r4
	add r0, sp, #0x38
	mov r1, r8
	bl func_08008F0C
	add r5, sp, #0x38
	mov sl, r5
	ldr r6, [sp, #0xb8]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B799C
	cmp r1, #0
	beq .L080B7986
	adds r0, r1, #0
	add r1, sp, #0x38
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B7986:
	ldr r5, [sp, #0xb8]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080B7A6A
	.align 2, 0
.L080B7990: .4byte 0x0000090C
.L080B7994: .4byte 0x00000724
.L080B7998: .4byte 0x05000200
.L080B799C:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x64]
	ldr r6, [sp, #0xb8]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x60]
	add r1, sp, #0x64
	add r0, sp, #0x60
	cmp r4, #1
	bhs .L080B79B6
	adds r0, r1, #0
.L080B79B6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B79D4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B79D8
	mov r0, sb
	bl func_080D3BC0
	b .L080B79D8
.L080B79D4:
	movs r0, #0
	mov sb, r0
.L080B79D8:
	adds r5, r0, #0
	str r5, [sp, #0xbc]
	ldr r0, [sp, #0xb8]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080B79FE
.L080B79E6:
	cmp r3, #0
	beq .L080B79F6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B79F6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080B79E6
.L080B79FE:
	adds r5, r3, #0
	ldr r0, [sp, #0x64]
	cmp r0, #1
	bne .L080B7A1A
	cmp r5, #0
	beq .L080B7A16
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B7A16:
	adds r5, #0x10
	b .L080B7A42
.L080B7A1A:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B7A40
.L080B7A22:
	cmp r2, #0
	beq .L080B7A32
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B7A32:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L080B7A22
.L080B7A40:
	adds r5, r2, #0
.L080B7A42:
	ldr r6, [sp, #0xb8]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B7A54
.L080B7A4E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B7A4E
.L080B7A54:
	cmp r0, #0
	beq .L080B7A5C
	bl free
.L080B7A5C:
	ldr r0, [sp, #0xbc]
	add r0, sb
	ldr r1, [sp, #0xbc]
	ldr r2, [sp, #0xb8]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080B7A6A:
	adds r0, r7, #0
	bl func_080B8578
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	movs r3, #0xab
	lsls r3, r3, #4
	adds r4, r7, r3
	ldr r6, [r4]
	mov r8, r6
	ldr r1, [sp, #0x24]
	add r0, sp, #0x20
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080B7A96
	ldrh r3, [r4, #4]
.L080B7A96:
	str r5, [sp, #0xb8]
	lsls r2, r2, #5
	ldr r0, .L080B7ACC @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x38
	mov r1, r8
	bl func_08008F0C
	add r1, sp, #0x38
	mov sl, r1
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080B7AD0
	cmp r1, #0
	beq .L080B7AC2
	adds r0, r1, #0
	add r1, sp, #0x38
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B7AC2:
	ldr r5, [sp, #0xb8]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080B7B9E
	.align 2, 0
.L080B7ACC: .4byte 0x06010000
.L080B7AD0:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x6c]
	ldr r6, [sp, #0xb8]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x68]
	add r1, sp, #0x6c
	add r0, sp, #0x68
	cmp r4, #1
	bhs .L080B7AEA
	adds r0, r1, #0
.L080B7AEA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B7B08
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B7B0C
	mov r0, sb
	bl func_080D3BC0
	b .L080B7B0C
.L080B7B08:
	movs r0, #0
	mov sb, r0
.L080B7B0C:
	adds r5, r0, #0
	str r5, [sp, #0xbc]
	ldr r0, [sp, #0xb8]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080B7B32
.L080B7B1A:
	cmp r3, #0
	beq .L080B7B2A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B7B2A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080B7B1A
.L080B7B32:
	adds r5, r3, #0
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne .L080B7B4E
	cmp r5, #0
	beq .L080B7B4A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B7B4A:
	adds r5, #0x10
	b .L080B7B76
.L080B7B4E:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B7B74
.L080B7B56:
	cmp r2, #0
	beq .L080B7B66
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B7B66:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L080B7B56
.L080B7B74:
	adds r5, r2, #0
.L080B7B76:
	ldr r6, [sp, #0xb8]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B7B88
.L080B7B82:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B7B82
.L080B7B88:
	cmp r0, #0
	beq .L080B7B90
	bl free
.L080B7B90:
	ldr r0, [sp, #0xbc]
	add r0, sb
	ldr r1, [sp, #0xbc]
	ldr r2, [sp, #0xb8]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080B7B9E:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r3, .L080B7BF8 @ =0x00000AD4
	adds r4, r7, r3
	ldr r6, [r4]
	mov r8, r6
	ldr r1, [sp, #0x2c]
	add r0, sp, #0x28
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080B7BC2
	ldrh r3, [r4, #4]
.L080B7BC2:
	str r5, [sp, #0xb8]
	lsls r2, r2, #5
	ldr r0, .L080B7BFC @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x38
	mov r1, r8
	bl func_08008F0C
	add r1, sp, #0x38
	mov sl, r1
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080B7C00
	cmp r1, #0
	beq .L080B7BEE
	adds r0, r1, #0
	add r1, sp, #0x38
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B7BEE:
	ldr r5, [sp, #0xb8]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080B7CCE
	.align 2, 0
.L080B7BF8: .4byte 0x00000AD4
.L080B7BFC: .4byte 0x06010000
.L080B7C00:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x74]
	ldr r6, [sp, #0xb8]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x70]
	add r1, sp, #0x74
	add r0, sp, #0x70
	cmp r4, #1
	bhs .L080B7C1A
	adds r0, r1, #0
.L080B7C1A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B7C38
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B7C3C
	mov r0, sb
	bl func_080D3BC0
	b .L080B7C3C
.L080B7C38:
	movs r0, #0
	mov sb, r0
.L080B7C3C:
	adds r5, r0, #0
	str r5, [sp, #0xbc]
	ldr r0, [sp, #0xb8]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080B7C62
.L080B7C4A:
	cmp r3, #0
	beq .L080B7C5A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B7C5A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080B7C4A
.L080B7C62:
	adds r5, r3, #0
	ldr r0, [sp, #0x74]
	cmp r0, #1
	bne .L080B7C7E
	cmp r5, #0
	beq .L080B7C7A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B7C7A:
	adds r5, #0x10
	b .L080B7CA6
.L080B7C7E:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B7CA4
.L080B7C86:
	cmp r2, #0
	beq .L080B7C96
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B7C96:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L080B7C86
.L080B7CA4:
	adds r5, r2, #0
.L080B7CA6:
	ldr r6, [sp, #0xb8]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B7CB8
.L080B7CB2:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B7CB2
.L080B7CB8:
	cmp r0, #0
	beq .L080B7CC0
	bl free
.L080B7CC0:
	ldr r0, [sp, #0xbc]
	add r0, sb
	ldr r1, [sp, #0xbc]
	ldr r2, [sp, #0xb8]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080B7CCE:
	movs r3, #0
	mov sb, r3
	ldr r4, .L080B7CE4 @ =0x00000AEC
	adds r5, r7, r4
.L080B7CD6:
	mov r6, sb
	cmp r6, #7
	bgt .L080B7CE8
	ldr r4, [r5]
	ldr r1, [sp, #0x2c]
	add r0, sp, #0x28
	b .L080B7CEE
	.align 2, 0
.L080B7CE4: .4byte 0x00000AEC
.L080B7CE8:
	ldr r4, [r5]
	ldr r1, [sp, #0x24]
	add r0, sp, #0x20
.L080B7CEE:
	bl func_08007D4C
	strh r0, [r4, #6]
	ldm r5!, {r1}
	movs r0, #1
	strb r0, [r1, #0x18]
	add sb, r0
	mov r0, sb
	cmp r0, #9
	ble .L080B7CD6
	movs r1, #0
	mov sb, r1
	ldr r2, .L080B7D3C @ =0xFFFFFE8A
	adds r6, r7, r2
	mov r8, r1
.L080B7D0C:
	mov r3, sb
	cmp r3, #7
	bgt .L080B7D48
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r5, .L080B7D40 @ =0x00000ACC
	adds r3, r7, r5
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B7D2A
	ldrh r2, [r3, #4]
.L080B7D2A:
	mov r3, r8
	adds r0, r3, r7
	ldr r5, .L080B7D44 @ =0x00000AEC
	adds r0, r0, r5
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	b .L080B7D94
	.align 2, 0
.L080B7D3C: .4byte 0xFFFFFE8A
.L080B7D40: .4byte 0x00000ACC
.L080B7D44: .4byte 0x00000AEC
.L080B7D48:
	mov r1, r8
	adds r0, r1, r7
	ldr r5, .L080B7E14 @ =0x00000AEC
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r6]
	lsrs r0, r0, #8
	strh r0, [r1]
	mov r2, r8
	adds r0, r2, r7
	adds r0, r0, r5
	ldr r1, [r0]
	ldrh r0, [r6, #2]
	lsrs r0, r0, #8
	strh r0, [r1, #2]
	adds r0, r2, r7
	adds r0, r0, r5
	ldr r1, [r0]
	ldrb r0, [r6, #0xb]
	strh r0, [r1, #8]
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r3, .L080B7E18 @ =0x00000AA8
	adds r0, r7, r3
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080B7D86
	ldrh r2, [r0, #4]
.L080B7D86:
	mov r3, r8
	adds r0, r3, r7
	adds r0, r0, r5
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080B7D94:
	adds r6, #0x40
	movs r4, #4
	add r8, r4
	movs r5, #1
	add sb, r5
	mov r0, sb
	cmp r0, #9
	ble .L080B7D0C
	movs r1, #0
	mov sb, r1
.L080B7DA8:
	mov r2, sb
	lsls r1, r2, #2
	adds r0, r1, r7
	ldr r3, .L080B7E1C @ =0x00000924
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r4, [sp, #0x9c]
	adds r5, r4, r1
	strh r5, [r0, #6]
	adds r0, r7, #0
	bl func_08008910
	adds r6, r0, #0
	mov r0, sb
	lsls r2, r0, #5
	adds r0, r2, r7
	ldr r1, .L080B7E20 @ =0x00000934
	adds r0, r0, r1
	ldr r4, [r0]
	adds r2, r2, r7
	adds r2, r2, r1
	ldr r0, [r2]
	movs r3, #0
	cmp r0, #0
	beq .L080B7DDC
	ldrh r3, [r2, #4]
.L080B7DDC:
	lsls r2, r5, #5
	ldr r1, .L080B7E24 @ =0x06010000
	adds r2, r2, r1
	add r0, sp, #0x38
	adds r1, r4, #0
	bl func_08008F0C
	mov r2, sp
	adds r2, #0x38
	str r2, [sp, #0xa0]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B7E28
	cmp r1, #0
	beq .L080B7E08
	adds r0, r1, #0
	add r1, sp, #0x38
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B7E08:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r6, #1
	add sb, r6
	b .L080B7EF6
	.align 2, 0
.L080B7E14: .4byte 0x00000AEC
.L080B7E18: .4byte 0x00000AA8
.L080B7E1C: .4byte 0x00000924
.L080B7E20: .4byte 0x00000934
.L080B7E24: .4byte 0x06010000
.L080B7E28:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x7c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x78]
	add r1, sp, #0x7c
	add r0, sp, #0x78
	cmp r4, #1
	bhs .L080B7E40
	adds r0, r1, #0
.L080B7E40:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B7E5E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080B7E62
	mov r0, sl
	bl func_080D3BC0
	b .L080B7E62
.L080B7E5E:
	movs r0, #0
	mov sl, r0
.L080B7E62:
	adds r5, r0, #0
	str r5, [sp, #0xbc]
	ldr r2, [r6]
	mov ip, r5
	movs r0, #1
	add sb, r0
	cmp r2, r8
	beq .L080B7E8E
.L080B7E72:
	mov r1, ip
	cmp r1, #0
	beq .L080B7E84
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B7E84:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080B7E72
.L080B7E8E:
	mov r5, ip
	ldr r0, [sp, #0x7c]
	cmp r0, #1
	bne .L080B7EAA
	cmp r5, #0
	beq .L080B7EA6
	adds r0, r5, #0
	ldr r1, [sp, #0xa0]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B7EA6:
	adds r5, #0x10
	b .L080B7ED2
.L080B7EAA:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B7ED0
.L080B7EB2:
	cmp r2, #0
	beq .L080B7EC2
	adds r0, r2, #0
	ldr r1, [sp, #0xa0]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B7EC2:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B7EB2
.L080B7ED0:
	adds r5, r2, #0
.L080B7ED2:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B7EE2
.L080B7EDC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B7EDC
.L080B7EE2:
	cmp r0, #0
	beq .L080B7EEA
	bl free
.L080B7EEA:
	ldr r0, [sp, #0xbc]
	add r0, sl
	ldr r1, [sp, #0xbc]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B7EF6:
	mov r2, sb
	cmp r2, #1
	bgt .L080B7EFE
	b .L080B7DA8
.L080B7EFE:
	adds r0, r7, #0
	ldr r1, [sp, #0x98]
	bl func_080BA7E4
	ldr r3, .L080B7F0C @ =0x00000B14
	adds r0, r7, r3
	b .L080B84E4
	.align 2, 0
.L080B7F0C: .4byte 0x00000B14
.L080B7F10:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	adds r0, r7, #0
	bl func_080BA608
	ldr r4, .L080B7F98 @ =0x00000B31
	adds r0, r7, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B7F2E
	b .L080B8086
.L080B7F2E:
	adds r0, r7, #0
	bl func_080BA6B8
	adds r0, r7, #0
	bl func_080BA284
	movs r5, #0
	mov sb, r5
	adds r6, r7, #0
	adds r6, #0x84
	adds r0, r7, #0
	adds r0, #0x8c
	str r0, [sp, #0xb0]
	adds r1, r7, #0
	adds r1, #0xcc
	str r1, [sp, #0xb4]
.L080B7F4E:
	mov r2, sb
	lsls r4, r2, #6
	adds r5, r7, r4
	adds r0, r5, #0
	adds r0, #0x8a
	ldrh r1, [r0]
	adds r0, #2
	ldrh r2, [r0]
	adds r0, r7, #0
	bl func_080B9464
	adds r1, r6, r4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x9c
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B7FC4
	adds r0, r5, #0
	adds r0, #0x99
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B7FA6
	adds r0, r5, #0
	adds r0, #0x9a
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B7FA6
	mov r3, sb
	cmp r3, #0
	bne .L080B7F9C
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	bl func_080B94A8
	b .L080B7FA6
	.align 2, 0
.L080B7F98: .4byte 0x00000B31
.L080B7F9C:
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	bl func_080B94A8
.L080B7FA6:
	adds r4, r7, r4
	adds r0, r4, #0
	adds r0, #0x9a
	ldrb r0, [r0]
	cmp r0, #1
	bne .L080B7FBA
	adds r0, r7, #0
	mov r1, sb
	bl func_080B9844
.L080B7FBA:
	adds r0, r4, #0
	adds r0, #0x9c
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B8068
.L080B7FC4:
	mov r4, sb
	lsls r5, r4, #6
	adds r0, r7, r5
	adds r4, r0, #0
	adds r4, #0x91
	ldr r0, .L080B8000 @ =0x00000B59
	adds r1, r7, r0
	ldrb r0, [r4]
	ldrb r1, [r1]
	cmp r0, r1
	bls .L080B7FE8
	adds r0, r5, #0
	adds r0, #0x6c
	adds r0, r7, r0
	bl func_080BA0C4
	movs r0, #0
	strb r0, [r4]
.L080B7FE8:
	adds r0, r7, #0
	adds r0, #0x7c
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #1
	beq .L080B8028
	cmp r0, #1
	bgt .L080B8004
	cmp r0, #0
	beq .L080B800E
	b .L080B8056
	.align 2, 0
.L080B8000: .4byte 0x00000B59
.L080B8004:
	cmp r0, #2
	beq .L080B8038
	cmp r0, #3
	beq .L080B8048
	b .L080B8056
.L080B800E:
	ldr r1, .L080B8024 @ =0x0000070C
	adds r0, r7, r1
	movs r1, #0xcc
	bl func_08008B88
	adds r0, r7, #0
	mov r1, sb
	bl func_080B9B50
	b .L080B8056
	.align 2, 0
.L080B8024: .4byte 0x0000070C
.L080B8028:
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080B8056
	adds r0, r7, #0
	mov r1, sb
	bl func_080B9F0C
	b .L080B8056
.L080B8038:
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080B8056
	adds r0, r7, #0
	mov r1, sb
	bl func_080B9F38
	b .L080B8056
.L080B8048:
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080B8056
	adds r0, r7, #0
	mov r1, sb
	bl func_080B9E1C
.L080B8056:
	adds r1, r7, #0
	adds r1, #0x91
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #0x40
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
.L080B8068:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bhi .L080B8078
	b .L080B7F4E
.L080B8078:
	adds r0, r7, #0
	bl func_080BA734
	adds r0, r7, #0
	bl func_080B9AC0
	b .L080B80B4
.L080B8086:
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r2, .L080B80D0 @ =0x000008FC
	adds r0, r7, r2
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080B809C
	ldrh r2, [r0, #4]
.L080B809C:
	ldr r3, .L080B80D4 @ =0x000008F8
	adds r0, r7, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	adds r4, r7, #0
	adds r4, #0x8c
	str r4, [sp, #0xb0]
	adds r5, r7, #0
	adds r5, #0xcc
	str r5, [sp, #0xb4]
.L080B80B4:
	movs r6, #0
	mov sb, r6
.L080B80B8:
	ldr r1, [sp, #0xb0]
	ldrh r0, [r1]
	ldr r2, [sp, #0xb4]
	ldrh r2, [r2]
	cmp r0, r2
	bls .L080B80D8
	adds r0, r7, #0
	mov r1, sb
	ldr r2, [sp, #0x94]
	bl func_080B8EBC
	b .L080B80EA
	.align 2, 0
.L080B80D0: .4byte 0x000008FC
.L080B80D4: .4byte 0x000008F8
.L080B80D8:
	movs r1, #1
	mov r3, sb
	subs r1, r1, r3
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	ldr r2, [sp, #0x94]
	bl func_080B8EBC
.L080B80EA:
	mov r4, sb
	lsls r0, r4, #6
	adds r3, r7, r0
	adds r0, r3, #0
	adds r0, #0xab
	ldrb r0, [r0]
	adds r4, #1
	str r4, [sp, #0xa4]
	cmp r0, #0
	bne .L080B8100
	b .L080B8420
.L080B8100:
	mov r5, sb
	lsls r4, r5, #2
	adds r0, r4, r7
	ldr r1, .L080B81CC @ =0x00000924
	adds r0, r0, r1
	ldr r2, [r0]
	adds r0, r3, #0
	adds r0, #0x8a
	ldrh r0, [r0]
	lsrs r0, r0, #8
	subs r0, #9
	strh r0, [r2]
	adds r0, r4, r7
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r3, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	lsrs r0, r0, #8
	subs r0, #0x20
	strh r0, [r1, #2]
	adds r0, r4, r7
	ldr r6, .L080B81D0 @ =0x0000091C
	adds r0, r0, r6
	ldr r0, [r0]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	str r4, [sp, #0xa8]
	lsls r5, r5, #5
	str r5, [sp, #0xac]
	cmp r0, #0
	blt .L080B8144
	b .L080B83EE
.L080B8144:
	adds r5, r5, r7
	ldr r0, .L080B81D4 @ =0x0000092C
	adds r4, r5, r0
	ldr r1, [sp, #0xa8]
	adds r0, r1, r7
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x38
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x38
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x38
	ldm r0!, {r2, r3, r6}
	stm r4!, {r2, r3, r6}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r6}
	stm r4!, {r1, r6}
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r2, .L080B81D8 @ =0x00000934
	adds r5, r5, r2
	ldr r0, [r5]
	adds r1, r0, #0
	ldr r3, [sp, #0xa8]
	ldr r6, [sp, #0x9c]
	adds r2, r3, r6
	movs r3, #0
	cmp r1, #0
	beq .L080B819E
	ldrh r3, [r5, #4]
.L080B819E:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r0, .L080B81DC @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x38
	bl func_08008F0C
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B81E0
	cmp r1, #0
	beq .L080B81C4
	adds r0, r1, #0
	add r1, sp, #0x38
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B81C4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B82B4
	.align 2, 0
.L080B81CC: .4byte 0x00000924
.L080B81D0: .4byte 0x0000091C
.L080B81D4: .4byte 0x0000092C
.L080B81D8: .4byte 0x00000934
.L080B81DC: .4byte 0x06010000
.L080B81E0:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x84
	str r0, [r1]
	ldr r0, [r6]
	mov r5, r8
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x80
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B81FC
	adds r0, r1, #0
.L080B81FC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B821A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080B821E
	mov r0, sl
	bl func_080D3BC0
	b .L080B821E
.L080B821A:
	movs r0, #0
	mov sl, r0
.L080B821E:
	adds r5, r0, #0
	str r5, [sp, #0xbc]
	ldr r2, [r6]
	mov ip, r5
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0xa4]
	cmp r2, r8
	beq .L080B824C
.L080B8230:
	mov r1, ip
	cmp r1, #0
	beq .L080B8242
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B8242:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080B8230
.L080B824C:
	mov r5, ip
	ldr r1, [sp, #0x84]
	cmp r1, #1
	bne .L080B8268
	cmp r5, #0
	beq .L080B8264
	adds r0, r5, #0
	add r1, sp, #0x38
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B8264:
	adds r5, #0x10
	b .L080B8290
.L080B8268:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L080B828E
.L080B8270:
	cmp r2, #0
	beq .L080B8280
	adds r0, r2, #0
	add r1, sp, #0x38
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B8280:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B8270
.L080B828E:
	adds r5, r2, #0
.L080B8290:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B82A0
.L080B829A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B829A
.L080B82A0:
	cmp r0, #0
	beq .L080B82A8
	bl free
.L080B82A8:
	ldr r0, [sp, #0xbc]
	add r0, sl
	ldr r1, [sp, #0xbc]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B82B4:
	adds r0, r7, #0
	bl func_08008910
	adds r6, r0, #0
	ldr r2, [sp, #0xac]
	adds r0, r2, r7
	ldr r4, .L080B8314 @ =0x0000093C
	adds r0, r0, r4
	ldr r5, [r0]
	ldr r3, .L080B8318 @ =0x0000071C
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0xac]
	adds r1, r0, r7
	adds r1, r1, r4
	ldr r0, [r1]
	movs r3, #0
	cmp r0, #0
	beq .L080B82E2
	ldrh r3, [r1, #4]
.L080B82E2:
	lsls r2, r2, #5
	ldr r1, .L080B831C @ =0x05000200
	adds r2, r2, r1
	add r0, sp, #0x38
	adds r1, r5, #0
	bl func_08008F0C
	add r2, sp, #0x38
	mov sl, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B8320
	cmp r1, #0
	beq .L080B830C
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B830C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B83EE
	.align 2, 0
.L080B8314: .4byte 0x0000093C
.L080B8318: .4byte 0x0000071C
.L080B831C: .4byte 0x05000200
.L080B8320:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x8c
	str r0, [r1]
	ldr r0, [r6]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x88
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B833C
	adds r0, r1, #0
.L080B833C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B835A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B835E
	mov r0, sb
	bl func_080D3BC0
	b .L080B835E
.L080B835A:
	movs r0, #0
	mov sb, r0
.L080B835E:
	adds r5, r0, #0
	str r5, [sp, #0xbc]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080B8386
.L080B836A:
	mov r3, ip
	cmp r3, #0
	beq .L080B837C
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B837C:
	adds r2, #0x10
	movs r4, #0x10
	add ip, r4
	cmp r2, r8
	bne .L080B836A
.L080B8386:
	mov r5, ip
	ldr r1, [sp, #0x8c]
	cmp r1, #1
	bne .L080B83A2
	cmp r5, #0
	beq .L080B839E
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B839E:
	adds r5, #0x10
	b .L080B83CA
.L080B83A2:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L080B83C8
.L080B83AA:
	cmp r2, #0
	beq .L080B83BA
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B83BA:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B83AA
.L080B83C8:
	adds r5, r2, #0
.L080B83CA:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B83DA
.L080B83D4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B83D4
.L080B83DA:
	cmp r0, #0
	beq .L080B83E2
	bl free
.L080B83E2:
	ldr r0, [sp, #0xbc]
	add r0, sb
	ldr r1, [sp, #0xbc]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B83EE:
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	ldr r2, [sp, #0xac]
	adds r0, r2, r7
	ldr r1, .L080B8470 @ =0x0000092C
	adds r0, r0, r1
	ldr r4, [r0]
	adds r5, r2, r7
	adds r5, r5, r1
	ldr r0, [r5]
	movs r2, #0
	cmp r0, #0
	beq .L080B840E
	ldrh r2, [r5, #4]
.L080B840E:
	ldr r3, [sp, #0xa8]
	adds r0, r3, r7
	ldr r5, .L080B8474 @ =0x00000924
	adds r0, r0, r5
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_0805E99C
.L080B8420:
	ldr r6, [sp, #0xa4]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #1
	bhi .L080B842E
	b .L080B80B8
.L080B842E:
	adds r0, r7, #0
	ldr r1, [sp, #0x98]
	bl func_080BB8EC
	movs r0, #0
	mov sb, r0
	ldr r1, .L080B8478 @ =0xFFFFFE8A
	adds r5, r7, r1
	mov r8, r0
.L080B8440:
	mov r2, sb
	cmp r2, #7
	bgt .L080B8484
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r6, .L080B847C @ =0x00000ACC
	adds r3, r7, r6
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B845E
	ldrh r2, [r3, #4]
.L080B845E:
	mov r3, r8
	adds r0, r3, r7
	ldr r6, .L080B8480 @ =0x00000AEC
	adds r0, r0, r6
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	b .L080B84D0
	.align 2, 0
.L080B8470: .4byte 0x0000092C
.L080B8474: .4byte 0x00000924
.L080B8478: .4byte 0xFFFFFE8A
.L080B847C: .4byte 0x00000ACC
.L080B8480: .4byte 0x00000AEC
.L080B8484:
	mov r1, r8
	adds r0, r1, r7
	ldr r6, .L080B856C @ =0x00000AEC
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r5]
	lsrs r0, r0, #8
	strh r0, [r1]
	mov r2, r8
	adds r0, r2, r7
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r5, #2]
	lsrs r0, r0, #8
	strh r0, [r1, #2]
	adds r0, r2, r7
	adds r0, r0, r6
	ldr r1, [r0]
	ldrb r0, [r5, #0xb]
	strh r0, [r1, #8]
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r3, .L080B8570 @ =0x00000AA8
	adds r0, r7, r3
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080B84C2
	ldrh r2, [r0, #4]
.L080B84C2:
	mov r3, r8
	adds r0, r3, r7
	adds r0, r0, r6
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080B84D0:
	adds r5, #0x40
	movs r4, #4
	add r8, r4
	movs r6, #1
	add sb, r6
	mov r0, sb
	cmp r0, #9
	ble .L080B8440
	ldr r1, .L080B8574 @ =0x00000B14
	adds r0, r7, r1
.L080B84E4:
	ldr r0, [r0]
	cmp r0, #2
	bne .L080B84EC
	b .L080B7F10
.L080B84EC:
	ldr r1, [sp, #0x34]
	add r0, sp, #0x30
	bl func_080073E0
	add r0, sp, #0x30
	movs r1, #2
	bl func_08007184
	ldr r1, [sp, #0x2c]
	add r0, sp, #0x28
	bl func_08007C28
	add r0, sp, #0x28
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x24]
	add r0, sp, #0x20
	bl func_08007C28
	add r0, sp, #0x20
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x18
	bl func_08007C28
	add r0, sp, #0x18
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x14]
	add r0, sp, #0x10
	bl func_08007C28
	add r0, sp, #0x10
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0xc]
	add r0, sp, #8
	bl func_08007C28
	add r0, sp, #8
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #4]
	mov r0, sp
	bl func_08007C28
	mov r0, sp
	movs r1, #2
	bl func_080079E8
	add sp, #0xc0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B856C: .4byte 0x00000AEC
.L080B8570: .4byte 0x00000AA8
.L080B8574: .4byte 0x00000B14

	thumb_func_start func_080B8578
func_080B8578: @ 0x080B8578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L080B86D4 @ =0x00001F45
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L080B86D8 @ =0x00001E43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L080B86DC @ =0x00001D46
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	movs r5, #0
	movs r4, #0
	ldr r0, .L080B86E0 @ =0x00000B5E
	adds r0, r0, r6
	mov sl, r0
	movs r1, #2
	mov r8, r1
	movs r2, #1
	mov ip, r2
	ldr r3, .L080B86E4 @ =0x00000B5B
	adds r3, r3, r6
	mov sb, r3
.L080B85DE:
	lsls r2, r5, #6
	adds r3, r6, r2
	adds r0, r3, #0
	adds r0, #0x98
	strb r4, [r0]
	subs r0, #0x10
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #0x10
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r1, r3, #0
	adds r1, #0x8a
	movs r0, #0xf0
	lsls r0, r0, #7
	strh r0, [r1]
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #0xb
	movs r1, #0xe8
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x8c
	strh r0, [r1]
	mov r1, sl
	ldrb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x8f
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x9b
	strb r4, [r0]
	adds r0, r6, #0
	adds r0, #0x6c
	adds r0, r0, r2
	mov r1, r8
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0x70
	adds r0, r0, r2
	str r1, [r0]
	adds r0, r3, #0
	adds r0, #0x9d
	mov r1, ip
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x7c
	adds r0, r0, r2
	movs r7, #3
	str r7, [r0]
	adds r0, r6, #0
	adds r0, #0x80
	adds r0, r0, r2
	str r4, [r0]
	adds r0, r3, #0
	adds r0, #0x90
	strb r4, [r0]
	adds r0, #0xc
	strb r1, [r0]
	subs r0, #0xb
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	mov r2, sb
	ldrb r0, [r2]
	adds r1, r3, #0
	adds r1, #0x93
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x94
	mov r1, r8
	strb r1, [r0]
	adds r0, #1
	mov r2, ip
	strb r2, [r0]
	adds r0, #0x16
	strb r4, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls .L080B85DE
	movs r0, #2
	str r0, [r6, #0x74]
	str r7, [r6, #0x78]
	adds r0, r6, #0
	adds r0, #0xb4
	movs r5, #0
	str r5, [r0]
	adds r0, #4
	movs r4, #1
	str r4, [r0]
	adds r0, r6, #0
	movs r1, #0
	bl func_080B8DF4
	adds r0, r6, #0
	movs r1, #1
	bl func_080B8DF4
	movs r3, #0xb4
	lsls r3, r3, #4
	adds r1, r6, r3
	ldr r2, .L080B86E8 @ =0x00000B44
	adds r0, r6, r2
	str r4, [r0]
	str r4, [r1]
	adds r3, #0x10
	adds r0, r6, r3
	str r5, [r0]
	ldr r1, .L080B86EC @ =0x00000B18
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #1
	beq .L080B8730
	cmp r0, #1
	bgt .L080B86F0
	cmp r0, #0
	beq .L080B86F6
	b .L080B8794
	.align 2, 0
.L080B86D4: .4byte 0x00001F45
.L080B86D8: .4byte 0x00001E43
.L080B86DC: .4byte 0x00001D46
.L080B86E0: .4byte 0x00000B5E
.L080B86E4: .4byte 0x00000B5B
.L080B86E8: .4byte 0x00000B44
.L080B86EC: .4byte 0x00000B18
.L080B86F0:
	cmp r0, #2
	beq .L080B8758
	b .L080B8794
.L080B86F6:
	ldr r2, .L080B8718 @ =0x00000B2C
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B8720
	movs r4, #0x56
	bl rand
	ldr r1, .L080B871C @ =0x0000FFFF
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xce
	b .L080B8792
	.align 2, 0
.L080B8718: .4byte 0x00000B2C
.L080B871C: .4byte 0x0000FFFF
.L080B8720:
	bl rand
	ldr r1, .L080B872C @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #9
	b .L080B876C
	.align 2, 0
.L080B872C: .4byte 0x0000FFFF
.L080B8730:
	ldr r3, .L080B8750 @ =0x00000B2C
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B8762
	movs r4, #0xab
	bl rand
	ldr r1, .L080B8754 @ =0x0000FFFF
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r0, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xce
	b .L080B8792
	.align 2, 0
.L080B8750: .4byte 0x00000B2C
.L080B8754: .4byte 0x0000FFFF
.L080B8758:
	ldr r1, .L080B8774 @ =0x00000B2C
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B877C
.L080B8762:
	bl rand
	ldr r1, .L080B8778 @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #8
.L080B876C:
	adds r0, r6, #0
	adds r0, #0xce
	strb r1, [r0]
	b .L080B8794
	.align 2, 0
.L080B8774: .4byte 0x00000B2C
.L080B8778: .4byte 0x0000FFFF
.L080B877C:
	movs r4, #0x55
	bl rand
	ldr r1, .L080B87B8 @ =0x0000FFFF
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	adds r1, r6, #0
	adds r1, #0xce
	lsrs r0, r0, #0x10
	adds r0, #0xab
.L080B8792:
	strb r0, [r1]
.L080B8794:
	ldr r2, .L080B87BC @ =0x00000B2D
	adds r0, r6, r2
	ldrb r0, [r0]
	adds r2, r6, #0
	adds r2, #0x8e
	movs r1, #0
	strb r0, [r2]
	ldr r3, .L080B87C0 @ =0x00000B3A
	adds r0, r6, r3
	strb r1, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B87B8: .4byte 0x0000FFFF
.L080B87BC: .4byte 0x00000B2D
.L080B87C0: .4byte 0x00000B3A

	thumb_func_start func_080B87C4
func_080B87C4: @ 0x080B87C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r3, #0xfa
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r7, #0
	strh r2, [r0]
	adds r0, r4, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080B887C @ =0x00001F45
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r4, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080B8880 @ =0x00001E43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r4, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080B8884 @ =0x00001D46
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	ldr r1, .L080B8888 @ =0x0600BFE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	mov sl, r0
	adds r0, r4, #0
	bl func_080088DC
	mov sb, r0
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
	str r5, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	mov r0, sl
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl func_08050D3C
	adds r1, r4, #0
	adds r1, #0xdd
	movs r0, #1
	strb r0, [r1]
	adds r4, #0x9d
	strb r0, [r4]
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B887C: .4byte 0x00001F45
.L080B8880: .4byte 0x00001E43
.L080B8884: .4byte 0x00001D46
.L080B8888: .4byte 0x0600BFE0

	thumb_func_start func_080B888C
func_080B888C: @ 0x080B888C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	adds r7, r0, #0
	movs r0, #0xe3
	lsls r0, r0, #3
	adds r4, r7, r0
	movs r5, #0
	ldr r0, [r4]
	cmp r5, r0
	beq .L080B88B2
	cmp r0, #0
	beq .L080B88B2
	movs r1, #3
	bl func_08050D0C
.L080B88B2:
	str r5, [r4]
	movs r0, #4
	bl __builtin_new
	adds r5, r0, #0
	add r0, sp, #0xc
	bl func_0800835C
	add r4, sp, #0x10
	adds r0, r4, #0
	bl func_0800770C
	movs r0, #0
	str r0, [sp]
	add r1, sp, #0xc
	str r1, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xf
	movs r3, #0
	bl func_08050CC0
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r6, r7, r2
	adds r5, r0, #0
	ldr r0, [r6]
	cmp r5, r0
	beq .L080B88F8
	cmp r0, #0
	beq .L080B88F8
	movs r1, #3
	bl func_08050D0C
.L080B88F8:
	str r5, [r6]
	adds r0, r4, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	movs r3, #0xe3
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	movs r1, #0
	bl func_08050E50
	add r0, sp, #0xc
	bl func_08007874
	movs r0, #0
	mov sb, r0
	str r0, [sp, #0x10]
	add r5, sp, #0x14
	adds r0, r5, #0
	bl func_08007874
	mov r1, sb
	str r1, [r5, #4]
	add r6, sp, #0x1c
	adds r0, r6, #0
	bl func_08007874
	mov r2, sb
	str r2, [r6, #4]
	add r4, sp, #0x24
	adds r0, r4, #0
	bl func_08007874
	mov r3, sb
	str r3, [r4, #4]
	add r4, sp, #0x2c
	adds r0, r4, #0
	bl func_08007874
	mov r0, sb
	str r0, [r4, #4]
	ldr r1, [sp, #0x10]
	add r0, sp, #0xc
	bl func_08007C28
	add r0, sp, #0xc
	movs r1, #3
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x10]
	add r0, sp, #0xc
	bl func_08007D4C
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #7
	bl func_08007B54
	adds r1, r0, #0
	str r1, [sp, #0x18]
	adds r0, r5, #0
	bl func_08007D4C
	str r0, [sp, #0x48]
	ldr r1, [sp, #0x20]
	adds r0, r6, #0
	bl func_08007C28
	adds r0, r6, #0
	movs r1, #5
	bl func_08007B54
	str r0, [sp, #0x20]
	add r0, sp, #0x34
	bl func_08007128
	add r0, sp, #0x34
	bl func_0800736C
	str r0, [sp, #0x38]
	mov r1, sb
	strb r1, [r7, #8]
	adds r0, r7, #0
	adds r0, #0xc4
	ldr r1, [r0]
	adds r2, r7, #0
	adds r2, #8
	str r2, [sp, #0x64]
	str r0, [sp, #0x60]
	cmp r1, #0
	bge .L080B89CC
	movs r3, #0x9e
	adds r3, r3, r7
	mov r8, r3
	adds r0, r2, #0
	b .L080B89D4
.L080B89CC:
	movs r3, #0xde
	adds r3, r3, r7
	mov r8, r3
	ldr r0, [sp, #0x64]
.L080B89D4:
	bl strlen
	ldr r1, [sp, #0x64]
	adds r6, r1, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080B8A02
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080B89F2
	adds r4, r5, #0
.L080B89F2:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r2, sb
	strb r2, [r0]
.L080B8A02:
	movs r3, #0xb5
	str r3, [sp, #0x4c]
	movs r0, #0
	str r0, [sp, #0x50]
	adds r0, r7, #0
	bl func_080B87C4
	add r0, sp, #0x3c
	bl func_08007128
	ldr r1, [sp, #0x38]
	add r0, sp, #0x3c
	bl func_0800745C
	str r0, [sp, #0x40]
	add r1, sp, #0x3c
	adds r0, r7, #0
	bl func_080BC288
	adds r0, r7, #0
	movs r1, #0
	ldr r2, [sp, #0x44]
	bl func_080B8EBC
	adds r0, r7, #0
	movs r1, #1
	ldr r2, [sp, #0x44]
	bl func_080B8EBC
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	bl func_080BAC9C
	movs r1, #0xe2
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r1, #0xb4
	bl func_08008BB0
	movs r2, #0
	str r2, [sp, #0x54]
	ldr r3, .L080B8AEC @ =0x00000B14
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	beq .L080B8A60
	b .L080B8D30
.L080B8A60:
	movs r0, #0xe3
	lsls r0, r0, #3
	adds r0, r0, r7
	mov sl, r0
	movs r1, #0xf4
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x5c]
.L080B8A70:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	mov r2, sl
	ldr r0, [r2]
	bl func_08050D34
	str r0, [sp, #0x58]
	mov r3, sl
	ldr r3, [r3]
	mov sb, r3
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
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	ldr r3, [sp, #0x54]
	cmp r3, #0
	beq .L080B8AF0
	ldr r1, [sp, #0x5c]
	ldr r0, [r1]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	cmp r1, #0
	beq .L080B8AE2
	b .L080B8C28
.L080B8AE2:
	ldr r2, .L080B8AEC @ =0x00000B14
	adds r0, r7, r2
	str r1, [r0]
	b .L080B8C28
	.align 2, 0
.L080B8AEC: .4byte 0x00000B14
.L080B8AF0:
	cmp r0, #0
	beq .L080B8AFA
	cmp r0, #3
	beq .L080B8B7E
	b .L080B8C28
.L080B8AFA:
	ldr r3, [sp, #0x50]
	cmp r3, #1
	ble .L080B8B74
	movs r0, #1
	str r0, [sp, #0x54]
	ldr r1, [sp, #0x5c]
	ldr r0, [r1]
	adds r0, #0xc
	ldr r1, .L080B8B40 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r3, [sp, #0x5c]
	ldr r1, [r3]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r1, [sp, #0x60]
	ldr r0, [r1]
	cmp r0, #0
	bge .L080B8B64
	ldr r2, .L080B8B44 @ =0x00000B18
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #1
	bgt .L080B8B48
	adds r0, #1
	str r0, [r1]
	b .L080B8C28
	.align 2, 0
.L080B8B40: .4byte 0x00000889
.L080B8B44: .4byte 0x00000B18
.L080B8B48:
	ldr r3, .L080B8B60 @ =0x00000B32
	adds r0, r7, r3
	add r1, sp, #0x54
	ldrb r1, [r1]
	strb r1, [r0]
	movs r2, #0xb3
	lsls r2, r2, #4
	adds r0, r7, r2
	add r3, sp, #0x54
	ldrb r3, [r3]
	strb r3, [r0]
	b .L080B8C28
	.align 2, 0
.L080B8B60: .4byte 0x00000B32
.L080B8B64:
	ldr r1, .L080B8B70 @ =0x00000B32
	adds r0, r7, r1
	add r2, sp, #0x54
	ldrb r2, [r2]
	strb r2, [r0]
	b .L080B8C28
	.align 2, 0
.L080B8B70: .4byte 0x00000B32
.L080B8B74:
	mov r3, sl
	ldr r0, [r3]
	bl func_08050D5C
	b .L080B8C28
.L080B8B7E:
	ldr r0, [sp, #0x58]
	cmp r0, #1
	beq .L080B8B8E
	mov r1, sl
	ldr r0, [r1]
	bl func_08050D74
	b .L080B8C28
.L080B8B8E:
	ldr r2, [sp, #0x50]
	cmp r2, #0
	beq .L080B8B9A
	cmp r2, #1
	beq .L080B8BB0
	b .L080B8C28
.L080B8B9A:
	mov r3, sl
	ldr r0, [r3]
	ldr r1, .L080B8BAC @ =gUnk_08107ABC
	bl func_08050D8C
	movs r0, #1
	str r0, [sp, #0x50]
	b .L080B8C28
	.align 2, 0
.L080B8BAC: .4byte gUnk_08107ABC
.L080B8BB0:
	movs r1, #0xe2
	lsls r1, r1, #3
	adds r0, r7, r1
	bl func_08008BE0
	movs r2, #0xb4
	lsls r2, r2, #4
	adds r0, r7, r2
	ldr r3, [sp, #0x54]
	str r3, [r0]
	ldr r1, .L080B8C60 @ =0x00000B44
	adds r0, r7, r1
	ldr r2, [sp, #0x50]
	str r2, [r0]
	movs r3, #0xb5
	lsls r3, r3, #4
	adds r0, r7, r3
	ldr r1, [sp, #0x54]
	str r1, [r0]
	ldr r2, .L080B8C64 @ =gUnk_08107AC4
	mov r8, r2
	ldr r0, [sp, #0x64]
	bl strlen
	ldr r3, [sp, #0x64]
	adds r6, r3, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080B8C0C
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080B8BFA
	adds r4, r5, #0
.L080B8BFA:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	add r1, sp, #0x54
	ldrb r1, [r1]
	strb r1, [r0]
.L080B8C0C:
	mov r2, sl
	ldr r0, [r2]
	ldr r1, [sp, #0x64]
	bl func_08050D8C
	mov r3, sl
	ldr r0, [r3]
	bl func_08050DD8
	movs r0, #0
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x50]
	adds r1, #1
	str r1, [sp, #0x50]
.L080B8C28:
	ldr r2, [sp, #0x4c]
	cmp r2, #0xb3
	bgt .L080B8C32
	adds r2, #1
	str r2, [sp, #0x4c]
.L080B8C32:
	ldr r3, [sp, #0x4c]
	cmp r3, #0xb4
	bne .L080B8C40
	mov r1, sl
	ldr r0, [r1]
	bl func_08050DE4
.L080B8C40:
	movs r4, #0
	adds r5, r7, #0
	adds r5, #0x84
.L080B8C46:
	ldr r0, [r5]
	cmp r0, #0
	bge .L080B8C68
	movs r1, #1
	subs r1, r1, r4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	ldr r2, [sp, #0x44]
	bl func_080B8EBC
	b .L080B8C74
	.align 2, 0
.L080B8C60: .4byte 0x00000B44
.L080B8C64: .4byte gUnk_08107AC4
.L080B8C68:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	ldr r2, [sp, #0x44]
	bl func_080B8EBC
.L080B8C74:
	adds r4, #1
	cmp r4, #1
	ble .L080B8C46
	adds r0, r7, #0
	ldr r1, [sp, #0x48]
	bl func_080BB8EC
	movs r2, #0
	mov sb, r2
	ldr r3, .L080B8CBC @ =0xFFFFFE8A
	adds r5, r7, r3
	mov r8, r2
.L080B8C8C:
	mov r0, sb
	cmp r0, #7
	bgt .L080B8CC8
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r1, .L080B8CC0 @ =0x00000ACC
	adds r3, r7, r1
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B8CAA
	ldrh r2, [r3, #4]
.L080B8CAA:
	mov r3, r8
	adds r0, r3, r7
	ldr r3, .L080B8CC4 @ =0x00000AEC
	adds r0, r0, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	b .L080B8D14
	.align 2, 0
.L080B8CBC: .4byte 0xFFFFFE8A
.L080B8CC0: .4byte 0x00000ACC
.L080B8CC4: .4byte 0x00000AEC
.L080B8CC8:
	mov r1, r8
	adds r0, r1, r7
	ldr r6, .L080B8DA0 @ =0x00000AEC
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r5]
	lsrs r0, r0, #8
	strh r0, [r1]
	mov r2, r8
	adds r0, r2, r7
	adds r0, r0, r6
	ldr r1, [r0]
	ldrh r0, [r5, #2]
	lsrs r0, r0, #8
	strh r0, [r1, #2]
	adds r0, r2, r7
	adds r0, r0, r6
	ldr r1, [r0]
	ldrb r0, [r5, #0xb]
	strh r0, [r1, #8]
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r3, .L080B8DA4 @ =0x00000AA8
	adds r0, r7, r3
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080B8D06
	ldrh r2, [r0, #4]
.L080B8D06:
	mov r3, r8
	adds r0, r3, r7
	adds r0, r0, r6
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080B8D14:
	adds r5, #0x40
	movs r0, #4
	add r8, r0
	movs r1, #1
	add sb, r1
	mov r2, sb
	cmp r2, #9
	ble .L080B8C8C
	ldr r3, .L080B8DA8 @ =0x00000B14
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L080B8D30
	b .L080B8A70
.L080B8D30:
	ldr r1, [sp, #0x38]
	add r0, sp, #0x34
	bl func_080073E0
	add r0, sp, #0x34
	movs r1, #2
	bl func_08007184
	ldr r1, [sp, #0x30]
	add r0, sp, #0x2c
	bl func_08007C28
	add r0, sp, #0x2c
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x28]
	add r0, sp, #0x24
	bl func_08007C28
	add r0, sp, #0x24
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x20]
	add r0, sp, #0x1c
	bl func_08007C28
	add r0, sp, #0x1c
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x18]
	add r0, sp, #0x14
	bl func_08007C28
	add r0, sp, #0x14
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #0x10]
	add r0, sp, #0xc
	bl func_08007C28
	add r0, sp, #0xc
	movs r1, #2
	bl func_080079E8
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B8DA0: .4byte 0x00000AEC
.L080B8DA4: .4byte 0x00000AA8
.L080B8DA8: .4byte 0x00000B14

	thumb_func_start func_080B8DAC
func_080B8DAC: @ 0x080B8DAC
	push {r4, lr}
	adds r4, r2, #0
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	cmp r3, #1
	bne .L080B8DC4
	ldr r2, .L080B8DE8 @ =0x00000B18
	adds r0, r0, r2
	ldr r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
.L080B8DC4:
	ldr r2, .L080B8DEC @ =gUnk_08107ACC
	lsls r1, r1, #1
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldr r0, .L080B8DF0 @ =gUnk_08107AFC
	adds r0, r4, r0
	ldrb r2, [r0]
	ldrh r0, [r1]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080B8DE8: .4byte 0x00000B18
.L080B8DEC: .4byte gUnk_08107ACC
.L080B8DF0: .4byte gUnk_08107AFC

	thumb_func_start func_080B8DF4
func_080B8DF4: @ 0x080B8DF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	movs r0, #0x14
	bl __builtin_new
	ldr r2, .L080B8EB0 @ =0x0000077C
	adds r1, r6, r2
	ldr r1, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	mov sl, r2
	movs r2, #0
	mov r3, sl
	bl func_0805E824
	adds r4, r0, #0
	mov r0, r8
	lsls r7, r0, #2
	adds r5, r7, r6
	ldr r1, .L080B8EB4 @ =0x000007A4
	mov sb, r1
	add r5, sb
	ldr r0, [r5]
	cmp r4, r0
	beq .L080B8E38
	bl __builtin_delete
.L080B8E38:
	str r4, [r5]
	movs r0, #0x1c
	bl __builtin_new
	adds r5, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r5]
	strh r0, [r5, #2]
	strh r0, [r5, #4]
	strh r0, [r5, #6]
	strh r0, [r5, #8]
	str r0, [r5, #0xc]
	strb r1, [r5, #0x10]
	strb r1, [r5, #0x11]
	str r0, [r5, #0x14]
	strb r1, [r5, #0x18]
	adds r4, r7, r6
	ldr r2, .L080B8EB8 @ =0x000007AC
	adds r4, r4, r2
	ldr r0, [r4]
	adds r7, r7, r6
	cmp r5, r0
	beq .L080B8E6C
	bl __builtin_delete
.L080B8E6C:
	str r5, [r4]
	mov r0, sb
	adds r4, r7, r0
	ldr r5, [r4]
	mov r1, r8
	lsls r2, r1, #6
	adds r0, r6, #0
	adds r0, #0x6c
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r6, #0
	adds r0, #0x74
	adds r0, r0, r2
	ldr r2, [r0]
	adds r0, r6, #0
	mov r3, r8
	bl func_080B8DAC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	bl func_0805E860
	ldr r0, [r4]
	mov r2, sl
	strh r2, [r0, #0x10]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B8EB0: .4byte 0x0000077C
.L080B8EB4: .4byte 0x000007A4
.L080B8EB8: .4byte 0x000007AC

	thumb_func_start func_080B8EBC
func_080B8EBC: @ 0x080B8EBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	mov sb, r0
	str r2, [sp, #0x60]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x5c]
	lsls r4, r1, #6
	adds r0, #0x78
	adds r6, r0, r4
	subs r0, #4
	adds r7, r0, r4
	ldr r0, [r6]
	ldr r5, [r7]
	cmp r0, r5
	bne .L080B8F00
	mov r0, sb
	adds r0, #0x70
	adds r0, r0, r4
	mov r2, sb
	adds r2, #0x6c
	adds r1, r2, r4
	ldr r3, [r0]
	ldr r0, [r1]
	str r2, [sp, #0x68]
	ldr r1, [sp, #0x5c]
	lsls r1, r1, #2
	mov sl, r1
	cmp r3, r0
	beq .L080B8F3A
.L080B8F00:
	str r5, [r6]
	mov r1, sb
	adds r1, #0x70
	adds r1, r1, r4
	mov r6, sb
	adds r6, #0x6c
	adds r2, r6, r4
	ldr r0, [r2]
	str r0, [r1]
	ldr r3, [sp, #0x5c]
	lsls r5, r3, #2
	mov r4, sb
	adds r0, r5, r4
	ldr r1, .L080B8FE0 @ =0x000007A4
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r1, [r2]
	ldr r2, [r7]
	mov r0, sb
	bl func_080B8DAC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	str r6, [sp, #0x68]
	mov sl, r5
.L080B8F3A:
	ldr r2, [sp, #0x5c]
	lsls r2, r2, #6
	str r2, [sp, #0x64]
	adds r7, r2, #0
	add r7, sb
	movs r3, #0x9d
	adds r3, r3, r7
	mov r8, r3
	ldrb r0, [r3]
	rsbs r4, r0, #0
	orrs r4, r0
	lsrs r4, r4, #0x1f
	mov r0, sl
	add r0, sb
	ldr r6, .L080B8FE0 @ =0x000007A4
	adds r0, r0, r6
	ldr r0, [r0]
	bl func_0805E8F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x19
	movs r1, #1
	ands r0, r1
	orrs r4, r0
	movs r5, #0
	mov r0, r8
	strb r4, [r0]
	mov r0, sl
	add r0, sb
	adds r0, r0, r6
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r2, sp, #0x20
	movs r0, #0
	strh r5, [r2]
	strh r5, [r2, #2]
	strh r5, [r2, #4]
	strh r5, [r2, #6]
	strh r5, [r2, #8]
	str r5, [r2, #0xc]
	strb r0, [r2, #0x10]
	strb r0, [r2, #0x11]
	str r5, [r2, #0x14]
	strb r0, [r2, #0x18]
	mov r0, sl
	add r0, sb
	ldr r1, .L080B8FE4 @ =0x000007AC
	adds r0, r0, r1
	adds r1, r2, #0
	ldr r0, [r0]
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0x8a
	ldrh r0, [r0]
	lsrs r0, r0, #8
	strh r0, [r2]
	ldr r5, [sp, #0x68]
	ldr r6, [sp, #0x64]
	adds r0, r5, r6
	ldr r0, [r0]
	str r6, [sp, #0x74]
	adds r6, r2, #0
	cmp r0, #5
	beq .L080B8FE8
	adds r0, r7, #0
	adds r0, #0x8c
	b .L080B8FEC
	.align 2, 0
.L080B8FE0: .4byte 0x000007A4
.L080B8FE4: .4byte 0x000007AC
.L080B8FE8:
	adds r0, r7, #0
	adds r0, #0x96
.L080B8FEC:
	ldrh r0, [r0]
	lsrs r0, r0, #8
	strh r0, [r6, #2]
	adds r4, r6, #0
	ldr r7, [sp, #0x60]
	add r7, sl
	mov r8, r7
	strh r7, [r4, #6]
	ldr r0, [sp, #0x5c]
	lsls r5, r0, #3
	mov r1, sb
	adds r0, r5, r1
	ldr r2, .L080B909C @ =0x0000072C
	adds r0, r0, r2
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	movs r3, #1
	mov sl, r3
	mov r7, sl
	strb r7, [r4, #0x18]
	ldr r7, [sp, #0x74]
	add r7, sb
	adds r0, r7, #0
	adds r0, #0x95
	ldrb r0, [r0]
	strh r0, [r4, #8]
	mov r0, sb
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp]
	adds r1, r0, #0
	mov r0, sp
	movs r2, #0
	str r5, [sp, #0x70]
	cmp r1, #0
	beq .L080B903C
	ldrh r2, [r0, #4]
.L080B903C:
	adds r0, r3, #0
	adds r3, r6, #0
	bl func_0805E99C
	adds r0, r7, #0
	adds r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B9050
	b .L080B92A4
.L080B9050:
	mov r0, sb
	bl func_08008910
	add r2, sp, #8
	ldr r1, [sp, #8]
	movs r3, #0
	cmp r1, #0
	beq .L080B9062
	ldrh r3, [r2, #4]
.L080B9062:
	adds r5, r0, #0
	mov r0, r8
	lsls r2, r0, #5
	ldr r4, .L080B90A0 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x3c
	bl func_08008F0C
	add r6, sp, #0x3c
	mov r8, r6
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080B90A4
	cmp r1, #0
	beq .L080B908E
	adds r0, r1, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B908E:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	mov r4, sp
	adds r4, #0x10
	str r4, [sp, #0x6c]
	b .L080B9170
	.align 2, 0
.L080B909C: .4byte 0x0000072C
.L080B90A0: .4byte 0x06010000
.L080B90A4:
	str r1, [sp, #0x78]
	mov r6, sl
	str r6, [sp, #0x50]
	ldr r0, [r5]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x4c]
	add r1, sp, #0x50
	add r0, sp, #0x4c
	cmp r4, #1
	bhs .L080B90BE
	adds r0, r1, #0
.L080B90BE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B90DC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080B90E0
	mov r0, sl
	bl func_080D3BC0
	b .L080B90E0
.L080B90DC:
	movs r0, #0
	mov sl, r0
.L080B90E0:
	adds r4, r0, #0
	str r4, [sp, #0x7c]
	ldr r2, [r5]
	adds r3, r4, #0
	mov r0, sp
	adds r0, #0x10
	str r0, [sp, #0x6c]
	ldr r1, [sp, #0x78]
	cmp r2, r1
	beq .L080B910E
.L080B90F4:
	cmp r3, #0
	beq .L080B9104
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B9104:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x78]
	cmp r2, r0
	bne .L080B90F4
.L080B910E:
	adds r4, r3, #0
	ldr r0, [sp, #0x50]
	cmp r0, #1
	bne .L080B912A
	cmp r4, #0
	beq .L080B9126
	adds r0, r4, #0
	mov r1, r8
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B9126:
	adds r4, #0x10
	b .L080B914C
.L080B912A:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080B914A
.L080B9132:
	cmp r2, #0
	beq .L080B9142
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B9142:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B9132
.L080B914A:
	adds r4, r2, #0
.L080B914C:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B915C
.L080B9156:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B9156
.L080B915C:
	cmp r0, #0
	beq .L080B9164
	bl free
.L080B9164:
	ldr r0, [sp, #0x7c]
	add r0, sl
	ldr r7, [sp, #0x7c]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080B9170:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x10]
	ldr r0, [sp, #0x70]
	add r0, sb
	ldr r1, .L080B91CC @ =0x0000072C
	adds r0, r0, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x10]
	movs r3, #0
	cmp r0, #0
	beq .L080B9196
	ldr r6, [sp, #0x6c]
	ldrh r3, [r6, #4]
.L080B9196:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r7, .L080B91D0 @ =0x05000200
	adds r2, r2, r7
	add r0, sp, #0x3c
	adds r1, r5, #0
	bl func_08008F0C
	add r0, sp, #0x3c
	mov r8, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B91D4
	cmp r1, #0
	beq .L080B91C2
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B91C2:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B929A
	.align 2, 0
.L080B91CC: .4byte 0x0000072C
.L080B91D0: .4byte 0x05000200
.L080B91D4:
	str r1, [sp, #0x7c]
	movs r0, #1
	str r0, [sp, #0x58]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x54]
	add r1, sp, #0x58
	add r0, sp, #0x54
	cmp r4, #1
	bhs .L080B91EE
	adds r0, r1, #0
.L080B91EE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B920C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080B9210
	mov r0, sl
	bl func_080D3BC0
	b .L080B9210
.L080B920C:
	movs r0, #0
	mov sl, r0
.L080B9210:
	adds r5, r0, #0
	str r5, [sp, #0x80]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x7c]
	cmp r2, r7
	beq .L080B9238
.L080B921E:
	cmp r3, #0
	beq .L080B922E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B922E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x7c]
	cmp r2, r0
	bne .L080B921E
.L080B9238:
	adds r5, r3, #0
	ldr r0, [sp, #0x58]
	cmp r0, #1
	bne .L080B9254
	cmp r5, #0
	beq .L080B9250
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B9250:
	adds r5, #0x10
	b .L080B9276
.L080B9254:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B9274
.L080B925C:
	cmp r2, #0
	beq .L080B926C
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B926C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B925C
.L080B9274:
	adds r5, r2, #0
.L080B9276:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B9286
.L080B9280:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B9280
.L080B9286:
	cmp r0, #0
	beq .L080B928E
	bl free
.L080B928E:
	ldr r0, [sp, #0x80]
	add r0, sl
	ldr r7, [sp, #0x80]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B929A:
	ldr r0, [sp, #0x74]
	add r0, sb
	adds r0, #0x9d
	movs r1, #0
	strb r1, [r0]
.L080B92A4:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080B92B4
func_080B92B4: @ 0x080B92B4
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #1
	bls .L080B92C4
	b .L080B93D0
.L080B92C4:
	adds r0, r4, #0
	adds r0, #0xca
	ldrh r1, [r0]
	adds r0, #2
	ldrh r2, [r0]
	subs r0, #0x18
	ldr r3, [r0]
	subs r0, #0x2a
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	str r0, [sp, #4]
	ldr r5, .L080B9314 @ =0x00000B5D
	adds r0, r4, r5
	ldrb r0, [r0]
	str r0, [sp, #8]
	adds r5, #0x15
	adds r0, r4, r5
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	bl func_080B96AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080B9340
	adds r0, r4, #0
	adds r0, #0xce
	ldrb r0, [r0]
	cmp r0, #0x50
	bls .L080B9320
	bl rand
	ldr r1, .L080B9318 @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #9
	ldr r2, .L080B931C @ =0x00000B6A
	b .L080B93E8
	.align 2, 0
.L080B9314: .4byte 0x00000B5D
.L080B9318: .4byte 0x0000FFFF
.L080B931C: .4byte 0x00000B6A
.L080B9320:
	bl rand
	ldr r1, .L080B9338 @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #9
	ldr r5, .L080B933C @ =0x00000B6B
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r1, r0
	bls .L080B9416
	b .L080B93F0
	.align 2, 0
.L080B9338: .4byte 0x0000FFFF
.L080B933C: .4byte 0x00000B6B
.L080B9340:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl func_080B9F64
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080B9390
	adds r0, r4, #0
	adds r0, #0xce
	ldrb r0, [r0]
	cmp r0, #0x50
	bls .L080B9370
	bl rand
	ldr r1, .L080B9368 @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #9
	ldr r2, .L080B936C @ =0x00000B6C
	b .L080B93E8
	.align 2, 0
.L080B9368: .4byte 0x0000FFFF
.L080B936C: .4byte 0x00000B6C
.L080B9370:
	bl rand
	ldr r1, .L080B9388 @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #9
	ldr r5, .L080B938C @ =0x00000B6D
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r1, r0
	bls .L080B9416
	b .L080B93F0
	.align 2, 0
.L080B9388: .4byte 0x0000FFFF
.L080B938C: .4byte 0x00000B6D
.L080B9390:
	adds r0, r4, #0
	adds r0, #0xce
	ldrb r0, [r0]
	cmp r0, #0x50
	bls .L080B93B8
	bl rand
	ldr r1, .L080B93B0 @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #9
	ldr r2, .L080B93B4 @ =0x00000B6E
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r1, r0
	bls .L080B9416
	b .L080B93F0
	.align 2, 0
.L080B93B0: .4byte 0x0000FFFF
.L080B93B4: .4byte 0x00000B6E
.L080B93B8:
	bl rand
	ldr r1, .L080B93C8 @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #9
	ldr r5, .L080B93CC @ =0x00000B6F
	adds r0, r4, r5
	b .L080B93EA
	.align 2, 0
.L080B93C8: .4byte 0x0000FFFF
.L080B93CC: .4byte 0x00000B6F
.L080B93D0:
	adds r0, r4, #0
	adds r0, #0xce
	ldrb r0, [r0]
	cmp r0, #0x50
	bls .L080B93FC
	bl rand
	ldr r1, .L080B93F8 @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #9
	movs r2, #0xb7
	lsls r2, r2, #4
.L080B93E8:
	adds r0, r4, r2
.L080B93EA:
	ldrb r0, [r0]
	cmp r1, r0
	bhs .L080B9416
.L080B93F0:
	adds r0, r4, #0
	bl func_080B9428
	b .L080B9416
	.align 2, 0
.L080B93F8: .4byte 0x0000FFFF
.L080B93FC:
	bl rand
	ldr r1, .L080B9420 @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #9
	ldr r5, .L080B9424 @ =0x00000B71
	adds r0, r4, r5
	ldrb r0, [r0]
	cmp r1, r0
	bls .L080B9416
	adds r0, r4, #0
	bl func_080B9428
.L080B9416:
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080B9420: .4byte 0x0000FFFF
.L080B9424: .4byte 0x00000B71

	thumb_func_start func_080B9428
func_080B9428: @ 0x080B9428
	push {r4, lr}
	adds r1, r0, #0
	adds r0, #0xd8
	movs r3, #0
	movs r4, #1
	strb r4, [r0]
	adds r2, r1, #0
	adds r2, #0xac
	ldr r0, [r2]
	cmp r0, #1
	bhi .L080B945A
	adds r0, r1, #0
	adds r0, #0xdc
	strb r3, [r0]
	subs r0, #0x14
	strb r3, [r0]
	adds r0, #0x11
	strb r4, [r0]
	movs r0, #5
	str r0, [r2]
	ldr r2, .L080B9460 @ =0x0000070C
	adds r0, r1, r2
	movs r1, #0xcc
	bl func_08008B6C
.L080B945A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080B9460: .4byte 0x0000070C

	thumb_func_start func_080B9464
func_080B9464: @ 0x080B9464
	push {lr}
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r1, r1, #0x18
	subs r1, #0x78
	lsrs r2, r2, #0x18
	subs r2, #0x4c
	adds r0, r1, #0
	muls r0, r1, r0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r0
	lsls r1, r1, #6
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r0, #0
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xe1
	lsls r0, r0, #0xe
	subs r2, r0, r1
	subs r1, r2, #1
	ldr r0, .L080B94A4 @ =0x0002C6FE
	cmp r1, r0
	bhi .L080B949E
	movs r2, #0
.L080B949E:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
.L080B94A4: .4byte 0x0002C6FE

	thumb_func_start func_080B94A8
func_080B94A8: @ 0x080B94A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	lsls r1, r1, #6
	mov sl, r1
	adds r6, r5, r1
	adds r1, r6, #0
	adds r1, #0x88
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r1, #1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r3, .L080B95B4 @ =0x00000B5C
	adds r1, r5, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrb r1, [r1]
	cmp r0, r1
	bhs .L080B95C0
	lsls r3, r2, #6
	adds r0, r5, #0
	adds r0, #0x6c
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #5
	beq .L080B94F8
	b .L080B9654
.L080B94F8:
	adds r4, r5, r3
	adds r7, r4, #0
	adds r7, #0x8a
	str r7, [sp, #0x14]
	ldrh r1, [r7]
	adds r0, r4, #0
	adds r0, #0x8c
	str r0, [sp, #0x18]
	ldrh r2, [r0]
	adds r7, r5, #0
	adds r7, #0x74
	str r7, [sp, #0x1c]
	adds r0, r7, r3
	ldr r3, [r0]
	movs r0, #0x8a
	adds r0, r0, r6
	mov sb, r0
	ldrh r0, [r0]
	str r0, [sp]
	adds r7, r6, #0
	adds r7, #0x8c
	str r7, [sp, #0x24]
	ldrh r0, [r7]
	str r0, [sp, #4]
	ldr r0, .L080B95B8 @ =0x00000B5D
	adds r0, r5, r0
	str r0, [sp, #0x20]
	ldrb r0, [r0]
	str r0, [sp, #8]
	ldr r7, .L080B95BC @ =0x00000B72
	adds r7, r7, r5
	mov r8, r7
	ldrh r0, [r7]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl func_080B96AC
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080B954A
	b .L080B9654
.L080B954A:
	mov r0, sb
	ldrh r1, [r0]
	ldr r3, [sp, #0x24]
	ldrh r2, [r3]
	ldr r0, [sp, #0x1c]
	add r0, sl
	ldr r3, [r0]
	ldr r7, [sp, #0x14]
	ldrh r0, [r7]
	str r0, [sp]
	ldr r7, [sp, #0x18]
	ldrh r0, [r7]
	str r0, [sp, #4]
	ldr r7, [sp, #0x20]
	ldrb r0, [r7]
	str r0, [sp, #8]
	mov r7, r8
	ldrh r0, [r7]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl func_080B96AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080B9654
	adds r0, r6, #0
	adds r0, #0x99
	movs r1, #0
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0x9a
	movs r0, #1
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x99
	movs r2, #0
	strb r2, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9c
	strb r2, [r0]
	adds r0, r6, #0
	adds r0, #0x90
	strb r2, [r0]
	adds r0, r4, #0
	adds r0, #0x90
	strb r2, [r0]
	adds r0, r5, #0
	bl func_080B9734
	b .L080B969C
	.align 2, 0
.L080B95B4: .4byte 0x00000B5C
.L080B95B8: .4byte 0x00000B5D
.L080B95BC: .4byte 0x00000B72
.L080B95C0:
	adds r0, r6, #0
	adds r0, #0x8a
	ldrh r1, [r0]
	adds r0, #2
	ldrh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x74
	add r0, sl
	ldr r3, [r0]
	mov r4, r8
	lsls r0, r4, #6
	adds r4, r5, r0
	adds r0, r4, #0
	adds r0, #0x8a
	ldrh r0, [r0]
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	str r0, [sp, #4]
	ldr r7, .L080B964C @ =0x00000B5D
	adds r0, r5, r7
	ldrb r0, [r0]
	str r0, [sp, #8]
	adds r7, #0x15
	adds r0, r5, r7
	ldrh r0, [r0]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl func_080B96AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080B9654
	adds r0, r5, #0
	ldr r1, [sp, #0x10]
	bl func_080B97FC
	mov r1, r8
	lsls r0, r1, #2
	adds r0, r0, r5
	ldr r2, .L080B9650 @ =0x0000091C
	adds r0, r0, r2
	ldr r0, [r0]
	movs r1, #2
	bl func_0805E860
	adds r0, r4, #0
	adds r0, #0xab
	movs r1, #1
	strb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x9b
	strb r1, [r0]
	subs r0, #2
	movs r3, #0
	strb r3, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x99
	strb r3, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #2
	strb r3, [r0]
	subs r0, #0xc
	strb r3, [r0]
	b .L080B969C
	.align 2, 0
.L080B964C: .4byte 0x00000B5D
.L080B9650: .4byte 0x0000091C
.L080B9654:
	ldr r4, [sp, #0x10]
	lsls r0, r4, #6
	adds r6, r5, r0
	adds r1, r6, #0
	adds r1, #0x89
	ldrb r0, [r1]
	cmp r0, #1
	bls .L080B9668
	movs r0, #0
	strb r0, [r1]
.L080B9668:
	adds r1, r6, #0
	adds r1, #0x88
	ldrb r0, [r1]
	cmp r0, #0x3b
	bls .L080B969C
	movs r4, #0
	strb r4, [r1]
	adds r0, r5, #0
	ldr r1, [sp, #0x10]
	bl func_080B9828
	adds r0, r6, #0
	adds r0, #0x9b
	strb r4, [r0]
	subs r0, #2
	strb r4, [r0]
	adds r1, r6, #0
	adds r1, #0x9a
	movs r0, #1
	strb r0, [r1]
	movs r7, #0xe2
	lsls r7, r7, #3
	adds r0, r5, r7
	movs r1, #0xb5
	bl func_08008B6C
.L080B969C:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080B96AC
func_080B96AC: @ 0x080B96AC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r3
	ldr r3, [sp, #0x18]
	ldr r4, [sp, #0x1c]
	ldr r5, [sp, #0x20]
	ldr r0, [sp, #0x24]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsls r4, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r7, r6, #0
	lsrs r3, r3, #0x18
	lsrs r1, r1, #0x18
	subs r3, r3, r1
	lsrs r2, r2, #0x18
	lsrs r4, r4, #0x18
	subs r2, r2, r4
	adds r0, r3, #0
	muls r0, r3, r0
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	adds r1, r5, #0
	muls r1, r5, r1
	cmp r0, r1
	bgt .L080B9726
	adds r0, r3, #0
	adds r1, r2, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r0, r8
	cmp r0, #1
	bne .L080B970A
	cmp r1, r6
	blo .L080B9722
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r6
	b .L080B971E
.L080B970A:
	mov r3, r8
	cmp r3, #3
	bne .L080B9712
	movs r3, #1
.L080B9712:
	adds r3, #1
	lsls r3, r3, #0xe
	adds r0, r7, r3
	cmp r1, r0
	bge .L080B9726
	subs r0, r3, r7
.L080B971E:
	cmp r1, r0
	ble .L080B9726
.L080B9722:
	movs r0, #1
	b .L080B9728
.L080B9726:
	movs r0, #0
.L080B9728:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080B9734
func_080B9734: @ 0x080B9734
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0x64
	bl rand
	ldr r1, .L080B9780 @ =0x0000FFFF
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r2, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x8e
	adds r1, r5, #0
	adds r1, #0xce
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls .L080B9784
	cmp r2, #0x59
	bhi .L080B97AC
	adds r4, r5, #0
	adds r4, #0x80
	movs r0, #3
	str r0, [r4]
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #2
	bl func_0805E860
	adds r1, r5, #0
	adds r1, #0xeb
	movs r0, #1
	strb r0, [r1]
	subs r1, #0x2b
	movs r0, #5
	b .L080B97CC
	.align 2, 0
.L080B9780: .4byte 0x0000FFFF
.L080B9784:
	cmp r2, #0x59
	bls .L080B97AC
	adds r4, r5, #0
	adds r4, #0x80
	movs r0, #3
	str r0, [r4]
	movs r1, #0x92
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #2
	bl func_0805E860
	adds r1, r5, #0
	adds r1, #0xeb
	movs r0, #1
	strb r0, [r1]
	subs r1, #0x2b
	movs r0, #5
	b .L080B97CC
.L080B97AC:
	adds r4, r5, #0
	adds r4, #0x80
	movs r0, #5
	str r0, [r4]
	ldr r1, .L080B97E4 @ =0x0000091C
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #2
	bl func_0805E860
	adds r1, r5, #0
	adds r1, #0xab
	movs r0, #1
	strb r0, [r1]
	adds r1, #0x15
	movs r0, #3
.L080B97CC:
	str r0, [r1]
	movs r6, #0
	movs r3, #1
	adds r1, r5, #0
	adds r1, #0x9b
	movs r2, #1
.L080B97D8:
	ldr r0, [r4]
	cmp r0, #5
	bne .L080B97E8
	strb r6, [r1]
	b .L080B97EA
	.align 2, 0
.L080B97E4: .4byte 0x0000091C
.L080B97E8:
	strb r3, [r1]
.L080B97EA:
	adds r1, #0x40
	adds r4, #0x40
	subs r2, #1
	cmp r2, #0
	bge .L080B97D8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080B97FC
func_080B97FC: @ 0x080B97FC
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	cmp r1, #0
	beq .L080B9814
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #4
	str r0, [r1]
	adds r1, #0x40
	movs r0, #2
	b .L080B9820
.L080B9814:
	adds r1, r2, #0
	adds r1, #0x80
	movs r0, #2
	str r0, [r1]
	adds r1, #0x40
	movs r0, #4
.L080B9820:
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080B9828
func_080B9828: @ 0x080B9828
	push {lr}
	lsls r1, r1, #0x18
	cmp r1, #0
	beq .L080B9836
	adds r1, r0, #0
	adds r1, #0xc0
	b .L080B983A
.L080B9836:
	adds r1, r0, #0
	adds r1, #0x80
.L080B983A:
	movs r0, #1
	str r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080B9844
func_080B9844: @ 0x080B9844
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r1, r1, r2
	lsrs r6, r1, #0x18
	cmp r6, #1
	bls .L080B985E
	movs r6, #0
.L080B985E:
	lsls r1, r0, #6
	adds r0, r4, r1
	adds r2, r0, #0
	adds r2, #0x88
	ldrb r3, [r2]
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r5, r1, #0
	cmp r0, #0x3a
	bhi .L080B98A0
	adds r0, r4, #0
	adds r0, #0x6c
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #5
	bne .L080B98A0
	adds r0, r3, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3b
	bhi .L080B988E
	b .L080B9AAE
.L080B988E:
	movs r0, #0
	strb r0, [r2]
	movs r6, #0xe2
	lsls r6, r6, #3
	adds r0, r4, r6
	movs r1, #0xb5
	bl func_08008B6C
	b .L080B9AAE
.L080B98A0:
	adds r1, r4, #0
	adds r1, #0x80
	adds r0, r1, r5
	ldr r0, [r0]
	adds r7, r1, #0
	cmp r0, #5
	bls .L080B98B0
	b .L080B9AA4
.L080B98B0:
	lsls r0, r0, #2
	ldr r1, .L080B98BC @ =.L080B98C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B98BC: .4byte .L080B98C0
.L080B98C0: @ jump table
	.4byte .L080B98D8 @ case 0
	.4byte .L080B98EA @ case 1
	.4byte .L080B990C @ case 2
	.4byte .L080B9930 @ case 3
	.4byte .L080B9970 @ case 4
	.4byte .L080B9A18 @ case 5
.L080B98D8:
	adds r1, r4, r5
	adds r2, r1, #0
	adds r2, #0x9c
	movs r3, #0
	movs r0, #1
	strb r0, [r2]
	adds r1, #0x9a
	strb r3, [r1]
	b .L080B9AA4
.L080B98EA:
	adds r3, r4, r5
	adds r2, r3, #0
	adds r2, #0x90
	ldr r0, .L080B9904 @ =0x00000B75
	adds r1, r4, r0
	ldrb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	bhs .L080B9908
	movs r1, #0xb6
	lsls r1, r1, #4
	b .L080B9A52
	.align 2, 0
.L080B9904: .4byte 0x00000B75
.L080B9908:
	movs r1, #0
	b .L080B9A78
.L080B990C:
	adds r3, r4, r5
	adds r2, r3, #0
	adds r2, #0x90
	ldrb r1, [r2]
	ldr r6, .L080B9924 @ =0x00000B74
	adds r0, r4, r6
	ldrb r0, [r0]
	subs r0, #0x3c
	cmp r1, r0
	bge .L080B992C
	ldr r1, .L080B9928 @ =0x00000B62
	b .L080B9A52
	.align 2, 0
.L080B9924: .4byte 0x00000B74
.L080B9928: .4byte 0x00000B62
.L080B992C:
	movs r1, #0
	b .L080B9A78
.L080B9930:
	adds r3, r4, r5
	adds r2, r3, #0
	adds r2, #0x90
	ldrb r1, [r2]
	cmp r1, #0x3b
	bhi .L080B9954
	adds r0, r4, #0
	adds r0, #0x6c
	adds r0, r0, r5
	movs r1, #5
	str r1, [r0]
	adds r1, r3, #0
	adds r1, #0x88
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x3c
	strb r0, [r2]
	b .L080B9AA4
.L080B9954:
	ldr r6, .L080B9964 @ =0x00000B76
	adds r0, r4, r6
	ldrb r0, [r0]
	cmp r1, r0
	bhs .L080B996C
	ldr r1, .L080B9968 @ =0x00000B64
	b .L080B9A52
	.align 2, 0
.L080B9964: .4byte 0x00000B76
.L080B9968: .4byte 0x00000B64
.L080B996C:
	movs r1, #0
	b .L080B9A78
.L080B9970:
	adds r3, r4, r5
	movs r0, #0x90
	adds r0, r0, r3
	mov r8, r0
	ldrb r1, [r0]
	cmp r1, #0x3b
	bhi .L080B99C0
	adds r6, r4, #0
	adds r6, #0x6c
	cmp r1, #0
	bne .L080B99B0
	adds r2, r6, r5
	ldr r0, [r2]
	cmp r0, #1
	bhi .L080B999A
	ldr r1, .L080B99B8 @ =0x00000B66
	adds r0, r4, r1
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x8f
	strb r0, [r1]
.L080B999A:
	ldr r0, [r2]
	cmp r0, #2
	beq .L080B99A4
	cmp r0, #4
	bne .L080B99B0
.L080B99A4:
	ldr r2, .L080B99BC @ =0x00000B64
	adds r0, r4, r2
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x8f
	strb r1, [r0]
.L080B99B0:
	adds r1, r6, r5
	movs r0, #3
	str r0, [r1]
	b .L080B9AA4
	.align 2, 0
.L080B99B8: .4byte 0x00000B66
.L080B99BC: .4byte 0x00000B64
.L080B99C0:
	ldr r0, .L080B99DC @ =0x00000B74
	ldrb r2, [r0, r4]
	cmp r1, r2
	bhs .L080B99E0
	cmp r1, #0x3c
	bne .L080B9A5C
	adds r0, r4, #0
	adds r0, #0x74
	adds r2, r0, r5
	lsls r1, r6, #6
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	b .L080B9A5C
	.align 2, 0
.L080B99DC: .4byte 0x00000B74
.L080B99E0:
	adds r0, r3, #0
	adds r0, #0xab
	movs r1, #0
	strb r1, [r0]
	mov r6, r8
	strb r1, [r6]
	adds r0, r7, r5
	str r1, [r0]
	adds r2, r3, #0
	adds r2, #0x9c
	movs r0, #1
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x9a
	strb r1, [r0]
	ldr r1, .L080B9A10 @ =0x00000B5E
	adds r0, r4, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x8f
	strb r0, [r1]
	ldr r2, .L080B9A14 @ =0x00000B59
	adds r0, r4, r2
	b .L080B9A9C
	.align 2, 0
.L080B9A10: .4byte 0x00000B5E
.L080B9A14: .4byte 0x00000B59
.L080B9A18:
	adds r3, r4, r5
	adds r2, r3, #0
	adds r2, #0x90
	ldrb r0, [r2]
	cmp r0, #0x1d
	bhi .L080B9A30
	adds r0, r4, #0
	adds r0, #0x6c
	adds r0, r0, r5
	movs r1, #3
	str r1, [r0]
	b .L080B9AA4
.L080B9A30:
	ldrb r1, [r2]
	ldr r0, .L080B9A68 @ =0x00000B77
	ldrb r0, [r0, r4]
	mov r8, r0
	subs r0, #0x3c
	cmp r1, r0
	bge .L080B9A70
	cmp r1, #0x1e
	bne .L080B9A50
	adds r0, r4, #0
	adds r0, #0x74
	adds r2, r0, r5
	lsls r1, r6, #6
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
.L080B9A50:
	ldr r1, .L080B9A6C @ =0x00000B68
.L080B9A52:
	adds r0, r4, r1
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0x8f
	strb r1, [r0]
.L080B9A5C:
	adds r0, r4, #0
	adds r0, #0x6c
	adds r0, r0, r5
	movs r1, #1
	str r1, [r0]
	b .L080B9AA4
	.align 2, 0
.L080B9A68: .4byte 0x00000B77
.L080B9A6C: .4byte 0x00000B68
.L080B9A70:
	adds r0, r3, #0
	adds r0, #0xab
	movs r1, #0
	strb r1, [r0]
.L080B9A78:
	strb r1, [r2]
	adds r0, r7, r5
	str r1, [r0]
	adds r2, r3, #0
	adds r2, #0x9c
	movs r0, #1
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x9a
	strb r1, [r0]
	ldr r2, .L080B9AB8 @ =0x00000B5E
	adds r0, r4, r2
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x8f
	strb r0, [r1]
	ldr r6, .L080B9ABC @ =0x00000B59
	adds r0, r4, r6
.L080B9A9C:
	ldrb r0, [r0]
	adds r0, #1
	adds r1, #2
	strb r0, [r1]
.L080B9AA4:
	adds r1, r4, r5
	adds r1, #0x90
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
.L080B9AAE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B9AB8: .4byte 0x00000B5E
.L080B9ABC: .4byte 0x00000B59

	thumb_func_start func_080B9AC0
func_080B9AC0: @ 0x080B9AC0
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
.L080B9AC6:
	lsls r1, r5, #6
	adds r0, r4, #0
	adds r0, #0x6c
	adds r0, r0, r1
	ldr r0, [r0]
	adds r2, r1, #0
	cmp r0, #5
	bhi .L080B9B42
	lsls r0, r0, #2
	ldr r1, .L080B9AE0 @ =.L080B9AE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B9AE0: .4byte .L080B9AE4
.L080B9AE4: @ jump table
	.4byte .L080B9B20 @ case 0
	.4byte .L080B9AFC @ case 1
	.4byte .L080B9B08 @ case 2
	.4byte .L080B9B2C @ case 3
	.4byte .L080B9B14 @ case 4
	.4byte .L080B9B38 @ case 5
.L080B9AFC:
	adds r0, r2, #0
	adds r0, #0x6c
	adds r0, r4, r0
	bl func_080BA1A4
	b .L080B9B42
.L080B9B08:
	adds r0, r2, #0
	adds r0, #0x6c
	adds r0, r4, r0
	bl func_080BA1F4
	b .L080B9B42
.L080B9B14:
	adds r0, r2, #0
	adds r0, #0x6c
	adds r0, r4, r0
	bl func_080BA1F8
	b .L080B9B42
.L080B9B20:
	adds r0, r2, #0
	adds r0, #0x6c
	adds r0, r4, r0
	bl func_080BA1FC
	b .L080B9B42
.L080B9B2C:
	adds r0, r2, #0
	adds r0, #0x6c
	adds r0, r4, r0
	bl func_080BA200
	b .L080B9B42
.L080B9B38:
	adds r0, r2, #0
	adds r0, #0x6c
	adds r0, r4, r0
	bl func_080BA204
.L080B9B42:
	adds r5, #1
	cmp r5, #1
	bls .L080B9AC6
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080B9B50
func_080B9B50: @ 0x080B9B50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	str r0, [sp, #0x10]
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r1, r1, r2
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	cmp r1, #1
	bls .L080B9B7C
	adds r0, r1, #0
	subs r0, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
.L080B9B7C:
	ldr r3, [sp, #0x10]
	lsls r4, r3, #6
	mov r5, r8
	adds r5, #0x74
	adds r6, r5, r4
	ldr r7, [r6]
	bl rand
	ldr r1, .L080B9BE8 @ =0x0000FFFF
	mov sb, r1
	ands r0, r1
	lsrs r0, r0, #8
	mov ip, r0
	mov r2, r8
	adds r3, r2, r4
	adds r2, r3, #0
	adds r2, #0x93
	ldrb r1, [r2]
	ldr r0, .L080B9BEC @ =0x00000B5B
	add r0, r8
	ldrb r0, [r0]
	subs r0, #1
	mov sl, r4
	cmp r1, r0
	bgt .L080B9BB0
	b .L080B9CDA
.L080B9BB0:
	movs r0, #0
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp ip, r0
	bgt .L080B9C32
	movs r4, #0x64
	bl rand
	mov r3, sb
	ands r0, r3
	muls r0, r4, r0
	lsrs r4, r0, #0x10
	mov r0, r8
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl func_080B9F64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq .L080B9C04
	cmp r0, #1
	bgt .L080B9BF0
	cmp r0, #0
	beq .L080B9BFA
	b .L080B9CDA
	.align 2, 0
.L080B9BE8: .4byte 0x0000FFFF
.L080B9BEC: .4byte 0x00000B5B
.L080B9BF0:
	cmp r0, #2
	beq .L080B9C12
	cmp r0, #3
	beq .L080B9C24
	b .L080B9CDA
.L080B9BFA:
	adds r0, r4, #0
	subs r0, #0x5a
	cmp r0, #4
	bls .L080B9CC8
	b .L080B9CCE
.L080B9C04:
	adds r0, r4, #0
	subs r0, #0x5f
	cmp r0, #4
	bls .L080B9CBA
	cmp r4, #0x59
	bgt .L080B9CDA
	b .L080B9CD6
.L080B9C12:
	adds r0, r4, #0
	subs r0, #0x5a
	cmp r0, #4
	bls .L080B9CC8
	adds r0, r4, #0
	subs r0, #0x5f
	cmp r0, #4
	bls .L080B9CD6
	b .L080B9CBA
.L080B9C24:
	adds r0, r4, #0
	subs r0, #0x5f
	cmp r0, #4
	bls .L080B9CBA
	cmp r4, #0x59
	bgt .L080B9CDA
	b .L080B9CC8
.L080B9C32:
	movs r4, #0x64
	bl rand
	mov r1, sb
	ands r0, r1
	muls r0, r4, r0
	lsrs r4, r0, #0x10
	mov r0, r8
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl func_080B9F64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	beq .L080B9C80
	cmp r0, #1
	bgt .L080B9C5C
	cmp r0, #0
	beq .L080B9C66
	b .L080B9CDA
.L080B9C5C:
	cmp r0, #2
	beq .L080B9C9A
	cmp r0, #3
	beq .L080B9CB2
	b .L080B9CDA
.L080B9C66:
	adds r0, r4, #0
	subs r0, #0x4b
	cmp r0, #4
	bls .L080B9CBA
	adds r0, r4, #0
	subs r0, #0x50
	cmp r0, #9
	bls .L080B9CC8
	adds r0, r4, #0
	subs r0, #0x5a
	cmp r0, #9
	bhi .L080B9CDA
	b .L080B9CD6
.L080B9C80:
	adds r0, r4, #0
	subs r0, #0xa
	cmp r0, #9
	bls .L080B9CBA
	adds r0, r4, #0
	subs r0, #0x14
	cmp r0, #4
	bls .L080B9CC8
	adds r0, r4, #0
	subs r0, #0x19
	cmp r0, #0x4a
	bhi .L080B9CDA
	b .L080B9CD6
.L080B9C9A:
	subs r0, r4, #5
	cmp r0, #0x4a
	bls .L080B9CBA
	adds r0, r4, #0
	subs r0, #0x50
	cmp r0, #9
	bls .L080B9CC8
	adds r0, r4, #0
	subs r0, #0x5a
	cmp r0, #9
	bhi .L080B9CDA
	b .L080B9CD6
.L080B9CB2:
	adds r0, r4, #0
	subs r0, #0xa
	cmp r0, #9
	bhi .L080B9CC0
.L080B9CBA:
	ldr r0, [r6]
	adds r7, r0, #2
	b .L080B9CDA
.L080B9CC0:
	adds r0, r4, #0
	subs r0, #0x14
	cmp r0, #0x4a
	bhi .L080B9CCE
.L080B9CC8:
	ldr r0, [r6]
	adds r7, r0, #3
	b .L080B9CDA
.L080B9CCE:
	adds r0, r4, #0
	subs r0, #0x5f
	cmp r0, #4
	bhi .L080B9CDA
.L080B9CD6:
	ldr r0, [r6]
	adds r7, r0, #1
.L080B9CDA:
	cmp r7, #3
	ble .L080B9CE0
	subs r7, #4
.L080B9CE0:
	mov r2, sl
	adds r3, r5, r2
	str r7, [r3]
	mov r6, r8
	add r6, sl
	adds r1, r6, #0
	adds r1, #0x94
	ldrb r0, [r1]
	cmp r0, #1
	bhi .L080B9CF6
	b .L080B9DF6
.L080B9CF6:
	movs r7, #0
	strb r7, [r1]
	adds r0, r6, #0
	adds r0, #0x8a
	ldrh r1, [r0]
	adds r0, #2
	ldrh r2, [r0]
	ldr r3, [r3]
	ldr r4, [sp, #0x14]
	lsls r0, r4, #6
	add r0, r8
	adds r4, r0, #0
	adds r4, #0x8a
	ldrh r4, [r4]
	str r4, [sp]
	adds r0, #0x8c
	ldrh r0, [r0]
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [sp, #0xc]
	mov r0, r8
	bl func_080B96AC
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080B9DB2
	adds r0, r6, #0
	adds r0, #0x8e
	ldrb r0, [r0]
	cmp r0, #0xef
	bls .L080B9DA8
	bl rand
	ldr r1, .L080B9D70 @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #9
	cmp r1, #0x78
	bls .L080B9DA8
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne .L080B9D74
	mov r1, r8
	ldr r0, [r1, #0x6c]
	cmp r0, #1
	bhi .L080B9DF6
	mov r0, r8
	adds r0, #0x9c
	strb r7, [r0]
	subs r0, #0x14
	strb r7, [r0]
	adds r1, #0x99
	movs r0, #1
	strb r0, [r1]
	movs r0, #5
	mov r2, r8
	str r0, [r2, #0x6c]
	b .L080B9D96
	.align 2, 0
.L080B9D70: .4byte 0x0000FFFF
.L080B9D74:
	ldr r3, [sp, #0x10]
	cmp r3, #1
	bne .L080B9DF6
	mov r1, r8
	adds r1, #0xac
	ldr r0, [r1]
	cmp r0, #1
	bhi .L080B9DF6
	mov r0, r8
	adds r0, #0xdc
	strb r7, [r0]
	subs r0, #0x14
	strb r7, [r0]
	adds r0, #0x11
	strb r3, [r0]
	movs r0, #5
	str r0, [r1]
.L080B9D96:
	ldr r0, .L080B9DA4 @ =0x0000070C
	add r0, r8
	movs r1, #0xcc
	bl func_08008B6C
	b .L080B9DF6
	.align 2, 0
.L080B9DA4: .4byte 0x0000070C
.L080B9DA8:
	mov r0, r8
	adds r0, #0x6c
	add r0, sl
	str r7, [r0]
	b .L080B9DF6
.L080B9DB2:
	mov r0, r8
	adds r0, #0x84
	add r0, sl
	ldr r4, [r0]
	cmp r4, #0
	bne .L080B9DEC
	bl rand
	ldr r5, .L080B9DE8 @ =0x0000FFFF
	ands r0, r5
	lsrs r0, r0, #9
	adds r1, r6, #0
	adds r1, #0x8e
	ldrb r1, [r1]
	cmp r0, r1
	blo .L080B9DDE
	bl rand
	ands r0, r5
	lsrs r0, r0, #9
	cmp r0, #0x6e
	bhi .L080B9DEC
.L080B9DDE:
	mov r0, r8
	adds r0, #0x6c
	add r0, sl
	str r4, [r0]
	b .L080B9DF6
	.align 2, 0
.L080B9DE8: .4byte 0x0000FFFF
.L080B9DEC:
	mov r0, r8
	adds r0, #0x6c
	add r0, sl
	movs r1, #1
	str r1, [r0]
.L080B9DF6:
	mov r1, r8
	add r1, sl
	adds r2, r1, #0
	adds r2, #0x94
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	adds r1, #0x93
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080B9E1C
func_080B9E1C: @ 0x080B9E1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r0, r1, #0x18
	str r0, [sp]
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r1, r1, r2
	lsrs r1, r1, #0x18
	mov r8, r1
	cmp r1, #1
	bls .L080B9E42
	movs r0, #0
	mov r8, r0
.L080B9E42:
	ldr r1, [sp]
	lsls r4, r1, #6
	mov r5, sb
	adds r5, #0x74
	adds r0, r5, r4
	ldr r6, [r0]
	bl rand
	ldr r2, .L080B9E90 @ =0x0000FFFF
	mov sl, r2
	ands r0, r2
	lsrs r0, r0, #8
	mov r2, sb
	adds r1, r2, r4
	adds r1, #0x8e
	adds r7, r4, #0
	ldrb r1, [r1]
	cmp r0, r1
	bhs .L080B9EE6
	bl rand
	mov r1, sl
	ands r0, r1
	lsrs r4, r0, #0xf
	mov r0, sb
	ldr r1, [sp]
	mov r2, r8
	bl func_080B9F64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi .L080B9EE6
	lsls r0, r0, #2
	ldr r1, .L080B9E94 @ =.L080B9E98
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B9E90: .4byte 0x0000FFFF
.L080B9E94: .4byte .L080B9E98
.L080B9E98: @ jump table
	.4byte .L080B9EB8 @ case 0
	.4byte .L080B9EC8 @ case 1
	.4byte .L080B9ED4 @ case 2
	.4byte .L080B9EE0 @ case 3
	.4byte .L080B9EBE @ case 4
	.4byte .L080B9EC4 @ case 5
	.4byte .L080B9ED0 @ case 6
	.4byte .L080B9EDC @ case 7
.L080B9EB8:
	adds r0, r5, r7
	ldr r6, [r0]
	b .L080B9EE6
.L080B9EBE:
	cmp r4, #0
	ble .L080B9EE6
	b .L080B9EC8
.L080B9EC4:
	cmp r4, #0
	ble .L080B9ED4
.L080B9EC8:
	adds r0, r5, r7
	ldr r0, [r0]
	adds r6, r0, #1
	b .L080B9EE6
.L080B9ED0:
	cmp r4, #0
	bgt .L080B9EE0
.L080B9ED4:
	adds r0, r5, r7
	ldr r0, [r0]
	adds r6, r0, #2
	b .L080B9EE6
.L080B9EDC:
	cmp r4, #0
	ble .L080B9EE6
.L080B9EE0:
	adds r0, r5, r7
	ldr r0, [r0]
	adds r6, r0, #3
.L080B9EE6:
	cmp r6, #3
	ble .L080B9EEC
	subs r6, #4
.L080B9EEC:
	adds r0, r5, r7
	str r6, [r0]
	mov r0, sb
	adds r0, #0x6c
	adds r0, r0, r7
	movs r1, #0
	str r1, [r0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080B9F0C
func_080B9F0C: @ 0x080B9F0C
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x12
	adds r0, #0x6c
	adds r0, r0, r5
	movs r1, #2
	str r1, [r0]
	bl rand
	ldr r1, .L080B9F34 @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #0xe
	adds r4, #0x74
	adds r4, r4, r5
	str r1, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080B9F34: .4byte 0x0000FFFF

	thumb_func_start func_080B9F38
func_080B9F38: @ 0x080B9F38
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #0x18
	lsrs r5, r5, #0x12
	adds r0, #0x6c
	adds r0, r0, r5
	movs r1, #4
	str r1, [r0]
	bl rand
	ldr r1, .L080B9F60 @ =0x0000FFFF
	ands r1, r0
	lsrs r1, r1, #0xe
	adds r4, #0x74
	adds r4, r4, r5
	str r1, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080B9F60: .4byte 0x0000FFFF

	thumb_func_start func_080B9F64
func_080B9F64: @ 0x080B9F64
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	movs r6, #0
	lsrs r2, r2, #0x12
	adds r2, r5, r2
	adds r0, r2, #0
	adds r0, #0x8a
	ldrh r3, [r0]
	lsls r0, r4, #6
	adds r0, r5, r0
	adds r1, r0, #0
	adds r1, #0x8a
	ldrh r1, [r1]
	subs r3, r3, r1
	adds r0, #0x8c
	ldrh r1, [r0]
	adds r2, #0x8c
	ldrh r0, [r2]
	subs r1, r1, r0
	cmp r3, #0
	ble .L080B9F9C
	cmp r1, #0
	ble .L080B9F9C
	cmp r1, r3
	bgt .L080B9FB0
.L080B9F9C:
	cmp r3, #0
	bge .L080B9FA8
	cmp r1, #0
	ble .L080B9FBE
	cmn r1, r3
	bgt .L080B9FB0
.L080B9FA8:
	cmp r1, #0
	ble .L080B9FBE
	cmp r3, #0
	bne .L080B9FBE
.L080B9FB0:
	lsls r1, r4, #6
	adds r0, r5, #0
	adds r0, #0x74
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #4
	b .L080BA09A
.L080B9FBE:
	cmp r3, #0
	ble .L080B9FEC
	cmp r1, #0
	ble .L080B9FCA
	cmp r3, r1
	bgt .L080B9FD6
.L080B9FCA:
	cmp r1, #0
	bge .L080B9FD2
	cmn r3, r1
	bgt .L080B9FD6
.L080B9FD2:
	cmp r1, #0
	bne .L080B9FE4
.L080B9FD6:
	lsls r1, r4, #6
	adds r0, r5, #0
	adds r0, #0x74
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #5
	b .L080BA09A
.L080B9FE4:
	cmp r1, #0
	bge .L080B9FEC
	cmn r3, r1
	blt .L080BA000
.L080B9FEC:
	cmp r3, #0
	bge .L080B9FF8
	cmp r1, #0
	bge .L080BA00E
	cmp r3, r1
	bgt .L080BA000
.L080B9FF8:
	cmp r1, #0
	bge .L080BA00E
	cmp r3, #0
	bne .L080BA00E
.L080BA000:
	lsls r1, r4, #6
	adds r0, r5, #0
	adds r0, #0x74
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #6
	b .L080BA09A
.L080BA00E:
	cmp r3, #0
	bge .L080BA034
	cmp r1, #0
	bge .L080BA01A
	cmp r3, r1
	blt .L080BA026
.L080BA01A:
	cmp r1, #0
	ble .L080BA022
	cmn r3, r1
	blt .L080BA026
.L080BA022:
	cmp r1, #0
	bne .L080BA034
.L080BA026:
	lsls r1, r4, #6
	adds r0, r5, #0
	adds r0, #0x74
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #7
	b .L080BA09A
.L080BA034:
	cmp r3, #0
	ble .L080BA068
	cmp r1, #0
	ble .L080BA04E
	cmp r3, r1
	bne .L080BA04E
	lsls r1, r4, #6
	adds r0, r5, #0
	adds r0, #0x74
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xc
	b .L080BA09A
.L080BA04E:
	cmp r3, #0
	ble .L080BA068
	cmp r1, #0
	bge .L080BA068
	cmn r3, r1
	bne .L080BA068
	lsls r1, r4, #6
	adds r0, r5, #0
	adds r0, #0x74
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xd
	b .L080BA09A
.L080BA068:
	cmp r3, #0
	bge .L080BA0A0
	cmp r1, #0
	bge .L080BA082
	cmp r3, r1
	bne .L080BA082
	lsls r1, r4, #6
	adds r0, r5, #0
	adds r0, #0x74
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xe
	b .L080BA09A
.L080BA082:
	cmp r3, #0
	bge .L080BA0A0
	cmp r1, #0
	ble .L080BA0A0
	cmn r3, r1
	bne .L080BA0A0
	lsls r1, r4, #6
	adds r0, r5, #0
	adds r0, #0x74
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xf
.L080BA09A:
	subs r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
.L080BA0A0:
	subs r0, r6, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi .L080BA0AE
	adds r6, r0, #0
	b .L080BA0BA
.L080BA0AE:
	cmp r6, #0xb
	bls .L080BA0BA
	adds r0, r6, #0
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
.L080BA0BA:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080BA0C4
func_080BA0C4: @ 0x080BA0C4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x64
	bl rand
	ldr r1, .L080BA0F8 @ =0x0000FFFF
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r1, r0, #0x10
	adds r0, r5, #0
	adds r0, #0x22
	ldrb r0, [r0]
	adds r2, r0, #0
	cmp r2, #0x50
	bhi .L080BA120
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080BA10C
	cmp r1, #0x1d
	bhi .L080BA0FC
	movs r0, #0
	b .L080BA19C
	.align 2, 0
.L080BA0F8: .4byte 0x0000FFFF
.L080BA0FC:
	cmp r1, #0x2c
	bhi .L080BA104
	movs r0, #1
	b .L080BA19C
.L080BA104:
	cmp r1, #0x3b
	bhi .L080BA19A
	movs r0, #2
	b .L080BA19C
.L080BA10C:
	cmp r1, #0x22
	bls .L080BA19C
	cmp r1, #0x36
	bhi .L080BA118
	movs r0, #1
	b .L080BA19C
.L080BA118:
	cmp r1, #0x4a
	bhi .L080BA19A
	movs r0, #2
	b .L080BA19C
.L080BA120:
	subs r0, #0x51
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x9f
	bhi .L080BA160
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080BA14C
	cmp r1, #0x22
	bhi .L080BA13C
	movs r0, #0
	b .L080BA19C
.L080BA13C:
	cmp r1, #0x2c
	bhi .L080BA144
	movs r0, #1
	b .L080BA19C
.L080BA144:
	cmp r1, #0x36
	bhi .L080BA19A
	movs r0, #2
	b .L080BA19C
.L080BA14C:
	cmp r1, #0x27
	bls .L080BA19C
	cmp r1, #0x36
	bhi .L080BA158
	movs r0, #1
	b .L080BA19C
.L080BA158:
	cmp r1, #0x45
	bhi .L080BA19A
	movs r0, #2
	b .L080BA19C
.L080BA160:
	cmp r2, #0xf0
	bls .L080BA19E
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080BA186
	cmp r1, #0x27
	bhi .L080BA176
	movs r0, #0
	b .L080BA19C
.L080BA176:
	cmp r1, #0x2c
	bhi .L080BA17E
	movs r0, #1
	b .L080BA19C
.L080BA17E:
	cmp r1, #0x31
	bhi .L080BA19A
	movs r0, #2
	b .L080BA19C
.L080BA186:
	cmp r1, #0x2c
	bls .L080BA19C
	cmp r1, #0x36
	bhi .L080BA192
	movs r0, #1
	b .L080BA19C
.L080BA192:
	cmp r1, #0x40
	bhi .L080BA19A
	movs r0, #2
	b .L080BA19C
.L080BA19A:
	movs r0, #3
.L080BA19C:
	str r0, [r5, #0x10]
.L080BA19E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080BA1A4
func_080BA1A4: @ 0x080BA1A4
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	cmp r0, #0
	bne .L080BA1BC
	adds r0, r2, #0
	adds r0, #0x23
	ldrb r1, [r0]
	ldrh r0, [r2, #0x20]
	subs r0, r0, r1
	strh r0, [r2, #0x20]
	b .L080BA1EE
.L080BA1BC:
	cmp r0, #1
	bne .L080BA1CC
	adds r1, r2, #0
	adds r1, #0x23
	ldrh r0, [r2, #0x1e]
	ldrb r1, [r1]
	adds r0, r0, r1
	b .L080BA1EC
.L080BA1CC:
	cmp r0, #2
	bne .L080BA1DE
	adds r1, r2, #0
	adds r1, #0x23
	ldrh r0, [r2, #0x20]
	ldrb r1, [r1]
	adds r0, r0, r1
	strh r0, [r2, #0x20]
	b .L080BA1EE
.L080BA1DE:
	cmp r0, #3
	bne .L080BA1EE
	adds r0, r2, #0
	adds r0, #0x23
	ldrb r1, [r0]
	ldrh r0, [r2, #0x1e]
	subs r0, r0, r1
.L080BA1EC:
	strh r0, [r2, #0x1e]
.L080BA1EE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080BA1F4
func_080BA1F4: @ 0x080BA1F4
	bx lr
	.align 2, 0

	thumb_func_start func_080BA1F8
func_080BA1F8: @ 0x080BA1F8
	bx lr
	.align 2, 0

	thumb_func_start func_080BA1FC
func_080BA1FC: @ 0x080BA1FC
	bx lr
	.align 2, 0

	thumb_func_start func_080BA200
func_080BA200: @ 0x080BA200
	bx lr
	.align 2, 0

	thumb_func_start func_080BA204
func_080BA204: @ 0x080BA204
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x1c]
	cmp r0, #1
	bls .L080BA27C
	cmp r0, #2
	beq .L080BA27C
	cmp r0, #9
	bne .L080BA224
	ldr r2, .L080BA220 @ =0xFFFFFCB0
	adds r0, r2, #0
	ldrh r2, [r1, #0x20]
	adds r0, r0, r2
	b .L080BA27E
	.align 2, 0
.L080BA220: .4byte 0xFFFFFCB0
.L080BA224:
	cmp r0, #0x13
	bne .L080BA238
	ldr r2, .L080BA234 @ =0xFFFFFA00
	adds r0, r2, #0
	ldrh r2, [r1, #0x20]
	adds r0, r0, r2
	b .L080BA27E
	.align 2, 0
.L080BA234: .4byte 0xFFFFFA00
.L080BA238:
	cmp r0, #0x1d
	bne .L080BA24C
	ldr r2, .L080BA248 @ =0xFFFFF800
	adds r0, r2, #0
	ldrh r2, [r1, #0x20]
	adds r0, r0, r2
	b .L080BA27E
	.align 2, 0
.L080BA248: .4byte 0xFFFFF800
.L080BA24C:
	cmp r0, #0x27
	bne .L080BA260
	ldr r2, .L080BA25C @ =0xFFFFFA00
	adds r0, r2, #0
	ldrh r2, [r1, #0x20]
	adds r0, r0, r2
	b .L080BA27E
	.align 2, 0
.L080BA25C: .4byte 0xFFFFFA00
.L080BA260:
	cmp r0, #0x31
	bne .L080BA274
	ldr r2, .L080BA270 @ =0xFFFFFCB0
	adds r0, r2, #0
	ldrh r2, [r1, #0x20]
	adds r0, r0, r2
	b .L080BA27E
	.align 2, 0
.L080BA270: .4byte 0xFFFFFCB0
.L080BA274:
	cmp r0, #0x39
	beq .L080BA27C
	cmp r0, #0x39
	bls .L080BA280
.L080BA27C:
	ldrh r0, [r1, #0x20]
.L080BA27E:
	strh r0, [r1, #0x2a]
.L080BA280:
	pop {r0}
	bx r0

	thumb_func_start func_080BA284
func_080BA284: @ 0x080BA284
	push {r4, lr}
	adds r1, r0, #0
	adds r1, #0x92
	movs r3, #0xb4
	lsls r3, r3, #4
	adds r2, r0, r3
	movs r4, #1
.L080BA292:
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq .L080BA2B4
	movs r0, #2
	str r0, [r2]
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bls .L080BA2B4
	movs r0, #1
	str r0, [r2]
	strb r3, [r1, #6]
	strb r3, [r1]
.L080BA2B4:
	adds r1, #0x40
	adds r2, #4
	subs r4, #1
	cmp r4, #0
	bge .L080BA292
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080BA2C4
func_080BA2C4: @ 0x080BA2C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	mov sl, r1
	movs r0, #0xe3
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r0, [r4]
	bl func_08050D34
	adds r6, r0, #0
	ldr r4, [r4]
	str r4, [sp, #0xc]
	adds r0, r7, #0
	bl func_080088DC
	mov r8, r0
	adds r0, r7, #0
	bl func_08008920
	mov sb, r0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	movs r2, #0xe1
	lsls r2, r2, #3
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0xc]
	mov r1, r8
	mov r2, sb
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L080BA32A
	b .L080BA54A
.L080BA32A:
	lsls r0, r0, #2
	ldr r1, .L080BA334 @ =.L080BA338
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080BA334: .4byte .L080BA338
.L080BA338: @ jump table
	.4byte .L080BA354 @ case 0
	.4byte .L080BA4D2 @ case 1
	.4byte .L080BA4D2 @ case 2
	.4byte .L080BA39C @ case 3
	.4byte .L080BA4D2 @ case 4
	.4byte .L080BA4D2 @ case 5
	.4byte .L080BA4D2 @ case 6
.L080BA354:
	ldr r1, .L080BA368 @ =0x00000B34
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080BA370
	ldr r2, .L080BA36C @ =0x00000B14
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	b .L080BA54A
	.align 2, 0
.L080BA368: .4byte 0x00000B34
.L080BA36C: .4byte 0x00000B14
.L080BA370:
	ldr r1, .L080BA394 @ =0x00000B3C
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #3
	bne .L080BA386
	ldr r2, .L080BA398 @ =0x00000B3B
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #0xb3
	bhi .L080BA386
	b .L080BA54A
.L080BA386:
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	b .L080BA54A
	.align 2, 0
.L080BA394: .4byte 0x00000B3C
.L080BA398: .4byte 0x00000B3B
.L080BA39C:
	cmp r6, #5
	bgt .L080BA3AA
	cmp r6, #4
	bge .L080BA410
	cmp r6, #1
	beq .L080BA3BC
	b .L080BA3AE
.L080BA3AA:
	cmp r6, #6
	beq .L080BA450
.L080BA3AE:
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_08050D74
	b .L080BA4D2
.L080BA3BC:
	ldr r1, .L080BA40C @ =0x00000B3C
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #4
	bne .L080BA3DC
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	ble .L080BA3DC
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_08050DD8
.L080BA3DC:
	ldr r1, .L080BA40C @ =0x00000B3C
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #5
	bne .L080BA3FC
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bne .L080BA3FC
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_08050DD8
.L080BA3FC:
	ldr r1, .L080BA40C @ =0x00000B3C
	adds r0, r7, r1
	ldrb r1, [r0]
	adds r0, r7, #0
	bl func_080BA574
	b .L080BA4D2
	.align 2, 0
.L080BA40C: .4byte 0x00000B3C
.L080BA410:
	ldr r2, .L080BA440 @ =0x00000B3C
	adds r1, r7, r2
	ldrb r0, [r1]
	adds r0, #1
	movs r4, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bne .L080BA4D2
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r1, .L080BA444 @ =gUnk_08107B00
	ldr r2, .L080BA448 @ =gUnk_08107B14
	ldr r3, .L080BA44C @ =gUnk_08107B1C
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	b .L080BA4D2
	.align 2, 0
.L080BA440: .4byte 0x00000B3C
.L080BA444: .4byte gUnk_08107B00
.L080BA448: .4byte gUnk_08107B14
.L080BA44C: .4byte gUnk_08107B1C
.L080BA450:
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r0, [r4]
	bl func_08050DF0
	cmp r0, #1
	beq .L080BA466
	cmp r0, #2
	beq .L080BA4C4
	b .L080BA4D2
.L080BA466:
	ldr r1, .L080BA47C @ =0x00000B18
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #1
	beq .L080BA494
	cmp r0, #1
	bgt .L080BA480
	cmp r0, #0
	beq .L080BA486
	b .L080BA4AC
	.align 2, 0
.L080BA47C: .4byte 0x00000B18
.L080BA480:
	cmp r0, #2
	beq .L080BA4A4
	b .L080BA4AC
.L080BA486:
	ldr r0, [r4]
	ldr r1, .L080BA490 @ =gUnk_08107A68
	bl func_08050D8C
	b .L080BA4AC
	.align 2, 0
.L080BA490: .4byte gUnk_08107A68
.L080BA494:
	ldr r0, [r4]
	ldr r1, .L080BA4A0 @ =gUnk_08107A80
	bl func_08050D8C
	b .L080BA4AC
	.align 2, 0
.L080BA4A0: .4byte gUnk_08107A80
.L080BA4A4:
	ldr r0, [r4]
	ldr r1, .L080BA4C0 @ =gUnk_08107A9C
	bl func_08050D8C
.L080BA4AC:
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	bl func_08050DD8
	movs r0, #0
	mov sl, r0
	b .L080BA4D2
	.align 2, 0
.L080BA4C0: .4byte gUnk_08107A9C
.L080BA4C4:
	ldr r1, .L080BA564 @ =0x00000B3C
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	ldr r2, .L080BA568 @ =0x00000B33
	adds r0, r7, r2
	strb r1, [r0]
.L080BA4D2:
	mov r0, sl
	cmp r0, #0x77
	bgt .L080BA4DC
	movs r1, #1
	add sl, r1
.L080BA4DC:
	mov r2, sl
	cmp r2, #0x78
	bne .L080BA50A
	movs r0, #0xb5
	lsls r0, r0, #4
	adds r1, r7, r0
	movs r0, #1
	str r0, [r1]
	movs r1, #0x7a
	mov sl, r1
	movs r2, #0xe3
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r0, [r4]
	bl func_08050DE4
	ldr r0, [r4]
	ldr r1, .L080BA56C @ =gUnk_08107AB4
	bl func_08050D8C
	ldr r0, [r4]
	bl func_08050DD8
.L080BA50A:
	mov r0, sl
	subs r0, #0x7a
	cmp r0, #0x59
	bhi .L080BA516
	movs r0, #1
	add sl, r0
.L080BA516:
	mov r1, sl
	cmp r1, #0xd4
	bne .L080BA54A
	movs r2, #0xb5
	lsls r2, r2, #4
	adds r0, r7, r2
	movs r5, #0
	str r5, [r0]
	movs r0, #0x79
	mov sl, r0
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r4, r7, r1
	ldr r0, [r4]
	bl func_08050DE4
	ldr r0, [r4]
	bl func_08050D74
	ldr r2, .L080BA568 @ =0x00000B33
	adds r0, r7, r2
	strb r5, [r0]
	ldr r0, .L080BA570 @ =0x00000B34
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
.L080BA54A:
	adds r0, r7, #0
	bl func_080B5318
	mov r0, sl
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080BA564: .4byte 0x00000B3C
.L080BA568: .4byte 0x00000B33
.L080BA56C: .4byte gUnk_08107AB4
.L080BA570: .4byte 0x00000B34

	thumb_func_start func_080BA574
func_080BA574: @ 0x080BA574
	push {lr}
	adds r2, r0, #0
	subs r0, r1, #1
	cmp r0, #4
	bhi .L080BA5FE
	lsls r0, r0, #2
	ldr r1, .L080BA588 @ =.L080BA58C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080BA588: .4byte .L080BA58C
.L080BA58C: @ jump table
	.4byte .L080BA5A0 @ case 0
	.4byte .L080BA5B4 @ case 1
	.4byte .L080BA5C8 @ case 2
	.4byte .L080BA5DC @ case 3
	.4byte .L080BA5F0 @ case 4
.L080BA5A0:
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, .L080BA5B0 @ =gUnk_08107B28
	bl func_08050D8C
	b .L080BA5FE
	.align 2, 0
.L080BA5B0: .4byte gUnk_08107B28
.L080BA5B4:
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, .L080BA5C4 @ =gUnk_08107B5C
	bl func_08050D8C
	b .L080BA5FE
	.align 2, 0
.L080BA5C4: .4byte gUnk_08107B5C
.L080BA5C8:
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, .L080BA5D8 @ =gUnk_08107C18
	bl func_08050D8C
	b .L080BA5FE
	.align 2, 0
.L080BA5D8: .4byte gUnk_08107C18
.L080BA5DC:
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, .L080BA5EC @ =gUnk_08107CB0
	bl func_08050D8C
	b .L080BA5FE
	.align 2, 0
.L080BA5EC: .4byte gUnk_08107CB0
.L080BA5F0:
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r0, [r0]
	ldr r1, .L080BA604 @ =gUnk_08107CE0
	bl func_08050D8C
.L080BA5FE:
	pop {r0}
	bx r0
	.align 2, 0
.L080BA604: .4byte gUnk_08107CE0

	thumb_func_start func_080BA608
func_080BA608: @ 0x080BA608
	push {r4, lr}
	adds r4, r0, #0
	bl func_080088CC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq .L080BA6AC
	ldr r1, .L080BA668 @ =0x00000714
	adds r0, r4, r1
	movs r1, #0xb8
	bl func_08008B6C
	ldr r3, .L080BA66C @ =0x00000B31
	adds r2, r4, r3
	ldrb r1, [r2]
	cmp r1, #0
	beq .L080BA678
	movs r0, #0
	strb r0, [r2]
	ldr r1, .L080BA670 @ =0x000007A4
	adds r0, r4, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r2, #0xf5
	lsls r2, r2, #3
	adds r0, r4, r2
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	ldr r3, .L080BA674 @ =0x0000087C
	adds r0, r4, r3
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	adds r2, #0xd8
	adds r0, r4, r2
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	adds r3, #0xa0
	adds r0, r4, r3
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	adds r2, #0xa0
	adds r0, r4, r2
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	b .L080BA6AC
	.align 2, 0
.L080BA668: .4byte 0x00000714
.L080BA66C: .4byte 0x00000B31
.L080BA670: .4byte 0x000007A4
.L080BA674: .4byte 0x0000087C
.L080BA678:
	ldr r3, .L080BA6B4 @ =0x000007A4
	adds r0, r4, r3
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	adds r3, #0xd4
	adds r0, r4, r3
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	adds r3, #0x9c
	adds r0, r4, r3
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	adds r3, #4
	adds r0, r4, r3
	ldr r0, [r0]
	strh r1, [r0, #0x10]
	movs r0, #1
	strb r0, [r2]
.L080BA6AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080BA6B4: .4byte 0x000007A4

	thumb_func_start func_080BA6B8
func_080BA6B8: @ 0x080BA6B8
	push {r4, lr}
	adds r4, r0, #0
	bl func_080088D4
	adds r3, r4, #0
	adds r3, #0x9c
	ldrb r1, [r3]
	cmp r1, #1
	bne .L080BA6F8
	ands r0, r1
	cmp r0, #0
	beq .L080BA6F8
	adds r0, r4, #0
	adds r0, #0x98
	movs r2, #0
	strb r1, [r0]
	ldr r0, [r4, #0x6c]
	cmp r0, #1
	bhi .L080BA6F8
	strb r2, [r3]
	adds r0, r4, #0
	adds r0, #0x88
	strb r2, [r0]
	adds r0, #0x11
	strb r1, [r0]
	movs r0, #5
	str r0, [r4, #0x6c]
	ldr r1, .L080BA72C @ =0x0000070C
	adds r0, r4, r1
	movs r1, #0xcc
	bl func_08008B6C
.L080BA6F8:
	adds r0, r4, #0
	adds r0, #0xdc
	ldrb r0, [r0]
	cmp r0, #1
	bne .L080BA724
	ldr r3, .L080BA730 @ =0x00000B3A
	adds r2, r4, r3
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r2]
	adds r3, #0x20
	adds r0, r4, r3
	ldrb r0, [r0]
	subs r0, #1
	cmp r1, r0
	ble .L080BA724
	movs r0, #0
	strb r0, [r2]
	adds r0, r4, #0
	bl func_080B92B4
.L080BA724:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080BA72C: .4byte 0x0000070C
.L080BA730: .4byte 0x00000B3A

	thumb_func_start func_080BA734
func_080BA734: @ 0x080BA734
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	bge .L080BA788
	adds r4, r3, #0
	adds r4, #0x8c
	ldrh r0, [r4]
	lsrs r0, r0, #8
	cmp r0, #0x47
	bhi .L080BA754
	adds r1, r3, #0
	adds r1, #0x95
	movs r0, #2
	strb r0, [r1]
.L080BA754:
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r1, #0
	ldrh r2, [r4]
	adds r0, r0, r2
	movs r2, #0
	strh r0, [r4]
	ldr r4, .L080BA780 @ =0x00000B14
	adds r0, r3, r4
	movs r1, #3
	str r1, [r0]
	adds r4, #0x2c
	adds r0, r3, r4
	str r2, [r0]
	ldr r2, .L080BA784 @ =0x00000B44
	adds r0, r3, r2
	str r1, [r0]
	adds r4, #0x10
	adds r1, r3, r4
	movs r0, #1
	str r0, [r1]
	b .L080BA7D4
	.align 2, 0
.L080BA780: .4byte 0x00000B14
.L080BA784: .4byte 0x00000B44
.L080BA788:
	adds r0, r3, #0
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	bge .L080BA7D4
	adds r0, r3, #0
	adds r0, #0x8c
	ldrh r0, [r0]
	lsrs r0, r0, #8
	cmp r0, #0x47
	bhi .L080BA7A6
	adds r1, r3, #0
	adds r1, #0xd5
	movs r0, #2
	strb r0, [r1]
.L080BA7A6:
	adds r1, r3, #0
	adds r1, #0xcc
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r2, #0
	ldrh r4, [r1]
	adds r0, r0, r4
	strh r0, [r1]
	ldr r1, .L080BA7DC @ =0x00000B14
	adds r0, r3, r1
	movs r2, #3
	str r2, [r0]
	ldr r4, .L080BA7E0 @ =0x00000B44
	adds r0, r3, r4
	movs r1, #1
	str r1, [r0]
	subs r4, #4
	adds r0, r3, r4
	str r2, [r0]
	movs r2, #0xb5
	lsls r2, r2, #4
	adds r0, r3, r2
	str r1, [r0]
.L080BA7D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080BA7DC: .4byte 0x00000B14
.L080BA7E0: .4byte 0x00000B44

	thumb_func_start func_080BA7E4
func_080BA7E4: @ 0x080BA7E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov sb, r0
	str r1, [sp, #0x28]
	movs r2, #0
	movs r3, #0xf9
	lsls r3, r3, #3
.L080BA7FA:
	lsls r0, r2, #2
	add r0, sb
	adds r0, r0, r3
	ldr r0, [r0]
	strh r1, [r0, #6]
	adds r1, #0xf
	adds r2, #1
	cmp r2, #4
	bls .L080BA7FA
	movs r2, #0
	ldr r4, [sp, #0x28]
	adds r4, #0x69
	ldr r0, [sp, #0x28]
	lsls r0, r0, #5
	str r0, [sp, #0x44]
	ldr r3, .L080BA8B0 @ =0x00000884
	ldr r1, [sp, #0x28]
	adds r1, #0x4b
.L080BA81E:
	lsls r0, r2, #2
	add r0, sb
	adds r0, r0, r3
	ldr r0, [r0]
	strh r1, [r0, #6]
	adds r1, #0xf
	adds r2, #1
	cmp r2, #1
	bls .L080BA81E
	movs r0, #0x8d
	lsls r0, r0, #4
	add r0, sb
	ldr r0, [r0]
	strh r4, [r0, #6]
	movs r1, #0
	mov r8, r1
.L080BA83E:
	mov r0, sb
	bl func_08008910
	adds r5, r0, #0
	mov r2, r8
	lsls r1, r2, #5
	mov r3, sb
	adds r0, r1, r3
	ldr r2, .L080BA8B4 @ =0x000007E4
	adds r0, r0, r2
	ldr r7, [r0]
	mov r4, r8
	lsls r0, r4, #4
	subs r0, r0, r4
	ldr r6, [sp, #0x28]
	adds r3, r0, r6
	mov r0, sb
	adds r4, r1, r0
	adds r4, r4, r2
	ldr r0, [r4]
	movs r6, #0
	str r1, [sp, #0x38]
	cmp r0, #0
	beq .L080BA870
	ldrh r6, [r4, #4]
.L080BA870:
	lsls r2, r3, #5
	ldr r1, .L080BA8B8 @ =0x06010000
	adds r2, r2, r1
	mov r0, sp
	adds r1, r7, #0
	adds r3, r6, #0
	bl func_08008F0C
	mov r2, sp
	str r2, [sp, #0x2c]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080BA8BC
	cmp r1, #0
	beq .L080BA89C
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080BA89C:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	mov r7, r8
	lsls r7, r7, #2
	str r7, [sp, #0x34]
	movs r0, #1
	add r8, r0
	b .L080BA98A
	.align 2, 0
.L080BA8B0: .4byte 0x00000884
.L080BA8B4: .4byte 0x000007E4
.L080BA8B8: .4byte 0x06010000
.L080BA8BC:
	str r1, [sp, #0x48]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r5]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x10]
	add r1, sp, #0x14
	add r0, sp, #0x10
	cmp r4, #1
	bhs .L080BA8D4
	adds r0, r1, #0
.L080BA8D4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BA8F2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080BA8F6
	mov r0, sl
	bl func_080D3BC0
	b .L080BA8F6
.L080BA8F2:
	movs r0, #0
	mov sl, r0
.L080BA8F6:
	adds r4, r0, #0
	str r4, [sp, #0x4c]
	ldr r2, [r5]
	adds r3, r4, #0
	mov r4, r8
	lsls r4, r4, #2
	str r4, [sp, #0x34]
	movs r6, #1
	add r8, r6
	ldr r7, [sp, #0x48]
	cmp r2, r7
	beq .L080BA928
.L080BA90E:
	cmp r3, #0
	beq .L080BA91E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BA91E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x48]
	cmp r2, r0
	bne .L080BA90E
.L080BA928:
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne .L080BA944
	cmp r4, #0
	beq .L080BA940
	adds r0, r4, #0
	ldr r1, [sp, #0x2c]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080BA940:
	adds r4, #0x10
	b .L080BA966
.L080BA944:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080BA964
.L080BA94C:
	cmp r2, #0
	beq .L080BA95C
	adds r0, r2, #0
	ldr r1, [sp, #0x2c]
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BA95C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BA94C
.L080BA964:
	adds r4, r2, #0
.L080BA966:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BA976
.L080BA970:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BA970
.L080BA976:
	cmp r0, #0
	beq .L080BA97E
	bl free
.L080BA97E:
	ldr r0, [sp, #0x4c]
	add r0, sl
	ldr r7, [sp, #0x4c]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080BA98A:
	mov r0, sb
	bl func_08008920
	adds r5, r0, #0
	ldr r0, [sp, #0x38]
	add r0, sb
	ldr r1, .L080BAA30 @ =0x000007DC
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r3, [sp, #0x38]
	add r3, sb
	adds r3, r3, r1
	ldr r0, [r3]
	movs r2, #0
	cmp r0, #0
	beq .L080BA9AC
	ldrh r2, [r3, #4]
.L080BA9AC:
	ldr r0, [sp, #0x34]
	add r0, sb
	movs r1, #0xf9
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r3, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_0805E99C
	mov r2, r8
	cmp r2, #4
	bhi .L080BA9C8
	b .L080BA83E
.L080BA9C8:
	movs r7, #0
.L080BA9CA:
	mov r0, sb
	bl func_08008910
	adds r5, r0, #0
	lsls r2, r7, #5
	mov r3, sb
	adds r0, r2, r3
	ldr r1, .L080BAA34 @ =0x00000894
	adds r0, r0, r1
	ldr r6, [r0]
	adds r4, r2, r3
	adds r4, r4, r1
	ldr r0, [r4]
	movs r3, #0
	str r2, [sp, #0x40]
	cmp r0, #0
	beq .L080BA9EE
	ldrh r3, [r4, #4]
.L080BA9EE:
	lsls r0, r7, #4
	subs r0, r0, r7
	ldr r4, [sp, #0x28]
	adds r2, r0, r4
	lsls r0, r2, #5
	ldr r1, .L080BAA38 @ =0x06010960
	adds r2, r0, r1
	mov r0, sp
	adds r1, r6, #0
	bl func_08008F0C
	mov r2, sp
	str r2, [sp, #0x30]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080BAA3C
	cmp r1, #0
	beq .L080BAA20
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080BAA20:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	lsls r0, r7, #2
	str r0, [sp, #0x3c]
	adds r1, r7, #1
	str r1, [sp, #0x4c]
	b .L080BAB0A
	.align 2, 0
.L080BAA30: .4byte 0x000007DC
.L080BAA34: .4byte 0x00000894
.L080BAA38: .4byte 0x06010960
.L080BAA3C:
	str r1, [sp, #0x48]
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r0, [r5]
	adds r2, r1, #0
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x18]
	add r1, sp, #0x1c
	add r0, sp, #0x18
	cmp r4, #1
	bhs .L080BAA56
	adds r0, r1, #0
.L080BAA56:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BAA74
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080BAA78
	mov r0, sl
	bl func_080D3BC0
	b .L080BAA78
.L080BAA74:
	movs r0, #0
	mov sl, r0
.L080BAA78:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r5]
	mov r3, r8
	lsls r4, r7, #2
	str r4, [sp, #0x3c]
	adds r6, r7, #1
	str r6, [sp, #0x4c]
	ldr r7, [sp, #0x48]
	cmp r2, r7
	beq .L080BAAA8
.L080BAA8E:
	cmp r3, #0
	beq .L080BAA9E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BAA9E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x48]
	cmp r2, r0
	bne .L080BAA8E
.L080BAAA8:
	adds r4, r3, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne .L080BAAC4
	cmp r4, #0
	beq .L080BAAC0
	adds r0, r4, #0
	ldr r1, [sp, #0x30]
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080BAAC0:
	adds r4, #0x10
	b .L080BAAE6
.L080BAAC4:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080BAAE4
.L080BAACC:
	cmp r2, #0
	beq .L080BAADC
	adds r0, r2, #0
	ldr r1, [sp, #0x30]
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BAADC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BAACC
.L080BAAE4:
	adds r4, r2, #0
.L080BAAE6:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BAAF6
.L080BAAF0:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BAAF0
.L080BAAF6:
	cmp r0, #0
	beq .L080BAAFE
	bl free
.L080BAAFE:
	mov r0, sl
	add r0, r8
	mov r7, r8
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080BAB0A:
	mov r0, sb
	bl func_08008920
	adds r6, r0, #0
	ldr r0, [sp, #0x40]
	add r0, sb
	ldr r1, .L080BAB8C @ =0x0000088C
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r2, [sp, #0x40]
	add r2, sb
	adds r2, r2, r1
	ldr r0, [r2]
	movs r5, #0
	cmp r0, #0
	beq .L080BAB2C
	ldrh r5, [r2, #4]
.L080BAB2C:
	ldr r0, [sp, #0x3c]
	add r0, sb
	ldr r1, .L080BAB90 @ =0x00000884
	adds r0, r0, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl func_0805E99C
	ldr r7, [sp, #0x4c]
	cmp r7, #1
	bhi .L080BAB48
	b .L080BA9CA
.L080BAB48:
	mov r0, sb
	bl func_08008910
	ldr r2, .L080BAB94 @ =0x000008DC
	add r2, sb
	ldr r1, [r2]
	movs r3, #0
	cmp r1, #0
	beq .L080BAB5C
	ldrh r3, [r2, #4]
.L080BAB5C:
	adds r5, r0, #0
	ldr r4, [sp, #0x44]
	ldr r6, .L080BAB98 @ =0x06010D20
	adds r2, r4, r6
	mov r0, sp
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080BAB9C
	cmp r1, #0
	beq .L080BAB84
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BAB84:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080BAC62
	.align 2, 0
.L080BAB8C: .4byte 0x0000088C
.L080BAB90: .4byte 0x00000884
.L080BAB94: .4byte 0x000008DC
.L080BAB98: .4byte 0x06010D20
.L080BAB9C:
	str r1, [sp, #0x48]
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r0, [r5]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r1, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L080BABB6
	adds r0, r1, #0
.L080BABB6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BABD4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BABD8
	mov r0, r8
	bl func_080D3BC0
	b .L080BABD8
.L080BABD4:
	movs r0, #0
	mov r8, r0
.L080BABD8:
	adds r4, r0, #0
	str r4, [sp, #0x4c]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r6, [sp, #0x48]
	cmp r2, r6
	beq .L080BAC00
.L080BABE6:
	cmp r3, #0
	beq .L080BABF6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BABF6:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x48]
	cmp r2, r7
	bne .L080BABE6
.L080BAC00:
	adds r4, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L080BAC1C
	cmp r4, #0
	beq .L080BAC18
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080BAC18:
	adds r4, #0x10
	b .L080BAC3E
.L080BAC1C:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080BAC3C
.L080BAC24:
	cmp r2, #0
	beq .L080BAC34
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BAC34:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BAC24
.L080BAC3C:
	adds r4, r2, #0
.L080BAC3E:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BAC4E
.L080BAC48:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BAC48
.L080BAC4E:
	cmp r0, #0
	beq .L080BAC56
	bl free
.L080BAC56:
	ldr r0, [sp, #0x4c]
	add r0, r8
	ldr r7, [sp, #0x4c]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080BAC62:
	mov r0, sb
	bl func_08008920
	adds r4, r0, #0
	ldr r3, .L080BAC98 @ =0x000008D4
	add r3, sb
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080BAC7A
	ldrh r2, [r3, #4]
.L080BAC7A:
	movs r0, #0x8d
	lsls r0, r0, #4
	add r0, sb
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080BAC98: .4byte 0x000008D4

	thumb_func_start func_080BAC9C
func_080BAC9C: @ 0x080BAC9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf0
	mov sb, r0
	str r1, [sp, #0x90]
	ldr r1, .L080BB03C @ =gUnk_08107CFC
	mov r0, sp
	movs r2, #0x40
	bl memcpy
	movs r0, #0
	str r0, [sp, #0x94]
	mov r1, sp
	adds r1, #4
	str r1, [sp, #0xa0]
	mov r2, sp
	adds r2, #0x40
	str r2, [sp, #0xb8]
	ldr r3, [sp, #0x90]
	str r3, [sp, #0xe4]
	mov sl, sb
	ldr r4, .L080BB040 @ =0x000007B4
	add r4, sb
	mov r8, r4
.L080BACD2:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080BB044 @ =0x0000077C
	add r1, sb
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r4, r0, #0
	ldr r5, [sp, #0x94]
	lsls r6, r5, #2
	mov r7, r8
	ldr r0, [r7]
	cmp r4, r0
	beq .L080BACFA
	bl __builtin_delete
.L080BACFA:
	mov r0, r8
	str r4, [r0]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	movs r1, #0
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	mov r2, sb
	adds r5, r6, r2
	movs r7, #0xf9
	lsls r7, r7, #3
	adds r5, r5, r7
	ldr r0, [r5]
	cmp r4, r0
	beq .L080BAD32
	bl __builtin_delete
.L080BAD32:
	str r4, [r5]
	ldr r0, .L080BB040 @ =0x000007B4
	add r0, sl
	ldr r4, [r0]
	mov r0, sb
	movs r1, #0
	ldr r2, [sp, #0x94]
	movs r3, #0
	bl func_080BB890
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	mov r3, sb
	adds r0, r6, r3
	adds r0, r0, r7
	ldr r0, [r0]
	add r4, sp, #0xe4
	ldrh r4, [r4]
	strh r4, [r0, #6]
	adds r0, r6, r3
	adds r0, r0, r7
	ldr r5, [r0]
	ldr r0, [sp, #0x94]
	lsls r4, r0, #3
	adds r0, r4, r3
	ldr r1, .L080BB048 @ =0x0000073C
	adds r0, r0, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r5, #4]
	mov r2, sb
	adds r0, r6, r2
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1, #8]
	adds r0, r6, r2
	adds r0, r0, r7
	ldr r0, [r0]
	movs r3, #1
	strb r3, [r0, #0x18]
	adds r0, r6, r2
	adds r0, r0, r7
	ldr r1, [r0]
	mov r5, sp
	adds r0, r5, r4
	ldr r0, [r0]
	strh r0, [r1]
	adds r0, r6, r2
	adds r0, r0, r7
	ldr r1, [r0]
	ldr r7, [sp, #0xa0]
	adds r4, r7, r4
	ldr r0, [r4]
	strh r0, [r1, #2]
	ldr r0, [sp, #0xe4]
	adds r0, #0xf
	str r0, [sp, #0xe4]
	movs r1, #4
	add sl, r1
	add r8, r1
	ldr r2, [sp, #0x94]
	adds r2, #1
	str r2, [sp, #0x94]
	cmp r2, #4
	ble .L080BACD2
	movs r3, #0
	str r3, [sp, #0x94]
	ldr r4, [sp, #0x90]
	adds r4, #0x69
	str r4, [sp, #0xbc]
	ldr r5, [sp, #0x90]
	lsls r5, r5, #5
	str r5, [sp, #0xb0]
	adds r7, #0x28
	str r7, [sp, #0xd4]
	mov r0, sp
	adds r0, #0x28
	str r0, [sp, #0xd8]
	ldr r1, [sp, #0x90]
	adds r1, #0x4b
	str r1, [sp, #0xdc]
	mov r2, sb
	str r2, [sp, #0xe0]
	ldr r3, .L080BB04C @ =0x0000087C
	add r3, sb
	mov sl, r3
.L080BADEA:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080BB044 @ =0x0000077C
	add r1, sb
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r4, r0, #0
	ldr r5, [sp, #0x94]
	lsls r6, r5, #2
	mov r7, sl
	ldr r0, [r7]
	cmp r4, r0
	beq .L080BAE12
	bl __builtin_delete
.L080BAE12:
	mov r0, sl
	str r4, [r0]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	mov r8, r1
	mov r2, r8
	strh r2, [r4]
	strh r2, [r4, #2]
	strh r2, [r4, #4]
	strh r2, [r4, #6]
	strh r2, [r4, #8]
	mov r3, r8
	str r3, [r4, #0xc]
	movs r5, #0
	strb r5, [r4, #0x10]
	strb r5, [r4, #0x11]
	str r3, [r4, #0x14]
	strb r5, [r4, #0x18]
	mov r7, sb
	adds r5, r6, r7
	ldr r7, .L080BB050 @ =0x00000884
	adds r5, r5, r7
	ldr r0, [r5]
	cmp r4, r0
	beq .L080BAE4E
	bl __builtin_delete
.L080BAE4E:
	str r4, [r5]
	ldr r1, [sp, #0xe0]
	ldr r2, .L080BB04C @ =0x0000087C
	adds r0, r1, r2
	ldr r4, [r0]
	movs r0, #0xb4
	lsls r0, r0, #4
	add r0, sb
	adds r0, r0, r6
	ldr r3, [r0]
	mov r0, sb
	movs r1, #1
	ldr r2, [sp, #0x94]
	bl func_080BB890
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	mov r3, sb
	adds r0, r6, r3
	adds r0, r0, r7
	ldr r0, [r0]
	add r4, sp, #0xdc
	ldrh r4, [r4]
	strh r4, [r0, #6]
	adds r0, r6, r3
	adds r0, r0, r7
	ldr r4, [r0]
	ldr r5, [sp, #0x94]
	lsls r0, r5, #3
	add r0, sb
	ldr r1, .L080BB054 @ =0x00000764
	adds r0, r0, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	mov r2, sb
	adds r0, r6, r2
	adds r0, r0, r7
	ldr r0, [r0]
	movs r3, #1
	strh r3, [r0, #8]
	adds r0, r6, r2
	adds r0, r0, r7
	ldr r0, [r0]
	movs r4, #1
	strb r4, [r0, #0x18]
	adds r0, r6, r2
	adds r0, r0, r7
	ldr r1, [r0]
	ldr r5, [sp, #0xd8]
	ldr r0, [r5]
	strh r0, [r1]
	adds r0, r6, r2
	adds r0, r0, r7
	ldr r1, [r0]
	ldr r7, [sp, #0xd4]
	ldr r0, [r7]
	strh r0, [r1, #2]
	adds r0, r7, #0
	adds r0, #8
	str r0, [sp, #0xd4]
	adds r5, #8
	str r5, [sp, #0xd8]
	ldr r1, [sp, #0xdc]
	adds r1, #0xf
	str r1, [sp, #0xdc]
	ldr r2, [sp, #0xe0]
	adds r2, #4
	str r2, [sp, #0xe0]
	movs r3, #4
	add sl, r3
	ldr r4, [sp, #0x94]
	adds r4, #1
	str r4, [sp, #0x94]
	cmp r4, #1
	bgt .L080BAEF2
	b .L080BADEA
.L080BAEF2:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080BB044 @ =0x0000077C
	add r1, sb
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r5, r0, #0
	ldr r4, .L080BB058 @ =0x000008CC
	add r4, sb
	ldr r0, [r4]
	cmp r5, r0
	beq .L080BAF18
	bl __builtin_delete
.L080BAF18:
	str r5, [r4]
	movs r0, #0x1c
	bl __builtin_new
	adds r5, r0, #0
	movs r0, #0
	mov r7, r8
	strh r7, [r5]
	mov r1, r8
	strh r1, [r5, #2]
	strh r1, [r5, #4]
	strh r1, [r5, #6]
	strh r1, [r5, #8]
	mov r2, r8
	str r2, [r5, #0xc]
	strb r0, [r5, #0x10]
	strb r0, [r5, #0x11]
	str r2, [r5, #0x14]
	strb r0, [r5, #0x18]
	movs r6, #0x8d
	lsls r6, r6, #4
	add r6, sb
	ldr r0, [r6]
	cmp r5, r0
	beq .L080BAF4E
	bl __builtin_delete
.L080BAF4E:
	str r5, [r6]
	ldr r4, [r4]
	movs r0, #0xb5
	lsls r0, r0, #4
	add r0, sb
	ldr r3, [r0]
	mov r0, sb
	movs r1, #2
	movs r2, #0
	bl func_080BB890
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	ldr r0, [r6]
	add r3, sp, #0xbc
	ldrh r3, [r3]
	strh r3, [r0, #6]
	ldr r4, [r6]
	ldr r0, .L080BB05C @ =0x00000774
	add r0, sb
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	ldr r0, [r6]
	movs r1, #1
	strh r1, [r0, #8]
	ldr r0, [r6]
	strb r1, [r0, #0x18]
	ldr r1, [r6]
	ldr r0, [sp, #0x38]
	strh r0, [r1]
	ldr r1, [r6]
	ldr r0, [sp, #0x3c]
	strh r0, [r1, #2]
	movs r4, #0
	str r4, [sp, #0x94]
	ldr r5, [sp, #0xb8]
	str r5, [sp, #0x98]
	movs r7, #0
	str r7, [sp, #0xc0]
	ldr r0, .L080BB048 @ =0x0000073C
	add r0, sb
	str r0, [sp, #0xc4]
	ldr r1, [sp, #0x90]
	lsls r0, r1, #5
	ldr r2, .L080BB060 @ =0x06010000
	adds r2, r0, r2
	str r2, [sp, #0xc8]
	ldr r3, .L080BB040 @ =0x000007B4
	add r3, sb
	str r3, [sp, #0xcc]
	ldr r4, .L080BB064 @ =0x000007DC
	add r4, sb
	str r4, [sp, #0xd0]
.L080BAFC4:
	ldr r5, [sp, #0xcc]
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x98]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r1, [sp, #0xd0]
	ldr r0, [sp, #0x98]
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r4, r5, r7}
	stm r1!, {r4, r5, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r0, sb
	bl func_08008910
	adds r2, r0, #0
	ldr r4, [sp, #0xd0]
	ldr r0, [r4, #8]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080BB00E
	ldrh r3, [r4, #0xc]
.L080BB00E:
	adds r6, r2, #0
	ldr r0, [sp, #0x98]
	ldr r2, [sp, #0xc8]
	bl func_08008F0C
	ldr r5, [sp, #0x98]
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BB068
	cmp r1, #0
	beq .L080BB034
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB034:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BB12E
	.align 2, 0
.L080BB03C: .4byte gUnk_08107CFC
.L080BB040: .4byte 0x000007B4
.L080BB044: .4byte 0x0000077C
.L080BB048: .4byte 0x0000073C
.L080BB04C: .4byte 0x0000087C
.L080BB050: .4byte 0x00000884
.L080BB054: .4byte 0x00000764
.L080BB058: .4byte 0x000008CC
.L080BB05C: .4byte 0x00000774
.L080BB060: .4byte 0x06010000
.L080BB064: .4byte 0x000007DC
.L080BB068:
	str r1, [sp, #0xe8]
	movs r0, #1
	str r0, [sp, #0x64]
	ldr r0, [r6]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x60]
	add r1, sp, #0x64
	add r0, sp, #0x60
	cmp r4, #1
	bhs .L080BB082
	adds r0, r1, #0
.L080BB082:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BB0A0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BB0A4
	mov r0, r8
	bl func_080D3BC0
	b .L080BB0A4
.L080BB0A0:
	movs r0, #0
	mov r8, r0
.L080BB0A4:
	adds r5, r0, #0
	str r5, [sp, #0xec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0xe8]
	cmp r2, r5
	beq .L080BB0CC
.L080BB0B2:
	cmp r3, #0
	beq .L080BB0C2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB0C2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0xe8]
	cmp r2, r7
	bne .L080BB0B2
.L080BB0CC:
	adds r5, r3, #0
	ldr r0, [sp, #0x64]
	cmp r0, #1
	bne .L080BB0E8
	cmp r5, #0
	beq .L080BB0E4
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BB0E4:
	adds r5, #0x10
	b .L080BB10A
.L080BB0E8:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BB108
.L080BB0F0:
	cmp r2, #0
	beq .L080BB100
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB100:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BB0F0
.L080BB108:
	adds r5, r2, #0
.L080BB10A:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BB11A
.L080BB114:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BB114
.L080BB11A:
	cmp r0, #0
	beq .L080BB122
	bl free
.L080BB122:
	ldr r0, [sp, #0xec]
	add r0, r8
	ldr r7, [sp, #0xec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BB12E:
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	ldr r0, [sp, #0xc0]
	add r0, sb
	ldr r4, .L080BB18C @ =0x000007EC
	adds r0, r0, r4
	ldr r5, [r0]
	ldr r0, [sp, #0xc4]
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r1, [sp, #0xc0]
	add r1, sb
	adds r1, r1, r4
	ldr r0, [r1]
	movs r3, #0
	cmp r0, #0
	beq .L080BB15A
	ldrh r3, [r1, #4]
.L080BB15A:
	lsls r2, r2, #5
	ldr r1, .L080BB190 @ =0x05000200
	adds r2, r2, r1
	add r0, sp, #0x40
	adds r1, r5, #0
	bl func_08008F0C
	ldr r2, [sp, #0xb8]
	mov sl, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BB194
	cmp r1, #0
	beq .L080BB184
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080BB184:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BB256
	.align 2, 0
.L080BB18C: .4byte 0x000007EC
.L080BB190: .4byte 0x05000200
.L080BB194:
	str r1, [sp, #0xe8]
	movs r0, #1
	str r0, [sp, #0x6c]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x68]
	add r1, sp, #0x6c
	add r0, sp, #0x68
	cmp r4, #1
	bhs .L080BB1AE
	adds r0, r1, #0
.L080BB1AE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BB1CC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BB1D0
	mov r0, r8
	bl func_080D3BC0
	b .L080BB1D0
.L080BB1CC:
	movs r0, #0
	mov r8, r0
.L080BB1D0:
	adds r5, r0, #0
	str r5, [sp, #0xec]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080BB1EE
.L080BB1DA:
	cmp r3, #0
	beq .L080BB1EA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB1EA:
	adds r2, #0x10
	adds r3, #0x10
.L080BB1EE:
	ldr r0, [sp, #0xe8]
	cmp r2, r0
	bne .L080BB1DA
	adds r5, r3, #0
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne .L080BB210
	cmp r5, #0
	beq .L080BB20C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BB20C:
	adds r5, #0x10
	b .L080BB232
.L080BB210:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BB230
.L080BB218:
	cmp r2, #0
	beq .L080BB228
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB228:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BB218
.L080BB230:
	adds r5, r2, #0
.L080BB232:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BB242
.L080BB23C:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BB23C
.L080BB242:
	cmp r0, #0
	beq .L080BB24A
	bl free
.L080BB24A:
	ldr r0, [sp, #0xec]
	add r0, r8
	ldr r7, [sp, #0xec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BB256:
	mov r0, sb
	bl func_08008920
	adds r5, r0, #0
	ldr r0, [sp, #0xc0]
	add r0, sb
	ldr r1, .L080BB36C @ =0x000007DC
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r3, [sp, #0xc0]
	add r3, sb
	adds r3, r3, r1
	ldr r0, [r3]
	movs r2, #0
	cmp r0, #0
	beq .L080BB278
	ldrh r2, [r3, #4]
.L080BB278:
	ldr r0, [sp, #0xcc]
	ldr r3, [r0, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_0805E99C
	ldr r1, [sp, #0xc0]
	adds r1, #0x20
	str r1, [sp, #0xc0]
	ldr r2, [sp, #0xc4]
	adds r2, #8
	str r2, [sp, #0xc4]
	ldr r3, [sp, #0xc8]
	movs r4, #0xf0
	lsls r4, r4, #1
	adds r3, r3, r4
	str r3, [sp, #0xc8]
	ldr r5, [sp, #0xcc]
	adds r5, #4
	str r5, [sp, #0xcc]
	ldr r7, [sp, #0xd0]
	adds r7, #0x20
	str r7, [sp, #0xd0]
	ldr r0, [sp, #0x94]
	adds r0, #1
	str r0, [sp, #0x94]
	cmp r0, #4
	bgt .L080BB2B2
	b .L080BAFC4
.L080BB2B2:
	movs r1, #0
	str r1, [sp, #0x94]
	ldr r2, [sp, #0xb8]
	str r2, [sp, #0x9c]
.L080BB2BA:
	ldr r3, [sp, #0x94]
	lsls r3, r3, #5
	mov r8, r3
	mov r5, r8
	add r5, sb
	ldr r7, .L080BB370 @ =0x0000088C
	adds r4, r5, r7
	ldr r0, [sp, #0x94]
	lsls r6, r0, #2
	mov r1, sb
	adds r0, r6, r1
	ldr r2, .L080BB374 @ =0x0000087C
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x9c]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x9c]
	ldm r0!, {r1, r3, r7}
	stm r4!, {r1, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r4!, {r2, r3, r7}
	ldm r0!, {r1, r2}
	stm r4!, {r1, r2}
	mov r0, sb
	bl func_08008910
	adds r2, r0, #0
	ldr r3, .L080BB378 @ =0x00000894
	adds r5, r5, r3
	ldr r0, [r5]
	adds r1, r0, #0
	movs r3, #0
	str r6, [sp, #0xa8]
	mov r4, r8
	str r4, [sp, #0xb4]
	cmp r1, #0
	beq .L080BB322
	ldrh r3, [r5, #4]
.L080BB322:
	adds r6, r2, #0
	ldr r5, [sp, #0x94]
	lsls r0, r5, #4
	subs r0, r0, r5
	ldr r7, [sp, #0x90]
	adds r2, r0, r7
	lsls r0, r2, #5
	ldr r4, .L080BB37C @ =0x06010960
	adds r2, r0, r4
	ldr r0, [sp, #0x9c]
	bl func_08008F0C
	ldr r5, [sp, #0x9c]
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BB380
	cmp r1, #0
	beq .L080BB356
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB356:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r4, [sp, #0x94]
	lsls r4, r4, #3
	str r4, [sp, #0xac]
	ldr r5, [sp, #0x94]
	adds r5, #1
	str r5, [sp, #0xa4]
	b .L080BB452
	.align 2, 0
.L080BB36C: .4byte 0x000007DC
.L080BB370: .4byte 0x0000088C
.L080BB374: .4byte 0x0000087C
.L080BB378: .4byte 0x00000894
.L080BB37C: .4byte 0x06010960
.L080BB380:
	str r1, [sp, #0xe8]
	movs r0, #1
	str r0, [sp, #0x74]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x70]
	add r1, sp, #0x74
	add r0, sp, #0x70
	cmp r4, #1
	bhs .L080BB39A
	adds r0, r1, #0
.L080BB39A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BB3B8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BB3BC
	mov r0, r8
	bl func_080D3BC0
	b .L080BB3BC
.L080BB3B8:
	movs r0, #0
	mov r8, r0
.L080BB3BC:
	adds r5, r0, #0
	str r5, [sp, #0xec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r0, [sp, #0x94]
	lsls r0, r0, #3
	str r0, [sp, #0xac]
	ldr r1, [sp, #0x94]
	adds r1, #1
	str r1, [sp, #0xa4]
	ldr r4, [sp, #0xe8]
	cmp r2, r4
	beq .L080BB3F0
.L080BB3D6:
	cmp r3, #0
	beq .L080BB3E6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB3E6:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0xe8]
	cmp r2, r5
	bne .L080BB3D6
.L080BB3F0:
	adds r5, r3, #0
	ldr r0, [sp, #0x74]
	cmp r0, #1
	bne .L080BB40C
	cmp r5, #0
	beq .L080BB408
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB408:
	adds r5, #0x10
	b .L080BB42E
.L080BB40C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BB42C
.L080BB414:
	cmp r2, #0
	beq .L080BB424
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB424:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BB414
.L080BB42C:
	adds r5, r2, #0
.L080BB42E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BB43E
.L080BB438:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BB438
.L080BB43E:
	cmp r0, #0
	beq .L080BB446
	bl free
.L080BB446:
	ldr r0, [sp, #0xec]
	add r0, r8
	ldr r1, [sp, #0xec]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BB452:
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	ldr r0, [sp, #0xb4]
	add r0, sb
	ldr r4, .L080BB4B8 @ =0x0000089C
	adds r0, r0, r4
	ldr r5, [r0]
	ldr r0, [sp, #0xac]
	add r0, sb
	ldr r2, .L080BB4BC @ =0x00000764
	adds r0, r0, r2
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r1, [sp, #0xb4]
	add r1, sb
	adds r1, r1, r4
	ldr r0, [r1]
	movs r3, #0
	cmp r0, #0
	beq .L080BB484
	ldrh r3, [r1, #4]
.L080BB484:
	lsls r2, r2, #5
	ldr r4, .L080BB4C0 @ =0x05000200
	adds r2, r2, r4
	add r0, sp, #0x40
	adds r1, r5, #0
	bl func_08008F0C
	ldr r5, [sp, #0xb8]
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BB4C4
	cmp r1, #0
	beq .L080BB4AE
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB4AE:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BB58A
	.align 2, 0
.L080BB4B8: .4byte 0x0000089C
.L080BB4BC: .4byte 0x00000764
.L080BB4C0: .4byte 0x05000200
.L080BB4C4:
	str r1, [sp, #0xe8]
	movs r0, #1
	str r0, [sp, #0x7c]
	ldr r0, [r6]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x78]
	add r1, sp, #0x7c
	add r0, sp, #0x78
	cmp r4, #1
	bhs .L080BB4DE
	adds r0, r1, #0
.L080BB4DE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BB4FC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BB500
	mov r0, r8
	bl func_080D3BC0
	b .L080BB500
.L080BB4FC:
	movs r0, #0
	mov r8, r0
.L080BB500:
	adds r5, r0, #0
	str r5, [sp, #0xec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0xe8]
	cmp r2, r5
	beq .L080BB528
.L080BB50E:
	cmp r3, #0
	beq .L080BB51E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB51E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0xe8]
	cmp r2, r7
	bne .L080BB50E
.L080BB528:
	adds r5, r3, #0
	ldr r0, [sp, #0x7c]
	cmp r0, #1
	bne .L080BB544
	cmp r5, #0
	beq .L080BB540
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BB540:
	adds r5, #0x10
	b .L080BB566
.L080BB544:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BB564
.L080BB54C:
	cmp r2, #0
	beq .L080BB55C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB55C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BB54C
.L080BB564:
	adds r5, r2, #0
.L080BB566:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BB576
.L080BB570:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BB570
.L080BB576:
	cmp r0, #0
	beq .L080BB57E
	bl free
.L080BB57E:
	ldr r0, [sp, #0xec]
	add r0, r8
	ldr r7, [sp, #0xec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BB58A:
	mov r0, sb
	bl func_08008920
	adds r5, r0, #0
	ldr r0, [sp, #0xb4]
	add r0, sb
	ldr r1, .L080BB648 @ =0x0000088C
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r3, [sp, #0xb4]
	add r3, sb
	adds r3, r3, r1
	ldr r0, [r3]
	movs r2, #0
	cmp r0, #0
	beq .L080BB5AC
	ldrh r2, [r3, #4]
.L080BB5AC:
	ldr r0, [sp, #0xa8]
	add r0, sb
	ldr r1, .L080BB64C @ =0x00000884
	adds r0, r0, r1
	ldr r3, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_0805E99C
	ldr r2, [sp, #0xa4]
	str r2, [sp, #0x94]
	cmp r2, #1
	bgt .L080BB5C8
	b .L080BB2BA
.L080BB5C8:
	ldr r4, .L080BB650 @ =0x000008D4
	add r4, sb
	ldr r0, .L080BB654 @ =0x000008CC
	add r0, sb
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x40
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0xb8]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0xb8]
	ldm r0!, {r3, r5, r7}
	stm r4!, {r3, r5, r7}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r5, r7}
	stm r4!, {r5, r7}
	mov r0, sb
	bl func_08008910
	ldr r2, .L080BB658 @ =0x000008DC
	add r2, sb
	ldr r1, [r2]
	movs r3, #0
	cmp r1, #0
	beq .L080BB614
	ldrh r3, [r2, #4]
.L080BB614:
	adds r6, r0, #0
	ldr r0, [sp, #0xb0]
	ldr r4, .L080BB65C @ =0x06010D20
	adds r2, r0, r4
	ldr r0, [sp, #0xb8]
	bl func_08008F0C
	ldr r5, [sp, #0xb8]
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BB660
	cmp r1, #0
	beq .L080BB63E
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB63E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BB728
	.align 2, 0
.L080BB648: .4byte 0x0000088C
.L080BB64C: .4byte 0x00000884
.L080BB650: .4byte 0x000008D4
.L080BB654: .4byte 0x000008CC
.L080BB658: .4byte 0x000008DC
.L080BB65C: .4byte 0x06010D20
.L080BB660:
	str r1, [sp, #0xe8]
	movs r0, #1
	add r1, sp, #0x84
	str r0, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0xe8]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0x80
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080BB67C
	adds r0, r1, #0
.L080BB67C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BB69A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080BB69E
	mov r0, r8
	bl func_080D3BC0
	b .L080BB69E
.L080BB69A:
	movs r0, #0
	mov r8, r0
.L080BB69E:
	adds r5, r0, #0
	str r5, [sp, #0xec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0xe8]
	cmp r2, r5
	beq .L080BB6C6
.L080BB6AC:
	cmp r3, #0
	beq .L080BB6BC
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB6BC:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0xe8]
	cmp r2, r7
	bne .L080BB6AC
.L080BB6C6:
	adds r5, r3, #0
	ldr r1, [sp, #0x84]
	cmp r1, #1
	bne .L080BB6E2
	cmp r5, #0
	beq .L080BB6DE
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BB6DE:
	adds r5, #0x10
	b .L080BB704
.L080BB6E2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BB702
.L080BB6EA:
	cmp r2, #0
	beq .L080BB6FA
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB6FA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BB6EA
.L080BB702:
	adds r5, r2, #0
.L080BB704:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BB714
.L080BB70E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BB70E
.L080BB714:
	cmp r0, #0
	beq .L080BB71C
	bl free
.L080BB71C:
	ldr r0, [sp, #0xec]
	add r0, r8
	ldr r7, [sp, #0xec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BB728:
	mov r0, sb
	bl func_08008910
	adds r5, r0, #0
	ldr r4, .L080BB780 @ =0x000008E4
	add r4, sb
	ldr r7, [r4]
	ldr r0, .L080BB784 @ =0x00000774
	add r0, sb
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080BB74C
	ldrh r3, [r4, #4]
.L080BB74C:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r0, .L080BB788 @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x40
	adds r1, r7, #0
	bl func_08008F0C
	ldr r1, [sp, #0xb8]
	mov r8, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BB78C
	cmp r1, #0
	beq .L080BB778
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BB778:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BB854
	.align 2, 0
.L080BB780: .4byte 0x000008E4
.L080BB784: .4byte 0x00000774
.L080BB788: .4byte 0x05000200
.L080BB78C:
	str r1, [sp, #0xe8]
	movs r0, #1
	add r1, sp, #0x8c
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xe8]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x88
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080BB7A8
	adds r0, r1, #0
.L080BB7A8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BB7C6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080BB7CA
	mov r0, sl
	bl func_080D3BC0
	b .L080BB7CA
.L080BB7C6:
	movs r0, #0
	mov sl, r0
.L080BB7CA:
	adds r5, r0, #0
	str r5, [sp, #0xec]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xe8]
	cmp r2, r7
	beq .L080BB7F2
.L080BB7D8:
	cmp r3, #0
	beq .L080BB7E8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB7E8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xe8]
	cmp r2, r0
	bne .L080BB7D8
.L080BB7F2:
	adds r5, r3, #0
	ldr r1, [sp, #0x8c]
	cmp r1, #1
	bne .L080BB80E
	cmp r5, #0
	beq .L080BB80A
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BB80A:
	adds r5, #0x10
	b .L080BB830
.L080BB80E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BB82E
.L080BB816:
	cmp r2, #0
	beq .L080BB826
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BB826:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BB816
.L080BB82E:
	adds r5, r2, #0
.L080BB830:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BB840
.L080BB83A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BB83A
.L080BB840:
	cmp r0, #0
	beq .L080BB848
	bl free
.L080BB848:
	ldr r0, [sp, #0xec]
	add r0, sl
	ldr r7, [sp, #0xec]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BB854:
	mov r0, sb
	bl func_08008920
	adds r4, r0, #0
	ldr r3, .L080BB88C @ =0x000008D4
	add r3, sb
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080BB86C
	ldrh r2, [r3, #4]
.L080BB86C:
	movs r0, #0x8d
	lsls r0, r0, #4
	add r0, sb
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	add sp, #0xf0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080BB88C: .4byte 0x000008D4

	thumb_func_start func_080BB890
func_080BB890: @ 0x080BB890
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	cmp r1, #1
	beq .L080BB8B4
	cmp r1, #1
	bgt .L080BB8A4
	cmp r1, #0
	beq .L080BB8AA
	b .L080BB8E0
.L080BB8A4:
	cmp r1, #2
	beq .L080BB8D8
	b .L080BB8E0
.L080BB8AA:
	ldr r1, .L080BB8B0 @ =gUnk_08107D3C
	lsls r0, r2, #1
	b .L080BB8DC
	.align 2, 0
.L080BB8B0: .4byte gUnk_08107D3C
.L080BB8B4:
	cmp r2, #0
	beq .L080BB8C0
	ldr r1, .L080BB8D0 @ =0x00000B18
	adds r0, r4, r1
	ldr r0, [r0]
	adds r2, r2, r0
.L080BB8C0:
	ldr r0, .L080BB8D4 @ =gUnk_08107D46
	lsls r1, r3, #1
	lsls r2, r2, #3
	adds r1, r1, r2
	adds r1, r1, r0
	ldrh r0, [r1]
	b .L080BB8E0
	.align 2, 0
.L080BB8D0: .4byte 0x00000B18
.L080BB8D4: .4byte gUnk_08107D46
.L080BB8D8:
	ldr r1, .L080BB8E8 @ =gUnk_08107D66
	lsls r0, r3, #1
.L080BB8DC:
	adds r0, r0, r1
	ldrh r0, [r0]
.L080BB8E0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080BB8E8: .4byte gUnk_08107D66

	thumb_func_start func_080BB8EC
func_080BB8EC: @ 0x080BB8EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	mov r8, r0
	str r1, [sp, #0x50]
	movs r0, #0
	str r0, [sp, #0x54]
	movs r1, #0
	str r1, [sp, #0x68]
	ldr r2, .L080BB9A4 @ =0x0000073C
	add r2, r8
	str r2, [sp, #0x6c]
	ldr r3, [sp, #0x50]
	str r3, [sp, #0x70]
	ldr r4, .L080BB9A8 @ =0x000007B4
	add r4, r8
	str r4, [sp, #0x74]
	ldr r5, .L080BB9AC @ =0x000007DC
	add r5, r8
	str r5, [sp, #0x78]
.L080BB91A:
	ldr r7, [sp, #0x74]
	ldr r0, [r7]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080BB92A
	b .L080BBBA6
.L080BB92A:
	ldr r0, [r7]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	ldr r1, [sp, #0x78]
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r0, r8
	bl func_08008910
	adds r2, r0, #0
	ldr r5, [sp, #0x78]
	ldr r0, [r5, #8]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080BB972
	ldrh r3, [r5, #0xc]
.L080BB972:
	adds r6, r2, #0
	ldr r7, [sp, #0x70]
	lsls r2, r7, #5
	ldr r0, .L080BB9B0 @ =0x06010000
	adds r2, r2, r0
	mov r0, sp
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BB9B4
	cmp r1, #0
	beq .L080BB99C
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BB99C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BBA7A
	.align 2, 0
.L080BB9A4: .4byte 0x0000073C
.L080BB9A8: .4byte 0x000007B4
.L080BB9AC: .4byte 0x000007DC
.L080BB9B0: .4byte 0x06010000
.L080BB9B4:
	str r1, [sp, #0x7c]
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r1, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L080BB9CE
	adds r0, r1, #0
.L080BB9CE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BB9EC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BB9F0
	mov r0, sb
	bl func_080D3BC0
	b .L080BB9F0
.L080BB9EC:
	movs r0, #0
	mov sb, r0
.L080BB9F0:
	adds r5, r0, #0
	str r5, [sp, #0x80]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x7c]
	cmp r2, r7
	beq .L080BBA18
.L080BB9FE:
	cmp r3, #0
	beq .L080BBA0E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BBA0E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x7c]
	cmp r2, r0
	bne .L080BB9FE
.L080BBA18:
	adds r5, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L080BBA34
	cmp r5, #0
	beq .L080BBA30
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BBA30:
	adds r5, #0x10
	b .L080BBA56
.L080BBA34:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BBA54
.L080BBA3C:
	cmp r2, #0
	beq .L080BBA4C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BBA4C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BBA3C
.L080BBA54:
	adds r5, r2, #0
.L080BBA56:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BBA66
.L080BBA60:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BBA60
.L080BBA66:
	cmp r0, #0
	beq .L080BBA6E
	bl free
.L080BBA6E:
	ldr r0, [sp, #0x80]
	add r0, sb
	ldr r7, [sp, #0x80]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BBA7A:
	mov r0, r8
	bl func_08008910
	adds r6, r0, #0
	ldr r0, [sp, #0x68]
	add r0, r8
	ldr r4, .L080BBAD8 @ =0x000007EC
	adds r0, r0, r4
	ldr r5, [r0]
	ldr r0, [sp, #0x6c]
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r1, [sp, #0x68]
	add r1, r8
	adds r1, r1, r4
	ldr r0, [r1]
	movs r3, #0
	cmp r0, #0
	beq .L080BBAA6
	ldrh r3, [r1, #4]
.L080BBAA6:
	lsls r2, r2, #5
	ldr r1, .L080BBADC @ =0x05000200
	adds r2, r2, r1
	mov r0, sp
	adds r1, r5, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BBAE0
	cmp r1, #0
	beq .L080BBACE
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BBACE:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BBBA6
	.align 2, 0
.L080BBAD8: .4byte 0x000007EC
.L080BBADC: .4byte 0x05000200
.L080BBAE0:
	str r1, [sp, #0x7c]
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
	bhs .L080BBAFA
	adds r0, r1, #0
.L080BBAFA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BBB18
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BBB1C
	mov r0, sb
	bl func_080D3BC0
	b .L080BBB1C
.L080BBB18:
	movs r0, #0
	mov sb, r0
.L080BBB1C:
	adds r5, r0, #0
	str r5, [sp, #0x80]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x7c]
	cmp r2, r7
	beq .L080BBB44
.L080BBB2A:
	cmp r3, #0
	beq .L080BBB3A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BBB3A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x7c]
	cmp r2, r0
	bne .L080BBB2A
.L080BBB44:
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080BBB60
	cmp r5, #0
	beq .L080BBB5C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BBB5C:
	adds r5, #0x10
	b .L080BBB82
.L080BBB60:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BBB80
.L080BBB68:
	cmp r2, #0
	beq .L080BBB78
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BBB78:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BBB68
.L080BBB80:
	adds r5, r2, #0
.L080BBB82:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BBB92
.L080BBB8C:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BBB8C
.L080BBB92:
	cmp r0, #0
	beq .L080BBB9A
	bl free
.L080BBB9A:
	ldr r0, [sp, #0x80]
	add r0, sb
	ldr r7, [sp, #0x80]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BBBA6:
	mov r0, r8
	bl func_08008920
	adds r5, r0, #0
	ldr r0, [sp, #0x68]
	add r0, r8
	ldr r1, .L080BBCF8 @ =0x000007DC
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r3, [sp, #0x68]
	add r3, r8
	adds r3, r3, r1
	ldr r0, [r3]
	movs r2, #0
	cmp r0, #0
	beq .L080BBBC8
	ldrh r2, [r3, #4]
.L080BBBC8:
	ldr r0, [sp, #0x74]
	ldr r3, [r0, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_0805E99C
	ldr r1, [sp, #0x68]
	adds r1, #0x20
	str r1, [sp, #0x68]
	ldr r2, [sp, #0x6c]
	adds r2, #8
	str r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	adds r3, #0xf
	str r3, [sp, #0x70]
	ldr r4, [sp, #0x74]
	adds r4, #4
	str r4, [sp, #0x74]
	ldr r5, [sp, #0x78]
	adds r5, #0x20
	str r5, [sp, #0x78]
	ldr r7, [sp, #0x54]
	adds r7, #1
	str r7, [sp, #0x54]
	cmp r7, #4
	bgt .L080BBBFE
	b .L080BB91A
.L080BBBFE:
	movs r0, #0
	str r0, [sp, #0x54]
.L080BBC02:
	ldr r2, [sp, #0x54]
	lsls r1, r2, #2
	ldr r0, .L080BBCFC @ =0x00000B48
	add r0, r8
	adds r6, r0, r1
	movs r0, #0xb4
	lsls r0, r0, #4
	add r0, r8
	adds r5, r0, r1
	ldr r0, [r6]
	ldr r3, [r5]
	str r1, [sp, #0x5c]
	cmp r0, r3
	beq .L080BBC40
	adds r0, r1, #0
	add r0, r8
	ldr r4, .L080BBD00 @ =0x0000087C
	adds r0, r0, r4
	ldr r4, [r0]
	mov r0, r8
	movs r1, #1
	bl func_080BB890
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	ldr r0, [r5]
	str r0, [r6]
.L080BBC40:
	ldr r0, [sp, #0x5c]
	add r0, r8
	ldr r5, .L080BBD00 @ =0x0000087C
	adds r0, r0, r5
	ldr r0, [r0]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	ldr r7, [sp, #0x54]
	lsls r7, r7, #5
	str r7, [sp, #0x64]
	ldr r1, [sp, #0x54]
	adds r1, #1
	str r1, [sp, #0x58]
	ldr r1, [sp, #0x5c]
	add r1, r8
	cmp r0, #0
	blt .L080BBC66
	b .L080BBF12
.L080BBC66:
	adds r5, r7, #0
	add r5, r8
	ldr r2, .L080BBD04 @ =0x0000088C
	adds r4, r5, r2
	ldr r3, .L080BBD00 @ =0x0000087C
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r0, sp
	ldm r0!, {r1, r2, r7}
	stm r4!, {r1, r2, r7}
	ldm r0!, {r1, r3, r7}
	stm r4!, {r1, r3, r7}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	mov r0, r8
	bl func_08008910
	ldr r4, .L080BBD08 @ =0x00000894
	adds r5, r5, r4
	ldr r1, [r5]
	movs r3, #0
	cmp r1, #0
	beq .L080BBCB6
	ldrh r3, [r5, #4]
.L080BBCB6:
	adds r6, r0, #0
	ldr r5, [sp, #0x54]
	lsls r0, r5, #4
	subs r0, r0, r5
	ldr r7, [sp, #0x50]
	adds r2, r0, r7
	lsls r0, r2, #5
	ldr r4, .L080BBD0C @ =0x06010960
	adds r2, r0, r4
	mov r0, sp
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BBD10
	cmp r1, #0
	beq .L080BBCE8
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BBCE8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r3, [sp, #0x54]
	lsls r3, r3, #3
	str r3, [sp, #0x60]
	b .L080BBDDE
	.align 2, 0
.L080BBCF8: .4byte 0x000007DC
.L080BBCFC: .4byte 0x00000B48
.L080BBD00: .4byte 0x0000087C
.L080BBD04: .4byte 0x0000088C
.L080BBD08: .4byte 0x00000894
.L080BBD0C: .4byte 0x06010960
.L080BBD10:
	str r1, [sp, #0x7c]
	movs r0, #1
	str r0, [sp, #0x34]
	ldr r0, [r6]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x30]
	add r1, sp, #0x34
	add r0, sp, #0x30
	cmp r4, #1
	bhs .L080BBD2A
	adds r0, r1, #0
.L080BBD2A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BBD48
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BBD4C
	mov r0, sb
	bl func_080D3BC0
	b .L080BBD4C
.L080BBD48:
	movs r0, #0
	mov sb, r0
.L080BBD4C:
	adds r5, r0, #0
	str r5, [sp, #0x80]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x54]
	lsls r5, r5, #3
	str r5, [sp, #0x60]
	ldr r7, [sp, #0x54]
	adds r7, #1
	str r7, [sp, #0x58]
	b .L080BBD76
.L080BBD62:
	cmp r3, #0
	beq .L080BBD72
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BBD72:
	adds r2, #0x10
	adds r3, #0x10
.L080BBD76:
	ldr r0, [sp, #0x7c]
	cmp r2, r0
	bne .L080BBD62
	adds r5, r3, #0
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L080BBD98
	cmp r5, #0
	beq .L080BBD94
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BBD94:
	adds r5, #0x10
	b .L080BBDBA
.L080BBD98:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BBDB8
.L080BBDA0:
	cmp r2, #0
	beq .L080BBDB0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BBDB0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BBDA0
.L080BBDB8:
	adds r5, r2, #0
.L080BBDBA:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BBDCA
.L080BBDC4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BBDC4
.L080BBDCA:
	cmp r0, #0
	beq .L080BBDD2
	bl free
.L080BBDD2:
	ldr r0, [sp, #0x80]
	add r0, sb
	ldr r7, [sp, #0x80]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BBDDE:
	mov r0, r8
	bl func_08008910
	adds r6, r0, #0
	ldr r0, [sp, #0x64]
	add r0, r8
	ldr r4, .L080BBE40 @ =0x0000089C
	adds r0, r0, r4
	ldr r5, [r0]
	ldr r0, [sp, #0x60]
	add r0, r8
	ldr r1, .L080BBE44 @ =0x00000764
	adds r0, r0, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r1, [sp, #0x64]
	add r1, r8
	adds r1, r1, r4
	ldr r0, [r1]
	movs r3, #0
	cmp r0, #0
	beq .L080BBE10
	ldrh r3, [r1, #4]
.L080BBE10:
	lsls r2, r2, #5
	ldr r4, .L080BBE48 @ =0x05000200
	adds r2, r2, r4
	mov r0, sp
	adds r1, r5, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BBE4C
	cmp r1, #0
	beq .L080BBE38
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BBE38:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BBF12
	.align 2, 0
.L080BBE40: .4byte 0x0000089C
.L080BBE44: .4byte 0x00000764
.L080BBE48: .4byte 0x05000200
.L080BBE4C:
	str r1, [sp, #0x7c]
	movs r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [r6]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r1, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs .L080BBE66
	adds r0, r1, #0
.L080BBE66:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BBE84
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BBE88
	mov r0, sb
	bl func_080D3BC0
	b .L080BBE88
.L080BBE84:
	movs r0, #0
	mov sb, r0
.L080BBE88:
	adds r5, r0, #0
	str r5, [sp, #0x80]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x7c]
	cmp r2, r4
	beq .L080BBEB0
.L080BBE96:
	cmp r3, #0
	beq .L080BBEA6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BBEA6:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x7c]
	cmp r2, r5
	bne .L080BBE96
.L080BBEB0:
	adds r5, r3, #0
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L080BBECC
	cmp r5, #0
	beq .L080BBEC8
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BBEC8:
	adds r5, #0x10
	b .L080BBEEE
.L080BBECC:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BBEEC
.L080BBED4:
	cmp r2, #0
	beq .L080BBEE4
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BBEE4:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BBED4
.L080BBEEC:
	adds r5, r2, #0
.L080BBEEE:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BBEFE
.L080BBEF8:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BBEF8
.L080BBEFE:
	cmp r0, #0
	beq .L080BBF06
	bl free
.L080BBF06:
	ldr r0, [sp, #0x80]
	add r0, sb
	ldr r1, [sp, #0x80]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BBF12:
	mov r0, r8
	bl func_08008920
	adds r6, r0, #0
	ldr r0, [sp, #0x64]
	add r0, r8
	ldr r1, .L080BC010 @ =0x0000088C
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r5, [sp, #0x64]
	add r5, r8
	adds r5, r5, r1
	ldr r0, [r5]
	movs r2, #0
	cmp r0, #0
	beq .L080BBF34
	ldrh r2, [r5, #4]
.L080BBF34:
	ldr r0, [sp, #0x5c]
	add r0, r8
	ldr r3, .L080BC014 @ =0x00000884
	adds r0, r0, r3
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_0805E99C
	ldr r4, [sp, #0x58]
	str r4, [sp, #0x54]
	cmp r4, #1
	bgt .L080BBF50
	b .L080BBC02
.L080BBF50:
	ldr r6, .L080BC018 @ =0x00000B54
	add r6, r8
	movs r5, #0xb5
	lsls r5, r5, #4
	add r5, r8
	ldr r0, [r6]
	ldr r3, [r5]
	cmp r0, r3
	beq .L080BBF82
	ldr r0, .L080BC01C @ =0x000008CC
	add r0, r8
	ldr r4, [r0]
	mov r0, r8
	movs r1, #2
	movs r2, #0
	bl func_080BB890
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	ldr r0, [r5]
	str r0, [r6]
.L080BBF82:
	ldr r5, .L080BC01C @ =0x000008CC
	add r5, r8
	ldr r0, [r5]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080BBF94
	b .L080BC21A
.L080BBF94:
	ldr r4, .L080BC020 @ =0x000008D4
	add r4, r8
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r0, sp
	ldm r0!, {r1, r5, r7}
	stm r4!, {r1, r5, r7}
	ldm r0!, {r2, r3, r5}
	stm r4!, {r2, r3, r5}
	ldm r0!, {r1, r7}
	stm r4!, {r1, r7}
	mov r0, r8
	bl func_08008910
	ldr r2, .L080BC024 @ =0x000008DC
	add r2, r8
	ldr r1, [r2]
	movs r3, #0
	cmp r1, #0
	beq .L080BBFDC
	ldrh r3, [r2, #4]
.L080BBFDC:
	adds r6, r0, #0
	ldr r4, [sp, #0x50]
	lsls r2, r4, #5
	ldr r5, .L080BC028 @ =0x06010D20
	adds r2, r2, r5
	mov r0, sp
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BC02C
	cmp r1, #0
	beq .L080BC006
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC006:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BC0F2
	.align 2, 0
.L080BC010: .4byte 0x0000088C
.L080BC014: .4byte 0x00000884
.L080BC018: .4byte 0x00000B54
.L080BC01C: .4byte 0x000008CC
.L080BC020: .4byte 0x000008D4
.L080BC024: .4byte 0x000008DC
.L080BC028: .4byte 0x06010D20
.L080BC02C:
	str r1, [sp, #0x7c]
	movs r0, #1
	str r0, [sp, #0x44]
	ldr r0, [r6]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x40]
	add r1, sp, #0x44
	add r0, sp, #0x40
	cmp r4, #1
	bhs .L080BC046
	adds r0, r1, #0
.L080BC046:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BC064
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BC068
	mov r0, sb
	bl func_080D3BC0
	b .L080BC068
.L080BC064:
	movs r0, #0
	mov sb, r0
.L080BC068:
	adds r5, r0, #0
	str r5, [sp, #0x80]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x7c]
	cmp r2, r5
	beq .L080BC090
.L080BC076:
	cmp r3, #0
	beq .L080BC086
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC086:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x7c]
	cmp r2, r7
	bne .L080BC076
.L080BC090:
	adds r5, r3, #0
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne .L080BC0AC
	cmp r5, #0
	beq .L080BC0A8
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BC0A8:
	adds r5, #0x10
	b .L080BC0CE
.L080BC0AC:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BC0CC
.L080BC0B4:
	cmp r2, #0
	beq .L080BC0C4
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC0C4:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BC0B4
.L080BC0CC:
	adds r5, r2, #0
.L080BC0CE:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BC0DE
.L080BC0D8:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BC0D8
.L080BC0DE:
	cmp r0, #0
	beq .L080BC0E6
	bl free
.L080BC0E6:
	ldr r0, [sp, #0x80]
	add r0, sb
	ldr r7, [sp, #0x80]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BC0F2:
	mov r0, r8
	bl func_08008910
	adds r5, r0, #0
	ldr r4, .L080BC148 @ =0x000008E4
	add r4, r8
	ldr r7, [r4]
	ldr r0, .L080BC14C @ =0x00000774
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080BC116
	ldrh r3, [r4, #4]
.L080BC116:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r0, .L080BC150 @ =0x05000200
	adds r2, r2, r0
	mov r0, sp
	adds r1, r7, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BC154
	cmp r1, #0
	beq .L080BC140
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BC140:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BC21A
	.align 2, 0
.L080BC148: .4byte 0x000008E4
.L080BC14C: .4byte 0x00000774
.L080BC150: .4byte 0x05000200
.L080BC154:
	str r1, [sp, #0x7c]
	movs r0, #1
	str r0, [sp, #0x4c]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x48]
	add r1, sp, #0x4c
	add r0, sp, #0x48
	cmp r4, #1
	bhs .L080BC16E
	adds r0, r1, #0
.L080BC16E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BC18C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BC190
	mov r0, sb
	bl func_080D3BC0
	b .L080BC190
.L080BC18C:
	movs r0, #0
	mov sb, r0
.L080BC190:
	adds r5, r0, #0
	str r5, [sp, #0x80]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x7c]
	cmp r2, r7
	beq .L080BC1B8
.L080BC19E:
	cmp r3, #0
	beq .L080BC1AE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC1AE:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x7c]
	cmp r2, r0
	bne .L080BC19E
.L080BC1B8:
	adds r5, r3, #0
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne .L080BC1D4
	cmp r5, #0
	beq .L080BC1D0
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BC1D0:
	adds r5, #0x10
	b .L080BC1F6
.L080BC1D4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BC1F4
.L080BC1DC:
	cmp r2, #0
	beq .L080BC1EC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC1EC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BC1DC
.L080BC1F4:
	adds r5, r2, #0
.L080BC1F6:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BC206
.L080BC200:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BC200
.L080BC206:
	cmp r0, #0
	beq .L080BC20E
	bl free
.L080BC20E:
	ldr r0, [sp, #0x80]
	add r0, sb
	ldr r7, [sp, #0x80]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BC21A:
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	ldr r3, .L080BC250 @ =0x000008D4
	add r3, r8
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080BC232
	ldrh r2, [r3, #4]
.L080BC232:
	movs r0, #0x8d
	lsls r0, r0, #4
	add r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080BC250: .4byte 0x000008D4

	thumb_func_start func_080BC254
func_080BC254: @ 0x080BC254
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r3, #0
	movs r3, #0
	lsls r4, r1, #1
	cmp r3, r4
	bge .L080BC278
	ldr r0, .L080BC284 @ =0x00000B35
	adds r5, r7, r0
	lsls r0, r2, #1
	adds r2, r0, r6
.L080BC26A:
	adds r1, r5, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r3, #1
	cmp r3, r4
	blt .L080BC26A
.L080BC278:
	ldr r1, .L080BC284 @ =0x00000B35
	adds r0, r7, r1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080BC284: .4byte 0x00000B35

	thumb_func_start func_080BC288
func_080BC288: @ 0x080BC288
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	mov r8, r0
	str r1, [sp, #0x88]
	mov r0, sp
	bl func_08007874
	movs r4, #0
	str r4, [sp, #4]
	add r5, sp, #8
	adds r0, r5, #0
	bl func_08007874
	str r4, [r5, #4]
	ldr r1, [sp, #4]
	mov r0, sp
	bl func_08007C28
	mov r0, sp
	movs r1, #2
	bl func_08007B54
	str r0, [sp, #4]
	ldr r1, [sp, #0xc]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #3
	bl func_08007B54
	str r0, [sp, #0xc]
	add r4, sp, #0x10
	ldr r1, .L080BC3C8 @ =gUnk_08107D6C
	adds r0, r4, #0
	movs r2, #0x40
	bl memcpy
	movs r0, #0x14
	bl __builtin_new
	ldr r7, .L080BC3CC @ =0x0000077C
	add r7, r8
	ldr r1, [r7]
	movs r2, #0x80
	lsls r2, r2, #1
	mov sb, r2
	movs r2, #0
	mov r3, sb
	bl func_0805E824
	adds r5, r0, #0
	ldr r6, .L080BC3D0 @ =0x00000AA4
	add r6, r8
	ldr r0, [r6]
	cmp r5, r0
	beq .L080BC306
	bl __builtin_delete
.L080BC306:
	str r5, [r6]
	movs r0, #0x14
	bl __builtin_new
	ldr r1, [r7]
	movs r2, #0
	mov r3, sb
	bl func_0805E824
	adds r5, r0, #0
	ldr r4, .L080BC3D4 @ =0x00000AC8
	add r4, r8
	ldr r0, [r4]
	cmp r5, r0
	beq .L080BC328
	bl __builtin_delete
.L080BC328:
	str r5, [r4]
	ldr r0, [r6]
	ldr r1, .L080BC3D8 @ =0x0000091A
	bl func_0805E860
	ldr r0, [r4]
	ldr r1, .L080BC3DC @ =0x0000091B
	bl func_0805E860
	ldr r4, .L080BC3E0 @ =0x00000AA8
	add r4, r8
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r5, sp, #0x50
	adds r0, r5, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl memcpy
	adds r0, r5, #0
	ldm r0!, {r1, r3, r7}
	stm r4!, {r1, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r4!, {r2, r3, r7}
	ldm r0!, {r1, r2}
	stm r4!, {r1, r2}
	mov r0, r8
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0xab
	lsls r4, r4, #4
	add r4, r8
	ldr r7, [r4]
	ldr r1, [sp, #4]
	mov r0, sp
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080BC394
	ldrh r3, [r4, #4]
.L080BC394:
	lsls r2, r2, #5
	ldr r4, .L080BC3E4 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x50
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x50
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BC3E8
	cmp r1, #0
	beq .L080BC3BE
	adds r0, r1, #0
	add r1, sp, #0x50
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC3BE:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BC4AE
	.align 2, 0
.L080BC3C8: .4byte gUnk_08107D6C
.L080BC3CC: .4byte 0x0000077C
.L080BC3D0: .4byte 0x00000AA4
.L080BC3D4: .4byte 0x00000AC8
.L080BC3D8: .4byte 0x0000091A
.L080BC3DC: .4byte 0x0000091B
.L080BC3E0: .4byte 0x00000AA8
.L080BC3E4: .4byte 0x06010000
.L080BC3E8:
	str r1, [sp, #0x8c]
	movs r0, #1
	str r0, [sp, #0x74]
	ldr r0, [r6]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x70]
	add r1, sp, #0x74
	add r0, sp, #0x70
	cmp r4, #1
	bhs .L080BC402
	adds r0, r1, #0
.L080BC402:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BC420
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BC424
	mov r0, sb
	bl func_080D3BC0
	b .L080BC424
.L080BC420:
	movs r0, #0
	mov sb, r0
.L080BC424:
	adds r5, r0, #0
	str r5, [sp, #0x90]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x8c]
	cmp r2, r5
	beq .L080BC44C
.L080BC432:
	cmp r3, #0
	beq .L080BC442
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC442:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x8c]
	cmp r2, r7
	bne .L080BC432
.L080BC44C:
	adds r5, r3, #0
	ldr r0, [sp, #0x74]
	cmp r0, #1
	bne .L080BC468
	cmp r5, #0
	beq .L080BC464
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BC464:
	adds r5, #0x10
	b .L080BC48A
.L080BC468:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BC488
.L080BC470:
	cmp r2, #0
	beq .L080BC480
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC480:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BC470
.L080BC488:
	adds r5, r2, #0
.L080BC48A:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BC49A
.L080BC494:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BC494
.L080BC49A:
	cmp r0, #0
	beq .L080BC4A2
	bl free
.L080BC4A2:
	ldr r0, [sp, #0x90]
	add r0, sb
	ldr r7, [sp, #0x90]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BC4AE:
	mov r0, r8
	bl func_08008910
	adds r5, r0, #0
	ldr r4, .L080BC504 @ =0x00000AB8
	add r4, r8
	ldr r7, [r4]
	ldr r0, [sp, #0x88]
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080BC4D0
	ldrh r3, [r4, #4]
.L080BC4D0:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r1, .L080BC508 @ =0x05000200
	adds r2, r2, r1
	add r0, sp, #0x50
	adds r1, r7, #0
	bl func_08008F0C
	add r2, sp, #0x50
	mov sl, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BC50C
	cmp r1, #0
	beq .L080BC4FC
	adds r0, r1, #0
	add r1, sp, #0x50
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080BC4FC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BC5CE
	.align 2, 0
.L080BC504: .4byte 0x00000AB8
.L080BC508: .4byte 0x05000200
.L080BC50C:
	str r1, [sp, #0x8c]
	movs r0, #1
	str r0, [sp, #0x7c]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x78]
	add r1, sp, #0x7c
	add r0, sp, #0x78
	cmp r4, #1
	bhs .L080BC526
	adds r0, r1, #0
.L080BC526:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BC544
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BC548
	mov r0, sb
	bl func_080D3BC0
	b .L080BC548
.L080BC544:
	movs r0, #0
	mov sb, r0
.L080BC548:
	adds r5, r0, #0
	str r5, [sp, #0x90]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080BC566
.L080BC552:
	cmp r3, #0
	beq .L080BC562
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC562:
	adds r2, #0x10
	adds r3, #0x10
.L080BC566:
	ldr r0, [sp, #0x8c]
	cmp r2, r0
	bne .L080BC552
	adds r5, r3, #0
	ldr r0, [sp, #0x7c]
	cmp r0, #1
	bne .L080BC588
	cmp r5, #0
	beq .L080BC584
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080BC584:
	adds r5, #0x10
	b .L080BC5AA
.L080BC588:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080BC5A8
.L080BC590:
	cmp r2, #0
	beq .L080BC5A0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC5A0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BC590
.L080BC5A8:
	adds r5, r2, #0
.L080BC5AA:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BC5BA
.L080BC5B4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BC5B4
.L080BC5BA:
	cmp r0, #0
	beq .L080BC5C2
	bl free
.L080BC5C2:
	ldr r0, [sp, #0x90]
	add r0, sb
	ldr r7, [sp, #0x90]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080BC5CE:
	ldr r5, .L080BC65C @ =0x00000ACC
	add r5, r8
	ldr r0, .L080BC660 @ =0x00000AC8
	add r0, r8
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	ldm r4!, {r0, r1, r2}
	stm r5!, {r0, r1, r2}
	ldm r4!, {r0, r3, r7}
	stm r5!, {r0, r3, r7}
	ldm r4!, {r1, r2}
	stm r5!, {r1, r2}
	mov r0, r8
	bl func_08008910
	adds r5, r0, #0
	ldr r4, .L080BC664 @ =0x00000AD4
	add r4, r8
	ldr r7, [r4]
	ldr r1, [sp, #0xc]
	add r0, sp, #8
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080BC628
	ldrh r3, [r4, #4]
.L080BC628:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r4, .L080BC668 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x50
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x50
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080BC66C
	cmp r1, #0
	beq .L080BC654
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC654:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080BC734
	.align 2, 0
.L080BC65C: .4byte 0x00000ACC
.L080BC660: .4byte 0x00000AC8
.L080BC664: .4byte 0x00000AD4
.L080BC668: .4byte 0x06010000
.L080BC66C:
	str r1, [sp, #0x8c]
	movs r0, #1
	add r1, sp, #0x84
	str r0, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0x8c]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0x80
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080BC688
	adds r0, r1, #0
.L080BC688:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080BC6A6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080BC6AA
	mov r0, sb
	bl func_080D3BC0
	b .L080BC6AA
.L080BC6A6:
	movs r0, #0
	mov sb, r0
.L080BC6AA:
	adds r4, r0, #0
	str r4, [sp, #0x94]
	ldr r2, [r6]
	adds r3, r4, #0
	ldr r5, [sp, #0x8c]
	cmp r2, r5
	beq .L080BC6D2
.L080BC6B8:
	cmp r3, #0
	beq .L080BC6C8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC6C8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x8c]
	cmp r2, r7
	bne .L080BC6B8
.L080BC6D2:
	adds r4, r3, #0
	ldr r1, [sp, #0x84]
	cmp r1, #1
	bne .L080BC6EE
	cmp r4, #0
	beq .L080BC6EA
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080BC6EA:
	adds r4, #0x10
	b .L080BC710
.L080BC6EE:
	adds r3, r1, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080BC70E
.L080BC6F6:
	cmp r2, #0
	beq .L080BC706
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080BC706:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080BC6F6
.L080BC70E:
	adds r4, r2, #0
.L080BC710:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080BC720
.L080BC71A:
	adds r1, #0x10
	cmp r1, r2
	bne .L080BC71A
.L080BC720:
	cmp r0, #0
	beq .L080BC728
	bl free
.L080BC728:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r7, [sp, #0x94]
	str r7, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L080BC734:
	movs r7, #0
	ldr r5, .L080BC7D0 @ =0x00000AEC
	add r5, r8
	ldr r6, .L080BC7D4 @ =0xFFFFFE8A
	add r6, r8
	movs r0, #0
	mov sb, r0
	movs r1, #0
	mov sl, r1
.L080BC746:
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	mov r2, sl
	strb r2, [r4, #0x10]
	strb r2, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r2, [r4, #0x18]
	ldr r0, [r5]
	cmp r4, r0
	beq .L080BC770
	bl __builtin_delete
.L080BC770:
	str r4, [r5]
	cmp r7, #7
	bhi .L080BC7DC
	lsls r1, r7, #3
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x10
	ldr r0, [r0]
	strh r0, [r4]
	add r0, sp, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	strh r0, [r4, #2]
	ldr r1, [sp, #0xc]
	add r0, sp, #8
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r4, [r5]
	ldr r3, [sp, #0x88]
	ldr r1, [r3, #4]
	adds r0, r3, #0
	bl func_080074C0
	strh r0, [r4, #4]
	ldr r1, [r5]
	movs r0, #2
	strh r0, [r1, #8]
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	ldr r3, .L080BC7D8 @ =0x00000ACC
	add r3, r8
	ldr r1, [r3]
	movs r2, #0
	mov r0, sb
	add r0, r8
	cmp r1, #0
	beq .L080BC7C2
	ldrh r2, [r3, #4]
.L080BC7C2:
	ldr r3, .L080BC7D0 @ =0x00000AEC
	adds r0, r0, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	b .L080BC83A
	.align 2, 0
.L080BC7D0: .4byte 0x00000AEC
.L080BC7D4: .4byte 0xFFFFFE8A
.L080BC7D8: .4byte 0x00000ACC
.L080BC7DC:
	ldrh r0, [r6]
	lsrs r0, r0, #8
	strh r0, [r4]
	ldrh r0, [r6, #2]
	lsrs r0, r0, #8
	strh r0, [r4, #2]
	ldr r1, [sp, #4]
	mov r0, sp
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r4, [r5]
	ldr r0, [sp, #0x88]
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	ldr r1, [r5]
	ldrh r0, [r6]
	lsrs r0, r0, #8
	strh r0, [r1]
	ldr r1, [r5]
	ldrh r0, [r6, #2]
	lsrs r0, r0, #8
	strh r0, [r1, #2]
	ldr r1, [r5]
	ldrb r0, [r6, #0xb]
	strh r0, [r1, #8]
	mov r0, r8
	bl func_08008920
	adds r4, r0, #0
	ldr r3, .L080BC890 @ =0x00000AA8
	add r3, r8
	ldr r1, [r3]
	movs r2, #0
	mov r0, sb
	add r0, r8
	cmp r1, #0
	beq .L080BC82E
	ldrh r2, [r3, #4]
.L080BC82E:
	ldr r3, .L080BC894 @ =0x00000AEC
	adds r0, r0, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080BC83A:
	ldm r5!, {r1}
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r6, #0x40
	movs r4, #4
	add sb, r4
	adds r7, #1
	cmp r7, #9
	bhi .L080BC84E
	b .L080BC746
.L080BC84E:
	ldr r1, [sp, #0xc]
	add r0, sp, #8
	bl func_08007C28
	add r0, sp, #8
	movs r1, #2
	bl func_080079E8
	ldr r1, [sp, #4]
	mov r0, sp
	bl func_08007C28
	mov r0, sp
	movs r1, #2
	bl func_080079E8
	ldr r5, [sp, #0x88]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_080073E0
	ldr r0, [sp, #0x88]
	movs r1, #2
	bl func_08007184
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080BC890: .4byte 0x00000AA8
.L080BC894: .4byte 0x00000AEC
