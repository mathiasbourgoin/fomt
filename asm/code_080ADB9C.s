	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED
	thumb_func_start func_080ADCA4
func_080ADCA4: @ 0x080ADCA4
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x58
	mov r8, r1
	ldr r4, [r0]
	ldr r1, .L080ADD00 @ =gUnk_0852D984
	add r0, sp, #0x20
	bl func_0805E6CC
	add r6, sp, #0x20
	ldr r5, [sp, #0x20]
	add r0, sp, #0x50
	ldr r3, [r5, #0xc]
	adds r1, r6, #0
	mov r2, r8
	bl _call_via_r3
	ldr r0, [sp, #0x50]
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r5, #0x10]
	adds r1, r6, #0
	bl _call_via_r3
	ldr r0, .L080ADD04 @ =vtable_unk_080E5A28
	str r0, [sp, #0x20]
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r0, sp
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r2}
	stm r4!, {r1, r2}
	add sp, #0x58
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080ADD00: .4byte gUnk_0852D984
.L080ADD04: .4byte vtable_unk_080E5A28
