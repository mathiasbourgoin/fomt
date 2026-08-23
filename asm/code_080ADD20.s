	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_080ADD20
func_080ADD20: @ 0x080ADD20
	push {lr}
	sub sp, #0x30
	ldr r1, .L080ADD3C @ =gUnk_0852D984
	mov r0, sp
	bl func_0805E6CC
	mov r0, sp
	ldrh r0, [r0, #0x20]
	ldr r1, .L080ADD40 @ =vtable_unk_080E5A28
	str r1, [sp]
	add sp, #0x30
	pop {r1}
	bx r1
	.align 2, 0
.L080ADD3C: .4byte gUnk_0852D984
.L080ADD40: .4byte vtable_unk_080E5A28

	thumb_func_start func_080ADD44
func_080ADD44: @ 0x080ADD44
	movs r2, #0
	str r2, [r0]
	movs r3, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	str r2, [r0, #8]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	strb r3, [r0, #0x14]
	bx lr

	thumb_func_start func_080ADD5C
func_080ADD5C: @ 0x080ADD5C
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	movs r3, #0
	str r3, [r0, #0x10]
	strb r3, [r0, #0x14]
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	str r2, [r0]
	strh r3, [r0, #6]
	bx lr
	.align 2, 0
