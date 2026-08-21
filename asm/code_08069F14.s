	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED
	thumb_func_start func_08069F14
func_08069F14: @ 0x08069F14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	mov sb, r1
	adds r5, r2, #0
	mov sl, r3
	bl func_08008444
	ldr r0, .L0806A120 @ =vtable_unk_080E7AA8
	str r0, [r7, #4]
	mov r1, sb
	ldr r0, [r1]
	movs r4, #0
	str r4, [r1]
	str r0, [r7, #8]
	str r5, [r7, #0xc]
	mov r2, sl
	str r2, [r7, #0x10]
	str r4, [r7, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x18]
	str r4, [r7, #0x1c]
	movs r5, #0
	strh r4, [r7, #0x20]
	adds r6, r7, #0
	adds r6, #0x24
	ldr r1, .L0806A124 @ =gUnk_08527094
	adds r0, r6, #0
	bl func_0805E6CC
	movs r1, #0x54
	adds r1, r1, r7
	mov r8, r1
	ldr r1, .L0806A128 @ =gUnk_08728208
	mov r0, r8
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x84
	strh r4, [r0]
	strh r4, [r0, #2]
	adds r0, #4
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x9c
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
	strh r4, [r0, #2]
	adds r0, #4
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0xd4
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
	adds r6, #0xd0
	movs r0, #0xc
	strh r0, [r6]
	adds r1, r7, #0
	adds r1, #0xf8
	movs r0, #0x18
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xfc
	mov r1, r8
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r7, r2
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
	movs r0, #0x96
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	str r4, [r6, #0x3c]
	add r0, sp, #0xc
	bl func_0800835C
	add r5, sp, #0x10
	adds r0, r5, #0
	bl func_0800770C
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
	str r4, [sp]
	add r2, sp, #0xc
	str r2, [sp, #4]
	str r5, [sp, #8]
	movs r1, #0
	movs r2, #0x1d
	movs r3, #0
	bl func_08050CC0
	adds r0, r5, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	movs r1, #0x9c
	lsls r1, r1, #1
	adds r0, r7, r1
	str r4, [r0]
	movs r0, #0xf
	movs r1, #1
	rsbs r1, r1, #0
.L0806A052:
	subs r0, #1
	cmp r0, r1
	bne .L0806A052
	ldr r2, .L0806A12C @ =0x00003EA0
	adds r0, r7, r2
	movs r1, #0
	str r1, [r0]
	ldr r2, .L0806A130 @ =0x00003FA4
	adds r0, r7, r2
	str r1, [r0]
	adds r2, #0xc4
	adds r0, r7, r2
	str r1, [r0]
	adds r2, #0x44
	adds r0, r7, r2
	str r1, [r0]
	ldr r0, .L0806A134 @ =0x000040B0
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #1
	bl func_08007B54
	str r0, [r4, #4]
	ldr r1, .L0806A138 @ =0x000040B8
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r2, .L0806A13C @ =0x000040C0
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L0806A140 @ =0x000040C8
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r1, .L0806A144 @ =0x000040D0
	adds r4, r7, r1
	movs r5, #9
	movs r2, #0
	mov r8, r2
	movs r6, #1
	rsbs r6, r6, #0
.L0806A0CC:
	adds r0, r4, #0
	bl func_08007874
	mov r0, r8
	str r0, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r6
	bne .L0806A0CC
	ldr r1, .L0806A148 @ =0x00004120
	adds r4, r7, r1
	movs r5, #9
	movs r2, #0
	mov r8, r2
	movs r6, #1
	rsbs r6, r6, #0
.L0806A0EC:
	adds r0, r4, #0
	bl func_08007128
	mov r0, r8
	str r0, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r6
	bne .L0806A0EC
	ldr r1, .L0806A14C @ =0x00004170
	adds r0, r7, r1
	movs r1, #1
	bl func_08008B54
	ldr r2, .L0806A150 @ =0x00004174
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	mov r0, sl
	cmp r0, #1
	beq .L0806A15A
	cmp r0, #1
	bgt .L0806A154
	cmp r0, #0
	beq .L0806A170
	b .L0806A15A
	.align 2, 0
.L0806A120: .4byte vtable_unk_080E7AA8
.L0806A124: .4byte gUnk_08527094
.L0806A128: .4byte gUnk_08728208
.L0806A12C: .4byte 0x00003EA0
.L0806A130: .4byte 0x00003FA4
.L0806A134: .4byte 0x000040B0
.L0806A138: .4byte 0x000040B8
.L0806A13C: .4byte 0x000040C0
.L0806A140: .4byte 0x000040C8
.L0806A144: .4byte 0x000040D0
.L0806A148: .4byte 0x00004120
.L0806A14C: .4byte 0x00004170
.L0806A150: .4byte 0x00004174
.L0806A154:
	mov r1, sl
	cmp r1, #2
	beq .L0806A162
.L0806A15A:
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r7, r2
	b .L0806A168
.L0806A162:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
.L0806A168:
	movs r1, #0xb4
	bl func_08050E50
	b .L0806A17C
.L0806A170:
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #0
	bl func_08050E50
.L0806A17C:
	movs r0, #0
	mov r8, r0
	ldr r1, .L0806A1E8 @ =0x000040D4
	adds r6, r7, r1
.L0806A184:
	mov r2, r8
	lsls r5, r2, #3
	adds r4, r5, r7
	ldr r0, .L0806A1EC @ =0x000040D0
	adds r4, r4, r0
	ldr r1, [r6]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r6]
	adds r5, r5, r7
	ldr r1, .L0806A1F0 @ =0x00004120
	adds r5, r5, r1
	ldr r1, [r6, #0x50]
	adds r0, r5, #0
	bl func_080073E0
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r6, #0x50]
	adds r6, #8
	movs r2, #1
	add r8, r2
	mov r0, r8
	cmp r0, #9
	ble .L0806A184
	mov r2, sb
	ldr r1, [r2]
	cmp r1, #0
	beq .L0806A1D6
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0806A1D6:
	adds r0, r7, #0
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0806A1E8: .4byte 0x000040D4
.L0806A1EC: .4byte 0x000040D0
.L0806A1F0: .4byte 0x00004120

	thumb_func_start func_0806A1F4
func_0806A1F4: @ 0x0806A1F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L0806A45C @ =0xFFFFFC78
	add sp, r4
	str r0, [sp, #0x20c]
	adds r7, r1, #0
	adds r0, r7, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0x10
	movs r3, #0xea
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #8]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0x10
	ldr r4, .L0806A460 @ =0x00001E41
	adds r1, r4, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0x10
	ldr r5, .L0806A464 @ =0x00003F42
	adds r1, r5, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	ldr r1, .L0806A468 @ =0x0600E800
	movs r2, #0xc0
	lsls r2, r2, #5
	bl func_08008EB8
	ldr r1, .L0806A46C @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0x10
	movs r6, #0xb2
	lsls r6, r6, #5
	adds r1, r6, #0
	strh r1, [r2]
	strh r1, [r0]
	ldr r0, .L0806A470 @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L0806A474 @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L0806A478 @ =0x00030003
	ldr r1, .L0806A47C @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008EB8
	movs r0, #0
	mov sl, r0
	add r1, sp, #0xf8
	mov sb, r1
	mov r2, sp
	adds r2, #0x18
	str r2, [sp, #0x2b0]
	mov r3, sp
	adds r3, #0x58
	str r3, [sp, #0x2b8]
	mov r4, sp
	adds r4, #0xfc
	str r4, [sp, #0x304]
	movs r5, #0x80
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x308]
	mov r6, sp
	adds r6, #0x60
	str r6, [sp, #0x2bc]
	movs r0, #0x86
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x30c]
	movs r1, #0x8c
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x314]
	movs r2, #0x8e
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x318]
	movs r3, #0x94
	lsls r3, r3, #1
	add r3, sp
	str r3, [sp, #0x324]
	movs r4, #0x9a
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x328]
	movs r5, #0xa0
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x32c]
	movs r6, #0xa6
	lsls r6, r6, #1
	add r6, sp
	str r6, [sp, #0x330]
	movs r0, #0xac
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x334]
	movs r1, #0xb2
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x338]
	mov r2, sp
	adds r2, #0x7c
	str r2, [sp, #0x2c4]
	mov r3, sp
	adds r3, #0x8c
	str r3, [sp, #0x2c8]
	mov r4, sp
	adds r4, #0x9c
	str r4, [sp, #0x2d0]
	mov r5, sp
	adds r5, #0xac
	str r5, [sp, #0x2e8]
	mov r6, sp
	adds r6, #0x64
	str r6, [sp, #0x2c0]
	movs r0, #1
	mov r8, r0
	ldr r5, .L0806A480 @ =0x06001400
	mov r6, sb
	ldr r4, .L0806A484 @ =gUnk_080FB966
.L0806A31C:
	ldrh r1, [r4]
	mov r2, r8
	strh r2, [r6]
	movs r0, #2
	mov r3, sb
	strh r0, [r3, #2]
	ldr r0, [r6]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	add r1, sp, #0x18
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	ldr r0, [sp, #0x2b0]
	adds r1, r5, #0
	movs r2, #0x40
	bl func_08008E64
	adds r5, #0x40
	adds r4, #2
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #9
	ble .L0806A31C
	ldr r0, [sp, #0x2b8]
	movs r1, #0
	movs r2, #6
	bl memset
	movs r1, #0
	str r1, [sp, #0x210]
	movs r0, #0x20
	ldr r2, [sp, #0x2b8]
	strh r0, [r2]
	movs r5, #8
	movs r6, #2
	add r0, sp, #0xfc
	strh r5, [r0]
	ldr r3, [sp, #0x304]
	strh r6, [r3, #2]
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	ldr r1, .L0806A488 @ =gUnk_080FB97C
	movs r2, #1
	mov sb, r2
	add r0, sp, #0x100
	strh r5, [r0]
	ldr r3, [sp, #0x308]
	strh r6, [r3, #2]
	ldr r0, [r0]
	str r1, [sp]
	ldr r5, [sp, #0x210]
	str r5, [sp, #4]
	str r2, [sp, #8]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r0, r7, #0
	bl func_08008910
	ldr r6, [sp, #0x2b8]
	ldrh r2, [r6]
	movs r3, #0x80
	lsls r3, r3, #2
	str r0, [sp, #0x380]
	lsls r2, r2, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x60
	adds r1, r4, #0
	bl func_08008F0C
	ldr r0, [sp, #0x2bc]
	mov sl, r0
	ldr r2, [sp, #0x380]
	ldr r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq .L0806A49C
	cmp r1, #0
	beq .L0806A3E6
	adds r0, r1, #0
	ldr r1, [sp, #0x2bc]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806A3E6:
	ldr r6, [sp, #0x380]
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r0, #0xd1
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x368]
	movs r1, #0xa9
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x36c]
	ldr r2, .L0806A48C @ =0x00000854
	adds r2, r7, r2
	str r2, [sp, #0x288]
	ldr r3, .L0806A490 @ =0x000009D8
	adds r3, r7, r3
	str r3, [sp, #0x29c]
	ldr r4, .L0806A494 @ =0x00000B5C
	adds r4, r7, r4
	str r4, [sp, #0x2a0]
	movs r5, #0xce
	lsls r5, r5, #4
	adds r5, r7, r5
	str r5, [sp, #0x2cc]
	ldr r6, .L0806A498 @ =0x0000074C
	adds r6, r7, r6
	str r6, [sp, #0x378]
	movs r0, #0xfa
	lsls r0, r0, #3
	adds r0, r7, r0
	str r0, [sp, #0x37c]
	adds r1, r7, #0
	adds r1, #0x1c
	str r1, [sp, #0x2b4]
	adds r2, r7, #0
	adds r2, #0x84
	str r2, [sp, #0x2d4]
	adds r3, r7, #0
	adds r3, #0x86
	str r3, [sp, #0x2d8]
	adds r4, r7, #0
	adds r4, #0xbc
	str r4, [sp, #0x2fc]
	adds r5, r7, #0
	adds r5, #0xbe
	str r5, [sp, #0x300]
	adds r6, r7, #0
	adds r6, #0xfc
	str r6, [sp, #0x31c]
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r7, r0
	str r0, [sp, #0x320]
	adds r1, #0x6c
	str r1, [sp, #0x2e0]
	adds r2, #8
	str r2, [sp, #0x2e4]
	b .L0806A5E8
	.align 2, 0
.L0806A45C: .4byte 0xFFFFFC78
.L0806A460: .4byte 0x00001E41
.L0806A464: .4byte 0x00003F42
.L0806A468: .4byte 0x0600E800
.L0806A46C: .4byte 0x06007FE0
.L0806A470: .4byte gUnk_080F9F70
.L0806A474: .4byte gUnk_080F9F74
.L0806A478: .4byte 0x00030003
.L0806A47C: .4byte 0x0600F800
.L0806A480: .4byte 0x06001400
.L0806A484: .4byte gUnk_080FB966
.L0806A488: .4byte gUnk_080FB97C
.L0806A48C: .4byte 0x00000854
.L0806A490: .4byte 0x000009D8
.L0806A494: .4byte 0x00000B5C
.L0806A498: .4byte 0x0000074C
.L0806A49C:
	mov r8, r1
	add r1, sp, #0x108
	mov r3, sb
	str r3, [r1]
	ldr r4, [sp, #0x380]
	ldr r0, [r4]
	mov r5, r8
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x104
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L0806A4BA
	adds r0, r1, #0
.L0806A4BA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806A4D8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806A4DC
	mov r0, sb
	bl func_080D3BC0
	b .L0806A4DC
.L0806A4D8:
	movs r0, #0
	mov sb, r0
.L0806A4DC:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r6, [sp, #0x380]
	ldr r2, [r6]
	adds r3, r5, #0
	movs r0, #0xd1
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x368]
	movs r1, #0xa9
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x36c]
	ldr r4, .L0806A588 @ =0x00000854
	adds r4, r7, r4
	str r4, [sp, #0x288]
	ldr r5, .L0806A58C @ =0x000009D8
	adds r5, r7, r5
	str r5, [sp, #0x29c]
	ldr r6, .L0806A590 @ =0x00000B5C
	adds r6, r7, r6
	str r6, [sp, #0x2a0]
	movs r0, #0xce
	lsls r0, r0, #4
	adds r0, r7, r0
	str r0, [sp, #0x2cc]
	ldr r1, .L0806A594 @ =0x0000074C
	adds r1, r7, r1
	str r1, [sp, #0x378]
	movs r4, #0xfa
	lsls r4, r4, #3
	adds r4, r7, r4
	str r4, [sp, #0x37c]
	adds r5, r7, #0
	adds r5, #0x1c
	str r5, [sp, #0x2b4]
	adds r6, r7, #0
	adds r6, #0x84
	str r6, [sp, #0x2d4]
	adds r0, r7, #0
	adds r0, #0x86
	str r0, [sp, #0x2d8]
	adds r1, r7, #0
	adds r1, #0xbc
	str r1, [sp, #0x2fc]
	adds r4, r7, #0
	adds r4, #0xbe
	str r4, [sp, #0x300]
	adds r5, #0xe0
	str r5, [sp, #0x31c]
	movs r6, #0x80
	lsls r6, r6, #1
	adds r6, r7, r6
	str r6, [sp, #0x320]
	adds r0, #2
	str r0, [sp, #0x2e0]
	subs r1, #0x30
	str r1, [sp, #0x2e4]
	cmp r2, r8
	beq .L0806A56C
.L0806A554:
	cmp r3, #0
	beq .L0806A564
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A564:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806A554
.L0806A56C:
	adds r5, r3, #0
	ldr r1, [sp, #0x108]
	cmp r1, #1
	bne .L0806A598
	cmp r5, #0
	beq .L0806A584
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806A584:
	adds r5, #0x10
	b .L0806A5C0
	.align 2, 0
.L0806A588: .4byte 0x00000854
.L0806A58C: .4byte 0x000009D8
.L0806A590: .4byte 0x00000B5C
.L0806A594: .4byte 0x0000074C
.L0806A598:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L0806A5BE
.L0806A5A0:
	cmp r2, #0
	beq .L0806A5B0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A5B0:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L0806A5A0
.L0806A5BE:
	adds r5, r2, #0
.L0806A5C0:
	ldr r6, [sp, #0x380]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806A5D2
.L0806A5CC:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806A5CC
.L0806A5D2:
	cmp r0, #0
	beq .L0806A5DA
	bl free
.L0806A5DA:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r1, [sp, #0x384]
	ldr r2, [sp, #0x380]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0806A5E8:
	movs r3, #0x10
	str r3, [sp, #0x210]
	movs r0, #0x30
	movs r4, #0
	ldr r5, [sp, #0x2b8]
	strh r0, [r5, #2]
	ldr r3, .L0806A660 @ =gUnk_080FB988
	movs r5, #1
	movs r1, #8
	movs r2, #2
	add r0, sp, #0x10c
	strh r1, [r0]
	ldr r6, [sp, #0x30c]
	strh r2, [r6, #2]
	ldr r0, [r0]
	str r3, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	ldr r1, [sp, #0x368]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r0, r7, #0
	bl func_08008910
	ldr r1, [sp, #0x2b8]
	ldrh r2, [r1, #2]
	movs r3, #0x80
	lsls r3, r3, #2
	str r0, [sp, #0x380]
	lsls r2, r2, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x60
	ldr r1, [sp, #0x368]
	bl func_08008F0C
	ldr r2, [sp, #0x2bc]
	mov sl, r2
	ldr r3, [sp, #0x380]
	ldr r1, [r3, #4]
	ldr r0, [r3, #0xc]
	cmp r1, r0
	beq .L0806A664
	cmp r1, #0
	beq .L0806A654
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A654:
	ldr r1, [sp, #0x380]
	ldr r0, [r1, #4]
	adds r0, #0x10
	str r0, [r1, #4]
	b .L0806A73A
	.align 2, 0
.L0806A660: .4byte gUnk_080FB988
.L0806A664:
	mov r8, r1
	add r1, sp, #0x114
	str r5, [r1]
	ldr r2, [sp, #0x380]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x110
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x110
	cmp r4, r0
	bhs .L0806A684
	adds r1, r2, #0
.L0806A684:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806A6A2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806A6A6
	mov r0, sb
	bl func_080D3BC0
	b .L0806A6A6
.L0806A6A2:
	movs r0, #0
	mov sb, r0
.L0806A6A6:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r4, [sp, #0x380]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0806A6CC
.L0806A6B4:
	cmp r3, #0
	beq .L0806A6C4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A6C4:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806A6B4
.L0806A6CC:
	adds r5, r3, #0
	add r0, sp, #0x114
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806A6EA
	cmp r5, #0
	beq .L0806A6E6
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A6E6:
	adds r5, #0x10
	b .L0806A712
.L0806A6EA:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806A710
.L0806A6F2:
	cmp r2, #0
	beq .L0806A702
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A702:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r2, #0x10
	mov r1, r8
	cmp r1, #0
	bne .L0806A6F2
.L0806A710:
	adds r5, r2, #0
.L0806A712:
	ldr r3, [sp, #0x380]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806A724
.L0806A71E:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806A71E
.L0806A724:
	cmp r0, #0
	beq .L0806A72C
	bl free
.L0806A72C:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r4, [sp, #0x384]
	ldr r6, [sp, #0x380]
	str r4, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806A73A:
	ldr r0, [sp, #0x210]
	adds r0, #0x10
	str r0, [sp, #0x210]
	adds r0, #0x20
	movs r6, #0
	ldr r1, [sp, #0x2b8]
	strh r0, [r1, #4]
	movs r4, #8
	movs r5, #2
	add r0, sp, #0x118
	strh r4, [r0]
	ldr r2, [sp, #0x314]
	strh r5, [r2, #2]
	ldr r0, [r0]
	ldr r1, [sp, #0x36c]
	movs r2, #0
	bl func_0804E7A0
	ldr r1, .L0806A7CC @ =gUnk_080FB994
	movs r3, #1
	mov sb, r3
	add r0, sp, #0x11c
	strh r4, [r0]
	ldr r4, [sp, #0x318]
	strh r5, [r4, #2]
	ldr r0, [r0]
	str r1, [sp]
	str r6, [sp, #4]
	str r3, [sp, #8]
	ldr r1, [sp, #0x36c]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r0, r7, #0
	bl func_08008910
	ldr r5, [sp, #0x2b8]
	ldrh r2, [r5, #4]
	movs r3, #0x80
	lsls r3, r3, #2
	str r0, [sp, #0x380]
	lsls r2, r2, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x60
	ldr r1, [sp, #0x36c]
	bl func_08008F0C
	ldr r6, [sp, #0x2bc]
	mov sl, r6
	ldr r0, [sp, #0x380]
	ldr r1, [r0, #4]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	beq .L0806A7D0
	cmp r1, #0
	beq .L0806A7BC
	adds r0, r1, #0
	adds r1, r6, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806A7BC:
	ldr r5, [sp, #0x380]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r6, [sp, #0x210]
	adds r6, #0x10
	str r6, [sp, #0x2f0]
	b .L0806A8AE
	.align 2, 0
.L0806A7CC: .4byte gUnk_080FB994
.L0806A7D0:
	mov r8, r1
	add r1, sp, #0x124
	mov r0, sb
	str r0, [r1]
	ldr r2, [sp, #0x380]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x120
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x120
	cmp r4, r0
	bhs .L0806A7F2
	adds r1, r2, #0
.L0806A7F2:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806A810
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806A814
	mov r0, sb
	bl func_080D3BC0
	b .L0806A814
.L0806A810:
	movs r0, #0
	mov sb, r0
.L0806A814:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r4, [sp, #0x380]
	ldr r2, [r4]
	adds r3, r5, #0
	ldr r5, [sp, #0x210]
	adds r5, #0x10
	str r5, [sp, #0x2f0]
	cmp r2, r8
	beq .L0806A840
.L0806A828:
	cmp r3, #0
	beq .L0806A838
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A838:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806A828
.L0806A840:
	adds r5, r3, #0
	add r0, sp, #0x124
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806A85E
	cmp r5, #0
	beq .L0806A85A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A85A:
	adds r5, #0x10
	b .L0806A886
.L0806A85E:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806A884
.L0806A866:
	cmp r2, #0
	beq .L0806A876
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A876:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r2, #0x10
	mov r1, r8
	cmp r1, #0
	bne .L0806A866
.L0806A884:
	adds r5, r2, #0
.L0806A886:
	ldr r3, [sp, #0x380]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806A898
.L0806A892:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806A892
.L0806A898:
	cmp r0, #0
	beq .L0806A8A0
	bl free
.L0806A8A0:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r4, [sp, #0x384]
	ldr r6, [sp, #0x380]
	str r4, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806A8AE:
	ldr r0, [sp, #0x2f0]
	str r0, [sp, #0x210]
	adds r1, r0, #0
	adds r1, #0x20
	str r1, [sp, #0x214]
	ldr r3, .L0806A924 @ =gUnk_080FB9A0
	movs r4, #0
	movs r5, #1
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x128
	strh r1, [r0]
	ldr r6, [sp, #0x324]
	strh r2, [r6, #2]
	ldr r0, [r0]
	str r3, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	ldr r1, [sp, #0x288]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r0, r7, #0
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #1
	str r0, [sp, #0x380]
	ldr r0, [sp, #0x214]
	lsls r2, r0, #5
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r2, r2, r1
	add r0, sp, #0x60
	ldr r1, [sp, #0x288]
	bl func_08008F0C
	ldr r2, [sp, #0x2bc]
	mov sl, r2
	ldr r3, [sp, #0x380]
	ldr r1, [r3, #4]
	ldr r0, [r3, #0xc]
	cmp r1, r0
	beq .L0806A928
	cmp r1, #0
	beq .L0806A918
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A918:
	ldr r1, [sp, #0x380]
	ldr r0, [r1, #4]
	adds r0, #0x10
	str r0, [r1, #4]
	b .L0806A9FE
	.align 2, 0
.L0806A924: .4byte gUnk_080FB9A0
.L0806A928:
	mov r8, r1
	add r1, sp, #0x130
	str r5, [r1]
	ldr r2, [sp, #0x380]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x12c
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x12c
	cmp r4, r0
	bhs .L0806A948
	adds r1, r2, #0
.L0806A948:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806A966
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806A96A
	mov r0, sb
	bl func_080D3BC0
	b .L0806A96A
.L0806A966:
	movs r0, #0
	mov sb, r0
.L0806A96A:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r4, [sp, #0x380]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0806A990
.L0806A978:
	cmp r3, #0
	beq .L0806A988
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A988:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806A978
.L0806A990:
	adds r5, r3, #0
	add r0, sp, #0x130
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806A9AE
	cmp r5, #0
	beq .L0806A9AA
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A9AA:
	adds r5, #0x10
	b .L0806A9D6
.L0806A9AE:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806A9D4
.L0806A9B6:
	cmp r2, #0
	beq .L0806A9C6
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806A9C6:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r2, #0x10
	mov r1, r8
	cmp r1, #0
	bne .L0806A9B6
.L0806A9D4:
	adds r5, r2, #0
.L0806A9D6:
	ldr r3, [sp, #0x380]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806A9E8
.L0806A9E2:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806A9E2
.L0806A9E8:
	cmp r0, #0
	beq .L0806A9F0
	bl free
.L0806A9F0:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r4, [sp, #0x384]
	ldr r6, [sp, #0x380]
	str r4, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806A9FE:
	ldr r0, [sp, #0x210]
	adds r0, #0xc
	str r0, [sp, #0x210]
	adds r4, r0, #0
	adds r4, #0x20
	ldr r3, .L0806AA78 @ =gUnk_080FB9A8
	movs r5, #0
	movs r1, #1
	mov sb, r1
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x134
	strh r1, [r0]
	ldr r6, [sp, #0x328]
	strh r2, [r6, #2]
	ldr r0, [r0]
	str r3, [sp]
	str r5, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	ldr r1, [sp, #0x29c]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r0, r7, #0
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #1
	str r0, [sp, #0x380]
	lsls r4, r4, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r4, r4, r2
	add r0, sp, #0x60
	ldr r1, [sp, #0x29c]
	adds r2, r4, #0
	bl func_08008F0C
	ldr r3, [sp, #0x2bc]
	mov sl, r3
	ldr r4, [sp, #0x380]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L0806AA7C
	cmp r1, #0
	beq .L0806AA6C
	adds r0, r1, #0
	adds r1, r3, #0
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806AA6C:
	ldr r3, [sp, #0x380]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L0806AB54
	.align 2, 0
.L0806AA78: .4byte gUnk_080FB9A8
.L0806AA7C:
	mov r8, r1
	add r1, sp, #0x13c
	mov r4, sb
	str r4, [r1]
	ldr r5, [sp, #0x380]
	ldr r0, [r5]
	mov r6, r8
	subs r0, r6, r0
	asrs r4, r0, #4
	add r0, sp, #0x138
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x138
	cmp r4, r0
	bhs .L0806AA9E
	adds r1, r2, #0
.L0806AA9E:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806AABC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806AAC0
	mov r0, sb
	bl func_080D3BC0
	b .L0806AAC0
.L0806AABC:
	movs r0, #0
	mov sb, r0
.L0806AAC0:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r0, [sp, #0x380]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0806AAE6
.L0806AACE:
	cmp r3, #0
	beq .L0806AADE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806AADE:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806AACE
.L0806AAE6:
	adds r5, r3, #0
	add r0, sp, #0x13c
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806AB04
	cmp r5, #0
	beq .L0806AB00
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806AB00:
	adds r5, #0x10
	b .L0806AB2C
.L0806AB04:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806AB2A
.L0806AB0C:
	cmp r2, #0
	beq .L0806AB1C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806AB1C:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L0806AB0C
.L0806AB2A:
	adds r5, r2, #0
.L0806AB2C:
	ldr r6, [sp, #0x380]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806AB3E
.L0806AB38:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806AB38
.L0806AB3E:
	cmp r0, #0
	beq .L0806AB46
	bl free
.L0806AB46:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r1, [sp, #0x384]
	ldr r2, [sp, #0x380]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0806AB54:
	ldr r3, [sp, #0x210]
	adds r3, #0xc
	str r3, [sp, #0x210]
	adds r4, r3, #0
	adds r4, #0x20
	ldr r3, .L0806ABCC @ =gUnk_080FB9B0
	movs r5, #0
	movs r6, #1
	mov sb, r6
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x140
	strh r1, [r0]
	ldr r1, [sp, #0x32c]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	ldr r1, [sp, #0x2a0]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r0, r7, #0
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #1
	str r0, [sp, #0x380]
	lsls r4, r4, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r4, r4, r2
	add r0, sp, #0x60
	ldr r1, [sp, #0x2a0]
	adds r2, r4, #0
	bl func_08008F0C
	ldr r3, [sp, #0x2bc]
	mov sl, r3
	ldr r4, [sp, #0x380]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L0806ABD0
	cmp r1, #0
	beq .L0806ABC0
	adds r0, r1, #0
	adds r1, r3, #0
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806ABC0:
	ldr r3, [sp, #0x380]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L0806ACA8
	.align 2, 0
.L0806ABCC: .4byte gUnk_080FB9B0
.L0806ABD0:
	mov r8, r1
	add r1, sp, #0x148
	mov r4, sb
	str r4, [r1]
	ldr r5, [sp, #0x380]
	ldr r0, [r5]
	mov r6, r8
	subs r0, r6, r0
	asrs r4, r0, #4
	add r0, sp, #0x144
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x144
	cmp r4, r0
	bhs .L0806ABF2
	adds r1, r2, #0
.L0806ABF2:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806AC10
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806AC14
	mov r0, sb
	bl func_080D3BC0
	b .L0806AC14
.L0806AC10:
	movs r0, #0
	mov sb, r0
.L0806AC14:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r0, [sp, #0x380]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0806AC3A
.L0806AC22:
	cmp r3, #0
	beq .L0806AC32
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806AC32:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806AC22
.L0806AC3A:
	adds r5, r3, #0
	add r0, sp, #0x148
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806AC58
	cmp r5, #0
	beq .L0806AC54
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806AC54:
	adds r5, #0x10
	b .L0806AC80
.L0806AC58:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806AC7E
.L0806AC60:
	cmp r2, #0
	beq .L0806AC70
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806AC70:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L0806AC60
.L0806AC7E:
	adds r5, r2, #0
.L0806AC80:
	ldr r6, [sp, #0x380]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806AC92
.L0806AC8C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806AC8C
.L0806AC92:
	cmp r0, #0
	beq .L0806AC9A
	bl free
.L0806AC9A:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r1, [sp, #0x384]
	ldr r2, [sp, #0x380]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0806ACA8:
	ldr r3, [sp, #0x210]
	adds r3, #0xc
	str r3, [sp, #0x210]
	adds r4, r3, #0
	adds r4, #0x20
	ldr r3, .L0806AD24 @ =gUnk_080FB9B8
	movs r5, #0
	movs r6, #1
	mov sb, r6
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x14c
	strh r1, [r0]
	ldr r1, [sp, #0x330]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	ldr r1, [sp, #0x2cc]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r0, r7, #0
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #1
	str r0, [sp, #0x380]
	lsls r4, r4, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r4, r4, r2
	add r0, sp, #0x60
	ldr r1, [sp, #0x2cc]
	adds r2, r4, #0
	bl func_08008F0C
	ldr r3, [sp, #0x2bc]
	mov sl, r3
	ldr r4, [sp, #0x380]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L0806AD28
	cmp r1, #0
	beq .L0806AD14
	adds r0, r1, #0
	adds r1, r3, #0
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806AD14:
	ldr r3, [sp, #0x380]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	ldr r4, [sp, #0x210]
	adds r4, #0xc
	str r4, [sp, #0x2ec]
	b .L0806AE06
	.align 2, 0
.L0806AD24: .4byte gUnk_080FB9B8
.L0806AD28:
	mov r8, r1
	add r1, sp, #0x154
	mov r5, sb
	str r5, [r1]
	ldr r6, [sp, #0x380]
	ldr r0, [r6]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x150
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x150
	cmp r4, r0
	bhs .L0806AD4A
	adds r1, r2, #0
.L0806AD4A:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806AD68
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806AD6C
	mov r0, sb
	bl func_080D3BC0
	b .L0806AD6C
.L0806AD68:
	movs r0, #0
	mov sb, r0
.L0806AD6C:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r3, [sp, #0x380]
	ldr r2, [r3]
	adds r3, r5, #0
	ldr r4, [sp, #0x210]
	adds r4, #0xc
	str r4, [sp, #0x2ec]
	cmp r2, r8
	beq .L0806AD98
.L0806AD80:
	cmp r3, #0
	beq .L0806AD90
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806AD90:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806AD80
.L0806AD98:
	adds r5, r3, #0
	add r0, sp, #0x154
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806ADB6
	cmp r5, #0
	beq .L0806ADB2
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806ADB2:
	adds r5, #0x10
	b .L0806ADDE
.L0806ADB6:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806ADDC
.L0806ADBE:
	cmp r2, #0
	beq .L0806ADCE
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806ADCE:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r2, #0x10
	mov r1, r8
	cmp r1, #0
	bne .L0806ADBE
.L0806ADDC:
	adds r5, r2, #0
.L0806ADDE:
	ldr r3, [sp, #0x380]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806ADF0
.L0806ADEA:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806ADEA
.L0806ADF0:
	cmp r0, #0
	beq .L0806ADF8
	bl free
.L0806ADF8:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r4, [sp, #0x384]
	ldr r6, [sp, #0x380]
	str r4, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806AE06:
	ldr r0, [sp, #0x2ec]
	str r0, [sp, #0x210]
	adds r1, r0, #0
	adds r1, #0x20
	str r1, [sp, #0x218]
	ldr r2, .L0806AE74 @ =gUnk_080FB9C0
	movs r3, #0
	movs r4, #1
	movs r0, #2
	add r1, sp, #0x158
	strh r0, [r1]
	ldr r5, [sp, #0x334]
	strh r0, [r5, #2]
	ldr r0, [r1]
	str r2, [sp]
	str r3, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [sp, #0x378]
	movs r2, #0
	bl func_0804E958
	adds r0, r7, #0
	bl func_08008910
	str r0, [sp, #0x380]
	ldr r6, [sp, #0x218]
	lsls r2, r6, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x60
	ldr r1, [sp, #0x378]
	movs r3, #0x80
	bl func_08008F0C
	ldr r1, [sp, #0x2bc]
	mov sl, r1
	ldr r2, [sp, #0x380]
	ldr r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq .L0806AE78
	cmp r1, #0
	beq .L0806AE6A
	adds r0, r1, #0
	ldr r1, [sp, #0x2bc]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806AE6A:
	ldr r6, [sp, #0x380]
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806AF4E
	.align 2, 0
.L0806AE74: .4byte gUnk_080FB9C0
.L0806AE78:
	mov r8, r1
	add r1, sp, #0x160
	str r4, [r1]
	ldr r2, [sp, #0x380]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x15c
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x15c
	cmp r4, r0
	bhs .L0806AE98
	adds r1, r2, #0
.L0806AE98:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806AEB6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806AEBA
	mov r0, sb
	bl func_080D3BC0
	b .L0806AEBA
.L0806AEB6:
	movs r0, #0
	mov sb, r0
.L0806AEBA:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r4, [sp, #0x380]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0806AEE0
.L0806AEC8:
	cmp r3, #0
	beq .L0806AED8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806AED8:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806AEC8
.L0806AEE0:
	adds r5, r3, #0
	add r0, sp, #0x160
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806AEFE
	cmp r5, #0
	beq .L0806AEFA
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806AEFA:
	adds r5, #0x10
	b .L0806AF26
.L0806AEFE:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806AF24
.L0806AF06:
	cmp r2, #0
	beq .L0806AF16
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806AF16:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r2, #0x10
	mov r1, r8
	cmp r1, #0
	bne .L0806AF06
.L0806AF24:
	adds r5, r2, #0
.L0806AF26:
	ldr r3, [sp, #0x380]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806AF38
.L0806AF32:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806AF32
.L0806AF38:
	cmp r0, #0
	beq .L0806AF40
	bl free
.L0806AF40:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r4, [sp, #0x384]
	ldr r6, [sp, #0x380]
	str r4, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806AF4E:
	ldr r0, [sp, #0x210]
	adds r0, #4
	str r0, [sp, #0x210]
	adds r0, #0x20
	str r0, [sp, #0x21c]
	ldr r2, .L0806AFBC @ =gUnk_080FB9C4
	movs r3, #0
	movs r4, #1
	movs r0, #2
	add r1, sp, #0x164
	strh r0, [r1]
	ldr r5, [sp, #0x338]
	strh r0, [r5, #2]
	ldr r0, [r1]
	str r2, [sp]
	str r3, [sp, #4]
	str r4, [sp, #8]
	ldr r1, [sp, #0x37c]
	movs r2, #0
	bl func_0804E958
	adds r0, r7, #0
	bl func_08008910
	str r0, [sp, #0x380]
	ldr r6, [sp, #0x21c]
	lsls r2, r6, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x60
	ldr r1, [sp, #0x37c]
	movs r3, #0x80
	bl func_08008F0C
	ldr r1, [sp, #0x2bc]
	mov sl, r1
	ldr r2, [sp, #0x380]
	ldr r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq .L0806AFC0
	cmp r1, #0
	beq .L0806AFB2
	adds r0, r1, #0
	ldr r1, [sp, #0x2bc]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806AFB2:
	ldr r6, [sp, #0x380]
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806B096
	.align 2, 0
.L0806AFBC: .4byte gUnk_080FB9C4
.L0806AFC0:
	mov r8, r1
	add r1, sp, #0x16c
	str r4, [r1]
	ldr r2, [sp, #0x380]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x168
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x168
	cmp r4, r0
	bhs .L0806AFE0
	adds r1, r2, #0
.L0806AFE0:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806AFFE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806B002
	mov r0, sb
	bl func_080D3BC0
	b .L0806B002
.L0806AFFE:
	movs r0, #0
	mov sb, r0
.L0806B002:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r4, [sp, #0x380]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0806B028
.L0806B010:
	cmp r3, #0
	beq .L0806B020
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B020:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806B010
.L0806B028:
	adds r5, r3, #0
	add r0, sp, #0x16c
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806B046
	cmp r5, #0
	beq .L0806B042
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B042:
	adds r5, #0x10
	b .L0806B06E
.L0806B046:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806B06C
.L0806B04E:
	cmp r2, #0
	beq .L0806B05E
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B05E:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r2, #0x10
	mov r1, r8
	cmp r1, #0
	bne .L0806B04E
.L0806B06C:
	adds r5, r2, #0
.L0806B06E:
	ldr r3, [sp, #0x380]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806B080
.L0806B07A:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806B07A
.L0806B080:
	cmp r0, #0
	beq .L0806B088
	bl free
.L0806B088:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r4, [sp, #0x384]
	ldr r6, [sp, #0x380]
	str r4, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806B096:
	ldr r0, [sp, #0x210]
	adds r0, #4
	str r0, [sp, #0x210]
	adds r0, #0x20
	str r0, [sp, #0x220]
	adds r0, r7, #0
	bl func_08008910
	str r0, [sp, #0x380]
	ldr r1, .L0806B0EC @ =gUnk_0875196C
	ldr r3, [sp, #0x220]
	lsls r2, r3, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r2, r2, r4
	add r0, sp, #0x60
	movs r3, #0x80
	bl func_08008F0C
	ldr r5, [sp, #0x2bc]
	mov sl, r5
	ldr r6, [sp, #0x380]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806B0F0
	cmp r1, #0
	beq .L0806B0DA
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806B0DA:
	ldr r5, [sp, #0x380]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r6, [sp, #0x210]
	adds r6, #4
	str r6, [sp, #0x2dc]
	b .L0806B1CE
	.align 2, 0
.L0806B0EC: .4byte gUnk_0875196C
.L0806B0F0:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x174
	str r0, [r1]
	ldr r2, [sp, #0x380]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x170
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x170
	cmp r4, r0
	bhs .L0806B112
	adds r1, r2, #0
.L0806B112:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806B130
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806B134
	mov r0, sb
	bl func_080D3BC0
	b .L0806B134
.L0806B130:
	movs r0, #0
	mov sb, r0
.L0806B134:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r4, [sp, #0x380]
	ldr r2, [r4]
	adds r3, r5, #0
	ldr r5, [sp, #0x210]
	adds r5, #4
	str r5, [sp, #0x2dc]
	cmp r2, r8
	beq .L0806B160
.L0806B148:
	cmp r3, #0
	beq .L0806B158
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B158:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806B148
.L0806B160:
	adds r5, r3, #0
	add r0, sp, #0x174
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806B17E
	cmp r5, #0
	beq .L0806B17A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B17A:
	adds r5, #0x10
	b .L0806B1A6
.L0806B17E:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806B1A4
.L0806B186:
	cmp r2, #0
	beq .L0806B196
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B196:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r2, #0x10
	mov r1, r8
	cmp r1, #0
	bne .L0806B186
.L0806B1A4:
	adds r5, r2, #0
.L0806B1A6:
	ldr r3, [sp, #0x380]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806B1B8
.L0806B1B2:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806B1B2
.L0806B1B8:
	cmp r0, #0
	beq .L0806B1C0
	bl free
.L0806B1C0:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r4, [sp, #0x384]
	ldr r6, [sp, #0x380]
	str r4, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806B1CE:
	adds r0, r7, #0
	bl func_08008910
	str r0, [sp, #0x380]
	ldr r1, .L0806B20C @ =gUnk_087519EC
	add r0, sp, #0x60
	ldr r2, .L0806B210 @ =0x05000020
	movs r3, #0x20
	bl func_08008F0C
	ldr r0, [sp, #0x2bc]
	mov sl, r0
	ldr r2, [sp, #0x380]
	ldr r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq .L0806B214
	cmp r1, #0
	beq .L0806B200
	adds r0, r1, #0
	ldr r1, [sp, #0x2bc]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806B200:
	ldr r6, [sp, #0x380]
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806B2EC
	.align 2, 0
.L0806B20C: .4byte gUnk_087519EC
.L0806B210: .4byte 0x05000020
.L0806B214:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x17c
	str r0, [r1]
	ldr r2, [sp, #0x380]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x178
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x178
	cmp r4, r0
	bhs .L0806B236
	adds r1, r2, #0
.L0806B236:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806B254
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806B258
	mov r0, sb
	bl func_080D3BC0
	b .L0806B258
.L0806B254:
	movs r0, #0
	mov sb, r0
.L0806B258:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r4, [sp, #0x380]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0806B27E
.L0806B266:
	cmp r3, #0
	beq .L0806B276
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B276:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806B266
.L0806B27E:
	adds r5, r3, #0
	add r0, sp, #0x17c
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806B29C
	cmp r5, #0
	beq .L0806B298
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B298:
	adds r5, #0x10
	b .L0806B2C4
.L0806B29C:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806B2C2
.L0806B2A4:
	cmp r2, #0
	beq .L0806B2B4
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B2B4:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r2, #0x10
	mov r1, r8
	cmp r1, #0
	bne .L0806B2A4
.L0806B2C2:
	adds r5, r2, #0
.L0806B2C4:
	ldr r3, [sp, #0x380]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806B2D6
.L0806B2D0:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806B2D0
.L0806B2D6:
	cmp r0, #0
	beq .L0806B2DE
	bl free
.L0806B2DE:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r4, [sp, #0x384]
	ldr r6, [sp, #0x380]
	str r4, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806B2EC:
	ldr r0, [sp, #0x2dc]
	adds r0, #0x20
	str r0, [sp, #0x224]
	adds r0, r7, #0
	bl func_08008910
	str r0, [sp, #0x380]
	ldr r1, .L0806B338 @ =gUnk_0875254C
	ldr r3, [sp, #0x224]
	lsls r2, r3, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r2, r2, r4
	add r0, sp, #0x60
	movs r3, #0x20
	bl func_08008F0C
	ldr r5, [sp, #0x2bc]
	mov sl, r5
	ldr r6, [sp, #0x380]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806B33C
	cmp r1, #0
	beq .L0806B32C
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806B32C:
	ldr r5, [sp, #0x380]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0806B414
	.align 2, 0
.L0806B338: .4byte gUnk_0875254C
.L0806B33C:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x184
	str r0, [r1]
	ldr r6, [sp, #0x380]
	ldr r0, [r6]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x180
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x180
	cmp r4, r0
	bhs .L0806B35E
	adds r1, r2, #0
.L0806B35E:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806B37C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806B380
	mov r0, sb
	bl func_080D3BC0
	b .L0806B380
.L0806B37C:
	movs r0, #0
	mov sb, r0
.L0806B380:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r3, [sp, #0x380]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0806B3A6
.L0806B38E:
	cmp r3, #0
	beq .L0806B39E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B39E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806B38E
.L0806B3A6:
	adds r5, r3, #0
	add r0, sp, #0x184
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806B3C4
	cmp r5, #0
	beq .L0806B3C0
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806B3C0:
	adds r5, #0x10
	b .L0806B3EC
.L0806B3C4:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806B3EA
.L0806B3CC:
	cmp r2, #0
	beq .L0806B3DC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B3DC:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L0806B3CC
.L0806B3EA:
	adds r5, r2, #0
.L0806B3EC:
	ldr r6, [sp, #0x380]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806B3FE
.L0806B3F8:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806B3F8
.L0806B3FE:
	cmp r0, #0
	beq .L0806B406
	bl free
.L0806B406:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r1, [sp, #0x384]
	ldr r2, [sp, #0x380]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0806B414:
	adds r0, r7, #0
	bl func_08008910
	str r0, [sp, #0x380]
	ldr r1, .L0806B450 @ =gUnk_087525CC
	add r0, sp, #0x60
	ldr r2, .L0806B454 @ =0x05000040
	movs r3, #0x20
	bl func_08008F0C
	ldr r3, [sp, #0x2bc]
	mov sl, r3
	ldr r4, [sp, #0x380]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L0806B458
	cmp r1, #0
	beq .L0806B446
	adds r0, r1, #0
	adds r1, r3, #0
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B446:
	ldr r3, [sp, #0x380]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L0806B530
	.align 2, 0
.L0806B450: .4byte gUnk_087525CC
.L0806B454: .4byte 0x05000040
.L0806B458:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x18c
	str r0, [r1]
	ldr r4, [sp, #0x380]
	ldr r0, [r4]
	mov r5, r8
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x188
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x188
	cmp r4, r0
	bhs .L0806B47A
	adds r1, r2, #0
.L0806B47A:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806B498
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806B49C
	mov r0, sb
	bl func_080D3BC0
	b .L0806B49C
.L0806B498:
	movs r0, #0
	mov sb, r0
.L0806B49C:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r6, [sp, #0x380]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0806B4C2
.L0806B4AA:
	cmp r3, #0
	beq .L0806B4BA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B4BA:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806B4AA
.L0806B4C2:
	adds r5, r3, #0
	add r0, sp, #0x18c
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806B4E0
	cmp r5, #0
	beq .L0806B4DC
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806B4DC:
	adds r5, #0x10
	b .L0806B508
.L0806B4E0:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806B506
.L0806B4E8:
	cmp r2, #0
	beq .L0806B4F8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806B4F8:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L0806B4E8
.L0806B506:
	adds r5, r2, #0
.L0806B508:
	ldr r6, [sp, #0x380]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806B51A
.L0806B514:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806B514
.L0806B51A:
	cmp r0, #0
	beq .L0806B522
	bl free
.L0806B522:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r1, [sp, #0x384]
	ldr r2, [sp, #0x380]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0806B530:
	ldr r0, .L0806B5C4 @ =0x03FF03FF
	ldr r6, .L0806B5C8 @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r6, #0
	bl func_08008EB8
	movs r0, #0x4c
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r3, r0, #0
	str r6, [sp]
	adds r0, r5, #0
	movs r1, #0x64
	adds r2, r4, #0
	bl func_08075B00
	ldr r6, [sp, #0x2b4]
	adds r5, r0, #0
	ldr r4, [r7, #0x1c]
	cmp r5, r4
	beq .L0806B59C
	cmp r4, #0
	beq .L0806B59C
	adds r0, r4, #0
	adds r0, #0x28
	movs r1, #2
	bl func_08075DEC
	adds r0, r4, #0
	adds r0, #0x18
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x18]
	cmp r1, r2
	beq .L0806B58C
.L0806B586:
	adds r1, #0x40
	cmp r1, r2
	bne .L0806B586
.L0806B58C:
	ldr r0, [r0]
	cmp r0, #0
	beq .L0806B596
	bl free
.L0806B596:
	adds r0, r4, #0
	bl __builtin_delete
.L0806B59C:
	str r5, [r6]
	movs r3, #0
	str r3, [sp, #0x228]
	movs r4, #0
	str r4, [sp, #0x22c]
	movs r5, #0
	str r5, [sp, #0x230]
	movs r6, #0
	str r6, [sp, #0x234]
	ldr r0, [r7, #0x10]
	cmp r0, #1
	bne .L0806B5B6
	b .L0806B98C
.L0806B5B6:
	cmp r0, #1
	bgt .L0806B5CC
	cmp r0, #0
	beq .L0806B5D6
	bl .L0806C162
	.align 2, 0
.L0806B5C4: .4byte 0x03FF03FF
.L0806B5C8: .4byte 0x0600F000
.L0806B5CC:
	cmp r0, #2
	bne .L0806B5D2
	b .L0806BD74
.L0806B5D2:
	bl .L0806C162
.L0806B5D6:
	movs r0, #0
	str r0, [sp, #0x23c]
	ldr r0, [r7, #0xc]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetCapacity__C4Coop
	str r0, [sp, #0x238]
	movs r1, #0
	ldr r2, [sp, #0x228]
	cmp r2, r0
	blo .L0806B5F4
	bl .L0806C162
.L0806B5F4:
	ldr r0, [r7, #0xc]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetChicken__4CoopUi
	mov sb, r0
	cmp r0, #0
	bne .L0806B608
	b .L0806B97A
.L0806B608:
	ldr r4, .L0806B658 @ =0x00004068
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0xf
	bhi .L0806B626
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0806B620
	ldr r5, [sp, #0x23c]
	str r5, [r0]
.L0806B620:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0806B626:
	ldr r6, [sp, #0x22c]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #1
	adds r0, #2
	str r0, [sp, #0x228]
	lsls r0, r0, #3
	ldr r1, [sp, #0x2bc]
	strh r0, [r1]
	movs r0, #8
	str r0, [r1, #4]
	mov r0, sb
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	beq .L0806B664
	cmp r0, #1
	bne .L0806B664
	ldr r0, .L0806B65C @ =gUnk_0875268C
	ldr r2, [sp, #0x2bc]
	str r0, [r2, #8]
	ldr r0, .L0806B660 @ =gUnk_0875270C
	str r0, [r2, #0xc]
	b .L0806B66E
	.align 2, 0
.L0806B658: .4byte 0x00004068
.L0806B65C: .4byte gUnk_0875268C
.L0806B660: .4byte gUnk_0875270C
.L0806B664:
	ldr r0, .L0806B704 @ =gUnk_0875272C
	ldr r3, [sp, #0x2bc]
	str r0, [r3, #8]
	ldr r0, .L0806B708 @ =gUnk_087527AC
	str r0, [r3, #0xc]
.L0806B66E:
	ldr r4, .L0806B70C @ =0x00003EA0
	adds r2, r7, r4
	ldr r0, [r2]
	cmp r0, #0xf
	bhi .L0806B692
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r2, r0
	cmp r0, #0
	beq .L0806B68C
	ldr r1, [sp, #0x2bc]
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [sp, #0x6c]
	str r1, [r0]
.L0806B68C:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0806B692:
	mov r0, sb
	bl IsFestivalWinner__C6Animal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806B6C2
	ldr r0, [r7, #0x1c]
	ldr r1, [sp, #0x228]
	subs r1, #2
	ldr r0, [r0, #0x18]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r0, #2
	ldr r4, [sp, #0x220]
	lsls r1, r4, #0x10
	movs r5, #1
	str r5, [sp]
	movs r6, #0x20
	str r6, [sp, #4]
	lsrs r1, r1, #0x10
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
.L0806B6C2:
	movs r4, #0
	ldr r0, [sp, #0x228]
	lsls r0, r0, #3
	mov r8, r0
	ldr r1, [sp, #0x228]
	adds r1, #2
	str r1, [sp, #0x28c]
	add r6, sp, #0x70
	movs r2, #0xc8
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x33c]
	movs r3, #0xca
	lsls r3, r3, #1
	add r3, sp
	str r3, [sp, #0x340]
	ldr r5, [sp, #0x228]
	lsls r5, r5, #6
	mov sl, r5
	ldr r0, [sp, #0x218]
	lsls r0, r0, #0x10
	str r0, [sp, #0x370]
	movs r1, #0xcc
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x344]
	ldr r2, [sp, #0x21c]
	lsls r2, r2, #0x10
	str r2, [sp, #0x374]
	ldr r3, [sp, #0x22c]
	adds r3, #1
	str r3, [sp, #0x290]
	b .L0806B738
	.align 2, 0
.L0806B704: .4byte gUnk_0875272C
.L0806B708: .4byte gUnk_087527AC
.L0806B70C: .4byte 0x00003EA0
.L0806B710:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r5, [sp, #0x28c]
	lsls r1, r5, #6
	adds r0, r0, r1
	adds r1, r4, #5
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r2, [sp, #0x224]
	lsls r1, r2, #0x10
	movs r3, #2
	str r3, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	lsrs r1, r1, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r4, #1
.L0806B738:
	mov r0, sb
	bl GetAffection__C6Animal
	movs r1, #0x19
	bl __udivsi3
	cmp r4, r0
	blo .L0806B710
	mov r0, r8
	strh r0, [r6]
	ldr r1, [sp, #0x23c]
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #6
	adds r4, r4, r1
	lsls r4, r4, #2
	adds r1, r4, r7
	movs r2, #0xe6
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r5, #0xc
	add r0, sp, #0x190
	strh r5, [r0]
	movs r2, #2
	ldr r3, [sp, #0x33c]
	strh r2, [r3, #2]
	ldr r0, [r0]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	mov r0, sb
	bl GetName__C6Animal
	adds r2, r0, #0
	adds r1, r4, r7
	movs r3, #0xe6
	lsls r3, r3, #4
	adds r1, r1, r3
	add r0, sp, #0x194
	strh r5, [r0]
	movs r3, #2
	ldr r5, [sp, #0x340]
	strh r3, [r5, #2]
	ldr r0, [r0]
	adds r1, #4
	str r2, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r4, r4, r7
	movs r3, #0xe6
	lsls r3, r3, #4
	adds r4, r4, r3
	adds r4, #4
	str r4, [r6, #4]
	movs r0, #3
	ldr r4, [sp, #0x22c]
	ands r0, r4
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #3
	movs r5, #0x80
	lsls r5, r5, #1
	adds r4, r4, r5
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, sl
	adds r0, #6
	movs r1, #0
	str r1, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	lsls r4, r4, #5
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r4, r4, r3
	str r4, [r6, #8]
	ldr r4, .L0806B828 @ =0x00003FA4
	adds r2, r7, r4
	ldr r1, [r2]
	cmp r1, #0xf
	bhi .L0806B80C
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r1, r2, r0
	cmp r1, #0
	beq .L0806B806
	adds r0, r6, #0
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
.L0806B806:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0806B80C:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, sl
	adds r5, r0, #0
	adds r5, #0x20
	ldr r4, [sp, #0x2b8]
	mov r0, sb
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806B82C
	movs r0, #2
	b .L0806B83C
	.align 2, 0
.L0806B828: .4byte 0x00003FA4
.L0806B82C:
	mov r0, sb
	bl IsUnhappy__C9Livestock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r0, r1, #0x1f
.L0806B83C:
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	movs r4, #0
	str r4, [sp]
	movs r6, #0x20
	str r6, [sp, #4]
	adds r0, r5, #0
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	mov r0, sb
	bl GetAge__C6Animal
	movs r1, #0x78
	bl __udivsi3
	ldr r1, [r7, #0x1c]
	ldr r1, [r1, #0x18]
	add r1, sl
	adds r1, #0x34
	str r6, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, sl
	adds r0, #0x36
	ldr r2, [sp, #0x370]
	lsrs r1, r2, #0x10
	str r4, [sp]
	str r6, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	mov r0, sb
	bl GetAge__C6Animal
	adds r4, r0, #0
	ldr r0, [r7, #0xc]
	ldrb r1, [r0, #0x11]
	add r0, sp, #0x198
	strb r1, [r0]
	ldr r3, [sp, #0x344]
	mov r8, r3
	cmp r4, #0x1d
	bhi .L0806B8A8
	adds r5, r4, #0
	movs r3, #0
	b .L0806B8BC
.L0806B8A8:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x1e
	bl __udivsi3
	adds r3, r0, #0
.L0806B8BC:
	mov r4, r8
	ldrb r0, [r4]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1b
	adds r2, r5, #0
	subs r2, #0x1e
	subs r2, r1, r2
	cmp r2, #0x1d
	bhi .L0806B8D2
	adds r3, #1
	b .L0806B8D4
.L0806B8D2:
	subs r2, #0x1e
.L0806B8D4:
	lsls r1, r0, #0x1e
	lsrs r1, r1, #0x1e
	movs r5, #3
	ands r1, r5
	movs r4, #4
	rsbs r4, r4, #0
	adds r0, r4, #0
	add r6, sp, #0x240
	ldrb r6, [r6]
	ands r0, r6
	orrs r0, r1
	subs r1, r1, r3
	ands r1, r5
	ands r0, r4
	orrs r0, r1
	add r1, sp, #0x240
	strb r0, [r1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	ands r0, r5
	mov r3, r8
	ldrb r1, [r3]
	ands r4, r1
	orrs r4, r0
	movs r0, #0x1f
	ands r2, r0
	lsls r1, r2, #2
	subs r5, #0x80
	adds r0, r5, #0
	ands r4, r0
	orrs r4, r1
	strb r4, [r3]
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r6, [sp, #0x28c]
	lsls r5, r6, #6
	adds r0, r0, r5
	adds r0, #0x22
	lsls r2, r4, #0x1e
	lsrs r2, r2, #0x1e
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	ldr r2, [sp, #0x214]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	str r3, [sp]
	movs r6, #0x20
	str r6, [sp, #4]
	movs r2, #6
	movs r3, #2
	bl func_0804E9F4
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1b
	adds r4, #1
	ldr r0, [r7, #0x1c]
	ldr r1, [r0, #0x18]
	adds r1, r1, r5
	adds r1, #0x34
	str r6, [sp]
	adds r0, r4, #0
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r5
	adds r0, #0x36
	ldr r2, [sp, #0x374]
	lsrs r1, r2, #0x10
	movs r3, #0
	str r3, [sp]
	str r6, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r4, [sp, #0x290]
	str r4, [sp, #0x22c]
.L0806B97A:
	ldr r5, [sp, #0x23c]
	adds r5, #1
	str r5, [sp, #0x23c]
	adds r1, r5, #0
	ldr r6, [sp, #0x238]
	cmp r1, r6
	bhs .L0806B98A
	b .L0806B5F4
.L0806B98A:
	b .L0806C162
.L0806B98C:
	movs r0, #0
	str r0, [sp, #0x248]
	ldr r0, [r7, #0xc]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetCapacity__C4Barn
	str r0, [sp, #0x244]
	movs r1, #0
	ldr r2, [sp, #0x228]
	cmp r2, r0
	blo .L0806B9A8
	b .L0806C162
.L0806B9A8:
	ldr r0, [r7, #0xc]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetCow__4BarnUi
	mov sb, r0
	cmp r0, #0
	bne .L0806B9BC
	b .L0806BD62
.L0806B9BC:
	ldr r4, .L0806BA24 @ =0x00004068
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0xf
	bhi .L0806B9DA
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0806B9D4
	ldr r5, [sp, #0x248]
	str r5, [r0]
.L0806B9D4:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0806B9DA:
	ldr r6, [sp, #0x230]
	lsls r4, r6, #1
	adds r0, r4, r6
	lsls r0, r0, #1
	adds r0, #2
	str r0, [sp, #0x228]
	lsls r0, r0, #3
	ldr r1, [sp, #0x2bc]
	strh r0, [r1]
	movs r0, #8
	str r0, [r1, #4]
	mov r0, sb
	bl GetGrowthStage__C3Cow
	cmp r0, #1
	beq .L0806BA38
	cmp r0, #1
	blo .L0806BA4C
	cmp r0, #2
	bne .L0806BA4C
	ldr r0, .L0806BA28 @ =gUnk_08751B4C
	ldr r2, [sp, #0x2bc]
	str r0, [r2, #8]
	ldr r0, .L0806BA2C @ =gUnk_08751BCC
	str r0, [r2, #0xc]
	mov r0, sb
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806BA56
	ldr r0, .L0806BA30 @ =gUnk_08751C8C
	ldr r3, [sp, #0x2bc]
	str r0, [r3, #8]
	ldr r0, .L0806BA34 @ =gUnk_08751D0C
	str r0, [r3, #0xc]
	b .L0806BA56
	.align 2, 0
.L0806BA24: .4byte 0x00004068
.L0806BA28: .4byte gUnk_08751B4C
.L0806BA2C: .4byte gUnk_08751BCC
.L0806BA30: .4byte gUnk_08751C8C
.L0806BA34: .4byte gUnk_08751D0C
.L0806BA38:
	ldr r0, .L0806BA44 @ =gUnk_08751BEC
	ldr r5, [sp, #0x2bc]
	str r0, [r5, #8]
	ldr r0, .L0806BA48 @ =gUnk_08751C6C
	str r0, [r5, #0xc]
	b .L0806BA56
	.align 2, 0
.L0806BA44: .4byte gUnk_08751BEC
.L0806BA48: .4byte gUnk_08751C6C
.L0806BA4C:
	ldr r0, .L0806BAEC @ =gUnk_08751D2C
	ldr r6, [sp, #0x2bc]
	str r0, [r6, #8]
	ldr r0, .L0806BAF0 @ =gUnk_08751DAC
	str r0, [r6, #0xc]
.L0806BA56:
	ldr r0, .L0806BAF4 @ =0x00003EA0
	adds r2, r7, r0
	ldr r0, [r2]
	cmp r0, #0xf
	bhi .L0806BA7A
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r2, r0
	cmp r0, #0
	beq .L0806BA74
	ldr r1, [sp, #0x2bc]
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [sp, #0x6c]
	str r1, [r0]
.L0806BA74:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0806BA7A:
	mov r0, sb
	bl IsFestivalWinner__C6Animal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806BAAA
	ldr r0, [r7, #0x1c]
	ldr r1, [sp, #0x228]
	subs r1, #2
	ldr r0, [r0, #0x18]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r0, #2
	ldr r2, [sp, #0x220]
	lsls r1, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	lsrs r1, r1, #0x10
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
.L0806BAAA:
	movs r5, #0
	ldr r6, [sp, #0x228]
	lsls r6, r6, #3
	mov r8, r6
	ldr r0, [sp, #0x228]
	adds r0, #2
	str r0, [sp, #0x28c]
	add r6, sp, #0x70
	ldr r1, [sp, #0x228]
	lsls r1, r1, #6
	mov sl, r1
	ldr r2, [sp, #0x218]
	lsls r2, r2, #0x10
	str r2, [sp, #0x370]
	ldr r3, [sp, #0x21c]
	lsls r3, r3, #0x10
	str r3, [sp, #0x374]
	movs r0, #0xce
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x348]
	movs r1, #0xd0
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x34c]
	movs r2, #0xd2
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x350]
	ldr r3, [sp, #0x230]
	adds r3, #1
	str r3, [sp, #0x294]
	b .L0806BB20
	.align 2, 0
.L0806BAEC: .4byte gUnk_08751D2C
.L0806BAF0: .4byte gUnk_08751DAC
.L0806BAF4: .4byte 0x00003EA0
.L0806BAF8:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x28c]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r1, r5, #5
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r3, [sp, #0x224]
	lsls r1, r3, #0x10
	movs r2, #2
	str r2, [sp]
	movs r3, #0x20
	str r3, [sp, #4]
	lsrs r1, r1, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #1
.L0806BB20:
	mov r0, sb
	bl GetAffection__C6Animal
	movs r1, #0x19
	bl __udivsi3
	cmp r5, r0
	blo .L0806BAF8
	mov r5, r8
	strh r5, [r6]
	ldr r0, [sp, #0x230]
	adds r4, r4, r0
	lsls r4, r4, #6
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r1, r4, r7
	movs r2, #0xe6
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r5, #0xc
	add r0, sp, #0x19c
	strh r5, [r0]
	movs r2, #2
	ldr r3, [sp, #0x348]
	strh r2, [r3, #2]
	ldr r0, [r0]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	mov r0, sb
	bl GetName__C6Animal
	adds r2, r0, #0
	adds r1, r4, r7
	movs r3, #0xe6
	lsls r3, r3, #4
	adds r1, r1, r3
	add r0, sp, #0x1a0
	strh r5, [r0]
	movs r3, #2
	ldr r5, [sp, #0x34c]
	strh r3, [r5, #2]
	ldr r0, [r0]
	adds r1, #4
	str r2, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r4, r4, r7
	movs r3, #0xe6
	lsls r3, r3, #4
	adds r4, r4, r3
	adds r4, #4
	str r4, [r6, #4]
	movs r0, #3
	ldr r4, [sp, #0x230]
	ands r0, r4
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #3
	movs r5, #0x80
	lsls r5, r5, #1
	adds r4, r4, r5
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, sl
	adds r0, #6
	movs r1, #0
	str r1, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	lsls r4, r4, #5
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r4, r4, r3
	str r4, [r6, #8]
	ldr r4, .L0806BC10 @ =0x00003FA4
	adds r2, r7, r4
	ldr r1, [r2]
	cmp r1, #0xf
	bhi .L0806BBF2
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r1, r2, r0
	cmp r1, #0
	beq .L0806BBEC
	adds r0, r6, #0
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
.L0806BBEC:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0806BBF2:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, sl
	adds r5, r0, #0
	adds r5, #0x20
	ldr r4, [sp, #0x2b8]
	mov r0, sb
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806BC14
	movs r0, #2
	b .L0806BC24
	.align 2, 0
.L0806BC10: .4byte 0x00003FA4
.L0806BC14:
	mov r0, sb
	bl IsUnhappy__C9Livestock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r0, r1, #0x1f
.L0806BC24:
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	movs r4, #0
	str r4, [sp]
	movs r6, #0x20
	str r6, [sp, #4]
	adds r0, r5, #0
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	mov r0, sb
	bl GetAge__C6Animal
	movs r1, #0x78
	bl __udivsi3
	ldr r1, [r7, #0x1c]
	ldr r1, [r1, #0x18]
	add r1, sl
	adds r1, #0x34
	str r6, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, sl
	adds r0, #0x36
	ldr r2, [sp, #0x370]
	lsrs r1, r2, #0x10
	str r4, [sp]
	str r6, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	mov r0, sb
	bl GetAge__C6Animal
	adds r4, r0, #0
	ldr r0, [r7, #0xc]
	ldrb r1, [r0, #0x11]
	add r0, sp, #0x1a4
	strb r1, [r0]
	ldr r3, [sp, #0x350]
	mov r8, r3
	cmp r4, #0x1d
	bhi .L0806BC90
	adds r5, r4, #0
	movs r3, #0
	b .L0806BCA4
.L0806BC90:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x1e
	bl __udivsi3
	adds r3, r0, #0
.L0806BCA4:
	mov r4, r8
	ldrb r0, [r4]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1b
	adds r2, r5, #0
	subs r2, #0x1e
	subs r2, r1, r2
	cmp r2, #0x1d
	bhi .L0806BCBA
	adds r3, #1
	b .L0806BCBC
.L0806BCBA:
	subs r2, #0x1e
.L0806BCBC:
	lsls r1, r0, #0x1e
	lsrs r1, r1, #0x1e
	movs r5, #3
	ands r1, r5
	movs r4, #4
	rsbs r4, r4, #0
	adds r0, r4, #0
	add r6, sp, #0x24c
	ldrb r6, [r6]
	ands r0, r6
	orrs r0, r1
	subs r1, r1, r3
	ands r1, r5
	ands r0, r4
	orrs r0, r1
	add r1, sp, #0x24c
	strb r0, [r1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	ands r0, r5
	mov r3, r8
	ldrb r1, [r3]
	ands r4, r1
	orrs r4, r0
	movs r0, #0x1f
	ands r2, r0
	lsls r1, r2, #2
	subs r5, #0x80
	adds r0, r5, #0
	ands r4, r0
	orrs r4, r1
	strb r4, [r3]
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r6, [sp, #0x28c]
	lsls r5, r6, #6
	adds r0, r0, r5
	adds r0, #0x22
	lsls r2, r4, #0x1e
	lsrs r2, r2, #0x1e
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	ldr r2, [sp, #0x214]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	str r3, [sp]
	movs r6, #0x20
	str r6, [sp, #4]
	movs r2, #6
	movs r3, #2
	bl func_0804E9F4
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1b
	adds r4, #1
	ldr r0, [r7, #0x1c]
	ldr r1, [r0, #0x18]
	adds r1, r1, r5
	adds r1, #0x34
	str r6, [sp]
	adds r0, r4, #0
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r5
	adds r0, #0x36
	ldr r2, [sp, #0x374]
	lsrs r1, r2, #0x10
	movs r3, #0
	str r3, [sp]
	str r6, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r4, [sp, #0x294]
	str r4, [sp, #0x230]
.L0806BD62:
	ldr r5, [sp, #0x248]
	adds r5, #1
	str r5, [sp, #0x248]
	adds r1, r5, #0
	ldr r6, [sp, #0x244]
	cmp r1, r6
	bhs .L0806BD72
	b .L0806B9A8
.L0806BD72:
	b .L0806C162
.L0806BD74:
	movs r0, #0
	str r0, [sp, #0x254]
	ldr r0, [r7, #0xc]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetCapacity__C4Barn
	str r0, [sp, #0x250]
	movs r1, #0
	ldr r2, [sp, #0x228]
	cmp r2, r0
	blo .L0806BD90
	b .L0806C162
.L0806BD90:
	ldr r0, [r7, #0xc]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetSheep__4BarnUi
	mov sb, r0
	cmp r0, #0
	bne .L0806BDA4
	b .L0806C152
.L0806BDA4:
	ldr r4, .L0806BE20 @ =0x00004068
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0xf
	bhi .L0806BDC2
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0806BDBC
	ldr r5, [sp, #0x254]
	str r5, [r0]
.L0806BDBC:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0806BDC2:
	ldr r6, [sp, #0x234]
	lsls r4, r6, #1
	adds r0, r4, r6
	lsls r0, r0, #1
	adds r0, #2
	str r0, [sp, #0x228]
	lsls r0, r0, #3
	ldr r1, [sp, #0x2bc]
	strh r0, [r1]
	movs r0, #8
	str r0, [r1, #4]
	mov r0, sb
	bl GetGrowthStage__C5Sheep
	cmp r0, #0
	beq .L0806BE3C
	cmp r0, #1
	bne .L0806BE3C
	ldr r0, .L0806BE24 @ =gUnk_0875320C
	ldr r2, [sp, #0x2bc]
	str r0, [r2, #8]
	ldr r0, .L0806BE28 @ =gUnk_0875328C
	str r0, [r2, #0xc]
	mov r0, sb
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806BE06
	ldr r0, .L0806BE2C @ =gUnk_0875334C
	ldr r3, [sp, #0x2bc]
	str r0, [r3, #8]
	ldr r0, .L0806BE30 @ =gUnk_087533CC
	str r0, [r3, #0xc]
.L0806BE06:
	mov r0, sb
	bl IsSheared__C5Sheep
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806BE46
	ldr r0, .L0806BE34 @ =gUnk_087532AC
	ldr r5, [sp, #0x2bc]
	str r0, [r5, #8]
	ldr r0, .L0806BE38 @ =gUnk_0875332C
	str r0, [r5, #0xc]
	b .L0806BE46
	.align 2, 0
.L0806BE20: .4byte 0x00004068
.L0806BE24: .4byte gUnk_0875320C
.L0806BE28: .4byte gUnk_0875328C
.L0806BE2C: .4byte gUnk_0875334C
.L0806BE30: .4byte gUnk_087533CC
.L0806BE34: .4byte gUnk_087532AC
.L0806BE38: .4byte gUnk_0875332C
.L0806BE3C:
	ldr r0, .L0806BEDC @ =gUnk_087533EC
	ldr r6, [sp, #0x2bc]
	str r0, [r6, #8]
	ldr r0, .L0806BEE0 @ =gUnk_0875346C
	str r0, [r6, #0xc]
.L0806BE46:
	ldr r0, .L0806BEE4 @ =0x00003EA0
	adds r2, r7, r0
	ldr r0, [r2]
	cmp r0, #0xf
	bhi .L0806BE6A
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r2, r0
	cmp r0, #0
	beq .L0806BE64
	ldr r1, [sp, #0x2bc]
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [sp, #0x6c]
	str r1, [r0]
.L0806BE64:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0806BE6A:
	mov r0, sb
	bl IsFestivalWinner__C6Animal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806BE9A
	ldr r0, [r7, #0x1c]
	ldr r1, [sp, #0x228]
	subs r1, #2
	ldr r0, [r0, #0x18]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r0, #2
	ldr r2, [sp, #0x220]
	lsls r1, r2, #0x10
	movs r3, #1
	str r3, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	lsrs r1, r1, #0x10
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
.L0806BE9A:
	movs r5, #0
	ldr r6, [sp, #0x228]
	lsls r6, r6, #3
	mov r8, r6
	ldr r0, [sp, #0x228]
	adds r0, #2
	str r0, [sp, #0x28c]
	add r6, sp, #0x70
	ldr r1, [sp, #0x228]
	lsls r1, r1, #6
	mov sl, r1
	ldr r2, [sp, #0x218]
	lsls r2, r2, #0x10
	str r2, [sp, #0x370]
	ldr r3, [sp, #0x21c]
	lsls r3, r3, #0x10
	str r3, [sp, #0x374]
	movs r0, #0xd4
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x354]
	movs r1, #0xd6
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x358]
	movs r2, #0xd8
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x35c]
	ldr r3, [sp, #0x234]
	adds r3, #1
	str r3, [sp, #0x298]
	b .L0806BF10
	.align 2, 0
.L0806BEDC: .4byte gUnk_087533EC
.L0806BEE0: .4byte gUnk_0875346C
.L0806BEE4: .4byte 0x00003EA0
.L0806BEE8:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r2, [sp, #0x28c]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r1, r5, #5
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r3, [sp, #0x224]
	lsls r1, r3, #0x10
	movs r2, #2
	str r2, [sp]
	movs r3, #0x20
	str r3, [sp, #4]
	lsrs r1, r1, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #1
.L0806BF10:
	mov r0, sb
	bl GetAffection__C6Animal
	movs r1, #0x19
	bl __udivsi3
	cmp r5, r0
	blo .L0806BEE8
	mov r5, r8
	strh r5, [r6]
	ldr r0, [sp, #0x234]
	adds r4, r4, r0
	lsls r4, r4, #6
	adds r4, r4, r0
	lsls r4, r4, #2
	adds r1, r4, r7
	movs r2, #0xe6
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r5, #0xc
	add r0, sp, #0x1a8
	strh r5, [r0]
	movs r2, #2
	ldr r3, [sp, #0x354]
	strh r2, [r3, #2]
	ldr r0, [r0]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	mov r0, sb
	bl GetName__C6Animal
	adds r2, r0, #0
	adds r1, r4, r7
	movs r3, #0xe6
	lsls r3, r3, #4
	adds r1, r1, r3
	add r0, sp, #0x1ac
	strh r5, [r0]
	movs r3, #2
	ldr r5, [sp, #0x358]
	strh r3, [r5, #2]
	ldr r0, [r0]
	adds r1, #4
	str r2, [sp]
	movs r5, #0
	str r5, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r4, r4, r7
	movs r3, #0xe6
	lsls r3, r3, #4
	adds r4, r4, r3
	adds r4, #4
	str r4, [r6, #4]
	movs r0, #3
	ldr r4, [sp, #0x234]
	ands r0, r4
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #3
	movs r5, #0x80
	lsls r5, r5, #1
	adds r4, r4, r5
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, sl
	adds r0, #6
	movs r1, #0
	str r1, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	lsls r4, r4, #5
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r4, r4, r3
	str r4, [r6, #8]
	ldr r4, .L0806C000 @ =0x00003FA4
	adds r2, r7, r4
	ldr r1, [r2]
	cmp r1, #0xf
	bhi .L0806BFE2
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r1, r2, r0
	cmp r1, #0
	beq .L0806BFDC
	adds r0, r6, #0
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
.L0806BFDC:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0806BFE2:
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, sl
	adds r5, r0, #0
	adds r5, #0x20
	ldr r4, [sp, #0x2b8]
	mov r0, sb
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806C004
	movs r0, #2
	b .L0806C014
	.align 2, 0
.L0806C000: .4byte 0x00003FA4
.L0806C004:
	mov r0, sb
	bl IsUnhappy__C9Livestock
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r0, r1, #0x1f
.L0806C014:
	lsls r0, r0, #1
	adds r0, r4, r0
	ldrh r1, [r0]
	movs r4, #0
	str r4, [sp]
	movs r6, #0x20
	str r6, [sp, #4]
	adds r0, r5, #0
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	mov r0, sb
	bl GetAge__C6Animal
	movs r1, #0x78
	bl __udivsi3
	ldr r1, [r7, #0x1c]
	ldr r1, [r1, #0x18]
	add r1, sl
	adds r1, #0x34
	str r6, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	add r0, sl
	adds r0, #0x36
	ldr r2, [sp, #0x370]
	lsrs r1, r2, #0x10
	str r4, [sp]
	str r6, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	mov r0, sb
	bl GetAge__C6Animal
	adds r4, r0, #0
	ldr r0, [r7, #0xc]
	ldrb r1, [r0, #0x11]
	add r0, sp, #0x1b0
	strb r1, [r0]
	ldr r3, [sp, #0x35c]
	mov r8, r3
	cmp r4, #0x1d
	bhi .L0806C080
	adds r5, r4, #0
	movs r3, #0
	b .L0806C094
.L0806C080:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x1e
	bl __udivsi3
	adds r3, r0, #0
.L0806C094:
	mov r4, r8
	ldrb r0, [r4]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1b
	adds r2, r5, #0
	subs r2, #0x1e
	subs r2, r1, r2
	cmp r2, #0x1d
	bhi .L0806C0AA
	adds r3, #1
	b .L0806C0AC
.L0806C0AA:
	subs r2, #0x1e
.L0806C0AC:
	lsls r1, r0, #0x1e
	lsrs r1, r1, #0x1e
	movs r5, #3
	ands r1, r5
	movs r4, #4
	rsbs r4, r4, #0
	adds r0, r4, #0
	add r6, sp, #0x258
	ldrb r6, [r6]
	ands r0, r6
	orrs r0, r1
	subs r1, r1, r3
	ands r1, r5
	ands r0, r4
	orrs r0, r1
	add r1, sp, #0x258
	strb r0, [r1]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	ands r0, r5
	mov r3, r8
	ldrb r1, [r3]
	ands r4, r1
	orrs r4, r0
	movs r0, #0x1f
	ands r2, r0
	lsls r1, r2, #2
	subs r5, #0x80
	adds r0, r5, #0
	ands r4, r0
	orrs r4, r1
	strb r4, [r3]
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r6, [sp, #0x28c]
	lsls r5, r6, #6
	adds r0, r0, r5
	adds r0, #0x22
	lsls r2, r4, #0x1e
	lsrs r2, r2, #0x1e
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	ldr r2, [sp, #0x214]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r3, #0
	str r3, [sp]
	movs r6, #0x20
	str r6, [sp, #4]
	movs r2, #6
	movs r3, #2
	bl func_0804E9F4
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1b
	adds r4, #1
	ldr r0, [r7, #0x1c]
	ldr r1, [r0, #0x18]
	adds r1, r1, r5
	adds r1, #0x34
	str r6, [sp]
	adds r0, r4, #0
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r5
	adds r0, #0x36
	ldr r2, [sp, #0x374]
	lsrs r1, r2, #0x10
	movs r3, #0
	str r3, [sp]
	str r6, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r4, [sp, #0x298]
	str r4, [sp, #0x234]
.L0806C152:
	ldr r5, [sp, #0x254]
	adds r5, #1
	str r5, [sp, #0x254]
	adds r1, r5, #0
	ldr r6, [sp, #0x250]
	cmp r1, r6
	bhs .L0806C162
	b .L0806BD90
.L0806C162:
	ldr r0, [r7, #0x1c]
	ldr r1, [sp, #0x228]
	adds r1, #6
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r0, [r7, #0x1c]
	ldrh r1, [r7, #0x20]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	bl func_08075C88
	movs r1, #0xe8
	ldr r0, [sp, #0x2d4]
	strh r1, [r0]
	movs r0, #8
	ldr r2, [sp, #0x2d8]
	strh r0, [r2]
	ldr r3, [sp, #0x2fc]
	strh r1, [r3]
	movs r0, #0x90
	ldr r4, [sp, #0x300]
	strh r0, [r4]
	ldr r5, [sp, #0x31c]
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r6, [sp, #0x320]
	ldr r0, [r6]
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, [sp, #0x2c4]
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x8c]
	ldr r1, .L0806C204 @ =0x000040B8
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x8c]
	movs r3, #0
	cmp r0, #0
	beq .L0806C1CE
	ldr r6, [sp, #0x2c8]
	ldrh r3, [r6, #4]
.L0806C1CE:
	str r4, [sp, #0x380]
	lsls r2, r2, #5
	ldr r0, .L0806C208 @ =0x05000200
	adds r2, r2, r0
	add r0, sp, #0x60
	adds r1, r5, #0
	bl func_08008F0C
	ldr r1, [sp, #0x2bc]
	mov sl, r1
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L0806C20C
	cmp r1, #0
	beq .L0806C1FA
	adds r0, r1, #0
	ldr r1, [sp, #0x2bc]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806C1FA:
	ldr r5, [sp, #0x380]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0806C2E4
	.align 2, 0
.L0806C204: .4byte 0x000040B8
.L0806C208: .4byte 0x05000200
.L0806C20C:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x1b8
	str r0, [r1]
	ldr r6, [sp, #0x380]
	ldr r0, [r6]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x1b4
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x1b4
	cmp r4, r0
	bhs .L0806C22E
	adds r1, r2, #0
.L0806C22E:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806C24C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806C250
	mov r0, sb
	bl func_080D3BC0
	b .L0806C250
.L0806C24C:
	movs r0, #0
	mov sb, r0
.L0806C250:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r3, [sp, #0x380]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0806C276
.L0806C25E:
	cmp r3, #0
	beq .L0806C26E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806C26E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806C25E
.L0806C276:
	adds r5, r3, #0
	add r0, sp, #0x1b8
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806C294
	cmp r5, #0
	beq .L0806C290
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806C290:
	adds r5, #0x10
	b .L0806C2BC
.L0806C294:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806C2BA
.L0806C29C:
	cmp r2, #0
	beq .L0806C2AC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806C2AC:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L0806C29C
.L0806C2BA:
	adds r5, r2, #0
.L0806C2BC:
	ldr r6, [sp, #0x380]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806C2CE
.L0806C2C8:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806C2C8
.L0806C2CE:
	cmp r0, #0
	beq .L0806C2D6
	bl free
.L0806C2D6:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r1, [sp, #0x384]
	ldr r2, [sp, #0x380]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0806C2E4:
	ldr r3, [sp, #0x2e0]
	ldr r1, [r3]
	ldr r3, [r1]
	ldr r4, [sp, #0x2e0]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r5, [sp, #0x2e4]
	ldr r0, [r5]
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, [sp, #0x2d0]
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r6, [sp, #0x2e8]
	ldr r5, [r6]
	ldr r1, .L0806C35C @ =0x000040C8
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [r6]
	movs r3, #0
	cmp r0, #0
	beq .L0806C322
	ldrh r3, [r6, #4]
.L0806C322:
	str r4, [sp, #0x380]
	lsls r2, r2, #5
	ldr r4, .L0806C360 @ =0x05000200
	adds r2, r2, r4
	add r0, sp, #0x60
	adds r1, r5, #0
	bl func_08008F0C
	ldr r5, [sp, #0x2bc]
	mov sb, r5
	ldr r6, [sp, #0x380]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806C364
	cmp r1, #0
	beq .L0806C350
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806C350:
	ldr r5, [sp, #0x380]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0806C43C
	.align 2, 0
.L0806C35C: .4byte 0x000040C8
.L0806C360: .4byte 0x05000200
.L0806C364:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0x1c0
	str r0, [r1]
	ldr r6, [sp, #0x380]
	ldr r0, [r6]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x1bc
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x1bc
	cmp r4, r0
	bhs .L0806C386
	adds r1, r2, #0
.L0806C386:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806C3A4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L0806C3A8
	mov r0, sl
	bl func_080D3BC0
	b .L0806C3A8
.L0806C3A4:
	movs r0, #0
	mov sl, r0
.L0806C3A8:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r3, [sp, #0x380]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0806C3CE
.L0806C3B6:
	cmp r3, #0
	beq .L0806C3C6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806C3C6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0806C3B6
.L0806C3CE:
	adds r5, r3, #0
	add r0, sp, #0x1c0
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806C3EC
	cmp r5, #0
	beq .L0806C3E8
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806C3E8:
	adds r5, #0x10
	b .L0806C414
.L0806C3EC:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806C412
.L0806C3F4:
	cmp r2, #0
	beq .L0806C404
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806C404:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L0806C3F4
.L0806C412:
	adds r5, r2, #0
.L0806C414:
	ldr r6, [sp, #0x380]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806C426
.L0806C420:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806C420
.L0806C426:
	cmp r0, #0
	beq .L0806C42E
	bl free
.L0806C42E:
	ldr r0, [sp, #0x384]
	add r0, sl
	ldr r1, [sp, #0x384]
	ldr r2, [sp, #0x380]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0806C43C:
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0x10
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
	ldr r0, .L0806C514 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0x60]
	ldr r1, .L0806C518 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x60]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r3, #0
	str r3, [sp, #0x25c]

	non_word_aligned_thumb_func_start sub_0806C492
sub_0806C492: @ 0x0806C492
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
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
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r2, r7, r1
	ldr r3, .L0806C51C @ =0x00004170
	adds r1, r7, r3
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r2, #0
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	mov r8, r0
	ldr r0, [sp, #0x60]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r3, r0, #0x1f
	ldr r4, [sp, #0x25c]
	cmp r4, #0
	beq .L0806C520
	cmp r3, #0
	bne .L0806C520
	ldr r1, [r7, #8]
	ldr r0, [r7, #0x18]
	str r0, [r1, #0xc]
	ldr r1, [r7, #8]
	str r3, [r7, #8]
	str r1, [sp, #0x64]
	add r2, sp, #0x1c4
	adds r0, r2, #0
	ldr r5, [sp, #0x2c0]
	str r5, [r0]
	str r1, [r2, #4]
	str r3, [r5]
	ldr r6, [sp, #0x20c]
	str r1, [r6]
	b .L0806C562
	.align 2, 0
.L0806C514: .4byte vtable_unk_080E5B80
.L0806C518: .4byte 0x00000889
.L0806C51C: .4byte 0x00004170
.L0806C520:
	ldr r1, .L0806C538 @ =0x00004068
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #1
	beq .L0806C58E
	cmp r0, #1
	blo .L0806C53C
	cmp r0, #2
	beq .L0806C592
	movs r6, #0x78
	b .L0806C594
	.align 2, 0
.L0806C538: .4byte 0x00004068
.L0806C53C:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r7, #0x18]
	ldr r0, [r7, #8]
	str r1, [r0, #0xc]
	ldr r1, [r7, #8]
	movs r3, #0
	str r3, [r7, #8]
	str r1, [sp, #0x64]
	add r2, sp, #0x1cc
	adds r0, r2, #0
	ldr r4, [sp, #0x2c0]
	str r4, [r0]
	str r1, [r2, #4]
	str r3, [r4]
	ldr r5, [sp, #0x20c]
	str r1, [r5]
.L0806C562:
	ldr r1, [sp, #0x64]
	cmp r1, #0
	beq .L0806C574
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L0806C574:
	ldr r1, [sp, #0x60]
	cmp r1, #0
	bne .L0806C57E
	bl sub_0806D8B2
.L0806C57E:
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	bl sub_0806D8B2
.L0806C58E:
	movs r6, #0x18
	b .L0806C594
.L0806C592:
	movs r6, #0x48
.L0806C594:
	ldr r1, .L0806C5AC @ =0x00004174
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #9
	bls .L0806C5A2
	bl .L0806CDEA
.L0806C5A2:
	lsls r0, r0, #2
	ldr r1, .L0806C5B0 @ =.L0806C5B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0806C5AC: .4byte 0x00004174
.L0806C5B0: .4byte .L0806C5B4
.L0806C5B4: @ jump table
	.4byte .L0806C5DC @ case 0
	.4byte .L0806C8B0 @ case 1
	.4byte .L0806CA7C @ case 2
	.4byte .L0806CAA4 @ case 3
	.4byte .L0806CB98 @ case 4
	.4byte .L0806CC44 @ case 5
	.4byte .L0806CD38 @ case 6
	.4byte .L0806CD58 @ case 7
	.4byte .L0806CDA4 @ case 8
	.4byte .L0806CDEA @ case 9
.L0806C5DC:
	movs r2, #0x98
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r5, [r4]
	cmp r5, #0
	beq .L0806C628
	cmp r5, #0
	ble .L0806C602
	ldrh r0, [r7, #0x20]
	adds r0, #4
	movs r1, #0
	strh r0, [r7, #0x20]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	cmp r0, #0xc
	bne .L0806C61A
	str r1, [r4]
	b .L0806C61A
.L0806C602:
	ldrh r0, [r7, #0x20]
	subs r0, #4
	movs r2, #0
	strh r0, [r7, #0x20]
	ldr r1, [r4]
	subs r1, #1
	str r1, [r4]
	movs r0, #0xc
	rsbs r0, r0, #0
	cmp r1, r0
	bne .L0806C61A
	str r2, [r4]
.L0806C61A:
	ldr r0, [r7, #0x1c]
	movs r3, #0x20
	ldrsh r1, [r7, r3]
	bl func_08075C88
	bl .L0806CDEA
.L0806C628:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L0806C68C
	adds r1, r7, #0
	adds r1, #0xf8
	ldr r0, [r1]
	cmp r0, #0x18
	ble .L0806C664
	cmp r0, #0x48
	beq .L0806C64E
	cmp r0, #0x48
	ble .L0806C656
	cmp r0, #0x78
	beq .L0806C652
	b .L0806C656
.L0806C64E:
	movs r0, #0x18
	b .L0806C654
.L0806C652:
	movs r0, #0x48
.L0806C654:
	str r0, [r1]
.L0806C656:
	ldr r4, .L0806C660 @ =0x000040AC
	adds r0, r7, r4
	ldr r1, [r0]
	subs r1, #1
	b .L0806C6CC
	.align 2, 0
.L0806C660: .4byte 0x000040AC
.L0806C664:
	ldrh r1, [r7, #0x20]
	movs r6, #0x20
	ldrsh r0, [r7, r6]
	cmp r0, #0
	bgt .L0806C672
	strh r5, [r7, #0x20]
	b .L0806C714
.L0806C672:
	subs r0, r1, #4
	strh r0, [r7, #0x20]
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
	ldr r0, .L0806C688 @ =0x000040AC
	adds r1, r7, r0
	ldr r0, [r1]
	subs r0, #1
	b .L0806C708
	.align 2, 0
.L0806C688: .4byte 0x000040AC
.L0806C68C:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L0806C728
	ldr r0, [r7, #0x1c]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r1, r7, #0
	adds r1, #0xf8
	ldr r0, [r1]
	cmp r0, r6
	bge .L0806C6E4
	cmp r0, #0x48
	beq .L0806C6C0
	cmp r0, #0x48
	bgt .L0806C6C4
	cmp r0, #0x18
	bne .L0806C6C4
	movs r0, #0x48
	b .L0806C6C2
.L0806C6C0:
	movs r0, #0x78
.L0806C6C2:
	str r0, [r1]
.L0806C6C4:
	ldr r4, .L0806C6DC @ =0x000040AC
	adds r0, r7, r4
	ldr r1, [r0]
	adds r1, #1
.L0806C6CC:
	str r1, [r0]
	ldr r5, .L0806C6E0 @ =0x00004170
	adds r0, r7, r5
	movs r1, #0xcb
	bl func_08008B6C
	b .L0806C714
	.align 2, 0
.L0806C6DC: .4byte 0x000040AC
.L0806C6E0: .4byte 0x00004170
.L0806C6E4:
	ldrh r2, [r7, #0x20]
	movs r6, #0x20
	ldrsh r1, [r7, r6]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt .L0806C6F6
	strh r3, [r7, #0x20]
	b .L0806C714
.L0806C6F6:
	adds r0, r2, #4
	strh r0, [r7, #0x20]
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	ldr r0, .L0806C720 @ =0x000040AC
	adds r1, r7, r0
	ldr r0, [r1]
	adds r0, #1
.L0806C708:
	str r0, [r1]
	ldr r1, .L0806C724 @ =0x00004170
	adds r0, r7, r1
	movs r1, #0xcb
	bl func_08008B6C
.L0806C714:
	ldr r0, [r7, #0x1c]
	movs r2, #0x20
	ldrsh r1, [r7, r2]
	bl func_08075C88
	b .L0806CDEA
	.align 2, 0
.L0806C720: .4byte 0x000040AC
.L0806C724: .4byte 0x00004170
.L0806C728:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L0806C738
	b .L0806C888
.L0806C738:
	ldr r0, [r7, #0x10]
	cmp r0, #1
	beq .L0806C7A0
	cmp r0, #1
	bgt .L0806C748
	cmp r0, #0
	beq .L0806C74E
	b .L0806C870
.L0806C748:
	cmp r0, #2
	beq .L0806C800
	b .L0806C870
.L0806C74E:
	ldr r0, [r7, #0xc]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	ldr r4, .L0806C780 @ =0x000040AC
	adds r1, r7, r4
	ldr r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r5, .L0806C784 @ =0x0000406C
	adds r1, r1, r5
	ldr r1, [r1]
	bl GetChicken__4CoopUi
	adds r4, r0, #0
	cmp r4, #0
	bne .L0806C772
	b .L0806C870
.L0806C772:
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	bne .L0806C788
	movs r1, #2
	b .L0806C798
	.align 2, 0
.L0806C780: .4byte 0x000040AC
.L0806C784: .4byte 0x0000406C
.L0806C788:
	adds r0, r4, #0
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	movs r1, #1
	cmp r0, #0
	beq .L0806C798
	movs r1, #3
.L0806C798:
	movs r6, #0x9c
	lsls r6, r6, #1
	adds r0, r7, r6
	b .L0806C86E
.L0806C7A0:
	ldr r0, [r7, #0xc]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r2, .L0806C7D0 @ =0x000040AC
	adds r1, r7, r2
	ldr r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r3, .L0806C7D4 @ =0x0000406C
	adds r1, r1, r3
	ldr r1, [r1]
	bl GetCow__4BarnUi
	adds r4, r0, #0
	cmp r4, #0
	beq .L0806C870
	bl GetGrowthStage__C3Cow
	cmp r0, #1
	bhi .L0806C7D8
	movs r1, #2
	b .L0806C7F8
	.align 2, 0
.L0806C7D0: .4byte 0x000040AC
.L0806C7D4: .4byte 0x0000406C
.L0806C7D8:
	adds r0, r4, #0
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806C7E8
	movs r1, #3
	b .L0806C7F8
.L0806C7E8:
	adds r0, r4, #0
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	movs r1, #1
	cmp r0, #0
	beq .L0806C7F8
	movs r1, #4
.L0806C7F8:
	movs r4, #0x9c
	lsls r4, r4, #1
	adds r0, r7, r4
	b .L0806C86E
.L0806C800:
	ldr r0, [r7, #0xc]
	movs r5, #0xbe
	lsls r5, r5, #3
	adds r0, r0, r5
	ldr r6, .L0806C830 @ =0x000040AC
	adds r1, r7, r6
	ldr r1, [r1]
	lsls r1, r1, #2
	adds r1, r1, r7
	ldr r2, .L0806C834 @ =0x0000406C
	adds r1, r1, r2
	ldr r1, [r1]
	bl GetSheep__4BarnUi
	adds r4, r0, #0
	cmp r4, #0
	beq .L0806C870
	bl GetGrowthStage__C5Sheep
	cmp r0, #0
	bne .L0806C838
	movs r1, #2
	b .L0806C868
	.align 2, 0
.L0806C830: .4byte 0x000040AC
.L0806C834: .4byte 0x0000406C
.L0806C838:
	adds r0, r4, #0
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806C848
	movs r1, #3
	b .L0806C868
.L0806C848:
	adds r0, r4, #0
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806C858
	movs r1, #4
	b .L0806C868
.L0806C858:
	adds r0, r4, #0
	bl IsSheared__C5Sheep
	lsls r0, r0, #0x18
	movs r1, #1
	cmp r0, #0
	beq .L0806C868
	movs r1, #5
.L0806C868:
	movs r3, #0x9c
	lsls r3, r3, #1
	adds r0, r7, r3
.L0806C86E:
	str r1, [r0]
.L0806C870:
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r0, r7, r4
	bl func_08050D5C
	ldr r5, .L0806C884 @ =0x00004174
	adds r1, r7, r5
	movs r0, #1
	b .L0806CDE8
	.align 2, 0
.L0806C884: .4byte 0x00004174
.L0806C888:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L0806C898
	b .L0806CDEA
.L0806C898:
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r0, r7, r6
	bl func_08050D5C
	ldr r0, .L0806C8AC @ =0x00004174
	adds r1, r7, r0
	movs r0, #4
	b .L0806CDE8
	.align 2, 0
.L0806C8AC: .4byte 0x00004174
.L0806C8B0:
	mov r1, r8
	cmp r1, #3
	beq .L0806C8B8
	b .L0806CDEA
.L0806C8B8:
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #5
	bls .L0806C8C6
	b .L0806CDEA
.L0806C8C6:
	lsls r0, r0, #2
	ldr r1, .L0806C8D0 @ =.L0806C8D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0806C8D0: .4byte .L0806C8D4
.L0806C8D4: @ jump table
	.4byte .L0806CDEA @ case 0
	.4byte .L0806C8EC @ case 1
	.4byte .L0806C974 @ case 2
	.4byte .L0806C9CC @ case 3
	.4byte .L0806CA24 @ case 4
	.4byte .L0806CA60 @ case 5
.L0806C8EC:
	ldr r4, [r7, #0x10]
	cmp r4, #1
	beq .L0806C91C
	cmp r4, #1
	bgt .L0806C8FC
	cmp r4, #0
	beq .L0806C902
	b .L0806C95C
.L0806C8FC:
	cmp r4, #2
	beq .L0806C944
	b .L0806C95C
.L0806C902:
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, .L0806C910 @ =gUnk_080FB9C8
	ldr r2, .L0806C914 @ =gUnk_080FB9DC
	ldr r3, .L0806C918 @ =gUnk_080FB9E0
	b .L0806C92A
	.align 2, 0
.L0806C910: .4byte gUnk_080FB9C8
.L0806C914: .4byte gUnk_080FB9DC
.L0806C918: .4byte gUnk_080FB9E0
.L0806C91C:
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, .L0806C938 @ =gUnk_080FB9E4
	ldr r2, .L0806C93C @ =gUnk_080FB9DC
	ldr r3, .L0806C940 @ =gUnk_080FB9E0
	movs r4, #0
.L0806C92A:
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	b .L0806C95C
	.align 2, 0
.L0806C938: .4byte gUnk_080FB9E4
.L0806C93C: .4byte gUnk_080FB9DC
.L0806C940: .4byte gUnk_080FB9E0
.L0806C944:
	movs r5, #0x9a
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r1, .L0806C964 @ =gUnk_080FB9F4
	ldr r2, .L0806C968 @ =gUnk_080FB9DC
	ldr r3, .L0806C96C @ =gUnk_080FB9E0
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
.L0806C95C:
	ldr r6, .L0806C970 @ =0x00004174
	adds r1, r7, r6
	movs r0, #3
	b .L0806CDE8
	.align 2, 0
.L0806C964: .4byte gUnk_080FB9F4
.L0806C968: .4byte gUnk_080FB9DC
.L0806C96C: .4byte gUnk_080FB9E0
.L0806C970: .4byte 0x00004174
.L0806C974:
	ldr r0, [r7, #0x10]
	cmp r0, #1
	beq .L0806C99C
	cmp r0, #1
	bgt .L0806C984
	cmp r0, #0
	beq .L0806C98A
	b .L0806C9BC
.L0806C984:
	cmp r0, #2
	beq .L0806C9B0
	b .L0806C9BC
.L0806C98A:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, .L0806C998 @ =gUnk_080FBA08
	bl func_08050D8C
	b .L0806C9BC
	.align 2, 0
.L0806C998: .4byte gUnk_080FBA08
.L0806C99C:
	movs r2, #0x9a
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r1, .L0806C9AC @ =gUnk_080FBA3C
	bl func_08050D8C
	b .L0806C9BC
	.align 2, 0
.L0806C9AC: .4byte gUnk_080FBA3C
.L0806C9B0:
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, .L0806C9C4 @ =gUnk_080FBA70
	bl func_08050D8C
.L0806C9BC:
	ldr r4, .L0806C9C8 @ =0x00004174
	adds r1, r7, r4
	movs r0, #2
	b .L0806CDE8
	.align 2, 0
.L0806C9C4: .4byte gUnk_080FBA70
.L0806C9C8: .4byte 0x00004174
.L0806C9CC:
	ldr r0, [r7, #0x10]
	cmp r0, #1
	beq .L0806C9F4
	cmp r0, #1
	bgt .L0806C9DC
	cmp r0, #0
	beq .L0806C9E2
	b .L0806CA14
.L0806C9DC:
	cmp r0, #2
	beq .L0806CA08
	b .L0806CA14
.L0806C9E2:
	movs r5, #0x9a
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r1, .L0806C9F0 @ =gUnk_080FBAA8
	bl func_08050D8C
	b .L0806CA14
	.align 2, 0
.L0806C9F0: .4byte gUnk_080FBAA8
.L0806C9F4:
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r0, r7, r6
	ldr r1, .L0806CA04 @ =gUnk_080FBAE0
	bl func_08050D8C
	b .L0806CA14
	.align 2, 0
.L0806CA04: .4byte gUnk_080FBAE0
.L0806CA08:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, .L0806CA1C @ =gUnk_080FBB14
	bl func_08050D8C
.L0806CA14:
	ldr r2, .L0806CA20 @ =0x00004174
	adds r1, r7, r2
	movs r0, #2
	b .L0806CDE8
	.align 2, 0
.L0806CA1C: .4byte gUnk_080FBB14
.L0806CA20: .4byte 0x00004174
.L0806CA24:
	ldr r0, [r7, #0x10]
	cmp r0, #1
	beq .L0806CA30
	cmp r0, #2
	beq .L0806CA44
	b .L0806CA50
.L0806CA30:
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, .L0806CA40 @ =gUnk_080FBB4C
	bl func_08050D8C
	b .L0806CA50
	.align 2, 0
.L0806CA40: .4byte gUnk_080FBB4C
.L0806CA44:
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r1, .L0806CA58 @ =gUnk_080FBB80
	bl func_08050D8C
.L0806CA50:
	ldr r5, .L0806CA5C @ =0x00004174
	adds r1, r7, r5
	movs r0, #2
	b .L0806CDE8
	.align 2, 0
.L0806CA58: .4byte gUnk_080FBB80
.L0806CA5C: .4byte 0x00004174
.L0806CA60:
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r0, r7, r6
	ldr r1, .L0806CA74 @ =gUnk_080FBBB8
	bl func_08050D8C
	ldr r0, .L0806CA78 @ =0x00004174
	adds r1, r7, r0
	movs r0, #2
	b .L0806CDE8
	.align 2, 0
.L0806CA74: .4byte gUnk_080FBBB8
.L0806CA78: .4byte 0x00004174
.L0806CA7C:
	mov r1, r8
	cmp r1, #3
	beq .L0806CA84
	b .L0806CDEA
.L0806CA84:
	movs r2, #0x9c
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #0
	str r1, [r0]
	ldr r3, .L0806CAA0 @ =0x00004174
	adds r0, r7, r3
	str r1, [r0]
	movs r4, #0x9a
	lsls r4, r4, #1
	adds r0, r7, r4
	bl func_08050D74
	b .L0806CDEA
	.align 2, 0
.L0806CAA0: .4byte 0x00004174
.L0806CAA4:
	mov r5, r8
	cmp r5, #3
	beq .L0806CAAC
	b .L0806CDEA
.L0806CAAC:
	ldr r0, [r7, #0x10]
	cmp r0, #1
	beq .L0806CB08
	cmp r0, #1
	bgt .L0806CABC
	cmp r0, #0
	beq .L0806CAC2
	b .L0806CDEA
.L0806CABC:
	cmp r0, #2
	beq .L0806CB50
	b .L0806CDEA
.L0806CAC2:
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r4, r7, r6
	adds r0, r4, #0
	bl func_08050DF0
	cmp r0, #1
	beq .L0806CAD8
	cmp r0, #2
	beq .L0806CAF0
	b .L0806CDEA
.L0806CAD8:
	ldr r1, .L0806CAE8 @ =gUnk_080FBBEC
	adds r0, r4, #0
	bl func_08050D8C
	ldr r0, .L0806CAEC @ =0x00004174
	adds r1, r7, r0
	movs r0, #8
	b .L0806CDE8
	.align 2, 0
.L0806CAE8: .4byte gUnk_080FBBEC
.L0806CAEC: .4byte 0x00004174
.L0806CAF0:
	ldr r1, .L0806CB00 @ =gUnk_080FBC18
	adds r0, r4, #0
	bl func_08050D8C
	ldr r2, .L0806CB04 @ =0x00004174
	adds r1, r7, r2
	movs r0, #6
	b .L0806CDE8
	.align 2, 0
.L0806CB00: .4byte gUnk_080FBC18
.L0806CB04: .4byte 0x00004174
.L0806CB08:
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r4, r7, r3
	adds r0, r4, #0
	bl func_08050DF0
	cmp r0, #1
	beq .L0806CB1E
	cmp r0, #2
	beq .L0806CB38
	b .L0806CDEA
.L0806CB1E:
	ldr r1, .L0806CB30 @ =gUnk_080FBBEC
	adds r0, r4, #0
	bl func_08050D8C
	ldr r4, .L0806CB34 @ =0x00004174
	adds r1, r7, r4
	movs r0, #8
	b .L0806CDE8
	.align 2, 0
.L0806CB30: .4byte gUnk_080FBBEC
.L0806CB34: .4byte 0x00004174
.L0806CB38:
	ldr r1, .L0806CB48 @ =gUnk_080FBC48
	adds r0, r4, #0
	bl func_08050D8C
	ldr r5, .L0806CB4C @ =0x00004174
	adds r1, r7, r5
	movs r0, #6
	b .L0806CDE8
	.align 2, 0
.L0806CB48: .4byte gUnk_080FBC48
.L0806CB4C: .4byte 0x00004174
.L0806CB50:
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r4, r7, r6
	adds r0, r4, #0
	bl func_08050DF0
	cmp r0, #1
	beq .L0806CB66
	cmp r0, #2
	beq .L0806CB80
	b .L0806CDEA
.L0806CB66:
	ldr r1, .L0806CB78 @ =gUnk_080FBBEC
	adds r0, r4, #0
	bl func_08050D8C
	ldr r0, .L0806CB7C @ =0x00004174
	adds r1, r7, r0
	movs r0, #8
	b .L0806CDE8
	.align 2, 0
.L0806CB78: .4byte gUnk_080FBBEC
.L0806CB7C: .4byte 0x00004174
.L0806CB80:
	ldr r1, .L0806CB90 @ =gUnk_080FBC70
	adds r0, r4, #0
	bl func_08050D8C
	ldr r2, .L0806CB94 @ =0x00004174
	adds r1, r7, r2
	movs r0, #6
	b .L0806CDE8
	.align 2, 0
.L0806CB90: .4byte gUnk_080FBC70
.L0806CB94: .4byte 0x00004174
.L0806CB98:
	mov r3, r8
	cmp r3, #3
	beq .L0806CBA0
	b .L0806CDEA
.L0806CBA0:
	ldr r4, [r7, #0x10]
	cmp r4, #1
	beq .L0806CBE4
	cmp r4, #1
	bgt .L0806CBB0
	cmp r4, #0
	beq .L0806CBB6
	b .L0806CDEA
.L0806CBB0:
	cmp r4, #2
	beq .L0806CC14
	b .L0806CDEA
.L0806CBB6:
	movs r5, #0x9a
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r1, .L0806CBD4 @ =gUnk_080FBC9C
	ldr r2, .L0806CBD8 @ =gUnk_080FB9DC
	ldr r3, .L0806CBDC @ =gUnk_080FB9E0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	ldr r6, .L0806CBE0 @ =0x00004174
	adds r1, r7, r6
	movs r0, #5
	b .L0806CDE8
	.align 2, 0
.L0806CBD4: .4byte gUnk_080FBC9C
.L0806CBD8: .4byte gUnk_080FB9DC
.L0806CBDC: .4byte gUnk_080FB9E0
.L0806CBE0: .4byte 0x00004174
.L0806CBE4:
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, .L0806CC04 @ =gUnk_080FBC9C
	ldr r2, .L0806CC08 @ =gUnk_080FB9DC
	ldr r3, .L0806CC0C @ =gUnk_080FB9E0
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	ldr r2, .L0806CC10 @ =0x00004174
	adds r1, r7, r2
	movs r0, #5
	b .L0806CDE8
	.align 2, 0
.L0806CC04: .4byte gUnk_080FBC9C
.L0806CC08: .4byte gUnk_080FB9DC
.L0806CC0C: .4byte gUnk_080FB9E0
.L0806CC10: .4byte 0x00004174
.L0806CC14:
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, .L0806CC34 @ =gUnk_080FBC9C
	ldr r2, .L0806CC38 @ =gUnk_080FB9DC
	ldr r3, .L0806CC3C @ =gUnk_080FB9E0
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	ldr r4, .L0806CC40 @ =0x00004174
	adds r1, r7, r4
	movs r0, #5
	b .L0806CDE8
	.align 2, 0
.L0806CC34: .4byte gUnk_080FBC9C
.L0806CC38: .4byte gUnk_080FB9DC
.L0806CC3C: .4byte gUnk_080FB9E0
.L0806CC40: .4byte 0x00004174
.L0806CC44:
	mov r5, r8
	cmp r5, #3
	beq .L0806CC4C
	b .L0806CDEA
.L0806CC4C:
	ldr r0, [r7, #0x10]
	cmp r0, #1
	beq .L0806CCA8
	cmp r0, #1
	bgt .L0806CC5C
	cmp r0, #0
	beq .L0806CC62
	b .L0806CDEA
.L0806CC5C:
	cmp r0, #2
	beq .L0806CCF0
	b .L0806CDEA
.L0806CC62:
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r4, r7, r6
	adds r0, r4, #0
	bl func_08050DF0
	cmp r0, #1
	beq .L0806CC78
	cmp r0, #2
	beq .L0806CC90
	b .L0806CDEA
.L0806CC78:
	ldr r1, .L0806CC88 @ =gUnk_080FBCB8
	adds r0, r4, #0
	bl func_08050D8C
	ldr r0, .L0806CC8C @ =0x00004174
	adds r1, r7, r0
	movs r0, #7
	b .L0806CDE8
	.align 2, 0
.L0806CC88: .4byte gUnk_080FBCB8
.L0806CC8C: .4byte 0x00004174
.L0806CC90:
	ldr r1, .L0806CCA0 @ =gUnk_080FBC18
	adds r0, r4, #0
	bl func_08050D8C
	ldr r2, .L0806CCA4 @ =0x00004174
	adds r1, r7, r2
	movs r0, #6
	b .L0806CDE8
	.align 2, 0
.L0806CCA0: .4byte gUnk_080FBC18
.L0806CCA4: .4byte 0x00004174
.L0806CCA8:
	movs r3, #0x9a
	lsls r3, r3, #1
	adds r4, r7, r3
	adds r0, r4, #0
	bl func_08050DF0
	cmp r0, #1
	beq .L0806CCBE
	cmp r0, #2
	beq .L0806CCD8
	b .L0806CDEA
.L0806CCBE:
	ldr r1, .L0806CCD0 @ =gUnk_080FBCE0
	adds r0, r4, #0
	bl func_08050D8C
	ldr r4, .L0806CCD4 @ =0x00004174
	adds r1, r7, r4
	movs r0, #7
	b .L0806CDE8
	.align 2, 0
.L0806CCD0: .4byte gUnk_080FBCE0
.L0806CCD4: .4byte 0x00004174
.L0806CCD8:
	ldr r1, .L0806CCE8 @ =gUnk_080FBC48
	adds r0, r4, #0
	bl func_08050D8C
	ldr r5, .L0806CCEC @ =0x00004174
	adds r1, r7, r5
	movs r0, #6
	b .L0806CDE8
	.align 2, 0
.L0806CCE8: .4byte gUnk_080FBC48
.L0806CCEC: .4byte 0x00004174
.L0806CCF0:
	movs r6, #0x9a
	lsls r6, r6, #1
	adds r4, r7, r6
	adds r0, r4, #0
	bl func_08050DF0
	cmp r0, #1
	beq .L0806CD06
	cmp r0, #2
	beq .L0806CD20
	b .L0806CDEA
.L0806CD06:
	ldr r1, .L0806CD18 @ =gUnk_080FBCE0
	adds r0, r4, #0
	bl func_08050D8C
	ldr r0, .L0806CD1C @ =0x00004174
	adds r1, r7, r0
	movs r0, #7
	b .L0806CDE8
	.align 2, 0
.L0806CD18: .4byte gUnk_080FBCE0
.L0806CD1C: .4byte 0x00004174
.L0806CD20:
	ldr r1, .L0806CD30 @ =gUnk_080FBC70
	adds r0, r4, #0
	bl func_08050D8C
	ldr r2, .L0806CD34 @ =0x00004174
	adds r1, r7, r2
	movs r0, #6
	b .L0806CDE8
	.align 2, 0
.L0806CD30: .4byte gUnk_080FBC70
.L0806CD34: .4byte 0x00004174
.L0806CD38:
	mov r3, r8
	cmp r3, #3
	bne .L0806CDEA
	ldr r4, .L0806CD54 @ =0x00004174
	adds r0, r7, r4
	movs r1, #0
	str r1, [r0]
	movs r5, #0x9a
	lsls r5, r5, #1
	adds r0, r7, r5
	bl func_08050D74
	b .L0806CDEA
	.align 2, 0
.L0806CD54: .4byte 0x00004174
.L0806CD58:
	mov r6, r8
	cmp r6, #3
	bne .L0806CDEA
	ldr r0, .L0806CD9C @ =0x00004174
	adds r1, r7, r0
	movs r0, #9
	str r0, [r1]
	movs r1, #0x9a
	lsls r1, r1, #1
	adds r0, r7, r1
	bl func_08050D74
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r7, #0x18]
	movs r2, #1
	str r2, [sp, #0x25c]
	ldr r0, [sp, #0x60]
	ldr r1, .L0806CDA0 @ =0x00000889
	adds r0, #0xc
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x60]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L0806CDEA
	.align 2, 0
.L0806CD9C: .4byte 0x00004174
.L0806CDA0: .4byte 0x00000889
.L0806CDA4:
	mov r3, r8
	cmp r3, #3
	bne .L0806CDEA
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	ldr r4, .L0806CE20 @ =0x000040AC
	adds r0, r7, r4
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r5, .L0806CE24 @ =0x0000406C
	adds r0, r0, r5
	ldr r0, [r0]
	str r0, [r7, #0x18]
	movs r6, #1
	str r6, [sp, #0x25c]
	ldr r0, [sp, #0x60]
	ldr r1, .L0806CE28 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x60]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r0, .L0806CE2C @ =0x00004174
	adds r1, r7, r0
	movs r0, #9
.L0806CDE8:
	str r0, [r1]
.L0806CDEA:
	add r1, sp, #0xbc
	movs r3, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [r1, #0xc]
	strb r3, [r1, #0x10]
	strb r3, [r1, #0x11]
	str r0, [r1, #0x14]
	strb r3, [r1, #0x18]
	movs r4, #0x20
	ldrsh r2, [r7, r4]
	ldr r0, [r7, #0x1c]
	movs r5, #0xe
	ldrsh r0, [r0, r5]
	subs r0, #0xa0
	mov sl, r1
	cmp r2, r0
	blt .L0806CE30
	adds r0, r7, #0
	adds r0, #0xf0
	strb r3, [r0]
	str r0, [sp, #0x310]
	b .L0806CE3A
	.align 2, 0
.L0806CE20: .4byte 0x000040AC
.L0806CE24: .4byte 0x0000406C
.L0806CE28: .4byte 0x00000889
.L0806CE2C: .4byte 0x00004174
.L0806CE30:
	adds r1, r7, #0
	adds r1, #0xf0
	movs r0, #1
	strb r0, [r1]
	str r1, [sp, #0x310]
.L0806CE3A:
	movs r6, #0x20
	ldrsh r1, [r7, r6]
	cmp r1, #0
	bne .L0806CE4C
	adds r0, r7, #0
	adds r0, #0xb8
	strb r1, [r0]
	str r0, [sp, #0x2f8]
	b .L0806CE56
.L0806CE4C:
	adds r1, r7, #0
	adds r1, #0xb8
	movs r0, #1
	strb r0, [r1]
	str r1, [sp, #0x2f8]
.L0806CE56:
	movs r0, #0
	str r0, [sp, #0x260]
	mov r1, r8
	cmp r1, #0
	bne .L0806CE64
	movs r2, #1
	str r2, [sp, #0x260]
.L0806CE64:
	movs r3, #0x96
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r0, [r0]
	ldr r4, .L0806CF64 @ =0x00003EA4
	adds r4, r7, r4
	str r4, [sp, #0x2f4]
	ldr r5, .L0806CF68 @ =0x00003FA8
	adds r5, r7, r5
	str r5, [sp, #0x360]
	cmp r0, #0
	bne .L0806CE7E
	b .L0806D060
.L0806CE7E:
	ldr r6, [sp, #0x260]
	cmp r6, #0
	beq .L0806CE8A
	ldr r0, [sp, #0x31c]
	bl func_0805E8F0
.L0806CE8A:
	add r6, sp, #0xd8
	ldr r0, [sp, #0x31c]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x320]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r1, sl
	movs r5, #0x88
	lsls r5, r5, #1
	adds r0, r7, r5
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xf4
	ldrh r0, [r0]
	mov r4, sl
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0xf8
	ldr r0, [r0]
	strh r0, [r4, #2]
	movs r4, #1
	movs r5, #1
	mov sb, r5
	mov r1, sb
	mov r0, sl
	strh r1, [r0, #8]
	ldr r2, .L0806CF6C @ =0x000040B8
	adds r0, r7, r2
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r3, sl
	strh r0, [r3, #4]
	ldr r0, .L0806CF70 @ =0x000040B0
	adds r5, r7, r0
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	mov r1, sl
	strh r0, [r1, #6]
	strb r4, [r1, #0x18]
	adds r0, r7, #0
	bl func_08008920
	ldr r1, [r6]
	movs r2, #0
	cmp r1, #0
	beq .L0806CF08
	ldrh r2, [r6, #4]
.L0806CF08:
	mov r3, sl
	bl func_0805E99C
	adds r0, r7, #0
	bl func_08008910
	adds r6, r0, #0
	add r4, sp, #0xe0
	ldr r2, [r4]
	mov r8, r2
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L0806CF30
	ldrh r3, [r4, #4]
.L0806CF30:
	lsls r2, r2, #5
	ldr r4, .L0806CF74 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x64
	mov r1, r8
	bl func_08008F0C
	ldr r5, [sp, #0x2c0]
	str r5, [sp, #0x264]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806CF78
	cmp r1, #0
	beq .L0806CF5A
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806CF5A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806D060
	.align 2, 0
.L0806CF64: .4byte 0x00003EA4
.L0806CF68: .4byte 0x00003FA8
.L0806CF6C: .4byte 0x000040B8
.L0806CF70: .4byte 0x000040B0
.L0806CF74: .4byte 0x06010000
.L0806CF78:
	mov r8, r1
	add r1, sp, #0x1d8
	mov r5, sb
	str r5, [r1]
	ldr r0, [r6]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x1d4
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x1d4
	cmp r4, r0
	bhs .L0806CF98
	adds r1, r2, #0
.L0806CF98:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806CFB6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806CFBA
	mov r0, sb
	bl func_080D3BC0
	b .L0806CFBA
.L0806CFB6:
	movs r0, #0
	mov sb, r0
.L0806CFBA:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r2, [r6]
	mov ip, r5
	ldr r3, .L0806D00C @ =0x00003EA4
	adds r3, r7, r3
	str r3, [sp, #0x2f4]
	ldr r4, .L0806D010 @ =0x00003FA8
	adds r4, r7, r4
	str r4, [sp, #0x360]
	cmp r2, r8
	beq .L0806CFEE
.L0806CFD2:
	mov r5, ip
	cmp r5, #0
	beq .L0806CFE4
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806CFE4:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L0806CFD2
.L0806CFEE:
	mov r5, ip
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806D014
	cmp r5, #0
	beq .L0806D008
	adds r0, r5, #0
	ldr r1, [sp, #0x264]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806D008:
	adds r5, #0x10
	b .L0806D03C
	.align 2, 0
.L0806D00C: .4byte 0x00003EA4
.L0806D010: .4byte 0x00003FA8
.L0806D014:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806D03A
.L0806D01C:
	cmp r2, #0
	beq .L0806D02C
	adds r0, r2, #0
	ldr r1, [sp, #0x264]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D02C:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L0806D01C
.L0806D03A:
	adds r5, r2, #0
.L0806D03C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806D04C
.L0806D046:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806D046
.L0806D04C:
	cmp r0, #0
	beq .L0806D054
	bl free
.L0806D054:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r1, [sp, #0x384]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806D060:
	ldr r2, [sp, #0x2f8]
	ldrb r0, [r2]
	cmp r0, #0
	bne .L0806D06A
	b .L0806D220
.L0806D06A:
	ldr r3, [sp, #0x260]
	cmp r3, #0
	beq .L0806D076
	ldr r0, [sp, #0x2e0]
	bl func_0805E8F0
.L0806D076:
	add r4, sp, #0xd8
	ldr r5, [sp, #0x2e0]
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r6, [sp, #0x2e4]
	ldr r0, [r6]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r1, sl
	adds r0, r7, #0
	adds r0, #0x9c
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0]
	str r0, [r1]
	ldr r5, [sp, #0x2d4]
	ldrh r0, [r5]
	mov r6, sl
	strh r0, [r6]
	ldr r1, [sp, #0x2d8]
	ldrh r0, [r1]
	strh r0, [r6, #2]
	movs r2, #1
	mov sb, r2
	mov r3, sb
	strh r3, [r6, #8]
	ldr r5, .L0806D140 @ =0x000040C8
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r6, #4]
	ldr r6, .L0806D144 @ =0x000040C0
	adds r5, r7, r6
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	mov r1, sl
	strh r0, [r1, #6]
	adds r0, r7, #0
	bl func_08008920
	ldr r1, [r4]
	movs r2, #0
	cmp r1, #0
	beq .L0806D0E6
	ldrh r2, [r4, #4]
.L0806D0E6:
	mov r3, sl
	bl func_0805E99C
	adds r0, r7, #0
	bl func_08008910
	adds r6, r0, #0
	add r4, sp, #0xe0
	ldr r2, [r4]
	mov r8, r2
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L0806D10E
	ldrh r3, [r4, #4]
.L0806D10E:
	lsls r2, r2, #5
	ldr r4, .L0806D148 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x64
	mov r1, r8
	bl func_08008F0C
	ldr r5, [sp, #0x2c0]
	str r5, [sp, #0x268]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806D14C
	cmp r1, #0
	beq .L0806D138
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806D138:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806D220
	.align 2, 0
.L0806D140: .4byte 0x000040C8
.L0806D144: .4byte 0x000040C0
.L0806D148: .4byte 0x06010000
.L0806D14C:
	mov r8, r1
	add r1, sp, #0x1e0
	mov r5, sb
	str r5, [r1]
	ldr r0, [r6]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x1dc
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x1dc
	cmp r4, r0
	bhs .L0806D16C
	adds r1, r2, #0
.L0806D16C:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806D18A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806D18E
	mov r0, sb
	bl func_080D3BC0
	b .L0806D18E
.L0806D18A:
	movs r0, #0
	mov sb, r0
.L0806D18E:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L0806D1B6
.L0806D19A:
	mov r3, ip
	cmp r3, #0
	beq .L0806D1AC
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D1AC:
	adds r2, #0x10
	movs r4, #0x10
	add ip, r4
	cmp r2, r8
	bne .L0806D19A
.L0806D1B6:
	mov r5, ip
	add r0, sp, #0x1e0
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806D1D4
	cmp r5, #0
	beq .L0806D1D0
	adds r0, r5, #0
	ldr r1, [sp, #0x268]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806D1D0:
	adds r5, #0x10
	b .L0806D1FC
.L0806D1D4:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806D1FA
.L0806D1DC:
	cmp r2, #0
	beq .L0806D1EC
	adds r0, r2, #0
	ldr r1, [sp, #0x268]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D1EC:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L0806D1DC
.L0806D1FA:
	adds r5, r2, #0
.L0806D1FC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806D20C
.L0806D206:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806D206
.L0806D20C:
	cmp r0, #0
	beq .L0806D214
	bl free
.L0806D214:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r1, [sp, #0x384]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806D220:
	ldr r2, [sp, #0x310]
	ldrb r0, [r2]
	cmp r0, #0
	bne .L0806D22A
	b .L0806D3E4
.L0806D22A:
	adds r4, r7, #0
	adds r4, #0xc0
	ldr r3, [sp, #0x260]
	cmp r3, #0
	beq .L0806D23A
	adds r0, r4, #0
	bl func_0805E8F0
.L0806D23A:
	add r6, sp, #0xd8
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r7, #0
	adds r0, #0xc4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r4, sl
	adds r1, r4, #0
	adds r0, r7, #0
	adds r0, #0xd4
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r5, [sp, #0x2fc]
	ldrh r0, [r5]
	strh r0, [r4]
	ldr r1, [sp, #0x300]
	ldrh r0, [r1]
	strh r0, [r4, #2]
	movs r2, #1
	mov sb, r2
	mov r3, sb
	strh r3, [r4, #8]
	ldr r5, .L0806D304 @ =0x000040C8
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r4, #4]
	ldr r0, .L0806D308 @ =0x000040C0
	adds r5, r7, r0
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	adds r0, r7, #0
	bl func_08008920
	ldr r1, [r6]
	movs r2, #0
	cmp r1, #0
	beq .L0806D2A8
	ldrh r2, [r6, #4]
.L0806D2A8:
	mov r3, sl
	bl func_0805E99C
	adds r0, r7, #0
	bl func_08008910
	adds r6, r0, #0
	add r4, sp, #0xe0
	ldr r1, [r4]
	mov r8, r1
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L0806D2D0
	ldrh r3, [r4, #4]
.L0806D2D0:
	lsls r2, r2, #5
	ldr r4, .L0806D30C @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x64
	mov r1, r8
	bl func_08008F0C
	ldr r5, [sp, #0x2c0]
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806D310
	cmp r1, #0
	beq .L0806D2FA
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806D2FA:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806D3E4
	.align 2, 0
.L0806D304: .4byte 0x000040C8
.L0806D308: .4byte 0x000040C0
.L0806D30C: .4byte 0x06010000
.L0806D310:
	mov r8, r1
	add r1, sp, #0x1e8
	mov r5, sb
	str r5, [r1]
	ldr r0, [r6]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0x1e4
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x1e4
	cmp r4, r0
	bhs .L0806D330
	adds r1, r2, #0
.L0806D330:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806D34E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806D352
	mov r0, sb
	bl func_080D3BC0
	b .L0806D352
.L0806D34E:
	movs r0, #0
	mov sb, r0
.L0806D352:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L0806D37A
.L0806D35E:
	mov r3, ip
	cmp r3, #0
	beq .L0806D370
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D370:
	adds r2, #0x10
	movs r4, #0x10
	add ip, r4
	cmp r2, r8
	bne .L0806D35E
.L0806D37A:
	mov r5, ip
	add r0, sp, #0x1e8
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806D398
	cmp r5, #0
	beq .L0806D394
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806D394:
	adds r5, #0x10
	b .L0806D3C0
.L0806D398:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806D3BE
.L0806D3A0:
	cmp r2, #0
	beq .L0806D3B0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D3B0:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L0806D3A0
.L0806D3BE:
	adds r5, r2, #0
.L0806D3C0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806D3D0
.L0806D3CA:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806D3CA
.L0806D3D0:
	cmp r0, #0
	beq .L0806D3D8
	bl free
.L0806D3D8:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r1, [sp, #0x384]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806D3E4:
	movs r2, #0
	mov sb, r2
	ldr r3, [sp, #0x2f4]
	movs r4, #0
	ldrsh r0, [r3, r4]
	adds r0, #0x30
	movs r5, #0x20
	ldrsh r1, [r7, r5]
	cmp r0, r1
	bge .L0806D40E
	adds r2, r1, #0
	ldr r6, .L0806D4BC @ =0x00003EA4
	adds r1, r7, r6
.L0806D3FE:
	adds r1, #0x10
	movs r0, #1
	add sb, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	adds r0, #0x30
	cmp r0, r2
	blt .L0806D3FE
.L0806D40E:
	movs r4, #0
	str r4, [sp, #0x26c]
	ldr r5, .L0806D4C0 @ =0x00003EA0
	adds r0, r7, r5
	ldr r0, [r0]
	cmp sb, r0
	blo .L0806D41E
	b .L0806D72A
.L0806D41E:
	adds r6, r5, #0
	adds r6, r7, r6
	str r6, [sp, #0x270]
.L0806D424:
	mov r0, sb
	lsls r1, r0, #4
	adds r0, r1, #4
	ldr r2, [sp, #0x270]
	adds r5, r2, r0
	movs r3, #0
	ldrsh r2, [r5, r3]
	movs r4, #0x20
	ldrsh r0, [r7, r4]
	adds r0, #0xa0
	mov r6, sb
	adds r6, #1
	str r6, [sp, #0x2a4]
	str r1, [sp, #0x2ac]
	cmp r2, r0
	ble .L0806D446
	b .L0806D71C
.L0806D446:
	ldr r0, [sp, #0x26c]
	lsls r4, r0, #3
	adds r0, r4, r7
	ldr r1, .L0806D4C4 @ =0x000040D0
	adds r0, r0, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	str r0, [sp, #0x274]
	adds r4, r4, r7
	ldr r2, .L0806D4C8 @ =0x00004120
	adds r4, r4, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	str r0, [sp, #0x278]
	adds r0, r7, #0
	bl func_08008910
	adds r6, r0, #0
	ldr r1, [r5, #8]
	ldr r3, [sp, #0x274]
	lsls r2, r3, #5
	ldr r4, .L0806D4CC @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x64
	movs r3, #0x80
	bl func_08008F0C
	ldr r5, [sp, #0x2c0]
	str r5, [sp, #0x27c]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806D4D0
	cmp r1, #0
	beq .L0806D49E
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806D49E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r5, [sp, #0x278]
	lsls r5, r5, #5
	mov sb, r5
	movs r6, #0xfe
	lsls r6, r6, #1
	add r6, sp
	str r6, [sp, #0x364]
	ldr r0, [sp, #0x26c]
	adds r0, #1
	str r0, [sp, #0x2a8]
	b .L0806D5B6
	.align 2, 0
.L0806D4BC: .4byte 0x00003EA4
.L0806D4C0: .4byte 0x00003EA0
.L0806D4C4: .4byte 0x000040D0
.L0806D4C8: .4byte 0x00004120
.L0806D4CC: .4byte 0x06010000
.L0806D4D0:
	mov r8, r1
	movs r0, #1
	add r2, sp, #0x1f0
	str r0, [r2]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	add r0, sp, #0x1ec
	str r4, [r0]
	ldr r1, [r2]
	cmp r4, r1
	bhs .L0806D4EA
	adds r0, r2, #0
.L0806D4EA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806D508
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L0806D50C
	mov r0, sl
	bl func_080D3BC0
	b .L0806D50C
.L0806D508:
	movs r0, #0
	mov sl, r0
.L0806D50C:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r2, [r6]
	mov ip, r5
	mov r1, sb
	adds r1, #1
	str r1, [sp, #0x2a4]
	ldr r3, [sp, #0x278]
	lsls r3, r3, #5
	mov sb, r3
	movs r4, #0xfe
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x364]
	ldr r5, [sp, #0x26c]
	adds r5, #1
	str r5, [sp, #0x2a8]
	cmp r2, r8
	beq .L0806D54C
.L0806D532:
	mov r0, ip
	cmp r0, #0
	beq .L0806D542
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D542:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L0806D532
.L0806D54C:
	mov r5, ip
	add r0, sp, #0x1f0
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806D56A
	cmp r5, #0
	beq .L0806D566
	adds r0, r5, #0
	ldr r1, [sp, #0x27c]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806D566:
	adds r5, #0x10
	b .L0806D592
.L0806D56A:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806D590
.L0806D572:
	cmp r2, #0
	beq .L0806D582
	adds r0, r2, #0
	ldr r1, [sp, #0x27c]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D582:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L0806D572
.L0806D590:
	adds r5, r2, #0
.L0806D592:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806D5A2
.L0806D59C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806D59C
.L0806D5A2:
	cmp r0, #0
	beq .L0806D5AA
	bl free
.L0806D5AA:
	ldr r0, [sp, #0x384]
	add r0, sl
	ldr r1, [sp, #0x384]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806D5B6:
	adds r0, r7, #0
	bl func_08008910
	ldr r1, [sp, #0x2ac]
	adds r1, #4
	ldr r2, [sp, #0x270]
	adds r1, r2, r1
	adds r6, r0, #0
	ldr r1, [r1, #0xc]
	ldr r2, .L0806D5F8 @ =0x05000200
	add r2, sb
	add r0, sp, #0x64
	movs r3, #0x20
	bl func_08008F0C
	ldr r3, [sp, #0x2c0]
	mov sl, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806D5FC
	cmp r1, #0
	beq .L0806D5F0
	adds r0, r1, #0
	adds r1, r3, #0
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D5F0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806D6CA
	.align 2, 0
.L0806D5F8: .4byte 0x05000200
.L0806D5FC:
	mov r8, r1
	movs r0, #1
	add r2, sp, #0x1f8
	str r0, [r2]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	add r0, sp, #0x1f4
	str r4, [r0]
	ldr r1, [r2]
	cmp r4, r1
	bhs .L0806D616
	adds r0, r2, #0
.L0806D616:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806D634
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806D638
	mov r0, sb
	bl func_080D3BC0
	b .L0806D638
.L0806D634:
	movs r0, #0
	mov sb, r0
.L0806D638:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L0806D660
.L0806D644:
	mov r3, ip
	cmp r3, #0
	beq .L0806D656
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D656:
	adds r2, #0x10
	movs r4, #0x10
	add ip, r4
	cmp r2, r8
	bne .L0806D644
.L0806D660:
	mov r5, ip
	add r0, sp, #0x1f8
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806D67E
	cmp r5, #0
	beq .L0806D67A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806D67A:
	adds r5, #0x10
	b .L0806D6A6
.L0806D67E:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806D6A4
.L0806D686:
	cmp r2, #0
	beq .L0806D696
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D696:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L0806D686
.L0806D6A4:
	adds r5, r2, #0
.L0806D6A6:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806D6B6
.L0806D6B0:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806D6B0
.L0806D6B6:
	cmp r0, #0
	beq .L0806D6BE
	bl free
.L0806D6BE:
	ldr r0, [sp, #0x384]
	add r0, sb
	ldr r1, [sp, #0x384]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806D6CA:
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r1, [sp, #0x2ac]
	adds r1, #4
	ldr r2, [sp, #0x270]
	adds r1, r2, r1
	movs r3, #0
	ldrsh r2, [r1, r3]
	movs r5, #0x20
	ldrsh r0, [r7, r5]
	subs r2, r2, r0
	ldr r1, [r1, #4]
	ldr r6, [sp, #0x278]
	str r6, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x364]
	ldr r3, [sp, #0x274]
	bl func_0804EA94
	ldrb r2, [r4]
	cmp r2, #0x7f
	bhi .L0806D718
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r4, r0
	add r1, sp, #0x1fc
	ldr r1, [r1]
	str r1, [r0]
	ldr r3, [sp, #0x364]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r4]
.L0806D718:
	ldr r4, [sp, #0x2a8]
	str r4, [sp, #0x26c]
.L0806D71C:
	ldr r5, [sp, #0x2a4]
	mov sb, r5
	ldr r6, [sp, #0x270]
	ldr r0, [r6]
	cmp sb, r0
	bhs .L0806D72A
	b .L0806D424
.L0806D72A:
	movs r0, #0
	mov sb, r0
	ldr r1, [sp, #0x360]
	movs r2, #0
	ldrsh r0, [r1, r2]
	adds r0, #0x30
	movs r3, #0x20
	ldrsh r1, [r7, r3]
	cmp r0, r1
	bge .L0806D754
	adds r2, r1, #0
	ldr r4, .L0806D7C4 @ =0x00003FA8
	adds r1, r7, r4
.L0806D744:
	adds r1, #0xc
	movs r5, #1
	add sb, r5
	movs r6, #0
	ldrsh r0, [r1, r6]
	adds r0, #0x30
	cmp r0, r2
	blt .L0806D744
.L0806D754:
	ldr r1, .L0806D7C8 @ =0x00003FA4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp sb, r0
	blo .L0806D762
	bl sub_0806C492
.L0806D762:
	adds r2, r1, #0
	adds r2, r7, r2
	str r2, [sp, #0x280]
.L0806D768:
	mov r3, sb
	lsls r0, r3, #1
	add r0, sb
	lsls r0, r0, #2
	adds r0, #4
	ldr r5, [sp, #0x280]
	adds r4, r5, r0
	movs r6, #0
	ldrsh r1, [r4, r6]
	movs r2, #0x20
	ldrsh r0, [r7, r2]
	adds r0, #0xa0
	adds r3, #1
	str r3, [sp, #0x2a4]
	cmp r1, r0
	ble .L0806D78A
	b .L0806D8A0
.L0806D78A:
	adds r0, r7, #0
	bl func_08008910
	adds r6, r0, #0
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r0, sp, #0x64
	movs r3, #0xc0
	lsls r3, r3, #2
	bl func_08008F0C
	ldr r3, [sp, #0x2c0]
	str r3, [sp, #0x284]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806D7CC
	cmp r1, #0
	beq .L0806D7BC
	adds r0, r1, #0
	adds r1, r3, #0
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D7BC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806D8A0
	.align 2, 0
.L0806D7C4: .4byte 0x00003FA8
.L0806D7C8: .4byte 0x00003FA4
.L0806D7CC:
	mov r8, r1
	movs r0, #1
	add r2, sp, #0x208
	str r0, [r2]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	add r0, sp, #0x204
	str r4, [r0]
	ldr r1, [r2]
	cmp r4, r1
	bhs .L0806D7E6
	adds r0, r2, #0
.L0806D7E6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806D804
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L0806D808
	mov r0, sl
	bl func_080D3BC0
	b .L0806D808
.L0806D804:
	movs r0, #0
	mov sl, r0
.L0806D808:
	adds r5, r0, #0
	str r5, [sp, #0x384]
	ldr r2, [r6]
	mov ip, r5
	mov r3, sb
	adds r3, #1
	str r3, [sp, #0x2a4]
	cmp r2, r8
	beq .L0806D836
.L0806D81A:
	mov r4, ip
	cmp r4, #0
	beq .L0806D82C
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D82C:
	adds r2, #0x10
	movs r5, #0x10
	add ip, r5
	cmp r2, r8
	bne .L0806D81A
.L0806D836:
	mov r5, ip
	add r0, sp, #0x208
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806D854
	cmp r5, #0
	beq .L0806D850
	adds r0, r5, #0
	ldr r1, [sp, #0x284]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806D850:
	adds r5, #0x10
	b .L0806D87C
.L0806D854:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0806D87A
.L0806D85C:
	cmp r2, #0
	beq .L0806D86C
	adds r0, r2, #0
	ldr r1, [sp, #0x284]
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806D86C:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L0806D85C
.L0806D87A:
	adds r5, r2, #0
.L0806D87C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806D88C
.L0806D886:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806D886
.L0806D88C:
	cmp r0, #0
	beq .L0806D894
	bl free
.L0806D894:
	ldr r0, [sp, #0x384]
	add r0, sl
	ldr r1, [sp, #0x384]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806D8A0:
	ldr r2, [sp, #0x2a4]
	mov sb, r2
	ldr r3, [sp, #0x280]
	ldr r0, [r3]
	cmp sb, r0
	bhs .L0806D8AE
	b .L0806D768
.L0806D8AE:
	bl sub_0806C492

	non_word_aligned_thumb_func_start sub_0806D8B2
sub_0806D8B2: @ 0x0806D8B2
	ldr r0, [sp, #0x20c]
	movs r3, #0xe2
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

