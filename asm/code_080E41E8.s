.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_080E4210
func_080E4210: @ 0x080E4210
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L080E4228
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4228:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E4238
func_080E4238: @ 0x080E4238
	push {lr}
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E4244
func_080E4244: @ 0x080E4244
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, [sp, #0x14]
	adds r5, r3, #0
	ldr r0, [r6, #4]
	cmp r5, r0
	beq .L080E426E
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne .L080E42AE
	cmp r2, #0
	bne .L080E426E
	movs r2, #0
	ldr r1, [r4]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge .L080E426A
	movs r2, #1
.L080E426A:
	cmp r2, #0
	beq .L080E42AE
.L080E426E:
	movs r0, #0x18
	bl malloc
	adds r2, r0, #0
	cmp r2, #0
	bne .L080E4282
	movs r0, #0x18
	bl func_080D3BC0
	adds r2, r0, #0
.L080E4282:
	adds r1, r2, #0
	adds r1, #0x10
	cmp r1, #0
	beq .L080E4292
	ldr r0, [r4]
	str r0, [r2, #0x10]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
.L080E4292:
	adds r4, r2, #0
	str r4, [r5, #8]
	ldr r1, [r6, #4]
	cmp r5, r1
	bne .L080E42A4
	str r4, [r5, #4]
	ldr r0, [r6, #4]
	str r4, [r0, #0xc]
	b .L080E42E0
.L080E42A4:
	ldr r0, [r1, #8]
	cmp r5, r0
	bne .L080E42E0
	str r4, [r1, #8]
	b .L080E42E0
.L080E42AE:
	movs r0, #0x18
	bl malloc
	adds r2, r0, #0
	cmp r2, #0
	bne .L080E42C2
	movs r0, #0x18
	bl func_080D3BC0
	adds r2, r0, #0
.L080E42C2:
	adds r1, r2, #0
	adds r1, #0x10
	cmp r1, #0
	beq .L080E42D2
	ldr r0, [r4]
	str r0, [r2, #0x10]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
.L080E42D2:
	adds r4, r2, #0
	str r4, [r5, #0xc]
	ldr r1, [r6, #4]
	ldr r0, [r1, #0xc]
	cmp r5, r0
	bne .L080E42E0
	str r4, [r1, #0xc]
.L080E42E0:
	str r5, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r1, [r6, #4]
	adds r1, #4
	adds r0, r4, #0
	bl func_080E21E0
	ldr r0, [r6, #8]
	adds r0, #1
	str r0, [r6, #8]
	str r4, [r7]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E4304
func_080E4304: @ 0x080E4304
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r6, r0, #0
	mov r8, r1
	adds r7, r2, #0
	ldr r4, [r1, #4]
	ldr r5, [r4, #4]
	movs r0, #1
	cmp r5, #0
	beq .L080E433A
	ldr r2, [r7]
.L080E431E:
	adds r4, r5, #0
	movs r1, #0
	ldr r0, [r4, #0x10]
	cmp r2, r0
	bge .L080E432A
	movs r1, #1
.L080E432A:
	adds r0, r1, #0
	cmp r0, #0
	beq .L080E4334
	ldr r5, [r4, #8]
	b .L080E4336
.L080E4334:
	ldr r5, [r4, #0xc]
.L080E4336:
	cmp r5, #0
	bne .L080E431E
.L080E433A:
	str r4, [sp, #8]
	cmp r0, #0
	beq .L080E4374
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	movs r1, #0
	cmp r4, r0
	bne .L080E4350
	movs r1, #1
.L080E4350:
	cmp r1, #0
	beq .L080E436C
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	mov r1, r8
	adds r2, r5, #0
	adds r3, r4, #0
	bl func_080E4244
	movs r1, #1
	ldr r0, [sp, #0x10]
	b .L080E439E
.L080E436C:
	adds r0, r4, #0
	bl func_080E2354
	str r0, [sp, #8]
.L080E4374:
	ldr r2, [sp, #8]
	movs r3, #0
	ldr r1, [r2, #0x10]
	ldr r0, [r7]
	cmp r1, r0
	bge .L080E4382
	movs r3, #1
.L080E4382:
	adds r0, r3, #0
	cmp r0, #0
	beq .L080E43A4
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0xc
	mov r1, r8
	adds r2, r5, #0
	adds r3, r4, #0
	bl func_080E4244
	movs r1, #1
	ldr r0, [sp, #0xc]
.L080E439E:
	str r0, [r6]
	strb r1, [r6, #4]
	b .L080E43A8
.L080E43A4:
	str r2, [r6]
	strb r0, [r6, #4]
.L080E43A8:
	adds r0, r6, #0
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E43B8
func_080E43B8: @ 0x080E43B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r5, #0
	adds r4, #0xa4
	ldr r0, [r4, #8]
	cmp r0, #0
	beq .L080E43E2
	ldr r0, [r4, #4]
	ldr r1, [r0, #4]
	adds r0, r4, #0
	bl func_080DC57C
	ldr r0, [r4, #4]
	str r0, [r0, #8]
	ldr r0, [r4, #4]
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, [r4, #4]
	str r0, [r0, #0xc]
	str r1, [r4, #8]
.L080E43E2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq .L080E43EC
	bl free
.L080E43EC:
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080A4B6C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E43FC
func_080E43FC: @ 0x080E43FC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #8
	movs r5, #0
	str r5, [r4, #4]
	movs r0, #0x18
	bl malloc
	cmp r0, #0
	bne .L080E441A
	movs r0, #0x18
	bl func_080D3BC0
.L080E441A:
	str r0, [r4, #4]
	str r5, [r4, #8]
	str r5, [r4, #0xc]
	strb r5, [r0]
	str r5, [r0, #4]
	ldr r0, [r4, #4]
	str r0, [r0, #8]
	ldr r0, [r4, #4]
	str r0, [r0, #0xc]
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E4438
func_080E4438: @ 0x080E4438
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov ip, r1
	ldrb r0, [r1]
	mov r1, r8
	strb r0, [r1]
	mov r5, ip
	ldrb r0, [r5, #1]
	strb r0, [r1, #1]
	mov r3, r8
	adds r3, #4
	movs r4, #1
	mov r2, ip
	adds r2, #4
	movs r6, #1
	rsbs r6, r6, #0
	mov sb, r6
.L080E4460:
	adds r1, r3, #0
	adds r0, r2, #0
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldm r0!, {r5, r6, r7}
	stm r1!, {r5, r6, r7}
	ldm r0!, {r5, r7}
	stm r1!, {r5, r7}
	adds r3, #0x20
	adds r2, #0x20
	subs r4, #1
	cmp r4, sb
	bne .L080E4460
	mov r4, r8
	adds r4, #0x44
	movs r6, #1
	mov r5, ip
	adds r5, #0x44
.L080E4484:
	cmp r5, r4
	beq .L080E449A
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl func_08007CD8
	str r0, [r4, #4]
.L080E449A:
	adds r4, #8
	adds r5, #8
	subs r6, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne .L080E4484
	mov r0, r8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
