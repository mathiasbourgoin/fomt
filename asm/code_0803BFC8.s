    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_0803D688
func_0803D688: @ 0x0803D688
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r4, r1, #0
	adds r0, r2, #0
	ldr r1, [r4]
	bl _call_via_r1
	mov sl, r0
	movs r0, #0
	mov ip, r0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L0803D6C8
	mov r2, sl
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L0803D6C8
	ldrh r0, [r1]
	cmp r0, #0
	beq .L0803D6C8
	ldr r0, [r1, #4]
	cmp r0, #0
	beq .L0803D6C8
	ldr r0, [r0, #4]
	mov ip, r0
.L0803D6C8:
	mov r0, ip
	cmp r0, #0
	beq .L0803D750
	ldrh r2, [r0, #0xa]
	lsls r2, r2, #0x16
	movs r1, #6
	ldrsh r6, [r0, r1]
	movs r1, #8
	ldrsh r0, [r0, r1]
	mov r8, r0
	add r1, sp, #8
	lsrs r2, r2, #0x16
	ldrh r3, [r1]
	ldr r4, .L0803D74C @ =0xFFFFFC00
	adds r0, r4, #0
	ands r0, r3
	orrs r0, r2
	strh r0, [r1]
	lsls r6, r6, #0x10
	lsrs r2, r6, #0x10
	movs r0, #0x3f
	mov sb, r0
	ands r2, r0
	lsls r2, r2, #2
	ldrb r5, [r1, #1]
	movs r3, #3
	adds r0, r3, #0
	ands r0, r5
	orrs r0, r2
	strb r0, [r1, #1]
	lsrs r6, r6, #0x16
	ldrh r2, [r1, #2]
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r6
	strh r0, [r1, #2]
	mov r2, r8
	lsls r2, r2, #0x10
	mov r8, r2
	lsrs r0, r2, #0x10
	mov r2, sb
	ands r0, r2
	lsls r0, r0, #2
	ldrb r2, [r1, #3]
	ands r3, r2
	orrs r3, r0
	strb r3, [r1, #3]
	mov r0, r8
	lsrs r0, r0, #0x16
	mov r8, r0
	ldrh r0, [r1, #4]
	ands r4, r0
	mov r2, r8
	orrs r4, r2
	strh r4, [r1, #4]
	mov r0, ip
	ldrb r4, [r0, #0xb]
	lsls r4, r4, #0x1c
	lsrs r4, r4, #0x1e
	mov r5, sp
	mov r0, sp
	movs r2, #6
	bl memcpy
	strb r4, [r5, #6]
	b .L0803D78E
	.align 2, 0
.L0803D74C: .4byte 0xFFFFFC00
.L0803D750:
	add r1, sp, #0x10
	movs r4, #0x8d
	lsls r4, r4, #2
	ldrh r2, [r1]
	ldr r3, .L0803D7D8 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r5, #0
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
	mov r4, sp
	mov r0, sp
	movs r2, #6
	bl memcpy
	strb r5, [r4, #6]
.L0803D78E:
	adds r0, r7, #0
	mov r1, sp
	bl SetLocation__3NpcRC13ActorLocation
	movs r0, #0x1f
	mov r1, sl
	ands r1, r0
	mov sl, r1
	ldrb r1, [r7, #0xc]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	mov r2, sl
	orrs r0, r2
	strb r0, [r7, #0xc]
	ldrh r1, [r7, #0xc]
	ldr r0, .L0803D7DC @ =0xFFFFFC1F
	ands r0, r1
	strh r0, [r7, #0xc]
	ldrb r1, [r7, #0xd]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #0xd]
	ldr r0, [r7, #0xc]
	ldr r1, .L0803D7E0 @ =0xFE007FFF
	ands r0, r1
	str r0, [r7, #0xc]
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0803D7D8: .4byte 0xFFFFFC00
.L0803D7DC: .4byte 0xFFFFFC1F
.L0803D7E0: .4byte 0xFE007FFF

	thumb_func_start func_0803D7E4
func_0803D7E4: @ 0x0803D7E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x70
	ldr r1, .L0803D9A4 @ =gUnk_080F280C
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	adds r0, #0x84
	ldr r1, .L0803D9A8 @ =ScheduleInfo_Unk_080F1A80
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	adds r0, #0x98
	ldr r1, .L0803D9AC @ =gUnk_080F1FC0
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, .L0803D9B0 @ =gUnk_080F8678
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r1, .L0803D9B4 @ =gUnk_080F81BC
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	adds r0, #0xd8
	ldr r1, .L0803D9B8 @ =gUnk_080F77FC
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r1, .L0803D9BC @ =gUnk_080F7294
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9C0 @ =gUnk_080F6370
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9C4 @ =gUnk_080F66C4
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9C8 @ =gUnk_080F49C0
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9CC @ =gUnk_080F5540
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9D0 @ =gUnk_080F4D74
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9D4 @ =gUnk_080F59CC
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9D8 @ =gUnk_080F6B4C
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xca
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9DC @ =gUnk_080F33B8
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9E0 @ =gUnk_080F61FC
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9E4 @ =gUnk_080F3408
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9E8 @ =gUnk_080F3FD8
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9EC @ =gUnk_080F35E4
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r1, .L0803D9F0 @ =gUnk_080F3010
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, .L0803D9F4 @ =gUnk_080F5D94
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, .L0803D9F8 @ =gUnk_080F6DE8
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, .L0803D9FC @ =gUnk_080F2AF8
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, .L0803DA00 @ =gUnk_080F42F0
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, .L0803DA04 @ =gUnk_080F43DC
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, .L0803DA08 @ =gUnk_080F6FF8
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xa4
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, .L0803DA0C @ =gUnk_080F7B40
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, .L0803DA10 @ =gUnk_080F2DC0
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, .L0803DA14 @ =gUnk_080F597C
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xc4
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, .L0803DA18 @ =gUnk_080F6B10
	adds r2, r5, #0
	bl func_0803D688
	movs r1, #0xca
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r1, .L0803DA1C @ =gUnk_080F4974
	adds r2, r5, #0
	bl func_0803D688
	adds r0, r4, #0
	bl func_080A0A04
	cmp r0, #0
	beq .L0803D99E
	ldr r1, .L0803DA20 @ =gUnk_080F29C0
	adds r2, r5, #0
	bl func_0803D688
.L0803D99E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L0803D9A4: .4byte gUnk_080F280C
.L0803D9A8: .4byte ScheduleInfo_Unk_080F1A80
.L0803D9AC: .4byte gUnk_080F1FC0
.L0803D9B0: .4byte gUnk_080F8678
.L0803D9B4: .4byte gUnk_080F81BC
.L0803D9B8: .4byte gUnk_080F77FC
.L0803D9BC: .4byte gUnk_080F7294
.L0803D9C0: .4byte gUnk_080F6370
.L0803D9C4: .4byte gUnk_080F66C4
.L0803D9C8: .4byte gUnk_080F49C0
.L0803D9CC: .4byte gUnk_080F5540
.L0803D9D0: .4byte gUnk_080F4D74
.L0803D9D4: .4byte gUnk_080F59CC
.L0803D9D8: .4byte gUnk_080F6B4C
.L0803D9DC: .4byte gUnk_080F33B8
.L0803D9E0: .4byte gUnk_080F61FC
.L0803D9E4: .4byte gUnk_080F3408
.L0803D9E8: .4byte gUnk_080F3FD8
.L0803D9EC: .4byte gUnk_080F35E4
.L0803D9F0: .4byte gUnk_080F3010
.L0803D9F4: .4byte gUnk_080F5D94
.L0803D9F8: .4byte gUnk_080F6DE8
.L0803D9FC: .4byte gUnk_080F2AF8
.L0803DA00: .4byte gUnk_080F42F0
.L0803DA04: .4byte gUnk_080F43DC
.L0803DA08: .4byte gUnk_080F6FF8
.L0803DA0C: .4byte gUnk_080F7B40
.L0803DA10: .4byte gUnk_080F2DC0
.L0803DA14: .4byte gUnk_080F597C
.L0803DA18: .4byte gUnk_080F6B10
.L0803DA1C: .4byte gUnk_080F4974
.L0803DA20: .4byte gUnk_080F29C0

	thumb_func_start func_0803DA24
func_0803DA24: @ 0x0803DA24
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803DA3C @ =0x000021CA
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq .L0803DA40
	movs r0, #0
	b .L0803DA74
	.align 2, 0
.L0803DA3C: .4byte 0x000021CA
.L0803DA40:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803DA60
	movs r0, #4
	b .L0803DA74
.L0803DA60:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803DA72
	cmp r4, #2
	bne .L0803DA6E
	movs r0, #3
	b .L0803DA74
.L0803DA6E:
	movs r0, #1
	b .L0803DA74
.L0803DA72:
	movs r0, #2
.L0803DA74:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803DA7C
func_0803DA7C: @ 0x0803DA7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803DAC8 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge .L0803DA96
	b .L0803DC22
.L0803DA96:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r7, [r4, #1]
	ldrb r0, [r4, #2]
	mov r8, r0
	ldrb r4, [r4, #3]
	mov sb, r4
	ldr r1, .L0803DACC @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0490
	adds r4, r0, #0
	cmp r4, #3
	bne .L0803DB6A
	cmp r7, #2
	bne .L0803DAD0
	mov r0, r8
	cmp r0, #0xd
	bne .L0803DAD0
	movs r0, #0x16
	b .L0803DC54
	.align 2, 0
.L0803DAC8: .4byte 0x000021CA
.L0803DACC: .4byte 0x00001CD4
.L0803DAD0:
	ldr r1, .L0803DAE4 @ =0x0000216B
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L0803DAE8
	movs r0, #0x17
	b .L0803DC54
	.align 2, 0
.L0803DAE4: .4byte 0x0000216B
.L0803DAE8:
	ldr r1, .L0803DB20 @ =0x00002148
	adds r0, r5, r1
	ldrb r6, [r0]
	ldr r1, .L0803DB24 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0384
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	adds r0, r7, #0
	mov r1, r8
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803DB14
	ldr r0, [r5, #8]
	cmp r0, #3
	beq .L0803DB14
	cmp r0, #4
	bne .L0803DB38
.L0803DB14:
	cmp r4, #0
	beq .L0803DB2C
	cmp r6, #0
	beq .L0803DB28
	movs r0, #0xd
	b .L0803DC54
	.align 2, 0
.L0803DB20: .4byte 0x00002148
.L0803DB24: .4byte 0x00001CD4
.L0803DB28:
	movs r0, #0xc
	b .L0803DC54
.L0803DB2C:
	cmp r6, #0
	beq .L0803DB34
	movs r0, #0xf
	b .L0803DC54
.L0803DB34:
	movs r0, #0xe
	b .L0803DC54
.L0803DB38:
	cmp r6, #0
	beq .L0803DB4E
	mov r0, sb
	cmp r0, #0
	bne .L0803DB4E
	cmp r4, #0
	beq .L0803DB4A
	movs r0, #8
	b .L0803DC54
.L0803DB4A:
	movs r0, #0xb
	b .L0803DC54
.L0803DB4E:
	cmp r4, #0
	beq .L0803DB5E
	cmp r6, #0
	beq .L0803DB5A
	movs r0, #7
	b .L0803DC54
.L0803DB5A:
	movs r0, #6
	b .L0803DC54
.L0803DB5E:
	cmp r6, #0
	beq .L0803DB66
	movs r0, #0xa
	b .L0803DC54
.L0803DB66:
	movs r0, #9
	b .L0803DC54
.L0803DB6A:
	ldr r1, .L0803DB8C @ =0x00001D6C
	adds r0, r5, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bls .L0803DB9E
	cmp r7, #1
	bne .L0803DC22
	movs r0, #1
	mov r1, r8
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803DB90
	movs r0, #0x13
	b .L0803DC54
	.align 2, 0
.L0803DB8C: .4byte 0x00001D6C
.L0803DB90:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803DB9A
	movs r0, #0x14
	b .L0803DC54
.L0803DB9A:
	movs r0, #0x15
	b .L0803DC54
.L0803DB9E:
	cmp r7, #2
	bne .L0803DBC0
	mov r0, r8
	cmp r0, #0x1e
	bne .L0803DBC0
	ldr r1, .L0803DBBC @ =0x000021A3
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L0803DBC0
	movs r0, #0x11
	b .L0803DC54
	.align 2, 0
.L0803DBBC: .4byte 0x000021A3
.L0803DBC0:
	ldr r1, .L0803DBF8 @ =0x00001CD4
	adds r0, r5, r1
	movs r1, #3
	bl func_080A01F8
	cmp r7, #3
	bne .L0803DC04
	mov r1, r8
	cmp r1, #0xe
	bne .L0803DC04
	cmp r4, #0
	bne .L0803DC04
	cmp r0, #0
	beq .L0803DC04
	bl GetLove__C12Bachelorette
	ldr r1, .L0803DBFC @ =0x0000270F
	cmp r0, r1
	bls .L0803DC04
	ldr r1, .L0803DC00 @ =0x000021A3
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L0803DC04
	movs r0, #0x12
	b .L0803DC54
	.align 2, 0
.L0803DBF8: .4byte 0x00001CD4
.L0803DBFC: .4byte 0x0000270F
.L0803DC00: .4byte 0x000021A3
.L0803DC04:
	adds r0, r7, #0
	mov r1, r8
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803DC16
	movs r0, #0x10
	b .L0803DC54
.L0803DC16:
	ldr r1, .L0803DC28 @ =0x0000215A
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge .L0803DC2C
.L0803DC22:
	movs r0, #0
	b .L0803DC54
	.align 2, 0
.L0803DC28: .4byte 0x0000215A
.L0803DC2C:
	mov r0, sb
	cmp r0, #0
	bne .L0803DC48
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803DC44
	cmp r7, #1
	bne .L0803DC40
	movs r0, #5
	b .L0803DC54
.L0803DC40:
	movs r0, #3
	b .L0803DC54
.L0803DC44:
	movs r0, #4
	b .L0803DC54
.L0803DC48:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L0803DC52
	movs r0, #2
	b .L0803DC54
.L0803DC52:
	movs r0, #1
.L0803DC54:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803DC64
func_0803DC64: @ 0x0803DC64
	push {r4, lr}
	sub sp, #4
	adds r2, r0, #0
	ldr r1, .L0803DC7C @ =0x000021CA
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq .L0803DC80
	movs r0, #0
	b .L0803DCAA
	.align 2, 0
.L0803DC7C: .4byte 0x000021CA
.L0803DC80:
	mov r4, sp
	adds r1, r2, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803DCA0
	movs r0, #3
	b .L0803DCAA
.L0803DCA0:
	cmp r4, #0
	beq .L0803DCA8
	movs r0, #1
	b .L0803DCAA
.L0803DCA8:
	movs r0, #2
.L0803DCAA:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L0803DCB4:
	.byte 0x70, 0xB5, 0x81, 0xB0, 0x05, 0x1C, 0x0A, 0x48, 0x2C, 0x18, 0x20, 0x1C
	.byte 0x62, 0xF0, 0x60, 0xFB, 0x00, 0x28, 0x00, 0xD1, 0x89, 0xE0, 0x60, 0xF0, 0x05, 0xFF, 0x3B, 0x28
	.byte 0x00, 0xD9, 0x82, 0xE0, 0x20, 0x1C, 0x62, 0xF0, 0xDB, 0xFB, 0x06, 0x1C, 0x1F, 0x2E, 0x03, 0xD1
	.byte 0x03, 0x20, 0x7D, 0xE0, 0xD4, 0x1C, 0x00, 0x00, 0x6C, 0x46, 0x29, 0x1C, 0x10, 0x31, 0x68, 0x46
	.byte 0xFF, 0xF7, 0x1C, 0xFC, 0x60, 0x78, 0xA1, 0x78, 0xE4, 0x78, 0x02, 0x28, 0x03, 0xD1, 0x0D, 0x29
	.byte 0x01, 0xD1, 0x05, 0x20, 0x6C, 0xE0, 0xFF, 0xF7, 0x9D, 0xFC, 0x00, 0x06, 0x00, 0x28, 0x4F, 0xD1
	.byte 0xA8, 0x68, 0x03, 0x28, 0x4C, 0xD0, 0x04, 0x28, 0x4A, 0xD0, 0x05, 0x49, 0x68, 0x18, 0x02, 0x78
	.byte 0xF0, 0x1E, 0x1C, 0x28, 0x57, 0xD8, 0x80, 0x00, 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46
	.byte 0x48, 0x21, 0x00, 0x00, 0x38, 0xDD, 0x03, 0x08, 0xB4, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08
	.byte 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08
	.byte 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xAC, 0xDD, 0x03, 0x08
	.byte 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08
	.byte 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xBE, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08
	.byte 0xCC, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08
	.byte 0xD2, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08
	.byte 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0xD6, 0xDD, 0x03, 0x08, 0x01, 0x2C, 0x12, 0xD1
	.byte 0x02, 0x20, 0x15, 0xE0, 0x00, 0x2A, 0xFB, 0xD0, 0x00, 0x2C, 0x0C, 0xD1, 0xF8, 0xE7, 0x00, 0x2A
	.byte 0xF6, 0xD0, 0x02, 0x2C, 0xF4, 0xD0, 0x00, 0x2C, 0x05, 0xD1, 0xF1, 0xE7, 0x03, 0x2C, 0x02, 0xD1
	.byte 0xEE, 0xE7, 0x00, 0x2A, 0xEC, 0xD0, 0x01, 0x20, 0x02, 0xE0, 0x04, 0x20, 0x00, 0xE0, 0x00, 0x20
	.byte 0x01, 0xB0, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start func_0803DDE8
func_0803DDE8: @ 0x0803DDE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803DE48 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	blt .L0803DE42
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	mov r0, sp
	ldrb r6, [r0]
	ldrb r7, [r4, #1]
	ldrb r0, [r4, #2]
	mov r8, r0
	ldrb r4, [r4, #3]
	ldr r1, .L0803DE4C @ =0x00002181
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L0803DE42
	subs r1, #0xc
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	blt .L0803DE50
	cmp r6, #1
	bhi .L0803DE42
	cmp r6, #1
	bne .L0803DE50
	cmp r7, #3
	bne .L0803DE50
	mov r0, r8
	cmp r0, #0x1c
	bls .L0803DE50
.L0803DE42:
	movs r0, #0
	b .L0803DEBE
	.align 2, 0
.L0803DE48: .4byte 0x000021CA
.L0803DE4C: .4byte 0x00002181
.L0803DE50:
	ldr r1, .L0803DE64 @ =0x00002181
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L0803DE68
	movs r0, #5
	b .L0803DEBE
	.align 2, 0
.L0803DE64: .4byte 0x00002181
.L0803DE68:
	adds r0, r7, #0
	mov r1, r8
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803DE7A
	movs r0, #4
	b .L0803DEBE
.L0803DE7A:
	cmp r6, #1
	bne .L0803DE9C
	cmp r7, #2
	bne .L0803DE9C
	mov r0, r8
	cmp r0, #0xf
	bne .L0803DE9C
	ldr r1, .L0803DE98 @ =0x00002175
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge .L0803DE9C
.L0803DE94:
	movs r0, #2
	b .L0803DEBE
	.align 2, 0
.L0803DE98: .4byte 0x00002175
.L0803DE9C:
	ldr r1, .L0803DEB8 @ =0x00002174
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #0xc2
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x82
	lsls r1, r1, #0xb
	cmp r0, r1
	bne .L0803DEBC
	cmp r4, #6
	bne .L0803DE94
	movs r0, #3
	b .L0803DEBE
	.align 2, 0
.L0803DEB8: .4byte 0x00002174
.L0803DEBC:
	movs r0, #1
.L0803DEBE:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803DECC
func_0803DECC: @ 0x0803DECC
	push {r4, lr}
	sub sp, #4
	adds r1, r0, #0
	mov r4, sp
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803DEEE
	movs r0, #1
	b .L0803DEF0
.L0803DEEE:
	movs r0, #2
.L0803DEF0:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0803DEF8
func_0803DEF8: @ 0x0803DEF8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803DF10 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge .L0803DF14
	movs r0, #0
	b .L0803DF48
	.align 2, 0
.L0803DF10: .4byte 0x000021CA
.L0803DF14:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803DF34
	movs r0, #4
	b .L0803DF48
.L0803DF34:
	cmp r4, #3
	bne .L0803DF46
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803DF42
	movs r0, #2
	b .L0803DF48
.L0803DF42:
	movs r0, #3
	b .L0803DF48
.L0803DF46:
	movs r0, #1
.L0803DF48:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803DF50
func_0803DF50: @ 0x0803DF50
	push {r4, lr}
	sub sp, #4
	adds r1, r0, #0
	ldr r2, .L0803DF68 @ =0x000021CA
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge .L0803DF6C
	movs r0, #0
	b .L0803DF8A
	.align 2, 0
.L0803DF68: .4byte 0x000021CA
.L0803DF6C:
	mov r4, sp
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803DF88
	movs r0, #1
	b .L0803DF8A
.L0803DF88:
	movs r0, #2
.L0803DF8A:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803DF94
func_0803DF94: @ 0x0803DF94
	push {r4, lr}
	sub sp, #4
	adds r1, r0, #0
	ldr r2, .L0803DFAC @ =0x000021CA
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge .L0803DFB0
	movs r0, #0
	b .L0803DFE0
	.align 2, 0
.L0803DFAC: .4byte 0x000021CA
.L0803DFB0:
	mov r4, sp
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803DFCE
	movs r0, #4
	b .L0803DFE0
.L0803DFCE:
	cmp r4, #2
	bne .L0803DFD6
	movs r0, #2
	b .L0803DFE0
.L0803DFD6:
	cmp r4, #0
	beq .L0803DFDE
	movs r0, #1
	b .L0803DFE0
.L0803DFDE:
	movs r0, #3
.L0803DFE0:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0803DFE8
func_0803DFE8: @ 0x0803DFE8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803E008 @ =0x000021CA
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq .L0803E00C
	movs r0, #0
	b .L0803E194
	.align 2, 0
.L0803E008: .4byte 0x000021CA
.L0803E00C:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	mov r8, r0
	ldrb r7, [r4, #2]
	ldrb r4, [r4, #3]
	mov sb, r4
	ldr r1, .L0803E040 @ =0x00001CD4
	adds r4, r5, r1
	adds r0, r4, #0
	bl func_080A0490
	adds r6, r0, #0
	cmp r6, #0x13
	bne .L0803E0EA
	mov r0, r8
	cmp r0, #2
	bne .L0803E04C
	cmp r7, #9
	bne .L0803E044
	movs r0, #0x15
	b .L0803E194
	.align 2, 0
.L0803E040: .4byte 0x00001CD4
.L0803E044:
	cmp r7, #0xd
	bne .L0803E04C
	movs r0, #0x16
	b .L0803E194
.L0803E04C:
	ldr r1, .L0803E060 @ =0x0000216C
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L0803E064
	movs r0, #0x17
	b .L0803E194
	.align 2, 0
.L0803E060: .4byte 0x0000216C
.L0803E064:
	ldr r1, .L0803E09C @ =0x00002148
	adds r0, r5, r1
	ldrb r6, [r0]
	ldr r1, .L0803E0A0 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0384
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	mov r0, r8
	adds r1, r7, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803E090
	ldr r0, [r5, #8]
	cmp r0, #3
	beq .L0803E090
	cmp r0, #4
	bne .L0803E0B4
.L0803E090:
	cmp r4, #0
	beq .L0803E0A8
	cmp r6, #0
	beq .L0803E0A4
	movs r0, #0x12
	b .L0803E194
	.align 2, 0
.L0803E09C: .4byte 0x00002148
.L0803E0A0: .4byte 0x00001CD4
.L0803E0A4:
	movs r0, #0x11
	b .L0803E194
.L0803E0A8:
	cmp r6, #0
	beq .L0803E0B0
	movs r0, #0x14
	b .L0803E194
.L0803E0B0:
	movs r0, #0x13
	b .L0803E194
.L0803E0B4:
	cmp r6, #0
	beq .L0803E0CE
	mov r0, sb
	cmp r0, #0
	beq .L0803E0C2
	cmp r0, #2
	bne .L0803E0CE
.L0803E0C2:
	cmp r4, #0
	beq .L0803E0CA
	movs r0, #0xd
	b .L0803E194
.L0803E0CA:
	movs r0, #0x10
	b .L0803E194
.L0803E0CE:
	cmp r4, #0
	beq .L0803E0DE
	cmp r6, #0
	beq .L0803E0DA
	movs r0, #0xc
	b .L0803E194
.L0803E0DA:
	movs r0, #0xb
	b .L0803E194
.L0803E0DE:
	cmp r6, #0
	beq .L0803E0E6
	movs r0, #0xf
	b .L0803E194
.L0803E0E6:
	movs r0, #0xe
	b .L0803E194
.L0803E0EA:
	ldr r1, .L0803E108 @ =0x00001EB8
	adds r0, r5, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bls .L0803E11A
	mov r0, r8
	adds r1, r7, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E10C
	movs r0, #0xa
	b .L0803E194
	.align 2, 0
.L0803E108: .4byte 0x00001EB8
.L0803E10C:
	mov r0, sb
	cmp r0, #0
	bne .L0803E116
	movs r0, #7
	b .L0803E194
.L0803E116:
	movs r0, #6
	b .L0803E194
.L0803E11A:
	adds r0, r4, #0
	movs r1, #0x13
	bl func_080A01F8
	mov r1, r8
	cmp r1, #3
	bne .L0803E158
	cmp r7, #0xe
	bne .L0803E158
	cmp r6, #0
	bne .L0803E158
	cmp r0, #0
	beq .L0803E158
	bl GetLove__C12Bachelorette
	ldr r1, .L0803E150 @ =0x0000270F
	cmp r0, r1
	bls .L0803E158
	ldr r1, .L0803E154 @ =0x000021A4
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L0803E158
	movs r0, #9
	b .L0803E194
	.align 2, 0
.L0803E150: .4byte 0x0000270F
.L0803E154: .4byte 0x000021A4
.L0803E158:
	mov r0, r8
	adds r1, r7, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E16A
	movs r0, #8
	b .L0803E194
.L0803E16A:
	mov r0, sb
	cmp r0, #0
	bne .L0803E174
	movs r0, #3
	b .L0803E194
.L0803E174:
	mov r1, sb
	cmp r1, #2
	bne .L0803E188
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803E184
	movs r0, #4
	b .L0803E194
.L0803E184:
	movs r0, #5
	b .L0803E194
.L0803E188:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L0803E192
	movs r0, #2
	b .L0803E194
.L0803E192:
	movs r0, #1
.L0803E194:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E1A4
func_0803E1A4: @ 0x0803E1A4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803E1BC @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge .L0803E1C0
	movs r0, #0
	b .L0803E1F4
	.align 2, 0
.L0803E1BC: .4byte 0x000021CA
.L0803E1C0:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E1E0
	movs r0, #4
	b .L0803E1F4
.L0803E1E0:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803E1F2
	cmp r4, #2
	bne .L0803E1EE
	movs r0, #3
	b .L0803E1F4
.L0803E1EE:
	movs r0, #1
	b .L0803E1F4
.L0803E1F2:
	movs r0, #2
.L0803E1F4:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803E1FC
func_0803E1FC: @ 0x0803E1FC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803E214 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge .L0803E218
	movs r0, #0
	b .L0803E25A
	.align 2, 0
.L0803E214: .4byte 0x000021CA
.L0803E218:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r6, [r4, #1]
	ldrb r4, [r4, #2]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E23A
	movs r0, #2
	b .L0803E25A
.L0803E23A:
	ldr r1, .L0803E254 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0490
	cmp r6, #2
	bne .L0803E258
	cmp r4, #5
	bne .L0803E258
	cmp r0, #0x19
	beq .L0803E258
	movs r0, #3
	b .L0803E25A
	.align 2, 0
.L0803E254: .4byte 0x00001CD4
.L0803E258:
	movs r0, #1
.L0803E25A:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E264
func_0803E264: @ 0x0803E264
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803E280 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge .L0803E284
	movs r0, #0
	b .L0803E3FE
	.align 2, 0
.L0803E280: .4byte 0x000021CA
.L0803E284:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	mov r8, r0
	ldrb r6, [r4, #2]
	ldr r1, .L0803E2B4 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0490
	adds r4, r0, #0
	mov r0, r8
	cmp r0, #2
	bne .L0803E2B8
	cmp r6, #5
	bne .L0803E2B8
	cmp r4, #0x19
	beq .L0803E2BC
	movs r0, #5
	b .L0803E3FE
	.align 2, 0
.L0803E2B4: .4byte 0x00001CD4
.L0803E2B8:
	cmp r4, #0x19
	bne .L0803E364
.L0803E2BC:
	mov r1, r8
	cmp r1, #2
	bne .L0803E2D2
	cmp r6, #9
	bne .L0803E2CA
	movs r0, #0x10
	b .L0803E3FE
.L0803E2CA:
	cmp r6, #0xd
	bne .L0803E2D2
	movs r0, #0x11
	b .L0803E3FE
.L0803E2D2:
	ldr r1, .L0803E2F0 @ =0x0000216B
	adds r0, r5, r1
	ldrb r2, [r0]
	lsrs r2, r2, #7
	adds r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	orrs r0, r2
	cmp r0, #1
	bne .L0803E2F4
	movs r0, #0x12
	b .L0803E3FE
	.align 2, 0
.L0803E2F0: .4byte 0x0000216B
.L0803E2F4:
	ldr r1, .L0803E330 @ =0x00002148
	adds r0, r5, r1
	ldrb r4, [r0]
	ldr r1, .L0803E334 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0384
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r7, r1, #0x1f
	mov sb, r7
	mov r0, r8
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803E322
	ldr r0, [r5, #8]
	cmp r0, #3
	beq .L0803E322
	cmp r0, #4
	bne .L0803E348
.L0803E322:
	mov r0, sb
	cmp r0, #0
	beq .L0803E33C
	cmp r4, #0
	beq .L0803E338
	movs r0, #0xd
	b .L0803E3FE
	.align 2, 0
.L0803E330: .4byte 0x00002148
.L0803E334: .4byte 0x00001CD4
.L0803E338:
	movs r0, #0xc
	b .L0803E3FE
.L0803E33C:
	cmp r4, #0
	beq .L0803E344
	movs r0, #0xf
	b .L0803E3FE
.L0803E344:
	movs r0, #0xe
	b .L0803E3FE
.L0803E348:
	cmp r7, #0
	beq .L0803E358
	cmp r4, #0
	beq .L0803E354
	movs r0, #9
	b .L0803E3FE
.L0803E354:
	movs r0, #8
	b .L0803E3FE
.L0803E358:
	cmp r4, #0
	beq .L0803E360
	movs r0, #0xb
	b .L0803E3FE
.L0803E360:
	movs r0, #0xa
	b .L0803E3FE
.L0803E364:
	ldr r1, .L0803E388 @ =0x00001F38
	adds r0, r5, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bls .L0803E390
	mov r0, r8
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803E3EE
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803E38C
	movs r0, #3
	b .L0803E3FE
	.align 2, 0
.L0803E388: .4byte 0x00001F38
.L0803E38C:
	movs r0, #4
	b .L0803E3FE
.L0803E390:
	ldr r1, .L0803E3D4 @ =0x00001CD4
	adds r0, r5, r1
	movs r1, #0x19
	bl func_080A01F8
	mov r1, r8
	cmp r1, #3
	bne .L0803E3E0
	cmp r6, #0xe
	bne .L0803E3E0
	cmp r4, #0
	bne .L0803E3E0
	cmp r0, #0
	beq .L0803E3E0
	bl GetLove__C12Bachelorette
	ldr r1, .L0803E3D8 @ =0x0000270F
	cmp r0, r1
	bls .L0803E3E0
	ldr r1, .L0803E3DC @ =0x000021A3
	adds r0, r5, r1
	ldrb r2, [r0]
	lsrs r2, r2, #7
	adds r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	orrs r0, r2
	cmp r0, #2
	beq .L0803E3E0
	movs r0, #7
	b .L0803E3FE
	.align 2, 0
.L0803E3D4: .4byte 0x00001CD4
.L0803E3D8: .4byte 0x0000270F
.L0803E3DC: .4byte 0x000021A3
.L0803E3E0:
	mov r0, r8
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E3F2
.L0803E3EE:
	movs r0, #6
	b .L0803E3FE
.L0803E3F2:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L0803E3FC
	movs r0, #2
	b .L0803E3FE
.L0803E3FC:
	movs r0, #1
.L0803E3FE:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0803E40C
func_0803E40C: @ 0x0803E40C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r5, sp
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r1, [r5, #3]
	ldr r0, .L0803E438 @ =0x00002187
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne .L0803E43C
	cmp r1, #0
	bne .L0803E43C
	movs r0, #1
	b .L0803E43E
	.align 2, 0
.L0803E438: .4byte 0x00002187
.L0803E43C:
	movs r0, #0
.L0803E43E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E448
func_0803E448: @ 0x0803E448
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803E460 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge .L0803E464
	movs r0, #0
	b .L0803E498
	.align 2, 0
.L0803E460: .4byte 0x000021CA
.L0803E464:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E484
	movs r0, #4
	b .L0803E498
.L0803E484:
	cmp r4, #1
	bne .L0803E496
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803E492
	movs r0, #2
	b .L0803E498
.L0803E492:
	movs r0, #3
	b .L0803E498
.L0803E496:
	movs r0, #1
.L0803E498:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803E4A0
func_0803E4A0: @ 0x0803E4A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803E4BC @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge .L0803E4C0
	movs r0, #0
	b .L0803E610
	.align 2, 0
.L0803E4BC: .4byte 0x000021CA
.L0803E4C0:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r7, [r4, #1]
	ldrb r6, [r4, #2]
	ldrb r4, [r4, #3]
	mov sb, r4
	ldr r0, .L0803E4F0 @ =0x00001CD4
	adds r4, r5, r0
	adds r0, r4, #0
	bl func_080A0490
	mov r8, r0
	cmp r0, #0xc
	bne .L0803E56E
	cmp r7, #2
	bne .L0803E4FC
	cmp r6, #9
	bne .L0803E4F4
	movs r0, #0x10
	b .L0803E610
	.align 2, 0
.L0803E4F0: .4byte 0x00001CD4
.L0803E4F4:
	cmp r6, #0xd
	bne .L0803E4FC
	movs r0, #0x11
	b .L0803E610
.L0803E4FC:
	ldr r1, .L0803E510 @ =0x0000216C
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L0803E514
	movs r0, #0x12
	b .L0803E610
	.align 2, 0
.L0803E510: .4byte 0x0000216C
.L0803E514:
	ldr r1, .L0803E548 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0384
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	mov r8, r4
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803E53C
	ldr r0, [r5, #8]
	cmp r0, #3
	beq .L0803E53C
	cmp r0, #4
	bne .L0803E550
.L0803E53C:
	mov r0, r8
	cmp r0, #0
	beq .L0803E54C
	movs r0, #0xe
	b .L0803E610
	.align 2, 0
.L0803E548: .4byte 0x00001CD4
.L0803E54C:
	movs r0, #0xf
	b .L0803E610
.L0803E550:
	mov r1, sb
	cmp r1, #1
	bne .L0803E562
	cmp r4, #0
	beq .L0803E55E
	movs r0, #0xb
	b .L0803E610
.L0803E55E:
	movs r0, #0xd
	b .L0803E610
.L0803E562:
	cmp r4, #0
	beq .L0803E56A
	movs r0, #0xa
	b .L0803E610
.L0803E56A:
	movs r0, #0xc
	b .L0803E610
.L0803E56E:
	ldr r1, .L0803E58C @ =0x00001E28
	adds r0, r5, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bls .L0803E5A8
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E590
	movs r0, #9
	b .L0803E610
	.align 2, 0
.L0803E58C: .4byte 0x00001E28
.L0803E590:
	mov r0, sb
	cmp r0, #4
	bne .L0803E5A4
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803E5A0
	movs r0, #5
	b .L0803E610
.L0803E5A0:
	movs r0, #6
	b .L0803E610
.L0803E5A4:
	movs r0, #4
	b .L0803E610
.L0803E5A8:
	adds r0, r4, #0
	movs r1, #0xc
	bl func_080A01F8
	cmp r7, #3
	bne .L0803E5E8
	cmp r6, #0xe
	bne .L0803E5E8
	mov r1, r8
	cmp r1, #0
	bne .L0803E5E8
	cmp r0, #0
	beq .L0803E5E8
	bl GetLove__C12Bachelorette
	ldr r1, .L0803E5E0 @ =0x0000270F
	cmp r0, r1
	bls .L0803E5E8
	ldr r1, .L0803E5E4 @ =0x000021A5
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L0803E5E8
	movs r0, #7
	b .L0803E610
	.align 2, 0
.L0803E5E0: .4byte 0x0000270F
.L0803E5E4: .4byte 0x000021A5
.L0803E5E8:
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E5FA
	movs r0, #8
	b .L0803E610
.L0803E5FA:
	mov r0, sb
	cmp r0, #1
	bne .L0803E60E
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803E60A
	movs r0, #2
	b .L0803E610
.L0803E60A:
	movs r0, #3
	b .L0803E610
.L0803E60E:
	movs r0, #1
.L0803E610:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E620
func_0803E620: @ 0x0803E620
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803E638 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge .L0803E63C
	movs r0, #0
	b .L0803E67A
	.align 2, 0
.L0803E638: .4byte 0x000021CA
.L0803E63C:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E65C
	movs r0, #5
	b .L0803E67A
.L0803E65C:
	cmp r4, #1
	bne .L0803E66E
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803E66A
	movs r0, #3
	b .L0803E67A
.L0803E66A:
	movs r0, #4
	b .L0803E67A
.L0803E66E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L0803E678
	movs r0, #2
	b .L0803E67A
.L0803E678:
	movs r0, #1
.L0803E67A:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E684
func_0803E684: @ 0x0803E684
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	adds r6, r0, #0
	ldrb r0, [r4, #2]
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E6B0
	movs r0, #2
	b .L0803E6E2
.L0803E6B0:
	movs r3, #0xc8
	str r3, [sp, #4]
	ldrb r0, [r5, #0x10]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #8]
	add r2, sp, #8
	add r0, sp, #4
	cmp r3, r1
	bls .L0803E6CE
	adds r0, r2, #0
.L0803E6CE:
	ldr r0, [r0]
	cmp r0, #1
	bhi .L0803E6E0
	cmp r6, #0
	bne .L0803E6E0
	cmp r4, #2
	bhi .L0803E6E0
	movs r0, #0
	b .L0803E6E2
.L0803E6E0:
	movs r0, #1
.L0803E6E2:
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E6EC
func_0803E6EC: @ 0x0803E6EC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r2, [r4, #1]
	ldrb r3, [r4, #2]
	ldrb r4, [r4, #3]
	cmp r2, #3
	bne .L0803E740
	cmp r3, #2
	bne .L0803E740
	ldr r1, .L0803E734 @ =0x00002178
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #0x86
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	cmp r0, r1
	bne .L0803E740
	ldr r1, .L0803E738 @ =0x0000217A
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L0803E73C
	movs r0, #7
	b .L0803E778
	.align 2, 0
.L0803E734: .4byte 0x00002178
.L0803E738: .4byte 0x0000217A
.L0803E73C:
	movs r0, #0
	b .L0803E778
.L0803E740:
	adds r0, r2, #0
	adds r1, r3, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E752
	movs r0, #6
	b .L0803E778
.L0803E752:
	cmp r4, #6
	bne .L0803E764
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803E760
	movs r0, #2
	b .L0803E778
.L0803E760:
	movs r0, #3
	b .L0803E778
.L0803E764:
	cmp r4, #0
	bne .L0803E776
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803E772
	movs r0, #4
	b .L0803E778
.L0803E772:
	movs r0, #5
	b .L0803E778
.L0803E776:
	movs r0, #1
.L0803E778:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803E780
func_0803E780: @ 0x0803E780
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803E79C @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge .L0803E7A0
	movs r0, #0
	b .L0803E8DA
	.align 2, 0
.L0803E79C: .4byte 0x000021CA
.L0803E7A0:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r7, [r4, #1]
	ldrb r6, [r4, #2]
	ldrb r4, [r4, #3]
	mov sb, r4
	ldr r0, .L0803E7D0 @ =0x00001CD4
	adds r4, r5, r0
	adds r0, r4, #0
	bl func_080A0490
	mov r8, r0
	cmp r0, #0x15
	bne .L0803E84E
	cmp r7, #2
	bne .L0803E7DC
	cmp r6, #9
	bne .L0803E7D4
	movs r0, #0xe
	b .L0803E8DA
	.align 2, 0
.L0803E7D0: .4byte 0x00001CD4
.L0803E7D4:
	cmp r6, #0xd
	bne .L0803E7DC
	movs r0, #0xf
	b .L0803E8DA
.L0803E7DC:
	ldr r1, .L0803E7F0 @ =0x0000216C
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L0803E7F4
	movs r0, #0x10
	b .L0803E8DA
	.align 2, 0
.L0803E7F0: .4byte 0x0000216C
.L0803E7F4:
	ldr r1, .L0803E828 @ =0x00001CD4
	adds r0, r5, r1
	bl func_080A0384
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	mov r8, r4
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803E81C
	ldr r0, [r5, #8]
	cmp r0, #3
	beq .L0803E81C
	cmp r0, #4
	bne .L0803E830
.L0803E81C:
	mov r0, r8
	cmp r0, #0
	beq .L0803E82C
	movs r0, #0xc
	b .L0803E8DA
	.align 2, 0
.L0803E828: .4byte 0x00001CD4
.L0803E82C:
	movs r0, #0xd
	b .L0803E8DA
.L0803E830:
	mov r1, sb
	cmp r1, #3
	bne .L0803E842
	cmp r4, #0
	beq .L0803E83E
	movs r0, #9
	b .L0803E8DA
.L0803E83E:
	movs r0, #0xb
	b .L0803E8DA
.L0803E842:
	cmp r4, #0
	beq .L0803E84A
	movs r0, #8
	b .L0803E8DA
.L0803E84A:
	movs r0, #0xa
	b .L0803E8DA
.L0803E84E:
	ldr r1, .L0803E86C @ =0x00001EE4
	adds r0, r5, r1
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bls .L0803E87E
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E870
	movs r0, #7
	b .L0803E8DA
	.align 2, 0
.L0803E86C: .4byte 0x00001EE4
.L0803E870:
	mov r0, sb
	cmp r0, #3
	bne .L0803E87A
	movs r0, #4
	b .L0803E8DA
.L0803E87A:
	movs r0, #3
	b .L0803E8DA
.L0803E87E:
	adds r0, r4, #0
	movs r1, #0x15
	bl func_080A01F8
	cmp r7, #3
	bne .L0803E8BC
	cmp r6, #0xe
	bne .L0803E8BC
	mov r1, r8
	cmp r1, #0
	bne .L0803E8BC
	cmp r0, #0
	beq .L0803E8BC
	bl GetLove__C12Bachelorette
	ldr r1, .L0803E8B4 @ =0x0000270F
	cmp r0, r1
	bls .L0803E8BC
	ldr r1, .L0803E8B8 @ =0x000021A4
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L0803E8BC
	movs r0, #6
	b .L0803E8DA
	.align 2, 0
.L0803E8B4: .4byte 0x0000270F
.L0803E8B8: .4byte 0x000021A4
.L0803E8BC:
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E8CE
	movs r0, #5
	b .L0803E8DA
.L0803E8CE:
	mov r0, sb
	cmp r0, #3
	beq .L0803E8D8
	movs r0, #1
	b .L0803E8DA
.L0803E8D8:
	movs r0, #2
.L0803E8DA:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0803E8E8
func_0803E8E8: @ 0x0803E8E8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803E924 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt .L0803E948
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r2, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	cmp r2, #2
	bne .L0803E92C
	cmp r1, #0x1e
	bne .L0803E92C
	ldr r3, .L0803E928 @ =0x000021A2
	adds r0, r5, r3
	ldrb r0, [r0]
	lsrs r0, r0, #6
	cmp r0, #2
	beq .L0803E92C
	movs r0, #5
	b .L0803E968
	.align 2, 0
.L0803E924: .4byte 0x000021CA
.L0803E928: .4byte 0x000021A2
.L0803E92C:
	adds r0, r2, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E93C
	movs r0, #4
	b .L0803E968
.L0803E93C:
	ldr r1, .L0803E94C @ =0x0000215A
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge .L0803E950
.L0803E948:
	movs r0, #0
	b .L0803E968
	.align 2, 0
.L0803E94C: .4byte 0x0000215A
.L0803E950:
	cmp r4, #1
	beq .L0803E958
	cmp r4, #3
	bne .L0803E95C
.L0803E958:
	movs r0, #3
	b .L0803E968
.L0803E95C:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L0803E966
	movs r0, #2
	b .L0803E968
.L0803E966:
	movs r0, #1
.L0803E968:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803E970
func_0803E970: @ 0x0803E970
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	adds r6, r4, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803E998
	movs r0, #5
	b .L0803E9DA
.L0803E998:
	ldr r1, .L0803E9A8 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge .L0803E9AC
	movs r0, #0
	b .L0803E9DA
	.align 2, 0
.L0803E9A8: .4byte 0x000021CA
.L0803E9AC:
	ldr r1, .L0803E9C8 @ =0x00002174
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #0xc2
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x82
	lsls r1, r1, #0xb
	cmp r0, r1
	bne .L0803E9D0
	cmp r4, #6
	bne .L0803E9CC
	movs r0, #4
	b .L0803E9DA
	.align 2, 0
.L0803E9C8: .4byte 0x00002174
.L0803E9CC:
	movs r0, #3
	b .L0803E9DA
.L0803E9D0:
	cmp r6, #6
	beq .L0803E9D8
	movs r0, #1
	b .L0803E9DA
.L0803E9D8:
	movs r0, #2
.L0803E9DA:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803E9E4
func_0803E9E4: @ 0x0803E9E4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r2, [r4, #3]
	adds r4, r2, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803EA0C
	movs r0, #5
	b .L0803EA52
.L0803EA0C:
	ldr r1, .L0803EA1C @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	cmp r0, #0
	bge .L0803EA20
	movs r0, #0
	b .L0803EA52
	.align 2, 0
.L0803EA1C: .4byte 0x000021CA
.L0803EA20:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803EA50
	cmp r4, #6
	bne .L0803EA4C
	ldr r1, .L0803EA44 @ =0x00002174
	adds r0, r5, r1
	ldr r0, [r0]
	movs r1, #0xc2
	lsls r1, r1, #0xb
	ands r0, r1
	movs r1, #0x82
	lsls r1, r1, #0xb
	cmp r0, r1
	bne .L0803EA48
	movs r0, #4
	b .L0803EA52
	.align 2, 0
.L0803EA44: .4byte 0x00002174
.L0803EA48:
	movs r0, #3
	b .L0803EA52
.L0803EA4C:
	movs r0, #1
	b .L0803EA52
.L0803EA50:
	movs r0, #2
.L0803EA52:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803EA5C
func_0803EA5C: @ 0x0803EA5C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r5, sp
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r1, [r5, #3]
	ldr r0, .L0803EA88 @ =0x00002186
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne .L0803EA8C
	cmp r1, #3
	bne .L0803EA8C
	movs r0, #1
	b .L0803EA8E
	.align 2, 0
.L0803EA88: .4byte 0x00002186
.L0803EA8C:
	movs r0, #0
.L0803EA8E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803EA98
func_0803EA98: @ 0x0803EA98
	push {r4, lr}
	sub sp, #4
	adds r1, r0, #0
	ldr r2, .L0803EAB0 @ =0x000021CA
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	cmp r0, #0
	bge .L0803EAB4
	movs r0, #0
	b .L0803EAD2
	.align 2, 0
.L0803EAB0: .4byte 0x000021CA
.L0803EAB4:
	mov r4, sp
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803EAD0
	movs r0, #1
	b .L0803EAD2
.L0803EAD0:
	movs r0, #2
.L0803EAD2:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803EADC
func_0803EADC: @ 0x0803EADC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803EAF4 @ =0x000021CA
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0x7c
	ands r0, r1
	cmp r0, #0
	beq .L0803EAF8
	movs r0, #0
	b .L0803EB38
	.align 2, 0
.L0803EAF4: .4byte 0x000021CA
.L0803EAF8:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	cmp r0, #2
	bne .L0803EB16
	cmp r1, #3
	bne .L0803EB16
	movs r0, #9
	b .L0803EB38
.L0803EB16:
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803EB24
	movs r0, #8
	b .L0803EB38
.L0803EB24:
	cmp r4, #1
	beq .L0803EB32
	cmp r4, #3
	beq .L0803EB32
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L0803EB36
.L0803EB32:
	movs r0, #1
	b .L0803EB38
.L0803EB36:
	movs r0, #2
.L0803EB38:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803EB40
func_0803EB40: @ 0x0803EB40
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803EB78 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	blt .L0803EB92
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	cmp r0, #1
	bne .L0803EB92
	movs r0, #1
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803EB7C
	movs r0, #4
	b .L0803EB94
	.align 2, 0
.L0803EB78: .4byte 0x000021CA
.L0803EB7C:
	cmp r4, #0
	bne .L0803EB8E
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803EB8A
	movs r0, #2
	b .L0803EB94
.L0803EB8A:
	movs r0, #3
	b .L0803EB94
.L0803EB8E:
	movs r0, #1
	b .L0803EB94
.L0803EB92:
	movs r0, #0
.L0803EB94:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0803EB9C
func_0803EB9C: @ 0x0803EB9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803EBB8 @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge .L0803EBBC
	movs r0, #0
	b .L0803EC36
	.align 2, 0
.L0803EBB8: .4byte 0x000021CA
.L0803EBBC:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r6, [r4, #1]
	ldrb r0, [r4, #2]
	mov r8, r0
	ldrb r4, [r4, #3]
	ldr r1, .L0803EBF0 @ =0x00001E28
	adds r0, r5, r1
	bl GetRivalEventCount__C12Bachelorette
	adds r7, r0, #0
	cmp r7, #4
	bls .L0803EC0A
	adds r0, r6, #0
	mov r1, r8
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803EBF4
	movs r0, #9
	b .L0803EC36
	.align 2, 0
.L0803EBF0: .4byte 0x00001E28
.L0803EBF4:
	cmp r4, #4
	bne .L0803EC06
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803EC02
	movs r0, #6
	b .L0803EC36
.L0803EC02:
	movs r0, #7
	b .L0803EC36
.L0803EC06:
	movs r0, #5
	b .L0803EC36
.L0803EC0A:
	adds r0, r6, #0
	mov r1, r8
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803EC1C
	movs r0, #8
	b .L0803EC36
.L0803EC1C:
	cmp r7, #0
	beq .L0803EC34
	cmp r4, #1
	bne .L0803EC28
	movs r0, #3
	b .L0803EC36
.L0803EC28:
	cmp r4, #4
	bne .L0803EC30
	movs r0, #4
	b .L0803EC36
.L0803EC30:
	movs r0, #2
	b .L0803EC36
.L0803EC34:
	movs r0, #1
.L0803EC36:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0803EC44
func_0803EC44: @ 0x0803EC44
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, .L0803EC5C @ =0x000021CA
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	cmp r0, #0
	bge .L0803EC60
	movs r0, #0
	b .L0803ECB8
	.align 2, 0
.L0803EC5C: .4byte 0x000021CA
.L0803EC60:
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r6, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803EC80
	movs r0, #4
	b .L0803ECB8
.L0803EC80:
	ldr r0, .L0803ECA0 @ =0x00001DAC
	adds r4, r5, r0
	adds r0, r4, #0
	bl func_0809ECD8
	cmp r0, #0
	beq .L0803ECA4
	adds r0, r4, #0
	bl func_0809ECE0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803ECA4
	movs r0, #5
	b .L0803ECB8
	.align 2, 0
.L0803ECA0: .4byte 0x00001DAC
.L0803ECA4:
	cmp r6, #4
	bne .L0803ECB6
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803ECB2
	movs r0, #2
	b .L0803ECB8
.L0803ECB2:
	movs r0, #3
	b .L0803ECB8
.L0803ECB6:
	movs r0, #1
.L0803ECB8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start func_0803ECC0
func_0803ECC0: @ 0x0803ECC0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r6, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803ECE6
	movs r0, #5
	b .L0803EDC4
.L0803ECE6:
	ldr r7, [r5, #8]
	ldr r0, .L0803ED28 @ =0x00001F64
	adds r4, r5, r0
	adds r0, r4, #0
	bl func_0809EB68
	cmp r0, #0
	beq .L0803EDA4
	adds r0, r4, #0
	bl func_0809EB70
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803EDA4
	adds r0, r4, #0
	bl func_0809EB8C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0803EDA4
	subs r0, r7, #3
	cmp r0, #1
	bls .L0803EDA4
	adds r0, r4, #0
	bl func_0809EB68
	cmp r0, #0xd
	bhi .L0803EDA4
	lsls r0, r0, #2
	ldr r1, .L0803ED2C @ =.L0803ED30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0803ED28: .4byte 0x00001F64
.L0803ED2C: .4byte .L0803ED30
.L0803ED30: @ jump table
	.4byte .L0803EDA4 @ case 0
	.4byte .L0803ED68 @ case 1
	.4byte .L0803ED8C @ case 2
	.4byte .L0803ED90 @ case 3
	.4byte .L0803ED94 @ case 4
	.4byte .L0803ED98 @ case 5
	.4byte .L0803ED98 @ case 6
	.4byte .L0803ED98 @ case 7
	.4byte .L0803ED9C @ case 8
	.4byte .L0803ED9C @ case 9
	.4byte .L0803ED9C @ case 10
	.4byte .L0803EDA0 @ case 11
	.4byte .L0803EDA0 @ case 12
	.4byte .L0803EDA0 @ case 13
.L0803ED68:
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r5, r1
	bl GetUpgradeLevel__C9FarmHouse
	cmp r0, #1
	beq .L0803ED84
	cmp r0, #1
	blo .L0803ED80
	cmp r0, #2
	beq .L0803ED88
	b .L0803EDA4
.L0803ED80:
	movs r0, #6
	b .L0803EDC4
.L0803ED84:
	movs r0, #7
	b .L0803EDC4
.L0803ED88:
	movs r0, #0xd
	b .L0803EDC4
.L0803ED8C:
	movs r0, #8
	b .L0803EDC4
.L0803ED90:
	movs r0, #9
	b .L0803EDC4
.L0803ED94:
	movs r0, #0xe
	b .L0803EDC4
.L0803ED98:
	movs r0, #0xa
	b .L0803EDC4
.L0803ED9C:
	movs r0, #0xb
	b .L0803EDC4
.L0803EDA0:
	movs r0, #0xc
	b .L0803EDC4
.L0803EDA4:
	cmp r6, #5
	bgt .L0803EDB2
	cmp r6, #4
	bge .L0803EDBA
	cmp r6, #0
	beq .L0803EDC2
	b .L0803EDB6
.L0803EDB2:
	cmp r6, #6
	beq .L0803EDBE
.L0803EDB6:
	movs r0, #1
	b .L0803EDC4
.L0803EDBA:
	movs r0, #2
	b .L0803EDC4
.L0803EDBE:
	movs r0, #3
	b .L0803EDC4
.L0803EDC2:
	movs r0, #4
.L0803EDC4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0803EDCC
func_0803EDCC: @ 0x0803EDCC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r6, [r4, #1]
	ldrb r0, [r4, #2]
	adds r7, r0, #0
	ldrb r4, [r4, #3]
	adds r0, r6, #0
	adds r1, r7, #0
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803EDF8
	movs r0, #5
	b .L0803EE48
.L0803EDF8:
	cmp r6, #2
	bne .L0803EE18
	cmp r7, #0x1e
	bne .L0803EE18
	ldr r1, .L0803EE14 @ =0x000021A2
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L0803EE18
	movs r0, #6
	b .L0803EE48
	.align 2, 0
.L0803EE14: .4byte 0x000021A2
.L0803EE18:
	ldr r1, .L0803EE28 @ =0x0000215A
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bge .L0803EE2C
	movs r0, #0
	b .L0803EE48
	.align 2, 0
.L0803EE28: .4byte 0x0000215A
.L0803EE2C:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803EE46
	cmp r4, #1
	bne .L0803EE3A
	movs r0, #1
	b .L0803EE48
.L0803EE3A:
	cmp r4, #3
	bne .L0803EE42
	movs r0, #2
	b .L0803EE48
.L0803EE42:
	movs r0, #3
	b .L0803EE48
.L0803EE46:
	movs r0, #4
.L0803EE48:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_0803EE50
func_0803EE50: @ 0x0803EE50
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	mov r4, sp
	adds r1, r5, #0
	adds r1, #0x10
	mov r0, sp
	bl func_0803D52C
	ldrb r0, [r4, #1]
	ldrb r1, [r4, #2]
	ldrb r4, [r4, #3]
	bl func_0803D644
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0803EE76
	movs r0, #4
	b .L0803EE8A
.L0803EE76:
	cmp r4, #1
	bne .L0803EE88
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L0803EE84
	movs r0, #2
	b .L0803EE8A
.L0803EE84:
	movs r0, #3
	b .L0803EE8A
.L0803EE88:
	movs r0, #1
.L0803EE8A:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
