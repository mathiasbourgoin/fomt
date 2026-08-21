    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_0805E760
func_0805E760: @ 0x0805E760
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0x20]
	cmp r2, r0
	bhs .L0805E782
	lsls r1, r2, #2
	ldr r0, [r3, #4]
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	ldrh r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r3, #0x1c]
	adds r1, r1, r0
	str r1, [r4]
	strh r2, [r4, #4]
	b .L0805E788
.L0805E782:
	movs r0, #0
	str r0, [r4]
	strh r0, [r4, #4]
.L0805E788:
	adds r0, r4, #0
	pop {r4}
	pop {r2}
	bx r2

	thumb_func_start func_0805E790
func_0805E790: @ 0x0805E790
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov ip, r0
	adds r7, r1, #0
	ldrh r0, [r7, #0x22]
	cmp r2, r0
	bhs .L0805E7F0
	lsls r1, r2, #4
	ldr r0, [r7, #8]
	adds r0, r0, r1
	ldrh r3, [r0, #2]
	ldrh r1, [r0]
	mov sb, r1
	ldrh r4, [r0, #6]
	lsls r4, r4, #5
	ldr r1, [r7, #0x10]
	adds r4, r4, r1
	ldrh r6, [r0, #4]
	ldrh r2, [r0, #0xa]
	lsls r2, r2, #5
	ldr r1, [r7, #0x14]
	adds r2, r2, r1
	ldrh r5, [r0, #8]
	ldrh r1, [r0, #0xe]
	ldrh r0, [r0, #0xc]
	mov r8, r0
	lsls r3, r3, #3
	ldr r0, [r7, #0xc]
	adds r3, r3, r0
	lsls r6, r6, #5
	lsls r5, r5, #5
	lsls r1, r1, #3
	ldr r0, [r7, #0x18]
	adds r1, r1, r0
	mov r0, ip
	str r3, [r0]
	mov r3, sb
	strh r3, [r0, #4]
	str r4, [r0, #8]
	strh r6, [r0, #0xc]
	str r2, [r0, #0x10]
	strh r5, [r0, #0x14]
	str r1, [r0, #0x18]
	mov r1, r8
	strh r1, [r0, #0x1c]
	b .L0805E80C
.L0805E7F0:
	movs r0, #0
	mov r2, ip
	str r0, [r2]
	strh r0, [r2, #4]
	mov r1, ip
	adds r1, #8
	str r0, [r2, #8]
	strh r0, [r1, #4]
	adds r1, #8
	str r0, [r2, #0x10]
	strh r0, [r1, #4]
	adds r1, #8
	str r0, [r2, #0x18]
	strh r0, [r1, #4]
.L0805E80C:
	mov r0, ip
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0805E81C:
	.byte 0x40, 0x8C, 0x70, 0x47
	.byte 0x00, 0x8C, 0x70, 0x47

	thumb_func_start func_0805E824
func_0805E824: @ 0x0805E824
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	stm r0!, {r1}
	ldr r3, [r1]
	ldr r3, [r3, #0xc]
	bl _call_via_r3
	movs r0, #0
	strh r0, [r4, #0xc]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	strh r0, [r4, #0xe]
	strh r5, [r4, #0x10]
	movs r0, #1
	strb r0, [r4, #0x12]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

