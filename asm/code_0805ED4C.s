	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_0805ED4C
func_0805ED4C: @ 0x0805ED4C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x18
	adds r4, r0, #0
	adds r5, r1, #0
	add r1, sp, #0x14
	movs r0, #0x1e
	movs r2, #1
	movs r3, #0
	mov r8, r3
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r4, #0
	bl func_080084DC
	ldr r0, .L0805EE20 @ =vtable_unk_080E79DC
	str r0, [r4, #4]
	str r5, [r4, #8]
	mov r0, r8
	str r0, [r4, #0xc]
	movs r0, #4
	bl __builtin_new
	adds r6, r0, #0
	add r0, sp, #0xc
	bl func_0800835C
	add r5, sp, #0x10
	adds r0, r5, #0
	bl func_0800770C
	ldr r0, [r4, #0xc]
	str r0, [sp]
	add r1, sp, #0xc
	str r1, [sp, #4]
	str r5, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl func_08050CC0
	str r0, [r4, #0x10]
	adds r0, r5, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	adds r0, r4, #0
	adds r0, #0x14
	movs r1, #1
	bl func_08008B54
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #0
	bl func_08008B54
	adds r0, r4, #0
	adds r0, #0x1c
	movs r1, #2
	bl func_08008B54
	ldr r2, .L0805EE24 @ =0x00006428
	adds r1, r4, r2
	ldr r0, .L0805EE28 @ =vtable_unk_080E79E8
	str r0, [r1]
	mov r3, r8
	str r3, [r1, #4]
	ldr r0, [r4, #0x10]
	movs r1, #0xb
	bl func_08050E98
	ldr r1, .L0805EE2C @ =0x00006420
	adds r0, r4, r1
	mov r2, r8
	strh r2, [r0]
	ldr r3, .L0805EE30 @ =0x00006422
	adds r0, r4, r3
	strh r2, [r0]
	ldr r0, .L0805EE34 @ =0x00006426
	adds r1, r4, r0
	movs r0, #2
	strh r0, [r1]
	ldr r1, .L0805EE38 @ =0x00006424
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, [r4, #8]
	ldr r2, .L0805EE3C @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800E4E0
	ldr r3, .L0805EE40 @ =0x0000642C
	adds r1, r4, r3
	str r0, [r1]
	adds r0, r4, #0
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L0805EE20: .4byte vtable_unk_080E79DC
.L0805EE24: .4byte 0x00006428
.L0805EE28: .4byte vtable_unk_080E79E8
.L0805EE2C: .4byte 0x00006420
.L0805EE30: .4byte 0x00006422
.L0805EE34: .4byte 0x00006426
.L0805EE38: .4byte 0x00006424
.L0805EE3C: .4byte 0x00001BD8
.L0805EE40: .4byte 0x0000642C

	thumb_func_start func_0805EE44
func_0805EE44: @ 0x0805EE44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	str r0, [sp, #0x30]
	adds r5, r1, #0
	movs r0, #0
	str r0, [sp, #0x34]
	movs r1, #0
	str r1, [sp, #0x38]
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
	ldr r2, [sp, #0x38]
	str r2, [r4]
	str r2, [r4, #4]
	ldr r0, .L0805EF00 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	adds r0, r5, #0
	bl func_0805FBB8
	adds r0, r5, #0
	adds r0, #0x18
	movs r1, #0x25
	bl func_08008B6C
	ldr r0, [sp, #4]
	ldr r1, .L0805EF04 @ =0x00000889
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
	ldr r3, .L0805EF08 @ =0x00006422
	adds r1, r5, r3
	movs r0, #4
	strh r0, [r1]
	mov r4, sp
	adds r4, #8
	str r4, [sp, #0x40]
	mov r7, sp
	adds r7, #0x28
	str r7, [sp, #0x44]
.L0805EED8:
	adds r0, r5, #0
	bl func_080087C8
	adds r0, r5, #0
	bl func_080088B8
	ldr r1, .L0805EF08 @ =0x00006422
	adds r0, r5, r1
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	bls .L0805EEF6
	b .L0805F59E
.L0805EEF6:
	lsls r0, r0, #2
	ldr r1, .L0805EF0C @ =.L0805EF10
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805EF00: .4byte vtable_unk_080E5B80
.L0805EF04: .4byte 0x00000889
.L0805EF08: .4byte 0x00006422
.L0805EF0C: .4byte .L0805EF10
.L0805EF10: @ jump table
	.4byte .L0805EF38 @ case 0
	.4byte .L0805EF64 @ case 1
	.4byte .L0805EF88 @ case 2
	.4byte .L0805EFB4 @ case 3
	.4byte .L0805EFF6 @ case 4
	.4byte .L0805F11C @ case 5
	.4byte .L0805F138 @ case 6
	.4byte .L0805F15C @ case 7
	.4byte .L0805F1FA @ case 8
	.4byte .L0805F58E @ case 9
.L0805EF38:
	ldr r0, [sp, #4]
	ldr r1, .L0805EF5C @ =0x00000889
	adds r0, #0xc
	movs r2, #2
	movs r3, #0
	bl func_0800934C
	adds r0, r5, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r2, .L0805EF60 @ =0x00006422
	adds r1, r5, r2
	b .L0805F090
	.align 2, 0
.L0805EF5C: .4byte 0x00000889
.L0805EF60: .4byte 0x00006422
.L0805EF64:
	ldr r3, [sp, #0x34]
	lsls r0, r3, #0x10
	ldr r4, .L0805EF80 @ =0xFFFF0000
	adds r0, r0, r4
	lsrs r7, r0, #0x10
	str r7, [sp, #0x34]
	cmp r0, #0
	blt .L0805EF76
	b .L0805F59E
.L0805EF76:
	ldr r0, .L0805EF84 @ =0x00006422
	adds r1, r5, r0
	movs r0, #3
	strh r0, [r1]
	b .L0805F59E
	.align 2, 0
.L0805EF80: .4byte 0xFFFF0000
.L0805EF84: .4byte 0x00006422
.L0805EF88:
	ldr r0, [sp, #4]
	ldr r1, .L0805EFAC @ =0x00000889
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
	ldr r2, .L0805EFB0 @ =0x00006422
	adds r1, r5, r2
	b .L0805F090
	.align 2, 0
.L0805EFAC: .4byte 0x00000889
.L0805EFB0: .4byte 0x00006422
.L0805EFB4:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0805EFC2
	b .L0805F59E
.L0805EFC2:
	ldr r3, .L0805EFE8 @ =0x00006422
	adds r0, r5, r3
	movs r1, #5
	strh r1, [r0]
	ldr r4, .L0805EFEC @ =0x00006420
	adds r0, r5, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #1
	beq .L0805EFE2
	cmp r0, #1
	blt .L0805EFF0
	cmp r0, #0xc
	bgt .L0805EFF0
	cmp r0, #0xb
	blt .L0805EFF0
.L0805EFE2:
	movs r0, #0x3c
	str r0, [sp, #0x34]
	b .L0805F59E
	.align 2, 0
.L0805EFE8: .4byte 0x00006422
.L0805EFEC: .4byte 0x00006420
.L0805EFF0:
	movs r1, #0
	str r1, [sp, #0x34]
	b .L0805F59E
.L0805EFF6:
	ldr r2, [sp, #0x34]
	lsls r0, r2, #0x10
	ldr r3, .L0805F030 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r4, r0, #0x10
	str r4, [sp, #0x34]
	cmp r0, #0
	blt .L0805F008
	b .L0805F59E
.L0805F008:
	ldr r7, .L0805F034 @ =0x00006422
	adds r1, r5, r7
	movs r2, #0
	movs r0, #6
	strh r0, [r1]
	ldr r1, .L0805F038 @ =0x00006426
	adds r0, r5, r1
	strh r2, [r0]
	ldr r2, .L0805F03C @ =0x00006420
	adds r0, r5, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0xd
	bhi .L0805F0FC
	lsls r0, r0, #2
	ldr r1, .L0805F040 @ =.L0805F044
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805F030: .4byte 0xFFFF0000
.L0805F034: .4byte 0x00006422
.L0805F038: .4byte 0x00006426
.L0805F03C: .4byte 0x00006420
.L0805F040: .4byte .L0805F044
.L0805F044: @ jump table
	.4byte .L0805F07C @ case 0
	.4byte .L0805F08C @ case 1
	.4byte .L0805F09C @ case 2
	.4byte .L0805F0FC @ case 3
	.4byte .L0805F0FC @ case 4
	.4byte .L0805F0FC @ case 5
	.4byte .L0805F0FC @ case 6
	.4byte .L0805F0FC @ case 7
	.4byte .L0805F0FC @ case 8
	.4byte .L0805F0AC @ case 9
	.4byte .L0805F0BC @ case 10
	.4byte .L0805F0CC @ case 11
	.4byte .L0805F0DC @ case 12
	.4byte .L0805F0EC @ case 13
.L0805F07C:
	ldr r4, .L0805F088 @ =0x00006424
	adds r1, r5, r4
	movs r0, #0
	strh r0, [r1]
	b .L0805F59E
	.align 2, 0
.L0805F088: .4byte 0x00006424
.L0805F08C:
	ldr r7, .L0805F098 @ =0x00006424
	adds r1, r5, r7
.L0805F090:
	movs r0, #4
	strh r0, [r1]
	b .L0805F59E
	.align 2, 0
.L0805F098: .4byte 0x00006424
.L0805F09C:
	ldr r0, .L0805F0A8 @ =0x00006424
	adds r1, r5, r0
	movs r0, #5
	strh r0, [r1]
	b .L0805F59E
	.align 2, 0
.L0805F0A8: .4byte 0x00006424
.L0805F0AC:
	ldr r2, .L0805F0B8 @ =0x00006424
	adds r1, r5, r2
	movs r0, #0xe
	strh r0, [r1]
	b .L0805F59E
	.align 2, 0
.L0805F0B8: .4byte 0x00006424
.L0805F0BC:
	ldr r3, .L0805F0C8 @ =0x00006424
	adds r1, r5, r3
	movs r0, #0x10
	strh r0, [r1]
	b .L0805F59E
	.align 2, 0
.L0805F0C8: .4byte 0x00006424
.L0805F0CC:
	ldr r4, .L0805F0D8 @ =0x00006424
	adds r1, r5, r4
	movs r0, #0x13
	strh r0, [r1]
	b .L0805F59E
	.align 2, 0
.L0805F0D8: .4byte 0x00006424
.L0805F0DC:
	ldr r7, .L0805F0E8 @ =0x00006424
	adds r1, r5, r7
	movs r0, #0x16
	strh r0, [r1]
	b .L0805F59E
	.align 2, 0
.L0805F0E8: .4byte 0x00006424
.L0805F0EC:
	ldr r0, .L0805F0F8 @ =0x00006424
	adds r1, r5, r0
	movs r0, #0x19
	strh r0, [r1]
	b .L0805F59E
	.align 2, 0
.L0805F0F8: .4byte 0x00006424
.L0805F0FC:
	movs r1, #0xb4
	str r1, [sp, #0x34]
	ldr r2, .L0805F114 @ =0x00006426
	adds r1, r5, r2
	movs r0, #2
	strh r0, [r1]
	ldr r3, .L0805F118 @ =0x00006422
	adds r1, r5, r3
	movs r0, #7
	strh r0, [r1]
	b .L0805F59E
	.align 2, 0
.L0805F114: .4byte 0x00006426
.L0805F118: .4byte 0x00006422
.L0805F11C:
	ldr r4, .L0805F130 @ =0x00006426
	adds r0, r5, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r0, #2
	beq .L0805F12A
	b .L0805F59E
.L0805F12A:
	ldr r0, .L0805F134 @ =0x00006422
	adds r1, r5, r0
	b .L0805F14E
	.align 2, 0
.L0805F130: .4byte 0x00006426
.L0805F134: .4byte 0x00006422
.L0805F138:
	ldr r1, [sp, #0x34]
	lsls r0, r1, #0x10
	ldr r2, .L0805F154 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0x34]
	cmp r0, #0
	blt .L0805F14A
	b .L0805F59E
.L0805F14A:
	ldr r4, .L0805F158 @ =0x00006422
	adds r1, r5, r4
.L0805F14E:
	movs r0, #8
	strh r0, [r1]
	b .L0805F59E
	.align 2, 0
.L0805F154: .4byte 0xFFFF0000
.L0805F158: .4byte 0x00006422
.L0805F15C:
	ldr r7, .L0805F19C @ =0x00006420
	adds r1, r5, r7
	ldrh r2, [r1]
	adds r0, r2, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xd
	bgt .L0805F1D4
	adds r0, r2, #0
	subs r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi .L0805F1A4
	ldr r0, [sp, #4]
	ldr r1, .L0805F1A0 @ =0x00000889
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
	b .L0805F1C2
	.align 2, 0
.L0805F19C: .4byte 0x00006420
.L0805F1A0: .4byte 0x00000889
.L0805F1A4:
	ldr r0, [sp, #4]
	ldr r1, .L0805F1CC @ =0x00000889
	adds r0, #0xc
	movs r2, #2
	movs r3, #0
	bl func_08009378
	adds r0, r5, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L0805F1C2:
	ldr r0, .L0805F1D0 @ =0x00006422
	adds r1, r5, r0
	movs r0, #9
	b .L0805F1F8
	.align 2, 0
.L0805F1CC: .4byte 0x00000889
.L0805F1D0: .4byte 0x00006422
.L0805F1D4:
	ldr r0, [sp, #4]
	ldr r1, .L0805F22C @ =0x00000889
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
	ldr r2, .L0805F230 @ =0x00006422
	adds r1, r5, r2
	movs r0, #0xa
.L0805F1F8:
	strh r0, [r1]
.L0805F1FA:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0805F208
	b .L0805F59E
.L0805F208:
	movs r3, #1
	rsbs r3, r3, #0
	mov sl, r3
	ldr r4, .L0805F234 @ =0x00006420
	adds r0, r5, r4
	ldrh r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc
	bls .L0805F220
	b .L0805F32E
.L0805F220:
	lsls r0, r0, #2
	ldr r1, .L0805F238 @ =.L0805F23C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805F22C: .4byte 0x00000889
.L0805F230: .4byte 0x00006422
.L0805F234: .4byte 0x00006420
.L0805F238: .4byte .L0805F23C
.L0805F23C: @ jump table
	.4byte .L0805F270 @ case 0
	.4byte .L0805F280 @ case 1
	.4byte .L0805F2BC @ case 2
	.4byte .L0805F2BC @ case 3
	.4byte .L0805F2BC @ case 4
	.4byte .L0805F2BC @ case 5
	.4byte .L0805F2BC @ case 6
	.4byte .L0805F2BC @ case 7
	.4byte .L0805F29C @ case 8
	.4byte .L0805F2DC @ case 9
	.4byte .L0805F2F8 @ case 10
	.4byte .L0805F318 @ case 11
	.4byte .L0805F280 @ case 12
.L0805F270:
	movs r7, #0
	mov sl, r7
	ldr r0, .L0805F27C @ =0x00006422
	adds r1, r5, r0
	b .L0805F2CE
	.align 2, 0
.L0805F27C: .4byte 0x00006422
.L0805F280:
	adds r0, r5, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0x92
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	ldr r4, .L0805F298 @ =0x00006422
	adds r1, r5, r4
	b .L0805F2CE
	.align 2, 0
.L0805F298: .4byte 0x00006422
.L0805F29C:
	adds r0, r5, #0
	bl func_08008918
	mov r2, sp
	movs r7, #0x82
	lsls r7, r7, #5
	adds r1, r7, #0
	strh r1, [r2]
	strh r1, [r0]
	ldr r0, .L0805F2B8 @ =0x00006422
	adds r1, r5, r0
	movs r0, #3
	strh r0, [r1]
	b .L0805F32E
	.align 2, 0
.L0805F2B8: .4byte 0x00006422
.L0805F2BC:
	ldr r1, .L0805F2D4 @ =0x00006420
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #2
	lsls r0, r0, #1
	mov sl, r0
	ldr r3, .L0805F2D8 @ =0x00006422
	adds r1, r5, r3
.L0805F2CE:
	movs r0, #1
	strh r0, [r1]
	b .L0805F32E
	.align 2, 0
.L0805F2D4: .4byte 0x00006420
.L0805F2D8: .4byte 0x00006422
.L0805F2DC:
	ldr r4, .L0805F2F0 @ =0x00006422
	adds r1, r5, r4
	movs r0, #3
	strh r0, [r1]
	ldr r7, .L0805F2F4 @ =0x00006420
	adds r0, r5, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	b .L0805F328
	.align 2, 0
.L0805F2F0: .4byte 0x00006422
.L0805F2F4: .4byte 0x00006420
.L0805F2F8:
	movs r2, #0x78
	str r2, [sp, #0x34]
	ldr r3, .L0805F310 @ =0x00006422
	adds r1, r5, r3
	movs r0, #2
	strh r0, [r1]
	ldr r4, .L0805F314 @ =0x00006420
	adds r0, r5, r4
	movs r7, #0
	ldrsh r0, [r0, r7]
	b .L0805F328
	.align 2, 0
.L0805F310: .4byte 0x00006422
.L0805F314: .4byte 0x00006420
.L0805F318:
	ldr r0, .L0805F380 @ =0x00006422
	adds r1, r5, r0
	movs r0, #1
	strh r0, [r1]
	ldr r1, .L0805F384 @ =0x00006420
	adds r0, r5, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
.L0805F328:
	subs r0, #3
	lsls r0, r0, #1
	mov sl, r0
.L0805F32E:
	movs r0, #1
	rsbs r0, r0, #0
	cmp sl, r0
	bne .L0805F338
	b .L0805F59E
.L0805F338:
	adds r0, r5, #0
	bl func_08008910
	adds r6, r0, #0
	mov r3, sl
	lsls r4, r3, #2
	adds r1, r4, r3
	lsls r1, r1, #8
	adds r1, r1, r5
	adds r1, #0x20
	add r0, sp, #8
	ldr r2, .L0805F388 @ =0x0600F000
	movs r3, #0xa0
	lsls r3, r3, #3
	bl func_08008F0C
	ldr r7, [sp, #0x40]
	str r7, [sp, #0x3c]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	str r4, [sp, #0x48]
	cmp r1, r0
	beq .L0805F38C
	cmp r1, #0
	beq .L0805F376
	adds r0, r1, #0
	adds r1, r7, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0805F376:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0805F460
	.align 2, 0
.L0805F380: .4byte 0x00006422
.L0805F384: .4byte 0x00006420
.L0805F388: .4byte 0x0600F000
.L0805F38C:
	str r1, [sp, #0x4c]
	movs r0, #1
	str r0, [sp, #0x1c]
	ldr r1, [r6]
	ldr r7, [sp, #0x4c]
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x18]
	add r2, sp, #0x1c
	add r0, sp, #0x18
	cmp r4, #1
	bhs .L0805F3A6
	adds r0, r2, #0
.L0805F3A6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805F3C6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805F3C2
	mov r0, sb
	bl func_080D3BC0
.L0805F3C2:
	ldr r1, [r6]
	b .L0805F3CA
.L0805F3C6:
	movs r0, #0
	mov sb, r0
.L0805F3CA:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov ip, r8
	ldr r0, [sp, #0x4c]
	cmp r2, r0
	beq .L0805F3F6
.L0805F3D8:
	mov r1, ip
	cmp r1, #0
	beq .L0805F3EA
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805F3EA:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	ldr r1, [sp, #0x4c]
	cmp r2, r1
	bne .L0805F3D8
.L0805F3F6:
	mov r4, ip
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne .L0805F412
	cmp r4, #0
	beq .L0805F40E
	adds r0, r4, #0
	ldr r1, [sp, #0x3c]
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805F40E:
	adds r4, #0x10
	b .L0805F43A
.L0805F412:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805F438
.L0805F41A:
	cmp r2, #0
	beq .L0805F42A
	adds r0, r2, #0
	ldr r1, [sp, #0x3c]
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805F42A:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L0805F41A
.L0805F438:
	adds r4, r2, #0
.L0805F43A:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0805F44A
.L0805F444:
	adds r0, #0x10
	cmp r0, r2
	bne .L0805F444
.L0805F44A:
	cmp r1, #0
	beq .L0805F454
	adds r0, r1, #0
	bl free
.L0805F454:
	mov r0, sb
	add r0, r8
	mov r2, r8
	str r2, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L0805F460:
	adds r0, r5, #0
	bl func_08008910
	adds r6, r0, #0
	ldr r1, [sp, #0x48]
	add r1, sl
	lsls r1, r1, #8
	adds r1, r1, r5
	movs r3, #0xa4
	lsls r3, r3, #3
	adds r1, r1, r3
	add r0, sp, #8
	ldr r2, .L0805F4A4 @ =0x0600E800
	subs r3, #0x20
	bl func_08008F0C
	ldr r4, [sp, #0x40]
	mov sl, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0805F4A8
	cmp r1, #0
	beq .L0805F49C
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805F49C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0805F57A
	.align 2, 0
.L0805F4A4: .4byte 0x0600E800
.L0805F4A8:
	str r1, [sp, #0x4c]
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r1, [r6]
	ldr r4, [sp, #0x4c]
	subs r0, r4, r1
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r2, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L0805F4C2
	adds r0, r2, #0
.L0805F4C2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805F4E2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805F4DE
	mov r0, sb
	bl func_080D3BC0
.L0805F4DE:
	ldr r1, [r6]
	b .L0805F4E6
.L0805F4E2:
	movs r0, #0
	mov sb, r0
.L0805F4E6:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov ip, r8
	ldr r7, [sp, #0x4c]
	cmp r2, r7
	beq .L0805F510
.L0805F4F4:
	mov r0, ip
	cmp r0, #0
	beq .L0805F504
	adds r1, r2, #0
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805F504:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	ldr r1, [sp, #0x4c]
	cmp r2, r1
	bne .L0805F4F4
.L0805F510:
	mov r4, ip
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L0805F52C
	cmp r4, #0
	beq .L0805F528
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805F528:
	adds r4, #0x10
	b .L0805F554
.L0805F52C:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805F552
.L0805F534:
	cmp r2, #0
	beq .L0805F544
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805F544:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L0805F534
.L0805F552:
	adds r4, r2, #0
.L0805F554:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0805F564
.L0805F55E:
	adds r0, #0x10
	cmp r0, r2
	bne .L0805F55E
.L0805F564:
	cmp r1, #0
	beq .L0805F56E
	adds r0, r1, #0
	bl free
.L0805F56E:
	mov r0, sb
	add r0, r8
	mov r2, r8
	str r2, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L0805F57A:
	adds r0, r5, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0xe2
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	b .L0805F59E
.L0805F58E:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0805F59E
	movs r4, #1
	str r4, [sp, #0x38]
.L0805F59E:
	adds r0, r5, #0
	bl func_0805F5F4
	ldr r7, [sp, #0x38]
	cmp r7, #0
	bne .L0805F5AC
	b .L0805EED8
.L0805F5AC:
	movs r0, #0
	str r0, [sp, #8]
	ldr r1, [sp, #0x40]
	str r1, [sp, #0x28]
	ldr r2, [sp, #0x44]
	str r0, [r2, #4]
	str r0, [r1]
	ldr r3, [sp, #0x30]
	str r0, [r3]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L0805F5D0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805F5D0:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L0805F5E2
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805F5E2:
	ldr r0, [sp, #0x30]
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0805F5F4
func_0805F5F4: @ 0x0805F5F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
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
	adds r1, #0x14
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L0805F646
	b .L0805FB9C
.L0805F646:
	lsls r0, r0, #2
	ldr r1, .L0805F650 @ =.L0805F654
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805F650: .4byte .L0805F654
.L0805F654: @ jump table
	.4byte .L0805F670 @ case 0
	.4byte .L0805FB9C @ case 1
	.4byte .L0805FB9C @ case 2
	.4byte .L0805F6A4 @ case 3
	.4byte .L0805FB9C @ case 4
	.4byte .L0805FB9C @ case 5
	.4byte .L0805FB9C @ case 6
.L0805F670:
	ldr r1, .L0805F690 @ =0x00006426
	adds r4, r7, r1
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne .L0805F694
	ldr r0, [r7, #0x10]
	bl func_08050E74
	ldr r0, [r7, #0x10]
	bl func_08050D5C
	movs r0, #3
	strh r0, [r4]
	b .L0805FB9C
	.align 2, 0
.L0805F690: .4byte 0x00006426
.L0805F694:
	cmp r0, #6
	bne .L0805F69E
	movs r0, #0
	strh r0, [r4]
	b .L0805FB9C
.L0805F69E:
	movs r0, #2
	strh r0, [r4]
	b .L0805FB9C
.L0805F6A4:
	ldr r3, .L0805F6BC @ =0x00006426
	adds r4, r7, r3
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #5
	bne .L0805F6C0
	ldr r0, [r7, #0x10]
	bl func_08050D74
	movs r0, #1
	strh r0, [r4]
	b .L0805FB9C
	.align 2, 0
.L0805F6BC: .4byte 0x00006426
.L0805F6C0:
	cmp r0, #6
	bne .L0805F6CC
	ldr r0, [r7, #0x10]
	bl func_08050D74
	b .L0805FB9C
.L0805F6CC:
	cmp r0, #3
	beq .L0805F6D2
	b .L0805FB9C
.L0805F6D2:
	movs r0, #5
	strh r0, [r4]
	ldr r2, .L0805F6F0 @ =0x00006424
	adds r0, r7, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0x19
	bls .L0805F6E4
	b .L0805FB9C
.L0805F6E4:
	lsls r0, r0, #2
	ldr r1, .L0805F6F4 @ =.L0805F6F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805F6F0: .4byte 0x00006424
.L0805F6F4: .4byte .L0805F6F8
.L0805F6F8: @ jump table
	.4byte .L0805F760 @ case 0
	.4byte .L0805F79C @ case 1
	.4byte .L0805F7D8 @ case 2
	.4byte .L0805F814 @ case 3
	.4byte .L0805F82C @ case 4
	.4byte .L0805F844 @ case 5
	.4byte .L0805F87C @ case 6
	.4byte .L0805F8B8 @ case 7
	.4byte .L0805FB9C @ case 8
	.4byte .L0805F8F4 @ case 9
	.4byte .L0805F930 @ case 10
	.4byte .L0805F96C @ case 11
	.4byte .L0805FB9C @ case 12
	.4byte .L0805FB9C @ case 13
	.4byte .L0805F984 @ case 14
	.4byte .L0805F9C0 @ case 15
	.4byte .L0805F9CC @ case 16
	.4byte .L0805FA08 @ case 17
	.4byte .L0805FA44 @ case 18
	.4byte .L0805FA5C @ case 19
	.4byte .L0805FA98 @ case 20
	.4byte .L0805FAD4 @ case 21
	.4byte .L0805FAEC @ case 22
	.4byte .L0805FB28 @ case 23
	.4byte .L0805FB64 @ case 24
	.4byte .L0805FB88 @ case 25
.L0805F760:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F788 @ =gUnk_080FB234
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F78C @ =gUnk_080FB23C
	ldr r3, .L0805F790 @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805F794 @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805F798 @ =0x00006424
	adds r1, r7, r2
	movs r0, #1
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805F788: .4byte gUnk_080FB234
.L0805F78C: .4byte gUnk_080FB23C
.L0805F790: .4byte 0x00006428
.L0805F794: .4byte 0x00006426
.L0805F798: .4byte 0x00006424
.L0805F79C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F7C4 @ =gUnk_080FB27C
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F7C8 @ =gUnk_080FB284
	ldr r3, .L0805F7CC @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805F7D0 @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805F7D4 @ =0x00006424
	adds r1, r7, r2
	movs r0, #2
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805F7C4: .4byte gUnk_080FB27C
.L0805F7C8: .4byte gUnk_080FB284
.L0805F7CC: .4byte 0x00006428
.L0805F7D0: .4byte 0x00006426
.L0805F7D4: .4byte 0x00006424
.L0805F7D8:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F800 @ =gUnk_080FB234
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F804 @ =gUnk_080FB2D0
	ldr r3, .L0805F808 @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805F80C @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805F810 @ =0x00006424
	adds r1, r7, r2
	movs r0, #3
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805F800: .4byte gUnk_080FB234
.L0805F804: .4byte gUnk_080FB2D0
.L0805F808: .4byte 0x00006428
.L0805F80C: .4byte 0x00006426
.L0805F810: .4byte 0x00006424
.L0805F814:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F824 @ =gUnk_080FB27C
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F828 @ =gUnk_080FB2F4
	b .L0805FB70
	.align 2, 0
.L0805F824: .4byte gUnk_080FB27C
.L0805F828: .4byte gUnk_080FB2F4
.L0805F82C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F83C @ =gUnk_080FB300
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F840 @ =gUnk_080FB308
	b .L0805FB70
	.align 2, 0
.L0805F83C: .4byte gUnk_080FB300
.L0805F840: .4byte gUnk_080FB308
.L0805F844:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F868 @ =gUnk_080FB234
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F86C @ =gUnk_080FB398
	ldr r3, .L0805F870 @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r1, .L0805F874 @ =0x00006426
	adds r0, r7, r1
	movs r1, #6
	strh r1, [r0]
	ldr r2, .L0805F878 @ =0x00006424
	adds r0, r7, r2
	strh r1, [r0]
	b .L0805FB9C
	.align 2, 0
.L0805F868: .4byte gUnk_080FB234
.L0805F86C: .4byte gUnk_080FB398
.L0805F870: .4byte 0x00006428
.L0805F874: .4byte 0x00006426
.L0805F878: .4byte 0x00006424
.L0805F87C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F8A4 @ =gUnk_080FB27C
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F8A8 @ =gUnk_080FB3CC
	ldr r3, .L0805F8AC @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805F8B0 @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805F8B4 @ =0x00006424
	adds r1, r7, r2
	movs r0, #7
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805F8A4: .4byte gUnk_080FB27C
.L0805F8A8: .4byte gUnk_080FB3CC
.L0805F8AC: .4byte 0x00006428
.L0805F8B0: .4byte 0x00006426
.L0805F8B4: .4byte 0x00006424
.L0805F8B8:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F8E0 @ =gUnk_080FB300
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F8E4 @ =gUnk_080FB420
	ldr r3, .L0805F8E8 @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805F8EC @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805F8F0 @ =0x00006424
	adds r1, r7, r2
	movs r0, #9
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805F8E0: .4byte gUnk_080FB300
.L0805F8E4: .4byte gUnk_080FB420
.L0805F8E8: .4byte 0x00006428
.L0805F8EC: .4byte 0x00006426
.L0805F8F0: .4byte 0x00006424
.L0805F8F4:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F91C @ =gUnk_080FB27C
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F920 @ =gUnk_080FB46C
	ldr r3, .L0805F924 @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805F928 @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805F92C @ =0x00006424
	adds r1, r7, r2
	movs r0, #0xa
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805F91C: .4byte gUnk_080FB27C
.L0805F920: .4byte gUnk_080FB46C
.L0805F924: .4byte 0x00006428
.L0805F928: .4byte 0x00006426
.L0805F92C: .4byte 0x00006424
.L0805F930:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F958 @ =gUnk_080FB300
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F95C @ =gUnk_080FB484
	ldr r3, .L0805F960 @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805F964 @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805F968 @ =0x00006424
	adds r1, r7, r2
	movs r0, #0xb
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805F958: .4byte gUnk_080FB300
.L0805F95C: .4byte gUnk_080FB484
.L0805F960: .4byte 0x00006428
.L0805F964: .4byte 0x00006426
.L0805F968: .4byte 0x00006424
.L0805F96C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F97C @ =gUnk_080FB234
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F980 @ =gUnk_080FB4D4
	b .L0805FB70
	.align 2, 0
.L0805F97C: .4byte gUnk_080FB234
.L0805F980: .4byte gUnk_080FB4D4
.L0805F984:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F9AC @ =gUnk_080FB51C
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F9B0 @ =gUnk_080FB520
	ldr r3, .L0805F9B4 @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805F9B8 @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805F9BC @ =0x00006424
	adds r1, r7, r2
	movs r0, #0xf
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805F9AC: .4byte gUnk_080FB51C
.L0805F9B0: .4byte gUnk_080FB520
.L0805F9B4: .4byte 0x00006428
.L0805F9B8: .4byte 0x00006426
.L0805F9BC: .4byte 0x00006424
.L0805F9C0:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F9C8 @ =gUnk_080FB534
	b .L0805FB70
	.align 2, 0
.L0805F9C8: .4byte gUnk_080FB534
.L0805F9CC:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F9F4 @ =gUnk_080FB53C
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805F9F8 @ =gUnk_080FB544
	ldr r3, .L0805F9FC @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805FA00 @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805FA04 @ =0x00006424
	adds r1, r7, r2
	movs r0, #0x11
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805F9F4: .4byte gUnk_080FB53C
.L0805F9F8: .4byte gUnk_080FB544
.L0805F9FC: .4byte 0x00006428
.L0805FA00: .4byte 0x00006426
.L0805FA04: .4byte 0x00006424
.L0805FA08:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FA30 @ =gUnk_080FB53C
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FA34 @ =gUnk_080FB578
	ldr r3, .L0805FA38 @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805FA3C @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805FA40 @ =0x00006424
	adds r1, r7, r2
	movs r0, #0x12
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805FA30: .4byte gUnk_080FB53C
.L0805FA34: .4byte gUnk_080FB578
.L0805FA38: .4byte 0x00006428
.L0805FA3C: .4byte 0x00006426
.L0805FA40: .4byte 0x00006424
.L0805FA44:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FA54 @ =gUnk_080FB53C
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FA58 @ =gUnk_080FB5D4
	b .L0805FB70
	.align 2, 0
.L0805FA54: .4byte gUnk_080FB53C
.L0805FA58: .4byte gUnk_080FB5D4
.L0805FA5C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FA84 @ =gUnk_080FB300
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FA88 @ =gUnk_080FB634
	ldr r3, .L0805FA8C @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805FA90 @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805FA94 @ =0x00006424
	adds r1, r7, r2
	movs r0, #0x14
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805FA84: .4byte gUnk_080FB300
.L0805FA88: .4byte gUnk_080FB634
.L0805FA8C: .4byte 0x00006428
.L0805FA90: .4byte 0x00006426
.L0805FA94: .4byte 0x00006424
.L0805FA98:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FAC0 @ =gUnk_080FB300
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FAC4 @ =gUnk_080FB6C0
	ldr r3, .L0805FAC8 @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805FACC @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805FAD0 @ =0x00006424
	adds r1, r7, r2
	movs r0, #0x15
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805FAC0: .4byte gUnk_080FB300
.L0805FAC4: .4byte gUnk_080FB6C0
.L0805FAC8: .4byte 0x00006428
.L0805FACC: .4byte 0x00006426
.L0805FAD0: .4byte 0x00006424
.L0805FAD4:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FAE4 @ =gUnk_080FB300
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FAE8 @ =gUnk_080FB710
	b .L0805FB70
	.align 2, 0
.L0805FAE4: .4byte gUnk_080FB300
.L0805FAE8: .4byte gUnk_080FB710
.L0805FAEC:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FB14 @ =gUnk_080FB53C
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FB18 @ =gUnk_080FB738
	ldr r3, .L0805FB1C @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805FB20 @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805FB24 @ =0x00006424
	adds r1, r7, r2
	movs r0, #0x17
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805FB14: .4byte gUnk_080FB53C
.L0805FB18: .4byte gUnk_080FB738
.L0805FB1C: .4byte 0x00006428
.L0805FB20: .4byte 0x00006426
.L0805FB24: .4byte 0x00006424
.L0805FB28:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FB50 @ =gUnk_080FB53C
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FB54 @ =gUnk_080FB754
	ldr r3, .L0805FB58 @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	ldr r0, .L0805FB5C @ =0x00006426
	adds r1, r7, r0
	movs r0, #6
	strh r0, [r1]
	ldr r2, .L0805FB60 @ =0x00006424
	adds r1, r7, r2
	movs r0, #0x18
	strh r0, [r1]
	b .L0805FB9C
	.align 2, 0
.L0805FB50: .4byte gUnk_080FB53C
.L0805FB54: .4byte gUnk_080FB754
.L0805FB58: .4byte 0x00006428
.L0805FB5C: .4byte 0x00006426
.L0805FB60: .4byte 0x00006424
.L0805FB64:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FB7C @ =gUnk_080FB300
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FB80 @ =gUnk_080FB7A0
.L0805FB70:
	ldr r3, .L0805FB84 @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
	b .L0805FB9C
	.align 2, 0
.L0805FB7C: .4byte gUnk_080FB300
.L0805FB80: .4byte gUnk_080FB7A0
.L0805FB84: .4byte 0x00006428
.L0805FB88:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FBAC @ =gUnk_080FB300
	bl func_08050E68
	ldr r0, [r7, #0x10]
	ldr r1, .L0805FBB0 @ =gUnk_080FB7F0
	ldr r3, .L0805FBB4 @ =0x00006428
	adds r2, r7, r3
	bl func_08050DA0
.L0805FB9C:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805FBAC: .4byte gUnk_080FB300
.L0805FBB0: .4byte gUnk_080FB7F0
.L0805FBB4: .4byte 0x00006428

	thumb_func_start func_0805FBB8
func_0805FBB8: @ 0x0805FBB8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, .L0805FCA0 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	ldr r4, .L0805FCA4 @ =0x10661066
	ldr r1, .L0805FCA8 @ =0x0600E000
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L0805FCAC @ =0x0600E800
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L0805FCB0 @ =0x0600F000
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r0, .L0805FCB4 @ =gUnk_08743058
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L0805FCB8 @ =gUnk_08747A14
	movs r4, #0xa0
	lsls r4, r4, #0x13
	adds r1, r4, #0
	movs r2, #0x40
	bl func_08008E64
	ldr r1, .L0805FCBC @ =0x00007FFF
	adds r0, r1, #0
	strh r0, [r4]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	movs r3, #0xe2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r4, #0
	strh r2, [r0]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L0805FCC0 @ =0x00001E43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L0805FCC4 @ =0x00001D42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L0805FCC8 @ =0x00001C41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1c]
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	adds r6, #0x20
	ldr r5, .L0805FCCC @ =gUnk_080FB1E4
	movs r4, #0x13
.L0805FC84:
	ldm r5!, {r0}
	adds r1, r6, #0
	bl Unpack
	movs r0, #0xa0
	lsls r0, r0, #3
	adds r6, r6, r0
	subs r4, #1
	cmp r4, #0
	bge .L0805FC84
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0805FCA0: .4byte 0x06007FE0
.L0805FCA4: .4byte 0x10661066
.L0805FCA8: .4byte 0x0600E000
.L0805FCAC: .4byte 0x0600E800
.L0805FCB0: .4byte 0x0600F000
.L0805FCB4: .4byte gUnk_08743058
.L0805FCB8: .4byte gUnk_08747A14
.L0805FCBC: .4byte 0x00007FFF
.L0805FCC0: .4byte 0x00001E43
.L0805FCC4: .4byte 0x00001D42
.L0805FCC8: .4byte 0x00001C41
.L0805FCCC: .4byte gUnk_080FB1E4

