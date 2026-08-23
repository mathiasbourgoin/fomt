	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED
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
