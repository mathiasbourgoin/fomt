    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

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
