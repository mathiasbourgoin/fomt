	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED
	thumb_func_start func_080AAFC8
func_080AAFC8: @ 0x080AAFC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa8
	str r0, [sp, #0x7c]
	str r1, [sp, #0x80]
	adds r4, r2, #0
	movs r0, #0xfa
	lsls r0, r0, #2
	bl __builtin_new
	mov sl, r0
	ldr r1, [sp, #0x80]
	str r1, [r0]
	cmp r4, #0xd
	beq .L080AAFFE
	cmp r4, #0xd
	bgt .L080AAFF6
	cmp r4, #1
	beq .L080AAFFE
	b .L080AAFFA
.L080AAFF6:
	cmp r4, #0xf
	beq .L080AAFFE
.L080AAFFA:
	movs r1, #0
	b .L080AB000
.L080AAFFE:
	movs r1, #1
.L080AB000:
	movs r0, #0
	mov r2, sl
	strb r1, [r2, #4]
	strb r0, [r2, #5]
	strb r0, [r2, #6]
	mov r0, sl
	adds r0, #8
	movs r1, #9
	movs r3, #0xd4
	lsls r3, r3, #2
	add r3, sl
	str r3, [sp, #0x9c]
	movs r4, #0xda
	lsls r4, r4, #2
	add r4, sl
	str r4, [sp, #0x88]
	mov r2, sp
	adds r2, #0x74
	str r2, [sp, #0x94]
	mov r3, sp
	adds r3, #0x54
	str r3, [sp, #0x90]
	mov r4, sp
	adds r4, #0x44
	str r4, [sp, #0x8c]
	movs r5, #0
	movs r3, #1
	rsbs r3, r3, #0
.L080AB038:
	strb r5, [r0]
	strb r5, [r0, #1]
	movs r2, #1
	movs r4, #0x54
	adds r4, r4, r0
	mov sb, r4
	subs r1, #1
	mov r8, r1
	adds r1, r0, #4
.L080AB04A:
	str r5, [r1]
	strh r5, [r1, #4]
	str r5, [r1, #8]
	strh r5, [r1, #0xc]
	str r5, [r1, #0x10]
	strh r5, [r1, #0x14]
	str r5, [r1, #0x18]
	strh r5, [r1, #0x1c]
	adds r1, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080AB04A
	adds r4, r0, #0
	adds r4, #0x44
	movs r6, #1
	movs r1, #0
	movs r7, #1
	rsbs r7, r7, #0
.L080AB06E:
	adds r0, r4, #0
	str r1, [sp, #0xa0]
	str r3, [sp, #0xa4]
	bl func_08007874
	ldr r1, [sp, #0xa0]
	str r1, [r4, #4]
	adds r4, #8
	subs r6, #1
	ldr r3, [sp, #0xa4]
	cmp r6, r7
	bne .L080AB06E
	mov r0, sb
	mov r1, r8
	cmp r1, r3
	bne .L080AB038
	movs r0, #0
	ldr r1, [sp, #0x9c]
	str r0, [r1]
	ldr r0, [sp, #0x88]
	movs r1, #0xf
	ldr r2, [sp, #0x80]
	ldr r3, [r2]
	movs r4, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AB0A2:
	strb r4, [r0, #4]
	adds r0, #8
	subs r1, #1
	cmp r1, r2
	bne .L080AB0A2
	ldr r1, [r3, #0x64]
	ldr r0, [sp, #0x80]
	bl _call_via_r1
	mov r8, r0
	movs r3, #0
.L080AB0B8:
	movs r0, #0x54
	muls r0, r3, r0
	adds r0, #8
	add r0, sl
	str r0, [sp, #0x84]
	mov r4, sp
	mov r1, sl
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq .L080AB144
	cmp r3, #9
	bls .L080AB0D2
	b .L080AB1BC
.L080AB0D2:
	lsls r0, r3, #2
	ldr r1, .L080AB0DC @ =.L080AB0E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AB0DC: .4byte .L080AB0E0
.L080AB0E0: @ jump table
	.4byte .L080AB180 @ case 0
	.4byte .L080AB110 @ case 1
	.4byte .L080AB108 @ case 2
	.4byte .L080AB116 @ case 3
	.4byte .L080AB120 @ case 4
	.4byte .L080AB1A0 @ case 5
	.4byte .L080AB128 @ case 6
	.4byte .L080AB12E @ case 7
	.4byte .L080AB134 @ case 8
	.4byte .L080AB13A @ case 9
.L080AB108:
	ldr r2, .L080AB10C @ =0x000001A1
	b .L080AB1BE
	.align 2, 0
.L080AB10C: .4byte 0x000001A1
.L080AB110:
	movs r2, #0xd0
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB116:
	ldr r2, .L080AB11C @ =0x000001A3
	b .L080AB1BE
	.align 2, 0
.L080AB11C: .4byte 0x000001A3
.L080AB120:
	ldr r2, .L080AB124 @ =0x0000019F
	b .L080AB1BE
	.align 2, 0
.L080AB124: .4byte 0x0000019F
.L080AB128:
	movs r2, #0xd1
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB12E:
	movs r2, #0xd2
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB134:
	movs r2, #0xcf
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB13A:
	ldr r2, .L080AB140 @ =0x0000019D
	b .L080AB1BE
	.align 2, 0
.L080AB140: .4byte 0x0000019D
.L080AB144:
	cmp r3, #9
	bhi .L080AB1BC
	lsls r0, r3, #2
	ldr r1, .L080AB154 @ =.L080AB158
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AB154: .4byte .L080AB158
.L080AB158: @ jump table
	.4byte .L080AB180 @ case 0
	.4byte .L080AB190 @ case 1
	.4byte .L080AB186 @ case 2
	.4byte .L080AB194 @ case 3
	.4byte .L080AB19C @ case 4
	.4byte .L080AB1A0 @ case 5
	.4byte .L080AB1A8 @ case 6
	.4byte .L080AB1AE @ case 7
	.4byte .L080AB1B4 @ case 8
	.4byte .L080AB1B8 @ case 9
.L080AB180:
	movs r2, #0xeb
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB186:
	ldr r2, .L080AB18C @ =0x00000117
	b .L080AB1BE
	.align 2, 0
.L080AB18C: .4byte 0x00000117
.L080AB190:
	movs r2, #0xd3
	b .L080AB1BE
.L080AB194:
	ldr r2, .L080AB198 @ =0x000001AD
	b .L080AB1BE
	.align 2, 0
.L080AB198: .4byte 0x000001AD
.L080AB19C:
	movs r2, #0x4d
	b .L080AB1BE
.L080AB1A0:
	ldr r2, .L080AB1A4 @ =0x00000145
	b .L080AB1BE
	.align 2, 0
.L080AB1A4: .4byte 0x00000145
.L080AB1A8:
	movs r2, #0xc4
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB1AE:
	movs r2, #0xd9
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB1B4:
	movs r2, #0x3e
	b .L080AB1BE
.L080AB1B8:
	movs r2, #0x3c
	b .L080AB1BE
.L080AB1BC:
	movs r2, #0
.L080AB1BE:
	adds r6, r4, #0
	mov sb, r2
	movs r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	movs r2, #1
	adds r3, #1
	str r3, [sp, #0x98]
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	adds r0, r6, #4
.L080AB1D6:
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
	bne .L080AB1D6
	adds r4, r6, #0
	adds r4, #0x44
	movs r5, #1
	movs r1, #0
	movs r7, #1
	rsbs r7, r7, #0
.L080AB1FA:
	adds r0, r4, #0
	str r1, [sp, #0xa0]
	bl func_08007874
	ldr r1, [sp, #0xa0]
	str r1, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r7
	bne .L080AB1FA
	movs r7, #0
	adds r5, r6, #4
.L080AB212:
	mov r2, r8
	ldr r4, [r2]
	ldr r0, [sp, #0x94]
	ldr r3, [r4, #0xc]
	mov r1, r8
	mov r2, sb
	bl _call_via_r3
	lsls r1, r7, #2
	ldr r0, [sp, #0x74]
	adds r0, r0, r1
	ldrh r2, [r0]
	add r0, sp, #0x54
	ldr r3, [r4, #0x10]
	mov r1, r8
	bl _call_via_r3
	add r0, sp, #0x54
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	ldr r0, [sp, #0x90]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r0, [r5, #8]
	movs r1, #0
	cmp r0, #0
	beq .L080AB258
	ldrh r1, [r5, #0xc]
.L080AB258:
	cmp r1, #0
	beq .L080AB272
	ldr r0, [r5, #0x10]
	movs r1, #0
	cmp r0, #0
	beq .L080AB266
	ldrh r1, [r5, #0x14]
.L080AB266:
	cmp r1, #0
	beq .L080AB272
	adds r5, #0x20
	adds r7, #1
	cmp r7, #1
	bls .L080AB212
.L080AB272:
	ldr r0, [sp, #0x84]
	mov r1, sp
	bl func_080E4438
	ldr r4, [sp, #0x90]
	ldr r0, [sp, #0x8c]
	cmp r0, r4
	beq .L080AB29A
	add r5, sp, #0x44
.L080AB284:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	cmp r5, r4
	bne .L080AB284
.L080AB29A:
	ldr r3, [sp, #0x98]
	cmp r3, #9
	bhi .L080AB2A2
	b .L080AB0B8
.L080AB2A2:
	ldr r1, [sp, #0x80]
	ldr r0, [r1]
	ldr r2, [r0, #0x48]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	adds r2, r0, #0
	ldr r1, [sp, #0x9c]
	ldr r0, [r1]
	cmp r0, #0xf
	bhi .L080AB2CC
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L080AB2C4
	strb r2, [r0]
.L080AB2C4:
	ldr r2, [sp, #0x9c]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L080AB2CC:
	mov r3, sl
	ldr r4, [sp, #0x7c]
	str r3, [r4]
	adds r0, r4, #0
	add sp, #0xa8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080AB2E4
func_080AB2E4: @ 0x080AB2E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	str r1, [sp]
	ldr r0, [r0]
	cmp r0, #0
	beq .L080AB360
	mov r8, r0
	ldr r0, [r0]
	ldr r2, [r0]
	movs r4, #0xd4
	lsls r4, r4, #2
	add r4, r8
	movs r1, #0xd5
	lsls r1, r1, #2
	add r1, r8
	ldrb r1, [r1]
	ldr r2, [r2, #0x4c]
	bl _call_via_r2
	mov r0, r8
	adds r0, #8
	cmp r0, #0
	beq .L080AB35A
	adds r6, r4, #0
	cmp r0, r6
	beq .L080AB35A
	movs r5, #0xe5
	lsls r5, r5, #2
	add r5, r8
.L080AB328:
	subs r5, #0x54
	subs r6, #0x54
	movs r0, #8
	add r0, r8
	mov sb, r0
	cmp r5, #0
	beq .L080AB356
	adds r4, r6, #0
	adds r4, #0x54
	cmp r5, r4
	beq .L080AB356
	adds r7, r5, #0
.L080AB340:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	cmp r7, r4
	bne .L080AB340
.L080AB356:
	cmp sb, r6
	bne .L080AB328
.L080AB35A:
	mov r0, r8
	bl __builtin_delete
.L080AB360:
	movs r0, #1
	ldr r1, [sp]
	ands r0, r1
	cmp r0, #0
	beq .L080AB370
	mov r0, sl
	bl __builtin_delete
.L080AB370:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080AB380
func_080AB380: @ 0x080AB380
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, [r0]
	mov r8, r0
	movs r3, #0
	movs r4, #0
	movs r2, #0
	movs r5, #0
	movs r1, #0xda
	lsls r1, r1, #2
	add r1, r8
.L080AB39A:
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq .L080AB3B2
	adds r3, #1
	ldrb r0, [r1, #5]
	cmp r0, #1
	bls .L080AB3AE
	subs r0, #1
	strb r0, [r1, #5]
	b .L080AB3B2
.L080AB3AE:
	strb r5, [r1, #4]
	adds r4, #1
.L080AB3B2:
	adds r1, #8
	adds r2, #1
	cmp r2, #0xf
	bls .L080AB39A
	cmp r3, #0
	beq .L080AB404
	cmp r4, r3
	bne .L080AB404
	movs r1, #0
.L080AB3C4:
	movs r0, #0x54
	muls r0, r1, r0
	adds r0, #8
	mov r2, r8
	adds r5, r2, r0
	ldrb r0, [r5]
	adds r7, r1, #1
	cmp r0, #0
	beq .L080AB3FE
	movs r6, #0
	movs r2, #0
	adds r4, r5, #0
	adds r4, #0x48
.L080AB3DE:
	lsls r0, r6, #3
	adds r0, r0, r5
	adds r0, #0x44
	ldr r1, [r4]
	str r2, [sp]
	bl func_08007C28
	ldr r2, [sp]
	str r2, [r4]
	adds r4, #8
	adds r6, #1
	cmp r6, #1
	bls .L080AB3DE
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
.L080AB3FE:
	adds r1, r7, #0
	cmp r1, #9
	bls .L080AB3C4
.L080AB404:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080AB410
func_080AB410: @ 0x080AB410
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	str r1, [sp, #0x2c]
	adds r6, r2, #0
	ldr r0, [r0]
	str r0, [sp, #0x30]
	ldr r0, [r0]
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne .L080AB432
	b .L080AB5A2
.L080AB432:
	movs r1, #0
.L080AB434:
	movs r0, #0x54
	muls r0, r1, r0
	adds r0, #8
	ldr r2, [sp, #0x30]
	adds r2, r2, r0
	mov sl, r2
	ldrb r0, [r2]
	adds r1, #1
	str r1, [sp, #0x40]
	cmp r0, #0
	bne .L080AB44C
	b .L080AB594
.L080AB44C:
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne .L080AB454
	b .L080AB594
.L080AB454:
	movs r3, #0
	mov sb, r3
.L080AB458:
	mov r5, sb
	lsls r4, r5, #5
	mov r7, sl
	adds r0, r4, r7
	ldr r5, [r0, #0xc]
	mov r1, sb
	lsls r0, r1, #3
	add r0, sl
	adds r0, #0x44
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	add r4, sl
	adds r4, #0xc
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080AB480
	ldrh r3, [r4, #4]
.L080AB480:
	lsls r2, r2, #5
	ldr r4, .L080AB4B8 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x14
	adds r1, r5, #0
	bl func_08008F0C
	mov r5, sp
	adds r5, #0x14
	str r5, [sp, #0x38]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AB4BC
	cmp r1, #0
	beq .L080AB4AC
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AB4AC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r4, #1
	add sb, r4
	b .L080AB586
	.align 2, 0
.L080AB4B8: .4byte 0x06010000
.L080AB4BC:
	str r1, [sp, #0x48]
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r1, [r6]
	ldr r5, [sp, #0x48]
	subs r0, r5, r1
	asrs r4, r0, #4
	str r4, [sp, #0x24]
	add r2, sp, #0x28
	add r0, sp, #0x24
	cmp r4, #1
	bhs .L080AB4D6
	adds r0, r2, #0
.L080AB4D6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AB4F6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AB4F2
	mov r0, r8
	bl func_080D3BC0
.L080AB4F2:
	ldr r1, [r6]
	b .L080AB4FA
.L080AB4F6:
	movs r0, #0
	mov r8, r0
.L080AB4FA:
	adds r5, r0, #0
	str r5, [sp, #0x4c]
	adds r2, r1, #0
	adds r3, r5, #0
	movs r7, #1
	add sb, r7
	b .L080AB51C
.L080AB508:
	cmp r3, #0
	beq .L080AB518
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AB518:
	adds r2, #0x10
	adds r3, #0x10
.L080AB51C:
	ldr r0, [sp, #0x48]
	cmp r2, r0
	bne .L080AB508
	adds r5, r3, #0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne .L080AB53E
	cmp r5, #0
	beq .L080AB53A
	adds r0, r5, #0
	ldr r1, [sp, #0x38]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AB53A:
	adds r5, #0x10
	b .L080AB560
.L080AB53E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AB55E
.L080AB546:
	cmp r2, #0
	beq .L080AB556
	adds r0, r2, #0
	ldr r1, [sp, #0x38]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AB556:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AB546
.L080AB55E:
	adds r5, r2, #0
.L080AB560:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080AB570
.L080AB56A:
	adds r0, #0x10
	cmp r0, r2
	bne .L080AB56A
.L080AB570:
	cmp r1, #0
	beq .L080AB57A
	adds r0, r1, #0
	bl free
.L080AB57A:
	ldr r0, [sp, #0x4c]
	add r0, r8
	ldr r7, [sp, #0x4c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AB586:
	mov r0, sb
	cmp r0, #1
	bhi .L080AB58E
	b .L080AB458
.L080AB58E:
	movs r0, #0
	mov r1, sl
	strb r0, [r1, #1]
.L080AB594:
	ldr r1, [sp, #0x40]
	cmp r1, #9
	bhi .L080AB59C
	b .L080AB434
.L080AB59C:
	movs r0, #0
	ldr r2, [sp, #0x30]
	strb r0, [r2, #5]
.L080AB5A2:
	ldr r3, [sp, #0x30]
	ldrb r0, [r3, #6]
	cmp r0, #0
	beq .L080AB5D6
	ldr r4, [sp, #0x34]
	ldr r3, [r4]
	ldr r5, [sp, #0x30]
	movs r7, #0xd9
	lsls r7, r7, #2
	adds r0, r5, r7
	ldrb r1, [r0]
	movs r0, #0x54
	muls r0, r1, r0
	adds r0, r0, r5
	ldr r1, [r0, #0x1c]
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrb r2, [r0]
	ldr r4, [r3, #0x54]
	ldr r0, [sp, #0x34]
	movs r3, #1
	bl _call_via_r4
	movs r0, #0
	strb r0, [r5, #6]
.L080AB5D6:
	ldr r3, [sp, #0x34]
	ldr r0, [r3]
	ldr r1, [r0, #0x18]
	adds r0, r3, #0
	bl _call_via_r1
	str r0, [sp, #0x3c]
	ldr r4, [sp, #0x34]
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	mov sl, r0
	movs r5, #0
	mov r8, r5
	ldr r7, [sp, #0x30]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r7, r7, r0
	mov sb, r7
	ldr r1, [sp, #0x30]
	movs r2, #0xda
	lsls r2, r2, #2
	adds r7, r1, r2
.L080AB608:
	ldrb r0, [r7, #4]
	cmp r0, #0
	beq .L080AB66C
	ldrb r1, [r7, #6]
	movs r0, #0x54
	muls r0, r1, r0
	adds r0, #8
	ldr r4, [sp, #0x30]
	adds r3, r4, r0
	movs r1, #0
	ldrb r0, [r7, #5]
	cmp r0, #6
	bhi .L080AB624
	movs r1, #1
.L080AB624:
	movs r5, #2
	ldrsh r6, [r7, r5]
	movs r5, #0x80
	lsls r5, r5, #8
	subs r5, r5, r6
	movs r0, #0
	ldrsh r2, [r7, r0]
	ldr r4, [sp, #0x3c]
	subs r2, r2, r4
	mov r0, sl
	subs r6, r6, r0
	lsls r4, r1, #5
	adds r4, #4
	adds r4, r3, r4
	lsls r0, r1, #3
	adds r0, #0x44
	adds r0, r3, r0
	ldr r1, [r0, #4]
	str r2, [sp, #0x44]
	bl func_08007D4C
	str r5, [sp]
	str r4, [sp, #4]
	ldr r1, [sp, #0x34]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r3, sb
	str r3, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x44]
	adds r1, r2, #0
	adds r2, r6, #0
	movs r3, #0xaa
	ldr r4, .L080AB688 @ =func_030004DC
	bl _call_via_r4
.L080AB66C:
	adds r7, #8
	movs r4, #1
	add r8, r4
	mov r5, r8
	cmp r5, #0xf
	bls .L080AB608
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AB688: .4byte func_030004DC

	thumb_func_start func_080AB68C
func_080AB68C: @ 0x080AB68C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r2, #0
	adds r2, r3, #0
	ldr r7, [r0]
	movs r4, #0
.L080AB69E:
	lsls r0, r4, #3
	movs r3, #0xda
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r3, r7, r0
	ldrb r0, [r3, #4]
	cmp r0, #0
	bne .L080AB772
	strh r1, [r3]
	strh r5, [r3, #2]
	movs r0, #1
	strb r0, [r3, #4]
	movs r0, #0xc
	strb r0, [r3, #5]
	strb r2, [r3, #6]
	movs r0, #0x54
	muls r0, r2, r0
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	movs r1, #0xd9
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sb, r1
	cmp r0, #0
	bne .L080AB768
	cmp r2, #9
	bhi .L080AB710
	lsls r0, r2, #2
	ldr r1, .L080AB6E0 @ =.L080AB6E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AB6E0: .4byte .L080AB6E4
.L080AB6E4: @ jump table
	.4byte .L080AB710 @ case 0
	.4byte .L080AB70C @ case 1
	.4byte .L080AB70C @ case 2
	.4byte .L080AB710 @ case 3
	.4byte .L080AB710 @ case 4
	.4byte .L080AB710 @ case 5
	.4byte .L080AB714 @ case 6
	.4byte .L080AB714 @ case 7
	.4byte .L080AB718 @ case 8
	.4byte .L080AB71C @ case 9
.L080AB70C:
	movs r1, #2
	b .L080AB71E
.L080AB710:
	movs r1, #3
	b .L080AB71E
.L080AB714:
	movs r1, #5
	b .L080AB71E
.L080AB718:
	movs r1, #4
	b .L080AB71E
.L080AB71C:
	movs r1, #6
.L080AB71E:
	movs r0, #0x54
	adds r5, r2, #0
	muls r5, r0, r5
	adds r5, r5, r7
	adds r5, #8
	mov r8, r1
	movs r6, #0
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r3, r3, r7
	mov sb, r3
	adds r4, r5, #0
	adds r4, #0x44
.L080AB738:
	ldr r1, [r4, #4]
	adds r0, r4, #0
	str r2, [sp]
	bl func_08007C28
	adds r0, r4, #0
	mov r1, r8
	bl func_08007B54
	str r0, [r4, #4]
	rsbs r1, r0, #0
	orrs r1, r0
	ldr r2, [sp]
	cmp r1, #0
	bge .L080AB764
	adds r4, #8
	adds r6, #1
	cmp r6, #1
	bls .L080AB738
	movs r0, #1
	strb r0, [r5]
	strb r0, [r5, #1]
.L080AB764:
	movs r0, #1
	strb r0, [r7, #5]
.L080AB768:
	movs r0, #1
	strb r0, [r7, #6]
	mov r0, sb
	strb r2, [r0]
	b .L080AB778
.L080AB772:
	adds r4, #1
	cmp r4, #0xf
	bls .L080AB69E
.L080AB778:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080AB788
func_080AB788: @ 0x080AB788
	push {r4, lr}
	adds r4, r0, #0
	bl rand
	ldr r1, .L080AB7A0 @ =0x0000FFFF
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080AB7A0: .4byte 0x0000FFFF

	thumb_func_start func_080AB7A4
func_080AB7A4: @ 0x080AB7A4
	push {lr}
	cmp r0, #1
	beq .L080AB7D4
	cmp r0, #1
	bgt .L080AB7B4
	cmp r0, #0
	beq .L080AB7BE
	b .L080AB826
.L080AB7B4:
	cmp r0, #2
	beq .L080AB7EA
	cmp r0, #3
	beq .L080AB800
	b .L080AB826
.L080AB7BE:
	cmp r1, #1
	beq .L080AB818
	cmp r1, #1
	bgt .L080AB7CC
	cmp r1, #0
	beq .L080AB820
	b .L080AB7D4
.L080AB7CC:
	cmp r1, #2
	beq .L080AB824
	cmp r1, #3
	beq .L080AB81C
.L080AB7D4:
	cmp r1, #1
	beq .L080AB824
	cmp r1, #1
	bgt .L080AB7E2
	cmp r1, #0
	beq .L080AB81C
	b .L080AB7EA
.L080AB7E2:
	cmp r1, #2
	beq .L080AB818
	cmp r1, #3
	beq .L080AB820
.L080AB7EA:
	cmp r1, #1
	beq .L080AB820
	cmp r1, #1
	bgt .L080AB7F8
	cmp r1, #0
	beq .L080AB824
	b .L080AB800
.L080AB7F8:
	cmp r1, #2
	beq .L080AB81C
	cmp r1, #3
	beq .L080AB818
.L080AB800:
	cmp r1, #1
	beq .L080AB81C
	cmp r1, #1
	bgt .L080AB80E
	cmp r1, #0
	beq .L080AB818
	b .L080AB826
.L080AB80E:
	cmp r1, #2
	beq .L080AB820
	cmp r1, #3
	beq .L080AB824
	b .L080AB826
.L080AB818:
	movs r0, #3
	b .L080AB826
.L080AB81C:
	movs r0, #1
	b .L080AB826
.L080AB820:
	movs r0, #0
	b .L080AB826
.L080AB824:
	movs r0, #2
.L080AB826:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080AB82C
func_080AB82C: @ 0x080AB82C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x64
	bl func_080AB788
	adds r3, r0, #0
	movs r1, #0
	ldrb r2, [r4]
.L080AB83E:
	cmp r3, r2
	blo .L080AB854
	adds r1, #1
	cmp r1, r5
	bhs .L080AB852
	lsls r0, r1, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r2, r2, r0
	b .L080AB83E
.L080AB852:
	movs r1, #0
.L080AB854:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_080AB85C
func_080AB85C: @ 0x080AB85C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7, #0x28]
	str r0, [r7]
	movs r0, #0x14
	adds r0, r0, r7
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0x20
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0
	bl func_080AC124
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq .L080AB8C0
	ldr r3, [r7]
	adds r3, r3, r0
	movs r0, #0x20
	ldrsh r4, [r7, r0]
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r0, #4
	ldrsh r5, [r6, r0]
	movs r0, #6
	ldrsh r6, [r6, r0]
	add r2, sp, #8
	adds r0, r2, #0
	strh r4, [r0]
	adds r1, r3, r1
	strh r1, [r2, #2]
	strh r5, [r2, #4]
	adds r3, r3, r6
	strh r3, [r2, #6]
	mov r0, r8
	adds r1, r2, #0
	bl func_080AC070
	adds r1, r0, #0
	movs r0, #1
	eors r1, r0
	b .L080AB8C2
.L080AB8C0:
	movs r1, #0
.L080AB8C2:
	strb r1, [r7, #0x10]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080AB8D0
func_080AB8D0: @ 0x080AB8D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7, #0x28]
	rsbs r0, r0, #0
	str r0, [r7, #4]
	movs r0, #0x14
	adds r0, r0, r7
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0x20
	adds r3, r7, #4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0
	bl func_080AC124
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq .L080AB936
	ldr r3, [r7, #4]
	subs r3, r3, r0
	movs r0, #0x20
	ldrsh r4, [r7, r0]
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r0, #4
	ldrsh r5, [r6, r0]
	movs r0, #6
	ldrsh r6, [r6, r0]
	add r2, sp, #8
	adds r0, r2, #0
	strh r4, [r0]
	adds r1, r3, r1
	strh r1, [r2, #2]
	strh r5, [r2, #4]
	adds r3, r3, r6
	strh r3, [r2, #6]
	mov r0, r8
	adds r1, r2, #0
	bl func_080AC070
	adds r1, r0, #0
	movs r0, #1
	eors r1, r0
	b .L080AB938
.L080AB936:
	movs r1, #0
.L080AB938:
	strb r1, [r7, #0x11]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080AB948
func_080AB948: @ 0x080AB948
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7, #0x28]
	rsbs r0, r0, #0
	str r0, [r7, #8]
	movs r0, #0x14
	adds r0, r0, r7
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0x20
	adds r0, r7, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl func_080AC124
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	beq .L080AB9B2
	ldr r1, [r7, #8]
	subs r1, r1, r0
	movs r0, #0x20
	ldrsh r2, [r7, r0]
	movs r0, #2
	ldrsh r4, [r6, r0]
	movs r0, #4
	ldrsh r5, [r6, r0]
	movs r0, #6
	ldrsh r6, [r6, r0]
	add r3, sp, #8
	adds r2, r1, r2
	adds r0, r3, #0
	strh r2, [r0]
	strh r4, [r3, #2]
	adds r1, r1, r5
	strh r1, [r3, #4]
	strh r6, [r3, #6]
	mov r0, r8
	adds r1, r3, #0
	bl func_080AC070
	adds r1, r0, #0
	movs r0, #1
	eors r1, r0
	b .L080AB9B4
.L080AB9B2:
	movs r1, #0
.L080AB9B4:
	strb r1, [r7, #0x12]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080AB9C4
func_080AB9C4: @ 0x080AB9C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7, #0x28]
	str r0, [r7, #0xc]
	movs r0, #0x14
	adds r0, r0, r7
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0x20
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0xc
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl func_080AC124
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	beq .L080ABA2C
	ldr r1, [r7, #0xc]
	adds r1, r1, r0
	movs r0, #0x20
	ldrsh r2, [r7, r0]
	movs r0, #2
	ldrsh r4, [r6, r0]
	movs r0, #4
	ldrsh r5, [r6, r0]
	movs r0, #6
	ldrsh r6, [r6, r0]
	add r3, sp, #8
	adds r2, r1, r2
	adds r0, r3, #0
	strh r2, [r0]
	strh r4, [r3, #2]
	adds r1, r1, r5
	strh r1, [r3, #4]
	strh r6, [r3, #6]
	mov r0, r8
	adds r1, r3, #0
	bl func_080AC070
	adds r1, r0, #0
	movs r0, #1
	eors r1, r0
	b .L080ABA2E
.L080ABA2C:
	movs r1, #0
.L080ABA2E:
	strb r1, [r7, #0x13]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080ABA3C
func_080ABA3C: @ 0x080ABA3C
	push {r4, lr}
	sub sp, #0x34
	adds r4, r0, #0
	mov r1, sp
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	strb r0, [r1, #0x10]
	strb r0, [r1, #0x11]
	strb r0, [r1, #0x12]
	strb r0, [r1, #0x13]
	add r1, sp, #0x14
	str r0, [sp, #0x14]
	str r0, [r1, #4]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	add r1, sp, #0x20
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r1, #1
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r0, sp
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	strb r1, [r0, #0x12]
	strb r1, [r0, #0x13]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x34
	bl memcpy
	adds r0, r4, #0
	add sp, #0x34
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_080ABA90
func_080ABA90: @ 0x080ABA90
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	movs r2, #4
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bge .L080ABB18
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bge .L080ABB18
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	movs r2, #2
	ldrsh r0, [r6, r2]
	subs r5, r1, r0
	cmp r5, #0
	bgt .L080ABAE4
	ldr r1, [r4]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABAD0
	adds r0, r4, #0
	bl func_080AB85C
	ldr r0, [r4]
	b .L080ABAD2
.L080ABAD0:
	adds r0, r1, #0
.L080ABAD2:
	adds r0, r5, r0
	cmp r0, #0
	ble .L080ABAE4
	rsbs r0, r5, #0
	str r0, [r4]
	cmp r7, #1
	bne .L080ABAE4
	movs r0, #0
	strb r0, [r4, #0x10]
.L080ABAE4:
	movs r0, #0x22
	ldrsh r1, [r4, r0]
	movs r2, #6
	ldrsh r0, [r6, r2]
	subs r5, r1, r0
	cmp r5, #0
	blt .L080ABB18
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x28]
	cmn r1, r0
	bge .L080ABB04
	adds r0, r4, #0
	bl func_080AB8D0
	ldr r0, [r4, #4]
	b .L080ABB06
.L080ABB04:
	adds r0, r1, #0
.L080ABB06:
	adds r0, r5, r0
	cmp r0, #0
	bge .L080ABB18
	rsbs r0, r5, #0
	str r0, [r4, #4]
	cmp r7, #1
	bne .L080ABB18
	movs r0, #0
	strb r0, [r4, #0x11]
.L080ABB18:
	movs r0, #0x22
	ldrsh r1, [r4, r0]
	movs r2, #6
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bge .L080ABB98
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r2, #0x26
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bge .L080ABB98
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	movs r2, #4
	ldrsh r0, [r6, r2]
	subs r5, r1, r0
	cmp r5, #0
	blt .L080ABB64
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x28]
	cmn r1, r0
	bge .L080ABB50
	adds r0, r4, #0
	bl func_080AB948
	ldr r0, [r4, #8]
	b .L080ABB52
.L080ABB50:
	adds r0, r1, #0
.L080ABB52:
	adds r0, r5, r0
	cmp r0, #0
	bge .L080ABB64
	rsbs r0, r5, #0
	str r0, [r4, #8]
	cmp r7, #1
	bne .L080ABB64
	movs r0, #0
	strb r0, [r4, #0x12]
.L080ABB64:
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	movs r2, #0
	ldrsh r0, [r6, r2]
	subs r5, r1, r0
	cmp r5, #0
	bgt .L080ABB98
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABB84
	adds r0, r4, #0
	bl func_080AB9C4
	ldr r0, [r4, #0xc]
	b .L080ABB86
.L080ABB84:
	adds r0, r1, #0
.L080ABB86:
	adds r0, r5, r0
	cmp r0, #0
	ble .L080ABB98
	rsbs r0, r5, #0
	str r0, [r4, #0xc]
	cmp r7, #1
	bne .L080ABB98
	movs r0, #0
	strb r0, [r4, #0x13]
.L080ABB98:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080ABBA0
func_080ABBA0: @ 0x080ABBA0
	push {lr}
	sub sp, #8
	adds r2, r0, #0
	ldr r0, [r2, #0x24]
	str r0, [r2]
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r2, #0
	adds r1, #0x1c
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	bl func_080AC388
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080ABBC4
func_080ABBC4: @ 0x080ABBC4
	push {lr}
	sub sp, #8
	adds r2, r0, #0
	ldr r0, [r2, #0x24]
	rsbs r0, r0, #0
	str r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r2, #0
	adds r1, #0x1c
	adds r3, r2, #4
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	bl func_080AC388
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080ABBEC
func_080ABBEC: @ 0x080ABBEC
	push {lr}
	sub sp, #8
	adds r2, r0, #0
	ldr r0, [r2, #0x24]
	rsbs r0, r0, #0
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r2, #0
	adds r1, #0x1c
	adds r2, #8
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #0
	bl func_080AC388
	add sp, #8
	pop {r0}
	bx r0

	thumb_func_start func_080ABC14
func_080ABC14: @ 0x080ABC14
	push {lr}
	sub sp, #8
	adds r3, r0, #0
	ldr r0, [r3, #0x24]
	str r0, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x10
	adds r1, r3, #0
	adds r1, #0x1c
	movs r2, #0
	str r2, [sp]
	adds r2, r3, #0
	adds r2, #0xc
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl func_080AC388
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080ABC40
func_080ABC40: @ 0x080ABC40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r4, [sp, #0x44]
	subs r2, r2, r0
	str r2, [sp, #0x10]
	subs r3, r3, r1
	mov sl, r3
	adds r1, r2, #0
	cmp r2, #0
	bge .L080ABC5E
	rsbs r1, r2, #0
.L080ABC5E:
	mov r0, sl
	cmp r0, #0
	bge .L080ABC66
	rsbs r0, r0, #0
.L080ABC66:
	movs r2, #0
	str r2, [sp, #0x14]
	lsls r2, r1, #1
	lsls r3, r0, #1
	adds r0, r3, r0
	cmp r2, r0
	ble .L080ABC7A
	movs r5, #1
	str r5, [sp, #0x14]
	b .L080ABC86
.L080ABC7A:
	adds r0, r2, r1
	cmp r0, r3
	bge .L080ABC86
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x14]
.L080ABC86:
	ldr r1, .L080ABCB8 @ =0x7FFFFFFF
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r5, #0
	str r5, [sp, #0x20]
.L080ABC92:
	ldr r7, [sp, #0x20]
	ldr r0, [sp, #0x48]
	adds r1, r7, #0
	bl func_080AB7A4
	adds r5, r0, #0
	movs r0, #1
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r1, #1
	cmp r5, #1
	beq .L080ABD04
	cmp r5, #1
	bgt .L080ABCBC
	cmp r5, #0
	beq .L080ABCC6
	b .L080ABDC8
	.align 2, 0
.L080ABCB8: .4byte 0x7FFFFFFF
.L080ABCBC:
	cmp r5, #2
	beq .L080ABD3E
	cmp r5, #3
	beq .L080ABD7E
	b .L080ABDC8
.L080ABCC6:
	movs r0, #0
	mov r2, sl
	cmp r2, #0
	bgt .L080ABCD0
	movs r0, #1
.L080ABCD0:
	mov r8, r0
	ldr r0, [sp, #0x14]
	lsrs r0, r0, #0x1f
	mov sb, r0
	movs r6, #0
	ldr r1, [r4]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABCEC
	adds r0, r4, #0
	bl func_080AB85C
	ldr r0, [r4]
	b .L080ABCEE
.L080ABCEC:
	adds r0, r1, #0
.L080ABCEE:
	cmp r0, #0
	bne .L080ABDC6
	ldr r1, [r4]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABD00
	adds r0, r4, #0
	bl func_080AB85C
.L080ABD00:
	ldrb r0, [r4, #0x10]
	b .L080ABDC0
.L080ABD04:
	mov r1, sl
	mvns r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	ldr r2, [sp, #0x14]
	lsrs r2, r2, #0x1f
	mov sb, r2
	movs r6, #0
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x28]
	cmn r1, r0
	bge .L080ABD26
	adds r0, r4, #0
	bl func_080AB8D0
	ldr r0, [r4, #4]
	b .L080ABD28
.L080ABD26:
	adds r0, r1, #0
.L080ABD28:
	cmp r0, #0
	bne .L080ABDC6
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #4]
	cmn r0, r1
	bge .L080ABD3A
	adds r0, r4, #0
	bl func_080AB8D0
.L080ABD3A:
	ldrb r0, [r4, #0x11]
	b .L080ABDC0
.L080ABD3E:
	ldr r1, [sp, #0x10]
	mvns r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	movs r0, #0
	ldr r2, [sp, #0x14]
	cmp r2, #0
	ble .L080ABD50
	movs r0, #1
.L080ABD50:
	mov sb, r0
	movs r6, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x28]
	cmn r1, r0
	bge .L080ABD66
	adds r0, r4, #0
	bl func_080AB948
	ldr r0, [r4, #8]
	b .L080ABD68
.L080ABD66:
	adds r0, r1, #0
.L080ABD68:
	cmp r0, #0
	bne .L080ABDC6
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #8]
	cmn r0, r1
	bge .L080ABD7A
	adds r0, r4, #0
	bl func_080AB948
.L080ABD7A:
	ldrb r0, [r4, #0x12]
	b .L080ABDC0
.L080ABD7E:
	movs r0, #0
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bgt .L080ABD88
	movs r0, #1
.L080ABD88:
	mov r8, r0
	movs r0, #0
	ldr r2, [sp, #0x14]
	cmp r2, #0
	ble .L080ABD94
	movs r0, #1
.L080ABD94:
	mov sb, r0
	movs r6, #0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABDAA
	adds r0, r4, #0
	bl func_080AB9C4
	ldr r0, [r4, #0xc]
	b .L080ABDAC
.L080ABDAA:
	adds r0, r1, #0
.L080ABDAC:
	cmp r0, #0
	bne .L080ABDC6
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABDBE
	adds r0, r4, #0
	bl func_080AB9C4
.L080ABDBE:
	ldrb r0, [r4, #0x13]
.L080ABDC0:
	cmp r0, #0
	bne .L080ABDC6
	movs r6, #1
.L080ABDC6:
	adds r1, r6, #0
.L080ABDC8:
	movs r3, #1
	rsbs r3, r3, #0
	mov r0, r8
	cmp r0, #0
	beq .L080ABDD4
	movs r3, #1
.L080ABDD4:
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r1, r0, #0x1f
	movs r0, #8
	ands r1, r0
	cmp r7, #2
	bgt .L080ABDF2
	cmp r7, #1
	bge .L080ABDEE
	cmp r7, #0
	bne .L080ABDF2
	movs r2, #0
	b .L080ABDF4
.L080ABDEE:
	movs r2, #1
	b .L080ABDF4
.L080ABDF2:
	movs r2, #2
.L080ABDF4:
	mov r0, sb
	cmp r0, #0
	beq .L080ABE00
	lsls r0, r3, #1
	adds r0, r1, r0
	b .L080ABE02
.L080ABE00:
	adds r0, r1, r3
.L080ABE02:
	adds r0, r0, r2
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bne .L080ABE18
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #2
	add r0, sp
	str r5, [r0]
	adds r2, #1
	str r2, [sp, #0x1c]
	b .L080ABE26
.L080ABE18:
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bge .L080ABE26
	str r5, [sp]
	movs r2, #1
	str r2, [sp, #0x1c]
	str r0, [sp, #0x18]
.L080ABE26:
	ldr r5, [sp, #0x20]
	adds r5, #1
	str r5, [sp, #0x20]
	cmp r5, #3
	bgt .L080ABE32
	b .L080ABC92
.L080ABE32:
	mov r4, sp
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bls .L080ABE42
	bl func_080AB788
	lsls r0, r0, #2
	b .L080ABE44
.L080ABE42:
	movs r0, #0
.L080ABE44:
	adds r0, r4, r0
	ldr r0, [r0]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080ABE58
func_080ABE58: @ 0x080ABE58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r4, [sp, #0x44]
	subs r2, r2, r0
	str r2, [sp, #0x10]
	subs r3, r3, r1
	mov sl, r3
	adds r1, r2, #0
	cmp r2, #0
	bge .L080ABE76
	rsbs r1, r2, #0
.L080ABE76:
	mov r0, sl
	cmp r0, #0
	bge .L080ABE7E
	rsbs r0, r0, #0
.L080ABE7E:
	movs r2, #0
	str r2, [sp, #0x14]
	lsls r2, r1, #1
	lsls r3, r0, #1
	adds r0, r3, r0
	cmp r2, r0
	ble .L080ABE92
	movs r5, #1
	str r5, [sp, #0x14]
	b .L080ABE9E
.L080ABE92:
	adds r0, r2, r1
	cmp r0, r3
	bge .L080ABE9E
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x14]
.L080ABE9E:
	ldr r1, .L080ABED0 @ =0x7FFFFFFF
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r5, #0
	str r5, [sp, #0x20]
.L080ABEAA:
	ldr r7, [sp, #0x20]
	ldr r0, [sp, #0x48]
	adds r1, r7, #0
	bl func_080AB7A4
	adds r5, r0, #0
	movs r0, #1
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r1, #1
	cmp r5, #1
	beq .L080ABF1C
	cmp r5, #1
	bgt .L080ABED4
	cmp r5, #0
	beq .L080ABEDE
	b .L080ABFE0
	.align 2, 0
.L080ABED0: .4byte 0x7FFFFFFF
.L080ABED4:
	cmp r5, #2
	beq .L080ABF56
	cmp r5, #3
	beq .L080ABF96
	b .L080ABFE0
.L080ABEDE:
	movs r0, #0
	mov r2, sl
	cmp r2, #0
	bgt .L080ABEE8
	movs r0, #1
.L080ABEE8:
	mov r8, r0
	ldr r0, [sp, #0x14]
	lsrs r0, r0, #0x1f
	mov sb, r0
	movs r6, #0
	ldr r1, [r4]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABF04
	adds r0, r4, #0
	bl func_080AB85C
	ldr r0, [r4]
	b .L080ABF06
.L080ABF04:
	adds r0, r1, #0
.L080ABF06:
	cmp r0, #0
	bne .L080ABFDE
	ldr r1, [r4]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABF18
	adds r0, r4, #0
	bl func_080AB85C
.L080ABF18:
	ldrb r0, [r4, #0x10]
	b .L080ABFD8
.L080ABF1C:
	mov r1, sl
	mvns r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	ldr r2, [sp, #0x14]
	lsrs r2, r2, #0x1f
	mov sb, r2
	movs r6, #0
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x28]
	cmn r1, r0
	bge .L080ABF3E
	adds r0, r4, #0
	bl func_080AB8D0
	ldr r0, [r4, #4]
	b .L080ABF40
.L080ABF3E:
	adds r0, r1, #0
.L080ABF40:
	cmp r0, #0
	bne .L080ABFDE
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #4]
	cmn r0, r1
	bge .L080ABF52
	adds r0, r4, #0
	bl func_080AB8D0
.L080ABF52:
	ldrb r0, [r4, #0x11]
	b .L080ABFD8
.L080ABF56:
	ldr r1, [sp, #0x10]
	mvns r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	movs r0, #0
	ldr r2, [sp, #0x14]
	cmp r2, #0
	ble .L080ABF68
	movs r0, #1
.L080ABF68:
	mov sb, r0
	movs r6, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x28]
	cmn r1, r0
	bge .L080ABF7E
	adds r0, r4, #0
	bl func_080AB948
	ldr r0, [r4, #8]
	b .L080ABF80
.L080ABF7E:
	adds r0, r1, #0
.L080ABF80:
	cmp r0, #0
	bne .L080ABFDE
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #8]
	cmn r0, r1
	bge .L080ABF92
	adds r0, r4, #0
	bl func_080AB948
.L080ABF92:
	ldrb r0, [r4, #0x12]
	b .L080ABFD8
.L080ABF96:
	movs r0, #0
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bgt .L080ABFA0
	movs r0, #1
.L080ABFA0:
	mov r8, r0
	movs r0, #0
	ldr r2, [sp, #0x14]
	cmp r2, #0
	ble .L080ABFAC
	movs r0, #1
.L080ABFAC:
	mov sb, r0
	movs r6, #0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABFC2
	adds r0, r4, #0
	bl func_080AB9C4
	ldr r0, [r4, #0xc]
	b .L080ABFC4
.L080ABFC2:
	adds r0, r1, #0
.L080ABFC4:
	cmp r0, #0
	bne .L080ABFDE
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABFD6
	adds r0, r4, #0
	bl func_080AB9C4
.L080ABFD6:
	ldrb r0, [r4, #0x13]
.L080ABFD8:
	cmp r0, #0
	bne .L080ABFDE
	movs r6, #1
.L080ABFDE:
	adds r1, r6, #0
.L080ABFE0:
	movs r3, #1
	mov r0, r8
	cmp r0, #0
	beq .L080ABFEA
	subs r3, #2
.L080ABFEA:
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r1, r0, #0x1f
	movs r0, #8
	ands r1, r0
	cmp r7, #2
	bgt .L080AC008
	cmp r7, #1
	bge .L080AC004
	cmp r7, #0
	bne .L080AC008
	movs r2, #0
	b .L080AC00A
.L080AC004:
	movs r2, #1
	b .L080AC00A
.L080AC008:
	movs r2, #2
.L080AC00A:
	mov r0, sb
	cmp r0, #0
	beq .L080AC016
	lsls r0, r3, #1
	adds r0, r1, r0
	b .L080AC018
.L080AC016:
	adds r0, r1, r3
.L080AC018:
	adds r0, r0, r2
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bne .L080AC02E
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #2
	add r0, sp
	str r5, [r0]
	adds r2, #1
	str r2, [sp, #0x1c]
	b .L080AC03C
.L080AC02E:
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bge .L080AC03C
	str r5, [sp]
	movs r2, #1
	str r2, [sp, #0x1c]
	str r0, [sp, #0x18]
.L080AC03C:
	ldr r5, [sp, #0x20]
	adds r5, #1
	str r5, [sp, #0x20]
	cmp r5, #3
	bgt .L080AC048
	b .L080ABEAA
.L080AC048:
	mov r4, sp
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bls .L080AC058
	bl func_080AB788
	lsls r0, r0, #2
	b .L080AC05A
.L080AC058:
	movs r0, #0
.L080AC05A:
	adds r0, r4, r0
	ldr r0, [r0]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080AC070
func_080AC070: @ 0x080AC070
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r2, r0, #0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	str r0, [sp]
	movs r3, #4
	ldrsh r0, [r1, r3]
	adds r0, #7
	asrs r0, r0, #3
	mov r8, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x13
	movs r4, #6
	ldrsh r0, [r1, r4]
	adds r0, #7
	asrs r0, r0, #3
	mov sl, r0
	ldr r7, [r2]
	ldrh r0, [r2, #8]
	mov sb, r0
	cmp r7, #0
	beq .L080AC110
	ldr r1, [sp]
	cmp r1, #0
	blt .L080AC110
	cmp r8, sb
	bhi .L080AC110
	cmp r3, #0
	blt .L080AC110
	ldrh r4, [r2, #0xa]
	cmp sl, r4
	bgt .L080AC110
	ldr r2, [r2, #4]
	mov ip, r2
	adds r6, r3, #0
	cmp r6, sl
	bge .L080AC10C
	mov r5, sb
	muls r5, r6, r5
.L080AC0CC:
	ldr r2, [sp]
	cmp r2, r8
	bge .L080AC104
	adds r0, r2, r5
	lsls r4, r0, #2
	mov r1, ip
	adds r0, r5, r1
	adds r3, r2, r0
.L080AC0DC:
	mov r0, ip
	cmp r0, #0
	beq .L080AC0EA
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r7, r0
	b .L080AC0EC
.L080AC0EA:
	adds r0, r7, r4
.L080AC0EC:
	ldr r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne .L080AC110
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt .L080AC110
	adds r4, #4
	adds r3, #1
	adds r2, #1
	cmp r2, r8
	blt .L080AC0DC
.L080AC104:
	add r5, sb
	adds r6, #1
	cmp r6, sl
	blt .L080AC0CC
.L080AC10C:
	movs r0, #0
	b .L080AC112
.L080AC110:
	movs r0, #1
.L080AC112:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080AC124
func_080AC124: @ 0x080AC124
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r4, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r7, r0, #0x13
	movs r2, #4
	ldrsh r0, [r1, r2]
	adds r0, #7
	asrs r0, r0, #3
	str r0, [sp, #0xc]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	str r0, [sp, #0x10]
	movs r3, #6
	ldrsh r1, [r1, r3]
	adds r0, r1, #7
	asrs r0, r0, #3
	str r0, [sp, #0x14]
	ldr r0, [r4]
	mov r8, r0
	ldrh r2, [r4, #8]
	mov sb, r2
	ldr r3, [r4, #4]
	mov sl, r3
	ldr r0, [sp, #4]
	cmp r0, #0
	beq .L080AC1E0
	ldr r2, [r0]
	str r2, [sp, #0x18]
	ldr r3, [sp, #0x14]
	lsls r0, r3, #3
	subs r6, r0, r1
	cmp r6, r2
	bge .L080AC1E0
	ldrh r0, [r4, #0xa]
	subs r0, #1
	str r0, [sp, #0x1c]
	mov ip, r3
	cmp r3, r0
	bgt .L080AC1DC
	mov r5, sb
	muls r5, r3, r5
.L080AC18A:
	adds r4, r7, #0
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bge .L080AC1C8
	adds r0, r7, r5
	lsls r3, r0, #2
	mov r1, sl
	adds r0, r5, r1
	adds r2, r7, r0
.L080AC19C:
	mov r0, sl
	cmp r0, #0
	beq .L080AC1AA
	ldrb r0, [r2]
	lsls r0, r0, #2
	add r0, r8
	b .L080AC1AE
.L080AC1AA:
	mov r1, r8
	adds r0, r1, r3
.L080AC1AE:
	ldr r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne .L080AC1DC
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt .L080AC1DC
	adds r3, #4
	adds r2, #1
	adds r4, #1
	ldr r0, [sp, #0xc]
	cmp r4, r0
	blt .L080AC19C
.L080AC1C8:
	adds r6, #8
	ldr r1, [sp, #0x18]
	cmp r6, r1
	bge .L080AC1E0
	add r5, sb
	movs r2, #1
	add ip, r2
	ldr r3, [sp, #0x1c]
	cmp ip, r3
	ble .L080AC18A
.L080AC1DC:
	ldr r0, [sp, #4]
	str r6, [r0]
.L080AC1E0:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080AC26A
	ldr r2, [r1]
	str r2, [sp, #0x20]
	ldr r3, [sp, #0x10]
	lsls r1, r3, #3
	ldr r2, [sp]
	movs r3, #2
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	mov ip, r1
	ldr r0, [sp, #0x20]
	cmp ip, r0
	ble .L080AC26A
	ldr r6, [sp, #0x10]
	subs r6, #1
	cmp r6, #0
	blt .L080AC264
	mov r5, sb
	muls r5, r6, r5
	mov r1, sb
	rsbs r1, r1, #0
	str r1, [sp, #0x30]
.L080AC210:
	adds r4, r7, #0
	ldr r2, [sp, #0xc]
	cmp r7, r2
	bge .L080AC24E
	adds r0, r7, r5
	lsls r3, r0, #2
	mov r1, sl
	adds r0, r5, r1
	adds r1, r7, r0
.L080AC222:
	mov r2, sl
	cmp r2, #0
	beq .L080AC230
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, r8
	b .L080AC234
.L080AC230:
	mov r2, r8
	adds r0, r2, r3
.L080AC234:
	ldr r2, [r0]
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne .L080AC264
	lsls r0, r2, #0x1e
	cmp r0, #0
	blt .L080AC264
	adds r3, #4
	adds r1, #1
	adds r4, #1
	ldr r0, [sp, #0xc]
	cmp r4, r0
	blt .L080AC222
.L080AC24E:
	movs r1, #8
	rsbs r1, r1, #0
	add ip, r1
	ldr r2, [sp, #0x20]
	cmp ip, r2
	ble .L080AC26A
	ldr r3, [sp, #0x30]
	adds r5, r5, r3
	subs r6, #1
	cmp r6, #0
	bge .L080AC210
.L080AC264:
	mov r0, ip
	ldr r1, [sp, #8]
	str r0, [r1]
.L080AC26A:
	ldr r2, [sp, #0x54]
	cmp r2, #0
	beq .L080AC2EA
	ldr r3, [r2]
	mov ip, r3
	lsls r1, r7, #3
	ldr r2, [sp]
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r6, r1, r0
	cmp r6, ip
	ble .L080AC2EA
	subs r5, r7, #1
	cmp r5, #0
	blt .L080AC2E6
	ldr r1, [sp, #0x10]
	lsls r0, r1, #2
	mov r2, sb
	muls r2, r0, r2
	str r2, [sp, #0x2c]
.L080AC292:
	ldr r4, [sp, #0x10]
	ldr r3, [sp, #0x14]
	cmp r4, r3
	bge .L080AC2DA
	lsls r0, r5, #2
	ldr r1, [sp, #0x2c]
	adds r3, r1, r0
	mov r1, sb
	muls r1, r4, r1
	mov r2, sl
	adds r0, r5, r2
	adds r1, r1, r0
	mov r0, sb
	lsls r7, r0, #2
.L080AC2AE:
	mov r2, sl
	cmp r2, #0
	beq .L080AC2BC
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, r8
	b .L080AC2C0
.L080AC2BC:
	mov r2, r8
	adds r0, r2, r3
.L080AC2C0:
	ldr r2, [r0]
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne .L080AC2E6
	lsls r0, r2, #0x1e
	cmp r0, #0
	blt .L080AC2E6
	adds r3, r3, r7
	add r1, sb
	adds r4, #1
	ldr r0, [sp, #0x14]
	cmp r4, r0
	blt .L080AC2AE
.L080AC2DA:
	subs r6, #8
	cmp r6, ip
	ble .L080AC2EA
	subs r5, #1
	cmp r5, #0
	bge .L080AC292
.L080AC2E6:
	ldr r1, [sp, #0x54]
	str r6, [r1]
.L080AC2EA:
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq .L080AC378
	ldr r3, [r2]
	str r3, [sp, #0x24]
	ldr r0, [sp, #0xc]
	lsls r1, r0, #3
	ldr r2, [sp]
	movs r3, #4
	ldrsh r0, [r2, r3]
	subs r6, r1, r0
	ldr r0, [sp, #0x24]
	cmp r6, r0
	bge .L080AC378
	movs r1, #1
	rsbs r1, r1, #0
	add r1, sb
	mov ip, r1
	ldr r5, [sp, #0xc]
	cmp r5, ip
	bgt .L080AC374
	ldr r2, [sp, #0x10]
	lsls r0, r2, #2
	mov r3, sb
	muls r3, r0, r3
	str r3, [sp, #0x28]
.L080AC31E:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r3, r0
	bge .L080AC366
	lsls r0, r5, #2
	ldr r1, [sp, #0x28]
	adds r4, r1, r0
	mov r1, sb
	muls r1, r3, r1
	mov r2, sl
	adds r0, r5, r2
	adds r1, r1, r0
	mov r0, sb
	lsls r7, r0, #2
.L080AC33A:
	mov r2, sl
	cmp r2, #0
	beq .L080AC348
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, r8
	b .L080AC34C
.L080AC348:
	mov r2, r8
	adds r0, r2, r4
.L080AC34C:
	ldr r2, [r0]
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne .L080AC374
	lsls r0, r2, #0x1e
	cmp r0, #0
	blt .L080AC374
	adds r4, r4, r7
	add r1, sb
	adds r3, #1
	ldr r0, [sp, #0x14]
	cmp r3, r0
	blt .L080AC33A
.L080AC366:
	adds r6, #8
	ldr r1, [sp, #0x24]
	cmp r6, r1
	bge .L080AC378
	adds r5, #1
	cmp r5, ip
	ble .L080AC31E
.L080AC374:
	ldr r2, [sp, #0x58]
	str r6, [r2]
.L080AC378:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080AC388
func_080AC388: @ 0x080AC388
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r4, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x13
	movs r2, #4
	ldrsh r0, [r1, r2]
	adds r0, #7
	asrs r0, r0, #3
	mov sl, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	str r0, [sp, #0xc]
	movs r3, #6
	ldrsh r1, [r1, r3]
	adds r0, r1, #7
	asrs r0, r0, #3
	str r0, [sp, #0x10]
	ldr r7, [r4]
	mov ip, r7
	ldrh r0, [r4, #8]
	mov r8, r0
	ldr r2, [r4, #4]
	mov sb, r2
	ldr r3, [sp, #4]
	cmp r3, #0
	beq .L080AC43C
	ldr r7, [r3]
	str r7, [sp, #0x14]
	ldr r2, [sp, #0x10]
	lsls r0, r2, #3
	subs r5, r0, r1
	cmp r5, r7
	bge .L080AC43C
	ldrh r0, [r4, #0xa]
	subs r0, #1
	str r0, [sp, #0x18]
	str r2, [sp, #0x2c]
	cmp r2, r0
	bgt .L080AC438
	mov r4, r8
	muls r4, r2, r4
.L080AC3EE:
	adds r3, r6, #0
	cmp r6, sl
	bge .L080AC422
	adds r0, r6, r4
	lsls r2, r0, #2
	mov r7, sb
	adds r0, r4, r7
	adds r1, r6, r0
.L080AC3FE:
	mov r0, sb
	cmp r0, #0
	beq .L080AC40C
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, ip
	b .L080AC410
.L080AC40C:
	mov r7, ip
	adds r0, r7, r2
.L080AC410:
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne .L080AC438
	adds r2, #4
	adds r1, #1
	adds r3, #1
	cmp r3, sl
	blt .L080AC3FE
.L080AC422:
	adds r5, #8
	ldr r0, [sp, #0x14]
	cmp r5, r0
	bge .L080AC43C
	add r4, r8
	ldr r1, [sp, #0x2c]
	adds r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x18]
	cmp r1, r2
	ble .L080AC3EE
.L080AC438:
	ldr r3, [sp, #4]
	str r5, [r3]
.L080AC43C:
	ldr r7, [sp, #8]
	cmp r7, #0
	beq .L080AC4BC
	ldr r0, [r7]
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	lsls r1, r2, #3
	ldr r3, [sp]
	movs r7, #2
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	ble .L080AC4BC
	adds r5, r2, #0
	subs r5, #1
	cmp r5, #0
	blt .L080AC4B6
	mov r4, r8
	muls r4, r5, r4
	mov r1, r8
	rsbs r1, r1, #0
	str r1, [sp, #0x28]
.L080AC46C:
	adds r3, r6, #0
	cmp r6, sl
	bge .L080AC4A0
	adds r0, r6, r4
	lsls r1, r0, #2
	mov r2, sb
	adds r0, r4, r2
	adds r2, r6, r0
.L080AC47C:
	mov r7, sb
	cmp r7, #0
	beq .L080AC48A
	ldrb r0, [r2]
	lsls r0, r0, #2
	add r0, ip
	b .L080AC48E
.L080AC48A:
	mov r7, ip
	adds r0, r7, r1
.L080AC48E:
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne .L080AC4B6
	adds r1, #4
	adds r2, #1
	adds r3, #1
	cmp r3, sl
	blt .L080AC47C
.L080AC4A0:
	ldr r0, [sp, #0x2c]
	subs r0, #8
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x1c]
	cmp r0, r1
	ble .L080AC4BC
	ldr r2, [sp, #0x28]
	adds r4, r4, r2
	subs r5, #1
	cmp r5, #0
	bge .L080AC46C
.L080AC4B6:
	ldr r3, [sp, #0x2c]
	ldr r7, [sp, #8]
	str r3, [r7]
.L080AC4BC:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq .L080AC53A
	ldr r1, [r0]
	str r1, [sp, #0x2c]
	lsls r1, r6, #3
	ldr r2, [sp]
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r5, r1, r0
	ldr r7, [sp, #0x2c]
	cmp r5, r7
	ble .L080AC53A
	subs r4, r6, #1
	cmp r4, #0
	blt .L080AC536
	ldr r1, [sp, #0xc]
	lsls r0, r1, #2
	mov r2, r8
	muls r2, r0, r2
	str r2, [sp, #0x24]
.L080AC4E6:
	ldr r3, [sp, #0xc]
	ldr r6, [sp, #0x10]
	cmp r3, r6
	bge .L080AC528
	lsls r0, r4, #2
	ldr r7, [sp, #0x24]
	adds r2, r7, r0
	mov r1, r8
	muls r1, r3, r1
	mov r6, sb
	adds r0, r4, r6
	adds r1, r1, r0
	mov r7, r8
	lsls r6, r7, #2
.L080AC502:
	mov r0, sb
	cmp r0, #0
	beq .L080AC510
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, ip
	b .L080AC514
.L080AC510:
	mov r7, ip
	adds r0, r7, r2
.L080AC514:
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne .L080AC536
	adds r2, r2, r6
	add r1, r8
	adds r3, #1
	ldr r0, [sp, #0x10]
	cmp r3, r0
	blt .L080AC502
.L080AC528:
	subs r5, #8
	ldr r1, [sp, #0x2c]
	cmp r5, r1
	ble .L080AC53A
	subs r4, #1
	cmp r4, #0
	bge .L080AC4E6
.L080AC536:
	ldr r2, [sp, #0x50]
	str r5, [r2]
.L080AC53A:
	ldr r3, [sp, #0x54]
	cmp r3, #0
	beq .L080AC5C0
	ldr r6, [r3]
	str r6, [sp, #0x20]
	mov r7, sl
	lsls r1, r7, #3
	ldr r2, [sp]
	movs r3, #4
	ldrsh r0, [r2, r3]
	subs r5, r1, r0
	cmp r5, r6
	bge .L080AC5C0
	mov r6, r8
	subs r6, #1
	str r6, [sp, #0x2c]
	mov r4, sl
	cmp r4, r6
	bgt .L080AC5BC
	ldr r7, [sp, #0xc]
	lsls r0, r7, #2
	mov r1, r8
	muls r1, r0, r1
	mov sl, r1
.L080AC56A:
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	cmp r2, r3
	bge .L080AC5AC
	lsls r0, r4, #2
	mov r6, sl
	adds r3, r6, r0
	mov r1, r8
	muls r1, r2, r1
	mov r7, sb
	adds r0, r4, r7
	adds r1, r1, r0
	mov r0, r8
	lsls r6, r0, #2
.L080AC586:
	mov r7, sb
	cmp r7, #0
	beq .L080AC594
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, ip
	b .L080AC598
.L080AC594:
	mov r7, ip
	adds r0, r7, r3
.L080AC598:
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne .L080AC5BC
	adds r3, r3, r6
	add r1, r8
	adds r2, #1
	ldr r0, [sp, #0x10]
	cmp r2, r0
	blt .L080AC586
.L080AC5AC:
	adds r5, #8
	ldr r1, [sp, #0x20]
	cmp r5, r1
	bge .L080AC5C0
	adds r4, #1
	ldr r2, [sp, #0x2c]
	cmp r4, r2
	ble .L080AC56A
.L080AC5BC:
	ldr r3, [sp, #0x54]
	str r5, [r3]
.L080AC5C0:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080AC5D0
func_080AC5D0: @ 0x080AC5D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r0, r2, #0
	subs r0, #8
	asrs r3, r0, #3
	subs r0, r1, #6
	asrs r0, r0, #3
	mov sl, r0
	adds r2, #3
	asrs r2, r2, #3
	mov r8, r2
	adds r1, #5
	asrs r7, r1, #3
	cmp r3, r8
	bgt .L080AC618
	cmp sl, r7
	bgt .L080AC618
	ldrh r0, [r4, #8]
	mov sb, r0
	cmp r3, #0
	blt .L080AC618
	mov r1, sl
	cmp r1, #0
	blt .L080AC618
	ldrh r0, [r4, #0xa]
	cmp r8, r0
	bhs .L080AC618
	cmp r7, sb
	bhs .L080AC618
	ldr r6, [r4]
	cmp r6, #0
	bne .L080AC61C
.L080AC618:
	movs r0, #0
	b .L080AC666
.L080AC61C:
	ldr r4, [r4, #4]
	mov ip, r4
	adds r5, r3, #0
	cmp r5, r8
	bgt .L080AC664
	mov r4, sb
	muls r4, r5, r4
.L080AC62A:
	mov r3, sl
	cmp r3, r7
	bgt .L080AC65C
	adds r0, r3, r4
	lsls r2, r0, #2
	mov r1, ip
	adds r0, r4, r1
	adds r1, r3, r0
.L080AC63A:
	mov r0, ip
	cmp r0, #0
	beq .L080AC648
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r6, r0
	b .L080AC64A
.L080AC648:
	adds r0, r6, r2
.L080AC64A:
	ldr r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge .L080AC618
	adds r2, #4
	adds r1, #1
	adds r3, #1
	cmp r3, r7
	ble .L080AC63A
.L080AC65C:
	add r4, sb
	adds r5, #1
	cmp r5, r8
	ble .L080AC62A
.L080AC664:
	movs r0, #1
.L080AC666:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080AC674
func_080AC674: @ 0x080AC674
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov sl, r1
	ldr r0, [r1]
	movs r1, #0
	mov r2, sl
	str r1, [r2]
	str r0, [r5]
	movs r7, #0xca
	lsls r7, r7, #1
	adds r0, r5, r7
	str r1, [r0]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r3, r5, r0
	movs r2, #0x15
	movs r1, #0xff
	mov ip, r1
	movs r4, #0
	movs r7, #1
	mov r8, r7
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, #0xa0
	adds r1, r5, r0
.L080AC6B0:
	ldrb r0, [r1]
	mov r7, ip
	orrs r0, r7
	strb r0, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, r8
	strb r0, [r1, #3]
	adds r1, #0x84
	subs r2, #1
	cmp r2, r6
	bne .L080AC6B0
	ldr r1, .L080AC814 @ =0x00000B78
	adds r4, r3, r1
	movs r6, #0xc
	ldr r2, .L080AC818 @ =0x00000C14
	adds r7, r3, r2
	ldr r0, .L080AC81C @ =0x00000C15
	adds r0, r0, r3
	mov r8, r0
	ldr r1, .L080AC820 @ =0x0000102C
	adds r1, r5, r1
	str r1, [sp, #8]
	adds r2, r5, #4
	str r2, [sp, #4]
	movs r0, #0xca
	lsls r0, r0, #1
	adds r0, r5, r0
	str r0, [sp, #0xc]
	movs r1, #0
	mov sb, r1
.L080AC6EE:
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	adds r1, r0, #0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	strb r0, [r4, #8]
	movs r0, #0xff
	strb r0, [r4, #9]
	mov r2, sb
	strb r2, [r4, #0xa]
	adds r4, #0xc
	subs r6, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne .L080AC6EE
	movs r4, #0
	strb r4, [r7]
	mov r7, r8
	strb r4, [r7]
	movs r1, #0xdb
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, .L080AC824 @ =gUnk_0858BA28
	bl func_0805E6CC
	movs r2, #0xde
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, .L080AC828 @ =gUnk_086678A0
	bl func_0805E6CC
	movs r7, #0xe1
	lsls r7, r7, #4
	adds r0, r5, r7
	ldr r1, .L080AC82C @ =gUnk_0871EF00
	bl func_0805E6CC
	movs r1, #0xe4
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, .L080AC830 @ =gUnk_086FAA80
	bl func_0805E6CC
	movs r2, #0xe7
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, .L080AC834 @ =gUnk_0871D51C
	bl func_0805E6CC
	adds r7, #0x90
	adds r0, r5, r7
	ldr r1, .L080AC838 @ =gUnk_0871EDD4
	bl func_0805E6CC
	movs r1, #0xed
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, .L080AC83C @ =gUnk_0871ECAC
	bl func_0805E6CC
	movs r2, #0xf0
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, .L080AC840 @ =gUnk_08667060
	bl func_0805E6CC
	adds r7, #0x90
	adds r0, r5, r7
	ldr r1, .L080AC844 @ =gUnk_08727A74
	bl func_0805E6CC
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, .L080AC848 @ =gUnk_08726CCC
	bl func_0805E6CC
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, .L080AC84C @ =gUnk_08727368
	bl func_0805E6CC
	adds r7, #0x90
	adds r0, r5, r7
	ldr r1, .L080AC850 @ =gUnk_08725DA0
	bl func_0805E6CC
	movs r1, #0xff
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, .L080AC854 @ =gUnk_086F2FAC
	bl func_0805E6CC
	movs r2, #0x81
	lsls r2, r2, #5
	adds r0, r5, r2
	str r4, [r0]
	adds r7, #0x64
	adds r0, r5, r7
	str r4, [r0]
	ldr r0, .L080AC858 @ =0x00001028
	adds r1, r5, r0
	str r4, [r1]
	movs r0, #0
	ldr r2, [sp, #8]
	strh r4, [r2]
	strh r4, [r2, #2]
	strb r0, [r1, #9]
	str r4, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq .L080AC7E8
	movs r2, #0
.L080AC7E2:
	stm r0!, {r2}
	cmp r0, r1
	bne .L080AC7E2
.L080AC7E8:
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #0
	beq .L080AC800
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AC800:
	adds r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080AC814: .4byte 0x00000B78
.L080AC818: .4byte 0x00000C14
.L080AC81C: .4byte 0x00000C15
.L080AC820: .4byte 0x0000102C
.L080AC824: .4byte gUnk_0858BA28
.L080AC828: .4byte gUnk_086678A0
.L080AC82C: .4byte gUnk_0871EF00
.L080AC830: .4byte gUnk_086FAA80
.L080AC834: .4byte gUnk_0871D51C
.L080AC838: .4byte gUnk_0871EDD4
.L080AC83C: .4byte gUnk_0871ECAC
.L080AC840: .4byte gUnk_08667060
.L080AC844: .4byte gUnk_08727A74
.L080AC848: .4byte gUnk_08726CCC
.L080AC84C: .4byte gUnk_08727368
.L080AC850: .4byte gUnk_08725DA0
.L080AC854: .4byte gUnk_086F2FAC
.L080AC858: .4byte 0x00001028

	thumb_func_start func_080AC85C
func_080AC85C: @ 0x080AC85C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	adds r4, r5, #4
.L080AC866:
	ldr r1, [r4]
	cmp r1, #0
	beq .L080AC878
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AC878:
	adds r4, #4
	adds r6, #1
	cmp r6, #0x63
	bls .L080AC866
	ldr r1, .L080AC95C @ =0x00001028
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080AC896
	ldr r0, [r1, #0x24]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AC896:
	ldr r2, .L080AC960 @ =0x00001024
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	beq .L080AC8A6
	movs r1, #3
	bl func_080AB2E4
.L080AC8A6:
	movs r1, #0x81
	lsls r1, r1, #5
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080AC8B8
	movs r1, #3
	bl func_0803AC78
.L080AC8B8:
	movs r2, #0xff
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, .L080AC964 @ =vtable_unk_080E5A28
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	movs r0, #0xd1
	lsls r0, r0, #4
	adds r6, r5, r0
	cmp r6, #0
	beq .L080AC932
	ldr r1, .L080AC968 @ =0x00000DAC
	adds r4, r5, r1
	cmp r6, r4
	beq .L080AC932
.L080AC91C:
	subs r4, #0xc
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	cmp r6, r4
	bne .L080AC91C
.L080AC932:
	ldr r1, [r5]
	cmp r1, #0
	beq .L080AC948
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AC948:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq .L080AC956
	adds r0, r5, #0
	bl __builtin_delete
.L080AC956:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AC95C: .4byte 0x00001028
.L080AC960: .4byte 0x00001024
.L080AC964: .4byte vtable_unk_080E5A28
.L080AC968: .4byte 0x00000DAC

	thumb_func_start func_080AC96C
func_080AC96C: @ 0x080AC96C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r0, r5, #5
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r6, r0, #0
	adds r6, #0xa0
	ldrb r0, [r6]
	mvns r0, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x1f
	cmp r7, #0
	beq .L080AC9A4
	movs r2, #0
	ldrsb r2, [r6, r2]
	ldr r0, .L080AC9A0 @ =0x00000B78
	adds r1, r4, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
.L080AC99A:
	ldrb r0, [r1, #8]
	b .L080AC9E4
	.align 2, 0
.L080AC9A0: .4byte 0x00000B78
.L080AC9A4:
	ldr r0, .L080AC9D8 @ =0x00000C14
	adds r2, r4, r0
	ldrb r3, [r2]
	cmp r3, #0xd
	bhs .L080AC9E0
	adds r1, r3, #0
	adds r0, r1, #1
	strb r0, [r2]
	ldr r0, .L080AC9DC @ =0x00000B78
	adds r2, r4, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #9
	ldrsb r0, [r1, r0]
	cmp r0, r5
	beq .L080AC9CC
	strb r5, [r1, #9]
	strb r7, [r1, #0xa]
.L080AC9CC:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, r3
	beq .L080AC99A
	strb r3, [r6]
	b .L080AC99A
	.align 2, 0
.L080AC9D8: .4byte 0x00000C14
.L080AC9DC: .4byte 0x00000B78
.L080AC9E0:
	movs r0, #1
	rsbs r0, r0, #0
.L080AC9E4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080AC9EC
func_080AC9EC: @ 0x080AC9EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, .L080ACADC @ =vtable_unk_080E8440
	str r0, [r6]
	ldr r1, .L080ACAE0 @ =vtable_unk_080E8344
	adds r0, r6, #0
	stm r0!, {r1}
	ldr r2, [r7]
	movs r1, #0
	str r1, [r7]
	str r2, [sp, #4]
	add r1, sp, #4
	bl func_080AC674
	ldr r0, [r6, #4]
	add r1, sp, #8
	movs r5, #0x30
	ldrh r3, [r1]
	ldr r4, .L080ACAE4 @ =0xFFFFFC00
	adds r2, r4, #0
	ands r2, r3
	orrs r2, r5
	strh r2, [r1]
	ldrb r5, [r1, #1]
	movs r3, #3
	adds r2, r3, #0
	ands r2, r5
	strb r2, [r1, #1]
	ldrh r5, [r1, #2]
	adds r2, r4, #0
	ands r2, r5
	strh r2, [r1, #2]
	ldrb r2, [r1, #3]
	ands r3, r2
	strb r3, [r1, #3]
	ldrh r2, [r1, #4]
	ands r4, r2
	strh r4, [r1, #4]
	movs r2, #0x1e
	str r2, [sp]
	movs r2, #0
	movs r3, #0
	bl func_080A56DC
	movs r0, #0xa0
	bl __builtin_new
	adds r1, r6, #0
	bl func_0803AB30
	ldr r1, .L080ACAE8 @ =0x00001024
	adds r5, r6, r1
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080ACA6A
	cmp r0, #0
	beq .L080ACA6A
	movs r1, #3
	bl func_0803AC78
.L080ACA6A:
	str r4, [r5]
	ldr r0, .L080ACAEC @ =0x00001028
	adds r4, r6, r0
	movs r5, #0
	ldr r0, [r4]
	cmp r5, r0
	beq .L080ACA82
	cmp r0, #0
	beq .L080ACA82
	movs r1, #3
	bl func_080AB2E4
.L080ACA82:
	str r5, [r4]
	movs r0, #4
	bl __builtin_new
	ldr r1, [r6, #4]
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl func_080AAFC8
	ldr r1, .L080ACAEC @ =0x00001028
	adds r5, r6, r1
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080ACAAA
	cmp r0, #0
	beq .L080ACAAA
	movs r1, #3
	bl func_080AB2E4
.L080ACAAA:
	str r4, [r5]
	movs r4, #0
.L080ACAAE:
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_080AD49C
	adds r4, #1
	cmp r4, #0x63
	bls .L080ACAAE
	ldr r1, [r7]
	cmp r1, #0
	beq .L080ACAD2
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080ACAD2:
	adds r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080ACADC: .4byte vtable_unk_080E8440
.L080ACAE0: .4byte vtable_unk_080E8344
.L080ACAE4: .4byte 0xFFFFFC00
.L080ACAE8: .4byte 0x00001024
.L080ACAEC: .4byte 0x00001028

	thumb_func_start func_080ACAF0
func_080ACAF0: @ 0x080ACAF0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, [r6, #4]
	adds r1, r0, #0
	adds r1, #0x90
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	bl _call_via_r1
	ldr r1, .L080ACB54 @ =0x00001028
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080ACB14
	bl func_080AB380
.L080ACB14:
	ldr r0, .L080ACB58 @ =0x0000102C
	adds r1, r6, r0
	ldr r4, [r1]
	rsbs r0, r4, #0
	orrs r0, r4
	cmp r0, #0
	bge .L080ACBD8
	adds r5, r1, #0
	ldrb r2, [r5, #8]
	cmp r2, #0
	beq .L080ACB8E
	ldrb r0, [r5, #9]
	subs r0, #1
	movs r2, #0
	strb r0, [r5, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080ACB5C
	ldr r1, [r5]
	cmp r2, r1
	beq .L080ACB4E
	cmp r1, #0
	beq .L080ACB4E
	ldr r0, [r1, #0x24]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080ACB4E:
	movs r0, #0
	str r0, [r5]
	b .L080ACB82
	.align 2, 0
.L080ACB54: .4byte 0x00001028
.L080ACB58: .4byte 0x0000102C
.L080ACB5C:
	ldr r4, [r5]
	adds r1, r4, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	cmp r0, #0
	bne .L080ACB80
	adds r0, r4, #0
	adds r0, #0x28
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge .L080ACB82
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #1
	strb r0, [r1]
	b .L080ACB82
.L080ACB80:
	strb r2, [r1]
.L080ACB82:
	ldrb r0, [r5, #0xa]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r5, #0xa]
	b .L080ACBD8
.L080ACB8E:
	adds r1, r4, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	cmp r0, #0
	bne .L080ACBB4
	adds r0, r4, #0
	adds r0, #0x28
	bl func_0805E8F0
	adds r2, r0, #0
	lsls r0, r2, #0x1e
	cmp r0, #0
	bge .L080ACBB0
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #1
	strb r0, [r1]
.L080ACBB0:
	adds r0, r2, #0
	b .L080ACBB8
.L080ACBB4:
	strb r2, [r1]
	movs r0, #2
.L080ACBB8:
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge .L080ACBD8
	movs r4, #0
	ldr r1, [r5]
	cmp r4, r1
	beq .L080ACBD6
	cmp r1, #0
	beq .L080ACBD6
	ldr r0, [r1, #0x24]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080ACBD6:
	str r4, [r5]
.L080ACBD8:
	adds r4, r6, #0
	adds r4, #8
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r5, r6, r1
	mov r0, sp
	ldr r1, [r7]
	str r1, [sp]
	movs r1, #0
	strb r1, [r0, #4]
	cmp r4, r5
	beq .L080ACC08
.L080ACBF0:
	ldr r1, [r4]
	cmp r1, #0
	beq .L080ACC02
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #0x2c]
	adds r0, r1, #0
	mov r1, sp
	bl _call_via_r2
.L080ACC02:
	adds r4, #4
	cmp r4, r5
	bne .L080ACBF0
.L080ACC08:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080ACC10
func_080ACC10: @ 0x080ACC10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L080ACEA4 @ =0xFFFFF350
	add sp, r4
	ldr r2, .L080ACEA8 @ =0x00000C6C
	add r2, sp
	str r0, [r2]
	mov sb, r1
	movs r0, #0
	ldr r1, .L080ACEAC @ =0x00000C58
	add r1, sp
	str r0, [r1]
	ldr r3, [r2]
	movs r4, #0xce
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r2, #0x20
	ldr r0, .L080ACEAC @ =0x00000C58
	add r0, sp
	ldr r0, [r0]
.L080ACC3E:
	strb r0, [r1]
	subs r2, #1
	adds r1, #1
	cmp r2, #0
	bgt .L080ACC3E
	ldr r5, .L080ACEA8 @ =0x00000C6C
	add r5, sp
	ldr r5, [r5]
	ldr r0, [r5, #4]
	adds r1, r0, #0
	adds r1, #0x90
	ldr r4, [r1]
	mov r6, sb
	ldr r1, [r6]
	ldr r2, [r6, #4]
	ldr r3, [r6, #0xc]
	ldr r4, [r4, #0x10]
	bl _call_via_r4
	ldr r7, .L080ACEB0 @ =0x00001024
	adds r0, r5, r7
	ldr r2, [r0]
	ldr r1, [r6]
	adds r4, r2, #0
	adds r4, #0x9c
	ldrb r0, [r4]
	cmp r0, #0
	beq .L080ACC80
	adds r0, r2, #0
	bl func_0803ACD8
	movs r0, #0
	strb r0, [r4]
.L080ACC80:
	ldr r0, .L080ACEA8 @ =0x00000C6C
	add r0, sp
	ldr r0, [r0]
	movs r1, #0xce
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r1, #0xdb
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r3, .L080ACEA8 @ =0x00000C6C
	add r3, sp
	ldr r3, [r3]
	ldr r5, .L080ACEB4 @ =0x00000DB1
	adds r2, r3, r5
	strb r1, [r2]
	movs r3, #0
	ldr r5, .L080ACEB8 @ =0x00000C9C
	add r5, sp
	str r0, [r5]
	movs r6, #0xca
	lsls r6, r6, #4
	add r6, sp
	str r2, [r6]
	ldrb r7, [r2]
	cmp r3, r7
	bhs .L080ACCEE
	ldr r0, .L080ACEA8 @ =0x00000C6C
	add r0, sp
	ldr r0, [r0]
	movs r1, #0xde
	lsls r1, r1, #1
	adds r5, r0, r1
	ldr r1, .L080ACEBC @ =0x00000D1D
	adds r2, r0, r1
.L080ACCC6:
	ldrb r0, [r2]
	lsrs r0, r0, #7
	cmp r0, #0
	bne .L080ACCE0
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r5, r1
	adds r1, #0x80
	movs r0, #0xff
	strb r0, [r1]
.L080ACCE0:
	adds r2, #0xc
	adds r3, #1
	ldr r6, .L080ACEC0 @ =0x00000C15
	adds r0, r4, r6
	ldrb r0, [r0]
	cmp r3, r0
	blo .L080ACCC6
.L080ACCEE:
	ldr r7, .L080ACEC4 @ =0x00000C14
	adds r0, r4, r7
	movs r2, #0
	strb r2, [r0]
	mov r1, sb
	ldr r0, [r1, #8]
	ldrb r1, [r0]
	movs r0, #0x7c
	subs r0, r0, r1
	movs r3, #0xc7
	lsls r3, r3, #4
	add r3, sp
	str r0, [r3]
	cmp r0, #0x80
	bls .L080ACD0E
	b .L080AD0CE
.L080ACD0E:
	add r0, sp, #0x14
	strb r2, [r0]
	add r0, sp, #0x18
	movs r1, #3
	ldr r5, .L080ACEA8 @ =0x00000C6C
	add r5, sp
	ldr r5, [r5]
	ldr r4, [r5]
	adds r6, r5, #0
	adds r6, #8
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r2, r5, r2
	ldr r3, .L080ACEC8 @ =0x00000CA4
	add r3, sp
	str r2, [r3]
	ldr r5, .L080ACECC @ =0x00000828
	add r5, sp
	adds r7, #0x84
	add r7, sp
	str r5, [r7]
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080ACD3E:
	str r3, [r0]
	movs r5, #0x81
	lsls r5, r5, #2
	adds r0, r0, r5
	subs r1, #1
	cmp r1, r2
	bne .L080ACD3E
	ldr r1, [r4, #0x18]
	ldr r7, .L080ACEA8 @ =0x00000C6C
	add r7, sp
	ldr r0, [r7]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, .L080ACEA8 @ =0x00000C6C
	add r1, sp
	ldr r1, [r1]
	ldr r0, [r1]
	ldr r1, [r0, #0x1c]
	ldr r2, .L080ACEA8 @ =0x00000C6C
	add r2, sp
	ldr r0, [r2]
	bl _call_via_r1
	ldr r5, .L080ACED0 @ =0x00000C28
	add r5, sp
	mov r3, sb
	ldr r1, [r3]
	ldr r2, [r3, #4]
	str r1, [r5]
	str r2, [r5, #4]
	add r7, sp, #0x14
	str r7, [r5, #8]
	strh r4, [r5, #0xc]
	strh r0, [r5, #0xe]
	mov r8, r6
	movs r0, #0xbc
	lsls r0, r0, #1
	add r0, r8
	ldr r1, .L080ACED4 @ =0x00000C74
	add r1, sp
	str r0, [r1]
	ldr r1, [r0]
	cmp r1, #0
	beq .L080ACDA4
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #0x1c]
	adds r0, r1, #0
	adds r1, r5, #0
	bl _call_via_r2
.L080ACDA4:
	ldr r2, .L080ACEA8 @ =0x00000C6C
	add r2, sp
	ldr r2, [r2]
	ldr r3, .L080ACED8 @ =0x00001028
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #0
	beq .L080ACDBC
	ldr r2, [r5]
	add r1, sp, #0x14
	bl func_080AB410
.L080ACDBC:
	ldr r3, .L080ACEA8 @ =0x00000C6C
	add r3, sp
	ldr r3, [r3]
	ldr r4, .L080ACEDC @ =0x0000102C
	adds r6, r3, r4
	ldr r1, [r6]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080ACDD2
	b .L080AD032
.L080ACDD2:
	ldr r4, .L080ACEE0 @ =0x00000C5C
	add r4, sp
	ldr r1, [r5]
	ldr r2, [r5, #8]
	ldr r0, .L080ACEE0 @ =0x00000C5C
	add r0, sp
	str r1, [r0]
	str r2, [r4, #4]
	ldr r0, [r3]
	ldr r1, [r0, #0x18]
	ldr r7, .L080ACEA8 @ =0x00000C6C
	add r7, sp
	ldr r0, [r7]
	bl _call_via_r1
	adds r7, r0, #0
	ldr r1, .L080ACEA8 @ =0x00000C6C
	add r1, sp
	ldr r1, [r1]
	ldr r0, [r1]
	ldr r1, [r0, #0x1c]
	ldr r2, .L080ACEA8 @ =0x00000C6C
	add r2, sp
	ldr r0, [r2]
	bl _call_via_r1
	adds r2, r0, #0
	ldr r5, [r6]
	rsbs r0, r5, #0
	orrs r0, r5
	cmp r0, #0
	blt .L080ACE14
	b .L080AD032
.L080ACE14:
	ldrb r0, [r6, #8]
	cmp r0, #0
	bne .L080ACE1C
	b .L080ACF58
.L080ACE1C:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bhi .L080ACE24
	b .L080AD032
.L080ACE24:
	movs r3, #4
	ldrsh r0, [r6, r3]
	subs r0, r0, r7
	ldr r4, .L080ACEE4 @ =0x00000C78
	add r4, sp
	str r0, [r4]
	movs r7, #6
	ldrsh r1, [r6, r7]
	subs r2, r1, r2
	ldr r0, .L080ACEE8 @ =0x00000C7C
	add r0, sp
	str r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	mov sl, r0
	adds r6, r5, #0
	ldr r4, .L080ACEEC @ =0x00000C38
	add r4, sp
	ldr r1, [r5, #0x28]
	ldr r3, [r1]
	ldrh r2, [r5, #0x34]
	lsls r2, r2, #2
	ldr r0, [r5, #0x2c]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r7, r4, #0
	movs r1, #0xc6
	lsls r1, r1, #4
	add r1, sp
	ldr r3, [r1]
	adds r0, r5, #0
	ldm r0!, {r2}
	ldr r1, [r0, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080ACEF4
	ldrh r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x10
	mov r4, sl
	str r4, [sp]
	str r7, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	adds r0, r3, #0
	ldr r5, .L080ACEE4 @ =0x00000C78
	add r5, sp
	ldr r1, [r5]
	ldr r3, .L080ACEE8 @ =0x00000C7C
	add r3, sp
	ldr r2, [r3]
	movs r3, #0xaa
	ldr r4, .L080ACEF0 @ =func_030004DC
	bl _call_via_r4
	b .L080ACEF6
	.align 2, 0
.L080ACEA4: .4byte 0xFFFFF350
.L080ACEA8: .4byte 0x00000C6C
.L080ACEAC: .4byte 0x00000C58
.L080ACEB0: .4byte 0x00001024
.L080ACEB4: .4byte 0x00000DB1
.L080ACEB8: .4byte 0x00000C9C
.L080ACEBC: .4byte 0x00000D1D
.L080ACEC0: .4byte 0x00000C15
.L080ACEC4: .4byte 0x00000C14
.L080ACEC8: .4byte 0x00000CA4
.L080ACECC: .4byte 0x00000828
.L080ACED0: .4byte 0x00000C28
.L080ACED4: .4byte 0x00000C74
.L080ACED8: .4byte 0x00001028
.L080ACEDC: .4byte 0x0000102C
.L080ACEE0: .4byte 0x00000C5C
.L080ACEE4: .4byte 0x00000C78
.L080ACEE8: .4byte 0x00000C7C
.L080ACEEC: .4byte 0x00000C38
.L080ACEF0: .4byte func_030004DC
.L080ACEF4:
	movs r0, #0
.L080ACEF6:
	cmp r0, #0
	bne .L080ACEFC
	b .L080AD032
.L080ACEFC:
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne .L080ACF0A
	b .L080AD032
.L080ACF0A:
	ldr r4, .L080ACF34 @ =0x00000C5C
	add r4, sp
	ldr r1, [r4]
	adds r2, r7, #0
	adds r2, #8
	adds r0, r6, #0
	bl func_080A480C
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080ACF38
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r6, #0
	movs r2, #1
	bl func_080A4944
	b .L080ACF52
	.align 2, 0
.L080ACF34: .4byte 0x00000C5C
.L080ACF38:
	adds r4, r6, #0
	adds r4, #0x3e
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080ACF52
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r6, #0
	movs r2, #1
	bl func_080A4944
	movs r0, #1
	strb r0, [r4]
.L080ACF52:
	movs r0, #0
	strb r0, [r5]
	b .L080AD032
.L080ACF58:
	movs r1, #4
	ldrsh r0, [r6, r1]
	subs r0, r0, r7
	movs r3, #0xc8
	lsls r3, r3, #4
	add r3, sp
	str r0, [r3]
	movs r4, #6
	ldrsh r1, [r6, r4]
	subs r2, r1, r2
	mov sl, r2
	movs r0, #0x80
	lsls r0, r0, #8
	subs r7, r0, r1
	ldr r4, .L080ACFCC @ =0x00000C38
	add r4, sp
	ldr r1, [r5, #0x28]
	ldr r3, [r1]
	ldrh r2, [r5, #0x34]
	lsls r2, r2, #2
	ldr r0, [r5, #0x2c]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r6, r4, #0
	movs r0, #0xc6
	lsls r0, r0, #4
	add r0, sp
	ldr r3, [r0]
	adds r0, r5, #0
	ldm r0!, {r2}
	ldr r1, [r0, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080ACFD4
	ldrh r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x10
	str r7, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	adds r0, r3, #0
	movs r2, #0xc8
	lsls r2, r2, #4
	add r2, sp
	ldr r1, [r2]
	mov r2, sl
	movs r3, #0xaa
	ldr r4, .L080ACFD0 @ =func_030004DC
	bl _call_via_r4
	b .L080ACFD6
	.align 2, 0
.L080ACFCC: .4byte 0x00000C38
.L080ACFD0: .4byte func_030004DC
.L080ACFD4:
	movs r0, #0
.L080ACFD6:
	cmp r0, #0
	beq .L080AD032
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq .L080AD032
	ldr r3, .L080AD010 @ =0x00000C5C
	add r3, sp
	ldr r1, [r3]
	adds r2, r6, #0
	adds r2, #8
	adds r0, r5, #0
	bl func_080A480C
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080AD014
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r5, #0
	movs r2, #1
	bl func_080A4944
	b .L080AD02E
	.align 2, 0
.L080AD010: .4byte 0x00000C5C
.L080AD014:
	adds r4, r5, #0
	adds r4, #0x3e
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080AD02E
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r5, #0
	movs r2, #1
	bl func_080A4944
	movs r0, #1
	strb r0, [r4]
.L080AD02E:
	movs r0, #0
	strb r0, [r7]
.L080AD032:
	ldr r4, .L080AD058 @ =0x00000C6C
	add r4, sp
	ldr r4, [r4]
	movs r5, #0xcc
	lsls r5, r5, #1
	adds r0, r4, r5
	ldr r5, [r0]
	cmp r5, #0x64
	blo .L080AD046
	movs r5, #0
.L080AD046:
	lsls r0, r5, #2
	mov r7, r8
	adds r6, r7, r0
	ldr r0, .L080AD05C @ =0x00000CA4
	add r0, sp
	ldr r7, [r0]
	adds r4, r6, #0
	b .L080AD08A
	.align 2, 0
.L080AD058: .4byte 0x00000C6C
.L080AD05C: .4byte 0x00000CA4
.L080AD060:
	ldr r3, .L080AD1AC @ =0x00000C74
	add r3, sp
	ldr r3, [r3]
	cmp r4, r3
	beq .L080AD07E
	ldr r3, [r4]
	cmp r3, #0
	beq .L080AD07E
	ldr r0, [r3, #0x14]
	ldr r1, .L080AD1B0 @ =0x00000C28
	add r1, sp
	ldr r2, [r0, #0x1c]
	adds r0, r3, #0
	bl _call_via_r2
.L080AD07E:
	adds r4, #4
	cmp r4, r7
	bne .L080AD086
	mov r4, r8
.L080AD086:
	cmp r4, r6
	beq .L080AD0A0
.L080AD08A:
	add r0, sp, #0x14
	ldrb r0, [r0]
	movs r1, #0xc7
	lsls r1, r1, #4
	add r1, sp
	ldr r1, [r1]
	cmp r0, r1
	blo .L080AD060
	mov r2, r8
	subs r0, r4, r2
	asrs r5, r0, #2
.L080AD0A0:
	ldr r3, .L080AD1B4 @ =0x00000C6C
	add r3, sp
	ldr r3, [r3]
	movs r4, #0xcc
	lsls r4, r4, #1
	adds r0, r3, r4
	str r5, [r0]
	mov r4, sb
	ldr r1, [r4, #8]
	add r0, sp, #0x14
	bl func_08094A3C
	ldr r5, .L080AD1B8 @ =0x00000C98
	add r5, sp
	ldr r0, [r5]
	add r6, sp, #0x18
	cmp r6, r0
	beq .L080AD0CE
	adds r1, r6, #0
.L080AD0C6:
	ldr r7, .L080AD1BC @ =0xFFFFFDFC
	adds r0, r0, r7
	cmp r1, r0
	bne .L080AD0C6
.L080AD0CE:
	movs r1, #0xce
	lsls r1, r1, #1
	ldr r0, .L080AD1B4 @ =0x00000C6C
	add r0, sp
	ldr r0, [r0]
	adds r1, r0, r1
	ldr r0, .L080AD1C0 @ =0x00000C84
	add r0, sp
	str r1, [r0]
	mov r1, sb
	ldr r6, [r1]
	movs r2, #0
	ldr r3, .L080AD1C4 @ =0x00000C88
	add r3, sp
	str r2, [r3]
	ldr r4, .L080AD1C8 @ =0x00000C9C
	add r4, sp
	ldr r4, [r4]
	ldrb r4, [r4]
	ldr r5, .L080AD1CC @ =0x00000C8C
	add r5, sp
	str r4, [r5]
	cmp r2, r4
	blo .L080AD100
	b .L080AD32A
.L080AD100:
	ldr r5, .L080AD1C0 @ =0x00000C84
	add r5, sp
	ldr r5, [r5]
	ldr r7, .L080AD1D0 @ =0x00000B78
	adds r0, r5, r7
	ldr r7, .L080AD1C4 @ =0x00000C88
	add r7, sp
	ldr r7, [r7]
	lsls r1, r7, #1
	adds r1, r1, r7
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r8, r0
	ldrb r0, [r0, #9]
	lsrs r0, r0, #7
	adds r3, r7, #0
	adds r3, #1
	ldr r4, .L080AD1D4 @ =0x00000C94
	add r4, sp
	str r3, [r4]
	cmp r0, #0
	beq .L080AD12E
	b .L080AD312
.L080AD12E:
	mov r5, r8
	movs r1, #9
	ldrsb r1, [r5, r1]
	ldr r7, .L080AD1C0 @ =0x00000C84
	add r7, sp
	ldr r2, [r7]
	adds r2, #0x20
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r2, r0
	adds r4, r7, #0
	adds r4, #0x82
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080AD156
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq .L080AD156
	b .L080AD312
.L080AD156:
	mov r0, r8
	ldrb r2, [r0, #8]
	lsls r2, r2, #5
	ldr r1, .L080AD1D8 @ =0x05000200
	adds r2, r2, r1
	add r0, sp, #0x14
	adds r1, r7, #0
	movs r3, #0x20
	bl func_08008F0C
	mov r2, sp
	adds r2, #0x14
	movs r3, #0xc9
	lsls r3, r3, #4
	add r3, sp
	str r2, [r3]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AD1E0
	cmp r1, #0
	beq .L080AD18E
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AD18E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r3, .L080AD1DC @ =0x00000CAC
	add r3, sp
	str r4, [r3]
	ldr r5, .L080AD1C4 @ =0x00000C88
	add r5, sp
	ldr r4, [r5]
	adds r4, #1
	ldr r5, .L080AD1D4 @ =0x00000C94
	add r5, sp
	str r4, [r5]
	b .L080AD2F4
	.align 2, 0
.L080AD1AC: .4byte 0x00000C74
.L080AD1B0: .4byte 0x00000C28
.L080AD1B4: .4byte 0x00000C6C
.L080AD1B8: .4byte 0x00000C98
.L080AD1BC: .4byte 0xFFFFFDFC
.L080AD1C0: .4byte 0x00000C84
.L080AD1C4: .4byte 0x00000C88
.L080AD1C8: .4byte 0x00000C9C
.L080AD1CC: .4byte 0x00000C8C
.L080AD1D0: .4byte 0x00000B78
.L080AD1D4: .4byte 0x00000C94
.L080AD1D8: .4byte 0x05000200
.L080AD1DC: .4byte 0x00000CAC
.L080AD1E0:
	ldr r0, .L080AD220 @ =0x00000CA8
	add r0, sp
	str r1, [r0]
	movs r0, #1
	ldr r2, .L080AD224 @ =0x00000C68
	add r2, sp
	str r0, [r2]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	ldr r0, .L080AD228 @ =0x00000C64
	add r0, sp
	str r4, [r0]
	ldr r1, [r2]
	cmp r4, r1
	bhs .L080AD202
	adds r0, r2, #0
.L080AD202:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AD22C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080AD230
	mov r0, sl
	bl func_080D3BC0
	b .L080AD230
	.align 2, 0
.L080AD220: .4byte 0x00000CA8
.L080AD224: .4byte 0x00000C68
.L080AD228: .4byte 0x00000C64
.L080AD22C:
	movs r0, #0
	mov sl, r0
.L080AD230:
	adds r4, r0, #0
	mov sb, r4
	ldr r2, [r6]
	mov r3, sb
	adds r7, #0x82
	ldr r4, .L080AD250 @ =0x00000CAC
	add r4, sp
	str r7, [r4]
	ldr r7, .L080AD254 @ =0x00000C88
	add r7, sp
	ldr r5, [r7]
	adds r5, #1
	ldr r7, .L080AD258 @ =0x00000C94
	add r7, sp
	str r5, [r7]
	b .L080AD270
	.align 2, 0
.L080AD250: .4byte 0x00000CAC
.L080AD254: .4byte 0x00000C88
.L080AD258: .4byte 0x00000C94
.L080AD25C:
	cmp r3, #0
	beq .L080AD26C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AD26C:
	adds r2, #0x10
	adds r3, #0x10
.L080AD270:
	ldr r0, .L080AD2A0 @ =0x00000CA8
	add r0, sp
	ldr r0, [r0]
	cmp r2, r0
	bne .L080AD25C
	adds r4, r3, #0
	ldr r0, .L080AD2A4 @ =0x00000C68
	add r0, sp
	ldr r0, [r0]
	cmp r0, #1
	bne .L080AD2A8
	cmp r4, #0
	beq .L080AD29C
	adds r0, r4, #0
	movs r2, #0xc9
	lsls r2, r2, #4
	add r2, sp
	ldr r1, [r2]
	ldm r1!, {r3, r5, r7}
	stm r0!, {r3, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AD29C:
	adds r4, #0x10
	b .L080AD2D0
	.align 2, 0
.L080AD2A0: .4byte 0x00000CA8
.L080AD2A4: .4byte 0x00000C68
.L080AD2A8:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080AD2CE
.L080AD2B0:
	cmp r2, #0
	beq .L080AD2C6
	adds r0, r2, #0
	movs r4, #0xc9
	lsls r4, r4, #4
	add r4, sp
	ldr r1, [r4]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AD2C6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AD2B0
.L080AD2CE:
	adds r4, r2, #0
.L080AD2D0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AD2E0
.L080AD2DA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AD2DA
.L080AD2E0:
	cmp r0, #0
	beq .L080AD2E8
	bl free
.L080AD2E8:
	mov r0, sl
	add r0, sb
	mov r5, sb
	str r5, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L080AD2F4:
	movs r0, #0
	ldr r7, .L080AD390 @ =0x00000CAC
	add r7, sp
	ldr r7, [r7]
	strb r0, [r7]
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne .L080AD312
	ldrb r0, [r1, #9]
	lsrs r0, r0, #7
	cmp r0, #0
	bne .L080AD312
	movs r0, #1
	strb r0, [r1, #0xa]
.L080AD312:
	ldr r2, .L080AD394 @ =0x00000C94
	add r2, sp
	ldr r2, [r2]
	ldr r3, .L080AD398 @ =0x00000C88
	add r3, sp
	str r2, [r3]
	ldr r4, .L080AD39C @ =0x00000C8C
	add r4, sp
	ldr r3, [r4]
	cmp r2, r3
	bhs .L080AD32A
	b .L080AD100
.L080AD32A:
	ldr r5, .L080AD3A0 @ =0x00000C6C
	add r5, sp
	ldr r5, [r5]
	movs r6, #0xce
	lsls r6, r6, #1
	adds r1, r5, r6
	ldr r6, .L080AD3A4 @ =0x00000C9C
	add r6, sp
	ldr r6, [r6]
	ldrb r4, [r6]
	movs r7, #0xca
	lsls r7, r7, #4
	add r7, sp
	ldr r7, [r7]
	ldrb r7, [r7]
	cmp r4, r7
	bhs .L080AD37C
	movs r5, #0xff
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r2, .L080AD3A8 @ =0x00000B81
	adds r0, r0, r2
	adds r1, r0, r1
	ldr r3, .L080AD3A0 @ =0x00000C6C
	add r3, sp
	ldr r3, [r3]
	ldr r6, .L080AD3AC @ =0x00000DB1
	adds r2, r3, r6
.L080AD364:
	ldrb r3, [r1]
	lsrs r0, r3, #7
	cmp r0, #0
	bne .L080AD372
	adds r0, r3, #0
	orrs r0, r5
	strb r0, [r1]
.L080AD372:
	adds r1, #0xc
	adds r4, #1
	ldrb r6, [r2]
	cmp r4, r6
	blo .L080AD364
.L080AD37C:
	movs r3, #0xcb
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
.L080AD390: .4byte 0x00000CAC
.L080AD394: .4byte 0x00000C94
.L080AD398: .4byte 0x00000C88
.L080AD39C: .4byte 0x00000C8C
.L080AD3A0: .4byte 0x00000C6C
.L080AD3A4: .4byte 0x00000C9C
.L080AD3A8: .4byte 0x00000B81
.L080AD3AC: .4byte 0x00000DB1

	thumb_func_start func_080AD3B0
func_080AD3B0: @ 0x080AD3B0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	adds r4, r6, #0
	adds r4, #8
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r5, r6, r0
	cmp r4, r5
	beq .L080AD3DC
.L080AD3C6:
	ldr r2, [r4]
	cmp r2, #0
	beq .L080AD3D6
	ldr r0, [r2, #0x14]
	ldr r1, [r0, #0x14]
	adds r0, r2, #0
	bl _call_via_r1
.L080AD3D6:
	adds r4, #4
	cmp r4, r5
	bne .L080AD3C6
.L080AD3DC:
	ldr r1, .L080AD494 @ =0x00001024
	adds r4, r6, r1
	movs r5, #0
	ldr r0, [r4]
	cmp r5, r0
	beq .L080AD3F2
	cmp r0, #0
	beq .L080AD3F2
	movs r1, #3
	bl func_0803AC78
.L080AD3F2:
	str r5, [r4]
	ldr r0, .L080AD498 @ =0x00001028
	adds r4, r6, r0
	movs r5, #0
	ldr r0, [r4]
	cmp r5, r0
	beq .L080AD40A
	cmp r0, #0
	beq .L080AD40A
	movs r1, #3
	bl func_080AB2E4
.L080AD40A:
	str r5, [r4]
	ldr r0, [r6, #4]
	movs r1, #0x1e
	str r1, [sp]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl func_080A56DC
	movs r0, #0xa0
	bl __builtin_new
	adds r1, r6, #0
	bl func_0803AB30
	ldr r1, .L080AD494 @ =0x00001024
	adds r5, r6, r1
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AD43E
	cmp r0, #0
	beq .L080AD43E
	movs r1, #3
	bl func_0803AC78
.L080AD43E:
	str r4, [r5]
	movs r0, #4
	bl __builtin_new
	ldr r1, [r6, #4]
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl func_080AAFC8
	ldr r1, .L080AD498 @ =0x00001028
	adds r5, r6, r1
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AD466
	cmp r0, #0
	beq .L080AD466
	movs r1, #3
	bl func_080AB2E4
.L080AD466:
	str r4, [r5]
	adds r4, r6, #0
	adds r4, #8
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r5, r6, r0
	cmp r4, r5
	beq .L080AD48C
.L080AD476:
	ldr r2, [r4]
	cmp r2, #0
	beq .L080AD486
	ldr r0, [r2, #0x14]
	ldr r1, [r0, #0x10]
	adds r0, r2, #0
	bl _call_via_r1
.L080AD486:
	adds r4, #4
	cmp r4, r5
	bne .L080AD476
.L080AD48C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AD494: .4byte 0x00001024
.L080AD498: .4byte 0x00001028

	thumb_func_start func_080AD49C
func_080AD49C: @ 0x080AD49C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	mov sb, r1
	adds r1, r7, #0
	adds r1, #8
	mov r2, sb
	lsls r0, r2, #2
	adds r4, r1, r0
	ldr r1, [r4]
	cmp r1, #0
	beq .L080AD4CA
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	movs r0, #0
	str r0, [r4]
.L080AD4CA:
	movs r5, #0
	mov r0, sb
	subs r0, #0x5e
	cmp r0, #5
	bhi .L080AD5AA
	lsls r0, r0, #2
	ldr r1, .L080AD4E0 @ =.L080AD4E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AD4E0: .4byte .L080AD4E4
.L080AD4E4: @ jump table
	.4byte .L080AD4FC @ case 0
	.4byte .L080AD504 @ case 1
	.4byte .L080AD504 @ case 2
	.4byte .L080AD504 @ case 3
	.4byte .L080AD56C @ case 4
	.4byte .L080AD56C @ case 5
.L080AD4FC:
	adds r0, r7, #0
	bl func_0802C210
	b .L080AD5A8
.L080AD504:
	movs r0, #0x30
	bl __builtin_new
	adds r5, r0, #0
	add r1, sp, #0xc
	movs r4, #0x8d
	lsls r4, r4, #2
	movs r0, #0
	mov r8, r0
	ldrh r2, [r1]
	ldr r3, .L080AD564 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r6, #0
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
	add r4, sp, #4
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	strb r6, [r4, #6]
	mov r2, r8
	str r2, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	add r2, sp, #4
	movs r3, #2
	bl __12AActorEntityP10GameObjectRC13ActorLocationUiUi
	ldr r0, .L080AD568 @ =vtable_unk_080E8404
	str r0, [r5, #0x14]
	b .L080AD5AA
	.align 2, 0
.L080AD564: .4byte 0xFFFFFC00
.L080AD568: .4byte vtable_unk_080E8404
.L080AD56C:
	movs r0, #0x18
	bl __builtin_new
	add r2, sp, #4
	movs r5, #0x8d
	lsls r5, r5, #2
	ldrh r3, [r2]
	ldr r4, .L080AD5D4 @ =0xFFFFFC00
	adds r1, r4, #0
	ands r1, r3
	orrs r1, r5
	strh r1, [r2]
	ldrb r5, [r2, #1]
	movs r3, #3
	adds r1, r3, #0
	ands r1, r5
	strb r1, [r2, #1]
	ldrh r5, [r2, #2]
	adds r1, r4, #0
	ands r1, r5
	strh r1, [r2, #2]
	ldrb r1, [r2, #3]
	ands r3, r1
	strb r3, [r2, #3]
	ldrh r1, [r2, #4]
	ands r4, r1
	strh r4, [r2, #4]
	adds r1, r7, #0
	bl func_08037CC4
.L080AD5A8:
	adds r5, r0, #0
.L080AD5AA:
	cmp r5, #0
	beq .L080AD5C4
	adds r0, r7, #0
	adds r0, #8
	mov r2, sb
	lsls r1, r2, #2
	adds r0, r0, r1
	str r5, [r0]
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #0x10]
	adds r0, r5, #0
	bl _call_via_r1
.L080AD5C4:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AD5D4: .4byte 0xFFFFFC00

	thumb_func_start func_080AD5D8
func_080AD5D8: @ 0x080AD5D8
	push {lr}
	adds r3, r0, #0
	cmp r1, #0x1a
	bhi .L080AD67C
	lsls r0, r1, #2
	ldr r1, .L080AD5EC @ =.L080AD5F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AD5EC: .4byte .L080AD5F0
.L080AD5F0: @ jump table
	.4byte .L080AD65C @ case 0
	.4byte .L080AD660 @ case 1
	.4byte .L080AD660 @ case 2
	.4byte .L080AD664 @ case 3
	.4byte .L080AD660 @ case 4
	.4byte .L080AD664 @ case 5
	.4byte .L080AD670 @ case 6
	.4byte .L080AD670 @ case 7
	.4byte .L080AD670 @ case 8
	.4byte .L080AD67C @ case 9
	.4byte .L080AD67C @ case 10
	.4byte .L080AD67C @ case 11
	.4byte .L080AD67C @ case 12
	.4byte .L080AD67C @ case 13
	.4byte .L080AD668 @ case 14
	.4byte .L080AD66C @ case 15
	.4byte .L080AD66C @ case 16
	.4byte .L080AD66C @ case 17
	.4byte .L080AD66C @ case 18
	.4byte .L080AD67C @ case 19
	.4byte .L080AD67C @ case 20
	.4byte .L080AD67C @ case 21
	.4byte .L080AD67C @ case 22
	.4byte .L080AD67C @ case 23
	.4byte .L080AD67C @ case 24
	.4byte .L080AD67C @ case 25
	.4byte .L080AD670 @ case 26
.L080AD65C:
	movs r0, #0
	b .L080AD692
.L080AD660:
	movs r0, #1
	b .L080AD692
.L080AD664:
	movs r0, #2
	b .L080AD692
.L080AD668:
	movs r0, #3
	b .L080AD692
.L080AD66C:
	movs r0, #4
	b .L080AD692
.L080AD670:
	movs r0, #5
	b .L080AD692
.L080AD674:
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	b .L080AD692
.L080AD67C:
	movs r2, #6
	ldr r0, .L080AD698 @ =0x00000555
	adds r1, r3, r0
.L080AD682:
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080AD674
	adds r1, #0x84
	adds r2, #1
	cmp r2, #0x16
	blo .L080AD682
	movs r0, #0x15
.L080AD692:
	pop {r1}
	bx r1
	.align 2, 0
.L080AD698: .4byte 0x00000555

	thumb_func_start func_080AD69C
func_080AD69C: @ 0x080AD69C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sb, r1
	adds r4, r2, #0
	ldr r0, .L080AD6BC @ =0x00000233
	cmp r4, r0
	bls .L080AD6C0
	movs r0, #0
	str r0, [r5]
	str r0, [r5, #4]
	strh r0, [r5, #8]
	b .L080AD712
	.align 2, 0
.L080AD6BC: .4byte 0x00000233
.L080AD6C0:
	mov r1, sb
	ldr r0, [r1, #4]
	ldr r7, [r0]
	cmp r7, r4
	bne .L080AD6CE
	ldr r0, [r0, #4]
	b .L080AD6DE
.L080AD6CE:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl func_0803A8A4
.L080AD6DE:
	bl GetMapData
	ldrh r6, [r0, #0x20]
	ldrh r1, [r0, #0x22]
	mov r8, r1
	cmp r7, r4
	bne .L080AD706
	mov r0, sb
	ldr r4, [r0, #4]
	ldr r0, [r4, #4]
	bl GetMapData
	movs r1, #0
	ldr r0, [r4, #0x2c]
	str r0, [r5]
	str r1, [r5, #4]
	strh r6, [r5, #8]
	mov r1, r8
	strh r1, [r5, #0xa]
	b .L080AD714
.L080AD706:
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	str r0, [r5]
	str r1, [r5, #4]
	strh r6, [r5, #8]
	mov r0, r8
.L080AD712:
	strh r0, [r5, #0xa]
.L080AD714:
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080AD724
func_080AD724: @ 0x080AD724
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0xf2
	lsls r0, r0, #1
	bl __builtin_new
	bl func_080CFB28
	str r0, [sp, #4]
	ldr r0, .L080AD770 @ =0x00001038
	bl __builtin_new
	add r1, sp, #4
	bl func_080AC9EC
	str r0, [sp]
	mov r1, sp
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	adds r2, r1, #0
	movs r1, #0
	str r1, [r2]
	str r0, [r4]
	ldr r1, [sp]
	cmp r1, #0
	beq .L080AD766
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AD766:
	adds r0, r4, #0
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080AD770: .4byte 0x00001038
.L080AD774:
	.byte 0x40, 0x68, 0x70, 0x47, 0x40, 0x68, 0x70, 0x47

	thumb_func_start func_080AD77C
func_080AD77C: @ 0x080AD77C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	ldr r1, [r6]
	ldrh r2, [r4]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	add r0, sp, #0xc
	ldr r3, [r1, #0x34]
	adds r1, r6, #0
	bl _call_via_r3
	ldrb r0, [r4, #1]
	lsrs r0, r0, #2
	ldrh r1, [r4, #2]
	ldr r5, .L080AD870 @ =0x000003FF
	ands r1, r5
	lsls r1, r1, #6
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r0, [r4, #3]
	lsrs r0, r0, #2
	ldrh r2, [r4, #4]
	ands r2, r5
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add r0, sp, #0xc
	bl func_080AC5D0
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r0, [r4, #1]
	lsrs r0, r0, #2
	ldrh r1, [r4, #2]
	ands r1, r5
	lsls r1, r1, #6
	orrs r1, r0
	ldrb r2, [r4, #3]
	lsrs r2, r2, #2
	ldrh r0, [r4, #4]
	ands r0, r5
	lsls r0, r0, #6
	orrs r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r2, sp, #0x18
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [r6]
	ldr r1, [r0, #0x64]
	adds r0, r6, #0
	bl _call_via_r1
	ldr r1, .L080AD874 @ =0x0000102C
	adds r4, r6, r1
	adds r7, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	movs r5, #0
	ldr r1, [r4]
	cmp r5, r1
	beq .L080AD822
	cmp r1, #0
	beq .L080AD822
	ldr r0, [r1, #0x24]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AD822:
	str r5, [r4]
	mov r0, r8
	strb r0, [r4, #8]
	mov r5, r8
	cmp r5, #0
	beq .L080AD878
	movs r0, #0x40
	bl __builtin_new
	movs r1, #2
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	add r2, sp, #8
	movs r1, #0
	strb r1, [r2]
	adds r1, r7, #0
	mov r2, sb
	adds r3, r6, #0
	bl func_080A4A00
	adds r5, r0, #0
	ldr r1, [r4]
	cmp r5, r1
	beq .L080AD864
	cmp r1, #0
	beq .L080AD864
	ldr r0, [r1, #0x24]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AD864:
	str r5, [r4]
	movs r1, #0
	movs r0, #0x10
	strb r0, [r4, #9]
	strb r1, [r4, #0xa]
	b .L080AD8B0
	.align 2, 0
.L080AD870: .4byte 0x000003FF
.L080AD874: .4byte 0x0000102C
.L080AD878:
	movs r0, #0x40
	bl __builtin_new
	movs r1, #2
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	add r1, sp, #8
	strb r5, [r1]
	adds r1, r7, #0
	ldr r2, .L080AD8C0 @ =0x000001A9
	adds r3, r6, #0
	bl func_080A4A00
	adds r5, r0, #0
	ldr r1, [r4]
	cmp r5, r1
	beq .L080AD8AC
	cmp r1, #0
	beq .L080AD8AC
	ldr r0, [r1, #0x24]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AD8AC:
	str r5, [r4]
	movs r0, #0
.L080AD8B0:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080AD8C0: .4byte 0x000001A9

	thumb_func_start func_080AD8C4
func_080AD8C4: @ 0x080AD8C4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	movs r2, #0
	movs r3, #0
	cmp r4, #8
	bhi .L080AD918
	lsls r0, r4, #2
	ldr r1, .L080AD8E0 @ =.L080AD8E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AD8E0: .4byte .L080AD8E4
.L080AD8E4: @ jump table
	.4byte .L080AD908 @ case 0
	.4byte .L080AD908 @ case 1
	.4byte .L080AD908 @ case 2
	.4byte .L080AD908 @ case 3
	.4byte .L080AD90E @ case 4
	.4byte .L080AD918 @ case 5
	.4byte .L080AD914 @ case 6
	.4byte .L080AD914 @ case 7
	.4byte .L080AD914 @ case 8
.L080AD908:
	movs r2, #8
	movs r3, #0x10
	b .L080AD918
.L080AD90E:
	movs r2, #8
	movs r3, #0xb
	b .L080AD918
.L080AD914:
	movs r2, #0x10
	movs r3, #0x20
.L080AD918:
	ldr r1, .L080AD934 @ =0x00001028
	adds r0, r5, r1
	ldr r0, [r0]
	lsls r1, r6, #4
	adds r1, r1, r2
	lsls r2, r7, #4
	adds r3, #0x38
	adds r2, r2, r3
	adds r3, r4, #0
	bl func_080AB68C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AD934: .4byte 0x00001028

	.if 0
	thumb_func_start func_080AD938
func_080AD938: @ 0x080AD938
	push {lr}
	ldr r0, [r0, #4]
	bl func_080CFFC0
	pop {r0}
	bx r0

	thumb_func_start func_080AD944
func_080AD944: @ 0x080AD944
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A63B8
	pop {r0}
	bx r0

	thumb_func_start func_080AD950
func_080AD950: @ 0x080AD950
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A635C
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080AD960
func_080AD960: @ 0x080AD960
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A6300
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080AD970
func_080AD970: @ 0x080AD970
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A6024
	pop {r0}
	bx r0

	thumb_func_start func_080AD97C
func_080AD97C: @ 0x080AD97C
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A607C
	pop {r0}
	bx r0

	thumb_func_start func_080AD988
func_080AD988: @ 0x080AD988
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A62BC
	pop {r0}
	bx r0

	thumb_func_start func_080AD994
func_080AD994: @ 0x080AD994
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A6278
	pop {r0}
	bx r0

	thumb_func_start func_080AD9A0
func_080AD9A0: @ 0x080AD9A0
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A6234
	pop {r0}
	bx r0

	thumb_func_start func_080AD9AC
func_080AD9AC: @ 0x080AD9AC
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A61F0
	pop {r0}
	bx r0

	thumb_func_start func_080AD9B8
func_080AD9B8: @ 0x080AD9B8
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A6194
	pop {r0}
	bx r0

	thumb_func_start func_080AD9C4
func_080AD9C4: @ 0x080AD9C4
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A6138
	pop {r0}
	bx r0

	thumb_func_start func_080AD9D0
func_080AD9D0: @ 0x080AD9D0
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A601C
	pop {r0}
	bx r0
	.endif
	.section .text.tail080AD9DC, "ax", %progbits
.L080AD9DC:
	.byte 0x01, 0x49, 0x40, 0x18
	.byte 0x70, 0x47, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00
	.byte 0xC4, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0x94, 0x0F, 0x00, 0x00
	.byte 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0x64, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18
	.byte 0x70, 0x47, 0x00, 0x00, 0x34, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00
	.byte 0x04, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0xD4, 0x0E, 0x00, 0x00
	.byte 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0xA4, 0x0E, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18
	.byte 0x70, 0x47, 0x00, 0x00, 0x74, 0x0E, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00
	.byte 0x44, 0x0E, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0x14, 0x0E, 0x00, 0x00
	.byte 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0xE4, 0x0D, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18
	.byte 0x70, 0x47, 0x00, 0x00, 0xB4, 0x0D, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x00, 0x68, 0x70, 0x47
	.byte 0x24, 0x10, 0x00, 0x00

	thumb_func_start func_080ADA84
func_080ADA84: @ 0x080ADA84
	push {lr}
	sub sp, #4
	adds r0, r1, #0
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl func_0803A8A4
	bl GetMapData
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #3
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080ADAA8
func_080ADAA8: @ 0x080ADAA8
	push {lr}
	sub sp, #4
	adds r0, r1, #0
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl func_0803A8A4
	bl GetMapData
	ldrh r0, [r0, #0x20]
	lsls r0, r0, #3
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080ADACC
func_080ADACC: @ 0x080ADACC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r3, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0xde
	lsls r0, r0, #1
	adds r4, r4, r0
	lsls r0, r2, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #1
	strb r0, [r1]
	adds r4, #0x83
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080ADAFC
func_080ADAFC: @ 0x080ADAFC
	push {r4, lr}
	movs r2, #0xce
	lsls r2, r2, #1
	adds r3, r0, r2
	adds r4, r3, r1
	ldrb r0, [r4]
	adds r2, r0, #0
	subs r2, #0x10
	cmp r2, #0
	bge .L080ADB1C
	adds r0, r3, #0
	bl func_080AC96C
	adds r2, r0, #0
	adds r0, #0x10
	strb r0, [r4]
.L080ADB1C:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
.L080ADB24:
	.byte 0x4A, 0x01, 0x52, 0x18, 0x92, 0x00, 0x80, 0x18, 0x02, 0x49, 0x40, 0x18
	.byte 0x00, 0x21, 0x01, 0x70, 0x70, 0x47, 0x00, 0x00, 0x3D, 0x02, 0x00, 0x00, 0x08, 0x30, 0x89, 0x00
	.byte 0x40, 0x18, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00, 0x08, 0x30, 0x89, 0x00, 0x40, 0x18, 0x00, 0x68
	.byte 0x70, 0x47, 0x00, 0x00
