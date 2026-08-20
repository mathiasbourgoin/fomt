.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_08080E04
func_08080E04: @ 0x08080E04
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_08080540
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_08080E20
func_08080E20: @ 0x08080E20
	push {r4, lr}
	adds r4, r0, #0
	bl func_080C7F58
	ldr r0, .L08080E4C @ =vtable_unk_080E7CB0
	str r0, [r4, #4]
	ldr r1, .L08080E50 @ =0x000006A4
	adds r0, r4, r1
	movs r1, #0
	str r1, [r0]
	movs r2, #0xd5
	lsls r2, r2, #3
	adds r0, r4, r2
	strb r1, [r0]
	adds r2, #4
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L08080E4C: .4byte vtable_unk_080E7CB0
.L08080E50: .4byte 0x000006A4

	thumb_func_start func_08080E54
func_08080E54: @ 0x08080E54
	push {lr}
	ldr r2, .L08080E64 @ =vtable_unk_080E7CB0
	str r2, [r0, #4]
	bl func_080C8360
	pop {r0}
	bx r0
	.align 2, 0
.L08080E64: .4byte vtable_unk_080E7CB0

	thumb_func_start func_08080E68
func_08080E68: @ 0x08080E68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x140
	adds r7, r0, #0
	movs r0, #0x10
	str r0, [sp, #0xc]
	movs r0, #4
	str r0, [sp, #0x134]
	add r6, sp, #0x18
	ldr r1, .L08080FC8 @ =gUnk_086678A0
	adds r0, r6, #0
	bl func_0805E6CC
	add r0, sp, #0x48
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #2]
	add r0, sp, #0x4c
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	add r0, sp, #0x60
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
	add r0, sp, #0x7c
	strb r5, [r0]
	add r1, sp, #0x80
	str r4, [sp, #0x80]
	strh r4, [r1, #4]
	add r6, sp, #0x88
	str r4, [r6]
	strh r4, [r6, #4]
	add r5, sp, #0x90
	str r4, [r5]
	strh r4, [r5, #4]
	add r0, sp, #0x98
	str r4, [r0]
	strh r4, [r0, #4]
	ldr r0, [r7, #0x1c]
	bl func_08075DD4
	adds r3, r7, #0
	adds r3, #0x20
	movs r2, #0x24
	adds r2, r2, r7
	mov ip, r2
	ldr r0, [r7, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r3, r0
	adds r2, r0, #0
	mov r1, ip
	ldr r4, [r3]
	cmp r1, r2
	beq .L08080EFA
.L08080EF4:
	adds r1, #0x10
	cmp r1, r2
	bne .L08080EF4
.L08080EFA:
	mov r1, ip
	subs r0, r0, r1
	asrs r0, r0, #4
	subs r0, r4, r0
	str r0, [r3]
	movs r2, #0
	mov sl, r2
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp sl, r0
	blo .L08080F16
	b .L080810C4
.L08080F16:
	movs r4, #0
	mov sb, r4
	movs r5, #0
	adds r0, r3, #0
	adds r0, r7, r0
	str r0, [sp, #0x138]
	add r6, sp, #0xa0
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
.L08080F2C:
	add r1, sp, #8
	ldr r2, [sp, #0x134]
	lsls r0, r2, #3
	strh r0, [r1]
	mov r3, r8
	ldr r0, [r3]
	lsls r0, r0, #3
	ldr r1, .L08080FCC @ =gUnk_080FE8FC
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	add r2, sp, #0x12c
	str r0, [r2]
	str r1, [r2, #4]
	ldr r1, [r2]
	cmp r1, #0xa
	beq .L08080FD0
	add r4, sp, #0x128
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetIconId__C7Article
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r4, sp, #0x4c
	adds r0, r4, #0
	bl func_0805E860
	ldr r1, [sp, #0x4c]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x50]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xa0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x80
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r4}
	stm r1!, {r2, r4}
	ldr r0, [sp, #0x88]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x90]
	str r0, [sp, #0x14]
	adds r1, r7, #0
	adds r1, #0x20
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L08081078
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L08080FC0
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08080FC0:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
	b .L08081078
	.align 2, 0
.L08080FC8: .4byte gUnk_086678A0
.L08080FCC: .4byte gUnk_080FE8FC
.L08080FD0:
	mov r3, sp
	adds r3, #0xc0
	str r3, [sp, #0x13c]
	adds r0, r3, #0
	ldr r1, .L08081100 @ =gUnk_08753608
	bl func_0805E6CC
	add r0, sp, #0xf0
	strh r5, [r0]
	strh r5, [r0, #2]
	add r0, sp, #0xf4
	ldr r1, [sp, #0x13c]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	add r0, sp, #0x108
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r4, sb
	strb r4, [r0, #0x10]
	strb r4, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r4, [r0, #0x18]
	add r0, sp, #0x124
	strb r4, [r0]
	add r0, sp, #0xf4
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	add r0, sp, #0xf8
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xa0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x80
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r0, [sp, #0x88]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x90]
	str r0, [sp, #0x14]
	adds r1, r7, #0
	adds r1, #0x20
	ldr r0, [r7, #0x20]
	ldr r4, [sp, #0x13c]
	mov ip, r4
	cmp r0, #0x27
	bhi .L08081072
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0808106C
	add r1, sp, #8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0808106C:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L08081072:
	ldr r0, .L08081104 @ =vtable_unk_080E5A28
	mov r1, ip
	str r0, [r1]
.L08081078:
	ldr r0, [r7, #0x1c]
	ldr r1, [r0, #0x18]
	ldr r2, [sp, #0x134]
	lsls r4, r2, #6
	adds r1, r1, r4
	adds r1, #0x32
	add r0, sp, #0x12c
	ldr r0, [r0, #4]
	movs r3, #0x20
	str r3, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	str r5, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r1, #0x20
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r0, [sp, #0x134]
	adds r0, #2
	str r0, [sp, #0x134]
	movs r1, #4
	add r8, r1
	movs r2, #1
	add sl, r2
	ldr r3, [sp, #0x138]
	ldr r0, [r3]
	cmp sl, r0
	bhs .L080810C4
	b .L08080F2C
.L080810C4:
	movs r0, #0
	strh r0, [r7, #0xc]
	movs r4, #0xc9
	lsls r4, r4, #3
	adds r1, r7, r4
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r7, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r7, r2]
	bl func_08075DB8
	ldr r0, [r7, #0x1c]
	ldr r1, [sp, #0x134]
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	ldr r0, .L08081104 @ =vtable_unk_080E5A28
	str r0, [sp, #0x18]
	add sp, #0x140
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08081100: .4byte gUnk_08753608
.L08081104: .4byte vtable_unk_080E5A28

	thumb_func_start func_08081108
func_08081108: @ 0x08081108
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, r1, #0
	cmp r0, #0xa
	beq .L08081138
	ldr r1, .L08081134 @ =gUnk_080FE8FC
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, sp
	bl __7ArticleUi
	mov r0, sp
	bl GetDesc__C7Article
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080CABEC
	b .L08081140
	.align 2, 0
.L08081134: .4byte gUnk_080FE8FC
.L08081138:
	ldr r1, .L08081148 @ =gUnk_080FE974
	adds r0, r4, #0
	bl func_080CABEC
.L08081140:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08081148: .4byte gUnk_080FE974

	thumb_func_start func_0808114C
func_0808114C: @ 0x0808114C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	bl func_08008724
	adds r0, r6, #0
	bl func_080C85A0
	movs r4, #0
	movs r1, #0
.L08081168:
	ldr r0, [r6, #8]
	ldr r2, .L080812F8 @ =0x00001FE4
	adds r0, r0, r2
	bl func_0809EEA4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08081196
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08081196
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L08081190
	str r4, [r0]
.L08081190:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08081196:
	adds r4, #1
	adds r1, r4, #0
	cmp r1, #9
	bls .L08081168
	ldr r0, [r6, #8]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetRecordPlayer__9FarmHouse
	cmp r0, #0
	bne .L080811CE
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L080811CE
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L080811C8
	movs r0, #0xa
	str r0, [r2]
.L080811C8:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L080811CE:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L080811EE
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L080811E8
	movs r0, #0xb
	str r0, [r2]
.L080811E8:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L080811EE:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0808120E
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08081208
	movs r0, #0xc
	str r0, [r2]
.L08081208:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0808120E:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r6, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0808122E
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08081228
	movs r0, #0xd
	str r0, [r2]
.L08081228:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0808122E:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r6, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L0808124E
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08081248
	movs r0, #0xe
	str r0, [r2]
.L08081248:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L0808124E:
	adds r0, r6, #0
	bl func_08080E68
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl func_08081108
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
	ldr r0, .L080812FC @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #4]
	ldr r1, .L08081300 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r2, #0
	str r2, [sp, #0x24]
.L080812BE:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r3, [sp, #4]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080812D8
	b .L08081A16
.L080812D8:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq .L080812E0
	b .L08081A24
.L080812E0:
	ldr r1, .L08081304 @ =0x000006A4
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #5
	bls .L080812EC
	b .L08081A16
.L080812EC:
	lsls r0, r0, #2
	ldr r1, .L08081308 @ =.L0808130C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080812F8: .4byte 0x00001FE4
.L080812FC: .4byte vtable_unk_080E5B80
.L08081300: .4byte 0x00000889
.L08081304: .4byte 0x000006A4
.L08081308: .4byte .L0808130C
.L0808130C: @ jump table
	.4byte .L08081324 @ case 0
	.4byte .L0808170C @ case 1
	.4byte .L08081850 @ case 2
	.4byte .L08081878 @ case 3
	.4byte .L080818A4 @ case 4
	.4byte .L080819DC @ case 5
.L08081324:
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x10]
	cmp r0, r1
	beq .L0808133E
	lsls r0, r1, #2
	adds r0, r0, r6
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl func_08081108
.L0808133E:
	ldr r1, .L0808139C @ =0x000006A1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L0808134A
	b .L080816AC
.L0808134A:
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r3, [r0]
	lsls r0, r3, #3
	ldr r1, .L080813A0 @ =gUnk_080FE8FC
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r5, [r6, #8]
	ldr r1, .L080813A4 @ =0x00001AA8
	adds r0, r5, r1
	ldr r2, [r0]
	movs r4, #0
	add r0, sp, #0x18
	ldr r1, [r0, #4]
	cmp r1, r2
	bls .L0808137A
	movs r4, #1
.L0808137A:
	cmp r4, #0
	beq .L080813B0
	ldr r1, .L080813A8 @ =gUnk_080FE988
	adds r0, r6, #0
	bl func_080CABA0
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0x90
	bl func_08050E50
	ldr r0, .L080813AC @ =0x000006A4
	adds r1, r6, r0
	movs r0, #3
	b .L080816EE
	.align 2, 0
.L0808139C: .4byte 0x000006A1
.L080813A0: .4byte gUnk_080FE8FC
.L080813A4: .4byte 0x00001AA8
.L080813A8: .4byte gUnk_080FE988
.L080813AC: .4byte 0x000006A4
.L080813B0:
	cmp r3, #0xa
	bne .L080813C0
	ldr r2, .L080813BC @ =0x000006A4
	adds r1, r6, r2
	movs r0, #1
	b .L080816EE
	.align 2, 0
.L080813BC: .4byte 0x000006A4
.L080813C0:
	cmp r3, #0xa
	bhs .L080813C6
	b .L08081628
.L080813C6:
	cmp r3, #0xe
	bls .L080813CC
	b .L08081628
.L080813CC:
	movs r0, #0
	mov sb, r0
	mov r8, r0
	ldr r1, .L0808143C @ =0x00001C38
	mov sl, r1
	adds r0, r5, r1
	bl GetEmptyItemSlotCount__C8Rucksack
	adds r5, r0, #0
	ldr r0, [r6, #8]
	movs r7, #0xfa
	lsls r7, r7, #1
	adds r0, r0, r7
	bl GetShelf__9FarmHouse
	cmp r0, #0
	beq .L08081400
	ldr r0, [r6, #8]
	adds r2, r7, #0
	adds r0, r0, r2
	bl GetShelf__9FarmHouse
	ldr r1, [sp, #0x18]
	bl GetAvailableSpaceFor__C5ShelfUi
	mov r8, r0
.L08081400:
	ldr r0, [r6, #8]
	ldr r4, .L08081440 @ =0x00001C2C
	adds r0, r0, r4
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08081414
	movs r0, #1
	mov sb, r0
.L08081414:
	mov r1, sb
	adds r0, r5, r1
	add r0, r8
	str r0, [sp, #0x28]
	cmp r0, #0
	bne .L0808144C
	ldr r1, .L08081444 @ =gUnk_080FE9A8
	adds r0, r6, #0
	bl func_080CABA0
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0x90
	bl func_08050E50
	ldr r0, .L08081448 @ =0x000006A4
	adds r1, r6, r0
	movs r0, #3
	b .L080816EE
	.align 2, 0
.L0808143C: .4byte 0x00001C38
.L08081440: .4byte 0x00001C2C
.L08081444: .4byte gUnk_080FE9A8
.L08081448: .4byte 0x000006A4
.L0808144C:
	ldr r0, [r6, #8]
	add r0, sl
	ldr r1, [sp, #0x18]
	bl GetAmountOfArticles__C8RucksackUi
	adds r5, r0, #0
	movs r1, #0
	mov sb, r1
	mov r8, r1
	ldr r0, [r6, #8]
	adds r0, r0, r7
	bl GetShelf__9FarmHouse
	cmp r0, #0
	beq .L0808147A
	ldr r0, [r6, #8]
	adds r0, r0, r7
	bl GetShelf__9FarmHouse
	ldr r1, [sp, #0x18]
	bl GetAmountOf__C5ShelfUi
	mov r8, r0
.L0808147A:
	ldr r0, [r6, #8]
	adds r0, r0, r4
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080814B8
	ldr r0, [r6, #8]
	adds r0, r0, r4
	bl func_0800F204
	cmp r0, #1
	bne .L080814B8
	ldr r0, [r6, #8]
	adds r0, r0, r4
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x20
	strb r1, [r0]
	bl GetId__C7Article
	movs r2, #0
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bne .L080814B0
	movs r2, #1
.L080814B0:
	cmp r2, #0
	beq .L080814B8
	movs r2, #1
	mov sb, r2
.L080814B8:
	mov r1, sb
	adds r0, r5, r1
	add r0, r8
	add r1, sp, #8
	movs r2, #7
	bl func_0804EC84
	mov r5, sp
	adds r5, #0x21
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl __7ArticleUi
	ldr r2, .L08081610 @ =0x000006AC
	adds r4, r6, r2
	movs r0, #0
	mov sl, r0
	mov r1, sl
	strb r1, [r4]
	adds r0, r5, #0
	bl GetName__C7Article
	mov sb, r0
	adds r7, r4, #0
	mov r5, sb
	adds r0, r7, #0
	bl strlen
	adds r2, r7, r0
	mov r8, r2
	movs r1, #0x63
	subs r4, r1, r0
	cmp r4, #0
	beq .L0808151C
	adds r0, r5, #0
	bl strlen
	adds r5, r0, #0
	cmp r5, r4
	bls .L0808150A
	adds r5, r4, #0
.L0808150A:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r1, r8
	adds r0, r1, r5
	mov r2, sl
	strb r2, [r0]
.L0808151C:
	ldr r0, .L08081614 @ =gUnk_080FE9CC
	mov sb, r0
	adds r0, r7, #0
	bl strlen
	adds r1, r7, r0
	mov r8, r1
	movs r1, #0x63
	subs r4, r1, r0
	cmp r4, #0
	beq .L08081552
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r4
	bls .L08081540
	adds r5, r4, #0
.L08081540:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L08081552:
	ldr r0, .L08081618 @ =gUnk_08117828
	ldr r0, [r0]
	mov sb, r0
	adds r0, r7, #0
	bl strlen
	adds r1, r7, r0
	mov r8, r1
	movs r1, #0x63
	subs r4, r1, r0
	cmp r4, #0
	beq .L0808158A
	mov r0, sb
	bl strlen
	adds r5, r0, #0
	cmp r5, r4
	bls .L08081578
	adds r5, r4, #0
.L08081578:
	mov r0, r8
	mov r1, sb
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L0808158A:
	adds r0, r7, #0
	bl strlen
	adds r1, r7, r0
	mov r8, r1
	movs r1, #0x63
	subs r4, r1, r0
	cmp r4, #0
	beq .L080815BC
	add r0, sp, #8
	bl strlen
	adds r5, r0, #0
	cmp r5, r4
	bls .L080815AA
	adds r5, r4, #0
.L080815AA:
	mov r0, r8
	add r1, sp, #8
	adds r2, r5, #0
	bl memcpy
	mov r2, r8
	adds r1, r2, r5
	movs r0, #0
	strb r0, [r1]
.L080815BC:
	ldr r0, .L0808161C @ =gUnk_08117814
	ldr r0, [r0]
	mov r8, r0
	adds r0, r7, #0
	bl strlen
	adds r7, r7, r0
	movs r1, #0x63
	subs r5, r1, r0
	cmp r5, #0
	beq .L080815F0
	mov r0, r8
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L080815E0
	adds r4, r5, #0
.L080815E0:
	adds r0, r7, #0
	mov r1, r8
	adds r2, r4, #0
	bl memcpy
	adds r1, r7, r4
	movs r0, #0
	strb r0, [r1]
.L080815F0:
	ldr r0, .L08081610 @ =0x000006AC
	adds r1, r6, r0
	adds r0, r6, #0
	bl func_080CABEC
	ldr r1, .L08081620 @ =0x00000684
	adds r0, r6, r1
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x28]
	movs r3, #5
	bl func_080CA8B4
	ldr r2, .L08081624 @ =0x000006A4
	adds r1, r6, r2
	movs r0, #4
	b .L080816EE
	.align 2, 0
.L08081610: .4byte 0x000006AC
.L08081614: .4byte gUnk_080FE9CC
.L08081618: .4byte gUnk_08117828
.L0808161C: .4byte gUnk_08117814
.L08081620: .4byte 0x00000684
.L08081624: .4byte 0x000006A4
.L08081628:
	movs r7, #0
	movs r5, #0
	ldr r0, [r6, #8]
	ldr r1, .L08081690 @ =0x00001C38
	adds r0, r0, r1
	bl GetEmptyItemSlotCount__C8Rucksack
	adds r4, r0, #0
	ldr r0, [r6, #8]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetShelf__9FarmHouse
	cmp r0, #0
	beq .L0808165C
	ldr r0, [r6, #8]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetShelf__9FarmHouse
	ldr r1, [sp, #0x18]
	bl GetAvailableSpaceFor__C5ShelfUi
	adds r5, r0, #0
.L0808165C:
	ldr r0, [r6, #8]
	ldr r2, .L08081694 @ =0x00001C2C
	adds r0, r0, r2
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808166E
	movs r7, #1
.L0808166E:
	adds r0, r4, r7
	cmn r0, r5
	bne .L080816A0
	ldr r1, .L08081698 @ =gUnk_080FE9A8
	adds r0, r6, #0
	bl func_080CABA0
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0x90
	bl func_08050E50
	ldr r2, .L0808169C @ =0x000006A4
	adds r1, r6, r2
	movs r0, #3
	b .L080816EE
	.align 2, 0
.L08081690: .4byte 0x00001C38
.L08081694: .4byte 0x00001C2C
.L08081698: .4byte gUnk_080FE9A8
.L0808169C: .4byte 0x000006A4
.L080816A0:
	ldr r0, .L080816A8 @ =0x000006A4
	adds r1, r6, r0
	movs r0, #1
	b .L080816EE
	.align 2, 0
.L080816A8: .4byte 0x000006A4
.L080816AC:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L080816F0
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080816D4
	ldr r1, .L080816D0 @ =gUnk_080FE9D4
	adds r0, r6, #0
	bl func_080CABA0
	b .L080816DC
	.align 2, 0
.L080816D0: .4byte gUnk_080FE9D4
.L080816D4:
	ldr r1, .L08081704 @ =gUnk_080FE9D4
	adds r0, r6, #0
	bl func_080CABA0
.L080816DC:
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r6, r2
	movs r1, #0x8d
	bl func_08050E50
	ldr r0, .L08081708 @ =0x000006A4
	adds r1, r6, r0
	movs r0, #5
.L080816EE:
	str r0, [r1]
.L080816F0:
	ldr r0, [r6, #0x10]
	str r0, [r6, #0x14]
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl func_080C9020
	b .L08081A16
	.align 2, 0
.L08081704: .4byte gUnk_080FE9D4
.L08081708: .4byte 0x000006A4
.L0808170C:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r4, r6, r2
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L08081794 @ =gUnk_080FE8FC
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [r6, #8]
	ldr r1, .L08081798 @ =0x00001AA8
	adds r0, r0, r1
	ldr r1, [sp, #0x1c]
	bl func_0809ACC0
	adds r0, r6, #0
	bl func_080C8550
	ldr r0, [sp, #0x18]
	cmp r0, #0xa
	bne .L080817A0
	ldr r0, [r6, #8]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl AddRecordPlayer__9FarmHouse
	ldr r1, .L0808179C @ =gUnk_080FEA00
	adds r0, r6, #0
	bl func_080CABA0
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r3, r4, r0
	ldr r0, [r4]
	cmp r0, #0
	beq .L08081782
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	adds r1, r3, #4
	cmp r1, r0
	beq .L0808177C
	cmp r0, r1
	beq .L0808177C
	subs r2, r0, r1
	adds r0, r3, #0
	bl memmove
.L0808177C:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
.L08081782:
	adds r0, r6, #0
	bl func_08080E68
	movs r0, #0
	str r0, [r6, #0x10]
	subs r0, #1
	str r0, [r6, #0x14]
	b .L08081830
	.align 2, 0
.L08081794: .4byte gUnk_080FE8FC
.L08081798: .4byte 0x00001AA8
.L0808179C: .4byte gUnk_080FEA00
.L080817A0:
	ldr r0, [r6, #8]
	ldr r1, .L080817CC @ =0x00001C2C
	adds r0, r0, r1
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080817D0
	ldr r4, [r6, #8]
	ldr r2, .L080817CC @ =0x00001C2C
	adds r4, r4, r2
	mov r5, sp
	adds r5, #0x22
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl __7ArticleUi
	ldrb r1, [r5]
	adds r0, r4, #0
	bl func_0800F3E8
	b .L080817F0
	.align 2, 0
.L080817CC: .4byte 0x00001C2C
.L080817D0:
	ldr r0, [r6, #8]
	ldr r1, .L080817FC @ =0x00001C38
	adds r0, r0, r1
	bl GetEmptyItemSlotCount__C8Rucksack
	cmp r0, #0
	beq .L08081804
	ldr r0, [r6, #8]
	ldr r2, .L080817FC @ =0x00001C38
	adds r0, r0, r2
	ldr r1, [sp, #0x18]
	movs r2, #1
	bl AddAmountOfArticle__8RucksackUiUi
	cmp r0, #0
	bne .L08081830
.L080817F0:
	ldr r1, .L08081800 @ =gUnk_080FEA4C
	adds r0, r6, #0
	bl func_080CABA0
	b .L08081830
	.align 2, 0
.L080817FC: .4byte 0x00001C38
.L08081800: .4byte gUnk_080FEA4C
.L08081804:
	ldr r0, [r6, #8]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetShelf__9FarmHouse
	cmp r0, #0
	beq .L08081830
	ldr r0, [r6, #8]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetShelf__9FarmHouse
	ldr r1, [sp, #0x18]
	movs r2, #1
	bl AddAmountOf__5ShelfUiUi
	ldr r1, .L08081848 @ =gUnk_080FEA5C
	adds r0, r6, #0
	bl func_080CABA0
.L08081830:
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0x8e
	bl func_08050E50
	ldr r2, .L0808184C @ =0x000006A4
	adds r1, r6, r2
	movs r0, #2
	str r0, [r1]
	b .L08081A16
	.align 2, 0
.L08081848: .4byte gUnk_080FEA5C
.L0808184C: .4byte 0x000006A4
.L08081850:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r4, [r0]
	cmp r4, #3
	beq .L0808185E
	b .L08081A16
.L0808185E:
	ldr r1, .L08081870 @ =gUnk_080FEAC0
	adds r0, r6, #0
	bl func_080CABA0
	ldr r2, .L08081874 @ =0x000006A4
	adds r0, r6, r2
	str r4, [r0]
	b .L08081A16
	.align 2, 0
.L08081870: .4byte gUnk_080FEAC0
.L08081874: .4byte 0x000006A4
.L08081878:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L08081886
	b .L08081A16
.L08081886:
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r6, r2
	bl func_08050E5C
	ldr r0, .L080818A0 @ =0x000006A4
	adds r1, r6, r0
	movs r0, #0
	str r0, [r1]
	subs r0, #1
	str r0, [r6, #0x14]
	b .L08081A16
	.align 2, 0
.L080818A0: .4byte 0x000006A4
.L080818A4:
	adds r0, r6, #0
	bl func_080088CC
	adds r4, r0, #0
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq .L08081998
	ldr r1, .L08081950 @ =0x00000684
	adds r0, r6, r1
	ldr r7, [r0, #0x14]
	bl func_080CAAF4
	ldr r0, [r6, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r6
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #3
	ldr r1, .L08081954 @ =gUnk_080FE8FC
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, [r6, #8]
	ldr r1, .L08081958 @ =0x00001AA8
	adds r0, r0, r1
	ldr r1, [sp, #0x1c]
	muls r1, r7, r1
	bl func_0809ACC0
	adds r0, r6, #0
	bl func_080C8550
	ldr r0, [r6, #8]
	ldr r2, .L0808195C @ =0x00001C2C
	adds r0, r0, r2
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0808191A
	subs r7, #1
	ldr r4, [r6, #8]
	ldr r0, .L0808195C @ =0x00001C2C
	adds r4, r4, r0
	mov r5, sp
	adds r5, #0x23
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl __7ArticleUi
	ldrb r1, [r5]
	adds r0, r4, #0
	bl func_0800F3E8
.L0808191A:
	cmp r7, #0
	beq .L08081968
	ldr r0, [r6, #8]
	ldr r1, .L08081960 @ =0x00001C38
	adds r0, r0, r1
	ldr r1, [sp, #0x18]
	adds r2, r7, #0
	bl AddAmountOfArticle__8RucksackUiUi
	adds r7, r0, #0
	cmp r7, #0
	beq .L08081968
	ldr r0, [r6, #8]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetShelf__9FarmHouse
	ldr r1, [sp, #0x18]
	adds r2, r7, #0
	bl AddAmountOf__5ShelfUiUi
	ldr r1, .L08081964 @ =gUnk_080FEA5C
	adds r0, r6, #0
	bl func_080CABA0
	b .L08081970
	.align 2, 0
.L08081950: .4byte 0x00000684
.L08081954: .4byte gUnk_080FE8FC
.L08081958: .4byte 0x00001AA8
.L0808195C: .4byte 0x00001C2C
.L08081960: .4byte 0x00001C38
.L08081964: .4byte gUnk_080FEA5C
.L08081968:
	ldr r1, .L08081990 @ =gUnk_080FEA4C
	adds r0, r6, #0
	bl func_080CABA0
.L08081970:
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r6, r1
	movs r1, #0x8e
	bl func_08050E50
	ldr r2, .L08081994 @ =0x000006A4
	adds r1, r6, r2
	movs r0, #2
	str r0, [r1]
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #1
	strb r0, [r1]
	b .L08081A16
	.align 2, 0
.L08081990: .4byte gUnk_080FEA4C
.L08081994: .4byte 0x000006A4
.L08081998:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L080819C4
	ldr r1, .L080819BC @ =0x00000684
	adds r0, r6, r1
	bl func_080CAAF4
	ldr r2, .L080819C0 @ =0x000006A4
	adds r0, r6, r2
	str r4, [r0]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r6, #0x14]
	b .L08081A16
	.align 2, 0
.L080819BC: .4byte 0x00000684
.L080819C0: .4byte 0x000006A4
.L080819C4:
	ldr r0, .L080819D8 @ =0x00000684
	adds r1, r6, r0
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq .L08081A16
	adds r0, r1, #0
	bl func_080CA98C
	b .L08081A16
	.align 2, 0
.L080819D8: .4byte 0x00000684
.L080819DC:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #3
	bne .L08081A16
	ldr r2, [sp, #4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08081A16
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r1, .L08081A20 @ =0x00000889
	adds r0, r2, #0
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
.L08081A16:
	adds r0, r6, #0
	bl func_080C96C4
	b .L080812BE
	.align 2, 0
.L08081A20: .4byte 0x00000889
.L08081A24:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_08081A40
func_08081A40: @ 0x08081A40
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L08081A6C @ =vtable_unk_080E7CBC
	str r0, [r4]
	movs r0, #0xe2
	lsls r0, r0, #3
	bl __builtin_new
	adds r1, r5, #0
	bl func_08080E20
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
.L08081A6C: .4byte vtable_unk_080E7CBC

