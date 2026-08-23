.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

.L080821A0:
	.byte 0x10, 0xB5, 0x83, 0xB0, 0x04, 0x1C, 0x49, 0x68, 0x68, 0x46, 0xFF, 0xF7, 0xBF, 0xFC, 0x00, 0x9A
	.byte 0x68, 0x46, 0x01, 0x90, 0x02, 0x92, 0x01, 0x1C, 0x00, 0x20, 0x08, 0x60, 0x22, 0x60, 0x00, 0x98
	.byte 0x7E, 0xF7, 0x22, 0xFA, 0x20, 0x1C, 0x03, 0xB0, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

	thumb_func_start func_080821D0
func_080821D0: @ 0x080821D0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r3, #0
	ldr r5, [sp, #0x18]
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	bl func_080C7F58
	ldr r0, .L080821F4 @ =vtable_unk_080E7CE8
	str r0, [r4, #4]
	ldr r0, .L080821F8 @ =0x000006A4
	adds r1, r4, r0
	cmp r5, #0
	beq .L080821FC
	movs r0, #9
	str r0, [r1]
	b .L080821FE
	.align 2, 0
.L080821F4: .4byte vtable_unk_080E7CE8
.L080821F8: .4byte 0x000006A4
.L080821FC:
	str r5, [r1]
.L080821FE:
	movs r1, #1
	cmp r6, #0
	bne .L0808220A
	rsbs r0, r5, #0
	orrs r0, r5
	lsrs r1, r0, #0x1f
.L0808220A:
	movs r2, #0xd5
	lsls r2, r2, #3
	adds r0, r4, r2
	strb r1, [r0]
	movs r0, #0xa
	movs r1, #1
	rsbs r1, r1, #0
.L08082218:
	subs r0, #1
	cmp r0, r1
	bne .L08082218
	ldr r1, .L08082244 @ =0x000048D8
	adds r0, r4, r1
	str r7, [r0]
	ldr r2, .L08082248 @ =0x000048DC
	adds r1, r4, r2
	ldr r0, [sp, #0x14]
	str r0, [r1]
	ldr r1, .L0808224C @ =0x000048E0
	adds r0, r4, r1
	str r5, [r0]
	adds r2, #8
	adds r1, r4, r2
	ldr r0, [sp, #0x1c]
	str r0, [r1]
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08082244: .4byte 0x000048D8
.L08082248: .4byte 0x000048DC
.L0808224C: .4byte 0x000048E0

	thumb_func_start func_08082250
func_08082250: @ 0x08082250
	push {lr}
	ldr r2, .L08082260 @ =vtable_unk_080E7CE8
	str r2, [r0, #4]
	bl func_080C8360
	pop {r0}
	bx r0
	.align 2, 0
.L08082260: .4byte vtable_unk_080E7CE8

	thumb_func_start func_08082264
func_08082264: @ 0x08082264
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xb8
	adds r7, r0, #0
	mov sb, r1
	ldr r1, [sp, #0xd4]
	str r2, [sp, #4]
	mov r0, sp
	movs r6, #0
	movs r4, #0
	strh r3, [r0]
	add r5, sp, #0x10
	adds r0, r5, #0
	bl func_0805E6CC
	add r0, sp, #0x40
	strh r4, [r0]
	strh r4, [r0, #2]
	add r0, sp, #0x44
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	add r0, sp, #0x58
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r6, [r0, #0x10]
	strb r6, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r6, [r0, #0x18]
	add r0, sp, #0x74
	strb r6, [r0]
	add r5, sp, #0x78
	str r4, [sp, #0x78]
	strh r4, [r5, #4]
	add r0, sp, #0x80
	mov r8, r0
	str r4, [r0]
	strh r4, [r0, #4]
	add r6, sp, #0x88
	str r4, [r6]
	strh r4, [r6, #4]
	add r0, sp, #0x90
	str r4, [r0]
	strh r4, [r0, #4]
	add r4, sp, #0x44
	adds r0, r4, #0
	mov r1, sb
	bl func_0805E860
	ldr r1, [sp, #0x44]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x48]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x98
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x98
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	ldm r4!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	ldm r4!, {r0, r1, r2}
	stm r5!, {r0, r1, r2}
	ldm r4!, {r0, r3}
	stm r5!, {r0, r3}
	mov r1, r8
	ldr r0, [r1]
	str r0, [sp, #8]
	ldr r0, [r6]
	str r0, [sp, #0xc]
	adds r1, r7, #0
	adds r1, #0x20
	ldr r0, [r7, #0x20]
	cmp r0, #0x27
	bhi .L08082334
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L0808232E
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0808232E:
	ldr r0, [r7, #0x20]
	adds r0, #1
	str r0, [r7, #0x20]
.L08082334:
	ldr r0, .L08082348 @ =vtable_unk_080E5A28
	str r0, [sp, #0x10]
	add sp, #0xb8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08082348: .4byte vtable_unk_080E5A28

	thumb_func_start func_0808234C
func_0808234C: @ 0x0808234C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe0
	str r0, [sp, #0xc4]
	mov r8, r1
	mov sl, r2
	str r3, [sp, #0xc8]
	ldr r1, .L0808245C @ =gUnk_086678A0
	add r0, sp, #8
	bl func_0805E6CC
	add r0, sp, #0x38
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #2]
	add r0, sp, #0x3c
	add r1, sp, #8
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	add r0, sp, #0x50
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
	add r0, sp, #0x6c
	strb r5, [r0]
	add r5, sp, #0x70
	str r4, [sp, #0x70]
	strh r4, [r5, #4]
	add r0, sp, #0x78
	str r4, [sp, #0x78]
	strh r4, [r0, #4]
	add r0, sp, #0x80
	str r4, [sp, #0x80]
	strh r4, [r0, #4]
	add r0, sp, #0x88
	str r4, [r0]
	strh r4, [r0, #4]
	add r6, sp, #0x3c
	add r4, sp, #0xb0
	adds r0, r4, #0
	mov r1, r8
	bl __4ToolUi
	adds r0, r4, #0
	bl GetIconId__C4Tool
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	bl func_0805E860
	ldr r1, [sp, #0x3c]
	ldr r3, [r1]
	ldrh r2, [r6, #0xc]
	lsls r2, r2, #2
	ldr r0, [sp, #0x40]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x90
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x90
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r0, r4, #0
	ldm r0!, {r1, r2, r3}
	stm r5!, {r1, r2, r3}
	ldm r0!, {r1, r2, r7}
	stm r5!, {r1, r2, r7}
	ldm r0!, {r3, r7}
	stm r5!, {r3, r7}
	mov r0, sl
	lsls r5, r0, #1
	movs r1, #0xc3
	lsls r1, r1, #2
	adds r1, r1, r5
	mov sb, r1
	ldr r0, [sp, #0xc4]
	bl func_08008910
	ldr r1, [sp, #0x78]
	adds r6, r0, #0
	mov r3, sb
	lsls r2, r3, #5
	movs r7, #0xc0
	lsls r7, r7, #0x13
	adds r2, r2, r7
	adds r0, r4, #0
	movs r3, #0x80
	bl func_08008F0C
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08082460
	cmp r1, #0
	beq .L08082440
	adds r0, r1, #0
	add r1, sp, #0x90
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08082440:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	str r5, [sp, #0xd0]
	mov r5, sl
	lsrs r5, r5, #1
	mov sl, r5
	ldr r7, [sp, #0xc8]
	lsls r7, r7, #6
	str r7, [sp, #0xd4]
	mov r0, sb
	lsls r0, r0, #0x10
	str r0, [sp, #0xcc]
	b .L08082540
	.align 2, 0
.L0808245C: .4byte gUnk_086678A0
.L08082460:
	str r1, [sp, #0xd8]
	movs r0, #1
	add r1, sp, #0xb8
	str r0, [r1]
	ldr r0, [r6]
	ldr r2, [sp, #0xd8]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xb4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L0808247C
	adds r0, r1, #0
.L0808247C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0808249A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L0808249E
	mov r0, r8
	bl func_080D3BC0
	b .L0808249E
.L0808249A:
	movs r0, #0
	mov r8, r0
.L0808249E:
	adds r5, r0, #0
	str r5, [sp, #0xdc]
	ldr r2, [r6]
	adds r3, r5, #0
	mov r4, sl
	lsls r4, r4, #1
	str r4, [sp, #0xd0]
	mov r5, sl
	lsrs r5, r5, #1
	mov sl, r5
	ldr r7, [sp, #0xc8]
	lsls r7, r7, #6
	str r7, [sp, #0xd4]
	mov r0, sb
	lsls r0, r0, #0x10
	str r0, [sp, #0xcc]
	ldr r1, [sp, #0xd8]
	cmp r2, r1
	beq .L080824DE
.L080824C4:
	cmp r3, #0
	beq .L080824D4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080824D4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd8]
	cmp r2, r0
	bne .L080824C4
.L080824DE:
	adds r5, r3, #0
	ldr r1, [sp, #0xb8]
	cmp r1, #1
	bne .L080824FA
	cmp r5, #0
	beq .L080824F6
	adds r0, r5, #0
	add r1, sp, #0x90
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080824F6:
	adds r5, #0x10
	b .L0808251C
.L080824FA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L0808251A
.L08082502:
	cmp r2, #0
	beq .L08082512
	adds r0, r2, #0
	add r1, sp, #0x90
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08082512:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08082502
.L0808251A:
	adds r5, r2, #0
.L0808251C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0808252C
.L08082526:
	adds r1, #0x10
	cmp r1, r2
	bne .L08082526
.L0808252C:
	cmp r0, #0
	beq .L08082534
	bl free
.L08082534:
	ldr r0, [sp, #0xdc]
	add r0, r8
	ldr r7, [sp, #0xdc]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L08082540:
	ldr r0, [sp, #0xc4]
	bl func_08008910
	ldr r1, [sp, #0x80]
	adds r6, r0, #0
	mov r0, sl
	lsls r2, r0, #5
	ldr r3, .L08082580 @ =0x05000020
	adds r2, r2, r3
	add r0, sp, #0x90
	movs r3, #0x20
	bl func_08008F0C
	add r4, sp, #0x90
	mov r8, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08082584
	cmp r1, #0
	beq .L08082576
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08082576:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0808264C
	.align 2, 0
.L08082580: .4byte 0x05000020
.L08082584:
	str r1, [sp, #0xd8]
	movs r0, #1
	add r1, sp, #0xc0
	str r0, [r1]
	ldr r0, [r6]
	ldr r3, [sp, #0xd8]
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xbc
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080825A0
	adds r0, r1, #0
.L080825A0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080825BE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080825C2
	mov r0, sb
	bl func_080D3BC0
	b .L080825C2
.L080825BE:
	movs r0, #0
	mov sb, r0
.L080825C2:
	adds r5, r0, #0
	str r5, [sp, #0xdc]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0xd8]
	cmp r2, r4
	beq .L080825EA
.L080825D0:
	cmp r3, #0
	beq .L080825E0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080825E0:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0xd8]
	cmp r2, r5
	bne .L080825D0
.L080825EA:
	adds r5, r3, #0
	ldr r1, [sp, #0xc0]
	cmp r1, #1
	bne .L08082606
	cmp r5, #0
	beq .L08082602
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08082602:
	adds r5, #0x10
	b .L08082628
.L08082606:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08082626
.L0808260E:
	cmp r2, #0
	beq .L0808261E
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0808261E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0808260E
.L08082626:
	adds r5, r2, #0
.L08082628:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08082638
.L08082632:
	adds r1, #0x10
	cmp r1, r2
	bne .L08082632
.L08082638:
	cmp r0, #0
	beq .L08082640
	bl free
.L08082640:
	ldr r0, [sp, #0xdc]
	add r0, sb
	ldr r1, [sp, #0xdc]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0808264C:
	ldr r2, [sp, #0xc4]
	ldr r0, [r2, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r3, [sp, #0xd4]
	adds r0, r0, r3
	ldr r4, [sp, #0xd0]
	adds r0, r0, r4
	ldr r5, [sp, #0xcc]
	lsrs r1, r5, #0x10
	mov r2, sl
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r2, #0x20
	str r2, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r0, .L08082688 @ =vtable_unk_080E5A28
	str r0, [sp, #8]
	add sp, #0xe0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08082688: .4byte vtable_unk_080E5A28

	thumb_func_start func_0808268C
func_0808268C: @ 0x0808268C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r6, r0, #0
	movs r0, #4
	str r0, [sp, #0x44]
	ldr r0, [r6, #0x1c]
	bl func_08075DD4
	adds r3, r6, #0
	adds r3, #0x20
	adds r5, r6, #0
	adds r5, #0x24
	ldr r0, [r6, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r0, r3, r0
	adds r2, r0, #0
	adds r1, r5, #0
	ldr r4, [r3]
	cmp r1, r2
	beq .L080826C4
.L080826BE:
	adds r1, #0x10
	cmp r1, r2
	bne .L080826BE
.L080826C4:
	subs r0, r0, r5
	asrs r0, r0, #4
	subs r0, r4, r0
	str r0, [r3]
	movs r1, #0
	str r1, [sp, #0x48]
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r6, r2
	ldr r0, [r0]
	cmp r1, r0
	blo .L080826DE
	b .L08082A66
.L080826DE:
	ldr r3, [sp, #0x48]
	lsls r0, r3, #2
	adds r0, r0, r6
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r4, r0, r5
	ldr r3, [r4]
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r2, .L08082750 @ =gUnk_080FED8C
	add r0, sp, #0xc
	adds r1, r1, r2
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldm r1!, {r2, r7}
	stm r0!, {r2, r7}
	lsls r0, r3, #1
	adds r1, r0, r3
	lsls r0, r1, #4
	adds r0, #0xd0
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne .L08082754
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #0x18]
	ldr r3, [sp, #0x44]
	lsls r4, r3, #6
	adds r1, r1, r4
	adds r1, #0x32
	ldr r0, [sp, #0x14]
	movs r5, #0x20
	str r5, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0x18]
	adds r0, r0, r4
	adds r0, #0x34
	movs r7, #0
	str r7, [sp]
	str r5, [sp, #4]
	movs r1, #0x20
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	ldr r0, [sp, #0x44]
	adds r0, #2
	str r0, [sp, #0x58]
	ldr r1, [sp, #0x48]
	adds r1, #1
	str r1, [sp, #0x50]
	b .L08082946
	.align 2, 0
.L08082750: .4byte gUnk_080FED8C
.L08082754:
	lsls r1, r1, #7
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r2, .L08082818 @ =0x000006AC
	adds r1, r1, r2
	add r0, sp, #0x30
	movs r3, #0x18
	strh r3, [r0]
	movs r5, #2
	strh r5, [r0, #2]
	ldr r0, [sp, #0x30]
	adds r1, #4
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #7
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r7, .L08082818 @ =0x000006AC
	adds r1, r1, r7
	ldr r2, [sp, #0x10]
	movs r0, #1
	mov r8, r0
	add r0, sp, #0x34
	movs r3, #0x18
	strh r3, [r0]
	strh r5, [r0, #2]
	ldr r0, [sp, #0x34]
	adds r1, #4
	str r2, [sp]
	movs r5, #0
	str r5, [sp, #4]
	mov r7, r8
	str r7, [sp, #8]
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r0, r6, #0
	bl func_08008910
	ldr r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #7
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	ldr r2, .L08082818 @ =0x000006AC
	adds r1, r1, r2
	adds r1, #4
	adds r5, r0, #0
	ldr r3, [sp, #0x4c]
	lsls r2, r3, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r2, r2, r4
	add r0, sp, #0x20
	movs r3, #0xc0
	lsls r3, r3, #3
	bl func_08008F0C
	add r7, sp, #0x20
	mov sb, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0808281C
	cmp r1, #0
	beq .L080827F6
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080827F6:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	ldr r5, [sp, #0x44]
	lsls r5, r5, #6
	str r5, [sp, #0x5c]
	ldr r7, [sp, #0x4c]
	lsls r7, r7, #0x10
	str r7, [sp, #0x54]
	ldr r0, [sp, #0x44]
	adds r0, #2
	str r0, [sp, #0x58]
	ldr r1, [sp, #0x48]
	adds r1, #1
	str r1, [sp, #0x50]
	b .L08082904
	.align 2, 0
.L08082818: .4byte 0x000006AC
.L0808281C:
	str r1, [sp, #0x60]
	mov r2, r8
	str r2, [sp, #0x3c]
	ldr r0, [r5]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r1, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs .L08082836
	adds r0, r1, #0
.L08082836:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08082854
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08082858
	mov r0, sl
	bl func_080D3BC0
	b .L08082858
.L08082854:
	movs r0, #0
	mov sl, r0
.L08082858:
	adds r4, r0, #0
	mov r8, r4
	ldr r2, [r5]
	mov ip, r8
	ldr r4, [sp, #0x44]
	lsls r4, r4, #6
	str r4, [sp, #0x5c]
	ldr r7, [sp, #0x4c]
	lsls r7, r7, #0x10
	str r7, [sp, #0x54]
	ldr r0, [sp, #0x44]
	adds r0, #2
	str r0, [sp, #0x58]
	ldr r1, [sp, #0x48]
	adds r1, #1
	str r1, [sp, #0x50]
	ldr r3, [sp, #0x60]
	cmp r2, r3
	beq .L0808289C
.L0808287E:
	mov r4, ip
	cmp r4, #0
	beq .L08082890
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08082890:
	adds r2, #0x10
	movs r7, #0x10
	add ip, r7
	ldr r0, [sp, #0x60]
	cmp r2, r0
	bne .L0808287E
.L0808289C:
	mov r4, ip
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L080828B8
	cmp r4, #0
	beq .L080828B4
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080828B4:
	adds r4, #0x10
	b .L080828E0
.L080828B8:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080828DE
.L080828C0:
	cmp r2, #0
	beq .L080828D0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080828D0:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L080828C0
.L080828DE:
	adds r4, r2, #0
.L080828E0:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080828F0
.L080828EA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080828EA
.L080828F0:
	cmp r0, #0
	beq .L080828F8
	bl free
.L080828F8:
	mov r0, sl
	add r0, r8
	mov r2, r8
	str r2, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L08082904:
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bne .L08082928
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r3, [sp, #0x5c]
	adds r0, r0, r3
	adds r0, #4
	ldr r4, [sp, #0x54]
	lsrs r1, r4, #0x10
	str r2, [sp]
	movs r5, #0x20
	str r5, [sp, #4]
	movs r2, #0x18
	movs r3, #2
	bl func_0804E9F4
	b .L08082946
.L08082928:
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0x18]
	ldr r7, [sp, #0x5c]
	adds r0, r0, r7
	adds r0, #8
	ldr r2, [sp, #0x54]
	lsrs r1, r2, #0x10
	movs r3, #0
	str r3, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r2, #0x18
	movs r3, #2
	bl func_0804E9F4
.L08082946:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq .L08082960
	cmp r0, #1
	bgt .L08082956
	cmp r0, #0
	beq .L08082A08
	b .L08082A50
.L08082956:
	cmp r0, #2
	beq .L08082988
	cmp r0, #3
	beq .L080829B0
	b .L08082A50
.L08082960:
	add r4, sp, #0x40
	ldr r1, [sp, #0xc]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetIconId__C4Tool
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r5, [sp, #0x44]
	lsls r3, r5, #3
	ldr r0, .L08082984 @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	b .L080829F2
	.align 2, 0
.L08082984: .4byte gUnk_086678A0
.L08082988:
	mov r4, sp
	adds r4, #0x41
	ldr r1, [sp, #0xc]
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetIconId__C7Article
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r7, [sp, #0x44]
	lsls r3, r7, #3
	ldr r0, .L080829AC @ =gUnk_086678A0
	str r0, [sp]
	adds r0, r6, #0
	b .L080829F2
	.align 2, 0
.L080829AC: .4byte gUnk_086678A0
.L080829B0:
	ldr r0, [sp, #0xc]
	cmp r0, #4
	bne .L080829C8
	ldr r0, [sp, #0x44]
	lsls r3, r0, #3
	ldr r0, .L080829FC @ =gUnk_0875352C
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x10
	bl func_08082264
.L080829C8:
	ldr r0, [sp, #0xc]
	cmp r0, #5
	bne .L080829E0
	ldr r1, [sp, #0x44]
	lsls r3, r1, #3
	ldr r0, .L08082A00 @ =gUnk_0874EE38
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x10
	bl func_08082264
.L080829E0:
	ldr r0, [sp, #0xc]
	cmp r0, #6
	bne .L08082A50
	ldr r2, [sp, #0x44]
	lsls r3, r2, #3
	ldr r0, .L08082A04 @ =gUnk_08755154
	str r0, [sp]
	adds r0, r6, #0
	movs r1, #0
.L080829F2:
	movs r2, #0x10
	bl func_08082264
	b .L08082A50
	.align 2, 0
.L080829FC: .4byte gUnk_0875352C
.L08082A00: .4byte gUnk_0874EE38
.L08082A04: .4byte gUnk_08755154
.L08082A08:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #2
	ldr r3, [sp, #0x44]
	bl func_0808234C
	adds r0, r6, #0
	movs r1, #8
	movs r2, #4
	ldr r3, [sp, #0x44]
	bl func_0808234C
	adds r0, r6, #0
	movs r1, #0x10
	movs r2, #6
	ldr r3, [sp, #0x44]
	bl func_0808234C
	adds r0, r6, #0
	movs r1, #0x18
	movs r2, #8
	ldr r3, [sp, #0x44]
	bl func_0808234C
	adds r0, r6, #0
	movs r1, #0x20
	movs r2, #0xa
	ldr r3, [sp, #0x44]
	bl func_0808234C
	adds r0, r6, #0
	movs r1, #0x28
	movs r2, #0xc
	ldr r3, [sp, #0x44]
	bl func_0808234C
.L08082A50:
	ldr r3, [sp, #0x58]
	str r3, [sp, #0x44]
	ldr r4, [sp, #0x50]
	str r4, [sp, #0x48]
	movs r5, #0xa9
	lsls r5, r5, #2
	adds r0, r6, r5
	ldr r0, [r0]
	cmp r4, r0
	bhs .L08082A66
	b .L080826DE
.L08082A66:
	movs r0, #0
	strh r0, [r6, #0xc]
	movs r7, #0xc9
	lsls r7, r7, #3
	adds r1, r6, r7
	movs r0, #0x28
	str r0, [r1]
	ldr r0, [r6, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r6, r2]
	bl func_08075DB8
	ldr r0, [r6, #0x1c]
	ldr r1, [sp, #0x44]
	adds r1, #8
	lsls r1, r1, #0x13
	asrs r1, r1, #0x10
	bl func_08075E24
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_08082A9C
func_08082A9C: @ 0x08082A9C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0
	mov r8, r0
	ldr r0, [r4, #8]
	ldr r1, .L08082B2C @ =0x00001C38
	adds r0, r0, r1
	adds r1, r5, #0
	bl GetFirstSlotWithArticle__C8RucksackUi
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne .L08082B08
	ldr r0, [r4, #8]
	ldr r7, .L08082B30 @ =0x00001C2C
	adds r0, r0, r7
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08082B02
	ldr r0, [r4, #8]
	adds r1, r7, #0
	adds r0, r0, r1
	bl func_0800F204
	cmp r0, #1
	bne .L08082B02
	ldr r0, [r4, #8]
	adds r0, r0, r7
	bl func_0800F258
	mov r1, sp
	strb r0, [r1]
	mov r0, sp
	bl GetId__C7Article
	movs r1, #0
	cmp r0, r5
	bne .L08082AFA
	movs r1, #1
.L08082AFA:
	cmp r1, #0
	beq .L08082B02
	movs r0, #1
	mov r8, r0
.L08082B02:
	mov r1, r8
	cmp r1, #0
	beq .L08082BD0
.L08082B08:
	ldr r0, [r4, #8]
	ldr r1, .L08082B34 @ =0x00001AA8
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0
	cmp r6, r0
	bls .L08082B18
	movs r1, #1
.L08082B18:
	cmp r1, #0
	beq .L08082B60
	cmp r5, #0x17
	bne .L08082B3C
	ldr r1, .L08082B38 @ =gUnk_080FEE68
	adds r0, r4, #0
	bl func_080CABA0
	b .L08082B44
	.align 2, 0
.L08082B2C: .4byte 0x00001C38
.L08082B30: .4byte 0x00001C2C
.L08082B34: .4byte 0x00001AA8
.L08082B38: .4byte gUnk_080FEE68
.L08082B3C:
	ldr r1, .L08082B58 @ =gUnk_080FEED8
	adds r0, r4, #0
	bl func_080CABA0
.L08082B44:
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0xa8
	bl func_08050E50
	ldr r0, .L08082B5C @ =0x000006A4
	adds r1, r4, r0
	movs r0, #3
	b .L08082BFE
	.align 2, 0
.L08082B58: .4byte gUnk_080FEED8
.L08082B5C: .4byte 0x000006A4
.L08082B60:
	ldr r1, .L08082B84 @ =0x000048DC
	adds r0, r4, r1
	str r5, [r0]
	cmp r5, #0x17
	bne .L08082B94
	ldr r0, .L08082B88 @ =0x000048E4
	adds r1, r4, r0
	movs r0, #5
	str r0, [r1]
	ldr r1, .L08082B8C @ =0x000048E0
	adds r0, r4, r1
	str r6, [r0]
	ldr r1, .L08082B90 @ =gUnk_080FEF44
	adds r0, r4, #0
	bl func_080CABA0
	b .L08082BAA
	.align 2, 0
.L08082B84: .4byte 0x000048DC
.L08082B88: .4byte 0x000048E4
.L08082B8C: .4byte 0x000048E0
.L08082B90: .4byte gUnk_080FEF44
.L08082B94:
	ldr r0, .L08082BC0 @ =0x000048E4
	adds r1, r4, r0
	movs r0, #1
	str r0, [r1]
	ldr r1, .L08082BC4 @ =0x000048E0
	adds r0, r4, r1
	str r6, [r0]
	ldr r1, .L08082BC8 @ =gUnk_080FEF78
	adds r0, r4, #0
	bl func_080CABA0
.L08082BAA:
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0xa9
	bl func_08050E50
	ldr r0, .L08082BCC @ =0x000006A4
	adds r1, r4, r0
	movs r0, #5
	b .L08082BFE
	.align 2, 0
.L08082BC0: .4byte 0x000048E4
.L08082BC4: .4byte 0x000048E0
.L08082BC8: .4byte gUnk_080FEF78
.L08082BCC: .4byte 0x000006A4
.L08082BD0:
	cmp r5, #0x17
	bne .L08082BE4
	ldr r1, .L08082BE0 @ =gUnk_080FEFAC
	adds r0, r4, #0
	bl func_080CABA0
	b .L08082BEC
	.align 2, 0
.L08082BE0: .4byte gUnk_080FEFAC
.L08082BE4:
	ldr r1, .L08082C0C @ =gUnk_080FF040
	adds r0, r4, #0
	bl func_080CABA0
.L08082BEC:
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #0xa8
	bl func_08050E50
	ldr r0, .L08082C10 @ =0x000006A4
	adds r1, r4, r0
	movs r0, #2
.L08082BFE:
	str r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08082C0C: .4byte gUnk_080FF040
.L08082C10: .4byte 0x000006A4

	thumb_func_start func_08082C14
func_08082C14: @ 0x08082C14
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r1, .L08082C40 @ =gUnk_080FED8C
	adds r2, r0, r1
	mov r1, sp
	adds r0, r2, #0
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r0, [sp, #0xc]
	cmp r0, #1
	beq .L08082C4A
	cmp r0, #1
	bgt .L08082C44
	cmp r0, #0
	beq .L08082C64
	b .L08082C6C
	.align 2, 0
.L08082C40: .4byte gUnk_080FED8C
.L08082C44:
	cmp r0, #3
	bgt .L08082C6C
	b .L08082C64
.L08082C4A:
	add r4, sp, #0x14
	ldr r1, [r2]
	adds r0, r4, #0
	bl __4ToolUi
	adds r0, r4, #0
	bl GetDesc__C4Tool
	adds r1, r0, #0
	adds r0, r5, #0
	bl func_080CABEC
	b .L08082C6C
.L08082C64:
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	bl func_080CABEC
.L08082C6C:
	add sp, #0x18
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start func_08082C74
func_08082C74: @ 0x08082C74
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	movs r7, #1
	ldr r0, [r4, #8]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r6, #0
	bl GetFirstSlotWith__C9ToolChestUi
	adds r5, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r5, r0
	bne .L08082CA6
	ldr r0, [r4, #8]
	ldr r1, .L08082CE4 @ =0x00001C38
	adds r0, r0, r1
	adds r1, r6, #0
	bl GetFirstSlotWithTool__C8RucksackUi
	cmp r0, r5
	beq .L08082CA8
.L08082CA6:
	movs r7, #0
.L08082CA8:
	ldr r0, [r4, #8]
	ldr r1, .L08082CE8 @ =0x00001C34
	adds r0, r0, r1
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08082CDA
	ldr r0, [r4, #8]
	ldr r1, .L08082CE8 @ =0x00001C34
	adds r0, r0, r1
	bl GetTool__C9ToolStack
	mov r1, sp
	strb r0, [r1]
	mov r0, sp
	bl GetId__C4Tool
	movs r1, #0
	cmp r0, r6
	bne .L08082CD4
	movs r1, #1
.L08082CD4:
	cmp r1, #0
	beq .L08082CDA
	movs r7, #0
.L08082CDA:
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08082CE4: .4byte 0x00001C38
.L08082CE8: .4byte 0x00001C34

	thumb_func_start func_08082CEC
func_08082CEC: @ 0x08082CEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x50
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080C85A0
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08082D22
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08082D1C
	movs r0, #0
	str r0, [r2]
.L08082D1C:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08082D22:
	adds r0, r7, #0
	movs r1, #0x46
	bl func_08082C74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08082D50
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08082D50
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08082D4A
	movs r0, #1
	str r0, [r2]
.L08082D4A:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08082D50:
	adds r0, r7, #0
	movs r1, #0x47
	bl func_08082C74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08082D7E
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08082D7E
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08082D78
	movs r0, #2
	str r0, [r2]
.L08082D78:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08082D7E:
	adds r0, r7, #0
	movs r1, #0x48
	bl func_08082C74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08082DAC
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r1, r7, r4
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08082DAC
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08082DA6
	movs r0, #3
	str r0, [r2]
.L08082DA6:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08082DAC:
	ldr r0, [r7, #8]
	movs r5, #0x82
	lsls r5, r5, #3
	adds r0, r0, r5
	bl GetUpgradeLevel__C4Coop
	cmp r0, #0
	beq .L08082DEA
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl method_0800C5C4__C4Coop
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08082DEA
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08082DEA
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08082DE4
	movs r0, #4
	str r0, [r2]
.L08082DE4:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08082DEA:
	ldr r0, [r7, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUpgradeLevel__C4Barn
	cmp r0, #0
	beq .L08082E5E
	ldr r0, [r7, #8]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r0, r0, r2
	bl method_0800CF00__C4Barn
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08082E2C
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08082E2C
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08082E26
	movs r0, #5
	str r0, [r2]
.L08082E26:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08082E2C:
	ldr r0, [r7, #8]
	movs r4, #0xbe
	lsls r4, r4, #3
	adds r0, r0, r4
	bl method_0800CF08__C4Barn
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08082E5E
	movs r5, #0xa9
	lsls r5, r5, #2
	adds r1, r7, r5
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08082E5E
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08082E58
	movs r0, #6
	str r0, [r2]
.L08082E58:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08082E5E:
	movs r6, #0xa9
	lsls r6, r6, #2
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08082E7E
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08082E78
	movs r0, #7
	str r0, [r2]
.L08082E78:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08082E7E:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08082E9E
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08082E98
	movs r0, #8
	str r0, [r2]
.L08082E98:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08082E9E:
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r1, r7, r2
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08082EBE
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08082EB8
	movs r0, #9
	str r0, [r2]
.L08082EB8:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08082EBE:
	movs r3, #0xa9
	lsls r3, r3, #2
	adds r1, r7, r3
	ldr r0, [r1]
	cmp r0, #0x27
	bhi .L08082EDE
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r1, r0
	cmp r2, #0
	beq .L08082ED8
	movs r0, #0xa
	str r0, [r2]
.L08082ED8:
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
.L08082EDE:
	adds r0, r7, #0
	bl func_0808268C
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r4, #0xaa
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_08082C14
	adds r0, r7, #0
	bl func_08008918
	add r6, sp, #0x24
	movs r1, #0x3f
	strh r1, [r6]
	adds r0, #0x50
	strh r1, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L08082F84 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0x28]
	ldr r1, .L08082F88 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r5, #0
	mov r8, r5
	mov sb, r6

	thumb_func_start sub_08082F50
sub_08082F50: @ 0x08082F50
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r3, [sp, #0x28]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08082F6C
	bl .L08083A64
.L08082F6C:
	mov r6, r8
	cmp r6, #0
	beq .L08082F8C
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	movs r0, #0
	bl .L08083A6E
	.align 2, 0
.L08082F84: .4byte vtable_unk_080E5B80
.L08082F88: .4byte 0x00000889
.L08082F8C:
	ldr r1, .L08082FA4 @ =0x000006A4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #0xc
	bls .L08082F9A
	bl .L08083A64
.L08082F9A:
	lsls r0, r0, #2
	ldr r1, .L08082FA8 @ =.L08082FAC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08082FA4: .4byte 0x000006A4
.L08082FA8: .4byte .L08082FAC
.L08082FAC: @ jump table
	.4byte .L08082FE0 @ case 0
	.4byte .L080831BC @ case 1
	.4byte .L080832E8 @ case 2
	.4byte .L08083318 @ case 3
	.4byte .L0808333C @ case 4
	.4byte .L08083368 @ case 5
	.4byte .L080833B0 @ case 6
	.4byte .L08083A64 @ case 7
	.4byte .L08083528 @ case 8
	.4byte .L080837A8 @ case 9
	.4byte .L080838B8 @ case 10
	.4byte .L080839EC @ case 11
	.4byte .L08083A2C @ case 12
.L08082FE0:
	ldr r0, [r7, #0x14]
	ldr r1, [r7, #0x10]
	cmp r0, r1
	beq .L08082FFA
	lsls r0, r1, #2
	adds r0, r0, r7
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_08082C14
.L08082FFA:
	ldr r3, .L08083038 @ =0x000006A1
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08083006
	b .L08083158
.L08083006:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r4, #0xaa
	lsls r4, r4, #2
	adds r0, r0, r4
	ldr r3, [r0]
	lsls r4, r3, #2
	adds r1, r4, r3
	lsls r1, r1, #2
	ldr r2, .L0808303C @ =gUnk_080FED8C
	add r0, sp, #0x10
	adds r1, r1, r2
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldm r1!, {r5, r6}
	stm r0!, {r5, r6}
	cmp r3, #0xa
	bls .L0808302E
	b .L0808319C
.L0808302E:
	ldr r0, .L08083040 @ =0x08083044
	adds r0, r4, r0
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08083038: .4byte 0x000006A1
.L0808303C: .4byte gUnk_080FED8C
.L08083040: .4byte 0x08083044
.L08083044:
	.byte 0x70, 0x30, 0x08, 0x08, 0x94, 0x30, 0x08, 0x08, 0x94, 0x30, 0x08, 0x08
	.byte 0x94, 0x30, 0x08, 0x08, 0x40, 0x31, 0x08, 0x08, 0x40, 0x31, 0x08, 0x08, 0x40, 0x31, 0x08, 0x08
	.byte 0x4C, 0x31, 0x08, 0x08, 0x4C, 0x31, 0x08, 0x08, 0x4C, 0x31, 0x08, 0x08, 0x4C, 0x31, 0x08, 0x08
	.byte 0x06, 0x49, 0x38, 0x1C, 0x47, 0xF0, 0x94, 0xFD, 0xD2, 0x21, 0x89, 0x00, 0x78, 0x18, 0xA8, 0x21
	.byte 0xCD, 0xF7, 0xE6, 0xFE, 0x02, 0x4A, 0xB9, 0x18, 0x08, 0x20, 0x86, 0xE0, 0xD0, 0xF0, 0x0F, 0x08
	.byte 0xA4, 0x06, 0x00, 0x00, 0xBB, 0x68, 0x0C, 0x4C, 0x18, 0x19, 0x01, 0x68, 0x00, 0x22, 0x06, 0x98
	.byte 0x88, 0x42, 0x00, 0xD9, 0x01, 0x22, 0x00, 0x2A, 0x14, 0xD0, 0x08, 0x49, 0x38, 0x1C, 0x47, 0xF0
	.byte 0x77, 0xFD, 0xD2, 0x25, 0xAD, 0x00, 0x78, 0x19, 0xA8, 0x21, 0xCD, 0xF7, 0xC9, 0xFE, 0x04, 0x4E
	.byte 0xB9, 0x19, 0x04, 0x20, 0x69, 0xE0, 0x00, 0x00, 0xA8, 0x1A, 0x00, 0x00, 0x0C, 0xF1, 0x0F, 0x08
	.byte 0xA4, 0x06, 0x00, 0x00, 0x13, 0x49, 0x58, 0x18, 0x04, 0x99, 0x8C, 0xF7, 0x59, 0xFC, 0x05, 0x1C
	.byte 0xB8, 0x68, 0x11, 0x4A, 0x80, 0x18, 0x8A, 0xF7, 0xA5, 0xFD, 0x00, 0x06, 0x00, 0x0E, 0x44, 0x42
	.byte 0x04, 0x43, 0xE4, 0x0F, 0xB8, 0x68, 0xE0, 0x23, 0x9B, 0x00, 0xC0, 0x18, 0x04, 0x99, 0x88, 0xF7
	.byte 0x87, 0xF9, 0x2D, 0x19, 0xC5, 0x42, 0x15, 0xD1, 0xD2, 0x24, 0xA4, 0x00, 0x38, 0x19, 0xA8, 0x21
	.byte 0xCD, 0xF7, 0x9E, 0xFE, 0x05, 0x49, 0x38, 0x1C, 0x47, 0xF0, 0x42, 0xFD, 0x04, 0x4D, 0x79, 0x19
	.byte 0x04, 0x20, 0x3A, 0xE0, 0x38, 0x1C, 0x00, 0x00, 0x34, 0x1C, 0x00, 0x00, 0x38, 0xF1, 0x0F, 0x08
	.byte 0xA4, 0x06, 0x00, 0x00, 0x01, 0x4E, 0xB9, 0x19, 0x01, 0x20, 0x2E, 0xE0, 0xA4, 0x06, 0x00, 0x00
	.byte 0x06, 0x9A, 0x38, 0x1C, 0x17, 0x21, 0xFF, 0xF7, 0xA9, 0xFC, 0x27, 0xE0, 0x06, 0x9A, 0x38, 0x1C
	.byte 0x16, 0x21, 0xFF, 0xF7, 0xA3, 0xFC, 0x21, 0xE0
.L08083158:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0808319C
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08083180
	ldr r1, .L0808317C @ =gUnk_080FF15C
	adds r0, r7, #0
	bl func_080CABA0
	b .L08083188
	.align 2, 0
.L0808317C: .4byte gUnk_080FF15C
.L08083180:
	ldr r1, .L080831B4 @ =gUnk_080FF178
	adds r0, r7, #0
	bl func_080CABA0
.L08083188:
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r1, #0xa8
	bl func_08050E50
	ldr r3, .L080831B8 @ =0x000006A4
	adds r1, r7, r3
	movs r0, #0xb
	str r0, [r1]
.L0808319C:
	ldr r0, [r7, #0x10]
	str r0, [r7, #0x14]
	movs r4, #0xa9
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r1, [r0]
	adds r0, r7, #0
	bl func_080C9020
	bl .L08083A64
	.align 2, 0
.L080831B4: .4byte gUnk_080FF178
.L080831B8: .4byte 0x000006A4
.L080831BC:
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r5, #0xaa
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r0, [r0]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, .L08083228 @ =gUnk_080FED8C
	add r0, sp, #0x10
	adds r1, r1, r2
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldm r1!, {r4, r5}
	stm r0!, {r4, r5}
	ldr r0, [r7, #8]
	ldr r6, .L0808322C @ =0x00001AA8
	adds r0, r0, r6
	ldr r1, [sp, #0x18]
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	ldr r0, [r7, #8]
	ldr r1, .L08083230 @ =0x00001C34
	adds r0, r0, r1
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08083234
	ldr r5, [r7, #8]
	ldr r2, .L08083230 @ =0x00001C34
	adds r5, r5, r2
	add r4, sp, #0x40
	ldr r1, [sp, #0x10]
	adds r0, r4, #0
	bl __4ToolUi
	ldrb r1, [r4]
	mov r0, sb
	movs r2, #1
	bl __9ToolStackG4ToolUi
	adds r0, r5, #0
	mov r1, sb
	movs r2, #2
	bl memcpy
	b .L08083252
	.align 2, 0
.L08083228: .4byte gUnk_080FED8C
.L0808322C: .4byte 0x00001AA8
.L08083230: .4byte 0x00001C34
.L08083234:
	ldr r0, [r7, #8]
	ldr r3, .L0808325C @ =0x00001C38
	adds r0, r0, r3
	ldr r1, [sp, #0x10]
	bl GetAvailableSpaceForTool__C8RucksackUi
	cmp r0, #0
	beq .L08083264
	ldr r0, [r7, #8]
	ldr r4, .L0808325C @ =0x00001C38
	adds r0, r0, r4
	ldr r1, [sp, #0x10]
	movs r2, #1
	bl AddAmountOfTool__8RucksackUiUi
.L08083252:
	ldr r1, .L08083260 @ =gUnk_080FF1A0
	adds r0, r7, #0
	bl func_080CABA0
	b .L0808327C
	.align 2, 0
.L0808325C: .4byte 0x00001C38
.L08083260: .4byte gUnk_080FF1A0
.L08083264:
	ldr r0, [r7, #8]
	movs r5, #0xe0
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r1, [sp, #0x10]
	movs r2, #1
	bl AddAmountOf__9ToolChestUiUi
	ldr r1, .L080832E0 @ =gUnk_080FF1B0
	adds r0, r7, #0
	bl func_080CABA0
.L0808327C:
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0xa9
	bl func_08050E50
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r7, r0
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, #4
	adds r3, r1, r0
	adds r4, r1, #0
	ldr r0, [r4]
	cmp r0, #0
	beq .L080832BC
	lsls r0, r0, #2
	adds r0, #4
	adds r0, r4, r0
	adds r1, r3, #4
	cmp r1, r0
	beq .L080832B6
	cmp r0, r1
	beq .L080832B6
	subs r2, r0, r1
	adds r0, r3, #0
	bl memmove
.L080832B6:
	ldr r0, [r4]
	subs r0, #1
	str r0, [r4]
.L080832BC:
	adds r0, r7, #0
	bl func_0808268C
	movs r2, #0xd5
	lsls r2, r2, #3
	adds r1, r7, r2
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	str r2, [r7, #0x10]
	subs r0, #2
	str r0, [r7, #0x14]
	ldr r3, .L080832E4 @ =0x000006A4
	adds r1, r7, r3
	movs r0, #2
	str r0, [r1]
	b .L08083A64
	.align 2, 0
.L080832E0: .4byte gUnk_080FF1B0
.L080832E4: .4byte 0x000006A4
.L080832E8:
	movs r4, #0xd4
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #3
	beq .L080832F6
	b .L08083A64
.L080832F6:
	ldr r1, .L08083310 @ =gUnk_080FF200
	adds r0, r7, #0
	bl func_080CABA0
	movs r5, #0xd2
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0xa8
	bl func_08050E50
	ldr r6, .L08083314 @ =0x000006A4
	adds r1, r7, r6
	b .L08083764
	.align 2, 0
.L08083310: .4byte gUnk_080FF200
.L08083314: .4byte 0x000006A4
.L08083318:
	movs r1, #0xd4
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L08083326
	b .L08083A64
.L08083326:
	ldr r1, .L08083334 @ =gUnk_080FF200
	adds r0, r7, #0
	bl func_080CABA0
	ldr r2, .L08083338 @ =0x000006A4
	adds r1, r7, r2
	b .L08083764
	.align 2, 0
.L08083334: .4byte gUnk_080FF200
.L08083338: .4byte 0x000006A4
.L0808333C:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	beq .L0808334A
	b .L08083A64
.L0808334A:
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	bl func_08050E5C
	ldr r5, .L08083364 @ =0x000006A4
	adds r1, r7, r5
	movs r0, #0
	str r0, [r1]
	subs r0, #1
	str r0, [r7, #0x14]
	b .L08083A64
	.align 2, 0
.L08083364: .4byte 0x000006A4
.L08083368:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r0, [r0]
	cmp r0, #3
	beq .L08083376
	b .L08083A64
.L08083376:
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, .L080833A4 @ =gUnk_080FF228
	ldr r2, .L080833A8 @ =gUnk_080FF230
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r3, #0
	bl func_08050E0C
	adds r0, r4, #0
	bl func_08050E5C
	ldr r2, .L080833AC @ =0x000006A4
	adds r1, r7, r2
	movs r0, #6
	str r0, [r1]
	b .L08083A64
	.align 2, 0
.L080833A4: .4byte gUnk_080FF228
.L080833A8: .4byte gUnk_080FF230
.L080833AC: .4byte 0x000006A4
.L080833B0:
	movs r3, #0xd4
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r5, [r0]
	cmp r5, #3
	beq .L080833BE
	b .L08083A64
.L080833BE:
	movs r6, #0xd2
	lsls r6, r6, #2
	adds r4, r7, r6
	adds r0, r4, #0
	bl func_08050DF0
	cmp r0, #1
	beq .L080833D6
	cmp r0, #2
	bne .L080833D4
	b .L08083508
.L080833D4:
	b .L08083A64
.L080833D6:
	ldr r1, .L08083408 @ =gUnk_080FF240
	adds r0, r7, #0
	bl func_080CABA0
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	ldr r0, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r7
	movs r1, #0xaa
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r0, [r0]
	subs r0, #4
	cmp r0, #6
	bls .L080833FC
	b .L080834E6
.L080833FC:
	lsls r0, r0, #2
	ldr r1, .L0808340C @ =.L08083410
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08083408: .4byte gUnk_080FF240
.L0808340C: .4byte .L08083410
.L08083410: @ jump table
	.4byte .L0808342C @ case 0
	.4byte .L08083448 @ case 1
	.4byte .L08083464 @ case 2
	.4byte .L08083480 @ case 3
	.4byte .L0808349C @ case 4
	.4byte .L080834B8 @ case 5
	.4byte .L080834D4 @ case 6
.L0808342C:
	ldr r0, [r7, #8]
	ldr r2, .L08083440 @ =0x00001DAC
	adds r0, r0, r2
	ldr r3, .L08083444 @ =0x000048E4
	adds r1, r7, r3
	ldr r2, [r1]
	movs r1, #0x23
	bl func_0809EE20
	b .L080834E6
	.align 2, 0
.L08083440: .4byte 0x00001DAC
.L08083444: .4byte 0x000048E4
.L08083448:
	ldr r0, [r7, #8]
	ldr r4, .L0808345C @ =0x00001DAC
	adds r0, r0, r4
	ldr r5, .L08083460 @ =0x000048E4
	adds r1, r7, r5
	ldr r2, [r1]
	movs r1, #0x24
	bl func_0809EE20
	b .L080834E6
	.align 2, 0
.L0808345C: .4byte 0x00001DAC
.L08083460: .4byte 0x000048E4
.L08083464:
	ldr r0, [r7, #8]
	ldr r6, .L08083478 @ =0x00001DAC
	adds r0, r0, r6
	ldr r2, .L0808347C @ =0x000048E4
	adds r1, r7, r2
	ldr r2, [r1]
	movs r1, #0x25
	bl func_0809EE20
	b .L080834E6
	.align 2, 0
.L08083478: .4byte 0x00001DAC
.L0808347C: .4byte 0x000048E4
.L08083480:
	ldr r0, [r7, #8]
	ldr r3, .L08083494 @ =0x00001DAC
	adds r0, r0, r3
	ldr r4, .L08083498 @ =0x000048E4
	adds r1, r7, r4
	ldr r2, [r1]
	movs r1, #0x20
	bl func_0809EE20
	b .L080834E6
	.align 2, 0
.L08083494: .4byte 0x00001DAC
.L08083498: .4byte 0x000048E4
.L0808349C:
	ldr r0, [r7, #8]
	ldr r5, .L080834B0 @ =0x00001DAC
	adds r0, r0, r5
	ldr r6, .L080834B4 @ =0x000048E4
	adds r1, r7, r6
	ldr r2, [r1]
	movs r1, #0x21
	bl func_0809EE20
	b .L080834E6
	.align 2, 0
.L080834B0: .4byte 0x00001DAC
.L080834B4: .4byte 0x000048E4
.L080834B8:
	ldr r0, [r7, #8]
	ldr r1, .L080834CC @ =0x00001DAC
	adds r0, r0, r1
	ldr r2, .L080834D0 @ =0x000048E4
	adds r1, r7, r2
	ldr r2, [r1]
	movs r1, #0x1f
	bl func_0809EE20
	b .L080834E6
	.align 2, 0
.L080834CC: .4byte 0x00001DAC
.L080834D0: .4byte 0x000048E4
.L080834D4:
	ldr r0, [r7, #8]
	ldr r3, .L080834FC @ =0x00001DAC
	adds r0, r0, r3
	ldr r4, .L08083500 @ =0x000048E4
	adds r1, r7, r4
	ldr r2, [r1]
	movs r1, #0x22
	bl func_0809EE20
.L080834E6:
	ldr r5, .L08083504 @ =0x000006A4
	adds r1, r7, r5
	movs r0, #0xa
	str r0, [r1]
	movs r6, #0xd5
	lsls r6, r6, #3
	adds r1, r7, r6
	movs r0, #1
	strb r0, [r1]
	b .L08083A64
	.align 2, 0
.L080834FC: .4byte 0x00001DAC
.L08083500: .4byte 0x000048E4
.L08083504: .4byte 0x000006A4
.L08083508:
	ldr r1, .L08083520 @ =gUnk_080FF270
	adds r0, r7, #0
	bl func_080CABA0
	adds r0, r4, #0
	movs r1, #0xa8
	bl func_08050E50
	ldr r1, .L08083524 @ =0x000006A4
	adds r0, r7, r1
	str r5, [r0]
	b .L08083A64
	.align 2, 0
.L08083520: .4byte gUnk_080FF270
.L08083524: .4byte 0x000006A4
.L08083528:
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #3
	beq .L08083536
	b .L08083A64
.L08083536:
	ldr r0, [r7, #8]
	ldr r3, .L08083568 @ =0x00001C34
	adds r0, r0, r3
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08083560
	ldr r0, [r7, #8]
	ldr r4, .L08083568 @ =0x00001C34
	adds r0, r0, r4
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x41
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x2f
	ble .L080835E8
.L08083560:
	movs r4, #0
	ldr r5, .L0808356C @ =0x00001C38
	b .L080835A6
	.align 2, 0
.L08083568: .4byte 0x00001C34
.L0808356C: .4byte 0x00001C38
.L08083570:
	ldr r0, [r7, #8]
	ldr r6, .L080835DC @ =0x00001C38
	adds r0, r0, r6
	adds r1, r4, #0
	bl GetToolAt__8RucksackUi
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080835A4
	ldr r0, [r7, #8]
	adds r0, r0, r5
	adds r1, r4, #0
	bl GetToolAt__8RucksackUi
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x42
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x2f
	ble .L080835B2
.L080835A4:
	adds r4, #1
.L080835A6:
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetSize__C8Rucksack
	cmp r4, r0
	blo .L08083570
.L080835B2:
	ldr r0, [r7, #8]
	ldr r1, .L080835DC @ =0x00001C38
	adds r0, r0, r1
	bl GetSize__C8Rucksack
	cmp r4, r0
	bne .L080835E8
	ldr r1, .L080835E0 @ =gUnk_080FF29C
	adds r0, r7, #0
	bl func_080CABA0
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r0, r7, r2
	movs r1, #0xa8
	bl func_08050E50
	ldr r3, .L080835E4 @ =0x000006A4
	adds r1, r7, r3
	b .L08083764
	.align 2, 0
.L080835DC: .4byte 0x00001C38
.L080835E0: .4byte gUnk_080FF29C
.L080835E4: .4byte 0x000006A4
.L080835E8:
	ldr r0, [r7, #8]
	ldr r4, .L0808368C @ =0x00001C2C
	adds r0, r0, r4
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08083686
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl func_0800F204
	cmp r0, #1
	bne .L08083686
	movs r5, #0
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x43
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x12
	beq .L08083682
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl func_0800F258
	adds r1, r0, #0
	add r0, sp, #0x44
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x13
	beq .L08083682
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x45
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x14
	beq .L08083682
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x46
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x15
	beq .L08083682
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x47
	strb r1, [r0]
	bl GetId__C7Article
	movs r1, #0x1c
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r5, r1, #0x1f
.L08083682:
	cmp r5, #0
	beq .L08083778
.L08083686:
	movs r4, #0
	ldr r5, .L08083690 @ =0x00001C38
	b .L08083732
	.align 2, 0
.L0808368C: .4byte 0x00001C2C
.L08083690: .4byte 0x00001C38
.L08083694:
	movs r6, #0
	ldr r0, [r7, #8]
	ldr r1, .L0808376C @ =0x00001C38
	adds r0, r0, r1
	adds r1, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0x48
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x12
	beq .L0808372A
	ldr r0, [r7, #8]
	adds r0, r0, r5
	adds r1, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x49
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x13
	beq .L0808372A
	ldr r0, [r7, #8]
	adds r0, r0, r5
	adds r1, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x4a
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x14
	beq .L0808372A
	ldr r0, [r7, #8]
	adds r0, r0, r5
	adds r1, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x4b
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x15
	beq .L0808372A
	ldr r0, [r7, #8]
	adds r0, r0, r5
	adds r1, r4, #0
	bl GetItemAt__8RucksackUi
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0x4c
	strb r1, [r0]
	bl GetId__C7Article
	cmp r0, #0x1c
	bne .L0808372C
.L0808372A:
	movs r6, #1
.L0808372C:
	cmp r6, #0
	bne .L0808373E
	adds r4, #1
.L08083732:
	ldr r0, [r7, #8]
	adds r0, r0, r5
	bl GetSize__C8Rucksack
	cmp r4, r0
	blo .L08083694
.L0808373E:
	ldr r0, [r7, #8]
	ldr r2, .L0808376C @ =0x00001C38
	adds r0, r0, r2
	bl GetSize__C8Rucksack
	cmp r4, r0
	bne .L08083778
	ldr r1, .L08083770 @ =gUnk_080FF2EC
	adds r0, r7, #0
	bl func_080CABA0
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r0, r7, r3
	movs r1, #0xa8
	bl func_08050E50
	ldr r4, .L08083774 @ =0x000006A4
	adds r1, r7, r4
.L08083764:
	movs r0, #4
	str r0, [r1]
	b .L08083A64
	.align 2, 0
.L0808376C: .4byte 0x00001C38
.L08083770: .4byte gUnk_080FF2EC
.L08083774: .4byte 0x000006A4
.L08083778:
	ldr r0, [sp, #0x28]
	ldr r1, .L080837A0 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r5, .L080837A4 @ =0x000006A4
	adds r1, r7, r5
	movs r0, #0xc
	str r0, [r1]
	b .L08083A64
	.align 2, 0
.L080837A0: .4byte 0x00000889
.L080837A4: .4byte 0x000006A4
.L080837A8:
	ldr r6, .L080837C8 @ =0x000048D8
	adds r0, r7, r6
	ldr r0, [r0]
	lsrs r2, r0, #3
	ldr r1, .L080837CC @ =0x000048DC
	adds r0, r7, r1
	ldr r0, [r0]
	subs r0, #0x12
	cmp r0, #0xa
	bhi .L08083810
	lsls r0, r0, #2
	ldr r1, .L080837D0 @ =.L080837D4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080837C8: .4byte 0x000048D8
.L080837CC: .4byte 0x000048DC
.L080837D0: .4byte .L080837D4
.L080837D4: @ jump table
	.4byte .L08083810 @ case 0
	.4byte .L08083800 @ case 1
	.4byte .L08083804 @ case 2
	.4byte .L08083808 @ case 3
	.4byte .L08083810 @ case 4
	.4byte .L08083810 @ case 5
	.4byte .L08083810 @ case 6
	.4byte .L08083810 @ case 7
	.4byte .L08083810 @ case 8
	.4byte .L08083810 @ case 9
	.4byte .L0808380C @ case 10
.L08083800:
	movs r4, #1
	b .L08083812
.L08083804:
	movs r4, #2
	b .L08083812
.L08083808:
	movs r4, #3
	b .L08083812
.L0808380C:
	movs r4, #4
	b .L08083812
.L08083810:
	movs r4, #0
.L08083812:
	lsls r1, r2, #2
	adds r1, r1, r2
	adds r1, r1, r4
	adds r1, #1
	ldr r0, [r7, #8]
	ldr r2, .L08083844 @ =0x00001DAC
	adds r0, r0, r2
	ldr r3, .L08083848 @ =0x000048E4
	adds r2, r7, r3
	ldr r2, [r2]
	bl func_0809EE20
	movs r2, #1
	ldr r5, .L0808384C @ =0x000048D8
	adds r0, r7, r5
	ldr r0, [r0]
	lsrs r0, r0, #3
	cmp r0, #5
	bhi .L08083882
	lsls r0, r0, #2
	ldr r1, .L08083850 @ =.L08083854
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08083844: .4byte 0x00001DAC
.L08083848: .4byte 0x000048E4
.L0808384C: .4byte 0x000048D8
.L08083850: .4byte .L08083854
.L08083854: @ jump table
	.4byte .L0808386C @ case 0
	.4byte .L08083870 @ case 1
	.4byte .L08083874 @ case 2
	.4byte .L08083878 @ case 3
	.4byte .L0808387C @ case 4
	.4byte .L08083880 @ case 5
.L0808386C:
	movs r2, #1
	b .L08083882
.L08083870:
	movs r2, #0
	b .L08083882
.L08083874:
	movs r2, #2
	b .L08083882
.L08083878:
	movs r2, #3
	b .L08083882
.L0808387C:
	movs r2, #4
	b .L08083882
.L08083880:
	movs r2, #5
.L08083882:
	ldr r6, .L080838AC @ =0x000048D8
	adds r0, r7, r6
	ldr r0, [r0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne .L080838A2
	ldr r0, [r7, #8]
	ldr r1, .L080838B0 @ =0x00001BD8
	adds r0, r0, r1
	adds r1, r2, #0
	bl func_0800EB2C
	adds r1, r4, #1
	bl func_0800EFB4
.L080838A2:
	ldr r2, .L080838B4 @ =0x000006A4
	adds r1, r7, r2
	movs r0, #0xa
	str r0, [r1]
	b .L08083A64
	.align 2, 0
.L080838AC: .4byte 0x000048D8
.L080838B0: .4byte 0x00001BD8
.L080838B4: .4byte 0x000006A4
.L080838B8:
	movs r5, #0
	ldr r0, [r7, #8]
	ldr r4, .L08083910 @ =0x00001C2C
	adds r0, r0, r4
	bl func_0800F190
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080838FE
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl func_0800F204
	cmp r0, #1
	bne .L080838FE
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl func_0800F258
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0x4d
	strb r1, [r0]
	bl GetId__C7Article
	movs r2, #0
	ldr r3, .L08083914 @ =0x000048DC
	adds r1, r7, r3
	ldr r1, [r1]
	cmp r0, r1
	bne .L080838F8
	movs r2, #1
.L080838F8:
	cmp r2, #0
	beq .L080838FE
	movs r5, #1
.L080838FE:
	cmp r5, #0
	beq .L08083918
	ldr r0, [r7, #8]
	ldr r4, .L08083910 @ =0x00001C2C
	adds r0, r0, r4
	bl func_0800F390
	b .L0808393E
	.align 2, 0
.L08083910: .4byte 0x00001C2C
.L08083914: .4byte 0x000048DC
.L08083918:
	ldr r0, [r7, #8]
	ldr r4, .L080839CC @ =0x00001C38
	adds r0, r0, r4
	ldr r5, .L080839D0 @ =0x000048DC
	adds r1, r7, r5
	ldr r1, [r1]
	bl GetFirstSlotWithArticle__C8RucksackUi
	adds r1, r0, #0
	ldr r0, [r7, #8]
	adds r0, r0, r4
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x2c
	bl __12RucksackItem
	ldr r0, [sp, #0x2c]
	str r0, [r4]
.L0808393E:
	ldr r0, [r7, #8]
	ldr r6, .L080839D4 @ =0x00001AA8
	adds r0, r0, r6
	ldr r2, .L080839D8 @ =0x000048E0
	adds r1, r7, r2
	ldr r1, [r1]
	bl func_0809ACC0
	adds r0, r7, #0
	bl func_080C8550
	ldr r6, [r7, #8]
	ldr r3, .L080839DC @ =0x00001BD8
	adds r6, r6, r3
	add r1, sp, #0x38
	movs r3, #7
	ldrh r2, [r1]
	ldr r4, .L080839E0 @ =0xFFFFFC00
	adds r0, r4, #0
	ands r0, r2
	orrs r0, r3
	strh r0, [r1]
	movs r5, #0xa0
	ldrb r3, [r1, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r5
	strb r0, [r1, #1]
	movs r5, #4
	ldrh r3, [r1, #2]
	adds r0, r4, #0
	ands r0, r3
	orrs r0, r5
	strh r0, [r1, #2]
	movs r3, #0xe0
	ldrb r0, [r1, #3]
	ands r2, r0
	orrs r2, r3
	strb r2, [r1, #3]
	movs r2, #1
	ldrh r0, [r1, #4]
	ands r4, r0
	orrs r4, r2
	strh r4, [r1, #4]
	add r4, sp, #0x30
	movs r5, #0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	strb r5, [r4, #6]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_0800EB34
	ldr r1, .L080839E4 @ =gUnk_080FF240
	adds r0, r7, #0
	bl func_080CABA0
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r1, #0xa8
	bl func_08050E50
	ldr r5, .L080839E8 @ =0x000006A4
	adds r1, r7, r5
	movs r0, #0xb
	str r0, [r1]
	b .L08083A64
	.align 2, 0
.L080839CC: .4byte 0x00001C38
.L080839D0: .4byte 0x000048DC
.L080839D4: .4byte 0x00001AA8
.L080839D8: .4byte 0x000048E0
.L080839DC: .4byte 0x00001BD8
.L080839E0: .4byte 0xFFFFFC00
.L080839E4: .4byte gUnk_080FF240
.L080839E8: .4byte 0x000006A4
.L080839EC:
	movs r6, #0xd4
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r0, [r0]
	cmp r0, #3
	bne .L08083A64
	ldr r2, [sp, #0x28]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08083A64
	movs r0, #1
	mov r8, r0
	ldr r1, .L08083A28 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L08083A64
	.align 2, 0
.L08083A28: .4byte 0x00000889
.L08083A2C:
	ldr r3, [sp, #0x28]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08083A64
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08083A54
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	movs r0, #2
	b .L08083A6E
.L08083A54:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	movs r0, #1
	b .L08083A6E
.L08083A64:
	adds r0, r7, #0
	bl func_080C96C4
	bl sub_08082F50
.L08083A6E:
	add sp, #0x50
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_08083A7C
func_08083A7C: @ 0x08083A7C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	mov r8, r1
	mov sb, r2
	adds r5, r3, #0
	ldr r6, [sp, #0x28]
	ldr r7, [sp, #0x2c]
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	ldr r0, .L08083AE4 @ =vtable_unk_080E7D04
	str r0, [r4]
	ldr r0, .L08083AE8 @ =0x000048E8
	bl __builtin_new
	str r7, [sp]
	ldr r1, [sp, #0x30]
	str r1, [sp, #4]
	ldr r2, [sp, #0x34]
	str r2, [sp, #8]
	mov r1, sb
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_080821D0
	str r0, [r4, #4]
	mov r0, r8
	ldr r1, [r0]
	movs r0, #0
	mov r2, r8
	str r0, [r2]
	str r1, [r4, #8]
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
	ldr r0, [sp, #0x30]
	str r0, [r4, #0x14]
	ldr r1, [sp, #0x34]
	str r1, [r4, #0x18]
	mov r2, sb
	str r2, [r4, #0x1c]
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08083AE4: .4byte vtable_unk_080E7D04
.L08083AE8: .4byte 0x000048E8
