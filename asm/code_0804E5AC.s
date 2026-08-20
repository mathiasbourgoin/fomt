    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_0804E5AC
func_0804E5AC: @ 0x0804E5AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa0
	adds r4, r0, #0
	mov sl, r1
	adds r5, r2, #0
	adds r6, r3, #0
	ldr r1, [sp, #0xc0]
	add r0, sp, #0xc
	bl func_080D0D28
	str r0, [sp, #0x8c]
	subs r0, #1
	cmp r0, #1
	bls .L0804E5D2
	b .L0804E78C
.L0804E5D2:
	lsrs r0, r5, #3
	mov ip, r0
	lsrs r3, r6, #3
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsrs r0, r4, #0x10
	adds r7, r0, #0
	cmp ip, r8
	blo .L0804E5E8
	b .L0804E788
.L0804E5E8:
	cmp r3, r0
	blo .L0804E5EE
	b .L0804E788
.L0804E5EE:
	movs r1, #0
	movs r2, #7
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	bne .L0804E5FC
	movs r1, #1
.L0804E5FC:
	cmp r1, #0
	bne .L0804E602
	b .L0804E770
.L0804E602:
	movs r1, #0
	adds r0, r6, #0
	ands r0, r2
	cmp r0, #0
	bne .L0804E60E
	movs r1, #1
.L0804E60E:
	cmp r1, #0
	bne .L0804E614
	b .L0804E770
.L0804E614:
	movs r1, #0
	mov r0, ip
	adds r0, #1
	cmp r0, r8
	bhs .L0804E620
	movs r1, #1
.L0804E620:
	str r1, [sp, #0x90]
	movs r0, #0
	adds r1, r3, #1
	str r1, [sp, #0x98]
	cmp r1, r7
	bhs .L0804E62E
	movs r0, #1
.L0804E62E:
	str r0, [sp, #0x94]
	mov r0, r8
	muls r0, r3, r0
	adds r3, r0, #0
	mov r1, ip
	adds r2, r3, r1
	lsls r2, r2, #5
	ldr r0, [sp, #0xc8]
	ldr r1, [sp, #0xc4]
	subs r6, r0, r1
	movs r0, #0xf
	ands r0, r1
	lsls r1, r0, #4
	orrs r0, r1
	lsls r1, r0, #8
	orrs r0, r1
	lsls r5, r0, #0x10
	orrs r5, r0
	mov r0, sl
	adds r7, r2, r0
	add r4, sp, #0xc
	add r2, sp, #0x2c
	str r3, [sp, #0x9c]
	mov sb, r6
	cmp r4, r2
	beq .L0804E67C
	ldr r3, .L0804E76C @ =0x11111111
.L0804E664:
	ldm r4!, {r0}
	adds r1, r0, #0
	ands r1, r3
	lsrs r0, r0, #1
	ands r0, r3
	orrs r1, r0
	muls r1, r6, r1
	adds r1, r5, r1
	adds r1, r1, r0
	stm r7!, {r1}
	cmp r4, r2
	bne .L0804E664
.L0804E67C:
	ldr r1, [sp, #0x94]
	cmp r1, #0
	beq .L0804E6C6
	ldr r0, [sp, #0x98]
	mov r2, r8
	muls r2, r0, r2
	add r2, ip
	lsls r2, r2, #5
	mov r7, sb
	movs r0, #0xf
	ldr r1, [sp, #0xc4]
	ands r0, r1
	lsls r1, r0, #4
	orrs r0, r1
	lsls r1, r0, #8
	orrs r0, r1
	lsls r3, r0, #0x10
	orrs r3, r0
	mov r0, sl
	adds r6, r2, r0
	add r2, sp, #0x4c
	add r4, sp, #0x6c
	cmp r2, r4
	beq .L0804E6C6
	ldr r5, .L0804E76C @ =0x11111111
.L0804E6AE:
	ldm r2!, {r0}
	adds r1, r0, #0
	ands r1, r5
	lsrs r0, r0, #1
	ands r0, r5
	orrs r1, r0
	muls r1, r7, r1
	adds r1, r3, r1
	adds r1, r1, r0
	stm r6!, {r1}
	cmp r2, r4
	bne .L0804E6AE
.L0804E6C6:
	ldr r1, [sp, #0x90]
	cmp r1, #0
	beq .L0804E788
	ldr r0, [sp, #0x8c]
	cmp r0, #1
	bls .L0804E788
	ldr r3, [sp, #0x9c]
	add r3, ip
	lsls r0, r3, #5
	mov r1, sl
	adds r3, r0, r1
	mov r7, sb
	movs r0, #0xf
	ldr r1, [sp, #0xc4]
	ands r0, r1
	lsls r1, r0, #4
	orrs r0, r1
	lsls r1, r0, #8
	orrs r0, r1
	lsls r2, r0, #0x10
	orrs r2, r0
	adds r6, r3, #0
	adds r6, #0x20
	add r5, sp, #0x2c
	adds r4, r5, #0
	adds r4, #0x20
	cmp r5, r4
	beq .L0804E718
	ldr r3, .L0804E76C @ =0x11111111
.L0804E700:
	ldm r5!, {r0}
	adds r1, r0, #0
	ands r1, r3
	lsrs r0, r0, #1
	ands r0, r3
	orrs r1, r0
	muls r1, r7, r1
	adds r1, r2, r1
	adds r1, r1, r0
	stm r6!, {r1}
	cmp r5, r4
	bne .L0804E700
.L0804E718:
	ldr r0, [sp, #0x94]
	cmp r0, #0
	beq .L0804E788
	ldr r1, [sp, #0x98]
	mov r0, r8
	muls r0, r1, r0
	mov r1, ip
	adds r2, r1, r0
	lsls r0, r2, #5
	mov r1, sl
	adds r2, r0, r1
	mov r7, sb
	movs r0, #0xf
	ldr r1, [sp, #0xc4]
	ands r0, r1
	lsls r1, r0, #4
	orrs r0, r1
	lsls r1, r0, #8
	orrs r0, r1
	lsls r4, r0, #0x10
	orrs r4, r0
	adds r6, r2, #0
	adds r6, #0x20
	add r3, sp, #0x6c
	add r2, sp, #0x8c
	cmp r3, r2
	beq .L0804E788
	ldr r5, .L0804E76C @ =0x11111111
.L0804E750:
	ldm r3!, {r0}
	adds r1, r0, #0
	ands r1, r5
	lsrs r0, r0, #1
	ands r0, r5
	orrs r1, r0
	muls r1, r7, r1
	adds r1, r4, r1
	adds r1, r1, r0
	stm r6!, {r1}
	cmp r3, r2
	bne .L0804E750
	b .L0804E788
	.align 2, 0
.L0804E76C: .4byte 0x11111111
.L0804E770:
	add r0, sp, #0xc
	str r0, [sp]
	ldr r1, [sp, #0xc4]
	str r1, [sp, #4]
	ldr r0, [sp, #0xc8]
	str r0, [sp, #8]
	adds r0, r4, #0
	mov r1, sl
	adds r2, r5, #0
	adds r3, r6, #0
	bl func_0804E9CC
.L0804E788:
	ldr r0, [sp, #0x8c]
	b .L0804E78E
.L0804E78C:
	movs r0, #0
.L0804E78E:
	add sp, #0xa0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0804E7A0
func_0804E7A0: @ 0x0804E7A0
	push {lr}
	sub sp, #4
	movs r3, #0xf
	ands r3, r2
	lsls r2, r3, #4
	orrs r3, r2
	lsls r2, r3, #8
	orrs r3, r2
	lsls r2, r3, #0x10
	orrs r3, r2
	lsls r2, r0, #0x10
	lsrs r2, r2, #0x10
	lsrs r0, r0, #0x10
	lsls r0, r0, #5
	muls r2, r0, r2
	str r3, [sp]
	lsrs r2, r2, #2
	ldr r0, .L0804E7D8 @ =0x001FFFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	bl CpuFastSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
.L0804E7D8: .4byte 0x001FFFFF

	thumb_func_start func_0804E7DC
func_0804E7DC: @ 0x0804E7DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	mov r8, r1
	adds r5, r2, #0
	ldr r1, [sp, #0x20]
	mov ip, r1
	ldr r6, [sp, #0x24]
	ldr r1, [sp, #0x28]
	movs r2, #0xf
	ands r1, r2
	lsls r2, r1, #4
	orrs r1, r2
	lsls r2, r1, #8
	orrs r1, r2
	lsls r2, r1, #0x10
	orrs r2, r1
	mov sb, r2
	lsls r1, r0, #0x10
	lsrs r2, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r2, #3
	lsls r4, r0, #3
	cmp r5, #0
	bne .L0804E840
	cmp r3, #0
	bne .L0804E840
	cmp ip, r1
	blo .L0804E840
	cmp r6, r4
	blo .L0804E840
	lsls r0, r0, #5
	muls r2, r0, r2
	mov r7, sb
	str r7, [sp]
	lsrs r2, r2, #2
	ldr r0, .L0804E83C @ =0x001FFFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	mov r0, sp
	mov r1, r8
	bl CpuFastSet
	b .L0804E8D8
	.align 2, 0
.L0804E83C: .4byte 0x001FFFFF
.L0804E840:
	cmp r5, r2
	bhs .L0804E8D8
	cmp r3, r0
	bhs .L0804E8D8
	mov r7, ip
	adds r0, r5, r7
	cmp r0, r1
	blo .L0804E854
	subs r1, r1, r5
	mov ip, r1
.L0804E854:
	adds r0, r3, r6
	cmp r0, r4
	blo .L0804E85C
	subs r6, r4, r3
.L0804E85C:
	movs r1, #0
	movs r4, #7
	adds r0, r5, #0
	ands r0, r4
	cmp r0, #0
	bne .L0804E86A
	movs r1, #1
.L0804E86A:
	cmp r1, #0
	beq .L0804E8D8
	movs r1, #0
	adds r0, r3, #0
	ands r0, r4
	cmp r0, #0
	bne .L0804E87A
	movs r1, #1
.L0804E87A:
	cmp r1, #0
	beq .L0804E8D8
	movs r1, #0
	mov r0, ip
	ands r0, r4
	cmp r0, #0
	bne .L0804E88A
	movs r1, #1
.L0804E88A:
	cmp r1, #0
	beq .L0804E8D8
	movs r1, #0
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	bne .L0804E89A
	movs r1, #1
.L0804E89A:
	cmp r1, #0
	beq .L0804E8D8
	lsrs r6, r6, #3
	lsrs r0, r3, #3
	muls r0, r2, r0
	lsrs r1, r5, #3
	adds r0, r0, r1
	lsls r0, r0, #5
	mov r1, r8
	adds r5, r1, r0
	lsls r7, r2, #5
	ldr r4, .L0804E8E8 @ =0x3FFFFFF8
	mov r2, ip
	ands r4, r2
	ldr r0, .L0804E8EC @ =0x001FFFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	mov r8, r0
.L0804E8C0:
	mov r1, sb
	str r1, [sp]
	mov r0, sp
	adds r1, r5, #0
	mov r2, r8
	orrs r2, r4
	bl CpuFastSet
	adds r5, r5, r7
	subs r6, #1
	cmp r6, #0
	bne .L0804E8C0
.L0804E8D8:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0804E8E8: .4byte 0x3FFFFFF8
.L0804E8EC: .4byte 0x001FFFFF

