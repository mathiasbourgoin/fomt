	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_0805FD78
func_0805FD78: @ 0x0805FD78
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	bl func_08075E7C
	ldr r0, .L0805FF10 @ =vtable_unk_080E7A88
	str r0, [r5, #4]
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r6, r5, r0
	movs r0, #0
	str r0, [r6]
	mov r1, sp
	str r0, [sp]
	strh r0, [r1, #4]
	str r0, [sp]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r2, r5, r1
	cmp r2, #0
	beq .L0805FDB8
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
.L0805FDB8:
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
	movs r0, #0x90
	lsls r0, r0, #1
	adds r4, r5, r0
	ldr r0, [r4]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	bl CountChickens__C4Coop
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge .L0805FDFC
	movs r0, #1
	str r0, [sp]
	adds r1, r6, #0
	ldr r0, [r1]
	cmp r0, #6
	bhi .L0805FDFC
	lsls r0, r0, #3
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L0805FDF6
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r2]
	str r1, [r2, #4]
.L0805FDF6:
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
.L0805FDFC:
	ldr r0, [r4]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl CountCows__C4Barn
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge .L0805FE38
	movs r0, #2
	str r0, [sp]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r0, [r2]
	cmp r0, #6
	bhi .L0805FE38
	lsls r0, r0, #3
	adds r0, #4
	adds r3, r2, r0
	cmp r3, #0
	beq .L0805FE32
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r3]
	str r1, [r3, #4]
.L0805FE32:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0805FE38:
	ldr r0, [r4]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl CountSheeps__C4Barn
	rsbs r1, r0, #0
	orrs r1, r0
	cmp r1, #0
	bge .L0805FE74
	movs r0, #3
	str r0, [sp]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r0, [r2]
	cmp r0, #6
	bhi .L0805FE74
	lsls r0, r0, #3
	adds r0, #4
	adds r3, r2, r0
	cmp r3, #0
	beq .L0805FE6E
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r3]
	str r1, [r3, #4]
.L0805FE6E:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0805FE74:
	movs r0, #4
	str r0, [sp]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r2, r5, r1
	ldr r0, [r2]
	cmp r0, #6
	bhi .L0805FE9C
	lsls r0, r0, #3
	adds r0, #4
	adds r3, r2, r0
	cmp r3, #0
	beq .L0805FE96
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r3]
	str r1, [r3, #4]
.L0805FE96:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0805FE9C:
	movs r0, #5
	str r0, [sp]
	movs r0, #0x92
	lsls r0, r0, #1
	adds r2, r5, r0
	ldr r0, [r2]
	cmp r0, #6
	bhi .L0805FEC4
	lsls r0, r0, #3
	adds r0, #4
	adds r3, r2, r0
	cmp r3, #0
	beq .L0805FEBE
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r3]
	str r1, [r3, #4]
.L0805FEBE:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0805FEC4:
	movs r0, #6
	str r0, [sp]
	movs r1, #0x92
	lsls r1, r1, #1
	adds r2, r5, r1
	ldr r0, [r2]
	cmp r0, #6
	bhi .L0805FEEC
	lsls r0, r0, #3
	adds r0, #4
	adds r3, r2, r0
	cmp r3, #0
	beq .L0805FEE6
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r3]
	str r1, [r3, #4]
.L0805FEE6:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0805FEEC:
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r1, #0x94
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl func_08069C34
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L0805FF10: .4byte vtable_unk_080E7A88

	thumb_func_start func_0805FF14
func_0805FF14: @ 0x0805FF14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L080600A4 @ =0xFFFFFD64
	add sp, r4
	str r0, [sp, #0x1c4]
	str r1, [sp, #0x1c8]
	mov sl, r2
	mov r0, sl
	adds r0, #0x14
	bl method_08009AF4__C4Farm
	adds r6, r0, #0
	add r5, sp, #0x20
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x16
	bls .L0805FF40
	movs r4, #0x16
.L0805FF40:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r5, r4
	movs r1, #0
	mov sb, r1
	strb r1, [r0]
	adds r7, r5, #0
	ldr r2, .L080600A8 @ =gUnk_080FB824
	mov r8, r2
	adds r0, r7, #0
	bl strlen
	adds r6, r7, r0
	movs r1, #0x16
	subs r5, r1, r0
	cmp r5, #0
	beq .L0805FF86
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0805FF76
	adds r4, r5, #0
.L0805FF76:
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r3, sb
	strb r3, [r0]
.L0805FF86:
	add r0, sp, #8
	adds r1, r7, #0
	bl strcpy
	add r0, sp, #8
	adds r1, r0, #0
	movs r2, #0x18
	bl memcpy
	add r4, sp, #8
	str r4, [sp]
	ldr r0, [sp, #0x1c4]
	ldr r1, [sp, #0x1c8]
	mov r2, sl
	movs r3, #0x40
	bl func_08076BFC
	ldr r5, [sp, #0x1c4]
	ldr r7, .L080600AC @ =0x000005B4
	adds r1, r5, r7
	ldr r0, .L080600B0 @ =vtable_unk_080E7A78
	str r0, [r1]
	ldr r0, [r5, #4]
	str r0, [sp, #0x1cc]
	ldr r2, .L080600B4 @ =gUnk_080FB830
	add r1, sp, #0x58
	movs r0, #2
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r0, [sp, #0x58]
	ldr r1, .L080600B8 @ =0x000005BC
	adds r4, r5, r1
	str r2, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r0, [r5]
	bl func_08008910
	adds r6, r0, #0
	movs r3, #0x38
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x38
	adds r1, r4, #0
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #0x38
	mov r8, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	mov sl, r8
	cmp r1, r0
	beq .L080600D0
	cmp r1, #0
	beq .L0806000C
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806000C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r3, sp
	adds r3, #0x64
	str r3, [sp, #0x22c]
	movs r5, #0xc8
	lsls r5, r5, #3
	ldr r4, [sp, #0x1c4]
	adds r5, r4, r5
	str r5, [sp, #0x1f4]
	mov r7, sp
	adds r7, #0x70
	str r7, [sp, #0x230]
	ldr r0, .L080600BC @ =0x000006C4
	adds r0, r4, r0
	str r0, [sp, #0x1f8]
	mov r1, sp
	adds r1, #0x7c
	str r1, [sp, #0x234]
	movs r2, #0xe9
	lsls r2, r2, #3
	adds r2, r4, r2
	str r2, [sp, #0x1fc]
	adds r3, #0x24
	str r3, [sp, #0x23c]
	ldr r5, .L080600C0 @ =0x000007CC
	adds r5, r4, r5
	str r5, [sp, #0x200]
	adds r7, #0x24
	str r7, [sp, #0x240]
	movs r0, #0x85
	lsls r0, r0, #4
	adds r0, r4, r0
	str r0, [sp, #0x204]
	adds r1, #0x24
	str r1, [sp, #0x244]
	ldr r2, .L080600C4 @ =0x000008D4
	adds r2, r4, r2
	str r2, [sp, #0x208]
	adds r3, #0x74
	str r3, [sp, #0x248]
	ldr r5, .L080600C8 @ =0x00000958
	adds r5, r4, r5
	str r5, [sp, #0x20c]
	movs r7, #0x80
	lsls r7, r7, #1
	add r7, sp
	str r7, [sp, #0x24c]
	mov r0, sp
	adds r0, #0x48
	str r0, [sp, #0x228]
	movs r1, #0xaa
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x274]
	ldr r2, .L080600CC @ =0x00001568
	adds r2, r4, r2
	str r2, [sp, #0x224]
	movs r3, #0xac
	lsls r3, r3, #1
	add r3, sp
	str r3, [sp, #0x278]
	movs r4, #0xb2
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x27c]
	movs r5, #0xb4
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x280]
	movs r7, #0x38
	lsls r7, r7, #0x10
	str r7, [sp, #0x238]
	b .L08060236
	.align 2, 0
.L080600A4: .4byte 0xFFFFFD64
.L080600A8: .4byte gUnk_080FB824
.L080600AC: .4byte 0x000005B4
.L080600B0: .4byte vtable_unk_080E7A78
.L080600B4: .4byte gUnk_080FB830
.L080600B8: .4byte 0x000005BC
.L080600BC: .4byte 0x000006C4
.L080600C0: .4byte 0x000007CC
.L080600C4: .4byte 0x000008D4
.L080600C8: .4byte 0x00000958
.L080600CC: .4byte 0x00001568
.L080600D0:
	str r1, [sp, #0x294]
	movs r0, #1
	str r0, [sp, #0x60]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r1, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L080600E8
	adds r0, r1, #0
.L080600E8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08060106
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0806010A
	mov r0, sb
	bl func_080D3BC0
	b .L0806010A
.L08060106:
	movs r0, #0
	mov sb, r0
.L0806010A:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r4, sp
	adds r4, #0x64
	str r4, [sp, #0x22c]
	movs r7, #0xc8
	lsls r7, r7, #3
	ldr r5, [sp, #0x1c4]
	adds r7, r5, r7
	str r7, [sp, #0x1f4]
	mov r0, sp
	adds r0, #0x70
	str r0, [sp, #0x230]
	ldr r1, .L080601DC @ =0x000006C4
	adds r1, r5, r1
	str r1, [sp, #0x1f8]
	adds r4, #0x18
	str r4, [sp, #0x234]
	movs r7, #0xe9
	lsls r7, r7, #3
	adds r7, r5, r7
	str r7, [sp, #0x1fc]
	adds r0, #0x18
	str r0, [sp, #0x23c]
	ldr r1, .L080601E0 @ =0x000007CC
	adds r1, r5, r1
	str r1, [sp, #0x200]
	adds r4, #0x18
	str r4, [sp, #0x240]
	movs r7, #0x85
	lsls r7, r7, #4
	adds r7, r5, r7
	str r7, [sp, #0x204]
	adds r0, #0x18
	str r0, [sp, #0x244]
	ldr r1, .L080601E4 @ =0x000008D4
	adds r1, r5, r1
	str r1, [sp, #0x208]
	adds r4, #0x68
	str r4, [sp, #0x248]
	ldr r7, .L080601E8 @ =0x00000958
	adds r7, r5, r7
	str r7, [sp, #0x20c]
	movs r0, #0x80
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x24c]
	mov r1, sp
	adds r1, #0x48
	str r1, [sp, #0x228]
	movs r4, #0xaa
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x274]
	ldr r7, .L080601EC @ =0x00001568
	adds r7, r5, r7
	str r7, [sp, #0x224]
	movs r0, #0xac
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x278]
	movs r1, #0xb2
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x27c]
	movs r4, #0xb4
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x280]
	movs r5, #0x38
	lsls r5, r5, #0x10
	str r5, [sp, #0x238]
	ldr r7, [sp, #0x294]
	cmp r2, r7
	beq .L080601BE
.L080601A4:
	cmp r3, #0
	beq .L080601B4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080601B4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L080601A4
.L080601BE:
	adds r5, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L080601F0
	cmp r5, #0
	beq .L080601D6
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080601D6:
	adds r5, #0x10
	b .L08060212
	.align 2, 0
.L080601DC: .4byte 0x000006C4
.L080601E0: .4byte 0x000007CC
.L080601E4: .4byte 0x000008D4
.L080601E8: .4byte 0x00000958
.L080601EC: .4byte 0x00001568
.L080601F0:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08060210
.L080601F8:
	cmp r2, #0
	beq .L08060208
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060208:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080601F8
.L08060210:
	adds r5, r2, #0
.L08060212:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08060222
.L0806021C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806021C
.L08060222:
	cmp r0, #0
	beq .L0806022A
	bl free
.L0806022A:
	ldr r0, [sp, #0x298]
	add r0, sb
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08060236:
	ldr r2, .L08060298 @ =gUnk_080FB830
	movs r1, #2
	add r0, sp, #0x64
	strh r1, [r0]
	ldr r0, [sp, #0x22c]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x64]
	str r2, [sp]
	ldr r1, [sp, #0x1f4]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r1, [sp, #0x1c4]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	movs r3, #0x3c
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x38
	ldr r1, [sp, #0x1f4]
	movs r3, #0x80
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806029C
	cmp r1, #0
	beq .L08060288
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060288:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r0, #0x3c
	lsls r0, r0, #0x10
	str r0, [sp, #0x260]
	b .L08060366
	.align 2, 0
.L08060298: .4byte gUnk_080FB830
.L0806029C:
	str r1, [sp, #0x294]
	movs r0, #1
	str r0, [sp, #0x6c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x68]
	add r1, sp, #0x6c
	add r0, sp, #0x68
	cmp r4, #1
	bhs .L080602B4
	adds r0, r1, #0
.L080602B4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080602D2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080602D6
	mov r0, r8
	bl func_080D3BC0
	b .L080602D6
.L080602D2:
	movs r0, #0
	mov r8, r0
.L080602D6:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	movs r4, #0x3c
	lsls r4, r4, #0x10
	str r4, [sp, #0x260]
	ldr r5, [sp, #0x294]
	cmp r2, r5
	beq .L08060304
.L080602EA:
	cmp r3, #0
	beq .L080602FA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080602FA:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x294]
	cmp r2, r7
	bne .L080602EA
.L08060304:
	adds r5, r3, #0
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne .L08060320
	cmp r5, #0
	beq .L0806031C
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806031C:
	adds r5, #0x10
	b .L08060342
.L08060320:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08060340
.L08060328:
	cmp r2, #0
	beq .L08060338
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060338:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08060328
.L08060340:
	adds r5, r2, #0
.L08060342:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08060352
.L0806034C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806034C
.L08060352:
	cmp r0, #0
	beq .L0806035A
	bl free
.L0806035A:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08060366:
	ldr r2, .L080603B8 @ =gUnk_080FB830
	movs r1, #2
	add r0, sp, #0x70
	strh r1, [r0]
	ldr r0, [sp, #0x230]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x70]
	str r2, [sp]
	ldr r1, [sp, #0x1f8]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r1, [sp, #0x1c4]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r2, .L080603BC @ =0x06000800
	add r0, sp, #0x38
	ldr r1, [sp, #0x1f8]
	movs r3, #0x80
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080603C0
	cmp r1, #0
	beq .L080603B0
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080603B0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08060486
	.align 2, 0
.L080603B8: .4byte gUnk_080FB830
.L080603BC: .4byte 0x06000800
.L080603C0:
	str r1, [sp, #0x294]
	movs r0, #1
	str r0, [sp, #0x78]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r1, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L080603DA
	adds r0, r1, #0
.L080603DA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080603F8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080603FC
	mov r0, r8
	bl func_080D3BC0
	b .L080603FC
.L080603F8:
	movs r0, #0
	mov r8, r0
.L080603FC:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x294]
	cmp r2, r7
	beq .L08060424
.L0806040A:
	cmp r3, #0
	beq .L0806041A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806041A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L0806040A
.L08060424:
	adds r5, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L08060440
	cmp r5, #0
	beq .L0806043C
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806043C:
	adds r5, #0x10
	b .L08060462
.L08060440:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08060460
.L08060448:
	cmp r2, #0
	beq .L08060458
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060458:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08060448
.L08060460:
	adds r5, r2, #0
.L08060462:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08060472
.L0806046C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806046C
.L08060472:
	cmp r0, #0
	beq .L0806047A
	bl free
.L0806047A:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08060486:
	ldr r2, .L080604E8 @ =gUnk_080FB830
	movs r1, #2
	add r0, sp, #0x7c
	strh r1, [r0]
	ldr r0, [sp, #0x234]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x7c]
	str r2, [sp]
	ldr r1, [sp, #0x1fc]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r1, [sp, #0x1c4]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	movs r3, #0x44
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x38
	ldr r1, [sp, #0x1fc]
	movs r3, #0x80
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080604EC
	cmp r1, #0
	beq .L080604D8
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080604D8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r0, #0x44
	lsls r0, r0, #0x10
	str r0, [sp, #0x1e4]
	b .L080605B6
	.align 2, 0
.L080604E8: .4byte gUnk_080FB830
.L080604EC:
	str r1, [sp, #0x294]
	movs r0, #1
	str r0, [sp, #0x84]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x80]
	add r1, sp, #0x84
	add r0, sp, #0x80
	cmp r4, #1
	bhs .L08060504
	adds r0, r1, #0
.L08060504:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08060522
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08060526
	mov r0, r8
	bl func_080D3BC0
	b .L08060526
.L08060522:
	movs r0, #0
	mov r8, r0
.L08060526:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	movs r4, #0x44
	lsls r4, r4, #0x10
	str r4, [sp, #0x1e4]
	ldr r5, [sp, #0x294]
	cmp r2, r5
	beq .L08060554
.L0806053A:
	cmp r3, #0
	beq .L0806054A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806054A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x294]
	cmp r2, r7
	bne .L0806053A
.L08060554:
	adds r5, r3, #0
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne .L08060570
	cmp r5, #0
	beq .L0806056C
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806056C:
	adds r5, #0x10
	b .L08060592
.L08060570:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08060590
.L08060578:
	cmp r2, #0
	beq .L08060588
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060588:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08060578
.L08060590:
	adds r5, r2, #0
.L08060592:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080605A2
.L0806059C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806059C
.L080605A2:
	cmp r0, #0
	beq .L080605AA
	bl free
.L080605AA:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080605B6:
	ldr r2, .L08060618 @ =gUnk_080FB830
	movs r0, #2
	add r1, sp, #0x88
	strh r0, [r1]
	ldr r3, [sp, #0x23c]
	strh r0, [r3, #2]
	ldr r0, [r1]
	str r2, [sp]
	ldr r1, [sp, #0x200]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r4, [sp, #0x1c4]
	ldr r0, [r4]
	bl func_08008910
	adds r6, r0, #0
	movs r5, #0x48
	lsls r2, r5, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x38
	ldr r1, [sp, #0x200]
	movs r3, #0x80
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806061C
	cmp r1, #0
	beq .L08060608
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060608:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r4, #0x48
	lsls r4, r4, #0x10
	str r4, [sp, #0x1e8]
	b .L080606E6
	.align 2, 0
.L08060618: .4byte gUnk_080FB830
.L0806061C:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0x90
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x294]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x8c
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08060638
	adds r0, r1, #0
.L08060638:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08060656
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806065A
	mov r0, r8
	bl func_080D3BC0
	b .L0806065A
.L08060656:
	movs r0, #0
	mov r8, r0
.L0806065A:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	movs r7, #0x48
	lsls r7, r7, #0x10
	str r7, [sp, #0x1e8]
	b .L0806067E
.L0806066A:
	cmp r3, #0
	beq .L0806067A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806067A:
	adds r2, #0x10
	adds r3, #0x10
.L0806067E:
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L0806066A
	adds r5, r3, #0
	ldr r1, [sp, #0x90]
	cmp r1, #1
	bne .L080606A0
	cmp r5, #0
	beq .L0806069C
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806069C:
	adds r5, #0x10
	b .L080606C2
.L080606A0:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080606C0
.L080606A8:
	cmp r2, #0
	beq .L080606B8
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080606B8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080606A8
.L080606C0:
	adds r5, r2, #0
.L080606C2:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080606D2
.L080606CC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080606CC
.L080606D2:
	cmp r0, #0
	beq .L080606DA
	bl free
.L080606DA:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080606E6:
	ldr r2, .L08060748 @ =gUnk_080FB830
	movs r0, #2
	add r1, sp, #0x94
	strh r0, [r1]
	ldr r3, [sp, #0x240]
	strh r0, [r3, #2]
	ldr r0, [r1]
	str r2, [sp]
	ldr r1, [sp, #0x204]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r4, [sp, #0x1c4]
	ldr r0, [r4]
	bl func_08008910
	adds r6, r0, #0
	movs r5, #0x4c
	lsls r2, r5, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x38
	ldr r1, [sp, #0x204]
	movs r3, #0x80
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806074C
	cmp r1, #0
	beq .L08060738
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060738:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r4, #0x4c
	lsls r4, r4, #0x10
	str r4, [sp, #0x1ec]
	b .L08060816
	.align 2, 0
.L08060748: .4byte gUnk_080FB830
.L0806074C:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0x9c
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x294]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08060768
	adds r0, r1, #0
.L08060768:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08060786
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806078A
	mov r0, r8
	bl func_080D3BC0
	b .L0806078A
.L08060786:
	movs r0, #0
	mov r8, r0
.L0806078A:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	movs r7, #0x4c
	lsls r7, r7, #0x10
	str r7, [sp, #0x1ec]
	b .L080607AE
.L0806079A:
	cmp r3, #0
	beq .L080607AA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080607AA:
	adds r2, #0x10
	adds r3, #0x10
.L080607AE:
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L0806079A
	adds r5, r3, #0
	ldr r1, [sp, #0x9c]
	cmp r1, #1
	bne .L080607D0
	cmp r5, #0
	beq .L080607CC
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080607CC:
	adds r5, #0x10
	b .L080607F2
.L080607D0:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080607F0
.L080607D8:
	cmp r2, #0
	beq .L080607E8
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080607E8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080607D8
.L080607F0:
	adds r5, r2, #0
.L080607F2:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08060802
.L080607FC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080607FC
.L08060802:
	cmp r0, #0
	beq .L0806080A
	bl free
.L0806080A:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08060816:
	ldr r2, .L08060878 @ =gUnk_080FB834
	movs r0, #2
	add r1, sp, #0xa0
	strh r0, [r1]
	ldr r3, [sp, #0x244]
	strh r0, [r3, #2]
	ldr r0, [r1]
	str r2, [sp]
	ldr r1, [sp, #0x208]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r4, [sp, #0x1c4]
	ldr r0, [r4]
	bl func_08008910
	adds r6, r0, #0
	movs r5, #0x50
	lsls r2, r5, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x38
	ldr r1, [sp, #0x208]
	movs r3, #0x80
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806087C
	cmp r1, #0
	beq .L08060868
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060868:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r4, #0x50
	lsls r4, r4, #0x10
	str r4, [sp, #0x1f0]
	b .L08060946
	.align 2, 0
.L08060878: .4byte gUnk_080FB834
.L0806087C:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0xa8
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x294]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xa4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08060898
	adds r0, r1, #0
.L08060898:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080608B6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080608BA
	mov r0, r8
	bl func_080D3BC0
	b .L080608BA
.L080608B6:
	movs r0, #0
	mov r8, r0
.L080608BA:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	movs r7, #0x50
	lsls r7, r7, #0x10
	str r7, [sp, #0x1f0]
	b .L080608DE
.L080608CA:
	cmp r3, #0
	beq .L080608DA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080608DA:
	adds r2, #0x10
	adds r3, #0x10
.L080608DE:
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L080608CA
	adds r5, r3, #0
	ldr r1, [sp, #0xa8]
	cmp r1, #1
	bne .L08060900
	cmp r5, #0
	beq .L080608FC
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080608FC:
	adds r5, #0x10
	b .L08060922
.L08060900:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08060920
.L08060908:
	cmp r2, #0
	beq .L08060918
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060918:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08060908
.L08060920:
	adds r5, r2, #0
.L08060922:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08060932
.L0806092C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806092C
.L08060932:
	cmp r0, #0
	beq .L0806093A
	bl free
.L0806093A:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08060946:
	ldr r1, [sp, #0x1c4]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08060988 @ =gUnk_0875196C
	movs r3, #0x54
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x38
	movs r3, #0x80
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806098C
	cmp r1, #0
	beq .L0806097E
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806097E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08060A54
	.align 2, 0
.L08060988: .4byte gUnk_0875196C
.L0806098C:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0xb0
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x294]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xac
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080609A8
	adds r0, r1, #0
.L080609A8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080609C6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080609CA
	mov r0, r8
	bl func_080D3BC0
	b .L080609CA
.L080609C6:
	movs r0, #0
	mov r8, r0
.L080609CA:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x294]
	cmp r2, r4
	beq .L080609F2
.L080609D8:
	cmp r3, #0
	beq .L080609E8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080609E8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x294]
	cmp r2, r5
	bne .L080609D8
.L080609F2:
	adds r5, r3, #0
	ldr r1, [sp, #0xb0]
	cmp r1, #1
	bne .L08060A0E
	cmp r5, #0
	beq .L08060A0A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060A0A:
	adds r5, #0x10
	b .L08060A30
.L08060A0E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08060A2E
.L08060A16:
	cmp r2, #0
	beq .L08060A26
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060A26:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08060A16
.L08060A2E:
	adds r5, r2, #0
.L08060A30:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08060A40
.L08060A3A:
	adds r1, #0x10
	cmp r1, r2
	bne .L08060A3A
.L08060A40:
	cmp r0, #0
	beq .L08060A48
	bl free
.L08060A48:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08060A54:
	ldr r2, [sp, #0x1c4]
	ldr r0, [r2]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08060A8C @ =gUnk_087519EC
	add r0, sp, #0x38
	ldr r2, .L08060A90 @ =0x05000020
	movs r3, #0x20
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08060A94
	cmp r1, #0
	beq .L08060A84
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08060A84:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08060B58
	.align 2, 0
.L08060A8C: .4byte gUnk_087519EC
.L08060A90: .4byte 0x05000020
.L08060A94:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0xb8
	str r0, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x294]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xb4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08060AB0
	adds r0, r1, #0
.L08060AB0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08060ACE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08060AD2
	mov r0, r8
	bl func_080D3BC0
	b .L08060AD2
.L08060ACE:
	movs r0, #0
	mov r8, r0
.L08060AD2:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L08060AF0
.L08060ADC:
	cmp r3, #0
	beq .L08060AEC
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060AEC:
	adds r2, #0x10
	adds r3, #0x10
.L08060AF0:
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L08060ADC
	adds r5, r3, #0
	ldr r1, [sp, #0xb8]
	cmp r1, #1
	bne .L08060B12
	cmp r5, #0
	beq .L08060B0E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08060B0E:
	adds r5, #0x10
	b .L08060B34
.L08060B12:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08060B32
.L08060B1A:
	cmp r2, #0
	beq .L08060B2A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060B2A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08060B1A
.L08060B32:
	adds r5, r2, #0
.L08060B34:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08060B44
.L08060B3E:
	adds r1, #0x10
	cmp r1, r2
	bne .L08060B3E
.L08060B44:
	cmp r0, #0
	beq .L08060B4C
	bl free
.L08060B4C:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08060B58:
	ldr r1, [sp, #0x1c4]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08060B98 @ =gUnk_0875254C
	movs r3, #0x58
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x38
	movs r3, #0x20
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08060B9C
	cmp r1, #0
	beq .L08060B90
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060B90:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08060C64
	.align 2, 0
.L08060B98: .4byte gUnk_0875254C
.L08060B9C:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0xc0
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x294]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xbc
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08060BB8
	adds r0, r1, #0
.L08060BB8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08060BD6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08060BDA
	mov r0, r8
	bl func_080D3BC0
	b .L08060BDA
.L08060BD6:
	movs r0, #0
	mov r8, r0
.L08060BDA:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x294]
	cmp r2, r4
	beq .L08060C02
.L08060BE8:
	cmp r3, #0
	beq .L08060BF8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060BF8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x294]
	cmp r2, r5
	bne .L08060BE8
.L08060C02:
	adds r5, r3, #0
	ldr r1, [sp, #0xc0]
	cmp r1, #1
	bne .L08060C1E
	cmp r5, #0
	beq .L08060C1A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060C1A:
	adds r5, #0x10
	b .L08060C40
.L08060C1E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08060C3E
.L08060C26:
	cmp r2, #0
	beq .L08060C36
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060C36:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08060C26
.L08060C3E:
	adds r5, r2, #0
.L08060C40:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08060C50
.L08060C4A:
	adds r1, #0x10
	cmp r1, r2
	bne .L08060C4A
.L08060C50:
	cmp r0, #0
	beq .L08060C58
	bl free
.L08060C58:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08060C64:
	ldr r2, [sp, #0x1c4]
	ldr r0, [r2]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08060C9C @ =gUnk_087525CC
	add r0, sp, #0x38
	ldr r2, .L08060CA0 @ =0x05000040
	movs r3, #0x20
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08060CA4
	cmp r1, #0
	beq .L08060C94
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08060C94:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08060D68
	.align 2, 0
.L08060C9C: .4byte gUnk_087525CC
.L08060CA0: .4byte 0x05000040
.L08060CA4:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0xc8
	str r0, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x294]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xc4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08060CC0
	adds r0, r1, #0
.L08060CC0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08060CDE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08060CE2
	mov r0, r8
	bl func_080D3BC0
	b .L08060CE2
.L08060CDE:
	movs r0, #0
	mov r8, r0
.L08060CE2:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L08060D00
.L08060CEC:
	cmp r3, #0
	beq .L08060CFC
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060CFC:
	adds r2, #0x10
	adds r3, #0x10
.L08060D00:
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L08060CEC
	adds r5, r3, #0
	ldr r1, [sp, #0xc8]
	cmp r1, #1
	bne .L08060D22
	cmp r5, #0
	beq .L08060D1E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08060D1E:
	adds r5, #0x10
	b .L08060D44
.L08060D22:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08060D42
.L08060D2A:
	cmp r2, #0
	beq .L08060D3A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060D3A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08060D2A
.L08060D42:
	adds r5, r2, #0
.L08060D44:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08060D54
.L08060D4E:
	adds r1, #0x10
	cmp r1, r2
	bne .L08060D4E
.L08060D54:
	cmp r0, #0
	beq .L08060D5C
	bl free
.L08060D5C:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08060D68:
	ldr r1, [sp, #0x1c4]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08060DA8 @ =gUnk_087530CC
	movs r3, #0x5c
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x38
	movs r3, #0x20
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08060DAC
	cmp r1, #0
	beq .L08060DA0
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060DA0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08060E74
	.align 2, 0
.L08060DA8: .4byte gUnk_087530CC
.L08060DAC:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0xd0
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x294]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xcc
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08060DC8
	adds r0, r1, #0
.L08060DC8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08060DE6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08060DEA
	mov r0, r8
	bl func_080D3BC0
	b .L08060DEA
.L08060DE6:
	movs r0, #0
	mov r8, r0
.L08060DEA:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x294]
	cmp r2, r4
	beq .L08060E12
.L08060DF8:
	cmp r3, #0
	beq .L08060E08
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060E08:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x294]
	cmp r2, r5
	bne .L08060DF8
.L08060E12:
	adds r5, r3, #0
	ldr r1, [sp, #0xd0]
	cmp r1, #1
	bne .L08060E2E
	cmp r5, #0
	beq .L08060E2A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060E2A:
	adds r5, #0x10
	b .L08060E50
.L08060E2E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08060E4E
.L08060E36:
	cmp r2, #0
	beq .L08060E46
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060E46:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08060E36
.L08060E4E:
	adds r5, r2, #0
.L08060E50:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08060E60
.L08060E5A:
	adds r1, #0x10
	cmp r1, r2
	bne .L08060E5A
.L08060E60:
	cmp r0, #0
	beq .L08060E68
	bl free
.L08060E68:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08060E74:
	ldr r2, [sp, #0x1c4]
	ldr r0, [r2]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08060EAC @ =gUnk_0875314C
	add r0, sp, #0x38
	ldr r2, .L08060EB0 @ =0x05000060
	movs r3, #0x20
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08060EB4
	cmp r1, #0
	beq .L08060EA4
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08060EA4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08060F78
	.align 2, 0
.L08060EAC: .4byte gUnk_0875314C
.L08060EB0: .4byte 0x05000060
.L08060EB4:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0xd8
	str r0, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x294]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xd4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08060ED0
	adds r0, r1, #0
.L08060ED0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08060EEE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08060EF2
	mov r0, r8
	bl func_080D3BC0
	b .L08060EF2
.L08060EEE:
	movs r0, #0
	mov r8, r0
.L08060EF2:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L08060F10
.L08060EFC:
	cmp r3, #0
	beq .L08060F0C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060F0C:
	adds r2, #0x10
	adds r3, #0x10
.L08060F10:
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L08060EFC
	adds r5, r3, #0
	ldr r1, [sp, #0xd8]
	cmp r1, #1
	bne .L08060F32
	cmp r5, #0
	beq .L08060F2E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08060F2E:
	adds r5, #0x10
	b .L08060F54
.L08060F32:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08060F52
.L08060F3A:
	cmp r2, #0
	beq .L08060F4A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060F4A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08060F3A
.L08060F52:
	adds r5, r2, #0
.L08060F54:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08060F64
.L08060F5E:
	adds r1, #0x10
	cmp r1, r2
	bne .L08060F5E
.L08060F64:
	cmp r0, #0
	beq .L08060F6C
	bl free
.L08060F6C:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08060F78:
	ldr r1, [sp, #0x1c4]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08060FB8 @ =gUnk_0875348C
	movs r3, #0x5d
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #0x38
	movs r3, #0x20
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08060FBC
	cmp r1, #0
	beq .L08060FB0
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08060FB0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08061084
	.align 2, 0
.L08060FB8: .4byte gUnk_0875348C
.L08060FBC:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0xe0
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x294]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xdc
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08060FD8
	adds r0, r1, #0
.L08060FD8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08060FF6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08060FFA
	mov r0, r8
	bl func_080D3BC0
	b .L08060FFA
.L08060FF6:
	movs r0, #0
	mov r8, r0
.L08060FFA:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x294]
	cmp r2, r4
	beq .L08061022
.L08061008:
	cmp r3, #0
	beq .L08061018
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08061018:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x294]
	cmp r2, r5
	bne .L08061008
.L08061022:
	adds r5, r3, #0
	ldr r1, [sp, #0xe0]
	cmp r1, #1
	bne .L0806103E
	cmp r5, #0
	beq .L0806103A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806103A:
	adds r5, #0x10
	b .L08061060
.L0806103E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0806105E
.L08061046:
	cmp r2, #0
	beq .L08061056
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08061056:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08061046
.L0806105E:
	adds r5, r2, #0
.L08061060:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08061070
.L0806106A:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806106A
.L08061070:
	cmp r0, #0
	beq .L08061078
	bl free
.L08061078:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08061084:
	ldr r2, [sp, #0x1c4]
	ldr r0, [r2]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L080610BC @ =gUnk_0875350C
	add r0, sp, #0x38
	ldr r2, .L080610C0 @ =0x05000080
	movs r3, #0x20
	bl func_08008F0C
	mov sb, sl
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080610C4
	cmp r1, #0
	beq .L080610B4
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080610B4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08061188
	.align 2, 0
.L080610BC: .4byte gUnk_0875350C
.L080610C0: .4byte 0x05000080
.L080610C4:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0xe8
	str r0, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x294]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xe4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080610E0
	adds r0, r1, #0
.L080610E0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080610FE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08061102
	mov r0, r8
	bl func_080D3BC0
	b .L08061102
.L080610FE:
	movs r0, #0
	mov r8, r0
.L08061102:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L08061120
.L0806110C:
	cmp r3, #0
	beq .L0806111C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806111C:
	adds r2, #0x10
	adds r3, #0x10
.L08061120:
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L0806110C
	adds r5, r3, #0
	ldr r1, [sp, #0xe8]
	cmp r1, #1
	bne .L08061142
	cmp r5, #0
	beq .L0806113E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806113E:
	adds r5, #0x10
	b .L08061164
.L08061142:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08061162
.L0806114A:
	cmp r2, #0
	beq .L0806115A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806115A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806114A
.L08061162:
	adds r5, r2, #0
.L08061164:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08061174
.L0806116E:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806116E
.L08061174:
	cmp r0, #0
	beq .L0806117C
	bl free
.L0806117C:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08061188:
	movs r0, #4
	str r0, [sp, #0x1d0]
	movs r0, #0x20
	movs r1, #0
	mov r2, sl
	strh r0, [r2]
	str r1, [r2, #4]
	ldr r0, .L080611C8 @ =gUnk_08752F8C
	str r0, [r2, #8]
	ldr r0, .L080611CC @ =gUnk_0875300C
	str r0, [r2, #0xc]
	ldr r3, [sp, #0x1c4]
	ldr r4, .L080611D0 @ =0x00000594
	adds r6, r3, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080611D4
	cmp r1, #0
	beq .L080611BC
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L080611BC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r3, #7
	str r3, [sp, #0x210]
	b .L080612AC
	.align 2, 0
.L080611C8: .4byte gUnk_08752F8C
.L080611CC: .4byte gUnk_0875300C
.L080611D0: .4byte 0x00000594
.L080611D4:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0xf0
	str r0, [r1]
	ldr r3, [r6]
	ldr r4, [sp, #0x294]
	subs r0, r4, r3
	asrs r4, r0, #4
	add r0, sp, #0xec
	str r4, [r0]
	ldr r2, [r1]
	mov sb, r1
	adds r1, r3, #0
	cmp r4, r2
	bhs .L080611F4
	mov r0, sb
.L080611F4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08061214
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08061210
	mov r0, r8
	bl func_080D3BC0
.L08061210:
	ldr r1, [r6]
	b .L08061218
.L08061214:
	movs r0, #0
	mov r8, r0
.L08061218:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r3, r1, #0
	adds r2, r5, #0
	ldr r5, [sp, #0x1d0]
	adds r5, #3
	str r5, [sp, #0x210]
	ldr r7, [sp, #0x294]
	cmp r3, r7
	beq .L08061246
.L0806122C:
	cmp r2, #0
	beq .L0806123C
	adds r0, r2, #0
	adds r1, r3, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806123C:
	adds r3, #0x10
	adds r2, #0x10
	ldr r0, [sp, #0x294]
	cmp r3, r0
	bne .L0806122C
.L08061246:
	adds r5, r2, #0
	mov r2, sb
	ldr r1, [r2]
	cmp r1, #1
	bne .L08061264
	cmp r5, #0
	beq .L08061260
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08061260:
	adds r5, #0x10
	b .L08061286
.L08061264:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08061284
.L0806126C:
	cmp r2, #0
	beq .L0806127C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L0806127C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806126C
.L08061284:
	adds r5, r2, #0
.L08061286:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08061296
.L08061290:
	adds r0, #0x10
	cmp r0, r2
	bne .L08061290
.L08061296:
	cmp r1, #0
	beq .L080612A0
	adds r0, r1, #0
	bl free
.L080612A0:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080612AC:
	ldr r2, [sp, #0x1c4]
	ldr r3, .L08061334 @ =0x0000058C
	adds r0, r2, r3
	ldr r0, [r0]
	ldr r4, .L08061338 @ =0x00001AA8
	adds r0, r0, r4
	ldr r0, [r0]
	ldr r5, [sp, #0x1cc]
	ldr r1, [r5, #0x18]
	ldr r7, [sp, #0x1d0]
	lsls r4, r7, #6
	adds r1, r1, r4
	adds r1, #0x2c
	movs r2, #0x90
	lsls r2, r2, #1
	movs r5, #0x20
	str r5, [sp]
	movs r3, #0
	bl func_0804EDB4
	ldr r1, [sp, #0x1cc]
	ldr r0, [r1, #0x18]
	adds r0, r0, r4
	adds r0, #0x2e
	ldr r2, [sp, #0x1f0]
	lsrs r1, r2, #0x10
	movs r4, #0
	str r4, [sp]
	str r5, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x210]
	str r3, [sp, #0x1d0]
	lsls r0, r3, #3
	mov r5, sl
	strh r0, [r5]
	str r4, [r5, #4]
	ldr r0, .L0806133C @ =gUnk_087518CC
	str r0, [r5, #8]
	ldr r0, .L08061340 @ =gUnk_0875194C
	str r0, [r5, #0xc]
	ldr r7, [sp, #0x1c4]
	ldr r0, .L08061344 @ =0x00000594
	adds r6, r7, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08061348
	cmp r1, #0
	beq .L08061320
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08061320:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r5, [sp, #0x1d0]
	lsls r5, r5, #6
	str r5, [sp, #0x220]
	ldr r7, [sp, #0x1d0]
	adds r7, #4
	str r7, [sp, #0x214]
	b .L08061426
	.align 2, 0
.L08061334: .4byte 0x0000058C
.L08061338: .4byte 0x00001AA8
.L0806133C: .4byte gUnk_087518CC
.L08061340: .4byte gUnk_0875194C
.L08061344: .4byte 0x00000594
.L08061348:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0xf8
	str r0, [r1]
	ldr r3, [r6]
	ldr r2, [sp, #0x294]
	subs r0, r2, r3
	asrs r4, r0, #4
	add r0, sp, #0xf4
	str r4, [r0]
	ldr r2, [r1]
	mov sb, r1
	adds r1, r3, #0
	cmp r4, r2
	bhs .L08061368
	mov r0, sb
.L08061368:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08061388
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08061384
	mov r0, r8
	bl func_080D3BC0
.L08061384:
	ldr r1, [r6]
	b .L0806138C
.L08061388:
	movs r0, #0
	mov r8, r0
.L0806138C:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r3, r1, #0
	adds r2, r5, #0
	ldr r4, [sp, #0x1d0]
	lsls r4, r4, #6
	str r4, [sp, #0x220]
	ldr r5, [sp, #0x1d0]
	adds r5, #4
	str r5, [sp, #0x214]
	ldr r7, [sp, #0x294]
	cmp r3, r7
	beq .L080613C0
.L080613A6:
	cmp r2, #0
	beq .L080613B6
	adds r0, r2, #0
	adds r1, r3, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080613B6:
	adds r3, #0x10
	adds r2, #0x10
	ldr r0, [sp, #0x294]
	cmp r3, r0
	bne .L080613A6
.L080613C0:
	adds r5, r2, #0
	mov r2, sb
	ldr r1, [r2]
	cmp r1, #1
	bne .L080613DE
	cmp r5, #0
	beq .L080613DA
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L080613DA:
	adds r5, #0x10
	b .L08061400
.L080613DE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080613FE
.L080613E6:
	cmp r2, #0
	beq .L080613F6
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L080613F6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080613E6
.L080613FE:
	adds r5, r2, #0
.L08061400:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08061410
.L0806140A:
	adds r0, #0x10
	cmp r0, r2
	bne .L0806140A
.L08061410:
	cmp r1, #0
	beq .L0806141A
	adds r0, r1, #0
	bl free
.L0806141A:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08061426:
	movs r4, #0xc
	movs r5, #2
	add r0, sp, #0xfc
	strh r4, [r0]
	ldr r2, [sp, #0x248]
	strh r5, [r2, #2]
	ldr r0, [r0]
	ldr r1, [sp, #0x20c]
	movs r2, #0
	bl func_0804E7A0
	ldr r3, [sp, #0x1c4]
	ldr r7, .L080614A0 @ =0x0000058C
	adds r0, r3, r7
	ldr r0, [r0]
	ldr r1, .L080614A4 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E4E0
	adds r1, r0, #0
	add r0, sp, #0x100
	strh r4, [r0]
	ldr r2, [sp, #0x24c]
	strh r5, [r2, #2]
	ldr r0, [r0]
	str r1, [sp]
	ldr r1, [sp, #0x20c]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r3, [sp, #0x1c4]
	ldr r0, [r3]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r6, r0, #0
	add r0, sp, #0x48
	ldr r1, [sp, #0x20c]
	ldr r2, .L080614A8 @ =0x06003000
	bl func_08008F0C
	ldr r4, [sp, #0x228]
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080614AC
	cmp r1, #0
	beq .L08061498
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08061498:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08061578
	.align 2, 0
.L080614A0: .4byte 0x0000058C
.L080614A4: .4byte 0x00001BD8
.L080614A8: .4byte 0x06003000
.L080614AC:
	str r1, [sp, #0x294]
	movs r0, #1
	add r2, sp, #0x108
	str r0, [r2]
	ldr r0, [r6]
	ldr r3, [sp, #0x294]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r1, sp, #0x104
	str r4, [r1]
	adds r3, r2, #0
	ldr r0, [r2]
	cmp r4, r0
	bhs .L080614CA
	adds r1, r3, #0
.L080614CA:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080614E8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080614EC
	mov r0, r8
	bl func_080D3BC0
	b .L080614EC
.L080614E8:
	movs r0, #0
	mov r8, r0
.L080614EC:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x294]
	cmp r2, r4
	beq .L08061514
.L080614FA:
	cmp r3, #0
	beq .L0806150A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806150A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x294]
	cmp r2, r5
	bne .L080614FA
.L08061514:
	adds r5, r3, #0
	add r0, sp, #0x108
	ldr r0, [r0]
	cmp r0, #1
	bne .L08061532
	cmp r5, #0
	beq .L0806152E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806152E:
	adds r5, #0x10
	b .L08061554
.L08061532:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08061552
.L0806153A:
	cmp r2, #0
	beq .L0806154A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806154A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806153A
.L08061552:
	adds r5, r2, #0
.L08061554:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08061564
.L0806155E:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806155E
.L08061564:
	cmp r0, #0
	beq .L0806156C
	bl free
.L0806156C:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08061578:
	ldr r2, [sp, #0x1cc]
	ldr r0, [r2, #0x18]
	ldr r3, [sp, #0x220]
	adds r0, r0, r3
	adds r0, #4
	movs r1, #0xc0
	lsls r1, r1, #1
	movs r2, #0
	str r2, [sp]
	movs r6, #0x20
	str r6, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	ldr r5, [sp, #0x1c4]
	ldr r7, .L08061658 @ =0x0000058C
	adds r4, r5, r7
	ldr r0, [r4]
	ldr r5, .L0806165C @ =0x00001BD8
	adds r0, r0, r5
	bl func_0800E53C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080615CA
	ldr r1, [sp, #0x1d0]
	adds r1, #2
	ldr r2, [sp, #0x1cc]
	ldr r0, [r2, #0x18]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r0, #4
	movs r1, #0x5d
	movs r2, #4
	str r2, [sp]
	str r6, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
.L080615CA:
	ldr r0, [r4]
	adds r0, r0, r5
	bl func_0800E530
	adds r6, r0, #0
	movs r4, #0
	cmp r4, r6
	bhs .L0806160A
	ldr r0, [sp, #0x1d0]
	adds r0, #2
	lsls r0, r0, #6
	mov r8, r0
	movs r5, #8
	movs r3, #0x5c
	lsls r7, r3, #0x10
.L080615E8:
	ldr r1, [sp, #0x1cc]
	ldr r0, [r1, #0x18]
	add r0, r8
	adds r0, r0, r5
	movs r1, #3
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r7, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #2
	adds r4, #1
	cmp r4, r6
	blo .L080615E8
.L0806160A:
	ldr r2, [sp, #0x214]
	str r2, [sp, #0x1d0]
	ldr r3, [sp, #0x1c4]
	ldr r5, .L08061658 @ =0x0000058C
	adds r4, r3, r5
	ldr r0, [r4]
	ldr r7, .L08061660 @ =0x00001CD4
	adds r0, r0, r7
	bl func_080A0504
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08061628
	bl sub_08061E00
.L08061628:
	ldr r0, [r4]
	adds r1, r7, #0
	adds r0, r0, r1
	bl func_080A0490
	str r0, [sp, #0x1d4]
	ldr r0, [r4]
	adds r2, r7, #0
	adds r0, r0, r2
	ldr r1, [sp, #0x1d4]
	bl func_080A01F8
	str r0, [sp, #0x1d8]
	ldr r0, [sp, #0x1d4]
	subs r0, #3
	cmp r0, #0x1c
	bls .L0806164C
	b .L08061754
.L0806164C:
	lsls r0, r0, #2
	ldr r1, .L08061664 @ =.L08061668
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08061658: .4byte 0x0000058C
.L0806165C: .4byte 0x00001BD8
.L08061660: .4byte 0x00001CD4
.L08061664: .4byte .L08061668
.L08061668: @ jump table
	.4byte .L080616DC @ case 0
	.4byte .L08061754 @ case 1
	.4byte .L08061754 @ case 2
	.4byte .L08061754 @ case 3
	.4byte .L08061754 @ case 4
	.4byte .L08061754 @ case 5
	.4byte .L08061754 @ case 6
	.4byte .L08061754 @ case 7
	.4byte .L08061754 @ case 8
	.4byte .L080616F0 @ case 9
	.4byte .L08061754 @ case 10
	.4byte .L08061754 @ case 11
	.4byte .L08061754 @ case 12
	.4byte .L08061754 @ case 13
	.4byte .L08061754 @ case 14
	.4byte .L08061754 @ case 15
	.4byte .L08061704 @ case 16
	.4byte .L08061754 @ case 17
	.4byte .L0806172C @ case 18
	.4byte .L08061754 @ case 19
	.4byte .L08061754 @ case 20
	.4byte .L08061754 @ case 21
	.4byte .L08061718 @ case 22
	.4byte .L08061754 @ case 23
	.4byte .L08061754 @ case 24
	.4byte .L08061754 @ case 25
	.4byte .L08061754 @ case 26
	.4byte .L08061754 @ case 27
	.4byte .L08061740 @ case 28
.L080616DC:
	ldr r0, .L080616E8 @ =gUnk_08751A0C
	mov r3, sl
	str r0, [r3, #8]
	ldr r0, .L080616EC @ =gUnk_08751A8C
	str r0, [r3, #0xc]
	b .L08061758
	.align 2, 0
.L080616E8: .4byte gUnk_08751A0C
.L080616EC: .4byte gUnk_08751A8C
.L080616F0:
	ldr r0, .L080616FC @ =gUnk_08752E4C
	mov r4, sl
	str r0, [r4, #8]
	ldr r0, .L08061700 @ =gUnk_08752ECC
	str r0, [r4, #0xc]
	b .L08061758
	.align 2, 0
.L080616FC: .4byte gUnk_08752E4C
.L08061700: .4byte gUnk_08752ECC
.L08061704:
	ldr r0, .L08061710 @ =gUnk_087524AC
	mov r5, sl
	str r0, [r5, #8]
	ldr r0, .L08061714 @ =gUnk_0875252C
	str r0, [r5, #0xc]
	b .L08061758
	.align 2, 0
.L08061710: .4byte gUnk_087524AC
.L08061714: .4byte gUnk_0875252C
.L08061718:
	ldr r0, .L08061724 @ =gUnk_0875286C
	mov r7, sl
	str r0, [r7, #8]
	ldr r0, .L08061728 @ =gUnk_087528EC
	str r0, [r7, #0xc]
	b .L08061758
	.align 2, 0
.L08061724: .4byte gUnk_0875286C
.L08061728: .4byte gUnk_087528EC
.L0806172C:
	ldr r0, .L08061738 @ =gUnk_0875302C
	mov r1, sl
	str r0, [r1, #8]
	ldr r0, .L0806173C @ =gUnk_087530AC
	str r0, [r1, #0xc]
	b .L08061758
	.align 2, 0
.L08061738: .4byte gUnk_0875302C
.L0806173C: .4byte gUnk_087530AC
.L08061740:
	ldr r0, .L0806174C @ =gUnk_0875240C
	mov r2, sl
	str r0, [r2, #8]
	ldr r0, .L08061750 @ =gUnk_0875248C
	str r0, [r2, #0xc]
	b .L08061758
	.align 2, 0
.L0806174C: .4byte gUnk_0875240C
.L08061750: .4byte gUnk_0875248C
.L08061754:
	movs r3, #0
	str r3, [sp, #0x1d8]
.L08061758:
	ldr r4, [sp, #0x1d0]
	adds r4, #5
	str r4, [sp, #0x218]
	ldr r5, [sp, #0x1d8]
	cmp r5, #0
	bne .L08061766
	b .L08061AA4
.L08061766:
	ldr r7, [sp, #0x1d0]
	lsls r0, r7, #3
	movs r1, #0
	mov r2, sl
	strh r0, [r2]
	str r1, [r2, #4]
	ldr r3, [sp, #0x1c4]
	ldr r4, .L080617C8 @ =0x00000594
	adds r6, r3, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080617D0
	cmp r1, #0
	beq .L08061790
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08061790:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r3, [sp, #0x1d0]
	lsls r3, r3, #6
	str r3, [sp, #0x220]
	movs r4, #0x8a
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x250]
	ldr r5, [sp, #0x1c4]
	ldr r7, .L080617CC @ =0x00000C5C
	adds r5, r5, r7
	mov sb, r5
	movs r0, #0x8c
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x254]
	movs r1, #0x92
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x258]
	movs r2, #0x94
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x25c]
	b .L080618D8
	.align 2, 0
.L080617C8: .4byte 0x00000594
.L080617CC: .4byte 0x00000C5C
.L080617D0:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0x110
	str r0, [r1]
	ldr r2, [r6]
	ldr r3, [sp, #0x294]
	subs r0, r3, r2
	asrs r4, r0, #4
	add r0, sp, #0x10c
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r3, sp, #0x10c
	adds r1, r2, #0
	cmp r4, r0
	bhs .L080617F2
	adds r3, r5, #0
.L080617F2:
	ldr r0, [r3]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08061812
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806180E
	mov r0, r8
	bl func_080D3BC0
.L0806180E:
	ldr r1, [r6]
	b .L08061816
.L08061812:
	movs r0, #0
	mov r8, r0
.L08061816:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r4, [sp, #0x1d0]
	lsls r4, r4, #6
	str r4, [sp, #0x220]
	movs r5, #0x8a
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x250]
	ldr r7, [sp, #0x1c4]
	ldr r0, .L08061854 @ =0x00000C5C
	adds r7, r7, r0
	mov sb, r7
	movs r1, #0x8c
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x254]
	movs r4, #0x92
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x258]
	movs r5, #0x94
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x25c]
	ldr r7, [sp, #0x1d0]
	adds r7, #5
	str r7, [sp, #0x218]
	b .L0806186C
	.align 2, 0
.L08061854: .4byte 0x00000C5C
.L08061858:
	cmp r3, #0
	beq .L08061868
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08061868:
	adds r2, #0x10
	adds r3, #0x10
.L0806186C:
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L08061858
	adds r5, r3, #0
	add r0, sp, #0x110
	ldr r0, [r0]
	cmp r0, #1
	bne .L08061890
	cmp r5, #0
	beq .L0806188C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L0806188C:
	adds r5, #0x10
	b .L080618B2
.L08061890:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080618B0
.L08061898:
	cmp r2, #0
	beq .L080618A8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L080618A8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08061898
.L080618B0:
	adds r5, r2, #0
.L080618B2:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L080618C2
.L080618BC:
	adds r0, #0x10
	cmp r0, r3
	bne .L080618BC
.L080618C2:
	cmp r1, #0
	beq .L080618CC
	adds r0, r1, #0
	bl free
.L080618CC:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080618D8:
	movs r4, #0xc
	movs r5, #2
	add r0, sp, #0x114
	strh r4, [r0]
	ldr r1, [sp, #0x250]
	strh r5, [r1, #2]
	ldr r0, [r0]
	mov r1, sb
	movs r2, #0
	bl func_0804E7A0
	ldr r2, [sp, #0x1c4]
	ldr r3, .L08061954 @ =0x0000058C
	adds r0, r2, r3
	ldr r0, [r0]
	ldr r7, .L08061958 @ =0x00001CD4
	adds r0, r0, r7
	ldr r1, [sp, #0x1d4]
	bl func_0809FE3C
	adds r1, r0, #0
	add r0, sp, #0x118
	strh r4, [r0]
	ldr r2, [sp, #0x254]
	strh r5, [r2, #2]
	ldr r0, [r0]
	str r1, [sp]
	mov r1, sb
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r3, [sp, #0x1c4]
	ldr r0, [r3]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r6, r0, #0
	add r0, sp, #0x48
	mov r1, sb
	ldr r2, .L0806195C @ =0x06003300
	bl func_08008F0C
	ldr r4, [sp, #0x228]
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08061960
	cmp r1, #0
	beq .L0806194C
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806194C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08061A2E
	.align 2, 0
.L08061954: .4byte 0x0000058C
.L08061958: .4byte 0x00001CD4
.L0806195C: .4byte 0x06003300
.L08061960:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0x120
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0x294]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x11c
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x11c
	cmp r4, r0
	bhs .L08061980
	adds r1, r2, #0
.L08061980:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806199E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080619A2
	mov r0, r8
	bl func_080D3BC0
	b .L080619A2
.L0806199E:
	movs r0, #0
	mov r8, r0
.L080619A2:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x294]
	cmp r2, r4
	beq .L080619CA
.L080619B0:
	cmp r3, #0
	beq .L080619C0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080619C0:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x294]
	cmp r2, r5
	bne .L080619B0
.L080619CA:
	adds r5, r3, #0
	add r0, sp, #0x120
	ldr r0, [r0]
	cmp r0, #1
	bne .L080619E8
	cmp r5, #0
	beq .L080619E4
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080619E4:
	adds r5, #0x10
	b .L08061A0A
.L080619E8:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08061A08
.L080619F0:
	cmp r2, #0
	beq .L08061A00
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08061A00:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080619F0
.L08061A08:
	adds r5, r2, #0
.L08061A0A:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08061A1A
.L08061A14:
	adds r1, #0x10
	cmp r1, r2
	bne .L08061A14
.L08061A1A:
	cmp r0, #0
	beq .L08061A22
	bl free
.L08061A22:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08061A2E:
	ldr r2, [sp, #0x1cc]
	ldr r0, [r2, #0x18]
	ldr r3, [sp, #0x220]
	adds r0, r0, r3
	adds r0, #4
	movs r1, #0xcc
	lsls r1, r1, #1
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	movs r0, #0xa
	add r4, sp, #0x124
	str r0, [r4]
	ldr r0, [sp, #0x1d8]
	bl GetLove__C12Bachelorette
	ldr r1, .L08061B28 @ =0x00001999
	bl __udivsi3
	add r1, sp, #0x128
	str r0, [r1]
	ldr r1, [r4]
	ldr r2, [sp, #0x258]
	cmp r1, r0
	bls .L08061A6C
	ldr r2, [sp, #0x25c]
.L08061A6C:
	ldr r6, [r2]
	movs r4, #0
	cmp r4, r6
	bhs .L08061AA4
	ldr r0, [sp, #0x1d0]
	adds r0, #2
	lsls r0, r0, #6
	mov r8, r0
	movs r5, #8
	movs r0, #0x58
	lsls r7, r0, #0x10
.L08061A82:
	ldr r1, [sp, #0x1cc]
	ldr r0, [r1, #0x18]
	add r0, r8
	adds r0, r0, r5
	movs r1, #2
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r7, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #2
	adds r4, #1
	cmp r4, r6
	blo .L08061A82
.L08061AA4:
	ldr r2, [sp, #0x1c4]
	ldr r3, .L08061B2C @ =0x0000058C
	adds r0, r2, r3
	ldr r0, [r0]
	ldr r4, .L08061B30 @ =0x00001CD4
	adds r0, r0, r4
	bl func_080A0384
	str r0, [sp, #0x1dc]
	cmp r0, #0
	bne .L08061ABC
	b .L08061DFC
.L08061ABC:
	ldr r5, [sp, #0x1d0]
	lsls r0, r5, #3
	mov r7, sl
	strh r0, [r7]
	movs r0, #0x78
	str r0, [r7, #4]
	ldr r0, .L08061B34 @ =gUnk_08751AAC
	str r0, [r7, #8]
	ldr r0, .L08061B38 @ =gUnk_08751B2C
	str r0, [r7, #0xc]
	ldr r0, [sp, #0x1c4]
	ldr r1, .L08061B3C @ =0x00000594
	adds r6, r0, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08061B40
	cmp r1, #0
	beq .L08061AEE
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08061AEE:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r5, [sp, #0x1d0]
	lsls r5, r5, #6
	str r5, [sp, #0x220]
	movs r7, #0x9a
	lsls r7, r7, #1
	add r7, sp
	str r7, [sp, #0x264]
	ldr r0, [sp, #0x1c4]
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r0, r1
	mov sb, r0
	movs r2, #0x9c
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x268]
	movs r3, #0xa2
	lsls r3, r3, #1
	add r3, sp
	str r3, [sp, #0x26c]
	movs r4, #0xa4
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x270]
	b .L08061C44
	.align 2, 0
.L08061B28: .4byte 0x00001999
.L08061B2C: .4byte 0x0000058C
.L08061B30: .4byte 0x00001CD4
.L08061B34: .4byte gUnk_08751AAC
.L08061B38: .4byte gUnk_08751B2C
.L08061B3C: .4byte 0x00000594
.L08061B40:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0x130
	str r0, [r1]
	ldr r2, [r6]
	ldr r5, [sp, #0x294]
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x12c
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r3, sp, #0x12c
	adds r1, r2, #0
	cmp r4, r0
	bhs .L08061B62
	adds r3, r5, #0
.L08061B62:
	ldr r0, [r3]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08061B82
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08061B7E
	mov r0, r8
	bl func_080D3BC0
.L08061B7E:
	ldr r1, [r6]
	b .L08061B86
.L08061B82:
	movs r0, #0
	mov r8, r0
.L08061B86:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r7, [sp, #0x1d0]
	lsls r7, r7, #6
	str r7, [sp, #0x220]
	movs r0, #0x9a
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x264]
	ldr r1, [sp, #0x1c4]
	movs r4, #0xf6
	lsls r4, r4, #4
	adds r1, r1, r4
	mov sb, r1
	movs r5, #0x9c
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x268]
	movs r7, #0xa2
	lsls r7, r7, #1
	add r7, sp
	str r7, [sp, #0x26c]
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x270]
	ldr r1, [sp, #0x294]
	cmp r2, r1
	beq .L08061BDE
.L08061BC4:
	cmp r3, #0
	beq .L08061BD4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08061BD4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L08061BC4
.L08061BDE:
	adds r5, r3, #0
	add r0, sp, #0x130
	ldr r0, [r0]
	cmp r0, #1
	bne .L08061BFC
	cmp r5, #0
	beq .L08061BF8
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08061BF8:
	adds r5, #0x10
	b .L08061C1E
.L08061BFC:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08061C1C
.L08061C04:
	cmp r2, #0
	beq .L08061C14
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08061C14:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08061C04
.L08061C1C:
	adds r5, r2, #0
.L08061C1E:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L08061C2E
.L08061C28:
	adds r0, #0x10
	cmp r0, r3
	bne .L08061C28
.L08061C2E:
	cmp r1, #0
	beq .L08061C38
	adds r0, r1, #0
	bl free
.L08061C38:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08061C44:
	movs r4, #0xc
	movs r5, #2
	add r0, sp, #0x134
	strh r4, [r0]
	ldr r1, [sp, #0x264]
	strh r5, [r1, #2]
	ldr r0, [r0]
	mov r1, sb
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [sp, #0x1dc]
	bl func_0809EACC
	adds r1, r0, #0
	add r0, sp, #0x138
	strh r4, [r0]
	ldr r2, [sp, #0x268]
	strh r5, [r2, #2]
	ldr r0, [r0]
	str r1, [sp]
	mov r1, sb
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r3, [sp, #0x1c4]
	ldr r0, [r3]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r6, r0, #0
	add r0, sp, #0x48
	mov r1, sb
	ldr r2, .L08061CB4 @ =0x06003600
	bl func_08008F0C
	ldr r4, [sp, #0x228]
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08061CB8
	cmp r1, #0
	beq .L08061CAC
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08061CAC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08061D86
	.align 2, 0
.L08061CB4: .4byte 0x06003600
.L08061CB8:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0x140
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0x294]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x13c
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x13c
	cmp r4, r0
	bhs .L08061CD8
	adds r1, r2, #0
.L08061CD8:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08061CF6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08061CFA
	mov r0, r8
	bl func_080D3BC0
	b .L08061CFA
.L08061CF6:
	movs r0, #0
	mov r8, r0
.L08061CFA:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x294]
	cmp r2, r4
	beq .L08061D22
.L08061D08:
	cmp r3, #0
	beq .L08061D18
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08061D18:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x294]
	cmp r2, r5
	bne .L08061D08
.L08061D22:
	adds r5, r3, #0
	add r0, sp, #0x140
	ldr r0, [r0]
	cmp r0, #1
	bne .L08061D40
	cmp r5, #0
	beq .L08061D3C
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08061D3C:
	adds r5, #0x10
	b .L08061D62
.L08061D40:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08061D60
.L08061D48:
	cmp r2, #0
	beq .L08061D58
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08061D58:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08061D48
.L08061D60:
	adds r5, r2, #0
.L08061D62:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08061D72
.L08061D6C:
	adds r1, #0x10
	cmp r1, r2
	bne .L08061D6C
.L08061D72:
	cmp r0, #0
	beq .L08061D7A
	bl free
.L08061D7A:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08061D86:
	ldr r2, [sp, #0x1cc]
	ldr r0, [r2, #0x18]
	ldr r3, [sp, #0x220]
	adds r0, r0, r3
	adds r0, #0x22
	movs r1, #0xd8
	lsls r1, r1, #1
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	movs r0, #0xa
	add r4, sp, #0x144
	str r0, [r4]
	ldr r0, [sp, #0x1dc]
	bl GetFriendship__C3Npc
	movs r1, #0x19
	bl __udivsi3
	add r1, sp, #0x148
	str r0, [r1]
	ldr r1, [r4]
	ldr r2, [sp, #0x26c]
	cmp r1, r0
	bls .L08061DC4
	ldr r2, [sp, #0x270]
.L08061DC4:
	ldr r6, [r2]
	movs r4, #0
	cmp r4, r6
	bhs .L08061DFC
	ldr r0, [sp, #0x1d0]
	adds r0, #2
	lsls r0, r0, #6
	mov r8, r0
	movs r5, #0x26
	movs r0, #0x58
	lsls r7, r0, #0x10
.L08061DDA:
	ldr r1, [sp, #0x1cc]
	ldr r0, [r1, #0x18]
	add r0, r8
	adds r0, r0, r5
	movs r1, #2
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r7, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #2
	adds r4, #1
	cmp r4, r6
	blo .L08061DDA
.L08061DFC:
	ldr r2, [sp, #0x218]
	str r2, [sp, #0x1d0]

	thumb_func_start sub_08061E00
sub_08061E00: @ 0x08061E00
	ldr r3, [sp, #0x1d0]
	lsls r1, r3, #3
	movs r0, #0
	mov r4, sl
	strh r1, [r4]
	str r0, [r4, #4]
	ldr r0, .L08061E48 @ =gUnk_08751E6C
	str r0, [r4, #8]
	ldr r0, .L08061E4C @ =gUnk_08751EEC
	str r0, [r4, #0xc]
	ldr r5, [sp, #0x1c4]
	ldr r7, .L08061E50 @ =0x00000594
	adds r6, r5, r7
	ldr r2, [r6, #4]
	ldr r0, [r6, #0xc]
	str r1, [sp, #0x21c]
	cmp r2, r0
	beq .L08061E54
	cmp r2, #0
	beq .L08061E34
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08061E34:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r5, [sp, #0x1d0]
	lsls r5, r5, #6
	str r5, [sp, #0x220]
	ldr r7, [sp, #0x1d0]
	adds r7, #4
	str r7, [sp, #0x214]
	b .L08061F30
	.align 2, 0
.L08061E48: .4byte gUnk_08751E6C
.L08061E4C: .4byte gUnk_08751EEC
.L08061E50: .4byte 0x00000594
.L08061E54:
	mov sb, r2
	movs r0, #1
	add r1, sp, #0x150
	str r0, [r1]
	ldr r2, [r6]
	mov r3, sb
	subs r0, r3, r2
	asrs r4, r0, #4
	add r0, sp, #0x14c
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r3, sp, #0x14c
	adds r1, r2, #0
	cmp r4, r0
	bhs .L08061E76
	adds r3, r5, #0
.L08061E76:
	ldr r0, [r3]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08061E96
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08061E92
	mov r0, r8
	bl func_080D3BC0
.L08061E92:
	ldr r1, [r6]
	b .L08061E9A
.L08061E96:
	movs r0, #0
	mov r8, r0
.L08061E9A:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r4, [sp, #0x1d0]
	lsls r4, r4, #6
	str r4, [sp, #0x220]
	ldr r5, [sp, #0x1d0]
	adds r5, #4
	str r5, [sp, #0x214]
	cmp r2, sb
	beq .L08061ECA
.L08061EB2:
	cmp r3, #0
	beq .L08061EC2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08061EC2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sb
	bne .L08061EB2
.L08061ECA:
	adds r5, r3, #0
	add r0, sp, #0x150
	ldr r0, [r0]
	cmp r0, #1
	bne .L08061EE8
	cmp r5, #0
	beq .L08061EE4
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08061EE4:
	adds r5, #0x10
	b .L08061F0A
.L08061EE8:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08061F08
.L08061EF0:
	cmp r2, #0
	beq .L08061F00
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08061F00:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08061EF0
.L08061F08:
	adds r5, r2, #0
.L08061F0A:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L08061F1A
.L08061F14:
	adds r0, #0x10
	cmp r0, r3
	bne .L08061F14
.L08061F1A:
	cmp r1, #0
	beq .L08061F24
	adds r0, r1, #0
	bl free
.L08061F24:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08061F30:
	ldr r2, [sp, #0x1c4]
	ldr r3, .L08061FD8 @ =0x0000058C
	adds r6, r2, r3
	ldr r0, [r6]
	ldr r7, .L08061FDC @ =0x00001C70
	adds r0, r0, r7
	bl IsFestivalWinner__C6Animal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08061F64
	ldr r1, [sp, #0x1d0]
	subs r1, #2
	ldr r4, [sp, #0x1cc]
	ldr r0, [r4, #0x18]
	lsls r1, r1, #6
	adds r0, r0, r1
	movs r1, #0x54
	movs r2, #1
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
.L08061F64:
	movs r4, #0xc
	movs r5, #2
	add r0, sp, #0x154
	strh r4, [r0]
	ldr r1, [sp, #0x274]
	strh r5, [r1, #2]
	ldr r0, [r0]
	ldr r1, [sp, #0x224]
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [r6]
	adds r0, r0, r7
	bl GetName__C6Animal
	adds r1, r0, #0
	add r0, sp, #0x158
	strh r4, [r0]
	ldr r2, [sp, #0x278]
	strh r5, [r2, #2]
	ldr r0, [r0]
	str r1, [sp]
	ldr r1, [sp, #0x224]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r3, [sp, #0x1c4]
	ldr r0, [r3]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r6, r0, #0
	add r0, sp, #0x48
	ldr r1, [sp, #0x224]
	ldr r2, .L08061FE0 @ =0x06003900
	bl func_08008F0C
	ldr r4, [sp, #0x228]
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08061FE4
	cmp r1, #0
	beq .L08061FCE
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08061FCE:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080620B2
	.align 2, 0
.L08061FD8: .4byte 0x0000058C
.L08061FDC: .4byte 0x00001C70
.L08061FE0: .4byte 0x06003900
.L08061FE4:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0x160
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0x294]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x15c
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x15c
	cmp r4, r0
	bhs .L08062004
	adds r1, r2, #0
.L08062004:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08062022
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08062026
	mov r0, r8
	bl func_080D3BC0
	b .L08062026
.L08062022:
	movs r0, #0
	mov r8, r0
.L08062026:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x294]
	cmp r2, r4
	beq .L0806204E
.L08062034:
	cmp r3, #0
	beq .L08062044
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08062044:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x294]
	cmp r2, r5
	bne .L08062034
.L0806204E:
	adds r5, r3, #0
	add r0, sp, #0x160
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806206C
	cmp r5, #0
	beq .L08062068
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08062068:
	adds r5, #0x10
	b .L0806208E
.L0806206C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0806208C
.L08062074:
	cmp r2, #0
	beq .L08062084
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08062084:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08062074
.L0806208C:
	adds r5, r2, #0
.L0806208E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806209E
.L08062098:
	adds r1, #0x10
	cmp r1, r2
	bne .L08062098
.L0806209E:
	cmp r0, #0
	beq .L080620A6
	bl free
.L080620A6:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080620B2:
	ldr r2, [sp, #0x1cc]
	ldr r0, [r2, #0x18]
	ldr r3, [sp, #0x220]
	adds r0, r0, r3
	adds r0, #4
	movs r1, #0xe4
	lsls r1, r1, #1
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	movs r0, #0xa
	add r4, sp, #0x164
	str r0, [r4]
	ldr r5, [sp, #0x1c4]
	ldr r7, .L080621A8 @ =0x0000058C
	adds r0, r5, r7
	ldr r0, [r0]
	ldr r1, .L080621AC @ =0x00001C70
	adds r0, r0, r1
	bl GetAffection__C6Animal
	movs r1, #0x19
	bl __udivsi3
	add r1, sp, #0x168
	str r0, [r1]
	ldr r1, [r4]
	ldr r2, [sp, #0x27c]
	cmp r1, r0
	bls .L080620FA
	ldr r2, [sp, #0x280]
.L080620FA:
	ldr r6, [r2]
	movs r4, #0
	cmp r4, r6
	bhs .L08062132
	ldr r0, [sp, #0x1d0]
	adds r0, #2
	lsls r0, r0, #6
	mov r8, r0
	movs r5, #8
	movs r2, #0x58
	lsls r7, r2, #0x10
.L08062110:
	ldr r3, [sp, #0x1cc]
	ldr r0, [r3, #0x18]
	add r0, r8
	adds r0, r0, r5
	movs r1, #2
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r7, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #2
	adds r4, #1
	cmp r4, r6
	blo .L08062110
.L08062132:
	ldr r4, [sp, #0x1c4]
	ldr r5, .L080621A8 @ =0x0000058C
	adds r0, r4, r5
	ldr r0, [r0]
	adds r0, #0x14
	bl GetHorse__C4Farm
	str r0, [sp, #0x1e0]
	cmp r0, #0
	bne .L08062148
	b .L080624A4
.L08062148:
	add r7, sp, #0x21c
	ldrh r0, [r7]
	mov r7, sl
	strh r0, [r7]
	movs r0, #0x78
	str r0, [r7, #4]
	ldr r0, .L080621B0 @ =gUnk_087527CC
	str r0, [r7, #8]
	ldr r0, .L080621B4 @ =gUnk_0875284C
	str r0, [r7, #0xc]
	ldr r0, .L080621B8 @ =0x00000594
	adds r6, r4, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080621C0
	cmp r1, #0
	beq .L08062178
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062178:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r5, #0xba
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x284]
	ldr r7, [sp, #0x1c4]
	ldr r0, .L080621BC @ =0x0000186C
	adds r7, r7, r0
	mov sb, r7
	movs r1, #0xbc
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x288]
	movs r2, #0xc2
	lsls r2, r2, #1
	add r2, sp
	str r2, [sp, #0x28c]
	movs r3, #0xc4
	lsls r3, r3, #1
	add r3, sp
	str r3, [sp, #0x290]
	b .L080622C0
	.align 2, 0
.L080621A8: .4byte 0x0000058C
.L080621AC: .4byte 0x00001C70
.L080621B0: .4byte gUnk_087527CC
.L080621B4: .4byte gUnk_0875284C
.L080621B8: .4byte 0x00000594
.L080621BC: .4byte 0x0000186C
.L080621C0:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0x170
	str r0, [r1]
	ldr r2, [r6]
	ldr r4, [sp, #0x294]
	subs r0, r4, r2
	asrs r4, r0, #4
	add r0, sp, #0x16c
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r3, sp, #0x16c
	adds r1, r2, #0
	cmp r4, r0
	bhs .L080621E2
	adds r3, r5, #0
.L080621E2:
	ldr r0, [r3]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08062202
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080621FE
	mov r0, r8
	bl func_080D3BC0
.L080621FE:
	ldr r1, [r6]
	b .L08062206
.L08062202:
	movs r0, #0
	mov r8, r0
.L08062206:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r2, r1, #0
	adds r3, r5, #0
	movs r5, #0xba
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x284]
	ldr r7, [sp, #0x1c4]
	ldr r0, .L08062274 @ =0x0000186C
	adds r7, r7, r0
	mov sb, r7
	movs r1, #0xbc
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x288]
	movs r4, #0xc2
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x28c]
	movs r5, #0xc4
	lsls r5, r5, #1
	add r5, sp
	str r5, [sp, #0x290]
	ldr r7, [sp, #0x294]
	cmp r2, r7
	beq .L08062256
.L0806223C:
	cmp r3, #0
	beq .L0806224C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806224C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L0806223C
.L08062256:
	adds r5, r3, #0
	add r0, sp, #0x170
	ldr r0, [r0]
	cmp r0, #1
	bne .L08062278
	cmp r5, #0
	beq .L08062270
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062270:
	adds r5, #0x10
	b .L0806229A
	.align 2, 0
.L08062274: .4byte 0x0000186C
.L08062278:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08062298
.L08062280:
	cmp r2, #0
	beq .L08062290
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062290:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08062280
.L08062298:
	adds r5, r2, #0
.L0806229A:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L080622AA
.L080622A4:
	adds r0, #0x10
	cmp r0, r3
	bne .L080622A4
.L080622AA:
	cmp r1, #0
	beq .L080622B4
	adds r0, r1, #0
	bl free
.L080622B4:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080622C0:
	ldr r0, [sp, #0x1e0]
	bl IsFestivalWinner__C6Animal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080622EC
	ldr r1, [sp, #0x1d0]
	subs r1, #2
	ldr r2, [sp, #0x1cc]
	ldr r0, [r2, #0x18]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r0, #0x1e
	movs r1, #0x54
	movs r2, #1
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
.L080622EC:
	movs r4, #0xc
	movs r5, #2
	add r0, sp, #0x174
	strh r4, [r0]
	ldr r3, [sp, #0x284]
	strh r5, [r3, #2]
	ldr r0, [r0]
	mov r1, sb
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [sp, #0x1e0]
	bl GetName__C6Animal
	adds r1, r0, #0
	add r0, sp, #0x178
	strh r4, [r0]
	ldr r4, [sp, #0x288]
	strh r5, [r4, #2]
	ldr r0, [r0]
	str r1, [sp]
	mov r1, sb
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r5, [sp, #0x1c4]
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r6, r0, #0
	add r0, sp, #0x48
	mov r1, sb
	ldr r2, .L0806235C @ =0x06003C00
	bl func_08008F0C
	ldr r7, [sp, #0x228]
	mov r8, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08062360
	cmp r1, #0
	beq .L08062354
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08062354:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806242E
	.align 2, 0
.L0806235C: .4byte 0x06003C00
.L08062360:
	str r1, [sp, #0x294]
	movs r0, #1
	add r1, sp, #0x180
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x294]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x17c
	str r4, [r0]
	adds r2, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x17c
	cmp r4, r0
	bhs .L08062380
	adds r1, r2, #0
.L08062380:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806239E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080623A2
	mov r0, sb
	bl func_080D3BC0
	b .L080623A2
.L0806239E:
	movs r0, #0
	mov sb, r0
.L080623A2:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x294]
	cmp r2, r7
	beq .L080623CA
.L080623B0:
	cmp r3, #0
	beq .L080623C0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080623C0:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x294]
	cmp r2, r0
	bne .L080623B0
.L080623CA:
	adds r5, r3, #0
	add r0, sp, #0x180
	ldr r0, [r0]
	cmp r0, #1
	bne .L080623E8
	cmp r5, #0
	beq .L080623E4
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080623E4:
	adds r5, #0x10
	b .L0806240A
.L080623E8:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08062408
.L080623F0:
	cmp r2, #0
	beq .L08062400
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08062400:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080623F0
.L08062408:
	adds r5, r2, #0
.L0806240A:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806241A
.L08062414:
	adds r1, #0x10
	cmp r1, r2
	bne .L08062414
.L0806241A:
	cmp r0, #0
	beq .L08062422
	bl free
.L08062422:
	ldr r0, [sp, #0x298]
	add r0, sb
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806242E:
	ldr r1, [sp, #0x1cc]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x220]
	adds r0, r0, r2
	adds r0, #0x22
	movs r1, #0xf0
	lsls r1, r1, #1
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	movs r0, #0xa
	add r4, sp, #0x184
	str r0, [r4]
	ldr r0, [sp, #0x1e0]
	bl GetAffection__C6Animal
	movs r1, #0x19
	bl __udivsi3
	add r1, sp, #0x188
	str r0, [r1]
	ldr r1, [r4]
	ldr r2, [sp, #0x28c]
	cmp r1, r0
	bls .L0806246C
	ldr r2, [sp, #0x290]
.L0806246C:
	ldr r6, [r2]
	movs r4, #0
	cmp r4, r6
	bhs .L080624A4
	ldr r0, [sp, #0x1d0]
	adds r0, #2
	lsls r0, r0, #6
	mov r8, r0
	movs r5, #0x26
	movs r3, #0x58
	lsls r7, r3, #0x10
.L08062482:
	ldr r1, [sp, #0x1cc]
	ldr r0, [r1, #0x18]
	add r0, r8
	adds r0, r0, r5
	movs r1, #2
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r7, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #2
	adds r4, #1
	cmp r4, r6
	blo .L08062482
.L080624A4:
	ldr r2, [sp, #0x214]
	str r2, [sp, #0x1d0]
	lsls r0, r2, #3
	mov r3, sl
	strh r0, [r3]
	movs r0, #0x20
	str r0, [r3, #4]
	ldr r0, .L080624E8 @ =gUnk_0875268C
	str r0, [r3, #8]
	ldr r0, .L080624EC @ =gUnk_0875270C
	str r0, [r3, #0xc]
	ldr r4, [sp, #0x1c4]
	ldr r5, .L080624F0 @ =0x00000594
	adds r6, r4, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080624F4
	cmp r1, #0
	beq .L080624D8
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L080624D8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r4, [sp, #0x1d0]
	lsls r4, r4, #6
	str r4, [sp, #0x220]
	b .L080625CA
	.align 2, 0
.L080624E8: .4byte gUnk_0875268C
.L080624EC: .4byte gUnk_0875270C
.L080624F0: .4byte 0x00000594
.L080624F4:
	mov sb, r1
	movs r0, #1
	add r1, sp, #0x190
	str r0, [r1]
	ldr r2, [r6]
	mov r5, sb
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x18c
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r3, sp, #0x18c
	adds r1, r2, #0
	cmp r4, r0
	bhs .L08062516
	adds r3, r5, #0
.L08062516:
	ldr r0, [r3]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08062536
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08062532
	mov r0, r8
	bl func_080D3BC0
.L08062532:
	ldr r1, [r6]
	b .L0806253A
.L08062536:
	movs r0, #0
	mov r8, r0
.L0806253A:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r7, [sp, #0x1d0]
	lsls r7, r7, #6
	str r7, [sp, #0x220]
	cmp r2, sb
	beq .L08062564
.L0806254C:
	cmp r3, #0
	beq .L0806255C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806255C:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sb
	bne .L0806254C
.L08062564:
	adds r5, r3, #0
	add r0, sp, #0x190
	ldr r0, [r0]
	cmp r0, #1
	bne .L08062582
	cmp r5, #0
	beq .L0806257E
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L0806257E:
	adds r5, #0x10
	b .L080625A4
.L08062582:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080625A2
.L0806258A:
	cmp r2, #0
	beq .L0806259A
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L0806259A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806258A
.L080625A2:
	adds r5, r2, #0
.L080625A4:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L080625B4
.L080625AE:
	adds r0, #0x10
	cmp r0, r3
	bne .L080625AE
.L080625B4:
	cmp r1, #0
	beq .L080625BE
	adds r0, r1, #0
	bl free
.L080625BE:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080625CA:
	ldr r1, [sp, #0x1c4]
	ldr r2, .L08062644 @ =0x0000058C
	adds r0, r1, r2
	ldr r0, [r0]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl CountChickens__C4Coop
	ldr r4, [sp, #0x1cc]
	ldr r1, [r4, #0x18]
	ldr r5, [sp, #0x220]
	adds r1, r1, r5
	adds r1, #0x12
	movs r2, #0x90
	lsls r2, r2, #1
	movs r4, #0x20
	str r4, [sp]
	movs r3, #0
	bl func_0804EDB4
	ldr r7, [sp, #0x1cc]
	ldr r0, [r7, #0x18]
	adds r0, r0, r5
	adds r0, #0x14
	ldr r2, [sp, #0x238]
	lsrs r1, r2, #0x10
	movs r2, #0
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	movs r0, #0x94
	mov r3, sl
	str r0, [r3, #4]
	ldr r0, .L08062648 @ =gUnk_087525EC
	str r0, [r3, #8]
	ldr r0, .L0806264C @ =gUnk_0875266C
	str r0, [r3, #0xc]
	ldr r4, [sp, #0x1c4]
	ldr r5, .L08062650 @ =0x00000594
	adds r6, r4, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08062654
	cmp r1, #0
	beq .L0806263A
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L0806263A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08062724
	.align 2, 0
.L08062644: .4byte 0x0000058C
.L08062648: .4byte gUnk_087525EC
.L0806264C: .4byte gUnk_0875266C
.L08062650: .4byte 0x00000594
.L08062654:
	mov sb, r1
	movs r0, #1
	add r1, sp, #0x198
	str r0, [r1]
	ldr r2, [r6]
	mov r4, sb
	subs r0, r4, r2
	asrs r4, r0, #4
	add r0, sp, #0x194
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r3, sp, #0x194
	adds r1, r2, #0
	cmp r4, r0
	bhs .L08062676
	adds r3, r5, #0
.L08062676:
	ldr r0, [r3]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08062696
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08062692
	mov r0, r8
	bl func_080D3BC0
.L08062692:
	ldr r1, [r6]
	b .L0806269A
.L08062696:
	movs r0, #0
	mov r8, r0
.L0806269A:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sb
	beq .L080626BE
.L080626A6:
	cmp r3, #0
	beq .L080626B6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080626B6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sb
	bne .L080626A6
.L080626BE:
	adds r5, r3, #0
	add r0, sp, #0x198
	ldr r0, [r0]
	cmp r0, #1
	bne .L080626DC
	cmp r5, #0
	beq .L080626D8
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L080626D8:
	adds r5, #0x10
	b .L080626FE
.L080626DC:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080626FC
.L080626E4:
	cmp r2, #0
	beq .L080626F4
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L080626F4:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080626E4
.L080626FC:
	adds r5, r2, #0
.L080626FE:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L0806270E
.L08062708:
	adds r0, #0x10
	cmp r0, r3
	bne .L08062708
.L0806270E:
	cmp r1, #0
	beq .L08062718
	adds r0, r1, #0
	bl free
.L08062718:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08062724:
	ldr r2, [sp, #0x1c4]
	ldr r3, .L080627AC @ =0x0000058C
	adds r0, r2, r3
	ldr r0, [r0]
	movs r4, #0x82
	lsls r4, r4, #3
	adds r0, r0, r4
	bl GetStoredBushelCount__C4Coop
	ldr r5, [sp, #0x1cc]
	ldr r1, [r5, #0x18]
	ldr r7, [sp, #0x1d0]
	lsls r5, r7, #6
	adds r1, r1, r5
	adds r1, #0x32
	movs r2, #0x90
	lsls r2, r2, #1
	movs r4, #0x20
	str r4, [sp]
	movs r3, #0
	bl func_0804EDB4
	ldr r1, [sp, #0x1cc]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, #0x34
	ldr r2, [sp, #0x1e8]
	lsrs r1, r2, #0x10
	movs r2, #0
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	adds r3, r7, #0
	adds r3, #3
	str r3, [sp, #0x1d0]
	lsls r0, r3, #3
	mov r5, sl
	strh r0, [r5]
	str r4, [r5, #4]
	ldr r0, .L080627B0 @ =gUnk_08751B4C
	str r0, [r5, #8]
	ldr r0, .L080627B4 @ =gUnk_08751BCC
	str r0, [r5, #0xc]
	ldr r7, [sp, #0x1c4]
	ldr r0, .L080627B8 @ =0x00000594
	adds r6, r7, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080627BC
	cmp r1, #0
	beq .L0806279E
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L0806279E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r5, [sp, #0x1d0]
	lsls r5, r5, #6
	str r5, [sp, #0x220]
	b .L08062892
	.align 2, 0
.L080627AC: .4byte 0x0000058C
.L080627B0: .4byte gUnk_08751B4C
.L080627B4: .4byte gUnk_08751BCC
.L080627B8: .4byte 0x00000594
.L080627BC:
	mov sb, r1
	movs r0, #1
	add r1, sp, #0x1a0
	str r0, [r1]
	ldr r2, [r6]
	mov r7, sb
	subs r0, r7, r2
	asrs r4, r0, #4
	add r0, sp, #0x19c
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r3, sp, #0x19c
	adds r1, r2, #0
	cmp r4, r0
	bhs .L080627DE
	adds r3, r5, #0
.L080627DE:
	ldr r0, [r3]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080627FE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080627FA
	mov r0, r8
	bl func_080D3BC0
.L080627FA:
	ldr r1, [r6]
	b .L08062802
.L080627FE:
	movs r0, #0
	mov r8, r0
.L08062802:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r0, [sp, #0x1d0]
	lsls r0, r0, #6
	str r0, [sp, #0x220]
	cmp r2, sb
	beq .L0806282C
.L08062814:
	cmp r3, #0
	beq .L08062824
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08062824:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sb
	bne .L08062814
.L0806282C:
	adds r5, r3, #0
	add r0, sp, #0x1a0
	ldr r0, [r0]
	cmp r0, #1
	bne .L0806284A
	cmp r5, #0
	beq .L08062846
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062846:
	adds r5, #0x10
	b .L0806286C
.L0806284A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0806286A
.L08062852:
	cmp r2, #0
	beq .L08062862
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062862:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08062852
.L0806286A:
	adds r5, r2, #0
.L0806286C:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L0806287C
.L08062876:
	adds r0, #0x10
	cmp r0, r3
	bne .L08062876
.L0806287C:
	cmp r1, #0
	beq .L08062886
	adds r0, r1, #0
	bl free
.L08062886:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08062892:
	ldr r1, [sp, #0x1c4]
	ldr r2, .L0806290C @ =0x0000058C
	adds r0, r1, r2
	ldr r0, [r0]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r0, r0, r3
	bl CountCows__C4Barn
	ldr r4, [sp, #0x1cc]
	ldr r1, [r4, #0x18]
	ldr r5, [sp, #0x220]
	adds r1, r1, r5
	adds r1, #0x12
	movs r2, #0x90
	lsls r2, r2, #1
	movs r4, #0x20
	str r4, [sp]
	movs r3, #0
	bl func_0804EDB4
	ldr r7, [sp, #0x1cc]
	ldr r0, [r7, #0x18]
	adds r0, r0, r5
	adds r0, #0x14
	ldr r2, [sp, #0x260]
	lsrs r1, r2, #0x10
	movs r2, #0
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	movs r0, #0x94
	mov r3, sl
	str r0, [r3, #4]
	ldr r0, .L08062910 @ =gUnk_0875236C
	str r0, [r3, #8]
	ldr r0, .L08062914 @ =gUnk_087523EC
	str r0, [r3, #0xc]
	ldr r4, [sp, #0x1c4]
	ldr r5, .L08062918 @ =0x00000594
	adds r6, r4, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806291C
	cmp r1, #0
	beq .L08062902
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062902:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080629EC
	.align 2, 0
.L0806290C: .4byte 0x0000058C
.L08062910: .4byte gUnk_0875236C
.L08062914: .4byte gUnk_087523EC
.L08062918: .4byte 0x00000594
.L0806291C:
	mov sb, r1
	movs r0, #1
	add r1, sp, #0x1a8
	str r0, [r1]
	ldr r2, [r6]
	mov r4, sb
	subs r0, r4, r2
	asrs r4, r0, #4
	add r0, sp, #0x1a4
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r3, sp, #0x1a4
	adds r1, r2, #0
	cmp r4, r0
	bhs .L0806293E
	adds r3, r5, #0
.L0806293E:
	ldr r0, [r3]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806295E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806295A
	mov r0, r8
	bl func_080D3BC0
.L0806295A:
	ldr r1, [r6]
	b .L08062962
.L0806295E:
	movs r0, #0
	mov r8, r0
.L08062962:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sb
	beq .L08062986
.L0806296E:
	cmp r3, #0
	beq .L0806297E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806297E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sb
	bne .L0806296E
.L08062986:
	adds r5, r3, #0
	add r0, sp, #0x1a8
	ldr r0, [r0]
	cmp r0, #1
	bne .L080629A4
	cmp r5, #0
	beq .L080629A0
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L080629A0:
	adds r5, #0x10
	b .L080629C6
.L080629A4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080629C4
.L080629AC:
	cmp r2, #0
	beq .L080629BC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L080629BC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080629AC
.L080629C4:
	adds r5, r2, #0
.L080629C6:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L080629D6
.L080629D0:
	adds r0, #0x10
	cmp r0, r3
	bne .L080629D0
.L080629D6:
	cmp r1, #0
	beq .L080629E0
	adds r0, r1, #0
	bl free
.L080629E0:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080629EC:
	ldr r2, [sp, #0x1c4]
	ldr r3, .L08062A70 @ =0x0000058C
	adds r0, r2, r3
	ldr r0, [r0]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl GetStoredBushelCount__C4Barn
	ldr r5, [sp, #0x1cc]
	ldr r1, [r5, #0x18]
	ldr r7, [sp, #0x1d0]
	lsls r5, r7, #6
	adds r1, r1, r5
	adds r1, #0x32
	movs r2, #0x90
	lsls r2, r2, #1
	movs r4, #0x20
	str r4, [sp]
	movs r3, #0
	bl func_0804EDB4
	ldr r1, [sp, #0x1cc]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, #0x34
	ldr r2, [sp, #0x1e8]
	lsrs r1, r2, #0x10
	movs r2, #0
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	adds r3, r7, #0
	adds r3, #3
	str r3, [sp, #0x1d0]
	lsls r0, r3, #3
	mov r5, sl
	strh r0, [r5]
	str r4, [r5, #4]
	ldr r0, .L08062A74 @ =gUnk_0875320C
	str r0, [r5, #8]
	ldr r0, .L08062A78 @ =gUnk_0875328C
	str r0, [r5, #0xc]
	ldr r7, [sp, #0x1c4]
	ldr r0, .L08062A7C @ =0x00000594
	adds r6, r7, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08062A80
	cmp r1, #0
	beq .L08062A66
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062A66:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08062B50
	.align 2, 0
.L08062A70: .4byte 0x0000058C
.L08062A74: .4byte gUnk_0875320C
.L08062A78: .4byte gUnk_0875328C
.L08062A7C: .4byte 0x00000594
.L08062A80:
	mov sb, r1
	movs r0, #1
	add r1, sp, #0x1b0
	str r0, [r1]
	ldr r2, [r6]
	mov r5, sb
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x1ac
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r3, sp, #0x1ac
	adds r1, r2, #0
	cmp r4, r0
	bhs .L08062AA2
	adds r3, r5, #0
.L08062AA2:
	ldr r0, [r3]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08062AC2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08062ABE
	mov r0, r8
	bl func_080D3BC0
.L08062ABE:
	ldr r1, [r6]
	b .L08062AC6
.L08062AC2:
	movs r0, #0
	mov r8, r0
.L08062AC6:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sb
	beq .L08062AEA
.L08062AD2:
	cmp r3, #0
	beq .L08062AE2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08062AE2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sb
	bne .L08062AD2
.L08062AEA:
	adds r5, r3, #0
	add r0, sp, #0x1b0
	ldr r0, [r0]
	cmp r0, #1
	bne .L08062B08
	cmp r5, #0
	beq .L08062B04
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062B04:
	adds r5, #0x10
	b .L08062B2A
.L08062B08:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08062B28
.L08062B10:
	cmp r2, #0
	beq .L08062B20
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062B20:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08062B10
.L08062B28:
	adds r5, r2, #0
.L08062B2A:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L08062B3A
.L08062B34:
	adds r0, #0x10
	cmp r0, r3
	bne .L08062B34
.L08062B3A:
	cmp r1, #0
	beq .L08062B44
	adds r0, r1, #0
	bl free
.L08062B44:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08062B50:
	ldr r2, [sp, #0x1c4]
	ldr r3, .L08062BE0 @ =0x0000058C
	adds r0, r2, r3
	ldr r0, [r0]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl CountSheeps__C4Barn
	ldr r5, [sp, #0x1cc]
	ldr r1, [r5, #0x18]
	ldr r7, [sp, #0x1d0]
	lsls r5, r7, #6
	adds r1, r1, r5
	adds r1, #0x12
	movs r2, #0x90
	lsls r2, r2, #1
	movs r4, #0x20
	str r4, [sp]
	movs r3, #0
	bl func_0804EDB4
	ldr r1, [sp, #0x1cc]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, #0x14
	ldr r2, [sp, #0x260]
	lsrs r1, r2, #0x10
	movs r2, #0
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	adds r3, r7, #0
	adds r3, #3
	str r3, [sp, #0x1d0]
	lsls r2, r3, #3
	mov r5, sl
	strh r2, [r5]
	str r4, [r5, #4]
	ldr r0, .L08062BE4 @ =gUnk_0875316C
	str r0, [r5, #8]
	ldr r0, .L08062BE8 @ =gUnk_087531EC
	str r0, [r5, #0xc]
	ldr r7, [sp, #0x1c4]
	ldr r0, .L08062BEC @ =0x00000594
	adds r6, r7, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08062BF0
	cmp r1, #0
	beq .L08062BCA
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062BCA:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r7, [sp, #0x1d0]
	lsls r7, r7, #6
	str r7, [sp, #0x220]
	ldr r0, [sp, #0x1d0]
	adds r0, #3
	str r0, [sp, #0x210]
	str r2, [sp, #0x21c]
	b .L08062CD2
	.align 2, 0
.L08062BE0: .4byte 0x0000058C
.L08062BE4: .4byte gUnk_0875316C
.L08062BE8: .4byte gUnk_087531EC
.L08062BEC: .4byte 0x00000594
.L08062BF0:
	mov sb, r1
	movs r0, #1
	add r1, sp, #0x1b8
	str r0, [r1]
	ldr r2, [r6]
	mov r3, sb
	subs r0, r3, r2
	asrs r4, r0, #4
	add r0, sp, #0x1b4
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r3, sp, #0x1b4
	adds r1, r2, #0
	cmp r4, r0
	bhs .L08062C12
	adds r3, r5, #0
.L08062C12:
	ldr r0, [r3]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08062C32
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08062C2E
	mov r0, r8
	bl func_080D3BC0
.L08062C2E:
	ldr r1, [r6]
	b .L08062C36
.L08062C32:
	movs r0, #0
	mov r8, r0
.L08062C36:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r4, [sp, #0x1d0]
	lsls r4, r4, #6
	str r4, [sp, #0x220]
	ldr r5, [sp, #0x1d0]
	adds r5, #3
	str r5, [sp, #0x210]
	ldr r7, [sp, #0x1d0]
	lsls r7, r7, #3
	str r7, [sp, #0x21c]
	cmp r2, sb
	beq .L08062C6C
.L08062C54:
	cmp r3, #0
	beq .L08062C64
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08062C64:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sb
	bne .L08062C54
.L08062C6C:
	adds r5, r3, #0
	add r0, sp, #0x1b8
	ldr r0, [r0]
	cmp r0, #1
	bne .L08062C8A
	cmp r5, #0
	beq .L08062C86
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062C86:
	adds r5, #0x10
	b .L08062CAC
.L08062C8A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08062CAA
.L08062C92:
	cmp r2, #0
	beq .L08062CA2
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062CA2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08062C92
.L08062CAA:
	adds r5, r2, #0
.L08062CAC:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L08062CBC
.L08062CB6:
	adds r0, #0x10
	cmp r0, r3
	bne .L08062CB6
.L08062CBC:
	cmp r1, #0
	beq .L08062CC6
	adds r0, r1, #0
	bl free
.L08062CC6:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r7, [sp, #0x298]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08062CD2:
	ldr r1, [sp, #0x1c4]
	ldr r2, .L08062D50 @ =0x0000058C
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r3, .L08062D54 @ =0x00002214
	adds r0, r0, r3
	bl func_0809AA28
	ldr r4, [sp, #0x1cc]
	ldr r1, [r4, #0x18]
	ldr r5, [sp, #0x220]
	adds r1, r1, r5
	adds r1, #0x16
	movs r2, #0x90
	lsls r2, r2, #1
	movs r4, #0x20
	str r4, [sp]
	movs r3, #0
	bl func_0804EDB4
	ldr r7, [sp, #0x1cc]
	ldr r0, [r7, #0x18]
	adds r0, r0, r5
	adds r0, #0x18
	ldr r2, [sp, #0x1e4]
	lsrs r1, r2, #0x10
	movs r2, #0
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	add r3, sp, #0x21c
	ldrh r4, [r3]
	mov r3, sl
	strh r4, [r3]
	movs r0, #0x94
	str r0, [r3, #4]
	ldr r0, .L08062D58 @ =gUnk_08752EEC
	str r0, [r3, #8]
	ldr r0, .L08062D5C @ =gUnk_08752F6C
	str r0, [r3, #0xc]
	ldr r4, [sp, #0x1c4]
	ldr r5, .L08062D60 @ =0x00000594
	adds r6, r4, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08062D64
	cmp r1, #0
	beq .L08062D46
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062D46:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08062E34
	.align 2, 0
.L08062D50: .4byte 0x0000058C
.L08062D54: .4byte 0x00002214
.L08062D58: .4byte gUnk_08752EEC
.L08062D5C: .4byte gUnk_08752F6C
.L08062D60: .4byte 0x00000594
.L08062D64:
	mov sb, r1
	movs r0, #1
	add r1, sp, #0x1c0
	str r0, [r1]
	ldr r2, [r6]
	mov r4, sb
	subs r0, r4, r2
	asrs r4, r0, #4
	add r0, sp, #0x1bc
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r3, sp, #0x1bc
	adds r1, r2, #0
	cmp r4, r0
	bhs .L08062D86
	adds r3, r5, #0
.L08062D86:
	ldr r0, [r3]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08062DA6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08062DA2
	mov r0, r8
	bl func_080D3BC0
.L08062DA2:
	ldr r1, [r6]
	b .L08062DAA
.L08062DA6:
	movs r0, #0
	mov r8, r0
.L08062DAA:
	adds r5, r0, #0
	str r5, [sp, #0x298]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sb
	beq .L08062DCE
.L08062DB6:
	cmp r3, #0
	beq .L08062DC6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08062DC6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sb
	bne .L08062DB6
.L08062DCE:
	adds r5, r3, #0
	add r0, sp, #0x1c0
	ldr r0, [r0]
	cmp r0, #1
	bne .L08062DEC
	cmp r5, #0
	beq .L08062DE8
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062DE8:
	adds r5, #0x10
	b .L08062E0E
.L08062DEC:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08062E0C
.L08062DF4:
	cmp r2, #0
	beq .L08062E04
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x44]
	str r1, [r0]
.L08062E04:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08062DF4
.L08062E0C:
	adds r5, r2, #0
.L08062E0E:
	ldr r3, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r3
	beq .L08062E1E
.L08062E18:
	adds r0, #0x10
	cmp r0, r3
	bne .L08062E18
.L08062E1E:
	cmp r1, #0
	beq .L08062E28
	adds r0, r1, #0
	bl free
.L08062E28:
	ldr r0, [sp, #0x298]
	add r0, r8
	ldr r1, [sp, #0x298]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08062E34:
	ldr r2, [sp, #0x1c4]
	ldr r3, .L08062E98 @ =0x0000058C
	adds r0, r2, r3
	ldr r0, [r0]
	adds r0, #0x14
	bl GetUnk10__C4Farm
	ldr r4, [sp, #0x1cc]
	ldr r1, [r4, #0x18]
	ldr r5, [sp, #0x220]
	adds r1, r1, r5
	adds r1, #0x32
	movs r2, #0x90
	lsls r2, r2, #1
	movs r4, #0x20
	str r4, [sp]
	movs r3, #0
	bl func_0804EDB4
	ldr r7, [sp, #0x1cc]
	ldr r0, [r7, #0x18]
	adds r0, r0, r5
	adds r0, #0x34
	ldr r2, [sp, #0x1ec]
	lsrs r1, r2, #0x10
	movs r2, #0
	str r2, [sp]
	str r4, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0x210]
	lsls r1, r3, #0x13
	asrs r1, r1, #0x10
	ldr r0, [sp, #0x1cc]
	bl func_08075E24
	ldr r0, [sp, #0x1c4]
	movs r3, #0xa7
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08062E98: .4byte 0x0000058C

	thumb_func_start func_08062E9C
func_08062E9C: @ 0x08062E9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf4
	str r0, [sp, #0xa8]
	ldr r0, [sp, #0x114]
	str r0, [sp]
	ldr r0, [sp, #0xa8]
	bl func_08076BFC
	ldr r0, [sp, #0xa8]
	ldr r2, .L08062FA4 @ =0x000005B4
	adds r1, r0, r2
	ldr r0, .L08062FA8 @ =vtable_unk_080E7A68
	str r0, [r1]
	movs r0, #0xf
	add r4, sp, #0x14
	add r3, sp, #0x18
	mov r8, r3
	mov r5, sp
	adds r5, #0x24
	str r5, [sp, #0xd4]
	mov r6, sp
	adds r6, #0x30
	str r6, [sp, #0xd8]
	mov r1, sp
	adds r1, #0x34
	str r1, [sp, #0xdc]
	mov r2, sp
	adds r2, #0x40
	str r2, [sp, #0xe0]
	mov r3, sp
	adds r3, #0x4c
	str r3, [sp, #0xe4]
	adds r5, #0x34
	str r5, [sp, #0xe8]
	adds r6, #0x34
	str r6, [sp, #0xac]
	adds r1, #0x3c
	str r1, [sp, #0xb0]
	adds r2, #0x3c
	str r2, [sp, #0xb4]
	movs r1, #1
	rsbs r1, r1, #0
.L08062EF8:
	subs r0, #1
	cmp r0, r1
	bne .L08062EF8
	ldr r3, [sp, #0xa8]
	ldr r0, [r3]
	bl func_08008910
	adds r7, r0, #0
	movs r5, #8
	movs r6, #2
	add r0, sp, #0x14
	strh r5, [r0]
	strh r6, [r4, #2]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0xa8]
	ldr r2, .L08062FAC @ =0x000005BC
	adds r4, r1, r2
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	ldr r1, .L08062FB0 @ =gUnk_080FB838
	add r0, sp, #0x18
	strh r5, [r0]
	mov r3, r8
	strh r6, [r3, #2]
	ldr r0, [sp, #0x18]
	str r1, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	movs r3, #0x80
	lsls r3, r3, #2
	add r0, sp, #4
	adds r1, r4, #0
	ldr r2, .L08062FB4 @ =0x06000700
	bl func_08008F0C
	add r4, sp, #4
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L08062FD0
	cmp r1, #0
	beq .L08062F64
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08062F64:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	ldr r3, [sp, #0xa8]
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r3, r3, r4
	mov sl, r3
	ldr r6, .L08062FB8 @ =0x000009C4
	ldr r5, [sp, #0xa8]
	adds r6, r5, r6
	str r6, [sp, #0xc8]
	movs r0, #0xcd
	lsls r0, r0, #4
	adds r0, r5, r0
	str r0, [sp, #0xc4]
	ldr r1, .L08062FBC @ =0x00000E54
	adds r1, r5, r1
	str r1, [sp, #0xd0]
	ldr r2, .L08062FC0 @ =0x00000FD8
	adds r2, r5, r2
	str r2, [sp, #0xbc]
	ldr r3, .L08062FC4 @ =0x0000115C
	adds r3, r5, r3
	str r3, [sp, #0xcc]
	ldr r4, .L08062FC8 @ =0x00000BC8
	adds r4, r5, r4
	str r4, [sp, #0xb8]
	ldr r6, .L08062FCC @ =0x00000C4C
	adds r6, r5, r6
	str r6, [sp, #0xc0]
	b .L080630EC
	.align 2, 0
.L08062FA4: .4byte 0x000005B4
.L08062FA8: .4byte vtable_unk_080E7A68
.L08062FAC: .4byte 0x000005BC
.L08062FB0: .4byte gUnk_080FB838
.L08062FB4: .4byte 0x06000700
.L08062FB8: .4byte 0x000009C4
.L08062FBC: .4byte 0x00000E54
.L08062FC0: .4byte 0x00000FD8
.L08062FC4: .4byte 0x0000115C
.L08062FC8: .4byte 0x00000BC8
.L08062FCC: .4byte 0x00000C4C
.L08062FD0:
	str r1, [sp, #0xec]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r1, [r7]
	ldr r2, [sp, #0xec]
	subs r0, r2, r1
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r2, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L08062FEA
	adds r0, r2, #0
.L08062FEA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806300A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08063006
	mov r0, r8
	bl func_080D3BC0
.L08063006:
	ldr r1, [r7]
	b .L0806300E
.L0806300A:
	movs r0, #0
	mov r8, r0
.L0806300E:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r4, [sp, #0xa8]
	movs r5, #0xf8
	lsls r5, r5, #3
	adds r4, r4, r5
	mov sl, r4
	ldr r0, .L0806308C @ =0x000009C4
	ldr r6, [sp, #0xa8]
	adds r0, r6, r0
	str r0, [sp, #0xc8]
	movs r1, #0xcd
	lsls r1, r1, #4
	adds r1, r6, r1
	str r1, [sp, #0xc4]
	ldr r4, .L08063090 @ =0x00000E54
	adds r4, r6, r4
	str r4, [sp, #0xd0]
	ldr r5, .L08063094 @ =0x00000FD8
	adds r5, r6, r5
	str r5, [sp, #0xbc]
	ldr r0, .L08063098 @ =0x0000115C
	adds r0, r6, r0
	str r0, [sp, #0xcc]
	ldr r1, .L0806309C @ =0x00000BC8
	adds r1, r6, r1
	str r1, [sp, #0xb8]
	ldr r4, .L080630A0 @ =0x00000C4C
	adds r4, r6, r4
	str r4, [sp, #0xc0]
	ldr r5, [sp, #0xec]
	cmp r2, r5
	beq .L0806306E
.L08063054:
	cmp r3, #0
	beq .L08063064
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063064:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0xec]
	cmp r2, r6
	bne .L08063054
.L0806306E:
	adds r5, r3, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L080630A4
	cmp r5, #0
	beq .L08063086
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08063086:
	adds r5, #0x10
	b .L080630C6
	.align 2, 0
.L0806308C: .4byte 0x000009C4
.L08063090: .4byte 0x00000E54
.L08063094: .4byte 0x00000FD8
.L08063098: .4byte 0x0000115C
.L0806309C: .4byte 0x00000BC8
.L080630A0: .4byte 0x00000C4C
.L080630A4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080630C4
.L080630AC:
	cmp r2, #0
	beq .L080630BC
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080630BC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080630AC
.L080630C4:
	adds r5, r2, #0
.L080630C6:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080630D6
.L080630D0:
	adds r0, #0x10
	cmp r0, r2
	bne .L080630D0
.L080630D6:
	cmp r1, #0
	beq .L080630E0
	adds r0, r1, #0
	bl free
.L080630E0:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r6, [sp, #0xf0]
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080630EC:
	ldr r3, .L0806313C @ =gUnk_080FB844
	movs r1, #8
	movs r2, #2
	add r0, sp, #0x24
	strh r1, [r0]
	ldr r0, [sp, #0xd4]
	strh r2, [r0, #2]
	ldr r0, [sp, #0x24]
	str r3, [sp]
	mov r1, sl
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	movs r3, #0x80
	lsls r3, r3, #2
	add r0, sp, #4
	mov r1, sl
	ldr r2, .L08063140 @ =0x06000900
	bl func_08008F0C
	add r1, sp, #4
	mov sb, r1
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L08063144
	cmp r1, #0
	beq .L08063132
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08063132:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L0806320A
	.align 2, 0
.L0806313C: .4byte gUnk_080FB844
.L08063140: .4byte 0x06000900
.L08063144:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r1, [r7]
	mov r5, sl
	subs r0, r5, r1
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r2, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L0806315E
	adds r0, r2, #0
.L0806315E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806317E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806317A
	mov r0, r8
	bl func_080D3BC0
.L0806317A:
	ldr r1, [r7]
	b .L08063182
.L0806317E:
	movs r0, #0
	mov r8, r0
.L08063182:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L080631A6
.L0806318E:
	cmp r3, #0
	beq .L0806319E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806319E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L0806318E
.L080631A6:
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080631C2
	cmp r5, #0
	beq .L080631BE
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080631BE:
	adds r5, #0x10
	b .L080631E4
.L080631C2:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080631E2
.L080631CA:
	cmp r2, #0
	beq .L080631DA
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080631DA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080631CA
.L080631E2:
	adds r5, r2, #0
.L080631E4:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080631F4
.L080631EE:
	adds r0, #0x10
	cmp r0, r2
	bne .L080631EE
.L080631F4:
	cmp r1, #0
	beq .L080631FE
	adds r0, r1, #0
	bl free
.L080631FE:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r1, [sp, #0xf0]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L0806320A:
	movs r4, #8
	movs r5, #2
	add r0, sp, #0x30
	strh r4, [r0]
	ldr r2, [sp, #0xd8]
	strh r5, [r2, #2]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0xc8]
	movs r2, #0
	bl func_0804E7A0
	ldr r1, .L0806326C @ =gUnk_080FB850
	add r0, sp, #0x34
	strh r4, [r0]
	ldr r3, [sp, #0xdc]
	strh r5, [r3, #2]
	ldr r0, [sp, #0x34]
	str r1, [sp]
	ldr r1, [sp, #0xc8]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	movs r3, #0x80
	lsls r3, r3, #2
	add r0, sp, #4
	ldr r1, [sp, #0xc8]
	ldr r2, .L08063270 @ =0x06000B00
	bl func_08008F0C
	add r4, sp, #4
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L08063274
	cmp r1, #0
	beq .L08063262
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063262:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L0806333A
	.align 2, 0
.L0806326C: .4byte gUnk_080FB850
.L08063270: .4byte 0x06000B00
.L08063274:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x3c]
	ldr r1, [r7]
	mov r3, sl
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r2, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs .L0806328E
	adds r0, r2, #0
.L0806328E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080632AE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080632AA
	mov r0, r8
	bl func_080D3BC0
.L080632AA:
	ldr r1, [r7]
	b .L080632B2
.L080632AE:
	movs r0, #0
	mov r8, r0
.L080632B2:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L080632D6
.L080632BE:
	cmp r3, #0
	beq .L080632CE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080632CE:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080632BE
.L080632D6:
	adds r5, r3, #0
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L080632F2
	cmp r5, #0
	beq .L080632EE
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080632EE:
	adds r5, #0x10
	b .L08063314
.L080632F2:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08063312
.L080632FA:
	cmp r2, #0
	beq .L0806330A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806330A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080632FA
.L08063312:
	adds r5, r2, #0
.L08063314:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08063324
.L0806331E:
	adds r0, #0x10
	cmp r0, r2
	bne .L0806331E
.L08063324:
	cmp r1, #0
	beq .L0806332E
	adds r0, r1, #0
	bl free
.L0806332E:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r6, [sp, #0xf0]
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L0806333A:
	ldr r3, .L08063388 @ =gUnk_080FB85C
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x40
	strh r1, [r0]
	ldr r0, [sp, #0xe0]
	strh r2, [r0, #2]
	ldr r0, [sp, #0x40]
	str r3, [sp]
	ldr r1, [sp, #0xc4]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	movs r3, #0xc0
	lsls r3, r3, #1
	add r0, sp, #4
	ldr r1, [sp, #0xc4]
	ldr r2, .L0806338C @ =0x06000D00
	bl func_08008F0C
	add r1, sp, #4
	mov sb, r1
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L08063390
	cmp r1, #0
	beq .L08063380
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08063380:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L08063456
	.align 2, 0
.L08063388: .4byte gUnk_080FB85C
.L0806338C: .4byte 0x06000D00
.L08063390:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x48]
	ldr r1, [r7]
	mov r5, sl
	subs r0, r5, r1
	asrs r4, r0, #4
	str r4, [sp, #0x44]
	add r2, sp, #0x48
	add r0, sp, #0x44
	cmp r4, #1
	bhs .L080633AA
	adds r0, r2, #0
.L080633AA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080633CA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080633C6
	mov r0, r8
	bl func_080D3BC0
.L080633C6:
	ldr r1, [r7]
	b .L080633CE
.L080633CA:
	movs r0, #0
	mov r8, r0
.L080633CE:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L080633F2
.L080633DA:
	cmp r3, #0
	beq .L080633EA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080633EA:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080633DA
.L080633F2:
	adds r5, r3, #0
	ldr r0, [sp, #0x48]
	cmp r0, #1
	bne .L0806340E
	cmp r5, #0
	beq .L0806340A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806340A:
	adds r5, #0x10
	b .L08063430
.L0806340E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0806342E
.L08063416:
	cmp r2, #0
	beq .L08063426
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063426:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08063416
.L0806342E:
	adds r5, r2, #0
.L08063430:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08063440
.L0806343A:
	adds r0, #0x10
	cmp r0, r2
	bne .L0806343A
.L08063440:
	cmp r1, #0
	beq .L0806344A
	adds r0, r1, #0
	bl free
.L0806344A:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r1, [sp, #0xf0]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L08063456:
	ldr r3, .L080634A4 @ =gUnk_080FB864
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x4c
	strh r1, [r0]
	ldr r4, [sp, #0xe4]
	strh r2, [r4, #2]
	ldr r0, [sp, #0x4c]
	str r3, [sp]
	ldr r1, [sp, #0xd0]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	movs r3, #0xc0
	lsls r3, r3, #1
	add r0, sp, #4
	ldr r1, [sp, #0xd0]
	ldr r2, .L080634A8 @ =0x06000E80
	bl func_08008F0C
	add r5, sp, #4
	mov sb, r5
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080634AC
	cmp r1, #0
	beq .L0806349C
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806349C:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L08063572
	.align 2, 0
.L080634A4: .4byte gUnk_080FB864
.L080634A8: .4byte 0x06000E80
.L080634AC:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x54]
	ldr r1, [r7]
	mov r4, sl
	subs r0, r4, r1
	asrs r4, r0, #4
	str r4, [sp, #0x50]
	add r2, sp, #0x54
	add r0, sp, #0x50
	cmp r4, #1
	bhs .L080634C6
	adds r0, r2, #0
.L080634C6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080634E6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080634E2
	mov r0, r8
	bl func_080D3BC0
.L080634E2:
	ldr r1, [r7]
	b .L080634EA
.L080634E6:
	movs r0, #0
	mov r8, r0
.L080634EA:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L0806350E
.L080634F6:
	cmp r3, #0
	beq .L08063506
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063506:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080634F6
.L0806350E:
	adds r5, r3, #0
	ldr r0, [sp, #0x54]
	cmp r0, #1
	bne .L0806352A
	cmp r5, #0
	beq .L08063526
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063526:
	adds r5, #0x10
	b .L0806354C
.L0806352A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0806354A
.L08063532:
	cmp r2, #0
	beq .L08063542
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063542:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08063532
.L0806354A:
	adds r5, r2, #0
.L0806354C:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0806355C
.L08063556:
	adds r0, #0x10
	cmp r0, r2
	bne .L08063556
.L0806355C:
	cmp r1, #0
	beq .L08063566
	adds r0, r1, #0
	bl free
.L08063566:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r1, [sp, #0xf0]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L08063572:
	ldr r3, .L080635C0 @ =gUnk_080FB86C
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x58
	strh r1, [r0]
	ldr r4, [sp, #0xe8]
	strh r2, [r4, #2]
	ldr r0, [sp, #0x58]
	str r3, [sp]
	ldr r1, [sp, #0xbc]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	movs r3, #0xc0
	lsls r3, r3, #1
	add r0, sp, #4
	ldr r1, [sp, #0xbc]
	ldr r2, .L080635C4 @ =0x06001000
	bl func_08008F0C
	add r5, sp, #4
	mov sb, r5
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080635C8
	cmp r1, #0
	beq .L080635B8
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080635B8:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L0806368E
	.align 2, 0
.L080635C0: .4byte gUnk_080FB86C
.L080635C4: .4byte 0x06001000
.L080635C8:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x60]
	ldr r1, [r7]
	mov r4, sl
	subs r0, r4, r1
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r2, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L080635E2
	adds r0, r2, #0
.L080635E2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08063602
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080635FE
	mov r0, r8
	bl func_080D3BC0
.L080635FE:
	ldr r1, [r7]
	b .L08063606
.L08063602:
	movs r0, #0
	mov r8, r0
.L08063606:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L0806362A
.L08063612:
	cmp r3, #0
	beq .L08063622
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063622:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08063612
.L0806362A:
	adds r5, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L08063646
	cmp r5, #0
	beq .L08063642
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063642:
	adds r5, #0x10
	b .L08063668
.L08063646:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08063666
.L0806364E:
	cmp r2, #0
	beq .L0806365E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806365E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806364E
.L08063666:
	adds r5, r2, #0
.L08063668:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08063678
.L08063672:
	adds r0, #0x10
	cmp r0, r2
	bne .L08063672
.L08063678:
	cmp r1, #0
	beq .L08063682
	adds r0, r1, #0
	bl free
.L08063682:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r1, [sp, #0xf0]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L0806368E:
	ldr r3, .L080636DC @ =gUnk_080FB874
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x64
	strh r1, [r0]
	ldr r4, [sp, #0xac]
	strh r2, [r4, #2]
	ldr r0, [sp, #0x64]
	str r3, [sp]
	ldr r1, [sp, #0xcc]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	movs r3, #0xc0
	lsls r3, r3, #1
	add r0, sp, #4
	ldr r1, [sp, #0xcc]
	ldr r2, .L080636E0 @ =0x06001180
	bl func_08008F0C
	add r5, sp, #4
	mov sb, r5
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080636E4
	cmp r1, #0
	beq .L080636D4
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080636D4:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080637AA
	.align 2, 0
.L080636DC: .4byte gUnk_080FB874
.L080636E0: .4byte 0x06001180
.L080636E4:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x6c]
	ldr r1, [r7]
	mov r4, sl
	subs r0, r4, r1
	asrs r4, r0, #4
	str r4, [sp, #0x68]
	add r2, sp, #0x6c
	add r0, sp, #0x68
	cmp r4, #1
	bhs .L080636FE
	adds r0, r2, #0
.L080636FE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806371E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806371A
	mov r0, r8
	bl func_080D3BC0
.L0806371A:
	ldr r1, [r7]
	b .L08063722
.L0806371E:
	movs r0, #0
	mov r8, r0
.L08063722:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L08063746
.L0806372E:
	cmp r3, #0
	beq .L0806373E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806373E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L0806372E
.L08063746:
	adds r5, r3, #0
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne .L08063762
	cmp r5, #0
	beq .L0806375E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806375E:
	adds r5, #0x10
	b .L08063784
.L08063762:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08063782
.L0806376A:
	cmp r2, #0
	beq .L0806377A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0806377A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806376A
.L08063782:
	adds r5, r2, #0
.L08063784:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08063794
.L0806378E:
	adds r0, #0x10
	cmp r0, r2
	bne .L0806378E
.L08063794:
	cmp r1, #0
	beq .L0806379E
	adds r0, r1, #0
	bl free
.L0806379E:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r1, [sp, #0xf0]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080637AA:
	ldr r2, .L080637F4 @ =gUnk_080FB87C
	movs r1, #2
	add r0, sp, #0x70
	strh r1, [r0]
	ldr r3, [sp, #0xb0]
	strh r1, [r3, #2]
	ldr r0, [sp, #0x70]
	str r2, [sp]
	ldr r1, [sp, #0xb8]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	add r0, sp, #4
	ldr r1, [sp, #0xb8]
	ldr r2, .L080637F8 @ =0x06001300
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #4
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080637FC
	cmp r1, #0
	beq .L080637EC
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080637EC:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080638C2
	.align 2, 0
.L080637F4: .4byte gUnk_080FB87C
.L080637F8: .4byte 0x06001300
.L080637FC:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x78]
	ldr r1, [r7]
	mov r3, sl
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r2, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L08063816
	adds r0, r2, #0
.L08063816:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08063836
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08063832
	mov r0, r8
	bl func_080D3BC0
.L08063832:
	ldr r1, [r7]
	b .L0806383A
.L08063836:
	movs r0, #0
	mov r8, r0
.L0806383A:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L0806385E
.L08063846:
	cmp r3, #0
	beq .L08063856
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063856:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08063846
.L0806385E:
	adds r5, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L0806387A
	cmp r5, #0
	beq .L08063876
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08063876:
	adds r5, #0x10
	b .L0806389C
.L0806387A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0806389A
.L08063882:
	cmp r2, #0
	beq .L08063892
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063892:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08063882
.L0806389A:
	adds r5, r2, #0
.L0806389C:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080638AC
.L080638A6:
	adds r0, #0x10
	cmp r0, r2
	bne .L080638A6
.L080638AC:
	cmp r1, #0
	beq .L080638B6
	adds r0, r1, #0
	bl free
.L080638B6:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r6, [sp, #0xf0]
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080638C2:
	ldr r2, .L0806390C @ =gUnk_080FB830
	movs r1, #2
	add r0, sp, #0x7c
	strh r1, [r0]
	ldr r0, [sp, #0xb4]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x7c]
	str r2, [sp]
	ldr r1, [sp, #0xc0]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	add r0, sp, #4
	ldr r1, [sp, #0xc0]
	ldr r2, .L08063910 @ =0x06001380
	movs r3, #0x80
	bl func_08008F0C
	add r1, sp, #4
	mov sb, r1
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L08063914
	cmp r1, #0
	beq .L08063904
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08063904:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080639E2
	.align 2, 0
.L0806390C: .4byte gUnk_080FB830
.L08063910: .4byte 0x06001380
.L08063914:
	str r1, [sp, #0xec]
	movs r0, #1
	add r1, sp, #0x84
	str r0, [r1]
	ldr r0, [r7]
	ldr r5, [sp, #0xec]
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x80]
	ldr r0, [r1]
	add r2, sp, #0x80
	mov sl, r1
	cmp r4, r0
	bhs .L08063932
	mov r2, sl
.L08063932:
	ldr r0, [r2]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08063950
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08063954
	mov r0, r8
	bl func_080D3BC0
	b .L08063954
.L08063950:
	movs r0, #0
	mov r8, r0
.L08063954:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r7]
	adds r3, r5, #0
	ldr r6, [sp, #0xec]
	cmp r2, r6
	beq .L0806397C
.L08063962:
	cmp r3, #0
	beq .L08063972
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063972:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xec]
	cmp r2, r0
	bne .L08063962
.L0806397C:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L0806399A
	cmp r5, #0
	beq .L08063996
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063996:
	adds r5, #0x10
	b .L080639BC
.L0806399A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080639BA
.L080639A2:
	cmp r2, #0
	beq .L080639B2
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080639B2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080639A2
.L080639BA:
	adds r5, r2, #0
.L080639BC:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080639CC
.L080639C6:
	adds r0, #0x10
	cmp r0, r2
	bne .L080639C6
.L080639CC:
	cmp r1, #0
	beq .L080639D6
	adds r0, r1, #0
	bl free
.L080639D6:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r1, [sp, #0xf0]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080639E2:
	ldr r1, .L08063A14 @ =gUnk_0875196C
	add r0, sp, #4
	ldr r2, .L08063A18 @ =0x06001400
	movs r3, #0x80
	bl func_08008F0C
	add r2, sp, #4
	mov sb, r2
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L08063A1C
	cmp r1, #0
	beq .L08063A0A
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08063A0A:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L08063AE6
	.align 2, 0
.L08063A14: .4byte gUnk_0875196C
.L08063A18: .4byte 0x06001400
.L08063A1C:
	str r1, [sp, #0xec]
	movs r0, #1
	add r1, sp, #0x8c
	str r0, [r1]
	ldr r0, [r7]
	ldr r6, [sp, #0xec]
	subs r0, r6, r0
	asrs r4, r0, #4
	add r0, sp, #0x88
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08063A3A
	mov r0, sl
.L08063A3A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08063A58
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08063A5C
	mov r0, r8
	bl func_080D3BC0
	b .L08063A5C
.L08063A58:
	movs r0, #0
	mov r8, r0
.L08063A5C:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r7]
	adds r3, r5, #0
	b .L08063A7A
.L08063A66:
	cmp r3, #0
	beq .L08063A76
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063A76:
	adds r2, #0x10
	adds r3, #0x10
.L08063A7A:
	ldr r0, [sp, #0xec]
	cmp r2, r0
	bne .L08063A66
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L08063A9E
	cmp r5, #0
	beq .L08063A9A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063A9A:
	adds r5, #0x10
	b .L08063AC0
.L08063A9E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08063ABE
.L08063AA6:
	cmp r2, #0
	beq .L08063AB6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063AB6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08063AA6
.L08063ABE:
	adds r5, r2, #0
.L08063AC0:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08063AD0
.L08063ACA:
	adds r0, #0x10
	cmp r0, r2
	bne .L08063ACA
.L08063AD0:
	cmp r1, #0
	beq .L08063ADA
	adds r0, r1, #0
	bl free
.L08063ADA:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r1, [sp, #0xf0]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L08063AE6:
	ldr r1, .L08063B18 @ =gUnk_087519EC
	add r0, sp, #4
	ldr r2, .L08063B1C @ =0x05000020
	movs r3, #0x20
	bl func_08008F0C
	add r2, sp, #4
	mov sb, r2
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L08063B20
	cmp r1, #0
	beq .L08063B0E
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08063B0E:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L08063BEA
	.align 2, 0
.L08063B18: .4byte gUnk_087519EC
.L08063B1C: .4byte 0x05000020
.L08063B20:
	str r1, [sp, #0xec]
	movs r0, #1
	add r1, sp, #0x94
	str r0, [r1]
	ldr r0, [r7]
	ldr r6, [sp, #0xec]
	subs r0, r6, r0
	asrs r4, r0, #4
	add r0, sp, #0x90
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08063B3E
	mov r0, sl
.L08063B3E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08063B5C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08063B60
	mov r0, r8
	bl func_080D3BC0
	b .L08063B60
.L08063B5C:
	movs r0, #0
	mov r8, r0
.L08063B60:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r7]
	adds r3, r5, #0
	b .L08063B7E
.L08063B6A:
	cmp r3, #0
	beq .L08063B7A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063B7A:
	adds r2, #0x10
	adds r3, #0x10
.L08063B7E:
	ldr r0, [sp, #0xec]
	cmp r2, r0
	bne .L08063B6A
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L08063BA2
	cmp r5, #0
	beq .L08063B9E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063B9E:
	adds r5, #0x10
	b .L08063BC4
.L08063BA2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08063BC2
.L08063BAA:
	cmp r2, #0
	beq .L08063BBA
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063BBA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08063BAA
.L08063BC2:
	adds r5, r2, #0
.L08063BC4:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08063BD4
.L08063BCE:
	adds r0, #0x10
	cmp r0, r2
	bne .L08063BCE
.L08063BD4:
	cmp r1, #0
	beq .L08063BDE
	adds r0, r1, #0
	bl free
.L08063BDE:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r1, [sp, #0xf0]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L08063BEA:
	ldr r1, .L08063C1C @ =gUnk_0875254C
	add r0, sp, #4
	ldr r2, .L08063C20 @ =0x06001480
	movs r3, #0x20
	bl func_08008F0C
	add r2, sp, #4
	mov sb, r2
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L08063C24
	cmp r1, #0
	beq .L08063C12
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08063C12:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L08063CEE
	.align 2, 0
.L08063C1C: .4byte gUnk_0875254C
.L08063C20: .4byte 0x06001480
.L08063C24:
	str r1, [sp, #0xec]
	movs r0, #1
	add r1, sp, #0x9c
	str r0, [r1]
	ldr r0, [r7]
	ldr r6, [sp, #0xec]
	subs r0, r6, r0
	asrs r4, r0, #4
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08063C42
	mov r0, sl
.L08063C42:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08063C60
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08063C64
	mov r0, r8
	bl func_080D3BC0
	b .L08063C64
.L08063C60:
	movs r0, #0
	mov r8, r0
.L08063C64:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r7]
	adds r3, r5, #0
	b .L08063C82
.L08063C6E:
	cmp r3, #0
	beq .L08063C7E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063C7E:
	adds r2, #0x10
	adds r3, #0x10
.L08063C82:
	ldr r0, [sp, #0xec]
	cmp r2, r0
	bne .L08063C6E
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L08063CA6
	cmp r5, #0
	beq .L08063CA2
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063CA2:
	adds r5, #0x10
	b .L08063CC8
.L08063CA6:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08063CC6
.L08063CAE:
	cmp r2, #0
	beq .L08063CBE
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063CBE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08063CAE
.L08063CC6:
	adds r5, r2, #0
.L08063CC8:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08063CD8
.L08063CD2:
	adds r0, #0x10
	cmp r0, r2
	bne .L08063CD2
.L08063CD8:
	cmp r1, #0
	beq .L08063CE2
	adds r0, r1, #0
	bl free
.L08063CE2:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r1, [sp, #0xf0]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L08063CEE:
	ldr r1, .L08063D20 @ =gUnk_087525CC
	add r0, sp, #4
	ldr r2, .L08063D24 @ =0x05000040
	movs r3, #0x20
	bl func_08008F0C
	add r2, sp, #4
	mov sb, r2
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L08063D28
	cmp r1, #0
	beq .L08063D16
	adds r0, r1, #0
	add r1, sp, #4
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08063D16:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L08063DF2
	.align 2, 0
.L08063D20: .4byte gUnk_087525CC
.L08063D24: .4byte 0x05000040
.L08063D28:
	str r1, [sp, #0xec]
	movs r0, #1
	add r1, sp, #0xa4
	str r0, [r1]
	ldr r0, [r7]
	ldr r6, [sp, #0xec]
	subs r0, r6, r0
	asrs r4, r0, #4
	add r0, sp, #0xa0
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08063D46
	mov r0, sl
.L08063D46:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08063D64
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08063D68
	mov r0, r8
	bl func_080D3BC0
	b .L08063D68
.L08063D64:
	movs r0, #0
	mov r8, r0
.L08063D68:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r7]
	adds r3, r5, #0
	b .L08063D86
.L08063D72:
	cmp r3, #0
	beq .L08063D82
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063D82:
	adds r2, #0x10
	adds r3, #0x10
.L08063D86:
	ldr r0, [sp, #0xec]
	cmp r2, r0
	bne .L08063D72
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L08063DAA
	cmp r5, #0
	beq .L08063DA6
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063DA6:
	adds r5, #0x10
	b .L08063DCC
.L08063DAA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08063DCA
.L08063DB2:
	cmp r2, #0
	beq .L08063DC2
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08063DC2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08063DB2
.L08063DCA:
	adds r5, r2, #0
.L08063DCC:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08063DDC
.L08063DD6:
	adds r0, #0x10
	cmp r0, r2
	bne .L08063DD6
.L08063DDC:
	cmp r1, #0
	beq .L08063DE6
	adds r0, r1, #0
	bl free
.L08063DE6:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r1, [sp, #0xf0]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L08063DF2:
	ldr r0, [sp, #0xa8]
	add sp, #0xf4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_08063E04
func_08063E04: @ 0x08063E04
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r2, #0
	cmp r1, #0xf
	bls .L08063E12
	movs r0, #0
	b .L08063E50
.L08063E12:
	lsls r4, r1, #1
	adds r4, r4, r1
	lsls r4, r4, #6
	adds r4, r4, r1
	lsls r4, r4, #2
	adds r4, r4, r0
	add r1, sp, #4
	movs r5, #0xc
	movs r6, #2
	adds r0, r1, #0
	strh r5, [r0]
	strh r6, [r1, #2]
	ldr r0, [sp, #4]
	movs r1, #0x97
	lsls r1, r1, #5
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	add r0, sp, #8
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #8]
	str r7, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	adds r0, r4, #0
.L08063E50:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.if 0
	thumb_func_start func_08063E58
func_08063E58: @ 0x08063E58
	push {lr}
	bl func_08076EA8
	movs r0, #1
	pop {r1}
	bx r1

	.endif
	.section .text.tail08063E64, "ax", %progbits
	thumb_func_start func_08063E64
func_08063E64: @ 0x08063E64
	push {lr}
	sub sp, #8
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
	bls .L08063E84
	adds r3, r2, #0
.L08063E84:
	ldr r0, [r3]
	add sp, #8
	pop {r1}
	bx r1

	thumb_func_start func_08063E8C
func_08063E8C: @ 0x08063E8C
	push {r4, lr}
	adds r4, r0, #0
	bl IsSick__C9Livestock
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08063E9E
	movs r0, #0x58
	b .L08063EB0
.L08063E9E:
	adds r0, r4, #0
	bl IsUnhappy__C9Livestock
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08063EAE
	movs r0, #0x38
	b .L08063EB0
.L08063EAE:
	movs r0, #0x48
.L08063EB0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08063EB8
func_08063EB8: @ 0x08063EB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	ldr r1, [sp, #0x8c]
	ldr r2, [sp, #0x40]
	lsls r0, r2, #2
	adds r4, r0, r2
	adds r5, r4, #5
	mov sl, r5
	add r0, sp, #8
	lsls r2, r5, #3
	strh r2, [r0]
	movs r0, #8
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r7, [sp, #0x3c]
	ldr r0, .L08063F28 @ =0x00000594
	adds r6, r7, r0
	mov r1, sp
	adds r1, #8
	str r1, [sp, #0x48]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08063F2C
	cmp r1, #0
	beq .L08063F08
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r3, r5, r7}
	stm r0!, {r3, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08063F08:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	str r2, [sp, #0x58]
	adds r4, #7
	str r4, [sp, #0x54]
	add r0, sp, #0x18
	mov r8, r0
	mov r1, sl
	lsls r1, r1, #6
	str r1, [sp, #0x5c]
	mov r2, sp
	adds r2, #0x38
	str r2, [sp, #0x60]
	b .L08064012
	.align 2, 0
.L08063F28: .4byte 0x00000594
.L08063F2C:
	str r1, [sp, #0x64]
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r1, [r6]
	ldr r3, [sp, #0x64]
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r2, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L08063F46
	adds r0, r2, #0
.L08063F46:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08063F66
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08063F62
	mov r0, sb
	bl func_080D3BC0
.L08063F62:
	ldr r1, [r6]
	b .L08063F6A
.L08063F66:
	movs r0, #0
	mov sb, r0
.L08063F6A:
	adds r5, r0, #0
	str r5, [sp, #0x68]
	adds r2, r1, #0
	adds r3, r5, #0
	mov r4, sl
	lsls r4, r4, #3
	str r4, [sp, #0x58]
	mov r5, sl
	adds r5, #2
	str r5, [sp, #0x54]
	add r7, sp, #0x18
	mov r8, r7
	mov r0, sl
	lsls r0, r0, #6
	str r0, [sp, #0x5c]
	mov r1, sp
	adds r1, #0x38
	str r1, [sp, #0x60]
	ldr r4, [sp, #0x64]
	cmp r2, r4
	beq .L08063FAE
.L08063F94:
	cmp r3, #0
	beq .L08063FA4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08063FA4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x64]
	cmp r2, r5
	bne .L08063F94
.L08063FAE:
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L08063FCA
	cmp r5, #0
	beq .L08063FC6
	adds r0, r5, #0
	ldr r1, [sp, #0x48]
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08063FC6:
	adds r5, #0x10
	b .L08063FEC
.L08063FCA:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08063FEA
.L08063FD2:
	cmp r2, #0
	beq .L08063FE2
	adds r0, r2, #0
	ldr r1, [sp, #0x48]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08063FE2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08063FD2
.L08063FEA:
	adds r5, r2, #0
.L08063FEC:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08063FFC
.L08063FF6:
	adds r0, #0x10
	cmp r0, r2
	bne .L08063FF6
.L08063FFC:
	cmp r1, #0
	beq .L08064006
	adds r0, r1, #0
	bl free
.L08064006:
	ldr r0, [sp, #0x68]
	add r0, sb
	ldr r1, [sp, #0x68]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08064012:
	ldr r2, [sp, #0x3c]
	ldr r2, [r2, #4]
	str r2, [sp, #0x4c]
	ldr r0, [sp, #0x44]
	bl IsFestivalWinner__C6Animal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08064044
	mov r1, sl
	subs r1, #2
	ldr r3, [sp, #0x4c]
	ldr r0, [r3, #0x18]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r0, #2
	movs r1, #1
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #0xa0
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
.L08064044:
	ldr r0, [sp, #0x44]
	bl func_08063E64
	adds r6, r0, #0
	movs r4, #0
	cmp r4, r6
	bhs .L0806407A
	movs r5, #0xa
.L08064054:
	ldr r7, [sp, #0x4c]
	ldr r0, [r7, #0x18]
	ldr r2, [sp, #0x54]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r5
	movs r1, #2
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r1, #0xa4
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #2
	adds r4, #1
	cmp r4, r6
	blo .L08064054
.L0806407A:
	movs r5, #0
	add r3, sp, #0x58
	ldrh r4, [r3]
	mov r3, r8
	strh r4, [r3]
	ldr r0, [sp, #0x44]
	bl GetName__C6Animal
	adds r2, r0, #0
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x40]
	bl func_08063E04
	mov r4, r8
	str r0, [r4, #4]
	movs r0, #3
	ldr r7, [sp, #0x40]
	ands r0, r7
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #3
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r1, [sp, #0x4c]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x5c]
	adds r0, r0, r2
	adds r0, #6
	str r5, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	lsls r4, r4, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r4, r4, r0
	mov r3, r8
	str r4, [r3, #8]
	movs r0, #0xc0
	lsls r0, r0, #2
	str r0, [r3, #0xc]
	ldr r4, [sp, #0x3c]
	ldr r5, .L080640FC @ =0x000005A4
	adds r6, r4, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08064100
	cmp r1, #0
	beq .L080640F4
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x24]
	str r1, [r0]
.L080640F4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080641C6
	.align 2, 0
.L080640FC: .4byte 0x000005A4
.L08064100:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x34]
	ldr r1, [r6]
	mov r4, sl
	subs r0, r4, r1
	asrs r4, r0, #4
	str r4, [sp, #0x30]
	add r2, sp, #0x34
	add r0, sp, #0x30
	cmp r4, #1
	bhs .L0806411A
	adds r0, r2, #0
.L0806411A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806413A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08064136
	mov r0, sb
	bl func_080D3BC0
.L08064136:
	ldr r1, [r6]
	b .L0806413E
.L0806413A:
	movs r0, #0
	mov sb, r0
.L0806413E:
	adds r5, r0, #0
	str r5, [sp, #0x68]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L08064162
.L0806414A:
	cmp r3, #0
	beq .L0806415A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806415A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L0806414A
.L08064162:
	adds r5, r3, #0
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L0806417E
	cmp r5, #0
	beq .L0806417A
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [sp, #0x24]
	str r1, [r0]
.L0806417A:
	adds r5, #0x10
	b .L080641A0
.L0806417E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0806419E
.L08064186:
	cmp r2, #0
	beq .L08064196
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x24]
	str r1, [r0]
.L08064196:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08064186
.L0806419E:
	adds r5, r2, #0
.L080641A0:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080641B0
.L080641AA:
	adds r0, #0x10
	cmp r0, r2
	bne .L080641AA
.L080641B0:
	cmp r1, #0
	beq .L080641BA
	adds r0, r1, #0
	bl free
.L080641BA:
	ldr r0, [sp, #0x68]
	add r0, sb
	ldr r1, [sp, #0x68]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080641C6:
	ldr r2, [sp, #0x4c]
	ldr r4, [r2, #0x18]
	ldr r3, [sp, #0x5c]
	adds r4, r4, r3
	adds r4, #0x20
	ldr r0, [sp, #0x44]
	bl func_08063E8C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r6, #0
	str r6, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	adds r0, r4, #0
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	ldr r0, [sp, #0x44]
	bl GetAge__C6Animal
	movs r1, #0x78
	bl __udivsi3
	ldr r4, [sp, #0x4c]
	ldr r1, [r4, #0x18]
	ldr r7, [sp, #0x5c]
	adds r1, r1, r7
	adds r1, #0x34
	movs r2, #0x90
	lsls r2, r2, #1
	str r5, [sp]
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r4, #0x18]
	adds r0, r0, r7
	adds r0, #0x36
	str r6, [sp]
	str r5, [sp, #4]
	movs r1, #0x98
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	movs r5, #0
	ldr r0, [sp, #0x3c]
	ldr r1, .L08064258 @ =0x0000058C
	adds r4, r0, r1
	ldr r0, [r4]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	cmp r0, #5
	bhi .L0806423A
	movs r5, #1
.L0806423A:
	ldr r0, [sp, #0x44]
	bl GetAge__C6Animal
	ldr r1, [r4]
	adds r4, r0, r5
	ldrb r0, [r1, #0x11]
	ldr r2, [sp, #0x60]
	strb r0, [r2]
	add r6, sp, #0x38
	cmp r4, #0x1d
	bhi .L0806425C
	adds r5, r4, #0
	movs r3, #0
	b .L08064270
	.align 2, 0
.L08064258: .4byte 0x0000058C
.L0806425C:
	adds r0, r4, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0x1e
	bl __udivsi3
	adds r3, r0, #0
.L08064270:
	ldrb r0, [r6]
	lsls r1, r0, #0x19
	lsrs r1, r1, #0x1b
	adds r2, r5, #0
	subs r2, #0x1e
	subs r2, r1, r2
	cmp r2, #0x1d
	bhi .L08064284
	adds r3, #1
	b .L08064286
.L08064284:
	subs r2, #0x1e
.L08064286:
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r4, #4
	rsbs r4, r4, #0
	subs r0, r0, r3
	movs r1, #3
	ands r0, r1
	ldrb r1, [r6]
	ands r4, r1
	orrs r4, r0
	movs r0, #0x1f
	ands r2, r0
	lsls r1, r2, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r4, r0
	orrs r4, r1
	strb r4, [r6]
	ldr r3, [sp, #0x4c]
	ldr r0, [r3, #0x18]
	ldr r5, [sp, #0x54]
	lsls r6, r5, #6
	adds r0, r0, r6
	adds r0, #0x22
	lsls r2, r4, #0x1e
	lsrs r2, r2, #0x1e
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #0x12
	movs r7, #0xd0
	lsls r7, r7, #0xf
	adds r1, r1, r7
	lsrs r1, r1, #0x10
	movs r2, #0
	mov r8, r2
	str r2, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	movs r2, #6
	movs r3, #2
	bl func_0804E9F4
	lsls r4, r4, #0x19
	lsrs r4, r4, #0x1b
	adds r4, #1
	ldr r3, [sp, #0x4c]
	ldr r1, [r3, #0x18]
	adds r1, r1, r6
	adds r1, #0x34
	movs r2, #0x90
	lsls r2, r2, #1
	str r5, [sp]
	adds r0, r4, #0
	movs r3, #0
	bl func_0804EDB4
	ldr r4, [sp, #0x4c]
	ldr r0, [r4, #0x18]
	adds r0, r0, r6
	adds r0, #0x36
	mov r7, r8
	str r7, [sp]
	str r5, [sp, #4]
	movs r1, #0x9c
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08064320
func_08064320: @ 0x08064320
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, .L08064384 @ =gUnk_080FB880
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0x2d
	bl func_08062E9C
	ldr r0, .L08064388 @ =0x000005B4
	adds r1, r5, r0
	ldr r0, .L0806438C @ =vtable_unk_080E7A58
	str r0, [r1]
	movs r6, #0
	movs r7, #0
	ldr r1, .L08064390 @ =0x0000058C
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetCapacity__C4Coop
	mov r8, r0
	cmp r6, r8
	bhs .L080643B4
.L08064358:
	ldr r1, .L08064390 @ =0x0000058C
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r1, r7, #0
	bl GetChicken__C4CoopUi
	adds r4, r0, #0
	cmp r4, #0
	beq .L080643AE
	bl GetGrowthStage__C7Chicken
	cmp r0, #0
	beq .L0806439C
	cmp r0, #1
	bne .L0806439C
	ldr r3, .L08064394 @ =gUnk_0875268C
	ldr r0, .L08064398 @ =gUnk_0875270C
	b .L080643A0
	.align 2, 0
.L08064384: .4byte gUnk_080FB880
.L08064388: .4byte 0x000005B4
.L0806438C: .4byte vtable_unk_080E7A58
.L08064390: .4byte 0x0000058C
.L08064394: .4byte gUnk_0875268C
.L08064398: .4byte gUnk_0875270C
.L0806439C:
	ldr r3, .L080643D4 @ =gUnk_0875272C
	ldr r0, .L080643D8 @ =gUnk_087527AC
.L080643A0:
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_08063EB8
	adds r6, #1
.L080643AE:
	adds r7, #1
	cmp r7, r8
	blo .L08064358
.L080643B4:
	ldr r0, [r5, #4]
	lsls r1, r6, #2
	adds r1, r1, r6
	adds r1, #5
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	adds r0, r5, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080643D4: .4byte gUnk_0875272C
.L080643D8: .4byte gUnk_087527AC

	thumb_func_start func_080643DC
func_080643DC: @ 0x080643DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, .L08064458 @ =gUnk_080FB894
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0x55
	bl func_08062E9C
	ldr r0, .L0806445C @ =0x000005B4
	adds r1, r7, r0
	ldr r0, .L08064460 @ =vtable_unk_080E7A48
	str r0, [r1]
	movs r1, #0
	mov r8, r1
	mov sb, r1
	ldr r2, .L08064464 @ =0x0000058C
	adds r0, r7, r2
	ldr r0, [r0]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetCapacity__C4Barn
	mov sl, r0
	cmp r8, sl
	bhs .L080644C2
.L0806441A:
	ldr r2, .L08064464 @ =0x0000058C
	adds r0, r7, r2
	ldr r0, [r0]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, sb
	bl GetCow__C4BarnUi
	adds r4, r0, #0
	cmp r4, #0
	beq .L080644BA
	bl GetGrowthStage__C3Cow
	cmp r0, #1
	beq .L08064494
	cmp r0, #1
	blo .L080644A4
	cmp r0, #2
	bne .L080644A4
	ldr r6, .L08064468 @ =gUnk_08751B4C
	ldr r5, .L0806446C @ =gUnk_08751BCC
	adds r0, r4, #0
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08064478
	ldr r6, .L08064470 @ =gUnk_08751C8C
	ldr r5, .L08064474 @ =gUnk_08751D0C
	b .L080644A8
	.align 2, 0
.L08064458: .4byte gUnk_080FB894
.L0806445C: .4byte 0x000005B4
.L08064460: .4byte vtable_unk_080E7A48
.L08064464: .4byte 0x0000058C
.L08064468: .4byte gUnk_08751B4C
.L0806446C: .4byte gUnk_08751BCC
.L08064470: .4byte gUnk_08751C8C
.L08064474: .4byte gUnk_08751D0C
.L08064478:
	adds r0, r4, #0
	bl HasBeenMilked__C3Cow
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080644A8
	ldr r6, .L0806448C @ =gUnk_08751DCC
	ldr r5, .L08064490 @ =gUnk_08751E4C
	b .L080644A8
	.align 2, 0
.L0806448C: .4byte gUnk_08751DCC
.L08064490: .4byte gUnk_08751E4C
.L08064494:
	ldr r6, .L0806449C @ =gUnk_08751BEC
	ldr r5, .L080644A0 @ =gUnk_08751C6C
	b .L080644A8
	.align 2, 0
.L0806449C: .4byte gUnk_08751BEC
.L080644A0: .4byte gUnk_08751C6C
.L080644A4:
	ldr r6, .L080644E8 @ =gUnk_08751D2C
	ldr r5, .L080644EC @ =gUnk_08751DAC
.L080644A8:
	str r5, [sp]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	adds r3, r6, #0
	bl func_08063EB8
	movs r2, #1
	add r8, r2
.L080644BA:
	movs r0, #1
	add sb, r0
	cmp sb, sl
	blo .L0806441A
.L080644C2:
	ldr r0, [r7, #4]
	mov r2, r8
	lsls r1, r2, #2
	add r1, r8
	adds r1, #5
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080644E8: .4byte gUnk_08751D2C
.L080644EC: .4byte gUnk_08751DAC

	thumb_func_start func_080644F0
func_080644F0: @ 0x080644F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, .L08064568 @ =gUnk_080FB8A4
	str r0, [sp]
	adds r0, r7, #0
	movs r3, #0x55
	bl func_08062E9C
	ldr r0, .L0806456C @ =0x000005B4
	adds r1, r7, r0
	ldr r0, .L08064570 @ =vtable_unk_080E7A38
	str r0, [r1]
	movs r1, #0
	mov r8, r1
	mov sb, r1
	ldr r2, .L08064574 @ =0x0000058C
	adds r0, r7, r2
	ldr r0, [r0]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetCapacity__C4Barn
	mov sl, r0
	cmp r8, sl
	bhs .L080645C2
.L0806452E:
	ldr r2, .L08064574 @ =0x0000058C
	adds r0, r7, r2
	ldr r0, [r0]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	mov r1, sb
	bl GetSheep__C4BarnUi
	adds r4, r0, #0
	cmp r4, #0
	beq .L080645BA
	bl GetGrowthStage__C5Sheep
	cmp r0, #0
	beq .L080645A4
	cmp r0, #1
	bne .L080645A4
	ldr r6, .L08064578 @ =gUnk_0875320C
	ldr r5, .L0806457C @ =gUnk_0875328C
	adds r0, r4, #0
	bl IsPregnant__C10BarnAnimal
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08064588
	ldr r6, .L08064580 @ =gUnk_0875334C
	ldr r5, .L08064584 @ =gUnk_087533CC
	b .L080645A8
	.align 2, 0
.L08064568: .4byte gUnk_080FB8A4
.L0806456C: .4byte 0x000005B4
.L08064570: .4byte vtable_unk_080E7A38
.L08064574: .4byte 0x0000058C
.L08064578: .4byte gUnk_0875320C
.L0806457C: .4byte gUnk_0875328C
.L08064580: .4byte gUnk_0875334C
.L08064584: .4byte gUnk_087533CC
.L08064588:
	adds r0, r4, #0
	bl IsSheared__C5Sheep
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080645A8
	ldr r6, .L0806459C @ =gUnk_087532AC
	ldr r5, .L080645A0 @ =gUnk_0875332C
	b .L080645A8
	.align 2, 0
.L0806459C: .4byte gUnk_087532AC
.L080645A0: .4byte gUnk_0875332C
.L080645A4:
	ldr r6, .L080645E8 @ =gUnk_087533EC
	ldr r5, .L080645EC @ =gUnk_0875346C
.L080645A8:
	str r5, [sp]
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	adds r3, r6, #0
	bl func_08063EB8
	movs r2, #1
	add r8, r2
.L080645BA:
	movs r0, #1
	add sb, r0
	cmp sb, sl
	blo .L0806452E
.L080645C2:
	ldr r0, [r7, #4]
	mov r2, r8
	lsls r1, r2, #2
	add r1, r8
	adds r1, #5
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	adds r0, r7, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080645E8: .4byte gUnk_087533EC
.L080645EC: .4byte gUnk_0875346C

	thumb_func_start func_080645F0
func_080645F0: @ 0x080645F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x168
	str r0, [sp, #0xf0]
	ldr r0, .L080646BC @ =gUnk_080FB8B4
	str r0, [sp]
	ldr r0, [sp, #0xf0]
	movs r3, #0x35
	bl func_08076BFC
	ldr r0, [sp, #0xf0]
	ldr r2, .L080646C0 @ =0x000005B4
	adds r1, r0, r2
	ldr r0, .L080646C4 @ =vtable_unk_080E7A28
	str r0, [r1]
	movs r0, #6
	add r3, sp, #0x28
	mov r4, sp
	adds r4, #0x34
	str r4, [sp, #0x110]
	mov r5, sp
	adds r5, #0x40
	str r5, [sp, #0x114]
	mov r7, sp
	adds r7, #0x4c
	str r7, [sp, #0x118]
	movs r1, #1
	rsbs r1, r1, #0
.L0806462E:
	subs r0, #1
	cmp r0, r1
	bne .L0806462E
	ldr r0, [sp, #0xf0]
	ldr r2, .L080646C8 @ =0x00002164
	adds r1, r0, r2
	movs r0, #0
	str r0, [r1]
	ldr r4, [sp, #0xf0]
	ldr r4, [r4, #4]
	str r4, [sp, #0xf4]
	ldr r2, .L080646CC @ =gUnk_080FB8C8
	movs r1, #2
	add r0, sp, #0x28
	strh r1, [r0]
	strh r1, [r3, #2]
	ldr r0, [sp, #0x28]
	ldr r5, [sp, #0xf0]
	ldr r7, .L080646D0 @ =0x000005BC
	adds r4, r5, r7
	str r2, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r0, [r5]
	bl func_08008910
	adds r6, r0, #0
	movs r0, #0x38
	lsls r2, r0, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	adds r1, r4, #0
	movs r3, #0x80
	bl func_08008F0C
	add r1, sp, #8
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080646DC
	cmp r1, #0
	beq .L0806469A
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806469A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r5, [sp, #0xf0]
	movs r7, #0xc8
	lsls r7, r7, #3
	adds r5, r5, r7
	mov sl, r5
	ldr r1, .L080646D4 @ =0x00000744
	ldr r0, [sp, #0xf0]
	adds r1, r0, r1
	str r1, [sp, #0x10c]
	ldr r2, .L080646D8 @ =0x00000948
	adds r2, r0, r2
	str r2, [sp, #0x130]
	b .L080647C2
	.align 2, 0
.L080646BC: .4byte gUnk_080FB8B4
.L080646C0: .4byte 0x000005B4
.L080646C4: .4byte vtable_unk_080E7A28
.L080646C8: .4byte 0x00002164
.L080646CC: .4byte gUnk_080FB8C8
.L080646D0: .4byte 0x000005BC
.L080646D4: .4byte 0x00000744
.L080646D8: .4byte 0x00000948
.L080646DC:
	str r1, [sp, #0x160]
	movs r0, #1
	str r0, [sp, #0x30]
	ldr r0, [r6]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x2c]
	add r1, sp, #0x30
	add r0, sp, #0x2c
	cmp r4, #1
	bhs .L080646F6
	adds r0, r1, #0
.L080646F6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08064714
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08064718
	mov r0, r8
	bl func_080D3BC0
	b .L08064718
.L08064714:
	movs r0, #0
	mov r8, r0
.L08064718:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0xf0]
	movs r5, #0xc8
	lsls r5, r5, #3
	adds r4, r4, r5
	mov sl, r4
	ldr r0, .L08064774 @ =0x00000744
	ldr r7, [sp, #0xf0]
	adds r0, r7, r0
	str r0, [sp, #0x10c]
	ldr r1, .L08064778 @ =0x00000948
	adds r1, r7, r1
	str r1, [sp, #0x130]
	ldr r4, [sp, #0x160]
	cmp r2, r4
	beq .L08064758
.L0806473E:
	cmp r3, #0
	beq .L0806474E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806474E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x160]
	cmp r2, r5
	bne .L0806473E
.L08064758:
	adds r5, r3, #0
	ldr r0, [sp, #0x30]
	cmp r0, #1
	bne .L0806477C
	cmp r5, #0
	beq .L08064770
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064770:
	adds r5, #0x10
	b .L0806479E
	.align 2, 0
.L08064774: .4byte 0x00000744
.L08064778: .4byte 0x00000948
.L0806477C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0806479C
.L08064784:
	cmp r2, #0
	beq .L08064794
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064794:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08064784
.L0806479C:
	adds r5, r2, #0
.L0806479E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080647AE
.L080647A8:
	adds r1, #0x10
	cmp r1, r2
	bne .L080647A8
.L080647AE:
	cmp r0, #0
	beq .L080647B6
	bl free
.L080647B6:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r1, [sp, #0x164]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080647C2:
	ldr r3, .L08064824 @ =gUnk_080FB8CC
	movs r1, #4
	movs r2, #2
	add r0, sp, #0x34
	strh r1, [r0]
	ldr r4, [sp, #0x110]
	strh r2, [r4, #2]
	ldr r0, [sp, #0x34]
	str r3, [sp]
	mov r1, sl
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r5, [sp, #0xf0]
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r0, #0
	movs r7, #0x3c
	lsls r2, r7, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	mov r1, sl
	bl func_08008F0C
	add r0, sp, #8
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08064828
	cmp r1, #0
	beq .L0806481A
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806481A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080648E8
	.align 2, 0
.L08064824: .4byte gUnk_080FB8CC
.L08064828:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r1, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs .L08064840
	adds r0, r1, #0
.L08064840:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806485E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08064862
	mov r0, r8
	bl func_080D3BC0
	b .L08064862
.L0806485E:
	movs r0, #0
	mov r8, r0
.L08064862:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L08064886
.L0806486E:
	cmp r3, #0
	beq .L0806487E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806487E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L0806486E
.L08064886:
	adds r5, r3, #0
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L080648A2
	cmp r5, #0
	beq .L0806489E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806489E:
	adds r5, #0x10
	b .L080648C4
.L080648A2:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080648C2
.L080648AA:
	cmp r2, #0
	beq .L080648BA
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080648BA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080648AA
.L080648C2:
	adds r5, r2, #0
.L080648C4:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080648D4
.L080648CE:
	adds r1, #0x10
	cmp r1, r2
	bne .L080648CE
.L080648D4:
	cmp r0, #0
	beq .L080648DC
	bl free
.L080648DC:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r1, [sp, #0x164]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080648E8:
	ldr r3, .L08064948 @ =gUnk_080FB8D4
	movs r1, #8
	movs r2, #2
	add r0, sp, #0x40
	strh r1, [r0]
	ldr r4, [sp, #0x114]
	strh r2, [r4, #2]
	ldr r0, [sp, #0x40]
	str r3, [sp]
	ldr r1, [sp, #0x10c]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r5, [sp, #0xf0]
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #2
	adds r6, r0, #0
	movs r7, #0x44
	lsls r2, r7, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	ldr r1, [sp, #0x10c]
	bl func_08008F0C
	add r0, sp, #8
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806494C
	cmp r1, #0
	beq .L08064940
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08064940:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08064A0C
	.align 2, 0
.L08064948: .4byte gUnk_080FB8D4
.L0806494C:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x48]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x44]
	add r1, sp, #0x48
	add r0, sp, #0x44
	cmp r4, #1
	bhs .L08064964
	adds r0, r1, #0
.L08064964:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08064982
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08064986
	mov r0, r8
	bl func_080D3BC0
	b .L08064986
.L08064982:
	movs r0, #0
	mov r8, r0
.L08064986:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L080649AA
.L08064992:
	cmp r3, #0
	beq .L080649A2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080649A2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08064992
.L080649AA:
	adds r5, r3, #0
	ldr r0, [sp, #0x48]
	cmp r0, #1
	bne .L080649C6
	cmp r5, #0
	beq .L080649C2
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080649C2:
	adds r5, #0x10
	b .L080649E8
.L080649C6:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080649E6
.L080649CE:
	cmp r2, #0
	beq .L080649DE
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080649DE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080649CE
.L080649E6:
	adds r5, r2, #0
.L080649E8:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080649F8
.L080649F2:
	adds r1, #0x10
	cmp r1, r2
	bne .L080649F2
.L080649F8:
	cmp r0, #0
	beq .L08064A00
	bl free
.L08064A00:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r1, [sp, #0x164]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08064A0C:
	ldr r3, .L08064A6C @ =gUnk_080FB8E0
	movs r1, #0xc
	movs r2, #2
	add r0, sp, #0x4c
	strh r1, [r0]
	ldr r4, [sp, #0x118]
	strh r2, [r4, #2]
	ldr r0, [sp, #0x4c]
	str r3, [sp]
	ldr r1, [sp, #0x130]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r5, [sp, #0xf0]
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r6, r0, #0
	movs r7, #0x54
	lsls r2, r7, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	ldr r1, [sp, #0x130]
	bl func_08008F0C
	add r0, sp, #8
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08064A70
	cmp r1, #0
	beq .L08064A64
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08064A64:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08064B30
	.align 2, 0
.L08064A6C: .4byte gUnk_080FB8E0
.L08064A70:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x54]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x50]
	add r1, sp, #0x54
	add r0, sp, #0x50
	cmp r4, #1
	bhs .L08064A88
	adds r0, r1, #0
.L08064A88:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08064AA6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08064AAA
	mov r0, r8
	bl func_080D3BC0
	b .L08064AAA
.L08064AA6:
	movs r0, #0
	mov r8, r0
.L08064AAA:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L08064ACE
.L08064AB6:
	cmp r3, #0
	beq .L08064AC6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064AC6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08064AB6
.L08064ACE:
	adds r5, r3, #0
	ldr r0, [sp, #0x54]
	cmp r0, #1
	bne .L08064AEA
	cmp r5, #0
	beq .L08064AE6
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064AE6:
	adds r5, #0x10
	b .L08064B0C
.L08064AEA:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08064B0A
.L08064AF2:
	cmp r2, #0
	beq .L08064B02
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064B02:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08064AF2
.L08064B0A:
	adds r5, r2, #0
.L08064B0C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08064B1C
.L08064B16:
	adds r1, #0x10
	cmp r1, r2
	bne .L08064B16
.L08064B1C:
	cmp r0, #0
	beq .L08064B24
	bl free
.L08064B24:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r1, [sp, #0x164]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08064B30:
	ldr r2, [sp, #0xf0]
	ldr r0, [r2]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08064B74 @ =gUnk_0875254C
	movs r3, #0x6c
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08064B78
	cmp r1, #0
	beq .L08064B6A
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064B6A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08064C3E
	.align 2, 0
.L08064B74: .4byte gUnk_0875254C
.L08064B78:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x5c]
	ldr r1, [r6]
	mov r3, sl
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x58]
	add r2, sp, #0x5c
	add r0, sp, #0x58
	cmp r4, #1
	bhs .L08064B92
	adds r0, r2, #0
.L08064B92:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08064BB2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08064BAE
	mov r0, r8
	bl func_080D3BC0
.L08064BAE:
	ldr r1, [r6]
	b .L08064BB6
.L08064BB2:
	movs r0, #0
	mov r8, r0
.L08064BB6:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L08064BDA
.L08064BC2:
	cmp r3, #0
	beq .L08064BD2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064BD2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08064BC2
.L08064BDA:
	adds r5, r3, #0
	ldr r0, [sp, #0x5c]
	cmp r0, #1
	bne .L08064BF6
	cmp r5, #0
	beq .L08064BF2
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08064BF2:
	adds r5, #0x10
	b .L08064C18
.L08064BF6:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08064C16
.L08064BFE:
	cmp r2, #0
	beq .L08064C0E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064C0E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08064BFE
.L08064C16:
	adds r5, r2, #0
.L08064C18:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08064C28
.L08064C22:
	adds r0, #0x10
	cmp r0, r2
	bne .L08064C22
.L08064C28:
	cmp r1, #0
	beq .L08064C32
	adds r0, r1, #0
	bl free
.L08064C32:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08064C3E:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08064C78 @ =gUnk_087525CC
	add r0, sp, #8
	ldr r2, .L08064C7C @ =0x05000020
	movs r3, #0x20
	bl func_08008F0C
	add r2, sp, #8
	mov sb, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08064C80
	cmp r1, #0
	beq .L08064C70
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08064C70:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08064D46
	.align 2, 0
.L08064C78: .4byte gUnk_087525CC
.L08064C7C: .4byte 0x05000020
.L08064C80:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x64]
	ldr r1, [r6]
	mov r7, sl
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x60]
	add r2, sp, #0x64
	add r0, sp, #0x60
	cmp r4, #1
	bhs .L08064C9A
	adds r0, r2, #0
.L08064C9A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08064CBA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08064CB6
	mov r0, r8
	bl func_080D3BC0
.L08064CB6:
	ldr r1, [r6]
	b .L08064CBE
.L08064CBA:
	movs r0, #0
	mov r8, r0
.L08064CBE:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L08064CE2
.L08064CCA:
	cmp r3, #0
	beq .L08064CDA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064CDA:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08064CCA
.L08064CE2:
	adds r5, r3, #0
	ldr r0, [sp, #0x64]
	cmp r0, #1
	bne .L08064CFE
	cmp r5, #0
	beq .L08064CFA
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08064CFA:
	adds r5, #0x10
	b .L08064D20
.L08064CFE:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08064D1E
.L08064D06:
	cmp r2, #0
	beq .L08064D16
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064D16:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08064D06
.L08064D1E:
	adds r5, r2, #0
.L08064D20:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08064D30
.L08064D2A:
	adds r0, #0x10
	cmp r0, r2
	bne .L08064D2A
.L08064D30:
	cmp r1, #0
	beq .L08064D3A
	adds r0, r1, #0
	bl free
.L08064D3A:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08064D46:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08064D88 @ =gUnk_08752DCC
	movs r3, #0x70
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	movs r3, #0x20
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08064D8C
	cmp r1, #0
	beq .L08064D80
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064D80:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08064E52
	.align 2, 0
.L08064D88: .4byte gUnk_08752DCC
.L08064D8C:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x6c]
	ldr r1, [r6]
	mov r3, sl
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x68]
	add r2, sp, #0x6c
	add r0, sp, #0x68
	cmp r4, #1
	bhs .L08064DA6
	adds r0, r2, #0
.L08064DA6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08064DC6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08064DC2
	mov r0, r8
	bl func_080D3BC0
.L08064DC2:
	ldr r1, [r6]
	b .L08064DCA
.L08064DC6:
	movs r0, #0
	mov r8, r0
.L08064DCA:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L08064DEE
.L08064DD6:
	cmp r3, #0
	beq .L08064DE6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064DE6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08064DD6
.L08064DEE:
	adds r5, r3, #0
	ldr r0, [sp, #0x6c]
	cmp r0, #1
	bne .L08064E0A
	cmp r5, #0
	beq .L08064E06
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08064E06:
	adds r5, #0x10
	b .L08064E2C
.L08064E0A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08064E2A
.L08064E12:
	cmp r2, #0
	beq .L08064E22
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064E22:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08064E12
.L08064E2A:
	adds r5, r2, #0
.L08064E2C:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08064E3C
.L08064E36:
	adds r0, #0x10
	cmp r0, r2
	bne .L08064E36
.L08064E3C:
	cmp r1, #0
	beq .L08064E46
	adds r0, r1, #0
	bl free
.L08064E46:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08064E52:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08064E94 @ =gUnk_08752B4C
	movs r3, #0x71
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	movs r3, #0x20
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08064E98
	cmp r1, #0
	beq .L08064E8C
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064E8C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08064F5E
	.align 2, 0
.L08064E94: .4byte gUnk_08752B4C
.L08064E98:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x74]
	ldr r1, [r6]
	mov r3, sl
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x70]
	add r2, sp, #0x74
	add r0, sp, #0x70
	cmp r4, #1
	bhs .L08064EB2
	adds r0, r2, #0
.L08064EB2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08064ED2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08064ECE
	mov r0, r8
	bl func_080D3BC0
.L08064ECE:
	ldr r1, [r6]
	b .L08064ED6
.L08064ED2:
	movs r0, #0
	mov r8, r0
.L08064ED6:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L08064EFA
.L08064EE2:
	cmp r3, #0
	beq .L08064EF2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064EF2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08064EE2
.L08064EFA:
	adds r5, r3, #0
	ldr r0, [sp, #0x74]
	cmp r0, #1
	bne .L08064F16
	cmp r5, #0
	beq .L08064F12
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08064F12:
	adds r5, #0x10
	b .L08064F38
.L08064F16:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08064F36
.L08064F1E:
	cmp r2, #0
	beq .L08064F2E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064F2E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08064F1E
.L08064F36:
	adds r5, r2, #0
.L08064F38:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08064F48
.L08064F42:
	adds r0, #0x10
	cmp r0, r2
	bne .L08064F42
.L08064F48:
	cmp r1, #0
	beq .L08064F52
	adds r0, r1, #0
	bl free
.L08064F52:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08064F5E:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08064FA0 @ =gUnk_087529AC
	movs r3, #0x72
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	movs r3, #0x20
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08064FA4
	cmp r1, #0
	beq .L08064F98
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064F98:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806506A
	.align 2, 0
.L08064FA0: .4byte gUnk_087529AC
.L08064FA4:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x7c]
	ldr r1, [r6]
	mov r3, sl
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x78]
	add r2, sp, #0x7c
	add r0, sp, #0x78
	cmp r4, #1
	bhs .L08064FBE
	adds r0, r2, #0
.L08064FBE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08064FDE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08064FDA
	mov r0, r8
	bl func_080D3BC0
.L08064FDA:
	ldr r1, [r6]
	b .L08064FE2
.L08064FDE:
	movs r0, #0
	mov r8, r0
.L08064FE2:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L08065006
.L08064FEE:
	cmp r3, #0
	beq .L08064FFE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08064FFE:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08064FEE
.L08065006:
	adds r5, r3, #0
	ldr r0, [sp, #0x7c]
	cmp r0, #1
	bne .L08065022
	cmp r5, #0
	beq .L0806501E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806501E:
	adds r5, #0x10
	b .L08065044
.L08065022:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08065042
.L0806502A:
	cmp r2, #0
	beq .L0806503A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806503A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806502A
.L08065042:
	adds r5, r2, #0
.L08065044:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08065054
.L0806504E:
	adds r0, #0x10
	cmp r0, r2
	bne .L0806504E
.L08065054:
	cmp r1, #0
	beq .L0806505E
	adds r0, r1, #0
	bl free
.L0806505E:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806506A:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L080650AC @ =gUnk_08752D4C
	movs r3, #0x73
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080650B0
	cmp r1, #0
	beq .L080650A4
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080650A4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08065176
	.align 2, 0
.L080650AC: .4byte gUnk_08752D4C
.L080650B0:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x84]
	ldr r1, [r6]
	mov r3, sl
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x80]
	add r2, sp, #0x84
	add r0, sp, #0x80
	cmp r4, #1
	bhs .L080650CA
	adds r0, r2, #0
.L080650CA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080650EA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080650E6
	mov r0, r8
	bl func_080D3BC0
.L080650E6:
	ldr r1, [r6]
	b .L080650EE
.L080650EA:
	movs r0, #0
	mov r8, r0
.L080650EE:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L08065112
.L080650FA:
	cmp r3, #0
	beq .L0806510A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806510A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080650FA
.L08065112:
	adds r5, r3, #0
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne .L0806512E
	cmp r5, #0
	beq .L0806512A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806512A:
	adds r5, #0x10
	b .L08065150
.L0806512E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0806514E
.L08065136:
	cmp r2, #0
	beq .L08065146
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08065146:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08065136
.L0806514E:
	adds r5, r2, #0
.L08065150:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08065160
.L0806515A:
	adds r0, #0x10
	cmp r0, r2
	bne .L0806515A
.L08065160:
	cmp r1, #0
	beq .L0806516A
	adds r0, r1, #0
	bl free
.L0806516A:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08065176:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L080651B8 @ =gUnk_08752ACC
	movs r3, #0x77
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080651BC
	cmp r1, #0
	beq .L080651B0
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080651B0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08065288
	.align 2, 0
.L080651B8: .4byte gUnk_08752ACC
.L080651BC:
	str r1, [sp, #0x160]
	movs r0, #1
	add r1, sp, #0x8c
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0x160]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x88
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080651DA
	mov r0, sl
.L080651DA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080651F8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080651FC
	mov r0, r8
	bl func_080D3BC0
	b .L080651FC
.L080651F8:
	movs r0, #0
	mov r8, r0
.L080651FC:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x160]
	cmp r2, r4
	beq .L08065224
.L0806520A:
	cmp r3, #0
	beq .L0806521A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806521A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x160]
	cmp r2, r5
	bne .L0806520A
.L08065224:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L08065242
	cmp r5, #0
	beq .L0806523E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806523E:
	adds r5, #0x10
	b .L08065264
.L08065242:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08065262
.L0806524A:
	cmp r2, #0
	beq .L0806525A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806525A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806524A
.L08065262:
	adds r5, r2, #0
.L08065264:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08065274
.L0806526E:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806526E
.L08065274:
	cmp r0, #0
	beq .L0806527C
	bl free
.L0806527C:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08065288:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L080652CC @ =gUnk_0875290C
	movs r3, #0x7b
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080652D0
	cmp r1, #0
	beq .L080652C2
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080652C2:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806539C
	.align 2, 0
.L080652CC: .4byte gUnk_0875290C
.L080652D0:
	str r1, [sp, #0x160]
	movs r0, #1
	add r1, sp, #0x94
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0x160]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x90
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080652EE
	mov r0, sl
.L080652EE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806530C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08065310
	mov r0, r8
	bl func_080D3BC0
	b .L08065310
.L0806530C:
	movs r0, #0
	mov r8, r0
.L08065310:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x160]
	cmp r2, r4
	beq .L08065338
.L0806531E:
	cmp r3, #0
	beq .L0806532E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806532E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x160]
	cmp r2, r5
	bne .L0806531E
.L08065338:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L08065356
	cmp r5, #0
	beq .L08065352
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08065352:
	adds r5, #0x10
	b .L08065378
.L08065356:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08065376
.L0806535E:
	cmp r2, #0
	beq .L0806536E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806536E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806535E
.L08065376:
	adds r5, r2, #0
.L08065378:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08065388
.L08065382:
	adds r1, #0x10
	cmp r1, r2
	bne .L08065382
.L08065388:
	cmp r0, #0
	beq .L08065390
	bl free
.L08065390:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806539C:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L080653D8 @ =gUnk_0875298C
	add r0, sp, #8
	ldr r2, .L080653DC @ =0x05000040
	movs r3, #0x20
	bl func_08008F0C
	add r2, sp, #8
	mov sb, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080653E0
	cmp r1, #0
	beq .L080653CE
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080653CE:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080654A8
	.align 2, 0
.L080653D8: .4byte gUnk_0875298C
.L080653DC: .4byte 0x05000040
.L080653E0:
	str r1, [sp, #0x160]
	movs r0, #1
	add r1, sp, #0x9c
	str r0, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x160]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080653FE
	mov r0, sl
.L080653FE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806541C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08065420
	mov r0, r8
	bl func_080D3BC0
	b .L08065420
.L0806541C:
	movs r0, #0
	mov r8, r0
.L08065420:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L0806543E
.L0806542A:
	cmp r3, #0
	beq .L0806543A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806543A:
	adds r2, #0x10
	adds r3, #0x10
.L0806543E:
	ldr r0, [sp, #0x160]
	cmp r2, r0
	bne .L0806542A
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L08065462
	cmp r5, #0
	beq .L0806545E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806545E:
	adds r5, #0x10
	b .L08065484
.L08065462:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08065482
.L0806546A:
	cmp r2, #0
	beq .L0806547A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806547A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806546A
.L08065482:
	adds r5, r2, #0
.L08065484:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08065494
.L0806548E:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806548E
.L08065494:
	cmp r0, #0
	beq .L0806549C
	bl free
.L0806549C:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r1, [sp, #0x164]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080654A8:
	ldr r2, [sp, #0xf0]
	ldr r0, [r2]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L080654EC @ =gUnk_087517AC
	movs r3, #0x9c
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	adds r3, #0x84
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080654F0
	cmp r1, #0
	beq .L080654E2
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080654E2:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080655BC
	.align 2, 0
.L080654EC: .4byte gUnk_087517AC
.L080654F0:
	str r1, [sp, #0x160]
	movs r0, #1
	add r1, sp, #0xa4
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0x160]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xa0
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L0806550E
	mov r0, sl
.L0806550E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806552C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08065530
	mov r0, r8
	bl func_080D3BC0
	b .L08065530
.L0806552C:
	movs r0, #0
	mov r8, r0
.L08065530:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x160]
	cmp r2, r4
	beq .L08065558
.L0806553E:
	cmp r3, #0
	beq .L0806554E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806554E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x160]
	cmp r2, r5
	bne .L0806553E
.L08065558:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L08065576
	cmp r5, #0
	beq .L08065572
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08065572:
	adds r5, #0x10
	b .L08065598
.L08065576:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08065596
.L0806557E:
	cmp r2, #0
	beq .L0806558E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806558E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806557E
.L08065596:
	adds r5, r2, #0
.L08065598:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080655A8
.L080655A2:
	adds r1, #0x10
	cmp r1, r2
	bne .L080655A2
.L080655A8:
	cmp r0, #0
	beq .L080655B0
	bl free
.L080655B0:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080655BC:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08065600 @ =gUnk_08750F8C
	movs r3, #0xa5
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	adds r3, #0x7b
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08065604
	cmp r1, #0
	beq .L080655F6
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080655F6:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080656D0
	.align 2, 0
.L08065600: .4byte gUnk_08750F8C
.L08065604:
	str r1, [sp, #0x160]
	movs r0, #1
	add r1, sp, #0xac
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0x160]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xa8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08065622
	mov r0, sl
.L08065622:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08065640
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08065644
	mov r0, r8
	bl func_080D3BC0
	b .L08065644
.L08065640:
	movs r0, #0
	mov r8, r0
.L08065644:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x160]
	cmp r2, r4
	beq .L0806566C
.L08065652:
	cmp r3, #0
	beq .L08065662
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08065662:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x160]
	cmp r2, r5
	bne .L08065652
.L0806566C:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L0806568A
	cmp r5, #0
	beq .L08065686
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08065686:
	adds r5, #0x10
	b .L080656AC
.L0806568A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080656AA
.L08065692:
	cmp r2, #0
	beq .L080656A2
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080656A2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08065692
.L080656AA:
	adds r5, r2, #0
.L080656AC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080656BC
.L080656B6:
	adds r1, #0x10
	cmp r1, r2
	bne .L080656B6
.L080656BC:
	cmp r0, #0
	beq .L080656C4
	bl free
.L080656C4:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080656D0:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08065714 @ =gUnk_08750E4C
	movs r3, #0xae
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	adds r3, #0x72
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08065718
	cmp r1, #0
	beq .L0806570A
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806570A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080657E4
	.align 2, 0
.L08065714: .4byte gUnk_08750E4C
.L08065718:
	str r1, [sp, #0x160]
	movs r0, #1
	add r1, sp, #0xb4
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0x160]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xb0
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08065736
	mov r0, sl
.L08065736:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08065754
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08065758
	mov r0, r8
	bl func_080D3BC0
	b .L08065758
.L08065754:
	movs r0, #0
	mov r8, r0
.L08065758:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x160]
	cmp r2, r4
	beq .L08065780
.L08065766:
	cmp r3, #0
	beq .L08065776
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08065776:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x160]
	cmp r2, r5
	bne .L08065766
.L08065780:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L0806579E
	cmp r5, #0
	beq .L0806579A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806579A:
	adds r5, #0x10
	b .L080657C0
.L0806579E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080657BE
.L080657A6:
	cmp r2, #0
	beq .L080657B6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080657B6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080657A6
.L080657BE:
	adds r5, r2, #0
.L080657C0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080657D0
.L080657CA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080657CA
.L080657D0:
	cmp r0, #0
	beq .L080657D8
	bl free
.L080657D8:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080657E4:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08065820 @ =gUnk_08750F6C
	add r0, sp, #8
	ldr r2, .L08065824 @ =0x05000060
	movs r3, #0x20
	bl func_08008F0C
	add r2, sp, #8
	mov sb, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08065828
	cmp r1, #0
	beq .L08065816
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08065816:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080658F0
	.align 2, 0
.L08065820: .4byte gUnk_08750F6C
.L08065824: .4byte 0x05000060
.L08065828:
	str r1, [sp, #0x160]
	movs r0, #1
	add r1, sp, #0xbc
	str r0, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x160]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xb8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08065846
	mov r0, sl
.L08065846:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08065864
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08065868
	mov r0, r8
	bl func_080D3BC0
	b .L08065868
.L08065864:
	movs r0, #0
	mov r8, r0
.L08065868:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L08065886
.L08065872:
	cmp r3, #0
	beq .L08065882
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08065882:
	adds r2, #0x10
	adds r3, #0x10
.L08065886:
	ldr r0, [sp, #0x160]
	cmp r2, r0
	bne .L08065872
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080658AA
	cmp r5, #0
	beq .L080658A6
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080658A6:
	adds r5, #0x10
	b .L080658CC
.L080658AA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080658CA
.L080658B2:
	cmp r2, #0
	beq .L080658C2
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080658C2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080658B2
.L080658CA:
	adds r5, r2, #0
.L080658CC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080658DC
.L080658D6:
	adds r1, #0x10
	cmp r1, r2
	bne .L080658D6
.L080658DC:
	cmp r0, #0
	beq .L080658E4
	bl free
.L080658E4:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r1, [sp, #0x164]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080658F0:
	ldr r2, [sp, #0xf0]
	ldr r0, [r2]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L0806592C @ =gUnk_08750C4C
	add r0, sp, #8
	ldr r2, .L08065930 @ =0x060100A0
	movs r3, #0x20
	bl func_08008F0C
	add r3, sp, #8
	mov sb, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08065934
	cmp r1, #0
	beq .L08065922
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08065922:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08065A00
	.align 2, 0
.L0806592C: .4byte gUnk_08750C4C
.L08065930: .4byte 0x060100A0
.L08065934:
	str r1, [sp, #0x160]
	movs r0, #1
	add r1, sp, #0xc4
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x160]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xc0
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08065952
	mov r0, sl
.L08065952:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08065970
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08065974
	mov r0, r8
	bl func_080D3BC0
	b .L08065974
.L08065970:
	movs r0, #0
	mov r8, r0
.L08065974:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x160]
	cmp r2, r4
	beq .L0806599C
.L08065982:
	cmp r3, #0
	beq .L08065992
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08065992:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x160]
	cmp r2, r5
	bne .L08065982
.L0806599C:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L080659BA
	cmp r5, #0
	beq .L080659B6
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080659B6:
	adds r5, #0x10
	b .L080659DC
.L080659BA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080659DA
.L080659C2:
	cmp r2, #0
	beq .L080659D2
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080659D2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080659C2
.L080659DA:
	adds r5, r2, #0
.L080659DC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080659EC
.L080659E6:
	adds r1, #0x10
	cmp r1, r2
	bne .L080659E6
.L080659EC:
	cmp r0, #0
	beq .L080659F4
	bl free
.L080659F4:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08065A00:
	ldr r1, [sp, #0xf0]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08065A3C @ =gUnk_08750C6C
	add r0, sp, #8
	ldr r2, .L08065A40 @ =0x05000220
	movs r3, #0x20
	bl func_08008F0C
	add r2, sp, #8
	mov sb, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08065A44
	cmp r1, #0
	beq .L08065A32
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08065A32:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08065B0C
	.align 2, 0
.L08065A3C: .4byte gUnk_08750C6C
.L08065A40: .4byte 0x05000220
.L08065A44:
	str r1, [sp, #0x160]
	movs r0, #1
	add r1, sp, #0xcc
	str r0, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x160]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xc8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08065A62
	mov r0, sl
.L08065A62:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08065A80
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08065A84
	mov r0, r8
	bl func_080D3BC0
	b .L08065A84
.L08065A80:
	movs r0, #0
	mov r8, r0
.L08065A84:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L08065AA2
.L08065A8E:
	cmp r3, #0
	beq .L08065A9E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08065A9E:
	adds r2, #0x10
	adds r3, #0x10
.L08065AA2:
	ldr r0, [sp, #0x160]
	cmp r2, r0
	bne .L08065A8E
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L08065AC6
	cmp r5, #0
	beq .L08065AC2
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08065AC2:
	adds r5, #0x10
	b .L08065AE8
.L08065AC6:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08065AE6
.L08065ACE:
	cmp r2, #0
	beq .L08065ADE
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08065ADE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08065ACE
.L08065AE6:
	adds r5, r2, #0
.L08065AE8:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08065AF8
.L08065AF2:
	adds r1, #0x10
	cmp r1, r2
	bne .L08065AF2
.L08065AF8:
	cmp r0, #0
	beq .L08065B00
	bl free
.L08065B00:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r1, [sp, #0x164]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08065B0C:
	movs r2, #4
	mov r8, r2
	movs r3, #0
	str r3, [sp, #0xf8]

	thumb_func_start sub_08065B14
sub_08065B14: @ 0x08065B14
	ldr r4, [sp, #0xf0]
	ldr r5, .L08065B58 @ =0x0000058C
	adds r0, r4, r5
	ldr r0, [r0]
	ldr r7, .L08065B5C @ =0x00001CD4
	adds r0, r0, r7
	ldr r1, [sp, #0xf8]
	bl func_080A031C
	str r0, [sp, #0xfc]
	ldr r0, [sp, #0xf8]
	adds r0, #1
	str r0, [sp, #0x138]
	ldr r1, [sp, #0xfc]
	cmp r1, #0
	bne .L08065B38
	bl sub_0806641E
.L08065B38:
	movs r0, #8
	str r0, [sp, #0xc]
	add r1, sp, #8
	mov r2, r8
	lsls r0, r2, #3
	strh r0, [r1]
	str r0, [sp, #0x150]
	ldr r3, [sp, #0xf8]
	cmp r3, #6
	bhi .L08065B80
	lsls r0, r3, #2
	ldr r1, .L08065B60 @ =.L08065B64
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08065B58: .4byte 0x0000058C
.L08065B5C: .4byte 0x00001CD4
.L08065B60: .4byte .L08065B64
.L08065B64: @ jump table
	.4byte .L08065BE0 @ case 0
	.4byte .L08065B98 @ case 1
	.4byte .L08065BF8 @ case 2
	.4byte .L08065B80 @ case 3
	.4byte .L08065C10 @ case 4
	.4byte .L08065BC8 @ case 5
	.4byte .L08065BB0 @ case 6
.L08065B80:
	ldr r0, .L08065B90 @ =gUnk_0875218C
	str r0, [sp, #0x10]
	ldr r0, .L08065B94 @ =gUnk_0875220C
	str r0, [sp, #0x14]
	movs r4, #0x27
	str r4, [sp, #0x100]
	b .L08065C1C
	.align 2, 0
.L08065B90: .4byte gUnk_0875218C
.L08065B94: .4byte gUnk_0875220C
.L08065B98:
	ldr r0, .L08065BA8 @ =gUnk_0875204C
	str r0, [sp, #0x10]
	ldr r0, .L08065BAC @ =gUnk_087520CC
	str r0, [sp, #0x14]
	movs r5, #0x25
	str r5, [sp, #0x100]
	b .L08065C1C
	.align 2, 0
.L08065BA8: .4byte gUnk_0875204C
.L08065BAC: .4byte gUnk_087520CC
.L08065BB0:
	ldr r0, .L08065BC0 @ =gUnk_08751FAC
	str r0, [sp, #0x10]
	ldr r0, .L08065BC4 @ =gUnk_0875202C
	str r0, [sp, #0x14]
	movs r7, #0x2a
	str r7, [sp, #0x100]
	b .L08065C1C
	.align 2, 0
.L08065BC0: .4byte gUnk_08751FAC
.L08065BC4: .4byte gUnk_0875202C
.L08065BC8:
	ldr r0, .L08065BD8 @ =gUnk_087522CC
	str r0, [sp, #0x10]
	ldr r0, .L08065BDC @ =gUnk_0875234C
	str r0, [sp, #0x14]
	movs r0, #0x29
	str r0, [sp, #0x100]
	b .L08065C1C
	.align 2, 0
.L08065BD8: .4byte gUnk_087522CC
.L08065BDC: .4byte gUnk_0875234C
.L08065BE0:
	ldr r0, .L08065BF0 @ =gUnk_08751F0C
	str r0, [sp, #0x10]
	ldr r0, .L08065BF4 @ =gUnk_08751F8C
	str r0, [sp, #0x14]
	movs r1, #0x24
	str r1, [sp, #0x100]
	b .L08065C1C
	.align 2, 0
.L08065BF0: .4byte gUnk_08751F0C
.L08065BF4: .4byte gUnk_08751F8C
.L08065BF8:
	ldr r0, .L08065C08 @ =gUnk_087520EC
	str r0, [sp, #0x10]
	ldr r0, .L08065C0C @ =gUnk_0875216C
	str r0, [sp, #0x14]
	movs r2, #0x26
	str r2, [sp, #0x100]
	b .L08065C1C
	.align 2, 0
.L08065C08: .4byte gUnk_087520EC
.L08065C0C: .4byte gUnk_0875216C
.L08065C10:
	ldr r0, .L08065CAC @ =gUnk_0875222C
	str r0, [sp, #0x10]
	ldr r0, .L08065CB0 @ =gUnk_087522AC
	str r0, [sp, #0x14]
	movs r3, #0x28
	str r3, [sp, #0x100]
.L08065C1C:
	ldr r4, [sp, #0xf0]
	ldr r5, .L08065CB4 @ =0x00000594
	adds r6, r4, r5
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x104]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08065CB8
	cmp r1, #0
	beq .L08065C40
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08065C40:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	add r5, sp, #0x18
	mov sb, r5
	ldr r7, [sp, #0xf8]
	lsls r7, r7, #1
	str r7, [sp, #0x14c]
	mov r0, sp
	adds r0, #0xd8
	str r0, [sp, #0x11c]
	mov r1, sp
	adds r1, #0xdc
	str r1, [sp, #0x120]
	mov r2, r8
	lsls r2, r2, #6
	str r2, [sp, #0x154]
	mov r3, sp
	adds r3, #0xe8
	str r3, [sp, #0x124]
	mov r4, sp
	adds r4, #0xec
	str r4, [sp, #0x128]
	mov r5, r8
	adds r5, #2
	str r5, [sp, #0x134]
	mov r7, r8
	adds r7, #3
	str r7, [sp, #0x13c]
	movs r0, #0x70
	lsls r0, r0, #0x10
	str r0, [sp, #0x158]
	mov r1, r8
	adds r1, #4
	str r1, [sp, #0x140]
	movs r2, #0x71
	lsls r2, r2, #0x10
	str r2, [sp, #0x15c]
	mov r3, r8
	adds r3, #5
	str r3, [sp, #0x144]
	movs r4, #0x72
	lsls r4, r4, #0x10
	str r4, [sp, #0x108]
	movs r5, #0x44
	lsls r5, r5, #0x10
	str r5, [sp, #0x12c]
	adds r7, #3
	str r7, [sp, #0x148]
	ldr r0, [sp, #0xf8]
	adds r0, #1
	str r0, [sp, #0x138]
	b .L08065DE6
	.align 2, 0
.L08065CAC: .4byte gUnk_0875222C
.L08065CB0: .4byte gUnk_087522AC
.L08065CB4: .4byte 0x00000594
.L08065CB8:
	str r1, [sp, #0x160]
	movs r0, #1
	add r1, sp, #0xd4
	str r0, [r1]
	ldr r3, [r6]
	ldr r2, [sp, #0x160]
	subs r0, r2, r3
	asrs r4, r0, #4
	add r0, sp, #0xd0
	str r4, [r0]
	ldr r2, [r1]
	adds r1, r3, #0
	cmp r4, r2
	bhs .L08065CD6
	add r0, sp, #0xd4
.L08065CD6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08065CF6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08065CF2
	mov r0, sl
	bl func_080D3BC0
.L08065CF2:
	ldr r1, [r6]
	b .L08065CFA
.L08065CF6:
	movs r0, #0
	mov sl, r0
.L08065CFA:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	adds r3, r1, #0
	adds r2, r5, #0
	add r4, sp, #0x18
	mov sb, r4
	ldr r5, [sp, #0xf8]
	lsls r5, r5, #1
	str r5, [sp, #0x14c]
	mov r7, sp
	adds r7, #0xd8
	str r7, [sp, #0x11c]
	mov r0, sp
	adds r0, #0xdc
	str r0, [sp, #0x120]
	mov r1, r8
	lsls r1, r1, #6
	str r1, [sp, #0x154]
	mov r4, sp
	adds r4, #0xe8
	str r4, [sp, #0x124]
	mov r5, sp
	adds r5, #0xec
	str r5, [sp, #0x128]
	mov r7, r8
	adds r7, #2
	str r7, [sp, #0x134]
	mov r0, r8
	adds r0, #3
	str r0, [sp, #0x13c]
	movs r1, #0x70
	lsls r1, r1, #0x10
	str r1, [sp, #0x158]
	mov r4, r8
	adds r4, #4
	str r4, [sp, #0x140]
	movs r5, #0x71
	lsls r5, r5, #0x10
	str r5, [sp, #0x15c]
	adds r7, #3
	str r7, [sp, #0x144]
	movs r0, #0x72
	lsls r0, r0, #0x10
	str r0, [sp, #0x108]
	movs r1, #0x44
	lsls r1, r1, #0x10
	str r1, [sp, #0x12c]
	adds r4, #2
	str r4, [sp, #0x148]
	ldr r5, [sp, #0xf8]
	adds r5, #1
	str r5, [sp, #0x138]
	ldr r7, [sp, #0x160]
	cmp r3, r7
	beq .L08065D82
.L08065D68:
	cmp r2, #0
	beq .L08065D78
	adds r0, r2, #0
	adds r1, r3, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08065D78:
	adds r3, #0x10
	adds r2, #0x10
	ldr r0, [sp, #0x160]
	cmp r3, r0
	bne .L08065D68
.L08065D82:
	adds r5, r2, #0
	ldr r1, [sp, #0xd4]
	cmp r1, #1
	bne .L08065D9E
	cmp r5, #0
	beq .L08065D9A
	adds r0, r5, #0
	ldr r1, [sp, #0x104]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08065D9A:
	adds r5, #0x10
	b .L08065DC0
.L08065D9E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08065DBE
.L08065DA6:
	cmp r2, #0
	beq .L08065DB6
	adds r0, r2, #0
	ldr r1, [sp, #0x104]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08065DB6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08065DA6
.L08065DBE:
	adds r5, r2, #0
.L08065DC0:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08065DD0
.L08065DCA:
	adds r0, #0x10
	cmp r0, r2
	bne .L08065DCA
.L08065DD0:
	cmp r1, #0
	beq .L08065DDA
	adds r0, r1, #0
	bl free
.L08065DDA:
	ldr r0, [sp, #0x164]
	add r0, sl
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08065DE6:
	movs r0, #0
	mov r8, r0
	add r1, sp, #0x150
	ldrh r2, [r1]
	mov r1, sb
	strh r2, [r1]
	ldr r2, [sp, #0x14c]
	ldr r3, [sp, #0xf8]
	adds r4, r2, r3
	lsls r4, r4, #6
	adds r4, r4, r3
	lsls r4, r4, #2
	ldr r5, [sp, #0xf0]
	adds r1, r4, r5
	movs r5, #0xc
	movs r6, #2
	add r0, sp, #0xd8
	strh r5, [r0]
	ldr r7, [sp, #0x11c]
	strh r6, [r7, #2]
	ldr r0, [r0]
	ldr r2, .L08065EBC @ =0x00000C4C
	adds r1, r1, r2
	movs r2, #0
	bl func_0804E7A0
	ldr r3, [sp, #0xf0]
	ldr r7, .L08065EC0 @ =0x0000058C
	adds r0, r3, r7
	ldr r0, [r0]
	ldr r1, .L08065EC4 @ =0x00001CD4
	adds r0, r0, r1
	ldr r1, [sp, #0x100]
	bl func_0809FE3C
	adds r2, r0, #0
	ldr r3, [sp, #0xf0]
	adds r1, r4, r3
	add r0, sp, #0xdc
	strh r5, [r0]
	ldr r5, [sp, #0x120]
	strh r6, [r5, #2]
	ldr r0, [r0]
	ldr r7, .L08065EBC @ =0x00000C4C
	adds r1, r1, r7
	str r2, [sp]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r0, [sp, #0xf0]
	adds r4, r4, r0
	adds r1, r7, #0
	adds r4, r4, r1
	mov r2, sb
	str r4, [r2, #4]
	movs r0, #3
	ldr r3, [sp, #0xf8]
	ands r0, r3
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #3
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r5, [sp, #0xf4]
	ldr r0, [r5, #0x18]
	ldr r7, [sp, #0x154]
	adds r0, r0, r7
	adds r0, #6
	mov r1, r8
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
	lsls r4, r4, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r4, r4, r0
	mov r2, sb
	str r4, [r2, #8]
	movs r0, #0xc0
	lsls r0, r0, #2
	str r0, [r2, #0xc]
	ldr r3, [sp, #0xf0]
	ldr r4, .L08065EC8 @ =0x000005A4
	adds r6, r3, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08065ECC
	cmp r1, #0
	beq .L08065EB4
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [sp, #0x24]
	str r1, [r0]
.L08065EB4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08065F9E
	.align 2, 0
.L08065EBC: .4byte 0x00000C4C
.L08065EC0: .4byte 0x0000058C
.L08065EC4: .4byte 0x00001CD4
.L08065EC8: .4byte 0x000005A4
.L08065ECC:
	str r1, [sp, #0x160]
	movs r0, #1
	add r1, sp, #0xe4
	str r0, [r1]
	ldr r3, [r6]
	ldr r4, [sp, #0x160]
	subs r0, r4, r3
	asrs r4, r0, #4
	add r0, sp, #0xe0
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	adds r1, r3, #0
	cmp r4, r2
	bhs .L08065EEC
	mov r0, sl
.L08065EEC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08065F0C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08065F08
	mov r0, r8
	bl func_080D3BC0
.L08065F08:
	ldr r1, [r6]
	b .L08065F10
.L08065F0C:
	movs r0, #0
	mov r8, r0
.L08065F10:
	adds r5, r0, #0
	str r5, [sp, #0x164]
	adds r3, r1, #0
	adds r2, r5, #0
	ldr r5, [sp, #0x160]
	cmp r3, r5
	beq .L08065F38
.L08065F1E:
	cmp r2, #0
	beq .L08065F2E
	adds r0, r2, #0
	adds r1, r3, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08065F2E:
	adds r3, #0x10
	adds r2, #0x10
	ldr r7, [sp, #0x160]
	cmp r3, r7
	bne .L08065F1E
.L08065F38:
	adds r5, r2, #0
	mov r0, sl
	ldr r1, [r0]
	cmp r1, #1
	bne .L08065F56
	cmp r5, #0
	beq .L08065F52
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [sp, #0x24]
	str r1, [r0]
.L08065F52:
	adds r5, #0x10
	b .L08065F78
.L08065F56:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08065F76
.L08065F5E:
	cmp r2, #0
	beq .L08065F6E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [sp, #0x24]
	str r1, [r0]
.L08065F6E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08065F5E
.L08065F76:
	adds r5, r2, #0
.L08065F78:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08065F88
.L08065F82:
	adds r0, #0x10
	cmp r0, r2
	bne .L08065F82
.L08065F88:
	cmp r1, #0
	beq .L08065F92
	adds r0, r1, #0
	bl free
.L08065F92:
	ldr r0, [sp, #0x164]
	add r0, r8
	ldr r7, [sp, #0x164]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08065F9E:
	movs r0, #0xa
	ldr r1, [sp, #0x124]
	str r0, [r1]
	ldr r0, [sp, #0xfc]
	bl GetFriendship__C3Npc
	movs r1, #0x19
	bl __udivsi3
	ldr r2, [sp, #0x128]
	str r0, [r2]
	add r1, sp, #0xe8
	add r3, sp, #0xec
	ldr r2, [r1]
	ldr r0, [r3]
	cmp r2, r0
	bls .L08065FC2
	adds r1, r3, #0
.L08065FC2:
	ldr r6, [r1]
	movs r4, #0
	cmp r4, r6
	bhs .L08065FF6
	movs r5, #0xa
	movs r3, #0x6c
	lsls r7, r3, #0x10
.L08065FD0:
	ldr r1, [sp, #0xf4]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x134]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r5
	movs r1, #1
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r7, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #2
	adds r4, #1
	cmp r4, r6
	blo .L08065FD0
.L08065FF6:
	movs r0, #0x78
	str r0, [sp, #0xc]
	ldr r0, .L08066048 @ =gUnk_08750C4C
	str r0, [sp, #0x10]
	ldr r0, .L0806604C @ =gUnk_08750C6C
	str r0, [sp, #0x14]
	movs r5, #0
	ldr r3, [sp, #0xf4]
	ldr r0, [r3, #0x18]
	ldr r4, [sp, #0x13c]
	lsls r1, r4, #6
	adds r0, r0, r1
	adds r0, #8
	ldr r7, [sp, #0x158]
	lsrs r1, r7, #0x10
	movs r2, #2
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	ldr r0, [sp, #0xfc]
	movs r1, #1
	bl GetTaskExp__C13HarvestSpriteQ213HarvestSprite4Task
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xff
	bl __udivsi3
	adds r4, r0, #0
	movs r0, #0x9c
	adds r0, #8
	lsls r7, r0, #0x10
	movs r6, #0xa
	b .L08066072
	.align 2, 0
.L08066048: .4byte gUnk_08750C4C
.L0806604C: .4byte gUnk_08750C6C
.L08066050:
	ldr r1, [sp, #0xf4]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x13c]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r6
	movs r1, #3
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r7, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r6, #2
	adds r5, #1
.L08066072:
	adds r1, r4, #0
	cmp r4, #0
	bge .L0806607A
	adds r1, r4, #7
.L0806607A:
	asrs r2, r1, #3
	cmp r5, r2
	blt .L08066050
	cmp r5, #9
	bgt .L080660E6
	ldr r3, [sp, #0xf4]
	ldr r1, [r3, #0x18]
	ldr r7, [sp, #0x13c]
	lsls r0, r7, #6
	adds r1, r1, r0
	adds r0, r5, #5
	lsls r0, r0, #1
	adds r3, r1, r0
	lsls r1, r2, #3
	subs r1, r4, r1
	adds r1, #0x9c
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #3
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #1
	cmp r5, #9
	bgt .L080660E6
	lsls r0, r5, #1
	adds r4, r0, #0
	adds r4, #0xa
	movs r0, #0x9c
	lsls r6, r0, #0x10
.L080660C0:
	ldr r1, [sp, #0xf4]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x13c]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r4
	movs r1, #3
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r6, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r4, #2
	adds r5, #1
	cmp r5, #9
	ble .L080660C0
.L080660E6:
	add r1, sp, #8
	ldr r3, [sp, #0x13c]
	lsls r0, r3, #3
	adds r0, #1
	strh r0, [r1]
	ldr r4, [sp, #0xf0]
	ldr r5, .L08066158 @ =0x00002164
	adds r2, r4, r5
	ldr r0, [r2]
	cmp r0, #0x14
	bhi .L08066114
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r2, r0
	cmp r0, #0
	beq .L0806610E
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806610E:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L08066114:
	movs r5, #0
	ldr r7, [sp, #0xf4]
	ldr r0, [r7, #0x18]
	ldr r2, [sp, #0x140]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, #8
	ldr r3, [sp, #0x15c]
	lsrs r1, r3, #0x10
	movs r2, #2
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	ldr r0, [sp, #0xfc]
	movs r1, #0
	bl GetTaskExp__C13HarvestSpriteQ213HarvestSprite4Task
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xff
	bl __udivsi3
	adds r4, r0, #0
	movs r0, #0xa5
	adds r0, #8
	lsls r7, r0, #0x10
	movs r6, #0xa
	b .L0806617E
	.align 2, 0
.L08066158: .4byte 0x00002164
.L0806615C:
	ldr r1, [sp, #0xf4]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x140]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r6
	movs r1, #3
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r7, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r6, #2
	adds r5, #1
.L0806617E:
	adds r1, r4, #0
	cmp r4, #0
	bge .L08066186
	adds r1, r4, #7
.L08066186:
	asrs r2, r1, #3
	cmp r5, r2
	blt .L0806615C
	cmp r5, #9
	bgt .L080661F2
	ldr r3, [sp, #0xf4]
	ldr r1, [r3, #0x18]
	ldr r7, [sp, #0x140]
	lsls r0, r7, #6
	adds r1, r1, r0
	adds r0, r5, #5
	lsls r0, r0, #1
	adds r3, r1, r0
	lsls r1, r2, #3
	subs r1, r4, r1
	adds r1, #0xa5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #3
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #1
	cmp r5, #9
	bgt .L080661F2
	lsls r0, r5, #1
	adds r4, r0, #0
	adds r4, #0xa
	movs r0, #0xa5
	lsls r6, r0, #0x10
.L080661CC:
	ldr r1, [sp, #0xf4]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x140]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r4
	movs r1, #3
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r6, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r4, #2
	adds r5, #1
	cmp r5, #9
	ble .L080661CC
.L080661F2:
	add r1, sp, #8
	ldr r3, [sp, #0x140]
	lsls r0, r3, #3
	adds r0, #1
	strh r0, [r1]
	ldr r4, [sp, #0xf0]
	ldr r5, .L08066264 @ =0x00002164
	adds r2, r4, r5
	ldr r0, [r2]
	cmp r0, #0x14
	bhi .L08066220
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r2, r0
	cmp r0, #0
	beq .L0806621A
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806621A:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L08066220:
	movs r5, #0
	ldr r7, [sp, #0xf4]
	ldr r0, [r7, #0x18]
	ldr r2, [sp, #0x144]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, #8
	ldr r3, [sp, #0x108]
	lsrs r1, r3, #0x10
	movs r2, #2
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	ldr r0, [sp, #0xfc]
	movs r1, #2
	bl GetTaskExp__C13HarvestSpriteQ213HarvestSprite4Task
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	movs r1, #0xff
	bl __udivsi3
	adds r4, r0, #0
	movs r0, #0xae
	adds r0, #8
	lsls r7, r0, #0x10
	movs r6, #0xa
	b .L0806628A
	.align 2, 0
.L08066264: .4byte 0x00002164
.L08066268:
	ldr r1, [sp, #0xf4]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x144]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r6
	movs r1, #3
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r7, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r6, #2
	adds r5, #1
.L0806628A:
	adds r1, r4, #0
	cmp r4, #0
	bge .L08066292
	adds r1, r4, #7
.L08066292:
	asrs r2, r1, #3
	cmp r5, r2
	blt .L08066268
	cmp r5, #9
	bgt .L080662FE
	ldr r3, [sp, #0xf4]
	ldr r1, [r3, #0x18]
	ldr r7, [sp, #0x144]
	lsls r0, r7, #6
	adds r1, r1, r0
	adds r0, r5, #5
	lsls r0, r0, #1
	adds r3, r1, r0
	lsls r1, r2, #3
	subs r1, r4, r1
	adds r1, #0xae
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #3
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	adds r0, r3, #0
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #1
	cmp r5, #9
	bgt .L080662FE
	lsls r0, r5, #1
	adds r4, r0, #0
	adds r4, #0xa
	movs r0, #0xae
	lsls r6, r0, #0x10
.L080662D8:
	ldr r1, [sp, #0xf4]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x144]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r4
	movs r1, #3
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	lsrs r1, r6, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r4, #2
	adds r5, #1
	cmp r5, #9
	ble .L080662D8
.L080662FE:
	add r1, sp, #8
	ldr r3, [sp, #0x144]
	lsls r0, r3, #3
	adds r0, #1
	strh r0, [r1]
	ldr r4, [sp, #0xf0]
	ldr r5, .L08066364 @ =0x00002164
	adds r2, r4, r5
	ldr r0, [r2]
	cmp r0, #0x14
	bhi .L0806632C
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r2, r0
	cmp r0, #0
	beq .L08066326
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066326:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L0806632C:
	ldr r5, [sp, #0xf4]
	ldr r0, [r5, #0x18]
	ldr r7, [sp, #0x134]
	lsls r1, r7, #6
	adds r0, r0, r1
	adds r0, #0x22
	ldr r2, [sp, #0x12c]
	lsrs r1, r2, #0x10
	movs r6, #0
	str r6, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	ldr r0, [sp, #0xfc]
	bl GetCurrentTask__C13HarvestSprite
	adds r2, r0, #0
	cmp r2, #1
	beq .L08066372
	cmp r2, #1
	bgt .L08066368
	cmp r2, #0
	beq .L08066388
	b .L0806641A
	.align 2, 0
.L08066364: .4byte 0x00002164
.L08066368:
	cmp r2, #2
	beq .L0806639E
	cmp r2, #3
	beq .L08066400
	b .L0806641A
.L08066372:
	ldr r3, [sp, #0xf4]
	ldr r0, [r3, #0x18]
	ldr r7, [sp, #0x140]
	lsls r4, r7, #6
	adds r0, r0, r4
	adds r0, #0x22
	movs r1, #0x73
	movs r2, #2
	str r2, [sp]
	str r5, [sp, #4]
	b .L080663B2
.L08066388:
	ldr r4, [sp, #0xf4]
	ldr r0, [r4, #0x18]
	ldr r7, [sp, #0x140]
	lsls r4, r7, #6
	adds r0, r0, r4
	adds r0, #0x22
	movs r1, #0x77
	movs r2, #2
	str r2, [sp]
	str r5, [sp, #4]
	b .L080663B2
.L0806639E:
	ldr r4, [sp, #0xf4]
	ldr r0, [r4, #0x18]
	ldr r7, [sp, #0x140]
	lsls r4, r7, #6
	adds r0, r0, r4
	adds r0, #0x22
	movs r1, #0x7b
	str r2, [sp]
	str r5, [sp, #4]
	movs r2, #2
.L080663B2:
	movs r3, #2
	bl func_0804E9F4
	ldr r1, [sp, #0xf4]
	ldr r0, [r1, #0x18]
	adds r0, r0, r4
	adds r0, #0x30
	movs r1, #0x3c
	str r6, [sp]
	str r5, [sp, #4]
	movs r2, #4
	movs r3, #2
	bl func_0804E9F4
	ldr r0, [sp, #0xfc]
	bl GetWorkDaysLeft__C13HarvestSprite
	ldr r2, [sp, #0xf4]
	ldr r1, [r2, #0x18]
	adds r1, r1, r4
	adds r1, #0x26
	movs r2, #0x90
	lsls r2, r2, #1
	str r5, [sp]
	movs r3, #0
	bl func_0804EDB4
	ldr r3, [sp, #0xf4]
	ldr r0, [r3, #0x18]
	adds r0, r0, r4
	adds r0, #0x2a
	movs r1, #0x38
	str r6, [sp]
	str r5, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	b .L0806641A
.L08066400:
	ldr r4, [sp, #0xf4]
	ldr r0, [r4, #0x18]
	ldr r7, [sp, #0x140]
	lsls r1, r7, #6
	adds r0, r0, r1
	adds r0, #0x22
	movs r1, #0x54
	str r6, [sp]
	str r5, [sp, #4]
	movs r2, #0xc
	movs r3, #2
	bl func_0804E9F4
.L0806641A:
	ldr r0, [sp, #0x148]
	mov r8, r0

	non_word_aligned_thumb_func_start sub_0806641E
sub_0806641E: @ 0x0806641E
	ldr r1, [sp, #0x138]
	str r1, [sp, #0xf8]
	cmp r1, #6
	bhi .L0806642A
	bl sub_08065B14
.L0806642A:
	mov r1, r8
	adds r1, #1
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	ldr r0, [sp, #0xf4]
	bl func_08075E24
	ldr r0, [sp, #0xf0]
	add sp, #0x168
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0806644C
func_0806644C: @ 0x0806644C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18c
	str r0, [sp, #0xe8]
	ldr r0, .L08066578 @ =gUnk_080FB8F0
	str r0, [sp]
	ldr r0, [sp, #0xe8]
	movs r3, #0x96
	bl func_08076BFC
	ldr r0, [sp, #0xe8]
	ldr r2, .L0806657C @ =0x000005B4
	adds r1, r0, r2
	ldr r0, .L08066580 @ =vtable_unk_080E7A18
	str r0, [r1]
	ldr r3, [sp, #0xe8]
	ldr r4, .L08066584 @ =0x00001264
	adds r0, r3, r4
	movs r1, #0
	str r1, [r0]
	ldr r5, .L08066588 @ =0x00001638
	adds r0, r3, r5
	str r1, [r0]
	ldr r6, [r3, #4]
	str r6, [sp, #0xec]
	ldr r2, .L0806658C @ =gUnk_080FB8C8
	add r1, sp, #0x18
	movs r0, #2
	strh r0, [r1]
	strh r0, [r1, #2]
	ldr r0, [sp, #0x18]
	movs r7, #0xe9
	lsls r7, r7, #3
	adds r4, r3, r7
	str r2, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r1, [sp, #0xe8]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	movs r3, #0x38
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	adds r1, r4, #0
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080665AC
	cmp r1, #0
	beq .L080664DC
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080664DC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r3, sp
	adds r3, #0x24
	str r3, [sp, #0x130]
	ldr r4, [sp, #0xe8]
	ldr r5, .L08066590 @ =0x000005BC
	adds r4, r4, r5
	mov sl, r4
	mov r6, sp
	adds r6, #0x30
	str r6, [sp, #0x134]
	movs r0, #0xc8
	lsls r0, r0, #3
	ldr r7, [sp, #0xe8]
	adds r0, r7, r0
	str r0, [sp, #0x120]
	mov r1, sp
	adds r1, #0x3c
	str r1, [sp, #0x138]
	ldr r2, .L08066594 @ =0x000006C4
	adds r2, r7, r2
	str r2, [sp, #0x128]
	adds r3, #0x24
	str r3, [sp, #0x13c]
	movs r4, #0x8d
	lsls r4, r4, #4
	adds r4, r7, r4
	str r4, [sp, #0x170]
	mov r5, sp
	adds r5, #0x54
	str r5, [sp, #0x140]
	ldr r6, .L08066598 @ =0x00000A54
	adds r6, r7, r6
	str r6, [sp, #0x180]
	mov r7, sp
	adds r7, #0x60
	str r7, [sp, #0x144]
	ldr r1, .L0806659C @ =0x00000BD8
	ldr r0, [sp, #0xe8]
	adds r1, r0, r1
	str r1, [sp, #0x10c]
	mov r2, sp
	adds r2, #0x6c
	str r2, [sp, #0x148]
	ldr r3, .L080665A0 @ =0x00000D5C
	adds r3, r0, r3
	str r3, [sp, #0x11c]
	mov r4, sp
	adds r4, #0x78
	str r4, [sp, #0x150]
	ldr r5, .L080665A4 @ =0x000007CC
	adds r5, r0, r5
	str r5, [sp, #0x15c]
	mov r6, sp
	adds r6, #0x84
	str r6, [sp, #0x154]
	movs r7, #0xee
	lsls r7, r7, #4
	adds r7, r0, r7
	str r7, [sp, #0x14c]
	mov r0, sp
	adds r0, #0x90
	str r0, [sp, #0x158]
	ldr r2, .L080665A8 @ =0x00001064
	ldr r1, [sp, #0xe8]
	adds r2, r1, r2
	str r2, [sp, #0x178]
	mov r3, sp
	adds r3, #0xe4
	str r3, [sp, #0x168]
	adds r4, #0x64
	str r4, [sp, #0x160]
	mov r5, sp
	adds r5, #0xe0
	str r5, [sp, #0x164]
	b .L08066712
	.align 2, 0
.L08066578: .4byte gUnk_080FB8F0
.L0806657C: .4byte 0x000005B4
.L08066580: .4byte vtable_unk_080E7A18
.L08066584: .4byte 0x00001264
.L08066588: .4byte 0x00001638
.L0806658C: .4byte gUnk_080FB8C8
.L08066590: .4byte 0x000005BC
.L08066594: .4byte 0x000006C4
.L08066598: .4byte 0x00000A54
.L0806659C: .4byte 0x00000BD8
.L080665A0: .4byte 0x00000D5C
.L080665A4: .4byte 0x000007CC
.L080665A8: .4byte 0x00001064
.L080665AC:
	str r1, [sp, #0x184]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x1c]
	add r1, sp, #0x20
	add r0, sp, #0x1c
	cmp r4, #1
	bhs .L080665C6
	adds r0, r1, #0
.L080665C6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080665E4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080665E8
	mov r0, r8
	bl func_080D3BC0
	b .L080665E8
.L080665E4:
	movs r0, #0
	mov r8, r0
.L080665E8:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r0, sp
	adds r0, #0x24
	str r0, [sp, #0x130]
	ldr r1, [sp, #0xe8]
	ldr r4, .L080666B0 @ =0x000005BC
	adds r1, r1, r4
	mov sl, r1
	mov r5, sp
	adds r5, #0x30
	str r5, [sp, #0x134]
	movs r0, #0xc8
	lsls r0, r0, #3
	ldr r7, [sp, #0xe8]
	adds r0, r7, r0
	str r0, [sp, #0x120]
	mov r1, sp
	adds r1, #0x3c
	str r1, [sp, #0x138]
	ldr r4, .L080666B4 @ =0x000006C4
	adds r4, r7, r4
	str r4, [sp, #0x128]
	adds r5, #0x18
	str r5, [sp, #0x13c]
	movs r0, #0x8d
	lsls r0, r0, #4
	adds r0, r7, r0
	str r0, [sp, #0x170]
	adds r1, #0x18
	str r1, [sp, #0x140]
	ldr r4, .L080666B8 @ =0x00000A54
	adds r4, r7, r4
	str r4, [sp, #0x180]
	adds r5, #0x18
	str r5, [sp, #0x144]
	ldr r0, .L080666BC @ =0x00000BD8
	adds r0, r7, r0
	str r0, [sp, #0x10c]
	adds r1, #0x18
	str r1, [sp, #0x148]
	ldr r4, .L080666C0 @ =0x00000D5C
	adds r4, r7, r4
	str r4, [sp, #0x11c]
	adds r5, #0x18
	str r5, [sp, #0x150]
	ldr r0, .L080666C4 @ =0x000007CC
	adds r0, r7, r0
	str r0, [sp, #0x15c]
	adds r1, #0x18
	str r1, [sp, #0x154]
	movs r4, #0xee
	lsls r4, r4, #4
	adds r4, r7, r4
	str r4, [sp, #0x14c]
	adds r5, #0x18
	str r5, [sp, #0x158]
	ldr r0, .L080666C8 @ =0x00001064
	adds r0, r7, r0
	str r0, [sp, #0x178]
	adds r1, #0x60
	str r1, [sp, #0x168]
	mov r4, sp
	adds r4, #0xdc
	str r4, [sp, #0x160]
	adds r5, #0x50
	str r5, [sp, #0x164]
	ldr r7, [sp, #0x184]
	cmp r2, r7
	beq .L08066692
.L08066678:
	cmp r3, #0
	beq .L08066688
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066688:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x184]
	cmp r2, r0
	bne .L08066678
.L08066692:
	adds r5, r3, #0
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne .L080666CC
	cmp r5, #0
	beq .L080666AA
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080666AA:
	adds r5, #0x10
	b .L080666EE
	.align 2, 0
.L080666B0: .4byte 0x000005BC
.L080666B4: .4byte 0x000006C4
.L080666B8: .4byte 0x00000A54
.L080666BC: .4byte 0x00000BD8
.L080666C0: .4byte 0x00000D5C
.L080666C4: .4byte 0x000007CC
.L080666C8: .4byte 0x00001064
.L080666CC:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080666EC
.L080666D4:
	cmp r2, #0
	beq .L080666E4
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080666E4:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080666D4
.L080666EC:
	adds r5, r2, #0
.L080666EE:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080666FE
.L080666F8:
	adds r1, #0x10
	cmp r1, r2
	bne .L080666F8
.L080666FE:
	cmp r0, #0
	beq .L08066706
	bl free
.L08066706:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r7, [sp, #0x188]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08066712:
	ldr r2, .L08066774 @ =gUnk_080FB834
	movs r1, #2
	add r0, sp, #0x24
	strh r1, [r0]
	ldr r0, [sp, #0x130]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x24]
	str r2, [sp]
	mov r1, sl
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r1, [sp, #0xe8]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	movs r3, #0x3c
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	mov r1, sl
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08066778
	cmp r1, #0
	beq .L08066766
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066766:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r3, #0x3c
	lsls r3, r3, #0x10
	str r3, [sp, #0x16c]
	b .L0806683E
	.align 2, 0
.L08066774: .4byte gUnk_080FB834
.L08066778:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r1, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L08066790
	adds r0, r1, #0
.L08066790:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080667AE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080667B2
	mov r0, r8
	bl func_080D3BC0
	b .L080667B2
.L080667AE:
	movs r0, #0
	mov r8, r0
.L080667B2:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	movs r4, #0x3c
	lsls r4, r4, #0x10
	str r4, [sp, #0x16c]
	cmp r2, sl
	beq .L080667DC
.L080667C4:
	cmp r3, #0
	beq .L080667D4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080667D4:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080667C4
.L080667DC:
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080667F8
	cmp r5, #0
	beq .L080667F4
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080667F4:
	adds r5, #0x10
	b .L0806681A
.L080667F8:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08066818
.L08066800:
	cmp r2, #0
	beq .L08066810
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066810:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08066800
.L08066818:
	adds r5, r2, #0
.L0806681A:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806682A
.L08066824:
	adds r1, #0x10
	cmp r1, r2
	bne .L08066824
.L0806682A:
	cmp r0, #0
	beq .L08066832
	bl free
.L08066832:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r1, [sp, #0x188]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806683E:
	movs r2, #0x40
	mov sl, r2
	ldr r2, .L080668A4 @ =gUnk_080FB904
	movs r1, #2
	add r0, sp, #0x30
	strh r1, [r0]
	ldr r3, [sp, #0x134]
	strh r1, [r3, #2]
	ldr r0, [sp, #0x30]
	str r2, [sp]
	ldr r1, [sp, #0x120]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r4, [sp, #0xe8]
	ldr r0, [r4]
	bl func_08008910
	adds r6, r0, #0
	mov r5, sl
	lsls r2, r5, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	ldr r1, [sp, #0x120]
	movs r3, #0x80
	bl func_08008F0C
	add r7, sp, #8
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080668A8
	cmp r1, #0
	beq .L08066896
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08066896:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r5, sl
	lsls r5, r5, #0x10
	str r5, [sp, #0x174]
	b .L08066974
	.align 2, 0
.L080668A4: .4byte gUnk_080FB904
.L080668A8:
	str r1, [sp, #0x184]
	movs r0, #1
	str r0, [sp, #0x38]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x34]
	add r1, sp, #0x38
	add r0, sp, #0x34
	cmp r4, #1
	bhs .L080668C2
	adds r0, r1, #0
.L080668C2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080668E0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080668E4
	mov r0, r8
	bl func_080D3BC0
	b .L080668E4
.L080668E0:
	movs r0, #0
	mov r8, r0
.L080668E4:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r0, sl
	lsls r0, r0, #0x10
	str r0, [sp, #0x174]
	ldr r1, [sp, #0x184]
	cmp r2, r1
	beq .L08066912
.L080668F8:
	cmp r3, #0
	beq .L08066908
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066908:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x184]
	cmp r2, r0
	bne .L080668F8
.L08066912:
	adds r5, r3, #0
	ldr r0, [sp, #0x38]
	cmp r0, #1
	bne .L0806692E
	cmp r5, #0
	beq .L0806692A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806692A:
	adds r5, #0x10
	b .L08066950
.L0806692E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0806694E
.L08066936:
	cmp r2, #0
	beq .L08066946
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066946:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08066936
.L0806694E:
	adds r5, r2, #0
.L08066950:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08066960
.L0806695A:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806695A
.L08066960:
	cmp r0, #0
	beq .L08066968
	bl free
.L08066968:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r7, [sp, #0x188]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08066974:
	movs r0, #0x44
	mov sl, r0
	ldr r2, .L080669DC @ =gUnk_080FB908
	movs r1, #2
	add r0, sp, #0x3c
	strh r1, [r0]
	ldr r3, [sp, #0x138]
	strh r1, [r3, #2]
	ldr r0, [sp, #0x3c]
	str r2, [sp]
	ldr r1, [sp, #0x128]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r4, [sp, #0xe8]
	ldr r0, [r4]
	bl func_08008910
	adds r6, r0, #0
	mov r5, sl
	lsls r2, r5, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	ldr r1, [sp, #0x128]
	movs r3, #0x80
	bl func_08008F0C
	add r7, sp, #8
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080669E0
	cmp r1, #0
	beq .L080669CC
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080669CC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r5, sl
	lsls r5, r5, #0x10
	str r5, [sp, #0x17c]
	b .L08066AAC
	.align 2, 0
.L080669DC: .4byte gUnk_080FB908
.L080669E0:
	str r1, [sp, #0x184]
	movs r0, #1
	str r0, [sp, #0x44]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x40]
	add r1, sp, #0x44
	add r0, sp, #0x40
	cmp r4, #1
	bhs .L080669FA
	adds r0, r1, #0
.L080669FA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08066A18
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08066A1C
	mov r0, r8
	bl func_080D3BC0
	b .L08066A1C
.L08066A18:
	movs r0, #0
	mov r8, r0
.L08066A1C:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r0, sl
	lsls r0, r0, #0x10
	str r0, [sp, #0x17c]
	ldr r1, [sp, #0x184]
	cmp r2, r1
	beq .L08066A4A
.L08066A30:
	cmp r3, #0
	beq .L08066A40
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066A40:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x184]
	cmp r2, r0
	bne .L08066A30
.L08066A4A:
	adds r5, r3, #0
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne .L08066A66
	cmp r5, #0
	beq .L08066A62
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08066A62:
	adds r5, #0x10
	b .L08066A88
.L08066A66:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08066A86
.L08066A6E:
	cmp r2, #0
	beq .L08066A7E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066A7E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08066A6E
.L08066A86:
	adds r5, r2, #0
.L08066A88:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08066A98
.L08066A92:
	adds r1, #0x10
	cmp r1, r2
	bne .L08066A92
.L08066A98:
	cmp r0, #0
	beq .L08066AA0
	bl free
.L08066AA0:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r7, [sp, #0x188]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08066AAC:
	ldr r3, .L08066B0C @ =gUnk_080FB85C
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x48
	strh r1, [r0]
	ldr r0, [sp, #0x13c]
	strh r2, [r0, #2]
	ldr r0, [sp, #0x48]
	str r3, [sp]
	ldr r1, [sp, #0x170]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r1, [sp, #0xe8]
	ldr r0, [r1]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r6, r0, #0
	movs r4, #0x48
	lsls r2, r4, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	ldr r1, [sp, #0x170]
	bl func_08008F0C
	add r5, sp, #8
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08066B10
	cmp r1, #0
	beq .L08066B04
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066B04:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08066BD0
	.align 2, 0
.L08066B0C: .4byte gUnk_080FB85C
.L08066B10:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x50]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x4c]
	add r1, sp, #0x50
	add r0, sp, #0x4c
	cmp r4, #1
	bhs .L08066B28
	adds r0, r1, #0
.L08066B28:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08066B46
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08066B4A
	mov r0, r8
	bl func_080D3BC0
	b .L08066B4A
.L08066B46:
	movs r0, #0
	mov r8, r0
.L08066B4A:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L08066B6E
.L08066B56:
	cmp r3, #0
	beq .L08066B66
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066B66:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08066B56
.L08066B6E:
	adds r5, r3, #0
	ldr r0, [sp, #0x50]
	cmp r0, #1
	bne .L08066B8A
	cmp r5, #0
	beq .L08066B86
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08066B86:
	adds r5, #0x10
	b .L08066BAC
.L08066B8A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08066BAA
.L08066B92:
	cmp r2, #0
	beq .L08066BA2
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066BA2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08066B92
.L08066BAA:
	adds r5, r2, #0
.L08066BAC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08066BBC
.L08066BB6:
	adds r1, #0x10
	cmp r1, r2
	bne .L08066BB6
.L08066BBC:
	cmp r0, #0
	beq .L08066BC4
	bl free
.L08066BC4:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r7, [sp, #0x188]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08066BD0:
	ldr r3, .L08066C28 @ =gUnk_080FB864
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x54
	strh r1, [r0]
	ldr r0, [sp, #0x140]
	strh r2, [r0, #2]
	ldr r0, [sp, #0x54]
	str r3, [sp]
	ldr r1, [sp, #0x180]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r1, [sp, #0xe8]
	ldr r0, [r1]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r6, r0, #0
	ldr r2, .L08066C2C @ =0x06000A80
	add r0, sp, #8
	ldr r1, [sp, #0x180]
	bl func_08008F0C
	add r2, sp, #8
	mov sb, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08066C30
	cmp r1, #0
	beq .L08066C20
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08066C20:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08066CF0
	.align 2, 0
.L08066C28: .4byte gUnk_080FB864
.L08066C2C: .4byte 0x06000A80
.L08066C30:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x5c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x58]
	add r1, sp, #0x5c
	add r0, sp, #0x58
	cmp r4, #1
	bhs .L08066C48
	adds r0, r1, #0
.L08066C48:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08066C66
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08066C6A
	mov r0, r8
	bl func_080D3BC0
	b .L08066C6A
.L08066C66:
	movs r0, #0
	mov r8, r0
.L08066C6A:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L08066C8E
.L08066C76:
	cmp r3, #0
	beq .L08066C86
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066C86:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08066C76
.L08066C8E:
	adds r5, r3, #0
	ldr r0, [sp, #0x5c]
	cmp r0, #1
	bne .L08066CAA
	cmp r5, #0
	beq .L08066CA6
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066CA6:
	adds r5, #0x10
	b .L08066CCC
.L08066CAA:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08066CCA
.L08066CB2:
	cmp r2, #0
	beq .L08066CC2
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066CC2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08066CB2
.L08066CCA:
	adds r5, r2, #0
.L08066CCC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08066CDC
.L08066CD6:
	adds r1, #0x10
	cmp r1, r2
	bne .L08066CD6
.L08066CDC:
	cmp r0, #0
	beq .L08066CE4
	bl free
.L08066CE4:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r1, [sp, #0x188]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08066CF0:
	ldr r3, .L08066D48 @ =gUnk_080FB86C
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x60
	strh r1, [r0]
	ldr r4, [sp, #0x144]
	strh r2, [r4, #2]
	ldr r0, [sp, #0x60]
	str r3, [sp]
	ldr r1, [sp, #0x10c]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r5, [sp, #0xe8]
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r6, r0, #0
	ldr r2, .L08066D4C @ =0x06000C00
	add r0, sp, #8
	ldr r1, [sp, #0x10c]
	bl func_08008F0C
	add r7, sp, #8
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08066D50
	cmp r1, #0
	beq .L08066D40
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08066D40:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08066E10
	.align 2, 0
.L08066D48: .4byte gUnk_080FB86C
.L08066D4C: .4byte 0x06000C00
.L08066D50:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x68]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L08066D68
	adds r0, r1, #0
.L08066D68:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08066D86
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08066D8A
	mov r0, r8
	bl func_080D3BC0
	b .L08066D8A
.L08066D86:
	movs r0, #0
	mov r8, r0
.L08066D8A:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L08066DAE
.L08066D96:
	cmp r3, #0
	beq .L08066DA6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066DA6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08066D96
.L08066DAE:
	adds r5, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L08066DCA
	cmp r5, #0
	beq .L08066DC6
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066DC6:
	adds r5, #0x10
	b .L08066DEC
.L08066DCA:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08066DEA
.L08066DD2:
	cmp r2, #0
	beq .L08066DE2
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066DE2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08066DD2
.L08066DEA:
	adds r5, r2, #0
.L08066DEC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08066DFC
.L08066DF6:
	adds r1, #0x10
	cmp r1, r2
	bne .L08066DF6
.L08066DFC:
	cmp r0, #0
	beq .L08066E04
	bl free
.L08066E04:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r1, [sp, #0x188]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08066E10:
	ldr r3, .L08066E68 @ =gUnk_080FB874
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x6c
	strh r1, [r0]
	ldr r4, [sp, #0x148]
	strh r2, [r4, #2]
	ldr r0, [sp, #0x6c]
	str r3, [sp]
	ldr r1, [sp, #0x11c]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r5, [sp, #0xe8]
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r6, r0, #0
	ldr r2, .L08066E6C @ =0x06000D80
	add r0, sp, #8
	ldr r1, [sp, #0x11c]
	bl func_08008F0C
	add r7, sp, #8
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08066E70
	cmp r1, #0
	beq .L08066E60
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08066E60:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08066F30
	.align 2, 0
.L08066E68: .4byte gUnk_080FB874
.L08066E6C: .4byte 0x06000D80
.L08066E70:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x74]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x70]
	add r1, sp, #0x74
	add r0, sp, #0x70
	cmp r4, #1
	bhs .L08066E88
	adds r0, r1, #0
.L08066E88:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08066EA6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08066EAA
	mov r0, r8
	bl func_080D3BC0
	b .L08066EAA
.L08066EA6:
	movs r0, #0
	mov r8, r0
.L08066EAA:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L08066ECE
.L08066EB6:
	cmp r3, #0
	beq .L08066EC6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066EC6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08066EB6
.L08066ECE:
	adds r5, r3, #0
	ldr r0, [sp, #0x74]
	cmp r0, #1
	bne .L08066EEA
	cmp r5, #0
	beq .L08066EE6
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066EE6:
	adds r5, #0x10
	b .L08066F0C
.L08066EEA:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08066F0A
.L08066EF2:
	cmp r2, #0
	beq .L08066F02
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08066F02:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08066EF2
.L08066F0A:
	adds r5, r2, #0
.L08066F0C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08066F1C
.L08066F16:
	adds r1, #0x10
	cmp r1, r2
	bne .L08066F16
.L08066F1C:
	cmp r0, #0
	beq .L08066F24
	bl free
.L08066F24:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r1, [sp, #0x188]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08066F30:
	movs r2, #0x78
	mov sl, r2
	ldr r3, .L08066F9C @ =gUnk_080FB90C
	movs r1, #4
	movs r2, #2
	add r0, sp, #0x78
	strh r1, [r0]
	ldr r4, [sp, #0x150]
	strh r2, [r4, #2]
	ldr r0, [sp, #0x78]
	str r3, [sp]
	ldr r1, [sp, #0x15c]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r5, [sp, #0xe8]
	ldr r0, [r5]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #1
	adds r6, r0, #0
	mov r7, sl
	lsls r2, r7, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	ldr r1, [sp, #0x15c]
	bl func_08008F0C
	add r0, sp, #8
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08066FA0
	cmp r1, #0
	beq .L08066F8C
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08066F8C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r5, sl
	lsls r5, r5, #0x10
	str r5, [sp, #0x118]
	b .L0806706C
	.align 2, 0
.L08066F9C: .4byte gUnk_080FB90C
.L08066FA0:
	str r1, [sp, #0x184]
	movs r0, #1
	str r0, [sp, #0x80]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x7c]
	add r1, sp, #0x80
	add r0, sp, #0x7c
	cmp r4, #1
	bhs .L08066FBA
	adds r0, r1, #0
.L08066FBA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08066FD8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08066FDC
	mov r0, r8
	bl func_080D3BC0
	b .L08066FDC
.L08066FD8:
	movs r0, #0
	mov r8, r0
.L08066FDC:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r0, sl
	lsls r0, r0, #0x10
	str r0, [sp, #0x118]
	ldr r1, [sp, #0x184]
	cmp r2, r1
	beq .L0806700A
.L08066FF0:
	cmp r3, #0
	beq .L08067000
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067000:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x184]
	cmp r2, r0
	bne .L08066FF0
.L0806700A:
	adds r5, r3, #0
	ldr r0, [sp, #0x80]
	cmp r0, #1
	bne .L08067026
	cmp r5, #0
	beq .L08067022
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08067022:
	adds r5, #0x10
	b .L08067048
.L08067026:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08067046
.L0806702E:
	cmp r2, #0
	beq .L0806703E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806703E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806702E
.L08067046:
	adds r5, r2, #0
.L08067048:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08067058
.L08067052:
	adds r1, #0x10
	cmp r1, r2
	bne .L08067052
.L08067058:
	cmp r0, #0
	beq .L08067060
	bl free
.L08067060:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r7, [sp, #0x188]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806706C:
	movs r0, #0x80
	mov sl, r0
	ldr r3, .L080670D8 @ =gUnk_080FB914
	movs r1, #6
	movs r2, #2
	add r0, sp, #0x84
	strh r1, [r0]
	ldr r1, [sp, #0x154]
	strh r2, [r1, #2]
	ldr r0, [sp, #0x84]
	str r3, [sp]
	ldr r1, [sp, #0x14c]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r2, [sp, #0xe8]
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r6, r0, #0
	mov r4, sl
	lsls r2, r4, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	ldr r1, [sp, #0x14c]
	bl func_08008F0C
	add r5, sp, #8
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080670DC
	cmp r1, #0
	beq .L080670C8
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080670C8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r4, sl
	lsls r4, r4, #0x10
	str r4, [sp, #0x124]
	b .L080671A6
	.align 2, 0
.L080670D8: .4byte gUnk_080FB914
.L080670DC:
	str r1, [sp, #0x184]
	movs r0, #1
	add r1, sp, #0x8c
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x184]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x88
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080670F8
	adds r0, r1, #0
.L080670F8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08067116
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806711A
	mov r0, r8
	bl func_080D3BC0
	b .L0806711A
.L08067116:
	movs r0, #0
	mov r8, r0
.L0806711A:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r7, sl
	lsls r7, r7, #0x10
	str r7, [sp, #0x124]
	b .L0806713E
.L0806712A:
	cmp r3, #0
	beq .L0806713A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806713A:
	adds r2, #0x10
	adds r3, #0x10
.L0806713E:
	ldr r0, [sp, #0x184]
	cmp r2, r0
	bne .L0806712A
	adds r5, r3, #0
	ldr r1, [sp, #0x8c]
	cmp r1, #1
	bne .L08067160
	cmp r5, #0
	beq .L0806715C
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806715C:
	adds r5, #0x10
	b .L08067182
.L08067160:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08067180
.L08067168:
	cmp r2, #0
	beq .L08067178
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067178:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08067168
.L08067180:
	adds r5, r2, #0
.L08067182:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08067192
.L0806718C:
	adds r1, #0x10
	cmp r1, r2
	bne .L0806718C
.L08067192:
	cmp r0, #0
	beq .L0806719A
	bl free
.L0806719A:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r7, [sp, #0x188]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080671A6:
	movs r0, #0x8c
	mov sl, r0
	ldr r3, .L08067210 @ =gUnk_080FB91C
	movs r1, #8
	movs r2, #2
	add r0, sp, #0x90
	strh r1, [r0]
	ldr r1, [sp, #0x158]
	strh r2, [r1, #2]
	ldr r0, [r0]
	str r3, [sp]
	ldr r1, [sp, #0x178]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r2, [sp, #0xe8]
	ldr r0, [r2]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #2
	adds r6, r0, #0
	mov r4, sl
	lsls r2, r4, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	ldr r1, [sp, #0x178]
	bl func_08008F0C
	add r5, sp, #8
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08067214
	cmp r1, #0
	beq .L08067202
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067202:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r4, sl
	lsls r4, r4, #0x10
	str r4, [sp, #0x12c]
	b .L080672DE
	.align 2, 0
.L08067210: .4byte gUnk_080FB91C
.L08067214:
	str r1, [sp, #0x184]
	movs r0, #1
	add r1, sp, #0x98
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x184]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x94
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L08067230
	adds r0, r1, #0
.L08067230:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806724E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08067252
	mov r0, r8
	bl func_080D3BC0
	b .L08067252
.L0806724E:
	movs r0, #0
	mov r8, r0
.L08067252:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r7, sl
	lsls r7, r7, #0x10
	str r7, [sp, #0x12c]
	b .L08067276
.L08067262:
	cmp r3, #0
	beq .L08067272
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067272:
	adds r2, #0x10
	adds r3, #0x10
.L08067276:
	ldr r0, [sp, #0x184]
	cmp r2, r0
	bne .L08067262
	adds r5, r3, #0
	ldr r1, [sp, #0x98]
	cmp r1, #1
	bne .L08067298
	cmp r5, #0
	beq .L08067294
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08067294:
	adds r5, #0x10
	b .L080672BA
.L08067298:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080672B8
.L080672A0:
	cmp r2, #0
	beq .L080672B0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080672B0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080672A0
.L080672B8:
	adds r5, r2, #0
.L080672BA:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080672CA
.L080672C4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080672C4
.L080672CA:
	cmp r0, #0
	beq .L080672D2
	bl free
.L080672D2:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r7, [sp, #0x188]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080672DE:
	ldr r1, [sp, #0xe8]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08067318 @ =gUnk_08752F8C
	add r0, sp, #8
	ldr r2, .L0806731C @ =0x06010200
	movs r3, #0x80
	bl func_08008F0C
	add r2, sp, #8
	mov sb, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08067320
	cmp r1, #0
	beq .L08067310
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08067310:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080673E8
	.align 2, 0
.L08067318: .4byte gUnk_08752F8C
.L0806731C: .4byte 0x06010200
.L08067320:
	str r1, [sp, #0x184]
	movs r0, #1
	add r1, sp, #0xa0
	str r0, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x184]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0x9c
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L0806733E
	mov r0, sl
.L0806733E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806735C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08067360
	mov r0, r8
	bl func_080D3BC0
	b .L08067360
.L0806735C:
	movs r0, #0
	mov r8, r0
.L08067360:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L0806737E
.L0806736A:
	cmp r3, #0
	beq .L0806737A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806737A:
	adds r2, #0x10
	adds r3, #0x10
.L0806737E:
	ldr r0, [sp, #0x184]
	cmp r2, r0
	bne .L0806736A
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080673A2
	cmp r5, #0
	beq .L0806739E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806739E:
	adds r5, #0x10
	b .L080673C4
.L080673A2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080673C2
.L080673AA:
	cmp r2, #0
	beq .L080673BA
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080673BA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080673AA
.L080673C2:
	adds r5, r2, #0
.L080673C4:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080673D4
.L080673CE:
	adds r1, #0x10
	cmp r1, r2
	bne .L080673CE
.L080673D4:
	cmp r0, #0
	beq .L080673DC
	bl free
.L080673DC:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r1, [sp, #0x188]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080673E8:
	ldr r2, [sp, #0xe8]
	ldr r0, [r2]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08067424 @ =gUnk_0875300C
	add r0, sp, #8
	ldr r2, .L08067428 @ =0x05000240
	movs r3, #0x20
	bl func_08008F0C
	add r3, sp, #8
	mov sb, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806742C
	cmp r1, #0
	beq .L0806741A
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806741A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080674F8
	.align 2, 0
.L08067424: .4byte gUnk_0875300C
.L08067428: .4byte 0x05000240
.L0806742C:
	str r1, [sp, #0x184]
	movs r0, #1
	add r1, sp, #0xa8
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x184]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xa4
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L0806744A
	mov r0, sl
.L0806744A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08067468
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806746C
	mov r0, r8
	bl func_080D3BC0
	b .L0806746C
.L08067468:
	movs r0, #0
	mov r8, r0
.L0806746C:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x184]
	cmp r2, r4
	beq .L08067494
.L0806747A:
	cmp r3, #0
	beq .L0806748A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806748A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x184]
	cmp r2, r5
	bne .L0806747A
.L08067494:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L080674B2
	cmp r5, #0
	beq .L080674AE
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080674AE:
	adds r5, #0x10
	b .L080674D4
.L080674B2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080674D2
.L080674BA:
	cmp r2, #0
	beq .L080674CA
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080674CA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080674BA
.L080674D2:
	adds r5, r2, #0
.L080674D4:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080674E4
.L080674DE:
	adds r1, #0x10
	cmp r1, r2
	bne .L080674DE
.L080674E4:
	cmp r0, #0
	beq .L080674EC
	bl free
.L080674EC:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r7, [sp, #0x188]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080674F8:
	ldr r1, [sp, #0xe8]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08067534 @ =gUnk_08750C8C
	add r0, sp, #8
	ldr r2, .L08067538 @ =0x06002A00
	movs r3, #0xd0
	lsls r3, r3, #1
	bl func_08008F0C
	add r2, sp, #8
	mov sb, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806753C
	cmp r1, #0
	beq .L0806752C
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806752C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08067604
	.align 2, 0
.L08067534: .4byte gUnk_08750C8C
.L08067538: .4byte 0x06002A00
.L0806753C:
	str r1, [sp, #0x184]
	movs r0, #1
	add r1, sp, #0xb0
	str r0, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x184]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xac
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L0806755A
	mov r0, sl
.L0806755A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08067578
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806757C
	mov r0, r8
	bl func_080D3BC0
	b .L0806757C
.L08067578:
	movs r0, #0
	mov r8, r0
.L0806757C:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L0806759A
.L08067586:
	cmp r3, #0
	beq .L08067596
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067596:
	adds r2, #0x10
	adds r3, #0x10
.L0806759A:
	ldr r0, [sp, #0x184]
	cmp r2, r0
	bne .L08067586
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080675BE
	cmp r5, #0
	beq .L080675BA
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080675BA:
	adds r5, #0x10
	b .L080675E0
.L080675BE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080675DE
.L080675C6:
	cmp r2, #0
	beq .L080675D6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080675D6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080675C6
.L080675DE:
	adds r5, r2, #0
.L080675E0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080675F0
.L080675EA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080675EA
.L080675F0:
	cmp r0, #0
	beq .L080675F8
	bl free
.L080675F8:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r1, [sp, #0x188]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08067604:
	ldr r2, [sp, #0xe8]
	ldr r0, [r2]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08067640 @ =gUnk_0875166C
	add r0, sp, #8
	ldr r2, .L08067644 @ =0x06001380
	movs r3, #0x90
	lsls r3, r3, #1
	bl func_08008F0C
	add r3, sp, #8
	mov sb, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08067648
	cmp r1, #0
	beq .L08067638
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067638:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08067714
	.align 2, 0
.L08067640: .4byte gUnk_0875166C
.L08067644: .4byte 0x06001380
.L08067648:
	str r1, [sp, #0x184]
	movs r0, #1
	add r1, sp, #0xb8
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x184]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xb4
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08067666
	mov r0, sl
.L08067666:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08067684
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08067688
	mov r0, r8
	bl func_080D3BC0
	b .L08067688
.L08067684:
	movs r0, #0
	mov r8, r0
.L08067688:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x184]
	cmp r2, r4
	beq .L080676B0
.L08067696:
	cmp r3, #0
	beq .L080676A6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080676A6:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x184]
	cmp r2, r5
	bne .L08067696
.L080676B0:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L080676CE
	cmp r5, #0
	beq .L080676CA
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080676CA:
	adds r5, #0x10
	b .L080676F0
.L080676CE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080676EE
.L080676D6:
	cmp r2, #0
	beq .L080676E6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080676E6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080676D6
.L080676EE:
	adds r5, r2, #0
.L080676F0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08067700
.L080676FA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080676FA
.L08067700:
	cmp r0, #0
	beq .L08067708
	bl free
.L08067708:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r7, [sp, #0x188]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08067714:
	ldr r1, [sp, #0xe8]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08067750 @ =gUnk_087510AC
	add r0, sp, #8
	ldr r2, .L08067754 @ =0x060014A0
	movs r3, #0x90
	lsls r3, r3, #1
	bl func_08008F0C
	add r2, sp, #8
	mov sb, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08067758
	cmp r1, #0
	beq .L08067748
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08067748:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08067820
	.align 2, 0
.L08067750: .4byte gUnk_087510AC
.L08067754: .4byte 0x060014A0
.L08067758:
	str r1, [sp, #0x184]
	movs r0, #1
	add r1, sp, #0xc0
	str r0, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x184]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xbc
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08067776
	mov r0, sl
.L08067776:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08067794
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08067798
	mov r0, r8
	bl func_080D3BC0
	b .L08067798
.L08067794:
	movs r0, #0
	mov r8, r0
.L08067798:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080677B6
.L080677A2:
	cmp r3, #0
	beq .L080677B2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080677B2:
	adds r2, #0x10
	adds r3, #0x10
.L080677B6:
	ldr r0, [sp, #0x184]
	cmp r2, r0
	bne .L080677A2
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080677DA
	cmp r5, #0
	beq .L080677D6
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080677D6:
	adds r5, #0x10
	b .L080677FC
.L080677DA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080677FA
.L080677E2:
	cmp r2, #0
	beq .L080677F2
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080677F2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080677E2
.L080677FA:
	adds r5, r2, #0
.L080677FC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806780C
.L08067806:
	adds r1, #0x10
	cmp r1, r2
	bne .L08067806
.L0806780C:
	cmp r0, #0
	beq .L08067814
	bl free
.L08067814:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r1, [sp, #0x188]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08067820:
	ldr r2, [sp, #0xe8]
	ldr r0, [r2]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L0806785C @ =gUnk_0875178C
	add r0, sp, #8
	ldr r2, .L08067860 @ =0x05000040
	movs r3, #0x20
	bl func_08008F0C
	add r3, sp, #8
	mov sb, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08067864
	cmp r1, #0
	beq .L08067852
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067852:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08067930
	.align 2, 0
.L0806785C: .4byte gUnk_0875178C
.L08067860: .4byte 0x05000040
.L08067864:
	str r1, [sp, #0x184]
	movs r0, #1
	add r1, sp, #0xc8
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x184]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xc4
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08067882
	mov r0, sl
.L08067882:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080678A0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080678A4
	mov r0, r8
	bl func_080D3BC0
	b .L080678A4
.L080678A0:
	movs r0, #0
	mov r8, r0
.L080678A4:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x184]
	cmp r2, r4
	beq .L080678CC
.L080678B2:
	cmp r3, #0
	beq .L080678C2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080678C2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x184]
	cmp r2, r5
	bne .L080678B2
.L080678CC:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L080678EA
	cmp r5, #0
	beq .L080678E6
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080678E6:
	adds r5, #0x10
	b .L0806790C
.L080678EA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0806790A
.L080678F2:
	cmp r2, #0
	beq .L08067902
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067902:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080678F2
.L0806790A:
	adds r5, r2, #0
.L0806790C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0806791C
.L08067916:
	adds r1, #0x10
	cmp r1, r2
	bne .L08067916
.L0806791C:
	cmp r0, #0
	beq .L08067924
	bl free
.L08067924:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r7, [sp, #0x188]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08067930:
	ldr r1, [sp, #0xe8]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L0806796C @ =gUnk_08750C4C
	add r0, sp, #8
	ldr r2, .L08067970 @ =0x060100A0
	movs r3, #0x20
	bl func_08008F0C
	add r2, sp, #8
	mov sb, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08067974
	cmp r1, #0
	beq .L08067962
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08067962:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08067A3C
	.align 2, 0
.L0806796C: .4byte gUnk_08750C4C
.L08067970: .4byte 0x060100A0
.L08067974:
	str r1, [sp, #0x184]
	movs r0, #1
	add r1, sp, #0xd0
	str r0, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x184]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xcc
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08067992
	mov r0, sl
.L08067992:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080679B0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080679B4
	mov r0, r8
	bl func_080D3BC0
	b .L080679B4
.L080679B0:
	movs r0, #0
	mov r8, r0
.L080679B4:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080679D2
.L080679BE:
	cmp r3, #0
	beq .L080679CE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080679CE:
	adds r2, #0x10
	adds r3, #0x10
.L080679D2:
	ldr r0, [sp, #0x184]
	cmp r2, r0
	bne .L080679BE
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080679F6
	cmp r5, #0
	beq .L080679F2
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080679F2:
	adds r5, #0x10
	b .L08067A18
.L080679F6:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08067A16
.L080679FE:
	cmp r2, #0
	beq .L08067A0E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067A0E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080679FE
.L08067A16:
	adds r5, r2, #0
.L08067A18:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08067A28
.L08067A22:
	adds r1, #0x10
	cmp r1, r2
	bne .L08067A22
.L08067A28:
	cmp r0, #0
	beq .L08067A30
	bl free
.L08067A30:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r1, [sp, #0x188]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08067A3C:
	ldr r2, [sp, #0xe8]
	ldr r0, [r2]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08067A78 @ =gUnk_08750C6C
	add r0, sp, #8
	ldr r2, .L08067A7C @ =0x05000220
	movs r3, #0x20
	bl func_08008F0C
	add r3, sp, #8
	mov sb, r3
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08067A80
	cmp r1, #0
	beq .L08067A6E
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067A6E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08067B4C
	.align 2, 0
.L08067A78: .4byte gUnk_08750C6C
.L08067A7C: .4byte 0x05000220
.L08067A80:
	str r1, [sp, #0x184]
	movs r0, #1
	add r1, sp, #0xd8
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0x184]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xd4
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08067A9E
	mov r0, sl
.L08067A9E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08067ABC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08067AC0
	mov r0, r8
	bl func_080D3BC0
	b .L08067AC0
.L08067ABC:
	movs r0, #0
	mov r8, r0
.L08067AC0:
	adds r5, r0, #0
	str r5, [sp, #0x188]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x184]
	cmp r2, r4
	beq .L08067AE8
.L08067ACE:
	cmp r3, #0
	beq .L08067ADE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067ADE:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x184]
	cmp r2, r5
	bne .L08067ACE
.L08067AE8:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L08067B06
	cmp r5, #0
	beq .L08067B02
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08067B02:
	adds r5, #0x10
	b .L08067B28
.L08067B06:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08067B26
.L08067B0E:
	cmp r2, #0
	beq .L08067B1E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067B1E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08067B0E
.L08067B26:
	adds r5, r2, #0
.L08067B28:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08067B38
.L08067B32:
	adds r1, #0x10
	cmp r1, r2
	bne .L08067B32
.L08067B38:
	cmp r0, #0
	beq .L08067B40
	bl free
.L08067B40:
	ldr r0, [sp, #0x188]
	add r0, r8
	ldr r7, [sp, #0x188]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08067B4C:
	movs r0, #4
	str r0, [sp, #0xf0]
	ldr r1, [sp, #0xe8]
	ldr r2, .L08067BBC @ =0x0000058C
	adds r4, r1, r2
	ldr r0, [r4]
	ldrb r0, [r0, #0x11]
	ldr r3, [sp, #0x168]
	strb r0, [r3]
	ldr r1, [r4]
	movs r0, #0xc8
	ldr r5, [sp, #0x160]
	str r0, [r5]
	ldrb r1, [r1, #0x10]
	lsrs r2, r1, #3
	lsls r0, r2, #3
	subs r0, r0, r2
	lsls r1, r1, #0x1d
	lsrs r1, r1, #0x1d
	adds r0, r0, r1
	ldr r6, [sp, #0x164]
	str r0, [r6]
	add r1, sp, #0xdc
	add r3, sp, #0xe0
	ldr r2, [r1]
	ldr r0, [r3]
	cmp r2, r0
	bls .L08067B86
	adds r1, r3, #0
.L08067B86:
	ldr r3, [r1]
	ldr r0, [r4]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	cmp r0, #5
	bhi .L08067BEA
	ldr r5, [sp, #0x168]
	add r4, sp, #0xe4
	ldrb r1, [r4]
	lsls r0, r1, #0x19
	lsrs r2, r0, #0x1b
	cmp r2, #0
	bne .L08067BC0
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	movs r2, #4
	rsbs r2, r2, #0
	subs r0, #1
	movs r1, #3
	ands r0, r1
	ldrb r1, [r5]
	ands r2, r1
	orrs r2, r0
	strb r2, [r4]
	movs r2, #0x1d
	b .L08067BC2
	.align 2, 0
.L08067BBC: .4byte 0x0000058C
.L08067BC0:
	subs r2, #1
.L08067BC2:
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #2
	ldrb r1, [r5]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r5]
	ldr r7, [sp, #0x168]
	ldrb r1, [r7]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne .L08067BEA
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0x1d
	bne .L08067BEA
	subs r3, #1
.L08067BEA:
	ldr r0, [sp, #0xec]
	ldr r1, [r0, #0x18]
	ldr r2, [sp, #0xf0]
	lsls r4, r2, #6
	adds r1, r1, r4
	adds r1, #0xc
	movs r6, #0x20
	str r6, [sp]
	adds r0, r3, #0
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r3, [sp, #0xec]
	ldr r0, [r3, #0x18]
	adds r0, r0, r4
	adds r0, #0xe
	ldr r5, [sp, #0x118]
	lsrs r1, r5, #0x10
	movs r7, #0
	str r7, [sp]
	str r6, [sp, #4]
	movs r2, #4
	movs r3, #2
	bl func_0804E9F4
	ldr r1, [sp, #0xec]
	ldr r0, [r1, #0x18]
	adds r0, r0, r4
	adds r0, #0x1a
	ldr r3, [sp, #0x168]
	ldrb r2, [r3]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1e
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x48
	str r7, [sp]
	str r6, [sp, #4]
	movs r2, #6
	movs r3, #2
	bl func_0804E9F4
	ldr r4, [sp, #0xf0]
	adds r4, #3
	ldr r5, [sp, #0xec]
	ldr r0, [r5, #0x18]
	lsls r4, r4, #6
	mov sb, r4
	add r0, sb
	adds r0, #0xa
	ldr r2, [sp, #0x174]
	lsrs r1, r2, #0x10
	str r7, [sp]
	str r6, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0xf0]
	adds r3, #5
	ldr r0, [r5, #0x18]
	lsls r3, r3, #6
	mov r8, r3
	add r0, r8
	adds r0, #0xa
	ldr r4, [sp, #0x17c]
	lsrs r1, r4, #0x10
	str r7, [sp]
	str r6, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r0, [sp, #0xe8]
	ldr r1, .L08067D80 @ =0x0000058C
	adds r5, r0, r1
	ldr r0, [r5]
	ldr r4, .L08067D84 @ =0x00001AA8
	adds r0, r0, r4
	movs r1, #0
	bl func_0809B038
	ldr r0, [r0]
	mov sl, r0
	ldr r0, [r5]
	adds r0, r0, r4
	movs r1, #0
	bl func_0809B038
	ldr r4, [r0, #4]
	ldr r2, [sp, #0xec]
	ldr r1, [r2, #0x18]
	add r1, sb
	adds r1, #0x34
	str r6, [sp]
	mov r0, sl
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r3, [sp, #0xec]
	ldr r1, [r3, #0x18]
	add r1, r8
	adds r1, #0x34
	str r6, [sp]
	adds r0, r4, #0
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r4, [sp, #0xec]
	ldr r0, [r4, #0x18]
	add r0, sb
	adds r0, #0x36
	ldr r5, [sp, #0x16c]
	lsrs r4, r5, #0x10
	str r7, [sp]
	str r6, [sp, #4]
	adds r1, r4, #0
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r1, [sp, #0xec]
	ldr r0, [r1, #0x18]
	add r0, r8
	adds r0, #0x36
	str r7, [sp]
	str r6, [sp, #4]
	adds r1, r4, #0
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r2, [sp, #0xf0]
	adds r2, #8
	str r2, [sp, #0xf0]
	movs r0, #0x10
	str r0, [sp, #0xc]
	add r1, sp, #8
	lsls r0, r2, #3
	strh r0, [r1]
	ldr r3, [sp, #0xe8]
	ldr r4, .L08067D88 @ =0x00001264
	adds r2, r3, r4
	ldr r0, [r2]
	cmp r0, #0x3c
	bhi .L08067D34
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r2, r0
	cmp r0, #0
	beq .L08067D2E
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067D2E:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L08067D34:
	ldr r1, [sp, #0xf0]
	adds r1, #1
	ldr r2, [sp, #0xec]
	ldr r0, [r2, #0x18]
	lsls r4, r1, #6
	adds r0, r0, r4
	adds r0, #8
	ldr r1, .L08067D8C @ =0x0000015B
	movs r2, #0
	str r2, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	ldr r3, [sp, #0xe8]
	ldr r6, .L08067D80 @ =0x0000058C
	adds r0, r3, r6
	ldr r0, [r0]
	ldr r7, .L08067D84 @ =0x00001AA8
	adds r0, r0, r7
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1f
	cmp r0, #0
	beq .L08067D94
	ldr r0, [sp, #0xec]
	ldr r1, [r0, #0x18]
	adds r1, r1, r4
	adds r1, #0x14
	ldr r0, .L08067D90 @ =0x000186A0
	movs r2, #0xa8
	lsls r2, r2, #1
	str r5, [sp]
	movs r3, #0
	bl func_0804EE30
	b .L08067DAA
	.align 2, 0
.L08067D80: .4byte 0x0000058C
.L08067D84: .4byte 0x00001AA8
.L08067D88: .4byte 0x00001264
.L08067D8C: .4byte 0x0000015B
.L08067D90: .4byte 0x000186A0
.L08067D94:
	ldr r2, [sp, #0xec]
	ldr r1, [r2, #0x18]
	adds r1, r1, r4
	adds r1, #0x12
	ldr r0, .L08067F88 @ =0x00002710
	movs r2, #0xa8
	lsls r2, r2, #1
	str r5, [sp]
	movs r3, #0
	bl func_0804EE30
.L08067DAA:
	ldr r3, [sp, #0xec]
	ldr r0, [r3, #0x18]
	ldr r4, [sp, #0xf0]
	lsls r6, r4, #6
	adds r0, r0, r6
	adds r0, #0x14
	ldr r5, [sp, #0x124]
	lsrs r1, r5, #0x10
	movs r5, #0
	str r5, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r2, #6
	movs r3, #2
	bl func_0804E9F4
	ldr r7, [sp, #0xec]
	ldr r0, [r7, #0x18]
	adds r0, r0, r6
	adds r0, #0x24
	ldr r2, [sp, #0x12c]
	lsrs r1, r2, #0x10
	str r5, [sp]
	str r4, [sp, #4]
	movs r2, #8
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0xf0]
	adds r3, #2
	str r3, [sp, #0xf0]
	ldr r4, [sp, #0xe8]
	ldr r5, .L08067F8C @ =0x0000058C
	adds r0, r4, r5
	ldr r1, [r0]
	ldr r6, .L08067F90 @ =0x00001AA8
	adds r0, r1, r6
	ldrb r0, [r0, #4]
	lsls r0, r0, #0x1f
	ldr r7, .L08067F88 @ =0x00002710
	str r7, [sp, #0xf8]
	cmp r0, #0
	beq .L08067E04
	ldr r0, .L08067F94 @ =0x000186A0
	str r0, [sp, #0xf8]
.L08067E04:
	movs r2, #0
	str r2, [sp, #0xfc]
	ldr r3, .L08067F98 @ =0x00001AB0
	adds r0, r1, r3
	ldr r0, [r0]
	cmp r2, r0
	blo .L08067E14
	b .L080681C6
.L08067E14:
	ldr r4, [sp, #0x168]
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	cmp r2, r0
	blo .L08067E24
	b .L080681C6
.L08067E24:
	movs r5, #0x20
	mov sl, r5
	ldr r7, .L08067F9C @ =0x00001264
	ldr r6, [sp, #0xe8]
	adds r7, r6, r7
	str r7, [sp, #0x100]
.L08067E30:
	movs r6, #0
	ldr r1, [sp, #0x168]
	ldrb r0, [r1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	ldr r2, [sp, #0xfc]
	subs r0, r0, r2
	ldr r5, [sp, #0xf0]
	adds r5, #1
	ldr r3, [sp, #0xec]
	ldr r1, [r3, #0x18]
	lsls r4, r5, #6
	adds r1, r1, r4
	adds r1, #8
	mov r7, sl
	str r7, [sp]
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r1, [sp, #0xec]
	ldr r0, [r1, #0x18]
	adds r0, r0, r4
	adds r0, #0xa
	movs r2, #0x38
	lsls r1, r2, #0x10
	str r6, [sp]
	str r7, [sp, #4]
	lsrs r1, r1, #0x10
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	movs r0, #0x40
	str r0, [sp, #0xc]
	add r0, sp, #8
	ldr r3, [sp, #0xf0]
	lsls r1, r3, #3
	strh r1, [r0]
	ldr r4, [sp, #0x100]
	ldr r0, [r4]
	adds r2, r1, #0
	str r5, [sp, #0x110]
	cmp r0, #0x3c
	bhi .L08067EAA
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r4, r0
	cmp r0, #0
	beq .L08067EA2
	add r1, sp, #8
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067EA2:
	ldr r1, [sp, #0x100]
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08067EAA:
	movs r0, #0xd0
	str r0, [sp, #0xc]
	add r0, sp, #8
	strh r2, [r0]
	ldr r3, [sp, #0xe8]
	ldr r4, .L08067F9C @ =0x00001264
	adds r2, r3, r4
	ldr r0, [r2]
	cmp r0, #0x3c
	bhi .L08067ED8
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r2, r0
	cmp r0, #0
	beq .L08067ED2
	add r1, sp, #8
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08067ED2:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L08067ED8:
	movs r0, #0x40
	str r0, [sp, #0xc]
	add r1, sp, #8
	ldr r2, [sp, #0xf0]
	adds r2, #2
	lsls r0, r2, #3
	strh r0, [r1]
	ldr r0, [sp, #0xe8]
	ldr r1, .L08067FA0 @ =0x00001638
	adds r3, r0, r1
	ldr r0, [r3]
	mov r8, r2
	cmp r0, #0x3b
	bhi .L08067F0E
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r3, r0
	cmp r0, #0
	beq .L08067F08
	add r1, sp, #8
	ldm r1!, {r2, r4, r5}
	stm r0!, {r2, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08067F08:
	ldr r0, [r3]
	adds r0, #1
	str r0, [r3]
.L08067F0E:
	movs r0, #0xe0
	str r0, [sp, #0xc]
	ldr r6, [sp, #0xe8]
	ldr r7, .L08067FA0 @ =0x00001638
	adds r2, r6, r7
	ldr r0, [r2]
	cmp r0, #0x3b
	bhi .L08067F38
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r2, r0
	cmp r0, #0
	beq .L08067F32
	add r1, sp, #8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08067F32:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L08067F38:
	ldr r6, [sp, #0xe8]
	ldr r7, .L08067F8C @ =0x0000058C
	adds r0, r6, r7
	ldr r0, [r0]
	ldr r1, .L08067F90 @ =0x00001AA8
	adds r0, r0, r1
	ldr r1, [sp, #0xfc]
	bl func_0809B018
	ldr r7, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0xf8]
	bl __udivsi3
	adds r5, r0, #0
	cmp r5, #0
	beq .L08067FD6
	ldr r2, [sp, #0xec]
	ldr r0, [r2, #0x18]
	ldr r3, [sp, #0x110]
	lsls r6, r3, #6
	adds r0, r0, r6
	adds r0, #0x14
	movs r1, #0
	str r1, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r1, #0xad
	lsls r1, r1, #1
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	cmp r5, #0x64
	ble .L08067FA4
	ldr r0, [sp, #0xec]
	ldr r1, [r0, #0x18]
	adds r1, r1, r6
	adds r1, #0x1e
	b .L08067FB0
	.align 2, 0
.L08067F88: .4byte 0x00002710
.L08067F8C: .4byte 0x0000058C
.L08067F90: .4byte 0x00001AA8
.L08067F94: .4byte 0x000186A0
.L08067F98: .4byte 0x00001AB0
.L08067F9C: .4byte 0x00001264
.L08067FA0: .4byte 0x00001638
.L08067FA4:
	cmp r5, #0xa
	ble .L08067FC0
	ldr r2, [sp, #0xec]
	ldr r1, [r2, #0x18]
	adds r1, r1, r6
	adds r1, #0x1c
.L08067FB0:
	str r4, [sp]
	adds r0, r5, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EE30
	b .L08067FD6
.L08067FC0:
	ldr r3, [sp, #0xec]
	ldr r1, [r3, #0x18]
	adds r1, r1, r6
	adds r1, #0x1a
	str r4, [sp]
	adds r0, r5, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EE30
.L08067FD6:
	adds r0, r7, #0
	ldr r1, [sp, #0xf8]
	bl __umodsi3
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, [sp, #0xf8]
	bl __udivsi3
	adds r4, r0, #0
	movs r6, #0
	ldr r5, [sp, #0xf0]
	adds r5, #3
	str r5, [sp, #0x114]
	ldr r7, [sp, #0xfc]
	adds r7, #1
	mov sb, r7
	b .L08068024
.L08067FFE:
	ldr r1, [sp, #0xec]
	ldr r0, [r1, #0x18]
	mov r2, r8
	lsls r1, r2, #6
	adds r0, r0, r1
	movs r1, #0x11
	subs r1, r1, r6
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #2
	str r1, [sp]
	mov r3, sl
	str r3, [sp, #4]
	movs r1, #0xa4
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r6, #1
.L08068024:
	adds r1, r4, #0
	cmp r4, #0
	bge .L0806802C
	adds r1, r4, #7
.L0806802C:
	asrs r2, r1, #3
	cmp r6, r2
	blt .L08067FFE
	cmp r6, #9
	bgt .L08068088
	ldr r5, [sp, #0xec]
	ldr r1, [r5, #0x18]
	mov r7, r8
	lsls r0, r7, #6
	adds r1, r1, r0
	movs r0, #0x11
	subs r0, r0, r6
	lsls r0, r0, #1
	adds r3, r1, r0
	lsls r1, r2, #3
	subs r1, r4, r1
	adds r1, #0x9c
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #2
	str r0, [sp]
	mov r0, sl
	str r0, [sp, #4]
	adds r0, r3, #0
	b .L0806807A
.L0806805E:
	ldr r1, [sp, #0xec]
	ldr r0, [r1, #0x18]
	mov r2, r8
	lsls r1, r2, #6
	adds r0, r0, r1
	movs r1, #0x11
	subs r1, r1, r6
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #2
	str r1, [sp]
	mov r3, sl
	str r3, [sp, #4]
	movs r1, #0x9c
.L0806807A:
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r6, #1
	cmp r6, #9
	ble .L0806805E
.L08068088:
	movs r6, #0
	ldr r4, [sp, #0xe8]
	ldr r5, .L08068100 @ =0x0000058C
	adds r0, r4, r5
	ldr r0, [r0]
	ldr r7, .L08068104 @ =0x00001AA8
	adds r0, r0, r7
	ldr r1, [sp, #0xfc]
	bl func_0809B018
	ldr r0, [r0, #4]
	adds r7, r0, #0
	ldr r1, [sp, #0xf8]
	bl __udivsi3
	adds r5, r0, #0
	cmp r5, #0
	beq .L080680E2
	ldr r1, [sp, #0xec]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0x110]
	lsls r4, r2, #6
	adds r0, r0, r4
	adds r0, #0x32
	str r6, [sp]
	mov r3, sl
	str r3, [sp, #4]
	movs r1, #0xad
	lsls r1, r1, #1
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	ldr r0, [sp, #0xec]
	ldr r1, [r0, #0x18]
	adds r1, r1, r4
	adds r1, #0x30
	mov r2, sl
	str r2, [sp]
	adds r0, r5, #0
	movs r2, #0xa8
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EE30
.L080680E2:
	adds r0, r7, #0
	ldr r1, [sp, #0xf8]
	bl __umodsi3
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, [sp, #0xf8]
	bl __udivsi3
	adds r4, r0, #0
	movs r5, #0x24
	b .L0806812A
	.align 2, 0
.L08068100: .4byte 0x0000058C
.L08068104: .4byte 0x00001AA8
.L08068108:
	ldr r3, [sp, #0xec]
	ldr r0, [r3, #0x18]
	mov r7, r8
	lsls r1, r7, #6
	adds r0, r0, r1
	adds r0, r0, r5
	movs r1, #2
	str r1, [sp]
	mov r1, sl
	str r1, [sp, #4]
	movs r1, #0xad
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #2
	adds r6, #1
.L0806812A:
	adds r1, r4, #0
	cmp r4, #0
	bge .L08068132
	adds r1, r4, #7
.L08068132:
	asrs r2, r1, #3
	cmp r6, r2
	blt .L08068108
	cmp r6, #9
	bgt .L0806819C
	ldr r3, [sp, #0xec]
	ldr r1, [r3, #0x18]
	mov r5, r8
	lsls r0, r5, #6
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x12
	lsls r0, r0, #1
	adds r3, r1, r0
	lsls r1, r2, #3
	subs r1, r4, r1
	adds r1, #0xa5
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #2
	str r0, [sp]
	mov r7, sl
	str r7, [sp, #4]
	adds r0, r3, #0
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r6, #1
	cmp r6, #9
	bgt .L0806819C
	lsls r0, r6, #1
	adds r4, r0, #0
	adds r4, #0x24
.L08068176:
	ldr r1, [sp, #0xec]
	ldr r0, [r1, #0x18]
	mov r2, r8
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r4
	movs r1, #2
	str r1, [sp]
	mov r3, sl
	str r3, [sp, #4]
	movs r1, #0xa5
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r4, #2
	adds r6, #1
	cmp r6, #9
	ble .L08068176
.L0806819C:
	ldr r4, [sp, #0x114]
	str r4, [sp, #0xf0]
	mov r5, sb
	str r5, [sp, #0xfc]
	ldr r6, [sp, #0xe8]
	ldr r7, .L08068334 @ =0x0000058C
	adds r0, r6, r7
	ldr r0, [r0]
	ldr r1, .L08068338 @ =0x00001AB0
	adds r0, r0, r1
	ldr r0, [r0]
	cmp sb, r0
	bhs .L080681C6
	ldr r2, [sp, #0x168]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	cmp sb, r0
	bhs .L080681C6
	b .L08067E30
.L080681C6:
	ldr r3, [sp, #0xf0]
	adds r3, #1
	str r3, [sp, #0xf0]
	movs r4, #1
	mov sb, r4
	ldr r5, [sp, #0xe8]
	ldr r6, .L08068334 @ =0x0000058C
	adds r0, r5, r6
	ldr r0, [r0]
	ldr r7, .L0806833C @ =0x00001BA4
	adds r0, r0, r7
	ldr r0, [r0]
	cmp sb, r0
	blo .L080681E4
	b .L08068316
.L080681E4:
	movs r0, #0
	mov sl, r0
	movs r1, #0x20
	mov r8, r1
	lsls r0, r3, #6
	adds r7, r0, #0
	adds r7, #0x80
	adds r2, r6, #0
	adds r2, r5, r2
	str r2, [sp, #0x108]
.L080681F8:
	ldr r3, [sp, #0x168]
	ldrb r0, [r3]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	movs r4, #3
	ands r0, r4
	movs r2, #4
	rsbs r2, r2, #0
	add r5, sp, #0x104
	ldrb r5, [r5]
	ands r2, r5
	orrs r2, r0
	add r6, sp, #0x104
	strb r2, [r6]
	lsls r2, r2, #0x1e
	lsrs r2, r2, #0x1e
	mov r0, sb
	subs r2, r2, r0
	ands r2, r4
	ldr r1, [sp, #0xec]
	ldr r0, [r1, #0x18]
	ldr r3, [sp, #0xf0]
	lsls r6, r3, #6
	adds r0, r0, r6
	adds r0, #4
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, #0x48
	mov r4, sl
	str r4, [sp]
	mov r5, r8
	str r5, [sp, #4]
	movs r2, #6
	movs r3, #2
	bl func_0804E9F4
	ldr r1, [sp, #0xec]
	ldr r0, [r1, #0x18]
	adds r0, r0, r6
	adds r0, #0x12
	str r4, [sp]
	str r5, [sp, #4]
	ldr r2, [sp, #0x174]
	lsrs r1, r2, #0x10
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r3, [sp, #0xec]
	ldr r0, [r3, #0x18]
	adds r0, r0, r7
	adds r0, #0x12
	str r4, [sp]
	str r5, [sp, #4]
	ldr r4, [sp, #0x17c]
	lsrs r1, r4, #0x10
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r5, [sp, #0x108]
	ldr r0, [r5]
	ldr r1, .L08068340 @ =0x00001AA8
	adds r0, r0, r1
	mov r1, sb
	bl func_0809B038
	ldr r4, [r0]
	ldr r0, [r5]
	ldr r2, .L08068340 @ =0x00001AA8
	adds r0, r0, r2
	mov r1, sb
	bl func_0809B038
	ldr r5, [r0, #4]
	ldr r3, [sp, #0xec]
	ldr r1, [r3, #0x18]
	adds r1, r1, r6
	adds r1, #0x34
	mov r0, r8
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r2, [sp, #0xec]
	ldr r1, [r2, #0x18]
	adds r1, r1, r7
	adds r1, #0x34
	mov r3, r8
	str r3, [sp]
	adds r0, r5, #0
	movs r2, #0x90
	lsls r2, r2, #1
	movs r3, #0
	bl func_0804EDB4
	ldr r4, [sp, #0xec]
	ldr r0, [r4, #0x18]
	adds r0, r0, r6
	adds r0, #0x36
	ldr r5, [sp, #0x16c]
	lsrs r4, r5, #0x10
	mov r6, sl
	str r6, [sp]
	mov r1, r8
	str r1, [sp, #4]
	adds r1, r4, #0
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r2, [sp, #0xec]
	ldr r0, [r2, #0x18]
	adds r0, r0, r7
	adds r0, #0x36
	str r6, [sp]
	mov r3, r8
	str r3, [sp, #4]
	adds r1, r4, #0
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r7, r7, r4
	ldr r5, [sp, #0xf0]
	adds r5, #5
	str r5, [sp, #0xf0]
	movs r6, #1
	add sb, r6
	ldr r1, [sp, #0x108]
	ldr r0, [r1]
	ldr r2, .L0806833C @ =0x00001BA4
	adds r0, r0, r2
	ldr r0, [r0]
	cmp sb, r0
	bhs .L08068316
	b .L080681F8
.L08068316:
	ldr r3, [sp, #0xf0]
	lsls r1, r3, #0x13
	asrs r1, r1, #0x10
	ldr r0, [sp, #0xec]
	bl func_08075E24
	ldr r0, [sp, #0xe8]
	add sp, #0x18c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08068334: .4byte 0x0000058C
.L08068338: .4byte 0x00001AB0
.L0806833C: .4byte 0x00001BA4
.L08068340: .4byte 0x00001AA8

	thumb_func_start func_08068344
func_08068344: @ 0x08068344
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf4
	str r0, [sp, #0xbc]
	ldr r0, .L080683FC @ =gUnk_080FB928
	str r0, [sp]
	ldr r0, [sp, #0xbc]
	movs r3, #0x20
	bl func_08076BFC
	ldr r0, [sp, #0xbc]
	ldr r2, .L08068400 @ =0x000005B4
	adds r1, r0, r2
	ldr r0, .L08068404 @ =vtable_unk_080E7A08
	str r0, [r1]
	ldr r3, [sp, #0xbc]
	ldr r4, .L08068408 @ =0x000009C4
	adds r0, r3, r4
	ldr r1, .L0806840C @ =gUnk_086678A0
	bl func_0805E6CC
	ldr r5, [sp, #0xbc]
	ldr r5, [r5, #4]
	str r5, [sp, #0xc0]
	ldr r3, .L08068410 @ =gUnk_080FB93C
	add r2, sp, #0x38
	movs r0, #6
	movs r1, #2
	strh r0, [r2]
	strh r1, [r2, #2]
	ldr r0, [sp, #0x38]
	ldr r7, [sp, #0xbc]
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r4, r7, r1
	str r3, [sp]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r0, [r7]
	bl func_08008910
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r6, r0, #0
	movs r5, #0x38
	lsls r2, r5, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	adds r1, r4, #0
	bl func_08008F0C
	add r7, sp, #8
	mov sb, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806841C
	cmp r1, #0
	beq .L080683D6
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080683D6:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r5, sp
	adds r5, #0x44
	str r5, [sp, #0xe0]
	ldr r7, [sp, #0xbc]
	ldr r0, .L08068414 @ =0x000007C4
	adds r7, r7, r0
	mov sl, r7
	mov r1, sp
	adds r1, #0x50
	str r1, [sp, #0xe4]
	ldr r3, .L08068418 @ =0x000005BC
	ldr r2, [sp, #0xbc]
	adds r3, r2, r3
	str r3, [sp, #0xdc]
	b .L08068506
	.align 2, 0
.L080683FC: .4byte gUnk_080FB928
.L08068400: .4byte 0x000005B4
.L08068404: .4byte vtable_unk_080E7A08
.L08068408: .4byte 0x000009C4
.L0806840C: .4byte gUnk_086678A0
.L08068410: .4byte gUnk_080FB93C
.L08068414: .4byte 0x000007C4
.L08068418: .4byte 0x000005BC
.L0806841C:
	str r1, [sp, #0xec]
	movs r0, #1
	str r0, [sp, #0x40]
	ldr r0, [r6]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x3c]
	add r1, sp, #0x40
	add r0, sp, #0x3c
	cmp r4, #1
	bhs .L08068436
	adds r0, r1, #0
.L08068436:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08068454
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08068458
	mov r0, r8
	bl func_080D3BC0
	b .L08068458
.L08068454:
	movs r0, #0
	mov r8, r0
.L08068458:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r5, sp
	adds r5, #0x44
	str r5, [sp, #0xe0]
	ldr r7, [sp, #0xbc]
	ldr r0, .L080684B8 @ =0x000007C4
	adds r7, r7, r0
	mov sl, r7
	mov r1, sp
	adds r1, #0x50
	str r1, [sp, #0xe4]
	ldr r5, .L080684BC @ =0x000005BC
	ldr r4, [sp, #0xbc]
	adds r5, r4, r5
	str r5, [sp, #0xdc]
	ldr r7, [sp, #0xec]
	cmp r2, r7
	beq .L0806849C
.L08068482:
	cmp r3, #0
	beq .L08068492
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068492:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xec]
	cmp r2, r0
	bne .L08068482
.L0806849C:
	adds r5, r3, #0
	ldr r0, [sp, #0x40]
	cmp r0, #1
	bne .L080684C0
	cmp r5, #0
	beq .L080684B4
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080684B4:
	adds r5, #0x10
	b .L080684E2
	.align 2, 0
.L080684B8: .4byte 0x000007C4
.L080684BC: .4byte 0x000005BC
.L080684C0:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080684E0
.L080684C8:
	cmp r2, #0
	beq .L080684D8
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080684D8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080684C8
.L080684E0:
	adds r5, r2, #0
.L080684E2:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080684F2
.L080684EC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080684EC
.L080684F2:
	cmp r0, #0
	beq .L080684FA
	bl free
.L080684FA:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08068506:
	ldr r3, .L08068568 @ =gUnk_080FB944
	movs r1, #8
	movs r2, #2
	add r0, sp, #0x44
	strh r1, [r0]
	ldr r0, [sp, #0xe0]
	strh r2, [r0, #2]
	ldr r0, [sp, #0x44]
	str r3, [sp]
	mov r1, sl
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r1, [sp, #0xbc]
	ldr r0, [r1]
	bl func_08008910
	movs r3, #0x80
	lsls r3, r3, #2
	adds r6, r0, #0
	movs r4, #0x44
	lsls r2, r4, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	mov r1, sl
	bl func_08008F0C
	add r5, sp, #8
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806856C
	cmp r1, #0
	beq .L0806855E
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806855E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806862C
	.align 2, 0
.L08068568: .4byte gUnk_080FB944
.L0806856C:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x4c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x48]
	add r1, sp, #0x4c
	add r0, sp, #0x48
	cmp r4, #1
	bhs .L08068584
	adds r0, r1, #0
.L08068584:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080685A2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080685A6
	mov r0, r8
	bl func_080D3BC0
	b .L080685A6
.L080685A2:
	movs r0, #0
	mov r8, r0
.L080685A6:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L080685CA
.L080685B2:
	cmp r3, #0
	beq .L080685C2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080685C2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080685B2
.L080685CA:
	adds r5, r3, #0
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne .L080685E6
	cmp r5, #0
	beq .L080685E2
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080685E2:
	adds r5, #0x10
	b .L08068608
.L080685E6:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08068606
.L080685EE:
	cmp r2, #0
	beq .L080685FE
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080685FE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080685EE
.L08068606:
	adds r5, r2, #0
.L08068608:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08068618
.L08068612:
	adds r1, #0x10
	cmp r1, r2
	bne .L08068612
.L08068618:
	cmp r0, #0
	beq .L08068620
	bl free
.L08068620:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806862C:
	ldr r2, .L08068688 @ =gUnk_080FB950
	movs r1, #2
	add r0, sp, #0x50
	strh r1, [r0]
	ldr r0, [sp, #0xe4]
	strh r1, [r0, #2]
	ldr r0, [sp, #0x50]
	str r2, [sp]
	ldr r1, [sp, #0xdc]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
	ldr r1, [sp, #0xbc]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	movs r3, #0x54
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	ldr r1, [sp, #0xdc]
	movs r3, #0x80
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806868C
	cmp r1, #0
	beq .L08068680
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068680:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806874C
	.align 2, 0
.L08068688: .4byte gUnk_080FB950
.L0806868C:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x58]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x54]
	add r1, sp, #0x58
	add r0, sp, #0x54
	cmp r4, #1
	bhs .L080686A4
	adds r0, r1, #0
.L080686A4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080686C2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080686C6
	mov r0, r8
	bl func_080D3BC0
	b .L080686C6
.L080686C2:
	movs r0, #0
	mov r8, r0
.L080686C6:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r6]
	adds r3, r5, #0
	cmp r2, sl
	beq .L080686EA
.L080686D2:
	cmp r3, #0
	beq .L080686E2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080686E2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080686D2
.L080686EA:
	adds r5, r3, #0
	ldr r0, [sp, #0x58]
	cmp r0, #1
	bne .L08068706
	cmp r5, #0
	beq .L08068702
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08068702:
	adds r5, #0x10
	b .L08068728
.L08068706:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08068726
.L0806870E:
	cmp r2, #0
	beq .L0806871E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806871E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806870E
.L08068726:
	adds r5, r2, #0
.L08068728:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08068738
.L08068732:
	adds r1, #0x10
	cmp r1, r2
	bne .L08068732
.L08068738:
	cmp r0, #0
	beq .L08068740
	bl free
.L08068740:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806874C:
	ldr r1, [sp, #0xbc]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08068794 @ =gUnk_08752A2C
	movs r3, #0x58
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	movs r3, #0x20
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08068798
	cmp r1, #0
	beq .L08068786
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068786:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r3, #0x20
	mov sl, r3
	b .L08068864
	.align 2, 0
.L08068794: .4byte gUnk_08752A2C
.L08068798:
	str r1, [sp, #0xec]
	movs r4, #1
	str r4, [sp, #0x60]
	ldr r1, [r6]
	ldr r5, [sp, #0xec]
	subs r0, r5, r1
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r2, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L080687B2
	adds r0, r2, #0
.L080687B2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080687D2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080687CE
	mov r0, r8
	bl func_080D3BC0
.L080687CE:
	ldr r1, [r6]
	b .L080687D6
.L080687D2:
	movs r0, #0
	mov r8, r0
.L080687D6:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	movs r7, #1
	lsls r7, r7, #5
	mov sl, r7
	b .L080687FA
.L080687E6:
	cmp r3, #0
	beq .L080687F6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080687F6:
	adds r2, #0x10
	adds r3, #0x10
.L080687FA:
	ldr r0, [sp, #0xec]
	cmp r2, r0
	bne .L080687E6
	adds r5, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L0806881C
	cmp r5, #0
	beq .L08068818
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08068818:
	adds r5, #0x10
	b .L0806883E
.L0806881C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0806883C
.L08068824:
	cmp r2, #0
	beq .L08068834
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068834:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08068824
.L0806883C:
	adds r5, r2, #0
.L0806883E:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L0806884E
.L08068848:
	adds r0, #0x10
	cmp r0, r2
	bne .L08068848
.L0806884E:
	cmp r1, #0
	beq .L08068858
	adds r0, r1, #0
	bl free
.L08068858:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08068864:
	ldr r1, [sp, #0xbc]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L080688A4 @ =gUnk_08752AAC
	movs r2, #0xa0
	lsls r2, r2, #0x13
	add r2, sl
	add r0, sp, #8
	movs r3, #0x20
	bl func_08008F0C
	add r2, sp, #8
	mov sb, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080688A8
	cmp r1, #0
	beq .L0806889A
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L0806889A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0806896E
	.align 2, 0
.L080688A4: .4byte gUnk_08752AAC
.L080688A8:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x68]
	ldr r1, [r6]
	mov r7, sl
	subs r0, r7, r1
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r2, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L080688C2
	adds r0, r2, #0
.L080688C2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080688E2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080688DE
	mov r0, r8
	bl func_080D3BC0
.L080688DE:
	ldr r1, [r6]
	b .L080688E6
.L080688E2:
	movs r0, #0
	mov r8, r0
.L080688E6:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L0806890A
.L080688F2:
	cmp r3, #0
	beq .L08068902
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068902:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080688F2
.L0806890A:
	adds r5, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L08068926
	cmp r5, #0
	beq .L08068922
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08068922:
	adds r5, #0x10
	b .L08068948
.L08068926:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08068946
.L0806892E:
	cmp r2, #0
	beq .L0806893E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806893E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806892E
.L08068946:
	adds r5, r2, #0
.L08068948:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08068958
.L08068952:
	adds r0, #0x10
	cmp r0, r2
	bne .L08068952
.L08068958:
	cmp r1, #0
	beq .L08068962
	adds r0, r1, #0
	bl free
.L08068962:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0806896E:
	ldr r1, [sp, #0xbc]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L080689B0 @ =gUnk_08752CCC
	movs r3, #0x59
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	movs r3, #0x20
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080689B4
	cmp r1, #0
	beq .L080689A8
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080689A8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08068A7A
	.align 2, 0
.L080689B0: .4byte gUnk_08752CCC
.L080689B4:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x70]
	ldr r1, [r6]
	mov r3, sl
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x6c]
	add r2, sp, #0x70
	add r0, sp, #0x6c
	cmp r4, #1
	bhs .L080689CE
	adds r0, r2, #0
.L080689CE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080689EE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080689EA
	mov r0, r8
	bl func_080D3BC0
.L080689EA:
	ldr r1, [r6]
	b .L080689F2
.L080689EE:
	movs r0, #0
	mov r8, r0
.L080689F2:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L08068A16
.L080689FE:
	cmp r3, #0
	beq .L08068A0E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068A0E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080689FE
.L08068A16:
	adds r5, r3, #0
	ldr r0, [sp, #0x70]
	cmp r0, #1
	bne .L08068A32
	cmp r5, #0
	beq .L08068A2E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08068A2E:
	adds r5, #0x10
	b .L08068A54
.L08068A32:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08068A52
.L08068A3A:
	cmp r2, #0
	beq .L08068A4A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068A4A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08068A3A
.L08068A52:
	adds r5, r2, #0
.L08068A54:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08068A64
.L08068A5E:
	adds r0, #0x10
	cmp r0, r2
	bne .L08068A5E
.L08068A64:
	cmp r1, #0
	beq .L08068A6E
	adds r0, r1, #0
	bl free
.L08068A6E:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08068A7A:
	ldr r1, [sp, #0xbc]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08068ABC @ =gUnk_08752BCC
	movs r3, #0x5a
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	movs r3, #0x20
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08068AC0
	cmp r1, #0
	beq .L08068AB4
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068AB4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08068B86
	.align 2, 0
.L08068ABC: .4byte gUnk_08752BCC
.L08068AC0:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x78]
	ldr r1, [r6]
	mov r3, sl
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r2, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L08068ADA
	adds r0, r2, #0
.L08068ADA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08068AFA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08068AF6
	mov r0, r8
	bl func_080D3BC0
.L08068AF6:
	ldr r1, [r6]
	b .L08068AFE
.L08068AFA:
	movs r0, #0
	mov r8, r0
.L08068AFE:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L08068B22
.L08068B0A:
	cmp r3, #0
	beq .L08068B1A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068B1A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08068B0A
.L08068B22:
	adds r5, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L08068B3E
	cmp r5, #0
	beq .L08068B3A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08068B3A:
	adds r5, #0x10
	b .L08068B60
.L08068B3E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08068B5E
.L08068B46:
	cmp r2, #0
	beq .L08068B56
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068B56:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08068B46
.L08068B5E:
	adds r5, r2, #0
.L08068B60:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08068B70
.L08068B6A:
	adds r0, #0x10
	cmp r0, r2
	bne .L08068B6A
.L08068B70:
	cmp r1, #0
	beq .L08068B7A
	adds r0, r1, #0
	bl free
.L08068B7A:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08068B86:
	ldr r1, [sp, #0xbc]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08068BC8 @ =gUnk_08752C4C
	movs r3, #0x5b
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	movs r3, #0x20
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08068BCC
	cmp r1, #0
	beq .L08068BC0
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068BC0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08068C92
	.align 2, 0
.L08068BC8: .4byte gUnk_08752C4C
.L08068BCC:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x80]
	ldr r1, [r6]
	mov r3, sl
	subs r0, r3, r1
	asrs r4, r0, #4
	str r4, [sp, #0x7c]
	add r2, sp, #0x80
	add r0, sp, #0x7c
	cmp r4, #1
	bhs .L08068BE6
	adds r0, r2, #0
.L08068BE6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08068C06
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08068C02
	mov r0, r8
	bl func_080D3BC0
.L08068C02:
	ldr r1, [r6]
	b .L08068C0A
.L08068C06:
	movs r0, #0
	mov r8, r0
.L08068C0A:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r2, r1, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L08068C2E
.L08068C16:
	cmp r3, #0
	beq .L08068C26
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068C26:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L08068C16
.L08068C2E:
	adds r5, r3, #0
	ldr r0, [sp, #0x80]
	cmp r0, #1
	bne .L08068C4A
	cmp r5, #0
	beq .L08068C46
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08068C46:
	adds r5, #0x10
	b .L08068C6C
.L08068C4A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08068C6A
.L08068C52:
	cmp r2, #0
	beq .L08068C62
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068C62:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08068C52
.L08068C6A:
	adds r5, r2, #0
.L08068C6C:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08068C7C
.L08068C76:
	adds r0, #0x10
	cmp r0, r2
	bne .L08068C76
.L08068C7C:
	cmp r1, #0
	beq .L08068C86
	adds r0, r1, #0
	bl free
.L08068C86:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08068C92:
	ldr r1, [sp, #0xbc]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08068CD8 @ =gUnk_087511CC
	movs r3, #0x9c
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	adds r3, #0x84
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08068CDC
	cmp r1, #0
	beq .L08068CCC
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068CCC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r3, #0x40
	str r3, [sp, #0xd8]
	b .L08068DAE
	.align 2, 0
.L08068CD8: .4byte gUnk_087511CC
.L08068CDC:
	str r1, [sp, #0xec]
	movs r0, #1
	add r1, sp, #0x88
	str r0, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0xec]
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x84]
	ldr r0, [r1]
	add r2, sp, #0x84
	mov sl, r1
	cmp r4, r0
	bhs .L08068CFA
	mov r2, sl
.L08068CFA:
	ldr r0, [r2]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08068D18
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08068D1C
	mov r0, r8
	bl func_080D3BC0
	b .L08068D1C
.L08068D18:
	movs r0, #0
	mov r8, r0
.L08068D1C:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r6]
	adds r3, r5, #0
	movs r5, #2
	lsls r5, r5, #5
	str r5, [sp, #0xd8]
	ldr r7, [sp, #0xec]
	cmp r2, r7
	beq .L08068D4A
.L08068D30:
	cmp r3, #0
	beq .L08068D40
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068D40:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xec]
	cmp r2, r0
	bne .L08068D30
.L08068D4A:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L08068D68
	cmp r5, #0
	beq .L08068D64
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068D64:
	adds r5, #0x10
	b .L08068D8A
.L08068D68:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08068D88
.L08068D70:
	cmp r2, #0
	beq .L08068D80
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068D80:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08068D70
.L08068D88:
	adds r5, r2, #0
.L08068D8A:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08068D9A
.L08068D94:
	adds r1, #0x10
	cmp r1, r2
	bne .L08068D94
.L08068D9A:
	cmp r0, #0
	beq .L08068DA2
	bl free
.L08068DA2:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r1, [sp, #0xf0]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08068DAE:
	ldr r2, [sp, #0xbc]
	ldr r0, [r2]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08068DF0 @ =gUnk_087512EC
	movs r2, #0xa0
	lsls r2, r2, #0x13
	ldr r3, [sp, #0xd8]
	adds r2, r3, r2
	add r0, sp, #8
	movs r3, #0x20
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08068DF4
	cmp r1, #0
	beq .L08068DE6
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068DE6:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08068EC0
	.align 2, 0
.L08068DF0: .4byte gUnk_087512EC
.L08068DF4:
	str r1, [sp, #0xec]
	movs r0, #1
	add r1, sp, #0x90
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0xec]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x8c
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08068E12
	mov r0, sl
.L08068E12:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08068E30
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08068E34
	mov r0, r8
	bl func_080D3BC0
	b .L08068E34
.L08068E30:
	movs r0, #0
	mov r8, r0
.L08068E34:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0xec]
	cmp r2, r4
	beq .L08068E5C
.L08068E42:
	cmp r3, #0
	beq .L08068E52
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068E52:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0xec]
	cmp r2, r5
	bne .L08068E42
.L08068E5C:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L08068E7A
	cmp r5, #0
	beq .L08068E76
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08068E76:
	adds r5, #0x10
	b .L08068E9C
.L08068E7A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08068E9A
.L08068E82:
	cmp r2, #0
	beq .L08068E92
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068E92:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08068E82
.L08068E9A:
	adds r5, r2, #0
.L08068E9C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08068EAC
.L08068EA6:
	adds r1, #0x10
	cmp r1, r2
	bne .L08068EA6
.L08068EAC:
	cmp r0, #0
	beq .L08068EB4
	bl free
.L08068EB4:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08068EC0:
	ldr r1, [sp, #0xbc]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08068F04 @ =gUnk_0875154C
	movs r3, #0xa5
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	adds r3, #0x7b
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08068F08
	cmp r1, #0
	beq .L08068EFA
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068EFA:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L08068FD4
	.align 2, 0
.L08068F04: .4byte gUnk_0875154C
.L08068F08:
	str r1, [sp, #0xec]
	movs r0, #1
	add r1, sp, #0x98
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0xec]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x94
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L08068F26
	mov r0, sl
.L08068F26:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08068F44
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08068F48
	mov r0, r8
	bl func_080D3BC0
	b .L08068F48
.L08068F44:
	movs r0, #0
	mov r8, r0
.L08068F48:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0xec]
	cmp r2, r4
	beq .L08068F70
.L08068F56:
	cmp r3, #0
	beq .L08068F66
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068F66:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0xec]
	cmp r2, r5
	bne .L08068F56
.L08068F70:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L08068F8E
	cmp r5, #0
	beq .L08068F8A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08068F8A:
	adds r5, #0x10
	b .L08068FB0
.L08068F8E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08068FAE
.L08068F96:
	cmp r2, #0
	beq .L08068FA6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08068FA6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08068F96
.L08068FAE:
	adds r5, r2, #0
.L08068FB0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08068FC0
.L08068FBA:
	adds r1, #0x10
	cmp r1, r2
	bne .L08068FBA
.L08068FC0:
	cmp r0, #0
	beq .L08068FC8
	bl free
.L08068FC8:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08068FD4:
	ldr r1, [sp, #0xbc]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L08069018 @ =gUnk_0875130C
	movs r3, #0xae
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	adds r3, #0x72
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0806901C
	cmp r1, #0
	beq .L0806900E
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806900E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080690E8
	.align 2, 0
.L08069018: .4byte gUnk_0875130C
.L0806901C:
	str r1, [sp, #0xec]
	movs r0, #1
	add r1, sp, #0xa0
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0xec]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0x9c
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L0806903A
	mov r0, sl
.L0806903A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08069058
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0806905C
	mov r0, r8
	bl func_080D3BC0
	b .L0806905C
.L08069058:
	movs r0, #0
	mov r8, r0
.L0806905C:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0xec]
	cmp r2, r4
	beq .L08069084
.L0806906A:
	cmp r3, #0
	beq .L0806907A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806907A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0xec]
	cmp r2, r5
	bne .L0806906A
.L08069084:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L080690A2
	cmp r5, #0
	beq .L0806909E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0806909E:
	adds r5, #0x10
	b .L080690C4
.L080690A2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080690C2
.L080690AA:
	cmp r2, #0
	beq .L080690BA
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080690BA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080690AA
.L080690C2:
	adds r5, r2, #0
.L080690C4:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080690D4
.L080690CE:
	adds r1, #0x10
	cmp r1, r2
	bne .L080690CE
.L080690D4:
	cmp r0, #0
	beq .L080690DC
	bl free
.L080690DC:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080690E8:
	ldr r1, [sp, #0xbc]
	ldr r0, [r1]
	bl func_08008910
	adds r6, r0, #0
	ldr r1, .L0806912C @ =gUnk_0875142C
	movs r3, #0xb7
	lsls r2, r3, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	add r0, sp, #8
	adds r3, #0x69
	bl func_08008F0C
	add r4, sp, #8
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08069130
	cmp r1, #0
	beq .L08069122
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08069122:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080691FC
	.align 2, 0
.L0806912C: .4byte gUnk_0875142C
.L08069130:
	str r1, [sp, #0xec]
	movs r0, #1
	add r1, sp, #0xa8
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0xec]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xa4
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L0806914E
	mov r0, sl
.L0806914E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806916C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08069170
	mov r0, r8
	bl func_080D3BC0
	b .L08069170
.L0806916C:
	movs r0, #0
	mov r8, r0
.L08069170:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0xec]
	cmp r2, r4
	beq .L08069198
.L0806917E:
	cmp r3, #0
	beq .L0806918E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806918E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0xec]
	cmp r2, r5
	bne .L0806917E
.L08069198:
	adds r5, r3, #0
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #1
	bne .L080691B6
	cmp r5, #0
	beq .L080691B2
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080691B2:
	adds r5, #0x10
	b .L080691D8
.L080691B6:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080691D6
.L080691BE:
	cmp r2, #0
	beq .L080691CE
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080691CE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080691BE
.L080691D6:
	adds r5, r2, #0
.L080691D8:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080691E8
.L080691E2:
	adds r1, #0x10
	cmp r1, r2
	bne .L080691E2
.L080691E8:
	cmp r0, #0
	beq .L080691F0
	bl free
.L080691F0:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080691FC:
	movs r1, #0
	ldr r2, [sp, #0xbc]
	ldr r3, .L08069278 @ =0x0000058C
	adds r0, r2, r3
	ldr r0, [r0]
	ldr r4, .L0806927C @ =0x00002185
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne .L08069216
	movs r1, #1
.L08069216:
	movs r5, #4
	str r5, [sp, #0xc4]
	cmp r1, #0
	beq .L08069222
	movs r7, #3
	str r7, [sp, #0xc4]
.L08069222:
	movs r0, #5
	cmp r1, #0
	beq .L0806922A
	movs r0, #6
.L0806922A:
	str r0, [sp, #0xc8]
	movs r0, #0
	str r0, [sp, #0xcc]
	ldr r1, [sp, #0xc8]
	cmp r0, r1
	blt .L0806923A
	bl .L08069C14
.L0806923A:
	ldr r2, [sp, #0xbc]
	ldr r3, .L08069278 @ =0x0000058C
	adds r0, r2, r3
	ldr r0, [r0]
	ldr r4, .L08069280 @ =0x00001BD8
	adds r0, r0, r4
	ldr r1, [sp, #0xcc]
	bl func_0800E548
	str r0, [sp, #0xd0]
	bl func_0800EF68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd4]
	ldr r0, [sp, #0xd0]
	bl func_0800EF6C
	mov sl, r0
	movs r2, #1
	rsbs r2, r2, #0
	ldr r5, [sp, #0xcc]
	cmp r5, #5
	bls .L0806926C
	b .L0806946E
.L0806926C:
	lsls r0, r5, #2
	ldr r1, .L08069284 @ =.L08069288
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08069278: .4byte 0x0000058C
.L0806927C: .4byte 0x00002185
.L08069280: .4byte 0x00001BD8
.L08069284: .4byte .L08069288
.L08069288: @ jump table
	.4byte .L080693A4 @ case 0
	.4byte .L080692A0 @ case 1
	.4byte .L080692FE @ case 2
	.4byte .L080693E8 @ case 3
	.4byte .L08069344 @ case 4
	.4byte .L0806942C @ case 5
.L080692A0:
	mov r7, sl
	cmp r7, #5
	bls .L080692A8
	b .L0806946E
.L080692A8:
	lsls r0, r7, #2
	ldr r1, .L080692B4 @ =.L080692B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080692B4: .4byte .L080692B8
.L080692B8: @ jump table
	.4byte .L080692D0 @ case 0
	.4byte .L080692D8 @ case 1
	.4byte .L080692DE @ case 2
	.4byte .L080692E8 @ case 3
	.4byte .L080692EE @ case 4
	.4byte .L080692F8 @ case 5
.L080692D0:
	ldr r2, .L080692D4 @ =0x00000193
	b .L0806946E
	.align 2, 0
.L080692D4: .4byte 0x00000193
.L080692D8:
	movs r2, #0xca
	lsls r2, r2, #1
	b .L0806946E
.L080692DE:
	ldr r2, .L080692E4 @ =0x00000195
	b .L0806946E
	.align 2, 0
.L080692E4: .4byte 0x00000195
.L080692E8:
	movs r2, #0xcb
	lsls r2, r2, #1
	b .L0806946E
.L080692EE:
	ldr r2, .L080692F4 @ =0x00000197
	b .L0806946E
	.align 2, 0
.L080692F4: .4byte 0x00000197
.L080692F8:
	movs r2, #0xcd
	lsls r2, r2, #1
	b .L0806946E
.L080692FE:
	mov r0, sl
	cmp r0, #5
	bls .L08069306
	b .L0806946E
.L08069306:
	lsls r0, r0, #2
	ldr r1, .L08069310 @ =.L08069314
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08069310: .4byte .L08069314
.L08069314: @ jump table
	.4byte .L0806932C @ case 0
	.4byte .L08069330 @ case 1
	.4byte .L08069334 @ case 2
	.4byte .L08069338 @ case 3
	.4byte .L0806933C @ case 4
	.4byte .L08069340 @ case 5
.L0806932C:
	movs r2, #0xd
	b .L0806946E
.L08069330:
	movs r2, #0xe
	b .L0806946E
.L08069334:
	movs r2, #0xf
	b .L0806946E
.L08069338:
	movs r2, #0x10
	b .L0806946E
.L0806933C:
	movs r2, #0x11
	b .L0806946E
.L08069340:
	movs r2, #0x14
	b .L0806946E
.L08069344:
	mov r1, sl
	cmp r1, #5
	bls .L0806934C
	b .L0806946E
.L0806934C:
	lsls r0, r1, #2
	ldr r1, .L08069358 @ =.L0806935C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08069358: .4byte .L0806935C
.L0806935C: @ jump table
	.4byte .L08069374 @ case 0
	.4byte .L0806937A @ case 1
	.4byte .L08069384 @ case 2
	.4byte .L0806938A @ case 3
	.4byte .L08069394 @ case 4
	.4byte .L0806939A @ case 5
.L08069374:
	movs r2, #0xe7
	lsls r2, r2, #1
	b .L0806946E
.L0806937A:
	ldr r2, .L08069380 @ =0x000001CF
	b .L0806946E
	.align 2, 0
.L08069380: .4byte 0x000001CF
.L08069384:
	movs r2, #0xe8
	lsls r2, r2, #1
	b .L0806946E
.L0806938A:
	ldr r2, .L08069390 @ =0x000001D1
	b .L0806946E
	.align 2, 0
.L08069390: .4byte 0x000001D1
.L08069394:
	movs r2, #0xe9
	lsls r2, r2, #1
	b .L0806946E
.L0806939A:
	ldr r2, .L080693A0 @ =0x000001D5
	b .L0806946E
	.align 2, 0
.L080693A0: .4byte 0x000001D5
.L080693A4:
	mov r3, sl
	cmp r3, #5
	bhi .L0806946E
	lsls r0, r3, #2
	ldr r1, .L080693B4 @ =.L080693B8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080693B4: .4byte .L080693B8
.L080693B8: @ jump table
	.4byte .L080693D0 @ case 0
	.4byte .L080693D4 @ case 1
	.4byte .L080693D8 @ case 2
	.4byte .L080693DC @ case 3
	.4byte .L080693E0 @ case 4
	.4byte .L080693E4 @ case 5
.L080693D0:
	movs r2, #0xea
	b .L0806946E
.L080693D4:
	movs r2, #0xeb
	b .L0806946E
.L080693D8:
	movs r2, #0xec
	b .L0806946E
.L080693DC:
	movs r2, #0xed
	b .L0806946E
.L080693E0:
	movs r2, #0xee
	b .L0806946E
.L080693E4:
	movs r2, #0xf1
	b .L0806946E
.L080693E8:
	mov r4, sl
	cmp r4, #5
	bhi .L0806946E
	lsls r0, r4, #2
	ldr r1, .L080693F8 @ =.L080693FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080693F8: .4byte .L080693FC
.L080693FC: @ jump table
	.4byte .L08069414 @ case 0
	.4byte .L08069418 @ case 1
	.4byte .L0806941C @ case 2
	.4byte .L08069420 @ case 3
	.4byte .L08069424 @ case 4
	.4byte .L08069428 @ case 5
.L08069414:
	movs r2, #0xdf
	b .L0806946E
.L08069418:
	movs r2, #0xe0
	b .L0806946E
.L0806941C:
	movs r2, #0xe1
	b .L0806946E
.L08069420:
	movs r2, #0xe2
	b .L0806946E
.L08069424:
	movs r2, #0xe3
	b .L0806946E
.L08069428:
	movs r2, #0xe6
	b .L0806946E
.L0806942C:
	mov r5, sl
	cmp r5, #5
	bhi .L0806946E
	lsls r0, r5, #2
	ldr r1, .L0806943C @ =.L08069440
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0806943C: .4byte .L08069440
.L08069440: @ jump table
	.4byte .L08069458 @ case 0
	.4byte .L0806945C @ case 1
	.4byte .L08069460 @ case 2
	.4byte .L08069464 @ case 3
	.4byte .L08069468 @ case 4
	.4byte .L0806946C @ case 5
.L08069458:
	movs r2, #0x94
	b .L0806946E
.L0806945C:
	movs r2, #0x95
	b .L0806946E
.L08069460:
	movs r2, #0x96
	b .L0806946E
.L08069464:
	movs r2, #0x97
	b .L0806946E
.L08069468:
	movs r2, #0x98
	b .L0806946E
.L0806946C:
	movs r2, #0x9b
.L0806946E:
	movs r0, #1
	rsbs r0, r0, #0
	ldr r7, [sp, #0xcc]
	adds r7, #1
	str r7, [sp, #0xe8]
	cmp r2, r0
	bne .L0806947E
	b .L080695BC
.L0806947E:
	add r0, sp, #0x18
	mov r8, r0
	ldr r1, [sp, #0xbc]
	ldr r3, .L080694E4 @ =0x000009C4
	adds r4, r1, r3
	ldr r6, [r4]
	add r5, sp, #0xac
	adds r0, r5, #0
	ldr r3, [r6, #0xc]
	adds r1, r4, #0
	bl _call_via_r3
	ldr r0, [r5]
	ldrh r2, [r0]
	mov r0, r8
	ldr r3, [r6, #0x10]
	adds r1, r4, #0
	bl _call_via_r3
	movs r0, #0x10
	str r0, [sp, #0xc]
	add r1, sp, #8
	ldr r4, [sp, #0xc4]
	lsls r0, r4, #3
	strh r0, [r1]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x14]
	ldr r5, [sp, #0xbc]
	ldr r7, .L080694E8 @ =0x00000594
	adds r6, r5, r7
	add r0, sp, #8
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080694EC
	cmp r1, #0
	beq .L080694DA
	adds r0, r1, #0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080694DA:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080695BC
	.align 2, 0
.L080694E4: .4byte 0x000009C4
.L080694E8: .4byte 0x00000594
.L080694EC:
	str r1, [sp, #0xec]
	movs r0, #1
	add r1, sp, #0xb8
	str r0, [r1]
	ldr r3, [r6]
	ldr r5, [sp, #0xec]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0xb4
	str r4, [r0]
	ldr r2, [r1]
	adds r1, r3, #0
	cmp r4, r2
	bhs .L0806950A
	add r0, sp, #0xb8
.L0806950A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0806952A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08069526
	mov r0, r8
	bl func_080D3BC0
.L08069526:
	ldr r1, [r6]
	b .L0806952E
.L0806952A:
	movs r0, #0
	mov r8, r0
.L0806952E:
	adds r5, r0, #0
	str r5, [sp, #0xf0]
	adds r3, r1, #0
	adds r2, r5, #0
	ldr r7, [sp, #0xcc]
	adds r7, #1
	str r7, [sp, #0xe8]
	b .L08069552
.L0806953E:
	cmp r2, #0
	beq .L0806954E
	adds r0, r2, #0
	adds r1, r3, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806954E:
	adds r3, #0x10
	adds r2, #0x10
.L08069552:
	ldr r0, [sp, #0xec]
	cmp r3, r0
	bne .L0806953E
	adds r5, r2, #0
	ldr r1, [sp, #0xb8]
	cmp r1, #1
	bne .L08069574
	cmp r5, #0
	beq .L08069570
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08069570:
	adds r5, #0x10
	b .L08069596
.L08069574:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08069594
.L0806957C:
	cmp r2, #0
	beq .L0806958C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0806958C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0806957C
.L08069594:
	adds r5, r2, #0
.L08069596:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080695A6
.L080695A0:
	adds r0, #0x10
	cmp r0, r2
	bne .L080695A0
.L080695A6:
	cmp r1, #0
	beq .L080695B0
	adds r0, r1, #0
	bl free
.L080695B0:
	ldr r0, [sp, #0xf0]
	add r0, r8
	ldr r7, [sp, #0xf0]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080695BC:
	ldr r0, .L08069628 @ =0x0000FFFF
	ldr r1, [sp, #0xd4]
	cmp r1, r0
	bne .L08069650
	movs r7, #0
	ldr r2, [sp, #0xc4]
	lsls r5, r2, #6
	movs r0, #0xb7
	adds r0, #8
	movs r3, #2
	lsls r4, r3, #0x10
	lsls r0, r0, #0x10
	mov r8, r0
	movs r6, #0xa
.L080695D8:
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, r0, r6
	lsrs r1, r4, #0x10
	str r1, [sp]
	movs r2, #0x20
	mov sb, r2
	str r2, [sp, #4]
	mov r3, r8
	lsrs r1, r3, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r6, #2
	adds r7, #1
	cmp r7, #0xe
	bls .L080695D8
	mov r4, sl
	cmp r4, #3
	bgt .L0806962C
	ldr r0, [sp, #0xd0]
	bl func_0800EF74
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne .L0806962C
	ldr r7, [sp, #0xc0]
	ldr r0, [r7, #0x18]
	adds r0, r0, r5
	adds r0, #0x2a
	movs r1, #0x44
	str r2, [sp]
	mov r2, sb
	str r2, [sp, #4]
	movs r2, #8
	b .L08069A5E
	.align 2, 0
.L08069628: .4byte 0x0000FFFF
.L0806962C:
	ldr r0, [sp, #0xd0]
	bl func_0800EF74
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0806963A
	b .L08069B62
.L0806963A:
	ldr r3, [sp, #0xc0]
	ldr r0, [r3, #0x18]
	adds r0, r0, r5
	adds r0, #0x2a
	movs r1, #0x38
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #6
	b .L08069A5E
.L08069650:
	ldr r0, .L0806973C @ =0x00008C9F
	ldr r4, [sp, #0xd4]
	cmp r4, r0
	bhi .L0806965A
	b .L080697C0
.L0806965A:
	ldr r5, .L08069740 @ =0xFFFF7360
	adds r1, r4, r5
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, .L08069744 @ =0x0000735F
	bl __udivsi3
	adds r4, r0, #0
	movs r7, #0
	lsrs r1, r4, #3
	cmp r7, r1
	bhs .L080696AC
	movs r0, #0xb7
	adds r0, #8
	lsls r0, r0, #0x10
	mov sb, r0
	movs r0, #2
	mov r8, r0
	movs r5, #0xa
	adds r6, r1, #0
.L08069684:
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0xc4]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r5
	mov r3, r8
	str r3, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	mov r2, sb
	lsrs r1, r2, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #2
	adds r7, #1
	cmp r7, r6
	blo .L08069684
.L080696AC:
	cmp r7, #0xe
	bhi .L0806970E
	ldr r3, [sp, #0xc0]
	ldr r0, [r3, #0x18]
	ldr r1, [sp, #0xc4]
	lsls r5, r1, #6
	adds r0, r0, r5
	adds r1, r7, #5
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r1, r4
	adds r1, #0xb7
	movs r2, #2
	lsls r4, r2, #0x10
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r7, #1
	cmp r7, #0xe
	bhi .L0806970E
	lsls r0, r7, #1
	adds r6, r0, #0
	adds r6, #0xa
	movs r3, #0xb7
	lsls r3, r3, #0x10
	mov r8, r3
.L080696EA:
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, r0, r6
	lsrs r1, r4, #0x10
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	mov r2, r8
	lsrs r1, r2, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r6, #2
	adds r7, #1
	cmp r7, #0xe
	bls .L080696EA
.L0806970E:
	mov r3, sl
	cmp r3, #2
	bgt .L08069748
	ldr r0, [sp, #0xd0]
	bl func_0800EF74
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne .L08069748
	ldr r4, [sp, #0xc0]
	ldr r0, [r4, #0x18]
	ldr r5, [sp, #0xc4]
	lsls r1, r5, #6
	adds r0, r0, r1
	adds r0, #0x2a
	movs r1, #0x44
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #8
	b .L08069A5E
	.align 2, 0
.L0806973C: .4byte 0x00008C9F
.L08069740: .4byte 0xFFFF7360
.L08069744: .4byte 0x0000735F
.L08069748:
	ldr r0, [sp, #0xd0]
	bl func_0800EF74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0806976E
	ldr r7, [sp, #0xc0]
	ldr r0, [r7, #0x18]
	ldr r2, [sp, #0xc4]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, #0x2a
	movs r1, #0x38
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #6
	b .L08069A5E
.L0806976E:
	mov r3, sl
	cmp r3, #3
	beq .L08069776
	b .L08069B62
.L08069776:
	ldr r0, [sp, #0xd0]
	bl func_0800EF74
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq .L08069786
	b .L08069B62
.L08069786:
	ldr r5, [sp, #0xc0]
	ldr r4, [r5, #0x18]
	ldr r0, [sp, #0xc4]
	lsls r6, r0, #6
	adds r4, r4, r6
	adds r4, #0x32
	ldr r2, [sp, #0xd4]
	ldr r3, .L080697B8 @ =0xFFFF7360
	adds r1, r2, r3
	movs r0, #0x64
	muls r0, r1, r0
	ldr r1, .L080697BC @ =0x0000735F
	bl __udivsi3
	movs r2, #0x90
	lsls r2, r2, #1
	movs r5, #0x20
	str r5, [sp]
	adds r1, r4, #0
	movs r3, #0
	bl func_0804EDB4
	ldr r4, [sp, #0xc0]
	ldr r0, [r4, #0x18]
	b .L08069A52
	.align 2, 0
.L080697B8: .4byte 0xFFFF7360
.L080697BC: .4byte 0x0000735F
.L080697C0:
	ldr r0, .L080698A0 @ =0x0000464F
	ldr r5, [sp, #0xd4]
	cmp r5, r0
	bhi .L080697CA
	b .L08069900
.L080697CA:
	ldr r7, .L080698A4 @ =0xFFFFB9B0
	adds r0, r5, r7
	movs r1, #0x96
	bl __udivsi3
	adds r4, r0, #0
	movs r7, #0
	lsrs r0, r4, #3
	cmp r7, r0
	bhs .L08069812
	movs r0, #0xae
	adds r0, #8
	lsls r0, r0, #0x10
	mov r8, r0
	movs r6, #2
	movs r5, #0xa
.L080697EA:
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0xc4]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r5
	str r6, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	mov r3, r8
	lsrs r1, r3, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #2
	adds r7, #1
	lsrs r0, r4, #3
	cmp r7, r0
	blo .L080697EA
.L08069812:
	cmp r7, #0xe
	bhi .L08069874
	ldr r5, [sp, #0xc0]
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0xc4]
	lsls r5, r1, #6
	adds r0, r0, r5
	adds r1, r7, #5
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r1, r4
	adds r1, #0xae
	movs r2, #2
	lsls r4, r2, #0x10
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r7, #1
	cmp r7, #0xe
	bhi .L08069874
	lsls r0, r7, #1
	adds r6, r0, #0
	adds r6, #0xa
	movs r3, #0xae
	lsls r3, r3, #0x10
	mov r8, r3
.L08069850:
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, r0, r6
	lsrs r1, r4, #0x10
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	mov r2, r8
	lsrs r1, r2, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r6, #2
	adds r7, #1
	cmp r7, #0xe
	bls .L08069850
.L08069874:
	mov r3, sl
	cmp r3, #1
	bgt .L080698A8
	ldr r0, [sp, #0xd0]
	bl func_0800EF74
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne .L080698A8
	ldr r4, [sp, #0xc0]
	ldr r0, [r4, #0x18]
	ldr r5, [sp, #0xc4]
	lsls r1, r5, #6
	adds r0, r0, r1
	adds r0, #0x2a
	movs r1, #0x44
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #8
	b .L08069A5E
	.align 2, 0
.L080698A0: .4byte 0x0000464F
.L080698A4: .4byte 0xFFFFB9B0
.L080698A8:
	ldr r0, [sp, #0xd0]
	bl func_0800EF74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080698CE
	ldr r7, [sp, #0xc0]
	ldr r0, [r7, #0x18]
	ldr r2, [sp, #0xc4]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, #0x2a
	movs r1, #0x38
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #6
	b .L08069A5E
.L080698CE:
	mov r3, sl
	cmp r3, #2
	beq .L080698D6
	b .L08069B62
.L080698D6:
	ldr r0, [sp, #0xd0]
	bl func_0800EF74
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq .L080698E6
	b .L08069B62
.L080698E6:
	ldr r5, [sp, #0xc0]
	ldr r4, [r5, #0x18]
	ldr r0, [sp, #0xc4]
	lsls r6, r0, #6
	adds r4, r4, r6
	adds r4, #0x32
	ldr r1, [sp, #0xd4]
	ldr r2, .L080698FC @ =0xFFFFB9B0
	adds r0, r1, r2
	movs r1, #0xb4
	b .L08069A3A
	.align 2, 0
.L080698FC: .4byte 0xFFFFB9B0
.L08069900:
	ldr r0, .L080699E0 @ =0x0000176F
	ldr r4, [sp, #0xd4]
	cmp r4, r0
	bhi .L0806990A
	b .L08069A6C
.L0806990A:
	ldr r5, .L080699E4 @ =0xFFFFE890
	adds r0, r4, r5
	movs r1, #0x64
	bl __udivsi3
	adds r4, r0, #0
	movs r7, #0
	lsrs r0, r4, #3
	cmp r7, r0
	bhs .L08069952
	movs r0, #0xa5
	adds r0, #8
	lsls r0, r0, #0x10
	mov r8, r0
	movs r6, #2
	movs r5, #0xa
.L0806992A:
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0xc4]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r5
	str r6, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	mov r3, r8
	lsrs r1, r3, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #2
	adds r7, #1
	lsrs r0, r4, #3
	cmp r7, r0
	blo .L0806992A
.L08069952:
	cmp r7, #0xe
	bhi .L080699B4
	ldr r5, [sp, #0xc0]
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0xc4]
	lsls r5, r1, #6
	adds r0, r0, r5
	adds r1, r7, #5
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r1, r4
	adds r1, #0xa5
	movs r2, #2
	lsls r4, r2, #0x10
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r7, #1
	cmp r7, #0xe
	bhi .L080699B4
	lsls r0, r7, #1
	adds r6, r0, #0
	adds r6, #0xa
	movs r3, #0xa5
	lsls r3, r3, #0x10
	mov r8, r3
.L08069990:
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, r0, r6
	lsrs r1, r4, #0x10
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	mov r2, r8
	lsrs r1, r2, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r6, #2
	adds r7, #1
	cmp r7, #0xe
	bls .L08069990
.L080699B4:
	mov r3, sl
	cmp r3, #0
	bgt .L080699E8
	ldr r0, [sp, #0xd0]
	bl func_0800EF74
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne .L080699E8
	ldr r4, [sp, #0xc0]
	ldr r0, [r4, #0x18]
	ldr r5, [sp, #0xc4]
	lsls r1, r5, #6
	adds r0, r0, r1
	adds r0, #0x2a
	movs r1, #0x44
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #8
	b .L08069A5E
	.align 2, 0
.L080699E0: .4byte 0x0000176F
.L080699E4: .4byte 0xFFFFE890
.L080699E8:
	ldr r0, [sp, #0xd0]
	bl func_0800EF74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08069A0E
	ldr r7, [sp, #0xc0]
	ldr r0, [r7, #0x18]
	ldr r2, [sp, #0xc4]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, #0x2a
	movs r1, #0x38
	movs r2, #0
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #6
	b .L08069A5E
.L08069A0E:
	mov r3, sl
	cmp r3, #1
	beq .L08069A16
	b .L08069B62
.L08069A16:
	ldr r0, [sp, #0xd0]
	bl func_0800EF74
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	beq .L08069A26
	b .L08069B62
.L08069A26:
	ldr r5, [sp, #0xc0]
	ldr r4, [r5, #0x18]
	ldr r0, [sp, #0xc4]
	lsls r6, r0, #6
	adds r4, r4, r6
	adds r4, #0x32
	ldr r1, [sp, #0xd4]
	ldr r2, .L08069A68 @ =0xFFFFE890
	adds r0, r1, r2
	movs r1, #0x78
.L08069A3A:
	bl __udivsi3
	movs r2, #0x90
	lsls r2, r2, #1
	movs r5, #0x20
	str r5, [sp]
	adds r1, r4, #0
	movs r3, #0
	bl func_0804EDB4
	ldr r3, [sp, #0xc0]
	ldr r0, [r3, #0x18]
.L08069A52:
	adds r0, r0, r6
	adds r0, #0x34
	movs r1, #0x54
	str r7, [sp]
	str r5, [sp, #4]
	movs r2, #2
.L08069A5E:
	movs r3, #2
	bl func_0804E9F4
	b .L08069B62
	.align 2, 0
.L08069A68: .4byte 0xFFFFE890
.L08069A6C:
	ldr r0, [sp, #0xd4]
	movs r1, #0x32
	bl __udivsi3
	adds r4, r0, #0
	movs r7, #0
	lsrs r0, r4, #3
	cmp r7, r0
	bhs .L08069AB2
	movs r0, #0x9c
	adds r0, #8
	lsls r0, r0, #0x10
	mov r8, r0
	movs r6, #2
	movs r5, #0xa
.L08069A8A:
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x18]
	ldr r2, [sp, #0xc4]
	lsls r1, r2, #6
	adds r0, r0, r1
	adds r0, r0, r5
	str r6, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	mov r3, r8
	lsrs r1, r3, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r5, #2
	adds r7, #1
	lsrs r0, r4, #3
	cmp r7, r0
	blo .L08069A8A
.L08069AB2:
	cmp r7, #0xe
	bhi .L08069B14
	ldr r5, [sp, #0xc0]
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0xc4]
	lsls r5, r1, #6
	adds r0, r0, r5
	adds r1, r7, #5
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #7
	ands r1, r4
	adds r1, #0x9c
	movs r2, #2
	lsls r4, r2, #0x10
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r7, #1
	cmp r7, #0xe
	bhi .L08069B14
	lsls r0, r7, #1
	adds r6, r0, #0
	adds r6, #0xa
	movs r3, #0x9c
	lsls r3, r3, #0x10
	mov r8, r3
.L08069AF0:
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, r0, r6
	lsrs r1, r4, #0x10
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	mov r2, r8
	lsrs r1, r2, #0x10
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	adds r6, #2
	adds r7, #1
	cmp r7, #0xe
	bls .L08069AF0
.L08069B14:
	mov r3, sl
	cmp r3, #0
	bne .L08069B62
	ldr r0, [sp, #0xd0]
	bl func_0800EF74
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0
	bne .L08069B62
	ldr r5, [sp, #0xc0]
	ldr r4, [r5, #0x18]
	ldr r0, [sp, #0xc4]
	lsls r6, r0, #6
	adds r4, r4, r6
	adds r4, #0x32
	ldr r0, [sp, #0xd4]
	movs r1, #0x3c
	bl __udivsi3
	movs r2, #0x90
	lsls r2, r2, #1
	movs r5, #0x20
	str r5, [sp]
	adds r1, r4, #0
	movs r3, #0
	bl func_0804EDB4
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x18]
	adds r0, r0, r6
	adds r0, #0x34
	movs r1, #0x54
	str r7, [sp]
	str r5, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
.L08069B62:
	ldr r0, .L08069BF0 @ =0x0000176F
	ldr r2, [sp, #0xd4]
	cmp r2, r0
	bls .L08069BE0
	ldr r1, [sp, #0xc4]
	adds r1, #1
	ldr r3, [sp, #0xc0]
	ldr r0, [r3, #0x18]
	lsls r5, r1, #6
	adds r0, r0, r5
	adds r0, #0xa
	movs r1, #0x58
	movs r4, #1
	str r4, [sp]
	movs r6, #0x20
	str r6, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	ldr r0, .L08069BF4 @ =0x0000464F
	ldr r7, [sp, #0xd4]
	cmp r7, r0
	bls .L08069BE0
	ldr r1, [sp, #0xc0]
	ldr r0, [r1, #0x18]
	adds r0, r0, r5
	adds r0, #0xc
	movs r1, #0x59
	str r4, [sp]
	str r6, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	ldr r0, .L08069BF8 @ =0x00008C9F
	cmp r7, r0
	bls .L08069BE0
	ldr r2, [sp, #0xc0]
	ldr r0, [r2, #0x18]
	adds r0, r0, r5
	adds r0, #0xe
	movs r1, #0x5a
	str r4, [sp]
	str r6, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	ldr r0, .L08069BFC @ =0x0000FFFF
	cmp r7, r0
	bne .L08069BE0
	ldr r3, [sp, #0xc0]
	ldr r0, [r3, #0x18]
	adds r0, r0, r5
	adds r0, #0x10
	movs r1, #0x5b
	str r4, [sp]
	str r6, [sp, #4]
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
.L08069BE0:
	ldr r4, [sp, #0xe8]
	ldr r5, [sp, #0xc8]
	cmp r4, r5
	bge .L08069C00
	ldr r7, [sp, #0xc4]
	adds r7, #3
	str r7, [sp, #0xc4]
	b .L08069C06
	.align 2, 0
.L08069BF0: .4byte 0x0000176F
.L08069BF4: .4byte 0x0000464F
.L08069BF8: .4byte 0x00008C9F
.L08069BFC: .4byte 0x0000FFFF
.L08069C00:
	ldr r0, [sp, #0xc4]
	adds r0, #2
	str r0, [sp, #0xc4]
.L08069C06:
	ldr r1, [sp, #0xe8]
	str r1, [sp, #0xcc]
	ldr r2, [sp, #0xc8]
	cmp r1, r2
	bge .L08069C14
	bl .L0806923A
.L08069C14:
	ldr r3, [sp, #0xc4]
	lsls r1, r3, #0x13
	asrs r1, r1, #0x10
	ldr r0, [sp, #0xc0]
	bl func_08075E24
	ldr r0, [sp, #0xbc]
	add sp, #0xf4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08069C34
func_08069C34: @ 0x08069C34
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	cmp r1, #6
	bls .L08069C44
	b .L08069D4C
.L08069C44:
	lsls r0, r1, #2
	ldr r1, .L08069C50 @ =.L08069C54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08069C50: .4byte .L08069C54
.L08069C54: @ jump table
	.4byte .L08069C70 @ case 0
	.4byte .L08069C8C @ case 1
	.4byte .L08069CA8 @ case 2
	.4byte .L08069CC4 @ case 3
	.4byte .L08069CE0 @ case 4
	.4byte .L08069CFC @ case 5
	.4byte .L08069D18 @ case 6
.L08069C70:
	ldr r0, .L08069C88 @ =0x00001B6C
	bl __builtin_new
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r2, [r1]
	adds r1, r4, #0
	bl func_0805FF14
	b .L08069D2C
	.align 2, 0
.L08069C88: .4byte 0x00001B6C
.L08069C8C:
	ldr r0, .L08069CA4 @ =0x0000431C
	bl __builtin_new
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r2, [r1]
	adds r1, r4, #0
	bl func_08064320
	b .L08069D2C
	.align 2, 0
.L08069CA4: .4byte 0x0000431C
.L08069CA8:
	ldr r0, .L08069CC0 @ =0x0000431C
	bl __builtin_new
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r2, [r1]
	adds r1, r4, #0
	bl func_080643DC
	b .L08069D2C
	.align 2, 0
.L08069CC0: .4byte 0x0000431C
.L08069CC4:
	ldr r0, .L08069CDC @ =0x0000431C
	bl __builtin_new
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r2, [r1]
	adds r1, r4, #0
	bl func_080644F0
	b .L08069D2C
	.align 2, 0
.L08069CDC: .4byte 0x0000431C
.L08069CE0:
	ldr r0, .L08069CF8 @ =0x000022B8
	bl __builtin_new
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r2, [r1]
	adds r1, r4, #0
	bl func_080645F0
	b .L08069D2C
	.align 2, 0
.L08069CF8: .4byte 0x000022B8
.L08069CFC:
	ldr r0, .L08069D14 @ =0x000019FC
	bl __builtin_new
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r2, [r1]
	adds r1, r4, #0
	bl func_0806644C
	b .L08069D2C
	.align 2, 0
.L08069D14: .4byte 0x000019FC
.L08069D18:
	ldr r0, .L08069D7C @ =0x000009F4
	bl __builtin_new
	movs r2, #0x90
	lsls r2, r2, #1
	adds r1, r4, r2
	ldr r2, [r1]
	adds r1, r4, #0
	bl func_08068344
.L08069D2C:
	mov r6, sp
	adds r5, r0, #0
	ldr r1, [sp]
	cmp r5, r1
	beq .L08069D4A
	cmp r1, #0
	beq .L08069D4A
	ldr r2, .L08069D80 @ =0x000005B4
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08069D4A:
	str r5, [r6]
.L08069D4C:
	ldr r0, [sp]
	movs r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	add r1, sp, #4
	adds r0, r4, #0
	bl func_08076B94
	ldr r1, [sp]
	cmp r1, #0
	beq .L08069D72
	ldr r2, .L08069D80 @ =0x000005B4
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08069D72:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08069D7C: .4byte 0x000009F4
.L08069D80: .4byte 0x000005B4

	thumb_func_start func_08069D84
func_08069D84: @ 0x08069D84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x92
	lsls r0, r0, #1
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0xb0
	lsls r1, r1, #1
	adds r5, r6, r1
	ldr r4, [r5]
	lsls r4, r4, #3
	adds r4, #4
	add r4, r8
	adds r0, r6, #0
	bl func_08076BEC
	strh r0, [r4, #4]
	adds r0, r6, #0
	bl func_08076B64
	cmp r7, #0
	beq .L08069DBC
	cmp r7, #1
	beq .L08069DCE
	b .L08069DDC
.L08069DBC:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	mov r2, r8
	ldr r1, [r2]
	cmp r0, r1
	bne .L08069DDC
	str r7, [r5]
	b .L08069DDC
.L08069DCE:
	ldr r0, [r5]
	cmp r0, #0
	bne .L08069DD8
	mov r1, r8
	ldr r0, [r1]
.L08069DD8:
	subs r0, #1
	str r0, [r5]
.L08069DDC:
	movs r2, #0x92
	lsls r2, r2, #1
	adds r4, r6, r2
	movs r0, #0xb0
	lsls r0, r0, #1
	adds r5, r6, r0
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, #4
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, #0
	bl func_08069C34
	ldr r0, [r5]
	lsls r0, r0, #3
	adds r0, #4
	adds r4, r4, r0
	movs r2, #4
	ldrsh r1, [r4, r2]
	adds r0, r6, #0
	bl func_08076BE0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
