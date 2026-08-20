	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_080D6DB8
func_080D6DB8: @ 0x080D6DB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0xc]
	ldr r2, [r7]
	subs r0, r0, r2
	asrs r0, r0, #3
	cmp r0, r1
	bhs .L080D6E88
	ldr r3, [r7, #4]
	subs r0, r3, r2
	asrs r0, r0, #3
	mov sl, r0
	cmp r2, #0
	beq .L080D6E54
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r1, #0
	beq .L080D6DFA
	lsls r4, r1, #3
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080D6DFE
	mov r0, r8
	bl func_080D3BC0
	b .L080D6DFE
.L080D6DFA:
	movs r0, #0
	mov r8, r0
.L080D6DFE:
	mov sb, r0
	mov r4, sb
	mov r0, sl
	lsls r0, r0, #3
	mov sl, r0
	cmp r5, r6
	beq .L080D6E28
.L080D6E0C:
	cmp r4, #0
	beq .L080D6E20
	adds r0, r4, #0
	bl func_08007128
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl func_0800745C
	str r0, [r4, #4]
.L080D6E20:
	adds r5, #8
	adds r4, #8
	cmp r5, r6
	bne .L080D6E0C
.L080D6E28:
	mov r6, sb
	ldr r5, [r7, #4]
	ldr r4, [r7]
	cmp r4, r5
	beq .L080D6E48
.L080D6E32:
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	adds r4, #8
	cmp r4, r5
	bne .L080D6E32
.L080D6E48:
	ldr r0, [r7]
	cmp r0, #0
	beq .L080D6E7A
	bl free
	b .L080D6E7A
.L080D6E54:
	cmp r1, #0
	beq .L080D6E6E
	lsls r4, r1, #3
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080D6E72
	mov r0, r8
	bl func_080D3BC0
	b .L080D6E72
.L080D6E6E:
	movs r0, #0
	mov r8, r0
.L080D6E72:
	adds r6, r0, #0
	mov r1, sl
	lsls r1, r1, #3
	mov sl, r1
.L080D6E7A:
	mov r2, sl
	adds r0, r2, r6
	mov r2, r8
	adds r1, r2, r6
	str r6, [r7]
	str r0, [r7, #4]
	str r1, [r7, #0xc]
.L080D6E88:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D6E98
func_080D6E98: @ 0x080D6E98
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	strb r2, [r0, #1]
	bx lr
	.align 2, 0

	thumb_func_start func_080D6EAC
func_080D6EAC: @ 0x080D6EAC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r4, #4
	bl func_080D6E98
	adds r0, r4, #0
	adds r0, #0x10
	bl func_080D6E98
	movs r1, #0
	movs r0, #1
	strb r0, [r4]
	strb r1, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080D6ECC
func_080D6ECC: @ 0x080D6ECC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r4, #4
	bl func_080D6EAC
	adds r0, r4, #0
	adds r0, #0x20
	bl func_080D6EAC
	movs r1, #0
	movs r0, #1
	strb r0, [r4]
	strb r1, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080D6EEC
func_080D6EEC: @ 0x080D6EEC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r4, #4
	bl func_080D6ECC
	adds r0, r4, #0
	adds r0, #0x40
	bl func_080D6ECC
	movs r1, #0
	movs r0, #1
	strb r0, [r4]
	strb r1, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080D6F0C
func_080D6F0C: @ 0x080D6F0C
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	strb r1, [r0]
	movs r1, #1
	strb r1, [r0, #1]
	bx lr
	.align 2, 0

	thumb_func_start func_080D6F1C
func_080D6F1C: @ 0x080D6F1C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	bl func_080D6F0C
	adds r0, r4, #4
	bl func_080D6F0C
	movs r0, #0
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D6F3C
func_080D6F3C: @ 0x080D6F3C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x20
	bl func_080D6F1C
	adds r0, r4, #4
	bl func_080D6F1C
	movs r0, #0
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D6F5C
func_080D6F5C: @ 0x080D6F5C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x40
	bl func_080D6F3C
	adds r0, r4, #4
	bl func_080D6F3C
	movs r0, #0
	strb r0, [r4]
	movs r0, #1
	strb r0, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D6F7C
func_080D6F7C: @ 0x080D6F7C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r3, r1, #0
	str r2, [sp]
	cmp r3, #0x3f
	bhi .L080D700C
	cmp r2, #0
	beq .L080D700C
	cmp r3, #0
	bne .L080D6F9C
	cmp r2, #0x3f
	bls .L080D6F9C
	bl func_080D6E98
	b .L080D700C
.L080D6F9C:
	cmp r3, #0x1f
	bhi .L080D6FC0
	movs r0, #0x20
	subs r0, r0, r3
	str r0, [sp, #4]
	add r1, sp, #4
	mov r5, sp
	cmp r2, r0
	bls .L080D6FB0
	adds r5, r1, #0
.L080D6FB0:
	ldr r0, [r5]
	movs r1, #1
	lsls r1, r0
	subs r1, #1
	lsls r1, r3
	ldr r0, [r4, #4]
	orrs r0, r1
	str r0, [r4, #4]
.L080D6FC0:
	adds r0, r3, r2
	cmp r0, #0x20
	bls .L080D6FE2
	movs r2, #0
	cmp r3, #0x1f
	bls .L080D6FD0
	adds r2, r3, #0
	subs r2, #0x20
.L080D6FD0:
	subs r0, #0x20
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	subs r1, #1
	lsls r1, r2
	ldr r0, [r4, #8]
	orrs r0, r1
	str r0, [r4, #8]
.L080D6FE2:
	movs r2, #0
	movs r1, #0
	ldr r0, [r4, #4]
	adds r0, #1
	cmp r0, #0
	bne .L080D6FF0
	movs r1, #1
.L080D6FF0:
	cmp r1, #0
	beq .L080D7006
	movs r1, #0
	ldr r0, [r4, #8]
	adds r0, #1
	cmp r0, #0
	bne .L080D7000
	movs r1, #1
.L080D7000:
	cmp r1, #0
	beq .L080D7006
	movs r2, #1
.L080D7006:
	movs r0, #0
	strb r2, [r4]
	strb r0, [r4, #1]
.L080D700C:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080D7014
func_080D7014: @ 0x080D7014
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp]
	cmp r4, #0x7f
	bhi .L080D708C
	adds r0, r2, #0
	cmp r0, #0
	beq .L080D708C
	cmp r4, #0
	bne .L080D7038
	cmp r0, #0x7f
	bls .L080D7038
	adds r0, r5, #0
	bl func_080D6EAC
	b .L080D708C
.L080D7038:
	cmp r4, #0x3f
	bhi .L080D7058
	movs r0, #0x40
	subs r0, r0, r4
	str r0, [sp, #4]
	add r3, sp, #4
	ldr r1, [sp]
	mov r2, sp
	cmp r1, r0
	bls .L080D704E
	adds r2, r3, #0
.L080D704E:
	ldr r2, [r2]
	adds r0, r5, #4
	adds r1, r4, #0
	bl func_080D6F7C
.L080D7058:
	ldr r0, [sp]
	adds r0, r4, r0
	cmp r0, #0x40
	bls .L080D7078
	movs r1, #0
	cmp r4, #0x3f
	bls .L080D706A
	adds r1, r4, #0
	subs r1, #0x40
.L080D706A:
	adds r2, r0, #0
	subs r2, #0x40
	subs r2, r2, r1
	adds r0, r5, #0
	adds r0, #0x10
	bl func_080D6F7C
.L080D7078:
	movs r1, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq .L080D7086
	ldrb r0, [r5, #0x10]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
.L080D7086:
	movs r0, #0
	strb r1, [r5]
	strb r0, [r5, #1]
.L080D708C:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080D7094
func_080D7094: @ 0x080D7094
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp]
	cmp r4, #0xff
	bhi .L080D7110
	adds r0, r2, #0
	cmp r0, #0
	beq .L080D7110
	cmp r4, #0
	bne .L080D70B8
	cmp r0, #0xff
	bls .L080D70B8
	adds r0, r5, #0
	bl func_080D6ECC
	b .L080D7110
.L080D70B8:
	cmp r4, #0x7f
	bhi .L080D70D8
	movs r0, #0x80
	subs r0, r0, r4
	str r0, [sp, #4]
	add r3, sp, #4
	ldr r1, [sp]
	mov r2, sp
	cmp r1, r0
	bls .L080D70CE
	adds r2, r3, #0
.L080D70CE:
	ldr r2, [r2]
	adds r0, r5, #4
	adds r1, r4, #0
	bl func_080D7014
.L080D70D8:
	ldr r0, [sp]
	adds r0, r4, r0
	cmp r0, #0x80
	bls .L080D70F8
	movs r1, #0
	cmp r4, #0x7f
	bls .L080D70EA
	adds r1, r4, #0
	subs r1, #0x80
.L080D70EA:
	adds r2, r0, #0
	subs r2, #0x80
	subs r2, r2, r1
	adds r0, r5, #0
	adds r0, #0x20
	bl func_080D7014
.L080D70F8:
	movs r1, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq .L080D710A
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
.L080D710A:
	movs r0, #0
	strb r1, [r5]
	strb r0, [r5, #1]
.L080D7110:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080D7118
func_080D7118: @ 0x080D7118
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp]
	ldr r1, .L080D7140 @ =0x000001FF
	cmp r4, r1
	bhi .L080D71A0
	adds r0, r2, #0
	cmp r0, #0
	beq .L080D71A0
	cmp r4, #0
	bne .L080D7144
	cmp r0, r1
	bls .L080D7144
	adds r0, r5, #0
	bl func_080D6EEC
	b .L080D71A0
	.align 2, 0
.L080D7140: .4byte 0x000001FF
.L080D7144:
	cmp r4, #0xff
	bhi .L080D7166
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r4
	str r0, [sp, #4]
	add r3, sp, #4
	ldr r1, [sp]
	mov r2, sp
	cmp r1, r0
	bls .L080D715C
	adds r2, r3, #0
.L080D715C:
	ldr r2, [r2]
	adds r0, r5, #4
	adds r1, r4, #0
	bl func_080D7094
.L080D7166:
	ldr r0, [sp]
	adds r2, r4, r0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bls .L080D7188
	movs r1, #0
	cmp r4, #0xff
	bls .L080D717C
	ldr r3, .L080D71A8 @ =0xFFFFFF00
	adds r1, r4, r3
.L080D717C:
	subs r2, r2, r0
	subs r2, r2, r1
	adds r0, r5, #0
	adds r0, #0x40
	bl func_080D7094
.L080D7188:
	movs r1, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq .L080D719A
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r0, [r0]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
.L080D719A:
	movs r0, #0
	strb r1, [r5]
	strb r0, [r5, #1]
.L080D71A0:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080D71A8: .4byte 0xFFFFFF00

	thumb_func_start func_080D71AC
func_080D71AC: @ 0x080D71AC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r3, r1, #0
	str r2, [sp]
	cmp r3, #0x3f
	bhi .L080D7238
	cmp r2, #0
	beq .L080D7238
	cmp r3, #0
	bne .L080D71CC
	cmp r2, #0x3f
	bls .L080D71CC
	bl func_080D6F0C
	b .L080D7238
.L080D71CC:
	cmp r3, #0x1f
	bhi .L080D71F0
	movs r0, #0x20
	subs r0, r0, r3
	str r0, [sp, #4]
	add r1, sp, #4
	mov r5, sp
	cmp r2, r0
	bls .L080D71E0
	adds r5, r1, #0
.L080D71E0:
	ldr r0, [r5]
	movs r1, #1
	lsls r1, r0
	subs r1, #1
	lsls r1, r3
	ldr r0, [r4, #4]
	bics r0, r1
	str r0, [r4, #4]
.L080D71F0:
	adds r0, r3, r2
	cmp r0, #0x20
	bls .L080D7212
	movs r2, #0
	cmp r3, #0x1f
	bls .L080D7200
	adds r2, r3, #0
	subs r2, #0x20
.L080D7200:
	subs r0, #0x20
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	subs r1, #1
	lsls r1, r2
	ldr r0, [r4, #8]
	bics r0, r1
	str r0, [r4, #8]
.L080D7212:
	movs r0, #0
	strb r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne .L080D7222
	movs r1, #1
.L080D7222:
	cmp r1, #0
	beq .L080D7236
	movs r1, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne .L080D7230
	movs r1, #1
.L080D7230:
	cmp r1, #0
	beq .L080D7236
	movs r2, #1
.L080D7236:
	strb r2, [r4, #1]
.L080D7238:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080D7240
func_080D7240: @ 0x080D7240
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp]
	cmp r4, #0x7f
	bhi .L080D72BA
	adds r0, r2, #0
	cmp r0, #0
	beq .L080D72BA
	cmp r4, #0
	bne .L080D7264
	cmp r0, #0x7f
	bls .L080D7264
	adds r0, r5, #0
	bl func_080D6F1C
	b .L080D72BA
.L080D7264:
	adds r6, r5, #4
	cmp r4, #0x3f
	bhi .L080D7286
	movs r0, #0x40
	subs r0, r0, r4
	str r0, [sp, #4]
	add r3, sp, #4
	ldr r1, [sp]
	mov r2, sp
	cmp r1, r0
	bls .L080D727C
	adds r2, r3, #0
.L080D727C:
	ldr r2, [r2]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_080D71AC
.L080D7286:
	ldr r0, [sp]
	adds r0, r4, r0
	cmp r0, #0x40
	bls .L080D72A6
	movs r1, #0
	cmp r4, #0x3f
	bls .L080D7298
	adds r1, r4, #0
	subs r1, #0x40
.L080D7298:
	adds r2, r0, #0
	subs r2, #0x40
	subs r2, r2, r1
	adds r0, r5, #0
	adds r0, #0x10
	bl func_080D71AC
.L080D72A6:
	movs r0, #0
	strb r0, [r5]
	movs r1, #0
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq .L080D72B8
	ldrb r0, [r5, #0x11]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
.L080D72B8:
	strb r1, [r5, #1]
.L080D72BA:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D72C4
func_080D72C4: @ 0x080D72C4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp]
	cmp r4, #0xff
	bhi .L080D7342
	adds r0, r2, #0
	cmp r0, #0
	beq .L080D7342
	cmp r4, #0
	bne .L080D72E8
	cmp r0, #0xff
	bls .L080D72E8
	adds r0, r5, #0
	bl func_080D6F3C
	b .L080D7342
.L080D72E8:
	adds r6, r5, #4
	cmp r4, #0x7f
	bhi .L080D730A
	movs r0, #0x80
	subs r0, r0, r4
	str r0, [sp, #4]
	add r3, sp, #4
	ldr r1, [sp]
	mov r2, sp
	cmp r1, r0
	bls .L080D7300
	adds r2, r3, #0
.L080D7300:
	ldr r2, [r2]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_080D7240
.L080D730A:
	ldr r0, [sp]
	adds r0, r4, r0
	cmp r0, #0x80
	bls .L080D732A
	movs r1, #0
	cmp r4, #0x7f
	bls .L080D731C
	adds r1, r4, #0
	subs r1, #0x80
.L080D731C:
	adds r2, r0, #0
	subs r2, #0x80
	subs r2, r2, r1
	adds r0, r5, #0
	adds r0, #0x20
	bl func_080D7240
.L080D732A:
	movs r0, #0
	strb r0, [r5]
	movs r1, #0
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq .L080D7340
	adds r0, r5, #0
	adds r0, #0x20
	ldrb r0, [r0, #1]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
.L080D7340:
	strb r1, [r5, #1]
.L080D7342:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D734C
func_080D734C: @ 0x080D734C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp]
	ldr r1, .L080D7374 @ =0x000001FF
	cmp r4, r1
	bhi .L080D73D6
	adds r0, r2, #0
	cmp r0, #0
	beq .L080D73D6
	cmp r4, #0
	bne .L080D7378
	cmp r0, r1
	bls .L080D7378
	adds r0, r5, #0
	bl func_080D6F5C
	b .L080D73D6
	.align 2, 0
.L080D7374: .4byte 0x000001FF
.L080D7378:
	adds r6, r5, #4
	cmp r4, #0xff
	bhi .L080D739C
	movs r0, #0x80
	lsls r0, r0, #1
	subs r0, r0, r4
	str r0, [sp, #4]
	add r3, sp, #4
	ldr r1, [sp]
	mov r2, sp
	cmp r1, r0
	bls .L080D7392
	adds r2, r3, #0
.L080D7392:
	ldr r2, [r2]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_080D72C4
.L080D739C:
	ldr r0, [sp]
	adds r2, r4, r0
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	bls .L080D73BE
	movs r1, #0
	cmp r4, #0xff
	bls .L080D73B2
	ldr r3, .L080D73E0 @ =0xFFFFFF00
	adds r1, r4, r3
.L080D73B2:
	subs r2, r2, r0
	subs r2, r2, r1
	adds r0, r5, #0
	adds r0, #0x40
	bl func_080D72C4
.L080D73BE:
	movs r0, #0
	strb r0, [r5]
	movs r1, #0
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq .L080D73D4
	adds r0, r5, #0
	adds r0, #0x40
	ldrb r0, [r0, #1]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
.L080D73D4:
	strb r1, [r5, #1]
.L080D73D6:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080D73E0: .4byte 0xFFFFFF00

	thumb_func_start func_080D73E4
func_080D73E4: @ 0x080D73E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	cmp r7, #5
	bhi .L080D745E
	movs r0, #0
	mov r8, r0
	adds r4, r6, #4
.L080D73F8:
	movs r1, #0
	ldr r0, [r4]
	adds r0, #1
	cmp r0, #0
	bne .L080D7404
	movs r1, #1
.L080D7404:
	adds r5, r1, #0
	cmp r5, #0
	bne .L080D7450
	adds r0, r4, #0
	adds r1, r7, #0
	bl func_080077DC
	adds r2, r0, #0
	movs r0, #0
	cmp r2, #0x1f
	bhi .L080D741C
	movs r0, #1
.L080D741C:
	cmp r0, #0
	beq .L080D7450
	strb r5, [r6, #1]
	movs r3, #0
	movs r1, #0
	ldr r0, [r6, #4]
	adds r0, #1
	cmp r0, #0
	bne .L080D7430
	movs r1, #1
.L080D7430:
	cmp r1, #0
	beq .L080D7446
	movs r1, #0
	ldr r0, [r6, #8]
	adds r0, #1
	cmp r0, #0
	bne .L080D7440
	movs r1, #1
.L080D7440:
	cmp r1, #0
	beq .L080D7446
	movs r3, #1
.L080D7446:
	strb r3, [r6]
	mov r1, r8
	lsls r0, r1, #5
	orrs r0, r2
	b .L080D7474
.L080D7450:
	adds r4, #4
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #1
	ble .L080D73F8
	b .L080D7472
.L080D745E:
	cmp r7, #6
	bne .L080D7472
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq .L080D7472
	adds r0, r6, #0
	bl func_080D6E98
	movs r0, #0
	b .L080D7474
.L080D7472:
	movs r0, #0x40
.L080D7474:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080D7480
func_080D7480: @ 0x080D7480
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	cmp r7, #6
	bhi .L080D74D2
	movs r3, #0
	adds r4, r6, #4
.L080D7490:
	ldrb r5, [r4]
	cmp r5, #0
	bne .L080D74C8
	adds r0, r4, #0
	adds r1, r7, #0
	str r3, [sp]
	bl func_080D73E4
	adds r2, r0, #0
	movs r0, #0
	ldr r3, [sp]
	cmp r2, #0x3f
	bhi .L080D74AC
	movs r0, #1
.L080D74AC:
	cmp r0, #0
	beq .L080D74C8
	strb r5, [r6, #1]
	movs r1, #0
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq .L080D74C0
	ldrb r0, [r6, #0x10]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
.L080D74C0:
	strb r1, [r6]
	lsls r0, r3, #6
	orrs r0, r2
	b .L080D74E8
.L080D74C8:
	adds r4, #0xc
	adds r3, #1
	cmp r3, #1
	ble .L080D7490
	b .L080D74E6
.L080D74D2:
	cmp r7, #7
	bne .L080D74E6
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq .L080D74E6
	adds r0, r6, #0
	bl func_080D6EAC
	movs r0, #0
	b .L080D74E8
.L080D74E6:
	movs r0, #0x80
.L080D74E8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080D74F0
func_080D74F0: @ 0x080D74F0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	cmp r7, #7
	bhi .L080D7546
	movs r3, #0
	adds r4, r6, #4
.L080D7500:
	ldrb r5, [r4]
	cmp r5, #0
	bne .L080D753C
	adds r0, r4, #0
	adds r1, r7, #0
	str r3, [sp]
	bl func_080D7480
	adds r2, r0, #0
	movs r0, #0
	ldr r3, [sp]
	cmp r2, #0x7f
	bhi .L080D751C
	movs r0, #1
.L080D751C:
	cmp r0, #0
	beq .L080D753C
	strb r5, [r6, #1]
	movs r1, #0
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq .L080D7534
	adds r0, r6, #0
	adds r0, #0x20
	ldrb r0, [r0]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
.L080D7534:
	strb r1, [r6]
	lsls r0, r3, #7
	orrs r0, r2
	b .L080D755E
.L080D753C:
	adds r4, #0x1c
	adds r3, #1
	cmp r3, #1
	ble .L080D7500
	b .L080D755A
.L080D7546:
	cmp r7, #8
	bne .L080D755A
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq .L080D755A
	adds r0, r6, #0
	bl func_080D6ECC
	movs r0, #0
	b .L080D755E
.L080D755A:
	movs r0, #0x80
	lsls r0, r0, #1
.L080D755E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080D7568
func_080D7568: @ 0x080D7568
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	cmp r7, #8
	bhi .L080D75BE
	movs r3, #0
	adds r4, r6, #4
.L080D7578:
	ldrb r5, [r4]
	cmp r5, #0
	bne .L080D75B4
	adds r0, r4, #0
	adds r1, r7, #0
	str r3, [sp]
	bl func_080D74F0
	adds r2, r0, #0
	movs r0, #0
	ldr r3, [sp]
	cmp r2, #0xff
	bhi .L080D7594
	movs r0, #1
.L080D7594:
	cmp r0, #0
	beq .L080D75B4
	strb r5, [r6, #1]
	movs r1, #0
	ldrb r0, [r6, #4]
	cmp r0, #0
	beq .L080D75AC
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
.L080D75AC:
	strb r1, [r6]
	lsls r0, r3, #8
	orrs r0, r2
	b .L080D75D6
.L080D75B4:
	adds r4, #0x3c
	adds r3, #1
	cmp r3, #1
	ble .L080D7578
	b .L080D75D2
.L080D75BE:
	cmp r7, #9
	bne .L080D75D2
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq .L080D75D2
	adds r0, r6, #0
	bl func_080D6EEC
	movs r0, #0
	b .L080D75D6
.L080D75D2:
	movs r0, #0x80
	lsls r0, r0, #2
.L080D75D6:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080D75E0
func_080D75E0: @ 0x080D75E0
	push {r4, lr}
	adds r4, r0, #0
	cmp r2, #5
	bhi .L080D7622
	movs r0, #0x20
	ands r0, r1
	adds r3, r4, #4
	cmp r0, #0
	beq .L080D75F4
	adds r3, #4
.L080D75F4:
	adds r0, r3, #0
	bl func_08007844
	movs r0, #0
	strb r0, [r4]
	movs r2, #0
	movs r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne .L080D760A
	movs r1, #1
.L080D760A:
	cmp r1, #0
	beq .L080D761E
	movs r1, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne .L080D7618
	movs r1, #1
.L080D7618:
	cmp r1, #0
	beq .L080D761E
	movs r2, #1
.L080D761E:
	strb r2, [r4, #1]
	b .L080D762C
.L080D7622:
	cmp r2, #6
	bne .L080D762C
	adds r0, r4, #0
	bl func_080D6F0C
.L080D762C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D7634
func_080D7634: @ 0x080D7634
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r2, #6
	bhi .L080D7668
	movs r0, #0x40
	ands r0, r1
	adds r5, r4, #4
	adds r3, r5, #0
	cmp r0, #0
	beq .L080D764C
	adds r3, r4, #0
	adds r3, #0x10
.L080D764C:
	adds r0, r3, #0
	bl func_080D75E0
	movs r0, #0
	strb r0, [r4]
	movs r1, #0
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq .L080D7664
	ldrb r0, [r4, #0x11]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
.L080D7664:
	strb r1, [r4, #1]
	b .L080D7672
.L080D7668:
	cmp r2, #7
	bne .L080D7672
	adds r0, r4, #0
	bl func_080D6F1C
.L080D7672:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080D7678
func_080D7678: @ 0x080D7678
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r2, #7
	bhi .L080D76B0
	movs r0, #0x80
	ands r0, r1
	adds r5, r4, #4
	adds r3, r5, #0
	cmp r0, #0
	beq .L080D7690
	adds r3, r4, #0
	adds r3, #0x20
.L080D7690:
	adds r0, r3, #0
	bl func_080D7634
	movs r0, #0
	strb r0, [r4]
	movs r1, #0
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq .L080D76AC
	adds r0, r4, #0
	adds r0, #0x20
	ldrb r0, [r0, #1]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
.L080D76AC:
	strb r1, [r4, #1]
	b .L080D76BA
.L080D76B0:
	cmp r2, #8
	bne .L080D76BA
	adds r0, r4, #0
	bl func_080D6F3C
.L080D76BA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080D76C0
func_080D76C0: @ 0x080D76C0
	push {r4, r5, lr}
	adds r4, r0, #0
	cmp r2, #8
	bhi .L080D76FA
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	adds r5, r4, #4
	adds r3, r5, #0
	cmp r0, #0
	beq .L080D76DA
	adds r3, r4, #0
	adds r3, #0x40
.L080D76DA:
	adds r0, r3, #0
	bl func_080D7678
	movs r0, #0
	strb r0, [r4]
	movs r1, #0
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq .L080D76F6
	adds r0, r4, #0
	adds r0, #0x40
	ldrb r0, [r0, #1]
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
.L080D76F6:
	strb r1, [r4, #1]
	b .L080D7704
.L080D76FA:
	cmp r2, #9
	bne .L080D7704
	adds r0, r4, #0
	bl func_080D6F5C
.L080D7704:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D770C
func_080D770C: @ 0x080D770C
	push {lr}
	adds r3, r0, #0
	lsls r1, r1, #3
	subs r1, #8
	adds r1, r3, r1
	str r2, [r1]
	cmp r1, r3
	beq .L080D7726
.L080D771C:
	adds r0, r1, #0
	subs r1, #8
	str r0, [r1]
	cmp r1, r3
	bne .L080D771C
.L080D7726:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start func_080D772C
func_080D772C: @ 0x080D772C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	ldr r0, [r7, #0xc]
	ldr r2, [r7]
	subs r0, r0, r2
	asrs r0, r0, #3
	cmp r0, r1
	bhs .L080D77FC
	ldr r3, [r7, #4]
	subs r0, r3, r2
	asrs r0, r0, #3
	mov sl, r0
	cmp r2, #0
	beq .L080D77C8
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r1, #0
	beq .L080D776E
	lsls r4, r1, #3
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080D7772
	mov r0, r8
	bl func_080D3BC0
	b .L080D7772
.L080D776E:
	movs r0, #0
	mov r8, r0
.L080D7772:
	mov sb, r0
	mov r4, sb
	mov r0, sl
	lsls r0, r0, #3
	mov sl, r0
	cmp r5, r6
	beq .L080D779C
.L080D7780:
	cmp r4, #0
	beq .L080D7794
	adds r0, r4, #0
	bl func_08007874
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl func_08007CD8
	str r0, [r4, #4]
.L080D7794:
	adds r5, #8
	adds r4, #8
	cmp r5, r6
	bne .L080D7780
.L080D779C:
	mov r6, sb
	ldr r5, [r7, #4]
	ldr r4, [r7]
	cmp r4, r5
	beq .L080D77BC
.L080D77A6:
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	adds r4, #8
	cmp r4, r5
	bne .L080D77A6
.L080D77BC:
	ldr r0, [r7]
	cmp r0, #0
	beq .L080D77EE
	bl free
	b .L080D77EE
.L080D77C8:
	cmp r1, #0
	beq .L080D77E2
	lsls r4, r1, #3
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080D77E6
	mov r0, r8
	bl func_080D3BC0
	b .L080D77E6
.L080D77E2:
	movs r0, #0
	mov r8, r0
.L080D77E6:
	adds r6, r0, #0
	mov r1, sl
	lsls r1, r1, #3
	mov sl, r1
.L080D77EE:
	mov r2, sl
	adds r0, r2, r6
	mov r2, r8
	adds r1, r2, r6
	str r6, [r7]
	str r0, [r7, #4]
	str r1, [r7, #0xc]
.L080D77FC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D780C
func_080D780C: @ 0x080D780C
	push {lr}
	ldr r0, [r0, #0xc]
	bl func_080096F0
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080D781C
func_080D781C: @ 0x080D781C
	push {lr}
	ldr r0, [r0, #0xc]
	bl func_08009864
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080D782C
func_080D782C: @ 0x080D782C
	push {r4, lr}
	ldr r4, [r0, #0xc]
	movs r2, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	cmp r0, r1
	bne .L080D783C
	movs r2, #1
.L080D783C:
	cmp r2, #0
	bne .L080D785E
	subs r1, r1, r0
	asrs r1, r1, #4
	lsls r1, r1, #4
	adds r1, r0, r1
	bl func_08008FE4
	ldr r0, [r4]
	adds r2, r0, #0
	ldr r1, [r4, #4]
	cmp r2, r1
	beq .L080D785C
.L080D7856:
	adds r0, #0x10
	cmp r0, r1
	bne .L080D7856
.L080D785C:
	str r2, [r4, #4]
.L080D785E:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080D7868
func_080D7868: @ 0x080D7868
	push {lr}
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D7874
func_080D7874: @ 0x080D7874
	push {lr}
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080D7880
func_080D7880: @ 0x080D7880
	push {lr}
	bl func_080098AC
	pop {r0}
	bx r0
	.align 2, 0
.L080D788C:
	.byte 0x70, 0xB5, 0x81, 0xB0
	.byte 0x06, 0x1C, 0x6D, 0x46, 0x01, 0x24, 0x01, 0x20, 0x28, 0xF7, 0x46, 0xFE, 0x04, 0x40, 0x2C, 0x80
	.byte 0x30, 0x1C, 0x32, 0xF7, 0x6F, 0xF8, 0x69, 0x46, 0x08, 0x88, 0x00, 0x28, 0x01, 0xD0, 0x28, 0xF7
	.byte 0x21, 0xFE, 0x01, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x04, 0x1C
	.byte 0x0D, 0x1C, 0x06, 0x48, 0xA0, 0x60, 0x20, 0x1C, 0x31, 0xF7, 0x50, 0xFE, 0x20, 0x1C, 0x29, 0x1C
	.byte 0x32, 0xF7, 0x04, 0xF8, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x90, 0x5B, 0x0E, 0x08

	thumb_func_start func_080D78E0
func_080D78E0: @ 0x080D78E0
	push {lr}
	ldr r0, .L080D78F4 @ =gUnk_03000410
	ldr r0, [r0]
	ldr r0, [r0]
	ldr r1, [r0, #8]
	ldr r1, [r1, #8]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
.L080D78F4: .4byte gUnk_03000410

	thumb_func_start func_080D78F8
func_080D78F8: @ 0x080D78F8
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, .L080D7934 @ =vtable_unk_080E5B3C
	str r0, [r5, #0x14]
	ldr r0, [r1]
	str r0, [r5]
	movs r4, #1
	movs r0, #1
	bl func_08000528
	ands r4, r0
	strh r4, [r5, #4]
	ldr r0, .L080D7938 @ =gUnk_03000410
	ldr r1, [r0]
	str r5, [r0]
	str r1, [r5, #8]
	ldr r0, .L080D793C @ =vtable_unk_080E5B48
	str r0, [r5, #0xc]
	ldr r1, .L080D7940 @ =func_080D78E0
	movs r0, #0
	bl func_080D100C
	str r0, [r5, #0x10]
	movs r0, #1
	bl func_0800050C
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L080D7934: .4byte vtable_unk_080E5B3C
.L080D7938: .4byte gUnk_03000410
.L080D793C: .4byte vtable_unk_080E5B48
.L080D7940: .4byte func_080D78E0

	thumb_func_start func_080D7944
func_080D7944: @ 0x080D7944
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080D7984 @ =vtable_unk_080E5B3C
	str r0, [r4, #0x14]
	movs r0, #1
	bl func_08000528
	ldr r1, [r4, #0x10]
	movs r0, #0
	bl func_080D100C
	ldr r0, .L080D7988 @ =vtable_unk_080E5B54
	str r0, [r4, #0xc]
	ldr r1, .L080D798C @ =gUnk_03000410
	ldr r0, [r4, #8]
	str r0, [r1]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq .L080D7970
	bl func_080004F4
.L080D7970:
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	beq .L080D797E
	adds r0, r4, #0
	bl __builtin_delete
.L080D797E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080D7984: .4byte vtable_unk_080E5B3C
.L080D7988: .4byte vtable_unk_080E5B54
.L080D798C: .4byte gUnk_03000410
.L080D7990:
	.byte 0x70, 0xB5, 0x46, 0x46, 0x40, 0xB4, 0x81, 0xB0, 0x06, 0x1C, 0x88, 0x46, 0x6D, 0x46, 0x01, 0x24
	.byte 0x01, 0x20, 0x28, 0xF7, 0xC1, 0xFD, 0x04, 0x40, 0x2C, 0x80, 0x30, 0x1C, 0x41, 0x46, 0x31, 0xF7
	.byte 0xC7, 0xFF, 0x69, 0x46, 0x08, 0x88, 0x00, 0x28, 0x01, 0xD0, 0x28, 0xF7, 0x9B, 0xFD, 0x01, 0xB0
	.byte 0x08, 0xBC, 0x98, 0x46, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

