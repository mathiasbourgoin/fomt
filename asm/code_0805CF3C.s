	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_0805CF3C
func_0805CF3C: @ 0x0805CF3C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, sp
	bl func_080588AC
	ldr r1, [sp]
	cmp r1, #0
	beq .L0805CF5E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805CF5E:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0805CF70
func_0805CF70: @ 0x0805CF70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r4, r1, #0
	add r1, sp, #0x14
	movs r0, #0x1e
	movs r2, #1
	movs r3, #0
	mov r8, r3
	movs r5, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r7, #0
	bl func_080084DC
	ldr r0, .L0805D154 @ =vtable_unk_080E799C
	str r0, [r7, #4]
	str r4, [r7, #8]
	str r5, [r7, #0xc]
	movs r0, #4
	bl __builtin_new
	adds r6, r0, #0
	add r0, sp, #0xc
	bl func_0800835C
	add r4, sp, #0x10
	adds r0, r4, #0
	bl func_0800770C
	ldr r0, [r7, #0xc]
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0
	bl func_08050CC0
	str r0, [r7, #0x10]
	adds r0, r4, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	adds r0, r7, #0
	adds r0, #0x14
	movs r1, #1
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x18
	movs r1, #0
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x1c
	movs r1, #2
	bl func_08008B54
	adds r4, r7, #0
	adds r4, #0x20
	ldr r1, .L0805D158 @ =gUnk_08527094
	adds r0, r4, #0
	bl func_0805E6CC
	adds r6, r7, #0
	adds r6, #0x50
	ldr r1, .L0805D15C @ =gUnk_08728208
	adds r0, r6, #0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x80
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x94
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r1, [r0, #0x18]
	adds r0, #0x1c
	strb r1, [r0]
	adds r0, #4
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0xc8
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r3, r8
	strb r3, [r0, #0x10]
	strb r3, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r3, [r0, #0x18]
	adds r0, #0x1c
	strb r3, [r0]
	adds r0, #4
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0xfc
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r1, r8
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r1, [r0, #0x18]
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r0, r7, r3
	strb r1, [r0]
	movs r0, #0x8e
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #7
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r3, #0x96
	lsls r3, r3, #1
	adds r4, r7, r3
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x9a
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r4, r7, r3
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r0, .L0805D160 @ =0x00000AEC
	adds r1, r7, r0
	ldr r0, .L0805D164 @ =vtable_unk_080E79A8
	str r0, [r1]
	str r5, [r1, #4]
	movs r1, #0xad
	lsls r1, r1, #4
	adds r2, r7, r1
	ldr r0, [r7, #8]
	ldr r3, .L0805D168 @ =0x00002C48
	adds r0, r0, r3
	ldr r0, [r0]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0xf
	str r0, [r2]
	ldr r1, .L0805D16C @ =0x0001869F
	cmp r0, r1
	ble .L0805D13C
	str r1, [r2]
.L0805D13C:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r7, r1
	strh r5, [r0]
	adds r0, r7, #0
	add sp, #0x18
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0805D154: .4byte vtable_unk_080E799C
.L0805D158: .4byte gUnk_08527094
.L0805D15C: .4byte gUnk_08728208
.L0805D160: .4byte 0x00000AEC
.L0805D164: .4byte vtable_unk_080E79A8
.L0805D168: .4byte 0x00002C48
.L0805D16C: .4byte 0x0001869F

	thumb_func_start func_0805D170
func_0805D170: @ 0x0805D170
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r6, r1, #0
	adds r0, r6, #0
	bl func_08008724
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
	ldr r0, .L0805D278 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	ldr r0, [r6, #0x10]
	movs r1, #0x75
	bl func_08050E50
	add r7, sp, #8
	add r0, sp, #0x14
	mov sl, r0
	movs r1, #9
	ldr r2, .L0805D27C @ =0x00000AE9
	adds r0, r6, r2
.L0805D1CE:
	strb r1, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge .L0805D1CE
	ldr r0, [r6, #8]
	ldr r2, .L0805D280 @ =0x00002C4A
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge .L0805D1F0
	movs r3, #0xae
	lsls r3, r3, #4
	adds r1, r6, r3
	movs r0, #0xa
	strb r0, [r1]
.L0805D1F0:
	ldr r0, [r6, #8]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge .L0805D204
	ldr r4, .L0805D284 @ =0x00000AE1
	adds r1, r6, r4
	movs r0, #0xb
	strb r0, [r1]
.L0805D204:
	adds r0, r6, #0
	bl func_0805D9C0
	adds r0, r6, #0
	bl func_0805DC24
	ldr r1, .L0805D288 @ =0x00000AD4
	adds r0, r6, r1
	movs r1, #0
	strh r1, [r0]
	ldr r2, .L0805D28C @ =0x00000AD6
	adds r0, r6, r2
	strh r1, [r0]
	ldr r3, .L0805D290 @ =0x00000AD8
	adds r0, r6, r3
	strh r1, [r0]
	ldr r4, .L0805D294 @ =0x00000ADC
	adds r2, r6, r4
	movs r0, #2
	strh r0, [r2]
	ldr r2, .L0805D298 @ =0x00000ADA
	adds r0, r6, r2
	strh r1, [r0]
	ldr r0, [sp, #4]
	ldr r1, .L0805D29C @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r3, #0
	mov r8, r3
.L0805D254:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r4, .L0805D298 @ =0x00000ADA
	adds r0, r6, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xc
	bls .L0805D26E
	b .L0805D6EC
.L0805D26E:
	lsls r0, r0, #2
	ldr r1, .L0805D2A0 @ =.L0805D2A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805D278: .4byte vtable_unk_080E5B80
.L0805D27C: .4byte 0x00000AE9
.L0805D280: .4byte 0x00002C4A
.L0805D284: .4byte 0x00000AE1
.L0805D288: .4byte 0x00000AD4
.L0805D28C: .4byte 0x00000AD6
.L0805D290: .4byte 0x00000AD8
.L0805D294: .4byte 0x00000ADC
.L0805D298: .4byte 0x00000ADA
.L0805D29C: .4byte 0x00000889
.L0805D2A0: .4byte .L0805D2A4
.L0805D2A4: @ jump table
	.4byte .L0805D2D8 @ case 0
	.4byte .L0805D2F0 @ case 1
	.4byte .L0805D488 @ case 2
	.4byte .L0805D488 @ case 3
	.4byte .L0805D488 @ case 4
	.4byte .L0805D4BC @ case 5
	.4byte .L0805D4D4 @ case 6
	.4byte .L0805D4F4 @ case 7
	.4byte .L0805D510 @ case 8
	.4byte .L0805D510 @ case 9
	.4byte .L0805D510 @ case 10
	.4byte .L0805D6A8 @ case 11
	.4byte .L0805D6DC @ case 12
.L0805D2D8:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0805D2E6
	b .L0805D6EC
.L0805D2E6:
	ldr r2, .L0805D2EC @ =0x00000ADA
	adds r1, r6, r2
	b .L0805D6CA
	.align 2, 0
.L0805D2EC: .4byte 0x00000ADA
.L0805D2F0:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0805D35C
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
	ldr r3, .L0805D320 @ =0x00000AD4
	adds r1, r6, r3
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	ble .L0805D324
	subs r0, r2, #1
	strh r0, [r1]
	adds r1, r0, #0
	b .L0805D326
	.align 2, 0
.L0805D320: .4byte 0x00000AD4
.L0805D324:
	movs r1, #0
.L0805D326:
	ldr r2, .L0805D350 @ =0x00000AD4
	adds r0, r6, r2
	strh r1, [r0]
	ldr r3, .L0805D354 @ =0x00000AD6
	adds r2, r6, r3
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r2]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	blt .L0805D340
	b .L0805D6EC
.L0805D340:
	subs r0, r3, #1
	strh r0, [r2]
	ldr r0, .L0805D358 @ =0x00000ADA
	adds r1, r6, r0
	movs r0, #5
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D350: .4byte 0x00000AD4
.L0805D354: .4byte 0x00000AD6
.L0805D358: .4byte 0x00000ADA
.L0805D35C:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	beq .L0805D3CC
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
	ldr r2, .L0805D390 @ =0x00000AD4
	adds r1, r6, r2
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #8
	bgt .L0805D394
	adds r0, r2, #1
	strh r0, [r1]
	adds r1, r0, #0
	b .L0805D396
	.align 2, 0
.L0805D390: .4byte 0x00000AD4
.L0805D394:
	movs r1, #9
.L0805D396:
	ldr r4, .L0805D3C0 @ =0x00000AD4
	adds r0, r6, r4
	strh r1, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r3, .L0805D3C4 @ =0x00000AD6
	adds r2, r6, r3
	movs r4, #0
	ldrsh r0, [r2, r4]
	subs r1, r1, r0
	cmp r1, #7
	bgt .L0805D3B0
	b .L0805D6EC
.L0805D3B0:
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	ldr r0, .L0805D3C8 @ =0x00000ADA
	adds r1, r6, r0
	movs r0, #6
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D3C0: .4byte 0x00000AD4
.L0805D3C4: .4byte 0x00000AD6
.L0805D3C8: .4byte 0x00000ADA
.L0805D3CC:
	adds r0, r6, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq .L0805D454
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xc5
	bl func_08008B6C
	ldr r1, .L0805D434 @ =0x00000ADC
	adds r0, r6, r1
	strh r5, [r0]
	ldr r2, .L0805D438 @ =0x00000AD4
	adds r0, r6, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r4, #0xae
	lsls r4, r4, #4
	adds r0, r6, r4
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r2, #4
	adds r1, r6, r2
	strh r0, [r1]
	ldr r2, .L0805D43C @ =gUnk_080FB000
	movs r4, #0
	ldrsh r3, [r1, r4]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r2, #0x10
	ldrsh r1, [r0, r2]
	movs r4, #0xad
	lsls r4, r4, #4
	adds r0, r6, r4
	ldr r0, [r0]
	cmp r1, r0
	bgt .L0805D444
	movs r1, #0xaf
	lsls r1, r1, #4
	adds r0, r6, r1
	str r3, [r0]
	ldr r2, .L0805D440 @ =0x00000ADA
	adds r1, r6, r2
	movs r0, #8
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D434: .4byte 0x00000ADC
.L0805D438: .4byte 0x00000AD4
.L0805D43C: .4byte gUnk_080FB000
.L0805D440: .4byte 0x00000ADA
.L0805D444:
	ldr r3, .L0805D450 @ =0x00000ADA
	adds r1, r6, r3
	movs r0, #7
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D450: .4byte 0x00000ADA
.L0805D454:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L0805D464
	b .L0805D6EC
.L0805D464:
	adds r0, r6, #0
	adds r0, #0x1c
	movs r1, #0xc6
	bl func_08008B6C
	ldr r1, .L0805D480 @ =0x00000ADC
	adds r0, r6, r1
	strh r4, [r0]
	ldr r2, .L0805D484 @ =0x00000ADA
	adds r1, r6, r2
	movs r0, #2
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D480: .4byte 0x00000ADC
.L0805D484: .4byte 0x00000ADA
.L0805D488:
	ldr r3, .L0805D4A8 @ =0x00000ADC
	adds r0, r6, r3
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #2
	beq .L0805D496
	b .L0805D6EC
.L0805D496:
	ldr r1, .L0805D4AC @ =0x00000ADE
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne .L0805D4B0
	subs r3, #2
	adds r1, r6, r3
	b .L0805D660
	.align 2, 0
.L0805D4A8: .4byte 0x00000ADC
.L0805D4AC: .4byte 0x00000ADE
.L0805D4B0:
	ldr r4, .L0805D4B8 @ =0x00000ADA
	adds r1, r6, r4
	b .L0805D69C
	.align 2, 0
.L0805D4B8: .4byte 0x00000ADA
.L0805D4BC:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	subs r1, #4
	strh r1, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq .L0805D4D2
	b .L0805D6EC
.L0805D4D2:
	b .L0805D698
.L0805D4D4:
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r1, [r0]
	adds r1, #4
	strh r1, [r0]
	movs r0, #0xf
	ands r1, r0
	cmp r1, #0
	beq .L0805D4EA
	b .L0805D6EC
.L0805D4EA:
	ldr r4, .L0805D4F0 @ =0x00000ADA
	adds r1, r6, r4
	b .L0805D69C
	.align 2, 0
.L0805D4F0: .4byte 0x00000ADA
.L0805D4F4:
	ldr r1, .L0805D508 @ =0x00000ADC
	adds r0, r6, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #2
	beq .L0805D502
	b .L0805D6EC
.L0805D502:
	ldr r3, .L0805D50C @ =0x00000ADA
	adds r1, r6, r3
	b .L0805D69C
	.align 2, 0
.L0805D508: .4byte 0x00000ADC
.L0805D50C: .4byte 0x00000ADA
.L0805D510:
	ldr r4, .L0805D544 @ =0x00000ADC
	adds r0, r6, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #2
	beq .L0805D51E
	b .L0805D6EC
.L0805D51E:
	ldr r2, .L0805D548 @ =0x00000ADE
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	beq .L0805D52C
	b .L0805D698
.L0805D52C:
	subs r4, #4
	adds r0, r6, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #1
	beq .L0805D552
	cmp r0, #1
	bgt .L0805D54C
	cmp r0, #0
	beq .L0805D5C8
	b .L0805D600
	.align 2, 0
.L0805D544: .4byte 0x00000ADC
.L0805D548: .4byte 0x00000ADE
.L0805D54C:
	cmp r0, #8
	beq .L0805D588
	b .L0805D600
.L0805D552:
	ldr r0, [r6, #8]
	ldr r2, .L0805D578 @ =0x00001BD8
	adds r0, r0, r2
	bl func_0800EAFC
	ldr r2, [r6, #8]
	ldr r3, .L0805D57C @ =0x00002C4A
	adds r2, r2, r3
	ldrb r0, [r2]
	movs r1, #8
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #8]
	ldr r4, .L0805D580 @ =0x00001C2C
	adds r0, r0, r4
	ldr r1, .L0805D584 @ =0x0000015F
	bl func_0800F510
	b .L0805D624
	.align 2, 0
.L0805D578: .4byte 0x00001BD8
.L0805D57C: .4byte 0x00002C4A
.L0805D580: .4byte 0x00001C2C
.L0805D584: .4byte 0x0000015F
.L0805D588:
	ldr r0, .L0805D5C0 @ =gUnk_080FB0F0
	ldrh r1, [r0, #0x10]
	adds r0, r7, #0
	bl __4FoodUi
	ldr r5, [r6, #8]
	ldr r0, .L0805D5C4 @ =0x00001C2C
	adds r5, r5, r0
	add r4, sp, #0xc
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0xd
	ldrb r2, [r0]
	lsls r2, r2, #8
	orrs r2, r1
	adds r0, #1
	ldrb r1, [r0]
	lsls r1, r1, #0x10
	orrs r1, r2
	adds r0, r5, #0
	bl func_0800F3B0
	b .L0805D624
	.align 2, 0
.L0805D5C0: .4byte gUnk_080FB0F0
.L0805D5C4: .4byte 0x00001C2C
.L0805D5C8:
	ldr r2, [r6, #8]
	ldr r1, .L0805D668 @ =0x00002C4A
	adds r2, r2, r1
	ldrb r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r2]
	ldr r2, [r6, #8]
	ldr r3, .L0805D66C @ =0x0000218C
	adds r2, r2, r3
	ldr r3, [r2]
	lsls r1, r3, #0xf
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #0xd
	ldr r0, .L0805D670 @ =0xFFFE1FFF
	ands r0, r3
	orrs r0, r1
	str r0, [r2]
	ldr r2, [r6, #8]
	ldr r4, .L0805D674 @ =0x000021C7
	adds r2, r2, r4
	ldrb r0, [r2]
	movs r1, #4
	orrs r0, r1
	strb r0, [r2]
.L0805D600:
	add r4, sp, #0x10
	ldr r1, .L0805D678 @ =gUnk_080FB0F0
	ldr r2, .L0805D67C @ =0x00000AD8
	adds r0, r6, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r4, #0
	bl __7ArticleUi
	ldr r0, [r6, #8]
	ldr r1, .L0805D680 @ =0x00001C2C
	adds r0, r0, r1
	ldrb r1, [r4]
	bl func_0800F3E8
.L0805D624:
	movs r2, #0xad
	lsls r2, r2, #4
	adds r3, r6, r2
	ldr r2, .L0805D684 @ =gUnk_080FB000
	ldr r4, .L0805D67C @ =0x00000AD8
	adds r0, r6, r4
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	ldr r2, [r3]
	subs r2, r2, r0
	str r2, [r3]
	ldr r3, [r6, #8]
	ldr r4, .L0805D688 @ =0x00002C48
	adds r3, r3, r4
	ldr r0, .L0805D68C @ =0x0001FFFF
	ands r2, r0
	lsls r2, r2, #2
	ldr r0, [r3]
	ldr r1, .L0805D690 @ =0xFFF80003
	ands r0, r1
	orrs r0, r2
	str r0, [r3]
	ldr r0, .L0805D694 @ =0x00000ADA
	adds r1, r6, r0
.L0805D660:
	movs r0, #0xb
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D668: .4byte 0x00002C4A
.L0805D66C: .4byte 0x0000218C
.L0805D670: .4byte 0xFFFE1FFF
.L0805D674: .4byte 0x000021C7
.L0805D678: .4byte gUnk_080FB0F0
.L0805D67C: .4byte 0x00000AD8
.L0805D680: .4byte 0x00001C2C
.L0805D684: .4byte gUnk_080FB000
.L0805D688: .4byte 0x00002C48
.L0805D68C: .4byte 0x0001FFFF
.L0805D690: .4byte 0xFFF80003
.L0805D694: .4byte 0x00000ADA
.L0805D698:
	ldr r2, .L0805D6A4 @ =0x00000ADA
	adds r1, r6, r2
.L0805D69C:
	movs r0, #1
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D6A4: .4byte 0x00000ADA
.L0805D6A8:
	ldr r0, [sp, #4]
	ldr r1, .L0805D6D4 @ =0x00000889
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
	ldr r3, .L0805D6D8 @ =0x00000ADA
	adds r1, r6, r3
.L0805D6CA:
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	b .L0805D6EC
	.align 2, 0
.L0805D6D4: .4byte 0x00000889
.L0805D6D8: .4byte 0x00000ADA
.L0805D6DC:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0805D6EC
	movs r4, #1
	mov r8, r4
.L0805D6EC:
	adds r0, r6, #0
	bl func_0805D760
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r1, r6, r3
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x16]
	adds r0, r6, #0
	bl func_0805DE24
	adds r0, r6, #0
	bl func_0805DFC4
	mov r4, r8
	cmp r4, #1
	beq .L0805D71A
	b .L0805D254
.L0805D71A:
	movs r0, #0
	str r0, [sp, #8]
	str r7, [sp, #0x14]
	mov r1, sl
	str r0, [r1, #4]
	str r0, [r7]
	mov r2, sb
	str r0, [r2]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L0805D73C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805D73C:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L0805D74E
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805D74E:
	mov r0, sb
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0805D760
func_0805D760: @ 0x0805D760
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
	bls .L0805D7B2
	b .L0805D9A8
.L0805D7B2:
	lsls r0, r0, #2
	ldr r1, .L0805D7BC @ =.L0805D7C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805D7BC: .4byte .L0805D7C0
.L0805D7C0: @ jump table
	.4byte .L0805D7DC @ case 0
	.4byte .L0805D9A8 @ case 1
	.4byte .L0805D9A8 @ case 2
	.4byte .L0805D7FE @ case 3
	.4byte .L0805D9A8 @ case 4
	.4byte .L0805D9A8 @ case 5
	.4byte .L0805D9A8 @ case 6
.L0805D7DC:
	ldr r1, .L0805D7F4 @ =0x00000ADC
	adds r4, r7, r1
	movs r3, #0
	ldrsh r0, [r4, r3]
	cmp r0, #0
	bne .L0805D7F8
	ldr r0, [r7, #0x10]
	bl func_08050D5C
	movs r0, #3
	strh r0, [r4]
	b .L0805D9A8
	.align 2, 0
.L0805D7F4: .4byte 0x00000ADC
.L0805D7F8:
	movs r0, #2
	strh r0, [r4]
	b .L0805D9A8
.L0805D7FE:
	ldr r4, .L0805D818 @ =0x00000ADC
	adds r5, r7, r4
	movs r6, #0
	ldrsh r4, [r5, r6]
	cmp r4, #5
	bne .L0805D81C
	ldr r0, [r7, #0x10]
	bl func_08050D74
	movs r0, #1
	strh r0, [r5]
	b .L0805D9A8
	.align 2, 0
.L0805D818: .4byte 0x00000ADC
.L0805D81C:
	cmp r4, #4
	bne .L0805D8A4
	ldr r0, [r7, #0x10]
	bl func_08050DF0
	movs r1, #0
	mov r8, r1
	movs r3, #3
	strh r3, [r5]
	ldr r6, .L0805D840 @ =0x00000ADA
	adds r2, r7, r6
	movs r6, #0
	ldrsh r1, [r2, r6]
	cmp r1, #2
	beq .L0805D844
	cmp r1, #8
	beq .L0805D870
	b .L0805D9A8
	.align 2, 0
.L0805D840: .4byte 0x00000ADA
.L0805D844:
	cmp r0, #1
	bne .L0805D858
	ldr r1, .L0805D854 @ =0x00000ADE
	adds r0, r7, r1
	mov r4, r8
	strh r4, [r0]
	strh r3, [r2]
	b .L0805D9A8
	.align 2, 0
.L0805D854: .4byte 0x00000ADE
.L0805D858:
	cmp r0, #2
	beq .L0805D85E
	b .L0805D9A8
.L0805D85E:
	ldr r6, .L0805D86C @ =0x00000ADE
	adds r1, r7, r6
	movs r0, #1
	strh r0, [r1]
	strh r4, [r2]
	b .L0805D9A8
	.align 2, 0
.L0805D86C: .4byte 0x00000ADE
.L0805D870:
	cmp r0, #1
	bne .L0805D88C
	ldr r1, .L0805D888 @ =0x00000ADE
	adds r0, r7, r1
	mov r3, r8
	strh r3, [r0]
	movs r0, #5
	strh r0, [r5]
	movs r0, #9
	strh r0, [r2]
	b .L0805D9A8
	.align 2, 0
.L0805D888: .4byte 0x00000ADE
.L0805D88C:
	cmp r0, #2
	beq .L0805D892
	b .L0805D9A8
.L0805D892:
	ldr r4, .L0805D8A0 @ =0x00000ADE
	adds r0, r7, r4
	movs r1, #1
	strh r1, [r0]
	movs r0, #0xa
	strh r0, [r2]
	b .L0805D9A8
	.align 2, 0
.L0805D8A0: .4byte 0x00000ADE
.L0805D8A4:
	cmp r4, #3
	beq .L0805D8AA
	b .L0805D9A8
.L0805D8AA:
	movs r0, #5
	strh r0, [r5]
	ldr r6, .L0805D8C8 @ =0x00000ADA
	adds r0, r7, r6
	ldrh r0, [r0]
	subs r0, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bhi .L0805D9A8
	lsls r0, r0, #2
	ldr r1, .L0805D8CC @ =.L0805D8D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805D8C8: .4byte 0x00000ADA
.L0805D8CC: .4byte .L0805D8D0
.L0805D8D0: @ jump table
	.4byte .L0805D8F4 @ case 0
	.4byte .L0805D928 @ case 1
	.4byte .L0805D934 @ case 2
	.4byte .L0805D9A8 @ case 3
	.4byte .L0805D9A8 @ case 4
	.4byte .L0805D99C @ case 5
	.4byte .L0805D94C @ case 6
	.4byte .L0805D9A8 @ case 7
	.4byte .L0805D984 @ case 8
.L0805D8F4:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D914 @ =gUnk_080FB108
	ldr r2, .L0805D918 @ =gUnk_080FB120
	ldr r3, .L0805D91C @ =gUnk_080FB124
	ldr r4, .L0805D920 @ =0x00000AEC
	adds r5, r7, r4
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	bl func_08050E30
	ldr r6, .L0805D924 @ =0x00000ADC
	adds r1, r7, r6
	b .L0805D968
	.align 2, 0
.L0805D914: .4byte gUnk_080FB108
.L0805D918: .4byte gUnk_080FB120
.L0805D91C: .4byte gUnk_080FB124
.L0805D920: .4byte 0x00000AEC
.L0805D924: .4byte 0x00000ADC
.L0805D928:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D930 @ =gUnk_080FB128
	b .L0805D988
	.align 2, 0
.L0805D930: .4byte gUnk_080FB128
.L0805D934:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D944 @ =gUnk_080FB140
	ldr r4, .L0805D948 @ =0x00000AEC
	adds r2, r7, r4
	bl func_08050DA0
	b .L0805D9A8
	.align 2, 0
.L0805D944: .4byte gUnk_080FB140
.L0805D948: .4byte 0x00000AEC
.L0805D94C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D970 @ =gUnk_080FB158
	ldr r2, .L0805D974 @ =gUnk_080FB120
	ldr r3, .L0805D978 @ =gUnk_080FB124
	ldr r6, .L0805D97C @ =0x00000AEC
	adds r5, r7, r6
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	bl func_08050E30
	ldr r0, .L0805D980 @ =0x00000ADC
	adds r1, r7, r0
.L0805D968:
	movs r0, #4
	strh r0, [r1]
	b .L0805D9A8
	.align 2, 0
.L0805D970: .4byte gUnk_080FB158
.L0805D974: .4byte gUnk_080FB120
.L0805D978: .4byte gUnk_080FB124
.L0805D97C: .4byte 0x00000AEC
.L0805D980: .4byte 0x00000ADC
.L0805D984:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D994 @ =gUnk_080FB164
.L0805D988:
	ldr r3, .L0805D998 @ =0x00000AEC
	adds r2, r7, r3
	bl func_08050DA0
	b .L0805D9A8
	.align 2, 0
.L0805D994: .4byte gUnk_080FB164
.L0805D998: .4byte 0x00000AEC
.L0805D99C:
	ldr r0, [r7, #0x10]
	ldr r1, .L0805D9B8 @ =gUnk_080FB17C
	ldr r4, .L0805D9BC @ =0x00000AEC
	adds r2, r7, r4
	bl func_08050DA0
.L0805D9A8:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805D9B8: .4byte gUnk_080FB17C
.L0805D9BC: .4byte 0x00000AEC

	thumb_func_start func_0805D9C0
func_0805D9C0: @ 0x0805D9C0
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
	strh r4, [r0, #0x14]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r1, r6, r3
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x16]
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
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
	ldr r1, .L0805DBDC @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, .L0805DBE0 @ =0x0600E000
	mov sb, r0
	movs r1, #0x80
	lsls r1, r1, #4
	mov r8, r1
	adds r0, r4, #0
	mov r1, sb
	mov r2, r8
	bl func_08008EB8
	ldr r2, .L0805DBE4 @ =0x0600E800
	mov sl, r2
	adds r0, r4, #0
	mov r1, sl
	mov r2, r8
	bl func_08008EB8
	ldr r1, .L0805DBE8 @ =0x0600F000
	adds r0, r4, #0
	mov r2, r8
	bl func_08008EB8
	adds r0, r6, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r5, #0
	strh r2, [r0]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L0805DBEC @ =0x00005C43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L0805DBF0 @ =0x00001D41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L0805DBF4 @ =0x00005E42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	ldr r0, .L0805DBF8 @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L0805DBFC @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L0805DC00 @ =0x00030003
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
	ldr r0, .L0805DC04 @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r0, .L0805DC08 @ =0x05000040
	movs r1, #0xf8
	lsls r1, r1, #2
	mov r8, r1
	strh r1, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	ldr r2, .L0805DC0C @ =0x00004218
	mov sb, r2
	strh r2, [r0]
	movs r3, #0x92
	lsls r3, r3, #1
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L0805DC10 @ =0x05000200
	adds r0, r0, r1
	mov r2, r8
	strh r2, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L0805DC14 @ =0x05000202
	adds r0, r0, r3
	strh r5, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L0805DC18 @ =0x05000204
	adds r0, r0, r1
	mov r2, sb
	strh r2, [r0]
	add r3, sp, #0x54
	mov sb, r3
	add r0, sp, #0x14
	mov r8, r0
	movs r7, #1
	movs r1, #2
	mov sl, r1
	movs r2, #0x8e
	lsls r2, r2, #1
	adds r6, r6, r2
.L0805DB84:
	ldr r0, .L0805DC1C @ =gUnk_080FB1A6
	lsls r4, r5, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	add r0, sp, #0x54
	strh r7, [r0]
	mov r0, sl
	mov r3, sb
	strh r0, [r3, #2]
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
	ldr r2, .L0805DC20 @ =0x06010000
	adds r1, r1, r2
	mov r0, r8
	movs r2, #0x40
	bl func_08008E64
	adds r5, #1
	cmp r5, #0x17
	ble .L0805DB84
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805DBDC: .4byte 0x06007FE0
.L0805DBE0: .4byte 0x0600E000
.L0805DBE4: .4byte 0x0600E800
.L0805DBE8: .4byte 0x0600F000
.L0805DBEC: .4byte 0x00005C43
.L0805DBF0: .4byte 0x00001D41
.L0805DBF4: .4byte 0x00005E42
.L0805DBF8: .4byte gUnk_080F9F70
.L0805DBFC: .4byte gUnk_080F9F74
.L0805DC00: .4byte 0x00030003
.L0805DC04: .4byte gUnk_080F9F78
.L0805DC08: .4byte 0x05000040
.L0805DC0C: .4byte 0x00004218
.L0805DC10: .4byte 0x05000200
.L0805DC14: .4byte 0x05000202
.L0805DC18: .4byte 0x05000204
.L0805DC1C: .4byte gUnk_080FB1A6
.L0805DC20: .4byte 0x06010000

	thumb_func_start func_0805DC24
func_0805DC24: @ 0x0805DC24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L0805DE0C @ =0xFFFFFC20
	add sp, r4
	mov r8, r0
	add r1, sp, #0xc
	movs r0, #0
	str r0, [sp, #0xc]
	strh r0, [r1, #4]
	add r1, sp, #0x14
	mov sb, r1
	str r0, [sp, #0x14]
	strh r0, [r1, #4]
	add r6, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r6, #4]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r1, #4]
	mov r0, r8
	adds r0, #0x80
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	adds r0, #4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x2c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x2c
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0xc
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r5, r7}
	stm r1!, {r5, r7}
	ldr r5, [sp, #0x1c]
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r7, .L0805DE10 @ =0x05000200
	adds r1, r0, r7
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L0805DCA6
	ldrh r2, [r6, #4]
.L0805DCA6:
	adds r0, r5, #0
	bl func_08008E64
	mov r1, r8
	adds r1, #0x50
	adds r0, r4, #0
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0xc
	adds r0, r4, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	ldr r4, [sp, #0x1c]
	movs r0, #0xa2
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r7
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L0805DCE4
	ldrh r2, [r6, #4]
.L0805DCE4:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #0x14]
	movs r0, #0x9e
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r7, .L0805DE14 @ =0x06010000
	adds r1, r0, r7
	ldr r0, [sp, #0x14]
	movs r2, #0
	cmp r0, #0
	beq .L0805DD0A
	mov r0, sb
	ldrh r2, [r0, #4]
.L0805DD0A:
	adds r0, r4, #0
	bl func_08008E64
	movs r4, #0
	add r6, sp, #0x3d0
	movs r1, #0xf5
	lsls r1, r1, #2
	add r1, sp
	str r1, [sp, #0x3d8]
	mov r2, sp
	adds r2, #0x50
	str r2, [sp, #0x3dc]
	movs r3, #0xe
	mov sl, r3
	movs r5, #2
	mov sb, r5
	ldr r5, .L0805DE18 @ =0x06002800
	adds r7, r6, #0
.L0805DD2E:
	mov r0, sl
	strh r0, [r7]
	mov r1, sb
	strh r1, [r6, #2]
	ldr r0, [r7]
	add r1, sp, #0x50
	movs r2, #0
	bl func_0804E7A0
	movs r0, #0xae
	lsls r0, r0, #4
	add r0, r8
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, .L0805DE1C @ =gUnk_080FB000
	adds r1, r1, r0
	add r0, sp, #0x3d4
	mov r2, sl
	strh r2, [r0]
	mov r2, sb
	ldr r3, [sp, #0x3d8]
	strh r2, [r3, #2]
	ldr r0, [r0]
	str r1, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	add r1, sp, #0x50
	movs r2, #0
	bl func_0804E958
	ldr r0, [sp, #0x3dc]
	adds r1, r5, #0
	movs r2, #0xe0
	lsls r2, r2, #2
	bl func_08008E64
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r5, r5, r2
	adds r4, #1
	cmp r4, #9
	ble .L0805DD2E
	movs r0, #1
	rsbs r0, r0, #0
	movs r1, #0xb4
	lsls r1, r1, #2
	add r1, r8
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008EB8
	movs r5, #0x85
	lsls r5, r5, #6
	movs r1, #0
	movs r3, #0xb5
	lsls r3, r3, #2
	add r3, r8
	mov ip, r3
.L0805DDAC:
	movs r4, #0
	lsls r0, r1, #1
	adds r6, r5, #0
	adds r6, #0x1c
	adds r1, #1
	mov sb, r1
	adds r1, r0, #4
	lsls r1, r1, #6
	adds r0, #5
	lsls r0, r0, #6
	adds r3, r5, #0
	adds r3, #0xe
	mov r7, ip
	adds r2, r0, r7
	add r1, ip
.L0805DDCA:
	adds r0, r5, r4
	strh r0, [r1]
	strh r3, [r2]
	adds r3, #1
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0xd
	ble .L0805DDCA
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	mov r1, sb
	cmp r1, #9
	ble .L0805DDAC
	movs r0, #0xb4
	lsls r0, r0, #2
	add r0, r8
	ldr r1, .L0805DE20 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008E64
	movs r3, #0xf8
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805DE0C: .4byte 0xFFFFFC20
.L0805DE10: .4byte 0x05000200
.L0805DE14: .4byte 0x06010000
.L0805DE18: .4byte 0x06002800
.L0805DE1C: .4byte gUnk_080FB000
.L0805DE20: .4byte 0x0600F000

	thumb_func_start func_0805DE24
func_0805DE24: @ 0x0805DE24
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, .L0805DEB8 @ =0x000002CE
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	ldr r6, .L0805DEBC @ =gUnk_080FB000
.L0805DE36:
	lsls r2, r4, #4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r0, [r0]
	subs r0, #0x20
	subs r2, r2, r0
	movs r1, #0xae
	lsls r1, r1, #4
	adds r0, r5, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r1, #0x10
	ldrsh r0, [r0, r1]
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x90
	movs r3, #3
	bl func_0805DEC0
	adds r4, #1
	cmp r4, #9
	ble .L0805DE36
	movs r4, #0
	movs r7, #1
	movs r6, #8
.L0805DE7A:
	adds r3, r4, #0
	adds r3, #0xd
	str r7, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #4
	bl func_0805DF68
	adds r6, #8
	adds r4, #1
	cmp r4, #0xa
	ble .L0805DE7A
	movs r1, #0xad
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0x88
	movs r2, #4
	movs r3, #1
	bl func_0805DEC0
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805DEB8: .4byte 0x000002CE
.L0805DEBC: .4byte gUnk_080FB000

	thumb_func_start func_0805DEC0
func_0805DEC0: @ 0x0805DEC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	adds r6, r1, #0
	str r2, [sp, #4]
	mov sb, r3
	ldr r0, [sp, #0x28]
	mov r8, r0
	ldr r4, [sp, #0x2c]
	cmp r4, #1
	ble .L0805DEF6
	subs r4, #1
	movs r5, #0xa
	cmp r4, #1
	ble .L0805DEF2
.L0805DEE6:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r5, r0, #1
	subs r4, #1
	cmp r4, #1
	bgt .L0805DEE6
.L0805DEF2:
	adds r4, r5, #0
	b .L0805DEF8
.L0805DEF6:
	movs r4, #1
.L0805DEF8:
	movs r7, #0
	cmp r4, #0
	ble .L0805DF42
.L0805DEFE:
	cmp r4, #1
	bne .L0805DF04
	movs r7, #1
.L0805DF04:
	mov r0, r8
	adds r1, r4, #0
	bl __divsi3
	adds r5, r0, #0
	cmp r5, #0
	bne .L0805DF16
	cmp r7, #0
	beq .L0805DF28
.L0805DF16:
	mov r1, sb
	str r1, [sp]
	mov r0, sl
	adds r1, r6, #0
	ldr r2, [sp, #4]
	adds r3, r5, #0
	bl func_0805DF68
	movs r7, #1
.L0805DF28:
	adds r6, #8
	adds r0, r5, #0
	muls r0, r4, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	cmp r4, #0
	bgt .L0805DEFE
.L0805DF42:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq .L0805DF58
	mov r1, sb
	str r1, [sp]
	mov r0, sl
	adds r1, r6, #0
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x30]
	bl func_0805DF68
.L0805DF58:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_0805DF68
func_0805DF68: @ 0x0805DF68
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r6, [sp, #0x10]
	ldr r5, .L0805DFC0 @ =0x000002CE
	add r5, ip
	movs r0, #0
	ldrsh r4, [r5, r0]
	lsls r4, r4, #3
	movs r0, #0xa7
	lsls r0, r0, #1
	add r0, ip
	adds r0, r0, r4
	strh r1, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	movs r0, #0xa8
	lsls r0, r0, #1
	add r0, ip
	adds r0, r0, r1
	strh r2, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	movs r0, #0xa9
	lsls r0, r0, #1
	add r0, ip
	adds r0, r0, r1
	strh r3, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #3
	movs r0, #0xaa
	lsls r0, r0, #1
	add r0, ip
	adds r0, r0, r1
	strh r6, [r0]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0805DFC0: .4byte 0x000002CE

	thumb_func_start func_0805DFC4
func_0805DFC4: @ 0x0805DFC4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	adds r6, r0, #0
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
	add r3, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r3, #4]
	add r2, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r2, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	ldr r1, .L0805E1C0 @ =0x00000ADA
	adds r0, r6, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	ble .L0805E0C8
	adds r4, r6, #0
	adds r4, #0xe8
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0xec
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
	ldm r4!, {r1, r5, r7}
	stm r0!, {r1, r5, r7}
	ldm r4!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldm r4!, {r1, r7}
	stm r0!, {r1, r7}
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0xfc
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xc
	strh r0, [r1]
	mov r2, sp
	ldr r3, .L0805E1C4 @ =0x00000AD4
	adds r0, r6, r3
	movs r4, #0
	ldrsh r1, [r0, r4]
	lsls r1, r1, #4
	ldr r5, .L0805E1C8 @ =0x00000AD6
	adds r0, r6, r5
	movs r7, #0
	ldrsh r0, [r0, r7]
	lsls r0, r0, #4
	subs r0, #0x28
	subs r1, r1, r0
	strh r1, [r2, #2]
	movs r1, #0x9e
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	movs r0, #1
	strb r0, [r1, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805E0C0
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L0805E0C0:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805E0C8:
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r0, r6, r5
	ldrh r0, [r0]
	mov r7, sp
	adds r7, #0x6c
	str r7, [sp, #0x74]
	cmp r0, #0
	bne .L0805E0DC
	b .L0805E2C8
.L0805E0DC:
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0x84
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
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0x94
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x1a
	strh r0, [r1, #2]
	movs r5, #0x96
	lsls r5, r5, #1
	adds r4, r6, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #4
	strh r0, [r1, #6]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
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
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0805E18C
	mov r1, sp
	ldrh r3, [r1, #0x28]
.L0805E18C:
	str r5, [sp, #0x78]
	lsls r2, r2, #5
	ldr r4, .L0805E1CC @ =0x06010080
	adds r2, r2, r4
	adds r0, r7, #0
	mov r1, r8
	bl func_08008F0C
	mov sl, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805E1D0
	cmp r1, #0
	beq .L0805E1B6
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E1B6:
	ldr r3, [sp, #0x78]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L0805E2AA
	.align 2, 0
.L0805E1C0: .4byte 0x00000ADA
.L0805E1C4: .4byte 0x00000AD4
.L0805E1C8: .4byte 0x00000AD6
.L0805E1CC: .4byte 0x06010080
.L0805E1D0:
	str r1, [sp, #0x7c]
	mov r4, sb
	str r4, [sp, #0x60]
	ldr r5, [sp, #0x78]
	ldr r0, [r5]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r1, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L0805E1EC
	adds r0, r1, #0
.L0805E1EC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805E20A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805E20E
	mov r0, sb
	bl func_080D3BC0
	b .L0805E20E
.L0805E20A:
	movs r0, #0
	mov sb, r0
.L0805E20E:
	adds r4, r0, #0
	mov r8, r4
	ldr r0, [sp, #0x78]
	ldr r2, [r0]
	mov r3, r8
	mov r1, sp
	adds r1, #0x6c
	str r1, [sp, #0x74]
	ldr r4, [sp, #0x7c]
	cmp r2, r4
	beq .L0805E23E
.L0805E224:
	cmp r3, #0
	beq .L0805E234
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E234:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x7c]
	cmp r2, r5
	bne .L0805E224
.L0805E23E:
	adds r4, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L0805E25A
	cmp r4, #0
	beq .L0805E256
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E256:
	adds r4, #0x10
	b .L0805E282
.L0805E25A:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805E280
.L0805E262:
	cmp r2, #0
	beq .L0805E272
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E272:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L0805E262
.L0805E280:
	adds r4, r2, #0
.L0805E282:
	ldr r3, [sp, #0x78]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805E294
.L0805E28E:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805E28E
.L0805E294:
	cmp r0, #0
	beq .L0805E29C
	bl free
.L0805E29C:
	mov r0, sb
	add r0, r8
	mov r5, r8
	ldr r7, [sp, #0x78]
	str r5, [r7]
	str r4, [r7, #4]
	str r0, [r7, #0xc]
.L0805E2AA:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805E2C0
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L0805E2C0:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805E2C8:
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0x1f
	bls .L0805E2D6
	b .L0805E4B2
.L0805E2D6:
	adds r4, r6, #0
	adds r4, #0xb4
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r6, #0
	adds r0, #0xb8
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
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0xc8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x98
	strh r0, [r1, #2]
	movs r5, #0x96
	lsls r5, r5, #1
	adds r4, r6, r5
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #8
	strh r0, [r1, #6]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r6, r1
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
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0805E386
	mov r1, sp
	ldrh r3, [r1, #0x28]
.L0805E386:
	str r5, [sp, #0x78]
	lsls r2, r2, #5
	ldr r4, .L0805E3BC @ =0x06010100
	adds r2, r2, r4
	adds r0, r7, #0
	mov r1, r8
	bl func_08008F0C
	mov sl, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0805E3C0
	cmp r1, #0
	beq .L0805E3B0
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E3B0:
	ldr r3, [sp, #0x78]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L0805E494
	.align 2, 0
.L0805E3BC: .4byte 0x06010100
.L0805E3C0:
	str r1, [sp, #0x7c]
	mov r4, sb
	str r4, [sp, #0x68]
	ldr r5, [sp, #0x78]
	ldr r0, [r5]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L0805E3DC
	adds r0, r1, #0
.L0805E3DC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0805E3FA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0805E3FE
	mov r0, sb
	bl func_080D3BC0
	b .L0805E3FE
.L0805E3FA:
	movs r0, #0
	mov sb, r0
.L0805E3FE:
	adds r4, r0, #0
	mov r8, r4
	ldr r0, [sp, #0x78]
	ldr r2, [r0]
	mov r3, r8
	ldr r1, [sp, #0x7c]
	cmp r2, r1
	beq .L0805E428
.L0805E40E:
	cmp r3, #0
	beq .L0805E41E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E41E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x7c]
	cmp r2, r0
	bne .L0805E40E
.L0805E428:
	adds r4, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L0805E444
	cmp r4, #0
	beq .L0805E440
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0805E440:
	adds r4, #0x10
	b .L0805E46C
.L0805E444:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L0805E46A
.L0805E44C:
	cmp r2, #0
	beq .L0805E45C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0805E45C:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L0805E44C
.L0805E46A:
	adds r4, r2, #0
.L0805E46C:
	ldr r0, [sp, #0x78]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0805E47E
.L0805E478:
	adds r1, #0x10
	cmp r1, r2
	bne .L0805E478
.L0805E47E:
	cmp r0, #0
	beq .L0805E486
	bl free
.L0805E486:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x78]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L0805E494:
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0805E4AA
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L0805E4AA:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805E4B2:
	ldr r1, .L0805E5E8 @ =0xFFFFFCFF
	ldr r0, [sp, #0x6c]
	ands r0, r1
	ldr r1, .L0805E5EC @ =0xFFFFF3FF
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #5
	orrs r0, r4
	ldr r1, .L0805E5F0 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L0805E5F4 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L0805E5F8 @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L0805E5FC @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L0805E600 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L0805E604 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp, #0x6c]
	movs r5, #0x92
	lsls r5, r5, #1
	adds r0, r6, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0805E608 @ =0xFFFF0FFF
	ldr r7, [sp, #0x74]
	ldr r1, [r7, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L0805E60C @ =0x0000FFFF
	ands r1, r0
	str r1, [r7, #4]
	ldr r0, [sp, #0x6c]
	orrs r0, r4
	str r0, [sp, #0x6c]
	ldr r0, .L0805E610 @ =0x000002CE
	adds r1, r6, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	blt .L0805E5D8
	adds r4, r1, #0
	ldr r5, [sp, #0x74]
.L0805E522:
	movs r2, #0
	ldrsh r1, [r4, r2]
	lsls r1, r1, #3
	movs r3, #0xaa
	lsls r3, r3, #1
	adds r0, r6, r3
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #3
	ands r1, r0
	lsls r1, r1, #0xa
	ldr r2, .L0805E5EC @ =0xFFFFF3FF
	ldr r0, [r5, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	movs r7, #0
	ldrsh r1, [r4, r7]
	lsls r1, r1, #3
	movs r2, #0xa7
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r0, r0, r1
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, .L0805E614 @ =0x000001FF
	ands r1, r0
	lsls r1, r1, #0x10
	ldr r0, .L0805E618 @ =0xFE00FFFF
	ldr r2, [sp, #0x6c]
	ands r2, r0
	orrs r2, r1
	movs r7, #0
	ldrsh r1, [r4, r7]
	lsls r1, r1, #3
	movs r3, #0xa8
	lsls r3, r3, #1
	adds r0, r6, r3
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, .L0805E61C @ =0xFFFFFF00
	ands r2, r0
	orrs r2, r1
	str r2, [sp, #0x6c]
	movs r7, #0x8e
	lsls r7, r7, #1
	adds r0, r6, r7
	ldr r1, [r0, #4]
	bl func_08007D4C
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r2, r2, #3
	movs r3, #0xa9
	lsls r3, r3, #1
	adds r1, r6, r3
	adds r1, r1, r2
	movs r7, #0
	ldrsh r1, [r1, r7]
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L0805E620 @ =0xFFFFFC00
	ldr r1, [r5, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r5, #4]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L0805E5CC
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x6c]
	str r0, [r1]
	ldr r7, [sp, #0x74]
	ldrh r0, [r7, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L0805E5CC:
	ldrh r0, [r4]
	subs r0, #1
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L0805E522
.L0805E5D8:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0805E5E8: .4byte 0xFFFFFCFF
.L0805E5EC: .4byte 0xFFFFF3FF
.L0805E5F0: .4byte 0xFFFFDFFF
.L0805E5F4: .4byte 0xFFFF3FFF
.L0805E5F8: .4byte 0xF1FFFFFF
.L0805E5FC: .4byte 0xEFFFFFFF
.L0805E600: .4byte 0xDFFFFFFF
.L0805E604: .4byte 0x3FFFFFFF
.L0805E608: .4byte 0xFFFF0FFF
.L0805E60C: .4byte 0x0000FFFF
.L0805E610: .4byte 0x000002CE
.L0805E614: .4byte 0x000001FF
.L0805E618: .4byte 0xFE00FFFF
.L0805E61C: .4byte 0xFFFFFF00
.L0805E620: .4byte 0xFFFFFC00

	thumb_func_start func_0805E624
func_0805E624: @ 0x0805E624
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L0805E650 @ =vtable_unk_080E79B8
	str r0, [r4]
	ldr r0, .L0805E654 @ =0x00000AF4
	bl __builtin_new
	adds r1, r5, #0
	bl func_0805CF70
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
.L0805E650: .4byte vtable_unk_080E79B8
.L0805E654: .4byte 0x00000AF4

	thumb_func_start func_0805E658
func_0805E658: @ 0x0805E658
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L0805E694 @ =vtable_unk_080E79B8
	str r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L0805E674
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805E674:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L0805E686
	ldr r0, [r1, #4]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805E686:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0805E694: .4byte vtable_unk_080E79B8

	thumb_func_start func_0805E698
func_0805E698: @ 0x0805E698
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, sp
	bl func_0805D170
	ldr r1, [sp]
	cmp r1, #0
	beq .L0805E6BA
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0805E6BA:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
