    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_080507F8
func_080507F8: @ 0x080507F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r7, r2, #0
	mov r8, r3
	ldrb r0, [r1]
	lsls r1, r0, #0x19
	lsrs r6, r1, #0x1b
	lsls r0, r0, #0x1e
	adds r5, r4, #0
	adds r5, #0xd0
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bls .L0805081E
	movs r1, #3
	bl __umodsi3
.L0805081E:
	strh r0, [r5, #0x16]
	adds r0, r6, #0
	cmp r0, #0x1b
	bls .L0805082C
	movs r1, #0x1c
	bl __umodsi3
.L0805082C:
	strh r0, [r5, #0x14]
	movs r0, #0
	strb r0, [r5, #0x19]
	adds r4, #0xec
	adds r0, r4, #0
	adds r1, r7, #0
	mov r2, r8
	bl func_080ADD5C
	adds r6, r5, #0
	adds r5, r4, #0
	ldr r4, .L08050864 @ =vtable_unk_080E78F0
.L08050844:
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	mov r2, sp
	bl func_080ADD78
	str r4, [sp]
	cmp r0, #1
	beq .L08050844
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08050864: .4byte vtable_unk_080E78F0

	thumb_func_start func_08050868
func_08050868: @ 0x08050868
	push {lr}
	adds r3, r1, #0
	cmp r0, #7
	bls .L08050872
	b .L08050AD0
.L08050872:
	lsls r0, r0, #2
	ldr r1, .L0805087C @ =.L08050880
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805087C: .4byte .L08050880
.L08050880: @ jump table
	.4byte .L080508A0 @ case 0
	.4byte .L080508B2 @ case 1
	.4byte .L08050930 @ case 2
	.4byte .L0805097E @ case 3
	.4byte .L08050A18 @ case 4
	.4byte .L080508A0 @ case 5
	.4byte .L080508FA @ case 6
	.4byte .L08050930 @ case 7
.L080508A0:
	movs r1, #0xc0
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L080508EC
.L080508AA:
	cmp r3, #1
	bne .L080508B0
	b .L08050AC8
.L080508B0:
	b .L08050AD0
.L080508B2:
	movs r1, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L080508C8
	cmp r3, #2
	bne .L080508C2
	b .L08050ACC
.L080508C2:
	cmp r3, #2
	ble .L080508AA
	b .L08050AD0
.L080508C8:
	movs r1, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L080508EC
	cmp r3, #2
	bne .L080508D8
	b .L08050AD0
.L080508D8:
	cmp r3, #2
	bgt .L080508E4
.L080508DC:
	cmp r3, #1
	bne .L080508E2
	b .L08050ACC
.L080508E2:
	b .L08050AD0
.L080508E4:
	cmp r3, #3
	beq .L080508EA
	b .L08050AD0
.L080508EA:
	b .L08050AC8
.L080508EC:
	movs r0, #0x30
	ands r2, r0
	cmp r2, #0
	bne .L080508F6
	b .L08050AD0
.L080508F6:
	adds r0, r3, #0
	b .L08050AD2
.L080508FA:
	movs r1, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L08050910
.L08050904:
	cmp r3, #2
	bne .L0805090A
	b .L08050AD0
.L0805090A:
	cmp r3, #2
	ble .L080508AA
	b .L080508E4
.L08050910:
	movs r1, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne .L08050904
	movs r0, #0x30
	ands r2, r0
	cmp r2, #0
	bne .L08050924
	b .L08050AD0
.L08050924:
	cmp r3, #2
	bne .L0805092A
	b .L08050ACC
.L0805092A:
	cmp r3, #2
	ble .L080508DC
	b .L08050AD0
.L08050930:
	movs r1, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L08050952
.L0805093A:
	cmp r3, #2
	bne .L08050940
	b .L08050AD0
.L08050940:
	cmp r3, #2
	ble .L080508AA
	cmp r3, #3
	bne .L0805094A
	b .L08050ABC
.L0805094A:
	cmp r3, #4
	beq .L08050950
	b .L08050AD0
.L08050950:
	b .L08050ACC
.L08050952:
	movs r1, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne .L0805093A
	movs r0, #0x30
	ands r2, r0
	cmp r2, #0
	bne .L08050966
	b .L08050AD0
.L08050966:
	cmp r3, #2
	bne .L0805096C
	b .L08050ABC
.L0805096C:
	cmp r3, #2
	ble .L080508DC
	cmp r3, #3
	bne .L08050976
	b .L08050AD0
.L08050976:
	cmp r3, #4
	beq .L0805097C
	b .L08050AD0
.L0805097C:
	b .L08050AC8
.L0805097E:
	movs r1, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L080509B4
	subs r0, r3, #1
	cmp r0, #4
	bls .L08050990
	b .L08050AD0
.L08050990:
	lsls r0, r0, #2
	ldr r1, .L0805099C @ =.L080509A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0805099C: .4byte .L080509A0
.L080509A0: @ jump table
	.4byte .L08050AC8 @ case 0
	.4byte .L08050ACC @ case 1
	.4byte .L08050AD0 @ case 2
	.4byte .L08050AC0 @ case 3
	.4byte .L08050ABC @ case 4
.L080509B4:
	movs r1, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L080509E8
	subs r0, r3, #1
	cmp r0, #4
	bls .L080509C6
	b .L08050AD0
.L080509C6:
	lsls r0, r0, #2
	ldr r1, .L080509D0 @ =.L080509D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080509D0: .4byte .L080509D4
.L080509D4: @ jump table
	.4byte .L08050ACC @ case 0
	.4byte .L08050AD0 @ case 1
	.4byte .L08050AC8 @ case 2
	.4byte .L08050AC0 @ case 3
	.4byte .L08050ABC @ case 4
.L080509E8:
	movs r0, #0x30
	ands r2, r0
	cmp r2, #0
	beq .L08050AD0
	subs r0, r3, #1
	cmp r0, #4
	bhi .L08050AD0
	lsls r0, r0, #2
	ldr r1, .L08050A00 @ =.L08050A04
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08050A00: .4byte .L08050A04
.L08050A04: @ jump table
	.4byte .L08050ABC @ case 0
	.4byte .L08050AC0 @ case 1
	.4byte .L08050AC0 @ case 2
	.4byte .L08050AD0 @ case 3
	.4byte .L08050AC8 @ case 4
.L08050A18:
	movs r1, #0x80
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L08050A50
	subs r0, r3, #1
	cmp r0, #5
	bhi .L08050AD0
	lsls r0, r0, #2
	ldr r1, .L08050A34 @ =.L08050A38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08050A34: .4byte .L08050A38
.L08050A38: @ jump table
	.4byte .L08050AC8 @ case 0
	.4byte .L08050ACC @ case 1
	.4byte .L08050AD0 @ case 2
	.4byte .L08050AC0 @ case 3
	.4byte .L08050AC4 @ case 4
	.4byte .L08050ABC @ case 5
.L08050A50:
	movs r1, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L08050A88
	subs r0, r3, #1
	cmp r0, #5
	bhi .L08050AD0
	lsls r0, r0, #2
	ldr r1, .L08050A6C @ =.L08050A70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08050A6C: .4byte .L08050A70
.L08050A70: @ jump table
	.4byte .L08050ACC @ case 0
	.4byte .L08050AD0 @ case 1
	.4byte .L08050AC8 @ case 2
	.4byte .L08050AC4 @ case 3
	.4byte .L08050ABC @ case 4
	.4byte .L08050AC0 @ case 5
.L08050A88:
	movs r0, #0x30
	ands r2, r0
	cmp r2, #0
	beq .L08050AD0
	subs r0, r3, #1
	cmp r0, #5
	bhi .L08050AD0
	lsls r0, r0, #2
	ldr r1, .L08050AA0 @ =.L08050AA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08050AA0: .4byte .L08050AA4
.L08050AA4: @ jump table
	.4byte .L08050ABC @ case 0
	.4byte .L08050AC0 @ case 1
	.4byte .L08050AC4 @ case 2
	.4byte .L08050AD0 @ case 3
	.4byte .L08050AC8 @ case 4
	.4byte .L08050ACC @ case 5
.L08050ABC:
	movs r0, #4
	b .L08050AD2
.L08050AC0:
	movs r0, #5
	b .L08050AD2
.L08050AC4:
	movs r0, #6
	b .L08050AD2
.L08050AC8:
	movs r0, #2
	b .L08050AD2
.L08050ACC:
	movs r0, #3
	b .L08050AD2
.L08050AD0:
	movs r0, #1
.L08050AD2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08050AD8
func_08050AD8: @ 0x08050AD8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r5, #0
	blo .L08050AEA
	bl func_080ADD20
	cmp r5, r0
	blo .L08050AF2
.L08050AEA:
	adds r0, r4, #0
	bl func_08050B3C
	b .L08050B36
.L08050AF2:
	movs r0, #0xee
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r1, [r2]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq .L08050B0E
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, r5
	beq .L08050B36
	b .L08050B14
.L08050B0E:
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
.L08050B14:
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	adds r1, r5, #0
	bl func_080ADCA4
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r4, r1
	str r5, [r0]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r2, r4, r0
	ldrb r0, [r2]
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
.L08050B36:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_08050B3C
func_08050B3C: @ 0x08050B3C
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start func_08050B50
func_08050B50: @ 0x08050B50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r0
	adds r4, r1, #0
	cmp r4, #0
	beq .L08050B6E
	adds r0, r4, #0
	bl strlen
	adds r6, r0, #0
	b .L08050B70
.L08050B6E:
	movs r6, #0
.L08050B70:
	subs r0, r6, #1
	cmp r0, #0xb
	bls .L08050B7E
	mov r0, r8
	bl func_08050C18
	b .L08050C06
.L08050B7E:
	adds r7, r4, #0
	movs r5, #0
	mov r0, sp
	adds r0, #0xc
	str r0, [sp, #0x14]
	movs r2, #4
	mov sl, r2
	movs r0, #2
	mov sb, r0
.L08050B90:
	lsls r1, r5, #6
	adds r1, r1, r5
	lsls r1, r1, #2
	add r1, r8
	add r0, sp, #0xc
	mov r2, sl
	strh r2, [r0]
	mov r2, sb
	ldr r0, [sp, #0x14]
	strh r2, [r0, #2]
	ldr r0, [sp, #0xc]
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r4, r1, r2
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	adds r5, #1
	cmp r6, #0
	beq .L08050BF0
	add r2, sp, #4
	adds r1, r4, #0
	add r4, sp, #0x10
	add r3, sp, #8
.L08050BC2:
	ldrb r0, [r7]
	strb r0, [r2]
	adds r7, #1
	adds r2, #1
	subs r6, #1
	cmp r6, #0
	beq .L08050BD4
	cmp r2, r3
	bne .L08050BC2
.L08050BD4:
	movs r0, #0
	strb r0, [r2]
	add r0, sp, #0x10
	mov r2, sl
	strh r2, [r0]
	mov r0, sb
	strh r0, [r4, #2]
	ldr r0, [sp, #0x10]
	add r2, sp, #4
	str r2, [sp]
	movs r2, #0
	movs r3, #0
	bl func_0804E8F0
.L08050BF0:
	cmp r5, #2
	bls .L08050B90
	movs r2, #0xf8
	lsls r2, r2, #1
	add r2, r8
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
.L08050C06:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050C18
func_08050C18: @ 0x08050C18
	movs r1, #0xf8
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start func_08050C2C
func_08050C2C: @ 0x08050C2C
	push {lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldr r1, .L08050C44 @ =0x00000504
	adds r0, r2, r1
	ldrh r0, [r0, #0x20]
	cmp r3, r0
	blo .L08050C48
	adds r0, r2, #0
	bl func_08050C64
	b .L08050C5C
	.align 2, 0
.L08050C44: .4byte 0x00000504
.L08050C48:
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r2, r1
	movs r1, #1
	strb r1, [r0]
	ldr r1, .L08050C60 @ =0x00000534
	adds r0, r2, r1
	adds r1, r3, #0
	bl func_0805E860
.L08050C5C:
	pop {r0}
	bx r0
	.align 2, 0
.L08050C60: .4byte 0x00000534

	thumb_func_start func_08050C64
func_08050C64: @ 0x08050C64
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	bx lr
.L08050C70:
	.byte 0x10, 0xB5, 0x83, 0xB0, 0x04, 0x1C, 0x02, 0xAA, 0x00, 0x20, 0x10, 0x70, 0x68, 0x46, 0x12, 0x1A
	.byte 0x00, 0x21, 0x82, 0xF0, 0xFF, 0xFE, 0x68, 0x46, 0x02, 0x30, 0x01, 0x22, 0x02, 0x70, 0x69, 0x46
	.byte 0x03, 0x31, 0x15, 0x20, 0x08, 0x70, 0x68, 0x46, 0x07, 0x30, 0x02, 0x70, 0x21, 0x1C, 0x68, 0x46
	.byte 0x0C, 0xC8, 0x0C, 0xC1, 0x20, 0x1C, 0x03, 0xB0, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x03, 0x21, 0x02, 0x48, 0x02, 0x40, 0x0A, 0x43, 0x10, 0x1C, 0x70, 0x47, 0x00, 0xFF, 0xFF, 0xFF

	thumb_func_start func_08050CC0
func_08050CC0: @ 0x08050CC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	mov sb, r1
	mov sl, r2
	adds r7, r3, #0
	ldr r4, [sp, #0x2c]
	ldr r5, [sp, #0x30]
	ldr r6, [sp, #0x34]
	ldr r0, .L08050D08 @ =0x00000554
	bl __builtin_new
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	mov r1, sb
	mov r2, sl
	adds r3, r7, #0
	bl func_0804F288
	mov r1, r8
	str r0, [r1]
	mov r0, r8
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08050D08: .4byte 0x00000554

	thumb_func_start func_08050D0C
func_08050D0C: @ 0x08050D0C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq .L08050D1E
	movs r1, #3
	bl func_0804F69C
.L08050D1E:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq .L08050D2C
	adds r0, r4, #0
	bl __builtin_delete
.L08050D2C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050D34
func_08050D34: @ 0x08050D34
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start func_08050D3C
func_08050D3C: @ 0x08050D3C
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x1c]
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	ldr r0, [r0]
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	bl func_0804F7A4
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08050D5C
func_08050D5C: @ 0x08050D5C
	push {lr}
	ldr r0, [r0]
	bl func_0805039C
	pop {r0}
	bx r0

	thumb_func_start func_08050D68
func_08050D68: @ 0x08050D68
	push {lr}
	ldr r0, [r0]
	bl func_080503E4
	pop {r0}
	bx r0

	thumb_func_start func_08050D74
func_08050D74: @ 0x08050D74
	push {lr}
	ldr r0, [r0]
	bl func_080503FC
	pop {r0}
	bx r0

	thumb_func_start func_08050D80
func_08050D80: @ 0x08050D80
	push {lr}
	ldr r0, [r0]
	bl func_08050410
	pop {r0}
	bx r0

	thumb_func_start func_08050D8C
func_08050D8C: @ 0x08050D8C
	push {lr}
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	bl func_08050424
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050DA0
func_08050DA0: @ 0x08050DA0
	push {lr}
	adds r3, r2, #0
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	bl func_08050424
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050DB4
func_08050DB4: @ 0x08050DB4
	push {lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r0]
	movs r3, #0
	bl func_08050424
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050DC8
func_08050DC8: @ 0x08050DC8
	push {lr}
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r0]
	bl func_08050424
	pop {r0}
	bx r0

	thumb_func_start func_08050DD8
func_08050DD8: @ 0x08050DD8
	ldr r2, [r0]
	ldrb r0, [r2, #0xd]
	movs r1, #0
	strb r1, [r2, #0xd]
	bx lr
	.align 2, 0

	thumb_func_start func_08050DE4
func_08050DE4: @ 0x08050DE4
	ldr r2, [r0]
	ldrb r0, [r2, #0xd]
	movs r1, #1
	strb r1, [r2, #0xd]
	bx lr
	.align 2, 0

