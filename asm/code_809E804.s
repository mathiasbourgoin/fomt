    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_0809E804
func_0809E804: @ 0x0809E804
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	cmp r1, #6
	bhi .L0809E894
	ldr r0, .L0809E88C @ =gUnk_081040EC
	lsls r1, r1, #2
	mov r8, r1
	add r8, r0
	mov r0, r8
	ldrb r6, [r0]
	ldrb r1, [r0, #1]
	mov sb, r1
	mov r3, sp
	movs r2, #0x1c
	ldrh r1, [r3]
	ldr r4, .L0809E890 @ =0xFFFFFC00
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3]
	movs r0, #0x3f
	mov sl, r0
	adds r1, r6, #0
	ands r1, r0
	lsls r1, r1, #2
	ldrb r5, [r3, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r5
	orrs r0, r1
	strb r0, [r3, #1]
	lsrs r6, r6, #6
	ldrh r1, [r3, #2]
	adds r0, r4, #0
	ands r0, r1
	orrs r0, r6
	strh r0, [r3, #2]
	mov r0, sb
	mov r1, sl
	ands r0, r1
	lsls r0, r0, #2
	ldrb r1, [r3, #3]
	ands r2, r1
	orrs r2, r0
	strb r2, [r3, #3]
	mov r0, sb
	lsrs r0, r0, #6
	mov sb, r0
	ldrh r0, [r3, #4]
	ands r4, r0
	mov r1, sb
	orrs r4, r1
	strh r4, [r3, #4]
	mov r0, r8
	ldrb r4, [r0, #2]
	adds r0, r7, #0
	mov r1, sp
	movs r2, #6
	bl memcpy
	strb r4, [r7, #6]
	b .L0809E8CE
	.align 2, 0
.L0809E88C: .4byte gUnk_081040EC
.L0809E890: .4byte 0xFFFFFC00
.L0809E894:
	mov r1, sp
	movs r4, #0x1c
	ldrh r2, [r1]
	ldr r3, .L0809E8E0 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r5, #0
	ldrb r4, [r1, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r4
	strb r0, [r1, #1]
	ldrh r4, [r1, #2]
	adds r0, r3, #0
	ands r0, r4
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r2, r0
	strb r2, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	strh r3, [r1, #4]
	adds r0, r7, #0
	movs r2, #6
	bl memcpy
	strb r5, [r7, #6]
.L0809E8CE:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0809E8E0: .4byte 0xFFFFFC00

	thumb_func_start func_0809E8E4
func_0809E8E4: @ 0x0809E8E4
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldrb r1, [r2]
	lsls r1, r1, #0x1c
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r3, r1, #0x1c
	cmp r1, r0
	bne .L0809E960
	cmp r3, #8
	bhi .L0809E960
	lsls r0, r3, #2
	ldr r1, .L0809E908 @ =.L0809E90C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0809E908: .4byte .L0809E90C
.L0809E90C: @ jump table
	.4byte .L0809E930 @ case 0
	.4byte .L0809E934 @ case 1
	.4byte .L0809E934 @ case 2
	.4byte .L0809E950 @ case 3
	.4byte .L0809E950 @ case 4
	.4byte .L0809E960 @ case 5
	.4byte .L0809E950 @ case 6
	.4byte .L0809E950 @ case 7
	.4byte .L0809E950 @ case 8
.L0809E930:
	movs r0, #1
	b .L0809E962
.L0809E934:
	movs r3, #0
	ldr r0, [r2]
	ldr r2, .L0809E94C @ =0x00FFFF00
	ands r0, r2
	ldr r1, [r4]
	ands r1, r2
	cmp r0, r1
	bne .L0809E946
	movs r3, #1
.L0809E946:
	adds r0, r3, #0
	b .L0809E962
	.align 2, 0
.L0809E94C: .4byte 0x00FFFF00
.L0809E950:
	movs r1, #0
	ldrb r0, [r2, #1]
	ldrb r4, [r4, #1]
	cmp r0, r4
	bne .L0809E95C
	movs r1, #1
.L0809E95C:
	adds r0, r1, #0
	b .L0809E962
.L0809E960:
	movs r0, #0
.L0809E962:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0809E968
func_0809E968: @ 0x0809E968
	push {r4, lr}
	adds r2, r1, #0
	adds r4, r0, #0
	adds r4, #0x38
	adds r1, r4, #0
	bl func_080E3E9C
	adds r1, r0, #0
	eors r1, r4
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0809E988
func_0809E988: @ 0x0809E988
	lsls r1, r1, #3
	adds r1, r1, r0
	ldm r2!, {r0, r3}
	stm r1!, {r0, r3}
	bx lr
	.align 2, 0

	thumb_func_start func_0809E994
func_0809E994: @ 0x0809E994
	push {r4, lr}
	sub sp, #8
	lsls r1, r1, #3
	mov r4, sp
	ldrb r3, [r4]
	movs r2, #0x10
	rsbs r2, r2, #0
	ands r2, r3
	strb r2, [r4]
	adds r1, r1, r0
	mov r0, sp
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809E9B8
func_0809E9B8: @ 0x0809E9B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	add r1, sp, #8
	movs r4, #0x1d
	ldrh r2, [r1]
	ldr r3, .L0809EA64 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r6, #0x90
	ldrb r4, [r1, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r6
	strb r0, [r1, #1]
	movs r5, #1
	ldrh r4, [r1, #2]
	adds r0, r3, #0
	ands r0, r4
	orrs r0, r5
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r2, r0
	orrs r2, r6
	strb r2, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	orrs r3, r5
	strh r3, [r1, #4]
	mov r4, sp
	movs r0, #0
	mov r8, r0
	mov r0, sp
	movs r2, #6
	bl memcpy
	mov r1, r8
	strb r1, [r4, #6]
	adds r0, r7, #0
	mov r1, sp
	bl __3NpcRC13ActorLocation
	adds r5, r7, #0
	adds r5, #0x14
	ldr r6, .L0809EA68 @ =gUnk_08104108
	adds r0, r6, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xc
	bls .L0809EA2A
	movs r4, #0xc
.L0809EA2A:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r5, r4
	mov r1, r8
	strb r1, [r0]
	adds r2, r7, #0
	adds r2, #0x24
	ldrb r1, [r2]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x25
	mov r1, r8
	strb r1, [r0]
	adds r0, r7, #0
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0809EA64: .4byte 0xFFFFFC00
.L0809EA68: .4byte gUnk_08104108

	thumb_func_start func_0809EA6C
func_0809EA6C: @ 0x0809EA6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	adds r1, r2, #0
	bl __3NpcRC13ActorLocation
	adds r6, r5, #0
	adds r6, #0x14
	ldr r7, .L0809EAC8 @ =gUnk_08104108
	adds r0, r7, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xc
	bls .L0809EA90
	movs r4, #0xc
.L0809EA90:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x24
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	adds r1, #1
	movs r0, #0
	strb r0, [r1]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r1, [r2]
	subs r0, #2
	ands r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0809EAC8: .4byte gUnk_08104108

	thumb_func_start func_0809EACC
func_0809EACC: @ 0x0809EACC
	adds r0, #0x14
	bx lr

	thumb_func_start func_0809EAD0
func_0809EAD0: @ 0x0809EAD0
	adds r0, #0x24
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start func_0809EAD8
func_0809EAD8: @ 0x0809EAD8
	adds r0, #0x25
	ldrb r0, [r0]
	bx lr
	.align 2, 0

	thumb_func_start func_0809EAE0
func_0809EAE0: @ 0x0809EAE0
	adds r0, #0x26
	ldrb r0, [r0]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0

	thumb_func_start func_0809EAEC
func_0809EAEC: @ 0x0809EAEC
	adds r0, #0x26
	ldrb r1, [r0]
	movs r2, #1
	orrs r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start func_0809EAF8
func_0809EAF8: @ 0x0809EAF8
	push {r4, lr}
	adds r4, r0, #0
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	adds r4, #0x25
	ldrb r0, [r4]
	cmp r0, #0xfe
	bhi .L0809EB1A
	adds r0, #1
	strb r0, [r4]
.L0809EB1A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_0809EB20
func_0809EB20: @ 0x0809EB20
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	adds r6, #0x14
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xc
	bls .L0809EB36
	movs r4, #0xc
.L0809EB36:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start func_0809EB4C
func_0809EB4C: @ 0x0809EB4C
	push {r4, lr}
	adds r4, r0, #0
	bl __3NpcRC13ActorLocation
	movs r0, #0
	strb r0, [r4, #0x14]
	ldrb r1, [r4, #0x15]
	subs r0, #2
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0809EB68
func_0809EB68: @ 0x0809EB68
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	bx lr

	thumb_func_start func_0809EB70
func_0809EB70: @ 0x0809EB70
	push {lr}
	movs r2, #0
	ldrb r1, [r0, #0x14]
	lsls r0, r1, #0x1c
	cmp r0, #0
	beq .L0809EB86
	movs r0, #0x70
	ands r0, r1
	cmp r0, #0
	bne .L0809EB86
	movs r2, #1
.L0809EB86:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start func_0809EB8C
func_0809EB8C: @ 0x0809EB8C
	push {lr}
	movs r2, #0
	ldrb r1, [r0, #0x14]
	lsls r0, r1, #0x1c
	cmp r0, #0
	beq .L0809EBA2
	movs r0, #0x70
	ands r0, r1
	cmp r0, #0
	beq .L0809EBA2
	lsrs r2, r1, #7
.L0809EBA2:
	adds r0, r2, #0
	pop {r1}
	bx r1

	thumb_func_start func_0809EBA8
func_0809EBA8: @ 0x0809EBA8
	movs r2, #0xf
	ands r1, r2
	ldrb r3, [r0, #0x14]
	movs r2, #0x10
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	movs r1, #0x71
	rsbs r1, r1, #0
	ands r2, r1
	movs r1, #0x30
	orrs r2, r1
	movs r1, #0x80
	orrs r2, r1
	strb r2, [r0, #0x14]
	ldrb r2, [r0, #0x15]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #0x15]
	bx lr
	.align 2, 0

	thumb_func_start func_0809EBD4
func_0809EBD4: @ 0x0809EBD4
	ldrb r2, [r0, #0x14]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #0x14]
	ldrb r2, [r0, #0x15]
	movs r1, #2
	rsbs r1, r1, #0
	ands r1, r2
	strb r1, [r0, #0x15]
	bx lr
	.align 2, 0

	thumb_func_start func_0809EBEC
func_0809EBEC: @ 0x0809EBEC
	push {r4, lr}
	adds r4, r0, #0
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	ldrb r2, [r4, #0x14]
	lsrs r0, r2, #7
	cmp r0, #0
	beq .L0809EC12
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r4, #0x14]
	b .L0809EC40
.L0809EC12:
	ldrb r1, [r4, #0x15]
	lsls r0, r1, #0x1f
	cmp r0, #0
	beq .L0809EC40
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x15]
	movs r0, #0x70
	ands r0, r2
	cmp r0, #0
	beq .L0809EC40
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1d
	subs r0, #1
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #4
	movs r1, #0x71
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #0x14]
.L0809EC40:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809EC48
func_0809EC48: @ 0x0809EC48
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	mov r0, sp
	adds r1, r4, #0
	bl GetLocation__C3Npc
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	adds r1, r0, #0
	cmp r0, #0x11
	beq .L0809EC80
	cmp r0, #0x11
	bgt .L0809EC6E
	cmp r0, #7
	beq .L0809EC80
	b .L0809EC76
.L0809EC6E:
	cmp r1, #0x1d
	beq .L0809EC80
	cmp r1, #0x25
	beq .L0809EC80
.L0809EC76:
	ldrb r1, [r4, #0x15]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	b .L0809EC86
.L0809EC80:
	ldrb r0, [r4, #0x15]
	movs r1, #1
	orrs r0, r1
.L0809EC86:
	strb r0, [r4, #0x15]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_0809EC90
func_0809EC90: @ 0x0809EC90
	push {r4, lr}
	adds r4, r0, #0
	bl __3NpcRC13ActorLocation
	ldrb r1, [r4, #0x14]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #0x14]
	ldrh r1, [r4, #0x14]
	ldr r0, .L0809ECD4 @ =0xFFFFFE3F
	ands r0, r1
	strh r0, [r4, #0x14]
	ldrb r1, [r4, #0x15]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #4
	ands r0, r1
	subs r1, #8
	ands r0, r1
	subs r1, #0x10
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	strb r0, [r4, #0x15]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L0809ECD4: .4byte 0xFFFFFE3F

	thumb_func_start func_0809ECD8
func_0809ECD8: @ 0x0809ECD8
	ldrb r0, [r0, #0x14]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	bx lr

	thumb_func_start func_0809ECE0
func_0809ECE0: @ 0x0809ECE0
	push {lr}
	adds r1, r0, #0
	movs r2, #0
	ldrb r0, [r1, #0x14]
	lsls r0, r0, #0x1a
	cmp r0, #0
	beq .L0809ECFC
	ldrh r1, [r1, #0x14]
	movs r0, #0xe0
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	bne .L0809ECFC
	movs r2, #1
.L0809ECFC:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_0809ED04
func_0809ED04: @ 0x0809ED04
	push {lr}
	ldrb r2, [r0, #0x15]
	movs r0, #2
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	rsbs r0, r0, #0
	lsrs r1, r0, #0x1f
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq .L0809ED1E
	adds r1, #1
.L0809ED1E:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq .L0809ED2C
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
.L0809ED2C:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq .L0809ED3A
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
.L0809ED3A:
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq .L0809ED48
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
.L0809ED48:
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq .L0809ED56
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
.L0809ED56:
	cmp r1, #6
	beq .L0809ED5E
	movs r0, #0
	b .L0809ED60
.L0809ED5E:
	movs r0, #1
.L0809ED60:
	pop {r1}
	bx r1

	thumb_func_start func_0809ED64
func_0809ED64: @ 0x0809ED64
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #0x14]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1a
	subs r0, #4
	cmp r0, #0x19
	bhi .L0809EE12
	lsls r0, r0, #2
	ldr r1, .L0809ED80 @ =.L0809ED84
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0809ED80: .4byte .L0809ED84
.L0809ED84: @ jump table
	.4byte .L0809EDEC @ case 0
	.4byte .L0809EE12 @ case 1
	.4byte .L0809EE12 @ case 2
	.4byte .L0809EE12 @ case 3
	.4byte .L0809EE12 @ case 4
	.4byte .L0809EDF2 @ case 5
	.4byte .L0809EE12 @ case 6
	.4byte .L0809EE12 @ case 7
	.4byte .L0809EE12 @ case 8
	.4byte .L0809EE12 @ case 9
	.4byte .L0809EDF8 @ case 10
	.4byte .L0809EE12 @ case 11
	.4byte .L0809EE12 @ case 12
	.4byte .L0809EE12 @ case 13
	.4byte .L0809EE12 @ case 14
	.4byte .L0809EDFE @ case 15
	.4byte .L0809EE12 @ case 16
	.4byte .L0809EE12 @ case 17
	.4byte .L0809EE12 @ case 18
	.4byte .L0809EE12 @ case 19
	.4byte .L0809EE04 @ case 20
	.4byte .L0809EE12 @ case 21
	.4byte .L0809EE12 @ case 22
	.4byte .L0809EE12 @ case 23
	.4byte .L0809EE12 @ case 24
	.4byte .L0809EE0A @ case 25
.L0809EDEC:
	ldrb r0, [r2, #0x15]
	movs r1, #2
	b .L0809EE0E
.L0809EDF2:
	ldrb r0, [r2, #0x15]
	movs r1, #4
	b .L0809EE0E
.L0809EDF8:
	ldrb r0, [r2, #0x15]
	movs r1, #8
	b .L0809EE0E
.L0809EDFE:
	ldrb r0, [r2, #0x15]
	movs r1, #0x10
	b .L0809EE0E
.L0809EE04:
	ldrb r0, [r2, #0x15]
	movs r1, #0x20
	b .L0809EE0E
.L0809EE0A:
	ldrb r0, [r2, #0x15]
	movs r1, #0x40
.L0809EE0E:
	orrs r0, r1
	strb r0, [r2, #0x15]
.L0809EE12:
	ldrb r1, [r2, #0x14]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x14]
	pop {r0}
	bx r0

	thumb_func_start func_0809EE20
func_0809EE20: @ 0x0809EE20
	push {r4, lr}
	movs r3, #0x3f
	ands r1, r3
	ldrb r4, [r0, #0x14]
	movs r3, #0x40
	rsbs r3, r3, #0
	ands r3, r4
	orrs r3, r1
	strb r3, [r0, #0x14]
	movs r1, #7
	ands r2, r1
	lsls r2, r2, #6
	ldrh r3, [r0, #0x14]
	ldr r1, .L0809EE48 @ =0xFFFFFE3F
	ands r1, r3
	orrs r1, r2
	strh r1, [r0, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L0809EE48: .4byte 0xFFFFFE3F

	thumb_func_start func_0809EE4C
func_0809EE4C: @ 0x0809EE4C
	push {r4, lr}
	adds r4, r0, #0
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	ldrh r2, [r4, #0x14]
	movs r0, #0xe0
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq .L0809EE82
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1d
	subs r0, #1
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #6
	ldr r1, .L0809EE88 @ =0xFFFFFE3F
	ands r1, r2
	orrs r1, r0
	strh r1, [r4, #0x14]
.L0809EE82:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L0809EE88: .4byte 0xFFFFFE3F

	thumb_func_start func_0809EE8C
func_0809EE8C: @ 0x0809EE8C
	push {r4, lr}
	adds r4, r0, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #0x14]
	strb r1, [r4, #0x16]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_0809EEA4
func_0809EEA4: @ 0x0809EEA4
	push {lr}
	movs r2, #1
	lsls r2, r1
	ldrb r3, [r0, #0x16]
	cmp r1, r3
	bhs .L0809EEBC
	ldrh r0, [r0, #0x14]
	ands r0, r2
	cmp r0, #0
	bne .L0809EEBC
	movs r0, #1
	b .L0809EEBE
.L0809EEBC:
	movs r0, #0
.L0809EEBE:
	pop {r1}
	bx r1
	.align 2, 0
.L0809EEC4:
	.byte 0x01, 0x22, 0x8A, 0x40, 0x81, 0x8A, 0x11, 0x43, 0x81, 0x82, 0x70, 0x47

	thumb_func_start func_0809EED0
func_0809EED0: @ 0x0809EED0
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0x16]
	cmp r0, #0xa
	bne .L0809EEDE
	movs r0, #0
	b .L0809EEE4
.L0809EEDE:
	adds r0, #1
	strb r0, [r1, #0x16]
	movs r0, #1
.L0809EEE4:
	pop {r1}
	bx r1

	thumb_func_start func_0809EEE8
func_0809EEE8: @ 0x0809EEE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L0809F2DC @ =0xFFFFFD68
	add sp, r4
	adds r7, r0, #0
	ldrb r1, [r7]
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7]
	ldrh r1, [r7]
	ldr r0, .L0809F2E0 @ =0xFFFFE03F
	ands r0, r1
	strh r0, [r7]
	ldr r0, [r7]
	ldr r1, .L0809F2E4 @ =0xFFE01FFF
	ands r0, r1
	str r0, [r7]
	ldrb r1, [r7, #2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #2]
	ldrh r1, [r7, #2]
	ldr r0, .L0809F2E8 @ =0xFFFFFE3F
	ands r0, r1
	strh r0, [r7, #2]
	ldrb r1, [r7, #3]
	movs r0, #3
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #0x1d
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r7, #3]
	adds r0, r7, #4
	bl func_0809E9B8
	adds r1, r7, #0
	adds r1, #0x2c
	movs r0, #0
	strb r0, [r1]
	adds r2, r7, #0
	adds r2, #0x2d
	ldrb r1, [r2]
	subs r0, #4
	ands r0, r1
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x30
	movs r1, #0
	bl func_080A17A0
	adds r0, r7, #0
	adds r0, #0x38
	movs r1, #1
	bl func_080A17A0
	adds r0, r7, #0
	adds r0, #0x40
	movs r1, #2
	bl func_080A17A0
	adds r0, r7, #0
	adds r0, #0x48
	movs r1, #0
	bl func_080A1890
	adds r0, r7, #0
	adds r0, #0x50
	movs r1, #1
	bl func_080A1890
	adds r0, r7, #0
	adds r0, #0x58
	movs r1, #2
	bl func_080A1890
	adds r0, r7, #0
	adds r0, #0x60
	bl func_080A198C
	adds r0, r7, #0
	adds r0, #0x68
	bl func_080A19EC
	movs r0, #0x70
	adds r0, r0, r7
	mov r8, r0
	add r1, sp, #8
	ldrh r2, [r1]
	ldr r5, .L0809F2EC @ =0xFFFFFC00
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	movs r0, #0
	mov sl, r0
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	mov r4, sp
	mov r0, sp
	movs r2, #6
	bl memcpy
	mov r1, sl
	strb r1, [r4, #6]
	mov r0, sp
	mov r1, sp
	movs r2, #8
	bl memcpy
	mov r0, r8
	mov r1, sp
	bl __3NpcRC13ActorLocation
	movs r2, #0x84
	adds r2, r2, r7
	mov r8, r2
	add r1, sp, #0x18
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0x98
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x28
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x20
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __12BacheloretteRC13ActorLocation
	movs r1, #0xb0
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x38
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x30
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xc4
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x48
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x40
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xd8
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x58
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x50
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl func_0809EC90
	movs r1, #0xf0
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x68
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x60
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0x82
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x78
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x70
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x88
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x80
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0x96
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x98
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	b .L0809F2F0
	.align 2, 0
.L0809F2DC: .4byte 0xFFFFFD68
.L0809F2E0: .4byte 0xFFFFE03F
.L0809F2E4: .4byte 0xFFE01FFF
.L0809F2E8: .4byte 0xFFFFFE3F
.L0809F2EC: .4byte 0xFFFFFC00
.L0809F2F0:
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x90
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0xa8
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0xa0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0xb8
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0xb0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __12BacheloretteRC13ActorLocation
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0xc8
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0xc0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0xd8
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0xd0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xca
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0xe8
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0xe0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0xf8
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0xf0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xde
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x108
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x100
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	add r4, sp, #0x100
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x118
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x110
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	add r4, sp, #0x110
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x128
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x120
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	add r4, sp, #0x120
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __12BacheloretteRC13ActorLocation
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x138
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x130
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	add r4, sp, #0x130
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0x84
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x148
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x140
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	add r4, sp, #0x140
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __12BacheloretteRC13ActorLocation
	movs r1, #0x8a
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x158
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x150
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	add r4, sp, #0x150
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x168
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x160
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	add r4, sp, #0x160
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0x94
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x178
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x170
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	add r4, sp, #0x170
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0x99
	lsls r1, r1, #2
	adds r1, r1, r7
	mov r8, r1
	add r1, sp, #0x188
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x180
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, sl
	strb r0, [r4, #6]
	add r4, sp, #0x180
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, r8
	adds r1, r4, #0
	bl __12BacheloretteRC13ActorLocation
	movs r1, #0x9f
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sb, r1
	add r1, sp, #0x198
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	mov r8, r0
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x190
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r1, sl
	strb r1, [r4, #6]
	add r4, sp, #0x190
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sb
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r2, #0xa4
	lsls r2, r2, #2
	adds r6, r7, r2
	add r1, sp, #0x1a8
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	movs r2, #3
	ands r2, r0
	strb r2, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x1a0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r1, sl
	strb r1, [r4, #6]
	add r4, sp, #0x1a0
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_0809EB4C
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r2, r2, r7
	mov sl, r2
	add r1, sp, #0x1b8
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x1b0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x1b0
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x1c8
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x1c0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x1c0
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xb4
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x1d8
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x1d0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x1d0
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x1e8
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x1e0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x1e0
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __12BacheloretteRC13ActorLocation
	movs r1, #0xbf
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x1f8
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x1f0
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x1f0
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xc4
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x208
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	movs r2, #0x8d
	lsls r2, r2, #2
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	mov r0, r8
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	mov r2, r8
	ands r2, r0
	strb r2, [r1, #3]
	ldrh r0, [r1, #4]
	ands r5, r0
	strh r5, [r1, #4]
	add r4, sp, #0x200
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x200
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl func_0809EE8C
	movs r1, #0xca
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x218
	movs r2, #0x8d
	lsls r2, r2, #2
	mov r8, r2
	ldrh r2, [r1]
	ldr r5, .L0809FE30 @ =0xFFFFFC00
	adds r0, r5, #0
	ands r0, r2
	mov r2, r8
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x210
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x210
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __3NpcRC13ActorLocation
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x228
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	mov r2, r8
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x220
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x220
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __13HarvestSpriteRC13ActorLocation
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x238
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	mov r2, r8
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x230
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x230
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __13HarvestSpriteRC13ActorLocation
	movs r1, #0xe1
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x248
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	mov r2, r8
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x240
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x240
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __13HarvestSpriteRC13ActorLocation
	movs r1, #0xea
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x258
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	mov r2, r8
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x250
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x250
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __13HarvestSpriteRC13ActorLocation
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x268
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	mov r2, r8
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x260
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x260
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __13HarvestSpriteRC13ActorLocation
	movs r1, #0xfc
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x278
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	mov r2, r8
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r2, [r1, #3]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #3]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #4]
	add r4, sp, #0x270
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r0, #0
	strb r0, [r4, #6]
	add r4, sp, #0x270
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __13HarvestSpriteRC13ActorLocation
	ldr r1, .L0809FE34 @ =0x00000414
	adds r1, r1, r7
	mov sl, r1
	add r1, sp, #0x288
	ldrh r2, [r1]
	adds r0, r5, #0
	ands r0, r2
	mov r2, r8
	orrs r0, r2
	strh r0, [r1]
	ldrb r2, [r1, #1]
	movs r0, #3
	ands r0, r2
	strb r0, [r1, #1]
	ldrh r2, [r1, #2]
	adds r0, r5, #0
	ands r0, r2
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	movs r2, #3
	ands r2, r0
	strb r2, [r1, #3]
	ldrh r0, [r1, #4]
	ands r5, r0
	strh r5, [r1, #4]
	add r4, sp, #0x280
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	movs r1, #0
	strb r1, [r4, #6]
	add r4, sp, #0x280
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #8
	bl memcpy
	mov r0, sl
	adds r1, r4, #0
	bl __13HarvestSpriteRC13ActorLocation
	movs r0, #0x87
	lsls r0, r0, #3
	adds r2, r7, r0
	movs r3, #6
	movs r5, #0x10
	rsbs r5, r5, #0
	movs r4, #1
	rsbs r4, r4, #0
.L0809FDFA:
	ldrb r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strb r0, [r2]
	adds r2, #8
	subs r3, #1
	cmp r3, r4
	bne .L0809FDFA
	movs r1, #0x8e
	lsls r1, r1, #3
	adds r0, r7, r1
	movs r1, #0
	str r1, [r0]
	ldr r2, .L0809FE38 @ =0x00000474
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r7, #0
	movs r3, #0xa6
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0809FE30: .4byte 0xFFFFFC00
.L0809FE34: .4byte 0x00000414
.L0809FE38: .4byte 0x00000474

	thumb_func_start func_0809FE3C
func_0809FE3C: @ 0x0809FE3C
	push {lr}
	movs r2, #0
	cmp r1, #0x2a
	bhi .L0809FE46
	movs r2, #1
.L0809FE46:
	cmp r2, #0
	bne .L0809FE54
	ldr r0, .L0809FE50 @ =gUnk_08104108
	b .L0809FE6C
	.align 2, 0
.L0809FE50: .4byte gUnk_08104108
.L0809FE54:
	cmp r1, #0
	beq .L0809FE64
	cmp r1, #0x23
	bne .L0809FE64
	adds r0, #4
	bl func_0809EACC
	b .L0809FE6C
.L0809FE64:
	ldr r0, .L0809FE70 @ =gUnk_08104258
	lsls r1, r1, #3
	adds r1, r1, r0
	ldr r0, [r1]
.L0809FE6C:
	pop {r1}
	bx r1
	.align 2, 0
.L0809FE70: .4byte gUnk_08104258

	thumb_func_start func_0809FE74
func_0809FE74: @ 0x0809FE74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	adds r3, r1, #0
	mov r8, r2
	movs r0, #0
	cmp r3, #0x2a
	bhi .L0809FE8E
	movs r0, #1
.L0809FE8E:
	cmp r0, #0
	bne .L0809FEA4
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r6
	movs r2, #0x3c
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r2
	b .L080A001C
.L0809FEA4:
	cmp r3, #0x23
	bls .L0809FEAA
	b .L0809FFE4
.L0809FEAA:
	lsls r0, r3, #2
	ldr r1, .L0809FEB4 @ =.L0809FEB8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0809FEB4: .4byte .L0809FEB8
.L0809FEB8: @ jump table
	.4byte .L0809FFE4 @ case 0
	.4byte .L0809FFE4 @ case 1
	.4byte .L0809FFE4 @ case 2
	.4byte .L0809FF48 @ case 3
	.4byte .L0809FFE4 @ case 4
	.4byte .L0809FFE4 @ case 5
	.4byte .L0809FFE4 @ case 6
	.4byte .L0809FFE4 @ case 7
	.4byte .L0809FFE4 @ case 8
	.4byte .L0809FFE4 @ case 9
	.4byte .L0809FFE4 @ case 10
	.4byte .L0809FFE4 @ case 11
	.4byte .L0809FF48 @ case 12
	.4byte .L0809FFE4 @ case 13
	.4byte .L0809FFE4 @ case 14
	.4byte .L0809FFE4 @ case 15
	.4byte .L0809FFE4 @ case 16
	.4byte .L0809FFE4 @ case 17
	.4byte .L0809FFE4 @ case 18
	.4byte .L0809FF48 @ case 19
	.4byte .L0809FFE4 @ case 20
	.4byte .L0809FF48 @ case 21
	.4byte .L0809FFE4 @ case 22
	.4byte .L0809FFE4 @ case 23
	.4byte .L0809FFE4 @ case 24
	.4byte .L0809FF48 @ case 25
	.4byte .L0809FFE4 @ case 26
	.4byte .L0809FFE4 @ case 27
	.4byte .L0809FFE4 @ case 28
	.4byte .L0809FFE4 @ case 29
	.4byte .L0809FFE4 @ case 30
	.4byte .L0809FF48 @ case 31
	.4byte .L0809FFE4 @ case 32
	.4byte .L0809FFE4 @ case 33
	.4byte .L0809FFE4 @ case 34
	.4byte .L0809FFDC @ case 35
.L0809FF48:
	lsls r0, r3, #3
	ldr r1, .L0809FFD8 @ =gUnk_08104258
	adds r0, r0, r1
	adds r6, r0, #0
	ldrb r0, [r6, #4]
	lsls r1, r0, #0x1e
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	movs r7, #3
	lsrs r1, r1, #0x1e
	movs r4, #4
	rsbs r4, r4, #0
	ands r4, r5
	orrs r4, r1
	subs r0, #1
	cmp r0, #0x1d
	bls .L0809FF70
	movs r1, #0x1e
	bl __umodsi3
.L0809FF70:
	movs r1, #0x1f
	mov sl, r1
	mov r2, sl
	ands r0, r2
	lsls r0, r0, #2
	movs r3, #0x7d
	rsbs r3, r3, #0
	mov sb, r3
	ands r3, r4
	orrs r3, r0
	adds r5, r3, #0
	mov r0, r8
	ldrb r2, [r0]
	lsls r1, r2, #0x1e
	lsls r0, r3, #0x1e
	cmp r1, r0
	bne .L0809FFD4
	lsls r1, r2, #0x19
	lsrs r1, r1, #0x1b
	adds r1, #1
	lsls r0, r3, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	cmp r1, r0
	bne .L0809FFD4
	ldrb r1, [r6, #5]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1b
	ands r0, r7
	movs r4, #4
	rsbs r4, r4, #0
	mov r2, sp
	ldrb r2, [r2]
	ands r4, r2
	orrs r4, r0
	subs r0, r1, #1
	cmp r0, #0x1d
	bls .L0809FFC6
	movs r1, #0x1e
	bl __umodsi3
.L0809FFC6:
	mov r3, sl
	ands r0, r3
	lsls r0, r0, #2
	mov r1, sb
	ands r4, r1
	adds r5, r4, #0
	orrs r5, r0
.L0809FFD4:
	adds r0, r5, #0
	b .L080A001C
	.align 2, 0
.L0809FFD8: .4byte gUnk_08104258
.L0809FFDC:
	adds r0, r4, #4
	bl func_0809EAD0
	b .L080A001C
.L0809FFE4:
	lsls r0, r3, #3
	ldr r1, .L080A002C @ =gUnk_08104258
	adds r0, r0, r1
	ldrb r0, [r0, #4]
	lsls r1, r0, #0x1e
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	lsrs r1, r1, #0x1e
	movs r4, #4
	rsbs r4, r4, #0
	ands r4, r7
	orrs r4, r1
	subs r1, r0, #1
	cmp r1, #0x1d
	bls .L080A000C
	adds r0, r1, #0
	movs r1, #0x1e
	bl __umodsi3
	adds r1, r0, #0
.L080A000C:
	movs r0, #0x1f
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
.L080A001C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A002C: .4byte gUnk_08104258

	thumb_func_start func_080A0030
func_080A0030: @ 0x080A0030
	push {lr}
	adds r2, r0, #0
	subs r0, r1, #1
	cmp r0, #0x29
	bhi .L080A00F0
	lsls r0, r0, #2
	ldr r1, .L080A0044 @ =.L080A0048
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A0044: .4byte .L080A0048
.L080A0048: @ jump table
	.4byte .L080A00FC @ case 0
	.4byte .L080A0102 @ case 1
	.4byte .L080A0108 @ case 2
	.4byte .L080A010E @ case 3
	.4byte .L080A0114 @ case 4
	.4byte .L080A011A @ case 5
	.4byte .L080A0120 @ case 6
	.4byte .L080A0126 @ case 7
	.4byte .L080A012C @ case 8
	.4byte .L080A0132 @ case 9
	.4byte .L080A0138 @ case 10
	.4byte .L080A013E @ case 11
	.4byte .L080A0144 @ case 12
	.4byte .L080A014A @ case 13
	.4byte .L080A0150 @ case 14
	.4byte .L080A0156 @ case 15
	.4byte .L080A015C @ case 16
	.4byte .L080A0162 @ case 17
	.4byte .L080A0168 @ case 18
	.4byte .L080A016E @ case 19
	.4byte .L080A0174 @ case 20
	.4byte .L080A017A @ case 21
	.4byte .L080A0180 @ case 22
	.4byte .L080A0186 @ case 23
	.4byte .L080A018C @ case 24
	.4byte .L080A0192 @ case 25
	.4byte .L080A0198 @ case 26
	.4byte .L080A019E @ case 27
	.4byte .L080A01A4 @ case 28
	.4byte .L080A01AA @ case 29
	.4byte .L080A01B0 @ case 30
	.4byte .L080A01B6 @ case 31
	.4byte .L080A01BC @ case 32
	.4byte .L080A01C2 @ case 33
	.4byte .L080A00F4 @ case 34
	.4byte .L080A01C8 @ case 35
	.4byte .L080A01CE @ case 36
	.4byte .L080A01D4 @ case 37
	.4byte .L080A01DA @ case 38
	.4byte .L080A01E0 @ case 39
	.4byte .L080A01E6 @ case 40
	.4byte .L080A01EC @ case 41
.L080A00F0:
	movs r0, #0
	b .L080A01F0
.L080A00F4:
	adds r0, r2, #0
	bl func_080A0384
	b .L080A01F0
.L080A00FC:
	adds r0, r2, #0
	adds r0, #0x70
	b .L080A01F0
.L080A0102:
	adds r0, r2, #0
	adds r0, #0x84
	b .L080A01F0
.L080A0108:
	adds r0, r2, #0
	adds r0, #0x98
	b .L080A01F0
.L080A010E:
	adds r0, r2, #0
	adds r0, #0xb0
	b .L080A01F0
.L080A0114:
	adds r0, r2, #0
	adds r0, #0xc4
	b .L080A01F0
.L080A011A:
	adds r0, r2, #0
	adds r0, #0xd8
	b .L080A01F0
.L080A0120:
	adds r0, r2, #0
	adds r0, #0xf0
	b .L080A01F0
.L080A0126:
	movs r1, #0x82
	lsls r1, r1, #1
	b .L080A01EE
.L080A012C:
	movs r1, #0x8c
	lsls r1, r1, #1
	b .L080A01EE
.L080A0132:
	movs r1, #0x96
	lsls r1, r1, #1
	b .L080A01EE
.L080A0138:
	movs r1, #0xa0
	lsls r1, r1, #1
	b .L080A01EE
.L080A013E:
	movs r1, #0xaa
	lsls r1, r1, #1
	b .L080A01EE
.L080A0144:
	movs r1, #0xb6
	lsls r1, r1, #1
	b .L080A01EE
.L080A014A:
	movs r1, #0xc0
	lsls r1, r1, #1
	b .L080A01EE
.L080A0150:
	movs r1, #0xca
	lsls r1, r1, #1
	b .L080A01EE
.L080A0156:
	movs r1, #0xd4
	lsls r1, r1, #1
	b .L080A01EE
.L080A015C:
	movs r1, #0xde
	lsls r1, r1, #1
	b .L080A01EE
.L080A0162:
	movs r1, #0xe8
	lsls r1, r1, #1
	b .L080A01EE
.L080A0168:
	movs r1, #0xf2
	lsls r1, r1, #1
	b .L080A01EE
.L080A016E:
	movs r1, #0xfe
	lsls r1, r1, #1
	b .L080A01EE
.L080A0174:
	movs r1, #0x84
	lsls r1, r1, #2
	b .L080A01EE
.L080A017A:
	movs r1, #0x8a
	lsls r1, r1, #2
	b .L080A01EE
.L080A0180:
	movs r1, #0x8f
	lsls r1, r1, #2
	b .L080A01EE
.L080A0186:
	movs r1, #0x94
	lsls r1, r1, #2
	b .L080A01EE
.L080A018C:
	movs r1, #0x99
	lsls r1, r1, #2
	b .L080A01EE
.L080A0192:
	movs r1, #0x9f
	lsls r1, r1, #2
	b .L080A01EE
.L080A0198:
	movs r1, #0xa4
	lsls r1, r1, #2
	b .L080A01EE
.L080A019E:
	movs r1, #0xaa
	lsls r1, r1, #2
	b .L080A01EE
.L080A01A4:
	movs r1, #0xaf
	lsls r1, r1, #2
	b .L080A01EE
.L080A01AA:
	movs r1, #0xb4
	lsls r1, r1, #2
	b .L080A01EE
.L080A01B0:
	movs r1, #0xb9
	lsls r1, r1, #2
	b .L080A01EE
.L080A01B6:
	movs r1, #0xbf
	lsls r1, r1, #2
	b .L080A01EE
.L080A01BC:
	movs r1, #0xc4
	lsls r1, r1, #2
	b .L080A01EE
.L080A01C2:
	movs r1, #0xca
	lsls r1, r1, #2
	b .L080A01EE
.L080A01C8:
	movs r1, #0xcf
	lsls r1, r1, #2
	b .L080A01EE
.L080A01CE:
	movs r1, #0xd8
	lsls r1, r1, #2
	b .L080A01EE
.L080A01D4:
	movs r1, #0xe1
	lsls r1, r1, #2
	b .L080A01EE
.L080A01DA:
	movs r1, #0xea
	lsls r1, r1, #2
	b .L080A01EE
.L080A01E0:
	movs r1, #0xf3
	lsls r1, r1, #2
	b .L080A01EE
.L080A01E6:
	movs r1, #0xfc
	lsls r1, r1, #2
	b .L080A01EE
.L080A01EC:
	ldr r1, .L080A01F4 @ =0x00000414
.L080A01EE:
	adds r0, r2, r1
.L080A01F0:
	pop {r1}
	bx r1
	.align 2, 0
.L080A01F4: .4byte 0x00000414

	thumb_func_start func_080A01F8
func_080A01F8: @ 0x080A01F8
	push {lr}
	adds r2, r0, #0
	subs r0, r1, #3
	cmp r0, #0x1c
	bhi .L080A0284
	lsls r0, r0, #2
	ldr r1, .L080A020C @ =.L080A0210
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A020C: .4byte .L080A0210
.L080A0210: @ jump table
	.4byte .L080A0288 @ case 0
	.4byte .L080A0284 @ case 1
	.4byte .L080A0284 @ case 2
	.4byte .L080A0284 @ case 3
	.4byte .L080A0284 @ case 4
	.4byte .L080A0284 @ case 5
	.4byte .L080A0284 @ case 6
	.4byte .L080A0284 @ case 7
	.4byte .L080A0284 @ case 8
	.4byte .L080A028E @ case 9
	.4byte .L080A0284 @ case 10
	.4byte .L080A0284 @ case 11
	.4byte .L080A0284 @ case 12
	.4byte .L080A0284 @ case 13
	.4byte .L080A0284 @ case 14
	.4byte .L080A0284 @ case 15
	.4byte .L080A0294 @ case 16
	.4byte .L080A0284 @ case 17
	.4byte .L080A029A @ case 18
	.4byte .L080A0284 @ case 19
	.4byte .L080A0284 @ case 20
	.4byte .L080A0284 @ case 21
	.4byte .L080A02A0 @ case 22
	.4byte .L080A0284 @ case 23
	.4byte .L080A0284 @ case 24
	.4byte .L080A0284 @ case 25
	.4byte .L080A0284 @ case 26
	.4byte .L080A0284 @ case 27
	.4byte .L080A02A6 @ case 28
.L080A0284:
	movs r0, #0
	b .L080A02AC
.L080A0288:
	adds r0, r2, #0
	adds r0, #0x98
	b .L080A02AC
.L080A028E:
	movs r1, #0xaa
	lsls r1, r1, #1
	b .L080A02AA
.L080A0294:
	movs r1, #0xf2
	lsls r1, r1, #1
	b .L080A02AA
.L080A029A:
	movs r1, #0x84
	lsls r1, r1, #2
	b .L080A02AA
.L080A02A0:
	movs r1, #0x99
	lsls r1, r1, #2
	b .L080A02AA
.L080A02A6:
	movs r1, #0xb9
	lsls r1, r1, #2
.L080A02AA:
	adds r0, r2, r1
.L080A02AC:
	pop {r1}
	bx r1
.L080A02B0:
	.byte 0x00, 0xB5, 0x02, 0x1C, 0x08, 0x1C, 0x24, 0x38, 0x06, 0x28, 0x15, 0xD8, 0x80, 0x00, 0x02, 0x49
	.byte 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x00, 0x00, 0xCC, 0x02, 0x0A, 0x08, 0xEC, 0x02, 0x0A, 0x08
	.byte 0xF2, 0x02, 0x0A, 0x08, 0xF8, 0x02, 0x0A, 0x08, 0xFE, 0x02, 0x0A, 0x08, 0x04, 0x03, 0x0A, 0x08
	.byte 0x0A, 0x03, 0x0A, 0x08, 0x10, 0x03, 0x0A, 0x08, 0x00, 0x20, 0x13, 0xE0, 0xCF, 0x21, 0x89, 0x00
	.byte 0x0F, 0xE0, 0xD8, 0x21, 0x89, 0x00, 0x0C, 0xE0, 0xE1, 0x21, 0x89, 0x00, 0x09, 0xE0, 0xEA, 0x21
	.byte 0x89, 0x00, 0x06, 0xE0, 0xF3, 0x21, 0x89, 0x00, 0x03, 0xE0, 0xFC, 0x21, 0x89, 0x00, 0x00, 0xE0
	.byte 0x01, 0x49, 0x50, 0x18, 0x02, 0xBC, 0x08, 0x47, 0x14, 0x04, 0x00, 0x00

	thumb_func_start func_080A031C
func_080A031C: @ 0x080A031C
	push {lr}
	adds r2, r0, #0
	cmp r1, #6
	bhi .L080A0350
	lsls r0, r1, #2
	ldr r1, .L080A0330 @ =.L080A0334
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A0330: .4byte .L080A0334
.L080A0334: @ jump table
	.4byte .L080A0354 @ case 0
	.4byte .L080A035A @ case 1
	.4byte .L080A0360 @ case 2
	.4byte .L080A0366 @ case 3
	.4byte .L080A036C @ case 4
	.4byte .L080A0372 @ case 5
	.4byte .L080A0378 @ case 6
.L080A0350:
	movs r0, #0
	b .L080A037C
.L080A0354:
	movs r1, #0xcf
	lsls r1, r1, #2
	b .L080A037A
.L080A035A:
	movs r1, #0xd8
	lsls r1, r1, #2
	b .L080A037A
.L080A0360:
	movs r1, #0xe1
	lsls r1, r1, #2
	b .L080A037A
.L080A0366:
	movs r1, #0xea
	lsls r1, r1, #2
	b .L080A037A
.L080A036C:
	movs r1, #0xf3
	lsls r1, r1, #2
	b .L080A037A
.L080A0372:
	movs r1, #0xfc
	lsls r1, r1, #2
	b .L080A037A
.L080A0378:
	ldr r1, .L080A0380 @ =0x00000414
.L080A037A:
	adds r0, r2, r1
.L080A037C:
	pop {r1}
	bx r1
	.align 2, 0
.L080A0380: .4byte 0x00000414

	thumb_func_start func_080A0384
func_080A0384: @ 0x080A0384
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1e
	movs r2, #0
	cmp r0, #0
	bge .L080A0394
	adds r2, r1, #4
.L080A0394:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A039C
func_080A039C: @ 0x080A039C
	ldrb r0, [r0, #3]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1d
	bx lr

	thumb_func_start func_080A03A4
func_080A03A4: @ 0x080A03A4
	movs r2, #7
	ands r1, r2
	lsls r1, r1, #2
	ldrb r3, [r0, #3]
	movs r2, #0x1d
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r0, #3]
	bx lr

	thumb_func_start func_080A03B8
func_080A03B8: @ 0x080A03B8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	bl func_080A0030
	adds r1, r0, #0
	cmp r1, #0
	beq .L080A03D4
	adds r0, r6, #0
	bl GetLocation__C3Npc
	b .L080A040E
.L080A03D4:
	mov r1, sp
	movs r4, #2
	ldrh r2, [r1]
	ldr r3, .L080A0418 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r5, #0
	ldrb r4, [r1, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r4
	strb r0, [r1, #1]
	ldrh r4, [r1, #2]
	adds r0, r3, #0
	ands r0, r4
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r2, r0
	strb r2, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	strh r3, [r1, #4]
	adds r0, r6, #0
	movs r2, #6
	bl memcpy
	strb r5, [r6, #6]
.L080A040E:
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080A0418: .4byte 0xFFFFFC00

	thumb_func_start func_080A041C
func_080A041C: @ 0x080A041C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x98
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #4
	bls .L080A042E
	movs r0, #3
	b .L080A048A
.L080A042E:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #4
	bls .L080A0440
	movs r0, #0xc
	b .L080A048A
.L080A0440:
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #4
	bls .L080A0452
	movs r0, #0x13
	b .L080A048A
.L080A0452:
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r4, r1
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #4
	bls .L080A0464
	movs r0, #0x15
	b .L080A048A
.L080A0464:
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r4, r1
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #4
	bls .L080A0476
	movs r0, #0x19
	b .L080A048A
.L080A0476:
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r0, r4, r1
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #4
	bhi .L080A0488
	movs r0, #0
	b .L080A048A
.L080A0488:
	movs r0, #0x1f
.L080A048A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_080A0490
func_080A0490: @ 0x080A0490
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x98
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #5
	bls .L080A04A2
	movs r0, #3
	b .L080A04FE
.L080A04A2:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r4, r1
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #5
	bls .L080A04B4
	movs r0, #0xc
	b .L080A04FE
.L080A04B4:
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #5
	bls .L080A04C6
	movs r0, #0x13
	b .L080A04FE
.L080A04C6:
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r4, r1
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #5
	bls .L080A04D8
	movs r0, #0x15
	b .L080A04FE
.L080A04D8:
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r4, r1
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #5
	bls .L080A04EA
	movs r0, #0x19
	b .L080A04FE
.L080A04EA:
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r0, r4, r1
	bl GetPlayerEventCount__C12Bachelorette
	cmp r0, #5
	bhi .L080A04FC
	movs r0, #0
	b .L080A04FE
.L080A04FC:
	movs r0, #0x1f
.L080A04FE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_080A0504
func_080A0504: @ 0x080A0504
	push {lr}
	bl func_080A0490
	adds r1, r0, #0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A0518
func_080A0518: @ 0x080A0518
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #1
	movs r4, #1
.L080A0520:
	adds r0, r4, #0
	subs r0, #0x17
	cmp r0, #0xc
	bhi .L080A056C
	lsls r0, r0, #2
	ldr r1, .L080A0534 @ =.L080A0538
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A0534: .4byte .L080A0538
.L080A0538: @ jump table
	.4byte .L080A0582 @ case 0
	.4byte .L080A056C @ case 1
	.4byte .L080A056C @ case 2
	.4byte .L080A0582 @ case 3
	.4byte .L080A056C @ case 4
	.4byte .L080A056C @ case 5
	.4byte .L080A056C @ case 6
	.4byte .L080A0582 @ case 7
	.4byte .L080A056C @ case 8
	.4byte .L080A0582 @ case 9
	.4byte .L080A056C @ case 10
	.4byte .L080A056C @ case 11
	.4byte .L080A0582 @ case 12
.L080A056C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_080A0030
	cmp r0, #0
	beq .L080A0582
	bl GetFriendship__C3Npc
	cmp r0, #0xf9
	bhi .L080A0582
	movs r5, #0
.L080A0582:
	adds r4, #1
	cmp r4, #0x2a
	bls .L080A0520
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
.L080A0590:
	.byte 0x00, 0x78, 0x80, 0x06, 0x80, 0x0E, 0x70, 0x47, 0x00, 0x88, 0xC0, 0x04, 0x40, 0x0E, 0x70, 0x47
	.byte 0x00, 0x68, 0xC0, 0x02, 0x00, 0x0E, 0x70, 0x47, 0x00, 0xB5, 0x01, 0x29, 0x05, 0xD0, 0x01, 0x29
	.byte 0x01, 0xD3, 0x02, 0x29, 0x03, 0xD0, 0x30, 0x30, 0x02, 0xE0, 0x38, 0x30, 0x00, 0xE0, 0x40, 0x30
	.byte 0x02, 0xBC, 0x08, 0x47, 0x00, 0xB5, 0x01, 0x29, 0x05, 0xD0, 0x01, 0x29, 0x01, 0xD3, 0x02, 0x29
	.byte 0x03, 0xD0, 0x48, 0x30, 0x02, 0xE0, 0x50, 0x30, 0x00, 0xE0, 0x58, 0x30, 0x02, 0xBC, 0x08, 0x47
	.byte 0x60, 0x30, 0x70, 0x47, 0x68, 0x30, 0x70, 0x47

	thumb_func_start func_080A05E8
func_080A05E8: @ 0x080A05E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	mov sb, r1
	ldrb r1, [r7, #3]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1f
	mov r8, r0
	cmp r0, #0
	bne .L080A069E
	movs r0, #2
	orrs r0, r1
	strb r0, [r7, #3]
	add r1, sp, #0x30
	movs r4, #0x1d
	ldrh r2, [r1]
	ldr r3, .L080A06AC @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r6, #0x90
	ldrb r4, [r1, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r6
	strb r0, [r1, #1]
	movs r5, #1
	ldrh r4, [r1, #2]
	adds r0, r3, #0
	ands r0, r4
	orrs r0, r5
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r2, r0
	orrs r2, r6
	strb r2, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	orrs r3, r5
	strh r3, [r1, #4]
	add r4, sp, #0x28
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	mov r0, r8
	strb r0, [r4, #6]
	mov r0, sp
	mov r1, sb
	adds r2, r4, #0
	bl func_0809EA6C
	adds r1, r7, #4
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	adds r0, r7, #0
	adds r0, #0x18
	add r1, sp, #0x14
	bl strcpy
	adds r1, r7, #0
	adds r1, #0x28
	add r0, sp, #0x24
	ldrb r0, [r0]
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x25
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	mov r0, sp
	adds r0, #0x26
	ldrb r1, [r0]
	lsls r1, r1, #0x1f
	adds r3, r7, #0
	adds r3, #0x2a
	lsrs r1, r1, #0x1f
	ldrb r2, [r3]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
.L080A069E:
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A06AC: .4byte 0xFFFFFC00

	thumb_func_start func_080A06B0
func_080A06B0: @ 0x080A06B0
	push {lr}
	adds r2, r0, #0
	subs r0, r1, #1
	cmp r0, #0x29
	bhi .L080A0770
	lsls r0, r0, #2
	ldr r1, .L080A06C4 @ =.L080A06C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A06C4: .4byte .L080A06C8
.L080A06C8: @ jump table
	.4byte .L080A077C @ case 0
	.4byte .L080A0782 @ case 1
	.4byte .L080A0788 @ case 2
	.4byte .L080A078E @ case 3
	.4byte .L080A0794 @ case 4
	.4byte .L080A079A @ case 5
	.4byte .L080A07A0 @ case 6
	.4byte .L080A07A6 @ case 7
	.4byte .L080A07AC @ case 8
	.4byte .L080A07B2 @ case 9
	.4byte .L080A07B8 @ case 10
	.4byte .L080A07BE @ case 11
	.4byte .L080A07C4 @ case 12
	.4byte .L080A07CA @ case 13
	.4byte .L080A07D0 @ case 14
	.4byte .L080A07D6 @ case 15
	.4byte .L080A07DC @ case 16
	.4byte .L080A07E2 @ case 17
	.4byte .L080A07E8 @ case 18
	.4byte .L080A07EE @ case 19
	.4byte .L080A07F4 @ case 20
	.4byte .L080A07FA @ case 21
	.4byte .L080A0800 @ case 22
	.4byte .L080A0806 @ case 23
	.4byte .L080A080C @ case 24
	.4byte .L080A0812 @ case 25
	.4byte .L080A0818 @ case 26
	.4byte .L080A081E @ case 27
	.4byte .L080A0824 @ case 28
	.4byte .L080A082A @ case 29
	.4byte .L080A0830 @ case 30
	.4byte .L080A0836 @ case 31
	.4byte .L080A083C @ case 32
	.4byte .L080A0842 @ case 33
	.4byte .L080A0774 @ case 34
	.4byte .L080A0848 @ case 35
	.4byte .L080A084E @ case 36
	.4byte .L080A0854 @ case 37
	.4byte .L080A085A @ case 38
	.4byte .L080A0860 @ case 39
	.4byte .L080A0866 @ case 40
	.4byte .L080A086C @ case 41
.L080A0770:
	movs r0, #0
	b .L080A0870
.L080A0774:
	adds r0, r2, #0
	bl func_080A0A04
	b .L080A0870
.L080A077C:
	adds r0, r2, #0
	adds r0, #0x70
	b .L080A0870
.L080A0782:
	adds r0, r2, #0
	adds r0, #0x84
	b .L080A0870
.L080A0788:
	adds r0, r2, #0
	adds r0, #0x98
	b .L080A0870
.L080A078E:
	adds r0, r2, #0
	adds r0, #0xb0
	b .L080A0870
.L080A0794:
	adds r0, r2, #0
	adds r0, #0xc4
	b .L080A0870
.L080A079A:
	adds r0, r2, #0
	adds r0, #0xd8
	b .L080A0870
.L080A07A0:
	adds r0, r2, #0
	adds r0, #0xf0
	b .L080A0870
.L080A07A6:
	movs r1, #0x82
	lsls r1, r1, #1
	b .L080A086E
.L080A07AC:
	movs r1, #0x8c
	lsls r1, r1, #1
	b .L080A086E
.L080A07B2:
	movs r1, #0x96
	lsls r1, r1, #1
	b .L080A086E
.L080A07B8:
	movs r1, #0xa0
	lsls r1, r1, #1
	b .L080A086E
.L080A07BE:
	movs r1, #0xaa
	lsls r1, r1, #1
	b .L080A086E
.L080A07C4:
	movs r1, #0xb6
	lsls r1, r1, #1
	b .L080A086E
.L080A07CA:
	movs r1, #0xc0
	lsls r1, r1, #1
	b .L080A086E
.L080A07D0:
	movs r1, #0xca
	lsls r1, r1, #1
	b .L080A086E
.L080A07D6:
	movs r1, #0xd4
	lsls r1, r1, #1
	b .L080A086E
.L080A07DC:
	movs r1, #0xde
	lsls r1, r1, #1
	b .L080A086E
.L080A07E2:
	movs r1, #0xe8
	lsls r1, r1, #1
	b .L080A086E
.L080A07E8:
	movs r1, #0xf2
	lsls r1, r1, #1
	b .L080A086E
.L080A07EE:
	movs r1, #0xfe
	lsls r1, r1, #1
	b .L080A086E
.L080A07F4:
	movs r1, #0x84
	lsls r1, r1, #2
	b .L080A086E
.L080A07FA:
	movs r1, #0x8a
	lsls r1, r1, #2
	b .L080A086E
.L080A0800:
	movs r1, #0x8f
	lsls r1, r1, #2
	b .L080A086E
.L080A0806:
	movs r1, #0x94
	lsls r1, r1, #2
	b .L080A086E
.L080A080C:
	movs r1, #0x99
	lsls r1, r1, #2
	b .L080A086E
.L080A0812:
	movs r1, #0x9f
	lsls r1, r1, #2
	b .L080A086E
.L080A0818:
	movs r1, #0xa4
	lsls r1, r1, #2
	b .L080A086E
.L080A081E:
	movs r1, #0xaa
	lsls r1, r1, #2
	b .L080A086E
.L080A0824:
	movs r1, #0xaf
	lsls r1, r1, #2
	b .L080A086E
.L080A082A:
	movs r1, #0xb4
	lsls r1, r1, #2
	b .L080A086E
.L080A0830:
	movs r1, #0xb9
	lsls r1, r1, #2
	b .L080A086E
.L080A0836:
	movs r1, #0xbf
	lsls r1, r1, #2
	b .L080A086E
.L080A083C:
	movs r1, #0xc4
	lsls r1, r1, #2
	b .L080A086E
.L080A0842:
	movs r1, #0xca
	lsls r1, r1, #2
	b .L080A086E
.L080A0848:
	movs r1, #0xcf
	lsls r1, r1, #2
	b .L080A086E
.L080A084E:
	movs r1, #0xd8
	lsls r1, r1, #2
	b .L080A086E
.L080A0854:
	movs r1, #0xe1
	lsls r1, r1, #2
	b .L080A086E
.L080A085A:
	movs r1, #0xea
	lsls r1, r1, #2
	b .L080A086E
.L080A0860:
	movs r1, #0xf3
	lsls r1, r1, #2
	b .L080A086E
.L080A0866:
	movs r1, #0xfc
	lsls r1, r1, #2
	b .L080A086E
.L080A086C:
	ldr r1, .L080A0874 @ =0x00000414
.L080A086E:
	adds r0, r2, r1
.L080A0870:
	pop {r1}
	bx r1
	.align 2, 0
.L080A0874: .4byte 0x00000414

	thumb_func_start func_080A0878
func_080A0878: @ 0x080A0878
	push {lr}
	adds r2, r0, #0
	subs r0, r1, #3
	cmp r0, #0x1c
	bhi .L080A0904
	lsls r0, r0, #2
	ldr r1, .L080A088C @ =.L080A0890
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A088C: .4byte .L080A0890
.L080A0890: @ jump table
	.4byte .L080A0908 @ case 0
	.4byte .L080A0904 @ case 1
	.4byte .L080A0904 @ case 2
	.4byte .L080A0904 @ case 3
	.4byte .L080A0904 @ case 4
	.4byte .L080A0904 @ case 5
	.4byte .L080A0904 @ case 6
	.4byte .L080A0904 @ case 7
	.4byte .L080A0904 @ case 8
	.4byte .L080A090E @ case 9
	.4byte .L080A0904 @ case 10
	.4byte .L080A0904 @ case 11
	.4byte .L080A0904 @ case 12
	.4byte .L080A0904 @ case 13
	.4byte .L080A0904 @ case 14
	.4byte .L080A0904 @ case 15
	.4byte .L080A0914 @ case 16
	.4byte .L080A0904 @ case 17
	.4byte .L080A091A @ case 18
	.4byte .L080A0904 @ case 19
	.4byte .L080A0904 @ case 20
	.4byte .L080A0904 @ case 21
	.4byte .L080A0920 @ case 22
	.4byte .L080A0904 @ case 23
	.4byte .L080A0904 @ case 24
	.4byte .L080A0904 @ case 25
	.4byte .L080A0904 @ case 26
	.4byte .L080A0904 @ case 27
	.4byte .L080A0926 @ case 28
.L080A0904:
	movs r0, #0
	b .L080A092C
.L080A0908:
	adds r0, r2, #0
	adds r0, #0x98
	b .L080A092C
.L080A090E:
	movs r1, #0xaa
	lsls r1, r1, #1
	b .L080A092A
.L080A0914:
	movs r1, #0xf2
	lsls r1, r1, #1
	b .L080A092A
.L080A091A:
	movs r1, #0x84
	lsls r1, r1, #2
	b .L080A092A
.L080A0920:
	movs r1, #0x99
	lsls r1, r1, #2
	b .L080A092A
.L080A0926:
	movs r1, #0xb9
	lsls r1, r1, #2
.L080A092A:
	adds r0, r2, r1
.L080A092C:
	pop {r1}
	bx r1

	thumb_func_start func_080A0930
func_080A0930: @ 0x080A0930
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	subs r0, #0x24
	cmp r0, #6
	bhi .L080A0968
	lsls r0, r0, #2
	ldr r1, .L080A0948 @ =.L080A094C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A0948: .4byte .L080A094C
.L080A094C: @ jump table
	.4byte .L080A096C @ case 0
	.4byte .L080A0972 @ case 1
	.4byte .L080A0978 @ case 2
	.4byte .L080A097E @ case 3
	.4byte .L080A0984 @ case 4
	.4byte .L080A098A @ case 5
	.4byte .L080A0990 @ case 6
.L080A0968:
	movs r0, #0
	b .L080A0994
.L080A096C:
	movs r1, #0xcf
	lsls r1, r1, #2
	b .L080A0992
.L080A0972:
	movs r1, #0xd8
	lsls r1, r1, #2
	b .L080A0992
.L080A0978:
	movs r1, #0xe1
	lsls r1, r1, #2
	b .L080A0992
.L080A097E:
	movs r1, #0xea
	lsls r1, r1, #2
	b .L080A0992
.L080A0984:
	movs r1, #0xf3
	lsls r1, r1, #2
	b .L080A0992
.L080A098A:
	movs r1, #0xfc
	lsls r1, r1, #2
	b .L080A0992
.L080A0990:
	ldr r1, .L080A0998 @ =0x00000414
.L080A0992:
	adds r0, r2, r1
.L080A0994:
	pop {r1}
	bx r1
	.align 2, 0
.L080A0998: .4byte 0x00000414

	thumb_func_start func_080A099C
func_080A099C: @ 0x080A099C
	push {lr}
	adds r2, r0, #0
	cmp r1, #6
	bhi .L080A09D0
	lsls r0, r1, #2
	ldr r1, .L080A09B0 @ =.L080A09B4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A09B0: .4byte .L080A09B4
.L080A09B4: @ jump table
	.4byte .L080A09D4 @ case 0
	.4byte .L080A09DA @ case 1
	.4byte .L080A09E0 @ case 2
	.4byte .L080A09E6 @ case 3
	.4byte .L080A09EC @ case 4
	.4byte .L080A09F2 @ case 5
	.4byte .L080A09F8 @ case 6
.L080A09D0:
	movs r0, #0
	b .L080A09FC
.L080A09D4:
	movs r1, #0xcf
	lsls r1, r1, #2
	b .L080A09FA
.L080A09DA:
	movs r1, #0xd8
	lsls r1, r1, #2
	b .L080A09FA
.L080A09E0:
	movs r1, #0xe1
	lsls r1, r1, #2
	b .L080A09FA
.L080A09E6:
	movs r1, #0xea
	lsls r1, r1, #2
	b .L080A09FA
.L080A09EC:
	movs r1, #0xf3
	lsls r1, r1, #2
	b .L080A09FA
.L080A09F2:
	movs r1, #0xfc
	lsls r1, r1, #2
	b .L080A09FA
.L080A09F8:
	ldr r1, .L080A0A00 @ =0x00000414
.L080A09FA:
	adds r0, r2, r1
.L080A09FC:
	pop {r1}
	bx r1
	.align 2, 0
.L080A0A00: .4byte 0x00000414

	thumb_func_start func_080A0A04
func_080A0A04: @ 0x080A0A04
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	lsls r0, r0, #0x1e
	movs r2, #0
	cmp r0, #0
	bge .L080A0A14
	adds r2, r1, #4
.L080A0A14:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A0A1C
func_080A0A1C: @ 0x080A0A1C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r3, [r4]
	lsls r2, r3, #0x1a
	lsrs r2, r2, #0x1a
	adds r2, r2, r1
	str r2, [sp]
	movs r0, #0x3f
	str r0, [sp, #4]
	add r0, sp, #4
	mov r1, sp
	cmp r2, #0x3f
	bls .L080A0A3A
	adds r1, r0, #0
.L080A0A3A:
	ldr r1, [r1]
	movs r0, #0x3f
	ands r1, r0
	movs r0, #0x40
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r4]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A0A54
func_080A0A54: @ 0x080A0A54
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrh r3, [r4]
	lsls r2, r3, #0x13
	lsrs r2, r2, #0x19
	adds r2, r2, r1
	str r2, [sp]
	movs r0, #0x7f
	str r0, [sp, #4]
	add r1, sp, #4
	mov r0, sp
	cmp r2, #0x7f
	bls .L080A0A72
	adds r0, r1, #0
.L080A0A72:
	ldr r0, [r0]
	movs r1, #0x7f
	ands r0, r1
	lsls r0, r0, #6
	ldr r1, .L080A0A8C @ =0xFFFFE03F
	ands r1, r3
	orrs r1, r0
	strh r1, [r4]
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A0A8C: .4byte 0xFFFFE03F

	thumb_func_start func_080A0A90
func_080A0A90: @ 0x080A0A90
	push {r4, r5, lr}
	sub sp, #8
	adds r3, r0, #0
	ldrb r0, [r3, #2]
	lsls r0, r0, #0x1a
	cmp r0, #0
	blt .L080A0ACC
	ldr r4, [r3]
	lsls r0, r4, #0xb
	lsrs r0, r0, #0x18
	adds r0, #1
	str r0, [sp]
	movs r5, #0xff
	str r5, [sp, #4]
	add r2, sp, #4
	mov r1, sp
	cmp r0, #0xff
	bls .L080A0AB6
	adds r1, r2, #0
.L080A0AB6:
	ldr r1, [r1]
	ands r1, r5
	lsls r1, r1, #0xd
	ldr r0, .L080A0AD4 @ =0xFFE01FFF
	ands r0, r4
	orrs r0, r1
	str r0, [r3]
	ldrb r0, [r3, #2]
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r3, #2]
.L080A0ACC:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080A0AD4: .4byte 0xFFE01FFF

	thumb_func_start func_080A0AD8
func_080A0AD8: @ 0x080A0AD8
	push {lr}
	cmp r1, #1
	beq .L080A0AEA
	cmp r1, #1
	blo .L080A0AE6
	cmp r1, #2
	beq .L080A0AEE
.L080A0AE6:
	adds r0, #0x30
	b .L080A0AF0
.L080A0AEA:
	adds r0, #0x38
	b .L080A0AF0
.L080A0AEE:
	adds r0, #0x40
.L080A0AF0:
	pop {r1}
	bx r1

	thumb_func_start func_080A0AF4
func_080A0AF4: @ 0x080A0AF4
	push {lr}
	cmp r1, #1
	beq .L080A0B06
	cmp r1, #1
	blo .L080A0B02
	cmp r1, #2
	beq .L080A0B0A
.L080A0B02:
	adds r0, #0x48
	b .L080A0B0C
.L080A0B06:
	adds r0, #0x50
	b .L080A0B0C
.L080A0B0A:
	adds r0, #0x58
.L080A0B0C:
	pop {r1}
	bx r1

	thumb_func_start func_080A0B10
func_080A0B10: @ 0x080A0B10
	adds r0, #0x60
	bx lr

	thumb_func_start func_080A0B14
func_080A0B14: @ 0x080A0B14
	adds r0, #0x68
	bx lr

	thumb_func_start func_080A0B18
func_080A0B18: @ 0x080A0B18
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x48
	adds r7, r0, #0
	adds r5, r1, #0
	mov sl, r2
	str r3, [sp, #0x24]
	ldrb r1, [r7, #2]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r7, #2]
	adds r0, r7, #0
	bl func_080A0490
	mov sb, r0
	rsbs r0, r0, #0
	mov r1, sb
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	adds r4, r7, #0
	adds r4, #0x70
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	adds r4, #0x14
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	adds r4, #0x14
	adds r0, r4, #0
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #4
	bls .L080A0B88
	ldrb r0, [r5, #9]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A0B9C
.L080A0B88:
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl DayUpdate__12BachelorettebUi
.L080A0B9C:
	adds r4, r7, #0
	adds r4, #0xb0
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	adds r4, #0x14
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	adds r0, r7, #0
	adds r0, #0xd8
	bl func_0809EE4C
	adds r4, #0x2c
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r2, #0x82
	lsls r2, r2, #1
	adds r4, r7, r2
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r3, #0x8c
	lsls r3, r3, #1
	adds r4, r7, r3
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r0, #0x96
	lsls r0, r0, #1
	adds r4, r7, r0
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r4, r7, r1
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r4, r7, r2
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl DayUpdate__12BachelorettebUi
	movs r3, #0xb6
	lsls r3, r3, #1
	adds r4, r7, r3
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r0, #0xc0
	lsls r0, r0, #1
	adds r4, r7, r0
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r1, #0xca
	lsls r1, r1, #1
	adds r4, r7, r1
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r4, r7, r2
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r3, #0xde
	lsls r3, r3, #1
	adds r4, r7, r3
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r4, r7, r0
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r4, r7, r1
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl DayUpdate__12BachelorettebUi
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r4, r7, r2
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r3, #0x84
	lsls r3, r3, #2
	adds r4, r7, r3
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl DayUpdate__12BachelorettebUi
	movs r0, #0x8a
	lsls r0, r0, #2
	adds r4, r7, r0
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r4, r7, r1
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r2, #0x94
	lsls r2, r2, #2
	adds r4, r7, r2
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r3, #0x99
	lsls r3, r3, #2
	adds r4, r7, r3
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl DayUpdate__12BachelorettebUi
	ldrb r0, [r5, #9]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A0DDE
	movs r0, #0x9f
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl GetFriendship__C3Npc
	adds r5, r0, #0
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	adds r0, r4, #0
	bl GetFriendship__C3Npc
	cmp r0, r5
	bls .L080A0DDE
	adds r0, r4, #0
	bl GetFriendship__C3Npc
	adds r1, r0, #0
	subs r1, r1, r5
	adds r0, r4, #0
	bl AddFriendship__3Npci
.L080A0DDE:
	movs r1, #0xa4
	lsls r1, r1, #2
	adds r0, r7, r1
	bl func_0809EBEC
	movs r2, #0xaa
	lsls r2, r2, #2
	adds r4, r7, r2
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r3, #0xaf
	lsls r3, r3, #2
	adds r4, r7, r3
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r0, #0xb4
	lsls r0, r0, #2
	adds r4, r7, r0
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r4, r7, r1
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r2, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl DayUpdate__12BachelorettebUi
	movs r2, #0xbf
	lsls r2, r2, #2
	adds r4, r7, r2
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
	mov r0, sl
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne .L080A0E88
	movs r3, #0xc4
	lsls r3, r3, #2
	adds r4, r7, r3
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
.L080A0E88:
	mov r0, sl
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne .L080A0EAE
	movs r0, #0xca
	lsls r0, r0, #2
	adds r4, r7, r0
	bl rand
	movs r1, #0x64
	bl __modsi3
	adds r1, r0, #0
	adds r0, r4, #0
	bl DayUpdate__3NpcUi
.L080A0EAE:
	ldrb r0, [r7, #3]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge .L080A0EBC
	adds r0, r7, #4
	bl func_0809EAF8
.L080A0EBC:
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, #0
	bl DayUpdate__13HarvestSprite
	mov r0, sp
	movs r1, #0
	bl func_0809E804
	adds r0, r4, #0
	mov r1, sp
	bl SetLocation__3NpcRC13ActorLocation
	movs r6, #0
	str r6, [sp, #8]
	add r1, sp, #8
	adds r0, r4, #0
	bl method_0809E7C8__13HarvestSprite
	movs r2, #0x87
	lsls r2, r2, #3
	adds r5, r7, r2
	adds r0, r5, #0
	movs r1, #0
	bl func_0809E994
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r4, r7, r3
	adds r0, r4, #0
	bl DayUpdate__13HarvestSprite
	mov r0, sp
	movs r1, #1
	bl func_0809E804
	adds r0, r4, #0
	mov r1, sp
	bl SetLocation__3NpcRC13ActorLocation
	str r6, [sp, #0xc]
	add r1, sp, #0xc
	adds r0, r4, #0
	bl method_0809E7C8__13HarvestSprite
	adds r0, r5, #0
	movs r1, #1
	bl func_0809E994
	movs r0, #0xe1
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl DayUpdate__13HarvestSprite
	mov r0, sp
	movs r1, #2
	bl func_0809E804
	adds r0, r4, #0
	mov r1, sp
	bl SetLocation__3NpcRC13ActorLocation
	str r6, [sp, #0x10]
	add r1, sp, #0x10
	adds r0, r4, #0
	bl method_0809E7C8__13HarvestSprite
	adds r0, r5, #0
	movs r1, #2
	bl func_0809E994
	movs r1, #0xea
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, #0
	bl DayUpdate__13HarvestSprite
	mov r0, sp
	movs r1, #3
	bl func_0809E804
	adds r0, r4, #0
	mov r1, sp
	bl SetLocation__3NpcRC13ActorLocation
	str r6, [sp, #0x14]
	add r1, sp, #0x14
	adds r0, r4, #0
	bl method_0809E7C8__13HarvestSprite
	adds r0, r5, #0
	movs r1, #3
	bl func_0809E994
	movs r2, #0xf3
	lsls r2, r2, #2
	adds r4, r7, r2
	adds r0, r4, #0
	bl DayUpdate__13HarvestSprite
	mov r0, sp
	movs r1, #4
	bl func_0809E804
	adds r0, r4, #0
	mov r1, sp
	bl SetLocation__3NpcRC13ActorLocation
	str r6, [sp, #0x18]
	add r1, sp, #0x18
	adds r0, r4, #0
	bl method_0809E7C8__13HarvestSprite
	adds r0, r5, #0
	movs r1, #4
	bl func_0809E994
	movs r3, #0xfc
	lsls r3, r3, #2
	adds r4, r7, r3
	adds r0, r4, #0
	bl DayUpdate__13HarvestSprite
	mov r0, sp
	movs r1, #5
	bl func_0809E804
	adds r0, r4, #0
	mov r1, sp
	bl SetLocation__3NpcRC13ActorLocation
	str r6, [sp, #0x1c]
	add r1, sp, #0x1c
	adds r0, r4, #0
	bl method_0809E7C8__13HarvestSprite
	adds r0, r5, #0
	movs r1, #5
	bl func_0809E994
	ldr r0, .L080A10FC @ =0x00000414
	adds r4, r7, r0
	adds r0, r4, #0
	bl DayUpdate__13HarvestSprite
	mov r0, sp
	movs r1, #6
	bl func_0809E804
	adds r0, r4, #0
	mov r1, sp
	bl SetLocation__3NpcRC13ActorLocation
	str r6, [sp, #0x20]
	add r1, sp, #0x20
	adds r0, r4, #0
	bl method_0809E7C8__13HarvestSprite
	adds r0, r5, #0
	movs r1, #6
	bl func_0809E994
	mov r2, sl
	ldrb r1, [r2, #0x1b]
	lsrs r1, r1, #7
	ldrb r2, [r2, #0x1c]
	movs r0, #1
	ands r0, r2
	lsls r0, r0, #1
	orrs r0, r1
	cmp r0, #2
	beq .L080A104A
	lsls r0, r2, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L080A104A
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L080A104A
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L080A104A
	mov r3, sl
	ldrh r0, [r3, #0x1c]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L080A104A
	mov r0, sl
	adds r0, #0x4b
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne .L080A105A
.L080A104A:
	movs r0, #0x8e
	lsls r0, r0, #3
	adds r1, r7, r0
	ldr r0, [r1]
	cmp r0, #0x3c
	beq .L080A105A
	adds r0, #1
	str r0, [r1]
.L080A105A:
	adds r4, r7, #0
	adds r4, #0x98
	adds r0, r4, #0
	bl method_0809E4BC__C12Bachelorette
	mov sl, r4
	adds r1, r7, #0
	adds r1, #0x30
	str r1, [sp, #0x28]
	adds r2, r7, #0
	adds r2, #0x38
	str r2, [sp, #0x2c]
	adds r3, r7, #0
	adds r3, #0x40
	str r3, [sp, #0x30]
	adds r1, #0x18
	str r1, [sp, #0x34]
	adds r2, #0x18
	str r2, [sp, #0x38]
	adds r3, #0x18
	str r3, [sp, #0x3c]
	adds r1, #0x18
	str r1, [sp, #0x40]
	adds r2, #0x18
	str r2, [sp, #0x44]
	cmp r0, #4
	bhi .L080A112A
	mov r3, r8
	cmp r3, #0
	beq .L080A109C
	mov r0, sb
	cmp r0, #3
	bne .L080A112A
.L080A109C:
	ldr r1, [sp, #0x68]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	bl CountChickens__C4Coop
	adds r3, r7, #0
	adds r3, #0x30
	str r3, [sp, #0x28]
	adds r1, r7, #0
	adds r1, #0x38
	str r1, [sp, #0x2c]
	adds r2, r7, #0
	adds r2, #0x40
	str r2, [sp, #0x30]
	adds r3, #0x18
	str r3, [sp, #0x34]
	adds r1, #0x18
	str r1, [sp, #0x38]
	adds r2, #0x18
	str r2, [sp, #0x3c]
	adds r3, #0x18
	str r3, [sp, #0x40]
	adds r1, #0x18
	str r1, [sp, #0x44]
	cmp r0, #8
	bne .L080A112A
	movs r6, #0
	movs r5, #0
.L080A10D6:
	ldr r2, [sp, #0x68]
	movs r3, #0xff
	lsls r3, r3, #2
	adds r0, r2, r3
	adds r1, r5, #0
	bl GetChicken__C4CoopUi
	cmp r0, #0
	beq .L080A10EE
	bl GetAffection__C6Animal
	adds r6, r6, r0
.L080A10EE:
	adds r5, #1
	cmp r5, #7
	bls .L080A10D6
	lsrs r6, r6, #3
	mov r5, sl
	ldr r4, .L080A1100 @ =gUnk_08104109
	b .L080A1112
	.align 2, 0
.L080A10FC: .4byte 0x00000414
.L080A1100: .4byte gUnk_08104109
.L080A1104:
	adds r0, r5, #0
	ldr r1, .L080A1154 @ =0x000009C4
	bl AddLove__12Bachelorettei
	adds r0, r5, #0
	bl method_0809E550__12Bachelorette
.L080A1112:
	adds r0, r5, #0
	bl method_0809E4BC__C12Bachelorette
	cmp r0, #4
	bhi .L080A112A
	mov r0, sl
	bl method_0809E4BC__C12Bachelorette
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r6, r0
	bhs .L080A1104
.L080A112A:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r7, r1
	bl method_0809E4BC__C12Bachelorette
	cmp r0, #4
	bhi .L080A1182
	mov r2, r8
	cmp r2, #0
	beq .L080A1144
	mov r3, sb
	cmp r3, #0xc
	bne .L080A1182
.L080A1144:
	ldr r0, [r7]
	lsls r0, r0, #0xb
	lsrs r6, r0, #0x18
	movs r0, #0xaa
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, .L080A1158 @ =gUnk_0810410E
	b .L080A116A
	.align 2, 0
.L080A1154: .4byte 0x000009C4
.L080A1158: .4byte gUnk_0810410E
.L080A115C:
	adds r0, r5, #0
	ldr r1, .L080A11AC @ =0x000009C4
	bl AddLove__12Bachelorettei
	adds r0, r5, #0
	bl method_0809E550__12Bachelorette
.L080A116A:
	adds r0, r5, #0
	bl method_0809E4BC__C12Bachelorette
	cmp r0, #4
	bhi .L080A1182
	adds r0, r5, #0
	bl method_0809E4BC__C12Bachelorette
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r6, r0
	bhs .L080A115C
.L080A1182:
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r7, r1
	bl method_0809E4BC__C12Bachelorette
	cmp r0, #4
	bhi .L080A11DA
	mov r2, r8
	cmp r2, #0
	beq .L080A119C
	mov r3, sb
	cmp r3, #0x13
	bne .L080A11DA
.L080A119C:
	ldrh r0, [r7]
	lsls r0, r0, #0x13
	lsrs r6, r0, #0x19
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r5, r7, r0
	ldr r4, .L080A11B0 @ =gUnk_08104113
	b .L080A11C2
	.align 2, 0
.L080A11AC: .4byte 0x000009C4
.L080A11B0: .4byte gUnk_08104113
.L080A11B4:
	adds r0, r5, #0
	ldr r1, .L080A1208 @ =0x000009C4
	bl AddLove__12Bachelorettei
	adds r0, r5, #0
	bl method_0809E550__12Bachelorette
.L080A11C2:
	adds r0, r5, #0
	bl method_0809E4BC__C12Bachelorette
	cmp r0, #4
	bhi .L080A11DA
	adds r0, r5, #0
	bl method_0809E4BC__C12Bachelorette
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r6, r0
	bhs .L080A11B4
.L080A11DA:
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r7, r1
	bl method_0809E4BC__C12Bachelorette
	cmp r0, #4
	bhi .L080A1236
	mov r2, r8
	cmp r2, #0
	beq .L080A11F4
	mov r3, sb
	cmp r3, #0x15
	bne .L080A1236
.L080A11F4:
	ldr r0, [sp, #0x24]
	bl func_0800E970
	adds r6, r0, #0
	movs r0, #0x84
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r4, .L080A120C @ =gUnk_08104118
	b .L080A121E
	.align 2, 0
.L080A1208: .4byte 0x000009C4
.L080A120C: .4byte gUnk_08104118
.L080A1210:
	adds r0, r5, #0
	ldr r1, .L080A1260 @ =0x000009C4
	bl AddLove__12Bachelorettei
	adds r0, r5, #0
	bl method_0809E550__12Bachelorette
.L080A121E:
	adds r0, r5, #0
	bl method_0809E4BC__C12Bachelorette
	cmp r0, #4
	bhi .L080A1236
	adds r0, r5, #0
	bl method_0809E4BC__C12Bachelorette
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r6, r0
	bhs .L080A1210
.L080A1236:
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r7, r1
	bl method_0809E4BC__C12Bachelorette
	cmp r0, #4
	bhi .L080A128E
	mov r2, r8
	cmp r2, #0
	beq .L080A1250
	mov r3, sb
	cmp r3, #0x19
	bne .L080A128E
.L080A1250:
	ldrb r0, [r7]
	lsls r0, r0, #0x1a
	lsrs r6, r0, #0x1a
	movs r0, #0x99
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r4, .L080A1264 @ =gUnk_0810411D
	b .L080A1276
	.align 2, 0
.L080A1260: .4byte 0x000009C4
.L080A1264: .4byte gUnk_0810411D
.L080A1268:
	adds r0, r5, #0
	ldr r1, .L080A12B4 @ =0x000009C4
	bl AddLove__12Bachelorettei
	adds r0, r5, #0
	bl method_0809E550__12Bachelorette
.L080A1276:
	adds r0, r5, #0
	bl method_0809E4BC__C12Bachelorette
	cmp r0, #4
	bhi .L080A128E
	adds r0, r5, #0
	bl method_0809E4BC__C12Bachelorette
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r6, r0
	bhs .L080A1268
.L080A128E:
	ldrh r0, [r7, #2]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1d
	cmp r0, #4
	bls .L080A129A
	b .L080A13DE
.L080A129A:
	movs r6, #0
	movs r4, #0
	movs r5, #0
.L080A12A0:
	adds r0, r5, #0
	subs r0, #0x17
	cmp r0, #0xc
	bhi .L080A12F0
	lsls r0, r0, #2
	ldr r1, .L080A12B8 @ =.L080A12BC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A12B4: .4byte 0x000009C4
.L080A12B8: .4byte .L080A12BC
.L080A12BC: @ jump table
	.4byte .L080A1304 @ case 0
	.4byte .L080A12F0 @ case 1
	.4byte .L080A12F0 @ case 2
	.4byte .L080A1304 @ case 3
	.4byte .L080A12F0 @ case 4
	.4byte .L080A12F0 @ case 5
	.4byte .L080A12F0 @ case 6
	.4byte .L080A1304 @ case 7
	.4byte .L080A12F0 @ case 8
	.4byte .L080A12F0 @ case 9
	.4byte .L080A1304 @ case 10
	.4byte .L080A1304 @ case 11
	.4byte .L080A1304 @ case 12
.L080A12F0:
	adds r0, r7, #0
	adds r1, r5, #0
	bl func_080A06B0
	cmp r0, #0
	beq .L080A1304
	bl GetFriendship__C3Npc
	adds r6, r6, r0
	adds r4, #1
.L080A1304:
	adds r5, #1
	cmp r5, #0x2a
	bls .L080A12A0
	adds r0, r6, #0
	adds r1, r4, #0
	bl __udivsi3
	adds r5, r0, #0
	ldrh r0, [r7, #2]
	lsls r0, r0, #0x17
	lsrs r1, r0, #0x1d
	cmp r1, #4
	bhi .L080A13DE
	ldr r0, .L080A1324 @ =gUnk_08104122
	adds r0, r1, r0
	b .L080A13D8
	.align 2, 0
.L080A1324: .4byte gUnk_08104122
.L080A1328:
	mov r1, r8
	cmp r1, #0
	beq .L080A1334
	mov r2, sb
	cmp r2, #3
	bne .L080A133C
.L080A1334:
	mov r0, sl
	ldr r1, .L080A146C @ =0x000009C4
	bl AddLove__12Bachelorettei
.L080A133C:
	mov r3, r8
	cmp r3, #0
	beq .L080A1348
	mov r0, sb
	cmp r0, #0xc
	bne .L080A1354
.L080A1348:
	movs r1, #0xaa
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, .L080A146C @ =0x000009C4
	bl AddLove__12Bachelorettei
.L080A1354:
	mov r2, r8
	cmp r2, #0
	beq .L080A1360
	mov r3, sb
	cmp r3, #0x13
	bne .L080A136C
.L080A1360:
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, .L080A146C @ =0x000009C4
	bl AddLove__12Bachelorettei
.L080A136C:
	mov r2, r8
	cmp r2, #0
	beq .L080A1378
	mov r3, sb
	cmp r3, #0x15
	bne .L080A1384
.L080A1378:
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, .L080A146C @ =0x000009C4
	bl AddLove__12Bachelorettei
.L080A1384:
	mov r2, r8
	cmp r2, #0
	beq .L080A1390
	mov r3, sb
	cmp r3, #0x19
	bne .L080A139C
.L080A1390:
	movs r1, #0x99
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, .L080A146C @ =0x000009C4
	bl AddLove__12Bachelorettei
.L080A139C:
	mov r2, r8
	cmp r2, #0
	beq .L080A13A8
	mov r3, sb
	cmp r3, #0x1f
	bne .L080A13B4
.L080A13A8:
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, .L080A146C @ =0x000009C4
	bl AddLove__12Bachelorettei
.L080A13B4:
	ldrh r2, [r7, #2]
	lsls r0, r2, #0x17
	lsrs r0, r0, #0x1d
	adds r0, #1
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #6
	ldr r3, .L080A1470 @ =0xFFFFFE3F
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strh r2, [r7, #2]
	lsls r2, r2, #0x17
	lsrs r2, r2, #0x1d
	cmp r2, #4
	bhi .L080A13DE
	ldr r0, .L080A1474 @ =gUnk_08104122
	adds r0, r2, r0
.L080A13D8:
	ldrb r0, [r0]
	cmp r5, r0
	bhs .L080A1328
.L080A13DE:
	mov r0, sp
	movs r1, #0
	bl func_080A17A0
	ldr r1, [sp, #0x28]
	mov r0, sp
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r0, sp
	movs r1, #1
	bl func_080A17A0
	ldr r1, [sp, #0x2c]
	mov r0, sp
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r0, sp
	movs r1, #2
	bl func_080A17A0
	ldr r1, [sp, #0x30]
	mov r0, sp
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r0, sp
	movs r1, #0
	bl func_080A1890
	ldr r1, [sp, #0x34]
	mov r0, sp
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r0, sp
	movs r1, #1
	bl func_080A1890
	ldr r1, [sp, #0x38]
	mov r0, sp
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r0, sp
	movs r1, #2
	bl func_080A1890
	ldr r1, [sp, #0x3c]
	mov r0, sp
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r0, sp
	bl func_080A198C
	ldr r1, [sp, #0x40]
	mov r0, sp
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r0, sp
	bl func_080A19EC
	ldr r1, [sp, #0x44]
	mov r0, sp
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	add sp, #0x48
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A146C: .4byte 0x000009C4
.L080A1470: .4byte 0xFFFFFE3F
.L080A1474: .4byte gUnk_08104122

	thumb_func_start func_080A1478
func_080A1478: @ 0x080A1478
	ldr r1, [r1]
	str r1, [r0, #0x2c]
	bx lr
	.align 2, 0

	thumb_func_start func_080A1480
func_080A1480: @ 0x080A1480
	adds r0, #0x2c
	bx lr

	thumb_func_start func_080A1484
func_080A1484: @ 0x080A1484
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r2, #0
	ldrh r0, [r1]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	cmp r0, #0x2a
	bls .L080A1496
	b .L080A1798
.L080A1496:
	lsls r0, r0, #2
	ldr r1, .L080A14A0 @ =.L080A14A4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A14A0: .4byte .L080A14A4
.L080A14A4: @ jump table
	.4byte .L080A1550 @ case 0
	.4byte .L080A1550 @ case 1
	.4byte .L080A1798 @ case 2
	.4byte .L080A1550 @ case 3
	.4byte .L080A1550 @ case 4
	.4byte .L080A1550 @ case 5
	.4byte .L080A1550 @ case 6
	.4byte .L080A1550 @ case 7
	.4byte .L080A1550 @ case 8
	.4byte .L080A1798 @ case 9
	.4byte .L080A1636 @ case 10
	.4byte .L080A1636 @ case 11
	.4byte .L080A164E @ case 12
	.4byte .L080A1654 @ case 13
	.4byte .L080A165A @ case 14
	.4byte .L080A1678 @ case 15
	.4byte .L080A1678 @ case 16
	.4byte .L080A1798 @ case 17
	.4byte .L080A1798 @ case 18
	.4byte .L080A1696 @ case 19
	.4byte .L080A1696 @ case 20
	.4byte .L080A16A8 @ case 21
	.4byte .L080A16A8 @ case 22
	.4byte .L080A16A8 @ case 23
	.4byte .L080A16BA @ case 24
	.4byte .L080A16BA @ case 25
	.4byte .L080A16BA @ case 26
	.4byte .L080A16BA @ case 27
	.4byte .L080A16EC @ case 28
	.4byte .L080A1798 @ case 29
	.4byte .L080A173C @ case 30
	.4byte .L080A174E @ case 31
	.4byte .L080A174E @ case 32
	.4byte .L080A174E @ case 33
	.4byte .L080A174E @ case 34
	.4byte .L080A1798 @ case 35
	.4byte .L080A1760 @ case 36
	.4byte .L080A1798 @ case 37
	.4byte .L080A1766 @ case 38
	.4byte .L080A1798 @ case 39
	.4byte .L080A1776 @ case 40
	.4byte .L080A1784 @ case 41
	.4byte .L080A1784 @ case 42
.L080A1550:
	movs r5, #1
.L080A1552:
	movs r1, #1
	cmp r5, #0x21
	beq .L080A1570
	cmp r5, #0x21
	bhi .L080A1562
	cmp r5, #0x20
	beq .L080A1580
	b .L080A1582
.L080A1562:
	cmp r5, #0x22
	bne .L080A1582
	adds r0, r6, #0
	adds r0, #0x3b
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	b .L080A1578
.L080A1570:
	adds r0, r6, #0
	adds r0, #0x3a
	ldrb r0, [r0]
	lsls r0, r0, #0x19
.L080A1578:
	lsrs r0, r0, #0x1e
	cmp r0, #2
	beq .L080A1582
	b .L080A1598
.L080A1580:
	movs r1, #0
.L080A1582:
	cmp r1, #0
	beq .L080A1598
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080A06B0
	cmp r0, #0
	beq .L080A1598
	movs r1, #1
	bl SubtractFriendship__3Npci
.L080A1598:
	subs r0, r5, #3
	cmp r0, #0x1c
	bhi .L080A162E
	lsls r0, r0, #2
	ldr r1, .L080A15A8 @ =.L080A15AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A15A8: .4byte .L080A15AC
.L080A15AC: @ jump table
	.4byte .L080A1620 @ case 0
	.4byte .L080A162E @ case 1
	.4byte .L080A162E @ case 2
	.4byte .L080A162E @ case 3
	.4byte .L080A162E @ case 4
	.4byte .L080A162E @ case 5
	.4byte .L080A162E @ case 6
	.4byte .L080A162E @ case 7
	.4byte .L080A162E @ case 8
	.4byte .L080A1620 @ case 9
	.4byte .L080A162E @ case 10
	.4byte .L080A162E @ case 11
	.4byte .L080A162E @ case 12
	.4byte .L080A162E @ case 13
	.4byte .L080A162E @ case 14
	.4byte .L080A162E @ case 15
	.4byte .L080A1620 @ case 16
	.4byte .L080A162E @ case 17
	.4byte .L080A1620 @ case 18
	.4byte .L080A162E @ case 19
	.4byte .L080A162E @ case 20
	.4byte .L080A162E @ case 21
	.4byte .L080A1620 @ case 22
	.4byte .L080A162E @ case 23
	.4byte .L080A162E @ case 24
	.4byte .L080A162E @ case 25
	.4byte .L080A162E @ case 26
	.4byte .L080A162E @ case 27
	.4byte .L080A1620 @ case 28
.L080A1620:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080A0878
	movs r1, #0xc8
	bl SubtractLove__12Bachelorettei
.L080A162E:
	adds r5, #1
	cmp r5, #0x2a
	bls .L080A1552
	b .L080A1798
.L080A1636:
	adds r0, r4, #0
	adds r0, #0x70
	movs r1, #5
	bl SubtractFriendship__3Npci
	adds r0, r4, #0
	adds r0, #0x84
	movs r1, #5
	bl SubtractFriendship__3Npci
	adds r4, #0x98
	b .L080A16D8
.L080A164E:
	movs r1, #0x8a
	lsls r1, r1, #2
	b .L080A177A
.L080A1654:
	movs r1, #0xaa
	lsls r1, r1, #2
	b .L080A177A
.L080A165A:
	movs r1, #0xca
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r1, #0xd4
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r0, #0x84
	lsls r0, r0, #2
	b .L080A16D6
.L080A1678:
	movs r1, #0xde
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r0, #0xf2
	lsls r0, r0, #1
	b .L080A16D6
.L080A1696:
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r0, #0x84
	lsls r0, r0, #2
	b .L080A16D6
.L080A16A8:
	movs r1, #0x94
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r0, #0x99
	lsls r0, r0, #2
	b .L080A16D6
.L080A16BA:
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r0, #0xaa
	lsls r0, r0, #1
.L080A16D6:
	adds r4, r4, r0
.L080A16D8:
	adds r0, r4, #0
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r4, #0
	bl SubtractLove__12Bachelorettei
	b .L080A1798
.L080A16EC:
	movs r1, #0xcf
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r1, #0xd8
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r1, #0xe1
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r1, #0xf3
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r1, #0xfc
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	ldr r1, .L080A1738 @ =0x00000414
	b .L080A177A
	.align 2, 0
.L080A1738: .4byte 0x00000414
.L080A173C:
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r1, #0xc0
	lsls r1, r1, #1
	b .L080A177A
.L080A174E:
	movs r1, #0x82
	lsls r1, r1, #1
	adds r0, r4, r1
	movs r1, #5
	bl SubtractFriendship__3Npci
	movs r1, #0x8c
	lsls r1, r1, #1
	b .L080A177A
.L080A1760:
	movs r1, #0x9f
	lsls r1, r1, #2
	b .L080A177A
.L080A1766:
	adds r0, r4, #0
	adds r0, #0xd8
	movs r1, #5
	bl SubtractFriendship__3Npci
	adds r0, r4, #0
	adds r0, #0xf0
	b .L080A177C
.L080A1776:
	movs r1, #0xa4
	lsls r1, r1, #2
.L080A177A:
	adds r0, r4, r1
.L080A177C:
	movs r1, #5
	bl SubtractFriendship__3Npci
	b .L080A1798
.L080A1784:
	adds r0, r4, #0
	adds r0, #0xb0
	movs r1, #5
	bl SubtractFriendship__3Npci
	adds r0, r4, #0
	adds r0, #0xc4
	movs r1, #5
	bl SubtractFriendship__3Npci
.L080A1798:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A17A0
func_080A17A0: @ 0x080A17A0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	cmp r1, #1
	beq .L080A17F0
	cmp r1, #1
	blo .L080A17B2
	cmp r1, #2
	beq .L080A1834
.L080A17B2:
	mov r4, sp
	movs r2, #7
	ldrh r1, [r4]
	ldr r3, .L080A17EC @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	ldrb r1, [r4, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #1]
	movs r5, #6
	ldrh r1, [r4, #2]
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r4, #2]
	ldrb r0, [r4, #3]
	ands r2, r0
	movs r0, #0x60
	orrs r2, r0
	strb r2, [r4, #3]
	movs r1, #5
	b .L080A186A
	.align 2, 0
.L080A17EC: .4byte 0xFFFFFC00
.L080A17F0:
	mov r3, sp
	movs r4, #7
	ldrh r1, [r3]
	ldr r2, .L080A1830 @ =0xFFFFFC00
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r3]
	movs r5, #0xe0
	ldrb r4, [r3, #1]
	movs r1, #3
	adds r0, r1, #0
	ands r0, r4
	orrs r0, r5
	strb r0, [r3, #1]
	movs r5, #5
	ldrh r4, [r3, #2]
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r5
	strh r0, [r3, #2]
	movs r4, #0xa0
	ldrb r0, [r3, #3]
	ands r1, r0
	orrs r1, r4
	strb r1, [r3, #3]
	movs r1, #4
	ldrh r0, [r3, #4]
	ands r2, r0
	orrs r2, r1
	strh r2, [r3, #4]
	b .L080A1872
	.align 2, 0
.L080A1830: .4byte 0xFFFFFC00
.L080A1834:
	mov r4, sp
	movs r2, #7
	ldrh r1, [r4]
	ldr r3, .L080A188C @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	ldrb r1, [r4, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #1]
	movs r5, #6
	ldrh r1, [r4, #2]
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r4, #2]
	movs r1, #0xe0
	ldrb r0, [r4, #3]
	ands r2, r0
	orrs r2, r1
	strb r2, [r4, #3]
	movs r1, #3
.L080A186A:
	ldrh r0, [r4, #4]
	ands r3, r0
	orrs r3, r1
	strh r3, [r4, #4]
.L080A1872:
	movs r4, #0
	adds r0, r6, #0
	mov r1, sp
	movs r2, #6
	bl memcpy
	strb r4, [r6, #6]
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080A188C: .4byte 0xFFFFFC00

	thumb_func_start func_080A1890
func_080A1890: @ 0x080A1890
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	cmp r1, #1
	beq .L080A18F0
	cmp r1, #1
	blo .L080A18A2
	cmp r1, #2
	beq .L080A1934
.L080A18A2:
	mov r3, sp
	movs r4, #7
	ldrh r1, [r3]
	ldr r2, .L080A18EC @ =0xFFFFFC00
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r3]
	movs r6, #0
	ldrb r4, [r3, #1]
	movs r1, #3
	adds r0, r1, #0
	ands r0, r4
	strb r0, [r3, #1]
	movs r5, #0xf
	ldrh r4, [r3, #2]
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r5
	strh r0, [r3, #2]
	ldrb r0, [r3, #3]
	ands r1, r0
	movs r0, #0x60
	orrs r1, r0
	strb r1, [r3, #3]
	movs r1, #6
	ldrh r0, [r3, #4]
	ands r2, r0
	orrs r2, r1
	strh r2, [r3, #4]
	adds r0, r7, #0
	mov r1, sp
	movs r2, #6
	bl memcpy
	strb r6, [r7, #6]
	b .L080A197E
	.align 2, 0
.L080A18EC: .4byte 0xFFFFFC00
.L080A18F0:
	mov r4, sp
	movs r2, #7
	ldrh r1, [r4]
	ldr r3, .L080A1930 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4]
	ldrb r1, [r4, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strb r0, [r4, #1]
	movs r5, #0x11
	ldrh r1, [r4, #2]
	adds r0, r3, #0
	ands r0, r1
	orrs r0, r5
	strh r0, [r4, #2]
	movs r1, #0x80
	ldrb r0, [r4, #3]
	ands r2, r0
	orrs r2, r1
	strb r2, [r4, #3]
	movs r1, #6
	ldrh r0, [r4, #4]
	ands r3, r0
	orrs r3, r1
	strh r3, [r4, #4]
	b .L080A1970
	.align 2, 0
.L080A1930: .4byte 0xFFFFFC00
.L080A1934:
	mov r3, sp
	movs r4, #7
	ldrh r1, [r3]
	ldr r2, .L080A1988 @ =0xFFFFFC00
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r3]
	ldrb r4, [r3, #1]
	movs r1, #3
	adds r0, r1, #0
	ands r0, r4
	movs r6, #0x60
	orrs r0, r6
	strb r0, [r3, #1]
	movs r5, #0x12
	ldrh r4, [r3, #2]
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r5
	strh r0, [r3, #2]
	ldrb r0, [r3, #3]
	ands r1, r0
	orrs r1, r6
	strb r1, [r3, #3]
	movs r1, #5
	ldrh r0, [r3, #4]
	ands r2, r0
	orrs r2, r1
	strh r2, [r3, #4]
.L080A1970:
	movs r4, #0
	adds r0, r7, #0
	mov r1, sp
	movs r2, #6
	bl memcpy
	strb r4, [r7, #6]
.L080A197E:
	adds r0, r7, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A1988: .4byte 0xFFFFFC00

	thumb_func_start func_080A198C
func_080A198C: @ 0x080A198C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	mov r3, sp
	movs r4, #0x29
	ldrh r1, [r3]
	ldr r2, .L080A19E8 @ =0xFFFFFC00
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r3]
	movs r5, #0xe0
	ldrb r4, [r3, #1]
	movs r1, #3
	adds r0, r1, #0
	ands r0, r4
	orrs r0, r5
	strb r0, [r3, #1]
	movs r5, #2
	ldrh r4, [r3, #2]
	adds r0, r2, #0
	ands r0, r4
	orrs r0, r5
	strh r0, [r3, #2]
	ldrb r0, [r3, #3]
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strb r1, [r3, #3]
	movs r1, #1
	ldrh r0, [r3, #4]
	ands r2, r0
	orrs r2, r1
	strh r2, [r3, #4]
	movs r4, #0
	adds r0, r6, #0
	mov r1, sp
	movs r2, #6
	bl memcpy
	strb r4, [r6, #6]
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080A19E8: .4byte 0xFFFFFC00

	thumb_func_start func_080A19EC
func_080A19EC: @ 0x080A19EC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	mov r2, sp
	movs r4, #0x17
	ldrh r3, [r2]
	ldr r1, .L080A1A44 @ =0xFFFFFC00
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r4
	strh r0, [r2]
	movs r5, #0xc0
	ldrb r3, [r2, #1]
	movs r4, #3
	adds r0, r4, #0
	ands r0, r3
	orrs r0, r5
	strb r0, [r2, #1]
	movs r5, #3
	ldrh r3, [r2, #2]
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r5
	strh r0, [r2, #2]
	movs r5, #0
	ldrb r0, [r2, #3]
	ands r4, r0
	strb r4, [r2, #3]
	movs r3, #4
	ldrh r0, [r2, #4]
	ands r1, r0
	orrs r1, r3
	strh r1, [r2, #4]
	adds r0, r6, #0
	mov r1, sp
	movs r2, #6
	bl memcpy
	strb r5, [r6, #6]
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080A1A44: .4byte 0xFFFFFC00

	thumb_func_start func_080A1A48
func_080A1A48: @ 0x080A1A48
	bx lr
	.align 2, 0

	thumb_func_start func_080A1A4C
func_080A1A4C: @ 0x080A1A4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r2, #0
	movs r3, #0xff
.L080A1A5C:
	adds r1, r7, r2
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r2, #1
	cmp r2, #6
	ble .L080A1A5C
	ldrb r1, [r7, #7]
	movs r3, #8
	rsbs r3, r3, #0
	adds r0, r3, #0
	ands r0, r1
	movs r1, #6
	mov ip, r1
	mov r4, ip
	orrs r0, r4
	movs r1, #0x39
	rsbs r1, r1, #0
	mov sl, r1
	ands r0, r1
	movs r4, #0x30
	mov sb, r4
	mov r1, sb
	orrs r0, r1
	movs r1, #0x3f
	ands r0, r1
	movs r4, #0x80
	orrs r0, r4
	strb r0, [r7, #7]
	ldrb r0, [r7, #8]
	movs r1, #1
	orrs r0, r1
	movs r2, #0xf
	rsbs r2, r2, #0
	ands r0, r2
	movs r1, #0xc
	mov r8, r1
	mov r4, r8
	orrs r0, r4
	movs r6, #0x71
	rsbs r6, r6, #0
	ands r0, r6
	movs r5, #0x60
	orrs r0, r5
	strb r0, [r7, #8]
	ldrh r1, [r7, #8]
	ldr r0, .L080A1B30 @ =0xFFFFFC7F
	ands r0, r1
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r7, #8]
	ldrb r1, [r7, #9]
	movs r4, #0x1d
	rsbs r4, r4, #0
	adds r0, r4, #0
	ands r0, r1
	movs r1, #0x18
	orrs r0, r1
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0xc0
	orrs r0, r1
	strb r0, [r7, #9]
	ldrb r0, [r7, #0xa]
	ands r3, r0
	mov r0, ip
	orrs r3, r0
	mov r1, sl
	ands r3, r1
	mov r0, sb
	orrs r3, r0
	strb r3, [r7, #0xa]
	ldrh r1, [r7, #0xa]
	ldr r0, .L080A1B34 @ =0xFFFFFE3F
	ands r0, r1
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r7, #0xa]
	ldrb r0, [r7, #0xb]
	ands r2, r0
	mov r0, r8
	orrs r2, r0
	ands r2, r6
	orrs r2, r5
	movs r1, #0x80
	orrs r2, r1
	strb r2, [r7, #0xb]
	ldrb r1, [r7, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	ands r0, r4
	movs r1, #4
	orrs r0, r1
	strb r0, [r7, #0xc]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A1B30: .4byte 0xFFFFFC7F
.L080A1B34: .4byte 0xFFFFFE3F

	thumb_func_start func_080A1B38
func_080A1B38: @ 0x080A1B38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	mov r8, r1
	adds r4, r2, #0
	adds r5, r3, #0
	mov r0, sp
	bl __12RucksackItem
	mov r0, r8
	adds r1, r4, #0
	adds r2, r5, #0
	ldr r3, [sp, #0x28]
	bl func_080A1D20
	adds r6, r0, #0
	cmp r6, #0
	bge .L080A1B62
	b .L080A1C82
.L080A1B62:
	ldr r1, .L080A1B88 @ =gUnk_081043BC
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0x12
	ble .L080A1B74
	b .L080A1C82
.L080A1B74:
	cmp r0, #0xd
	bgt .L080A1C26
	movs r1, #0x2a
	cmp r0, #0xd
	bhi .L080A1BFE
	lsls r0, r0, #2
	ldr r1, .L080A1B8C @ =.L080A1B90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A1B88: .4byte gUnk_081043BC
.L080A1B8C: .4byte .L080A1B90
.L080A1B90: @ jump table
	.4byte .L080A1BC8 @ case 0
	.4byte .L080A1BCC @ case 1
	.4byte .L080A1BD0 @ case 2
	.4byte .L080A1BD4 @ case 3
	.4byte .L080A1BD8 @ case 4
	.4byte .L080A1BDC @ case 5
	.4byte .L080A1BE0 @ case 6
	.4byte .L080A1BE4 @ case 7
	.4byte .L080A1BE8 @ case 8
	.4byte .L080A1BEC @ case 9
	.4byte .L080A1BF0 @ case 10
	.4byte .L080A1BF4 @ case 11
	.4byte .L080A1BF8 @ case 12
	.4byte .L080A1BFC @ case 13
.L080A1BC8:
	movs r1, #0x2a
	b .L080A1BFE
.L080A1BCC:
	movs r1, #0x2b
	b .L080A1BFE
.L080A1BD0:
	movs r1, #0x2c
	b .L080A1BFE
.L080A1BD4:
	movs r1, #0x2d
	b .L080A1BFE
.L080A1BD8:
	movs r1, #0x2e
	b .L080A1BFE
.L080A1BDC:
	movs r1, #0x2f
	b .L080A1BFE
.L080A1BE0:
	movs r1, #0x30
	b .L080A1BFE
.L080A1BE4:
	movs r1, #0x31
	b .L080A1BFE
.L080A1BE8:
	movs r1, #0x32
	b .L080A1BFE
.L080A1BEC:
	movs r1, #0x33
	b .L080A1BFE
.L080A1BF0:
	movs r1, #0x34
	b .L080A1BFE
.L080A1BF4:
	movs r1, #0x35
	b .L080A1BFE
.L080A1BF8:
	movs r1, #0x37
	b .L080A1BFE
.L080A1BFC:
	movs r1, #0x28
.L080A1BFE:
	add r5, sp, #4
	add r4, sp, #8
	adds r0, r4, #0
	bl __4FoodUi
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #9
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0xa
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	bl __12RucksackItemG4Food
	b .L080A1C74
.L080A1C26:
	movs r1, #0
	subs r0, #0xe
	cmp r0, #4
	bhi .L080A1C62
	lsls r0, r0, #2
	ldr r1, .L080A1C38 @ =.L080A1C3C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A1C38: .4byte .L080A1C3C
.L080A1C3C: @ jump table
	.4byte .L080A1C50 @ case 0
	.4byte .L080A1C54 @ case 1
	.4byte .L080A1C58 @ case 2
	.4byte .L080A1C5C @ case 3
	.4byte .L080A1C60 @ case 4
.L080A1C50:
	movs r1, #0
	b .L080A1C62
.L080A1C54:
	movs r1, #1
	b .L080A1C62
.L080A1C58:
	movs r1, #2
	b .L080A1C62
.L080A1C5C:
	movs r1, #4
	b .L080A1C62
.L080A1C60:
	movs r1, #0x32
.L080A1C62:
	add r5, sp, #4
	add r4, sp, #0xc
	adds r0, r4, #0
	bl __7ArticleUi
	ldrb r1, [r4]
	adds r0, r5, #0
	bl __12RucksackItemG7Article
.L080A1C74:
	ldr r0, [sp, #4]
	str r0, [sp]
	mov r0, r8
	adds r1, r6, #0
	ldr r2, [sp, #0x28]
	bl func_080A1C94
.L080A1C82:
	ldr r0, [sp]
	str r0, [r7]
	adds r0, r7, #0
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080A1C94
func_080A1C94: @ 0x080A1C94
	push {r4, lr}
	adds r4, r0, #0
	bl func_080A1EA8
	adds r1, r0, #0
	lsrs r0, r1, #3
	cmp r0, #6
	bhi .L080A1CB4
	adds r2, r4, r0
	movs r0, #7
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
.L080A1CB4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A1CBC
func_080A1CBC: @ 0x080A1CBC
	push {r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r3, .L080A1CF4 @ =gUnk_081043BC
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r2, r0, r3
	ldr r1, [r2]
	str r1, [sp]
	adds r3, #4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [sp, #4]
	mov r1, sp
	ldrh r0, [r2, #8]
	strh r0, [r1, #8]
	ldrh r0, [r2, #0xa]
	strh r0, [r1, #0xa]
	ldr r0, [sp]
	cmp r0, #0x14
	beq .L080A1D00
	cmp r0, #0x14
	bgt .L080A1CF8
	cmp r0, #0x13
	beq .L080A1CFC
	b .L080A1D04
	.align 2, 0
.L080A1CF4: .4byte gUnk_081043BC
.L080A1CF8:
	cmp r0, #0x15
	bne .L080A1D04
.L080A1CFC:
	movs r0, #1
	b .L080A1D06
.L080A1D00:
	movs r0, #2
	b .L080A1D06
.L080A1D04:
	movs r0, #0
.L080A1D06:
	str r0, [sp, #0xc]
	adds r0, r4, #0
	mov r1, sp
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
	adds r0, r4, #0
	add sp, #0x10
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A1D20
func_080A1D20: @ 0x080A1D20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	mov sl, r1
	adds r5, r2, #0
	mov sb, r3
	movs r6, #0
	movs r0, #0x1a
	mov ip, r0
	cmp r3, #1
	beq .L080A1D4C
	cmp r3, #1
	ble .L080A1D62
	cmp r3, #2
	beq .L080A1D54
	cmp r3, #3
	beq .L080A1D5C
	b .L080A1D62
.L080A1D4C:
	movs r6, #0x1a
	movs r1, #0x3a
	mov ip, r1
	b .L080A1D62
.L080A1D54:
	movs r6, #0x3a
	movs r2, #0x5e
	mov ip, r2
	b .L080A1D62
.L080A1D5C:
	movs r6, #0x5e
	movs r4, #0x60
	mov ip, r4
.L080A1D62:
	cmp r6, ip
	bge .L080A1DDE
	ldr r0, .L080A1EA0 @ =gUnk_081043BC
	mov r8, r0
	mov r3, sp
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	adds r1, r0, #0
	adds r1, #8
	mov r7, r8
	adds r4, r1, r7
	str r0, [sp, #0x18]
.L080A1D7C:
	mov r0, r8
	adds r0, #4
	ldr r1, [sp, #0x18]
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r0, sl
	bne .L080A1DD0
	movs r2, #0
	ldrsh r0, [r4, r2]
	movs r7, #2
	ldrsh r1, [r4, r7]
	strh r0, [r3]
	strh r1, [r3, #2]
	adds r0, #0x10
	strh r0, [r3, #4]
	adds r1, #0x10
	strh r1, [r3, #6]
	movs r0, #0
	ldrsh r2, [r3, r0]
	movs r1, #4
	ldrsh r0, [r5, r1]
	subs r2, r2, r0
	movs r7, #0
	ldrsh r0, [r5, r7]
	movs r7, #4
	ldrsh r1, [r3, r7]
	subs r0, r0, r1
	ands r2, r0
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r7, #6
	ldrsh r1, [r5, r7]
	subs r0, r0, r1
	ands r2, r0
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r7, #6
	ldrsh r1, [r3, r7]
	subs r0, r0, r1
	ands r2, r0
	cmp r2, #0
	blt .L080A1DDE
.L080A1DD0:
	adds r4, #0xc
	ldr r0, [sp, #0x18]
	adds r0, #0xc
	str r0, [sp, #0x18]
	adds r6, #1
	cmp r6, ip
	blt .L080A1D7C
.L080A1DDE:
	cmp r6, ip
	bne .L080A1E74
	movs r6, #0x60
	movs r1, #0x74
	mov ip, r1
	ldr r0, .L080A1EA0 @ =gUnk_081043BC
	add r3, sp, #8
	movs r2, #0x90
	lsls r2, r2, #3
	adds r7, r0, r2
	ldr r4, .L080A1EA4 @ =0x00000484
	adds r4, r4, r0
	mov r8, r4
.L080A1DF8:
	mov r1, r8
	ldr r0, [r1]
	cmp r0, sl
	bne .L080A1E60
	movs r2, #0x20
	movs r4, #0x20
	str r4, [sp, #0x14]
	ldr r0, [r7]
	cmp r0, #0x14
	bne .L080A1E0E
	movs r2, #0x30
.L080A1E0E:
	cmp r0, #0x12
	bne .L080A1E18
	movs r0, #0x10
	str r0, [sp, #0x14]
	movs r2, #0x10
.L080A1E18:
	movs r1, #8
	ldrsh r0, [r7, r1]
	movs r4, #0xa
	ldrsh r1, [r7, r4]
	strh r0, [r3]
	strh r1, [r3, #2]
	adds r0, r0, r2
	strh r0, [r3, #4]
	ldr r0, [sp, #0x14]
	adds r1, r1, r0
	strh r1, [r3, #6]
	movs r1, #0
	ldrsh r2, [r3, r1]
	movs r4, #4
	ldrsh r0, [r5, r4]
	subs r2, r2, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r4, #4
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	ands r2, r0
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r4, #6
	ldrsh r1, [r5, r4]
	subs r0, r0, r1
	ands r2, r0
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r4, #6
	ldrsh r1, [r3, r4]
	subs r0, r0, r1
	ands r2, r0
	cmp r2, #0
	blt .L080A1E6C
.L080A1E60:
	adds r7, #0xc
	movs r0, #0xc
	add r8, r0
	adds r6, #1
	cmp r6, ip
	blt .L080A1DF8
.L080A1E6C:
	cmp r6, ip
	bne .L080A1E74
	movs r6, #1
	rsbs r6, r6, #0
.L080A1E74:
	cmp r6, #0
	blt .L080A1E8C
	ldr r0, [sp, #0x10]
	adds r1, r6, #0
	mov r2, sb
	bl func_080A1ED4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A1E8C
	movs r6, #1
	rsbs r6, r6, #0
.L080A1E8C:
	adds r0, r6, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A1EA0: .4byte gUnk_081043BC
.L080A1EA4: .4byte 0x00000484

	thumb_func_start func_080A1EA8
func_080A1EA8: @ 0x080A1EA8
	push {lr}
	adds r0, r1, #0
	cmp r0, #0x5f
	bhi .L080A1ECE
	cmp r2, #1
	beq .L080A1EC2
	cmp r2, #1
	ble .L080A1ED0
	cmp r2, #2
	beq .L080A1EC6
	cmp r2, #3
	beq .L080A1ECA
	b .L080A1ED0
.L080A1EC2:
	subs r0, #0x1a
	b .L080A1ED0
.L080A1EC6:
	subs r0, #0x3a
	b .L080A1ED0
.L080A1ECA:
	subs r0, #0x5e
	b .L080A1ED0
.L080A1ECE:
	subs r0, #0x3c
.L080A1ED0:
	pop {r1}
	bx r1

	thumb_func_start func_080A1ED4
func_080A1ED4: @ 0x080A1ED4
	push {r4, lr}
	adds r4, r0, #0
	bl func_080A1EA8
	adds r2, r0, #0
	lsrs r0, r2, #3
	adds r4, r4, r0
	ldrb r0, [r4]
	movs r1, #7
	ands r1, r2
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_080A1EF4
func_080A1EF4: @ 0x080A1EF4
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	movs r1, #0
	cmp r0, #0x5f
	bls .L080A1FBC
	subs r0, #0x60
	cmp r0, #0xe
	bhi .L080A1FBC
	lsls r0, r0, #2
	ldr r1, .L080A1F10 @ =.L080A1F14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A1F10: .4byte .L080A1F14
.L080A1F14: @ jump table
	.4byte .L080A1F50 @ case 0
	.4byte .L080A1F56 @ case 1
	.4byte .L080A1F5C @ case 2
	.4byte .L080A1F6C @ case 3
	.4byte .L080A1F72 @ case 4
	.4byte .L080A1F78 @ case 5
	.4byte .L080A1F7E @ case 6
	.4byte .L080A1F82 @ case 7
	.4byte .L080A1F88 @ case 8
	.4byte .L080A1F8E @ case 9
	.4byte .L080A1F94 @ case 10
	.4byte .L080A1F9A @ case 11
	.4byte .L080A1FA0 @ case 12
	.4byte .L080A1FA6 @ case 13
	.4byte .L080A1FB6 @ case 14
.L080A1F50:
	ldrb r0, [r2, #7]
	lsls r0, r0, #0x1d
	b .L080A1FBA
.L080A1F56:
	ldrb r0, [r2, #7]
	lsls r0, r0, #0x1a
	b .L080A1FBA
.L080A1F5C:
	ldrb r0, [r2, #7]
	lsrs r0, r0, #6
	ldrb r1, [r2, #8]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #2
	orrs r1, r0
	b .L080A1FBC
.L080A1F6C:
	ldrb r0, [r2, #8]
	lsls r0, r0, #0x1c
	b .L080A1FBA
.L080A1F72:
	ldrb r0, [r2, #8]
	lsls r0, r0, #0x19
	b .L080A1FBA
.L080A1F78:
	ldrh r0, [r2, #8]
	lsls r0, r0, #0x16
	b .L080A1FBA
.L080A1F7E:
	ldrb r0, [r2, #9]
	b .L080A1FB8
.L080A1F82:
	ldrb r0, [r2, #9]
	lsrs r1, r0, #5
	b .L080A1FBC
.L080A1F88:
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #0x1d
	b .L080A1FBA
.L080A1F8E:
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #0x1a
	b .L080A1FBA
.L080A1F94:
	ldrh r0, [r2, #0xa]
	lsls r0, r0, #0x17
	b .L080A1FBA
.L080A1F9A:
	ldrb r0, [r2, #0xb]
	lsls r0, r0, #0x1c
	b .L080A1FBA
.L080A1FA0:
	ldrb r0, [r2, #0xb]
	lsls r0, r0, #0x19
	b .L080A1FBA
.L080A1FA6:
	ldrb r0, [r2, #0xb]
	lsrs r0, r0, #7
	ldrb r1, [r2, #0xc]
	movs r2, #3
	ands r1, r2
	lsls r1, r1, #1
	orrs r1, r0
	b .L080A1FBC
.L080A1FB6:
	ldrb r0, [r2, #0xc]
.L080A1FB8:
	lsls r0, r0, #0x1b
.L080A1FBA:
	lsrs r1, r0, #0x1d
.L080A1FBC:
	adds r0, r1, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A1FC4
func_080A1FC4: @ 0x080A1FC4
	push {r4, r5, lr}
	adds r3, r0, #0
	cmp r1, #0x5f
	bhi .L080A1FCE
	b .L080A2206
.L080A1FCE:
	adds r0, r1, #0
	subs r0, #0x60
	cmp r0, #0xe
	bls .L080A1FD8
	b .L080A2206
.L080A1FD8:
	lsls r0, r0, #2
	ldr r1, .L080A1FE4 @ =.L080A1FE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A1FE4: .4byte .L080A1FE8
.L080A1FE8: @ jump table
	.4byte .L080A2024 @ case 0
	.4byte .L080A2042 @ case 1
	.4byte .L080A2062 @ case 2
	.4byte .L080A2094 @ case 3
	.4byte .L080A20AE @ case 4
	.4byte .L080A20CE @ case 5
	.4byte .L080A20F0 @ case 6
	.4byte .L080A210A @ case 7
	.4byte .L080A2122 @ case 8
	.4byte .L080A213A @ case 9
	.4byte .L080A215A @ case 10
	.4byte .L080A217C @ case 11
	.4byte .L080A2196 @ case 12
	.4byte .L080A21B6 @ case 13
	.4byte .L080A21E8 @ case 14
.L080A2024:
	ldrb r1, [r3, #7]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1d
	subs r2, r0, r2
	cmp r2, #0
	bge .L080A2032
	movs r2, #0
.L080A2032:
	movs r0, #7
	ands r2, r0
	movs r0, #8
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #7]
	b .L080A2206
.L080A2042:
	ldrb r4, [r3, #7]
	lsls r0, r4, #0x1a
	lsrs r0, r0, #0x1d
	subs r1, r0, r2
	cmp r1, #0
	bge .L080A2050
	movs r1, #0
.L080A2050:
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #0x39
	rsbs r0, r0, #0
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #7]
	b .L080A2206
.L080A2062:
	ldrb r4, [r3, #7]
	lsrs r1, r4, #6
	ldrb r0, [r3, #8]
	movs r5, #1
	ands r0, r5
	lsls r0, r0, #2
	orrs r0, r1
	subs r2, r0, r2
	cmp r2, #0
	bge .L080A2078
	movs r2, #0
.L080A2078:
	movs r1, #3
	ands r1, r2
	lsls r1, r1, #6
	movs r0, #0x3f
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #7]
	lsrs r1, r2, #2
	ands r1, r5
	ldrb r2, [r3, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	b .L080A20C8
.L080A2094:
	ldrb r4, [r3, #8]
	lsls r0, r4, #0x1c
	lsrs r0, r0, #0x1d
	subs r1, r0, r2
	cmp r1, #0
	bge .L080A20A2
	movs r1, #0
.L080A20A2:
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	movs r0, #0xf
	rsbs r0, r0, #0
	b .L080A20C6
.L080A20AE:
	ldrb r4, [r3, #8]
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1d
	subs r1, r0, r2
	cmp r1, #0
	bge .L080A20BC
	movs r1, #0
.L080A20BC:
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x71
	rsbs r0, r0, #0
.L080A20C6:
	ands r0, r4
.L080A20C8:
	orrs r0, r1
	strb r0, [r3, #8]
	b .L080A2206
.L080A20CE:
	ldrh r4, [r3, #8]
	lsls r0, r4, #0x16
	lsrs r0, r0, #0x1d
	subs r1, r0, r2
	cmp r1, #0
	bge .L080A20DC
	movs r1, #0
.L080A20DC:
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #7
	ldr r0, .L080A20EC @ =0xFFFFFC7F
	ands r0, r4
	orrs r0, r1
	strh r0, [r3, #8]
	b .L080A2206
	.align 2, 0
.L080A20EC: .4byte 0xFFFFFC7F
.L080A20F0:
	ldrb r4, [r3, #9]
	lsls r0, r4, #0x1b
	lsrs r0, r0, #0x1d
	subs r1, r0, r2
	cmp r1, #0
	bge .L080A20FE
	movs r1, #0
.L080A20FE:
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0x1d
	rsbs r0, r0, #0
	b .L080A211A
.L080A210A:
	ldrb r4, [r3, #9]
	lsrs r0, r4, #5
	subs r0, r0, r2
	cmp r0, #0
	bge .L080A2116
	movs r0, #0
.L080A2116:
	lsls r1, r0, #5
	movs r0, #0x1f
.L080A211A:
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #9]
	b .L080A2206
.L080A2122:
	ldrb r4, [r3, #0xa]
	lsls r0, r4, #0x1d
	lsrs r0, r0, #0x1d
	subs r1, r0, r2
	cmp r1, #0
	bge .L080A2130
	movs r1, #0
.L080A2130:
	movs r0, #7
	ands r1, r0
	movs r0, #8
	rsbs r0, r0, #0
	b .L080A2152
.L080A213A:
	ldrb r4, [r3, #0xa]
	lsls r0, r4, #0x1a
	lsrs r0, r0, #0x1d
	subs r1, r0, r2
	cmp r1, #0
	bge .L080A2148
	movs r1, #0
.L080A2148:
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #0x39
	rsbs r0, r0, #0
.L080A2152:
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0xa]
	b .L080A2206
.L080A215A:
	ldrh r4, [r3, #0xa]
	lsls r0, r4, #0x17
	lsrs r0, r0, #0x1d
	subs r1, r0, r2
	cmp r1, #0
	bge .L080A2168
	movs r1, #0
.L080A2168:
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #6
	ldr r0, .L080A2178 @ =0xFFFFFE3F
	ands r0, r4
	orrs r0, r1
	strh r0, [r3, #0xa]
	b .L080A2206
	.align 2, 0
.L080A2178: .4byte 0xFFFFFE3F
.L080A217C:
	ldrb r4, [r3, #0xb]
	lsls r0, r4, #0x1c
	lsrs r0, r0, #0x1d
	subs r1, r0, r2
	cmp r1, #0
	bge .L080A218A
	movs r1, #0
.L080A218A:
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #1
	movs r0, #0xf
	rsbs r0, r0, #0
	b .L080A21AE
.L080A2196:
	ldrb r4, [r3, #0xb]
	lsls r0, r4, #0x19
	lsrs r0, r0, #0x1d
	subs r1, r0, r2
	cmp r1, #0
	bge .L080A21A4
	movs r1, #0
.L080A21A4:
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #4
	movs r0, #0x71
	rsbs r0, r0, #0
.L080A21AE:
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0xb]
	b .L080A2206
.L080A21B6:
	ldrb r4, [r3, #0xb]
	lsrs r1, r4, #7
	ldrb r0, [r3, #0xc]
	movs r5, #3
	ands r0, r5
	lsls r0, r0, #1
	orrs r0, r1
	subs r2, r0, r2
	cmp r2, #0
	bge .L080A21CC
	movs r2, #0
.L080A21CC:
	movs r1, #1
	ands r1, r2
	lsls r1, r1, #7
	movs r0, #0x7f
	ands r0, r4
	orrs r0, r1
	strb r0, [r3, #0xb]
	lsrs r1, r2, #1
	ands r1, r5
	ldrb r2, [r3, #0xc]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r2
	b .L080A2202
.L080A21E8:
	ldrb r4, [r3, #0xc]
	lsls r0, r4, #0x1b
	lsrs r0, r0, #0x1d
	subs r1, r0, r2
	cmp r1, #0
	bge .L080A21F6
	movs r1, #0
.L080A21F6:
	movs r0, #7
	ands r1, r0
	lsls r1, r1, #2
	movs r0, #0x1d
	rsbs r0, r0, #0
	ands r0, r4
.L080A2202:
	orrs r0, r1
	strb r0, [r3, #0xc]
.L080A2206:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080A220C
func_080A220C: @ 0x080A220C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	adds r4, r1, #0
	add r1, sp, #0x14
	movs r0, #0x1e
	movs r2, #1
	movs r3, #0
	mov r8, r3
	movs r5, #0
	strh r0, [r1]
	strh r2, [r1, #2]
	adds r0, r7, #0
	bl func_080084DC
	ldr r0, .L080A245C @ =vtable_unk_080E825C
	str r0, [r7, #4]
	str r4, [r7, #8]
	str r5, [r7, #0xc]
	movs r0, #4
	bl __builtin_new
	adds r6, r0, #0
	add r0, sp, #0xc
	bl func_0800835C
	add r4, sp, #0x10
	adds r0, r4, #0
	bl func_0800770C
	ldr r0, [r7, #0xc]
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x1f
	movs r3, #0xf
	bl func_08050CC0
	str r0, [r7, #0x10]
	adds r0, r4, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	adds r0, r7, #0
	adds r0, #0x14
	movs r1, #1
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x18
	movs r1, #0
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x1c
	movs r1, #2
	bl func_08008B54
	adds r4, r7, #0
	adds r4, #0x20
	ldr r1, .L080A2460 @ =gUnk_0874F34C
	adds r0, r4, #0
	bl func_0805E6CC
	adds r6, r7, #0
	adds r6, #0x50
	ldr r1, .L080A2464 @ =gUnk_087506E0
	adds r0, r6, #0
	bl func_0805E6CC
	movs r1, #0x80
	adds r1, r1, r7
	mov sb, r1
	ldr r1, .L080A2468 @ =gUnk_08728208
	mov r0, sb
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0xb0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0xc4
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r2, r8
	strb r2, [r0, #0x10]
	strb r2, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r2, [r0, #0x18]
	adds r0, #0x1c
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0xf4
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r3, r8
	strb r3, [r0, #0x10]
	strb r3, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r3, [r0, #0x18]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r7, r1
	mov r1, sb
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r2, #0x92
	lsls r2, r2, #1
	adds r0, r7, r2
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	mov r3, r8
	strb r3, [r0, #0x10]
	strb r3, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r3, [r0, #0x18]
	movs r0, #0xba
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #7
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r4, r7, r3
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0xca
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0xce
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0xd2
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r4, #4]
	movs r3, #0xd6
	lsls r3, r3, #1
	adds r4, r7, r3
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0xef
	lsls r0, r0, #1
	adds r3, r7, r0
	ldrb r1, [r3]
	movs r6, #4
	rsbs r6, r6, #0
	adds r0, r6, #0
	ands r0, r1
	movs r1, #0x7d
	rsbs r1, r1, #0
	ands r0, r1
	strb r0, [r3]
	movs r1, #0x87
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, .L080A246C @ =vtable_unk_080E8268
	str r1, [r0]
	mov r2, r8
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	str r5, [r0, #8]
	ldr r0, [r7, #8]
	ldrb r0, [r0, #0x11]
	strb r0, [r3]
	ldr r0, [r7, #8]
	ldrb r0, [r0, #0x10]
	lsls r1, r0, #0x1d
	lsrs r0, r0, #3
	lsls r2, r0, #3
	subs r2, r2, r0
	lsrs r1, r1, #0x1d
	adds r1, r1, r2
	subs r1, #1
	movs r2, #0xf0
	lsls r2, r2, #1
	adds r0, r7, r2
	strh r1, [r0]
	ldr r0, [r7, #8]
	ldrb r0, [r0, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	cmp r0, #5
	bhi .L080A24A8
	adds r4, r3, #0
	ldrb r3, [r4]
	lsls r0, r3, #0x19
	lsrs r2, r0, #0x1b
	cmp r2, #0
	bne .L080A2470
	lsls r0, r3, #0x1e
	lsrs r0, r0, #0x1e
	subs r0, #1
	movs r1, #3
	ands r0, r1
	adds r1, r6, #0
	ands r1, r3
	orrs r1, r0
	strb r1, [r4]
	movs r2, #0x1d
	b .L080A2472
	.align 2, 0
.L080A245C: .4byte vtable_unk_080E825C
.L080A2460: .4byte gUnk_0874F34C
.L080A2464: .4byte gUnk_087506E0
.L080A2468: .4byte gUnk_08728208
.L080A246C: .4byte vtable_unk_080E8268
.L080A2470:
	subs r2, #1
.L080A2472:
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #2
	ldrb r1, [r4]
	movs r0, #0x7d
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4]
	movs r3, #0xef
	lsls r3, r3, #1
	adds r0, r7, r3
	ldrb r1, [r0]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bne .L080A24A8
	lsls r0, r1, #0x19
	lsrs r0, r0, #0x1b
	cmp r0, #0x1d
	bne .L080A24A8
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r1, r7, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
.L080A24A8:
	movs r1, #0xef
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq .L080A24DC
	cmp r0, #1
	bgt .L080A24C2
	cmp r0, #0
	beq .L080A24CC
	b .L080A24E4
.L080A24C2:
	cmp r0, #2
	beq .L080A24D4
	cmp r0, #3
	beq .L080A24DC
	b .L080A24E4
.L080A24CC:
	movs r2, #0xf1
	lsls r2, r2, #1
	adds r1, r7, r2
	b .L080A24E2
.L080A24D4:
	movs r2, #0xf1
	lsls r2, r2, #1
	adds r1, r7, r2
	b .L080A24E2
.L080A24DC:
	movs r3, #0xf1
	lsls r3, r3, #1
	adds r1, r7, r3
.L080A24E2:
	strh r0, [r1]
.L080A24E4:
	ldr r0, [r7, #8]
	ldr r1, .L080A2514 @ =0x00001CD4
	adds r0, r0, r1
	bl func_080A041C
	cmp r0, #0
	bne .L080A251C
	movs r2, #0xf3
	lsls r2, r2, #1
	adds r1, r7, r2
	ldr r0, .L080A2518 @ =0x0000FFFF
	strh r0, [r1]
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #1
	rsbs r0, r0, #0
	strh r0, [r1]
	movs r0, #0xf5
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #1
	rsbs r0, r0, #0
	b .L080A259C
	.align 2, 0
.L080A2514: .4byte 0x00001CD4
.L080A2518: .4byte 0x0000FFFF
.L080A251C:
	ldr r0, [r7, #8]
	ldr r1, .L080A2568 @ =0x00001CD4
	adds r0, r0, r1
	bl func_080A1480
	adds r4, r0, #0
	movs r3, #0xc8
	str r3, [sp, #0x18]
	ldrb r0, [r4]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #0x1c]
	add r2, sp, #0x1c
	add r0, sp, #0x18
	cmp r3, r1
	bls .L080A2546
	adds r0, r2, #0
.L080A2546:
	ldr r0, [r0]
	subs r0, #1
	movs r2, #0xf3
	lsls r2, r2, #1
	adds r1, r7, r2
	strh r0, [r1]
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x1e
	lsrs r1, r0, #0x1e
	cmp r1, #1
	beq .L080A2586
	cmp r1, #1
	bgt .L080A256C
	cmp r1, #0
	beq .L080A2576
	b .L080A258E
	.align 2, 0
.L080A2568: .4byte 0x00001CD4
.L080A256C:
	cmp r1, #2
	beq .L080A257E
	cmp r1, #3
	beq .L080A2586
	b .L080A258E
.L080A2576:
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r0, r7, r3
	b .L080A258C
.L080A257E:
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r0, r7, r3
	b .L080A258C
.L080A2586:
	movs r2, #0xf4
	lsls r2, r2, #1
	adds r0, r7, r2
.L080A258C:
	strh r1, [r0]
.L080A258E:
	ldrb r0, [r4, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	movs r3, #0xf5
	lsls r3, r3, #1
	adds r1, r7, r3
.L080A259C:
	strh r0, [r1]
	adds r0, r7, #0
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080A25B0
func_080A25B0: @ 0x080A25B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov sl, r0
	adds r7, r1, #0
	adds r0, r7, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_080A2BA4
	adds r0, r7, #0
	bl func_080A303C
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	movs r6, #0
	str r6, [r4]
	str r6, [r4, #4]
	ldr r0, .L080A2668 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #4]
	ldr r1, .L080A266C @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r0, .L080A2670 @ =0x00000216
	adds r1, r7, r0
	movs r0, #2
	strb r0, [r1]
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r7, r1
	strh r6, [r0]
	mov r8, r6
	add r2, sp, #8
	mov sb, r2
	mov r3, sp
	adds r3, #0xc
	str r3, [sp, #0x14]
.L080A2640:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	movs r6, #0x85
	lsls r6, r6, #2
	adds r0, r7, r6
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #4
	bls .L080A265C
	b .L080A28E4
.L080A265C:
	lsls r0, r0, #2
	ldr r1, .L080A2674 @ =.L080A2678
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A2668: .4byte vtable_unk_080E5B80
.L080A266C: .4byte 0x00000889
.L080A2670: .4byte 0x00000216
.L080A2674: .4byte .L080A2678
.L080A2678: @ jump table
	.4byte .L080A268C @ case 0
	.4byte .L080A26D0 @ case 1
	.4byte .L080A2884 @ case 2
	.4byte .L080A28A4 @ case 3
	.4byte .L080A28D4 @ case 4
.L080A268C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080A269A
	b .L080A28E4
.L080A269A:
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r7, r2
	b .L080A2898
.L080A26A2:
	ldr r3, .L080A26CC @ =0x000001ED
	adds r0, r1, r3
	ldrb r1, [r0]
	movs r6, #0x88
	lsls r6, r6, #2
	adds r0, r7, r6
	strb r1, [r0]
	movs r1, #0xf1
	lsls r1, r1, #1
	adds r0, r7, r1
	ldrh r1, [r0]
	adds r3, #0x34
	adds r0, r7, r3
	strb r1, [r0]
	movs r1, #0
	ldrsb r1, [r2, r1]
	subs r6, #8
	adds r0, r7, r6
	strh r1, [r0]
	b .L080A2832
	.align 2, 0
.L080A26CC: .4byte 0x000001ED
.L080A26D0:
	movs r5, #0
	movs r4, #0xff
.L080A26D4:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L080A2700
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #5
	bhi .L080A26F8
	adds r0, #1
	strb r0, [r1]
	adds r1, r4, #0
	ands r1, r0
	b .L080A26FA
.L080A26F8:
	movs r1, #0
.L080A26FA:
	movs r2, #0xf2
	lsls r2, r2, #1
	b .L080A2758
.L080A2700:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L080A272E
	movs r3, #0xf2
	lsls r3, r3, #1
	adds r1, r7, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080A2724
	subs r0, #1
	strb r0, [r1]
	adds r1, r4, #0
	ands r1, r0
	b .L080A2726
.L080A2724:
	movs r1, #6
.L080A2726:
	movs r6, #0xf2
	lsls r6, r6, #1
	adds r0, r7, r6
	b .L080A275A
.L080A272E:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L080A276C
	ldr r0, .L080A2750 @ =0x000001E5
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #4
	bhi .L080A2754
	adds r0, #1
	strb r0, [r1]
	adds r1, r4, #0
	ands r1, r0
	b .L080A2756
	.align 2, 0
.L080A2750: .4byte 0x000001E5
.L080A2754:
	movs r1, #0
.L080A2756:
	ldr r2, .L080A2768 @ =0x000001E5
.L080A2758:
	adds r0, r7, r2
.L080A275A:
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
	b .L080A27A6
	.align 2, 0
.L080A2768: .4byte 0x000001E5
.L080A276C:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L080A27A6
	ldr r3, .L080A2790 @ =0x000001E5
	adds r1, r7, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080A2794
	subs r0, #1
	strb r0, [r1]
	adds r1, r4, #0
	ands r1, r0
	b .L080A2796
	.align 2, 0
.L080A2790: .4byte 0x000001E5
.L080A2794:
	movs r1, #5
.L080A2796:
	ldr r6, .L080A2848 @ =0x000001E5
	adds r0, r7, r6
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x1c
	movs r1, #0xcb
	bl func_08008B6C
.L080A27A6:
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r2, r7, r0
	ldr r1, .L080A2848 @ =0x000001E5
	adds r0, r7, r1
	ldrb r1, [r0]
	lsls r0, r1, #3
	subs r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	movs r2, #0xda
	lsls r2, r2, #1
	adds r1, r7, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080A27CA
	movs r5, #1
.L080A27CA:
	cmp r5, #0
	bne .L080A27D0
	b .L080A26D4
.L080A27D0:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L080A2854
	movs r3, #0x86
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0x63
	strh r0, [r1]
	movs r3, #1
	movs r6, #1
	rsbs r6, r6, #0
	mov ip, r6
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r5, r7, r0
	adds r1, r7, #4
	ldr r2, .L080A2848 @ =0x000001E5
	adds r4, r7, r2
.L080A27FC:
	movs r6, #0xf6
	lsls r6, r6, #1
	adds r2, r1, r6
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, ip
	beq .L080A282A
	adds r6, #2
	adds r0, r1, r6
	ldrb r0, [r0]
	lsrs r0, r0, #4
	ldrb r6, [r5]
	cmp r0, r6
	bne .L080A282A
	ldr r6, .L080A284C @ =0x000001EF
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	ldrb r6, [r4]
	cmp r0, r6
	bne .L080A282A
	b .L080A26A2
.L080A282A:
	adds r1, #4
	adds r3, #1
	cmp r3, #9
	ble .L080A27FC
.L080A2832:
	ldr r0, .L080A2850 @ =0x00000216
	adds r1, r7, r0
	movs r0, #0
	strb r0, [r1]
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #2
	strh r0, [r1]
	b .L080A28E4
	.align 2, 0
.L080A2848: .4byte 0x000001E5
.L080A284C: .4byte 0x000001EF
.L080A2850: .4byte 0x00000216
.L080A2854:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L080A2872
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L080A2874
.L080A2872:
	movs r4, #1
.L080A2874:
	cmp r4, #0
	beq .L080A28E4
	movs r3, #0x85
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #3
	strh r0, [r1]
	b .L080A28E4
.L080A2884:
	ldr r6, .L080A28A0 @ =0x00000216
	adds r0, r7, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne .L080A28E4
	movs r0, #0x85
	lsls r0, r0, #2
	adds r1, r7, r0
.L080A2898:
	movs r0, #1
	strh r0, [r1]
	b .L080A28E4
	.align 2, 0
.L080A28A0: .4byte 0x00000216
.L080A28A4:
	ldr r0, [sp, #4]
	ldr r1, .L080A28D0 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r2, #0x85
	lsls r2, r2, #2
	adds r1, r7, r2
	movs r0, #4
	strh r0, [r1]
	b .L080A28E4
	.align 2, 0
.L080A28D0: .4byte 0x00000889
.L080A28D4:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080A28E4
	movs r3, #1
	mov r8, r3
.L080A28E4:
	adds r0, r7, #0
	bl func_080A2940
	adds r0, r7, #0
	bl func_080A32A4
	mov r6, r8
	cmp r6, #0
	bne .L080A28F8
	b .L080A2640
.L080A28F8:
	movs r0, #0
	str r0, [sp, #8]
	mov r1, sb
	str r1, [sp, #0xc]
	ldr r2, [sp, #0x14]
	str r0, [r2, #4]
	str r0, [r1]
	mov r3, sl
	str r0, [r3]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080A291C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A291C:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L080A292E
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A292E:
	mov r0, sl
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080A2940
func_080A2940: @ 0x080A2940
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0x10]
	mov sb, r0
	adds r0, r7, #0
	bl func_080088DC
	mov r8, r0
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	adds r1, r7, #0
	adds r1, #0x14
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L080A2992
	b .L080A2B90
.L080A2992:
	lsls r0, r0, #2
	ldr r1, .L080A299C @ =.L080A29A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A299C: .4byte .L080A29A0
.L080A29A0: @ jump table
	.4byte .L080A29BC @ case 0
	.4byte .L080A2B90 @ case 1
	.4byte .L080A2B90 @ case 2
	.4byte .L080A29DE @ case 3
	.4byte .L080A2B90 @ case 4
	.4byte .L080A2B90 @ case 5
	.4byte .L080A2B90 @ case 6
.L080A29BC:
	ldr r1, .L080A29D4 @ =0x00000216
	adds r4, r7, r1
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne .L080A29D8
	ldr r0, [r7, #0x10]
	bl func_08050D68
	movs r0, #3
	strb r0, [r4]
	b .L080A2B90
	.align 2, 0
.L080A29D4: .4byte 0x00000216
.L080A29D8:
	movs r0, #2
	strb r0, [r4]
	b .L080A2B90
.L080A29DE:
	ldr r2, .L080A29F8 @ =0x00000216
	adds r4, r7, r2
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #5
	bne .L080A29FC
	ldr r0, [r7, #0x10]
	bl func_08050D80
	movs r0, #1
	strb r0, [r4]
	b .L080A2B90
	.align 2, 0
.L080A29F8: .4byte 0x00000216
.L080A29FC:
	cmp r0, #3
	beq .L080A2A02
	b .L080A2B90
.L080A2A02:
	movs r0, #5
	strb r0, [r4]
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0]
	cmp r0, #0x12
	bls .L080A2A14
	b .L080A2B80
.L080A2A14:
	lsls r0, r0, #2
	ldr r1, .L080A2A20 @ =.L080A2A24
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A2A20: .4byte .L080A2A24
.L080A2A24: @ jump table
	.4byte .L080A2A70 @ case 0
	.4byte .L080A2A7C @ case 1
	.4byte .L080A2A88 @ case 2
	.4byte .L080A2A94 @ case 3
	.4byte .L080A2AA0 @ case 4
	.4byte .L080A2AAC @ case 5
	.4byte .L080A2AB8 @ case 6
	.4byte .L080A2AC4 @ case 7
	.4byte .L080A2AD0 @ case 8
	.4byte .L080A2ADC @ case 9
	.4byte .L080A2AE8 @ case 10
	.4byte .L080A2AF4 @ case 11
	.4byte .L080A2B00 @ case 12
	.4byte .L080A2B0C @ case 13
	.4byte .L080A2B18 @ case 14
	.4byte .L080A2B24 @ case 15
	.4byte .L080A2B30 @ case 16
	.4byte .L080A2B3C @ case 17
	.4byte .L080A2B68 @ case 18
.L080A2A70:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2A78 @ =gUnk_0810497C
	b .L080A2B6C
	.align 2, 0
.L080A2A78: .4byte gUnk_0810497C
.L080A2A7C:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2A84 @ =gUnk_081049C4
	b .L080A2B6C
	.align 2, 0
.L080A2A84: .4byte gUnk_081049C4
.L080A2A88:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2A90 @ =gUnk_081049F8
	b .L080A2B6C
	.align 2, 0
.L080A2A90: .4byte gUnk_081049F8
.L080A2A94:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2A9C @ =gUnk_08104A40
	b .L080A2B6C
	.align 2, 0
.L080A2A9C: .4byte gUnk_08104A40
.L080A2AA0:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2AA8 @ =gUnk_08104A84
	b .L080A2B6C
	.align 2, 0
.L080A2AA8: .4byte gUnk_08104A84
.L080A2AAC:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2AB4 @ =gUnk_08104AC4
	b .L080A2B6C
	.align 2, 0
.L080A2AB4: .4byte gUnk_08104AC4
.L080A2AB8:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2AC0 @ =gUnk_08104B08
	b .L080A2B6C
	.align 2, 0
.L080A2AC0: .4byte gUnk_08104B08
.L080A2AC4:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2ACC @ =gUnk_08104B4C
	b .L080A2B6C
	.align 2, 0
.L080A2ACC: .4byte gUnk_08104B4C
.L080A2AD0:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2AD8 @ =gUnk_08104B94
	b .L080A2B6C
	.align 2, 0
.L080A2AD8: .4byte gUnk_08104B94
.L080A2ADC:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2AE4 @ =gUnk_08104BD4
	b .L080A2B6C
	.align 2, 0
.L080A2AE4: .4byte gUnk_08104BD4
.L080A2AE8:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2AF0 @ =gUnk_08104C18
	b .L080A2B6C
	.align 2, 0
.L080A2AF0: .4byte gUnk_08104C18
.L080A2AF4:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2AFC @ =gUnk_08104C54
	b .L080A2B6C
	.align 2, 0
.L080A2AFC: .4byte gUnk_08104C54
.L080A2B00:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2B08 @ =gUnk_08104C98
	b .L080A2B6C
	.align 2, 0
.L080A2B08: .4byte gUnk_08104C98
.L080A2B0C:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2B14 @ =gUnk_08104CDC
	b .L080A2B6C
	.align 2, 0
.L080A2B14: .4byte gUnk_08104CDC
.L080A2B18:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2B20 @ =gUnk_08104D04
	b .L080A2B6C
	.align 2, 0
.L080A2B20: .4byte gUnk_08104D04
.L080A2B24:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2B2C @ =gUnk_08104D28
	b .L080A2B6C
	.align 2, 0
.L080A2B2C: .4byte gUnk_08104D28
.L080A2B30:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2B38 @ =gUnk_08104D58
	b .L080A2B6C
	.align 2, 0
.L080A2B38: .4byte gUnk_08104D58
.L080A2B3C:
	ldr r4, [r7, #8]
	ldr r0, .L080A2B60 @ =0x00001CD4
	adds r4, r4, r0
	adds r0, r4, #0
	bl func_080A041C
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0809FE3C
	movs r2, #0x89
	lsls r2, r2, #2
	adds r1, r7, r2
	str r0, [r1]
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2B64 @ =gUnk_08104D98
	subs r2, #8
	b .L080A2B70
	.align 2, 0
.L080A2B60: .4byte 0x00001CD4
.L080A2B64: .4byte gUnk_08104D98
.L080A2B68:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2B7C @ =gUnk_08104DB8
.L080A2B6C:
	movs r2, #0x87
	lsls r2, r2, #2
.L080A2B70:
	adds r3, r7, r2
	movs r2, #0
	bl func_08050DC8
	b .L080A2B90
	.align 2, 0
.L080A2B7C: .4byte gUnk_08104DB8
.L080A2B80:
	ldr r0, [r7, #0x10]
	ldr r1, .L080A2BA0 @ =gUnk_08104DDC
	movs r2, #0x87
	lsls r2, r2, #2
	adds r3, r7, r2
	movs r2, #0
	bl func_08050DC8
.L080A2B90:
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A2BA0: .4byte gUnk_08104DDC

	thumb_func_start func_080A2BA4
func_080A2BA4: @ 0x080A2BA4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x54
	adds r7, r0, #0
	bl func_08008918
	mov r1, sp
	movs r4, #0
	strh r4, [r1]
	strh r4, [r0, #0x14]
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x16]
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x18]
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1c]
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	ldr r1, .L080A2FC0 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, .L080A2FC4 @ =0x0600E000
	mov sb, r0
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L080A2FC8 @ =0x0600E800
	mov r8, r1
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r6, .L080A2FCC @ =0x0600F000
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r0, .L080A2FD0 @ =gUnk_0874EF14
	mov r1, sb
	bl Unpack
	ldr r0, .L080A2FD4 @ =gUnk_0874EF3C
	mov r1, r8
	bl Unpack
	ldr r0, .L080A2FD8 @ =gUnk_0874EFEC
	adds r1, r6, #0
	bl Unpack
	ldr r0, .L080A2FDC @ =gUnk_0874F050
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L080A2FE0 @ =gUnk_0874F2EC
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl func_08008E64
	adds r0, r7, #0
	bl func_08008918
	mov r1, sp
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r4, #0
	strh r2, [r0]
	adds r0, r7, #0
	bl func_08008918
	mov r2, sp
	ldr r5, .L080A2FE4 @ =0x00001C43
	adds r1, r5, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	adds r0, r7, #0
	bl func_08008918
	mov r2, sp
	ldr r6, .L080A2FE8 @ =0x00001D41
	adds r1, r6, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r7, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L080A2FEC @ =0x00001E42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	add r5, sp, #4
	str r4, [sp, #4]
	strh r4, [r5, #4]
	add r6, sp, #0xc
	str r4, [sp, #0xc]
	strh r4, [r6, #4]
	add r0, sp, #0x14
	str r4, [sp, #0x14]
	strh r4, [r0, #4]
	add r0, sp, #0x1c
	str r4, [sp, #0x1c]
	strh r4, [r0, #4]
	adds r1, r7, #0
	adds r1, #0x80
	add r4, sp, #0x24
	adds r0, r4, #0
	movs r2, #0
	bl func_0805E790
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r6, [sp, #0x14]
	mov sb, r6
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L080A2FF0 @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x14]
	movs r2, #0
	mov sl, r4
	cmp r0, #0
	beq .L080A2D00
	mov r3, sp
	ldrh r2, [r3, #0x18]
.L080A2D00:
	mov r0, sb
	bl func_08008E64
	ldr r4, [sp, #0xc]
	movs r5, #0xd2
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r6, .L080A2FF4 @ =0x06010000
	adds r1, r0, r6
	ldr r0, [sp, #0xc]
	movs r2, #0
	cmp r0, #0
	beq .L080A2D26
	mov r0, sp
	ldrh r2, [r0, #0x10]
.L080A2D26:
	adds r0, r4, #0
	bl func_08008E64
	movs r1, #0xb0
	adds r1, r1, r7
	mov r8, r1
	mov r0, r8
	movs r1, #0
	bl func_0805E860
	mov r2, r8
	ldr r1, [r2]
	ldr r3, [r1]
	ldrh r2, [r2, #0xc]
	adds r4, r7, #0
	adds r4, #0xb4
	lsls r2, r2, #2
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sl
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	add r1, sp, #4
	mov r0, sl
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r6, [sp, #0x14]
	movs r3, #0xbe
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r5, .L080A2FF0 @ =0x05000200
	adds r1, r0, r5
	ldr r0, [sp, #0x14]
	movs r2, #0
	mov r5, r8
	str r4, [sp, #0x48]
	cmp r0, #0
	beq .L080A2D94
	mov r0, sp
	ldrh r2, [r0, #0x18]
.L080A2D94:
	adds r0, r6, #0
	bl func_08008E64
	adds r0, r5, #0
	movs r1, #0xf
	bl func_0805E860
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x48]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sl
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	add r1, sp, #4
	mov r0, sl
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x14]
	movs r6, #0xc2
	lsls r6, r6, #1
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L080A2FF0 @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x14]
	movs r2, #0
	cmp r0, #0
	beq .L080A2DF4
	mov r3, sp
	ldrh r2, [r3, #0x18]
.L080A2DF4:
	adds r0, r4, #0
	bl func_08008E64
	adds r0, r5, #0
	movs r1, #0x15
	bl func_0805E860
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x48]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sl
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	add r1, sp, #4
	mov r0, sl
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r4, [sp, #0x14]
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r5, .L080A2FF0 @ =0x05000200
	adds r1, r0, r5
	ldr r0, [sp, #0x14]
	movs r2, #0
	cmp r0, #0
	beq .L080A2E54
	mov r6, sp
	ldrh r2, [r6, #0x18]
.L080A2E54:
	adds r0, r4, #0
	bl func_08008E64
	movs r5, #0
	movs r6, #0
	adds r0, r7, #0
	adds r0, #0xe0
	str r0, [sp, #0x4c]
	adds r1, r7, #0
	adds r1, #0xe4
	str r1, [sp, #0x50]
	mov sb, sl
.L080A2E6C:
	mov r0, r8
	adds r1, r6, #0
	bl func_0805E860
	mov r2, r8
	ldr r1, [r2]
	ldr r3, [r1]
	ldrh r2, [r2, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x48]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x24
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #4
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	lsls r1, r6, #1
	movs r4, #0xa0
	lsls r4, r4, #1
	adds r0, r7, r4
	adds r0, r0, r1
	strh r5, [r0]
	ldr r4, [sp, #0xc]
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r5
	lsls r0, r0, #5
	ldr r2, .L080A2FF4 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #0xc]
	movs r2, #0
	cmp r0, #0
	beq .L080A2ED6
	mov r3, sp
	ldrh r2, [r3, #0x10]
.L080A2ED6:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #0xc]
	movs r1, #0
	cmp r0, #0
	beq .L080A2EE8
	mov r4, sp
	ldrh r1, [r4, #0x10]
.L080A2EE8:
	lsrs r0, r1, #5
	adds r5, r5, r0
	adds r6, #1
	cmp r6, #0x15
	ble .L080A2E6C
	ldr r0, [sp, #0x4c]
	movs r1, #0
	bl func_0805E860
	ldr r5, [sp, #0x4c]
	ldr r1, [r5]
	ldr r3, [r1]
	ldrh r2, [r5, #0xc]
	lsls r2, r2, #2
	ldr r6, [sp, #0x50]
	ldr r0, [r6]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sb
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	add r1, sp, #4
	mov r0, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x14]
	movs r5, #0xce
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r6, .L080A2FF0 @ =0x05000200
	adds r1, r0, r6
	ldr r0, [sp, #0x14]
	movs r2, #0
	cmp r0, #0
	beq .L080A2F4E
	mov r0, sp
	ldrh r2, [r0, #0x18]
.L080A2F4E:
	adds r0, r4, #0
	bl func_08008E64
	movs r5, #0
	movs r4, #0
	ldr r1, [sp, #0x4c]
	mov r8, r1
	mov r2, sp
	adds r2, #0xc
	str r2, [sp, #0x44]
	mov sb, sl
.L080A2F64:
	mov r0, r8
	adds r1, r4, #0
	bl func_0805E860
	mov r3, r8
	ldr r1, [r3]
	ldr r3, [r1]
	mov r6, r8
	ldrh r2, [r6, #0xc]
	lsls r2, r2, #2
	ldr r6, [sp, #0x50]
	ldr r0, [r6]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x24
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	add r1, sp, #4
	mov r0, sb
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	lsls r1, r4, #1
	movs r6, #0xb6
	lsls r6, r6, #1
	adds r0, r7, r6
	adds r0, r0, r1
	strh r5, [r0]
	ldr r6, [sp, #0xc]
	movs r1, #0xca
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	b .L080A2FF8
	.align 2, 0
.L080A2FC0: .4byte 0x06007FE0
.L080A2FC4: .4byte 0x0600E000
.L080A2FC8: .4byte 0x0600E800
.L080A2FCC: .4byte 0x0600F000
.L080A2FD0: .4byte gUnk_0874EF14
.L080A2FD4: .4byte gUnk_0874EF3C
.L080A2FD8: .4byte gUnk_0874EFEC
.L080A2FDC: .4byte gUnk_0874F050
.L080A2FE0: .4byte gUnk_0874F2EC
.L080A2FE4: .4byte 0x00001C43
.L080A2FE8: .4byte 0x00001D41
.L080A2FEC: .4byte 0x00001E42
.L080A2FF0: .4byte 0x05000200
.L080A2FF4: .4byte 0x06010000
.L080A2FF8:
	adds r0, r0, r5
	lsls r0, r0, #5
	ldr r2, .L080A3038 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #0xc]
	movs r2, #0
	cmp r0, #0
	beq .L080A300C
	mov r3, sp
	ldrh r2, [r3, #0x10]
.L080A300C:
	adds r0, r6, #0
	bl func_08008E64
	ldr r0, [sp, #0xc]
	movs r1, #0
	cmp r0, #0
	beq .L080A301E
	ldr r6, [sp, #0x44]
	ldrh r1, [r6, #4]
.L080A301E:
	lsrs r0, r1, #5
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #3
	ble .L080A2F64
	add sp, #0x54
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A3038: .4byte 0x06010000

	thumb_func_start func_080A303C
func_080A303C: @ 0x080A303C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	mov r8, r0
	movs r1, #0
	movs r3, #0
	movs r4, #0xda
	lsls r4, r4, #1
	add r4, r8
.L080A3054:
	lsls r0, r1, #3
	adds r2, r1, #1
	subs r0, r0, r1
	movs r1, #6
	adds r0, r0, r4
	adds r0, #6
.L080A3060:
	strb r3, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge .L080A3060
	adds r1, r2, #0
	cmp r1, #5
	ble .L080A3054
	movs r3, #0xff
	movs r1, #0xf6
	lsls r1, r1, #1
	add r1, r8
	movs r2, #9
.L080A307A:
	ldrb r0, [r1]
	orrs r0, r3
	strb r0, [r1]
	adds r1, #4
	subs r2, #1
	cmp r2, #0
	bge .L080A307A
	movs r0, #0xf0
	lsls r0, r0, #1
	add r0, r8
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r1, r1, #2
	movs r4, #0xf1
	lsls r4, r4, #1
	mov r3, r8
	adds r5, r3, r4
	movs r7, #0
	ldrsh r0, [r5, r7]
	adds r1, r1, r0
	lsls r0, r1, #1
	movs r1, #7
	bl __modsi3
	mov sb, r0
	movs r0, #0
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r3, #0xef
	lsls r3, r3, #1
	add r3, r8
	str r3, [sp, #0xc]
	movs r7, #4
	add r7, r8
	mov sl, r7
	movs r6, #0xf9
	lsls r6, r6, #1
	add r6, r8
	str r5, [sp, #0x18]
	str r0, [sp, #0x24]
.L080A30D0:
	ldr r1, [sp, #0x24]
	add r1, sb
	movs r0, #0xda
	lsls r0, r0, #1
	add r0, r8
	adds r0, r0, r1
	mov r1, sp
	ldrb r1, [r1, #8]
	strb r1, [r0]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1b
	adds r0, #1
	ldr r3, [sp, #8]
	cmp r0, r3
	bne .L080A3106
	movs r0, #0xf2
	lsls r0, r0, #1
	add r0, r8
	mov r4, sb
	strb r4, [r0]
	ldr r0, .L080A3204 @ =0x000001E5
	add r0, r8
	mov r7, sp
	ldrb r7, [r7]
	strb r7, [r0]
.L080A3106:
	movs r5, #0
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x20]
	ldr r1, [sp, #8]
	adds r1, #1
	str r1, [sp, #0x1c]
	movs r2, #0xf1
	lsls r2, r2, #1
	add r2, r8
	str r2, [sp, #0x10]
	movs r0, #0xf
	ldr r3, [sp]
	adds r4, r3, #0
	ands r4, r0
	str r4, [sp, #0x2c]
	ldr r4, .L080A3208 @ =gUnk_08104957
	ldr r7, [sp, #4]
	lsls r0, r7, #2
	add r0, r8
	mov ip, r0
	mov r0, sb
	lsls r0, r0, #4
	str r0, [sp, #0x14]
	movs r2, #0xf7
	lsls r2, r2, #1
	add r2, ip
.L080A313C:
	lsls r1, r5, #1
	str r1, [sp, #0x28]
	ldrb r1, [r4]
	ldr r3, [sp, #0x10]
	movs r7, #0
	ldrsh r0, [r3, r7]
	cmp r1, r0
	bne .L080A31A2
	ldr r0, .L080A3208 @ =gUnk_08104957
	adds r0, #1
	ldr r1, [sp, #0x28]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r3, [sp, #8]
	cmp r0, r3
	bne .L080A31A2
	movs r0, #0xf6
	lsls r0, r0, #1
	add r0, ip
	strb r5, [r0]
	ldr r0, .L080A320C @ =0x000001ED
	add r0, ip
	strb r3, [r0]
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	ldr r3, [sp, #0x14]
	orrs r0, r3
	strb r0, [r2]
	ldr r3, .L080A3210 @ =0x000001EF
	add r3, ip
	ldrb r1, [r3]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	ldr r7, [sp, #0x2c]
	orrs r0, r7
	strb r0, [r3]
	adds r2, #4
	movs r0, #4
	add ip, r0
	add sl, r0
	adds r6, #4
	ldr r1, [sp, #4]
	adds r1, #1
	str r1, [sp, #4]
.L080A31A2:
	adds r4, #2
	adds r5, #1
	cmp r5, #0x10
	ble .L080A313C
	movs r0, #0xf0
	lsls r0, r0, #1
	add r0, r8
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq .L080A3264
	movs r0, #0xf4
	lsls r0, r0, #1
	add r0, r8
	ldr r4, [sp, #0x18]
	movs r7, #0
	ldrsh r1, [r4, r7]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	bne .L080A3264
	movs r0, #0xf5
	lsls r0, r0, #1
	add r0, r8
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r7, [sp, #8]
	cmp r7, r0
	bne .L080A3264
	movs r0, #0xf3
	lsls r0, r0, #1
	add r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r2, r0
	bne .L080A3214
	movs r1, #0xf6
	lsls r1, r1, #1
	add r1, sl
	movs r0, #0x11
	strb r0, [r1]
	ldrb r1, [r6]
	subs r0, #0x21
	ands r0, r1
	movs r1, #2
	b .L080A3226
	.align 2, 0
.L080A3204: .4byte 0x000001E5
.L080A3208: .4byte gUnk_08104957
.L080A320C: .4byte 0x000001ED
.L080A3210: .4byte 0x000001EF
.L080A3214:
	movs r1, #0xf6
	lsls r1, r1, #1
	add r1, sl
	movs r0, #0x12
	strb r0, [r1]
	ldrb r1, [r6]
	subs r0, #0x22
	ands r0, r1
	movs r1, #3
.L080A3226:
	orrs r0, r1
	strb r0, [r6]
	ldr r0, .L080A329C @ =0x000001ED
	add r0, sl
	mov r2, sp
	ldrb r2, [r2, #8]
	strb r2, [r0]
	mov r3, sb
	lsls r2, r3, #4
	ldrb r1, [r6]
	movs r0, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r6]
	ldr r3, .L080A32A0 @ =0x000001EF
	add r3, sl
	ldr r1, [sp]
	movs r4, #0xf
	ands r1, r4
	ldrb r2, [r3]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3]
	movs r7, #4
	add sl, r7
	adds r6, #4
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #4]
.L080A3264:
	ldr r1, [sp, #0x20]
	mov sb, r1
	cmp r1, #6
	ble .L080A327C
	movs r2, #0
	mov sb, r2
	ldr r3, [sp, #0x24]
	adds r3, #7
	str r3, [sp, #0x24]
	ldr r4, [sp]
	adds r4, #1
	str r4, [sp]
.L080A327C:
	ldr r7, [sp, #0x1c]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	cmp r0, #0x1e
	bhi .L080A328A
	b .L080A30D0
.L080A328A:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A329C: .4byte 0x000001ED
.L080A32A0: .4byte 0x000001EF

	thumb_func_start func_080A32A4
func_080A32A4: @ 0x080A32A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	adds r6, r0, #0
	add r1, sp, #8
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [sp, #0x14]
	strb r2, [r1, #0x10]
	strb r2, [r1, #0x11]
	str r0, [sp, #0x1c]
	strb r2, [r1, #0x18]
	add r5, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r5, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	add r1, sp, #0x3c
	str r0, [sp, #0x3c]
	strh r0, [r1, #4]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r6, r0
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	movs r4, #0x8a
	lsls r4, r4, #1
	adds r0, r6, r4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x44
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x44
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r7}
	stm r1!, {r2, r7}
	add r1, sp, #8
	movs r3, #0x92
	lsls r3, r3, #1
	adds r0, r6, r3
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r2, sp, #8
	movs r7, #0xf2
	lsls r7, r7, #1
	adds r0, r6, r7
	ldrb r1, [r0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0x10
	strh r0, [r2]
	ldr r1, .L080A34FC @ =0x000001E5
	adds r0, r6, r1
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x30
	strh r0, [r2, #2]
	movs r2, #0xd2
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r1, [r0, #4]
	bl func_08007D4C
	add r1, sp, #8
	strh r0, [r1, #6]
	movs r3, #0xd6
	lsls r3, r3, #1
	adds r0, r6, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #8
	strh r0, [r1, #4]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #8]
	adds r0, r1, #0
	strb r2, [r0, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x24]
	adds r1, r0, #0
	movs r2, #0
	mov sl, r5
	mov sb, r4
	cmp r1, #0
	beq .L080A33A2
	ldrh r2, [r5, #4]
.L080A33A2:
	adds r0, r3, #0
	add r3, sp, #8
	bl func_0805E99C
	adds r4, r6, #0
	adds r4, #0xe0
	str r4, [sp, #0x64]
	add r7, sp, #8
	movs r5, #0xf6
	lsls r5, r5, #1
	adds r4, r6, r5
	movs r0, #9
	mov r8, r0
.L080A33BC:
	movs r1, #0
	ldrsb r1, [r4, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq .L080A348E
	ldrb r1, [r4, #2]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	ldr r0, [sp, #0x64]
	bl func_0805E860
	ldr r2, [sp, #0x64]
	ldr r1, [r2]
	ldr r3, [r1]
	ldrh r2, [r2, #0xc]
	adds r0, r6, #0
	adds r0, #0xe4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x44
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sb
	mov r1, sb
	movs r2, #0x20
	bl memcpy
	mov r1, sl
	mov r0, sb
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r3, r5}
	stm r1!, {r3, r5}
	add r1, sp, #8
	adds r0, r6, #0
	adds r0, #0xf4
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldrb r1, [r4, #2]
	lsrs r1, r1, #4
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, #0xa
	strh r0, [r7]
	ldrb r1, [r4, #3]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #0x2a
	strh r0, [r7, #2]
	movs r1, #0xca
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldrb r2, [r4, #2]
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x1b
	movs r3, #0xb6
	lsls r3, r3, #1
	adds r1, r6, r3
	adds r1, r1, r2
	ldrh r1, [r1]
	adds r1, r1, r0
	strh r1, [r7, #6]
	movs r5, #0xce
	lsls r5, r5, #1
	adds r0, r6, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	strh r0, [r7, #4]
	movs r1, #1
	movs r0, #1
	strh r0, [r7, #8]
	strb r1, [r7, #0x18]
	adds r0, r6, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x24]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080A3486
	mov r0, sl
	ldrh r2, [r0, #4]
.L080A3486:
	adds r0, r3, #0
	add r3, sp, #8
	bl func_0805E99C
.L080A348E:
	adds r4, #4
	movs r1, #1
	rsbs r1, r1, #0
	add r8, r1
	mov r2, r8
	cmp r2, #0
	bge .L080A33BC
	movs r3, #0xf0
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r0, [r0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc8
	ble .L080A34B2
	movs r3, #0xc8
.L080A34B2:
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	movs r0, #3
	str r0, [sp]
	movs r4, #0
	str r4, [sp, #4]
	adds r0, r6, #0
	movs r1, #0x11
	movs r2, #1
	bl func_080A3588
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x41
	movs r2, #2
	movs r3, #0xa
	bl func_080A3618
	movs r5, #0xf1
	lsls r5, r5, #1
	adds r0, r6, r5
	movs r7, #0
	ldrsh r3, [r0, r7]
	adds r3, #0xb
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x80
	movs r2, #2
	bl func_080A3618
	movs r5, #6
.L080A34F0:
	movs r0, #0
	cmp r4, #0
	bne .L080A3500
	movs r0, #1
	b .L080A3506
	.align 2, 0
.L080A34FC: .4byte 0x000001E5
.L080A3500:
	cmp r4, #6
	bne .L080A3506
	movs r0, #2
.L080A3506:
	adds r3, r4, #0
	adds r3, #0xf
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0x15
	bl func_080A3618
	adds r5, #0x22
	adds r4, #1
	cmp r4, #6
	ble .L080A34F0
	movs r2, #0
.L080A3520:
	movs r5, #0
	lsls r1, r2, #3
	adds r0, r2, #1
	mov sb, r0
	subs r1, r1, r2
	movs r7, #2
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	mov r8, r0
	movs r2, #0xda
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r4, r1, r6
.L080A353C:
	ldrb r0, [r4]
	cmp r0, #0
	beq .L080A3566
	movs r1, #0
	cmp r5, #0
	bne .L080A354C
	movs r1, #1
	b .L080A3552
.L080A354C:
	cmp r5, #6
	bne .L080A3552
	movs r1, #2
.L080A3552:
	ldrb r3, [r4]
	movs r0, #2
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	adds r2, #0x2a
	bl func_080A3588
.L080A3566:
	adds r4, #1
	adds r7, #0x22
	adds r5, #1
	cmp r5, #6
	ble .L080A353C
	mov r2, sb
	cmp r2, #5
	ble .L080A3520
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A3588
func_080A3588: @ 0x080A3588
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	adds r7, r1, #0
	mov sb, r2
	adds r6, r3, #0
	ldr r4, [sp, #0x24]
	movs r0, #0
	mov r8, r0
	cmp r4, #1
	ble .L080A35BE
	subs r4, #1
	movs r5, #0xa
	cmp r4, #1
	ble .L080A35BA
.L080A35AE:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r5, r0, #1
	subs r4, #1
	cmp r4, #1
	bgt .L080A35AE
.L080A35BA:
	adds r4, r5, #0
	b .L080A3602
.L080A35BE:
	movs r4, #1
.L080A35C0:
	cmp r4, #1
	bne .L080A35C8
	movs r0, #1
	mov r8, r0
.L080A35C8:
	adds r0, r6, #0
	adds r1, r4, #0
	bl __divsi3
	adds r5, r0, #0
	cmp r5, #0
	bne .L080A35DC
	mov r0, r8
	cmp r0, #0
	beq .L080A35F0
.L080A35DC:
	ldr r0, [sp, #0x28]
	str r0, [sp]
	mov r0, sl
	adds r1, r7, #0
	mov r2, sb
	adds r3, r5, #0
	bl func_080A3618
	movs r0, #1
	mov r8, r0
.L080A35F0:
	adds r7, #0x10
	adds r0, r5, #0
	muls r0, r4, r0
	subs r6, r6, r0
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
.L080A3602:
	cmp r4, #0
	bgt .L080A35C0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A3618
func_080A3618: @ 0x080A3618
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x5c
	adds r7, r0, #0
	mov r8, r1
	mov sb, r2
	adds r5, r3, #0
	mov r1, sp
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [sp, #0xc]
	strb r2, [r1, #0x10]
	strb r2, [r1, #0x11]
	str r0, [sp, #0x14]
	strb r2, [r1, #0x18]
	add r6, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r6, #4]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r1, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	adds r4, r7, #0
	adds r4, #0xb0
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_0805E860
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	adds r0, r7, #0
	adds r0, #0xb4
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r4, sp, #0x3c
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r0, r6, #0
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0xc4
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	mov r0, sp
	mov r3, r8
	strh r3, [r0]
	mov r4, sb
	strh r4, [r0, #2]
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r2, sp
	lsls r5, r5, #1
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r1, r7, r3
	adds r1, r1, r5
	ldrh r1, [r1]
	adds r1, r1, r0
	strh r1, [r2, #6]
	ldr r4, [sp, #0x78]
	cmp r4, #1
	beq .L080A36F6
	cmp r4, #1
	bgt .L080A36E6
	cmp r4, #0
	beq .L080A36EE
	b .L080A370E
.L080A36E6:
	ldr r0, [sp, #0x78]
	cmp r0, #2
	beq .L080A36FE
	b .L080A370E
.L080A36EE:
	movs r1, #0xbe
	lsls r1, r1, #1
	adds r0, r7, r1
	b .L080A3704
.L080A36F6:
	movs r2, #0xc2
	lsls r2, r2, #1
	adds r0, r7, r2
	b .L080A3704
.L080A36FE:
	movs r3, #0xc6
	lsls r3, r3, #1
	adds r0, r7, r3
.L080A3704:
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
.L080A370E:
	mov r1, sp
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #8]
	mov r0, sp
	strb r2, [r0, #0x18]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080A372E
	ldrh r2, [r6, #4]
.L080A372E:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	add sp, #0x5c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080A3744
func_080A3744: @ 0x080A3744
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, .L080A3770 @ =vtable_unk_080E8278
	str r0, [r4]
	movs r0, #0x8a
	lsls r0, r0, #2
	bl __builtin_new
	adds r1, r5, #0
	bl func_080A220C
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
.L080A3770: .4byte vtable_unk_080E8278

	thumb_func_start func_080A3774
func_080A3774: @ 0x080A3774
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, sp
	bl func_080A25B0
	ldr r1, [sp]
	cmp r1, #0
	beq .L080A3796
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3796:
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_080A37A8
func_080A37A8: @ 0x080A37A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov sl, r0
	adds r5, r1, #0
	ldr r0, [r5, #8]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUnkEnt__C4Coop
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne .L080A37E4
	ldr r0, [r5, #4]
	movs r2, #0
	str r2, [r5, #4]
	str r0, [sp]
	mov r1, sp
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r2, [r1]
	mov r2, sl
	str r0, [r2]
	b .L080A380A
.L080A37E4:
	ldr r0, [r5, #8]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r0, r0, r2
	bl GetChicken__4CoopUi
	mov r8, r0
	cmp r0, #0
	bne .L080A381E
	ldr r1, [r5, #4]
	str r0, [r5, #4]
	str r1, [sp]
	mov r0, sp
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	mov r2, r8
	str r2, [r0]
	mov r0, sl
	str r1, [r0]
.L080A380A:
	ldr r1, [sp]
	cmp r1, #0
	beq .L080A38EC
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	b .L080A38EC
.L080A381E:
	add r7, sp, #4
	adds r0, r7, #0
	bl func_080B3C90
	ldr r0, [r5, #8]
	movs r3, #0xc8
	str r3, [sp, #0x30]
	ldrb r0, [r0, #0x10]
	lsrs r2, r0, #3
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1d
	adds r1, r1, r0
	str r1, [sp, #0x34]
	add r2, sp, #0x34
	add r0, sp, #0x30
	cmp r3, r1
	bls .L080A3846
	adds r0, r2, #0
.L080A3846:
	ldr r0, [r0]
	movs r1, #0
	mov sb, r1
	strb r0, [r7, #0x10]
	mov r0, r8
	bl GetName__C6Animal
	adds r6, r0, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xc
	bls .L080A3862
	movs r4, #0xc
.L080A3862:
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r7, r4
	mov r2, sb
	strb r2, [r0]
	mov r0, r8
	bl GetAffection__C6Animal
	strb r0, [r7, #0x11]
	add r6, sp, #0x18
	adds r0, r6, #0
	adds r1, r7, #0
	bl func_080BC898
	mov r0, sp
	adds r1, r6, #0
	bl func_080BC8FC
	ldr r1, [sp]
	cmp r1, #0
	beq .L080A389E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A389E:
	adds r0, r6, #0
	bl func_080BC8F0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A38B0
	mov r0, r8
	bl SetFestivalWinner__6Animal
.L080A38B0:
	ldr r4, [r5, #4]
	adds r0, r6, #0
	bl func_080BC8F0
	strb r0, [r4, #0xc]
	ldr r1, [r5, #4]
	mov r0, sb
	str r0, [r5, #4]
	str r1, [sp]
	mov r2, sp
	str r2, [sp, #0x38]
	str r1, [sp, #0x3c]
	adds r0, r2, #0
	mov r2, sb
	str r2, [r0]
	mov r0, sl
	str r1, [r0]
	ldr r1, [sp]
	cmp r1, #0
	beq .L080A38E4
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A38E4:
	adds r0, r6, #0
	movs r1, #2
	bl func_080BC8C0
.L080A38EC:
	mov r0, sl
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A3900
func_080A3900: @ 0x080A3900
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r5, r1, #0
	add r1, sp, #0xc
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0x12
	strb r0, [r1, #4]
	ldr r0, [r5, #0xc]
	subs r0, #0x24
	adds r4, r1, #0
	cmp r0, #6
	bhi .L080A3968
	lsls r0, r0, #2
	ldr r1, .L080A392C @ =.L080A3930
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A392C: .4byte .L080A3930
.L080A3930: @ jump table
	.4byte .L080A394C @ case 0
	.4byte .L080A3950 @ case 1
	.4byte .L080A3954 @ case 2
	.4byte .L080A3958 @ case 3
	.4byte .L080A395C @ case 4
	.4byte .L080A3960 @ case 5
	.4byte .L080A3964 @ case 6
.L080A394C:
	movs r0, #0
	b .L080A3966
.L080A3950:
	movs r0, #2
	b .L080A3966
.L080A3954:
	movs r0, #3
	b .L080A3966
.L080A3958:
	movs r0, #4
	b .L080A3966
.L080A395C:
	movs r0, #5
	b .L080A3966
.L080A3960:
	movs r0, #6
	b .L080A3966
.L080A3964:
	movs r0, #1
.L080A3966:
	str r0, [sp, #0xc]
.L080A3968:
	ldr r0, [r5, #8]
	ldr r1, .L080A39F8 @ =0x00001CD4
	adds r0, r0, r1
	ldr r1, [r5, #0xc]
	bl func_080A0930
	adds r6, r0, #0
	movs r1, #2
	bl GetMinigameExp__C13HarvestSpriteQ213HarvestSprite4Task
	movs r1, #0
	mov r8, r1
	strb r0, [r4, #4]
	mov r0, sp
	adds r1, r4, #0
	bl func_080B3BE4
	add r7, sp, #8
	adds r0, r7, #0
	mov r1, sp
	bl func_080B3C3C
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080A39A6
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A39A6:
	mov r0, sp
	bl func_080B3C78
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	movs r1, #2
	adds r2, r4, #0
	bl SetPlayedMinigame__13HarvestSpriteQ213HarvestSprite4Taskb
	ldr r0, [r5, #4]
	strb r4, [r0, #0xc]
	ldr r4, [r5, #8]
	mov r0, sp
	bl func_080B3C84
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_08011498
	ldr r0, [r5, #4]
	mov r1, r8
	str r1, [r5, #4]
	str r7, [sp, #0x14]
	str r0, [sp, #0x18]
	str r1, [sp, #8]
	mov r1, sb
	str r0, [r1]
	mov r0, sp
	movs r1, #2
	bl func_080B3C0C
	mov r0, sb
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A39F8: .4byte 0x00001CD4

	thumb_func_start func_080A39FC
func_080A39FC: @ 0x080A39FC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r5, r1, #0
	add r1, sp, #0xc
	movs r0, #4
	str r0, [sp, #0xc]
	movs r0, #0x12
	strb r0, [r1, #4]
	ldr r0, [r5, #0xc]
	subs r0, #0x24
	adds r4, r1, #0
	cmp r0, #6
	bhi .L080A3A64
	lsls r0, r0, #2
	ldr r1, .L080A3A28 @ =.L080A3A2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A3A28: .4byte .L080A3A2C
.L080A3A2C: @ jump table
	.4byte .L080A3A48 @ case 0
	.4byte .L080A3A4C @ case 1
	.4byte .L080A3A50 @ case 2
	.4byte .L080A3A54 @ case 3
	.4byte .L080A3A58 @ case 4
	.4byte .L080A3A5C @ case 5
	.4byte .L080A3A60 @ case 6
.L080A3A48:
	movs r0, #0
	b .L080A3A62
.L080A3A4C:
	movs r0, #2
	b .L080A3A62
.L080A3A50:
	movs r0, #3
	b .L080A3A62
.L080A3A54:
	movs r0, #4
	b .L080A3A62
.L080A3A58:
	movs r0, #5
	b .L080A3A62
.L080A3A5C:
	movs r0, #6
	b .L080A3A62
.L080A3A60:
	movs r0, #1
.L080A3A62:
	str r0, [sp, #0xc]
.L080A3A64:
	ldr r0, [r5, #8]
	ldr r1, .L080A3AF4 @ =0x00001CD4
	adds r0, r0, r1
	ldr r1, [r5, #0xc]
	bl func_080A0930
	adds r6, r0, #0
	movs r1, #0
	bl GetMinigameExp__C13HarvestSpriteQ213HarvestSprite4Task
	movs r1, #0
	mov r8, r1
	strb r0, [r4, #4]
	mov r0, sp
	adds r1, r4, #0
	bl func_080C0D1C
	add r7, sp, #8
	adds r0, r7, #0
	mov r1, sp
	bl func_080C0D90
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080A3AA2
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3AA2:
	mov r0, sp
	bl func_080C0D74
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl SetPlayedMinigame__13HarvestSpriteQ213HarvestSprite4Taskb
	ldr r0, [r5, #4]
	strb r4, [r0, #0xc]
	ldr r4, [r5, #8]
	mov r0, sp
	bl func_080C0D80
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_08011464
	ldr r0, [r5, #4]
	mov r1, r8
	str r1, [r5, #4]
	str r7, [sp, #0x14]
	str r0, [sp, #0x18]
	str r1, [sp, #8]
	mov r1, sb
	str r0, [r1]
	mov r0, sp
	movs r1, #2
	bl func_080C0D44
	mov r0, sb
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A3AF4: .4byte 0x00001CD4

	thumb_func_start func_080A3AF8
func_080A3AF8: @ 0x080A3AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	mov sb, r0
	adds r5, r1, #0
	add r1, sp, #0xc
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #0xf
	strb r0, [r1, #4]
	ldr r0, [r5, #0xc]
	subs r0, #0x24
	adds r4, r1, #0
	cmp r0, #6
	bhi .L080A3B60
	lsls r0, r0, #2
	ldr r1, .L080A3B24 @ =.L080A3B28
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A3B24: .4byte .L080A3B28
.L080A3B28: @ jump table
	.4byte .L080A3B44 @ case 0
	.4byte .L080A3B48 @ case 1
	.4byte .L080A3B4C @ case 2
	.4byte .L080A3B50 @ case 3
	.4byte .L080A3B54 @ case 4
	.4byte .L080A3B58 @ case 5
	.4byte .L080A3B5C @ case 6
.L080A3B44:
	movs r0, #0
	b .L080A3B5E
.L080A3B48:
	movs r0, #2
	b .L080A3B5E
.L080A3B4C:
	movs r0, #3
	b .L080A3B5E
.L080A3B50:
	movs r0, #4
	b .L080A3B5E
.L080A3B54:
	movs r0, #5
	b .L080A3B5E
.L080A3B58:
	movs r0, #6
	b .L080A3B5E
.L080A3B5C:
	movs r0, #1
.L080A3B5E:
	str r0, [sp, #0xc]
.L080A3B60:
	ldr r0, [r5, #8]
	ldr r1, .L080A3BF0 @ =0x00001CD4
	adds r0, r0, r1
	ldr r1, [r5, #0xc]
	bl func_080A0930
	adds r6, r0, #0
	movs r1, #1
	bl GetMinigameExp__C13HarvestSpriteQ213HarvestSprite4Task
	movs r1, #0
	mov r8, r1
	strb r0, [r4, #4]
	mov r0, sp
	adds r1, r4, #0
	bl func_080C7EA8
	add r7, sp, #8
	adds r0, r7, #0
	mov r1, sp
	bl func_080C7F1C
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080A3B9E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3B9E:
	mov r0, sp
	bl func_080C7F00
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r0, r6, #0
	movs r1, #1
	adds r2, r4, #0
	bl SetPlayedMinigame__13HarvestSpriteQ213HarvestSprite4Taskb
	ldr r0, [r5, #4]
	strb r4, [r0, #0xc]
	ldr r4, [r5, #8]
	mov r0, sp
	bl func_080C7F0C
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_080114C8
	ldr r0, [r5, #4]
	mov r1, r8
	str r1, [r5, #4]
	str r7, [sp, #0x14]
	str r0, [sp, #0x18]
	str r1, [sp, #8]
	mov r1, sb
	str r0, [r1]
	mov r0, sp
	movs r1, #2
	bl func_080C7ED0
	mov r0, sb
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A3BF0: .4byte 0x00001CD4

	thumb_func_start func_080A3BF4
func_080A3BF4: @ 0x080A3BF4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080A3C20 @ =vtable_unk_080E8288
	str r0, [r4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L080A3C10
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3C10:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080A3C20: .4byte vtable_unk_080E8288
.L080A3C24:
	.byte 0x30, 0xB5, 0x05, 0x4C, 0x04, 0x60, 0x0D, 0x68, 0x00, 0x24, 0x0C, 0x60
	.byte 0x45, 0x60, 0x82, 0x60, 0xC3, 0x60, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x88, 0x82, 0x0E, 0x08

	thumb_func_start func_080A3C40
func_080A3C40: @ 0x080A3C40
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080A3C6C @ =vtable_unk_080E8298
	str r0, [r4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L080A3C5C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3C5C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080A3C6C: .4byte vtable_unk_080E8298
.L080A3C70:
	.byte 0x30, 0xB5, 0x05, 0x4C, 0x04, 0x60, 0x0D, 0x68, 0x00, 0x24, 0x0C, 0x60, 0x45, 0x60, 0x82, 0x60
	.byte 0xC3, 0x60, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x98, 0x82, 0x0E, 0x08

	thumb_func_start func_080A3C8C
func_080A3C8C: @ 0x080A3C8C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080A3CB8 @ =vtable_unk_080E82A8
	str r0, [r4]
	ldr r1, [r4, #4]
	cmp r1, #0
	beq .L080A3CA8
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3CA8:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080007EC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080A3CB8: .4byte vtable_unk_080E82A8
.L080A3CBC:
	.byte 0x30, 0xB5, 0x05, 0x4C
	.byte 0x04, 0x60, 0x0D, 0x68, 0x00, 0x24, 0x0C, 0x60, 0x45, 0x60, 0x82, 0x60, 0xC3, 0x60, 0x30, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0xA8, 0x82, 0x0E, 0x08, 0x10, 0xB5, 0x05, 0x4B, 0x03, 0x60, 0x0C, 0x68
	.byte 0x00, 0x23, 0x0B, 0x60, 0x44, 0x60, 0x82, 0x60, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0xB8, 0x82, 0x0E, 0x08

	thumb_func_start func_080A3CF4
func_080A3CF4: @ 0x080A3CF4
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	movs r1, #0
	ldr r0, [r5, #0xc]
	cmp r0, #5
	bhi .L080A3D5C
	lsls r0, r0, #2
	ldr r1, .L080A3D10 @ =.L080A3D14
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A3D10: .4byte .L080A3D14
.L080A3D14: @ jump table
	.4byte .L080A3D2C @ case 0
	.4byte .L080A3D34 @ case 1
	.4byte .L080A3D3C @ case 2
	.4byte .L080A3D44 @ case 3
	.4byte .L080A3D4C @ case 4
	.4byte .L080A3D54 @ case 5
.L080A3D2C:
	ldr r1, .L080A3D30 @ =gUnk_08104E0C
	b .L080A3D64
	.align 2, 0
.L080A3D30: .4byte gUnk_08104E0C
.L080A3D34:
	ldr r1, .L080A3D38 @ =gUnk_08104E14
	b .L080A3D64
	.align 2, 0
.L080A3D38: .4byte gUnk_08104E14
.L080A3D3C:
	ldr r1, .L080A3D40 @ =gUnk_08104E1C
	b .L080A3D64
	.align 2, 0
.L080A3D40: .4byte gUnk_08104E1C
.L080A3D44:
	ldr r1, .L080A3D48 @ =gUnk_08104E24
	b .L080A3D64
	.align 2, 0
.L080A3D48: .4byte gUnk_08104E24
.L080A3D4C:
	ldr r1, .L080A3D50 @ =gUnk_08104E30
	b .L080A3D64
	.align 2, 0
.L080A3D50: .4byte gUnk_08104E30
.L080A3D54:
	ldr r1, .L080A3D58 @ =gUnk_08104E38
	b .L080A3D64
	.align 2, 0
.L080A3D58: .4byte gUnk_08104E38
.L080A3D5C:
	ldr r0, [r5, #4]
	str r1, [r5, #4]
	str r0, [r6]
	b .L080A3E66
.L080A3D64:
	mov r0, sp
	movs r2, #0
	bl func_08007078
	add r0, sp, #8
	mov r1, sp
	bl func_080070D4
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080A3D86
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080A3D86:
	ldr r0, [r5, #0xc]
	cmp r0, #5
	bhi .L080A3E44
	lsls r0, r0, #2
	ldr r1, .L080A3D98 @ =.L080A3D9C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A3D98: .4byte .L080A3D9C
.L080A3D9C: @ jump table
	.4byte .L080A3DB4 @ case 0
	.4byte .L080A3DBE @ case 1
	.4byte .L080A3DCE @ case 2
	.4byte .L080A3DDE @ case 3
	.4byte .L080A3E02 @ case 4
	.4byte .L080A3E28 @ case 5
.L080A3DB4:
	ldr r0, [r5, #8]
	adds r0, #0x14
	bl GetHorse__4Farm
	b .L080A3DEC
.L080A3DBE:
	ldr r0, [r5, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0x10]
	bl GetCow__4BarnUi
	b .L080A3DEC
.L080A3DCE:
	ldr r0, [r5, #8]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0x10]
	bl GetSheep__4BarnUi
	b .L080A3DEC
.L080A3DDE:
	ldr r0, [r5, #8]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrb r1, [r5, #0x10]
	bl GetChicken__4CoopUi
.L080A3DEC:
	adds r4, r0, #0
	cmp r4, #0
	beq .L080A3E56
	mov r0, sp
	bl func_08007110
	adds r1, r0, #0
	adds r0, r4, #0
	bl SetName__6AnimalPCc
	b .L080A3E56
.L080A3E02:
	ldr r0, [r5, #8]
	ldr r1, .L080A3E24 @ =0x00001CD4
	adds r0, r0, r1
	bl func_080A0A04
	adds r4, r0, #0
	cmp r4, #0
	beq .L080A3E56
	mov r0, sp
	bl func_08007110
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0809EB20
	b .L080A3E56
	.align 2, 0
.L080A3E24: .4byte 0x00001CD4
.L080A3E28:
	ldr r4, [r5, #8]
	ldr r0, .L080A3E40 @ =0x00001BD8
	adds r4, r4, r0
	mov r0, sp
	bl func_08007110
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_0800E9A8
	b .L080A3E56
	.align 2, 0
.L080A3E40: .4byte 0x00001BD8
.L080A3E44:
	ldr r1, [r5, #4]
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r6]
	mov r0, sp
	movs r1, #2
	bl func_080070A4
	b .L080A3E66
.L080A3E56:
	ldr r1, [r5, #4]
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r6]
	mov r0, sp
	movs r1, #2
	bl func_080070A4
.L080A3E66:
	adds r0, r6, #0
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r1}
	bx r1
.L080A3E70:
	.byte 0x70, 0xB5, 0x04, 0x9E, 0x05, 0x4C, 0x04, 0x60, 0x0D, 0x68, 0x00, 0x24, 0x0C, 0x60, 0x45, 0x60
	.byte 0x82, 0x60, 0xC3, 0x60, 0x06, 0x74, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0xC8, 0x82, 0x0E, 0x08

	thumb_func_start func_080A3E90
func_080A3E90: @ 0x080A3E90
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	bl func_080A45A8
	str r0, [sp, #4]
	cmp r0, #7
	bne .L080A3EAA
	movs r0, #0
	str r0, [sp]
	b .L080A3F2E
.L080A3EAA:
	movs r1, #3
	ldrh r0, [r4]
	lsls r2, r0, #0x1b
	lsrs r0, r2, #3
	movs r3, #0xfa
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080A3EC2
	movs r1, #0
	b .L080A3EE4
.L080A3EC2:
	lsrs r0, r2, #3
	movs r3, #0xf7
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi .L080A3ED4
	movs r1, #1
	b .L080A3EE4
.L080A3ED4:
	lsrs r0, r2, #3
	movs r2, #0xef
	lsls r2, r2, #0x18
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080A3EE4
	movs r1, #2
.L080A3EE4:
	ldr r2, .L080A3F40 @ =gUnk_08104E74
	lsls r1, r1, #1
	ldr r0, [sp, #4]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #0x12
	lsrs r1, r1, #0x10
	ldr r2, .L080A3F44 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	movs r4, #0
	bl rand
	asrs r0, r0, #8
	ldr r1, [sp, #4]
	cmp r1, #6
	bgt .L080A3F1E
	cmp r1, #0
	blt .L080A3F1E
	movs r1, #6
	bl __modsi3
	adds r4, r0, #5
.L080A3F1E:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #0x11
	ldr r2, .L080A3F48 @ =0x0000FFFF
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
.L080A3F2E:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	str r0, [r5]
	str r1, [r5, #4]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5}
	pop {r2}
	bx r2
	.align 2, 0
.L080A3F40: .4byte gUnk_08104E74
.L080A3F44: .4byte 0xFFFF0000
.L080A3F48: .4byte 0x0000FFFF

	thumb_func_start func_080A3F4C
func_080A3F4C: @ 0x080A3F4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	str r0, [sp, #0x90]
	str r1, [sp, #0x94]
	mov sb, r3
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0x98]
	movs r7, #0
	mov r5, sp
	ldr r0, .L080A3FD8 @ =gUnk_08104E4C
	str r0, [sp]
	movs r4, #0
	strh r7, [r5, #4]
	add r0, sp, #8
	bl __12RucksackItem
	strb r4, [r5, #0xc]
	strb r4, [r5, #0xd]
	movs r0, #0x3b
	str r0, [sp, #0x10]
	strb r4, [r5, #0x14]
	movs r6, #0
	bl rand
	asrs r0, r0, #8
	movs r1, #0x64
	bl __modsi3
	movs r4, #0
	movs r3, #0
	ldr r1, .L080A3FDC @ =gUnk_08104EAC
	lsls r0, r0, #0x18
	asrs r5, r0, #0x18
	ldr r2, [sp, #0x94]
	lsls r0, r2, #2
	adds r0, r0, r2
	adds r1, r0, r1
.L080A3FA0:
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	ble .L080A3FBA
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r2
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, r0
	blt .L080A3FE0
.L080A3FBA:
	adds r1, #1
	adds r3, #1
	cmp r3, #4
	ble .L080A3FA0
.L080A3FC2:
	movs r5, #0
	movs r2, #0
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq .L080A3FF4
	cmp r0, #2
	bgt .L080A3FE6
	cmp r0, #1
	beq .L080A3FF0
	b .L080A4006
	.align 2, 0
.L080A3FD8: .4byte gUnk_08104E4C
.L080A3FDC: .4byte gUnk_08104EAC
.L080A3FE0:
	lsls r0, r3, #0x18
	lsrs r6, r0, #0x18
	b .L080A3FC2
.L080A3FE6:
	cmp r0, #3
	beq .L080A3FFA
	cmp r0, #4
	beq .L080A4000
	b .L080A4006
.L080A3FF0:
	movs r2, #3
	b .L080A400A
.L080A3FF4:
	movs r5, #4
	movs r2, #7
	b .L080A400A
.L080A3FFA:
	movs r5, #8
	movs r2, #0x34
	b .L080A400A
.L080A4000:
	movs r5, #0x35
	movs r2, #0x3a
	b .L080A400A
.L080A4006:
	movs r7, #1
	rsbs r7, r7, #0
.L080A400A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	bne .L080A4014
	b .L080A449C
.L080A4014:
	movs r3, #0
	mov sl, r3
	movs r7, #0
	movs r4, #0
	mov r8, r4
	movs r1, #0
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0xa0]
	mov r3, sp
	adds r3, #0x48
	str r3, [sp, #0x9c]
	adds r2, #1
	mov ip, r2
	adds r4, r0, #0
	movs r2, #0
.L080A4034:
	adds r0, r4, r1
	strb r2, [r0]
	adds r0, r3, r1
	strb r2, [r0]
	adds r1, #1
	cmp r1, #0x2c
	ble .L080A4034
	adds r4, r5, #0
	cmp r4, ip
	bge .L080A410C
	mov r1, sb
	ldrb r0, [r1, #0x11]
	lsls r0, r0, #0x1e
	lsrs r5, r0, #0x1e
	lsls r3, r4, #5
.L080A4052:
	cmp r5, #1
	beq .L080A4074
	cmp r5, #1
	bgt .L080A4060
	cmp r5, #0
	beq .L080A406A
	b .L080A4092
.L080A4060:
	cmp r5, #2
	beq .L080A4080
	cmp r5, #3
	beq .L080A408C
	b .L080A4092
.L080A406A:
	ldr r2, .L080A4070 @ =gUnk_08104ED2
	b .L080A408E
	.align 2, 0
.L080A4070: .4byte gUnk_08104ED2
.L080A4074:
	ldr r0, .L080A407C @ =gUnk_08104ED9
	adds r0, r0, r3
	mov r8, r0
	b .L080A4092
	.align 2, 0
.L080A407C: .4byte gUnk_08104ED9
.L080A4080:
	ldr r1, .L080A4088 @ =gUnk_08104EE0
	adds r1, r1, r3
	mov r8, r1
	b .L080A4092
	.align 2, 0
.L080A4088: .4byte gUnk_08104EE0
.L080A408C:
	ldr r2, .L080A40E8 @ =gUnk_08104EE7
.L080A408E:
	adds r2, r2, r3
	mov r8, r2
.L080A4092:
	ldr r0, [sp, #0x94]
	add r0, r8
	ldrb r2, [r0]
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #0
	beq .L080A4104
	cmp r1, #0
	bge .L080A40AC
	rsbs r0, r1, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
.L080A40AC:
	lsls r0, r2, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r2, r0, #0x18
	ldr r0, [sp, #0x98]
	cmp r0, #6
	beq .L080A40C0
	cmp r2, #7
	bne .L080A40C2
.L080A40C0:
	ldr r2, [sp, #0x98]
.L080A40C2:
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	ldr r1, [sp, #0x98]
	cmp r1, r0
	bne .L080A4104
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	ble .L080A40EC
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp, #0x9c]
	adds r1, r2, r0
	strb r4, [r1]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	b .L080A4104
	.align 2, 0
.L080A40E8: .4byte gUnk_08104EE7
.L080A40EC:
	cmp r0, #0
	bge .L080A4104
	mov r1, sl
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	ldr r2, [sp, #0xa0]
	adds r1, r2, r0
	strb r4, [r1]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
.L080A4104:
	adds r3, #0x20
	adds r4, #1
	cmp r4, ip
	blt .L080A4052
.L080A410C:
	cmp r7, #0
	bne .L080A4118
	mov r3, sl
	cmp r3, #0
	bne .L080A4118
	b .L080A4456
.L080A4118:
	lsls r0, r7, #0x18
	cmp r0, #0
	ble .L080A413E
	mov r4, sl
	lsls r0, r4, #0x18
	cmp r0, #0
	ble .L080A413E
	bl rand
	asrs r0, r0, #8
	movs r1, #0x64
	bl __modsi3
	cmp r0, #0x45
	bgt .L080A413C
	movs r0, #0
	mov sl, r0
	b .L080A413E
.L080A413C:
	movs r7, #0
.L080A413E:
	lsls r0, r7, #0x18
	asrs r1, r0, #0x18
	mov r2, sl
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	ble .L080A4154
	adds r7, r1, #0
	ldr r3, [sp, #0x9c]
	mov r8, r3
	b .L080A415A
.L080A4154:
	adds r7, r0, #0
	ldr r4, [sp, #0xa0]
	mov r8, r4
.L080A415A:
	cmp r7, #1
	ble .L080A416E
	bl rand
	asrs r0, r0, #8
	adds r1, r7, #0
	bl __modsi3
	adds r7, r0, #0
	b .L080A4170
.L080A416E:
	movs r7, #0
.L080A4170:
	mov r1, r8
	adds r0, r1, r7
	movs r7, #0
	ldrsb r7, [r0, r7]
	subs r0, r7, #2
	cmp r0, #0x38
	bls .L080A4180
	b .L080A445A
.L080A4180:
	lsls r0, r0, #2
	ldr r1, .L080A418C @ =.L080A4190
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A418C: .4byte .L080A4190
.L080A4190: @ jump table
	.4byte .L080A4274 @ case 0
	.4byte .L080A4288 @ case 1
	.4byte .L080A445A @ case 2
	.4byte .L080A445A @ case 3
	.4byte .L080A445A @ case 4
	.4byte .L080A445A @ case 5
	.4byte .L080A445A @ case 6
	.4byte .L080A445A @ case 7
	.4byte .L080A445A @ case 8
	.4byte .L080A445A @ case 9
	.4byte .L080A445A @ case 10
	.4byte .L080A445A @ case 11
	.4byte .L080A445A @ case 12
	.4byte .L080A445A @ case 13
	.4byte .L080A445A @ case 14
	.4byte .L080A445A @ case 15
	.4byte .L080A445A @ case 16
	.4byte .L080A445A @ case 17
	.4byte .L080A445A @ case 18
	.4byte .L080A445A @ case 19
	.4byte .L080A445A @ case 20
	.4byte .L080A445A @ case 21
	.4byte .L080A445A @ case 22
	.4byte .L080A445A @ case 23
	.4byte .L080A445A @ case 24
	.4byte .L080A445A @ case 25
	.4byte .L080A445A @ case 26
	.4byte .L080A445A @ case 27
	.4byte .L080A445A @ case 28
	.4byte .L080A445A @ case 29
	.4byte .L080A445A @ case 30
	.4byte .L080A445A @ case 31
	.4byte .L080A445A @ case 32
	.4byte .L080A445A @ case 33
	.4byte .L080A445A @ case 34
	.4byte .L080A445A @ case 35
	.4byte .L080A445A @ case 36
	.4byte .L080A445A @ case 37
	.4byte .L080A445A @ case 38
	.4byte .L080A445A @ case 39
	.4byte .L080A445A @ case 40
	.4byte .L080A445A @ case 41
	.4byte .L080A445A @ case 42
	.4byte .L080A445A @ case 43
	.4byte .L080A445A @ case 44
	.4byte .L080A445A @ case 45
	.4byte .L080A445A @ case 46
	.4byte .L080A445A @ case 47
	.4byte .L080A445A @ case 48
	.4byte .L080A445A @ case 49
	.4byte .L080A445A @ case 50
	.4byte .L080A429C @ case 51
	.4byte .L080A4330 @ case 52
	.4byte .L080A435A @ case 53
	.4byte .L080A436C @ case 54
	.4byte .L080A43D0 @ case 55
	.4byte .L080A443A @ case 56
.L080A4274:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #2
	bl func_0809CE1C
	cmp r0, #0
	bne .L080A4286
	b .L080A445A
.L080A4286:
	b .L080A4456
.L080A4288:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #3
	bl func_0809CE1C
	cmp r0, #0
	bne .L080A429A
	b .L080A445A
.L080A429A:
	b .L080A4456
.L080A429C:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #0x35
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A42AE
	b .L080A4456
.L080A42AE:
	add r1, sp, #0x78
	strh r0, [r1]
	ldrh r2, [r1, #0x12]
	ldr r0, .L080A4324 @ =0xFFFFF000
	ands r0, r2
	strh r0, [r1, #0x12]
	ldrb r2, [r1, #0x13]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0x13]
	mov r2, sp
	adds r2, #0x7a
	movs r3, #0
	add r0, sp, #0x88
.L080A42CC:
	strh r3, [r0]
	subs r0, #2
	cmp r0, r2
	bge .L080A42CC
	movs r6, #0
	movs r5, #0
	ldr r0, .L080A4328 @ =0x00002C1A
	add r0, sb
	ldrb r0, [r0]
	cmp r6, r0
	bge .L080A431A
	adds r4, r1, #0
.L080A42E4:
	ldr r0, .L080A432C @ =0x00002214
	add r0, sb
	adds r1, r4, #0
	adds r2, r5, #0
	bl func_0809A970
	ldrh r0, [r4]
	cmp r0, #0x7a
	beq .L080A4302
	cmp r0, #0x7a
	blt .L080A430E
	cmp r0, #0x81
	bgt .L080A430E
	cmp r0, #0x80
	blt .L080A430E
.L080A4302:
	ldrb r1, [r4, #0x13]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L080A430E
	adds r6, #1
.L080A430E:
	adds r5, #1
	ldr r0, .L080A4328 @ =0x00002C1A
	add r0, sb
	ldrb r0, [r0]
	cmp r5, r0
	blt .L080A42E4
.L080A431A:
	cmp r6, #2
	ble .L080A4320
	b .L080A445A
.L080A4320:
	b .L080A4456
	.align 2, 0
.L080A4324: .4byte 0xFFFFF000
.L080A4328: .4byte 0x00002C1A
.L080A432C: .4byte 0x00002214
.L080A4330:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #0x36
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A4342
	b .L080A4456
.L080A4342:
	mov r2, sb
	ldrb r0, [r2, #0x12]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #3
	movs r3, #0xf8
	lsls r3, r3, #0x18
	adds r0, r0, r3
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	bls .L080A4358
	b .L080A445A
.L080A4358:
	b .L080A4456
.L080A435A:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #0x37
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A445A
	b .L080A4456
.L080A436C:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #0x38
	bl func_0809CE1C
	cmp r0, #0
	bne .L080A4456
	movs r5, #0
	mov r4, sb
	adds r4, #0x54
	adds r0, r4, #0
	movs r1, #0x3d
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A439A
	adds r0, r4, #0
	movs r1, #0x3d
	bl GetAmountShipped__C11ShippingBini
	adds r5, r0, #0
.L080A439A:
	adds r0, r4, #0
	movs r1, #0x3e
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A43B2
	adds r0, r4, #0
	movs r1, #0x3e
	bl GetAmountShipped__C11ShippingBini
	adds r5, r5, r0
.L080A43B2:
	adds r0, r4, #0
	movs r1, #0x3f
	bl IsDisplayEnabled__C11ShippingBini
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A43CA
	adds r0, r4, #0
	movs r1, #0x3f
	bl GetAmountShipped__C11ShippingBini
	adds r5, r5, r0
.L080A43CA:
	cmp r5, #0xc7
	bhi .L080A445A
	b .L080A4456
.L080A43D0:
	movs r5, #0xb2
	lsls r5, r5, #6
	add r5, sb
	adds r0, r5, #0
	movs r1, #0x39
	bl func_0809CE1C
	cmp r0, #0
	bne .L080A4456
	adds r0, r5, #0
	movs r1, #0x35
	bl func_0809CE1C
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r4, r1, #0x1f
	adds r0, r5, #0
	movs r1, #0x36
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A43FE
	adds r4, #1
.L080A43FE:
	adds r0, r5, #0
	movs r1, #0x37
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A4410
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
.L080A4410:
	adds r0, r5, #0
	movs r1, #0x38
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A4422
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
.L080A4422:
	adds r0, r5, #0
	movs r1, #0x3a
	bl func_0809CE1C
	cmp r0, #0
	beq .L080A4434
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
.L080A4434:
	cmp r4, #4
	bhi .L080A445A
	b .L080A4456
.L080A443A:
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #0x3a
	bl func_0809CE1C
	cmp r0, #0
	bne .L080A4456
	mov r0, sb
	bl func_08010F04
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A445A
.L080A4456:
	movs r7, #1
	rsbs r7, r7, #0
.L080A445A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq .L080A449C
	cmp r7, #7
	bgt .L080A44C4
	cmp r7, #2
	beq .L080A44A8
	add r4, sp, #0x8c
	ldr r1, .L080A44A4 @ =gUnk_08104E54
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r5, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl __7ArticleUi
	ldrb r1, [r4]
	ldr r0, [sp, #0xa0]
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	mov r4, sp
	adds r4, #0x8d
	adds r0, r4, #0
	adds r1, r5, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetName__C7Article
	str r0, [sp]
.L080A449C:
	mov r1, sp
	movs r0, #0
	strh r0, [r1, #4]
	b .L080A454C
	.align 2, 0
.L080A44A4: .4byte gUnk_08104E54
.L080A44A8:
	mov r1, sp
	movs r4, #0
	movs r0, #1
	strb r0, [r1, #0xc]
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	movs r1, #2
	bl func_0809CE7C
	str r0, [sp]
	mov r0, sp
	strh r4, [r0, #4]
	b .L080A454C
.L080A44C4:
	mov r2, sp
	ldr r1, .L080A4500 @ =gUnk_08104ED0
	lsls r0, r7, #5
	adds r0, r0, r1
	ldrb r1, [r0]
	strh r1, [r2, #4]
	ldrb r1, [r0, #1]
	mov r0, sp
	ldrh r0, [r0, #4]
	subs r6, r1, r0
	cmp r6, #0
	ble .L080A44F2
	bl rand
	mov r5, sp
	mov r4, sp
	asrs r0, r0, #8
	adds r1, r6, #1
	bl __modsi3
	ldrh r1, [r4, #4]
	adds r1, r1, r0
	strh r1, [r5, #4]
.L080A44F2:
	movs r1, #0xa2
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r0, #0x19
	bhi .L080A4504
	movs r1, #0xa0
	b .L080A450A
	.align 2, 0
.L080A4500: .4byte gUnk_08104ED0
.L080A4504:
	cmp r0, #0x31
	bhi .L080A450A
	movs r1, #0xa1
.L080A450A:
	add r4, sp, #0x1c
	adds r0, r4, #0
	bl __4FoodUi
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x1d
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x1e
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	ldr r0, [sp, #0xa0]
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	movs r0, #0xb2
	lsls r0, r0, #6
	add r0, sb
	adds r1, r7, #0
	bl func_0809CE7C
	str r0, [sp]
	cmp r7, #0x34
	ble .L080A454C
	mov r1, sp
	movs r0, #1
	strb r0, [r1, #0xd]
	str r7, [sp, #0x10]
.L080A454C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r7, r0
	beq .L080A4588
	movs r4, #0xb2
	lsls r4, r4, #6
	add r4, sb
	adds r0, r4, #0
	adds r1, r7, #0
	bl func_0809CE24
	movs r5, #0
	cmp r0, #0
	bne .L080A456A
	movs r5, #1
.L080A456A:
	mov r0, sp
	ldrh r2, [r0, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	bl func_0809CD98
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r5, #0
	bne .L080A4588
	cmp r0, #0
	beq .L080A4588
	mov r1, sp
	movs r0, #1
	strb r0, [r1, #0x14]
.L080A4588:
	ldr r1, [sp, #0x90]
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [sp, #0x90]
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A45A8
func_080A45A8: @ 0x080A45A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r2, r0, #0
	movs r0, #7
	mov r8, r0
	ldrb r1, [r2, #1]
	lsrs r1, r1, #2
	ldrh r0, [r2, #2]
	ldr r3, .L080A4630 @ =0x000003FF
	ands r0, r3
	lsls r0, r0, #6
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge .L080A45CC
	adds r0, #7
.L080A45CC:
	asrs r5, r0, #3
	ldrb r1, [r2, #3]
	lsrs r1, r1, #2
	ldrh r0, [r2, #4]
	ands r0, r3
	lsls r0, r0, #6
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge .L080A45E4
	adds r0, #7
.L080A45E4:
	asrs r3, r0, #3
	movs r4, #0
	ldrh r0, [r2]
	ldr r6, .L080A4634 @ =gUnk_0810563C
	lsls r0, r0, #0x16
	lsrs r7, r0, #0x16
	adds r2, r6, #0
	mov ip, r2
	movs r1, #0
.L080A45F6:
	ldr r0, [r2]
	cmp r7, r0
	bne .L080A4638
	adds r0, r6, #4
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r5, r0
	blt .L080A4638
	mov r0, ip
	adds r0, #0xc
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r5, r0
	bgt .L080A4638
	mov r0, ip
	adds r0, #8
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt .L080A4638
	mov r0, ip
	adds r0, #0x10
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	bgt .L080A4638
	ldr r2, [r2, #0x14]
	mov r8, r2
	b .L080A4642
	.align 2, 0
.L080A4630: .4byte 0x000003FF
.L080A4634: .4byte gUnk_0810563C
.L080A4638:
	adds r2, #0x18
	adds r1, #0x18
	adds r4, #1
	cmp r4, #7
	ble .L080A45F6
.L080A4642:
	mov r0, r8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A4650
func_080A4650: @ 0x080A4650
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r4, .L080A4688 @ =gUnk_08105708
	lsls r3, r3, #2
	lsls r2, r2, #4
	adds r3, r3, r2
	adds r3, r3, r4
	ldr r3, [r3]
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r2, r2, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #0
	ldrh r1, [r3]
	ldr r4, .L080A468C @ =0x0000FFFF
.L080A4678:
	cmp r1, r4
	beq .L080A4690
	cmp r1, r2
	bhi .L080A4690
	ldrb r0, [r3, #2]
	adds r3, #4
	ldrh r1, [r3]
	b .L080A4678
	.align 2, 0
.L080A4688: .4byte gUnk_08105708
.L080A468C: .4byte 0x0000FFFF
.L080A4690:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start GetMapData
GetMapData: @ 0x080A4698
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, .L080A46A8 @ =gUnk_08105EDC
	adds r0, r0, r1
	bx lr
	.align 2, 0
.L080A46A8: .4byte gUnk_08105EDC

	thumb_func_start func_080A46AC
func_080A46AC: @ 0x080A46AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	mov r8, r3
	ldr r0, [sp, #0x20]
	mov sb, r0
	ldr r0, .L080A473C @ =vtable_unk_080E82D8
	str r0, [r6, #0x24]
	adds r4, r6, #0
	stm r4!, {r7}
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_08007B54
	adds r1, r0, #0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	movs r1, #0
	movs r2, #0
	strh r0, [r6, #0xc]
	mov r0, sp
	strb r1, [r0]
	str r2, [r6, #0x10]
	mov r2, sb
	cmp r2, #0x10
	bhi .L080A4704
	adds r0, r6, #0
	adds r0, #0x14
	mov r1, sp
	ldrb r1, [r1]
	bl memset
	mov r0, sb
	str r0, [r6, #0x10]
.L080A4704:
	movs r5, #0
	cmp r5, sb
	bhs .L080A472C
	adds r4, r6, #0
	adds r4, #0x14
.L080A470E:
	ldr r0, [r7]
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	ldr r2, [r0, #0x48]
	adds r0, r7, #0
	bl _call_via_r2
	strb r0, [r4]
	adds r4, #1
	adds r5, #1
	cmp r5, sb
	blo .L080A470E
.L080A472C:
	adds r0, r6, #0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A473C: .4byte vtable_unk_080E82D8

	thumb_func_start func_080A4740
func_080A4740: @ 0x080A4740
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, .L080A47B0 @ =vtable_unk_080E82D8
	str r0, [r5, #0x24]
	adds r4, r5, #0
	stm r4!, {r6}
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	mov r1, r8
	bl func_08007B54
	adds r1, r0, #0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	movs r1, #0
	movs r2, #0
	strh r0, [r5, #0xc]
	movs r4, #1
	mov r0, sp
	strb r1, [r0]
	str r2, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x14
	mov r1, sp
	ldrb r1, [r1]
	movs r2, #1
	bl memset
	str r4, [r5, #0x10]
	ldr r0, [r6]
	ldr r2, [r0, #0x48]
	adds r0, r6, #0
	mov r1, sb
	bl _call_via_r2
	strb r0, [r5, #0x14]
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080A47B0: .4byte vtable_unk_080E82D8

	thumb_func_start func_080A47B4
func_080A47B4: @ 0x080A47B4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, .L080A4808 @ =vtable_unk_080E82D8
	str r0, [r5, #0x24]
	movs r6, #0
	ldr r0, [r5, #0x10]
	cmp r6, r0
	bhs .L080A47E0
	adds r4, r5, #0
	adds r4, #0x14
.L080A47CA:
	ldr r0, [r5]
	ldr r2, [r0]
	ldrb r1, [r4]
	ldr r2, [r2, #0x4c]
	bl _call_via_r2
	adds r4, #1
	adds r6, #1
	ldr r0, [r5, #0x10]
	cmp r6, r0
	blo .L080A47CA
.L080A47E0:
	adds r4, r5, #4
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq .L080A4800
	adds r0, r5, #0
	bl __builtin_delete
.L080A4800:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A4808: .4byte vtable_unk_080E82D8

	thumb_func_start func_080A480C
func_080A480C: @ 0x080A480C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r5, r1, #0
	ldr r6, [r2]
	movs r4, #0
	cmp r6, #0
	beq .L080A4824
	ldrh r4, [r2, #4]
.L080A4824:
	cmp r4, #0
	bne .L080A482A
	b .L080A4932
.L080A482A:
	adds r0, #4
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	lsls r2, r2, #5
	ldr r0, .L080A4868 @ =0x06010000
	adds r2, r2, r0
	mov r0, sp
	adds r1, r6, #0
	adds r3, r4, #0
	bl func_08008F0C
	mov sb, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080A486C
	cmp r1, #0
	beq .L080A485E
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A485E:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080A4932
	.align 2, 0
.L080A4868: .4byte 0x06010000
.L080A486C:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r1, [r5]
	mov r6, sl
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x10]
	add r2, sp, #0x14
	add r0, sp, #0x10
	cmp r4, #1
	bhs .L080A4886
	adds r0, r2, #0
.L080A4886:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A48A6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A48A2
	mov r0, r8
	bl func_080D3BC0
.L080A48A2:
	ldr r1, [r5]
	b .L080A48AA
.L080A48A6:
	movs r0, #0
	mov r8, r0
.L080A48AA:
	adds r4, r0, #0
	str r4, [sp, #0x18]
	adds r2, r1, #0
	adds r3, r4, #0
	cmp r2, sl
	beq .L080A48CE
.L080A48B6:
	cmp r3, #0
	beq .L080A48C6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A48C6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A48B6
.L080A48CE:
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne .L080A48EA
	cmp r4, #0
	beq .L080A48E6
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A48E6:
	adds r4, #0x10
	b .L080A490C
.L080A48EA:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080A490A
.L080A48F2:
	cmp r2, #0
	beq .L080A4902
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A4902:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A48F2
.L080A490A:
	adds r4, r2, #0
.L080A490C:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080A491C
.L080A4916:
	adds r0, #0x10
	cmp r0, r2
	bne .L080A4916
.L080A491C:
	cmp r1, #0
	beq .L080A4926
	adds r0, r1, #0
	bl free
.L080A4926:
	ldr r0, [sp, #0x18]
	add r0, r8
	ldr r1, [sp, #0x18]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080A4932:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A4944
func_080A4944: @ 0x080A4944
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sl, r2
	ldr r3, [r1]
	movs r2, #0
	cmp r3, #0
	beq .L080A495E
	ldrh r2, [r1, #4]
.L080A495E:
	cmp r2, #0
	beq .L080A4992
	ldr r1, [r0]
	mov r8, r1
	lsrs r2, r2, #5
	mov sb, r2
	adds r6, r3, #0
	movs r7, #0
	cmp r7, sb
	bhs .L080A4992
	adds r5, r0, #0
	adds r5, #0x14
.L080A4976:
	mov r1, r8
	ldr r0, [r1]
	ldrb r2, [r5]
	ldr r4, [r0, #0x54]
	mov r0, r8
	adds r1, r6, #0
	mov r3, sl
	bl _call_via_r4
	adds r5, #1
	adds r7, #1
	adds r6, #0x20
	cmp r7, sb
	blo .L080A4976
.L080A4992:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080A49A0
func_080A49A0: @ 0x080A49A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r1, r3, #0
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	ldr r4, [sp, #0x24]
	add r0, sp, #0x28
	ldrb r0, [r0]
	mov r8, r0
	str r4, [sp]
	adds r0, r7, #0
	bl func_080A46AC
	ldr r0, .L080A49FC @ =vtable_unk_080E681C
	str r0, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x28
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r5, #0
	adds r2, r6, #0
	bl func_0805E824
	adds r1, r7, #0
	adds r1, #0x3c
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x3d
	mov r1, r8
	strb r1, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, r7, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A49FC: .4byte vtable_unk_080E681C

	thumb_func_start func_080A4A00
func_080A4A00: @ 0x080A4A00
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r1, r3, #0
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	add r0, sp, #0x1c
	ldrb r6, [r0]
	adds r0, r7, #0
	bl func_080A4740
	ldr r0, .L080A4A48 @ =vtable_unk_080E681C
	str r0, [r7, #0x24]
	adds r0, r7, #0
	adds r0, #0x28
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r4, #0
	adds r2, r5, #0
	bl func_0805E824
	adds r1, r7, #0
	adds r1, #0x3c
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x3d
	strb r6, [r0]
	adds r0, #1
	strb r2, [r0]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A4A48: .4byte vtable_unk_080E681C
.L080A4A4C:
	.byte 0x70, 0xB5, 0x85, 0xB0
	.byte 0x04, 0x1C, 0x0D, 0x1C, 0x16, 0x1C, 0xA1, 0x68, 0x48, 0x42, 0x08, 0x43, 0x00, 0x28, 0x01, 0xDB
	.byte 0x00, 0x20, 0x11, 0xE0, 0xA1, 0x89, 0x22, 0x1C, 0x10, 0x32, 0x0A, 0x98, 0x00, 0x90, 0x0B, 0x98
	.byte 0x01, 0x90, 0x0C, 0x98, 0x02, 0x90, 0x03, 0x91, 0x04, 0x92, 0x28, 0x1C, 0x31, 0x1C, 0x1A, 0x1C
	.byte 0x09, 0x9B, 0x03, 0x4C, 0x2E, 0xF0, 0x4A, 0xFF, 0x05, 0xB0, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0xDC, 0x04, 0x00, 0x03

	thumb_func_start func_080A4A94
func_080A4A94: @ 0x080A4A94
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x90
	ldr r0, .L080A4B64 @ =vtable_unk_080E82E4
	str r0, [r1]
	movs r0, #0x8d
	lsls r0, r0, #2
	str r0, [r4]
	movs r0, #0x42
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	subs r1, #0x68
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	str r0, [r4, #0x2c]
	adds r1, #6
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	adds r1, #4
	strb r0, [r1]
	adds r2, r4, #0
	adds r2, #0x5c
	str r0, [r4, #0x5c]
	str r0, [r2, #4]
	ldr r1, .L080A4B68 @ =vtable_unk_080E830C
	str r1, [r2, #8]
	adds r1, r4, #0
	adds r1, #0x8c
	str r0, [r1]
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x1c
.L080A4B2A:
	movs r0, #0xf0
	lsls r0, r0, #1
	bl __builtin_vec_new
	stm r6!, {r0}
	adds r5, #1
	cmp r5, #2
	bls .L080A4B2A
	movs r5, #0
	adds r6, r4, #0
	adds r6, #0x10
.L080A4B40:
	movs r0, #0xf2
	lsls r0, r0, #7
	bl __builtin_vec_new
	stm r6!, {r0}
	adds r5, #1
	cmp r5, #2
	bls .L080A4B40
	movs r0, #0xf2
	lsls r0, r0, #8
	bl __builtin_vec_new
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080A4B64: .4byte vtable_unk_080E82E4
.L080A4B68: .4byte vtable_unk_080E830C

	thumb_func_start func_080A4B6C
func_080A4B6C: @ 0x080A4B6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	adds r1, r6, #0
	adds r1, #0x90
	ldr r0, .L080A4BE8 @ =vtable_unk_080E82E4
	str r0, [r1]
	ldr r0, [r6, #0x2c]
	cmp r0, #0
	beq .L080A4B8A
	bl __builtin_vec_delete
.L080A4B8A:
	movs r5, #0
	adds r7, r6, #0
	adds r7, #0x1c
	movs r0, #0x5c
	adds r0, r0, r6
	mov r8, r0
	adds r4, r6, #0
	adds r4, #0x10
.L080A4B9A:
	ldr r0, [r4]
	cmp r0, #0
	beq .L080A4BA4
	bl __builtin_vec_delete
.L080A4BA4:
	adds r4, #4
	adds r5, #1
	cmp r5, #2
	bls .L080A4B9A
	movs r5, #0
	adds r4, r7, #0
.L080A4BB0:
	ldr r0, [r4]
	cmp r0, #0
	beq .L080A4BBA
	bl __builtin_vec_delete
.L080A4BBA:
	adds r4, #4
	adds r5, #1
	cmp r5, #2
	bls .L080A4BB0
	mov r0, r8
	movs r1, #2
	bl func_080098AC
	movs r0, #1
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq .L080A4BDA
	adds r0, r6, #0
	bl __builtin_delete
.L080A4BDA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A4BE8: .4byte vtable_unk_080E82E4

	thumb_func_start func_080A4BEC
func_080A4BEC: @ 0x080A4BEC
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x8c
	ldr r0, [r3]
	cmp r0, #0
	beq .L080A4C20
	adds r1, r2, #0
	adds r1, #0x84
	ldr r0, [r2, #8]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x88
	ldr r0, [r2, #0xc]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r2, #0xc]
	ldr r0, [r3]
	subs r0, #1
	str r0, [r3]
	adds r1, r2, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080A4C20:
	ldr r0, [r2, #4]
	cmp r0, #0x3f
	bls .L080A4C28
	b .L080A4F40
.L080A4C28:
	lsls r0, r0, #2
	ldr r1, .L080A4C34 @ =.L080A4C38
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A4C34: .4byte .L080A4C38
.L080A4C38: @ jump table
	.4byte .L080A4ED8 @ case 0
	.4byte .L080A4F08 @ case 1
	.4byte .L080A4F40 @ case 2
	.4byte .L080A4F40 @ case 3
	.4byte .L080A4F40 @ case 4
	.4byte .L080A4F40 @ case 5
	.4byte .L080A4E78 @ case 6
	.4byte .L080A4EA8 @ case 7
	.4byte .L080A4E38 @ case 8
	.4byte .L080A4E58 @ case 9
	.4byte .L080A4F40 @ case 10
	.4byte .L080A4F40 @ case 11
	.4byte .L080A4F40 @ case 12
	.4byte .L080A4F40 @ case 13
	.4byte .L080A4D38 @ case 14
	.4byte .L080A4D98 @ case 15
	.4byte .L080A4F40 @ case 16
	.4byte .L080A4F40 @ case 17
	.4byte .L080A4F40 @ case 18
	.4byte .L080A4F40 @ case 19
	.4byte .L080A4F40 @ case 20
	.4byte .L080A4F40 @ case 21
	.4byte .L080A4F40 @ case 22
	.4byte .L080A4F40 @ case 23
	.4byte .L080A4F40 @ case 24
	.4byte .L080A4F40 @ case 25
	.4byte .L080A4F40 @ case 26
	.4byte .L080A4F40 @ case 27
	.4byte .L080A4F40 @ case 28
	.4byte .L080A4F40 @ case 29
	.4byte .L080A4F40 @ case 30
	.4byte .L080A4E18 @ case 31
	.4byte .L080A4F40 @ case 32
	.4byte .L080A4F40 @ case 33
	.4byte .L080A4F40 @ case 34
	.4byte .L080A4F40 @ case 35
	.4byte .L080A4F40 @ case 36
	.4byte .L080A4F40 @ case 37
	.4byte .L080A4F40 @ case 38
	.4byte .L080A4F40 @ case 39
	.4byte .L080A4F40 @ case 40
	.4byte .L080A4F40 @ case 41
	.4byte .L080A4F40 @ case 42
	.4byte .L080A4F40 @ case 43
	.4byte .L080A4F40 @ case 44
	.4byte .L080A4F40 @ case 45
	.4byte .L080A4F40 @ case 46
	.4byte .L080A4F40 @ case 47
	.4byte .L080A4F40 @ case 48
	.4byte .L080A4F40 @ case 49
	.4byte .L080A4F40 @ case 50
	.4byte .L080A4F40 @ case 51
	.4byte .L080A4F40 @ case 52
	.4byte .L080A4F40 @ case 53
	.4byte .L080A4F40 @ case 54
	.4byte .L080A4F40 @ case 55
	.4byte .L080A4F40 @ case 56
	.4byte .L080A4F40 @ case 57
	.4byte .L080A4F40 @ case 58
	.4byte .L080A4F40 @ case 59
	.4byte .L080A4DF8 @ case 60
	.4byte .L080A4F40 @ case 61
	.4byte .L080A4ED8 @ case 62
	.4byte .L080A4ED8 @ case 63
.L080A4D38:
	adds r3, r2, #0
	adds r3, #0x40
	ldr r1, .L080A4D8C @ =gUnk_0810718C
	ldrb r0, [r3, #2]
	adds r0, #1
	movs r4, #0
	strb r0, [r3, #2]
	movs r5, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4D58
	strb r4, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4D58:
	adds r3, r2, #0
	adds r3, #0x44
	ldr r1, .L080A4D90 @ =gUnk_08107198
	ldrb r0, [r3, #2]
	adds r0, #1
	strb r0, [r3, #2]
	ands r0, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4D72
	strb r4, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4D72:
	adds r2, #0x48
	ldr r1, .L080A4D94 @ =gUnk_081071A4
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	ands r0, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	bhs .L080A4D86
	b .L080A4F40
.L080A4D86:
	strb r4, [r2, #2]
	b .L080A4F3C
	.align 2, 0
.L080A4D8C: .4byte gUnk_0810718C
.L080A4D90: .4byte gUnk_08107198
.L080A4D94: .4byte gUnk_081071A4
.L080A4D98:
	adds r3, r2, #0
	adds r3, #0x40
	ldr r1, .L080A4DEC @ =gUnk_081071B0
	ldrb r0, [r3, #2]
	adds r0, #1
	movs r4, #0
	strb r0, [r3, #2]
	movs r5, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4DB8
	strb r4, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4DB8:
	adds r3, r2, #0
	adds r3, #0x44
	ldr r1, .L080A4DF0 @ =gUnk_081071BC
	ldrb r0, [r3, #2]
	adds r0, #1
	strb r0, [r3, #2]
	ands r0, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4DD2
	strb r4, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4DD2:
	adds r2, #0x48
	ldr r1, .L080A4DF4 @ =gUnk_081071C8
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	ands r0, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	bhs .L080A4DE6
	b .L080A4F40
.L080A4DE6:
	strb r4, [r2, #2]
	b .L080A4F3C
	.align 2, 0
.L080A4DEC: .4byte gUnk_081071B0
.L080A4DF0: .4byte gUnk_081071BC
.L080A4DF4: .4byte gUnk_081071C8
.L080A4DF8:
	adds r2, #0x50
	ldr r1, .L080A4E14 @ =gUnk_081071F8
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	bhs .L080A4E0E
	b .L080A4F40
.L080A4E0E:
	movs r0, #0
	strb r0, [r2, #2]
	b .L080A4F3C
	.align 2, 0
.L080A4E14: .4byte gUnk_081071F8
.L080A4E18:
	adds r2, #0x54
	ldr r1, .L080A4E34 @ =gUnk_081071E0
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	bhs .L080A4E2E
	b .L080A4F40
.L080A4E2E:
	movs r0, #0
	strb r0, [r2, #2]
	b .L080A4F3C
	.align 2, 0
.L080A4E34: .4byte gUnk_081071E0
.L080A4E38:
	adds r2, #0x4c
	ldr r1, .L080A4E54 @ =gUnk_081071D4
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4F40
	movs r0, #0
	strb r0, [r2, #2]
	b .L080A4F3C
	.align 2, 0
.L080A4E54: .4byte gUnk_081071D4
.L080A4E58:
	adds r2, #0x4c
	ldr r1, .L080A4E74 @ =gUnk_081071EC
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4F40
	movs r0, #0
	strb r0, [r2, #2]
	b .L080A4F3C
	.align 2, 0
.L080A4E74: .4byte gUnk_081071EC
.L080A4E78:
	adds r3, r2, #0
	adds r3, #0x38
	ldr r1, .L080A4EA0 @ =gUnk_0810715C
	ldrb r0, [r3, #2]
	adds r0, #1
	movs r5, #0
	strb r0, [r3, #2]
	movs r4, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4E98
	strb r5, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4E98:
	adds r2, #0x3c
	ldr r1, .L080A4EA4 @ =gUnk_08107168
	b .L080A4F2C
	.align 2, 0
.L080A4EA0: .4byte gUnk_0810715C
.L080A4EA4: .4byte gUnk_08107168
.L080A4EA8:
	adds r3, r2, #0
	adds r3, #0x38
	ldr r1, .L080A4ED0 @ =gUnk_08107174
	ldrb r0, [r3, #2]
	adds r0, #1
	movs r5, #0
	strb r0, [r3, #2]
	movs r4, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4EC8
	strb r5, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4EC8:
	adds r2, #0x3c
	ldr r1, .L080A4ED4 @ =gUnk_08107180
	b .L080A4F2C
	.align 2, 0
.L080A4ED0: .4byte gUnk_08107174
.L080A4ED4: .4byte gUnk_08107180
.L080A4ED8:
	adds r3, r2, #0
	adds r3, #0x30
	ldr r1, .L080A4F00 @ =gUnk_08107114
	ldrb r0, [r3, #2]
	adds r0, #1
	movs r5, #0
	strb r0, [r3, #2]
	movs r4, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4EF8
	strb r5, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4EF8:
	adds r2, #0x34
	ldr r1, .L080A4F04 @ =gUnk_0810712C
	b .L080A4F2C
	.align 2, 0
.L080A4F00: .4byte gUnk_08107114
.L080A4F04: .4byte gUnk_0810712C
.L080A4F08:
	adds r3, r2, #0
	adds r3, #0x30
	ldr r1, .L080A4F48 @ =gUnk_08107120
	ldrb r0, [r3, #2]
	adds r0, #1
	movs r5, #0
	strb r0, [r3, #2]
	movs r4, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4F28
	strb r5, [r3, #2]
	movs r0, #1
	strb r0, [r3, #1]
.L080A4F28:
	adds r2, #0x34
	ldr r1, .L080A4F4C @ =gUnk_08107138
.L080A4F2C:
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	ands r0, r4
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A4F40
	strb r5, [r2, #2]
.L080A4F3C:
	movs r0, #1
	strb r0, [r2, #1]
.L080A4F40:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080A4F48: .4byte gUnk_08107120
.L080A4F4C: .4byte gUnk_08107138

	thumb_func_start func_080A4F50
func_080A4F50: @ 0x080A4F50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	adds r6, r0, #0
	mov sl, r1
	str r2, [sp, #0x1c]
	str r3, [sp, #0x20]
	adds r4, r6, #0
	adds r4, #0x29
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080A4F70
	b .L080A50C2
.L080A4F70:
	ldr r0, [r6, #4]
	bl GetMapData
	movs r2, #0xa
	ldrsh r1, [r6, r2]
	mov ip, r1
	movs r3, #0xe
	ldrsh r7, [r6, r3]
	ldrh r0, [r0, #0x20]
	str r0, [sp, #0x24]
	mov r0, ip
	cmp r1, #0
	bge .L080A4F8C
	adds r0, #7
.L080A4F8C:
	asrs r1, r0, #3
	adds r0, r7, #0
	cmp r7, #0
	bge .L080A4F96
	adds r0, r7, #7
.L080A4F96:
	asrs r0, r0, #3
	ldr r5, [sp, #0x24]
	muls r0, r5, r0
	adds r1, r1, r0
	str r1, [sp, #0x28]
	movs r0, #0
	str r0, [sp, #0x2c]
	str r4, [sp, #0x38]
	adds r1, r6, #0
	adds r1, #0x10
	str r1, [sp, #0x34]
	adds r2, r6, #0
	adds r2, #0x80
	str r2, [sp, #0x48]
	ldr r3, [sp, #0x20]
	ldr r3, [r3, #8]
	str r3, [sp, #0x40]
	adds r4, r6, #0
	adds r4, #0x5c
	str r4, [sp, #0x44]
	mov r5, sp
	str r5, [sp, #0x30]
	movs r0, #0x68
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0
	str r1, [sp, #0x4c]
.L080A4FCC:
	ldr r2, [sp, #0x2c]
	lsls r4, r2, #2
	ldr r3, [sp, #0x34]
	adds r0, r3, r4
	ldr r5, [r0]
	cmp r5, #0
	beq .L080A5090
	ldr r0, .L080A507C @ =gUnk_081073A0
	adds r0, r4, r0
	ldr r0, [r0]
	str r0, [sp, #0x50]
	ldr r0, .L080A5080 @ =gUnk_08107394
	adds r0, r4, r0
	ldr r2, [r0]
	ldr r0, .L080A5084 @ =gUnk_08107388
	adds r0, r4, r0
	ldr r0, [r0]
	mov sb, r0
	lsls r1, r0, #8
	movs r3, #0xf8
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r1, r0
	movs r0, #0x40
	orrs r1, r0
	orrs r2, r1
	ldr r0, [sp, #0x30]
	strh r2, [r0]
	ldr r1, [sp, #0x50]
	movs r0, #0xfc
	lsls r0, r0, #0x18
	adds r3, r1, r0
	ldr r1, [sp, #0x1c]
	adds r3, r1, r3
	strh r2, [r3]
	ldr r0, .L080A5088 @ =gUnk_081073AC
	adds r0, r4, r0
	ldr r1, [r0]
	mov r2, sp
	mov r0, ip
	cmp r0, #0
	bge .L080A5022
	adds r0, #7
.L080A5022:
	asrs r0, r0, #3
	lsls r0, r0, #3
	mov r3, ip
	subs r0, r3, r0
	strh r0, [r2]
	movs r2, #0xfc
	lsls r2, r2, #0x18
	adds r1, r1, r2
	ldr r3, [sp, #0x1c]
	adds r1, r3, r1
	strh r0, [r1]
	ldr r0, .L080A508C @ =gUnk_081073B8
	adds r0, r4, r0
	ldr r0, [r0]
	mov r2, sp
	adds r1, r7, #0
	cmp r7, #0
	bge .L080A5048
	adds r1, r7, #7
.L080A5048:
	asrs r1, r1, #3
	lsls r1, r1, #3
	subs r1, r7, r1
	strh r1, [r2]
	movs r4, #0xfc
	lsls r4, r4, #0x18
	adds r0, r0, r4
	ldr r2, [sp, #0x1c]
	adds r0, r2, r0
	strh r1, [r0]
	ldr r3, [sp, #0x28]
	lsls r0, r3, #1
	adds r0, r5, r0
	mov r4, r8
	str r0, [r4]
	adds r1, r6, #0
	adds r1, #0x6c
	ldr r5, [sp, #0x4c]
	adds r1, r1, r5
	mov r2, sb
	lsls r0, r2, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r0, r0, r3
	str r0, [r1]
	b .L080A5094
	.align 2, 0
.L080A507C: .4byte gUnk_081073A0
.L080A5080: .4byte gUnk_08107394
.L080A5084: .4byte gUnk_08107388
.L080A5088: .4byte gUnk_081073AC
.L080A508C: .4byte gUnk_081073B8
.L080A5090:
	mov r4, r8
	str r5, [r4]
.L080A5094:
	movs r5, #8
	add r8, r5
	ldr r0, [sp, #0x4c]
	adds r0, #8
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x2c]
	adds r1, #1
	str r1, [sp, #0x2c]
	cmp r1, #2
	bls .L080A4FCC
	movs r4, #0
	mov r2, sp
	ldrh r3, [r2, #0x24]
	ldr r2, [sp, #0x48]
	strh r3, [r2]
	ldr r5, [sp, #0x40]
	ldr r2, [r5, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x44]
	bl _call_via_r2
	ldr r7, [sp, #0x38]
	strb r4, [r7]
.L080A50C2:
	adds r4, r6, #0
	adds r4, #0x28
	ldrb r0, [r4]
	cmp r0, #0
	beq .L080A50E0
	adds r0, r6, #0
	adds r0, #0x90
	ldr r0, [r0]
	ldr r2, [r0, #0x1c]
	adds r0, r6, #0
	mov r1, sl
	bl _call_via_r2
	movs r0, #0
	strb r0, [r4]
.L080A50E0:
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r1, [r0]
	str r0, [sp, #0x3c]
	cmp r1, #0
	bne .L080A50EE
	b .L080A5200
.L080A50EE:
	ldr r1, [r6, #0x24]
	add r0, sp, #4
	ldr r2, .L080A5124 @ =0x05000020
	movs r3, #0xf0
	lsls r3, r3, #1
	bl func_08008F0C
	add r0, sp, #4
	mov r8, r0
	mov r2, sl
	ldr r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	beq .L080A5128
	cmp r1, #0
	beq .L080A511A
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080A511A:
	mov r7, sl
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A51FA
	.align 2, 0
.L080A5124: .4byte 0x05000020
.L080A5128:
	str r1, [sp, #0x54]
	movs r0, #1
	str r0, [sp, #0x18]
	mov r0, sl
	ldr r1, [r0]
	ldr r2, [sp, #0x54]
	subs r0, r2, r1
	asrs r4, r0, #4
	str r4, [sp, #0x14]
	add r2, sp, #0x18
	add r0, sp, #0x14
	cmp r4, #1
	bhs .L080A5144
	adds r0, r2, #0
.L080A5144:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A5166
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080A5160
	mov r0, sb
	bl func_080D3BC0
.L080A5160:
	mov r3, sl
	ldr r1, [r3]
	b .L080A516A
.L080A5166:
	movs r0, #0
	mov sb, r0
.L080A516A:
	adds r4, r0, #0
	str r4, [sp, #0x58]
	adds r2, r1, #0
	adds r3, r4, #0
	ldr r4, [sp, #0x54]
	cmp r2, r4
	beq .L080A5192
.L080A5178:
	cmp r3, #0
	beq .L080A5188
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A5188:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x54]
	cmp r2, r5
	bne .L080A5178
.L080A5192:
	adds r4, r3, #0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne .L080A51AE
	cmp r4, #0
	beq .L080A51AA
	adds r0, r4, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A51AA:
	adds r4, #0x10
	b .L080A51D0
.L080A51AE:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080A51CE
.L080A51B6:
	cmp r2, #0
	beq .L080A51C6
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A51C6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A51B6
.L080A51CE:
	adds r4, r2, #0
.L080A51D0:
	mov r0, sl
	ldr r2, [r0, #4]
	ldr r1, [r0]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080A51E2
.L080A51DC:
	adds r0, #0x10
	cmp r0, r2
	bne .L080A51DC
.L080A51E2:
	cmp r1, #0
	beq .L080A51EC
	adds r0, r1, #0
	bl free
.L080A51EC:
	ldr r0, [sp, #0x58]
	add r0, sb
	ldr r1, [sp, #0x58]
	mov r2, sl
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080A51FA:
	movs r0, #0
	ldr r3, [sp, #0x3c]
	strb r0, [r3]
.L080A5200:
	ldr r0, [r6, #4]
	cmp r0, #0x41
	bls .L080A5208
	b .L080A565C
.L080A5208:
	lsls r0, r0, #2
	ldr r1, .L080A5214 @ =.L080A5218
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A5214: .4byte .L080A5218
.L080A5218: @ jump table
	.4byte .L080A54E8 @ case 0
	.4byte .L080A556C @ case 1
	.4byte .L080A565C @ case 2
	.4byte .L080A565C @ case 3
	.4byte .L080A565C @ case 4
	.4byte .L080A565C @ case 5
	.4byte .L080A5458 @ case 6
	.4byte .L080A54A0 @ case 7
	.4byte .L080A5440 @ case 8
	.4byte .L080A544C @ case 9
	.4byte .L080A565C @ case 10
	.4byte .L080A565C @ case 11
	.4byte .L080A565C @ case 12
	.4byte .L080A565C @ case 13
	.4byte .L080A5320 @ case 14
	.4byte .L080A53A4 @ case 15
	.4byte .L080A565C @ case 16
	.4byte .L080A565C @ case 17
	.4byte .L080A565C @ case 18
	.4byte .L080A565C @ case 19
	.4byte .L080A565C @ case 20
	.4byte .L080A565C @ case 21
	.4byte .L080A565C @ case 22
	.4byte .L080A565C @ case 23
	.4byte .L080A565C @ case 24
	.4byte .L080A565C @ case 25
	.4byte .L080A565C @ case 26
	.4byte .L080A565C @ case 27
	.4byte .L080A565C @ case 28
	.4byte .L080A565C @ case 29
	.4byte .L080A565C @ case 30
	.4byte .L080A5434 @ case 31
	.4byte .L080A565C @ case 32
	.4byte .L080A565C @ case 33
	.4byte .L080A565C @ case 34
	.4byte .L080A565C @ case 35
	.4byte .L080A5624 @ case 36
	.4byte .L080A5624 @ case 37
	.4byte .L080A5624 @ case 38
	.4byte .L080A5624 @ case 39
	.4byte .L080A565C @ case 40
	.4byte .L080A565C @ case 41
	.4byte .L080A565C @ case 42
	.4byte .L080A565C @ case 43
	.4byte .L080A565C @ case 44
	.4byte .L080A565C @ case 45
	.4byte .L080A565C @ case 46
	.4byte .L080A565C @ case 47
	.4byte .L080A565C @ case 48
	.4byte .L080A565C @ case 49
	.4byte .L080A565C @ case 50
	.4byte .L080A565C @ case 51
	.4byte .L080A565C @ case 52
	.4byte .L080A565C @ case 53
	.4byte .L080A565C @ case 54
	.4byte .L080A565C @ case 55
	.4byte .L080A565C @ case 56
	.4byte .L080A565C @ case 57
	.4byte .L080A565C @ case 58
	.4byte .L080A565C @ case 59
	.4byte .L080A5428 @ case 60
	.4byte .L080A565C @ case 61
	.4byte .L080A54E8 @ case 62
	.4byte .L080A54E8 @ case 63
	.4byte .L080A5624 @ case 64
	.4byte .L080A5624 @ case 65
.L080A5320:
	adds r4, r6, #0
	adds r4, #0x40
	ldr r5, .L080A5398 @ =gUnk_0810718C
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A5358
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A5352
	movs r2, #1
.L080A5352:
	cmp r2, #0
	beq .L080A5358
	strb r7, [r4]
.L080A5358:
	adds r4, r6, #0
	adds r4, #0x44
	ldr r5, .L080A539C @ =gUnk_08107198
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A5390
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A538A
	movs r2, #1
.L080A538A:
	cmp r2, #0
	beq .L080A5390
	strb r7, [r4]
.L080A5390:
	adds r4, r6, #0
	adds r4, #0x48
	ldr r5, .L080A53A0 @ =gUnk_081071A4
	b .L080A55E2
	.align 2, 0
.L080A5398: .4byte gUnk_0810718C
.L080A539C: .4byte gUnk_08107198
.L080A53A0: .4byte gUnk_081071A4
.L080A53A4:
	adds r4, r6, #0
	adds r4, #0x40
	ldr r5, .L080A541C @ =gUnk_081071B0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A53DC
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A53D6
	movs r2, #1
.L080A53D6:
	cmp r2, #0
	beq .L080A53DC
	strb r7, [r4]
.L080A53DC:
	adds r4, r6, #0
	adds r4, #0x44
	ldr r5, .L080A5420 @ =gUnk_081071BC
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A5414
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A540E
	movs r2, #1
.L080A540E:
	cmp r2, #0
	beq .L080A5414
	strb r7, [r4]
.L080A5414:
	adds r4, r6, #0
	adds r4, #0x48
	ldr r5, .L080A5424 @ =gUnk_081071C8
	b .L080A55E2
	.align 2, 0
.L080A541C: .4byte gUnk_081071B0
.L080A5420: .4byte gUnk_081071BC
.L080A5424: .4byte gUnk_081071C8
.L080A5428:
	adds r4, r6, #0
	adds r4, #0x50
	ldr r5, .L080A5430 @ =gUnk_081071F8
	b .L080A55E2
	.align 2, 0
.L080A5430: .4byte gUnk_081071F8
.L080A5434:
	adds r4, r6, #0
	adds r4, #0x54
	ldr r5, .L080A543C @ =gUnk_081071E0
	b .L080A55E2
	.align 2, 0
.L080A543C: .4byte gUnk_081071E0
.L080A5440:
	adds r4, r6, #0
	adds r4, #0x4c
	ldr r5, .L080A5448 @ =gUnk_081071D4
	b .L080A55E2
	.align 2, 0
.L080A5448: .4byte gUnk_081071D4
.L080A544C:
	adds r4, r6, #0
	adds r4, #0x4c
	ldr r5, .L080A5454 @ =gUnk_081071EC
	b .L080A55E2
	.align 2, 0
.L080A5454: .4byte gUnk_081071EC
.L080A5458:
	adds r4, r6, #0
	adds r4, #0x38
	ldr r5, .L080A5498 @ =gUnk_0810715C
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A5490
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A548A
	movs r2, #1
.L080A548A:
	cmp r2, #0
	beq .L080A5490
	strb r7, [r4]
.L080A5490:
	adds r4, r6, #0
	adds r4, #0x3c
	ldr r5, .L080A549C @ =gUnk_08107168
	b .L080A55E2
	.align 2, 0
.L080A5498: .4byte gUnk_0810715C
.L080A549C: .4byte gUnk_08107168
.L080A54A0:
	adds r4, r6, #0
	adds r4, #0x38
	ldr r5, .L080A54E0 @ =gUnk_08107174
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A54D8
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A54D2
	movs r2, #1
.L080A54D2:
	cmp r2, #0
	beq .L080A54D8
	strb r7, [r4]
.L080A54D8:
	adds r4, r6, #0
	adds r4, #0x3c
	ldr r5, .L080A54E4 @ =gUnk_08107180
	b .L080A55E2
	.align 2, 0
.L080A54E0: .4byte gUnk_08107174
.L080A54E4: .4byte gUnk_08107180
.L080A54E8:
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080A5520
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne .L080A5510
	ldr r1, .L080A550C @ =gUnk_08107144
	adds r0, r6, #0
	movs r2, #0
	mov r3, sl
	bl func_080A5AB0
	b .L080A5520
	.align 2, 0
.L080A550C: .4byte gUnk_08107144
.L080A5510:
	cmp r0, #0xa
	bne .L080A5520
	ldr r1, .L080A5560 @ =gUnk_08107144
	adds r0, r6, #0
	movs r2, #1
	mov r3, sl
	bl func_080A5AB0
.L080A5520:
	adds r4, r6, #0
	adds r4, #0x30
	ldr r5, .L080A5564 @ =gUnk_08107114
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A5558
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A5552
	movs r2, #1
.L080A5552:
	cmp r2, #0
	beq .L080A5558
	strb r7, [r4]
.L080A5558:
	adds r4, r6, #0
	adds r4, #0x34
	ldr r5, .L080A5568 @ =gUnk_0810712C
	b .L080A55E2
	.align 2, 0
.L080A5560: .4byte gUnk_08107144
.L080A5564: .4byte gUnk_08107114
.L080A5568: .4byte gUnk_0810712C
.L080A556C:
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080A55A4
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne .L080A5594
	ldr r1, .L080A5590 @ =gUnk_0810714C
	adds r0, r6, #0
	movs r2, #0
	mov r3, sl
	bl func_080A5AB0
	b .L080A55A4
	.align 2, 0
.L080A5590: .4byte gUnk_0810714C
.L080A5594:
	cmp r0, #0xa
	bne .L080A55A4
	ldr r1, .L080A5618 @ =gUnk_0810714C
	adds r0, r6, #0
	movs r2, #1
	mov r3, sl
	bl func_080A5AB0
.L080A55A4:
	adds r4, r6, #0
	adds r4, #0x30
	ldr r5, .L080A561C @ =gUnk_08107120
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A55DC
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A55D6
	movs r2, #1
.L080A55D6:
	cmp r2, #0
	beq .L080A55DC
	strb r7, [r4]
.L080A55DC:
	adds r4, r6, #0
	adds r4, #0x34
	ldr r5, .L080A5620 @ =gUnk_08107138
.L080A55E2:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A565C
	movs r7, #0
	strb r7, [r4, #1]
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	mov r3, sl
	bl func_080A5AB0
	ldr r0, [r5, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A560E
	movs r2, #1
.L080A560E:
	cmp r2, #0
	beq .L080A565C
	strb r7, [r4]
	b .L080A565C
	.align 2, 0
.L080A5618: .4byte gUnk_0810714C
.L080A561C: .4byte gUnk_08107120
.L080A5620: .4byte gUnk_08107138
.L080A5624:
	adds r1, r6, #0
	adds r1, #0x58
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080A565C
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne .L080A564C
	ldr r1, .L080A5648 @ =gUnk_08107154
	adds r0, r6, #0
	movs r2, #0
	mov r3, sl
	bl func_080A5AB0
	b .L080A565C
	.align 2, 0
.L080A5648: .4byte gUnk_08107154
.L080A564C:
	cmp r0, #0xa
	bne .L080A565C
	ldr r1, .L080A566C @ =gUnk_08107154
	adds r0, r6, #0
	movs r2, #1
	mov r3, sl
	bl func_080A5AB0
.L080A565C:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A566C: .4byte gUnk_08107154

	thumb_func_start func_080A5670
func_080A5670: @ 0x080A5670
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	ldrh r0, [r0, #0x24]
	lsls r0, r0, #1
	mov sb, r0
	ldr r0, .L080A56D4 @ =0x040000D4
	mov sl, r0
	movs r1, #0
.L080A5688:
	lsls r2, r1, #3
	mov r0, r8
	adds r0, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	adds r7, r1, #1
	cmp r0, #0
	beq .L080A56BC
	adds r5, r0, #0
	mov r0, r8
	adds r0, #0x10
	adds r0, r0, r2
	ldr r4, [r0]
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r6, r4, r1
.L080A56A8:
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, .L080A56D8 @ =0x8000001F
	mov r3, sl
	bl func_080D0EBC
	add r5, sb
	adds r4, #0x40
	cmp r4, r6
	bne .L080A56A8
.L080A56BC:
	adds r1, r7, #0
	cmp r1, #2
	bls .L080A5688
	movs r0, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080A56D4: .4byte 0x040000D4
.L080A56D8: .4byte 0x8000001F

	thumb_func_start func_080A56DC
func_080A56DC: @ 0x080A56DC
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	mov r8, r0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, [sp, #0x14]
	ldrh r0, [r5]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	mov r4, r8
	str r0, [r4]
	ldrb r4, [r5, #1]
	lsrs r4, r4, #2
	ldrh r0, [r5, #2]
	ldr r6, .L080A575C @ =0x000003FF
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r4
	lsls r0, r0, #0x10
	mov r4, r8
	str r0, [r4, #8]
	ldrb r4, [r5, #3]
	lsrs r4, r4, #2
	ldrh r0, [r5, #4]
	ands r0, r6
	lsls r0, r0, #6
	orrs r0, r4
	lsls r0, r0, #0x10
	mov r4, r8
	str r0, [r4, #0xc]
	mov r0, r8
	adds r0, #0x90
	ldr r0, [r0]
	ldr r4, [r0, #0x14]
	mov r0, r8
	bl _call_via_r4
	ldrb r0, [r5, #1]
	lsrs r0, r0, #2
	ldrh r1, [r5, #2]
	ands r1, r6
	lsls r1, r1, #6
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r0, [r5, #3]
	lsrs r0, r0, #2
	ldrh r2, [r5, #4]
	ands r2, r6
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	mov r0, r8
	bl func_080A5960
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080A575C: .4byte 0x000003FF

	thumb_func_start func_080A5760
func_080A5760: @ 0x080A5760
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r4, r0, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	adds r7, r4, #0
	adds r7, #0x90
	ldr r0, [r7]
	ldr r1, [r0, #0x18]
	adds r0, r4, #0
	bl _call_via_r1
	str r0, [r4, #4]
	bl GetMapData
	adds r5, r0, #0
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq .L080A581A
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq .L080A581A
	movs r6, #0
	mov ip, r7
	adds r0, r4, #0
	adds r0, #0x28
	str r0, [sp, #0x24]
	adds r1, r4, #0
	adds r1, #0x30
	str r1, [sp, #0x28]
	adds r2, r4, #0
	adds r2, #0x34
	str r2, [sp, #0x2c]
	adds r0, #0x10
	str r0, [sp, #0x30]
	movs r1, #0x3c
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	movs r0, #0x44
	adds r0, r0, r4
	mov sl, r0
	adds r1, r4, #0
	adds r1, #0x48
	str r1, [sp, #0x10]
	adds r2, r4, #0
	adds r2, #0x4c
	str r2, [sp, #0x14]
	adds r0, r4, #0
	adds r0, #0x50
	str r0, [sp, #0x18]
	adds r1, #0xc
	str r1, [sp, #0x1c]
	adds r2, #0xc
	str r2, [sp, #0x20]
	ldrh r0, [r5, #0x22]
	cmp r6, r0
	bhs .L080A5874
.L080A57E2:
	movs r3, #0
	ldrh r0, [r5, #0x20]
	adds r7, r6, #1
	cmp r3, r0
	bhs .L080A5810
.L080A57EC:
	adds r1, r6, #0
	muls r1, r0, r1
	adds r1, r3, r1
	ldr r0, [r5, #0x1c]
	adds r0, r0, r1
	ldrb r0, [r0]
	ldr r2, [r4, #0x2c]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r5, #0x18]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r3, #1
	ldrh r0, [r5, #0x20]
	cmp r3, r0
	blo .L080A57EC
.L080A5810:
	adds r6, r7, #0
	ldrh r1, [r5, #0x22]
	cmp r6, r1
	blo .L080A57E2
	b .L080A5874
.L080A581A:
	movs r0, #0
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	movs r0, #0xf2
	lsls r0, r0, #8
	adds r2, r1, r0
	mov r3, sp
	movs r0, #0x90
	adds r0, r0, r4
	mov ip, r0
	adds r0, r4, #0
	adds r0, #0x28
	str r0, [sp, #0x24]
	adds r0, #8
	str r0, [sp, #0x28]
	adds r0, #4
	str r0, [sp, #0x2c]
	adds r0, #4
	str r0, [sp, #0x30]
	movs r0, #0x3c
	adds r0, r0, r4
	mov r8, r0
	movs r0, #0x40
	adds r0, r0, r4
	mov sb, r0
	movs r0, #0x44
	adds r0, r0, r4
	mov sl, r0
	adds r0, r4, #0
	adds r0, #0x48
	str r0, [sp, #0x10]
	adds r0, #4
	str r0, [sp, #0x14]
	adds r0, #4
	str r0, [sp, #0x18]
	adds r0, #4
	str r0, [sp, #0x1c]
	adds r0, #4
	str r0, [sp, #0x20]
	cmp r1, r2
	beq .L080A5874
.L080A586C:
	ldr r0, [r3]
	stm r1!, {r0}
	cmp r1, r2
	bne .L080A586C
.L080A5874:
	mov r1, ip
	ldr r0, [r1]
	ldr r1, [r0, #0x20]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	ldr r1, [sp, #4]
	bl func_080A5D14
	adds r0, r4, #0
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	bl func_080A5DFC
	movs r0, #0
	movs r1, #1
	ldr r2, [sp, #0x24]
	strb r1, [r2]
	ldr r1, [sp, #0x28]
	strb r0, [r1]
	strb r0, [r1, #1]
	ldr r2, [sp, #0x2c]
	strb r0, [r2]
	strb r0, [r2, #1]
	ldr r1, [sp, #0x30]
	strb r0, [r1]
	strb r0, [r1, #1]
	mov r2, r8
	strb r0, [r2]
	strb r0, [r2, #1]
	mov r1, sb
	strb r0, [r1]
	strb r0, [r1, #1]
	mov r2, sl
	strb r0, [r2]
	strb r0, [r2, #1]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	strb r0, [r1, #1]
	ldr r2, [sp, #0x14]
	strb r0, [r2]
	strb r0, [r2, #1]
	ldr r1, [sp, #0x18]
	strb r0, [r1]
	strb r0, [r1, #1]
	ldr r2, [sp, #0x1c]
	strb r0, [r2]
	strb r0, [r2, #1]
	ldr r1, [sp, #0x20]
	strb r0, [r1]
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A58EC
func_080A58EC: @ 0x080A58EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	adds r4, r2, #0
	mov sb, r3
	movs r0, #0xa
	ldrsh r5, [r1, r0]
	movs r3, #0xe
	ldrsh r2, [r1, r3]
	mov sl, r2
	adds r6, r5, #0
	adds r6, #0x78
	movs r0, #0x50
	add r0, sl
	mov r8, r0
	ldr r0, [r1, #4]
	bl GetMapData
	ldrh r1, [r0, #0x20]
	lsls r1, r1, #3
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #3
	subs r4, r4, r6
	mov r3, sb
	mov r6, r8
	subs r2, r3, r6
	adds r5, r5, r4
	cmp r5, #0
	bge .L080A5930
	movs r5, #0
	b .L080A5938
.L080A5930:
	subs r1, #0xf0
	cmp r5, r1
	ble .L080A5938
	adds r5, r1, #0
.L080A5938:
	mov r3, sl
	adds r1, r3, r2
	cmp r1, #0
	bge .L080A5944
	movs r1, #0
	b .L080A594C
.L080A5944:
	subs r0, #0xa0
	cmp r1, r0
	ble .L080A594C
	adds r1, r0, #0
.L080A594C:
	strh r5, [r7]
	strh r1, [r7, #2]
	adds r0, r7, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080A5960
func_080A5960: @ 0x080A5960
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	mov r0, sp
	adds r1, r5, #0
	adds r2, r4, #0
	bl func_080A58EC
	ldr r0, [sp]
	str r0, [sp, #4]
	add r2, sp, #4
	adds r3, r2, #0
	movs r0, #0xa
	ldrsh r1, [r5, r0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	cmp r1, r0
	beq .L080A5998
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	movs r1, #0
	ldrsh r0, [r2, r1]
	lsls r0, r0, #0x10
	str r0, [r5, #8]
.L080A5998:
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r1, r0
	beq .L080A59B4
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	movs r1, #2
	ldrsh r0, [r3, r1]
	lsls r0, r0, #0x10
	str r0, [r5, #0xc]
.L080A59B4:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080A59BC
func_080A59BC: @ 0x080A59BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r7, r3, #0
	mov r0, sp
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl func_080A58EC
	ldr r0, [sp]
	str r0, [sp, #4]
	add r5, sp, #4
	cmp r7, #0
	bne .L080A59E8
	movs r7, #1
.L080A59E8:
	movs r0, #0xa
	ldrsh r1, [r6, r0]
	movs r2, #0
	ldrsh r0, [r5, r2]
	subs r3, r0, r1
	movs r0, #0xe
	ldrsh r1, [r6, r0]
	movs r2, #2
	ldrsh r0, [r5, r2]
	subs r2, r0, r1
	cmp r3, #0
	bne .L080A5A04
	cmp r2, #0
	beq .L080A5A84
.L080A5A04:
	adds r1, r3, #0
	muls r1, r3, r1
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, r0
	movs r4, #0
	ldr r3, .L080A5A80 @ =0x3FFFFFFF
	movs r0, #0x84
	adds r0, r0, r6
	mov r8, r0
	movs r1, #0x88
	adds r1, r1, r6
	mov sb, r1
	movs r0, #0x8c
	adds r0, r0, r6
	mov sl, r0
	cmp r2, r3
	bhi .L080A5A34
.L080A5A28:
	adds r4, #1
	lsls r1, r4, #1
	adds r0, r2, #0
	lsls r0, r1
	cmp r0, r3
	bls .L080A5A28
.L080A5A34:
	lsls r0, r4, #1
	lsls r2, r0
	adds r0, r2, #0
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r4
	adds r1, r7, #0
	bl __udivsi3
	adds r4, r0, #0
	cmp r4, #0
	bne .L080A5A52
	movs r4, #1
.L080A5A52:
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	ldr r1, [r6, #8]
	subs r0, r0, r1
	adds r1, r4, #0
	bl __divsi3
	mov r2, r8
	str r0, [r2]
	movs r1, #2
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0x10
	ldr r1, [r6, #0xc]
	subs r0, r0, r1
	adds r1, r4, #0
	bl __divsi3
	mov r2, sb
	str r0, [r2]
	mov r0, sl
	str r4, [r0]
	b .L080A5A8A
	.align 2, 0
.L080A5A80: .4byte 0x3FFFFFFF
.L080A5A84:
	adds r0, r6, #0
	adds r0, #0x8c
	str r2, [r0]
.L080A5A8A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A5A9C
func_080A5A9C: @ 0x080A5A9C
	push {lr}
	movs r1, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne .L080A5AAA
	movs r1, #1
.L080A5AAA:
	adds r0, r1, #0
	pop {r1}
	bx r1

	thumb_func_start func_080A5AB0
func_080A5AB0: @ 0x080A5AB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r1, #0
	adds r5, r3, #0
	ldr r1, [r4, #4]
	ldrh r3, [r1]
	adds r1, #4
	adds r0, r3, #0
	muls r0, r2, r0
	lsls r0, r0, #5
	adds r1, r1, r0
	ldrh r2, [r4]
	lsls r3, r3, #5
	lsls r2, r2, #5
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r2, r2, r0
	mov r0, sp
	bl func_08008F0C
	mov sb, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080A5B02
	cmp r1, #0
	beq .L080A5AFA
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A5AFA:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080A5BC8
.L080A5B02:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r1, [r5]
	mov r6, sl
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x10]
	add r2, sp, #0x14
	add r0, sp, #0x10
	cmp r4, #1
	bhs .L080A5B1C
	adds r0, r2, #0
.L080A5B1C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A5B3C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A5B38
	mov r0, r8
	bl func_080D3BC0
.L080A5B38:
	ldr r1, [r5]
	b .L080A5B40
.L080A5B3C:
	movs r0, #0
	mov r8, r0
.L080A5B40:
	adds r4, r0, #0
	str r4, [sp, #0x18]
	adds r2, r1, #0
	adds r3, r4, #0
	cmp r2, sl
	beq .L080A5B64
.L080A5B4C:
	cmp r3, #0
	beq .L080A5B5C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A5B5C:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A5B4C
.L080A5B64:
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne .L080A5B80
	cmp r4, #0
	beq .L080A5B7C
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A5B7C:
	adds r4, #0x10
	b .L080A5BA2
.L080A5B80:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080A5BA0
.L080A5B88:
	cmp r2, #0
	beq .L080A5B98
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080A5B98:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A5B88
.L080A5BA0:
	adds r4, r2, #0
.L080A5BA2:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080A5BB2
.L080A5BAC:
	adds r0, #0x10
	cmp r0, r2
	bne .L080A5BAC
.L080A5BB2:
	cmp r1, #0
	beq .L080A5BBC
	adds r0, r1, #0
	bl free
.L080A5BBC:
	ldr r0, [sp, #0x18]
	add r0, r8
	ldr r1, [sp, #0x18]
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080A5BC8:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080A5BD8
func_080A5BD8: @ 0x080A5BD8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp]
	mov r8, r1
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r0, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	str r0, [sp, #0xc]
	mov r0, r8
	ldrb r6, [r0]
	ldrb r1, [r0, #1]
	mov sb, r1
	adds r0, #4
	str r0, [sp, #0x10]
	movs r3, #0
.L080A5C04:
	lsls r2, r3, #2
	ldr r4, [sp, #0x10]
	adds r1, r2, r4
	ldr r0, [r1]
	adds r3, #1
	mov sl, r3
	cmp r0, #0
	beq .L080A5C52
	movs r4, #0
	cmp r4, sb
	bhs .L080A5C52
	ldr r0, [sp]
	adds r0, #0x10
	adds r3, r0, r2
	str r1, [sp, #0x18]
	movs r5, #0
.L080A5C24:
	ldr r7, [sp, #8]
	adds r0, r7, r4
	ldr r1, [sp, #0xc]
	muls r0, r1, r0
	ldr r2, [r3]
	lsls r0, r0, #1
	ldr r7, [sp, #4]
	lsls r1, r7, #1
	adds r1, r1, r2
	adds r0, r0, r1
	ldr r2, [sp, #0x18]
	ldr r1, [r2]
	adds r1, r5, r1
	lsls r2, r6, #1
	str r3, [sp, #0x14]
	bl memcpy
	lsls r0, r6, #1
	adds r5, r5, r0
	adds r4, #1
	ldr r3, [sp, #0x14]
	cmp r4, sb
	blo .L080A5C24
.L080A5C52:
	mov r3, sl
	cmp r3, #2
	bls .L080A5C04
	mov r3, r8
	ldr r0, [r3, #0x14]
	cmp r0, #0
	beq .L080A5CB0
	ldr r0, [r3, #0x10]
	cmp r0, #0
	beq .L080A5CB0
	movs r2, #0
	cmp r2, sb
	bhs .L080A5CB0
	ldr r4, [sp, #4]
	lsls r4, r4, #2
	mov sl, r4
.L080A5C72:
	adds r1, r2, #0
	muls r1, r6, r1
	mov r7, r8
	ldr r0, [r7, #0x14]
	adds r3, r0, r1
	ldr r0, [sp]
	ldr r1, [r0, #0x2c]
	add r1, sl
	ldr r4, [sp, #8]
	adds r0, r4, r2
	ldr r7, [sp, #0xc]
	muls r0, r7, r0
	lsls r0, r0, #2
	adds r5, r1, r0
	movs r4, #0
	adds r2, #1
	cmp r4, r6
	bhs .L080A5CAC
.L080A5C96:
	ldrb r0, [r3]
	mov r7, r8
	ldr r1, [r7, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	stm r5!, {r0}
	adds r3, #1
	adds r4, #1
	cmp r4, r6
	blo .L080A5C96
.L080A5CAC:
	cmp r2, sb
	blo .L080A5C72
.L080A5CB0:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080A5CC0
func_080A5CC0: @ 0x080A5CC0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r7, #4]
	bl GetMapData
	adds r5, r0, #0
	movs r6, #0
	adds r4, r7, #0
	adds r4, #0x10
.L080A5CD2:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080A5CE8
	ldr r1, [r4]
	bl Unpack
	b .L080A5CF8
.L080A5CE8:
	ldr r1, [r4]
	ldrh r2, [r5, #0x20]
	ldrh r0, [r5, #0x22]
	lsls r0, r0, #1
	muls r2, r0, r2
	ldr r0, .L080A5D10 @ =0x03FF03FF
	bl func_08008EB8
.L080A5CF8:
	adds r4, #4
	adds r6, #1
	cmp r6, #2
	bls .L080A5CD2
	adds r1, r7, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A5D10: .4byte 0x03FF03FF

	thumb_func_start func_080A5D14
func_080A5D14: @ 0x080A5D14
	push {r4, r5, lr}
	adds r5, r0, #0
	cmp r1, #1
	beq .L080A5D66
	cmp r1, #1
	bgt .L080A5D26
	cmp r1, #0
	beq .L080A5D4A
	b .L080A5DA8
.L080A5D26:
	cmp r1, #2
	beq .L080A5D88
	cmp r1, #3
	bne .L080A5DA8
	adds r4, r5, #0
	adds r4, #0x90
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #0
	b .L080A5D80
.L080A5D4A:
	adds r4, r5, #0
	adds r4, #0x90
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #1
	b .L080A5D80
.L080A5D66:
	adds r4, r5, #0
	adds r4, #0x90
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #2
.L080A5D80:
	movs r2, #1
	bl _call_via_r3
	b .L080A5DA8
.L080A5D88:
	adds r4, r5, #0
	adds r4, #0x90
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl _call_via_r3
	ldr r0, [r4]
	ldr r3, [r0, #0x24]
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	bl _call_via_r3
.L080A5DA8:
	adds r1, r5, #0
	adds r1, #0x2a
	movs r0, #1
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A5DB8
func_080A5DB8: @ 0x080A5DB8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	ldr r0, [r4, #4]
	bl GetMapData
	adds r6, r0, #0
	ldr r0, [r6, #4]
	lsls r5, r5, #2
	adds r4, #0x1c
	adds r4, r4, r5
	ldr r1, [r4]
	bl Unpack
	cmp r7, #0
	blt .L080A5DF6
	cmp r7, #2
	ble .L080A5DE4
	cmp r7, #3
	beq .L080A5DEE
	b .L080A5DF6
.L080A5DE4:
	ldr r0, [r6, #4]
	ldr r1, [r4]
	bl Unpack
	b .L080A5DF6
.L080A5DEE:
	ldr r0, [r6, #8]
	ldr r1, [r4]
	bl Unpack
.L080A5DF6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080A5DFC
func_080A5DFC: @ 0x080A5DFC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	mov sb, r1
	movs r0, #0
	str r0, [sp]
	movs r0, #0x1f
	ands r1, r0
	mov sb, r1
	mov r0, sl
	ldr r0, [r0, #0x20]
	mov r8, r0
	mov r1, sl
	ldr r7, [r1, #0x1c]
	ldr r6, [r1, #0x24]
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #5
	str r2, [sp, #4]
.L080A5E2A:
	movs r0, #0x20
	rsbs r0, r0, #0
	adds r1, r0, #0
	adds r0, r5, #0
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, .L080A5E90 @ =0xFFFFFF00
	ands r5, r1
	orrs r5, r0
	ldr r0, .L080A5E94 @ =0xFFFFFC1F
	adds r1, r0, #0
	adds r0, r5, #0
	ands r0, r1
	ldr r1, [sp, #4]
	orrs r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r1, .L080A5E98 @ =0xFFFF0000
	ands r5, r1
	orrs r5, r0
	adds r0, r6, #0
	adds r1, r7, #0
	mov r2, r8
	adds r3, r5, #0
	ldr r4, .L080A5E9C @ =func_03000C2C
	bl _call_via_r4
	movs r0, #0x20
	add r8, r0
	adds r7, #0x20
	adds r6, #0x20
	ldr r1, [sp]
	adds r1, #1
	str r1, [sp]
	cmp r1, #0xe
	bls .L080A5E2A
	mov r1, sl
	adds r1, #0x2a
	movs r0, #1
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A5E90: .4byte 0xFFFFFF00
.L080A5E94: .4byte 0xFFFFFC1F
.L080A5E98: .4byte 0xFFFF0000
.L080A5E9C: .4byte func_03000C2C

	thumb_func_start func_080A5EA0
func_080A5EA0: @ 0x080A5EA0
	push {lr}
	ldr r0, [r0, #4]
	bl GetMapData
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A5EB8
func_080A5EB8: @ 0x080A5EB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	adds r2, r1, #0
	ldrh r0, [r2]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	cmp r0, #1
	bne .L080A5F68
	ldr r0, [r5]
	cmp r0, #1
	bne .L080A5F68
	ldr r0, [r5, #4]
	cmp r0, #8
	bne .L080A5F68
	ldrb r1, [r2, #1]
	lsrs r1, r1, #2
	ldrh r0, [r2, #2]
	ldr r3, .L080A5F5C @ =0x000003FF
	mov r8, r3
	ands r0, r3
	lsls r0, r0, #6
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge .L080A5EF4
	adds r0, #7
.L080A5EF4:
	asrs r3, r0, #3
	ldrb r1, [r2, #3]
	lsrs r1, r1, #2
	ldrh r0, [r2, #4]
	mov r2, r8
	ands r0, r2
	lsls r0, r0, #6
	orrs r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge .L080A5F0E
	adds r0, #7
.L080A5F0E:
	asrs r2, r0, #3
	mov r1, sp
	mov r0, sp
	strh r3, [r0]
	strh r2, [r1, #2]
	movs r0, #8
	bl GetMapData
	ldrh r2, [r0, #0x20]
	movs r4, #0
	adds r7, r5, #0
	adds r7, #0x10
	mov r1, sp
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r6, r0, #1
	movs r3, #2
	ldrsh r0, [r1, r3]
	muls r0, r2, r0
	lsls r5, r0, #1
	mov r3, r8
	movs r2, #8
.L080A5F3A:
	adds r0, r7, r2
	ldr r0, [r0]
	adds r0, r0, r6
	adds r0, r0, r5
	ldrh r0, [r0]
	adds r1, r3, #0
	ands r1, r0
	cmp r1, r3
	beq .L080A5F60
	adds r0, r1, #0
	subs r0, #0x58
	cmp r0, #0x3c
	bls .L080A5F58
	cmp r1, #0x33
	bhi .L080A5F68
.L080A5F58:
	movs r0, #1
	b .L080A5F6A
	.align 2, 0
.L080A5F5C: .4byte 0x000003FF
.L080A5F60:
	subs r2, #4
	adds r4, #1
	cmp r4, #2
	bls .L080A5F3A
.L080A5F68:
	movs r0, #0
.L080A5F6A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080A5F78
func_080A5F78: @ 0x080A5F78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	mov r8, r2
	mov sb, r3
	ldr r0, [r5, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov sl, r0
	movs r6, #0
	ldr r0, [sp, #0x24]
	cmp r6, r0
	bhs .L080A5FFE
	lsls r4, r4, #2
	str r4, [sp]
.L080A5FA2:
	movs r4, #0
	adds r1, r6, #1
	mov ip, r1
	cmp r4, sb
	bhs .L080A5FF6
	adds r0, r5, #0
	adds r0, #0x10
	ldr r2, [sp]
	adds r7, r0, r2
.L080A5FB4:
	mov r3, r8
	movs r0, #0
	ldrsh r1, [r3, r0]
	adds r1, r1, r4
	movs r2, #2
	ldrsh r0, [r3, r2]
	adds r0, r0, r6
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	lsls r2, r1, #1
	ldr r0, [r7]
	adds r0, r0, r2
	ldr r2, .L080A6018 @ =0x000003FF
	strh r2, [r0]
	ldr r2, [r5, #0x2c]
	lsls r1, r1, #2
	adds r2, r1, r2
	ldrb r3, [r2]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r3
	strb r0, [r2]
	ldr r0, [r5, #0x2c]
	adds r1, r1, r0
	ldrh r2, [r1, #2]
	movs r0, #1
	ands r0, r2
	strh r0, [r1, #2]
	adds r4, #1
	cmp r4, sb
	blo .L080A5FB4
.L080A5FF6:
	mov r6, ip
	ldr r3, [sp, #0x24]
	cmp r6, r3
	blo .L080A5FA2
.L080A5FFE:
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6018: .4byte 0x000003FF

	thumb_func_start func_080A601C
func_080A601C: @ 0x080A601C
	adds r0, #0x58
	movs r1, #0x14
	strb r1, [r0]
	bx lr

	thumb_func_start func_080A6024
func_080A6024: @ 0x080A6024
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0x24
	blt .L080A6064
	cmp r0, #0x25
	ble .L080A603A
	cmp r0, #0x40
	beq .L080A6054
	b .L080A6064
.L080A603A:
	ldr r1, .L080A604C @ =gUnk_08106C8C
	ldr r0, .L080A6050 @ =gUnk_081073C4
	adds r0, r2, r0
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r3, #8
	bl func_080A5BD8
	b .L080A6064
	.align 2, 0
.L080A604C: .4byte gUnk_08106C8C
.L080A6050: .4byte gUnk_081073C4
.L080A6054:
	ldr r1, .L080A6074 @ =gUnk_08106C8C
	ldr r0, .L080A6078 @ =gUnk_081073CC
	adds r0, r2, r0
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r3, #4
	bl func_080A5BD8
.L080A6064:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6074: .4byte gUnk_08106C8C
.L080A6078: .4byte gUnk_081073CC

	thumb_func_start func_080A607C
func_080A607C: @ 0x080A607C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0x27
	beq .L080A60CC
	cmp r0, #0x27
	bgt .L080A6092
	cmp r0, #0x26
	beq .L080A6098
	b .L080A6120
.L080A6092:
	cmp r0, #0x41
	beq .L080A6110
	b .L080A6120
.L080A6098:
	cmp r2, #0xf
	bls .L080A60BC
	ldr r1, .L080A60B4 @ =gUnk_08106C74
	ldr r3, .L080A60B8 @ =gUnk_081073D0
	adds r0, r2, #0
	subs r0, #0x10
	lsls r0, r0, #1
	adds r2, r0, r3
	ldrb r2, [r2]
	adds r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	b .L080A6100
	.align 2, 0
.L080A60B4: .4byte gUnk_08106C74
.L080A60B8: .4byte gUnk_081073D0
.L080A60BC:
	ldr r1, .L080A60C4 @ =gUnk_08106C74
	ldr r0, .L080A60C8 @ =gUnk_081073F0
	b .L080A60F4
	.align 2, 0
.L080A60C4: .4byte gUnk_08106C74
.L080A60C8: .4byte gUnk_081073F0
.L080A60CC:
	cmp r2, #0xf
	bls .L080A60F0
	ldr r1, .L080A60E8 @ =gUnk_08106C74
	ldr r3, .L080A60EC @ =gUnk_081073D0
	adds r0, r2, #0
	subs r0, #0x10
	lsls r0, r0, #1
	adds r2, r0, r3
	ldrb r2, [r2]
	adds r3, #1
	adds r0, r0, r3
	ldrb r3, [r0]
	b .L080A6100
	.align 2, 0
.L080A60E8: .4byte gUnk_08106C74
.L080A60EC: .4byte gUnk_081073D0
.L080A60F0:
	ldr r1, .L080A6108 @ =gUnk_08106C74
	ldr r0, .L080A610C @ =gUnk_08107400
.L080A60F4:
	lsls r3, r2, #1
	adds r2, r3, r0
	ldrb r2, [r2]
	adds r0, #1
	adds r3, r3, r0
	ldrb r3, [r3]
.L080A6100:
	adds r0, r4, #0
	bl func_080A5BD8
	b .L080A6120
	.align 2, 0
.L080A6108: .4byte gUnk_08106C74
.L080A610C: .4byte gUnk_08107400
.L080A6110:
	ldr r1, .L080A6130 @ =gUnk_08106C74
	ldr r0, .L080A6134 @ =gUnk_08107420
	adds r0, r2, r0
	ldrb r2, [r0]
	adds r0, r4, #0
	movs r3, #5
	bl func_080A5BD8
.L080A6120:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6130: .4byte gUnk_08106C74
.L080A6134: .4byte gUnk_08107420

	thumb_func_start func_080A6138
func_080A6138: @ 0x080A6138
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A6160
	cmp r0, #0x2a
	bgt .L080A614C
	cmp r0, #0x29
	beq .L080A6152
	b .L080A6180
.L080A614C:
	cmp r0, #0x2b
	beq .L080A6174
	b .L080A6180
.L080A6152:
	ldr r1, .L080A615C @ =gUnk_08106A7C
	adds r0, r4, #0
	movs r2, #0x19
	b .L080A6166
	.align 2, 0
.L080A615C: .4byte gUnk_08106A7C
.L080A6160:
	ldr r1, .L080A6170 @ =gUnk_08106A7C
	adds r0, r4, #0
	movs r2, #0x28
.L080A6166:
	movs r3, #0xf
	bl func_080A5BD8
	b .L080A6180
	.align 2, 0
.L080A6170: .4byte gUnk_08106A7C
.L080A6174:
	ldr r1, .L080A6190 @ =gUnk_08106A7C
	adds r0, r4, #0
	movs r2, #0x36
	movs r3, #0xf
	bl func_080A5BD8
.L080A6180:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6190: .4byte gUnk_08106A7C

	thumb_func_start func_080A6194
func_080A6194: @ 0x080A6194
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A61BC
	cmp r0, #0x2a
	bgt .L080A61A8
	cmp r0, #0x29
	beq .L080A61AE
	b .L080A61DC
.L080A61A8:
	cmp r0, #0x2b
	beq .L080A61D0
	b .L080A61DC
.L080A61AE:
	ldr r1, .L080A61B8 @ =gUnk_08106A94
	adds r0, r4, #0
	movs r2, #0x19
	b .L080A61C2
	.align 2, 0
.L080A61B8: .4byte gUnk_08106A94
.L080A61BC:
	ldr r1, .L080A61CC @ =gUnk_08106A94
	adds r0, r4, #0
	movs r2, #0x28
.L080A61C2:
	movs r3, #0xf
	bl func_080A5BD8
	b .L080A61DC
	.align 2, 0
.L080A61CC: .4byte gUnk_08106A94
.L080A61D0:
	ldr r1, .L080A61EC @ =gUnk_08106A94
	adds r0, r4, #0
	movs r2, #0x36
	movs r3, #0xf
	bl func_080A5BD8
.L080A61DC:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A61EC: .4byte gUnk_08106A94

	thumb_func_start func_080A61F0
func_080A61F0: @ 0x080A61F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A6200
	cmp r0, #0x2b
	beq .L080A6214
	b .L080A6220
.L080A6200:
	ldr r1, .L080A6210 @ =gUnk_08106AAC
	adds r0, r4, #0
	movs r2, #0xb
	movs r3, #3
	bl func_080A5BD8
	b .L080A6220
	.align 2, 0
.L080A6210: .4byte gUnk_08106AAC
.L080A6214:
	ldr r1, .L080A6230 @ =gUnk_08106AAC
	adds r0, r4, #0
	movs r2, #0x13
	movs r3, #3
	bl func_080A5BD8
.L080A6220:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6230: .4byte gUnk_08106AAC

	thumb_func_start func_080A6234
func_080A6234: @ 0x080A6234
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A6244
	cmp r0, #0x2b
	beq .L080A6258
	b .L080A6264
.L080A6244:
	ldr r1, .L080A6254 @ =gUnk_08106AC4
	adds r0, r4, #0
	movs r2, #0xb
	movs r3, #3
	bl func_080A5BD8
	b .L080A6264
	.align 2, 0
.L080A6254: .4byte gUnk_08106AC4
.L080A6258:
	ldr r1, .L080A6274 @ =gUnk_08106AC4
	adds r0, r4, #0
	movs r2, #0x13
	movs r3, #3
	bl func_080A5BD8
.L080A6264:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6274: .4byte gUnk_08106AC4

	thumb_func_start func_080A6278
func_080A6278: @ 0x080A6278
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A6288
	cmp r0, #0x2b
	beq .L080A629C
	b .L080A62A8
.L080A6288:
	ldr r1, .L080A6298 @ =gUnk_08106ADC
	adds r0, r4, #0
	movs r2, #0xf
	movs r3, #2
	bl func_080A5BD8
	b .L080A62A8
	.align 2, 0
.L080A6298: .4byte gUnk_08106ADC
.L080A629C:
	ldr r1, .L080A62B8 @ =gUnk_08106ADC
	adds r0, r4, #0
	movs r2, #0x17
	movs r3, #2
	bl func_080A5BD8
.L080A62A8:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A62B8: .4byte gUnk_08106ADC

	thumb_func_start func_080A62BC
func_080A62BC: @ 0x080A62BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A62CC
	cmp r0, #0x2b
	beq .L080A62E0
	b .L080A62EC
.L080A62CC:
	ldr r1, .L080A62DC @ =gUnk_08106AF4
	adds r0, r4, #0
	movs r2, #0xf
	movs r3, #2
	bl func_080A5BD8
	b .L080A62EC
	.align 2, 0
.L080A62DC: .4byte gUnk_08106AF4
.L080A62E0:
	ldr r1, .L080A62FC @ =gUnk_08106AF4
	adds r0, r4, #0
	movs r2, #0x17
	movs r3, #2
	bl func_080A5BD8
.L080A62EC:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A62FC: .4byte gUnk_08106AF4

	thumb_func_start func_080A6300
func_080A6300: @ 0x080A6300
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A6328
	cmp r0, #0x2a
	bgt .L080A6314
	cmp r0, #0x29
	beq .L080A631A
	b .L080A6350
.L080A6314:
	cmp r0, #0x2b
	beq .L080A633C
	b .L080A6350
.L080A631A:
	ldr r1, .L080A6324 @ =gUnk_08106B3C
	adds r0, r4, #0
	movs r2, #1
	b .L080A632E
	.align 2, 0
.L080A6324: .4byte gUnk_08106B3C
.L080A6328:
	ldr r1, .L080A6338 @ =gUnk_08106B3C
	adds r0, r4, #0
	movs r2, #0x10
.L080A632E:
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A6348
	.align 2, 0
.L080A6338: .4byte gUnk_08106B3C
.L080A633C:
	ldr r1, .L080A6358 @ =gUnk_08106B3C
	adds r0, r4, #0
	movs r2, #0x18
	movs r3, #0x11
	bl func_080A5BD8
.L080A6348:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080A6350:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6358: .4byte gUnk_08106B3C

	thumb_func_start func_080A635C
func_080A635C: @ 0x080A635C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x2a
	beq .L080A6384
	cmp r0, #0x2a
	bgt .L080A6370
	cmp r0, #0x29
	beq .L080A6376
	b .L080A63AC
.L080A6370:
	cmp r0, #0x2b
	beq .L080A6398
	b .L080A63AC
.L080A6376:
	ldr r1, .L080A6380 @ =gUnk_08106B24
	adds r0, r4, #0
	movs r2, #1
	b .L080A638A
	.align 2, 0
.L080A6380: .4byte gUnk_08106B24
.L080A6384:
	ldr r1, .L080A6394 @ =gUnk_08106B24
	adds r0, r4, #0
	movs r2, #0x10
.L080A638A:
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A63A4
	.align 2, 0
.L080A6394: .4byte gUnk_08106B24
.L080A6398:
	ldr r1, .L080A63B4 @ =gUnk_08106B24
	adds r0, r4, #0
	movs r2, #0x18
	movs r3, #0x11
	bl func_080A5BD8
.L080A63A4:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080A63AC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A63B4: .4byte gUnk_08106B24

	thumb_func_start func_080A63B8
func_080A63B8: @ 0x080A63B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0x25
	beq .L080A63F8
	cmp r0, #0x25
	bgt .L080A63CC
	cmp r0, #0x24
	beq .L080A63E4
	b .L080A6414
.L080A63CC:
	cmp r0, #0x40
	bne .L080A6414
	ldr r1, .L080A63E0 @ =gUnk_081070C4
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0xd
	bl func_080A5BD8
	b .L080A640C
	.align 2, 0
.L080A63E0: .4byte gUnk_081070C4
.L080A63E4:
	ldr r1, .L080A63F4 @ =gUnk_081070C4
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A640C
	.align 2, 0
.L080A63F4: .4byte gUnk_081070C4
.L080A63F8:
	ldr r2, .L080A641C @ =gUnk_081070C4
	movs r3, #0xd
	cmp r1, #0
	bne .L080A6402
	movs r3, #0x11
.L080A6402:
	adds r0, r4, #0
	adds r1, r2, #0
	movs r2, #1
	bl func_080A5BD8
.L080A640C:
	adds r1, r4, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080A6414:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080A641C: .4byte gUnk_081070C4

	thumb_func_start func_080A6420
func_080A6420: @ 0x080A6420
	push {lr}
	sub sp, #4
	ldr r0, [r0]
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl func_0803A8A4
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
.L080A643C:
	.byte 0x70, 0xB5, 0x06, 0x1C
	.byte 0x0C, 0x1C, 0x15, 0x1C, 0x70, 0x68, 0xFE, 0xF7, 0x27, 0xF9, 0x00, 0x8C, 0x68, 0x43, 0x24, 0x18
	.byte 0xA4, 0x00, 0xF0, 0x6A, 0x00, 0x19, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x40, 0x68, 0x70, 0x47
	.byte 0x00, 0x68, 0x70, 0x47, 0x0E, 0x21, 0x40, 0x5E, 0x70, 0x47, 0x00, 0x00, 0x0A, 0x21, 0x40, 0x5E
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_080A6474
func_080A6474: @ 0x080A6474
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl func_080A4A94
	adds r1, r5, #0
	adds r1, #0x90
	ldr r0, .L080A64B4 @ =vtable_unk_080E831C
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x94
	str r4, [r0]
	adds r0, #4
	movs r4, #0
	strb r4, [r0]
	adds r0, #4
	bl func_080E43FC
	adds r0, r5, #0
	adds r0, #0xb4
	strb r4, [r0]
	strb r4, [r0, #1]
	strb r4, [r0, #2]
	adds r0, #4
	strb r4, [r0]
	strb r4, [r0, #1]
	strb r4, [r0, #2]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L080A64B4: .4byte vtable_unk_080E831C

	thumb_func_start func_080A64B8
func_080A64B8: @ 0x080A64B8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl func_080A4BEC
	adds r0, r4, #0
	adds r0, #0x94
	ldr r1, [r0]
	ldr r0, [r4]
	cmp r0, #6
	bne .L080A6510
	ldr r2, .L080A6518 @ =0x000021A0
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r3, r0, #0x1e
	cmp r3, #1
	bne .L080A6510
	adds r2, r4, #0
	adds r2, #0xb4
	ldr r1, .L080A651C @ =gUnk_08107338
	ldrb r0, [r2, #2]
	adds r0, #1
	movs r6, #0
	strb r0, [r2, #2]
	movs r5, #0xff
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A64F8
	strb r6, [r2, #2]
	strb r3, [r2, #1]
.L080A64F8:
	adds r2, r4, #0
	adds r2, #0xb8
	ldr r1, .L080A6520 @ =gUnk_08107344
	ldrb r0, [r2, #2]
	adds r0, #1
	strb r0, [r2, #2]
	ands r0, r5
	ldrh r1, [r1, #8]
	cmp r0, r1
	blo .L080A6510
	strb r6, [r2, #2]
	strb r3, [r2, #1]
.L080A6510:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6518: .4byte 0x000021A0
.L080A651C: .4byte gUnk_08107338
.L080A6520: .4byte gUnk_08107344

	thumb_func_start func_080A6524
func_080A6524: @ 0x080A6524
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	bl func_080A4F50
	adds r4, r5, #0
	adds r4, #0x94
	ldr r0, [r4]
	ldr r1, [r5]
	cmp r1, #6
	beq .L080A65A0
	cmp r1, #0x1d
	bne .L080A662A
	adds r1, r5, #0
	adds r1, #0x98
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080A662A
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl HasStocking__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A658C
	ldr r0, [r4]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetStockingArticleId__C9FarmHouse
	cmp r0, #0x5f
	bne .L080A6580
	ldr r1, .L080A657C @ =gUnk_0810710C
	adds r0, r5, #0
	movs r2, #1
	b .L080A6592
	.align 2, 0
.L080A657C: .4byte gUnk_0810710C
.L080A6580:
	ldr r1, .L080A6588 @ =gUnk_0810710C
	adds r0, r5, #0
	movs r2, #2
	b .L080A6592
	.align 2, 0
.L080A6588: .4byte gUnk_0810710C
.L080A658C:
	ldr r1, .L080A659C @ =gUnk_0810710C
	adds r0, r5, #0
	movs r2, #0
.L080A6592:
	adds r3, r6, #0
	bl func_080A5AB0
	b .L080A662A
	.align 2, 0
.L080A659C: .4byte gUnk_0810710C
.L080A65A0:
	ldr r1, .L080A6634 @ =0x000021A0
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A662A
	adds r4, r5, #0
	adds r4, #0xb4
	ldr r7, .L080A6638 @ =gUnk_08107338
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A65EC
	movs r0, #0
	mov r8, r0
	mov r1, r8
	strb r1, [r4, #1]
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r6, #0
	bl func_080A5AB0
	ldr r0, [r7, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A65E4
	movs r2, #1
.L080A65E4:
	cmp r2, #0
	beq .L080A65EC
	mov r0, r8
	strb r0, [r4]
.L080A65EC:
	adds r4, r5, #0
	adds r4, #0xb8
	ldr r7, .L080A663C @ =gUnk_08107344
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L080A662A
	movs r1, #0
	mov r8, r1
	mov r0, r8
	strb r0, [r4, #1]
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r6, #0
	bl func_080A5AB0
	ldr r0, [r7, #4]
	ldrh r1, [r0, #2]
	movs r2, #0
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r1
	bne .L080A6622
	movs r2, #1
.L080A6622:
	cmp r2, #0
	beq .L080A662A
	mov r1, r8
	strb r1, [r4]
.L080A662A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A6634: .4byte 0x000021A0
.L080A6638: .4byte gUnk_08107338
.L080A663C: .4byte gUnk_08107344

	thumb_func_start func_080A6640
func_080A6640: @ 0x080A6640
	push {r4, lr}
	adds r4, r0, #0
	bl func_080A5760
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	adds r4, #0xb8
	strb r0, [r4]
	strb r0, [r4, #1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080A6660
func_080A6660: @ 0x080A6660
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	mov r8, r0
	bl func_080A5CC0
	mov r0, r8
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0x10
	bl func_0800E324
	adds r6, r0, #0
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0x2e
	bgt .L080A668E
	cmp r0, #0x2d
	bge .L080A6694
	b .L080A669A
.L080A668E:
	cmp r0, #0x2f
	beq .L080A6698
	b .L080A669A
.L080A6694:
	movs r6, #1
	b .L080A669A
.L080A6698:
	movs r6, #3
.L080A669A:
	mov r0, r8
	adds r0, #0x94
	ldr r4, [r0]
	ldr r2, .L080A66D8 @ =0x0000214C
	adds r7, r4, r2
	mov r3, r8
	ldr r2, [r3]
	mov sb, r0
	cmp r2, #6
	beq .L080A66E4
	cmp r2, #6
	ble .L080A66B4
	b .L080A6806
.L080A66B4:
	cmp r2, #1
	beq .L080A66BA
	b .L080A6806
.L080A66BA:
	ldr r1, .L080A66DC @ =0x0000219C
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #1
	beq .L080A66CA
	b .L080A6806
.L080A66CA:
	ldr r1, .L080A66E0 @ =gUnk_08106D34
	mov r0, r8
	movs r2, #0x17
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A6806
	.align 2, 0
.L080A66D8: .4byte 0x0000214C
.L080A66DC: .4byte 0x0000219C
.L080A66E0: .4byte gUnk_08106D34
.L080A66E4:
	ldr r2, .L080A681C @ =0x000021A9
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A66FE
	ldr r1, .L080A6820 @ =gUnk_0810725C
	mov r0, r8
	movs r2, #0x13
	movs r3, #0x11
	bl func_080A5BD8
.L080A66FE:
	ldr r3, .L080A6824 @ =0x000021A0
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A6718
	ldr r1, .L080A6828 @ =gUnk_0810730C
	mov r0, r8
	movs r2, #0x16
	movs r3, #0x10
	bl func_080A5BD8
.L080A6718:
	ldr r0, .L080A682C @ =0x0000219A
	adds r5, r4, r0
	ldrh r0, [r5]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A6732
	ldr r1, .L080A6830 @ =gUnk_08107230
	mov r0, r8
	movs r2, #0x13
	movs r3, #0x11
	bl func_080A5BD8
.L080A6732:
	ldr r1, .L080A6834 @ =0x0000219B
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A674C
	ldr r1, .L080A6830 @ =gUnk_08107230
	mov r0, r8
	movs r2, #0x13
	movs r3, #0x11
	bl func_080A5BD8
.L080A674C:
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A676E
	ldr r1, .L080A6838 @ =gUnk_08107204
	mov r0, r8
	movs r2, #8
	movs r3, #0xc
	bl func_080A5BD8
	ldr r1, .L080A683C @ =gUnk_081072B4
	mov r0, r8
	movs r2, #0x11
	movs r3, #0xf
	bl func_080A5BD8
.L080A676E:
	ldr r2, .L080A6840 @ =0x0000219D
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A6788
	ldr r1, .L080A6844 @ =gUnk_08107288
	mov r0, r8
	movs r2, #0x17
	movs r3, #0x17
	bl func_080A5BD8
.L080A6788:
	ldr r3, .L080A6848 @ =0x0000219E
	adds r0, r4, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A67A2
	ldr r1, .L080A6838 @ =gUnk_08107204
	mov r0, r8
	movs r2, #8
	movs r3, #0xc
	bl func_080A5BD8
.L080A67A2:
	ldr r1, .L080A684C @ =0x000021A1
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A67C8
	ldr r1, .L080A6838 @ =gUnk_08107204
	mov r0, r8
	movs r2, #8
	movs r3, #0xc
	bl func_080A5BD8
	ldr r1, .L080A683C @ =gUnk_081072B4
	mov r0, r8
	movs r2, #0x11
	movs r3, #0xf
	bl func_080A5BD8
.L080A67C8:
	ldr r2, .L080A6850 @ =0x000021A2
	adds r0, r4, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A67E2
	ldr r1, .L080A6838 @ =gUnk_08107204
	mov r0, r8
	movs r2, #8
	movs r3, #0xc
	bl func_080A5BD8
.L080A67E2:
	adds r0, r7, #0
	adds r0, #0x4c
	ldrb r0, [r0]
	lsrs r0, r0, #6
	cmp r0, #1
	bne .L080A6806
	ldr r1, .L080A6854 @ =gUnk_081072E0
	mov r0, r8
	movs r2, #0x1b
	movs r3, #0x1a
	bl func_080A5BD8
	ldr r1, .L080A6830 @ =gUnk_08107230
	mov r0, r8
	movs r2, #0x13
	movs r3, #0x11
	bl func_080A5BD8
.L080A6806:
	mov r3, r8
	ldr r2, [r3, #4]
	cmp r2, #0x3d
	bls .L080A6812
	bl .L080A746E
.L080A6812:
	lsls r0, r2, #2
	ldr r1, .L080A6858 @ =.L080A685C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A681C: .4byte 0x000021A9
.L080A6820: .4byte gUnk_0810725C
.L080A6824: .4byte 0x000021A0
.L080A6828: .4byte gUnk_0810730C
.L080A682C: .4byte 0x0000219A
.L080A6830: .4byte gUnk_08107230
.L080A6834: .4byte 0x0000219B
.L080A6838: .4byte gUnk_08107204
.L080A683C: .4byte gUnk_081072B4
.L080A6840: .4byte 0x0000219D
.L080A6844: .4byte gUnk_08107288
.L080A6848: .4byte 0x0000219E
.L080A684C: .4byte 0x000021A1
.L080A6850: .4byte 0x000021A2
.L080A6854: .4byte gUnk_081072E0
.L080A6858: .4byte .L080A685C
.L080A685C: @ jump table
	.4byte .L080A6C18 @ case 0
	.4byte .L080A6D78 @ case 1
	.4byte .L080A746E @ case 2
	.4byte .L080A746E @ case 3
	.4byte .L080A746E @ case 4
	.4byte .L080A746E @ case 5
	.4byte .L080A6BD4 @ case 6
	.4byte .L080A6BF0 @ case 7
	.4byte .L080A6954 @ case 8
	.4byte .L080A6988 @ case 9
	.4byte .L080A746E @ case 10
	.4byte .L080A746E @ case 11
	.4byte .L080A746E @ case 12
	.4byte .L080A746E @ case 13
	.4byte .L080A7428 @ case 14
	.4byte .L080A7448 @ case 15
	.4byte .L080A746E @ case 16
	.4byte .L080A746E @ case 17
	.4byte .L080A746E @ case 18
	.4byte .L080A69A8 @ case 19
	.4byte .L080A746E @ case 20
	.4byte .L080A746E @ case 21
	.4byte .L080A69B4 @ case 22
	.4byte .L080A69C0 @ case 23
	.4byte .L080A69F4 @ case 24
	.4byte .L080A6B20 @ case 25
	.4byte .L080A746E @ case 26
	.4byte .L080A746E @ case 27
	.4byte .L080A746E @ case 28
	.4byte .L080A746E @ case 29
	.4byte .L080A69D4 @ case 30
	.4byte .L080A6B0C @ case 31
	.4byte .L080A746E @ case 32
	.4byte .L080A746E @ case 33
	.4byte .L080A746E @ case 34
	.4byte .L080A746E @ case 35
	.4byte .L080A7260 @ case 36
	.4byte .L080A72B2 @ case 37
	.4byte .L080A733C @ case 38
	.4byte .L080A7396 @ case 39
	.4byte .L080A746E @ case 40
	.4byte .L080A6EE4 @ case 41
	.4byte .L080A6FA0 @ case 42
	.4byte .L080A70DC @ case 43
	.4byte .L080A746E @ case 44
	.4byte .L080A746E @ case 45
	.4byte .L080A746E @ case 46
	.4byte .L080A746E @ case 47
	.4byte .L080A69E8 @ case 48
	.4byte .L080A746E @ case 49
	.4byte .L080A746E @ case 50
	.4byte .L080A746E @ case 51
	.4byte .L080A746E @ case 52
	.4byte .L080A746E @ case 53
	.4byte .L080A746E @ case 54
	.4byte .L080A746E @ case 55
	.4byte .L080A6A68 @ case 56
	.4byte .L080A6A68 @ case 57
	.4byte .L080A6A68 @ case 58
	.4byte .L080A6A68 @ case 59
	.4byte .L080A746E @ case 60
	.4byte .L080A6A68 @ case 61
.L080A6954:
	cmp r6, #1
	bne .L080A6964
	ldr r1, .L080A6980 @ =gUnk_08106D1C
	mov r0, r8
	movs r2, #0xa
	movs r3, #0x19
	bl func_080A5BD8
.L080A6964:
	mov r1, sb
	ldr r0, [r1]
	bl func_08010E58
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A6976
	bl .L080A746E
.L080A6976:
	ldr r1, .L080A6984 @ =gUnk_08106CEC
	mov r0, r8
	movs r2, #0x17
	b .L080A6ED6
	.align 2, 0
.L080A6980: .4byte gUnk_08106D1C
.L080A6984: .4byte gUnk_08106CEC
.L080A6988:
	mov r2, sb
	ldr r0, [r2]
	bl func_08010E58
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A699A
	bl .L080A746E
.L080A699A:
	ldr r1, .L080A69A4 @ =gUnk_08106D04
	mov r0, r8
	movs r2, #0x17
	b .L080A6ED6
	.align 2, 0
.L080A69A4: .4byte gUnk_08106D04
.L080A69A8:
	mov r0, r8
	movs r1, #0
	bl func_080AA850
	bl .L080A746E
.L080A69B4:
	mov r0, r8
	movs r1, #1
	bl func_080AA850
	bl .L080A746E
.L080A69C0:
	mov r0, r8
	movs r1, #2
	bl func_080AA850
	mov r0, r8
	movs r1, #3
	bl func_080AA850
	bl .L080A746E
.L080A69D4:
	mov r0, r8
	movs r1, #6
	bl func_080AA850
	mov r0, r8
	movs r1, #7
	bl func_080AA850
	bl .L080A746E
.L080A69E8:
	mov r0, r8
	movs r1, #8
	bl func_080AA850
	bl .L080A746E
.L080A69F4:
	mov r3, sb
	ldr r1, [r3]
	ldr r2, .L080A6A60 @ =0x00002186
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	cmp r0, #2
	bne .L080A6A4A
	ldrb r2, [r1, #0x10]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1d
	ldrb r3, [r1, #0x11]
	lsls r0, r3, #0x1e
	lsrs r0, r0, #0x1e
	lsls r3, r3, #0x19
	lsrs r3, r3, #0x1b
	adds r2, #6
	lsls r1, r0, #4
	subs r1, r1, r0
	lsls r1, r1, #1
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r3, r1
	cmp r1, #6
	bls .L080A6A36
	adds r0, r1, #0
	movs r1, #7
	bl __umodsi3
	adds r1, r0, #0
.L080A6A36:
	movs r0, #7
	ands r1, r0
	cmp r1, #3
	bne .L080A6A4A
	ldr r1, .L080A6A64 @ =gUnk_08106E0C
	mov r0, r8
	movs r2, #0x28
	movs r3, #0x1d
	bl func_080A5BD8
.L080A6A4A:
	mov r0, r8
	movs r1, #4
	bl func_080AA850
	mov r0, r8
	movs r1, #5
	bl func_080AA850
	bl .L080A746E
	.align 2, 0
.L080A6A60: .4byte 0x00002186
.L080A6A64: .4byte gUnk_08106E0C
.L080A6A68:
	adds r0, r2, #0
	subs r0, #0x38
	cmp r0, #5
	bhi .L080A6AAA
	lsls r0, r0, #2
	ldr r1, .L080A6A7C @ =.L080A6A80
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A6A7C: .4byte .L080A6A80
.L080A6A80: @ jump table
	.4byte .L080A6AAA @ case 0
	.4byte .L080A6AA4 @ case 1
	.4byte .L080A6A9E @ case 2
	.4byte .L080A6A98 @ case 3
	.4byte .L080A6AAA @ case 4
	.4byte .L080A6AAA @ case 5
.L080A6A98:
	movs r0, #7
	mov sl, r0
	b .L080A6AAE
.L080A6A9E:
	movs r1, #7
	mov sl, r1
	b .L080A6AAE
.L080A6AA4:
	movs r2, #7
	mov sl, r2
	b .L080A6AAE
.L080A6AAA:
	movs r3, #7
	mov sl, r3
.L080A6AAE:
	mov r1, sb
	ldr r0, [r1]
	ldr r2, .L080A6ABC @ =0x00002E58
	adds r6, r0, r2
	movs r7, #0
	b .L080A6AFE
	.align 2, 0
.L080A6ABC: .4byte 0x00002E58
.L080A6AC0:
	movs r5, #0
	adds r3, r7, #1
	mov sb, r3
	b .L080A6AF2
.L080A6AC8:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl func_0809D8D4
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl func_0809E0AC
	lsls r1, r5, #1
	adds r1, #2
	lsls r2, r7, #1
	add r2, sl
	str r0, [sp]
	mov r0, r8
	adds r3, r4, #0
	bl func_080AA540
	adds r5, #1
.L080A6AF2:
	adds r0, r6, #0
	bl func_0809D8A4
	cmp r5, r0
	blo .L080A6AC8
	mov r7, sb
.L080A6AFE:
	adds r0, r6, #0
	bl func_0809D8B8
	cmp r7, r0
	blo .L080A6AC0
	bl .L080A746E
.L080A6B0C:
	mov r0, r8
	movs r1, #0xa
	bl func_080AA850
	mov r0, r8
	movs r1, #0xb
	bl func_080AA850
	bl .L080A746E
.L080A6B20:
	mov r0, r8
	movs r1, #9
	bl func_080AA850
	mov r1, sb
	ldr r0, [r1]
	ldr r2, .L080A6B40 @ =0x00001C38
	adds r0, r0, r2
	bl GetUpgradeLevel__C8Rucksack
	cmp r0, #0
	beq .L080A6B44
	cmp r0, #1
	beq .L080A6B58
	b .L080A6B74
	.align 2, 0
.L080A6B40: .4byte 0x00001C38
.L080A6B44:
	ldr r1, .L080A6B54 @ =gUnk_08106D7C
	mov r0, r8
	movs r2, #0x21
	movs r3, #0x14
	bl func_080A5BD8
	b .L080A6B74
	.align 2, 0
.L080A6B54: .4byte gUnk_08106D7C
.L080A6B58:
	mov r3, sb
	ldr r0, [r3]
	ldr r1, .L080A6B9C @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E9A0
	cmp r0, #7
	bne .L080A6B74
	ldr r1, .L080A6BA0 @ =gUnk_08106D7C
	mov r0, r8
	movs r2, #0x21
	movs r3, #0x14
	bl func_080A5BD8
.L080A6B74:
	mov r0, r8
	bl func_080AA8F0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A6B8C
	ldr r1, .L080A6BA4 @ =gUnk_08106D94
	mov r0, r8
	movs r2, #0x21
	movs r3, #0x17
	bl func_080A5BD8
.L080A6B8C:
	cmp r6, #1
	beq .L080A6BB8
	cmp r6, #1
	bgt .L080A6BA8
	cmp r6, #0
	beq .L080A6BB0
	bl .L080A746E
	.align 2, 0
.L080A6B9C: .4byte 0x00001BD8
.L080A6BA0: .4byte gUnk_08106D7C
.L080A6BA4: .4byte gUnk_08106D94
.L080A6BA8:
	cmp r6, #2
	beq .L080A6BC0
	bl .L080A746E
.L080A6BB0:
	ldr r1, .L080A6BB4 @ =gUnk_08106DC4
	b .L080A6BC2
	.align 2, 0
.L080A6BB4: .4byte gUnk_08106DC4
.L080A6BB8:
	ldr r1, .L080A6BBC @ =gUnk_08106DDC
	b .L080A6BC2
	.align 2, 0
.L080A6BBC: .4byte gUnk_08106DDC
.L080A6BC0:
	ldr r1, .L080A6BD0 @ =gUnk_08106DF4
.L080A6BC2:
	mov r0, r8
	movs r2, #0xc
	movs r3, #0x14
	bl func_080A5BD8
	bl .L080A746E
	.align 2, 0
.L080A6BD0: .4byte gUnk_08106DF4
.L080A6BD4:
	mov r2, sb
	ldr r0, [r2]
	bl func_08010E50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A6BE6
	bl .L080A746E
.L080A6BE6:
	ldr r1, .L080A6BEC @ =gUnk_08106CBC
	b .L080A6C04
	.align 2, 0
.L080A6BEC: .4byte gUnk_08106CBC
.L080A6BF0:
	mov r3, sb
	ldr r0, [r3]
	bl func_08010E50
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A6C02
	bl .L080A746E
.L080A6C02:
	ldr r1, .L080A6C14 @ =gUnk_08106CD4
.L080A6C04:
	mov r0, r8
	movs r2, #0x3c
	movs r3, #0
	bl func_080A5BD8
	bl .L080A746E
	.align 2, 0
.L080A6C14: .4byte gUnk_08106CD4
.L080A6C18:
	movs r0, #0
.L080A6C1A:
	movs r4, #0
	adds r6, r0, #1
	subs r1, r0, #1
	str r1, [sp, #0x1c]
	lsls r2, r0, #1
	str r2, [sp, #0x20]
	movs r1, #0x2b
	adds r3, r0, #0
	muls r3, r1, r3
	str r3, [sp, #4]
	str r6, [sp, #8]
	adds r2, r6, #0
	muls r2, r1, r2
	str r2, [sp, #0xc]
	movs r3, #0x22
	mov sl, r3
.L080A6C3A:
	mov r0, sb
	ldr r1, [r0]
	ldr r2, .L080A6C74 @ =0x000009DC
	adds r1, r1, r2
	ldr r3, [sp, #4]
	adds r0, r4, r3
	lsls r0, r0, #2
	adds r5, r1, r0
	adds r2, r1, #0
	adds r7, r5, #0
	movs r0, #0
	cmp r4, #0
	blt .L080A6C64
	cmp r6, #0
	blt .L080A6C64
	cmp r4, #0x2a
	bgt .L080A6C64
	ldr r1, [sp, #8]
	cmp r1, #0x18
	bgt .L080A6C64
	movs r0, #1
.L080A6C64:
	cmp r0, #0
	beq .L080A6C78
	ldr r3, [sp, #0xc]
	adds r0, r4, r3
	lsls r0, r0, #2
	adds r1, r2, r0
	b .L080A6C7A
	.align 2, 0
.L080A6C74: .4byte 0x000009DC
.L080A6C78:
	movs r1, #0
.L080A6C7A:
	ldr r0, [sp, #0x1c]
	movs r3, #0
	cmp r4, #0
	blt .L080A6C90
	cmp r0, #0
	blt .L080A6C90
	cmp r4, #0x2a
	bgt .L080A6C90
	cmp r0, #0x18
	bgt .L080A6C90
	movs r3, #1
.L080A6C90:
	cmp r3, #0
	beq .L080A6CA0
	movs r3, #0x2b
	muls r0, r3, r0
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r2, r2, r0
	b .L080A6CA2
.L080A6CA0:
	movs r2, #0
.L080A6CA2:
	adds r0, r7, #0
	bl method_0800AF5C__C9FieldPlotPC9FieldPlotT1
	str r0, [sp]
	mov r0, r8
	mov r1, sl
	ldr r2, [sp, #0x20]
	adds r2, #0x16
	adds r3, r5, #0
	bl func_080AA6D0
	movs r0, #2
	add sl, r0
	adds r4, #1
	cmp r4, #0x2a
	bls .L080A6C3A
	adds r0, r6, #0
	cmp r0, #0x18
	bls .L080A6C1A
	mov r1, sb
	ldr r0, [r1]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetUpgradeLevel__C9FarmHouse
	cmp r0, #1
	beq .L080A6CF0
	cmp r0, #1
	blo .L080A6CE4
	cmp r0, #2
	beq .L080A6D04
	b .L080A6D10
.L080A6CE4:
	ldr r1, .L080A6CEC @ =gUnk_0810692C
	mov r0, r8
	movs r2, #0x1a
	b .L080A6CF6
	.align 2, 0
.L080A6CEC: .4byte gUnk_0810692C
.L080A6CF0:
	ldr r1, .L080A6D00 @ =gUnk_0810695C
	mov r0, r8
	movs r2, #0x12
.L080A6CF6:
	movs r3, #3
	bl func_080A5BD8
	b .L080A6D10
	.align 2, 0
.L080A6D00: .4byte gUnk_0810695C
.L080A6D04:
	ldr r1, .L080A6D28 @ =gUnk_0810698C
	mov r0, r8
	movs r2, #0xa
	movs r3, #2
	bl func_080A5BD8
.L080A6D10:
	mov r3, sb
	ldr r0, [r3]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUpgradeLevel__C4Barn
	cmp r0, #0
	beq .L080A6D2C
	cmp r0, #1
	beq .L080A6D40
	b .L080A6D4C
	.align 2, 0
.L080A6D28: .4byte gUnk_0810698C
.L080A6D2C:
	ldr r1, .L080A6D3C @ =gUnk_081069BC
	mov r0, r8
	movs r2, #0x3a
	movs r3, #2
	bl func_080A5BD8
	b .L080A6D4C
	.align 2, 0
.L080A6D3C: .4byte gUnk_081069BC
.L080A6D40:
	ldr r1, .L080A6D64 @ =gUnk_081069EC
	mov r0, r8
	movs r2, #0x3a
	movs r3, #2
	bl func_080A5BD8
.L080A6D4C:
	mov r2, sb
	ldr r0, [r2]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetUpgradeLevel__C4Coop
	cmp r0, #0
	beq .L080A6D68
	cmp r0, #1
	beq .L080A6D70
	b .L080A746E
	.align 2, 0
.L080A6D64: .4byte gUnk_081069EC
.L080A6D68:
	ldr r1, .L080A6D6C @ =gUnk_08106A1C
	b .L080A6ED2
	.align 2, 0
.L080A6D6C: .4byte gUnk_08106A1C
.L080A6D70:
	ldr r1, .L080A6D74 @ =gUnk_08106A4C
	b .L080A6ED2
	.align 2, 0
.L080A6D74: .4byte gUnk_08106A4C
.L080A6D78:
	movs r0, #0
.L080A6D7A:
	movs r4, #0
	adds r6, r0, #1
	subs r1, r0, #1
	str r1, [sp, #0x24]
	lsls r2, r0, #1
	str r2, [sp, #0x28]
	movs r1, #0x2b
	adds r3, r0, #0
	muls r3, r1, r3
	str r3, [sp, #0x10]
	str r6, [sp, #0x14]
	adds r2, r6, #0
	muls r2, r1, r2
	str r2, [sp, #0x18]
	movs r3, #0x22
	mov sl, r3
.L080A6D9A:
	mov r0, sb
	ldr r1, [r0]
	ldr r2, .L080A6DD4 @ =0x000009DC
	adds r1, r1, r2
	ldr r3, [sp, #0x10]
	adds r0, r4, r3
	lsls r0, r0, #2
	adds r5, r1, r0
	adds r2, r1, #0
	adds r7, r5, #0
	movs r0, #0
	cmp r4, #0
	blt .L080A6DC4
	cmp r6, #0
	blt .L080A6DC4
	cmp r4, #0x2a
	bgt .L080A6DC4
	ldr r1, [sp, #0x14]
	cmp r1, #0x18
	bgt .L080A6DC4
	movs r0, #1
.L080A6DC4:
	cmp r0, #0
	beq .L080A6DD8
	ldr r3, [sp, #0x18]
	adds r0, r4, r3
	lsls r0, r0, #2
	adds r1, r2, r0
	b .L080A6DDA
	.align 2, 0
.L080A6DD4: .4byte 0x000009DC
.L080A6DD8:
	movs r1, #0
.L080A6DDA:
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r4, #0
	blt .L080A6DF0
	cmp r0, #0
	blt .L080A6DF0
	cmp r4, #0x2a
	bgt .L080A6DF0
	cmp r0, #0x18
	bgt .L080A6DF0
	movs r3, #1
.L080A6DF0:
	cmp r3, #0
	beq .L080A6E00
	movs r3, #0x2b
	muls r0, r3, r0
	adds r0, r4, r0
	lsls r0, r0, #2
	adds r2, r2, r0
	b .L080A6E02
.L080A6E00:
	movs r2, #0
.L080A6E02:
	adds r0, r7, #0
	bl method_0800AF5C__C9FieldPlotPC9FieldPlotT1
	str r0, [sp]
	mov r0, r8
	mov r1, sl
	ldr r2, [sp, #0x28]
	adds r2, #0x16
	adds r3, r5, #0
	bl func_080AA6D0
	movs r0, #2
	add sl, r0
	adds r4, #1
	cmp r4, #0x2a
	bls .L080A6D9A
	adds r0, r6, #0
	cmp r0, #0x18
	bls .L080A6D7A
	mov r1, sb
	ldr r0, [r1]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetUpgradeLevel__C9FarmHouse
	cmp r0, #1
	beq .L080A6E50
	cmp r0, #1
	blo .L080A6E44
	cmp r0, #2
	beq .L080A6E64
	b .L080A6E70
.L080A6E44:
	ldr r1, .L080A6E4C @ =gUnk_08106944
	mov r0, r8
	movs r2, #0x1a
	b .L080A6E56
	.align 2, 0
.L080A6E4C: .4byte gUnk_08106944
.L080A6E50:
	ldr r1, .L080A6E60 @ =gUnk_08106974
	mov r0, r8
	movs r2, #0x12
.L080A6E56:
	movs r3, #3
	bl func_080A5BD8
	b .L080A6E70
	.align 2, 0
.L080A6E60: .4byte gUnk_08106974
.L080A6E64:
	ldr r1, .L080A6E88 @ =gUnk_081069A4
	mov r0, r8
	movs r2, #0xa
	movs r3, #2
	bl func_080A5BD8
.L080A6E70:
	mov r3, sb
	ldr r0, [r3]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUpgradeLevel__C4Barn
	cmp r0, #0
	beq .L080A6E8C
	cmp r0, #1
	beq .L080A6EA0
	b .L080A6EAC
	.align 2, 0
.L080A6E88: .4byte gUnk_081069A4
.L080A6E8C:
	ldr r1, .L080A6E9C @ =gUnk_081069D4
	mov r0, r8
	movs r2, #0x3a
	movs r3, #2
	bl func_080A5BD8
	b .L080A6EAC
	.align 2, 0
.L080A6E9C: .4byte gUnk_081069D4
.L080A6EA0:
	ldr r1, .L080A6EC4 @ =gUnk_08106A04
	mov r0, r8
	movs r2, #0x3a
	movs r3, #2
	bl func_080A5BD8
.L080A6EAC:
	mov r2, sb
	ldr r0, [r2]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	bl GetUpgradeLevel__C4Coop
	cmp r0, #0
	beq .L080A6EC8
	cmp r0, #1
	beq .L080A6ED0
	b .L080A746E
	.align 2, 0
.L080A6EC4: .4byte gUnk_08106A04
.L080A6EC8:
	ldr r1, .L080A6ECC @ =gUnk_08106A34
	b .L080A6ED2
	.align 2, 0
.L080A6ECC: .4byte gUnk_08106A34
.L080A6ED0:
	ldr r1, .L080A6EE0 @ =gUnk_08106A64
.L080A6ED2:
	mov r0, r8
	movs r2, #0xe
.L080A6ED6:
	movs r3, #0x34
	bl func_080A5BD8
	b .L080A746E
	.align 2, 0
.L080A6EE0: .4byte gUnk_08106A64
.L080A6EE4:
	ldr r1, .L080A6F10 @ =gUnk_08106A94
	mov r0, r8
	movs r2, #0x19
	movs r3, #0xf
	bl func_080A5BD8
	mov r1, sb
	ldr r0, [r1]
	movs r2, #0xfa
	lsls r2, r2, #1
	adds r0, r0, r2
	bl GetRecordPlayer__C9FarmHouse
	cmp r0, #0
	beq .L080A6F2C
	bl HasAlbum__C12RecordPlayer
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A6F18
	ldr r1, .L080A6F14 @ =gUnk_08106B24
	b .L080A6F1A
	.align 2, 0
.L080A6F10: .4byte gUnk_08106A94
.L080A6F14: .4byte gUnk_08106B24
.L080A6F18:
	ldr r1, .L080A6F28 @ =gUnk_08106B3C
.L080A6F1A:
	mov r0, r8
	movs r2, #1
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A6F38
	.align 2, 0
.L080A6F28: .4byte gUnk_08106B3C
.L080A6F2C:
	ldr r1, .L080A6F90 @ =gUnk_08106B0C
	mov r0, r8
	movs r2, #1
	movs r3, #0x11
	bl func_080A5BD8
.L080A6F38:
	mov r3, sb
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl HasVase__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A6F58
	ldr r1, .L080A6F94 @ =gUnk_08106BB4
	mov r0, r8
	movs r2, #0x13
	movs r3, #6
	bl func_080A5BD8
.L080A6F58:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	bl HasMirror__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A6F74
	ldr r1, .L080A6F98 @ =gUnk_08106BCC
	mov r0, r8
	movs r2, #8
	movs r3, #2
	bl func_080A5BD8
.L080A6F74:
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r4
	bl HasClock__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A6F86
	b .L080A746E
.L080A6F86:
	ldr r1, .L080A6F9C @ =gUnk_08106BE4
	mov r0, r8
	movs r2, #5
	b .L080A70C0
	.align 2, 0
.L080A6F90: .4byte gUnk_08106B0C
.L080A6F94: .4byte gUnk_08106BB4
.L080A6F98: .4byte gUnk_08106BCC
.L080A6F9C: .4byte gUnk_08106BE4
.L080A6FA0:
	ldr r1, .L080A701C @ =gUnk_08106A94
	mov r0, r8
	movs r2, #0x28
	movs r3, #0xf
	bl func_080A5BD8
	mov r3, sb
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl HasKitchen__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A6FCC
	ldr r1, .L080A7020 @ =gUnk_08106B54
	mov r0, r8
	movs r2, #2
	movs r3, #1
	bl func_080A5BD8
.L080A6FCC:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	bl GetFridge__C9FarmHouse
	cmp r0, #0
	beq .L080A6FE6
	ldr r1, .L080A7024 @ =gUnk_08106AC4
	mov r0, r8
	movs r2, #0xb
	movs r3, #3
	bl func_080A5BD8
.L080A6FE6:
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r4
	bl GetShelf__C9FarmHouse
	cmp r0, #0
	beq .L080A7000
	ldr r1, .L080A7028 @ =gUnk_08106AF4
	mov r0, r8
	movs r2, #0xf
	movs r3, #2
	bl func_080A5BD8
.L080A7000:
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r4
	bl GetRecordPlayer__C9FarmHouse
	cmp r0, #0
	beq .L080A7044
	bl HasAlbum__C12RecordPlayer
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7030
	ldr r1, .L080A702C @ =gUnk_08106B24
	b .L080A7032
	.align 2, 0
.L080A701C: .4byte gUnk_08106A94
.L080A7020: .4byte gUnk_08106B54
.L080A7024: .4byte gUnk_08106AC4
.L080A7028: .4byte gUnk_08106AF4
.L080A702C: .4byte gUnk_08106B24
.L080A7030:
	ldr r1, .L080A7040 @ =gUnk_08106B3C
.L080A7032:
	mov r0, r8
	movs r2, #0x10
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A7050
	.align 2, 0
.L080A7040: .4byte gUnk_08106B3C
.L080A7044:
	ldr r1, .L080A70C8 @ =gUnk_08106B0C
	mov r0, r8
	movs r2, #0x10
	movs r3, #0x11
	bl func_080A5BD8
.L080A7050:
	mov r1, sb
	ldr r0, [r1]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl HasCarpet__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7070
	ldr r1, .L080A70CC @ =gUnk_08106B9C
	mov r0, r8
	movs r2, #0x17
	movs r3, #0xa
	bl func_080A5BD8
.L080A7070:
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r4
	bl HasVase__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A708C
	ldr r1, .L080A70D0 @ =gUnk_08106BB4
	mov r0, r8
	movs r2, #0x22
	movs r3, #6
	bl func_080A5BD8
.L080A708C:
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r4
	bl HasMirror__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A70A8
	ldr r1, .L080A70D4 @ =gUnk_08106BCC
	mov r0, r8
	movs r2, #0x17
	movs r3, #2
	bl func_080A5BD8
.L080A70A8:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	bl HasClock__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A70BA
	b .L080A746E
.L080A70BA:
	ldr r1, .L080A70D8 @ =gUnk_08106BE4
	mov r0, r8
	movs r2, #0x14
.L080A70C0:
	movs r3, #3
	bl func_080A5BD8
	b .L080A746E
	.align 2, 0
.L080A70C8: .4byte gUnk_08106B0C
.L080A70CC: .4byte gUnk_08106B9C
.L080A70D0: .4byte gUnk_08106BB4
.L080A70D4: .4byte gUnk_08106BCC
.L080A70D8: .4byte gUnk_08106BE4
.L080A70DC:
	ldr r1, .L080A7158 @ =gUnk_08106A94
	mov r0, r8
	movs r2, #0x36
	movs r3, #0xf
	bl func_080A5BD8
	mov r2, sb
	ldr r0, [r2]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl HasKitchen__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7108
	ldr r1, .L080A715C @ =gUnk_08106B54
	mov r0, r8
	movs r2, #0xa
	movs r3, #1
	bl func_080A5BD8
.L080A7108:
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r4
	bl GetFridge__C9FarmHouse
	cmp r0, #0
	beq .L080A7122
	ldr r1, .L080A7160 @ =gUnk_08106AC4
	mov r0, r8
	movs r2, #0x13
	movs r3, #3
	bl func_080A5BD8
.L080A7122:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	bl GetShelf__C9FarmHouse
	cmp r0, #0
	beq .L080A713C
	ldr r1, .L080A7164 @ =gUnk_08106AF4
	mov r0, r8
	movs r2, #0x17
	movs r3, #2
	bl func_080A5BD8
.L080A713C:
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r4
	bl GetRecordPlayer__C9FarmHouse
	cmp r0, #0
	beq .L080A7180
	bl HasAlbum__C12RecordPlayer
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A716C
	ldr r1, .L080A7168 @ =gUnk_08106B24
	b .L080A716E
	.align 2, 0
.L080A7158: .4byte gUnk_08106A94
.L080A715C: .4byte gUnk_08106B54
.L080A7160: .4byte gUnk_08106AC4
.L080A7164: .4byte gUnk_08106AF4
.L080A7168: .4byte gUnk_08106B24
.L080A716C:
	ldr r1, .L080A717C @ =gUnk_08106B3C
.L080A716E:
	mov r0, r8
	movs r2, #0x18
	movs r3, #0x11
	bl func_080A5BD8
	b .L080A718C
	.align 2, 0
.L080A717C: .4byte gUnk_08106B3C
.L080A7180:
	ldr r1, .L080A7244 @ =gUnk_08106B0C
	mov r0, r8
	movs r2, #0x18
	movs r3, #0x11
	bl func_080A5BD8
.L080A718C:
	ldr r1, .L080A7248 @ =gUnk_08106B6C
	mov r0, r8
	movs r2, #4
	movs r3, #1
	bl func_080A5BD8
	mov r3, sb
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl HasLargeBed__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A71B8
	ldr r1, .L080A724C @ =gUnk_08106B84
	mov r0, r8
	movs r2, #0x34
	movs r3, #5
	bl func_080A5BD8
.L080A71B8:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	bl HasCarpet__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A71D4
	ldr r1, .L080A7250 @ =gUnk_08106B9C
	mov r0, r8
	movs r2, #0x1f
	movs r3, #0xa
	bl func_080A5BD8
.L080A71D4:
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r4
	bl HasVase__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A71F0
	ldr r1, .L080A7254 @ =gUnk_08106BB4
	mov r0, r8
	movs r2, #0x2a
	movs r3, #6
	bl func_080A5BD8
.L080A71F0:
	mov r3, sb
	ldr r0, [r3]
	adds r0, r0, r4
	bl HasMirror__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A720C
	ldr r1, .L080A7258 @ =gUnk_08106BCC
	mov r0, r8
	movs r2, #0x1f
	movs r3, #2
	bl func_080A5BD8
.L080A720C:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	bl HasClock__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7228
	ldr r1, .L080A725C @ =gUnk_08106BE4
	mov r0, r8
	movs r2, #0x1c
	movs r3, #3
	bl func_080A5BD8
.L080A7228:
	mov r2, sb
	ldr r0, [r2]
	adds r0, r0, r4
	bl HasBathroom__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A723A
	b .L080A746E
.L080A723A:
	mov r0, r8
	movs r1, #0xc
	bl func_080AA850
	b .L080A746E
	.align 2, 0
.L080A7244: .4byte gUnk_08106B0C
.L080A7248: .4byte gUnk_08106B6C
.L080A724C: .4byte gUnk_08106B84
.L080A7250: .4byte gUnk_08106B9C
.L080A7254: .4byte gUnk_08106BB4
.L080A7258: .4byte gUnk_08106BCC
.L080A725C: .4byte gUnk_08106BE4
.L080A7260:
	mov r3, sb
	ldr r0, [r3]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r5, r0, r1
	movs r4, #0
	b .L080A7286
.L080A726E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl HasBushelForEnt__C4CoopUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7284
	mov r0, r8
	adds r1, r4, #0
	bl func_080A6024
.L080A7284:
	adds r4, #1
.L080A7286:
	adds r0, r5, #0
	bl GetCapacity__C4Coop
	cmp r4, r0
	blo .L080A726E
	mov r2, sb
	ldr r0, [r2]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r0, r0, r3
	movs r1, #0
	bl IsIncubatorOccupied__C4CoopUi
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A72A8
	b .L080A746E
.L080A72A8:
	mov r0, r8
	movs r1, #0
	bl func_080A63B8
	b .L080A746E
.L080A72B2:
	mov r1, sb
	ldr r0, [r1]
	movs r2, #0x82
	lsls r2, r2, #3
	adds r5, r0, r2
	movs r4, #0
	b .L080A72D8
.L080A72C0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl HasBushelForEnt__C4CoopUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A72D6
	mov r0, r8
	adds r1, r4, #0
	bl func_080A6024
.L080A72D6:
	adds r4, #1
.L080A72D8:
	adds r0, r5, #0
	bl GetCapacity__C4Coop
	cmp r4, r0
	blo .L080A72C0
	adds r0, r5, #0
	bl method_0800C5C4__C4Coop
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A72FA
	ldr r1, .L080A7338 @ =gUnk_08106C2C
	mov r0, r8
	movs r2, #2
	movs r3, #5
	bl func_080A5BD8
.L080A72FA:
	mov r3, sb
	ldr r0, [r3]
	movs r4, #0x82
	lsls r4, r4, #3
	adds r0, r0, r4
	movs r1, #0
	bl IsIncubatorOccupied__C4CoopUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7318
	mov r0, r8
	movs r1, #0
	bl func_080A63B8
.L080A7318:
	mov r1, sb
	ldr r0, [r1]
	adds r0, r0, r4
	movs r1, #1
	bl IsIncubatorOccupied__C4CoopUi
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A732C
	b .L080A746E
.L080A732C:
	mov r0, r8
	movs r1, #1
	bl func_080A63B8
	b .L080A746E
	.align 2, 0
.L080A7338: .4byte gUnk_08106C2C
.L080A733C:
	mov r2, sb
	ldr r0, [r2]
	movs r3, #0xbe
	lsls r3, r3, #3
	adds r5, r0, r3
	movs r4, #0
	b .L080A7362
.L080A734A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl HasBushelForStall__C4BarnUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7360
	mov r0, r8
	adds r1, r4, #0
	bl func_080A607C
.L080A7360:
	adds r4, #1
.L080A7362:
	adds r0, r5, #0
	bl GetCapacity__C4Barn
	cmp r4, r0
	blo .L080A734A
	movs r4, #0
	b .L080A738A
.L080A7370:
	adds r0, r5, #0
	adds r1, r4, #0
	bl HasBushelForPregnancyStall__C4BarnUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7388
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, r8
	bl func_080A607C
.L080A7388:
	adds r4, #1
.L080A738A:
	adds r0, r5, #0
	bl GetPregnancyStallCapacity__C4Barn
	cmp r4, r0
	blo .L080A7370
	b .L080A746E
.L080A7396:
	mov r1, sb
	ldr r0, [r1]
	movs r2, #0xbe
	lsls r2, r2, #3
	adds r5, r0, r2
	movs r4, #0
	b .L080A73BC
.L080A73A4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl HasBushelForStall__C4BarnUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A73BA
	mov r0, r8
	adds r1, r4, #0
	bl func_080A607C
.L080A73BA:
	adds r4, #1
.L080A73BC:
	adds r0, r5, #0
	bl GetCapacity__C4Barn
	cmp r4, r0
	blo .L080A73A4
	movs r4, #0
	b .L080A73E4
.L080A73CA:
	adds r0, r5, #0
	adds r1, r4, #0
	bl HasBushelForPregnancyStall__C4BarnUi
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A73E2
	adds r1, r4, #0
	adds r1, #0x10
	mov r0, r8
	bl func_080A607C
.L080A73E2:
	adds r4, #1
.L080A73E4:
	adds r0, r5, #0
	bl GetPregnancyStallCapacity__C4Barn
	cmp r4, r0
	blo .L080A73CA
	adds r0, r5, #0
	bl method_0800CF00__C4Barn
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A7406
	ldr r1, .L080A7420 @ =gUnk_08106C5C
	mov r0, r8
	movs r2, #0xc
	movs r3, #5
	bl func_080A5BD8
.L080A7406:
	adds r0, r5, #0
	bl method_0800CF08__C4Barn
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A746E
	ldr r1, .L080A7424 @ =gUnk_08106C44
	mov r0, r8
	movs r2, #8
	movs r3, #5
	bl func_080A5BD8
	b .L080A746E
	.align 2, 0
.L080A7420: .4byte gUnk_08106C5C
.L080A7424: .4byte gUnk_08106C44
.L080A7428:
	mov r3, sb
	ldr r0, [r3]
	bl func_08010E48
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A746E
	ldr r1, .L080A7444 @ =gUnk_08106D4C
	mov r0, r8
	movs r2, #0x24
	movs r3, #2
	bl func_080A5BD8
	b .L080A746E
	.align 2, 0
.L080A7444: .4byte gUnk_08106D4C
.L080A7448:
	ldr r1, .L080A7484 @ =gUnk_08106CA4
	mov r0, r8
	movs r2, #0x20
	movs r3, #0x20
	bl func_080A5BD8
	mov r1, sb
	ldr r0, [r1]
	bl func_08010E48
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080A746E
	ldr r1, .L080A7488 @ =gUnk_08106D64
	mov r0, r8
	movs r2, #0x24
	movs r3, #2
	bl func_080A5BD8
.L080A746E:
	mov r0, r8
	bl func_080AACB8
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A7484: .4byte gUnk_08106CA4
.L080A7488: .4byte gUnk_08106D64

	thumb_func_start func_080A748C
func_080A748C: @ 0x080A748C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c4
	str r0, [sp, #0x190]
	adds r7, r1, #0
	bl func_080A5EA0
	ldr r0, [sp, #0x190]
	adds r0, #0x94
	ldr r0, [r0]
	ldr r1, .L080A74CC @ =0x0000214C
	adds r1, r0, r1
	str r1, [sp, #0x194]
	adds r0, #0x10
	bl func_0800E324
	adds r6, r0, #0
	ldr r1, .L080A74D0 @ =gUnk_086678A0
	mov r0, sp
	bl func_0805E6CC
	ldr r2, [sp, #0x190]
	ldr r0, [r2]
	cmp r0, #0x2e
	bgt .L080A74D4
	cmp r0, #0x2d
	bge .L080A74DA
	b .L080A74E0
	.align 2, 0
.L080A74CC: .4byte 0x0000214C
.L080A74D0: .4byte gUnk_086678A0
.L080A74D4:
	cmp r0, #0x2f
	beq .L080A74DE
	b .L080A74E0
.L080A74DA:
	movs r6, #1
	b .L080A74E0
.L080A74DE:
	movs r6, #3
.L080A74E0:
	ldr r3, [sp, #0x190]
	ldr r0, [r3, #4]
	adds r3, #0x9c
	str r3, [sp, #0x1b4]
	cmp r0, #0x33
	bls .L080A74F0
	bl .L080A9224
.L080A74F0:
	lsls r0, r0, #2
	ldr r1, .L080A74FC @ =.L080A7500
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A74FC: .4byte .L080A7500
.L080A7500: @ jump table
	.4byte .L080A8094 @ case 0
	.4byte .L080A863C @ case 1
	.4byte .L080A9224 @ case 2
	.4byte .L080A9224 @ case 3
	.4byte .L080A8E26 @ case 4
	.4byte .L080A9224 @ case 5
	.4byte .L080A8D04 @ case 6
	.4byte .L080A9224 @ case 7
	.4byte .L080A9224 @ case 8
	.4byte .L080A9224 @ case 9
	.4byte .L080A9224 @ case 10
	.4byte .L080A9224 @ case 11
	.4byte .L080A9224 @ case 12
	.4byte .L080A9224 @ case 13
	.4byte .L080A9224 @ case 14
	.4byte .L080A9224 @ case 15
	.4byte .L080A9224 @ case 16
	.4byte .L080A9224 @ case 17
	.4byte .L080A9224 @ case 18
	.4byte .L080A9224 @ case 19
	.4byte .L080A9224 @ case 20
	.4byte .L080A9224 @ case 21
	.4byte .L080A9224 @ case 22
	.4byte .L080A9224 @ case 23
	.4byte .L080A9224 @ case 24
	.4byte .L080A9224 @ case 25
	.4byte .L080A9224 @ case 26
	.4byte .L080A9224 @ case 27
	.4byte .L080A9224 @ case 28
	.4byte .L080A9224 @ case 29
	.4byte .L080A9224 @ case 30
	.4byte .L080A9224 @ case 31
	.4byte .L080A9224 @ case 32
	.4byte .L080A9224 @ case 33
	.4byte .L080A9224 @ case 34
	.4byte .L080A9224 @ case 35
	.4byte .L080A9212 @ case 36
	.4byte .L080A9212 @ case 37
	.4byte .L080A9212 @ case 38
	.4byte .L080A9212 @ case 39
	.4byte .L080A9224 @ case 40
	.4byte .L080A9224 @ case 41
	.4byte .L080A75D0 @ case 42
	.4byte .L080A75D0 @ case 43
	.4byte .L080A9224 @ case 44
	.4byte .L080A9224 @ case 45
	.4byte .L080A9224 @ case 46
	.4byte .L080A9224 @ case 47
	.4byte .L080A9224 @ case 48
	.4byte .L080A9224 @ case 49
	.4byte .L080A9224 @ case 50
	.4byte .L080A88F0 @ case 51
.L080A75D0:
	add r5, sp, #0x30
	movs r0, #0
	str r0, [sp, #0x30]
	strh r0, [r5, #4]
	add r4, sp, #0x38
	str r0, [sp, #0x38]
	strh r0, [r4, #4]
	add r1, sp, #0x40
	str r0, [sp, #0x40]
	strh r0, [r1, #4]
	add r1, sp, #0x48
	str r0, [sp, #0x48]
	strh r0, [r1, #4]
	ldr r0, [sp, #0x190]
	adds r0, #0x94
	ldr r0, [r0]
	movs r6, #0xfa
	lsls r6, r6, #1
	adds r6, r0, r6
	str r6, [sp, #0x198]
	adds r0, r6, #0
	bl HasKitchenWhisk__C9FarmHouse
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x190]
	adds r1, #0x9c
	str r1, [sp, #0x1b4]
	cmp r0, #0
	bne .L080A760C
	b .L080A7752
.L080A760C:
	ldr r4, [sp]
	add r0, sp, #0x70
	ldr r3, [r4, #0xc]
	mov r1, sp
	movs r2, #0xec
	lsls r2, r2, #1
	bl _call_via_r3
	ldr r0, [sp, #0x70]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7654
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7654:
	adds r0, r4, #0
	ldr r2, .L080A7680 @ =0x060045A0
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7684
	cmp r1, #0
	beq .L080A7676
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7676:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A7752
	.align 2, 0
.L080A7680: .4byte 0x060045A0
.L080A7684:
	mov sl, r1
	movs r0, #1
	str r0, [sp, #0x7c]
	ldr r1, [r7]
	mov r5, sl
	subs r0, r5, r1
	asrs r4, r0, #4
	str r4, [sp, #0x78]
	add r5, sp, #0x7c
	add r0, sp, #0x78
	adds r3, r1, #0
	cmp r4, #1
	bhs .L080A76A0
	adds r0, r5, #0
.L080A76A0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A76C0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A76BC
	mov r0, r8
	bl func_080D3BC0
.L080A76BC:
	ldr r3, [r7]
	b .L080A76C4
.L080A76C0:
	movs r0, #0
	mov r8, r0
.L080A76C4:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x190]
	adds r6, #0x9c
	str r6, [sp, #0x1b4]
	cmp r2, sl
	beq .L080A76EE
.L080A76D6:
	cmp r3, #0
	beq .L080A76E6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A76E6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A76D6
.L080A76EE:
	adds r5, r3, #0
	ldr r0, [sp, #0x7c]
	cmp r0, #1
	bne .L080A770A
	cmp r5, #0
	beq .L080A7706
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7706:
	adds r5, #0x10
	b .L080A772C
.L080A770A:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A772A
.L080A7712:
	cmp r2, #0
	beq .L080A7722
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7722:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A7712
.L080A772A:
	adds r5, r2, #0
.L080A772C:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A773C
.L080A7736:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A7736
.L080A773C:
	cmp r3, #0
	beq .L080A7746
	adds r0, r3, #0
	bl free
.L080A7746:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r6, [sp, #0x1bc]
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A7752:
	ldr r0, [sp, #0x198]
	bl HasKitchenKnife__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A7760
	b .L080A78AC
.L080A7760:
	ldr r5, [sp]
	add r4, sp, #0x80
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080A77D4 @ =0x00000109
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A77A8
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A77A8:
	adds r0, r4, #0
	ldr r2, .L080A77D8 @ =0x06004620
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A77DC
	cmp r1, #0
	beq .L080A77CA
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A77CA:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A78AC
	.align 2, 0
.L080A77D4: .4byte 0x00000109
.L080A77D8: .4byte 0x06004620
.L080A77DC:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0x8c
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0x88
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A77FA
	mov r0, sl
.L080A77FA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A781A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A7816
	mov r0, r8
	bl func_080D3BC0
.L080A7816:
	ldr r3, [r7]
	b .L080A781E
.L080A781A:
	movs r0, #0
	mov r8, r0
.L080A781E:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A7846
.L080A782C:
	cmp r3, #0
	beq .L080A783C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A783C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A782C
.L080A7846:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A7864
	cmp r5, #0
	beq .L080A7860
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7860:
	adds r5, #0x10
	b .L080A7886
.L080A7864:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A7884
.L080A786C:
	cmp r2, #0
	beq .L080A787C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A787C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A786C
.L080A7884:
	adds r5, r2, #0
.L080A7886:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A7896
.L080A7890:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A7890
.L080A7896:
	cmp r3, #0
	beq .L080A78A0
	adds r0, r3, #0
	bl free
.L080A78A0:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A78AC:
	ldr r0, [sp, #0x198]
	bl HasKitchenPot__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A78BA
	b .L080A7A04
.L080A78BA:
	ldr r5, [sp]
	add r4, sp, #0x90
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0xad
	lsls r2, r2, #1
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7904
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7904:
	adds r0, r4, #0
	ldr r2, .L080A7930 @ =0x060046A0
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7934
	cmp r1, #0
	beq .L080A7926
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7926:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A7A04
	.align 2, 0
.L080A7930: .4byte 0x060046A0
.L080A7934:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0x9c
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A7952
	mov r0, sl
.L080A7952:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A7972
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A796E
	mov r0, r8
	bl func_080D3BC0
.L080A796E:
	ldr r3, [r7]
	b .L080A7976
.L080A7972:
	movs r0, #0
	mov r8, r0
.L080A7976:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A799E
.L080A7984:
	cmp r3, #0
	beq .L080A7994
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7994:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A7984
.L080A799E:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A79BC
	cmp r5, #0
	beq .L080A79B8
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A79B8:
	adds r5, #0x10
	b .L080A79DE
.L080A79BC:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A79DC
.L080A79C4:
	cmp r2, #0
	beq .L080A79D4
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A79D4:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A79C4
.L080A79DC:
	adds r5, r2, #0
.L080A79DE:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A79EE
.L080A79E8:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A79E8
.L080A79EE:
	cmp r3, #0
	beq .L080A79F8
	adds r0, r3, #0
	bl free
.L080A79F8:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A7A04:
	ldr r0, [sp, #0x198]
	bl HasKitchenFryingPan__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A7A12
	b .L080A7B58
.L080A7A12:
	ldr r5, [sp]
	add r4, sp, #0xa0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0xcc
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7A5A
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7A5A:
	adds r0, r4, #0
	ldr r2, .L080A7A84 @ =0x06004720
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7A88
	cmp r1, #0
	beq .L080A7A7C
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7A7C:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A7B58
	.align 2, 0
.L080A7A84: .4byte 0x06004720
.L080A7A88:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0xac
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0xa8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A7AA6
	mov r0, sl
.L080A7AA6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A7AC6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A7AC2
	mov r0, r8
	bl func_080D3BC0
.L080A7AC2:
	ldr r3, [r7]
	b .L080A7ACA
.L080A7AC6:
	movs r0, #0
	mov r8, r0
.L080A7ACA:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A7AF2
.L080A7AD8:
	cmp r3, #0
	beq .L080A7AE8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7AE8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A7AD8
.L080A7AF2:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A7B10
	cmp r5, #0
	beq .L080A7B0C
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7B0C:
	adds r5, #0x10
	b .L080A7B32
.L080A7B10:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A7B30
.L080A7B18:
	cmp r2, #0
	beq .L080A7B28
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7B28:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A7B18
.L080A7B30:
	adds r5, r2, #0
.L080A7B32:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A7B42
.L080A7B3C:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A7B3C
.L080A7B42:
	cmp r3, #0
	beq .L080A7B4C
	adds r0, r3, #0
	bl free
.L080A7B4C:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A7B58:
	ldr r0, [sp, #0x198]
	bl HasKitchenOven__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A7B66
	b .L080A7CB0
.L080A7B66:
	ldr r5, [sp]
	add r4, sp, #0xb0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080A7BD8 @ =0x00000147
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7BAE
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7BAE:
	adds r0, r4, #0
	ldr r2, .L080A7BDC @ =0x060047A0
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7BE0
	cmp r1, #0
	beq .L080A7BD0
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7BD0:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A7CB0
	.align 2, 0
.L080A7BD8: .4byte 0x00000147
.L080A7BDC: .4byte 0x060047A0
.L080A7BE0:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0xbc
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0xb8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A7BFE
	mov r0, sl
.L080A7BFE:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A7C1E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A7C1A
	mov r0, r8
	bl func_080D3BC0
.L080A7C1A:
	ldr r3, [r7]
	b .L080A7C22
.L080A7C1E:
	movs r0, #0
	mov r8, r0
.L080A7C22:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A7C4A
.L080A7C30:
	cmp r3, #0
	beq .L080A7C40
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7C40:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A7C30
.L080A7C4A:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A7C68
	cmp r5, #0
	beq .L080A7C64
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7C64:
	adds r5, #0x10
	b .L080A7C8A
.L080A7C68:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A7C88
.L080A7C70:
	cmp r2, #0
	beq .L080A7C80
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7C80:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A7C70
.L080A7C88:
	adds r5, r2, #0
.L080A7C8A:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A7C9A
.L080A7C94:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A7C94
.L080A7C9A:
	cmp r3, #0
	beq .L080A7CA4
	adds r0, r3, #0
	bl free
.L080A7CA4:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A7CB0:
	ldr r0, [sp, #0x198]
	bl HasKitchenRollingPin__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A7CBE
	b .L080A7E08
.L080A7CBE:
	ldr r5, [sp]
	add r4, sp, #0xc0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080A7D30 @ =0x00000139
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7D06
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7D06:
	adds r0, r4, #0
	ldr r2, .L080A7D34 @ =0x06004820
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7D38
	cmp r1, #0
	beq .L080A7D28
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7D28:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A7E08
	.align 2, 0
.L080A7D30: .4byte 0x00000139
.L080A7D34: .4byte 0x06004820
.L080A7D38:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0xcc
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0xc8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A7D56
	mov r0, sl
.L080A7D56:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A7D76
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A7D72
	mov r0, r8
	bl func_080D3BC0
.L080A7D72:
	ldr r3, [r7]
	b .L080A7D7A
.L080A7D76:
	movs r0, #0
	mov r8, r0
.L080A7D7A:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A7DA2
.L080A7D88:
	cmp r3, #0
	beq .L080A7D98
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7D98:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A7D88
.L080A7DA2:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A7DC0
	cmp r5, #0
	beq .L080A7DBC
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7DBC:
	adds r5, #0x10
	b .L080A7DE2
.L080A7DC0:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A7DE0
.L080A7DC8:
	cmp r2, #0
	beq .L080A7DD8
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7DD8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A7DC8
.L080A7DE0:
	adds r5, r2, #0
.L080A7DE2:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A7DF2
.L080A7DEC:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A7DEC
.L080A7DF2:
	cmp r3, #0
	beq .L080A7DFC
	adds r0, r3, #0
	bl free
.L080A7DFC:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A7E08:
	ldr r0, [sp, #0x198]
	bl HasKitchenMixer__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A7E16
	b .L080A7F5C
.L080A7E16:
	ldr r5, [sp]
	add r4, sp, #0xd0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0x40
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7E5E
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7E5E:
	adds r0, r4, #0
	ldr r2, .L080A7E88 @ =0x060048A0
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7E8C
	cmp r1, #0
	beq .L080A7E80
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A7E80:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A7F5C
	.align 2, 0
.L080A7E88: .4byte 0x060048A0
.L080A7E8C:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0xdc
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0xd8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A7EAA
	mov r0, sl
.L080A7EAA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A7ECA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A7EC6
	mov r0, r8
	bl func_080D3BC0
.L080A7EC6:
	ldr r3, [r7]
	b .L080A7ECE
.L080A7ECA:
	movs r0, #0
	mov r8, r0
.L080A7ECE:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A7EF6
.L080A7EDC:
	cmp r3, #0
	beq .L080A7EEC
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7EEC:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A7EDC
.L080A7EF6:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A7F14
	cmp r5, #0
	beq .L080A7F10
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7F10:
	adds r5, #0x10
	b .L080A7F36
.L080A7F14:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A7F34
.L080A7F1C:
	cmp r2, #0
	beq .L080A7F2C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A7F2C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A7F1C
.L080A7F34:
	adds r5, r2, #0
.L080A7F36:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A7F46
.L080A7F40:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A7F40
.L080A7F46:
	cmp r3, #0
	beq .L080A7F50
	adds r0, r3, #0
	bl free
.L080A7F50:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A7F5C:
	ldr r0, [sp, #0x198]
	bl HasKitchenSeasoningSet__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080A7F6C
	bl .L080A9224
.L080A7F6C:
	ldr r5, [sp]
	add r4, sp, #0xe0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0xc8
	lsls r2, r2, #1
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x30
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080A7FB6
	mov r0, sp
	ldrh r3, [r0, #0x3c]
.L080A7FB6:
	adds r0, r4, #0
	ldr r2, .L080A800C @ =0x06004920
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A7FCC
	bl sub_080A9122
.L080A7FCC:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0xec
	str r0, [r1]
	ldr r3, [r7]
	ldr r5, [sp, #0x1c0]
	subs r0, r5, r3
	asrs r4, r0, #4
	add r0, sp, #0xe8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A7FEA
	mov r0, sl
.L080A7FEA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8010
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A8006
	mov r0, r8
	bl func_080D3BC0
.L080A8006:
	ldr r3, [r7]
	b .L080A8014
	.align 2, 0
.L080A800C: .4byte 0x06004920
.L080A8010:
	movs r0, #0
	mov r8, r0
.L080A8014:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	beq .L080A803C
.L080A8022:
	cmp r3, #0
	beq .L080A8032
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8032:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A8022
.L080A803C:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A805A
	cmp r5, #0
	beq .L080A8056
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8056:
	adds r5, #0x10
	b .L080A807C
.L080A805A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A807A
.L080A8062:
	cmp r2, #0
	beq .L080A8072
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8072:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8062
.L080A807A:
	adds r5, r2, #0
.L080A807C:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	bne .L080A808A
	bl .L080A91FA
.L080A808A:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A808A
	bl .L080A91FA
.L080A8094:
	ldr r1, .L080A80D4 @ =gUnk_086D5508
	add r0, sp, #0x30
	ldr r2, .L080A80D8 @ =0x06005FC0
	movs r3, #0xe6
	lsls r3, r3, #4
	bl func_08008F0C
	add r2, sp, #0x30
	mov sb, r2
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A80DC
	cmp r1, #0
	beq .L080A80BE
	adds r0, r1, #0
	add r1, sp, #0x30
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080A80BE:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	ldr r0, [sp, #0x190]
	adds r0, #0x94
	str r0, [sp, #0x1b0]
	ldr r1, [sp, #0x190]
	adds r1, #0x9c
	str r1, [sp, #0x1b4]
	b .L080A81BA
	.align 2, 0
.L080A80D4: .4byte gUnk_086D5508
.L080A80D8: .4byte 0x06005FC0
.L080A80DC:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0xf4
	str r0, [r1]
	ldr r3, [r7]
	mov r2, r8
	subs r0, r2, r3
	asrs r4, r0, #4
	add r0, sp, #0xf0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080A80F8
	adds r0, r1, #0
.L080A80F8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8118
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080A8114
	mov r0, sl
	bl func_080D3BC0
.L080A8114:
	ldr r3, [r7]
	b .L080A811C
.L080A8118:
	movs r0, #0
	mov sl, r0
.L080A811C:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	mov ip, r5
	ldr r3, [sp, #0x190]
	adds r3, #0x94
	str r3, [sp, #0x1b0]
	ldr r4, [sp, #0x190]
	adds r4, #0x9c
	str r4, [sp, #0x1b4]
	cmp r2, r8
	beq .L080A8150
.L080A8134:
	mov r5, ip
	cmp r5, #0
	beq .L080A8146
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080A8146:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080A8134
.L080A8150:
	mov r5, ip
	ldr r1, [sp, #0xf4]
	cmp r1, #1
	bne .L080A816C
	cmp r5, #0
	beq .L080A8168
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8168:
	adds r5, #0x10
	b .L080A8194
.L080A816C:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L080A8192
.L080A8174:
	cmp r2, #0
	beq .L080A8184
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080A8184:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080A8174
.L080A8192:
	adds r5, r2, #0
.L080A8194:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A81A4
.L080A819E:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A819E
.L080A81A4:
	cmp r3, #0
	beq .L080A81AE
	adds r0, r3, #0
	bl free
.L080A81AE:
	ldr r0, [sp, #0x1bc]
	add r0, sl
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A81BA:
	cmp r6, #1
	bne .L080A81C0
	b .L080A82BE
.L080A81C0:
	cmp r6, #1
	bgt .L080A81CA
	cmp r6, #0
	beq .L080A81D2
	b .L080A84C8
.L080A81CA:
	cmp r6, #2
	bne .L080A81D0
	b .L080A83BE
.L080A81D0:
	b .L080A84C8
.L080A81D2:
	ldr r1, .L080A81FC @ =gUnk_08698E14
	add r0, sp, #0x30
	ldr r2, .L080A8200 @ =0x06006E20
	movs r3, #0x8f
	lsls r3, r3, #5
	bl func_08008F0C
	add r2, sp, #0x30
	mov sb, r2
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8204
	cmp r1, #0
	bne .L080A81F2
	b .L080A83E8
.L080A81F2:
	adds r0, r1, #0
	add r1, sp, #0x30
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	b .L080A83E4
	.align 2, 0
.L080A81FC: .4byte gUnk_08698E14
.L080A8200: .4byte 0x06006E20
.L080A8204:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r1, sp, #0xfc
	str r0, [r1]
	ldr r3, [r7]
	ldr r6, [sp, #0x1c0]
	subs r0, r6, r3
	asrs r4, r0, #4
	add r0, sp, #0xf8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080A8222
	mov r0, sl
.L080A8222:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8242
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A823E
	mov r0, r8
	bl func_080D3BC0
.L080A823E:
	ldr r3, [r7]
	b .L080A8246
.L080A8242:
	movs r0, #0
	mov r8, r0
.L080A8246:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	b .L080A8264
.L080A8250:
	cmp r3, #0
	beq .L080A8260
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8260:
	adds r2, #0x10
	adds r3, #0x10
.L080A8264:
	ldr r0, [sp, #0x1c0]
	cmp r2, r0
	bne .L080A8250
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080A8288
	cmp r5, #0
	beq .L080A8284
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8284:
	adds r5, #0x10
	b .L080A82AA
.L080A8288:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A82A8
.L080A8290:
	cmp r2, #0
	beq .L080A82A0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A82A0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8290
.L080A82A8:
	adds r5, r2, #0
.L080A82AA:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	bne .L080A82B6
	b .L080A84B2
.L080A82B6:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A82B6
	b .L080A84B2
.L080A82BE:
	ldr r1, .L080A82E8 @ =gUnk_0869A0A4
	add r0, sp, #0x30
	ldr r2, .L080A82EC @ =0x06006E20
	movs r3, #0x8f
	lsls r3, r3, #5
	bl func_08008F0C
	add r2, sp, #0x30
	mov sb, r2
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A82F0
	cmp r1, #0
	bne .L080A82DE
	b .L080A83E8
.L080A82DE:
	adds r0, r1, #0
	add r1, sp, #0x30
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	b .L080A83E4
	.align 2, 0
.L080A82E8: .4byte gUnk_0869A0A4
.L080A82EC: .4byte 0x06006E20
.L080A82F0:
	mov r8, r1
	add r1, sp, #0x104
	str r6, [r1]
	ldr r2, [r7]
	mov r6, r8
	subs r0, r6, r2
	asrs r4, r0, #4
	add r0, sp, #0x100
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x100
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A8310
	adds r1, r5, #0
.L080A8310:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8330
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0x1bc]
	cmp r0, #0
	bne .L080A832C
	adds r0, r4, #0
	bl func_080D3BC0
.L080A832C:
	ldr r3, [r7]
	b .L080A8336
.L080A8330:
	movs r0, #0
	movs r1, #0
	str r1, [sp, #0x1bc]
.L080A8336:
	adds r5, r0, #0
	mov sl, r5
	adds r2, r3, #0
	mov r3, sl
	cmp r2, r8
	beq .L080A835A
.L080A8342:
	cmp r3, #0
	beq .L080A8352
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8352:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080A8342
.L080A835A:
	adds r5, r3, #0
	add r0, sp, #0x104
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8378
	cmp r5, #0
	beq .L080A8374
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8374:
	adds r5, #0x10
	b .L080A839A
.L080A8378:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A8398
.L080A8380:
	cmp r2, #0
	beq .L080A8390
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8390:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8380
.L080A8398:
	adds r5, r2, #0
.L080A839A:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A83AA
.L080A83A4:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A83A4
.L080A83AA:
	cmp r3, #0
	beq .L080A83B4
	adds r0, r3, #0
	bl free
.L080A83B4:
	ldr r0, [sp, #0x1bc]
	add r0, sl
	mov r6, sl
	str r6, [r7]
	b .L080A84C4
.L080A83BE:
	ldr r1, .L080A83F0 @ =gUnk_08697920
	add r0, sp, #0x30
	ldr r2, .L080A83F4 @ =0x06006E20
	movs r3, #0x8f
	lsls r3, r3, #5
	bl func_08008F0C
	add r0, sp, #0x30
	mov sb, r0
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A83F8
	cmp r1, #0
	beq .L080A83E8
	adds r0, r1, #0
	add r1, sp, #0x30
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
.L080A83E4:
	ldr r1, [r1]
	str r1, [r0]
.L080A83E8:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A84C8
	.align 2, 0
.L080A83F0: .4byte gUnk_08697920
.L080A83F4: .4byte 0x06006E20
.L080A83F8:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x10c
	str r0, [r1]
	ldr r2, [r7]
	mov r5, sl
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x108
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x108
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A841A
	adds r1, r5, #0
.L080A841A:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A843A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A8436
	mov r0, r8
	bl func_080D3BC0
.L080A8436:
	ldr r3, [r7]
	b .L080A843E
.L080A843A:
	movs r0, #0
	mov r8, r0
.L080A843E:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L080A8462
.L080A844A:
	cmp r3, #0
	beq .L080A845A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A845A:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A844A
.L080A8462:
	adds r5, r3, #0
	add r0, sp, #0x10c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8480
	cmp r5, #0
	beq .L080A847C
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A847C:
	adds r5, #0x10
	b .L080A84A2
.L080A8480:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A84A0
.L080A8488:
	cmp r2, #0
	beq .L080A8498
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8498:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8488
.L080A84A0:
	adds r5, r2, #0
.L080A84A2:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A84B2
.L080A84AC:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A84AC
.L080A84B2:
	cmp r3, #0
	beq .L080A84BC
	adds r0, r3, #0
	bl free
.L080A84BC:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
.L080A84C4:
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A84C8:
	ldr r1, .L080A8624 @ =gUnk_08107144
	ldr r0, [sp, #0x190]
	movs r2, #0
	adds r3, r7, #0
	bl func_080A5AB0
	ldr r4, .L080A8628 @ =gUnk_081070DC
	ldr r2, [sp, #0x1b0]
	ldr r0, [r2]
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r0, r5
	bl GetMailboxStyle__C9FarmHouse
	adds r2, r0, #0
	ldr r0, [sp, #0x190]
	adds r1, r4, #0
	adds r3, r7, #0
	bl func_080A5AB0
	movs r3, #6
	mov sb, r3
	add r6, sp, #0x30
	ldr r4, [sp, #0x1b0]
	mov sl, r4
.L080A84FA:
	movs r5, #0x22
	mov r8, r5
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x1a4]
.L080A8504:
	adds r0, r6, #0
	ldr r1, .L080A862C @ =gUnk_0810742E
	movs r2, #3
	bl memcpy
	ldr r1, [sp, #0x190]
	ldr r0, [r1, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov r4, sb
	muls r4, r0, r4
	add r4, r8
	lsls r4, r4, #1
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x14]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetMailboxStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x18]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl GetMailboxStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	movs r5, #1
	add r8, r5
	mov r0, r8
	cmp r0, #0x23
	bls .L080A8504
	ldr r1, [sp, #0x1a4]
	mov sb, r1
	cmp r1, #8
	bls .L080A84FA
	ldr r4, .L080A8630 @ =gUnk_081070EC
	ldr r2, [sp, #0x1b0]
	ldr r0, [r2]
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r0, r5
	bl GetDoghouseStyle__C9FarmHouse
	adds r2, r0, #0
	ldr r0, [sp, #0x190]
	adds r1, r4, #0
	adds r3, r7, #0
	bl func_080A5AB0
	movs r3, #7
	mov sb, r3
	add r6, sp, #0x30
	ldr r4, [sp, #0x1b0]
	mov sl, r4
.L080A85A0:
	movs r5, #0x31
	mov r8, r5
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x1a8]
.L080A85AA:
	adds r0, r6, #0
	ldr r1, .L080A8634 @ =gUnk_08107431
	movs r2, #3
	bl memcpy
	ldr r1, [sp, #0x190]
	ldr r0, [r1, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov r4, sb
	muls r4, r0, r4
	add r4, r8
	lsls r4, r4, #1
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x14]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetDoghouseStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x18]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl GetDoghouseStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	movs r5, #1
	add r8, r5
	mov r0, r8
	cmp r0, #0x33
	bls .L080A85AA
	ldr r1, [sp, #0x1a8]
	mov sb, r1
	cmp r1, #0xa
	bls .L080A85A0
	ldr r4, .L080A8638 @ =gUnk_081070FC
	b .L080A88BA
	.align 2, 0
.L080A8624: .4byte gUnk_08107144
.L080A8628: .4byte gUnk_081070DC
.L080A862C: .4byte gUnk_0810742E
.L080A8630: .4byte gUnk_081070EC
.L080A8634: .4byte gUnk_08107431
.L080A8638: .4byte gUnk_081070FC
.L080A863C:
	ldr r1, .L080A867C @ =gUnk_086D6698
	add r0, sp, #0x30
	ldr r2, .L080A8680 @ =0x06005FC0
	movs r3, #0xe6
	lsls r3, r3, #4
	bl func_08008F0C
	add r4, sp, #0x30
	mov r8, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8684
	cmp r1, #0
	beq .L080A8666
	adds r0, r1, #0
	add r1, sp, #0x30
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8666:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	ldr r3, [sp, #0x190]
	adds r3, #0x94
	str r3, [sp, #0x1b0]
	ldr r4, [sp, #0x190]
	adds r4, #0x9c
	str r4, [sp, #0x1b4]
	b .L080A8760
	.align 2, 0
.L080A867C: .4byte gUnk_086D6698
.L080A8680: .4byte 0x06005FC0
.L080A8684:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x114
	str r0, [r1]
	ldr r2, [r7]
	mov r5, sl
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x110
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x110
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A86A6
	adds r1, r5, #0
.L080A86A6:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A86C6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080A86C2
	mov r0, sb
	bl func_080D3BC0
.L080A86C2:
	ldr r3, [r7]
	b .L080A86CA
.L080A86C6:
	movs r0, #0
	mov sb, r0
.L080A86CA:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r6, [sp, #0x190]
	adds r6, #0x94
	str r6, [sp, #0x1b0]
	ldr r0, [sp, #0x190]
	adds r0, #0x9c
	str r0, [sp, #0x1b4]
	cmp r2, sl
	beq .L080A86FA
.L080A86E2:
	cmp r3, #0
	beq .L080A86F2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A86F2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A86E2
.L080A86FA:
	adds r5, r3, #0
	add r0, sp, #0x114
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8718
	cmp r5, #0
	beq .L080A8714
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8714:
	adds r5, #0x10
	b .L080A873A
.L080A8718:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A8738
.L080A8720:
	cmp r2, #0
	beq .L080A8730
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8730:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8720
.L080A8738:
	adds r5, r2, #0
.L080A873A:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A874A
.L080A8744:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A8744
.L080A874A:
	cmp r3, #0
	beq .L080A8754
	adds r0, r3, #0
	bl free
.L080A8754:
	ldr r0, [sp, #0x1bc]
	add r0, sb
	ldr r6, [sp, #0x1bc]
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A8760:
	ldr r1, .L080A88D8 @ =gUnk_0810714C
	ldr r0, [sp, #0x190]
	movs r2, #0
	adds r3, r7, #0
	bl func_080A5AB0
	ldr r4, .L080A88DC @ =gUnk_081070E4
	ldr r1, [sp, #0x1b0]
	ldr r0, [r1]
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r0, r5
	bl GetMailboxStyle__C9FarmHouse
	adds r2, r0, #0
	ldr r0, [sp, #0x190]
	adds r1, r4, #0
	adds r3, r7, #0
	bl func_080A5AB0
	movs r2, #6
	mov sb, r2
	add r6, sp, #0x30
	ldr r3, [sp, #0x1b0]
	mov sl, r3
.L080A8792:
	movs r4, #0x22
	mov r8, r4
	mov r5, sb
	adds r5, #1
	str r5, [sp, #0x1ac]
.L080A879C:
	adds r0, r6, #0
	ldr r1, .L080A88E0 @ =gUnk_08107434
	movs r2, #3
	bl memcpy
	ldr r1, [sp, #0x190]
	ldr r0, [r1, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov r4, sb
	muls r4, r0, r4
	add r4, r8
	lsls r4, r4, #1
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x14]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetMailboxStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x18]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl GetMailboxStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	movs r5, #1
	add r8, r5
	mov r0, r8
	cmp r0, #0x23
	bls .L080A879C
	ldr r1, [sp, #0x1ac]
	mov sb, r1
	cmp r1, #8
	bls .L080A8792
	ldr r4, .L080A88E4 @ =gUnk_081070F4
	ldr r2, [sp, #0x1b0]
	ldr r0, [r2]
	movs r5, #0xfa
	lsls r5, r5, #1
	adds r0, r0, r5
	bl GetDoghouseStyle__C9FarmHouse
	adds r2, r0, #0
	ldr r0, [sp, #0x190]
	adds r1, r4, #0
	adds r3, r7, #0
	bl func_080A5AB0
	movs r3, #7
	mov sb, r3
	add r6, sp, #0x30
	ldr r4, [sp, #0x1b0]
	mov sl, r4
.L080A8838:
	movs r5, #0x31
	mov r8, r5
	mov r0, sb
	adds r0, #1
	str r0, [sp, #0x1b8]
.L080A8842:
	adds r0, r6, #0
	ldr r1, .L080A88E8 @ =gUnk_08107431
	movs r2, #3
	bl memcpy
	ldr r1, [sp, #0x190]
	ldr r0, [r1, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov r4, sb
	muls r4, r0, r4
	add r4, r8
	lsls r4, r4, #1
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x14]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetDoghouseStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	ldr r2, [sp, #0x190]
	ldr r0, [r2, #0x18]
	adds r5, r0, r4
	mov r3, sl
	ldr r0, [r3]
	movs r4, #0xfa
	lsls r4, r4, #1
	adds r0, r0, r4
	bl GetDoghouseStyle__C9FarmHouse
	adds r0, r6, r0
	ldrb r1, [r0]
	lsls r1, r1, #4
	ldrb r2, [r5, #1]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #1]
	movs r5, #1
	add r8, r5
	mov r0, r8
	cmp r0, #0x33
	bls .L080A8842
	ldr r1, [sp, #0x1b8]
	mov sb, r1
	cmp r1, #0xa
	bls .L080A8838
	ldr r4, .L080A88EC @ =gUnk_08107104
.L080A88BA:
	ldr r2, [sp, #0x1b0]
	ldr r0, [r2]
	movs r3, #0xfa
	lsls r3, r3, #1
	adds r0, r0, r3
	bl GetWindowStyle__C9FarmHouse
	adds r2, r0, #0
	ldr r0, [sp, #0x190]
	adds r1, r4, #0
	adds r3, r7, #0
	bl func_080A5AB0
	bl .L080A9224
	.align 2, 0
.L080A88D8: .4byte gUnk_0810714C
.L080A88DC: .4byte gUnk_081070E4
.L080A88E0: .4byte gUnk_08107434
.L080A88E4: .4byte gUnk_081070F4
.L080A88E8: .4byte gUnk_08107431
.L080A88EC: .4byte gUnk_08107104
.L080A88F0:
	add r5, sp, #0x30
	movs r0, #0
	str r0, [sp, #0x30]
	strh r0, [r5, #4]
	add r4, sp, #0x38
	mov r8, r4
	str r0, [sp, #0x38]
	strh r0, [r4, #4]
	add r1, sp, #0x40
	str r0, [sp, #0x40]
	strh r0, [r1, #4]
	add r1, sp, #0x48
	str r0, [sp, #0x48]
	strh r0, [r1, #4]
	cmp r6, #1
	bne .L080A8912
	b .L080A8A62
.L080A8912:
	cmp r6, #1
	bgt .L080A891C
	cmp r6, #0
	beq .L080A892C
	b .L080A8C24
.L080A891C:
	cmp r6, #2
	bne .L080A8922
	b .L080A8BB4
.L080A8922:
	ldr r6, [sp, #0x190]
	adds r6, #0x9c
	str r6, [sp, #0x1b4]
	bl .L080A9224
.L080A892C:
	ldr r4, [sp]
	add r0, sp, #0x118
	ldr r3, [r4, #0xc]
	mov r1, sp
	ldr r2, .L080A89C8 @ =0x0000012F
	bl _call_via_r3
	add r0, sp, #0x118
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r1, [sp, #0x38]
	movs r3, #0
	cmp r1, #0
	beq .L080A8972
	mov r0, r8
	ldrh r3, [r0, #4]
.L080A8972:
	adds r0, r4, #0
	ldr r2, .L080A89CC @ =0x06003000
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8986
	b .L080A8C0E
.L080A8986:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x124
	str r0, [r1]
	ldr r2, [r7]
	mov r6, sl
	subs r0, r6, r2
	asrs r4, r0, #4
	add r0, sp, #0x120
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x120
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A89A8
	adds r1, r5, #0
.L080A89A8:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A89D0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A89C4
	mov r0, r8
	bl func_080D3BC0
.L080A89C4:
	ldr r3, [r7]
	b .L080A89D4
	.align 2, 0
.L080A89C8: .4byte 0x0000012F
.L080A89CC: .4byte 0x06003000
.L080A89D0:
	movs r0, #0
	mov r8, r0
.L080A89D4:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r0, [sp, #0x190]
	adds r0, #0x9c
	str r0, [sp, #0x1b4]
	cmp r2, sl
	beq .L080A89FE
.L080A89E6:
	cmp r3, #0
	beq .L080A89F6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A89F6:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A89E6
.L080A89FE:
	adds r5, r3, #0
	add r0, sp, #0x124
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8A1C
	cmp r5, #0
	beq .L080A8A18
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8A18:
	adds r5, #0x10
	b .L080A8A3E
.L080A8A1C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A8A3C
.L080A8A24:
	cmp r2, #0
	beq .L080A8A34
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8A34:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8A24
.L080A8A3C:
	adds r5, r2, #0
.L080A8A3E:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A8A4E
.L080A8A48:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A8A48
.L080A8A4E:
	cmp r3, #0
	beq .L080A8A58
	adds r0, r3, #0
	bl free
.L080A8A58:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r6, [sp, #0x1bc]
	str r6, [r7]
	b .L080A920C
.L080A8A62:
	ldr r4, [sp]
	add r0, sp, #0x128
	ldr r3, [r4, #0xc]
	mov r1, sp
	ldr r2, .L080A8AD8 @ =0x00000151
	bl _call_via_r3
	add r0, sp, #0x128
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r1, [sp, #0x38]
	movs r3, #0
	cmp r1, #0
	beq .L080A8AA8
	mov r5, r8
	ldrh r3, [r5, #4]
.L080A8AA8:
	adds r0, r4, #0
	ldr r2, .L080A8ADC @ =0x06003000
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8AE0
	cmp r1, #0
	beq .L080A8ACA
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8ACA:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	ldr r4, [sp, #0x190]
	adds r4, #0x9c
	str r4, [sp, #0x1b4]
	b .L080A9224
	.align 2, 0
.L080A8AD8: .4byte 0x00000151
.L080A8ADC: .4byte 0x06003000
.L080A8AE0:
	mov r8, r1
	add r1, sp, #0x134
	str r6, [r1]
	ldr r2, [r7]
	mov r5, r8
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x130
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x130
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A8B00
	adds r1, r5, #0
.L080A8B00:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8B20
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0x1bc]
	cmp r0, #0
	bne .L080A8B1C
	adds r0, r4, #0
	bl func_080D3BC0
.L080A8B1C:
	ldr r3, [r7]
	b .L080A8B26
.L080A8B20:
	movs r0, #0
	movs r6, #0
	str r6, [sp, #0x1bc]
.L080A8B26:
	adds r5, r0, #0
	mov sl, r5
	adds r2, r3, #0
	mov r3, sl
	ldr r0, [sp, #0x190]
	adds r0, #0x9c
	str r0, [sp, #0x1b4]
	cmp r2, r8
	beq .L080A8B50
.L080A8B38:
	cmp r3, #0
	beq .L080A8B48
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8B48:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080A8B38
.L080A8B50:
	adds r5, r3, #0
	add r0, sp, #0x134
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8B6E
	cmp r5, #0
	beq .L080A8B6A
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8B6A:
	adds r5, #0x10
	b .L080A8B90
.L080A8B6E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A8B8E
.L080A8B76:
	cmp r2, #0
	beq .L080A8B86
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8B86:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8B76
.L080A8B8E:
	adds r5, r2, #0
.L080A8B90:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A8BA0
.L080A8B9A:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A8B9A
.L080A8BA0:
	cmp r3, #0
	beq .L080A8BAA
	adds r0, r3, #0
	bl free
.L080A8BAA:
	ldr r0, [sp, #0x1bc]
	add r0, sl
	mov r6, sl
	str r6, [r7]
	b .L080A920C
.L080A8BB4:
	ldr r4, [sp]
	add r0, sp, #0x138
	ldr r3, [r4, #0xc]
	mov r1, sp
	movs r2, #0x88
	lsls r2, r2, #1
	bl _call_via_r3
	add r0, sp, #0x138
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r1, [sp, #0x38]
	movs r3, #0
	cmp r1, #0
	beq .L080A8BFC
	mov r0, r8
	ldrh r3, [r0, #4]
.L080A8BFC:
	adds r0, r4, #0
	ldr r2, .L080A8C2C @ =0x06003000
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8C30
.L080A8C0E:
	cmp r1, #0
	beq .L080A8C1E
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8C1E:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
.L080A8C24:
	ldr r5, [sp, #0x190]
	adds r5, #0x9c
	str r5, [sp, #0x1b4]
	b .L080A9224
	.align 2, 0
.L080A8C2C: .4byte 0x06003000
.L080A8C30:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x144
	str r0, [r1]
	ldr r2, [r7]
	mov r6, sl
	subs r0, r6, r2
	asrs r4, r0, #4
	add r0, sp, #0x140
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x140
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A8C52
	adds r1, r5, #0
.L080A8C52:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8C72
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A8C6E
	mov r0, r8
	bl func_080D3BC0
.L080A8C6E:
	ldr r3, [r7]
	b .L080A8C76
.L080A8C72:
	movs r0, #0
	mov r8, r0
.L080A8C76:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r0, [sp, #0x190]
	adds r0, #0x9c
	str r0, [sp, #0x1b4]
	cmp r2, sl
	beq .L080A8CA0
.L080A8C88:
	cmp r3, #0
	beq .L080A8C98
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8C98:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A8C88
.L080A8CA0:
	adds r5, r3, #0
	add r0, sp, #0x144
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8CBE
	cmp r5, #0
	beq .L080A8CBA
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8CBA:
	adds r5, #0x10
	b .L080A8CE0
.L080A8CBE:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A8CDE
.L080A8CC6:
	cmp r2, #0
	beq .L080A8CD6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8CD6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8CC6
.L080A8CDE:
	adds r5, r2, #0
.L080A8CE0:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A8CF0
.L080A8CEA:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A8CEA
.L080A8CF0:
	cmp r3, #0
	beq .L080A8CFA
	adds r0, r3, #0
	bl free
.L080A8CFA:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r6, [sp, #0x1bc]
	str r6, [r7]
	b .L080A920C
.L080A8D04:
	ldr r0, [sp, #0x190]
	adds r0, #0x9c
	str r0, [sp, #0x1b4]
	cmp r6, #1
	beq .L080A8D10
	b .L080A8E26
.L080A8D10:
	add r0, sp, #0x30
	ldr r1, .L080A8D40 @ =0x06007D00
	ldr r2, .L080A8D44 @ =0x06007C80
	movs r3, #0x80
	bl func_08008F0C
	add r1, sp, #0x30
	mov sb, r1
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8D48
	cmp r1, #0
	beq .L080A8D38
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8D38:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A8E26
	.align 2, 0
.L080A8D40: .4byte 0x06007D00
.L080A8D44: .4byte 0x06007C80
.L080A8D48:
	mov r8, r1
	add r1, sp, #0x14c
	str r6, [r1]
	ldr r2, [r7]
	mov r5, r8
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x148
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x148
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A8D68
	adds r1, r5, #0
.L080A8D68:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8D88
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080A8D84
	mov r0, sl
	bl func_080D3BC0
.L080A8D84:
	ldr r3, [r7]
	b .L080A8D8C
.L080A8D88:
	movs r0, #0
	mov sl, r0
.L080A8D8C:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	mov ip, r5
	ldr r0, [sp, #0x190]
	adds r0, #0x9c
	str r0, [sp, #0x1b4]
	cmp r2, r8
	beq .L080A8DBA
.L080A8D9E:
	mov r1, ip
	cmp r1, #0
	beq .L080A8DB0
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080A8DB0:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080A8D9E
.L080A8DBA:
	mov r5, ip
	add r0, sp, #0x14c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8DD8
	cmp r5, #0
	beq .L080A8DD4
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A8DD4:
	adds r5, #0x10
	b .L080A8E00
.L080A8DD8:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080A8DFE
.L080A8DE0:
	cmp r2, #0
	beq .L080A8DF0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080A8DF0:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080A8DE0
.L080A8DFE:
	adds r5, r2, #0
.L080A8E00:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A8E10
.L080A8E0A:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A8E0A
.L080A8E10:
	cmp r3, #0
	beq .L080A8E1A
	adds r0, r3, #0
	bl free
.L080A8E1A:
	ldr r0, [sp, #0x1bc]
	add r0, sl
	ldr r1, [sp, #0x1bc]
	str r1, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A8E26:
	add r5, sp, #0x30
	movs r0, #0
	str r0, [sp, #0x30]
	strh r0, [r5, #4]
	add r2, sp, #0x38
	mov r8, r2
	str r0, [sp, #0x38]
	strh r0, [r2, #4]
	add r1, sp, #0x40
	str r0, [sp, #0x40]
	strh r0, [r1, #4]
	add r1, sp, #0x48
	str r0, [sp, #0x48]
	strh r0, [r1, #4]
	cmp r6, #1
	bne .L080A8E48
	b .L080A8F8A
.L080A8E48:
	cmp r6, #1
	bgt .L080A8E52
	cmp r6, #0
	beq .L080A8E5A
	b .L080A9224
.L080A8E52:
	cmp r6, #2
	bne .L080A8E58
	b .L080A90C8
.L080A8E58:
	b .L080A9224
.L080A8E5A:
	ldr r4, [sp]
	add r0, sp, #0x150
	ldr r3, [r4, #0xc]
	mov r1, sp
	ldr r2, .L080A8EC4 @ =0x0000012F
	bl _call_via_r3
	add r0, sp, #0x150
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r1, [sp, #0x38]
	movs r3, #0
	cmp r1, #0
	beq .L080A8EA0
	mov r5, r8
	ldrh r3, [r5, #4]
.L080A8EA0:
	adds r0, r4, #0
	ldr r2, .L080A8EC8 @ =0x06007C00
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8ECC
	cmp r1, #0
	bne .L080A8EB8
	b .L080A9132
.L080A8EB8:
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	b .L080A912E
	.align 2, 0
.L080A8EC4: .4byte 0x0000012F
.L080A8EC8: .4byte 0x06007C00
.L080A8ECC:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x15c
	str r0, [r1]
	ldr r2, [r7]
	mov r4, sl
	subs r0, r4, r2
	asrs r4, r0, #4
	add r0, sp, #0x158
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x158
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A8EEE
	adds r1, r5, #0
.L080A8EEE:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A8F0E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A8F0A
	mov r0, r8
	bl func_080D3BC0
.L080A8F0A:
	ldr r3, [r7]
	b .L080A8F12
.L080A8F0E:
	movs r0, #0
	mov r8, r0
.L080A8F12:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L080A8F36
.L080A8F1E:
	cmp r3, #0
	beq .L080A8F2E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8F2E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A8F1E
.L080A8F36:
	adds r5, r3, #0
	add r0, sp, #0x15c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A8F54
	cmp r5, #0
	beq .L080A8F50
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8F50:
	adds r5, #0x10
	b .L080A8F76
.L080A8F54:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A8F74
.L080A8F5C:
	cmp r2, #0
	beq .L080A8F6C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A8F6C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A8F5C
.L080A8F74:
	adds r5, r2, #0
.L080A8F76:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	bne .L080A8F82
	b .L080A91FA
.L080A8F82:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A8F82
	b .L080A91FA
.L080A8F8A:
	ldr r4, [sp]
	add r0, sp, #0x160
	ldr r3, [r4, #0xc]
	mov r1, sp
	ldr r2, .L080A8FF4 @ =0x00000151
	bl _call_via_r3
	add r0, sp, #0x160
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r1, [sp, #0x38]
	movs r3, #0
	cmp r1, #0
	beq .L080A8FD0
	mov r5, r8
	ldrh r3, [r5, #4]
.L080A8FD0:
	adds r0, r4, #0
	ldr r2, .L080A8FF8 @ =0x06007C00
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A8FFC
	cmp r1, #0
	bne .L080A8FE8
	b .L080A9132
.L080A8FE8:
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	b .L080A912E
	.align 2, 0
.L080A8FF4: .4byte 0x00000151
.L080A8FF8: .4byte 0x06007C00
.L080A8FFC:
	mov r8, r1
	add r1, sp, #0x16c
	str r6, [r1]
	ldr r2, [r7]
	mov r4, r8
	subs r0, r4, r2
	asrs r4, r0, #4
	add r0, sp, #0x168
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x168
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A901C
	adds r1, r5, #0
.L080A901C:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A903C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	str r4, [sp, #0x1bc]
	cmp r0, #0
	bne .L080A9038
	adds r0, r4, #0
	bl func_080D3BC0
.L080A9038:
	ldr r3, [r7]
	b .L080A9042
.L080A903C:
	movs r0, #0
	movs r5, #0
	str r5, [sp, #0x1bc]
.L080A9042:
	adds r5, r0, #0
	mov sl, r5
	adds r2, r3, #0
	mov r3, sl
	cmp r2, r8
	beq .L080A9066
.L080A904E:
	cmp r3, #0
	beq .L080A905E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A905E:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080A904E
.L080A9066:
	adds r5, r3, #0
	add r0, sp, #0x16c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A9084
	cmp r5, #0
	beq .L080A9080
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A9080:
	adds r5, #0x10
	b .L080A90A6
.L080A9084:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A90A4
.L080A908C:
	cmp r2, #0
	beq .L080A909C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A909C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A908C
.L080A90A4:
	adds r5, r2, #0
.L080A90A6:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A90B6
.L080A90B0:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A90B0
.L080A90B6:
	cmp r3, #0
	beq .L080A90C0
	adds r0, r3, #0
	bl free
.L080A90C0:
	ldr r0, [sp, #0x1bc]
	add r0, sl
	mov r1, sl
	b .L080A920A
.L080A90C8:
	ldr r4, [sp]
	add r0, sp, #0x170
	ldr r3, [r4, #0xc]
	mov r1, sp
	movs r2, #0x88
	lsls r2, r2, #1
	bl _call_via_r3
	add r0, sp, #0x170
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	ldr r1, [sp, #0x38]
	movs r3, #0
	cmp r1, #0
	beq .L080A9110
	mov r0, r8
	ldrh r3, [r0, #4]
.L080A9110:
	adds r0, r4, #0
	ldr r2, .L080A913C @ =0x06007C00
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A9140

	non_word_aligned_thumb_func_start sub_080A9122
sub_080A9122: @ 0x080A9122
	cmp r1, #0
	beq .L080A9132
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
.L080A912E:
	ldr r1, [r1]
	str r1, [r0]
.L080A9132:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A9224
	.align 2, 0
.L080A913C: .4byte 0x06007C00
.L080A9140:
	mov sl, r1
	movs r0, #1
	add r1, sp, #0x17c
	str r0, [r1]
	ldr r2, [r7]
	mov r5, sl
	subs r0, r5, r2
	asrs r4, r0, #4
	add r0, sp, #0x178
	str r4, [r0]
	adds r5, r1, #0
	ldr r0, [r1]
	add r1, sp, #0x178
	adds r3, r2, #0
	cmp r4, r0
	bhs .L080A9162
	adds r1, r5, #0
.L080A9162:
	ldr r0, [r1]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A9182
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A917E
	mov r0, r8
	bl func_080D3BC0
.L080A917E:
	ldr r3, [r7]
	b .L080A9186
.L080A9182:
	movs r0, #0
	mov r8, r0
.L080A9186:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	cmp r2, sl
	beq .L080A91AA
.L080A9192:
	cmp r3, #0
	beq .L080A91A2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A91A2:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, sl
	bne .L080A9192
.L080A91AA:
	adds r5, r3, #0
	add r0, sp, #0x17c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A91C8
	cmp r5, #0
	beq .L080A91C4
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A91C4:
	adds r5, #0x10
	b .L080A91EA
.L080A91C8:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A91E8
.L080A91D0:
	cmp r2, #0
	beq .L080A91E0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A91E0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A91D0
.L080A91E8:
	adds r5, r2, #0
.L080A91EA:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A91FA
.L080A91F4:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A91F4
.L080A91FA:
	cmp r3, #0
	beq .L080A9204
	adds r0, r3, #0
	bl free
.L080A9204:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r1, [sp, #0x1bc]
.L080A920A:
	str r1, [r7]
.L080A920C:
	str r5, [r7, #4]
	str r0, [r7, #0xc]
	b .L080A9224
.L080A9212:
	ldr r1, .L080A9238 @ =gUnk_08107154
	ldr r0, [sp, #0x190]
	movs r2, #0
	adds r3, r7, #0
	bl func_080A5AB0
	ldr r2, [sp, #0x190]
	adds r2, #0x9c
	str r2, [sp, #0x1b4]
.L080A9224:
	ldr r3, [sp, #0x190]
	ldr r0, [r3]
	cmp r0, #8
	bne .L080A922E
	b .L080A93F2
.L080A922E:
	cmp r0, #8
	bgt .L080A923C
	cmp r0, #6
	beq .L080A924C
	b .L080A93F2
	.align 2, 0
.L080A9238: .4byte gUnk_08107154
.L080A923C:
	cmp r0, #0x1d
	beq .L080A9242
	b .L080A93F2
.L080A9242:
	ldr r1, [sp, #0x190]
	adds r1, #0x98
	movs r0, #1
	strb r0, [r1]
	b .L080A93F2
.L080A924C:
	ldr r0, [sp, #0x194]
	adds r0, #0x5d
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9270
	ldr r1, .L080A9488 @ =gUnk_0810725C
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A9270
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	bl Unpack
.L080A9270:
	ldr r0, [sp, #0x194]
	adds r0, #0x54
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9294
	ldr r1, .L080A948C @ =gUnk_0810730C
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A9294
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	bl Unpack
.L080A9294:
	ldr r1, [sp, #0x194]
	adds r1, #0x4e
	ldrh r0, [r1]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1e
	adds r4, r1, #0
	cmp r0, #1
	bne .L080A92BA
	ldr r1, .L080A9490 @ =gUnk_08107230
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A92BA
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r1, r1, r6
	bl Unpack
.L080A92BA:
	ldr r0, [sp, #0x194]
	adds r0, #0x4f
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A92DE
	ldr r1, .L080A9490 @ =gUnk_08107230
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A92DE
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl Unpack
.L080A92DE:
	ldrb r0, [r4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9314
	ldr r1, .L080A9494 @ =gUnk_08107204
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A92FE
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	bl Unpack
.L080A92FE:
	ldr r1, .L080A9498 @ =gUnk_081072B4
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A9314
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	bl Unpack
.L080A9314:
	ldr r0, [sp, #0x194]
	adds r0, #0x51
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9338
	ldr r1, .L080A949C @ =gUnk_08107288
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A9338
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	bl Unpack
.L080A9338:
	ldr r0, [sp, #0x194]
	adds r0, #0x52
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A935C
	ldr r1, .L080A9494 @ =gUnk_08107204
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A935C
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r1, r1, r6
	bl Unpack
.L080A935C:
	ldr r0, [sp, #0x194]
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9396
	ldr r1, .L080A9494 @ =gUnk_08107204
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A9380
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	bl Unpack
.L080A9380:
	ldr r1, .L080A9498 @ =gUnk_081072B4
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A9396
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	bl Unpack
.L080A9396:
	ldr r0, [sp, #0x194]
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A93BA
	ldr r1, .L080A9494 @ =gUnk_08107204
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A93BA
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r1, r1, r4
	bl Unpack
.L080A93BA:
	ldr r0, [sp, #0x194]
	adds r0, #0x4c
	ldrb r0, [r0]
	lsrs r0, r0, #6
	cmp r0, #1
	bne .L080A93F2
	ldr r1, .L080A94A0 @ =gUnk_081072E0
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A93DC
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r5, #0xc0
	lsls r5, r5, #0x13
	adds r1, r1, r5
	bl Unpack
.L080A93DC:
	ldr r1, .L080A9490 @ =gUnk_08107230
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq .L080A93F2
	ldr r1, [r1, #0x1c]
	lsls r1, r1, #5
	movs r6, #0xc0
	lsls r6, r6, #0x13
	adds r1, r1, r6
	bl Unpack
.L080A93F2:
	ldr r0, [sp, #0x1b4]
	bl func_080AAF10
	mov sl, r0
	ldr r0, [sp, #0x1b4]
	bl func_080AAF1C
	str r0, [sp, #0x19c]
	mov r1, sl
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080A9410
	b .L080A958C
.L080A9410:
	mov r0, sp
	adds r0, #0x30
	str r0, [sp, #0x1a0]
.L080A9416:
	mov r1, sl
	ldr r0, [r1, #0x10]
	movs r1, #0
	bl func_080AAF28
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, [sp]
	add r0, sp, #0x180
	ldr r3, [r4, #0xc]
	mov r1, sp
	bl _call_via_r3
	add r0, sp, #0x180
	ldr r0, [r0]
	ldrh r2, [r0]
	ldr r0, [sp, #0x1a0]
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	ldr r0, [sp, #0x38]
	adds r1, r0, #0
	mov r3, sl
	ldrh r2, [r3, #0x14]
	add r0, sp, #0x38
	movs r3, #0
	cmp r1, #0
	beq .L080A9454
	ldrh r3, [r0, #4]
.L080A9454:
	lsls r2, r2, #5
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r2, r2, r4
	add r0, sp, #0x50
	bl func_08008F0C
	add r5, sp, #0x50
	mov sb, r5
	ldr r1, [r7, #4]
	ldr r0, [r7, #0xc]
	cmp r1, r0
	beq .L080A94A4
	cmp r1, #0
	beq .L080A947E
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A947E:
	ldr r0, [r7, #4]
	adds r0, #0x10
	str r0, [r7, #4]
	b .L080A9574
	.align 2, 0
.L080A9488: .4byte gUnk_0810725C
.L080A948C: .4byte gUnk_0810730C
.L080A9490: .4byte gUnk_08107230
.L080A9494: .4byte gUnk_08107204
.L080A9498: .4byte gUnk_081072B4
.L080A949C: .4byte gUnk_08107288
.L080A94A0: .4byte gUnk_081072E0
.L080A94A4:
	str r1, [sp, #0x1c0]
	movs r0, #1
	add r5, sp, #0x18c
	str r0, [r5]
	ldr r2, [r7]
	ldr r4, [sp, #0x1c0]
	subs r0, r4, r2
	asrs r4, r0, #4
	add r0, sp, #0x188
	str r4, [r0]
	ldr r1, [r5]
	adds r3, r2, #0
	cmp r4, r1
	bhs .L080A94C2
	adds r0, r5, #0
.L080A94C2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080A94E2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080A94DE
	mov r0, r8
	bl func_080D3BC0
.L080A94DE:
	ldr r3, [r7]
	b .L080A94E6
.L080A94E2:
	movs r0, #0
	mov r8, r0
.L080A94E6:
	adds r5, r0, #0
	str r5, [sp, #0x1bc]
	adds r2, r3, #0
	adds r3, r5, #0
	ldr r5, [sp, #0x1c0]
	cmp r2, r5
	beq .L080A950E
.L080A94F4:
	cmp r3, #0
	beq .L080A9504
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A9504:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x1c0]
	cmp r2, r6
	bne .L080A94F4
.L080A950E:
	adds r5, r3, #0
	add r0, sp, #0x18c
	ldr r0, [r0]
	cmp r0, #1
	bne .L080A952C
	cmp r5, #0
	beq .L080A9528
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080A9528:
	adds r5, #0x10
	b .L080A954E
.L080A952C:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080A954C
.L080A9534:
	cmp r2, #0
	beq .L080A9544
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080A9544:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080A9534
.L080A954C:
	adds r5, r2, #0
.L080A954E:
	ldr r1, [r7, #4]
	ldr r3, [r7]
	adds r0, r3, #0
	cmp r3, r1
	beq .L080A955E
.L080A9558:
	adds r0, #0x10
	cmp r0, r1
	bne .L080A9558
.L080A955E:
	cmp r3, #0
	beq .L080A9568
	adds r0, r3, #0
	bl free
.L080A9568:
	ldr r0, [sp, #0x1bc]
	add r0, r8
	ldr r6, [sp, #0x1bc]
	str r6, [r7]
	str r5, [r7, #4]
	str r0, [r7, #0xc]
.L080A9574:
	mov r0, sl
	bl func_080E2B28
	mov sl, r0
	mov r1, sl
	ldr r0, [sp, #0x19c]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080A958C
	b .L080A9416
.L080A958C:
	ldr r0, .L080A95A0 @ =vtable_unk_080E5A28
	str r0, [sp]
	add sp, #0x1c4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080A95A0: .4byte vtable_unk_080E5A28

	thumb_func_start func_080A95A4
func_080A95A4: @ 0x080A95A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xe8
	adds r7, r0, #0
	str r1, [sp, #0xd8]
	mov sb, r2
	adds r4, r7, #0
	adds r4, #0x94
	ldr r0, [r4]
	ldr r1, .L080A95EC @ =0x0000214C
	adds r1, r0, r1
	str r1, [sp, #0xdc]
	ldr r0, [r7, #4]
	bl GetMapData
	adds r5, r0, #0
	ldr r0, [r4]
	adds r0, #0x10
	bl func_0800E324
	adds r6, r0, #0
	ldr r0, [r4]
	ldr r4, [r0, #8]
	ldr r1, .L080A95F0 @ =gUnk_086678A0
	mov r0, sp
	bl func_0805E6CC
	ldr r0, [r7]
	cmp r0, #0x2e
	bgt .L080A95F4
	cmp r0, #0x2d
	bge .L080A95FA
	b .L080A960C
	.align 2, 0
.L080A95EC: .4byte 0x0000214C
.L080A95F0: .4byte gUnk_086678A0
.L080A95F4:
	cmp r0, #0x2f
	beq .L080A9604
	b .L080A960C
.L080A95FA:
	movs r6, #1
	movs r2, #1
	str r2, [sp, #0xd8]
	movs r4, #0
	b .L080A960C
.L080A9604:
	movs r6, #3
	movs r3, #1
	str r3, [sp, #0xd8]
	movs r4, #4
.L080A960C:
	ldr r0, [r7, #4]
	cmp r0, #0x10
	beq .L080A9626
	cmp r0, #0x11
	beq .L080A9664
	ldr r4, [sp, #0xd8]
	cmp r4, #0
	blt .L080A96DE
	cmp r4, #2
	ble .L080A96B8
	cmp r4, #3
	beq .L080A96CC
	b .L080A96DE
.L080A9626:
	ldr r0, [sp, #0xd8]
	cmp r0, #0
	blt .L080A96DE
	cmp r0, #2
	ble .L080A9636
	cmp r0, #3
	beq .L080A964C
	b .L080A96DE
.L080A9636:
	cmp r4, #0
	bne .L080A9642
	ldr r0, [r5, #4]
	mov r1, sb
	lsls r2, r1, #2
	b .L080A96BE
.L080A9642:
	ldr r0, .L080A9648 @ =gUnk_08714A30
	b .L080A96BA
	.align 2, 0
.L080A9648: .4byte gUnk_08714A30
.L080A964C:
	cmp r4, #0
	bne .L080A9658
	ldr r0, [r5, #8]
	mov r4, sb
	lsls r2, r4, #2
	b .L080A96BE
.L080A9658:
	ldr r0, .L080A9660 @ =gUnk_08714B60
	mov r1, sb
	lsls r2, r1, #2
	b .L080A96BE
	.align 2, 0
.L080A9660: .4byte gUnk_08714B60
.L080A9664:
	ldr r0, [sp, #0xdc]
	adds r0, #0x5d
	ldrb r0, [r0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A967C
	ldr r0, .L080A9678 @ =gUnk_08714BEC
	b .L080A96BA
	.align 2, 0
.L080A9678: .4byte gUnk_08714BEC
.L080A967C:
	ldr r0, [sp, #0xd8]
	cmp r0, #0
	blt .L080A96DE
	cmp r0, #2
	ble .L080A968C
	cmp r0, #3
	beq .L080A96A0
	b .L080A96DE
.L080A968C:
	cmp r4, #0
	bne .L080A9698
	ldr r0, [r5, #4]
	mov r1, sb
	lsls r2, r1, #2
	b .L080A96BE
.L080A9698:
	ldr r0, .L080A969C @ =gUnk_08716F84
	b .L080A96BA
	.align 2, 0
.L080A969C: .4byte gUnk_08716F84
.L080A96A0:
	cmp r4, #0
	bne .L080A96AC
	ldr r0, [r5, #8]
	mov r4, sb
	lsls r2, r4, #2
	b .L080A96BE
.L080A96AC:
	ldr r0, .L080A96B4 @ =gUnk_087170B8
	mov r1, sb
	lsls r2, r1, #2
	b .L080A96BE
	.align 2, 0
.L080A96B4: .4byte gUnk_087170B8
.L080A96B8:
	ldr r0, [r5, #4]
.L080A96BA:
	mov r3, sb
	lsls r2, r3, #2
.L080A96BE:
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	bl Unpack
	b .L080A96DE
.L080A96CC:
	ldr r0, [r5, #8]
	mov r4, sb
	lsls r2, r4, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	bl Unpack
.L080A96DE:
	ldr r0, [r7, #4]
	movs r1, #0x9c
	adds r1, r1, r7
	mov r8, r1
	cmp r0, #0x33
	bls .L080A96EC
	b .L080A9E42
.L080A96EC:
	lsls r0, r0, #2
	ldr r1, .L080A96F8 @ =.L080A96FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080A96F8: .4byte .L080A96FC
.L080A96FC: @ jump table
	.4byte .L080A97CC @ case 0
	.4byte .L080A98DC @ case 1
	.4byte .L080A9E42 @ case 2
	.4byte .L080A9E42 @ case 3
	.4byte .L080A9B44 @ case 4
	.4byte .L080A9E42 @ case 5
	.4byte .L080A9B44 @ case 6
	.4byte .L080A9E42 @ case 7
	.4byte .L080A9E42 @ case 8
	.4byte .L080A9E42 @ case 9
	.4byte .L080A9E42 @ case 10
	.4byte .L080A9E42 @ case 11
	.4byte .L080A996C @ case 12
	.4byte .L080A9E42 @ case 13
	.4byte .L080A9E42 @ case 14
	.4byte .L080A9E42 @ case 15
	.4byte .L080A9E42 @ case 16
	.4byte .L080A9E42 @ case 17
	.4byte .L080A9E42 @ case 18
	.4byte .L080A9E42 @ case 19
	.4byte .L080A9E42 @ case 20
	.4byte .L080A9E42 @ case 21
	.4byte .L080A9E42 @ case 22
	.4byte .L080A9E42 @ case 23
	.4byte .L080A9E42 @ case 24
	.4byte .L080A9E42 @ case 25
	.4byte .L080A9E42 @ case 26
	.4byte .L080A9E42 @ case 27
	.4byte .L080A9E42 @ case 28
	.4byte .L080A9E42 @ case 29
	.4byte .L080A9E42 @ case 30
	.4byte .L080A9E42 @ case 31
	.4byte .L080A9E42 @ case 32
	.4byte .L080A9E42 @ case 33
	.4byte .L080A9E42 @ case 34
	.4byte .L080A9E42 @ case 35
	.4byte .L080A9E42 @ case 36
	.4byte .L080A9E42 @ case 37
	.4byte .L080A9E42 @ case 38
	.4byte .L080A9E42 @ case 39
	.4byte .L080A9E42 @ case 40
	.4byte .L080A9E42 @ case 41
	.4byte .L080A9CBC @ case 42
	.4byte .L080A9CBC @ case 43
	.4byte .L080A9E42 @ case 44
	.4byte .L080A9E42 @ case 45
	.4byte .L080A9E42 @ case 46
	.4byte .L080A9E42 @ case 47
	.4byte .L080A9E42 @ case 48
	.4byte .L080A9E42 @ case 49
	.4byte .L080A9E42 @ case 50
	.4byte .L080A99E8 @ case 51
.L080A97CC:
	ldr r2, [sp, #0xd8]
	cmp r2, #3
	beq .L080A97F4
	ldr r0, .L080A97F0 @ =gUnk_086D6368
	mov r3, sb
	lsls r4, r3, #2
	adds r5, r7, #0
	adds r5, #0x1c
	adds r1, r5, r4
	ldr r1, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0x60
	bl func_08008E64
	b .L080A980E
	.align 2, 0
.L080A97F0: .4byte gUnk_086D6368
.L080A97F4:
	ldr r0, .L080A981C @ =gUnk_086D6548
	mov r3, sb
	lsls r4, r3, #2
	adds r5, r7, #0
	adds r5, #0x1c
	adds r1, r5, r4
	ldr r1, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0x60
	bl func_08008E64
.L080A980E:
	cmp r6, #1
	beq .L080A9838
	cmp r6, #1
	bgt .L080A9820
	cmp r6, #0
	beq .L080A9826
	b .L080A9862
	.align 2, 0
.L080A981C: .4byte gUnk_086D6548
.L080A9820:
	cmp r6, #2
	beq .L080A9850
	b .L080A9862
.L080A9826:
	ldr r0, .L080A9834 @ =gUnk_08699FF4
	adds r1, r5, r4
	ldr r1, [r1]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	b .L080A9844
	.align 2, 0
.L080A9834: .4byte gUnk_08699FF4
.L080A9838:
	ldr r0, .L080A984C @ =gUnk_0869B284
	adds r1, r5, r4
	ldr r1, [r1]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r1, r2
.L080A9844:
	movs r2, #0x80
	bl func_08008E64
	b .L080A9862
	.align 2, 0
.L080A984C: .4byte gUnk_0869B284
.L080A9850:
	ldr r0, .L080A98CC @ =gUnk_08698B00
	adds r1, r5, r4
	ldr r1, [r1]
	movs r3, #0xb0
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0x80
	bl func_08008E64
.L080A9862:
	movs r0, #0x9c
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [sp, #0xd8]
	cmp r1, #3
	beq .L080A9870
	b .L080A9E42
.L080A9870:
	adds r4, r5, r4
	add r2, sp, #0x70
	movs r3, #0xa
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	movs r3, #0xa0
	lsls r3, r3, #2
	ldrh r1, [r2]
	ldr r0, .L080A98D0 @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r3
	strh r0, [r2]
	ldr r0, [r4]
	mov sl, r2
	ldr r6, .L080A98D4 @ =0x000014A5
	str r6, [sp, #0x74]
	add r2, sp, #0x30
	add r3, sp, #0x50
	cmp r2, r3
	beq .L080A98A8
.L080A98A0:
	strh r6, [r2]
	adds r2, #2
	cmp r2, r3
	bne .L080A98A0
.L080A98A8:
	movs r6, #9
	movs r2, #0x90
	lsls r2, r2, #1
	adds r4, r0, r2
	ldr r5, .L080A98D8 @ =func_03000C2C
.L080A98B2:
	mov r0, sl
	ldr r3, [r0]
	adds r0, r4, #0
	add r1, sp, #0x30
	adds r2, r4, #0
	bl _call_via_r5
	adds r4, #0x20
	adds r6, #1
	cmp r6, #0xf
	blo .L080A98B2
	b .L080A9E42
	.align 2, 0
.L080A98CC: .4byte gUnk_08698B00
.L080A98D0: .4byte 0xFFFFFC1F
.L080A98D4: .4byte 0x000014A5
.L080A98D8: .4byte func_03000C2C
.L080A98DC:
	ldr r0, .L080A995C @ =gUnk_086D74F8
	mov r1, sb
	lsls r2, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r4, r1, r2
	ldr r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0x60
	bl func_08008E64
	movs r3, #0x9c
	adds r3, r3, r7
	mov r8, r3
	ldr r0, [sp, #0xd8]
	cmp r0, #3
	beq .L080A9904
	b .L080A9E42
.L080A9904:
	add r2, sp, #0x78
	movs r3, #0xa
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2]
	movs r3, #0xa0
	lsls r3, r3, #2
	ldrh r1, [r2]
	ldr r0, .L080A9960 @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r3
	strh r0, [r2]
	ldr r0, [r4]
	mov sl, r2
	ldr r4, .L080A9964 @ =0x000014A5
	str r4, [sp, #0x7c]
	add r2, sp, #0x30
	add r3, sp, #0x50
	cmp r2, r3
	beq .L080A993A
.L080A9932:
	strh r4, [r2]
	adds r2, #2
	cmp r2, r3
	bne .L080A9932
.L080A993A:
	movs r5, #8
	movs r1, #0x80
	lsls r1, r1, #1
	adds r4, r0, r1
	ldr r6, .L080A9968 @ =func_03000C2C
.L080A9944:
	mov r2, sl
	ldr r3, [r2]
	adds r0, r4, #0
	add r1, sp, #0x30
	adds r2, r4, #0
	bl _call_via_r6
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xf
	blo .L080A9944
	b .L080A9E42
	.align 2, 0
.L080A995C: .4byte gUnk_086D74F8
.L080A9960: .4byte 0xFFFFFC1F
.L080A9964: .4byte 0x000014A5
.L080A9968: .4byte func_03000C2C
.L080A996C:
	ldr r3, [sp, #0xd8]
	cmp r3, #3
	beq .L080A99A0
	cmp r6, #0
	beq .L080A997C
	cmp r6, #2
	beq .L080A9984
	b .L080A9B7A
.L080A997C:
	ldr r0, .L080A9980 @ =gUnk_086EACE4
	b .L080A99AC
	.align 2, 0
.L080A9980: .4byte gUnk_086EACE4
.L080A9984:
	ldr r0, .L080A999C @ =gUnk_086EAD24
	mov r3, sb
	lsls r2, r3, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0xc0
	movs r2, #0x20
	bl func_08008E64
	b .L080A9B7A
	.align 2, 0
.L080A999C: .4byte gUnk_086EAD24
.L080A99A0:
	cmp r6, #0
	beq .L080A99AA
	cmp r6, #2
	beq .L080A99CC
	b .L080A9E3C
.L080A99AA:
	ldr r0, .L080A99C8 @ =gUnk_086EAD04
.L080A99AC:
	mov r1, sb
	lsls r2, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0xc0
	movs r2, #0x20
	bl func_08008E64
	movs r2, #0x9c
	adds r2, r2, r7
	mov r8, r2
	b .L080A9E42
	.align 2, 0
.L080A99C8: .4byte gUnk_086EAD04
.L080A99CC:
	ldr r0, .L080A99E4 @ =gUnk_086EAD44
	mov r3, sb
	lsls r2, r3, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r2
	ldr r1, [r1]
	adds r1, #0xc0
	movs r2, #0x20
	bl func_08008E64
	b .L080A9B7A
	.align 2, 0
.L080A99E4: .4byte gUnk_086EAD44
.L080A99E8:
	add r0, sp, #0x30
	mov r8, r0
	movs r0, #0
	str r0, [sp, #0x30]
	mov r1, r8
	strh r0, [r1, #4]
	add r1, sp, #0x38
	str r0, [sp, #0x38]
	strh r0, [r1, #4]
	add r2, sp, #0x40
	mov sl, r2
	str r0, [sp, #0x40]
	strh r0, [r2, #4]
	add r1, sp, #0x48
	str r0, [sp, #0x48]
	strh r0, [r1, #4]
	cmp r6, #1
	beq .L080A9A80
	cmp r6, #1
	bgt .L080A9A16
	cmp r6, #0
	beq .L080A9A1C
	b .L080A9B6E
.L080A9A16:
	cmp r6, #2
	beq .L080A9AE4
	b .L080A9B7A
.L080A9A1C:
	ldr r5, [sp]
	add r4, sp, #0x80
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080A9A7C @ =0x0000012F
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	ldr r3, [sp, #0x40]
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9A72
	mov r4, sl
	ldrh r2, [r4, #4]
.L080A9A72:
	adds r0, r3, #0
	bl func_08008E64
	b .L080A9E3C
	.align 2, 0
.L080A9A7C: .4byte 0x0000012F
.L080A9A80:
	ldr r5, [sp]
	add r4, sp, #0x88
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080A9AE0 @ =0x00000151
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	ldr r3, [sp, #0x40]
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9AD6
	mov r4, sl
	ldrh r2, [r4, #4]
.L080A9AD6:
	adds r0, r3, #0
	bl func_08008E64
	b .L080A9E3C
	.align 2, 0
.L080A9AE0: .4byte 0x00000151
.L080A9AE4:
	ldr r5, [sp]
	add r4, sp, #0x90
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0x88
	lsls r2, r2, #1
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	ldr r3, [sp, #0x40]
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9B3C
	mov r4, sl
	ldrh r2, [r4, #4]
.L080A9B3C:
	adds r0, r3, #0
	bl func_08008E64
	b .L080A9E3C
.L080A9B44:
	add r1, sp, #0x30
	mov r8, r1
	movs r0, #0
	str r0, [sp, #0x30]
	strh r0, [r1, #4]
	add r1, sp, #0x38
	str r0, [sp, #0x38]
	strh r0, [r1, #4]
	add r2, sp, #0x40
	mov sl, r2
	str r0, [sp, #0x40]
	strh r0, [r2, #4]
	add r1, sp, #0x48
	str r0, [sp, #0x48]
	strh r0, [r1, #4]
	cmp r6, #1
	beq .L080A9BEA
	cmp r6, #1
	bgt .L080A9B76
	cmp r6, #0
	beq .L080A9B82
.L080A9B6E:
	movs r3, #0x9c
	adds r3, r3, r7
	mov r8, r3
	b .L080A9E42
.L080A9B76:
	cmp r6, #2
	beq .L080A9C52
.L080A9B7A:
	movs r4, #0x9c
	adds r4, r4, r7
	mov r8, r4
	b .L080A9E42
.L080A9B82:
	movs r2, #0x98
	lsls r2, r2, #1
	ldr r0, [sp, #0xd8]
	cmp r0, #3
	beq .L080A9B8E
	subs r2, #1
.L080A9B8E:
	ldr r5, [sp]
	add r4, sp, #0x98
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	ldr r3, [sp, #0x40]
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9BE2
	mov r4, sl
	ldrh r2, [r4, #4]
.L080A9BE2:
	adds r0, r3, #0
	bl func_08008E64
	b .L080A9E3C
.L080A9BEA:
	movs r2, #0xa9
	lsls r2, r2, #1
	ldr r1, [sp, #0xd8]
	cmp r1, #3
	beq .L080A9BF6
	subs r2, #1
.L080A9BF6:
	ldr r5, [sp]
	add r4, sp, #0xa0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r3, [sp, #0x40]
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9C4A
	mov r4, sl
	ldrh r2, [r4, #4]
.L080A9C4A:
	adds r0, r3, #0
	bl func_08008E64
	b .L080A9E3C
.L080A9C52:
	ldr r2, .L080A9CB8 @ =0x00000111
	ldr r1, [sp, #0xd8]
	cmp r1, #3
	beq .L080A9C5C
	subs r2, #1
.L080A9C5C:
	ldr r5, [sp]
	add r4, sp, #0xa8
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r4, sp, #0x50
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	mov r0, r8
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r2, r3}
	stm r0!, {r2, r3}
	ldr r3, [sp, #0x40]
	mov r4, sb
	lsls r1, r4, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	ldr r0, [r0]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9CB0
	mov r4, sl
	ldrh r2, [r4, #4]
.L080A9CB0:
	adds r0, r3, #0
	bl func_08008E64
	b .L080A9E3C
	.align 2, 0
.L080A9CB8: .4byte 0x00000111
.L080A9CBC:
	add r1, sp, #0x30
	mov sl, r1
	movs r0, #0
	str r0, [sp, #0x30]
	strh r0, [r1, #4]
	add r1, sp, #0x38
	str r0, [sp, #0x38]
	strh r0, [r1, #4]
	mov r2, sp
	adds r2, #0x40
	str r2, [sp, #0xe0]
	str r0, [sp, #0x40]
	strh r0, [r2, #4]
	add r1, sp, #0x48
	str r0, [sp, #0x48]
	strh r0, [r1, #4]
	ldr r5, [sp]
	add r4, sp, #0xb0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080AA074 @ =0x00000109
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	add r0, sp, #0x50
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	add r6, sp, #0x50
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sl
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r0, [sp, #0x40]
	adds r3, r0, #0
	mov r0, sb
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	mov r8, r0
	ldr r0, [r0]
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9D38
	ldr r4, [sp, #0xe0]
	ldrh r2, [r4, #4]
.L080A9D38:
	adds r0, r3, #0
	bl func_08008E64
	ldr r5, [sp]
	add r4, sp, #0xb8
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	ldr r2, .L080AA078 @ =0x00000147
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sl
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r3, [sp, #0x40]
	mov r4, r8
	ldr r0, [r4]
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9D8C
	ldr r4, [sp, #0xe0]
	ldrh r2, [r4, #4]
.L080A9D8C:
	adds r0, r3, #0
	bl func_08008E64
	ldr r5, [sp]
	add r4, sp, #0xc0
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0x40
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sl
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r3, [sp, #0x40]
	mov r4, r8
	ldr r0, [r4]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9DE0
	ldr r4, [sp, #0xe0]
	ldrh r2, [r4, #4]
.L080A9DE0:
	adds r0, r3, #0
	bl func_08008E64
	ldr r5, [sp]
	add r4, sp, #0xc8
	adds r0, r4, #0
	ldr r3, [r5, #0xc]
	mov r1, sp
	movs r2, #0xc8
	lsls r2, r2, #1
	bl _call_via_r3
	ldr r0, [r4]
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r5, #0x10]
	mov r1, sp
	bl _call_via_r3
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	mov r1, sl
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r3, [sp, #0x40]
	mov r4, r8
	ldr r0, [r4]
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r0, r2
	movs r2, #0
	cmp r3, #0
	beq .L080A9E36
	ldr r4, [sp, #0xe0]
	ldrh r2, [r4, #4]
.L080A9E36:
	adds r0, r3, #0
	bl func_08008E64
.L080A9E3C:
	movs r0, #0x9c
	adds r0, r0, r7
	mov r8, r0
.L080A9E42:
	ldr r0, [r7]
	cmp r0, #6
	beq .L080A9E4A
	b .L080AA1A6
.L080A9E4A:
	ldr r0, [sp, #0xdc]
	adds r0, #0x5d
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9EA4
	ldr r2, .L080AA07C @ =gUnk_0810725C
	movs r0, #0
	ldr r1, [sp, #0xd8]
	cmp r1, #3
	bne .L080A9E64
	movs r0, #4
.L080A9E64:
	adds r1, r2, #0
	adds r1, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080A9EA4
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r4, r0, #8
	movs r0, #0
	ldr r3, [sp, #0xd8]
	cmp r3, #3
	bne .L080A9E82
	movs r0, #4
.L080A9E82:
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #2
	adds r3, r7, #0
	adds r3, #0x1c
	adds r3, r3, r1
	adds r1, r2, #0
	adds r1, #0x28
	ldrb r2, [r1]
	subs r2, #1
	lsls r2, r2, #5
	ldr r1, [r3]
	adds r1, r1, r2
	lsrs r2, r4, #3
	bl func_08008E64
.L080A9EA4:
	ldr r0, [sp, #0xdc]
	adds r0, #0x54
	ldrb r0, [r0]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9EE0
	ldr r3, .L080AA080 @ =gUnk_0810730C
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080A9EE0
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080A9EE0:
	ldr r1, [sp, #0xdc]
	adds r1, #0x4e
	ldrh r0, [r1]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x1e
	adds r5, r1, #0
	cmp r0, #1
	bne .L080A9F1E
	ldr r3, .L080AA084 @ =gUnk_08107230
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080A9F1E
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080A9F1E:
	ldr r0, [sp, #0xdc]
	adds r0, #0x4f
	ldrb r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9F5A
	ldr r3, .L080AA084 @ =gUnk_08107230
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080A9F5A
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080A9F5A:
	ldrb r0, [r5]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9FC0
	ldr r3, .L080AA088 @ =gUnk_08107204
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080A9F92
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080A9F92:
	ldr r3, .L080AA08C @ =gUnk_081072B4
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080A9FC0
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080A9FC0:
	ldr r0, [sp, #0xdc]
	adds r0, #0x51
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080A9FFC
	ldr r3, .L080AA090 @ =gUnk_08107288
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080A9FFC
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080A9FFC:
	ldr r0, [sp, #0xdc]
	adds r0, #0x52
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080AA038
	ldr r3, .L080AA088 @ =gUnk_08107204
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080AA038
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080AA038:
	ldr r0, [sp, #0xdc]
	adds r0, #0x55
	ldrb r0, [r0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080AA0C6
	ldr r3, .L080AA088 @ =gUnk_08107204
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080AA098
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	b .L080AA094
	.align 2, 0
.L080AA074: .4byte 0x00000109
.L080AA078: .4byte 0x00000147
.L080AA07C: .4byte gUnk_0810725C
.L080AA080: .4byte gUnk_0810730C
.L080AA084: .4byte gUnk_08107230
.L080AA088: .4byte gUnk_08107204
.L080AA08C: .4byte gUnk_081072B4
.L080AA090: .4byte gUnk_08107288
.L080AA094:
	bl func_08008E64
.L080AA098:
	ldr r3, .L080AA25C @ =gUnk_081072B4
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080AA0C6
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080AA0C6:
	ldr r0, [sp, #0xdc]
	adds r0, #0x56
	ldrb r0, [r0]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1e
	cmp r0, #1
	bne .L080AA102
	ldr r3, .L080AA260 @ =gUnk_08107204
	ldr r4, [r3, #0x20]
	cmp r4, #0
	beq .L080AA102
	adds r0, r3, #0
	adds r0, #0x29
	ldrb r2, [r0]
	mov r1, sb
	lsls r0, r1, #2
	adds r1, r7, #0
	adds r1, #0x1c
	adds r1, r1, r0
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #5
	ldr r1, [r1]
	adds r1, r1, r0
	lsls r2, r2, #5
	adds r0, r4, #0
	bl func_08008E64
.L080AA102:
	ldr r0, [sp, #0xdc]
	adds r0, #0x4c
	ldrb r0, [r0]
	lsrs r0, r0, #6
	cmp r0, #1
	bne .L080AA1A6
	ldr r2, .L080AA264 @ =gUnk_081072E0
	movs r0, #0
	ldr r3, [sp, #0xd8]
	cmp r3, #3
	bne .L080AA11A
	movs r0, #4
.L080AA11A:
	adds r1, r2, #0
	adds r1, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080AA15A
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r4, r0, #8
	movs r0, #0
	ldr r3, [sp, #0xd8]
	cmp r3, #3
	bne .L080AA138
	movs r0, #4
.L080AA138:
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #2
	adds r3, r7, #0
	adds r3, #0x1c
	adds r3, r3, r1
	adds r1, r2, #0
	adds r1, #0x28
	ldrb r2, [r1]
	subs r2, #1
	lsls r2, r2, #5
	ldr r1, [r3]
	adds r1, r1, r2
	lsrs r2, r4, #3
	bl func_08008E64
.L080AA15A:
	ldr r2, .L080AA268 @ =gUnk_08107230
	movs r0, #0
	ldr r4, [sp, #0xd8]
	cmp r4, #3
	bne .L080AA166
	movs r0, #4
.L080AA166:
	adds r1, r2, #0
	adds r1, #0x20
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080AA1A6
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r0, [r0]
	lsls r4, r0, #8
	movs r0, #0
	ldr r3, [sp, #0xd8]
	cmp r3, #3
	bne .L080AA184
	movs r0, #4
.L080AA184:
	adds r0, r0, r1
	ldr r0, [r0]
	mov r3, sb
	lsls r1, r3, #2
	adds r3, r7, #0
	adds r3, #0x1c
	adds r3, r3, r1
	adds r1, r2, #0
	adds r1, #0x28
	ldrb r2, [r1]
	subs r2, #1
	lsls r2, r2, #5
	ldr r1, [r3]
	adds r1, r1, r2
	lsrs r2, r4, #3
	bl func_08008E64
.L080AA1A6:
	mov r0, r8
	bl func_080AAF10
	adds r5, r0, #0
	mov r0, r8
	bl func_080AAF1C
	mov r8, r0
	adds r1, r5, #0
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080AA23C
	mov r4, sp
	adds r4, #0x30
	str r4, [sp, #0xe4]
	mov r0, sb
	lsls r1, r0, #2
	adds r0, r7, #0
	adds r0, #0x1c
	adds r0, r0, r1
	mov sl, r0
.L080AA1D4:
	ldr r0, [r5, #0x10]
	adds r6, r5, #0
	adds r6, #0x14
	movs r1, #0
	ldr r2, [sp, #0xd8]
	cmp r2, #3
	bne .L080AA1E4
	movs r1, #1
.L080AA1E4:
	bl func_080AAF28
	adds r2, r0, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r4, [sp]
	add r0, sp, #0xd0
	ldr r3, [r4, #0xc]
	mov r1, sp
	bl _call_via_r3
	add r0, sp, #0xd0
	ldr r0, [r0]
	ldrh r2, [r0]
	ldr r0, [sp, #0xe4]
	ldr r3, [r4, #0x10]
	mov r1, sp
	bl _call_via_r3
	ldr r3, [sp, #0x40]
	ldrb r0, [r6, #2]
	lsls r0, r0, #5
	mov r4, sl
	ldr r1, [r4]
	adds r1, r1, r0
	add r0, sp, #0x40
	movs r2, #0
	cmp r3, #0
	beq .L080AA220
	ldrh r2, [r0, #4]
.L080AA220:
	adds r0, r3, #0
	bl func_08008E64
	adds r0, r5, #0
	bl func_080E2B28
	adds r5, r0, #0
	adds r1, r5, #0
	mov r0, r8
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080AA1D4
.L080AA23C:
	adds r0, r7, #0
	ldr r1, [sp, #0xd8]
	mov r2, sb
	bl func_080AA270
	ldr r0, .L080AA26C @ =vtable_unk_080E5A28
	str r0, [sp]
	add sp, #0xe8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AA25C: .4byte gUnk_081072B4
.L080AA260: .4byte gUnk_08107204
.L080AA264: .4byte gUnk_081072E0
.L080AA268: .4byte gUnk_08107230
.L080AA26C: .4byte vtable_unk_080E5A28

	thumb_func_start func_080AA270
func_080AA270: @ 0x080AA270
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x4c
	adds r6, r0, #0
	adds r5, r1, #0
	mov sb, r2
	adds r4, r6, #0
	adds r4, #0x94
	ldr r0, [r4]
	adds r0, #0x10
	bl func_0800E324
	mov sl, r0
	ldr r1, [r6]
	ldr r0, [r4]
	adds r0, #8
	cmp r1, #0x2e
	beq .L080AA2AC
	cmp r1, #0x2e
	ble .L080AA2A4
	cmp r1, #0x2f
	beq .L080AA2B0
	b .L080AA2B4
.L080AA2A4:
	cmp r1, #0x2c
	blt .L080AA2B4
	movs r7, #0
	b .L080AA2B6
.L080AA2AC:
	movs r7, #1
	b .L080AA2B6
.L080AA2B0:
	movs r7, #2
	b .L080AA2B6
.L080AA2B4:
	ldr r7, [r0]
.L080AA2B6:
	ldr r0, [r6, #4]
	bl GetMapData
	adds r0, #0x24
	ldrb r0, [r0]
	movs r4, #1
	adds r1, r4, #0
	eors r1, r0
	mov r8, r1
	ldr r0, [r6, #4]
	bl GetMapData
	adds r0, #0x24
	ldrb r0, [r0]
	adds r1, r4, #0
	eors r1, r0
	str r1, [sp, #0x48]
	movs r4, #0
	ldr r0, [r6, #4]
	bl GetMapData
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080AA2F0
	subs r0, r7, #1
	cmp r0, #1
	bhi .L080AA2F0
	movs r4, #1
.L080AA2F0:
	cmp r4, #0
	beq .L080AA35C
	mov r1, sb
	lsls r0, r1, #2
	adds r3, r6, #0
	adds r3, #0x1c
	adds r3, r3, r0
	add r2, sp, #0x20
	movs r4, #0xa
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r4, #0xa0
	lsls r4, r4, #2
	ldrh r1, [r2]
	ldr r0, .L080AA350 @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	ldr r0, [r3]
	adds r6, r2, #0
	ldr r2, .L080AA354 @ =0x000031AE
	str r2, [sp, #0x24]
	mov r1, sp
	adds r5, r6, #0
	cmp sp, r6
	beq .L080AA334
.L080AA32C:
	strh r2, [r1]
	adds r1, #2
	cmp r1, r5
	bne .L080AA32C
.L080AA334:
	movs r5, #0
	adds r4, r0, #0
	ldr r7, .L080AA358 @ =func_03000C2C
.L080AA33A:
	ldr r3, [r6]
	adds r0, r4, #0
	mov r1, sp
	adds r2, r4, #0
	bl _call_via_r7
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xf
	blo .L080AA33A
	b .L080AA522
	.align 2, 0
.L080AA350: .4byte 0xFFFFFC1F
.L080AA354: .4byte 0x000031AE
.L080AA358: .4byte func_03000C2C
.L080AA35C:
	mov r0, r8
	cmp r0, #0
	beq .L080AA43A
	cmp r5, #1
	beq .L080AA43A
	cmp r5, #1
	bgt .L080AA370
	cmp r5, #0
	beq .L080AA376
	b .L080AA43A
.L080AA370:
	cmp r5, #2
	beq .L080AA3DC
	b .L080AA43A
.L080AA376:
	mov r1, sb
	lsls r0, r1, #2
	adds r3, r6, #0
	adds r3, #0x1c
	adds r3, r3, r0
	add r2, sp, #0x28
	movs r4, #9
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r4, #0xa8
	lsls r4, r4, #2
	ldrh r1, [r2]
	ldr r0, .L080AA3D4 @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	ldr r0, [r3]
	mov r8, r2
	adds r4, #0x23
	str r4, [sp, #0x2c]
	mov r1, sp
	add r2, sp, #0x20
	cmp sp, r2
	beq .L080AA3B6
.L080AA3AE:
	strh r4, [r1]
	adds r1, #2
	cmp r1, r2
	bne .L080AA3AE
.L080AA3B6:
	movs r5, #0
	adds r4, r0, #0
	ldr r7, .L080AA3D8 @ =func_03000C2C
.L080AA3BC:
	mov r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	mov r1, sp
	adds r2, r4, #0
	bl _call_via_r7
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xf
	blo .L080AA3BC
	b .L080AA43A
	.align 2, 0
.L080AA3D4: .4byte 0xFFFFFC1F
.L080AA3D8: .4byte func_03000C2C
.L080AA3DC:
	mov r1, sb
	lsls r0, r1, #2
	adds r3, r6, #0
	adds r3, #0x1c
	adds r3, r3, r0
	add r2, sp, #0x30
	movs r4, #3
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r4, #0xd8
	lsls r4, r4, #2
	ldrh r1, [r2]
	ldr r0, .L080AA450 @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	ldr r3, [r3]
	mov r8, r2
	movs r0, #0x1f
	str r0, [sp, #0x34]
	mov r0, sp
	add r1, sp, #0x20
	cmp sp, r1
	beq .L080AA41E
	movs r2, #0x1f
.L080AA416:
	strh r2, [r0]
	adds r0, #2
	cmp r0, r1
	bne .L080AA416
.L080AA41E:
	movs r5, #0
	adds r4, r3, #0
	ldr r7, .L080AA454 @ =func_03000C2C
.L080AA424:
	mov r0, r8
	ldr r3, [r0]
	adds r0, r4, #0
	mov r1, sp
	adds r2, r4, #0
	bl _call_via_r7
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xf
	blo .L080AA424
.L080AA43A:
	ldr r1, [sp, #0x48]
	cmp r1, #0
	beq .L080AA522
	mov r0, sl
	cmp r0, #1
	beq .L080AA522
	cmp r0, #1
	bgt .L080AA458
	cmp r0, #0
	beq .L080AA460
	b .L080AA522
	.align 2, 0
.L080AA450: .4byte 0xFFFFFC1F
.L080AA454: .4byte func_03000C2C
.L080AA458:
	mov r1, sl
	cmp r1, #2
	beq .L080AA4C8
	b .L080AA522
.L080AA460:
	mov r1, sb
	lsls r0, r1, #2
	adds r3, r6, #0
	adds r3, #0x1c
	adds r3, r3, r0
	add r2, sp, #0x38
	movs r4, #4
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #2
	ldrh r1, [r2]
	ldr r0, .L080AA4BC @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	ldr r0, [r3]
	adds r7, r2, #0
	ldr r5, .L080AA4C0 @ =0x000003DF
	str r5, [sp, #0x3c]
	mov r1, sp
	add r2, sp, #0x20
	cmp sp, r2
	beq .L080AA4A0
.L080AA498:
	strh r5, [r1]
	adds r1, #2
	cmp r1, r2
	bne .L080AA498
.L080AA4A0:
	movs r5, #0
	adds r4, r0, #0
	ldr r6, .L080AA4C4 @ =func_03000C2C
.L080AA4A6:
	ldr r3, [r7]
	adds r0, r4, #0
	mov r1, sp
	adds r2, r4, #0
	bl _call_via_r6
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xf
	blo .L080AA4A6
	b .L080AA522
	.align 2, 0
.L080AA4BC: .4byte 0xFFFFFC1F
.L080AA4C0: .4byte 0x000003DF
.L080AA4C4: .4byte func_03000C2C
.L080AA4C8:
	mov r1, sb
	lsls r0, r1, #2
	adds r3, r6, #0
	adds r3, #0x1c
	adds r3, r3, r0
	add r2, sp, #0x40
	movs r4, #4
	ldrb r1, [r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
	movs r4, #0xd0
	lsls r4, r4, #2
	ldrh r1, [r2]
	ldr r0, .L080AA534 @ =0xFFFFFC1F
	ands r0, r1
	orrs r0, r4
	strh r0, [r2]
	ldr r0, [r3]
	adds r7, r2, #0
	ldr r5, .L080AA538 @ =0x0000559F
	str r5, [sp, #0x44]
	mov r1, sp
	add r2, sp, #0x20
	cmp sp, r2
	beq .L080AA508
.L080AA500:
	strh r5, [r1]
	adds r1, #2
	cmp r1, r2
	bne .L080AA500
.L080AA508:
	movs r5, #0
	adds r4, r0, #0
	ldr r6, .L080AA53C @ =func_03000C2C
.L080AA50E:
	ldr r3, [r7]
	adds r0, r4, #0
	mov r1, sp
	adds r2, r4, #0
	bl _call_via_r6
	adds r4, #0x20
	adds r5, #1
	cmp r5, #0xf
	blo .L080AA50E
.L080AA522:
	add sp, #0x4c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AA534: .4byte 0xFFFFFC1F
.L080AA538: .4byte 0x0000559F
.L080AA53C: .4byte func_03000C2C

	thumb_func_start func_080AA540
func_080AA540: @ 0x080AA540
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	mov sl, r1
	adds r7, r2, #0
	str r3, [sp]
	ldr r5, [sp, #0x24]
	ldr r0, [r0, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov r8, r0
	cmp r5, #0
	beq .L080AA5BC
	subs r0, r7, #1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	mov r2, sb
	ldr r1, [r2, #0x18]
	lsls r0, r0, #1
	mov r3, sl
	lsls r4, r3, #1
	adds r1, r4, r1
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #4
	bl memcpy
	mov r0, r8
	muls r0, r7, r0
	mov r2, sb
	ldr r1, [r2, #0x14]
	lsls r0, r0, #1
	adds r1, r4, r1
	adds r0, r0, r1
	adds r1, r5, #4
	movs r2, #4
	bl memcpy
	adds r0, r7, #1
	mov r3, r8
	muls r3, r0, r3
	adds r0, r3, #0
	mov r2, sb
	ldr r1, [r2, #0x14]
	lsls r0, r0, #1
	adds r4, r4, r1
	adds r0, r0, r4
	adds r1, r5, #0
	adds r1, #8
	movs r2, #4
	bl memcpy
	mov r1, sb
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080AA5BC:
	movs r3, #0
	mov ip, r3
	mov r6, r8
	muls r6, r7, r6
	adds r5, r7, #1
	ldr r0, [sp]
	cmp r0, #4
	bhi .L080AA67A
	lsls r0, r0, #2
	ldr r1, .L080AA5D8 @ =.L080AA5DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AA5D8: .4byte .L080AA5DC
.L080AA5DC: @ jump table
	.4byte .L080AA67A @ case 0
	.4byte .L080AA67A @ case 1
	.4byte .L080AA5F0 @ case 2
	.4byte .L080AA620 @ case 3
	.4byte .L080AA670 @ case 4
.L080AA5F0:
	mov r6, r8
	muls r6, r7, r6
	mov r1, sl
	adds r2, r1, r6
	mov r3, sb
	ldr r0, [r3, #0x2c]
	lsls r2, r2, #2
	adds r2, r2, r0
	adds r5, r7, #1
	mov r1, r8
	muls r1, r5, r1
	add r1, sl
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #4]
	ldr r4, .L080AA618 @ =0xFFFE0003
	ands r0, r4
	ldr r3, .L080AA61C @ =0x00000F48
	b .L080AA644
	.align 2, 0
.L080AA618: .4byte 0xFFFE0003
.L080AA61C: .4byte 0x00000F48
.L080AA620:
	mov r6, r8
	muls r6, r7, r6
	mov r1, sl
	adds r2, r1, r6
	mov r3, sb
	ldr r0, [r3, #0x2c]
	lsls r2, r2, #2
	adds r2, r2, r0
	adds r5, r7, #1
	mov r1, r8
	muls r1, r5, r1
	add r1, sl
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #4]
	ldr r4, .L080AA668 @ =0xFFFE0003
	ands r0, r4
	ldr r3, .L080AA66C @ =0x00000F4C
.L080AA644:
	orrs r0, r3
	str r0, [r1, #4]
	ldr r0, [r1]
	ands r0, r4
	orrs r0, r3
	str r0, [r1]
	ldr r0, [r2, #4]
	ands r0, r4
	orrs r0, r3
	str r0, [r2, #4]
	ldr r0, [r2]
	ands r0, r4
	orrs r0, r3
	str r0, [r2]
	movs r0, #0
	mov ip, r0
	b .L080AA67A
	.align 2, 0
.L080AA668: .4byte 0xFFFE0003
.L080AA66C: .4byte 0x00000F4C
.L080AA670:
	movs r1, #1
	mov ip, r1
	mov r6, r8
	muls r6, r7, r6
	adds r5, r7, #1
.L080AA67A:
	mov r2, sl
	adds r4, r2, r6
	mov r3, sb
	ldr r0, [r3, #0x2c]
	lsls r4, r4, #2
	adds r4, r4, r0
	mov r1, r8
	muls r1, r5, r1
	add r1, sl
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r3, [r1, #4]
	movs r2, #2
	rsbs r2, r2, #0
	adds r0, r2, #0
	ands r0, r3
	mov r3, ip
	orrs r0, r3
	strb r0, [r1, #4]
	mov r5, ip
	ldrb r3, [r1]
	adds r0, r2, #0
	ands r0, r3
	orrs r0, r5
	strb r0, [r1]
	ldrb r1, [r4, #4]
	adds r0, r2, #0
	ands r0, r1
	orrs r0, r5
	strb r0, [r4, #4]
	ldrb r0, [r4]
	ands r2, r0
	orrs r2, r5
	strb r2, [r4]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080AA6D0
func_080AA6D0: @ 0x080AA6D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r7, r0, #0
	str r1, [sp]
	adds r6, r2, #0
	str r3, [sp, #4]
	ldr r0, [r7, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	mov sl, r0
	ldr r0, [sp, #4]
	bl method_0800AF20__C9FieldPlot
	adds r5, r0, #0
	cmp r5, #0
	beq .L080AA732
	mov r0, sl
	muls r0, r6, r0
	ldr r1, [r7, #0x10]
	lsls r0, r0, #1
	ldr r2, [sp]
	lsls r4, r2, #1
	adds r1, r4, r1
	adds r0, r0, r1
	adds r1, r5, #0
	movs r2, #4
	bl memcpy
	adds r0, r6, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, [r7, #0x10]
	lsls r0, r0, #1
	adds r4, r4, r1
	adds r0, r0, r4
	adds r1, r5, #4
	movs r2, #4
	bl memcpy
	adds r1, r7, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080AA732:
	mov r5, sl
	muls r5, r6, r5
	adds r2, r6, #1
	str r2, [sp, #8]
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq .L080AA78E
	subs r0, r6, #1
	mov r1, sl
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, [r7, #0x18]
	lsls r0, r0, #1
	ldr r2, [sp]
	lsls r4, r2, #1
	adds r1, r4, r1
	adds r0, r0, r1
	ldr r1, [sp, #0x2c]
	movs r2, #4
	bl memcpy
	ldr r1, [r7, #0x14]
	lsls r0, r5, #1
	adds r1, r4, r1
	adds r0, r0, r1
	ldr r1, [sp, #0x2c]
	adds r1, #4
	movs r2, #4
	bl memcpy
	ldr r1, [sp, #8]
	mov r0, sl
	muls r0, r1, r0
	ldr r1, [r7, #0x14]
	lsls r0, r0, #1
	adds r4, r4, r1
	adds r0, r0, r4
	ldr r1, [sp, #0x2c]
	adds r1, #8
	movs r2, #4
	bl memcpy
	adds r1, r7, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
.L080AA78E:
	ldr r0, [sp, #4]
	bl method_0800A07C__C9FieldPlot
	ldr r2, [sp]
	adds r2, r2, r5
	mov r8, r2
	ldr r2, [r7, #0x2c]
	mov r1, r8
	lsls r1, r1, #2
	mov r8, r1
	adds r1, r1, r2
	mov sb, r1
	ldr r1, [sp, #8]
	mov r4, sl
	muls r4, r1, r4
	ldr r1, [sp]
	adds r4, r1, r4
	lsls r4, r4, #2
	adds r2, r4, r2
	movs r6, #1
	adds r5, r6, #0
	ands r5, r0
	ldrb r3, [r2, #4]
	movs r1, #2
	rsbs r1, r1, #0
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r5
	strb r0, [r2, #4]
	ldrb r3, [r2]
	adds r0, r1, #0
	ands r0, r3
	orrs r0, r5
	strb r0, [r2]
	mov r0, sb
	ldrb r2, [r0, #4]
	adds r0, r1, #0
	ands r0, r2
	orrs r0, r5
	mov r2, sb
	strb r0, [r2, #4]
	ldrb r0, [r2]
	ands r1, r0
	orrs r1, r5
	strb r1, [r2]
	ldr r0, [sp, #4]
	bl method_0800A0A4__C9FieldPlot
	ldr r1, [r7, #0x2c]
	add r8, r1
	movs r2, #4
	add r2, r8
	mov sb, r2
	adds r4, r4, r1
	adds r3, r4, #4
	lsls r5, r0, #1
	ldrh r2, [r3, #2]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r5
	strh r1, [r3, #2]
	ldr r1, .L080AA84C @ =0x00007FFF
	adds r5, r1, #0
	ands r0, r5
	lsls r3, r0, #1
	ldrh r2, [r4, #2]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r3
	strh r1, [r4, #2]
	ands r0, r5
	lsls r3, r0, #1
	mov r1, sb
	ldrh r2, [r1, #2]
	adds r1, r6, #0
	ands r1, r2
	orrs r1, r3
	mov r2, sb
	strh r1, [r2, #2]
	ands r0, r5
	lsls r0, r0, #1
	mov r2, r8
	ldrh r1, [r2, #2]
	ands r6, r1
	orrs r6, r0
	strh r6, [r2, #2]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AA84C: .4byte 0x00007FFF

	thumb_func_start func_080AA850
func_080AA850: @ 0x080AA850
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r5, #0
	adds r4, #0x94
	ldr r0, [r4]
	adds r0, #0x10
	bl func_0800E324
	ldr r1, [r4]
	ldr r2, .L080AA898 @ =0x000034D8
	adds r1, r1, r2
	movs r3, #0
	cmp r0, #3
	bne .L080AA872
	movs r3, #1
.L080AA872:
	mov r0, sp
	adds r2, r6, #0
	bl func_0809C510
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	adds r0, r5, #0
	bl func_080A5BD8
	adds r1, r5, #0
	adds r1, #0x29
	movs r0, #1
	strb r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080AA898: .4byte 0x000034D8

	thumb_func_start func_080AA89C
func_080AA89C: @ 0x080AA89C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, .L080AA8B8 @ =gUnk_08106DAC
	movs r2, #0x21
	movs r3, #0x14
	bl func_080A5BD8
	adds r4, #0x29
	movs r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080AA8B8: .4byte gUnk_08106DAC

	thumb_func_start func_080AA8BC
func_080AA8BC: @ 0x080AA8BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, .L080AA8D8 @ =gUnk_08106DAC
	movs r2, #0x21
	movs r3, #0x17
	bl func_080A5BD8
	adds r4, #0x29
	movs r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080AA8D8: .4byte gUnk_08106DAC

	thumb_func_start func_080AA8DC
func_080AA8DC: @ 0x080AA8DC
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1]
	cmp r0, #0x1d
	bne .L080AA8EC
	adds r1, #0x98
	movs r0, #1
	strb r0, [r1]
.L080AA8EC:
	pop {r0}
	bx r0

	thumb_func_start func_080AA8F0
func_080AA8F0: @ 0x080AA8F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r5, #0x94
	ldr r0, [r5]
	ldr r1, .L080AA96C @ =0x00001CD4
	adds r7, r0, r1
	adds r0, r7, #0
	bl func_080A0504
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080AA9B6
	adds r0, r7, #0
	bl func_080A041C
	cmp r0, #0
	bne .L080AA9B6
	ldr r0, [r5]
	ldr r2, .L080AA970 @ =0x00001C34
	adds r4, r0, r2
	movs r6, #0
	adds r0, r4, #0
	bl IsEmpty__C9ToolStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080AA93C
	adds r0, r4, #0
	bl GetTool__C9ToolStack
	adds r1, r0, #0
	add r0, sp, #0x18
	strb r1, [r0]
	bl GetId__C4Tool
	cmp r0, #0x4b
	beq .L080AA964
.L080AA93C:
	ldr r0, [r5]
	ldr r3, .L080AA974 @ =0x00001C38
	adds r0, r0, r3
	movs r1, #0x4b
	bl GetFirstSlotWithTool__C8RucksackUi
	adds r4, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne .L080AA964
	ldr r0, [r5]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0x4b
	bl GetFirstSlotWith__C9ToolChestUi
	cmp r0, r4
	beq .L080AA966
.L080AA964:
	movs r6, #1
.L080AA966:
	cmp r6, #0
	beq .L080AA97C
	b .L080AA9B6
	.align 2, 0
.L080AA96C: .4byte 0x00001CD4
.L080AA970: .4byte 0x00001C34
.L080AA974: .4byte 0x00001C38
.L080AA978:
	movs r0, #1
	b .L080AA9B8
.L080AA97C:
	mov r1, sp
	ldr r0, .L080AA9C0 @ =gUnk_08107438
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	movs r6, #0
	mov r5, sp
.L080AA98C:
	ldr r1, [r5]
	adds r0, r7, #0
	bl func_080A01F8
	adds r4, r0, #0
	cmp r4, #0
	beq .L080AA9AE
	bl GetLove__C12Bachelorette
	ldr r1, .L080AA9C4 @ =0x0000C34F
	cmp r0, r1
	bls .L080AA9AE
	adds r0, r4, #0
	bl GetRivalEventCount__C12Bachelorette
	cmp r0, #3
	bls .L080AA978
.L080AA9AE:
	adds r5, #4
	adds r6, #1
	cmp r6, #5
	bls .L080AA98C
.L080AA9B6:
	movs r0, #0
.L080AA9B8:
	add sp, #0x1c
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080AA9C0: .4byte gUnk_08107438
.L080AA9C4: .4byte 0x0000C34F

	thumb_func_start func_080AA9C8
func_080AA9C8: @ 0x080AA9C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r4, r1, #0
	ldr r1, [r4, #4]
	ldr r0, [r6]
	cmp r1, r0
	beq .L080AA9E2
	b .L080AACA6
.L080AA9E2:
	mov r2, sp
	ldr r1, .L080AAA10 @ =0x0000FFFF
	mov r0, sp
	strh r1, [r0]
	movs r0, #0xff
	strb r0, [r2, #2]
	movs r5, #0
	mov r8, r5
	mov sl, r5
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	ldr r2, [r4]
	cmp r2, #0x15
	bls .L080AAA04
	b .L080AAB7C
.L080AAA04:
	lsls r0, r2, #2
	ldr r1, .L080AAA14 @ =.L080AAA18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AAA10: .4byte 0x0000FFFF
.L080AAA14: .4byte .L080AAA18
.L080AAA18: @ jump table
	.4byte .L080AAA70 @ case 0
	.4byte .L080AAA70 @ case 1
	.4byte .L080AAA70 @ case 2
	.4byte .L080AAA70 @ case 3
	.4byte .L080AAA70 @ case 4
	.4byte .L080AAA70 @ case 5
	.4byte .L080AAA70 @ case 6
	.4byte .L080AAA70 @ case 7
	.4byte .L080AAA70 @ case 8
	.4byte .L080AAA70 @ case 9
	.4byte .L080AAA70 @ case 10
	.4byte .L080AAA70 @ case 11
	.4byte .L080AAA70 @ case 12
	.4byte .L080AAA70 @ case 13
	.4byte .L080AAA70 @ case 14
	.4byte .L080AAA70 @ case 15
	.4byte .L080AAA70 @ case 16
	.4byte .L080AAA70 @ case 17
	.4byte .L080AAAB0 @ case 18
	.4byte .L080AAA80 @ case 19
	.4byte .L080AAB54 @ case 20
	.4byte .L080AAB00 @ case 21
.L080AAA70:
	adds r1, r6, #0
	adds r1, #0x9c
	add r0, sp, #4
	bl func_080AAE44
	ldr r0, [sp, #4]
	str r0, [sp]
	b .L080AAB7C
.L080AAA80:
	movs r5, #1
	ldr r0, [r6, #4]
	cmp r0, #0xe
	beq .L080AAA8E
	cmp r0, #0xf
	beq .L080AAA98
	b .L080AACA6
.L080AAA8E:
	ldr r0, .L080AAA94 @ =gUnk_086DCC88
	mov r8, r0
	b .L080AAA9C
	.align 2, 0
.L080AAA94: .4byte gUnk_086DCC88
.L080AAA98:
	ldr r1, .L080AAAA8 @ =gUnk_086DDDEC
	mov r8, r1
.L080AAA9C:
	movs r0, #4
	mov sl, r0
	movs r1, #4
	str r1, [sp, #0xc]
	ldr r0, .L080AAAAC @ =0x000003CB
	b .L080AAB7A
	.align 2, 0
.L080AAAA8: .4byte gUnk_086DDDEC
.L080AAAAC: .4byte 0x000003CB
.L080AAAB0:
	movs r5, #1
	ldr r0, [r6, #4]
	cmp r0, #0xd
	beq .L080AAAEC
	cmp r0, #0xd
	bgt .L080AAAC2
	cmp r0, #0xc
	beq .L080AAAE0
	b .L080AACA6
.L080AAAC2:
	cmp r0, #0xe
	beq .L080AAACC
	cmp r0, #0xf
	beq .L080AAAD8
	b .L080AACA6
.L080AAACC:
	ldr r1, .L080AAAD4 @ =gUnk_086DC57C
	mov r8, r1
	b .L080AAAF0
	.align 2, 0
.L080AAAD4: .4byte gUnk_086DC57C
.L080AAAD8:
	ldr r0, .L080AAADC @ =gUnk_086DD6E0
	b .L080AAAEE
	.align 2, 0
.L080AAADC: .4byte gUnk_086DD6E0
.L080AAAE0:
	ldr r1, .L080AAAE8 @ =gUnk_086EACDC
	mov r8, r1
	b .L080AAAF0
	.align 2, 0
.L080AAAE8: .4byte gUnk_086EACDC
.L080AAAEC:
	ldr r0, .L080AAAFC @ =gUnk_086EAD84
.L080AAAEE:
	mov r8, r0
.L080AAAF0:
	movs r1, #2
	mov sl, r1
	movs r0, #2
	str r0, [sp, #0xc]
	b .L080AAB7C
	.align 2, 0
.L080AAAFC: .4byte gUnk_086EAD84
.L080AAB00:
	movs r5, #1
	ldr r0, [r6, #4]
	cmp r0, #0xd
	beq .L080AAB3C
	cmp r0, #0xd
	bgt .L080AAB12
	cmp r0, #0xc
	beq .L080AAB30
	b .L080AACA6
.L080AAB12:
	cmp r0, #0xe
	beq .L080AAB1C
	cmp r0, #0xf
	beq .L080AAB28
	b .L080AACA6
.L080AAB1C:
	ldr r1, .L080AAB24 @ =gUnk_086DD690
	mov r8, r1
	b .L080AAB40
	.align 2, 0
.L080AAB24: .4byte gUnk_086DD690
.L080AAB28:
	ldr r0, .L080AAB2C @ =gUnk_086DE7F4
	b .L080AAB3E
	.align 2, 0
.L080AAB2C: .4byte gUnk_086DE7F4
.L080AAB30:
	ldr r1, .L080AAB38 @ =gUnk_086EAD64
	mov r8, r1
	b .L080AAB40
	.align 2, 0
.L080AAB38: .4byte gUnk_086EAD64
.L080AAB3C:
	ldr r0, .L080AAB50 @ =gUnk_086EAD8C
.L080AAB3E:
	mov r8, r0
.L080AAB40:
	movs r1, #4
	mov sl, r1
	movs r0, #4
	str r0, [sp, #0xc]
	movs r1, #0xf3
	lsls r1, r1, #2
	str r1, [sp, #0x10]
	b .L080AAB7C
	.align 2, 0
.L080AAB50: .4byte gUnk_086EAD8C
.L080AAB54:
	movs r5, #1
	ldr r0, [r6, #4]
	cmp r0, #0xe
	beq .L080AAB62
	cmp r0, #0xf
	beq .L080AAB6C
	b .L080AACA6
.L080AAB62:
	ldr r0, .L080AAB68 @ =gUnk_086DC54C
	mov r8, r0
	b .L080AAB70
	.align 2, 0
.L080AAB68: .4byte gUnk_086DC54C
.L080AAB6C:
	ldr r1, .L080AAC28 @ =gUnk_086DD6B0
	mov r8, r1
.L080AAB70:
	movs r0, #6
	mov sl, r0
	movs r1, #4
	str r1, [sp, #0xc]
	ldr r0, .L080AAC2C @ =0x000003C9
.L080AAB7A:
	str r0, [sp, #0x10]
.L080AAB7C:
	ldr r0, [r6, #4]
	bl GetMapData
	ldrh r0, [r0, #0x20]
	str r0, [sp, #0x14]
	movs r1, #8
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge .L080AAB90
	adds r0, #7
.L080AAB90:
	asrs r2, r0, #3
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge .L080AAB9C
	adds r1, #7
.L080AAB9C:
	asrs r1, r1, #3
	add r0, sp, #8
	strh r2, [r0]
	strh r1, [r0, #2]
	cmp r5, #0
	beq .L080AAC30
	adds r1, r6, #0
	adds r1, #0x29
	str r1, [sp, #0x18]
	mov r0, r8
	cmp r0, #0
	beq .L080AACA0
	movs r7, #0
	ldr r1, [sp, #0xc]
	cmp r7, r1
	bhs .L080AACA0
.L080AABBC:
	movs r5, #0
	adds r0, r7, #1
	mov sb, r0
	cmp r5, sl
	bhs .L080AAC1C
	mov r0, sl
	muls r0, r7, r0
	ldr r1, [sp, #0x10]
	lsls r1, r1, #1
	mov ip, r1
	lsls r0, r0, #1
	mov r1, r8
	adds r4, r1, r0
.L080AABD6:
	mov r0, sp
	movs r1, #8
	ldrsh r2, [r0, r1]
	adds r2, r2, r5
	add r0, sp, #8
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r0, r0, r7
	ldr r1, [sp, #0x14]
	muls r0, r1, r0
	adds r2, r2, r0
	lsls r1, r2, #1
	ldr r0, [r6, #0x14]
	adds r0, r0, r1
	ldrh r1, [r4]
	strh r1, [r0]
	ldr r3, [r6, #0x2c]
	lsls r2, r2, #2
	adds r3, r2, r3
	ldrb r0, [r3]
	movs r1, #1
	orrs r0, r1
	strb r0, [r3]
	ldr r0, [r6, #0x2c]
	adds r2, r2, r0
	ldrh r1, [r2, #2]
	movs r0, #1
	ands r0, r1
	mov r1, ip
	orrs r0, r1
	strh r0, [r2, #2]
	adds r4, #2
	adds r5, #1
	cmp r5, sl
	blo .L080AABD6
.L080AAC1C:
	mov r7, sb
	ldr r0, [sp, #0xc]
	cmp r7, r0
	blo .L080AABBC
	b .L080AACA0
	.align 2, 0
.L080AAC28: .4byte gUnk_086DD6B0
.L080AAC2C: .4byte 0x000003C9
.L080AAC30:
	movs r5, #0
	adds r1, r6, #0
	adds r1, #0x29
	str r1, [sp, #0x18]
	mov r7, sp
	ldr r0, [sp, #0x10]
	lsls r0, r0, #1
	mov sb, r0
.L080AAC40:
	movs r4, #0
	lsls r1, r5, #1
	mov ip, r1
	adds r0, r5, #1
	mov r8, r0
.L080AAC4A:
	mov r1, sp
	movs r0, #8
	ldrsh r3, [r1, r0]
	adds r3, r3, r4
	add r0, sp, #8
	movs r1, #2
	ldrsh r0, [r0, r1]
	adds r0, r0, r5
	ldr r1, [sp, #0x14]
	muls r0, r1, r0
	adds r3, r3, r0
	lsls r0, r3, #1
	ldr r2, [r6, #0x14]
	adds r2, r2, r0
	ldrh r1, [r7]
	adds r1, r1, r4
	add r1, ip
	ldrb r0, [r7, #2]
	adds r0, #1
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r2]
	ldr r2, [r6, #0x2c]
	lsls r3, r3, #2
	adds r2, r3, r2
	ldrb r0, [r2]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2]
	ldr r0, [r6, #0x2c]
	adds r3, r3, r0
	ldrh r1, [r3, #2]
	movs r0, #1
	ands r0, r1
	mov r1, sb
	orrs r0, r1
	strh r0, [r3, #2]
	adds r4, #1
	cmp r4, #1
	bls .L080AAC4A
	mov r5, r8
	cmp r5, #1
	bls .L080AAC40
.L080AACA0:
	movs r0, #1
	ldr r1, [sp, #0x18]
	strb r0, [r1]
.L080AACA6:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080AACB8
func_080AACB8: @ 0x080AACB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r0, #0x10
	bl func_0800E324
	mov r8, r0
	ldr r0, [r5, #4]
	cmp r0, #0xf
	bhi .L080AAD82
	lsls r0, r0, #2
	ldr r1, .L080AACE0 @ =.L080AACE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AACE0: .4byte .L080AACE4
.L080AACE4: @ jump table
	.4byte .L080AAD6E @ case 0
	.4byte .L080AAD82 @ case 1
	.4byte .L080AAD82 @ case 2
	.4byte .L080AAD82 @ case 3
	.4byte .L080AAD42 @ case 4
	.4byte .L080AAD82 @ case 5
	.4byte .L080AAD82 @ case 6
	.4byte .L080AAD82 @ case 7
	.4byte .L080AAD38 @ case 8
	.4byte .L080AAD82 @ case 9
	.4byte .L080AAD54 @ case 10
	.4byte .L080AAD5E @ case 11
	.4byte .L080AAD54 @ case 12
	.4byte .L080AAD5E @ case 13
	.4byte .L080AAD24 @ case 14
	.4byte .L080AAD2E @ case 15
.L080AAD24:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0xf2
	lsls r1, r1, #2
	b .L080AAD66
.L080AAD2E:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0xf9
	lsls r1, r1, #2
	b .L080AAD66
.L080AAD38:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0xb0
	lsls r1, r1, #2
	b .L080AAD66
.L080AAD42:
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r1, .L080AAD50 @ =0x000003E6
	movs r2, #0xc
	bl func_080AAE14
	b .L080AAD90
	.align 2, 0
.L080AAD50: .4byte 0x000003E6
.L080AAD54:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0xf8
	lsls r1, r1, #2
	b .L080AAD66
.L080AAD5E:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0xad
	lsls r1, r1, #2
.L080AAD66:
	movs r2, #9
	bl func_080AAE14
	b .L080AAD90
.L080AAD6E:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0
	movs r2, #0
	bl func_080AAE14
	mov r0, r8
	cmp r0, #2
	beq .L080AAD90
	b .L080AAE00
.L080AAD82:
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #0
	movs r2, #0
	bl func_080AAE14
	b .L080AAE00
.L080AAD90:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	ldr r1, .L080AAE0C @ =0x000034C8
	adds r6, r0, r1
	ldr r0, .L080AAE10 @ =gUnk_08107450
	mov r2, r8
	lsls r1, r2, #1
	adds r2, r1, r0
	adds r0, #1
	adds r1, r1, r0
	ldrb r7, [r1]
	ldrb r4, [r2]
	cmp r4, r7
	bhs .L080AADD6
.L080AADAE:
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080A1ED4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080AADD0
	mov r0, sp
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080A1CBC
	adds r0, r5, #0
	mov r1, sp
	bl func_080AA9C8
.L080AADD0:
	adds r4, #1
	cmp r4, r7
	blo .L080AADAE
.L080AADD6:
	movs r4, #0x60
.L080AADD8:
	adds r0, r6, #0
	adds r1, r4, #0
	mov r2, r8
	bl func_080A1ED4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080AADFA
	mov r0, sp
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080A1CBC
	adds r0, r5, #0
	mov r1, sp
	bl func_080AA9C8
.L080AADFA:
	adds r4, #1
	cmp r4, #0x73
	bls .L080AADD8
.L080AAE00:
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AAE0C: .4byte 0x000034C8
.L080AAE10: .4byte gUnk_08107450

	thumb_func_start func_080AAE14
func_080AAE14: @ 0x080AAE14
	push {r4, lr}
	str r1, [r0]
	str r2, [r0, #4]
	adds r4, r0, #0
	adds r4, #8
	ldr r0, [r4, #8]
	cmp r0, #0
	beq .L080AAE3E
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
.L080AAE3E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080AAE44
func_080AAE44: @ 0x080AAE44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	adds r7, r0, #0
	adds r5, r1, #0
	str r2, [sp, #0x20]
	adds r0, r2, #0
	cmp r0, #0xd
	bne .L080AAE68
	ldr r0, .L080AAE64 @ =0x000003E6
	movs r1, #0xb
	strh r0, [r7]
	strb r1, [r7, #2]
	b .L080AAF00
	.align 2, 0
.L080AAE64: .4byte 0x000003E6
.L080AAE68:
	mov r8, sp
	adds r1, r5, #0
	adds r1, #8
	add r2, sp, #0x20
	mov ip, r2
	ldr r4, [r1, #4]
	ldr r2, [r4, #4]
	mov sb, r1
	cmp r2, #0
	beq .L080AAE98
	adds r6, r0, #0
.L080AAE7E:
	movs r3, #0
	ldr r0, [r2, #0x10]
	cmp r0, r6
	bge .L080AAE88
	movs r3, #1
.L080AAE88:
	cmp r3, #0
	bne .L080AAE92
	adds r4, r2, #0
	ldr r2, [r4, #8]
	b .L080AAE94
.L080AAE92:
	ldr r2, [r2, #0xc]
.L080AAE94:
	cmp r2, #0
	bne .L080AAE7E
.L080AAE98:
	ldr r3, [r1, #4]
	cmp r4, r3
	beq .L080AAEB0
	movs r2, #0
	mov r0, ip
	ldr r1, [r0]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bge .L080AAEAC
	movs r2, #1
.L080AAEAC:
	cmp r2, #0
	beq .L080AAEB2
.L080AAEB0:
	adds r4, r3, #0
.L080AAEB2:
	mov r2, r8
	str r4, [r2]
	mov r0, sb
	ldr r1, [r0, #4]
	str r1, [sp, #4]
	movs r2, #0
	ldr r0, [sp]
	cmp r0, r1
	bne .L080AAEC6
	movs r2, #1
.L080AAEC6:
	cmp r2, #0
	beq .L080AAEFA
	add r0, sp, #8
	add r3, sp, #0x24
	ldr r1, [r5]
	ldr r2, [r5, #4]
	strh r1, [r3]
	strb r2, [r3, #2]
	ldr r2, [sp, #0x20]
	str r2, [sp, #0x18]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x1c]
	str r2, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r1, sb
	add r2, sp, #0x10
	bl func_080E4304
	ldr r0, [sp, #8]
	str r0, [sp]
	ldr r0, [r5]
	adds r0, #4
	str r0, [r5]
	ldr r0, [r5, #4]
	adds r0, #1
	str r0, [r5, #4]
.L080AAEFA:
	ldr r0, [sp]
	ldr r0, [r0, #0x14]
	str r0, [r7]
.L080AAF00:
	adds r0, r7, #0
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080AAF10
func_080AAF10: @ 0x080AAF10
	sub sp, #4
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #8]
	str r0, [sp]
	add sp, #4
	bx lr

	thumb_func_start func_080AAF1C
func_080AAF1C: @ 0x080AAF1C
	sub sp, #4
	ldr r0, [r0, #0xc]
	str r0, [sp]
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start func_080AAF28
func_080AAF28: @ 0x080AAF28
	lsls r1, r1, #0x18
	ldr r2, .L080AAF38 @ =gUnk_08107458
	lsrs r1, r1, #0x17
	lsls r0, r0, #2
	adds r1, r1, r0
	adds r1, r1, r2
	ldrh r0, [r1]
	bx lr
	.align 2, 0
.L080AAF38: .4byte gUnk_08107458

	thumb_func_start func_080AAF3C
func_080AAF3C: @ 0x080AAF3C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x94
	ldr r0, [r4]
	adds r0, #0x10
	bl func_0800E324
	mov sb, r0
	ldr r0, [r4]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetUpgradeLevel__C9FarmHouse
	mov r8, r0
	ldr r0, [r4]
	movs r1, #0x82
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUpgradeLevel__C4Coop
	adds r5, r0, #0
	ldr r0, [r4]
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r0, r1
	bl GetUpgradeLevel__C4Barn
	ldr r1, [r6]
	str r0, [sp]
	adds r0, r1, #0
	mov r1, sb
	mov r2, r8
	adds r3, r5, #0
	bl func_0803A8A4
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
.L080AAF9C:
	.byte 0x00, 0xB5, 0x02, 0x1C
	.byte 0x00, 0x29, 0x07, 0xD0, 0x10, 0x68, 0x02, 0x28, 0x04, 0xD1, 0xD0, 0x6A, 0xB0, 0x22, 0x12, 0x02
	.byte 0x5D, 0xF7, 0x58, 0xFF, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x40, 0x68, 0xF9, 0xF7, 0x6C, 0xFB
	.byte 0x24, 0x30, 0x00, 0x78, 0x02, 0xBC, 0x08, 0x47

	thumb_func_start func_080AAFC8
func_080AAFC8: @ 0x080AAFC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa8
	str r0, [sp, #0x7c]
	str r1, [sp, #0x80]
	adds r4, r2, #0
	movs r0, #0xfa
	lsls r0, r0, #2
	bl __builtin_new
	mov sl, r0
	ldr r1, [sp, #0x80]
	str r1, [r0]
	cmp r4, #0xd
	beq .L080AAFFE
	cmp r4, #0xd
	bgt .L080AAFF6
	cmp r4, #1
	beq .L080AAFFE
	b .L080AAFFA
.L080AAFF6:
	cmp r4, #0xf
	beq .L080AAFFE
.L080AAFFA:
	movs r1, #0
	b .L080AB000
.L080AAFFE:
	movs r1, #1
.L080AB000:
	movs r0, #0
	mov r2, sl
	strb r1, [r2, #4]
	strb r0, [r2, #5]
	strb r0, [r2, #6]
	mov r0, sl
	adds r0, #8
	movs r1, #9
	movs r3, #0xd4
	lsls r3, r3, #2
	add r3, sl
	str r3, [sp, #0x9c]
	movs r4, #0xda
	lsls r4, r4, #2
	add r4, sl
	str r4, [sp, #0x88]
	mov r2, sp
	adds r2, #0x74
	str r2, [sp, #0x94]
	mov r3, sp
	adds r3, #0x54
	str r3, [sp, #0x90]
	mov r4, sp
	adds r4, #0x44
	str r4, [sp, #0x8c]
	movs r5, #0
	movs r3, #1
	rsbs r3, r3, #0
.L080AB038:
	strb r5, [r0]
	strb r5, [r0, #1]
	movs r2, #1
	movs r4, #0x54
	adds r4, r4, r0
	mov sb, r4
	subs r1, #1
	mov r8, r1
	adds r1, r0, #4
.L080AB04A:
	str r5, [r1]
	strh r5, [r1, #4]
	str r5, [r1, #8]
	strh r5, [r1, #0xc]
	str r5, [r1, #0x10]
	strh r5, [r1, #0x14]
	str r5, [r1, #0x18]
	strh r5, [r1, #0x1c]
	adds r1, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080AB04A
	adds r4, r0, #0
	adds r4, #0x44
	movs r6, #1
	movs r1, #0
	movs r7, #1
	rsbs r7, r7, #0
.L080AB06E:
	adds r0, r4, #0
	str r1, [sp, #0xa0]
	str r3, [sp, #0xa4]
	bl func_08007874
	ldr r1, [sp, #0xa0]
	str r1, [r4, #4]
	adds r4, #8
	subs r6, #1
	ldr r3, [sp, #0xa4]
	cmp r6, r7
	bne .L080AB06E
	mov r0, sb
	mov r1, r8
	cmp r1, r3
	bne .L080AB038
	movs r0, #0
	ldr r1, [sp, #0x9c]
	str r0, [r1]
	ldr r0, [sp, #0x88]
	movs r1, #0xf
	ldr r2, [sp, #0x80]
	ldr r3, [r2]
	movs r4, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AB0A2:
	strb r4, [r0, #4]
	adds r0, #8
	subs r1, #1
	cmp r1, r2
	bne .L080AB0A2
	ldr r1, [r3, #0x64]
	ldr r0, [sp, #0x80]
	bl _call_via_r1
	mov r8, r0
	movs r3, #0
.L080AB0B8:
	movs r0, #0x54
	muls r0, r3, r0
	adds r0, #8
	add r0, sl
	str r0, [sp, #0x84]
	mov r4, sp
	mov r1, sl
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq .L080AB144
	cmp r3, #9
	bls .L080AB0D2
	b .L080AB1BC
.L080AB0D2:
	lsls r0, r3, #2
	ldr r1, .L080AB0DC @ =.L080AB0E0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AB0DC: .4byte .L080AB0E0
.L080AB0E0: @ jump table
	.4byte .L080AB180 @ case 0
	.4byte .L080AB110 @ case 1
	.4byte .L080AB108 @ case 2
	.4byte .L080AB116 @ case 3
	.4byte .L080AB120 @ case 4
	.4byte .L080AB1A0 @ case 5
	.4byte .L080AB128 @ case 6
	.4byte .L080AB12E @ case 7
	.4byte .L080AB134 @ case 8
	.4byte .L080AB13A @ case 9
.L080AB108:
	ldr r2, .L080AB10C @ =0x000001A1
	b .L080AB1BE
	.align 2, 0
.L080AB10C: .4byte 0x000001A1
.L080AB110:
	movs r2, #0xd0
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB116:
	ldr r2, .L080AB11C @ =0x000001A3
	b .L080AB1BE
	.align 2, 0
.L080AB11C: .4byte 0x000001A3
.L080AB120:
	ldr r2, .L080AB124 @ =0x0000019F
	b .L080AB1BE
	.align 2, 0
.L080AB124: .4byte 0x0000019F
.L080AB128:
	movs r2, #0xd1
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB12E:
	movs r2, #0xd2
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB134:
	movs r2, #0xcf
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB13A:
	ldr r2, .L080AB140 @ =0x0000019D
	b .L080AB1BE
	.align 2, 0
.L080AB140: .4byte 0x0000019D
.L080AB144:
	cmp r3, #9
	bhi .L080AB1BC
	lsls r0, r3, #2
	ldr r1, .L080AB154 @ =.L080AB158
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AB154: .4byte .L080AB158
.L080AB158: @ jump table
	.4byte .L080AB180 @ case 0
	.4byte .L080AB190 @ case 1
	.4byte .L080AB186 @ case 2
	.4byte .L080AB194 @ case 3
	.4byte .L080AB19C @ case 4
	.4byte .L080AB1A0 @ case 5
	.4byte .L080AB1A8 @ case 6
	.4byte .L080AB1AE @ case 7
	.4byte .L080AB1B4 @ case 8
	.4byte .L080AB1B8 @ case 9
.L080AB180:
	movs r2, #0xeb
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB186:
	ldr r2, .L080AB18C @ =0x00000117
	b .L080AB1BE
	.align 2, 0
.L080AB18C: .4byte 0x00000117
.L080AB190:
	movs r2, #0xd3
	b .L080AB1BE
.L080AB194:
	ldr r2, .L080AB198 @ =0x000001AD
	b .L080AB1BE
	.align 2, 0
.L080AB198: .4byte 0x000001AD
.L080AB19C:
	movs r2, #0x4d
	b .L080AB1BE
.L080AB1A0:
	ldr r2, .L080AB1A4 @ =0x00000145
	b .L080AB1BE
	.align 2, 0
.L080AB1A4: .4byte 0x00000145
.L080AB1A8:
	movs r2, #0xc4
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB1AE:
	movs r2, #0xd9
	lsls r2, r2, #1
	b .L080AB1BE
.L080AB1B4:
	movs r2, #0x3e
	b .L080AB1BE
.L080AB1B8:
	movs r2, #0x3c
	b .L080AB1BE
.L080AB1BC:
	movs r2, #0
.L080AB1BE:
	adds r6, r4, #0
	mov sb, r2
	movs r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	movs r2, #1
	adds r3, #1
	str r3, [sp, #0x98]
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	adds r0, r6, #4
.L080AB1D6:
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x1c]
	adds r0, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080AB1D6
	adds r4, r6, #0
	adds r4, #0x44
	movs r5, #1
	movs r1, #0
	movs r7, #1
	rsbs r7, r7, #0
.L080AB1FA:
	adds r0, r4, #0
	str r1, [sp, #0xa0]
	bl func_08007874
	ldr r1, [sp, #0xa0]
	str r1, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r7
	bne .L080AB1FA
	movs r7, #0
	adds r5, r6, #4
.L080AB212:
	mov r2, r8
	ldr r4, [r2]
	ldr r0, [sp, #0x94]
	ldr r3, [r4, #0xc]
	mov r1, r8
	mov r2, sb
	bl _call_via_r3
	lsls r1, r7, #2
	ldr r0, [sp, #0x74]
	adds r0, r0, r1
	ldrh r2, [r0]
	add r0, sp, #0x54
	ldr r3, [r4, #0x10]
	mov r1, r8
	bl _call_via_r3
	add r0, sp, #0x54
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r5, #0
	ldr r0, [sp, #0x90]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r0, [r5, #8]
	movs r1, #0
	cmp r0, #0
	beq .L080AB258
	ldrh r1, [r5, #0xc]
.L080AB258:
	cmp r1, #0
	beq .L080AB272
	ldr r0, [r5, #0x10]
	movs r1, #0
	cmp r0, #0
	beq .L080AB266
	ldrh r1, [r5, #0x14]
.L080AB266:
	cmp r1, #0
	beq .L080AB272
	adds r5, #0x20
	adds r7, #1
	cmp r7, #1
	bls .L080AB212
.L080AB272:
	ldr r0, [sp, #0x84]
	mov r1, sp
	bl func_080E4438
	ldr r4, [sp, #0x90]
	ldr r0, [sp, #0x8c]
	cmp r0, r4
	beq .L080AB29A
	add r5, sp, #0x44
.L080AB284:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	cmp r5, r4
	bne .L080AB284
.L080AB29A:
	ldr r3, [sp, #0x98]
	cmp r3, #9
	bhi .L080AB2A2
	b .L080AB0B8
.L080AB2A2:
	ldr r1, [sp, #0x80]
	ldr r0, [r1]
	ldr r2, [r0, #0x48]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	adds r2, r0, #0
	ldr r1, [sp, #0x9c]
	ldr r0, [r1]
	cmp r0, #0xf
	bhi .L080AB2CC
	adds r0, #4
	adds r0, r1, r0
	cmp r0, #0
	beq .L080AB2C4
	strb r2, [r0]
.L080AB2C4:
	ldr r2, [sp, #0x9c]
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
.L080AB2CC:
	mov r3, sl
	ldr r4, [sp, #0x7c]
	str r3, [r4]
	adds r0, r4, #0
	add sp, #0xa8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080AB2E4
func_080AB2E4: @ 0x080AB2E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sl, r0
	str r1, [sp]
	ldr r0, [r0]
	cmp r0, #0
	beq .L080AB360
	mov r8, r0
	ldr r0, [r0]
	ldr r2, [r0]
	movs r4, #0xd4
	lsls r4, r4, #2
	add r4, r8
	movs r1, #0xd5
	lsls r1, r1, #2
	add r1, r8
	ldrb r1, [r1]
	ldr r2, [r2, #0x4c]
	bl _call_via_r2
	mov r0, r8
	adds r0, #8
	cmp r0, #0
	beq .L080AB35A
	adds r6, r4, #0
	cmp r0, r6
	beq .L080AB35A
	movs r5, #0xe5
	lsls r5, r5, #2
	add r5, r8
.L080AB328:
	subs r5, #0x54
	subs r6, #0x54
	movs r0, #8
	add r0, r8
	mov sb, r0
	cmp r5, #0
	beq .L080AB356
	adds r4, r6, #0
	adds r4, #0x54
	cmp r5, r4
	beq .L080AB356
	adds r7, r5, #0
.L080AB340:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	cmp r7, r4
	bne .L080AB340
.L080AB356:
	cmp sb, r6
	bne .L080AB328
.L080AB35A:
	mov r0, r8
	bl __builtin_delete
.L080AB360:
	movs r0, #1
	ldr r1, [sp]
	ands r0, r1
	cmp r0, #0
	beq .L080AB370
	mov r0, sl
	bl __builtin_delete
.L080AB370:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080AB380
func_080AB380: @ 0x080AB380
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, [r0]
	mov r8, r0
	movs r3, #0
	movs r4, #0
	movs r2, #0
	movs r5, #0
	movs r1, #0xda
	lsls r1, r1, #2
	add r1, r8
.L080AB39A:
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq .L080AB3B2
	adds r3, #1
	ldrb r0, [r1, #5]
	cmp r0, #1
	bls .L080AB3AE
	subs r0, #1
	strb r0, [r1, #5]
	b .L080AB3B2
.L080AB3AE:
	strb r5, [r1, #4]
	adds r4, #1
.L080AB3B2:
	adds r1, #8
	adds r2, #1
	cmp r2, #0xf
	bls .L080AB39A
	cmp r3, #0
	beq .L080AB404
	cmp r4, r3
	bne .L080AB404
	movs r1, #0
.L080AB3C4:
	movs r0, #0x54
	muls r0, r1, r0
	adds r0, #8
	mov r2, r8
	adds r5, r2, r0
	ldrb r0, [r5]
	adds r7, r1, #1
	cmp r0, #0
	beq .L080AB3FE
	movs r6, #0
	movs r2, #0
	adds r4, r5, #0
	adds r4, #0x48
.L080AB3DE:
	lsls r0, r6, #3
	adds r0, r0, r5
	adds r0, #0x44
	ldr r1, [r4]
	str r2, [sp]
	bl func_08007C28
	ldr r2, [sp]
	str r2, [r4]
	adds r4, #8
	adds r6, #1
	cmp r6, #1
	bls .L080AB3DE
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
.L080AB3FE:
	adds r1, r7, #0
	cmp r1, #9
	bls .L080AB3C4
.L080AB404:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080AB410
func_080AB410: @ 0x080AB410
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	str r1, [sp, #0x2c]
	adds r6, r2, #0
	ldr r0, [r0]
	str r0, [sp, #0x30]
	ldr r0, [r0]
	str r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	ldrb r0, [r1, #5]
	cmp r0, #0
	bne .L080AB432
	b .L080AB5A2
.L080AB432:
	movs r1, #0
.L080AB434:
	movs r0, #0x54
	muls r0, r1, r0
	adds r0, #8
	ldr r2, [sp, #0x30]
	adds r2, r2, r0
	mov sl, r2
	ldrb r0, [r2]
	adds r1, #1
	str r1, [sp, #0x40]
	cmp r0, #0
	bne .L080AB44C
	b .L080AB594
.L080AB44C:
	ldrb r0, [r2, #1]
	cmp r0, #0
	bne .L080AB454
	b .L080AB594
.L080AB454:
	movs r3, #0
	mov sb, r3
.L080AB458:
	mov r5, sb
	lsls r4, r5, #5
	mov r7, sl
	adds r0, r4, r7
	ldr r5, [r0, #0xc]
	mov r1, sb
	lsls r0, r1, #3
	add r0, sl
	adds r0, #0x44
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	add r4, sl
	adds r4, #0xc
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080AB480
	ldrh r3, [r4, #4]
.L080AB480:
	lsls r2, r2, #5
	ldr r4, .L080AB4B8 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x14
	adds r1, r5, #0
	bl func_08008F0C
	mov r5, sp
	adds r5, #0x14
	str r5, [sp, #0x38]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AB4BC
	cmp r1, #0
	beq .L080AB4AC
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AB4AC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	movs r4, #1
	add sb, r4
	b .L080AB586
	.align 2, 0
.L080AB4B8: .4byte 0x06010000
.L080AB4BC:
	str r1, [sp, #0x48]
	movs r0, #1
	str r0, [sp, #0x28]
	ldr r1, [r6]
	ldr r5, [sp, #0x48]
	subs r0, r5, r1
	asrs r4, r0, #4
	str r4, [sp, #0x24]
	add r2, sp, #0x28
	add r0, sp, #0x24
	cmp r4, #1
	bhs .L080AB4D6
	adds r0, r2, #0
.L080AB4D6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AB4F6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AB4F2
	mov r0, r8
	bl func_080D3BC0
.L080AB4F2:
	ldr r1, [r6]
	b .L080AB4FA
.L080AB4F6:
	movs r0, #0
	mov r8, r0
.L080AB4FA:
	adds r5, r0, #0
	str r5, [sp, #0x4c]
	adds r2, r1, #0
	adds r3, r5, #0
	movs r7, #1
	add sb, r7
	b .L080AB51C
.L080AB508:
	cmp r3, #0
	beq .L080AB518
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AB518:
	adds r2, #0x10
	adds r3, #0x10
.L080AB51C:
	ldr r0, [sp, #0x48]
	cmp r2, r0
	bne .L080AB508
	adds r5, r3, #0
	ldr r0, [sp, #0x28]
	cmp r0, #1
	bne .L080AB53E
	cmp r5, #0
	beq .L080AB53A
	adds r0, r5, #0
	ldr r1, [sp, #0x38]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AB53A:
	adds r5, #0x10
	b .L080AB560
.L080AB53E:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AB55E
.L080AB546:
	cmp r2, #0
	beq .L080AB556
	adds r0, r2, #0
	ldr r1, [sp, #0x38]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AB556:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AB546
.L080AB55E:
	adds r5, r2, #0
.L080AB560:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080AB570
.L080AB56A:
	adds r0, #0x10
	cmp r0, r2
	bne .L080AB56A
.L080AB570:
	cmp r1, #0
	beq .L080AB57A
	adds r0, r1, #0
	bl free
.L080AB57A:
	ldr r0, [sp, #0x4c]
	add r0, r8
	ldr r7, [sp, #0x4c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AB586:
	mov r0, sb
	cmp r0, #1
	bhi .L080AB58E
	b .L080AB458
.L080AB58E:
	movs r0, #0
	mov r1, sl
	strb r0, [r1, #1]
.L080AB594:
	ldr r1, [sp, #0x40]
	cmp r1, #9
	bhi .L080AB59C
	b .L080AB434
.L080AB59C:
	movs r0, #0
	ldr r2, [sp, #0x30]
	strb r0, [r2, #5]
.L080AB5A2:
	ldr r3, [sp, #0x30]
	ldrb r0, [r3, #6]
	cmp r0, #0
	beq .L080AB5D6
	ldr r4, [sp, #0x34]
	ldr r3, [r4]
	ldr r5, [sp, #0x30]
	movs r7, #0xd9
	lsls r7, r7, #2
	adds r0, r5, r7
	ldrb r1, [r0]
	movs r0, #0x54
	muls r0, r1, r0
	adds r0, r0, r5
	ldr r1, [r0, #0x1c]
	movs r2, #0xd5
	lsls r2, r2, #2
	adds r0, r5, r2
	ldrb r2, [r0]
	ldr r4, [r3, #0x54]
	ldr r0, [sp, #0x34]
	movs r3, #1
	bl _call_via_r4
	movs r0, #0
	strb r0, [r5, #6]
.L080AB5D6:
	ldr r3, [sp, #0x34]
	ldr r0, [r3]
	ldr r1, [r0, #0x18]
	adds r0, r3, #0
	bl _call_via_r1
	str r0, [sp, #0x3c]
	ldr r4, [sp, #0x34]
	ldr r0, [r4]
	ldr r1, [r0, #0x1c]
	adds r0, r4, #0
	bl _call_via_r1
	mov sl, r0
	movs r5, #0
	mov r8, r5
	ldr r7, [sp, #0x30]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r7, r7, r0
	mov sb, r7
	ldr r1, [sp, #0x30]
	movs r2, #0xda
	lsls r2, r2, #2
	adds r7, r1, r2
.L080AB608:
	ldrb r0, [r7, #4]
	cmp r0, #0
	beq .L080AB66C
	ldrb r1, [r7, #6]
	movs r0, #0x54
	muls r0, r1, r0
	adds r0, #8
	ldr r4, [sp, #0x30]
	adds r3, r4, r0
	movs r1, #0
	ldrb r0, [r7, #5]
	cmp r0, #6
	bhi .L080AB624
	movs r1, #1
.L080AB624:
	movs r5, #2
	ldrsh r6, [r7, r5]
	movs r5, #0x80
	lsls r5, r5, #8
	subs r5, r5, r6
	movs r0, #0
	ldrsh r2, [r7, r0]
	ldr r4, [sp, #0x3c]
	subs r2, r2, r4
	mov r0, sl
	subs r6, r6, r0
	lsls r4, r1, #5
	adds r4, #4
	adds r4, r3, r4
	lsls r0, r1, #3
	adds r0, #0x44
	adds r0, r3, r0
	ldr r1, [r0, #4]
	str r2, [sp, #0x44]
	bl func_08007D4C
	str r5, [sp]
	str r4, [sp, #4]
	ldr r1, [sp, #0x34]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	mov r3, sb
	str r3, [sp, #0x10]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x44]
	adds r1, r2, #0
	adds r2, r6, #0
	movs r3, #0xaa
	ldr r4, .L080AB688 @ =func_030004DC
	bl _call_via_r4
.L080AB66C:
	adds r7, #8
	movs r4, #1
	add r8, r4
	mov r5, r8
	cmp r5, #0xf
	bls .L080AB608
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AB688: .4byte func_030004DC

	thumb_func_start func_080AB68C
func_080AB68C: @ 0x080AB68C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r2, #0
	adds r2, r3, #0
	ldr r7, [r0]
	movs r4, #0
.L080AB69E:
	lsls r0, r4, #3
	movs r3, #0xda
	lsls r3, r3, #2
	adds r0, r0, r3
	adds r3, r7, r0
	ldrb r0, [r3, #4]
	cmp r0, #0
	bne .L080AB772
	strh r1, [r3]
	strh r5, [r3, #2]
	movs r0, #1
	strb r0, [r3, #4]
	movs r0, #0xc
	strb r0, [r3, #5]
	strb r2, [r3, #6]
	movs r0, #0x54
	muls r0, r2, r0
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	movs r1, #0xd9
	lsls r1, r1, #2
	adds r1, r1, r7
	mov sb, r1
	cmp r0, #0
	bne .L080AB768
	cmp r2, #9
	bhi .L080AB710
	lsls r0, r2, #2
	ldr r1, .L080AB6E0 @ =.L080AB6E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AB6E0: .4byte .L080AB6E4
.L080AB6E4: @ jump table
	.4byte .L080AB710 @ case 0
	.4byte .L080AB70C @ case 1
	.4byte .L080AB70C @ case 2
	.4byte .L080AB710 @ case 3
	.4byte .L080AB710 @ case 4
	.4byte .L080AB710 @ case 5
	.4byte .L080AB714 @ case 6
	.4byte .L080AB714 @ case 7
	.4byte .L080AB718 @ case 8
	.4byte .L080AB71C @ case 9
.L080AB70C:
	movs r1, #2
	b .L080AB71E
.L080AB710:
	movs r1, #3
	b .L080AB71E
.L080AB714:
	movs r1, #5
	b .L080AB71E
.L080AB718:
	movs r1, #4
	b .L080AB71E
.L080AB71C:
	movs r1, #6
.L080AB71E:
	movs r0, #0x54
	adds r5, r2, #0
	muls r5, r0, r5
	adds r5, r5, r7
	adds r5, #8
	mov r8, r1
	movs r6, #0
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r3, r3, r7
	mov sb, r3
	adds r4, r5, #0
	adds r4, #0x44
.L080AB738:
	ldr r1, [r4, #4]
	adds r0, r4, #0
	str r2, [sp]
	bl func_08007C28
	adds r0, r4, #0
	mov r1, r8
	bl func_08007B54
	str r0, [r4, #4]
	rsbs r1, r0, #0
	orrs r1, r0
	ldr r2, [sp]
	cmp r1, #0
	bge .L080AB764
	adds r4, #8
	adds r6, #1
	cmp r6, #1
	bls .L080AB738
	movs r0, #1
	strb r0, [r5]
	strb r0, [r5, #1]
.L080AB764:
	movs r0, #1
	strb r0, [r7, #5]
.L080AB768:
	movs r0, #1
	strb r0, [r7, #6]
	mov r0, sb
	strb r2, [r0]
	b .L080AB778
.L080AB772:
	adds r4, #1
	cmp r4, #0xf
	bls .L080AB69E
.L080AB778:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080AB788
func_080AB788: @ 0x080AB788
	push {r4, lr}
	adds r4, r0, #0
	bl rand
	ldr r1, .L080AB7A0 @ =0x0000FFFF
	ands r1, r0
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r0, r0, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080AB7A0: .4byte 0x0000FFFF

	thumb_func_start func_080AB7A4
func_080AB7A4: @ 0x080AB7A4
	push {lr}
	cmp r0, #1
	beq .L080AB7D4
	cmp r0, #1
	bgt .L080AB7B4
	cmp r0, #0
	beq .L080AB7BE
	b .L080AB826
.L080AB7B4:
	cmp r0, #2
	beq .L080AB7EA
	cmp r0, #3
	beq .L080AB800
	b .L080AB826
.L080AB7BE:
	cmp r1, #1
	beq .L080AB818
	cmp r1, #1
	bgt .L080AB7CC
	cmp r1, #0
	beq .L080AB820
	b .L080AB7D4
.L080AB7CC:
	cmp r1, #2
	beq .L080AB824
	cmp r1, #3
	beq .L080AB81C
.L080AB7D4:
	cmp r1, #1
	beq .L080AB824
	cmp r1, #1
	bgt .L080AB7E2
	cmp r1, #0
	beq .L080AB81C
	b .L080AB7EA
.L080AB7E2:
	cmp r1, #2
	beq .L080AB818
	cmp r1, #3
	beq .L080AB820
.L080AB7EA:
	cmp r1, #1
	beq .L080AB820
	cmp r1, #1
	bgt .L080AB7F8
	cmp r1, #0
	beq .L080AB824
	b .L080AB800
.L080AB7F8:
	cmp r1, #2
	beq .L080AB81C
	cmp r1, #3
	beq .L080AB818
.L080AB800:
	cmp r1, #1
	beq .L080AB81C
	cmp r1, #1
	bgt .L080AB80E
	cmp r1, #0
	beq .L080AB818
	b .L080AB826
.L080AB80E:
	cmp r1, #2
	beq .L080AB820
	cmp r1, #3
	beq .L080AB824
	b .L080AB826
.L080AB818:
	movs r0, #3
	b .L080AB826
.L080AB81C:
	movs r0, #1
	b .L080AB826
.L080AB820:
	movs r0, #0
	b .L080AB826
.L080AB824:
	movs r0, #2
.L080AB826:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080AB82C
func_080AB82C: @ 0x080AB82C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x64
	bl func_080AB788
	adds r3, r0, #0
	movs r1, #0
	ldrb r2, [r4]
.L080AB83E:
	cmp r3, r2
	blo .L080AB854
	adds r1, #1
	cmp r1, r5
	bhs .L080AB852
	lsls r0, r1, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	adds r2, r2, r0
	b .L080AB83E
.L080AB852:
	movs r1, #0
.L080AB854:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_080AB85C
func_080AB85C: @ 0x080AB85C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7, #0x28]
	str r0, [r7]
	movs r0, #0x14
	adds r0, r0, r7
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0x20
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0
	bl func_080AC124
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq .L080AB8C0
	ldr r3, [r7]
	adds r3, r3, r0
	movs r0, #0x20
	ldrsh r4, [r7, r0]
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r0, #4
	ldrsh r5, [r6, r0]
	movs r0, #6
	ldrsh r6, [r6, r0]
	add r2, sp, #8
	adds r0, r2, #0
	strh r4, [r0]
	adds r1, r3, r1
	strh r1, [r2, #2]
	strh r5, [r2, #4]
	adds r3, r3, r6
	strh r3, [r2, #6]
	mov r0, r8
	adds r1, r2, #0
	bl func_080AC070
	adds r1, r0, #0
	movs r0, #1
	eors r1, r0
	b .L080AB8C2
.L080AB8C0:
	movs r1, #0
.L080AB8C2:
	strb r1, [r7, #0x10]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080AB8D0
func_080AB8D0: @ 0x080AB8D0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7, #0x28]
	rsbs r0, r0, #0
	str r0, [r7, #4]
	movs r0, #0x14
	adds r0, r0, r7
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0x20
	adds r3, r7, #4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0
	bl func_080AC124
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq .L080AB936
	ldr r3, [r7, #4]
	subs r3, r3, r0
	movs r0, #0x20
	ldrsh r4, [r7, r0]
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r0, #4
	ldrsh r5, [r6, r0]
	movs r0, #6
	ldrsh r6, [r6, r0]
	add r2, sp, #8
	adds r0, r2, #0
	strh r4, [r0]
	adds r1, r3, r1
	strh r1, [r2, #2]
	strh r5, [r2, #4]
	adds r3, r3, r6
	strh r3, [r2, #6]
	mov r0, r8
	adds r1, r2, #0
	bl func_080AC070
	adds r1, r0, #0
	movs r0, #1
	eors r1, r0
	b .L080AB938
.L080AB936:
	movs r1, #0
.L080AB938:
	strb r1, [r7, #0x11]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080AB948
func_080AB948: @ 0x080AB948
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7, #0x28]
	rsbs r0, r0, #0
	str r0, [r7, #8]
	movs r0, #0x14
	adds r0, r0, r7
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0x20
	adds r0, r7, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl func_080AC124
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	beq .L080AB9B2
	ldr r1, [r7, #8]
	subs r1, r1, r0
	movs r0, #0x20
	ldrsh r2, [r7, r0]
	movs r0, #2
	ldrsh r4, [r6, r0]
	movs r0, #4
	ldrsh r5, [r6, r0]
	movs r0, #6
	ldrsh r6, [r6, r0]
	add r3, sp, #8
	adds r2, r1, r2
	adds r0, r3, #0
	strh r2, [r0]
	strh r4, [r3, #2]
	adds r1, r1, r5
	strh r1, [r3, #4]
	strh r6, [r3, #6]
	mov r0, r8
	adds r1, r3, #0
	bl func_080AC070
	adds r1, r0, #0
	movs r0, #1
	eors r1, r0
	b .L080AB9B4
.L080AB9B2:
	movs r1, #0
.L080AB9B4:
	strb r1, [r7, #0x12]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080AB9C4
func_080AB9C4: @ 0x080AB9C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7, #0x28]
	str r0, [r7, #0xc]
	movs r0, #0x14
	adds r0, r0, r7
	mov r8, r0
	adds r6, r7, #0
	adds r6, #0x20
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	adds r0, #0xc
	str r0, [sp, #4]
	mov r0, r8
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0
	bl func_080AC124
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	beq .L080ABA2C
	ldr r1, [r7, #0xc]
	adds r1, r1, r0
	movs r0, #0x20
	ldrsh r2, [r7, r0]
	movs r0, #2
	ldrsh r4, [r6, r0]
	movs r0, #4
	ldrsh r5, [r6, r0]
	movs r0, #6
	ldrsh r6, [r6, r0]
	add r3, sp, #8
	adds r2, r1, r2
	adds r0, r3, #0
	strh r2, [r0]
	strh r4, [r3, #2]
	adds r1, r1, r5
	strh r1, [r3, #4]
	strh r6, [r3, #6]
	mov r0, r8
	adds r1, r3, #0
	bl func_080AC070
	adds r1, r0, #0
	movs r0, #1
	eors r1, r0
	b .L080ABA2E
.L080ABA2C:
	movs r1, #0
.L080ABA2E:
	strb r1, [r7, #0x13]
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080ABA3C
func_080ABA3C: @ 0x080ABA3C
	push {r4, lr}
	sub sp, #0x34
	adds r4, r0, #0
	mov r1, sp
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	strb r0, [r1, #0x10]
	strb r0, [r1, #0x11]
	strb r0, [r1, #0x12]
	strb r0, [r1, #0x13]
	add r1, sp, #0x14
	str r0, [sp, #0x14]
	str r0, [r1, #4]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	add r1, sp, #0x20
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r1, #1
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r0, sp
	strb r1, [r0, #0x10]
	strb r1, [r0, #0x11]
	strb r1, [r0, #0x12]
	strb r1, [r0, #0x13]
	adds r0, r4, #0
	mov r1, sp
	movs r2, #0x34
	bl memcpy
	adds r0, r4, #0
	add sp, #0x34
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_080ABA90
func_080ABA90: @ 0x080ABA90
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	movs r2, #4
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bge .L080ABB18
	movs r0, #0
	ldrsh r1, [r6, r0]
	movs r2, #0x24
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bge .L080ABB18
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	movs r2, #2
	ldrsh r0, [r6, r2]
	subs r5, r1, r0
	cmp r5, #0
	bgt .L080ABAE4
	ldr r1, [r4]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABAD0
	adds r0, r4, #0
	bl func_080AB85C
	ldr r0, [r4]
	b .L080ABAD2
.L080ABAD0:
	adds r0, r1, #0
.L080ABAD2:
	adds r0, r5, r0
	cmp r0, #0
	ble .L080ABAE4
	rsbs r0, r5, #0
	str r0, [r4]
	cmp r7, #1
	bne .L080ABAE4
	movs r0, #0
	strb r0, [r4, #0x10]
.L080ABAE4:
	movs r0, #0x22
	ldrsh r1, [r4, r0]
	movs r2, #6
	ldrsh r0, [r6, r2]
	subs r5, r1, r0
	cmp r5, #0
	blt .L080ABB18
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x28]
	cmn r1, r0
	bge .L080ABB04
	adds r0, r4, #0
	bl func_080AB8D0
	ldr r0, [r4, #4]
	b .L080ABB06
.L080ABB04:
	adds r0, r1, #0
.L080ABB06:
	adds r0, r5, r0
	cmp r0, #0
	bge .L080ABB18
	rsbs r0, r5, #0
	str r0, [r4, #4]
	cmp r7, #1
	bne .L080ABB18
	movs r0, #0
	strb r0, [r4, #0x11]
.L080ABB18:
	movs r0, #0x22
	ldrsh r1, [r4, r0]
	movs r2, #6
	ldrsh r0, [r6, r2]
	cmp r1, r0
	bge .L080ABB98
	movs r0, #2
	ldrsh r1, [r6, r0]
	movs r2, #0x26
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bge .L080ABB98
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	movs r2, #4
	ldrsh r0, [r6, r2]
	subs r5, r1, r0
	cmp r5, #0
	blt .L080ABB64
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x28]
	cmn r1, r0
	bge .L080ABB50
	adds r0, r4, #0
	bl func_080AB948
	ldr r0, [r4, #8]
	b .L080ABB52
.L080ABB50:
	adds r0, r1, #0
.L080ABB52:
	adds r0, r5, r0
	cmp r0, #0
	bge .L080ABB64
	rsbs r0, r5, #0
	str r0, [r4, #8]
	cmp r7, #1
	bne .L080ABB64
	movs r0, #0
	strb r0, [r4, #0x12]
.L080ABB64:
	movs r0, #0x24
	ldrsh r1, [r4, r0]
	movs r2, #0
	ldrsh r0, [r6, r2]
	subs r5, r1, r0
	cmp r5, #0
	bgt .L080ABB98
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABB84
	adds r0, r4, #0
	bl func_080AB9C4
	ldr r0, [r4, #0xc]
	b .L080ABB86
.L080ABB84:
	adds r0, r1, #0
.L080ABB86:
	adds r0, r5, r0
	cmp r0, #0
	ble .L080ABB98
	rsbs r0, r5, #0
	str r0, [r4, #0xc]
	cmp r7, #1
	bne .L080ABB98
	movs r0, #0
	strb r0, [r4, #0x13]
.L080ABB98:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080ABBA0
func_080ABBA0: @ 0x080ABBA0
	push {lr}
	sub sp, #8
	adds r2, r0, #0
	ldr r0, [r2, #0x24]
	str r0, [r2]
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r2, #0
	adds r1, #0x1c
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	bl func_080AC388
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080ABBC4
func_080ABBC4: @ 0x080ABBC4
	push {lr}
	sub sp, #8
	adds r2, r0, #0
	ldr r0, [r2, #0x24]
	rsbs r0, r0, #0
	str r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r2, #0
	adds r1, #0x1c
	adds r3, r2, #4
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	bl func_080AC388
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080ABBEC
func_080ABBEC: @ 0x080ABBEC
	push {lr}
	sub sp, #8
	adds r2, r0, #0
	ldr r0, [r2, #0x24]
	rsbs r0, r0, #0
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r2, #0
	adds r1, #0x1c
	adds r2, #8
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #0
	bl func_080AC388
	add sp, #8
	pop {r0}
	bx r0

	thumb_func_start func_080ABC14
func_080ABC14: @ 0x080ABC14
	push {lr}
	sub sp, #8
	adds r3, r0, #0
	ldr r0, [r3, #0x24]
	str r0, [r3, #0xc]
	adds r0, r3, #0
	adds r0, #0x10
	adds r1, r3, #0
	adds r1, #0x1c
	movs r2, #0
	str r2, [sp]
	adds r2, r3, #0
	adds r2, #0xc
	str r2, [sp, #4]
	movs r2, #0
	movs r3, #0
	bl func_080AC388
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080ABC40
func_080ABC40: @ 0x080ABC40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r4, [sp, #0x44]
	subs r2, r2, r0
	str r2, [sp, #0x10]
	subs r3, r3, r1
	mov sl, r3
	adds r1, r2, #0
	cmp r2, #0
	bge .L080ABC5E
	rsbs r1, r2, #0
.L080ABC5E:
	mov r0, sl
	cmp r0, #0
	bge .L080ABC66
	rsbs r0, r0, #0
.L080ABC66:
	movs r2, #0
	str r2, [sp, #0x14]
	lsls r2, r1, #1
	lsls r3, r0, #1
	adds r0, r3, r0
	cmp r2, r0
	ble .L080ABC7A
	movs r5, #1
	str r5, [sp, #0x14]
	b .L080ABC86
.L080ABC7A:
	adds r0, r2, r1
	cmp r0, r3
	bge .L080ABC86
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x14]
.L080ABC86:
	ldr r1, .L080ABCB8 @ =0x7FFFFFFF
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r5, #0
	str r5, [sp, #0x20]
.L080ABC92:
	ldr r7, [sp, #0x20]
	ldr r0, [sp, #0x48]
	adds r1, r7, #0
	bl func_080AB7A4
	adds r5, r0, #0
	movs r0, #1
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r1, #1
	cmp r5, #1
	beq .L080ABD04
	cmp r5, #1
	bgt .L080ABCBC
	cmp r5, #0
	beq .L080ABCC6
	b .L080ABDC8
	.align 2, 0
.L080ABCB8: .4byte 0x7FFFFFFF
.L080ABCBC:
	cmp r5, #2
	beq .L080ABD3E
	cmp r5, #3
	beq .L080ABD7E
	b .L080ABDC8
.L080ABCC6:
	movs r0, #0
	mov r2, sl
	cmp r2, #0
	bgt .L080ABCD0
	movs r0, #1
.L080ABCD0:
	mov r8, r0
	ldr r0, [sp, #0x14]
	lsrs r0, r0, #0x1f
	mov sb, r0
	movs r6, #0
	ldr r1, [r4]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABCEC
	adds r0, r4, #0
	bl func_080AB85C
	ldr r0, [r4]
	b .L080ABCEE
.L080ABCEC:
	adds r0, r1, #0
.L080ABCEE:
	cmp r0, #0
	bne .L080ABDC6
	ldr r1, [r4]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABD00
	adds r0, r4, #0
	bl func_080AB85C
.L080ABD00:
	ldrb r0, [r4, #0x10]
	b .L080ABDC0
.L080ABD04:
	mov r1, sl
	mvns r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	ldr r2, [sp, #0x14]
	lsrs r2, r2, #0x1f
	mov sb, r2
	movs r6, #0
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x28]
	cmn r1, r0
	bge .L080ABD26
	adds r0, r4, #0
	bl func_080AB8D0
	ldr r0, [r4, #4]
	b .L080ABD28
.L080ABD26:
	adds r0, r1, #0
.L080ABD28:
	cmp r0, #0
	bne .L080ABDC6
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #4]
	cmn r0, r1
	bge .L080ABD3A
	adds r0, r4, #0
	bl func_080AB8D0
.L080ABD3A:
	ldrb r0, [r4, #0x11]
	b .L080ABDC0
.L080ABD3E:
	ldr r1, [sp, #0x10]
	mvns r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	movs r0, #0
	ldr r2, [sp, #0x14]
	cmp r2, #0
	ble .L080ABD50
	movs r0, #1
.L080ABD50:
	mov sb, r0
	movs r6, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x28]
	cmn r1, r0
	bge .L080ABD66
	adds r0, r4, #0
	bl func_080AB948
	ldr r0, [r4, #8]
	b .L080ABD68
.L080ABD66:
	adds r0, r1, #0
.L080ABD68:
	cmp r0, #0
	bne .L080ABDC6
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #8]
	cmn r0, r1
	bge .L080ABD7A
	adds r0, r4, #0
	bl func_080AB948
.L080ABD7A:
	ldrb r0, [r4, #0x12]
	b .L080ABDC0
.L080ABD7E:
	movs r0, #0
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bgt .L080ABD88
	movs r0, #1
.L080ABD88:
	mov r8, r0
	movs r0, #0
	ldr r2, [sp, #0x14]
	cmp r2, #0
	ble .L080ABD94
	movs r0, #1
.L080ABD94:
	mov sb, r0
	movs r6, #0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABDAA
	adds r0, r4, #0
	bl func_080AB9C4
	ldr r0, [r4, #0xc]
	b .L080ABDAC
.L080ABDAA:
	adds r0, r1, #0
.L080ABDAC:
	cmp r0, #0
	bne .L080ABDC6
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABDBE
	adds r0, r4, #0
	bl func_080AB9C4
.L080ABDBE:
	ldrb r0, [r4, #0x13]
.L080ABDC0:
	cmp r0, #0
	bne .L080ABDC6
	movs r6, #1
.L080ABDC6:
	adds r1, r6, #0
.L080ABDC8:
	movs r3, #1
	rsbs r3, r3, #0
	mov r0, r8
	cmp r0, #0
	beq .L080ABDD4
	movs r3, #1
.L080ABDD4:
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r1, r0, #0x1f
	movs r0, #8
	ands r1, r0
	cmp r7, #2
	bgt .L080ABDF2
	cmp r7, #1
	bge .L080ABDEE
	cmp r7, #0
	bne .L080ABDF2
	movs r2, #0
	b .L080ABDF4
.L080ABDEE:
	movs r2, #1
	b .L080ABDF4
.L080ABDF2:
	movs r2, #2
.L080ABDF4:
	mov r0, sb
	cmp r0, #0
	beq .L080ABE00
	lsls r0, r3, #1
	adds r0, r1, r0
	b .L080ABE02
.L080ABE00:
	adds r0, r1, r3
.L080ABE02:
	adds r0, r0, r2
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bne .L080ABE18
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #2
	add r0, sp
	str r5, [r0]
	adds r2, #1
	str r2, [sp, #0x1c]
	b .L080ABE26
.L080ABE18:
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bge .L080ABE26
	str r5, [sp]
	movs r2, #1
	str r2, [sp, #0x1c]
	str r0, [sp, #0x18]
.L080ABE26:
	ldr r5, [sp, #0x20]
	adds r5, #1
	str r5, [sp, #0x20]
	cmp r5, #3
	bgt .L080ABE32
	b .L080ABC92
.L080ABE32:
	mov r4, sp
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bls .L080ABE42
	bl func_080AB788
	lsls r0, r0, #2
	b .L080ABE44
.L080ABE42:
	movs r0, #0
.L080ABE44:
	adds r0, r4, r0
	ldr r0, [r0]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080ABE58
func_080ABE58: @ 0x080ABE58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	ldr r4, [sp, #0x44]
	subs r2, r2, r0
	str r2, [sp, #0x10]
	subs r3, r3, r1
	mov sl, r3
	adds r1, r2, #0
	cmp r2, #0
	bge .L080ABE76
	rsbs r1, r2, #0
.L080ABE76:
	mov r0, sl
	cmp r0, #0
	bge .L080ABE7E
	rsbs r0, r0, #0
.L080ABE7E:
	movs r2, #0
	str r2, [sp, #0x14]
	lsls r2, r1, #1
	lsls r3, r0, #1
	adds r0, r3, r0
	cmp r2, r0
	ble .L080ABE92
	movs r5, #1
	str r5, [sp, #0x14]
	b .L080ABE9E
.L080ABE92:
	adds r0, r2, r1
	cmp r0, r3
	bge .L080ABE9E
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x14]
.L080ABE9E:
	ldr r1, .L080ABED0 @ =0x7FFFFFFF
	str r1, [sp, #0x18]
	movs r2, #0
	str r2, [sp, #0x1c]
	movs r5, #0
	str r5, [sp, #0x20]
.L080ABEAA:
	ldr r7, [sp, #0x20]
	ldr r0, [sp, #0x48]
	adds r1, r7, #0
	bl func_080AB7A4
	adds r5, r0, #0
	movs r0, #1
	mov r8, r0
	movs r1, #0
	mov sb, r1
	movs r1, #1
	cmp r5, #1
	beq .L080ABF1C
	cmp r5, #1
	bgt .L080ABED4
	cmp r5, #0
	beq .L080ABEDE
	b .L080ABFE0
	.align 2, 0
.L080ABED0: .4byte 0x7FFFFFFF
.L080ABED4:
	cmp r5, #2
	beq .L080ABF56
	cmp r5, #3
	beq .L080ABF96
	b .L080ABFE0
.L080ABEDE:
	movs r0, #0
	mov r2, sl
	cmp r2, #0
	bgt .L080ABEE8
	movs r0, #1
.L080ABEE8:
	mov r8, r0
	ldr r0, [sp, #0x14]
	lsrs r0, r0, #0x1f
	mov sb, r0
	movs r6, #0
	ldr r1, [r4]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABF04
	adds r0, r4, #0
	bl func_080AB85C
	ldr r0, [r4]
	b .L080ABF06
.L080ABF04:
	adds r0, r1, #0
.L080ABF06:
	cmp r0, #0
	bne .L080ABFDE
	ldr r1, [r4]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABF18
	adds r0, r4, #0
	bl func_080AB85C
.L080ABF18:
	ldrb r0, [r4, #0x10]
	b .L080ABFD8
.L080ABF1C:
	mov r1, sl
	mvns r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	ldr r2, [sp, #0x14]
	lsrs r2, r2, #0x1f
	mov sb, r2
	movs r6, #0
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x28]
	cmn r1, r0
	bge .L080ABF3E
	adds r0, r4, #0
	bl func_080AB8D0
	ldr r0, [r4, #4]
	b .L080ABF40
.L080ABF3E:
	adds r0, r1, #0
.L080ABF40:
	cmp r0, #0
	bne .L080ABFDE
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #4]
	cmn r0, r1
	bge .L080ABF52
	adds r0, r4, #0
	bl func_080AB8D0
.L080ABF52:
	ldrb r0, [r4, #0x11]
	b .L080ABFD8
.L080ABF56:
	ldr r1, [sp, #0x10]
	mvns r0, r1
	lsrs r0, r0, #0x1f
	mov r8, r0
	movs r0, #0
	ldr r2, [sp, #0x14]
	cmp r2, #0
	ble .L080ABF68
	movs r0, #1
.L080ABF68:
	mov sb, r0
	movs r6, #0
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x28]
	cmn r1, r0
	bge .L080ABF7E
	adds r0, r4, #0
	bl func_080AB948
	ldr r0, [r4, #8]
	b .L080ABF80
.L080ABF7E:
	adds r0, r1, #0
.L080ABF80:
	cmp r0, #0
	bne .L080ABFDE
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #8]
	cmn r0, r1
	bge .L080ABF92
	adds r0, r4, #0
	bl func_080AB948
.L080ABF92:
	ldrb r0, [r4, #0x12]
	b .L080ABFD8
.L080ABF96:
	movs r0, #0
	ldr r1, [sp, #0x10]
	cmp r1, #0
	bgt .L080ABFA0
	movs r0, #1
.L080ABFA0:
	mov r8, r0
	movs r0, #0
	ldr r2, [sp, #0x14]
	cmp r2, #0
	ble .L080ABFAC
	movs r0, #1
.L080ABFAC:
	mov sb, r0
	movs r6, #0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABFC2
	adds r0, r4, #0
	bl func_080AB9C4
	ldr r0, [r4, #0xc]
	b .L080ABFC4
.L080ABFC2:
	adds r0, r1, #0
.L080ABFC4:
	cmp r0, #0
	bne .L080ABFDE
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	ble .L080ABFD6
	adds r0, r4, #0
	bl func_080AB9C4
.L080ABFD6:
	ldrb r0, [r4, #0x13]
.L080ABFD8:
	cmp r0, #0
	bne .L080ABFDE
	movs r6, #1
.L080ABFDE:
	adds r1, r6, #0
.L080ABFE0:
	movs r3, #1
	mov r0, r8
	cmp r0, #0
	beq .L080ABFEA
	subs r3, #2
.L080ABFEA:
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r1, r0, #0x1f
	movs r0, #8
	ands r1, r0
	cmp r7, #2
	bgt .L080AC008
	cmp r7, #1
	bge .L080AC004
	cmp r7, #0
	bne .L080AC008
	movs r2, #0
	b .L080AC00A
.L080AC004:
	movs r2, #1
	b .L080AC00A
.L080AC008:
	movs r2, #2
.L080AC00A:
	mov r0, sb
	cmp r0, #0
	beq .L080AC016
	lsls r0, r3, #1
	adds r0, r1, r0
	b .L080AC018
.L080AC016:
	adds r0, r1, r3
.L080AC018:
	adds r0, r0, r2
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bne .L080AC02E
	ldr r2, [sp, #0x1c]
	lsls r0, r2, #2
	add r0, sp
	str r5, [r0]
	adds r2, #1
	str r2, [sp, #0x1c]
	b .L080AC03C
.L080AC02E:
	ldr r1, [sp, #0x18]
	cmp r0, r1
	bge .L080AC03C
	str r5, [sp]
	movs r2, #1
	str r2, [sp, #0x1c]
	str r0, [sp, #0x18]
.L080AC03C:
	ldr r5, [sp, #0x20]
	adds r5, #1
	str r5, [sp, #0x20]
	cmp r5, #3
	bgt .L080AC048
	b .L080ABEAA
.L080AC048:
	mov r4, sp
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bls .L080AC058
	bl func_080AB788
	lsls r0, r0, #2
	b .L080AC05A
.L080AC058:
	movs r0, #0
.L080AC05A:
	adds r0, r4, r0
	ldr r0, [r0]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080AC070
func_080AC070: @ 0x080AC070
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r2, r0, #0
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	str r0, [sp]
	movs r3, #4
	ldrsh r0, [r1, r3]
	adds r0, #7
	asrs r0, r0, #3
	mov r8, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r3, r0, #0x13
	movs r4, #6
	ldrsh r0, [r1, r4]
	adds r0, #7
	asrs r0, r0, #3
	mov sl, r0
	ldr r7, [r2]
	ldrh r0, [r2, #8]
	mov sb, r0
	cmp r7, #0
	beq .L080AC110
	ldr r1, [sp]
	cmp r1, #0
	blt .L080AC110
	cmp r8, sb
	bhi .L080AC110
	cmp r3, #0
	blt .L080AC110
	ldrh r4, [r2, #0xa]
	cmp sl, r4
	bgt .L080AC110
	ldr r2, [r2, #4]
	mov ip, r2
	adds r6, r3, #0
	cmp r6, sl
	bge .L080AC10C
	mov r5, sb
	muls r5, r6, r5
.L080AC0CC:
	ldr r2, [sp]
	cmp r2, r8
	bge .L080AC104
	adds r0, r2, r5
	lsls r4, r0, #2
	mov r1, ip
	adds r0, r5, r1
	adds r3, r2, r0
.L080AC0DC:
	mov r0, ip
	cmp r0, #0
	beq .L080AC0EA
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r7, r0
	b .L080AC0EC
.L080AC0EA:
	adds r0, r7, r4
.L080AC0EC:
	ldr r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne .L080AC110
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt .L080AC110
	adds r4, #4
	adds r3, #1
	adds r2, #1
	cmp r2, r8
	blt .L080AC0DC
.L080AC104:
	add r5, sb
	adds r6, #1
	cmp r6, sl
	blt .L080AC0CC
.L080AC10C:
	movs r0, #0
	b .L080AC112
.L080AC110:
	movs r0, #1
.L080AC112:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080AC124
func_080AC124: @ 0x080AC124
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	adds r4, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r7, r0, #0x13
	movs r2, #4
	ldrsh r0, [r1, r2]
	adds r0, #7
	asrs r0, r0, #3
	str r0, [sp, #0xc]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	str r0, [sp, #0x10]
	movs r3, #6
	ldrsh r1, [r1, r3]
	adds r0, r1, #7
	asrs r0, r0, #3
	str r0, [sp, #0x14]
	ldr r0, [r4]
	mov r8, r0
	ldrh r2, [r4, #8]
	mov sb, r2
	ldr r3, [r4, #4]
	mov sl, r3
	ldr r0, [sp, #4]
	cmp r0, #0
	beq .L080AC1E0
	ldr r2, [r0]
	str r2, [sp, #0x18]
	ldr r3, [sp, #0x14]
	lsls r0, r3, #3
	subs r6, r0, r1
	cmp r6, r2
	bge .L080AC1E0
	ldrh r0, [r4, #0xa]
	subs r0, #1
	str r0, [sp, #0x1c]
	mov ip, r3
	cmp r3, r0
	bgt .L080AC1DC
	mov r5, sb
	muls r5, r3, r5
.L080AC18A:
	adds r4, r7, #0
	ldr r0, [sp, #0xc]
	cmp r7, r0
	bge .L080AC1C8
	adds r0, r7, r5
	lsls r3, r0, #2
	mov r1, sl
	adds r0, r5, r1
	adds r2, r7, r0
.L080AC19C:
	mov r0, sl
	cmp r0, #0
	beq .L080AC1AA
	ldrb r0, [r2]
	lsls r0, r0, #2
	add r0, r8
	b .L080AC1AE
.L080AC1AA:
	mov r1, r8
	adds r0, r1, r3
.L080AC1AE:
	ldr r1, [r0]
	lsls r0, r1, #0x1f
	cmp r0, #0
	bne .L080AC1DC
	lsls r0, r1, #0x1e
	cmp r0, #0
	blt .L080AC1DC
	adds r3, #4
	adds r2, #1
	adds r4, #1
	ldr r0, [sp, #0xc]
	cmp r4, r0
	blt .L080AC19C
.L080AC1C8:
	adds r6, #8
	ldr r1, [sp, #0x18]
	cmp r6, r1
	bge .L080AC1E0
	add r5, sb
	movs r2, #1
	add ip, r2
	ldr r3, [sp, #0x1c]
	cmp ip, r3
	ble .L080AC18A
.L080AC1DC:
	ldr r0, [sp, #4]
	str r6, [r0]
.L080AC1E0:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080AC26A
	ldr r2, [r1]
	str r2, [sp, #0x20]
	ldr r3, [sp, #0x10]
	lsls r1, r3, #3
	ldr r2, [sp]
	movs r3, #2
	ldrsh r0, [r2, r3]
	subs r1, r1, r0
	mov ip, r1
	ldr r0, [sp, #0x20]
	cmp ip, r0
	ble .L080AC26A
	ldr r6, [sp, #0x10]
	subs r6, #1
	cmp r6, #0
	blt .L080AC264
	mov r5, sb
	muls r5, r6, r5
	mov r1, sb
	rsbs r1, r1, #0
	str r1, [sp, #0x30]
.L080AC210:
	adds r4, r7, #0
	ldr r2, [sp, #0xc]
	cmp r7, r2
	bge .L080AC24E
	adds r0, r7, r5
	lsls r3, r0, #2
	mov r1, sl
	adds r0, r5, r1
	adds r1, r7, r0
.L080AC222:
	mov r2, sl
	cmp r2, #0
	beq .L080AC230
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, r8
	b .L080AC234
.L080AC230:
	mov r2, r8
	adds r0, r2, r3
.L080AC234:
	ldr r2, [r0]
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne .L080AC264
	lsls r0, r2, #0x1e
	cmp r0, #0
	blt .L080AC264
	adds r3, #4
	adds r1, #1
	adds r4, #1
	ldr r0, [sp, #0xc]
	cmp r4, r0
	blt .L080AC222
.L080AC24E:
	movs r1, #8
	rsbs r1, r1, #0
	add ip, r1
	ldr r2, [sp, #0x20]
	cmp ip, r2
	ble .L080AC26A
	ldr r3, [sp, #0x30]
	adds r5, r5, r3
	subs r6, #1
	cmp r6, #0
	bge .L080AC210
.L080AC264:
	mov r0, ip
	ldr r1, [sp, #8]
	str r0, [r1]
.L080AC26A:
	ldr r2, [sp, #0x54]
	cmp r2, #0
	beq .L080AC2EA
	ldr r3, [r2]
	mov ip, r3
	lsls r1, r7, #3
	ldr r2, [sp]
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r6, r1, r0
	cmp r6, ip
	ble .L080AC2EA
	subs r5, r7, #1
	cmp r5, #0
	blt .L080AC2E6
	ldr r1, [sp, #0x10]
	lsls r0, r1, #2
	mov r2, sb
	muls r2, r0, r2
	str r2, [sp, #0x2c]
.L080AC292:
	ldr r4, [sp, #0x10]
	ldr r3, [sp, #0x14]
	cmp r4, r3
	bge .L080AC2DA
	lsls r0, r5, #2
	ldr r1, [sp, #0x2c]
	adds r3, r1, r0
	mov r1, sb
	muls r1, r4, r1
	mov r2, sl
	adds r0, r5, r2
	adds r1, r1, r0
	mov r0, sb
	lsls r7, r0, #2
.L080AC2AE:
	mov r2, sl
	cmp r2, #0
	beq .L080AC2BC
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, r8
	b .L080AC2C0
.L080AC2BC:
	mov r2, r8
	adds r0, r2, r3
.L080AC2C0:
	ldr r2, [r0]
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne .L080AC2E6
	lsls r0, r2, #0x1e
	cmp r0, #0
	blt .L080AC2E6
	adds r3, r3, r7
	add r1, sb
	adds r4, #1
	ldr r0, [sp, #0x14]
	cmp r4, r0
	blt .L080AC2AE
.L080AC2DA:
	subs r6, #8
	cmp r6, ip
	ble .L080AC2EA
	subs r5, #1
	cmp r5, #0
	bge .L080AC292
.L080AC2E6:
	ldr r1, [sp, #0x54]
	str r6, [r1]
.L080AC2EA:
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq .L080AC378
	ldr r3, [r2]
	str r3, [sp, #0x24]
	ldr r0, [sp, #0xc]
	lsls r1, r0, #3
	ldr r2, [sp]
	movs r3, #4
	ldrsh r0, [r2, r3]
	subs r6, r1, r0
	ldr r0, [sp, #0x24]
	cmp r6, r0
	bge .L080AC378
	movs r1, #1
	rsbs r1, r1, #0
	add r1, sb
	mov ip, r1
	ldr r5, [sp, #0xc]
	cmp r5, ip
	bgt .L080AC374
	ldr r2, [sp, #0x10]
	lsls r0, r2, #2
	mov r3, sb
	muls r3, r0, r3
	str r3, [sp, #0x28]
.L080AC31E:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r3, r0
	bge .L080AC366
	lsls r0, r5, #2
	ldr r1, [sp, #0x28]
	adds r4, r1, r0
	mov r1, sb
	muls r1, r3, r1
	mov r2, sl
	adds r0, r5, r2
	adds r1, r1, r0
	mov r0, sb
	lsls r7, r0, #2
.L080AC33A:
	mov r2, sl
	cmp r2, #0
	beq .L080AC348
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, r8
	b .L080AC34C
.L080AC348:
	mov r2, r8
	adds r0, r2, r4
.L080AC34C:
	ldr r2, [r0]
	lsls r0, r2, #0x1f
	cmp r0, #0
	bne .L080AC374
	lsls r0, r2, #0x1e
	cmp r0, #0
	blt .L080AC374
	adds r4, r4, r7
	add r1, sb
	adds r3, #1
	ldr r0, [sp, #0x14]
	cmp r3, r0
	blt .L080AC33A
.L080AC366:
	adds r6, #8
	ldr r1, [sp, #0x24]
	cmp r6, r1
	bge .L080AC378
	adds r5, #1
	cmp r5, ip
	ble .L080AC31E
.L080AC374:
	ldr r2, [sp, #0x58]
	str r6, [r2]
.L080AC378:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080AC388
func_080AC388: @ 0x080AC388
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r4, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r6, r0, #0x13
	movs r2, #4
	ldrsh r0, [r1, r2]
	adds r0, #7
	asrs r0, r0, #3
	mov sl, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x13
	str r0, [sp, #0xc]
	movs r3, #6
	ldrsh r1, [r1, r3]
	adds r0, r1, #7
	asrs r0, r0, #3
	str r0, [sp, #0x10]
	ldr r7, [r4]
	mov ip, r7
	ldrh r0, [r4, #8]
	mov r8, r0
	ldr r2, [r4, #4]
	mov sb, r2
	ldr r3, [sp, #4]
	cmp r3, #0
	beq .L080AC43C
	ldr r7, [r3]
	str r7, [sp, #0x14]
	ldr r2, [sp, #0x10]
	lsls r0, r2, #3
	subs r5, r0, r1
	cmp r5, r7
	bge .L080AC43C
	ldrh r0, [r4, #0xa]
	subs r0, #1
	str r0, [sp, #0x18]
	str r2, [sp, #0x2c]
	cmp r2, r0
	bgt .L080AC438
	mov r4, r8
	muls r4, r2, r4
.L080AC3EE:
	adds r3, r6, #0
	cmp r6, sl
	bge .L080AC422
	adds r0, r6, r4
	lsls r2, r0, #2
	mov r7, sb
	adds r0, r4, r7
	adds r1, r6, r0
.L080AC3FE:
	mov r0, sb
	cmp r0, #0
	beq .L080AC40C
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, ip
	b .L080AC410
.L080AC40C:
	mov r7, ip
	adds r0, r7, r2
.L080AC410:
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne .L080AC438
	adds r2, #4
	adds r1, #1
	adds r3, #1
	cmp r3, sl
	blt .L080AC3FE
.L080AC422:
	adds r5, #8
	ldr r0, [sp, #0x14]
	cmp r5, r0
	bge .L080AC43C
	add r4, r8
	ldr r1, [sp, #0x2c]
	adds r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x18]
	cmp r1, r2
	ble .L080AC3EE
.L080AC438:
	ldr r3, [sp, #4]
	str r5, [r3]
.L080AC43C:
	ldr r7, [sp, #8]
	cmp r7, #0
	beq .L080AC4BC
	ldr r0, [r7]
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0xc]
	lsls r1, r2, #3
	ldr r3, [sp]
	movs r7, #2
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	str r1, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	ble .L080AC4BC
	adds r5, r2, #0
	subs r5, #1
	cmp r5, #0
	blt .L080AC4B6
	mov r4, r8
	muls r4, r5, r4
	mov r1, r8
	rsbs r1, r1, #0
	str r1, [sp, #0x28]
.L080AC46C:
	adds r3, r6, #0
	cmp r6, sl
	bge .L080AC4A0
	adds r0, r6, r4
	lsls r1, r0, #2
	mov r2, sb
	adds r0, r4, r2
	adds r2, r6, r0
.L080AC47C:
	mov r7, sb
	cmp r7, #0
	beq .L080AC48A
	ldrb r0, [r2]
	lsls r0, r0, #2
	add r0, ip
	b .L080AC48E
.L080AC48A:
	mov r7, ip
	adds r0, r7, r1
.L080AC48E:
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne .L080AC4B6
	adds r1, #4
	adds r2, #1
	adds r3, #1
	cmp r3, sl
	blt .L080AC47C
.L080AC4A0:
	ldr r0, [sp, #0x2c]
	subs r0, #8
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x1c]
	cmp r0, r1
	ble .L080AC4BC
	ldr r2, [sp, #0x28]
	adds r4, r4, r2
	subs r5, #1
	cmp r5, #0
	bge .L080AC46C
.L080AC4B6:
	ldr r3, [sp, #0x2c]
	ldr r7, [sp, #8]
	str r3, [r7]
.L080AC4BC:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq .L080AC53A
	ldr r1, [r0]
	str r1, [sp, #0x2c]
	lsls r1, r6, #3
	ldr r2, [sp]
	movs r3, #0
	ldrsh r0, [r2, r3]
	subs r5, r1, r0
	ldr r7, [sp, #0x2c]
	cmp r5, r7
	ble .L080AC53A
	subs r4, r6, #1
	cmp r4, #0
	blt .L080AC536
	ldr r1, [sp, #0xc]
	lsls r0, r1, #2
	mov r2, r8
	muls r2, r0, r2
	str r2, [sp, #0x24]
.L080AC4E6:
	ldr r3, [sp, #0xc]
	ldr r6, [sp, #0x10]
	cmp r3, r6
	bge .L080AC528
	lsls r0, r4, #2
	ldr r7, [sp, #0x24]
	adds r2, r7, r0
	mov r1, r8
	muls r1, r3, r1
	mov r6, sb
	adds r0, r4, r6
	adds r1, r1, r0
	mov r7, r8
	lsls r6, r7, #2
.L080AC502:
	mov r0, sb
	cmp r0, #0
	beq .L080AC510
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, ip
	b .L080AC514
.L080AC510:
	mov r7, ip
	adds r0, r7, r2
.L080AC514:
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne .L080AC536
	adds r2, r2, r6
	add r1, r8
	adds r3, #1
	ldr r0, [sp, #0x10]
	cmp r3, r0
	blt .L080AC502
.L080AC528:
	subs r5, #8
	ldr r1, [sp, #0x2c]
	cmp r5, r1
	ble .L080AC53A
	subs r4, #1
	cmp r4, #0
	bge .L080AC4E6
.L080AC536:
	ldr r2, [sp, #0x50]
	str r5, [r2]
.L080AC53A:
	ldr r3, [sp, #0x54]
	cmp r3, #0
	beq .L080AC5C0
	ldr r6, [r3]
	str r6, [sp, #0x20]
	mov r7, sl
	lsls r1, r7, #3
	ldr r2, [sp]
	movs r3, #4
	ldrsh r0, [r2, r3]
	subs r5, r1, r0
	cmp r5, r6
	bge .L080AC5C0
	mov r6, r8
	subs r6, #1
	str r6, [sp, #0x2c]
	mov r4, sl
	cmp r4, r6
	bgt .L080AC5BC
	ldr r7, [sp, #0xc]
	lsls r0, r7, #2
	mov r1, r8
	muls r1, r0, r1
	mov sl, r1
.L080AC56A:
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	cmp r2, r3
	bge .L080AC5AC
	lsls r0, r4, #2
	mov r6, sl
	adds r3, r6, r0
	mov r1, r8
	muls r1, r2, r1
	mov r7, sb
	adds r0, r4, r7
	adds r1, r1, r0
	mov r0, r8
	lsls r6, r0, #2
.L080AC586:
	mov r7, sb
	cmp r7, #0
	beq .L080AC594
	ldrb r0, [r1]
	lsls r0, r0, #2
	add r0, ip
	b .L080AC598
.L080AC594:
	mov r7, ip
	adds r0, r7, r3
.L080AC598:
	ldr r0, [r0]
	lsls r0, r0, #0x1f
	cmp r0, #0
	bne .L080AC5BC
	adds r3, r3, r6
	add r1, r8
	adds r2, #1
	ldr r0, [sp, #0x10]
	cmp r2, r0
	blt .L080AC586
.L080AC5AC:
	adds r5, #8
	ldr r1, [sp, #0x20]
	cmp r5, r1
	bge .L080AC5C0
	adds r4, #1
	ldr r2, [sp, #0x2c]
	cmp r4, r2
	ble .L080AC56A
.L080AC5BC:
	ldr r3, [sp, #0x54]
	str r5, [r3]
.L080AC5C0:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080AC5D0
func_080AC5D0: @ 0x080AC5D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r0, r2, #0
	subs r0, #8
	asrs r3, r0, #3
	subs r0, r1, #6
	asrs r0, r0, #3
	mov sl, r0
	adds r2, #3
	asrs r2, r2, #3
	mov r8, r2
	adds r1, #5
	asrs r7, r1, #3
	cmp r3, r8
	bgt .L080AC618
	cmp sl, r7
	bgt .L080AC618
	ldrh r0, [r4, #8]
	mov sb, r0
	cmp r3, #0
	blt .L080AC618
	mov r1, sl
	cmp r1, #0
	blt .L080AC618
	ldrh r0, [r4, #0xa]
	cmp r8, r0
	bhs .L080AC618
	cmp r7, sb
	bhs .L080AC618
	ldr r6, [r4]
	cmp r6, #0
	bne .L080AC61C
.L080AC618:
	movs r0, #0
	b .L080AC666
.L080AC61C:
	ldr r4, [r4, #4]
	mov ip, r4
	adds r5, r3, #0
	cmp r5, r8
	bgt .L080AC664
	mov r4, sb
	muls r4, r5, r4
.L080AC62A:
	mov r3, sl
	cmp r3, r7
	bgt .L080AC65C
	adds r0, r3, r4
	lsls r2, r0, #2
	mov r1, ip
	adds r0, r4, r1
	adds r1, r3, r0
.L080AC63A:
	mov r0, ip
	cmp r0, #0
	beq .L080AC648
	ldrb r0, [r1]
	lsls r0, r0, #2
	adds r0, r6, r0
	b .L080AC64A
.L080AC648:
	adds r0, r6, r2
.L080AC64A:
	ldr r0, [r0]
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge .L080AC618
	adds r2, #4
	adds r1, #1
	adds r3, #1
	cmp r3, r7
	ble .L080AC63A
.L080AC65C:
	add r4, sb
	adds r5, #1
	cmp r5, r8
	ble .L080AC62A
.L080AC664:
	movs r0, #1
.L080AC666:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080AC674
func_080AC674: @ 0x080AC674
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	mov sl, r1
	ldr r0, [r1]
	movs r1, #0
	mov r2, sl
	str r1, [r2]
	str r0, [r5]
	movs r7, #0xca
	lsls r7, r7, #1
	adds r0, r5, r7
	str r1, [r0]
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r3, r5, r0
	movs r2, #0x15
	movs r1, #0xff
	mov ip, r1
	movs r4, #0
	movs r7, #1
	mov r8, r7
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, #0xa0
	adds r1, r5, r0
.L080AC6B0:
	ldrb r0, [r1]
	mov r7, ip
	orrs r0, r7
	strb r0, [r1]
	strb r4, [r1, #1]
	strb r4, [r1, #2]
	mov r0, r8
	strb r0, [r1, #3]
	adds r1, #0x84
	subs r2, #1
	cmp r2, r6
	bne .L080AC6B0
	ldr r1, .L080AC814 @ =0x00000B78
	adds r4, r3, r1
	movs r6, #0xc
	ldr r2, .L080AC818 @ =0x00000C14
	adds r7, r3, r2
	ldr r0, .L080AC81C @ =0x00000C15
	adds r0, r0, r3
	mov r8, r0
	ldr r1, .L080AC820 @ =0x0000102C
	adds r1, r5, r1
	str r1, [sp, #8]
	adds r2, r5, #4
	str r2, [sp, #4]
	movs r0, #0xca
	lsls r0, r0, #1
	adds r0, r5, r0
	str r0, [sp, #0xc]
	movs r1, #0
	mov sb, r1
.L080AC6EE:
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	adds r1, r0, #0
	str r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	strb r0, [r4, #8]
	movs r0, #0xff
	strb r0, [r4, #9]
	mov r2, sb
	strb r2, [r4, #0xa]
	adds r4, #0xc
	subs r6, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne .L080AC6EE
	movs r4, #0
	strb r4, [r7]
	mov r7, r8
	strb r4, [r7]
	movs r1, #0xdb
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, .L080AC824 @ =gUnk_0858BA28
	bl func_0805E6CC
	movs r2, #0xde
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, .L080AC828 @ =gUnk_086678A0
	bl func_0805E6CC
	movs r7, #0xe1
	lsls r7, r7, #4
	adds r0, r5, r7
	ldr r1, .L080AC82C @ =gUnk_0871EF00
	bl func_0805E6CC
	movs r1, #0xe4
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, .L080AC830 @ =gUnk_086FAA80
	bl func_0805E6CC
	movs r2, #0xe7
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, .L080AC834 @ =gUnk_0871D51C
	bl func_0805E6CC
	adds r7, #0x90
	adds r0, r5, r7
	ldr r1, .L080AC838 @ =gUnk_0871EDD4
	bl func_0805E6CC
	movs r1, #0xed
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, .L080AC83C @ =gUnk_0871ECAC
	bl func_0805E6CC
	movs r2, #0xf0
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, .L080AC840 @ =gUnk_08667060
	bl func_0805E6CC
	adds r7, #0x90
	adds r0, r5, r7
	ldr r1, .L080AC844 @ =gUnk_08727A74
	bl func_0805E6CC
	movs r1, #0xf6
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, .L080AC848 @ =gUnk_08726CCC
	bl func_0805E6CC
	movs r2, #0xf9
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, .L080AC84C @ =gUnk_08727368
	bl func_0805E6CC
	adds r7, #0x90
	adds r0, r5, r7
	ldr r1, .L080AC850 @ =gUnk_08725DA0
	bl func_0805E6CC
	movs r1, #0xff
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, .L080AC854 @ =gUnk_086F2FAC
	bl func_0805E6CC
	movs r2, #0x81
	lsls r2, r2, #5
	adds r0, r5, r2
	str r4, [r0]
	adds r7, #0x64
	adds r0, r5, r7
	str r4, [r0]
	ldr r0, .L080AC858 @ =0x00001028
	adds r1, r5, r0
	str r4, [r1]
	movs r0, #0
	ldr r2, [sp, #8]
	strh r4, [r2]
	strh r4, [r2, #2]
	strb r0, [r1, #9]
	str r4, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0xc]
	cmp r0, r1
	beq .L080AC7E8
	movs r2, #0
.L080AC7E2:
	stm r0!, {r2}
	cmp r0, r1
	bne .L080AC7E2
.L080AC7E8:
	mov r7, sl
	ldr r1, [r7]
	cmp r1, #0
	beq .L080AC800
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AC800:
	adds r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080AC814: .4byte 0x00000B78
.L080AC818: .4byte 0x00000C14
.L080AC81C: .4byte 0x00000C15
.L080AC820: .4byte 0x0000102C
.L080AC824: .4byte gUnk_0858BA28
.L080AC828: .4byte gUnk_086678A0
.L080AC82C: .4byte gUnk_0871EF00
.L080AC830: .4byte gUnk_086FAA80
.L080AC834: .4byte gUnk_0871D51C
.L080AC838: .4byte gUnk_0871EDD4
.L080AC83C: .4byte gUnk_0871ECAC
.L080AC840: .4byte gUnk_08667060
.L080AC844: .4byte gUnk_08727A74
.L080AC848: .4byte gUnk_08726CCC
.L080AC84C: .4byte gUnk_08727368
.L080AC850: .4byte gUnk_08725DA0
.L080AC854: .4byte gUnk_086F2FAC
.L080AC858: .4byte 0x00001028

	thumb_func_start func_080AC85C
func_080AC85C: @ 0x080AC85C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	movs r6, #0
	adds r4, r5, #4
.L080AC866:
	ldr r1, [r4]
	cmp r1, #0
	beq .L080AC878
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AC878:
	adds r4, #4
	adds r6, #1
	cmp r6, #0x63
	bls .L080AC866
	ldr r1, .L080AC95C @ =0x00001028
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080AC896
	ldr r0, [r1, #0x24]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AC896:
	ldr r2, .L080AC960 @ =0x00001024
	adds r0, r5, r2
	ldr r0, [r0]
	cmp r0, #0
	beq .L080AC8A6
	movs r1, #3
	bl func_080AB2E4
.L080AC8A6:
	movs r1, #0x81
	lsls r1, r1, #5
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080AC8B8
	movs r1, #3
	bl func_0803AC78
.L080AC8B8:
	movs r2, #0xff
	lsls r2, r2, #4
	adds r0, r5, r2
	ldr r1, .L080AC964 @ =vtable_unk_080E5A28
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	movs r0, #0xd1
	lsls r0, r0, #4
	adds r6, r5, r0
	cmp r6, #0
	beq .L080AC932
	ldr r1, .L080AC968 @ =0x00000DAC
	adds r4, r5, r1
	cmp r6, r4
	beq .L080AC932
.L080AC91C:
	subs r4, #0xc
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	cmp r6, r4
	bne .L080AC91C
.L080AC932:
	ldr r1, [r5]
	cmp r1, #0
	beq .L080AC948
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AC948:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq .L080AC956
	adds r0, r5, #0
	bl __builtin_delete
.L080AC956:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AC95C: .4byte 0x00001028
.L080AC960: .4byte 0x00001024
.L080AC964: .4byte vtable_unk_080E5A28
.L080AC968: .4byte 0x00000DAC

	thumb_func_start func_080AC96C
func_080AC96C: @ 0x080AC96C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r0, r5, #5
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r6, r0, #0
	adds r6, #0xa0
	ldrb r0, [r6]
	mvns r0, r0
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x1f
	cmp r7, #0
	beq .L080AC9A4
	movs r2, #0
	ldrsb r2, [r6, r2]
	ldr r0, .L080AC9A0 @ =0x00000B78
	adds r1, r4, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r1, r1, r0
.L080AC99A:
	ldrb r0, [r1, #8]
	b .L080AC9E4
	.align 2, 0
.L080AC9A0: .4byte 0x00000B78
.L080AC9A4:
	ldr r0, .L080AC9D8 @ =0x00000C14
	adds r2, r4, r0
	ldrb r3, [r2]
	cmp r3, #0xd
	bhs .L080AC9E0
	adds r1, r3, #0
	adds r0, r1, #1
	strb r0, [r2]
	ldr r0, .L080AC9DC @ =0x00000B78
	adds r2, r4, r0
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r2, r0
	movs r0, #9
	ldrsb r0, [r1, r0]
	cmp r0, r5
	beq .L080AC9CC
	strb r5, [r1, #9]
	strb r7, [r1, #0xa]
.L080AC9CC:
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, r3
	beq .L080AC99A
	strb r3, [r6]
	b .L080AC99A
	.align 2, 0
.L080AC9D8: .4byte 0x00000C14
.L080AC9DC: .4byte 0x00000B78
.L080AC9E0:
	movs r0, #1
	rsbs r0, r0, #0
.L080AC9E4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080AC9EC
func_080AC9EC: @ 0x080AC9EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, .L080ACADC @ =vtable_unk_080E8440
	str r0, [r6]
	ldr r1, .L080ACAE0 @ =vtable_unk_080E8344
	adds r0, r6, #0
	stm r0!, {r1}
	ldr r2, [r7]
	movs r1, #0
	str r1, [r7]
	str r2, [sp, #4]
	add r1, sp, #4
	bl func_080AC674
	ldr r0, [r6, #4]
	add r1, sp, #8
	movs r5, #0x30
	ldrh r3, [r1]
	ldr r4, .L080ACAE4 @ =0xFFFFFC00
	adds r2, r4, #0
	ands r2, r3
	orrs r2, r5
	strh r2, [r1]
	ldrb r5, [r1, #1]
	movs r3, #3
	adds r2, r3, #0
	ands r2, r5
	strb r2, [r1, #1]
	ldrh r5, [r1, #2]
	adds r2, r4, #0
	ands r2, r5
	strh r2, [r1, #2]
	ldrb r2, [r1, #3]
	ands r3, r2
	strb r3, [r1, #3]
	ldrh r2, [r1, #4]
	ands r4, r2
	strh r4, [r1, #4]
	movs r2, #0x1e
	str r2, [sp]
	movs r2, #0
	movs r3, #0
	bl func_080A56DC
	movs r0, #0xa0
	bl __builtin_new
	adds r1, r6, #0
	bl func_0803AB30
	ldr r1, .L080ACAE8 @ =0x00001024
	adds r5, r6, r1
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080ACA6A
	cmp r0, #0
	beq .L080ACA6A
	movs r1, #3
	bl func_0803AC78
.L080ACA6A:
	str r4, [r5]
	ldr r0, .L080ACAEC @ =0x00001028
	adds r4, r6, r0
	movs r5, #0
	ldr r0, [r4]
	cmp r5, r0
	beq .L080ACA82
	cmp r0, #0
	beq .L080ACA82
	movs r1, #3
	bl func_080AB2E4
.L080ACA82:
	str r5, [r4]
	movs r0, #4
	bl __builtin_new
	ldr r1, [r6, #4]
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl func_080AAFC8
	ldr r1, .L080ACAEC @ =0x00001028
	adds r5, r6, r1
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080ACAAA
	cmp r0, #0
	beq .L080ACAAA
	movs r1, #3
	bl func_080AB2E4
.L080ACAAA:
	str r4, [r5]
	movs r4, #0
.L080ACAAE:
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_080AD49C
	adds r4, #1
	cmp r4, #0x63
	bls .L080ACAAE
	ldr r1, [r7]
	cmp r1, #0
	beq .L080ACAD2
	adds r0, r1, #0
	adds r0, #0x90
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080ACAD2:
	adds r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080ACADC: .4byte vtable_unk_080E8440
.L080ACAE0: .4byte vtable_unk_080E8344
.L080ACAE4: .4byte 0xFFFFFC00
.L080ACAE8: .4byte 0x00001024
.L080ACAEC: .4byte 0x00001028

	thumb_func_start func_080ACAF0
func_080ACAF0: @ 0x080ACAF0
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, [r6, #4]
	adds r1, r0, #0
	adds r1, #0x90
	ldr r1, [r1]
	ldr r1, [r1, #0xc]
	bl _call_via_r1
	ldr r1, .L080ACB54 @ =0x00001028
	adds r0, r6, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080ACB14
	bl func_080AB380
.L080ACB14:
	ldr r0, .L080ACB58 @ =0x0000102C
	adds r1, r6, r0
	ldr r4, [r1]
	rsbs r0, r4, #0
	orrs r0, r4
	cmp r0, #0
	bge .L080ACBD8
	adds r5, r1, #0
	ldrb r2, [r5, #8]
	cmp r2, #0
	beq .L080ACB8E
	ldrb r0, [r5, #9]
	subs r0, #1
	movs r2, #0
	strb r0, [r5, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080ACB5C
	ldr r1, [r5]
	cmp r2, r1
	beq .L080ACB4E
	cmp r1, #0
	beq .L080ACB4E
	ldr r0, [r1, #0x24]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080ACB4E:
	movs r0, #0
	str r0, [r5]
	b .L080ACB82
	.align 2, 0
.L080ACB54: .4byte 0x00001028
.L080ACB58: .4byte 0x0000102C
.L080ACB5C:
	ldr r4, [r5]
	adds r1, r4, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	cmp r0, #0
	bne .L080ACB80
	adds r0, r4, #0
	adds r0, #0x28
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	bge .L080ACB82
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #1
	strb r0, [r1]
	b .L080ACB82
.L080ACB80:
	strb r2, [r1]
.L080ACB82:
	ldrb r0, [r5, #0xa]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r5, #0xa]
	b .L080ACBD8
.L080ACB8E:
	adds r1, r4, #0
	adds r1, #0x3f
	ldrb r0, [r1]
	cmp r0, #0
	bne .L080ACBB4
	adds r0, r4, #0
	adds r0, #0x28
	bl func_0805E8F0
	adds r2, r0, #0
	lsls r0, r2, #0x1e
	cmp r0, #0
	bge .L080ACBB0
	adds r1, r4, #0
	adds r1, #0x3c
	movs r0, #1
	strb r0, [r1]
.L080ACBB0:
	adds r0, r2, #0
	b .L080ACBB8
.L080ACBB4:
	strb r2, [r1]
	movs r0, #2
.L080ACBB8:
	lsls r0, r0, #0x1d
	cmp r0, #0
	bge .L080ACBD8
	movs r4, #0
	ldr r1, [r5]
	cmp r4, r1
	beq .L080ACBD6
	cmp r1, #0
	beq .L080ACBD6
	ldr r0, [r1, #0x24]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080ACBD6:
	str r4, [r5]
.L080ACBD8:
	adds r4, r6, #0
	adds r4, #8
	movs r1, #0xcc
	lsls r1, r1, #1
	adds r5, r6, r1
	mov r0, sp
	ldr r1, [r7]
	str r1, [sp]
	movs r1, #0
	strb r1, [r0, #4]
	cmp r4, r5
	beq .L080ACC08
.L080ACBF0:
	ldr r1, [r4]
	cmp r1, #0
	beq .L080ACC02
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #0x2c]
	adds r0, r1, #0
	mov r1, sp
	bl _call_via_r2
.L080ACC02:
	adds r4, #4
	cmp r4, r5
	bne .L080ACBF0
.L080ACC08:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080ACC10
func_080ACC10: @ 0x080ACC10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L080ACEA4 @ =0xFFFFF350
	add sp, r4
	ldr r2, .L080ACEA8 @ =0x00000C6C
	add r2, sp
	str r0, [r2]
	mov sb, r1
	movs r0, #0
	ldr r1, .L080ACEAC @ =0x00000C58
	add r1, sp
	str r0, [r1]
	ldr r3, [r2]
	movs r4, #0xce
	lsls r4, r4, #1
	adds r1, r3, r4
	movs r2, #0x20
	ldr r0, .L080ACEAC @ =0x00000C58
	add r0, sp
	ldr r0, [r0]
.L080ACC3E:
	strb r0, [r1]
	subs r2, #1
	adds r1, #1
	cmp r2, #0
	bgt .L080ACC3E
	ldr r5, .L080ACEA8 @ =0x00000C6C
	add r5, sp
	ldr r5, [r5]
	ldr r0, [r5, #4]
	adds r1, r0, #0
	adds r1, #0x90
	ldr r4, [r1]
	mov r6, sb
	ldr r1, [r6]
	ldr r2, [r6, #4]
	ldr r3, [r6, #0xc]
	ldr r4, [r4, #0x10]
	bl _call_via_r4
	ldr r7, .L080ACEB0 @ =0x00001024
	adds r0, r5, r7
	ldr r2, [r0]
	ldr r1, [r6]
	adds r4, r2, #0
	adds r4, #0x9c
	ldrb r0, [r4]
	cmp r0, #0
	beq .L080ACC80
	adds r0, r2, #0
	bl func_0803ACD8
	movs r0, #0
	strb r0, [r4]
.L080ACC80:
	ldr r0, .L080ACEA8 @ =0x00000C6C
	add r0, sp
	ldr r0, [r0]
	movs r1, #0xce
	lsls r1, r1, #1
	adds r4, r0, r1
	movs r1, #0xdb
	lsls r1, r1, #4
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r3, .L080ACEA8 @ =0x00000C6C
	add r3, sp
	ldr r3, [r3]
	ldr r5, .L080ACEB4 @ =0x00000DB1
	adds r2, r3, r5
	strb r1, [r2]
	movs r3, #0
	ldr r5, .L080ACEB8 @ =0x00000C9C
	add r5, sp
	str r0, [r5]
	movs r6, #0xca
	lsls r6, r6, #4
	add r6, sp
	str r2, [r6]
	ldrb r7, [r2]
	cmp r3, r7
	bhs .L080ACCEE
	ldr r0, .L080ACEA8 @ =0x00000C6C
	add r0, sp
	ldr r0, [r0]
	movs r1, #0xde
	lsls r1, r1, #1
	adds r5, r0, r1
	ldr r1, .L080ACEBC @ =0x00000D1D
	adds r2, r0, r1
.L080ACCC6:
	ldrb r0, [r2]
	lsrs r0, r0, #7
	cmp r0, #0
	bne .L080ACCE0
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r1, r0, #5
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r5, r1
	adds r1, #0x80
	movs r0, #0xff
	strb r0, [r1]
.L080ACCE0:
	adds r2, #0xc
	adds r3, #1
	ldr r6, .L080ACEC0 @ =0x00000C15
	adds r0, r4, r6
	ldrb r0, [r0]
	cmp r3, r0
	blo .L080ACCC6
.L080ACCEE:
	ldr r7, .L080ACEC4 @ =0x00000C14
	adds r0, r4, r7
	movs r2, #0
	strb r2, [r0]
	mov r1, sb
	ldr r0, [r1, #8]
	ldrb r1, [r0]
	movs r0, #0x7c
	subs r0, r0, r1
	movs r3, #0xc7
	lsls r3, r3, #4
	add r3, sp
	str r0, [r3]
	cmp r0, #0x80
	bls .L080ACD0E
	b .L080AD0CE
.L080ACD0E:
	add r0, sp, #0x14
	strb r2, [r0]
	add r0, sp, #0x18
	movs r1, #3
	ldr r5, .L080ACEA8 @ =0x00000C6C
	add r5, sp
	ldr r5, [r5]
	ldr r4, [r5]
	adds r6, r5, #0
	adds r6, #8
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r2, r5, r2
	ldr r3, .L080ACEC8 @ =0x00000CA4
	add r3, sp
	str r2, [r3]
	ldr r5, .L080ACECC @ =0x00000828
	add r5, sp
	adds r7, #0x84
	add r7, sp
	str r5, [r7]
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080ACD3E:
	str r3, [r0]
	movs r5, #0x81
	lsls r5, r5, #2
	adds r0, r0, r5
	subs r1, #1
	cmp r1, r2
	bne .L080ACD3E
	ldr r1, [r4, #0x18]
	ldr r7, .L080ACEA8 @ =0x00000C6C
	add r7, sp
	ldr r0, [r7]
	bl _call_via_r1
	adds r4, r0, #0
	ldr r1, .L080ACEA8 @ =0x00000C6C
	add r1, sp
	ldr r1, [r1]
	ldr r0, [r1]
	ldr r1, [r0, #0x1c]
	ldr r2, .L080ACEA8 @ =0x00000C6C
	add r2, sp
	ldr r0, [r2]
	bl _call_via_r1
	ldr r5, .L080ACED0 @ =0x00000C28
	add r5, sp
	mov r3, sb
	ldr r1, [r3]
	ldr r2, [r3, #4]
	str r1, [r5]
	str r2, [r5, #4]
	add r7, sp, #0x14
	str r7, [r5, #8]
	strh r4, [r5, #0xc]
	strh r0, [r5, #0xe]
	mov r8, r6
	movs r0, #0xbc
	lsls r0, r0, #1
	add r0, r8
	ldr r1, .L080ACED4 @ =0x00000C74
	add r1, sp
	str r0, [r1]
	ldr r1, [r0]
	cmp r1, #0
	beq .L080ACDA4
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #0x1c]
	adds r0, r1, #0
	adds r1, r5, #0
	bl _call_via_r2
.L080ACDA4:
	ldr r2, .L080ACEA8 @ =0x00000C6C
	add r2, sp
	ldr r2, [r2]
	ldr r3, .L080ACED8 @ =0x00001028
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #0
	beq .L080ACDBC
	ldr r2, [r5]
	add r1, sp, #0x14
	bl func_080AB410
.L080ACDBC:
	ldr r3, .L080ACEA8 @ =0x00000C6C
	add r3, sp
	ldr r3, [r3]
	ldr r4, .L080ACEDC @ =0x0000102C
	adds r6, r3, r4
	ldr r1, [r6]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080ACDD2
	b .L080AD032
.L080ACDD2:
	ldr r4, .L080ACEE0 @ =0x00000C5C
	add r4, sp
	ldr r1, [r5]
	ldr r2, [r5, #8]
	ldr r0, .L080ACEE0 @ =0x00000C5C
	add r0, sp
	str r1, [r0]
	str r2, [r4, #4]
	ldr r0, [r3]
	ldr r1, [r0, #0x18]
	ldr r7, .L080ACEA8 @ =0x00000C6C
	add r7, sp
	ldr r0, [r7]
	bl _call_via_r1
	adds r7, r0, #0
	ldr r1, .L080ACEA8 @ =0x00000C6C
	add r1, sp
	ldr r1, [r1]
	ldr r0, [r1]
	ldr r1, [r0, #0x1c]
	ldr r2, .L080ACEA8 @ =0x00000C6C
	add r2, sp
	ldr r0, [r2]
	bl _call_via_r1
	adds r2, r0, #0
	ldr r5, [r6]
	rsbs r0, r5, #0
	orrs r0, r5
	cmp r0, #0
	blt .L080ACE14
	b .L080AD032
.L080ACE14:
	ldrb r0, [r6, #8]
	cmp r0, #0
	bne .L080ACE1C
	b .L080ACF58
.L080ACE1C:
	ldrb r0, [r6, #0xa]
	cmp r0, #2
	bhi .L080ACE24
	b .L080AD032
.L080ACE24:
	movs r3, #4
	ldrsh r0, [r6, r3]
	subs r0, r0, r7
	ldr r4, .L080ACEE4 @ =0x00000C78
	add r4, sp
	str r0, [r4]
	movs r7, #6
	ldrsh r1, [r6, r7]
	subs r2, r1, r2
	ldr r0, .L080ACEE8 @ =0x00000C7C
	add r0, sp
	str r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #8
	subs r0, r0, r1
	mov sl, r0
	adds r6, r5, #0
	ldr r4, .L080ACEEC @ =0x00000C38
	add r4, sp
	ldr r1, [r5, #0x28]
	ldr r3, [r1]
	ldrh r2, [r5, #0x34]
	lsls r2, r2, #2
	ldr r0, [r5, #0x2c]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r7, r4, #0
	movs r1, #0xc6
	lsls r1, r1, #4
	add r1, sp
	ldr r3, [r1]
	adds r0, r5, #0
	ldm r0!, {r2}
	ldr r1, [r0, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080ACEF4
	ldrh r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x10
	mov r4, sl
	str r4, [sp]
	str r7, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	adds r0, r3, #0
	ldr r5, .L080ACEE4 @ =0x00000C78
	add r5, sp
	ldr r1, [r5]
	ldr r3, .L080ACEE8 @ =0x00000C7C
	add r3, sp
	ldr r2, [r3]
	movs r3, #0xaa
	ldr r4, .L080ACEF0 @ =func_030004DC
	bl _call_via_r4
	b .L080ACEF6
	.align 2, 0
.L080ACEA4: .4byte 0xFFFFF350
.L080ACEA8: .4byte 0x00000C6C
.L080ACEAC: .4byte 0x00000C58
.L080ACEB0: .4byte 0x00001024
.L080ACEB4: .4byte 0x00000DB1
.L080ACEB8: .4byte 0x00000C9C
.L080ACEBC: .4byte 0x00000D1D
.L080ACEC0: .4byte 0x00000C15
.L080ACEC4: .4byte 0x00000C14
.L080ACEC8: .4byte 0x00000CA4
.L080ACECC: .4byte 0x00000828
.L080ACED0: .4byte 0x00000C28
.L080ACED4: .4byte 0x00000C74
.L080ACED8: .4byte 0x00001028
.L080ACEDC: .4byte 0x0000102C
.L080ACEE0: .4byte 0x00000C5C
.L080ACEE4: .4byte 0x00000C78
.L080ACEE8: .4byte 0x00000C7C
.L080ACEEC: .4byte 0x00000C38
.L080ACEF0: .4byte func_030004DC
.L080ACEF4:
	movs r0, #0
.L080ACEF6:
	cmp r0, #0
	bne .L080ACEFC
	b .L080AD032
.L080ACEFC:
	adds r0, r6, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne .L080ACF0A
	b .L080AD032
.L080ACF0A:
	ldr r4, .L080ACF34 @ =0x00000C5C
	add r4, sp
	ldr r1, [r4]
	adds r2, r7, #0
	adds r2, #8
	adds r0, r6, #0
	bl func_080A480C
	adds r0, r6, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080ACF38
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r6, #0
	movs r2, #1
	bl func_080A4944
	b .L080ACF52
	.align 2, 0
.L080ACF34: .4byte 0x00000C5C
.L080ACF38:
	adds r4, r6, #0
	adds r4, #0x3e
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080ACF52
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r6, #0
	movs r2, #1
	bl func_080A4944
	movs r0, #1
	strb r0, [r4]
.L080ACF52:
	movs r0, #0
	strb r0, [r5]
	b .L080AD032
.L080ACF58:
	movs r1, #4
	ldrsh r0, [r6, r1]
	subs r0, r0, r7
	movs r3, #0xc8
	lsls r3, r3, #4
	add r3, sp
	str r0, [r3]
	movs r4, #6
	ldrsh r1, [r6, r4]
	subs r2, r1, r2
	mov sl, r2
	movs r0, #0x80
	lsls r0, r0, #8
	subs r7, r0, r1
	ldr r4, .L080ACFCC @ =0x00000C38
	add r4, sp
	ldr r1, [r5, #0x28]
	ldr r3, [r1]
	ldrh r2, [r5, #0x34]
	lsls r2, r2, #2
	ldr r0, [r5, #0x2c]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r4, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r6, r4, #0
	movs r0, #0xc6
	lsls r0, r0, #4
	add r0, sp
	ldr r3, [r0]
	adds r0, r5, #0
	ldm r0!, {r2}
	ldr r1, [r0, #4]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080ACFD4
	ldrh r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x10
	str r7, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	adds r0, r3, #0
	movs r2, #0xc8
	lsls r2, r2, #4
	add r2, sp
	ldr r1, [r2]
	mov r2, sl
	movs r3, #0xaa
	ldr r4, .L080ACFD0 @ =func_030004DC
	bl _call_via_r4
	b .L080ACFD6
	.align 2, 0
.L080ACFCC: .4byte 0x00000C38
.L080ACFD0: .4byte func_030004DC
.L080ACFD4:
	movs r0, #0
.L080ACFD6:
	cmp r0, #0
	beq .L080AD032
	adds r0, r5, #0
	adds r0, #0x3c
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq .L080AD032
	ldr r3, .L080AD010 @ =0x00000C5C
	add r3, sp
	ldr r1, [r3]
	adds r2, r6, #0
	adds r2, #8
	adds r0, r5, #0
	bl func_080A480C
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080AD014
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r5, #0
	movs r2, #1
	bl func_080A4944
	b .L080AD02E
	.align 2, 0
.L080AD010: .4byte 0x00000C5C
.L080AD014:
	adds r4, r5, #0
	adds r4, #0x3e
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080AD02E
	adds r1, r6, #0
	adds r1, #0x10
	adds r0, r5, #0
	movs r2, #1
	bl func_080A4944
	movs r0, #1
	strb r0, [r4]
.L080AD02E:
	movs r0, #0
	strb r0, [r7]
.L080AD032:
	ldr r4, .L080AD058 @ =0x00000C6C
	add r4, sp
	ldr r4, [r4]
	movs r5, #0xcc
	lsls r5, r5, #1
	adds r0, r4, r5
	ldr r5, [r0]
	cmp r5, #0x64
	blo .L080AD046
	movs r5, #0
.L080AD046:
	lsls r0, r5, #2
	mov r7, r8
	adds r6, r7, r0
	ldr r0, .L080AD05C @ =0x00000CA4
	add r0, sp
	ldr r7, [r0]
	adds r4, r6, #0
	b .L080AD08A
	.align 2, 0
.L080AD058: .4byte 0x00000C6C
.L080AD05C: .4byte 0x00000CA4
.L080AD060:
	ldr r3, .L080AD1AC @ =0x00000C74
	add r3, sp
	ldr r3, [r3]
	cmp r4, r3
	beq .L080AD07E
	ldr r3, [r4]
	cmp r3, #0
	beq .L080AD07E
	ldr r0, [r3, #0x14]
	ldr r1, .L080AD1B0 @ =0x00000C28
	add r1, sp
	ldr r2, [r0, #0x1c]
	adds r0, r3, #0
	bl _call_via_r2
.L080AD07E:
	adds r4, #4
	cmp r4, r7
	bne .L080AD086
	mov r4, r8
.L080AD086:
	cmp r4, r6
	beq .L080AD0A0
.L080AD08A:
	add r0, sp, #0x14
	ldrb r0, [r0]
	movs r1, #0xc7
	lsls r1, r1, #4
	add r1, sp
	ldr r1, [r1]
	cmp r0, r1
	blo .L080AD060
	mov r2, r8
	subs r0, r4, r2
	asrs r5, r0, #2
.L080AD0A0:
	ldr r3, .L080AD1B4 @ =0x00000C6C
	add r3, sp
	ldr r3, [r3]
	movs r4, #0xcc
	lsls r4, r4, #1
	adds r0, r3, r4
	str r5, [r0]
	mov r4, sb
	ldr r1, [r4, #8]
	add r0, sp, #0x14
	bl func_08094A3C
	ldr r5, .L080AD1B8 @ =0x00000C98
	add r5, sp
	ldr r0, [r5]
	add r6, sp, #0x18
	cmp r6, r0
	beq .L080AD0CE
	adds r1, r6, #0
.L080AD0C6:
	ldr r7, .L080AD1BC @ =0xFFFFFDFC
	adds r0, r0, r7
	cmp r1, r0
	bne .L080AD0C6
.L080AD0CE:
	movs r1, #0xce
	lsls r1, r1, #1
	ldr r0, .L080AD1B4 @ =0x00000C6C
	add r0, sp
	ldr r0, [r0]
	adds r1, r0, r1
	ldr r0, .L080AD1C0 @ =0x00000C84
	add r0, sp
	str r1, [r0]
	mov r1, sb
	ldr r6, [r1]
	movs r2, #0
	ldr r3, .L080AD1C4 @ =0x00000C88
	add r3, sp
	str r2, [r3]
	ldr r4, .L080AD1C8 @ =0x00000C9C
	add r4, sp
	ldr r4, [r4]
	ldrb r4, [r4]
	ldr r5, .L080AD1CC @ =0x00000C8C
	add r5, sp
	str r4, [r5]
	cmp r2, r4
	blo .L080AD100
	b .L080AD32A
.L080AD100:
	ldr r5, .L080AD1C0 @ =0x00000C84
	add r5, sp
	ldr r5, [r5]
	ldr r7, .L080AD1D0 @ =0x00000B78
	adds r0, r5, r7
	ldr r7, .L080AD1C4 @ =0x00000C88
	add r7, sp
	ldr r7, [r7]
	lsls r1, r7, #1
	adds r1, r1, r7
	lsls r1, r1, #2
	adds r0, r0, r1
	mov r8, r0
	ldrb r0, [r0, #9]
	lsrs r0, r0, #7
	adds r3, r7, #0
	adds r3, #1
	ldr r4, .L080AD1D4 @ =0x00000C94
	add r4, sp
	str r3, [r4]
	cmp r0, #0
	beq .L080AD12E
	b .L080AD312
.L080AD12E:
	mov r5, r8
	movs r1, #9
	ldrsb r1, [r5, r1]
	ldr r7, .L080AD1C0 @ =0x00000C84
	add r7, sp
	ldr r2, [r7]
	adds r2, #0x20
	lsls r0, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r2, r0
	adds r4, r7, #0
	adds r4, #0x82
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080AD156
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq .L080AD156
	b .L080AD312
.L080AD156:
	mov r0, r8
	ldrb r2, [r0, #8]
	lsls r2, r2, #5
	ldr r1, .L080AD1D8 @ =0x05000200
	adds r2, r2, r1
	add r0, sp, #0x14
	adds r1, r7, #0
	movs r3, #0x20
	bl func_08008F0C
	mov r2, sp
	adds r2, #0x14
	movs r3, #0xc9
	lsls r3, r3, #4
	add r3, sp
	str r2, [r3]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AD1E0
	cmp r1, #0
	beq .L080AD18E
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AD18E:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	ldr r3, .L080AD1DC @ =0x00000CAC
	add r3, sp
	str r4, [r3]
	ldr r5, .L080AD1C4 @ =0x00000C88
	add r5, sp
	ldr r4, [r5]
	adds r4, #1
	ldr r5, .L080AD1D4 @ =0x00000C94
	add r5, sp
	str r4, [r5]
	b .L080AD2F4
	.align 2, 0
.L080AD1AC: .4byte 0x00000C74
.L080AD1B0: .4byte 0x00000C28
.L080AD1B4: .4byte 0x00000C6C
.L080AD1B8: .4byte 0x00000C98
.L080AD1BC: .4byte 0xFFFFFDFC
.L080AD1C0: .4byte 0x00000C84
.L080AD1C4: .4byte 0x00000C88
.L080AD1C8: .4byte 0x00000C9C
.L080AD1CC: .4byte 0x00000C8C
.L080AD1D0: .4byte 0x00000B78
.L080AD1D4: .4byte 0x00000C94
.L080AD1D8: .4byte 0x05000200
.L080AD1DC: .4byte 0x00000CAC
.L080AD1E0:
	ldr r0, .L080AD220 @ =0x00000CA8
	add r0, sp
	str r1, [r0]
	movs r0, #1
	ldr r2, .L080AD224 @ =0x00000C68
	add r2, sp
	str r0, [r2]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	ldr r0, .L080AD228 @ =0x00000C64
	add r0, sp
	str r4, [r0]
	ldr r1, [r2]
	cmp r4, r1
	bhs .L080AD202
	adds r0, r2, #0
.L080AD202:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AD22C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080AD230
	mov r0, sl
	bl func_080D3BC0
	b .L080AD230
	.align 2, 0
.L080AD220: .4byte 0x00000CA8
.L080AD224: .4byte 0x00000C68
.L080AD228: .4byte 0x00000C64
.L080AD22C:
	movs r0, #0
	mov sl, r0
.L080AD230:
	adds r4, r0, #0
	mov sb, r4
	ldr r2, [r6]
	mov r3, sb
	adds r7, #0x82
	ldr r4, .L080AD250 @ =0x00000CAC
	add r4, sp
	str r7, [r4]
	ldr r7, .L080AD254 @ =0x00000C88
	add r7, sp
	ldr r5, [r7]
	adds r5, #1
	ldr r7, .L080AD258 @ =0x00000C94
	add r7, sp
	str r5, [r7]
	b .L080AD270
	.align 2, 0
.L080AD250: .4byte 0x00000CAC
.L080AD254: .4byte 0x00000C88
.L080AD258: .4byte 0x00000C94
.L080AD25C:
	cmp r3, #0
	beq .L080AD26C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AD26C:
	adds r2, #0x10
	adds r3, #0x10
.L080AD270:
	ldr r0, .L080AD2A0 @ =0x00000CA8
	add r0, sp
	ldr r0, [r0]
	cmp r2, r0
	bne .L080AD25C
	adds r4, r3, #0
	ldr r0, .L080AD2A4 @ =0x00000C68
	add r0, sp
	ldr r0, [r0]
	cmp r0, #1
	bne .L080AD2A8
	cmp r4, #0
	beq .L080AD29C
	adds r0, r4, #0
	movs r2, #0xc9
	lsls r2, r2, #4
	add r2, sp
	ldr r1, [r2]
	ldm r1!, {r3, r5, r7}
	stm r0!, {r3, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AD29C:
	adds r4, #0x10
	b .L080AD2D0
	.align 2, 0
.L080AD2A0: .4byte 0x00000CA8
.L080AD2A4: .4byte 0x00000C68
.L080AD2A8:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080AD2CE
.L080AD2B0:
	cmp r2, #0
	beq .L080AD2C6
	adds r0, r2, #0
	movs r4, #0xc9
	lsls r4, r4, #4
	add r4, sp
	ldr r1, [r4]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AD2C6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AD2B0
.L080AD2CE:
	adds r4, r2, #0
.L080AD2D0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AD2E0
.L080AD2DA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AD2DA
.L080AD2E0:
	cmp r0, #0
	beq .L080AD2E8
	bl free
.L080AD2E8:
	mov r0, sl
	add r0, sb
	mov r5, sb
	str r5, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L080AD2F4:
	movs r0, #0
	ldr r7, .L080AD390 @ =0x00000CAC
	add r7, sp
	ldr r7, [r7]
	strb r0, [r7]
	mov r1, r8
	ldrb r0, [r1, #0xa]
	cmp r0, #0
	bne .L080AD312
	ldrb r0, [r1, #9]
	lsrs r0, r0, #7
	cmp r0, #0
	bne .L080AD312
	movs r0, #1
	strb r0, [r1, #0xa]
.L080AD312:
	ldr r2, .L080AD394 @ =0x00000C94
	add r2, sp
	ldr r2, [r2]
	ldr r3, .L080AD398 @ =0x00000C88
	add r3, sp
	str r2, [r3]
	ldr r4, .L080AD39C @ =0x00000C8C
	add r4, sp
	ldr r3, [r4]
	cmp r2, r3
	bhs .L080AD32A
	b .L080AD100
.L080AD32A:
	ldr r5, .L080AD3A0 @ =0x00000C6C
	add r5, sp
	ldr r5, [r5]
	movs r6, #0xce
	lsls r6, r6, #1
	adds r1, r5, r6
	ldr r6, .L080AD3A4 @ =0x00000C9C
	add r6, sp
	ldr r6, [r6]
	ldrb r4, [r6]
	movs r7, #0xca
	lsls r7, r7, #4
	add r7, sp
	ldr r7, [r7]
	ldrb r7, [r7]
	cmp r4, r7
	bhs .L080AD37C
	movs r5, #0xff
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r2, .L080AD3A8 @ =0x00000B81
	adds r0, r0, r2
	adds r1, r0, r1
	ldr r3, .L080AD3A0 @ =0x00000C6C
	add r3, sp
	ldr r3, [r3]
	ldr r6, .L080AD3AC @ =0x00000DB1
	adds r2, r3, r6
.L080AD364:
	ldrb r3, [r1]
	lsrs r0, r3, #7
	cmp r0, #0
	bne .L080AD372
	adds r0, r3, #0
	orrs r0, r5
	strb r0, [r1]
.L080AD372:
	adds r1, #0xc
	adds r4, #1
	ldrb r6, [r2]
	cmp r4, r6
	blo .L080AD364
.L080AD37C:
	movs r3, #0xcb
	lsls r3, r3, #4
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AD390: .4byte 0x00000CAC
.L080AD394: .4byte 0x00000C94
.L080AD398: .4byte 0x00000C88
.L080AD39C: .4byte 0x00000C8C
.L080AD3A0: .4byte 0x00000C6C
.L080AD3A4: .4byte 0x00000C9C
.L080AD3A8: .4byte 0x00000B81
.L080AD3AC: .4byte 0x00000DB1

	thumb_func_start func_080AD3B0
func_080AD3B0: @ 0x080AD3B0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r7, r1, #0
	adds r4, r6, #0
	adds r4, #8
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r5, r6, r0
	cmp r4, r5
	beq .L080AD3DC
.L080AD3C6:
	ldr r2, [r4]
	cmp r2, #0
	beq .L080AD3D6
	ldr r0, [r2, #0x14]
	ldr r1, [r0, #0x14]
	adds r0, r2, #0
	bl _call_via_r1
.L080AD3D6:
	adds r4, #4
	cmp r4, r5
	bne .L080AD3C6
.L080AD3DC:
	ldr r1, .L080AD494 @ =0x00001024
	adds r4, r6, r1
	movs r5, #0
	ldr r0, [r4]
	cmp r5, r0
	beq .L080AD3F2
	cmp r0, #0
	beq .L080AD3F2
	movs r1, #3
	bl func_0803AC78
.L080AD3F2:
	str r5, [r4]
	ldr r0, .L080AD498 @ =0x00001028
	adds r4, r6, r0
	movs r5, #0
	ldr r0, [r4]
	cmp r5, r0
	beq .L080AD40A
	cmp r0, #0
	beq .L080AD40A
	movs r1, #3
	bl func_080AB2E4
.L080AD40A:
	str r5, [r4]
	ldr r0, [r6, #4]
	movs r1, #0x1e
	str r1, [sp]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #0
	bl func_080A56DC
	movs r0, #0xa0
	bl __builtin_new
	adds r1, r6, #0
	bl func_0803AB30
	ldr r1, .L080AD494 @ =0x00001024
	adds r5, r6, r1
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AD43E
	cmp r0, #0
	beq .L080AD43E
	movs r1, #3
	bl func_0803AC78
.L080AD43E:
	str r4, [r5]
	movs r0, #4
	bl __builtin_new
	ldr r1, [r6, #4]
	ldr r2, [r1, #4]
	adds r1, r6, #0
	bl func_080AAFC8
	ldr r1, .L080AD498 @ =0x00001028
	adds r5, r6, r1
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AD466
	cmp r0, #0
	beq .L080AD466
	movs r1, #3
	bl func_080AB2E4
.L080AD466:
	str r4, [r5]
	adds r4, r6, #0
	adds r4, #8
	movs r0, #0xcc
	lsls r0, r0, #1
	adds r5, r6, r0
	cmp r4, r5
	beq .L080AD48C
.L080AD476:
	ldr r2, [r4]
	cmp r2, #0
	beq .L080AD486
	ldr r0, [r2, #0x14]
	ldr r1, [r0, #0x10]
	adds r0, r2, #0
	bl _call_via_r1
.L080AD486:
	adds r4, #4
	cmp r4, r5
	bne .L080AD476
.L080AD48C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AD494: .4byte 0x00001024
.L080AD498: .4byte 0x00001028

	thumb_func_start func_080AD49C
func_080AD49C: @ 0x080AD49C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x14
	adds r7, r0, #0
	mov sb, r1
	adds r1, r7, #0
	adds r1, #8
	mov r2, sb
	lsls r0, r2, #2
	adds r4, r1, r0
	ldr r1, [r4]
	cmp r1, #0
	beq .L080AD4CA
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	movs r0, #0
	str r0, [r4]
.L080AD4CA:
	movs r5, #0
	mov r0, sb
	subs r0, #0x5e
	cmp r0, #5
	bhi .L080AD5AA
	lsls r0, r0, #2
	ldr r1, .L080AD4E0 @ =.L080AD4E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AD4E0: .4byte .L080AD4E4
.L080AD4E4: @ jump table
	.4byte .L080AD4FC @ case 0
	.4byte .L080AD504 @ case 1
	.4byte .L080AD504 @ case 2
	.4byte .L080AD504 @ case 3
	.4byte .L080AD56C @ case 4
	.4byte .L080AD56C @ case 5
.L080AD4FC:
	adds r0, r7, #0
	bl func_0802C210
	b .L080AD5A8
.L080AD504:
	movs r0, #0x30
	bl __builtin_new
	adds r5, r0, #0
	add r1, sp, #0xc
	movs r4, #0x8d
	lsls r4, r4, #2
	movs r0, #0
	mov r8, r0
	ldrh r2, [r1]
	ldr r3, .L080AD564 @ =0xFFFFFC00
	adds r0, r3, #0
	ands r0, r2
	orrs r0, r4
	strh r0, [r1]
	movs r6, #0
	ldrb r4, [r1, #1]
	movs r2, #3
	adds r0, r2, #0
	ands r0, r4
	strb r0, [r1, #1]
	ldrh r4, [r1, #2]
	adds r0, r3, #0
	ands r0, r4
	strh r0, [r1, #2]
	ldrb r0, [r1, #3]
	ands r2, r0
	strb r2, [r1, #3]
	ldrh r0, [r1, #4]
	ands r3, r0
	strh r3, [r1, #4]
	add r4, sp, #4
	adds r0, r4, #0
	movs r2, #6
	bl memcpy
	strb r6, [r4, #6]
	mov r2, r8
	str r2, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	add r2, sp, #4
	movs r3, #2
	bl __12AActorEntityP10GameObjectRC13ActorLocationUiUi
	ldr r0, .L080AD568 @ =vtable_unk_080E8404
	str r0, [r5, #0x14]
	b .L080AD5AA
	.align 2, 0
.L080AD564: .4byte 0xFFFFFC00
.L080AD568: .4byte vtable_unk_080E8404
.L080AD56C:
	movs r0, #0x18
	bl __builtin_new
	add r2, sp, #4
	movs r5, #0x8d
	lsls r5, r5, #2
	ldrh r3, [r2]
	ldr r4, .L080AD5D4 @ =0xFFFFFC00
	adds r1, r4, #0
	ands r1, r3
	orrs r1, r5
	strh r1, [r2]
	ldrb r5, [r2, #1]
	movs r3, #3
	adds r1, r3, #0
	ands r1, r5
	strb r1, [r2, #1]
	ldrh r5, [r2, #2]
	adds r1, r4, #0
	ands r1, r5
	strh r1, [r2, #2]
	ldrb r1, [r2, #3]
	ands r3, r1
	strb r3, [r2, #3]
	ldrh r1, [r2, #4]
	ands r4, r1
	strh r4, [r2, #4]
	adds r1, r7, #0
	bl func_08037CC4
.L080AD5A8:
	adds r5, r0, #0
.L080AD5AA:
	cmp r5, #0
	beq .L080AD5C4
	adds r0, r7, #0
	adds r0, #8
	mov r2, sb
	lsls r1, r2, #2
	adds r0, r0, r1
	str r5, [r0]
	ldr r0, [r5, #0x14]
	ldr r1, [r0, #0x10]
	adds r0, r5, #0
	bl _call_via_r1
.L080AD5C4:
	add sp, #0x14
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AD5D4: .4byte 0xFFFFFC00

	thumb_func_start func_080AD5D8
func_080AD5D8: @ 0x080AD5D8
	push {lr}
	adds r3, r0, #0
	cmp r1, #0x1a
	bhi .L080AD67C
	lsls r0, r1, #2
	ldr r1, .L080AD5EC @ =.L080AD5F0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AD5EC: .4byte .L080AD5F0
.L080AD5F0: @ jump table
	.4byte .L080AD65C @ case 0
	.4byte .L080AD660 @ case 1
	.4byte .L080AD660 @ case 2
	.4byte .L080AD664 @ case 3
	.4byte .L080AD660 @ case 4
	.4byte .L080AD664 @ case 5
	.4byte .L080AD670 @ case 6
	.4byte .L080AD670 @ case 7
	.4byte .L080AD670 @ case 8
	.4byte .L080AD67C @ case 9
	.4byte .L080AD67C @ case 10
	.4byte .L080AD67C @ case 11
	.4byte .L080AD67C @ case 12
	.4byte .L080AD67C @ case 13
	.4byte .L080AD668 @ case 14
	.4byte .L080AD66C @ case 15
	.4byte .L080AD66C @ case 16
	.4byte .L080AD66C @ case 17
	.4byte .L080AD66C @ case 18
	.4byte .L080AD67C @ case 19
	.4byte .L080AD67C @ case 20
	.4byte .L080AD67C @ case 21
	.4byte .L080AD67C @ case 22
	.4byte .L080AD67C @ case 23
	.4byte .L080AD67C @ case 24
	.4byte .L080AD67C @ case 25
	.4byte .L080AD670 @ case 26
.L080AD65C:
	movs r0, #0
	b .L080AD692
.L080AD660:
	movs r0, #1
	b .L080AD692
.L080AD664:
	movs r0, #2
	b .L080AD692
.L080AD668:
	movs r0, #3
	b .L080AD692
.L080AD66C:
	movs r0, #4
	b .L080AD692
.L080AD670:
	movs r0, #5
	b .L080AD692
.L080AD674:
	movs r0, #1
	strb r0, [r1]
	adds r0, r2, #0
	b .L080AD692
.L080AD67C:
	movs r2, #6
	ldr r0, .L080AD698 @ =0x00000555
	adds r1, r3, r0
.L080AD682:
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080AD674
	adds r1, #0x84
	adds r2, #1
	cmp r2, #0x16
	blo .L080AD682
	movs r0, #0x15
.L080AD692:
	pop {r1}
	bx r1
	.align 2, 0
.L080AD698: .4byte 0x00000555

	thumb_func_start func_080AD69C
func_080AD69C: @ 0x080AD69C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sb, r1
	adds r4, r2, #0
	ldr r0, .L080AD6BC @ =0x00000233
	cmp r4, r0
	bls .L080AD6C0
	movs r0, #0
	str r0, [r5]
	str r0, [r5, #4]
	strh r0, [r5, #8]
	b .L080AD712
	.align 2, 0
.L080AD6BC: .4byte 0x00000233
.L080AD6C0:
	mov r1, sb
	ldr r0, [r1, #4]
	ldr r7, [r0]
	cmp r7, r4
	bne .L080AD6CE
	ldr r0, [r0, #4]
	b .L080AD6DE
.L080AD6CE:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl func_0803A8A4
.L080AD6DE:
	bl GetMapData
	ldrh r6, [r0, #0x20]
	ldrh r1, [r0, #0x22]
	mov r8, r1
	cmp r7, r4
	bne .L080AD706
	mov r0, sb
	ldr r4, [r0, #4]
	ldr r0, [r4, #4]
	bl GetMapData
	movs r1, #0
	ldr r0, [r4, #0x2c]
	str r0, [r5]
	str r1, [r5, #4]
	strh r6, [r5, #8]
	mov r1, r8
	strh r1, [r5, #0xa]
	b .L080AD714
.L080AD706:
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x18]
	str r0, [r5]
	str r1, [r5, #4]
	strh r6, [r5, #8]
	mov r0, r8
.L080AD712:
	strh r0, [r5, #0xa]
.L080AD714:
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_080AD724
func_080AD724: @ 0x080AD724
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0xf2
	lsls r0, r0, #1
	bl __builtin_new
	bl func_080CFB28
	str r0, [sp, #4]
	ldr r0, .L080AD770 @ =0x00001038
	bl __builtin_new
	add r1, sp, #4
	bl func_080AC9EC
	str r0, [sp]
	mov r1, sp
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	adds r2, r1, #0
	movs r1, #0
	str r1, [r2]
	str r0, [r4]
	ldr r1, [sp]
	cmp r1, #0
	beq .L080AD766
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AD766:
	adds r0, r4, #0
	add sp, #0x10
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080AD770: .4byte 0x00001038
.L080AD774:
	.byte 0x40, 0x68, 0x70, 0x47, 0x40, 0x68, 0x70, 0x47

	thumb_func_start func_080AD77C
func_080AD77C: @ 0x080AD77C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	ldr r1, [r6]
	ldrh r2, [r4]
	lsls r2, r2, #0x16
	lsrs r2, r2, #0x16
	add r0, sp, #0xc
	ldr r3, [r1, #0x34]
	adds r1, r6, #0
	bl _call_via_r3
	ldrb r0, [r4, #1]
	lsrs r0, r0, #2
	ldrh r1, [r4, #2]
	ldr r5, .L080AD870 @ =0x000003FF
	ands r1, r5
	lsls r1, r1, #6
	orrs r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldrb r0, [r4, #3]
	lsrs r0, r0, #2
	ldrh r2, [r4, #4]
	ands r2, r5
	lsls r2, r2, #6
	orrs r2, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add r0, sp, #0xc
	bl func_080AC5D0
	movs r1, #1
	eors r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldrb r0, [r4, #1]
	lsrs r0, r0, #2
	ldrh r1, [r4, #2]
	ands r1, r5
	lsls r1, r1, #6
	orrs r1, r0
	ldrb r2, [r4, #3]
	lsrs r2, r2, #2
	ldrh r0, [r4, #4]
	ands r0, r5
	lsls r0, r0, #6
	orrs r0, r2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add r2, sp, #0x18
	strh r1, [r2]
	strh r0, [r2, #2]
	ldr r0, [r6]
	ldr r1, [r0, #0x64]
	adds r0, r6, #0
	bl _call_via_r1
	ldr r1, .L080AD874 @ =0x0000102C
	adds r4, r6, r1
	adds r7, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r4, #4]
	movs r5, #0
	ldr r1, [r4]
	cmp r5, r1
	beq .L080AD822
	cmp r1, #0
	beq .L080AD822
	ldr r0, [r1, #0x24]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AD822:
	str r5, [r4]
	mov r0, r8
	strb r0, [r4, #8]
	mov r5, r8
	cmp r5, #0
	beq .L080AD878
	movs r0, #0x40
	bl __builtin_new
	movs r1, #2
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	add r2, sp, #8
	movs r1, #0
	strb r1, [r2]
	adds r1, r7, #0
	mov r2, sb
	adds r3, r6, #0
	bl func_080A4A00
	adds r5, r0, #0
	ldr r1, [r4]
	cmp r5, r1
	beq .L080AD864
	cmp r1, #0
	beq .L080AD864
	ldr r0, [r1, #0x24]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AD864:
	str r5, [r4]
	movs r1, #0
	movs r0, #0x10
	strb r0, [r4, #9]
	strb r1, [r4, #0xa]
	b .L080AD8B0
	.align 2, 0
.L080AD870: .4byte 0x000003FF
.L080AD874: .4byte 0x0000102C
.L080AD878:
	movs r0, #0x40
	bl __builtin_new
	movs r1, #2
	str r1, [sp]
	movs r1, #3
	str r1, [sp, #4]
	add r1, sp, #8
	strb r5, [r1]
	adds r1, r7, #0
	ldr r2, .L080AD8C0 @ =0x000001A9
	adds r3, r6, #0
	bl func_080A4A00
	adds r5, r0, #0
	ldr r1, [r4]
	cmp r5, r1
	beq .L080AD8AC
	cmp r1, #0
	beq .L080AD8AC
	ldr r0, [r1, #0x24]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AD8AC:
	str r5, [r4]
	movs r0, #0
.L080AD8B0:
	add sp, #0x1c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080AD8C0: .4byte 0x000001A9

	thumb_func_start func_080AD8C4
func_080AD8C4: @ 0x080AD8C4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	movs r2, #0
	movs r3, #0
	cmp r4, #8
	bhi .L080AD918
	lsls r0, r4, #2
	ldr r1, .L080AD8E0 @ =.L080AD8E4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AD8E0: .4byte .L080AD8E4
.L080AD8E4: @ jump table
	.4byte .L080AD908 @ case 0
	.4byte .L080AD908 @ case 1
	.4byte .L080AD908 @ case 2
	.4byte .L080AD908 @ case 3
	.4byte .L080AD90E @ case 4
	.4byte .L080AD918 @ case 5
	.4byte .L080AD914 @ case 6
	.4byte .L080AD914 @ case 7
	.4byte .L080AD914 @ case 8
.L080AD908:
	movs r2, #8
	movs r3, #0x10
	b .L080AD918
.L080AD90E:
	movs r2, #8
	movs r3, #0xb
	b .L080AD918
.L080AD914:
	movs r2, #0x10
	movs r3, #0x20
.L080AD918:
	ldr r1, .L080AD934 @ =0x00001028
	adds r0, r5, r1
	ldr r0, [r0]
	lsls r1, r6, #4
	adds r1, r1, r2
	lsls r2, r7, #4
	adds r3, #0x38
	adds r2, r2, r3
	adds r3, r4, #0
	bl func_080AB68C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AD934: .4byte 0x00001028

	thumb_func_start func_080AD938
func_080AD938: @ 0x080AD938
	push {lr}
	ldr r0, [r0, #4]
	bl func_080CFFC0
	pop {r0}
	bx r0

	thumb_func_start func_080AD944
func_080AD944: @ 0x080AD944
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A63B8
	pop {r0}
	bx r0

	thumb_func_start func_080AD950
func_080AD950: @ 0x080AD950
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A635C
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080AD960
func_080AD960: @ 0x080AD960
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A6300
	movs r0, #0
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080AD970
func_080AD970: @ 0x080AD970
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A6024
	pop {r0}
	bx r0

	thumb_func_start func_080AD97C
func_080AD97C: @ 0x080AD97C
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A607C
	pop {r0}
	bx r0

	thumb_func_start func_080AD988
func_080AD988: @ 0x080AD988
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A62BC
	pop {r0}
	bx r0

	thumb_func_start func_080AD994
func_080AD994: @ 0x080AD994
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A6278
	pop {r0}
	bx r0

	thumb_func_start func_080AD9A0
func_080AD9A0: @ 0x080AD9A0
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A6234
	pop {r0}
	bx r0

	thumb_func_start func_080AD9AC
func_080AD9AC: @ 0x080AD9AC
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A61F0
	pop {r0}
	bx r0

	thumb_func_start func_080AD9B8
func_080AD9B8: @ 0x080AD9B8
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A6194
	pop {r0}
	bx r0

	thumb_func_start func_080AD9C4
func_080AD9C4: @ 0x080AD9C4
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A6138
	pop {r0}
	bx r0

	thumb_func_start func_080AD9D0
func_080AD9D0: @ 0x080AD9D0
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A601C
	pop {r0}
	bx r0
.L080AD9DC:
	.byte 0x01, 0x49, 0x40, 0x18
	.byte 0x70, 0x47, 0x00, 0x00, 0xF4, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00
	.byte 0xC4, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0x94, 0x0F, 0x00, 0x00
	.byte 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0x64, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18
	.byte 0x70, 0x47, 0x00, 0x00, 0x34, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00
	.byte 0x04, 0x0F, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0xD4, 0x0E, 0x00, 0x00
	.byte 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0xA4, 0x0E, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18
	.byte 0x70, 0x47, 0x00, 0x00, 0x74, 0x0E, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00
	.byte 0x44, 0x0E, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0x14, 0x0E, 0x00, 0x00
	.byte 0x01, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0xE4, 0x0D, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18
	.byte 0x70, 0x47, 0x00, 0x00, 0xB4, 0x0D, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x00, 0x68, 0x70, 0x47
	.byte 0x24, 0x10, 0x00, 0x00

	thumb_func_start func_080ADA84
func_080ADA84: @ 0x080ADA84
	push {lr}
	sub sp, #4
	adds r0, r1, #0
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl func_0803A8A4
	bl GetMapData
	ldrh r0, [r0, #0x22]
	lsls r0, r0, #3
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080ADAA8
func_080ADAA8: @ 0x080ADAA8
	push {lr}
	sub sp, #4
	adds r0, r1, #0
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl func_0803A8A4
	bl GetMapData
	ldrh r0, [r0, #0x20]
	lsls r0, r0, #3
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080ADACC
func_080ADACC: @ 0x080ADACC
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r3, #0x18
	lsrs r5, r5, #0x18
	movs r0, #0xde
	lsls r0, r0, #1
	adds r4, r4, r0
	lsls r0, r2, #5
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r4, #0
	adds r1, #0x82
	movs r0, #1
	strb r0, [r1]
	adds r4, #0x83
	strb r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_080ADAFC
func_080ADAFC: @ 0x080ADAFC
	push {r4, lr}
	movs r2, #0xce
	lsls r2, r2, #1
	adds r3, r0, r2
	adds r4, r3, r1
	ldrb r0, [r4]
	adds r2, r0, #0
	subs r2, #0x10
	cmp r2, #0
	bge .L080ADB1C
	adds r0, r3, #0
	bl func_080AC96C
	adds r2, r0, #0
	adds r0, #0x10
	strb r0, [r4]
.L080ADB1C:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
.L080ADB24:
	.byte 0x4A, 0x01, 0x52, 0x18, 0x92, 0x00, 0x80, 0x18, 0x02, 0x49, 0x40, 0x18
	.byte 0x00, 0x21, 0x01, 0x70, 0x70, 0x47, 0x00, 0x00, 0x3D, 0x02, 0x00, 0x00, 0x08, 0x30, 0x89, 0x00
	.byte 0x40, 0x18, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00, 0x08, 0x30, 0x89, 0x00, 0x40, 0x18, 0x00, 0x68
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_080ADB54
func_080ADB54: @ 0x080ADB54
	push {r4, lr}
	adds r0, #8
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r1, [r4]
	cmp r1, #0
	beq .L080ADB72
	ldr r0, [r1, #0x14]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
	movs r0, #0
	str r0, [r4]
.L080ADB72:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080ADB78
func_080ADB78: @ 0x080ADB78
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A5A9C
	pop {r1}
	bx r1
.L080ADB84:
	.byte 0x40, 0x68, 0x0E, 0x21, 0x40, 0x5E, 0x70, 0x47, 0x40, 0x68, 0x0A, 0x21
	.byte 0x40, 0x5E, 0x70, 0x47, 0x40, 0x68, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_080ADB9C
func_080ADB9C: @ 0x080ADB9C
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A59BC
	pop {r0}
	bx r0

	thumb_func_start func_080ADBA8
func_080ADBA8: @ 0x080ADBA8
	push {lr}
	ldr r0, [r0, #4]
	bl func_080A5960
	pop {r0}
	bx r0

	thumb_func_start func_080ADBB4
func_080ADBB4: @ 0x080ADBB4
	push {r4, lr}
	sub sp, #8
	ldrb r2, [r0]
	lsls r1, r2, #0x1e
	lsrs r1, r1, #0x1e
	lsls r2, r2, #0x19
	lsrs r2, r2, #0x1b
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	str r0, [sp, #4]
	ldr r0, .L080ADBFC @ =gUnk_081074F6
	adds r4, r0, #0
	adds r4, #0x1b
	movs r1, #0
	str r1, [sp]
	adds r1, r4, #0
	add r2, sp, #4
	movs r3, #0
	bl func_080E0E80
	adds r1, r0, #0
	movs r2, #0
	cmp r1, r4
	beq .L080ADBF2
	ldr r0, [sp, #4]
	ldrb r1, [r1]
	cmp r0, r1
	blo .L080ADBF2
	movs r2, #1
.L080ADBF2:
	adds r0, r2, #0
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L080ADBFC: .4byte gUnk_081074F6

	thumb_func_start func_080ADC00
func_080ADC00: @ 0x080ADC00
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x20
	bl __builtin_new
	adds r2, r0, #0
	movs r0, #0
	str r0, [r2]
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #8
	str r0, [r2, #8]
	strh r0, [r1, #4]
	adds r1, #8
	str r0, [r2, #0x10]
	strh r0, [r1, #4]
	adds r1, #8
	str r0, [r2, #0x18]
	strh r0, [r1, #4]
	str r2, [r4]
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
.L080ADC30:
	.byte 0x70, 0xB5, 0x46, 0x46, 0x40, 0xB4, 0x8E, 0xB0, 0x80, 0x46, 0x0D, 0x1C, 0x20, 0x20, 0x52, 0xF7
	.byte 0xC9, 0xFC, 0x06, 0x1C, 0x0D, 0x49, 0x68, 0x46, 0xB0, 0xF7, 0x40, 0xFD, 0x00, 0x9C, 0x0C, 0xA8
	.byte 0xE3, 0x68, 0x69, 0x46, 0x2A, 0x1C, 0x25, 0xF0, 0x5F, 0xFE, 0x0C, 0x98, 0x02, 0x88, 0x30, 0x1C
	.byte 0x23, 0x69, 0x69, 0x46, 0x25, 0xF0, 0x58, 0xFE, 0x05, 0x48, 0x00, 0x90, 0x40, 0x46, 0x06, 0x60
	.byte 0x0E, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x84, 0xD9, 0x52, 0x08
	.byte 0x28, 0x5A, 0x0E, 0x08

	thumb_func_start func_080ADC84
func_080ADC84: @ 0x080ADC84
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r5]
	bl __builtin_delete
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq .L080ADC9E
	adds r0, r5, #0
	bl __builtin_delete
.L080ADC9E:
	pop {r4, r5}
	pop {r0}
	bx r0

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

	thumb_func_start func_080ADD08
func_080ADD08: @ 0x080ADD08
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r1, [r1]
	ldm r1!, {r3, r4, r5}
	stm r2!, {r3, r4, r5}
	ldm r1!, {r3, r4, r5}
	stm r2!, {r3, r4, r5}
	ldm r1!, {r3, r4}
	stm r2!, {r3, r4}
	pop {r4, r5}
	pop {r1}
	bx r1

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

	thumb_func_start func_080ADD74
func_080ADD74: @ 0x080ADD74
	strh r1, [r0, #4]
	bx lr

	thumb_func_start func_080ADD78
func_080ADD78: @ 0x080ADD78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r7, r0, #0
	mov r8, r1
	mov sl, r2
	movs r0, #0
	str r0, [sp, #0x24]
	adds r0, r7, #0
	bl func_080ADF40
	adds r6, r0, #0
	ldr r0, [r7]
	cmp r0, #2
	bne .L080ADDBE
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	mov r0, sl
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080ADDB2
	movs r6, #0
	b .L080ADDE2
.L080ADDB2:
	movs r0, #1
	str r0, [r7]
	b .L080ADDE2
.L080ADDB8:
	movs r0, #2
	str r0, [r7]
	b .L080ADF1A
.L080ADDBE:
	movs r4, #0
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [r0, #0xc]
	mov r0, sl
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldrh r0, [r7, #4]
	cmp r0, #0
	bne .L080ADDDA
	movs r0, #1
	orrs r1, r0
.L080ADDDA:
	cmp r1, #0
	beq .L080ADDE0
	movs r4, #1
.L080ADDE0:
	str r4, [sp, #0x24]
.L080ADDE2:
	ldr r5, [r7, #0x10]
	cmp r5, #0
	bne .L080ADDEA
	ldr r5, [r7, #8]
.L080ADDEA:
	movs r0, #0
	mov sb, r0
	b .L080ADEF8
.L080ADDF0:
	ldrb r2, [r5]
	adds r5, #1
	cmp r2, #0xd
	bhi .L080ADE40
	lsls r0, r2, #2
	ldr r1, .L080ADE04 @ =.L080ADE08
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080ADE04: .4byte .L080ADE08
.L080ADE08: @ jump table
	.4byte .L080ADEAE @ case 0
	.4byte .L080ADE40 @ case 1
	.4byte .L080ADE40 @ case 2
	.4byte .L080ADE40 @ case 3
	.4byte .L080ADE40 @ case 4
	.4byte .L080ADEE4 @ case 5
	.4byte .L080ADE40 @ case 6
	.4byte .L080ADE40 @ case 7
	.4byte .L080ADE40 @ case 8
	.4byte .L080ADE40 @ case 9
	.4byte .L080ADEC8 @ case 10
	.4byte .L080ADE40 @ case 11
	.4byte .L080ADED0 @ case 12
	.4byte .L080ADEC0 @ case 13
.L080ADE40:
	cmp r2, #0x1f
	bls .L080ADEF8
	mov r1, sb
	orrs r1, r2
	mov sb, r1
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0xc]
	mov r0, r8
	mov r1, sb
	bl _call_via_r2
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080ADE64
	movs r0, #0
	mov sb, r0
	b .L080ADEDC
.L080ADE64:
	ldr r2, [r7, #0xc]
	cmp r2, #0
	beq .L080ADEA6
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne .L080ADEA6
	ldr r1, [r2]
	mov r0, sp
	ldr r3, [r1, #0xc]
	adds r1, r2, #0
	mov r2, sb
	bl _call_via_r3
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080ADE9E
	movs r1, #0
	mov sb, r1
	adds r4, r7, #0
	adds r4, #0x14
	add r1, sp, #4
	adds r0, r4, #0
	bl strcpy
	str r5, [r7, #8]
	str r4, [r7, #0x10]
	adds r5, r4, #0
	b .L080ADEF8
.L080ADE9E:
	mov r0, sb
	lsls r0, r0, #8
	mov sb, r0
	b .L080ADEF8
.L080ADEA6:
	mov r1, sb
	lsls r1, r1, #8
	mov sb, r1
	b .L080ADEF8
.L080ADEAE:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq .L080ADEBC
	movs r0, #0
	str r0, [r7, #0x10]
	ldr r5, [r7, #8]
	b .L080ADEF8
.L080ADEBC:
	movs r5, #0
	b .L080ADF1A
.L080ADEC0:
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x10]
	b .L080ADED6
.L080ADEC8:
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x14]
	b .L080ADED6
.L080ADED0:
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x18]
.L080ADED6:
	mov r0, r8
	bl _call_via_r1
.L080ADEDC:
	cmp r6, #0
	beq .L080ADEF8
	subs r6, #1
	b .L080ADEF8
.L080ADEE4:
	mov r1, sl
	ldr r0, [r1]
	ldr r1, [r0, #0x10]
	mov r0, sl
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080ADEF8
	b .L080ADDB8
.L080ADEF8:
	cmp r5, #0
	beq .L080ADF1A
	ldr r0, [sp, #0x24]
	cmp r0, #0
	bne .L080ADF06
	cmp r6, #0
	beq .L080ADF1A
.L080ADF06:
	mov r1, r8
	ldr r0, [r1]
	ldr r1, [r0, #0x1c]
	mov r0, r8
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080ADF1A
	b .L080ADDF0
.L080ADF1A:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq .L080ADF24
	str r5, [r7, #0x10]
	b .L080ADF2C
.L080ADF24:
	str r5, [r7, #8]
	cmp r5, #0
	bne .L080ADF2C
	str r5, [r7]
.L080ADF2C:
	ldr r0, [r7]
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080ADF40
func_080ADF40: @ 0x080ADF40
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #6]
	adds r5, r0, #0
	ldrh r0, [r2, #4]
	adds r1, r5, r0
	adds r4, r1, #0
	movs r0, #0xff
	ands r0, r1
	movs r3, #0
	cmp r0, #0
	beq .L080ADF5A
	adds r3, r1, #0
.L080ADF5A:
	strh r3, [r2, #6]
	adds r0, r4, #0
	asrs r1, r0, #8
	adds r0, r5, #0
	asrs r0, r0, #8
	subs r0, r1, r0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_080ADF6C
func_080ADF6C: @ 0x080ADF6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	adds r6, r0, #0
	str r1, [sp, #0x14]
	bl func_08008444
	ldr r0, .L080AE340 @ =vtable_unk_080E8500
	str r0, [r6, #4]
	movs r0, #2
	add r7, sp, #0x10
	movs r1, #1
	rsbs r1, r1, #0
.L080ADF8C:
	subs r0, #1
	cmp r0, r1
	bne .L080ADF8C
	movs r0, #4
	bl __builtin_new
	adds r5, r0, #0
	add r0, sp, #0xc
	bl func_0800835C
	adds r0, r7, #0
	bl func_0800770C
	movs r4, #0
	str r4, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x18
	movs r3, #0
	bl func_08050CC0
	movs r2, #0x83
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	adds r0, r7, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE344 @ =gUnk_0873E5B0
	bl func_0805E6CC
	ldr r2, .L080AE348 @ =0x0000041C
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE34C @ =gUnk_0873DE44
	bl func_0805E6CC
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE350 @ =gUnk_087405A0
	bl func_0805E6CC
	ldr r2, .L080AE354 @ =0x00000424
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE358 @ =gUnk_0858BA28
	bl func_0805E6CC
	movs r2, #0x85
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE35C @ =gUnk_0873AE54
	bl func_0805E6CC
	ldr r2, .L080AE360 @ =0x0000042C
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE364 @ =gUnk_0871D51C
	bl func_0805E6CC
	movs r2, #0x86
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE368 @ =gUnk_0872BE64
	bl func_0805E6CC
	ldr r2, .L080AE36C @ =0x00000434
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x30
	bl __builtin_new
	ldr r1, .L080AE370 @ =gUnk_0873D6D8
	bl func_0805E6CC
	movs r2, #0x87
	lsls r2, r2, #3
	adds r1, r6, r2
	str r0, [r1]
	movs r0, #0x10
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r6, #0
	bl func_08008918
	adds r1, r0, #0
	str r4, [r5]
	str r4, [r5, #4]
	ldr r0, .L080AE374 @ =vtable_unk_080E5B80
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xc
	bl func_08009300
	ldr r1, .L080AE378 @ =0x0000043C
	adds r0, r6, r1
	str r5, [r0]
	movs r2, #0x8c
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0x28
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0x10
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0x10
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0x10
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0x10
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0x10
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	adds r2, #8
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0xc
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r0, r6, r2
	str r4, [r0]
	strh r4, [r0, #4]
	adds r1, #0x10
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	adds r2, #0x10
	adds r3, r6, r2
	movs r0, #4
	ldr r4, .L080AE37C @ =0x000007CC
	adds r5, r6, r4
	ldr r1, .L080AE380 @ =0x000007D4
	adds r7, r6, r1
	ldr r2, .L080AE384 @ =0x000007DC
	adds r2, r2, r6
	mov ip, r2
	adds r4, #0x28
	adds r4, r4, r6
	mov r8, r4
	adds r1, #0x28
	adds r1, r1, r6
	mov sb, r1
	ldr r2, .L080AE388 @ =0x00000804
	adds r2, r2, r6
	mov sl, r2
	movs r4, #0x89
	lsls r4, r4, #4
	adds r4, r6, r4
	str r4, [sp, #0x18]
	ldr r1, .L080AE38C @ =0x00000898
	adds r1, r6, r1
	str r1, [sp, #0x1c]
	movs r2, #0x8a
	lsls r2, r2, #4
	adds r2, r6, r2
	str r2, [sp, #0x20]
	ldr r4, .L080AE390 @ =0x000008A8
	adds r4, r6, r4
	str r4, [sp, #0x24]
	movs r1, #0x8b
	lsls r1, r1, #4
	adds r1, r6, r1
	str r1, [sp, #0x28]
	ldr r2, .L080AE394 @ =0x000008B8
	adds r2, r6, r2
	str r2, [sp, #0x2c]
	movs r4, #0x8c
	lsls r4, r4, #4
	adds r4, r6, r4
	str r4, [sp, #0x30]
	ldr r1, .L080AE398 @ =0x000008C8
	adds r1, r6, r1
	str r1, [sp, #0x34]
	movs r2, #0x8d
	lsls r2, r2, #4
	adds r2, r6, r2
	str r2, [sp, #0x38]
	ldr r4, .L080AE39C @ =0x000008D8
	adds r4, r6, r4
	str r4, [sp, #0x3c]
	movs r2, #0
	movs r1, #1
	rsbs r1, r1, #0
.L080AE20E:
	stm r3!, {r2}
	subs r0, #1
	cmp r0, r1
	bne .L080AE20E
	ldr r0, .L080AE3A0 @ =0x00000564
	adds r1, r6, r0
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AE222:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080AE222
	movs r2, #4
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	movs r4, #0xaf
	lsls r4, r4, #3
	adds r0, r6, r4
.L080AE238:
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x1c]
	adds r0, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080AE238
	movs r0, #0xc3
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AE25E:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080AE25E
	ldr r2, .L080AE3A4 @ =0x0000062C
	adds r1, r6, r2
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AE272:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080AE272
	movs r2, #4
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	movs r4, #0xc8
	lsls r4, r4, #3
	adds r0, r6, r4
.L080AE288:
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x1c]
	adds r0, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080AE288
	movs r0, #0xdc
	lsls r0, r0, #3
	adds r1, r6, r0
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AE2AE:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080AE2AE
	ldr r2, .L080AE3A8 @ =0x000006F4
	adds r1, r6, r2
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AE2C2:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080AE2C2
	movs r4, #0xe1
	lsls r4, r4, #3
	adds r1, r6, r4
	movs r0, #4
	movs r3, #0
	movs r2, #1
	rsbs r2, r2, #0
.L080AE2D8:
	stm r1!, {r3}
	subs r0, #1
	cmp r0, r2
	bne .L080AE2D8
	movs r2, #4
	movs r1, #0
	movs r3, #1
	rsbs r3, r3, #0
	ldr r4, .L080AE3AC @ =0x0000071C
	adds r0, r6, r4
.L080AE2EC:
	str r1, [r0]
	strh r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	strh r1, [r0, #0x14]
	str r1, [r0, #0x18]
	strh r1, [r0, #0x1c]
	adds r0, #0x20
	subs r2, #1
	cmp r2, r3
	bne .L080AE2EC
	movs r4, #0
	ldr r1, .L080AE3B0 @ =0x000007BC
	adds r0, r6, r1
	str r4, [r0]
	movs r2, #0xf8
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #8
	adds r0, r6, r1
	str r4, [r0]
	strh r4, [r0, #4]
	str r4, [r5]
	strh r4, [r5, #4]
	str r4, [r7]
	strh r4, [r7, #4]
	mov r2, ip
	str r4, [r2]
	strh r4, [r2, #4]
	adds r1, #0x20
	adds r0, r6, r1
	str r4, [r0]
	movs r2, #0xfd
	lsls r2, r2, #3
	adds r0, r6, r2
	str r4, [r0]
	adds r1, #8
	adds r0, r6, r1
	b .L080AE3B4
	.align 2, 0
.L080AE340: .4byte vtable_unk_080E8500
.L080AE344: .4byte gUnk_0873E5B0
.L080AE348: .4byte 0x0000041C
.L080AE34C: .4byte gUnk_0873DE44
.L080AE350: .4byte gUnk_087405A0
.L080AE354: .4byte 0x00000424
.L080AE358: .4byte gUnk_0858BA28
.L080AE35C: .4byte gUnk_0873AE54
.L080AE360: .4byte 0x0000042C
.L080AE364: .4byte gUnk_0871D51C
.L080AE368: .4byte gUnk_0872BE64
.L080AE36C: .4byte 0x00000434
.L080AE370: .4byte gUnk_0873D6D8
.L080AE374: .4byte vtable_unk_080E5B80
.L080AE378: .4byte 0x0000043C
.L080AE37C: .4byte 0x000007CC
.L080AE380: .4byte 0x000007D4
.L080AE384: .4byte 0x000007DC
.L080AE388: .4byte 0x00000804
.L080AE38C: .4byte 0x00000898
.L080AE390: .4byte 0x000008A8
.L080AE394: .4byte 0x000008B8
.L080AE398: .4byte 0x000008C8
.L080AE39C: .4byte 0x000008D8
.L080AE3A0: .4byte 0x00000564
.L080AE3A4: .4byte 0x0000062C
.L080AE3A8: .4byte 0x000006F4
.L080AE3AC: .4byte 0x0000071C
.L080AE3B0: .4byte 0x000007BC
.L080AE3B4:
	str r4, [r0]
	strh r4, [r0, #4]
	mov r2, r8
	str r4, [r2]
	strh r4, [r2, #4]
	mov r0, sb
	str r4, [r0]
	strh r4, [r0, #4]
	mov r1, sl
	str r4, [r1]
	strh r4, [r1, #4]
	ldr r2, .L080AE4B8 @ =0x0000080C
	adds r0, r6, r2
	movs r1, #0
	bl func_08008B54
	movs r1, #0x81
	lsls r1, r1, #4
	adds r0, r6, r1
	movs r1, #1
	bl func_08008B54
	ldr r2, .L080AE4BC @ =0x00000814
	adds r0, r6, r2
	movs r1, #2
	bl func_08008B54
	ldr r1, .L080AE4C0 @ =0x00000818
	adds r0, r6, r1
	movs r1, #3
	bl func_08008B54
	ldr r2, .L080AE4C4 @ =0x0000081C
	adds r0, r6, r2
	movs r1, #4
	bl func_08008B54
	movs r1, #0x82
	lsls r1, r1, #4
	adds r0, r6, r1
	str r4, [r0]
	str r4, [r0, #4]
	ldr r1, .L080AE4C8 @ =vtable_unk_080E5B70
	str r1, [r0, #8]
	ldr r2, .L080AE4CC @ =0x0000082C
	adds r0, r6, r2
	str r4, [r0]
	str r4, [r0, #4]
	ldr r1, .L080AE4D0 @ =vtable_unk_080E5B60
	str r1, [r0, #8]
	ldr r0, .L080AE4D4 @ =0x00000888
	adds r5, r6, r0
	adds r0, r5, #0
	bl func_08007874
	str r4, [r5, #4]
	ldr r0, [sp, #0x18]
	bl func_08007874
	ldr r1, [sp, #0x18]
	str r4, [r1, #4]
	ldr r0, [sp, #0x1c]
	bl func_08007874
	ldr r2, [sp, #0x1c]
	str r4, [r2, #4]
	ldr r0, [sp, #0x20]
	bl func_08007874
	ldr r0, [sp, #0x20]
	str r4, [r0, #4]
	ldr r0, [sp, #0x24]
	bl func_08007874
	ldr r1, [sp, #0x24]
	str r4, [r1, #4]
	ldr r0, [sp, #0x28]
	bl func_08007874
	ldr r2, [sp, #0x28]
	str r4, [r2, #4]
	ldr r0, [sp, #0x2c]
	bl func_08007874
	ldr r0, [sp, #0x2c]
	str r4, [r0, #4]
	ldr r0, [sp, #0x30]
	bl func_08007874
	ldr r1, [sp, #0x30]
	str r4, [r1, #4]
	ldr r0, [sp, #0x34]
	bl func_08007874
	ldr r2, [sp, #0x34]
	str r4, [r2, #4]
	ldr r0, [sp, #0x38]
	bl func_08007874
	ldr r0, [sp, #0x38]
	str r4, [r0, #4]
	ldr r0, [sp, #0x3c]
	bl func_08007874
	ldr r1, [sp, #0x3c]
	str r4, [r1, #4]
	movs r2, #0x91
	lsls r2, r2, #4
	adds r0, r6, r2
	str r4, [r0]
	movs r4, #0x93
	lsls r4, r4, #4
	adds r1, r6, r4
	ldr r2, [sp, #0x14]
	ldr r0, [r2]
	str r0, [r1]
	ldrb r1, [r2, #4]
	adds r4, #8
	adds r0, r6, r4
	strb r1, [r0]
	adds r0, r6, #0
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080AE4B8: .4byte 0x0000080C
.L080AE4BC: .4byte 0x00000814
.L080AE4C0: .4byte 0x00000818
.L080AE4C4: .4byte 0x0000081C
.L080AE4C8: .4byte vtable_unk_080E5B70
.L080AE4CC: .4byte 0x0000082C
.L080AE4D0: .4byte vtable_unk_080E5B60
.L080AE4D4: .4byte 0x00000888

	thumb_func_start func_080AE4D8
func_080AE4D8: @ 0x080AE4D8
	ldr r1, .L080AE4E0 @ =0x0000092C
	adds r0, r0, r1
	ldrb r0, [r0]
	bx lr
	.align 2, 0
.L080AE4E0: .4byte 0x0000092C

	thumb_func_start func_080AE4E4
func_080AE4E4: @ 0x080AE4E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	str r0, [sp, #0x1c]
	adds r7, r1, #0
	adds r0, r7, #0
	bl func_080AE6C0
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	ldr r0, .L080AE57C @ =0x0000043C
	adds r4, r7, r0
	ldr r0, [r4]
	ldr r1, .L080AE580 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	adds r0, r7, #0
	bl func_080B09B0
	adds r0, r7, #0
	bl func_080B0AA0
	adds r0, r7, #0
	bl func_080AE7D0
	adds r0, r7, #0
	bl func_080AE894
	ldr r1, .L080AE584 @ =0x0000080C
	adds r0, r7, r1
	movs r1, #0x22
	bl func_08008B6C
	ldr r1, .L080AE588 @ =0x00000838
	adds r0, r7, r1
	ldr r0, [r0]
	mov r1, sp
	adds r1, #0x10
	str r1, [sp, #0x24]
	adds r1, #4
	str r1, [sp, #0x28]
	cmp r0, #5
	beq .L080AE5D4
.L080AE562:
	adds r0, r7, #0
	bl func_080087C8
	ldr r1, .L080AE588 @ =0x00000838
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #4
	bhi .L080AE5CA
	lsls r0, r0, #2
	ldr r1, .L080AE58C @ =.L080AE590
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080AE57C: .4byte 0x0000043C
.L080AE580: .4byte 0x00000889
.L080AE584: .4byte 0x0000080C
.L080AE588: .4byte 0x00000838
.L080AE58C: .4byte .L080AE590
.L080AE590: @ jump table
	.4byte .L080AE5A4 @ case 0
	.4byte .L080AE5AC @ case 1
	.4byte .L080AE5B4 @ case 2
	.4byte .L080AE5BC @ case 3
	.4byte .L080AE5C4 @ case 4
.L080AE5A4:
	adds r0, r7, #0
	bl func_080B0BB8
	b .L080AE5CA
.L080AE5AC:
	adds r0, r7, #0
	bl func_080B1B40
	b .L080AE5CA
.L080AE5B4:
	adds r0, r7, #0
	bl func_080B1D34
	b .L080AE5CA
.L080AE5BC:
	adds r0, r7, #0
	bl func_080B1D94
	b .L080AE5CA
.L080AE5C4:
	adds r0, r7, #0
	bl func_080B2114
.L080AE5CA:
	ldr r1, .L080AE6B4 @ =0x00000838
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #5
	bne .L080AE562
.L080AE5D4:
	ldr r0, .L080AE6B8 @ =0x0000043C
	adds r4, r7, r0
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080AE602
	ldr r1, .L080AE6BC @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L080AE602:
	ldr r0, [r4]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	bge .L080AE67A
	movs r1, #0x83
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x20]
	movs r0, #0x81
	lsls r0, r0, #4
	adds r0, r0, r7
	mov sl, r0
.L080AE61E:
	adds r0, r7, #0
	bl func_080087C8
	ldr r1, [sp, #0x20]
	ldr r1, [r1]
	mov sb, r1
	adds r0, r7, #0
	bl func_080088DC
	mov r8, r0
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, sl
	str r0, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	adds r0, r7, #0
	bl func_080AF814
	ldr r1, .L080AE6B8 @ =0x0000043C
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	blt .L080AE61E
.L080AE67A:
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x28]
	str r0, [r1, #4]
	ldr r1, [sp, #0x24]
	str r0, [r1]
	ldr r1, [sp, #0x1c]
	str r0, [r1]
	ldr r1, [sp, #0x10]
	cmp r1, #0
	beq .L080AE6A0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080AE6A0:
	ldr r0, [sp, #0x1c]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080AE6B4: .4byte 0x00000838
.L080AE6B8: .4byte 0x0000043C
.L080AE6BC: .4byte 0x00000889

	thumb_func_start func_080AE6C0
func_080AE6C0: @ 0x080AE6C0
	push {lr}
	bl func_08008724
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080AE6CC
func_080AE6CC: @ 0x080AE6CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, .L080AE7BC @ =0x00000888
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #3
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x89
	lsls r0, r0, #4
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x8a
	lsls r0, r0, #4
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080AE7C0 @ =0x000008A8
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x8b
	lsls r0, r0, #4
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080AE7C4 @ =0x000008B8
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x8c
	lsls r0, r0, #4
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080AE7C8 @ =0x000008C8
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #5
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0x8d
	lsls r0, r0, #4
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r4, #4]
	ldr r0, .L080AE7CC @ =0x000008D8
	adds r5, r5, r0
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007C28
	adds r0, r5, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080AE7BC: .4byte 0x00000888
.L080AE7C0: .4byte 0x000008A8
.L080AE7C4: .4byte 0x000008B8
.L080AE7C8: .4byte 0x000008C8
.L080AE7CC: .4byte 0x000008D8

	thumb_func_start func_080AE7D0
func_080AE7D0: @ 0x080AE7D0
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	mov sb, r0
	ldr r1, .L080AE870 @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r5, #1
	rsbs r5, r5, #0
	ldr r0, .L080AE874 @ =0x0600F000
	mov r8, r0
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r5, #0
	mov r1, r8
	adds r2, r6, #0
	bl func_08008EB8
	ldr r4, .L080AE878 @ =0x0600F800
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl func_08008EB8
	ldr r0, .L080AE87C @ =gUnk_0872FC34
	adds r1, r4, #0
	bl Unpack
	ldr r0, .L080AE880 @ =gUnk_0872FE6C
	mov r1, r8
	bl Unpack
	ldr r0, .L080AE884 @ =gUnk_0872FEF8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl Unpack
	ldr r0, .L080AE888 @ =gUnk_08731940
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #2
	bl func_08008E64
	mov r0, sb
	bl func_08008918
	mov r2, sp
	movs r3, #0xb2
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	mov r0, sb
	bl func_08008918
	mov r2, sp
	ldr r3, .L080AE88C @ =0x00001E41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	mov r0, sb
	bl func_08008918
	mov r2, sp
	ldr r3, .L080AE890 @ =0x00001F42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080AE870: .4byte 0x06007FE0
.L080AE874: .4byte 0x0600F000
.L080AE878: .4byte 0x0600F800
.L080AE87C: .4byte gUnk_0872FC34
.L080AE880: .4byte gUnk_0872FE6C
.L080AE884: .4byte gUnk_0872FEF8
.L080AE888: .4byte gUnk_08731940
.L080AE88C: .4byte 0x00001E41
.L080AE890: .4byte 0x00001F42

	thumb_func_start func_080AE894
func_080AE894: @ 0x080AE894
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xdc
	mov sb, r0
	ldr r0, .L080AE9B8 @ =gUnk_080F9F78
	ldr r0, [r0]
	ldr r1, .L080AE9BC @ =0x050003C0
	movs r2, #0x20
	bl func_08008E64
	mov r0, sb
	bl func_080AE6CC
	ldr r1, .L080AE9C0 @ =0x0500024A
	ldr r0, .L080AE9C4 @ =0x050003C2
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	ldr r0, .L080AE9C8 @ =0x050003C4
	ldrh r0, [r0]
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x1f
	strh r0, [r1]
	adds r1, #2
	ldr r2, .L080AE9CC @ =0x0000675E
	adds r0, r2, #0
	strh r0, [r1]
	movs r1, #0x88
	lsls r1, r1, #3
	add r1, sb
	movs r0, #0
	movs r2, #8
	bl func_08008EB8
	ldr r0, .L080AE9D0 @ =0x0000090B
	add r0, sb
	ldrb r0, [r0]
	add r1, sp, #0x10
	movs r2, #0
	bl func_0804EC84
	ldr r1, .L080AE9D4 @ =0x05000240
	movs r3, #0xf8
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #2
	ldr r4, .L080AE9D8 @ =0x00000303
	adds r0, r4, #0
	strh r0, [r1]
	adds r1, #2
	ldr r5, .L080AE9DC @ =0x00004F15
	adds r0, r5, #0
	strh r0, [r1]
	adds r1, #2
	ldr r6, .L080AE9E0 @ =0x00007FFF
	adds r0, r6, #0
	strh r0, [r1]
	adds r1, #2
	ldr r7, .L080AE9E4 @ =0x000052F8
	adds r0, r7, #0
	strh r0, [r1]
	add r0, sp, #0x6c
	movs r5, #4
	movs r6, #2
	movs r1, #0
	mov r8, r1
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x6c]
	mov r4, sb
	adds r4, #0xc
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	movs r2, #1
	mov sl, r2
	add r0, sp, #0x70
	strh r5, [r0]
	strh r6, [r0, #2]
	ldr r0, [sp, #0x70]
	add r3, sp, #0x10
	str r3, [sp]
	mov r5, r8
	str r5, [sp, #4]
	str r2, [sp, #8]
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	mov r0, sb
	bl func_08008910
	adds r5, r0, #0
	ldr r0, .L080AE9E8 @ =0x00000888
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #1
	lsls r2, r2, #5
	ldr r6, .L080AE9EC @ =0x06010000
	adds r2, r2, r6
	add r0, sp, #0x14
	adds r1, r4, #0
	bl func_08008F0C
	add r7, sp, #0x14
	mov r8, r7
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080AE9F0
	cmp r1, #0
	beq .L080AE996
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AE996:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	mov r5, sp
	adds r5, #0x7c
	str r5, [sp, #0xc0]
	mov r6, sp
	adds r6, #0x24
	str r6, [sp, #0xb4]
	mov r7, sp
	adds r7, #0x44
	str r7, [sp, #0xb8]
	mov r0, sp
	adds r0, #0x48
	str r0, [sp, #0xbc]
	b .L080AEACE
	.align 2, 0
.L080AE9B8: .4byte gUnk_080F9F78
.L080AE9BC: .4byte 0x050003C0
.L080AE9C0: .4byte 0x0500024A
.L080AE9C4: .4byte 0x050003C2
.L080AE9C8: .4byte 0x050003C4
.L080AE9CC: .4byte 0x0000675E
.L080AE9D0: .4byte 0x0000090B
.L080AE9D4: .4byte 0x05000240
.L080AE9D8: .4byte 0x00000303
.L080AE9DC: .4byte 0x00004F15
.L080AE9E0: .4byte 0x00007FFF
.L080AE9E4: .4byte 0x000052F8
.L080AE9E8: .4byte 0x00000888
.L080AE9EC: .4byte 0x06010000
.L080AE9F0:
	str r1, [sp, #0xd4]
	mov r1, sl
	str r1, [sp, #0x78]
	ldr r0, [r5]
	ldr r2, [sp, #0xd4]
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r1, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L080AEA0A
	adds r0, r1, #0
.L080AEA0A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AEA28
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080AEA2C
	mov r0, sl
	bl func_080D3BC0
	b .L080AEA2C
.L080AEA28:
	movs r0, #0
	mov sl, r0
.L080AEA2C:
	adds r6, r0, #0
	str r6, [sp, #0xd8]
	ldr r2, [r5]
	adds r3, r6, #0
	mov r4, sp
	adds r4, #0x7c
	str r4, [sp, #0xc0]
	mov r6, sp
	adds r6, #0x24
	str r6, [sp, #0xb4]
	mov r7, sp
	adds r7, #0x44
	str r7, [sp, #0xb8]
	mov r0, sp
	adds r0, #0x48
	str r0, [sp, #0xbc]
	ldr r1, [sp, #0xd4]
	cmp r2, r1
	beq .L080AEA6C
.L080AEA52:
	cmp r3, #0
	beq .L080AEA62
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEA62:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AEA52
.L080AEA6C:
	adds r6, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L080AEA88
	cmp r6, #0
	beq .L080AEA84
	adds r0, r6, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AEA84:
	adds r6, #0x10
	b .L080AEAAA
.L080AEA88:
	adds r3, r0, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080AEAA8
.L080AEA90:
	cmp r2, #0
	beq .L080AEAA0
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEAA0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AEA90
.L080AEAA8:
	adds r6, r2, #0
.L080AEAAA:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AEABA
.L080AEAB4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AEAB4
.L080AEABA:
	cmp r0, #0
	beq .L080AEAC2
	bl free
.L080AEAC2:
	ldr r0, [sp, #0xd8]
	add r0, sl
	ldr r7, [sp, #0xd8]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080AEACE:
	movs r4, #0x88
	lsls r4, r4, #3
	add r4, sb
	ldr r0, .L080AEC10 @ =0x00000888
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r3, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	mov r8, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xc0]
	movs r1, #0xd0
	movs r2, #8
	bl func_0804EA94
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x80]
	str r0, [r4]
	str r1, [r4, #4]
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080AEC14 @ =0x0000041C
	add r1, sb
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0x96
	lsls r7, r7, #3
	add r7, sb
	ldr r0, [r7]
	cmp r4, r0
	beq .L080AEB2A
	bl __builtin_delete
.L080AEB2A:
	str r4, [r7]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r0, #0
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	str r5, [r4, #0xc]
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x11]
	str r5, [r4, #0x14]
	strb r0, [r4, #0x18]
	ldr r6, .L080AEC18 @ =0x000004B4
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080AEB58
	bl __builtin_delete
.L080AEB58:
	str r4, [r6]
	ldr r0, [r7]
	movs r1, #0
	bl func_0805E860
	ldr r0, [r6]
	movs r1, #0x40
	strh r1, [r0]
	ldr r0, [r6]
	strh r1, [r0, #2]
	ldr r4, [r6]
	movs r5, #0x89
	lsls r5, r5, #4
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #3
	strh r0, [r1, #4]
	movs r4, #0x97
	lsls r4, r4, #3
	add r4, sb
	ldr r0, [r7]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x24
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0xb4]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0xb4]
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3}
	stm r4!, {r2, r3}
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0x98
	lsls r4, r4, #3
	add r4, sb
	ldr r7, [r4]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080AEBDE
	ldrh r3, [r4, #4]
.L080AEBDE:
	lsls r2, r2, #5
	ldr r4, .L080AEC1C @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x14
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AEC20
	cmp r1, #0
	beq .L080AEC08
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEC08:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AECE6
	.align 2, 0
.L080AEC10: .4byte 0x00000888
.L080AEC14: .4byte 0x0000041C
.L080AEC18: .4byte 0x000004B4
.L080AEC1C: .4byte 0x06010000
.L080AEC20:
	str r1, [sp, #0xd4]
	mov r4, r8
	str r4, [sp, #0x88]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x84]
	add r1, sp, #0x88
	add r0, sp, #0x84
	cmp r4, #1
	bhs .L080AEC3A
	adds r0, r1, #0
.L080AEC3A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AEC58
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AEC5C
	mov r0, r8
	bl func_080D3BC0
	b .L080AEC5C
.L080AEC58:
	movs r0, #0
	mov r8, r0
.L080AEC5C:
	adds r5, r0, #0
	str r5, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xd4]
	cmp r2, r7
	beq .L080AEC84
.L080AEC6A:
	cmp r3, #0
	beq .L080AEC7A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEC7A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AEC6A
.L080AEC84:
	adds r5, r3, #0
	ldr r0, [sp, #0x88]
	cmp r0, #1
	bne .L080AECA0
	cmp r5, #0
	beq .L080AEC9C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AEC9C:
	adds r5, #0x10
	b .L080AECC2
.L080AECA0:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AECC0
.L080AECA8:
	cmp r2, #0
	beq .L080AECB8
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AECB8:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AECA8
.L080AECC0:
	adds r5, r2, #0
.L080AECC2:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AECD2
.L080AECCC:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AECCC
.L080AECD2:
	cmp r0, #0
	beq .L080AECDA
	bl free
.L080AECDA:
	ldr r0, [sp, #0xd8]
	add r0, r8
	ldr r7, [sp, #0xd8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AECE6:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0x99
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080AED00
	ldrh r3, [r2, #4]
.L080AED00:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080AED30 @ =0x05000260
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AED34
	cmp r1, #0
	beq .L080AED26
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AED26:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AEDFC
	.align 2, 0
.L080AED30: .4byte 0x05000260
.L080AED34:
	str r1, [sp, #0xd4]
	movs r0, #1
	add r1, sp, #0x90
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xd4]
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x8c]
	ldr r0, [r1]
	add r2, sp, #0x8c
	cmp r4, r0
	bhs .L080AED50
	adds r2, r1, #0
.L080AED50:
	ldr r0, [r2]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AED6E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AED72
	mov r0, r8
	bl func_080D3BC0
	b .L080AED72
.L080AED6E:
	movs r0, #0
	mov r8, r0
.L080AED72:
	adds r5, r0, #0
	str r5, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xd4]
	cmp r2, r7
	beq .L080AED9A
.L080AED80:
	cmp r3, #0
	beq .L080AED90
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AED90:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AED80
.L080AED9A:
	adds r5, r3, #0
	ldr r1, [sp, #0x90]
	cmp r1, #1
	bne .L080AEDB6
	cmp r5, #0
	beq .L080AEDB2
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AEDB2:
	adds r5, #0x10
	b .L080AEDD8
.L080AEDB6:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AEDD6
.L080AEDBE:
	cmp r2, #0
	beq .L080AEDCE
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEDCE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AEDBE
.L080AEDD6:
	adds r5, r2, #0
.L080AEDD8:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AEDE8
.L080AEDE2:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AEDE2
.L080AEDE8:
	cmp r0, #0
	beq .L080AEDF0
	bl free
.L080AEDF0:
	ldr r0, [sp, #0xd8]
	add r0, r8
	ldr r7, [sp, #0xd8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AEDFC:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080AEF1C @ =0x00000424
	add r1, sb
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0x9b
	lsls r7, r7, #3
	add r7, sb
	ldr r0, [r7]
	cmp r4, r0
	beq .L080AEE24
	bl __builtin_delete
.L080AEE24:
	str r4, [r7]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r0, #0
	movs r5, #0
	strh r5, [r4]
	strh r5, [r4, #2]
	strh r5, [r4, #4]
	strh r5, [r4, #6]
	strh r5, [r4, #8]
	str r5, [r4, #0xc]
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x11]
	str r5, [r4, #0x14]
	strb r0, [r4, #0x18]
	ldr r6, .L080AEF20 @ =0x000004DC
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080AEE54
	bl __builtin_delete
.L080AEE54:
	str r4, [r6]
	ldr r0, [r7]
	movs r1, #0
	bl func_0805E860
	ldr r1, [r6]
	movs r0, #0xc0
	strh r0, [r1]
	ldr r0, [r6]
	strh r5, [r0, #2]
	ldr r4, [r6]
	movs r5, #0x8a
	lsls r5, r5, #4
	add r5, sb
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #4
	strh r0, [r1, #4]
	ldr r0, [r6]
	movs r1, #1
	movs r2, #1
	mov r8, r2
	mov r3, r8
	strh r3, [r0, #8]
	ldr r0, [r6]
	strb r1, [r0, #0x18]
	movs r4, #0x9c
	lsls r4, r4, #3
	add r4, sb
	ldr r0, [r7]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x14
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x14
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x14
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3, r6}
	stm r4!, {r2, r3, r6}
	ldm r0!, {r1, r7}
	stm r4!, {r1, r7}
	mov r0, sb
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0x9d
	lsls r4, r4, #3
	add r4, sb
	ldr r7, [r4]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080AEEEA
	ldrh r3, [r4, #4]
.L080AEEEA:
	lsls r2, r2, #5
	ldr r4, .L080AEF24 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x14
	mov sl, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AEF28
	cmp r1, #0
	beq .L080AEF14
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEF14:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AEFF0
	.align 2, 0
.L080AEF1C: .4byte 0x00000424
.L080AEF20: .4byte 0x000004DC
.L080AEF24: .4byte 0x06010000
.L080AEF28:
	str r1, [sp, #0xd4]
	add r1, sp, #0x98
	mov r4, r8
	str r4, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xd4]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x94
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080AEF44
	adds r0, r1, #0
.L080AEF44:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AEF62
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AEF66
	mov r0, r8
	bl func_080D3BC0
	b .L080AEF66
.L080AEF62:
	movs r0, #0
	mov r8, r0
.L080AEF66:
	adds r5, r0, #0
	str r5, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xd4]
	cmp r2, r7
	beq .L080AEF8E
.L080AEF74:
	cmp r3, #0
	beq .L080AEF84
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEF84:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AEF74
.L080AEF8E:
	adds r5, r3, #0
	ldr r1, [sp, #0x98]
	cmp r1, #1
	bne .L080AEFAA
	cmp r5, #0
	beq .L080AEFA6
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AEFA6:
	adds r5, #0x10
	b .L080AEFCC
.L080AEFAA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AEFCA
.L080AEFB2:
	cmp r2, #0
	beq .L080AEFC2
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AEFC2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AEFB2
.L080AEFCA:
	adds r5, r2, #0
.L080AEFCC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AEFDC
.L080AEFD6:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AEFD6
.L080AEFDC:
	cmp r0, #0
	beq .L080AEFE4
	bl free
.L080AEFE4:
	ldr r0, [sp, #0xd8]
	add r0, r8
	ldr r7, [sp, #0xd8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AEFF0:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0x9e
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080AF00A
	ldrh r3, [r2, #4]
.L080AF00A:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080AF038 @ =0x05000280
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AF03C
	cmp r1, #0
	beq .L080AF030
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AF030:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AF104
	.align 2, 0
.L080AF038: .4byte 0x05000280
.L080AF03C:
	str r1, [sp, #0xd4]
	movs r0, #1
	add r1, sp, #0xa0
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xd4]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x9c
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080AF058
	adds r0, r1, #0
.L080AF058:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AF076
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AF07A
	mov r0, r8
	bl func_080D3BC0
	b .L080AF07A
.L080AF076:
	movs r0, #0
	mov r8, r0
.L080AF07A:
	adds r5, r0, #0
	str r5, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xd4]
	cmp r2, r7
	beq .L080AF0A2
.L080AF088:
	cmp r3, #0
	beq .L080AF098
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AF098:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AF088
.L080AF0A2:
	adds r5, r3, #0
	ldr r1, [sp, #0xa0]
	cmp r1, #1
	bne .L080AF0BE
	cmp r5, #0
	beq .L080AF0BA
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AF0BA:
	adds r5, #0x10
	b .L080AF0E0
.L080AF0BE:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AF0DE
.L080AF0C6:
	cmp r2, #0
	beq .L080AF0D6
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AF0D6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AF0C6
.L080AF0DE:
	adds r5, r2, #0
.L080AF0E0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AF0F0
.L080AF0EA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AF0EA
.L080AF0F0:
	cmp r0, #0
	beq .L080AF0F8
	bl free
.L080AF0F8:
	ldr r0, [sp, #0xd8]
	add r0, r8
	ldr r7, [sp, #0xd8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AF104:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0x85
	lsls r1, r1, #3
	add r1, sb
	mov r8, r1
	ldr r1, [r1]
	movs r7, #0x80
	lsls r7, r7, #1
	movs r2, #0
	adds r3, r7, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r6, #0xa0
	lsls r6, r6, #3
	add r6, sb
	ldr r0, [r6]
	cmp r4, r0
	beq .L080AF132
	bl __builtin_delete
.L080AF132:
	str r4, [r6]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r5, .L080AF258 @ =0x00000504
	add r5, sb
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF162
	bl __builtin_delete
.L080AF162:
	str r4, [r5]
	ldr r0, [r6]
	strh r7, [r0, #0x10]
	ldr r1, [r5]
	movs r0, #0x8e
	lsls r0, r0, #4
	add r0, sb
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r1, [r5]
	movs r0, #0x40
	strh r0, [r1, #2]
	ldr r4, [r5]
	movs r0, #0x8b
	lsls r0, r0, #4
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r5]
	movs r0, #5
	strh r0, [r1, #4]
	ldr r0, [r5]
	movs r1, #1
	strh r1, [r0, #8]
	ldr r0, [r5]
	strb r1, [r0, #0x18]
	movs r0, #0x14
	bl __builtin_new
	mov r2, r8
	ldr r1, [r2]
	movs r2, #0
	adds r3, r7, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r5, #0xa5
	lsls r5, r5, #3
	add r5, sb
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF1BE
	bl __builtin_delete
.L080AF1BE:
	str r4, [r5]
	ldr r1, .L080AF25C @ =0x0000091A
	adds r0, r4, #0
	bl func_0805E860
	movs r4, #0xa6
	lsls r4, r4, #3
	add r4, sb
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x14
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r0, sp, #0x14
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x14
	ldm r0!, {r3, r5, r6}
	stm r4!, {r3, r5, r6}
	ldm r0!, {r1, r2, r7}
	stm r4!, {r1, r2, r7}
	ldm r0!, {r3, r5}
	stm r4!, {r3, r5}
	mov r0, sb
	bl func_08008910
	adds r5, r0, #0
	movs r4, #0xa7
	lsls r4, r4, #3
	add r4, sb
	ldr r7, [r4]
	ldr r0, .L080AF260 @ =0x000008A8
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080AF224
	ldrh r3, [r4, #4]
.L080AF224:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r0, .L080AF264 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x14
	adds r1, r7, #0
	bl func_08008F0C
	add r1, sp, #0x14
	mov sl, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AF268
	cmp r1, #0
	beq .L080AF250
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AF250:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AF32C
	.align 2, 0
.L080AF258: .4byte 0x00000504
.L080AF25C: .4byte 0x0000091A
.L080AF260: .4byte 0x000008A8
.L080AF264: .4byte 0x06010000
.L080AF268:
	str r1, [sp, #0xd4]
	add r1, sp, #0xa8
	movs r5, #1
	str r5, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0xd4]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xa4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080AF284
	adds r0, r1, #0
.L080AF284:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AF2A2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AF2A6
	mov r0, r8
	bl func_080D3BC0
	b .L080AF2A6
.L080AF2A2:
	movs r0, #0
	mov r8, r0
.L080AF2A6:
	adds r5, r0, #0
	str r5, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080AF2C4
.L080AF2B0:
	cmp r3, #0
	beq .L080AF2C0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AF2C0:
	adds r2, #0x10
	adds r3, #0x10
.L080AF2C4:
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AF2B0
	adds r5, r3, #0
	ldr r1, [sp, #0xa8]
	cmp r1, #1
	bne .L080AF2E6
	cmp r5, #0
	beq .L080AF2E2
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AF2E2:
	adds r5, #0x10
	b .L080AF308
.L080AF2E6:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AF306
.L080AF2EE:
	cmp r2, #0
	beq .L080AF2FE
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AF2FE:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AF2EE
.L080AF306:
	adds r5, r2, #0
.L080AF308:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AF318
.L080AF312:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AF312
.L080AF318:
	cmp r0, #0
	beq .L080AF320
	bl free
.L080AF320:
	ldr r0, [sp, #0xd8]
	add r0, r8
	ldr r7, [sp, #0xd8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AF32C:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0xa8
	lsls r2, r2, #3
	add r2, sb
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080AF346
	ldrh r3, [r2, #4]
.L080AF346:
	adds r6, r4, #0
	add r0, sp, #0x14
	ldr r2, .L080AF374 @ =0x050003A0
	bl func_08008F0C
	add r0, sp, #0x14
	mov sl, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AF378
	cmp r1, #0
	beq .L080AF36C
	adds r0, r1, #0
	add r1, sp, #0x14
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AF36C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AF440
	.align 2, 0
.L080AF374: .4byte 0x050003A0
.L080AF378:
	str r1, [sp, #0xd4]
	movs r0, #1
	add r1, sp, #0xb0
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xd4]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xac
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080AF394
	adds r0, r1, #0
.L080AF394:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AF3B2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080AF3B6
	mov r0, r8
	bl func_080D3BC0
	b .L080AF3B6
.L080AF3B2:
	movs r0, #0
	mov r8, r0
.L080AF3B6:
	adds r5, r0, #0
	str r5, [sp, #0xd8]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xd4]
	cmp r2, r7
	beq .L080AF3DE
.L080AF3C4:
	cmp r3, #0
	beq .L080AF3D4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AF3D4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xd4]
	cmp r2, r0
	bne .L080AF3C4
.L080AF3DE:
	adds r5, r3, #0
	ldr r1, [sp, #0xb0]
	cmp r1, #1
	bne .L080AF3FA
	cmp r5, #0
	beq .L080AF3F6
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AF3F6:
	adds r5, #0x10
	b .L080AF41C
.L080AF3FA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080AF41A
.L080AF402:
	cmp r2, #0
	beq .L080AF412
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080AF412:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080AF402
.L080AF41A:
	adds r5, r2, #0
.L080AF41C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AF42C
.L080AF426:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AF426
.L080AF42C:
	cmp r0, #0
	beq .L080AF434
	bl free
.L080AF434:
	ldr r0, [sp, #0xd8]
	add r0, r8
	ldr r7, [sp, #0xd8]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AF440:
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r5, .L080AF7E8 @ =0x0000052C
	add r5, sb
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF46E
	bl __builtin_delete
.L080AF46E:
	str r4, [r5]
	ldr r0, .L080AF7EC @ =0x000008A8
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r5]
	movs r0, #0xd
	strh r0, [r1, #4]
	ldr r1, [r5]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #8]
	ldr r0, [r5]
	strb r2, [r0, #0x18]
	ldr r1, [r5]
	movs r0, #0x40
	strh r0, [r1, #2]
	add r1, sp, #0x14
	ldr r0, .L080AF7F0 @ =gUnk_0810752C
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	movs r7, #0
	mov sl, r7
	movs r0, #0
	mov r8, r0
	movs r6, #0
	movs r5, #0xdc
	lsls r5, r5, #3
	add r5, sb
	ldr r7, .L080AF7EC @ =0x000008A8
	add r7, sb
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0xd0]
.L080AF4BA:
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	strh r6, [r4]
	strh r6, [r4, #2]
	strh r6, [r4, #4]
	strh r6, [r4, #6]
	strh r6, [r4, #8]
	str r6, [r4, #0xc]
	mov r2, r8
	strb r2, [r4, #0x10]
	strb r2, [r4, #0x11]
	str r6, [r4, #0x14]
	strb r2, [r4, #0x18]
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF4E2
	bl __builtin_delete
.L080AF4E2:
	str r4, [r5]
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r5]
	movs r0, #0xd
	strh r0, [r1, #4]
	ldr r1, [r5]
	movs r0, #1
	strh r0, [r1, #8]
	ldr r0, [r5]
	movs r3, #1
	strb r3, [r0, #0x18]
	ldm r5!, {r1}
	ldr r4, [sp, #0xd0]
	ldm r4!, {r0}
	str r4, [sp, #0xd0]
	strh r0, [r1]
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #4
	ble .L080AF4BA
	ldr r0, [sp, #0xb8]
	ldr r1, .L080AF7F4 @ =gUnk_08107540
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r5, r6, r7}
	stm r0!, {r5, r6, r7}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
	movs r5, #0
	mov sl, r5
	mov r6, sb
	str r6, [sp, #0xcc]
	movs r7, #0xaa
	lsls r7, r7, #3
	add r7, sb
	mov r8, r7
.L080AF538:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080AF7F8 @ =0x0000042C
	add r1, sb
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r4, r0, #0
	mov r0, sl
	lsls r6, r0, #2
	mov r1, r8
	ldr r0, [r1]
	cmp r4, r0
	beq .L080AF560
	bl __builtin_delete
.L080AF560:
	mov r2, r8
	str r4, [r2]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r3, #0
	strh r3, [r4]
	strh r3, [r4, #2]
	strh r3, [r4, #4]
	strh r3, [r4, #6]
	strh r3, [r4, #8]
	movs r5, #0
	str r5, [r4, #0xc]
	movs r7, #0
	strb r7, [r4, #0x10]
	movs r0, #0
	strb r0, [r4, #0x11]
	str r5, [r4, #0x14]
	strb r0, [r4, #0x18]
	mov r1, sb
	adds r5, r6, r1
	ldr r7, .L080AF7FC @ =0x00000564
	adds r5, r5, r7
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF59A
	bl __builtin_delete
.L080AF59A:
	str r4, [r5]
	ldr r2, [sp, #0xcc]
	adds r0, r2, r7
	ldr r2, [r0]
	mov r3, sl
	lsls r1, r3, #3
	ldr r4, [sp, #0xb8]
	adds r0, r4, r1
	ldr r0, [r0]
	strh r0, [r2]
	mov r5, sb
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r2, [r0]
	ldr r0, [sp, #0xbc]
	adds r1, r0, r1
	ldr r0, [r1]
	strh r0, [r2, #2]
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r4, [r0]
	ldr r0, .L080AF800 @ =0x000008B8
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r6
	strh r0, [r4, #6]
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #9
	strh r0, [r1, #4]
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1, #8]
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r0, [r0]
	movs r1, #1
	strb r1, [r0, #0x18]
	ldr r2, [sp, #0xcc]
	adds r2, #4
	str r2, [sp, #0xcc]
	movs r3, #4
	add r8, r3
	movs r4, #1
	add sl, r4
	mov r5, sl
	cmp r5, #4
	ble .L080AF538
	movs r6, #0
	mov sl, r6
	mov r7, sb
	str r7, [sp, #0xc8]
	movs r0, #0xc3
	lsls r0, r0, #3
	add r0, sb
	mov r8, r0
.L080AF614:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0x85
	lsls r1, r1, #3
	add r1, sb
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r4, r0, #0
	mov r1, sl
	lsls r6, r1, #2
	mov r2, r8
	ldr r0, [r2]
	cmp r4, r0
	beq .L080AF63E
	bl __builtin_delete
.L080AF63E:
	mov r3, r8
	str r4, [r3]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	movs r5, #0
	strb r5, [r4, #0x10]
	strb r5, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r5, [r4, #0x18]
	mov r7, sb
	adds r5, r6, r7
	ldr r7, .L080AF804 @ =0x0000062C
	adds r5, r5, r7
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF674
	bl __builtin_delete
.L080AF674:
	str r4, [r5]
	ldr r1, [sp, #0xc8]
	movs r2, #0xc3
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r0, [r0]
	movs r3, #0x80
	lsls r3, r3, #1
	strh r3, [r0, #0x10]
	mov r4, sb
	adds r0, r6, r4
	adds r0, r0, r7
	ldr r1, [r0]
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x14
	ldr r0, [r0]
	strh r0, [r1]
	adds r0, r6, r4
	adds r0, r0, r7
	ldr r1, [r0]
	ldr r0, .L080AF808 @ =0x000008E1
	add r0, sb
	add r0, sl
	ldrb r0, [r0]
	strh r0, [r1, #2]
	adds r0, r6, r4
	adds r0, r0, r7
	ldr r4, [r0]
	movs r0, #0x8c
	lsls r0, r0, #4
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r6
	strh r0, [r4, #6]
	mov r5, sb
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #0xa
	strh r0, [r1, #4]
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1, #8]
	adds r0, r6, r5
	adds r0, r0, r7
	ldr r0, [r0]
	movs r6, #1
	strb r6, [r0, #0x18]
	ldr r7, [sp, #0xc8]
	adds r7, #4
	str r7, [sp, #0xc8]
	movs r0, #4
	add r8, r0
	movs r1, #1
	add sl, r1
	mov r2, sl
	cmp r2, #4
	ble .L080AF614
	movs r3, #0
	mov sl, r3
	mov r4, sb
	str r4, [sp, #0xc4]
	ldr r5, .L080AF80C @ =0x000006F4
	add r5, sb
	mov r8, r5
.L080AF700:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0x86
	lsls r1, r1, #3
	add r1, sb
	ldr r1, [r1]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r4, r0, #0
	mov r7, sl
	lsls r6, r7, #2
	mov r1, r8
	ldr r0, [r1]
	cmp r4, r0
	beq .L080AF72A
	bl __builtin_delete
.L080AF72A:
	mov r2, r8
	str r4, [r2]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r3, #0
	strh r3, [r4]
	strh r3, [r4, #2]
	strh r3, [r4, #4]
	strh r3, [r4, #6]
	strh r3, [r4, #8]
	movs r5, #0
	str r5, [r4, #0xc]
	movs r7, #0
	strb r7, [r4, #0x10]
	movs r0, #0
	strb r0, [r4, #0x11]
	str r5, [r4, #0x14]
	strb r0, [r4, #0x18]
	mov r1, sb
	adds r5, r6, r1
	movs r7, #0xe1
	lsls r7, r7, #3
	adds r5, r5, r7
	ldr r0, [r5]
	cmp r4, r0
	beq .L080AF766
	bl __builtin_delete
.L080AF766:
	str r4, [r5]
	ldr r2, [sp, #0xc4]
	adds r0, r2, r7
	ldr r1, [r0]
	mov r0, sp
	adds r0, r0, r6
	adds r0, #0x14
	ldr r0, [r0]
	subs r0, #0x11
	strh r0, [r1]
	mov r3, sb
	adds r0, r6, r3
	adds r0, r0, r7
	ldr r1, [r0]
	ldr r0, .L080AF808 @ =0x000008E1
	add r0, sb
	add r0, sl
	ldrb r0, [r0]
	subs r0, #0x18
	strh r0, [r1, #2]
	adds r0, r6, r3
	adds r0, r0, r7
	ldr r4, [r0]
	ldr r0, .L080AF810 @ =0x000008C8
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r0, r0, r6
	strh r0, [r4, #6]
	mov r4, sb
	adds r0, r6, r4
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #0xb
	strh r0, [r1, #4]
	adds r0, r6, r4
	adds r0, r0, r7
	ldr r1, [r0]
	movs r0, #1
	strh r0, [r1, #8]
	adds r0, r6, r4
	adds r0, r0, r7
	ldr r0, [r0]
	movs r5, #1
	strb r5, [r0, #0x18]
	ldr r6, [sp, #0xc4]
	adds r6, #4
	str r6, [sp, #0xc4]
	movs r7, #4
	add r8, r7
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #4
	ble .L080AF700
	add sp, #0xdc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080AF7E8: .4byte 0x0000052C
.L080AF7EC: .4byte 0x000008A8
.L080AF7F0: .4byte gUnk_0810752C
.L080AF7F4: .4byte gUnk_08107540
.L080AF7F8: .4byte 0x0000042C
.L080AF7FC: .4byte 0x00000564
.L080AF800: .4byte 0x000008B8
.L080AF804: .4byte 0x0000062C
.L080AF808: .4byte 0x000008E1
.L080AF80C: .4byte 0x000006F4
.L080AF810: .4byte 0x000008C8

	thumb_func_start func_080AF814
func_080AF814: @ 0x080AF814
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	adds r7, r0, #0
	ldr r1, .L080AFA28 @ =0x0000092A
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080AF8AA
	movs r2, #0x89
	lsls r2, r2, #3
	adds r4, r7, r2
	movs r3, #2
	str r3, [sp, #0x60]
.L080AF836:
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080AF856
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [r4]
	str r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080AF856:
	adds r4, #8
	ldr r5, [sp, #0x60]
	subs r5, #1
	str r5, [sp, #0x60]
	cmp r5, #0
	bge .L080AF836
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	movs r6, #0x8d
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080AF87A
	ldrh r2, [r0, #4]
.L080AF87A:
	ldr r3, .L080AFA2C @ =0x00000464
	adds r0, r7, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	movs r5, #0x92
	lsls r5, r5, #3
	adds r0, r7, r5
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080AF89E
	ldrh r2, [r0, #4]
.L080AF89E:
	ldr r6, .L080AFA30 @ =0x0000048C
	adds r0, r7, r6
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080AF8AA:
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	movs r0, #0x88
	lsls r0, r0, #3
	adds r1, r7, r0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080AF8D4
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [r1]
	str r1, [r0]
	ldr r4, .L080AFA34 @ =0x00000444
	adds r1, r7, r4
	ldrh r1, [r1]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080AF8D4:
	ldr r5, .L080AFA38 @ =0x0000083C
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, #1
	beq .L080AF8E8
	ldr r6, .L080AFA3C @ =0x00000838
	adds r0, r7, r6
	ldr r0, [r0]
	cmp r0, #2
	bne .L080AF90C
.L080AF8E8:
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0]
	movs r2, #0
	cmp r1, #0
	beq .L080AF900
	ldrh r2, [r0, #4]
.L080AF900:
	ldr r3, .L080AFA40 @ =0x000004B4
	adds r0, r7, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080AF90C:
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	movs r5, #0x9c
	lsls r5, r5, #3
	adds r3, r7, r5
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080AF926
	ldrh r2, [r3, #4]
.L080AF926:
	ldr r6, .L080AFA44 @ =0x000004DC
	adds r0, r7, r6
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	ldr r1, .L080AFA48 @ =0x00000504
	adds r0, r7, r1
	ldr r1, [r0]
	movs r2, #0x8e
	lsls r2, r2, #4
	adds r0, r7, r2
	ldrb r0, [r0]
	strh r0, [r1]
	ldr r3, .L080AFA3C @ =0x00000838
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L080AF956
	ldr r4, .L080AFA38 @ =0x0000083C
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080AF97E
.L080AF956:
	ldr r6, .L080AFA4C @ =0x00000929
	adds r5, r7, r6
	ldrb r0, [r5]
	cmp r0, #0
	beq .L080AF97E
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r4, [r0]
	adds r0, r7, #0
	bl func_080B3990
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	movs r0, #0
	strb r0, [r5]
.L080AF97E:
	movs r2, #0xa0
	lsls r2, r2, #3
	adds r5, r7, r2
	ldr r0, [r5]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080AF992
	b .L080AFC3E
.L080AF992:
	movs r3, #0xa1
	lsls r3, r3, #3
	adds r4, r7, r3
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r0, sp
	ldm r0!, {r1, r5, r6}
	stm r4!, {r1, r5, r6}
	ldm r0!, {r2, r3, r5}
	stm r4!, {r2, r3, r5}
	ldm r0!, {r1, r6}
	stm r4!, {r1, r6}
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	movs r2, #0xa2
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r3, [r4]
	mov r8, r3
	movs r6, #0x8b
	lsls r6, r6, #4
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080AF9F2
	ldrh r3, [r4, #4]
.L080AF9F2:
	str r5, [sp, #0x90]
	lsls r2, r2, #5
	ldr r0, .L080AFA50 @ =0x06010000
	adds r2, r2, r0
	mov r0, sp
	mov r1, r8
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080AFA54
	cmp r1, #0
	beq .L080AFA1C
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AFA1C:
	ldr r5, [sp, #0x90]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080AFB22
	.align 2, 0
.L080AFA28: .4byte 0x0000092A
.L080AFA2C: .4byte 0x00000464
.L080AFA30: .4byte 0x0000048C
.L080AFA34: .4byte 0x00000444
.L080AFA38: .4byte 0x0000083C
.L080AFA3C: .4byte 0x00000838
.L080AFA40: .4byte 0x000004B4
.L080AFA44: .4byte 0x000004DC
.L080AFA48: .4byte 0x00000504
.L080AFA4C: .4byte 0x00000929
.L080AFA50: .4byte 0x06010000
.L080AFA54:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r6, [sp, #0x90]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r1, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L080AFA6E
	adds r0, r1, #0
.L080AFA6E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AFA8C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080AFA90
	mov r0, sb
	bl func_080D3BC0
	b .L080AFA90
.L080AFA8C:
	movs r0, #0
	mov sb, r0
.L080AFA90:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r0, [sp, #0x90]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080AFAB6
.L080AFA9E:
	cmp r3, #0
	beq .L080AFAAE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080AFAAE:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080AFA9E
.L080AFAB6:
	adds r5, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L080AFAD2
	cmp r5, #0
	beq .L080AFACE
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AFACE:
	adds r5, #0x10
	b .L080AFAFA
.L080AFAD2:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080AFAF8
.L080AFADA:
	cmp r2, #0
	beq .L080AFAEA
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080AFAEA:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L080AFADA
.L080AFAF8:
	adds r5, r2, #0
.L080AFAFA:
	ldr r6, [sp, #0x90]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AFB0C
.L080AFB06:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AFB06
.L080AFB0C:
	cmp r0, #0
	beq .L080AFB14
	bl free
.L080AFB14:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x90]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080AFB22:
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	movs r3, #0xa3
	lsls r3, r3, #3
	adds r2, r7, r3
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080AFB3C
	ldrh r3, [r2, #4]
.L080AFB3C:
	str r4, [sp, #0x90]
	mov r0, sp
	ldr r2, .L080AFB6C @ =0x050002A0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080AFB70
	cmp r1, #0
	beq .L080AFB60
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080AFB60:
	ldr r1, [sp, #0x90]
	ldr r0, [r1, #4]
	adds r0, #0x10
	str r0, [r1, #4]
	b .L080AFC3E
	.align 2, 0
.L080AFB6C: .4byte 0x050002A0
.L080AFB70:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r2, [sp, #0x90]
	ldr r0, [r2]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r1, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L080AFB8A
	adds r0, r1, #0
.L080AFB8A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AFBA8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080AFBAC
	mov r0, sb
	bl func_080D3BC0
	b .L080AFBAC
.L080AFBA8:
	movs r0, #0
	mov sb, r0
.L080AFBAC:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r3, [sp, #0x90]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080AFBD2
.L080AFBBA:
	cmp r3, #0
	beq .L080AFBCA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080AFBCA:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080AFBBA
.L080AFBD2:
	adds r5, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080AFBEE
	cmp r5, #0
	beq .L080AFBEA
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AFBEA:
	adds r5, #0x10
	b .L080AFC16
.L080AFBEE:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080AFC14
.L080AFBF6:
	cmp r2, #0
	beq .L080AFC06
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080AFC06:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L080AFBF6
.L080AFC14:
	adds r5, r2, #0
.L080AFC16:
	ldr r6, [sp, #0x90]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AFC28
.L080AFC22:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AFC22
.L080AFC28:
	cmp r0, #0
	beq .L080AFC30
	bl free
.L080AFC30:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x90]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080AFC3E:
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	movs r5, #0xa1
	lsls r5, r5, #3
	adds r3, r7, r5
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080AFC58
	ldrh r2, [r3, #4]
.L080AFC58:
	ldr r6, .L080AFD68 @ =0x00000504
	adds r0, r7, r6
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
	movs r0, #0
	str r0, [sp, #0x60]
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x80]
	movs r2, #0
	str r2, [sp, #0x84]
	movs r3, #0
	str r3, [sp, #0x88]
	ldr r4, .L080AFD6C @ =0x0000071C
	adds r4, r7, r4
	str r4, [sp, #0x8c]
.L080AFC7E:
	ldr r5, [sp, #0x80]
	ldr r1, [r5]
	ldr r6, .L080AFD70 @ =0x000008E1
	adds r0, r7, r6
	ldr r2, [sp, #0x60]
	adds r0, r0, r2
	ldrb r0, [r0]
	subs r0, #0x18
	strh r0, [r1, #2]
	ldr r3, .L080AFD74 @ =0x0000085C
	adds r0, r7, r3
	ldr r4, [sp, #0x84]
	adds r0, r0, r4
	ldr r0, [r0]
	cmp r0, #0
	bne .L080AFCA0
	b .L080AFF9C
.L080AFCA0:
	ldr r5, .L080AFD78 @ =0x0000091F
	adds r0, r7, r5
	adds r6, r0, r2
	ldrb r0, [r6]
	adds r5, r4, r7
	cmp r0, #0
	beq .L080AFCCC
	ldr r1, .L080AFD7C @ =0x000006F4
	adds r0, r5, r1
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x60]
	bl func_080B39F4
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	movs r2, #0
	strb r2, [r6]
.L080AFCCC:
	ldr r3, .L080AFD7C @ =0x000006F4
	adds r4, r5, r3
	ldr r0, [r4]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080AFCDE
	b .L080AFF70
.L080AFCDE:
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	ldr r1, [sp, #0x8c]
	mov r0, sp
	ldm r0!, {r4, r5, r6}
	stm r1!, {r4, r5, r6}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r5, r6}
	stm r1!, {r5, r6}
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r0, [sp, #0x8c]
	ldr r5, [r0, #8]
	ldr r1, .L080AFD80 @ =0x000008C8
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r3, [sp, #0x84]
	adds r2, r3, r0
	ldr r6, [sp, #0x8c]
	ldr r0, [r6, #8]
	movs r3, #0
	cmp r0, #0
	beq .L080AFD36
	ldrh r3, [r6, #0xc]
.L080AFD36:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r0, .L080AFD84 @ =0x06010000
	adds r2, r2, r0
	mov r0, sp
	adds r1, r5, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AFD88
	cmp r1, #0
	beq .L080AFD60
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AFD60:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AFE52
	.align 2, 0
.L080AFD68: .4byte 0x00000504
.L080AFD6C: .4byte 0x0000071C
.L080AFD70: .4byte 0x000008E1
.L080AFD74: .4byte 0x0000085C
.L080AFD78: .4byte 0x0000091F
.L080AFD7C: .4byte 0x000006F4
.L080AFD80: .4byte 0x000008C8
.L080AFD84: .4byte 0x06010000
.L080AFD88:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x34]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x30]
	add r1, sp, #0x34
	add r0, sp, #0x30
	cmp r4, #1
	bhs .L080AFDA0
	adds r0, r1, #0
.L080AFDA0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AFDBE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080AFDC2
	mov r0, sb
	bl func_080D3BC0
	b .L080AFDC2
.L080AFDBE:
	movs r0, #0
	mov sb, r0
.L080AFDC2:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080AFDEA
.L080AFDCE:
	mov r5, ip
	cmp r5, #0
	beq .L080AFDE0
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080AFDE0:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080AFDCE
.L080AFDEA:
	mov r5, ip
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L080AFE06
	cmp r5, #0
	beq .L080AFE02
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AFE02:
	adds r5, #0x10
	b .L080AFE2E
.L080AFE06:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080AFE2C
.L080AFE0E:
	cmp r2, #0
	beq .L080AFE1E
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080AFE1E:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080AFE0E
.L080AFE2C:
	adds r5, r2, #0
.L080AFE2E:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AFE3E
.L080AFE38:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AFE38
.L080AFE3E:
	cmp r0, #0
	beq .L080AFE46
	bl free
.L080AFE46:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AFE52:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r2, [sp, #0x88]
	adds r0, r2, r7
	ldr r1, .L080AFEA0 @ =0x0000072C
	adds r0, r0, r1
	ldr r4, [r0]
	adds r2, r2, r7
	adds r2, r2, r1
	ldr r0, [r2]
	movs r3, #0
	cmp r0, #0
	beq .L080AFE72
	ldrh r3, [r2, #4]
.L080AFE72:
	adds r6, r5, #0
	mov r0, sp
	adds r1, r4, #0
	ldr r2, .L080AFEA4 @ =0x05000360
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080AFEA8
	cmp r1, #0
	beq .L080AFE98
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080AFE98:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080AFF70
	.align 2, 0
.L080AFEA0: .4byte 0x0000072C
.L080AFEA4: .4byte 0x05000360
.L080AFEA8:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x38]
	add r1, sp, #0x3c
	add r0, sp, #0x38
	cmp r4, #1
	bhs .L080AFEC0
	adds r0, r1, #0
.L080AFEC0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080AFEDE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080AFEE2
	mov r0, sb
	bl func_080D3BC0
	b .L080AFEE2
.L080AFEDE:
	movs r0, #0
	mov sb, r0
.L080AFEE2:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080AFF08
.L080AFEEE:
	mov r0, ip
	cmp r0, #0
	beq .L080AFEFE
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080AFEFE:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080AFEEE
.L080AFF08:
	mov r5, ip
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne .L080AFF24
	cmp r5, #0
	beq .L080AFF20
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080AFF20:
	adds r5, #0x10
	b .L080AFF4C
.L080AFF24:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080AFF4A
.L080AFF2C:
	cmp r2, #0
	beq .L080AFF3C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080AFF3C:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080AFF2C
.L080AFF4A:
	adds r5, r2, #0
.L080AFF4C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080AFF5C
.L080AFF56:
	adds r1, #0x10
	cmp r1, r2
	bne .L080AFF56
.L080AFF5C:
	cmp r0, #0
	beq .L080AFF64
	bl free
.L080AFF64:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080AFF70:
	adds r0, r7, #0
	bl func_08008920
	adds r5, r0, #0
	ldr r2, [sp, #0x88]
	adds r0, r2, r7
	ldr r1, .L080B00C8 @ =0x0000071C
	adds r0, r0, r1
	ldr r4, [r0]
	adds r3, r2, r7
	adds r3, r3, r1
	ldr r0, [r3]
	movs r2, #0
	cmp r0, #0
	beq .L080AFF90
	ldrh r2, [r3, #4]
.L080AFF90:
	ldr r6, [sp, #0x80]
	ldr r3, [r6]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_0805E99C
.L080AFF9C:
	ldr r0, [sp, #0x80]
	adds r0, #4
	str r0, [sp, #0x80]
	ldr r1, [sp, #0x84]
	adds r1, #4
	str r1, [sp, #0x84]
	ldr r2, [sp, #0x88]
	adds r2, #0x20
	str r2, [sp, #0x88]
	ldr r3, [sp, #0x8c]
	adds r3, #0x20
	str r3, [sp, #0x8c]
	ldr r4, [sp, #0x60]
	adds r4, #1
	str r4, [sp, #0x60]
	cmp r4, #4
	bgt .L080AFFC0
	b .L080AFC7E
.L080AFFC0:
	movs r5, #0
	str r5, [sp, #0x60]
	ldr r6, .L080B00CC @ =0x0000062C
	adds r6, r7, r6
	str r6, [sp, #0x70]
	movs r0, #0
	str r0, [sp, #0x74]
	movs r1, #0
	str r1, [sp, #0x78]
	movs r2, #0xc8
	lsls r2, r2, #3
	adds r2, r7, r2
	str r2, [sp, #0x7c]
.L080AFFDA:
	ldr r3, [sp, #0x70]
	ldr r1, [r3]
	ldr r4, .L080B00D0 @ =0x000008E1
	adds r0, r7, r4
	ldr r5, [sp, #0x60]
	adds r0, r0, r5
	ldrb r0, [r0]
	strh r0, [r1, #2]
	ldr r6, .L080B00D4 @ =0x00000848
	adds r0, r7, r6
	ldr r1, [sp, #0x74]
	adds r0, r0, r1
	ldr r0, [r0]
	subs r0, #5
	cmp r0, #1
	bhi .L080AFFFC
	b .L080B02F6
.L080AFFFC:
	ldr r2, .L080B00D8 @ =0x0000091A
	adds r0, r7, r2
	adds r6, r0, r5
	ldrb r0, [r6]
	adds r5, r1, r7
	cmp r0, #0
	beq .L080B002A
	movs r3, #0xc3
	lsls r3, r3, #3
	adds r0, r5, r3
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x60]
	bl func_080B39D8
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	movs r4, #0
	strb r4, [r6]
.L080B002A:
	movs r6, #0xc3
	lsls r6, r6, #3
	adds r4, r5, r6
	ldr r0, [r4]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080B003E
	b .L080B02C8
.L080B003E:
	ldr r0, [r4]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	ldr r1, [sp, #0x7c]
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r6, [sp, #0x7c]
	ldr r5, [r6, #8]
	movs r1, #0x8c
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r3, [sp, #0x74]
	adds r2, r3, r0
	ldr r0, [r6, #8]
	movs r3, #0
	cmp r0, #0
	beq .L080B0096
	ldrh r3, [r6, #0xc]
.L080B0096:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r4, .L080B00DC @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r5, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B00E0
	cmp r1, #0
	beq .L080B00C0
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B00C0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B01AA
	.align 2, 0
.L080B00C8: .4byte 0x0000071C
.L080B00CC: .4byte 0x0000062C
.L080B00D0: .4byte 0x000008E1
.L080B00D4: .4byte 0x00000848
.L080B00D8: .4byte 0x0000091A
.L080B00DC: .4byte 0x06010000
.L080B00E0:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x44]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x40]
	add r1, sp, #0x44
	add r0, sp, #0x40
	cmp r4, #1
	bhs .L080B00F8
	adds r0, r1, #0
.L080B00F8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B0116
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B011A
	mov r0, sb
	bl func_080D3BC0
	b .L080B011A
.L080B0116:
	movs r0, #0
	mov sb, r0
.L080B011A:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080B0142
.L080B0126:
	mov r4, ip
	cmp r4, #0
	beq .L080B0138
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B0138:
	adds r2, #0x10
	movs r5, #0x10
	add ip, r5
	cmp r2, r8
	bne .L080B0126
.L080B0142:
	mov r5, ip
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne .L080B015E
	cmp r5, #0
	beq .L080B015A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B015A:
	adds r5, #0x10
	b .L080B0186
.L080B015E:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B0184
.L080B0166:
	cmp r2, #0
	beq .L080B0176
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B0176:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B0166
.L080B0184:
	adds r5, r2, #0
.L080B0186:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B0196
.L080B0190:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B0190
.L080B0196:
	cmp r0, #0
	beq .L080B019E
	bl free
.L080B019E:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B01AA:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r2, [sp, #0x78]
	adds r0, r2, r7
	movs r1, #0xca
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r4, [r0]
	adds r2, r2, r7
	adds r2, r2, r1
	ldr r0, [r2]
	movs r3, #0
	cmp r0, #0
	beq .L080B01CC
	ldrh r3, [r2, #4]
.L080B01CC:
	adds r6, r5, #0
	mov r0, sp
	adds r1, r4, #0
	ldr r2, .L080B01FC @ =0x05000340
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B0200
	cmp r1, #0
	beq .L080B01F2
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B01F2:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B02C8
	.align 2, 0
.L080B01FC: .4byte 0x05000340
.L080B0200:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x4c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x48]
	add r1, sp, #0x4c
	add r0, sp, #0x48
	cmp r4, #1
	bhs .L080B0218
	adds r0, r1, #0
.L080B0218:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B0236
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B023A
	mov r0, sb
	bl func_080D3BC0
	b .L080B023A
.L080B0236:
	movs r0, #0
	mov sb, r0
.L080B023A:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080B0260
.L080B0246:
	mov r0, ip
	cmp r0, #0
	beq .L080B0256
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B0256:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080B0246
.L080B0260:
	mov r5, ip
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne .L080B027C
	cmp r5, #0
	beq .L080B0278
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B0278:
	adds r5, #0x10
	b .L080B02A4
.L080B027C:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B02A2
.L080B0284:
	cmp r2, #0
	beq .L080B0294
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B0294:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B0284
.L080B02A2:
	adds r5, r2, #0
.L080B02A4:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B02B4
.L080B02AE:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B02AE
.L080B02B4:
	cmp r0, #0
	beq .L080B02BC
	bl free
.L080B02BC:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B02C8:
	adds r0, r7, #0
	bl func_08008920
	adds r5, r0, #0
	ldr r2, [sp, #0x78]
	adds r0, r2, r7
	movs r1, #0xc8
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r4, [r0]
	adds r3, r2, r7
	adds r3, r3, r1
	ldr r0, [r3]
	movs r2, #0
	cmp r0, #0
	beq .L080B02EA
	ldrh r2, [r3, #4]
.L080B02EA:
	ldr r6, [sp, #0x70]
	ldr r3, [r6]
	adds r0, r5, #0
	adds r1, r4, #0
	bl func_0805E99C
.L080B02F6:
	ldr r0, [sp, #0x70]
	adds r0, #4
	str r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	adds r1, #4
	str r1, [sp, #0x74]
	ldr r2, [sp, #0x78]
	adds r2, #0x20
	str r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	adds r3, #0x20
	str r3, [sp, #0x7c]
	ldr r4, [sp, #0x60]
	adds r4, #1
	str r4, [sp, #0x60]
	cmp r4, #4
	bgt .L080B031A
	b .L080AFFDA
.L080B031A:
	ldr r6, .L080B0480 @ =0x0000052C
	adds r5, r7, r6
	ldr r1, [r5]
	movs r2, #0x8e
	lsls r2, r2, #4
	adds r0, r7, r2
	ldrb r0, [r0]
	strh r0, [r1]
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	adds r6, #4
	adds r3, r7, r6
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B0342
	ldrh r2, [r3, #4]
.L080B0342:
	ldr r3, [r5]
	adds r0, r4, #0
	bl func_0805E99C
	movs r0, #0
	str r0, [sp, #0x60]
	movs r1, #0xa6
	lsls r1, r1, #3
	adds r6, r7, r1
	movs r2, #0xdc
	lsls r2, r2, #3
	adds r5, r7, r2
.L080B035A:
	ldr r1, [r5]
	ldr r3, .L080B0484 @ =0x000008E1
	adds r0, r7, r3
	ldr r4, [sp, #0x60]
	adds r0, r0, r4
	ldrb r0, [r0]
	strh r0, [r1, #2]
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r0, [r6]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B037C
	ldrh r2, [r6, #4]
.L080B037C:
	ldm r5!, {r3}
	adds r0, r4, #0
	bl func_0805E99C
	ldr r0, [sp, #0x60]
	adds r0, #1
	str r0, [sp, #0x60]
	cmp r0, #4
	ble .L080B035A
	movs r1, #0
	str r1, [sp, #0x60]
.L080B0392:
	ldr r2, [sp, #0x60]
	lsls r0, r2, #2
	movs r3, #0x87
	lsls r3, r3, #4
	adds r1, r7, r3
	adds r1, r1, r0
	ldr r1, [r1]
	adds r2, #1
	str r2, [sp, #0x64]
	str r0, [sp, #0x68]
	cmp r1, #2
	bne .L080B03AC
	b .L080B06B0
.L080B03AC:
	adds r0, r0, r7
	movs r5, #0xaa
	lsls r5, r5, #3
	adds r0, r0, r5
	ldr r4, [r0]
	adds r0, r7, #0
	ldr r1, [sp, #0x60]
	bl func_080B39BC
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_0805E860
	ldr r4, [sp, #0x68]
	adds r0, r4, r7
	adds r0, r0, r5
	ldr r0, [r0]
	bl func_0805E8F0
	lsls r0, r0, #0x1e
	ldr r5, [sp, #0x60]
	lsls r5, r5, #5
	str r5, [sp, #0x6c]
	adds r1, r4, r7
	cmp r0, #0
	blt .L080B03E6
	b .L080B067C
.L080B03E6:
	adds r5, r5, r7
	movs r6, #0xaf
	lsls r6, r6, #3
	adds r4, r5, r6
	movs r2, #0xaa
	lsls r2, r2, #3
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r0, sp
	ldm r0!, {r1, r3, r6}
	stm r4!, {r1, r3, r6}
	ldm r0!, {r2, r3, r6}
	stm r4!, {r2, r3, r6}
	ldm r0!, {r1, r2}
	stm r4!, {r1, r2}
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	movs r3, #0xb0
	lsls r3, r3, #3
	adds r5, r5, r3
	ldr r6, [r5]
	mov r8, r6
	ldr r1, .L080B0488 @ =0x000008B8
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r3, [sp, #0x68]
	adds r2, r3, r0
	ldr r0, [r5]
	movs r3, #0
	cmp r0, #0
	beq .L080B044E
	ldrh r3, [r5, #4]
.L080B044E:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r4, .L080B048C @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	mov r1, r8
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B0490
	cmp r1, #0
	beq .L080B0478
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B0478:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B0560
	.align 2, 0
.L080B0480: .4byte 0x0000052C
.L080B0484: .4byte 0x000008E1
.L080B0488: .4byte 0x000008B8
.L080B048C: .4byte 0x06010000
.L080B0490:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x54]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x50]
	add r1, sp, #0x54
	add r0, sp, #0x50
	cmp r4, #1
	bhs .L080B04A8
	adds r0, r1, #0
.L080B04A8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B04C6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B04CA
	mov r0, sb
	bl func_080D3BC0
	b .L080B04CA
.L080B04C6:
	movs r0, #0
	mov sb, r0
.L080B04CA:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r2, [r6]
	mov ip, r5
	ldr r4, [sp, #0x60]
	adds r4, #1
	str r4, [sp, #0x64]
	cmp r2, r8
	beq .L080B04F8
.L080B04DC:
	mov r5, ip
	cmp r5, #0
	beq .L080B04EE
	mov r0, ip
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B04EE:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080B04DC
.L080B04F8:
	mov r5, ip
	ldr r0, [sp, #0x54]
	cmp r0, #1
	bne .L080B0514
	cmp r5, #0
	beq .L080B0510
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B0510:
	adds r5, #0x10
	b .L080B053C
.L080B0514:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B053A
.L080B051C:
	cmp r2, #0
	beq .L080B052C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B052C:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B051C
.L080B053A:
	adds r5, r2, #0
.L080B053C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B054C
.L080B0546:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B0546
.L080B054C:
	cmp r0, #0
	beq .L080B0554
	bl free
.L080B0554:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B0560:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r2, [sp, #0x6c]
	adds r0, r2, r7
	movs r1, #0xb1
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r4, [r0]
	adds r2, r2, r7
	adds r2, r2, r1
	ldr r0, [r2]
	movs r3, #0
	cmp r0, #0
	beq .L080B0582
	ldrh r3, [r2, #4]
.L080B0582:
	adds r6, r5, #0
	mov r0, sp
	adds r1, r4, #0
	ldr r2, .L080B05B0 @ =0x05000320
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B05B4
	cmp r1, #0
	beq .L080B05A8
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B05A8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B067C
	.align 2, 0
.L080B05B0: .4byte 0x05000320
.L080B05B4:
	mov r8, r1
	movs r0, #1
	str r0, [sp, #0x5c]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x58]
	add r1, sp, #0x5c
	add r0, sp, #0x58
	cmp r4, #1
	bhs .L080B05CC
	adds r0, r1, #0
.L080B05CC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B05EA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B05EE
	mov r0, sb
	bl func_080D3BC0
	b .L080B05EE
.L080B05EA:
	movs r0, #0
	mov sb, r0
.L080B05EE:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r2, [r6]
	mov ip, r5
	cmp r2, r8
	beq .L080B0614
.L080B05FA:
	mov r0, ip
	cmp r0, #0
	beq .L080B060A
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B060A:
	adds r2, #0x10
	movs r0, #0x10
	add ip, r0
	cmp r2, r8
	bne .L080B05FA
.L080B0614:
	mov r5, ip
	ldr r0, [sp, #0x5c]
	cmp r0, #1
	bne .L080B0630
	cmp r5, #0
	beq .L080B062C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B062C:
	adds r5, #0x10
	b .L080B0658
.L080B0630:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L080B0656
.L080B0638:
	cmp r2, #0
	beq .L080B0648
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B0648:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	adds r2, #0x10
	mov r0, r8
	cmp r0, #0
	bne .L080B0638
.L080B0656:
	adds r5, r2, #0
.L080B0658:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B0668
.L080B0662:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B0662
.L080B0668:
	cmp r0, #0
	beq .L080B0670
	bl free
.L080B0670:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B067C:
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	ldr r2, [sp, #0x6c]
	adds r0, r2, r7
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r4, [r0]
	adds r5, r2, r7
	adds r5, r5, r1
	ldr r0, [r5]
	movs r2, #0
	cmp r0, #0
	beq .L080B069E
	ldrh r2, [r5, #4]
.L080B069E:
	ldr r3, [sp, #0x68]
	adds r0, r3, r7
	ldr r5, .L080B06FC @ =0x00000564
	adds r0, r0, r5
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_0805E99C
.L080B06B0:
	ldr r6, [sp, #0x64]
	str r6, [sp, #0x60]
	cmp r6, #4
	bgt .L080B06BA
	b .L080B0392
.L080B06BA:
	ldr r1, .L080B0700 @ =0x0000092B
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B06EA
	adds r0, r7, #0
	bl func_08008920
	adds r4, r0, #0
	ldr r2, .L080B0704 @ =0x000007EC
	adds r3, r7, r2
	ldr r0, [r3]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080B06DC
	ldrh r2, [r3, #4]
.L080B06DC:
	movs r3, #0xfd
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r3, [r0]
	adds r0, r4, #0
	bl func_0805E99C
.L080B06EA:
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B06FC: .4byte 0x00000564
.L080B0700: .4byte 0x0000092B
.L080B0704: .4byte 0x000007EC

	thumb_func_start func_080B0708
func_080B0708: @ 0x080B0708
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov sb, r0
	cmp r1, #0x3c
	beq .L080B071C
	b .L080B0912
.L080B071C:
	ldr r5, .L080B07A4 @ =0x0000090B
	add r5, sb
	ldrb r0, [r5]
	subs r0, #1
	movs r1, #0
	mov sl, r1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bne .L080B073E
	ldr r0, .L080B07A8 @ =0x0000080C
	add r0, sb
	movs r1, #0xc0
	lsls r1, r1, #1
	bl func_08008C28
.L080B073E:
	ldrb r0, [r5]
	add r1, sp, #0xc
	movs r2, #0
	bl func_0804EC84
	ldrb r0, [r5]
	cmp r0, #9
	bhi .L080B0764
	add r0, sp, #0x10
	ldr r1, .L080B07AC @ =gUnk_08107568
	movs r2, #2
	bl memcpy
	add r1, sp, #0xc
	adds r0, r1, #0
	ldrb r0, [r0]
	strb r0, [r1, #1]
	movs r0, #0x30
	strb r0, [r1]
.L080B0764:
	add r0, sp, #0x24
	movs r6, #4
	movs r7, #2
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [sp, #0x24]
	mov r4, sb
	adds r4, #0xc
	adds r1, r4, #0
	movs r2, #0
	bl func_0804E7A0
	ldrb r0, [r5]
	mov r8, r4
	cmp r0, #9
	bls .L080B07B0
	movs r1, #1
	add r0, sp, #0x28
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [sp, #0x28]
	add r2, sp, #0xc
	str r2, [sp]
	mov r3, sl
	str r3, [sp, #4]
	str r1, [sp, #8]
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	b .L080B07CE
	.align 2, 0
.L080B07A4: .4byte 0x0000090B
.L080B07A8: .4byte 0x0000080C
.L080B07AC: .4byte gUnk_08107568
.L080B07B0:
	movs r1, #3
	add r0, sp, #0x2c
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [sp, #0x2c]
	add r4, sp, #0xc
	str r4, [sp]
	mov r6, sl
	str r6, [sp, #4]
	str r1, [sp, #8]
	mov r1, r8
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L080B07CE:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	ldr r0, .L080B081C @ =0x00000888
	add r0, sb
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r5, r4, #0
	lsls r2, r2, #5
	ldr r7, .L080B0820 @ =0x06010000
	adds r2, r2, r7
	add r0, sp, #0x14
	mov r1, r8
	bl func_08008F0C
	add r0, sp, #0x14
	mov r8, r0
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080B0824
	cmp r1, #0
	beq .L080B0812
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B0812:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080B08EA
	.align 2, 0
.L080B081C: .4byte 0x00000888
.L080B0820: .4byte 0x06010000
.L080B0824:
	str r1, [sp, #0x38]
	movs r0, #1
	str r0, [sp, #0x34]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x30]
	add r1, sp, #0x34
	add r0, sp, #0x30
	cmp r4, #1
	bhs .L080B083E
	adds r0, r1, #0
.L080B083E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B085C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L080B0860
	mov r0, sl
	bl func_080D3BC0
	b .L080B0860
.L080B085C:
	movs r0, #0
	mov sl, r0
.L080B0860:
	adds r4, r0, #0
	str r4, [sp, #0x3c]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r7, [sp, #0x38]
	cmp r2, r7
	beq .L080B0888
.L080B086E:
	cmp r3, #0
	beq .L080B087E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B087E:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x38]
	cmp r2, r0
	bne .L080B086E
.L080B0888:
	adds r4, r3, #0
	ldr r0, [sp, #0x34]
	cmp r0, #1
	bne .L080B08A4
	cmp r4, #0
	beq .L080B08A0
	adds r0, r4, #0
	mov r1, r8
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080B08A0:
	adds r4, #0x10
	b .L080B08C6
.L080B08A4:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080B08C4
.L080B08AC:
	cmp r2, #0
	beq .L080B08BC
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B08BC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B08AC
.L080B08C4:
	adds r4, r2, #0
.L080B08C6:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B08D6
.L080B08D0:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B08D0
.L080B08D6:
	cmp r0, #0
	beq .L080B08DE
	bl free
.L080B08DE:
	ldr r0, [sp, #0x3c]
	add r0, sl
	ldr r7, [sp, #0x3c]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080B08EA:
	ldr r0, .L080B0924 @ =0x0000090B
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B0912
	ldr r1, .L080B0928 @ =0x00000838
	add r1, sb
	movs r0, #4
	str r0, [r1]
	ldr r0, .L080B092C @ =0x0000080C
	add r0, sb
	movs r1, #0x80
	lsls r1, r1, #1
	bl func_08008C28
	ldr r0, .L080B0930 @ =0x00000814
	add r0, sb
	movs r1, #0xbb
	bl func_08008B6C
.L080B0912:
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B0924: .4byte 0x0000090B
.L080B0928: .4byte 0x00000838
.L080B092C: .4byte 0x0000080C
.L080B0930: .4byte 0x00000814

	thumb_func_start func_080B0934
func_080B0934: @ 0x080B0934
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r1, #0x10]
	movs r2, #0
	movs r6, #0xc3
	lsls r6, r6, #3
	movs r4, #0
	ldr r5, .L080B096C @ =0x000006F4
.L080B094E:
	lsls r1, r2, #2
	adds r0, r1, r3
	adds r0, r0, r6
	ldr r0, [r0]
	strh r4, [r0, #0x10]
	adds r1, r1, r3
	adds r1, r1, r5
	ldr r0, [r1]
	strh r4, [r0, #0x10]
	adds r2, #1
	cmp r2, #4
	ble .L080B094E
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080B096C: .4byte 0x000006F4

	thumb_func_start func_080B0970
func_080B0970: @ 0x080B0970
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #0x10]
	movs r2, #0
	movs r6, #0xc3
	lsls r6, r6, #3
	adds r4, r1, #0
	ldr r5, .L080B09AC @ =0x000006F4
.L080B098C:
	lsls r1, r2, #2
	adds r0, r1, r3
	adds r0, r0, r6
	ldr r0, [r0]
	strh r4, [r0, #0x10]
	adds r1, r1, r3
	adds r1, r1, r5
	ldr r0, [r1]
	strh r4, [r0, #0x10]
	adds r2, #1
	cmp r2, #4
	ble .L080B098C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080B09AC: .4byte 0x000006F4

	thumb_func_start func_080B09B0
func_080B09B0: @ 0x080B09B0
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r2, r0, #0
	mov r1, sp
	ldr r0, .L080B09EC @ =gUnk_0810756C
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldm r0!, {r3, r4, r5}
	stm r1!, {r3, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, .L080B09F0 @ =0x00000934
	adds r1, r2, r0
	movs r3, #0x93
	lsls r3, r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	lsls r0, r0, #2
	add r0, sp
	ldr r0, [r0]
	str r0, [r1]
	ldr r4, .L080B09F4 @ =0x00000938
	adds r0, r2, r4
	ldrb r1, [r0]
	cmp r1, #2
	bhi .L080B09FC
	ldr r5, .L080B09F8 @ =0x0000090E
	adds r1, r2, r5
	movs r0, #0xa
	b .L080B0A92
	.align 2, 0
.L080B09EC: .4byte gUnk_0810756C
.L080B09F0: .4byte 0x00000934
.L080B09F4: .4byte 0x00000938
.L080B09F8: .4byte 0x0000090E
.L080B09FC:
	subs r0, r1, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080B0A14
	ldr r0, .L080B0A10 @ =0x0000090E
	adds r1, r2, r0
	movs r0, #0xf
	b .L080B0A92
	.align 2, 0
.L080B0A10: .4byte 0x0000090E
.L080B0A14:
	subs r0, r1, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080B0A2C
	ldr r3, .L080B0A28 @ =0x0000090E
	adds r1, r2, r3
	movs r0, #0x14
	b .L080B0A92
	.align 2, 0
.L080B0A28: .4byte 0x0000090E
.L080B0A2C:
	adds r0, r1, #0
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi .L080B0A44
	ldr r4, .L080B0A40 @ =0x0000090E
	adds r1, r2, r4
	movs r0, #0x1e
	b .L080B0A92
	.align 2, 0
.L080B0A40: .4byte 0x0000090E
.L080B0A44:
	adds r0, r1, #0
	subs r0, #0xb
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080B0A5C
	ldr r5, .L080B0A58 @ =0x0000090E
	adds r1, r2, r5
	movs r0, #0x23
	b .L080B0A92
	.align 2, 0
.L080B0A58: .4byte 0x0000090E
.L080B0A5C:
	adds r0, r1, #0
	subs r0, #0xe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080B0A74
	ldr r0, .L080B0A70 @ =0x0000090E
	adds r1, r2, r0
	movs r0, #0x2d
	b .L080B0A92
	.align 2, 0
.L080B0A70: .4byte 0x0000090E
.L080B0A74:
	adds r0, r1, #0
	subs r0, #0x11
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi .L080B0A8C
	ldr r3, .L080B0A88 @ =0x0000090E
	adds r1, r2, r3
	movs r0, #0x37
	b .L080B0A92
	.align 2, 0
.L080B0A88: .4byte 0x0000090E
.L080B0A8C:
	ldr r4, .L080B0A9C @ =0x0000090E
	adds r1, r2, r4
	movs r0, #0x3c
.L080B0A92:
	strb r0, [r1]
	add sp, #0x1c
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080B0A9C: .4byte 0x0000090E

	thumb_func_start func_080B0AA0
func_080B0AA0: @ 0x080B0AA0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r3, r0, #0
	ldr r0, .L080B0B94 @ =0x00000844
	adds r1, r3, r0
	movs r0, #0
	str r0, [r1]
	movs r2, #0
	movs r5, #0
	movs r7, #1
	ldr r1, .L080B0B98 @ =0x00000848
	adds r4, r3, r1
	ldr r6, .L080B0B9C @ =0x000008E1
	adds r6, r6, r3
	mov r8, r6
	movs r0, #0x8f
	lsls r0, r0, #4
	adds r0, r0, r3
	mov sb, r0
	adds r1, #0x14
	adds r1, r1, r3
	mov ip, r1
.L080B0AD0:
	str r5, [r4]
	str r5, [r4, #0x28]
	mov r6, ip
	adds r6, #4
	mov ip, r6
	subs r6, #4
	stm r6!, {r5}
	mov r0, r8
	adds r1, r0, r2
	movs r0, #0x70
	strb r0, [r1]
	lsls r1, r2, #1
	mov r6, sb
	strh r5, [r6]
	ldr r6, .L080B0BA0 @ =0x00000915
	adds r0, r3, r6
	adds r0, r0, r2
	strb r7, [r0]
	subs r6, #0x19
	adds r0, r3, r6
	adds r0, r0, r1
	strh r5, [r0]
	ldr r1, .L080B0BA4 @ =0x00000906
	adds r0, r3, r1
	adds r0, r0, r2
	strb r5, [r0]
	adds r6, #0x1e
	adds r0, r3, r6
	adds r0, r0, r2
	strb r7, [r0]
	adds r1, #0x19
	adds r0, r3, r1
	adds r0, r0, r2
	strb r7, [r0]
	adds r6, #0xa
	adds r0, r3, r6
	adds r0, r0, r2
	strb r7, [r0]
	adds r4, #4
	movs r0, #2
	add sb, r0
	adds r2, #1
	cmp r2, #4
	ble .L080B0AD0
	movs r4, #0x8e
	lsls r4, r4, #4
	adds r1, r3, r4
	movs r2, #0
	movs r0, #0x78
	strb r0, [r1]
	subs r6, #0x19
	adds r1, r3, r6
	movs r0, #0x3c
	strb r0, [r1]
	ldr r1, .L080B0BA8 @ =0x000008FA
	adds r0, r3, r1
	strb r2, [r0]
	adds r4, #0x2c
	adds r0, r3, r4
	strb r2, [r0]
	adds r6, #2
	adds r0, r3, r6
	strb r2, [r0]
	ldr r0, .L080B0BAC @ =0x00000884
	adds r1, r3, r0
	movs r0, #2
	str r0, [r1]
	ldr r1, .L080B0BB0 @ =0x00000838
	adds r0, r3, r1
	str r2, [r0]
	subs r4, #0xd0
	adds r0, r3, r4
	str r2, [r0]
	subs r6, #0xcd
	adds r0, r3, r6
	str r2, [r0]
	adds r1, #0xdc
	adds r0, r3, r1
	movs r1, #1
	strb r1, [r0]
	adds r4, #0xed
	adds r0, r3, r4
	strb r1, [r0]
	adds r6, #0xea
	adds r0, r3, r6
	strb r2, [r0]
	ldr r1, .L080B0BB4 @ =0x0000092B
	adds r0, r3, r1
	strb r2, [r0]
	adds r4, #3
	adds r0, r3, r4
	strb r2, [r0]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B0B94: .4byte 0x00000844
.L080B0B98: .4byte 0x00000848
.L080B0B9C: .4byte 0x000008E1
.L080B0BA0: .4byte 0x00000915
.L080B0BA4: .4byte 0x00000906
.L080B0BA8: .4byte 0x000008FA
.L080B0BAC: .4byte 0x00000884
.L080B0BB0: .4byte 0x00000838
.L080B0BB4: .4byte 0x0000092B

	thumb_func_start func_080B0BB8
func_080B0BB8: @ 0x080B0BB8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb8
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x68]
	movs r1, #0
	str r1, [sp, #0x6c]
	movs r2, #0
	str r2, [sp, #0x70]
	mov sl, r2
	mov r3, sp
	adds r3, #0x20
	str r3, [sp, #0xa8]
	mov r4, sp
	adds r4, #0x34
	str r4, [sp, #0xac]
	mov r5, sp
	adds r5, #0x3c
	str r5, [sp, #0xb0]
	ldr r5, .L080B0CB4 @ =gUnk_08107588
	mov r6, sp
	adds r6, #0x50
	str r6, [sp, #0xb4]
	ldr r0, .L080B0CB8 @ =gUnk_0810759C
	mov r8, r0
	add r4, sp, #0x64
	ldr r2, [sp, #0xac]
.L080B0BF6:
	stm r3!, {r1}
	mov r6, sl
	adds r0, r2, r6
	strb r1, [r0]
	movs r0, #1
	add sl, r0
	mov r6, sl
	cmp r6, #4
	ble .L080B0BF6
	movs r0, #0
	str r0, [sp, #0x74]
	movs r1, #0
	str r1, [sp, #0x78]
	ldr r1, [sp, #0xb0]
	adds r0, r5, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r6}
	stm r1!, {r2, r6}
	ldr r1, [sp, #0xb4]
	mov r0, r8
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r5, #0
	str r5, [sp, #0x7c]
	movs r6, #0
	str r6, [sp, #0x80]
	movs r0, #0
	str r0, [sp, #0x84]
	movs r1, #0
	str r1, [sp, #0x88]
	movs r2, #0
	str r2, [sp, #0x8c]
	movs r3, #0
	str r3, [sp, #0x90]
	adds r0, r7, #0
	bl func_08008918
	movs r5, #0xba
	lsls r5, r5, #5
	adds r1, r5, #0
	strh r1, [r4]
	strh r1, [r0]
	movs r6, #0x83
	lsls r6, r6, #3
	adds r6, r7, r6
	ldr r0, [r6]
	str r0, [sp, #0x98]
	adds r0, r7, #0
	bl func_080088DC
	str r0, [sp, #0x9c]
	adds r0, r7, #0
	bl func_08008920
	str r0, [sp, #0xa0]
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	movs r2, #0x81
	lsls r2, r2, #4
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x98]
	ldr r1, [sp, #0x9c]
	ldr r2, [sp, #0xa0]
	adds r3, r5, #0
	bl func_08050D3C
	ldr r4, [r6]
	adds r0, r7, #0
	bl func_080B3A10
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	bl func_08050E50
	ldr r3, .L080B0CBC @ =0x00000838
	adds r0, r7, r3
	bl .L080B1B1C
	.align 2, 0
.L080B0CB4: .4byte gUnk_08107588
.L080B0CB8: .4byte gUnk_0810759C
.L080B0CBC: .4byte 0x00000838

	thumb_func_start sub_080B0CC0
sub_080B0CC0: @ 0x080B0CC0
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	movs r5, #0x83
	lsls r5, r5, #3
	adds r4, r7, r5
	ldr r0, [r4]
	bl func_08050D34
	adds r6, r0, #0
	ldr r4, [r4]
	mov r8, r4
	adds r0, r7, #0
	bl func_080088DC
	str r0, [sp, #0xa4]
	adds r0, r7, #0
	bl func_08008920
	mov sb, r0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	movs r2, #0x81
	lsls r2, r2, #4
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, r8
	ldr r1, [sp, #0xa4]
	mov r2, sb
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bls .L080B0D22
	b .L080B10E8
.L080B0D22:
	lsls r0, r0, #2
	ldr r1, .L080B0D2C @ =.L080B0D30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B0D2C: .4byte .L080B0D30
.L080B0D30: @ jump table
	.4byte .L080B0D4C @ case 0
	.4byte .L080B10E8 @ case 1
	.4byte .L080B10E8 @ case 2
	.4byte .L080B0F34 @ case 3
	.4byte .L080B10C2 @ case 4
	.4byte .L080B10E8 @ case 5
	.4byte .L080B10E8 @ case 6
.L080B0D4C:
	ldr r3, [sp, #0x68]
	cmp r3, #8
	bne .L080B0D60
	ldr r4, .L080B0D5C @ =0x00000838
	adds r1, r7, r4
	movs r0, #1
	str r0, [r1]
	b .L080B10E8
	.align 2, 0
.L080B0D5C: .4byte 0x00000838
.L080B0D60:
	ldr r5, [sp, #0x68]
	cmp r5, #4
	bne .L080B0DB0
	movs r6, #1
	str r6, [sp, #0x84]
	ldr r0, [sp, #0x8c]
	cmp r0, #0
	bne .L080B0D72
	b .L080B10E8
.L080B0D72:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	movs r2, #5
	str r2, [sp, #0x68]
	movs r3, #0
	str r3, [sp, #0x70]
	mov sl, r3
	movs r2, #1
	ldr r4, .L080B0DA8 @ =0x0000091A
	adds r3, r7, r4
	ldr r5, .L080B0DAC @ =0x00000848
	adds r1, r7, r5
.L080B0D92:
	stm r1!, {r2}
	mov r6, sl
	adds r0, r3, r6
	strb r2, [r0]
	movs r0, #1
	add sl, r0
	mov r4, sl
	cmp r4, #4
	ble .L080B0D92
	b .L080B10E8
	.align 2, 0
.L080B0DA8: .4byte 0x0000091A
.L080B0DAC: .4byte 0x00000848
.L080B0DB0:
	ldr r5, [sp, #0x68]
	cmp r5, #5
	bne .L080B0E60
	movs r6, #1
	str r6, [sp, #0x88]
	ldr r0, [sp, #0x90]
	cmp r0, #0
	bne .L080B0DC2
	b .L080B10E8
.L080B0DC2:
	adds r0, r7, #0
	bl func_080B0AA0
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	movs r2, #6
	str r2, [sp, #0x68]
	movs r3, #0
	str r3, [sp, #0x70]
	ldr r5, .L080B0E10 @ =0x0000043C
	adds r4, r7, r5
	ldr r2, [r4]
	ldr r1, [r2]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L080B0E0A
	ldr r1, .L080B0E14 @ =0x00000889
	adds r0, r2, #0
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
.L080B0E0A:
	ldr r0, [r4]
	b .L080B0E2A
	.align 2, 0
.L080B0E10: .4byte 0x0000043C
.L080B0E14: .4byte 0x00000889
.L080B0E18:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080AF814
	ldr r6, .L080B0E58 @ =0x0000043C
	adds r0, r7, r6
	ldr r0, [r0]
.L080B0E2A:
	ldr r0, [r0]
	rsbs r2, r0, #0
	orrs r2, r0
	cmp r2, #0
	blt .L080B0E18
	ldr r0, .L080B0E58 @ =0x0000043C
	adds r4, r7, r0
	ldr r0, [r4]
	ldr r1, .L080B0E5C @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	b .L080B10E8
	.align 2, 0
.L080B0E58: .4byte 0x0000043C
.L080B0E5C: .4byte 0x00000889
.L080B0E60:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	ldr r2, [sp, #0x68]
	cmp r2, #0
	beq .L080B0EA4
	cmp r2, #6
	beq .L080B0EA4
	adds r2, #1
	str r2, [sp, #0x68]
	movs r3, #0
	str r3, [sp, #0x70]
	cmp r2, #2
	beq .L080B0EA4
	cmp r2, #8
	beq .L080B0EA4
	mov sl, r3
	movs r2, #1
	ldr r4, .L080B0F18 @ =0x0000091A
	adds r3, r7, r4
	ldr r5, .L080B0F1C @ =0x00000848
	adds r1, r7, r5
.L080B0E92:
	stm r1!, {r2}
	mov r6, sl
	adds r0, r3, r6
	strb r2, [r0]
	movs r0, #1
	add sl, r0
	mov r4, sl
	cmp r4, #4
	ble .L080B0E92
.L080B0EA4:
	ldr r5, [sp, #0x68]
	cmp r5, #4
	beq .L080B0EAC
	b .L080B10E8
.L080B0EAC:
	movs r5, #0x3c
	add r4, sp, #0xc
	movs r6, #4
	mov sl, r6
.L080B0EB4:
	bl rand
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	muls r0, r5, r0
	lsrs r0, r0, #0x10
	adds r0, #0x78
	stm r4!, {r0}
	movs r0, #1
	rsbs r0, r0, #0
	add sl, r0
	mov r1, sl
	cmp r1, #0
	bge .L080B0EB4
	movs r1, #0
	movs r2, #4
	mov sl, r2
	movs r3, #0x88
	lsls r3, r3, #4
	adds r0, r7, r3
.L080B0EDC:
	str r1, [r0]
	subs r0, #4
	movs r4, #1
	rsbs r4, r4, #0
	add sl, r4
	mov r5, sl
	cmp r5, #0
	bge .L080B0EDC
	movs r6, #5
	mov sl, r6
	ldr r1, .L080B0F20 @ =0x00000844
	adds r0, r7, r1
	movs r2, #0
	str r2, [r0]
	ldr r3, .L080B0F24 @ =0x00000929
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	ldr r4, .L080B0F28 @ =0x000008E3
	adds r1, r7, r4
	movs r0, #0x70
	strb r0, [r1]
	ldr r5, .L080B0F2C @ =0x00000864
	adds r0, r7, r5
	str r2, [r0]
	ldr r6, .L080B0F30 @ =0x00000878
	adds r0, r7, r6
	str r2, [r0]
	b .L080B10E8
	.align 2, 0
.L080B0F18: .4byte 0x0000091A
.L080B0F1C: .4byte 0x00000848
.L080B0F20: .4byte 0x00000844
.L080B0F24: .4byte 0x00000929
.L080B0F28: .4byte 0x000008E3
.L080B0F2C: .4byte 0x00000864
.L080B0F30: .4byte 0x00000878
.L080B0F34:
	cmp r6, #5
	bgt .L080B0F44
	cmp r6, #4
	blt .L080B0F3E
	b .L080B10E8
.L080B0F3E:
	cmp r6, #1
	beq .L080B0F58
	b .L080B0F4A
.L080B0F44:
	cmp r6, #6
	bne .L080B0F4A
	b .L080B103C
.L080B0F4A:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D74
	b .L080B10E8
.L080B0F58:
	ldr r2, [sp, #0x68]
	cmp r2, #8
	bls .L080B0F60
	b .L080B10E8
.L080B0F60:
	lsls r0, r2, #2
	ldr r1, .L080B0F6C @ =.L080B0F70
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B0F6C: .4byte .L080B0F70
.L080B0F70: @ jump table
	.4byte .L080B0F94 @ case 0
	.4byte .L080B10E8 @ case 1
	.4byte .L080B0FB0 @ case 2
	.4byte .L080B0FC4 @ case 3
	.4byte .L080B0FD8 @ case 4
	.4byte .L080B0FEC @ case 5
	.4byte .L080B1000 @ case 6
	.4byte .L080B10E8 @ case 7
	.4byte .L080B1028 @ case 8
.L080B0F94:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, .L080B0FA4 @ =gUnk_081075B0
	ldr r2, .L080B0FA8 @ =gUnk_081075CC
	ldr r3, .L080B0FAC @ =gUnk_081075D0
	b .L080B100E
	.align 2, 0
.L080B0FA4: .4byte gUnk_081075B0
.L080B0FA8: .4byte gUnk_081075CC
.L080B0FAC: .4byte gUnk_081075D0
.L080B0FB0:
	movs r4, #0x83
	lsls r4, r4, #3
	adds r0, r7, r4
	ldr r0, [r0]
	ldr r1, .L080B0FC0 @ =gUnk_081075D4
	bl func_08050D8C
	b .L080B10E8
	.align 2, 0
.L080B0FC0: .4byte gUnk_081075D4
.L080B0FC4:
	movs r5, #0x83
	lsls r5, r5, #3
	adds r0, r7, r5
	ldr r0, [r0]
	ldr r1, .L080B0FD4 @ =gUnk_08107608
	bl func_08050D8C
	b .L080B10E8
	.align 2, 0
.L080B0FD4: .4byte gUnk_08107608
.L080B0FD8:
	movs r6, #0x83
	lsls r6, r6, #3
	adds r0, r7, r6
	ldr r0, [r0]
	ldr r1, .L080B0FE8 @ =gUnk_081076C8
	bl func_08050D8C
	b .L080B10E8
	.align 2, 0
.L080B0FE8: .4byte gUnk_081076C8
.L080B0FEC:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	ldr r1, .L080B0FFC @ =gUnk_081077A4
	bl func_08050D8C
	b .L080B10E8
	.align 2, 0
.L080B0FFC: .4byte gUnk_081077A4
.L080B1000:
	movs r2, #0x83
	lsls r2, r2, #3
	adds r0, r7, r2
	ldr r0, [r0]
	ldr r1, .L080B101C @ =gUnk_081077E4
	ldr r2, .L080B1020 @ =gUnk_081077F8
	ldr r3, .L080B1024 @ =gUnk_08107808
.L080B100E:
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	b .L080B10E8
	.align 2, 0
.L080B101C: .4byte gUnk_081077E4
.L080B1020: .4byte gUnk_081077F8
.L080B1024: .4byte gUnk_08107808
.L080B1028:
	movs r3, #0x83
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, .L080B1038 @ =gUnk_08107818
	bl func_08050D8C
	b .L080B10E8
	.align 2, 0
.L080B1038: .4byte gUnk_08107818
.L080B103C:
	movs r4, #0x83
	lsls r4, r4, #3
	adds r0, r7, r4
	ldr r0, [r0]
	bl func_08050DF0
	cmp r0, #1
	beq .L080B1052
	cmp r0, #2
	beq .L080B106A
	b .L080B10E8
.L080B1052:
	ldr r5, [sp, #0x68]
	cmp r5, #0
	bne .L080B105E
	movs r6, #1
	str r6, [sp, #0x68]
	b .L080B10E8
.L080B105E:
	ldr r0, [sp, #0x68]
	cmp r0, #6
	bne .L080B10E8
	movs r1, #7
	str r1, [sp, #0x68]
	b .L080B10E8
.L080B106A:
	ldr r2, [sp, #0x68]
	cmp r2, #0
	bne .L080B1076
	movs r3, #7
	str r3, [sp, #0x68]
	b .L080B10E8
.L080B1076:
	ldr r4, [sp, #0x68]
	cmp r4, #6
	bne .L080B10E8
	movs r5, #1
	str r5, [sp, #0x68]
	movs r6, #0
	str r6, [sp, #0x6c]
	movs r0, #0
	str r0, [sp, #0x70]
	mov sl, r0
	movs r1, #0
	ldr r2, [sp, #0xac]
	ldr r3, [sp, #0xa8]
.L080B1090:
	stm r3!, {r1}
	mov r4, sl
	adds r0, r2, r4
	strb r1, [r0]
	movs r5, #1
	add sl, r5
	mov r6, sl
	cmp r6, #4
	ble .L080B1090
	movs r0, #0
	str r0, [sp, #0x74]
	movs r1, #0
	str r1, [sp, #0x78]
	movs r2, #0
	str r2, [sp, #0x7c]
	movs r3, #0
	str r3, [sp, #0x84]
	movs r4, #0
	str r4, [sp, #0x88]
	movs r5, #0
	str r5, [sp, #0x8c]
	movs r6, #0
	str r6, [sp, #0x90]
	str r0, [sp, #0x80]
	b .L080B10E8
.L080B10C2:
	ldr r1, [sp, #0x68]
	cmp r1, #3
	bne .L080B10EE
	cmp r6, #5
	bne .L080B10E8
	ldr r2, [sp, #0x6c]
	adds r2, #1
	str r2, [sp, #0x6c]
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne .L080B10E8
	cmp r2, #2
	bne .L080B10E8
	movs r4, #0x83
	lsls r4, r4, #3
	adds r0, r7, r4
	ldr r0, [r0]
	bl func_08050DD8
.L080B10E8:
	ldr r5, [sp, #0x68]
	cmp r5, #3
	beq .L080B1108
.L080B10EE:
	ldr r6, [sp, #0x68]
	cmp r6, #3
	bgt .L080B10F8
	bl .L080B1B0C
.L080B10F8:
	cmp r6, #4
	bne .L080B10FE
	b .L080B13C0
.L080B10FE:
	cmp r6, #5
	bne .L080B1104
	b .L080B1734
.L080B1104:
	bl .L080B1B0C
.L080B1108:
	ldr r0, [sp, #0x70]
	cmp r0, #0
	bne .L080B113C
	ldr r1, .L080B1130 @ =0x00000844
	adds r0, r7, r1
	ldr r2, [sp, #0x68]
	str r2, [r0]
	ldr r3, .L080B1134 @ =0x00000929
	adds r0, r7, r3
	movs r1, #1
	strb r1, [r0]
	movs r4, #0x85
	lsls r4, r4, #4
	adds r0, r7, r4
	str r1, [r0]
	ldr r5, .L080B1138 @ =0x0000091C
	adds r0, r7, r5
	strb r1, [r0]
	b .L080B12E4
	.align 2, 0
.L080B1130: .4byte 0x00000844
.L080B1134: .4byte 0x00000929
.L080B1138: .4byte 0x0000091C
.L080B113C:
	ldr r0, [sp, #0x70]
	cmp r0, #0x1e
	bne .L080B1168
	ldr r1, .L080B115C @ =0x00000864
	adds r0, r7, r1
	movs r1, #1
	str r1, [r0]
	ldr r2, .L080B1160 @ =0x00000921
	adds r0, r7, r2
	strb r1, [r0]
	ldr r3, .L080B1164 @ =0x00000814
	adds r0, r7, r3
	movs r1, #0xc7
	bl func_08008B6C
	b .L080B1384
	.align 2, 0
.L080B115C: .4byte 0x00000864
.L080B1160: .4byte 0x00000921
.L080B1164: .4byte 0x00000814
.L080B1168:
	ldr r4, [sp, #0x70]
	cmp r4, #0x3c
	bne .L080B11A8
	ldr r5, .L080B1198 @ =0x00000864
	adds r0, r7, r5
	movs r1, #0
	str r1, [r0]
	ldr r6, .L080B119C @ =0x00000844
	adds r0, r7, r6
	str r1, [r0]
	ldr r1, .L080B11A0 @ =0x00000929
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	movs r2, #0x85
	lsls r2, r2, #4
	adds r0, r7, r2
	str r1, [r0]
	ldr r3, .L080B11A4 @ =0x0000091A
	adds r0, r7, r3
	add r0, sl
	strb r1, [r0]
	b .L080B1384
	.align 2, 0
.L080B1198: .4byte 0x00000864
.L080B119C: .4byte 0x00000844
.L080B11A0: .4byte 0x00000929
.L080B11A4: .4byte 0x0000091A
.L080B11A8:
	ldr r4, [sp, #0x70]
	cmp r4, #0x5a
	bne .L080B11E8
	ldr r5, .L080B11DC @ =0x00000878
	adds r0, r7, r5
	movs r2, #1
	str r2, [r0]
	ldr r6, .L080B11E0 @ =0x00000844
	adds r0, r7, r6
	ldr r1, [sp, #0x68]
	str r1, [r0]
	ldr r3, .L080B11E4 @ =0x00000929
	adds r0, r7, r3
	strb r2, [r0]
	movs r4, #0x85
	lsls r4, r4, #4
	adds r1, r7, r4
	movs r0, #2
	str r0, [r1]
	adds r5, #0xa2
	adds r0, r7, r5
	add r0, sl
	strb r2, [r0]
	subs r6, #0x30
	b .L080B12E6
	.align 2, 0
.L080B11DC: .4byte 0x00000878
.L080B11E0: .4byte 0x00000844
.L080B11E4: .4byte 0x00000929
.L080B11E8:
	ldr r0, [sp, #0x70]
	cmp r0, #0x78
	bne .L080B1240
	ldr r1, .L080B1228 @ =0x00000878
	adds r0, r7, r1
	movs r2, #0
	str r2, [r0]
	ldr r3, .L080B122C @ =0x00000864
	adds r1, r7, r3
	movs r0, #2
	str r0, [r1]
	ldr r4, .L080B1230 @ =0x00000921
	adds r0, r7, r4
	movs r1, #1
	strb r1, [r0]
	ldr r5, .L080B1234 @ =0x00000844
	adds r0, r7, r5
	str r2, [r0]
	ldr r6, .L080B1238 @ =0x00000929
	adds r0, r7, r6
	strb r1, [r0]
	movs r2, #0x85
	lsls r2, r2, #4
	adds r0, r7, r2
	str r1, [r0]
	adds r3, #0xb6
	adds r0, r7, r3
	add r0, sl
	strb r1, [r0]
	ldr r4, .L080B123C @ =0x0000081C
	adds r0, r7, r4
	b .L080B133A
	.align 2, 0
.L080B1228: .4byte 0x00000878
.L080B122C: .4byte 0x00000864
.L080B1230: .4byte 0x00000921
.L080B1234: .4byte 0x00000844
.L080B1238: .4byte 0x00000929
.L080B123C: .4byte 0x0000081C
.L080B1240:
	ldr r5, [sp, #0x70]
	cmp r5, #0x96
	bne .L080B1254
	ldr r6, .L080B1250 @ =0x00000864
	adds r1, r7, r6
	movs r0, #0
	str r0, [r1]
	b .L080B1384
	.align 2, 0
.L080B1250: .4byte 0x00000864
.L080B1254:
	ldr r0, [sp, #0x70]
	cmp r0, #0xb4
	bne .L080B1280
	movs r2, #0x85
	lsls r2, r2, #4
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	ldr r3, .L080B1278 @ =0x0000091A
	adds r0, r7, r3
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	ldr r4, .L080B127C @ =0x00000878
	adds r0, r7, r4
	str r1, [r0]
	b .L080B1384
	.align 2, 0
.L080B1278: .4byte 0x0000091A
.L080B127C: .4byte 0x00000878
.L080B1280:
	ldr r5, [sp, #0x70]
	cmp r5, #0xd2
	bne .L080B12B8
	ldr r6, .L080B12AC @ =0x00000878
	adds r1, r7, r6
	movs r0, #2
	str r0, [r1]
	movs r0, #0x85
	lsls r0, r0, #4
	adds r1, r7, r0
	movs r0, #4
	str r0, [r1]
	ldr r2, .L080B12B0 @ =0x0000091C
	adds r1, r7, r2
	movs r0, #1
	strb r0, [r1]
	ldr r3, .L080B12B4 @ =0x00000814
	adds r0, r7, r3
	movs r1, #0xa6
	bl func_08008B6C
	b .L080B1384
	.align 2, 0
.L080B12AC: .4byte 0x00000878
.L080B12B0: .4byte 0x0000091C
.L080B12B4: .4byte 0x00000814
.L080B12B8:
	ldr r4, [sp, #0x70]
	cmp r4, #0xf0
	bne .L080B1300
	ldr r5, .L080B12F0 @ =0x00000844
	adds r0, r7, r5
	ldr r6, [sp, #0x68]
	str r6, [r0]
	ldr r1, .L080B12F4 @ =0x00000929
	adds r0, r7, r1
	movs r1, #0
	movs r2, #1
	strb r2, [r0]
	ldr r3, .L080B12F8 @ =0x00000878
	adds r0, r7, r3
	str r1, [r0]
	movs r4, #0x85
	lsls r4, r4, #4
	adds r0, r7, r4
	str r6, [r0]
	adds r5, #0xd8
	adds r0, r7, r5
	strb r2, [r0]
.L080B12E4:
	ldr r6, .L080B12FC @ =0x00000814
.L080B12E6:
	adds r0, r7, r6
	movs r1, #0x6c
	bl func_08008B6C
	b .L080B1384
	.align 2, 0
.L080B12F0: .4byte 0x00000844
.L080B12F4: .4byte 0x00000929
.L080B12F8: .4byte 0x00000878
.L080B12FC: .4byte 0x00000814
.L080B1300:
	movs r0, #0x87
	lsls r0, r0, #1
	ldr r1, [sp, #0x70]
	cmp r1, r0
	bne .L080B135C
	ldr r2, .L080B1344 @ =0x00000844
	adds r1, r7, r2
	movs r0, #0
	str r0, [r1]
	ldr r3, .L080B1348 @ =0x00000929
	adds r0, r7, r3
	movs r2, #1
	strb r2, [r0]
	movs r4, #0x85
	lsls r4, r4, #4
	adds r0, r7, r4
	str r2, [r0]
	ldr r5, .L080B134C @ =0x0000091C
	adds r0, r7, r5
	strb r2, [r0]
	ldr r6, .L080B1350 @ =0x00000864
	adds r1, r7, r6
	movs r0, #2
	str r0, [r1]
	ldr r1, .L080B1354 @ =0x00000921
	adds r0, r7, r1
	strb r2, [r0]
	ldr r2, .L080B1358 @ =0x0000081C
	adds r0, r7, r2
.L080B133A:
	movs r1, #0xbc
	bl func_08008B6C
	b .L080B1384
	.align 2, 0
.L080B1344: .4byte 0x00000844
.L080B1348: .4byte 0x00000929
.L080B134C: .4byte 0x0000091C
.L080B1350: .4byte 0x00000864
.L080B1354: .4byte 0x00000921
.L080B1358: .4byte 0x0000081C
.L080B135C:
	movs r0, #0x96
	lsls r0, r0, #1
	ldr r3, [sp, #0x70]
	cmp r3, r0
	bne .L080B1384
	ldr r4, .L080B139C @ =0x00000864
	adds r1, r7, r4
	movs r0, #0
	str r0, [r1]
	movs r5, #0x83
	lsls r5, r5, #3
	adds r0, r7, r5
	ldr r0, [r0]
	bl func_08050DE4
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [sp, #0x70]
	movs r0, #1
	str r0, [sp, #0x80]
.L080B1384:
	movs r1, #0x85
	lsls r1, r1, #4
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #4
	bne .L080B13A4
	ldr r2, .L080B13A0 @ =0x000008E3
	adds r1, r7, r2
	ldrb r0, [r1]
	adds r0, #1
	b .L080B13B0
	.align 2, 0
.L080B139C: .4byte 0x00000864
.L080B13A0: .4byte 0x000008E3
.L080B13A4:
	cmp r0, #3
	bne .L080B13B2
	ldr r3, .L080B13BC @ =0x000008E3
	adds r1, r7, r3
	ldrb r0, [r1]
	subs r0, #1
.L080B13B0:
	strb r0, [r1]
.L080B13B2:
	ldr r4, [sp, #0x70]
	adds r4, #1
	str r4, [sp, #0x70]
	b .L080B1B0C
	.align 2, 0
.L080B13BC: .4byte 0x000008E3
.L080B13C0:
	ldr r5, [sp, #0x84]
	cmp r5, #0
	bne .L080B13C8
	b .L080B1B0C
.L080B13C8:
	movs r6, #0
	mov sl, r6
	ldr r0, .L080B13F4 @ =0x00000848
	adds r0, r0, r7
	mov r8, r0
.L080B13D2:
	mov r1, sl
	lsls r0, r1, #2
	ldr r2, .L080B13F4 @ =0x00000848
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r1, [r1]
	subs r1, #1
	adds r4, r0, #0
	cmp r1, #4
	bls .L080B13E8
	b .L080B158E
.L080B13E8:
	lsls r0, r1, #2
	ldr r1, .L080B13F8 @ =.L080B13FC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B13F4: .4byte 0x00000848
.L080B13F8: .4byte .L080B13FC
.L080B13FC: @ jump table
	.4byte .L080B1410 @ case 0
	.4byte .L080B1458 @ case 1
	.4byte .L080B14EC @ case 2
	.4byte .L080B154C @ case 3
	.4byte .L080B14B0 @ case 4
.L080B1410:
	ldr r5, [sp, #0xa8]
	adds r3, r5, r4
	ldr r1, [r3]
	adds r1, #1
	str r1, [r3]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0xc
	ldr r0, [r0]
	asrs r0, r0, #1
	cmp r1, r0
	beq .L080B142A
	b .L080B158E
.L080B142A:
	ldr r6, .L080B1450 @ =0x00000848
	adds r0, r7, r6
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r1, .L080B1454 @ =0x0000091A
	adds r0, r7, r1
	add r0, sl
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	str r2, [r3]
	movs r2, #0x87
	lsls r2, r2, #4
	adds r0, r7, r2
	adds r0, r0, r4
	str r1, [r0]
	b .L080B158E
	.align 2, 0
.L080B1450: .4byte 0x00000848
.L080B1454: .4byte 0x0000091A
.L080B1458:
	ldr r5, [sp, #0xa8]
	adds r3, r5, r4
	ldr r1, [r3]
	adds r1, #1
	str r1, [r3]
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0xc
	ldr r0, [r0]
	asrs r0, r0, #1
	cmp r1, r0
	beq .L080B1472
	b .L080B158E
.L080B1472:
	ldr r6, .L080B14A4 @ =0x00000848
	adds r0, r7, r6
	adds r0, r0, r4
	movs r1, #4
	str r1, [r0]
	ldr r0, .L080B14A8 @ =0x0000091A
	adds r1, r7, r0
	add r1, sl
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	str r2, [r3]
	movs r1, #0x87
	lsls r1, r1, #4
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r2, .L080B14AC @ =0x00000814
	adds r0, r7, r2
	movs r1, #0xa6
	bl func_08008B6C
	b .L080B158E
	.align 2, 0
.L080B14A4: .4byte 0x00000848
.L080B14A8: .4byte 0x0000091A
.L080B14AC: .4byte 0x00000814
.L080B14B0:
	ldr r0, [sp, #0xac]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B158E
	ldr r3, [sp, #0xa8]
	adds r1, r3, r4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	cmp r0, #0x78
	bne .L080B158E
	movs r0, #0
	str r0, [r1]
	ldr r5, .L080B14E4 @ =0x00000848
	adds r0, r7, r5
	adds r0, r0, r4
	movs r1, #3
	str r1, [r0]
	ldr r6, .L080B14E8 @ =0x0000091A
	adds r0, r7, r6
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	b .L080B158E
	.align 2, 0
.L080B14E4: .4byte 0x00000848
.L080B14E8: .4byte 0x0000091A
.L080B14EC:
	ldr r0, .L080B1534 @ =0x000008E1
	adds r1, r7, r0
	add r1, sl
	ldrb r0, [r1]
	subs r0, #1
	movs r2, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x70
	bne .L080B158E
	ldr r1, .L080B1538 @ =0x00000848
	adds r0, r7, r1
	adds r0, r0, r4
	str r2, [r0]
	ldr r2, .L080B153C @ =0x0000091A
	adds r0, r7, r2
	add r0, sl
	movs r2, #1
	strb r2, [r0]
	ldr r3, .L080B1540 @ =0x0000085C
	adds r0, r7, r3
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r4, .L080B1544 @ =0x0000091F
	adds r0, r7, r4
	add r0, sl
	strb r2, [r0]
	ldr r5, .L080B1548 @ =0x0000081C
	adds r0, r7, r5
	movs r1, #0xbc
	bl func_08008B6C
	b .L080B158E
	.align 2, 0
.L080B1534: .4byte 0x000008E1
.L080B1538: .4byte 0x00000848
.L080B153C: .4byte 0x0000091A
.L080B1540: .4byte 0x0000085C
.L080B1544: .4byte 0x0000091F
.L080B1548: .4byte 0x0000081C
.L080B154C:
	ldr r6, .L080B15DC @ =0x000008E1
	adds r1, r7, r6
	add r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa8
	bne .L080B158E
	ldr r1, .L080B15E0 @ =0x00000848
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #5
	str r1, [r0]
	ldr r2, .L080B15E4 @ =0x0000091A
	adds r0, r7, r2
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	ldr r3, .L080B15E8 @ =0x0000085C
	adds r0, r7, r3
	adds r0, r0, r4
	str r1, [r0]
	ldr r4, .L080B15EC @ =0x0000091F
	adds r0, r7, r4
	add r0, sl
	strb r1, [r0]
	ldr r5, .L080B15F0 @ =0x00000814
	adds r0, r7, r5
	movs r1, #0xc7
	bl func_08008B6C
.L080B158E:
	movs r6, #1
	add sl, r6
	mov r0, sl
	cmp r0, #4
	bgt .L080B159A
	b .L080B13D2
.L080B159A:
	ldr r1, [sp, #0x74]
	cmp r1, #0
	bne .L080B15FC
	movs r2, #0
	mov sl, r2
	mov r3, r8
	ldr r0, [r3]
	cmp r0, #5
	bne .L080B15C2
	ldr r4, .L080B15E0 @ =0x00000848
	adds r1, r7, r4
.L080B15B0:
	adds r1, #4
	movs r5, #1
	add sl, r5
	mov r6, sl
	cmp r6, #4
	bgt .L080B15C2
	ldr r0, [r1]
	cmp r0, #5
	beq .L080B15B0
.L080B15C2:
	mov r0, sl
	cmp r0, #5
	beq .L080B15CA
	b .L080B16F4
.L080B15CA:
	movs r1, #1
	str r1, [sp, #0x74]
	ldr r2, .L080B15F4 @ =0x00000844
	adds r0, r7, r2
	str r1, [r0]
	ldr r3, .L080B15F8 @ =0x00000929
	adds r0, r7, r3
	strb r1, [r0]
	b .L080B16F4
	.align 2, 0
.L080B15DC: .4byte 0x000008E1
.L080B15E0: .4byte 0x00000848
.L080B15E4: .4byte 0x0000091A
.L080B15E8: .4byte 0x0000085C
.L080B15EC: .4byte 0x0000091F
.L080B15F0: .4byte 0x00000814
.L080B15F4: .4byte 0x00000844
.L080B15F8: .4byte 0x00000929
.L080B15FC:
	ldr r6, .L080B1614 @ =0x00000844
	adds r5, r7, r6
	ldr r4, [r5]
	cmp r4, #1
	beq .L080B1618
	cmp r4, #1
	ble .L080B16F4
	cmp r4, #2
	beq .L080B166C
	cmp r4, #3
	beq .L080B16C8
	b .L080B16F4
	.align 2, 0
.L080B1614: .4byte 0x00000844
.L080B1618:
	movs r1, #0x8e
	lsls r1, r1, #4
	adds r0, r7, r1
	ldrb r1, [r0]
	subs r1, #2
	movs r6, #0
	strb r1, [r0]
	adds r0, r7, #0
	bl func_080B34DC
	ldr r2, .L080B1650 @ =0x00000884
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, #0
	bne .L080B1658
	movs r0, #3
	str r0, [r5]
	ldr r3, .L080B1654 @ =0x00000929
	adds r0, r7, r3
	strb r4, [r0]
	movs r5, #0x87
	lsls r5, r5, #4
	adds r0, r7, r5
	str r6, [r0]
	ldr r6, [sp, #0xac]
	strb r4, [r6]
	b .L080B16AE
	.align 2, 0
.L080B1650: .4byte 0x00000884
.L080B1654: .4byte 0x00000929
.L080B1658:
	cmp r0, #2
	bne .L080B16F4
	str r6, [r5]
	ldr r2, .L080B1668 @ =0x00000929
	adds r0, r7, r2
	strb r4, [r0]
	b .L080B16F4
	.align 2, 0
.L080B1668: .4byte 0x00000929
.L080B166C:
	movs r3, #0x8e
	lsls r3, r3, #4
	adds r1, r7, r3
	ldrb r0, [r1]
	adds r0, #2
	movs r4, #0
	strb r0, [r1]
	adds r0, r7, #0
	bl func_080B34DC
	ldr r6, .L080B16BC @ =0x00000884
	adds r1, r7, r6
	ldr r0, [r1]
	cmp r0, #0
	beq .L080B16F4
	cmp r0, #5
	beq .L080B16F4
	movs r0, #3
	str r0, [r5]
	ldr r2, .L080B16C0 @ =0x00000929
	adds r0, r7, r2
	movs r3, #1
	strb r3, [r0]
	ldr r1, [r1]
	lsls r2, r1, #2
	movs r5, #0x87
	lsls r5, r5, #4
	adds r0, r7, r5
	adds r0, r0, r2
	str r4, [r0]
	ldr r6, [sp, #0xac]
	adds r1, r6, r1
	strb r3, [r1]
.L080B16AE:
	ldr r1, .L080B16C4 @ =0x00000814
	adds r0, r7, r1
	movs r1, #0x6c
	bl func_08008B6C
	b .L080B16F4
	.align 2, 0
.L080B16BC: .4byte 0x00000884
.L080B16C0: .4byte 0x00000929
.L080B16C4: .4byte 0x00000814
.L080B16C8:
	ldr r2, [sp, #0x78]
	adds r2, #1
	str r2, [sp, #0x78]
	cmp r2, #0x1e
	ble .L080B16F4
	ldr r3, .L080B16E0 @ =0x00000884
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #4
	beq .L080B16E4
	movs r0, #2
	b .L080B16E6
	.align 2, 0
.L080B16E0: .4byte 0x00000884
.L080B16E4:
	movs r0, #1
.L080B16E6:
	str r0, [r5]
	ldr r4, .L080B170C @ =0x00000929
	adds r1, r7, r4
	movs r0, #1
	strb r0, [r1]
	movs r5, #0
	str r5, [sp, #0x78]
.L080B16F4:
	movs r6, #1
	str r6, [sp, #0x8c]
	movs r0, #0
	mov sl, r0
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq .L080B1710
	movs r2, #0
	str r2, [sp, #0x8c]
	b .L080B1B0C
	.align 2, 0
.L080B170C: .4byte 0x00000929
.L080B1710:
	movs r3, #1
	add sl, r3
	mov r4, sl
	cmp r4, #4
	ble .L080B171C
	b .L080B1B0C
.L080B171C:
	lsls r0, r4, #2
	ldr r5, .L080B1730 @ =0x00000848
	adds r1, r7, r5
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq .L080B1710
	movs r6, #0
	str r6, [sp, #0x8c]
	b .L080B1B0C
	.align 2, 0
.L080B1730: .4byte 0x00000848
.L080B1734:
	ldr r0, [sp, #0x88]
	cmp r0, #0
	bne .L080B173C
	b .L080B1B0C
.L080B173C:
	ldr r1, .L080B17B4 @ =0x00000848
	adds r1, r1, r7
	mov r8, r1
	ldr r2, [sp, #0x70]
	cmp r2, #0
	bne .L080B1790
	movs r3, #1
	str r3, [sp, #0x70]
	movs r0, #0x78
	str r0, [sp, #0xc]
	movs r1, #0xd2
	str r1, [sp, #0x10]
	movs r0, #0xb4
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	movs r0, #0x3c
	str r0, [sp, #0x1c]
	ldr r4, .L080B17B8 @ =0x00000884
	adds r1, r7, r4
	movs r0, #4
	str r0, [r1]
	movs r5, #0x8e
	lsls r5, r5, #4
	adds r1, r7, r5
	movs r2, #0
	movs r0, #0xa8
	strb r0, [r1]
	ldr r6, .L080B17BC @ =0x00000844
	adds r0, r7, r6
	str r2, [r0]
	ldr r1, .L080B17C0 @ =0x00000929
	adds r0, r7, r1
	strb r3, [r0]
	movs r3, #0
	str r3, [sp, #0x78]
	ldr r1, [sp, #0xac]
	adds r0, r1, #0
	adds r0, #4
.L080B1788:
	strb r2, [r0]
	subs r0, #1
	cmp r0, r1
	bge .L080B1788
.L080B1790:
	movs r4, #0
	mov sl, r4
.L080B1794:
	mov r5, sl
	lsls r0, r5, #2
	ldr r6, .L080B17B4 @ =0x00000848
	adds r1, r7, r6
	adds r1, r1, r0
	ldr r1, [r1]
	subs r1, #1
	adds r4, r0, #0
	cmp r1, #4
	bls .L080B17AA
	b .L080B199E
.L080B17AA:
	lsls r0, r1, #2
	ldr r1, .L080B17C4 @ =.L080B17C8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B17B4: .4byte 0x00000848
.L080B17B8: .4byte 0x00000884
.L080B17BC: .4byte 0x00000844
.L080B17C0: .4byte 0x00000929
.L080B17C4: .4byte .L080B17C8
.L080B17C8: @ jump table
	.4byte .L080B17DC @ case 0
	.4byte .L080B1820 @ case 1
	.4byte .L080B1924 @ case 2
	.4byte .L080B18B4 @ case 3
	.4byte .L080B1980 @ case 4
.L080B17DC:
	ldr r0, [sp, #0xa8]
	adds r2, r0, r4
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	mov r1, sp
	adds r1, r1, r4
	adds r1, #0xc
	ldr r1, [r1]
	cmp r0, r1
	beq .L080B17F4
	b .L080B199E
.L080B17F4:
	movs r0, #0
	str r0, [r2]
	ldr r1, .L080B1818 @ =0x00000848
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r2, .L080B181C @ =0x0000091A
	adds r0, r7, r2
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	movs r3, #0x87
	lsls r3, r3, #4
	adds r0, r7, r3
	adds r0, r0, r4
	str r1, [r0]
	b .L080B199E
	.align 2, 0
.L080B1818: .4byte 0x00000848
.L080B181C: .4byte 0x0000091A
.L080B1820:
	ldr r5, [sp, #0xa8]
	adds r2, r5, r4
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r6, [sp, #0xb0]
	adds r1, r6, r4
	ldr r1, [r1]
	cmp r0, r1
	bne .L080B1862
	movs r0, #0
	str r0, [r2]
	ldr r1, .L080B189C @ =0x00000848
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #4
	str r1, [r0]
	ldr r2, .L080B18A0 @ =0x0000091A
	adds r0, r7, r2
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	movs r3, #0x87
	lsls r3, r3, #4
	adds r0, r7, r3
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r5, .L080B18A4 @ =0x00000814
	adds r0, r7, r5
	movs r1, #0xa6
	bl func_08008B6C
.L080B1862:
	ldr r0, [sp, #0xac]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B186E
	b .L080B199E
.L080B186E:
	ldr r6, .L080B189C @ =0x00000848
	adds r0, r7, r6
	adds r0, r0, r4
	movs r1, #0
	str r1, [r0]
	ldr r1, .L080B18A0 @ =0x0000091A
	adds r0, r7, r1
	add r0, sl
	movs r2, #1
	strb r2, [r0]
	ldr r3, .L080B18A8 @ =0x0000085C
	adds r0, r7, r3
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r4, .L080B18AC @ =0x0000091F
	adds r0, r7, r4
	add r0, sl
	strb r2, [r0]
	ldr r5, .L080B18B0 @ =0x0000081C
	adds r0, r7, r5
	b .L080B1962
	.align 2, 0
.L080B189C: .4byte 0x00000848
.L080B18A0: .4byte 0x0000091A
.L080B18A4: .4byte 0x00000814
.L080B18A8: .4byte 0x0000085C
.L080B18AC: .4byte 0x0000091F
.L080B18B0: .4byte 0x0000081C
.L080B18B4:
	ldr r6, .L080B1910 @ =0x000008E1
	adds r1, r7, r6
	add r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa8
	bne .L080B18F6
	ldr r1, .L080B1914 @ =0x00000848
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #5
	str r1, [r0]
	ldr r2, .L080B1918 @ =0x0000091A
	adds r0, r7, r2
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	ldr r3, .L080B191C @ =0x0000085C
	adds r0, r7, r3
	adds r0, r0, r4
	str r1, [r0]
	ldr r5, .L080B1920 @ =0x0000091F
	adds r0, r7, r5
	add r0, sl
	strb r1, [r0]
	subs r6, #0xcd
	adds r0, r7, r6
	movs r1, #0xc7
	bl func_08008B6C
.L080B18F6:
	ldr r0, [sp, #0xac]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B199E
	ldr r1, .L080B1914 @ =0x00000848
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #3
	str r1, [r0]
	ldr r2, .L080B1918 @ =0x0000091A
	adds r0, r7, r2
	b .L080B1998
	.align 2, 0
.L080B1910: .4byte 0x000008E1
.L080B1914: .4byte 0x00000848
.L080B1918: .4byte 0x0000091A
.L080B191C: .4byte 0x0000085C
.L080B1920: .4byte 0x0000091F
.L080B1924:
	ldr r3, .L080B196C @ =0x000008E1
	adds r1, r7, r3
	add r1, sl
	ldrb r0, [r1]
	subs r0, #1
	movs r2, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x70
	bne .L080B199E
	ldr r5, .L080B1970 @ =0x00000848
	adds r0, r7, r5
	adds r0, r0, r4
	str r2, [r0]
	ldr r6, .L080B1974 @ =0x0000091A
	adds r0, r7, r6
	add r0, sl
	movs r2, #1
	strb r2, [r0]
	ldr r1, .L080B1978 @ =0x0000085C
	adds r0, r7, r1
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	adds r3, #0x3e
	adds r0, r7, r3
	add r0, sl
	strb r2, [r0]
	ldr r4, .L080B197C @ =0x0000081C
	adds r0, r7, r4
.L080B1962:
	movs r1, #0xbc
	bl func_08008B6C
	b .L080B199E
	.align 2, 0
.L080B196C: .4byte 0x000008E1
.L080B1970: .4byte 0x00000848
.L080B1974: .4byte 0x0000091A
.L080B1978: .4byte 0x0000085C
.L080B197C: .4byte 0x0000081C
.L080B1980:
	ldr r0, [sp, #0xac]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B199E
	ldr r5, .L080B19C0 @ =0x00000848
	adds r0, r7, r5
	adds r0, r0, r4
	movs r1, #3
	str r1, [r0]
	ldr r6, .L080B19C4 @ =0x0000091A
	adds r0, r7, r6
.L080B1998:
	add r0, sl
	movs r1, #1
	strb r1, [r0]
.L080B199E:
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #4
	bgt .L080B19AA
	b .L080B1794
.L080B19AA:
	ldr r2, .L080B19C8 @ =0x00000844
	adds r5, r7, r2
	ldr r4, [r5]
	cmp r4, #1
	beq .L080B1A24
	cmp r4, #1
	bgt .L080B19CC
	cmp r4, #0
	beq .L080B19D6
	b .L080B1AD4
	.align 2, 0
.L080B19C0: .4byte 0x00000848
.L080B19C4: .4byte 0x0000091A
.L080B19C8: .4byte 0x00000844
.L080B19CC:
	cmp r4, #2
	beq .L080B1A60
	cmp r4, #3
	beq .L080B1A9C
	b .L080B1AD4
.L080B19D6:
	ldr r3, [sp, #0x7c]
	lsls r0, r3, #2
	ldr r6, [sp, #0xb4]
	adds r3, r6, r0
	ldr r2, [r3]
	lsls r1, r2, #2
	ldr r6, .L080B1A18 @ =0x00000848
	adds r0, r7, r6
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #1
	ble .L080B1AD4
	movs r0, #3
	str r0, [r5]
	ldr r1, .L080B1A1C @ =0x00000929
	adds r0, r7, r1
	movs r1, #1
	strb r1, [r0]
	ldr r5, [sp, #0xac]
	adds r0, r5, r2
	strb r1, [r0]
	ldr r1, [r3]
	lsls r1, r1, #2
	adds r6, #0x28
	adds r0, r7, r6
	adds r0, r0, r1
	str r4, [r0]
	ldr r1, .L080B1A20 @ =0x00000814
	adds r0, r7, r1
	movs r1, #0x6c
	bl func_08008B6C
	b .L080B1AD4
	.align 2, 0
.L080B1A18: .4byte 0x00000848
.L080B1A1C: .4byte 0x00000929
.L080B1A20: .4byte 0x00000814
.L080B1A24:
	movs r2, #0x8e
	lsls r2, r2, #4
	adds r1, r7, r2
	ldrb r0, [r1]
	subs r0, #2
	movs r6, #0
	strb r0, [r1]
	adds r0, r7, #0
	bl func_080B34DC
	ldr r3, .L080B1A58 @ =0x00000884
	adds r1, r7, r3
	ldr r2, [sp, #0x7c]
	lsls r0, r2, #2
	ldr r3, [sp, #0xb4]
	adds r0, r3, r0
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne .L080B1AD4
	str r6, [r5]
	ldr r5, .L080B1A5C @ =0x00000929
	adds r0, r7, r5
	strb r4, [r0]
	b .L080B1AD4
	.align 2, 0
.L080B1A58: .4byte 0x00000884
.L080B1A5C: .4byte 0x00000929
.L080B1A60:
	movs r6, #0x8e
	lsls r6, r6, #4
	adds r1, r7, r6
	ldrb r0, [r1]
	adds r0, #2
	movs r4, #0
	strb r0, [r1]
	adds r0, r7, #0
	bl func_080B34DC
	ldr r0, .L080B1A94 @ =0x00000884
	adds r1, r7, r0
	ldr r2, [sp, #0x7c]
	lsls r0, r2, #2
	ldr r3, [sp, #0xb4]
	adds r0, r3, r0
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r1, r0
	bne .L080B1AD4
	str r4, [r5]
	ldr r4, .L080B1A98 @ =0x00000929
	adds r1, r7, r4
	movs r0, #1
	strb r0, [r1]
	b .L080B1AD4
	.align 2, 0
.L080B1A94: .4byte 0x00000884
.L080B1A98: .4byte 0x00000929
.L080B1A9C:
	ldr r6, [sp, #0x78]
	adds r6, #1
	str r6, [sp, #0x78]
	cmp r6, #0x1e
	bne .L080B1AD4
	movs r0, #0
	str r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	cmp r1, #0
	beq .L080B1AB4
	cmp r1, #2
	bne .L080B1AB8
.L080B1AB4:
	movs r0, #1
	b .L080B1AC4
.L080B1AB8:
	ldr r2, [sp, #0x7c]
	cmp r2, #1
	beq .L080B1AC2
	cmp r2, #3
	bne .L080B1AC6
.L080B1AC2:
	movs r0, #2
.L080B1AC4:
	str r0, [r5]
.L080B1AC6:
	ldr r3, .L080B1AEC @ =0x00000929
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1]
	ldr r4, [sp, #0x7c]
	adds r4, #1
	str r4, [sp, #0x7c]
.L080B1AD4:
	movs r5, #1
	str r5, [sp, #0x90]
	movs r6, #0
	mov sl, r6
	mov r1, r8
	ldr r0, [r1]
	cmp r0, #0
	beq .L080B1AF0
	movs r2, #0
	str r2, [sp, #0x90]
	b .L080B1B0C
	.align 2, 0
.L080B1AEC: .4byte 0x00000929
.L080B1AF0:
	movs r3, #1
	add sl, r3
	mov r4, sl
	cmp r4, #4
	bgt .L080B1B0C
	lsls r0, r4, #2
	ldr r5, .L080B1B38 @ =0x00000848
	adds r1, r7, r5
	adds r1, r1, r0
	ldr r0, [r1]
	cmp r0, #0
	beq .L080B1AF0
	movs r6, #0
	str r6, [sp, #0x90]
.L080B1B0C:
	adds r0, r7, #0
	bl func_080B3948
	adds r0, r7, #0
	bl func_080AF814
	ldr r1, .L080B1B3C @ =0x00000838
	adds r0, r7, r1
.L080B1B1C:
	ldr r0, [r0]
	cmp r0, #0
	bne .L080B1B26
	bl sub_080B0CC0
.L080B1B26:
	add sp, #0xb8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B1B38: .4byte 0x00000848
.L080B1B3C: .4byte 0x00000838

	thumb_func_start func_080B1B40
func_080B1B40: @ 0x080B1B40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x64
	adds r7, r0, #0
	ldr r1, .L080B1C14 @ =0x0000090E
	adds r0, r7, r1
	ldrb r0, [r0]
	add r1, sp, #0xc
	movs r2, #0
	bl func_0804EC84
	add r0, sp, #0x10
	ldr r4, .L080B1C18 @ =gUnk_0810782C
	adds r1, r4, #0
	movs r2, #6
	bl memcpy
	add r0, sp, #0x18
	ldr r6, .L080B1C1C @ =gUnk_08107834
	adds r1, r6, #0
	movs r2, #0xe
	bl memcpy
	add r0, sp, #0x28
	ldr r2, .L080B1C20 @ =gUnk_08107844
	mov r8, r2
	mov r1, r8
	movs r2, #0xa
	bl memcpy
	add r5, sp, #0x34
	ldr r1, [r4]
	str r1, [sp, #0x34]
	ldrh r0, [r4, #4]
	strh r0, [r5, #4]
	str r1, [sp, #0x34]
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl strcat
	adds r0, r5, #0
	add r1, sp, #0xc
	bl strcat
	adds r0, r5, #0
	mov r1, r8
	bl strcat
	movs r3, #1
	str r3, [sp, #0x5c]
	movs r0, #0
	str r0, [sp, #0x60]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0x58
	movs r3, #0xba
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r0, [r4]
	bl func_08050E5C
	ldr r4, [r4]
	mov sl, r4
	adds r0, r7, #0
	bl func_080088DC
	mov sb, r0
	adds r0, r7, #0
	bl func_08008920
	mov r8, r0
	adds r0, r7, #0
	bl func_08008918
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	movs r2, #0x81
	lsls r2, r2, #4
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sl
	mov r1, sb
	mov r2, r8
	adds r3, r6, #0
	bl func_08050D3C
	b .L080B1D0C
	.align 2, 0
.L080B1C14: .4byte 0x0000090E
.L080B1C18: .4byte gUnk_0810782C
.L080B1C1C: .4byte gUnk_08107834
.L080B1C20: .4byte gUnk_08107844
.L080B1C24:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	movs r0, #0x83
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r0, [r4]
	bl func_08050D34
	mov sl, r0
	ldr r4, [r4]
	mov sb, r4
	adds r0, r7, #0
	bl func_080088DC
	mov r8, r0
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	movs r2, #0x81
	lsls r2, r2, #4
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bhi .L080B1D0C
	lsls r0, r0, #2
	ldr r1, .L080B1C90 @ =.L080B1C94
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B1C90: .4byte .L080B1C94
.L080B1C94: @ jump table
	.4byte .L080B1CB0 @ case 0
	.4byte .L080B1CF0 @ case 1
	.4byte .L080B1CF0 @ case 2
	.4byte .L080B1CD2 @ case 3
	.4byte .L080B1CF0 @ case 4
	.4byte .L080B1CF0 @ case 5
	.4byte .L080B1CF0 @ case 6
.L080B1CB0:
	ldr r3, [sp, #0x5c]
	cmp r3, #0
	bne .L080B1CC4
	ldr r0, .L080B1CC0 @ =0x00000838
	adds r1, r7, r0
	movs r0, #2
	str r0, [r1]
	b .L080B1D0C
	.align 2, 0
.L080B1CC0: .4byte 0x00000838
.L080B1CC4:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r0, [r0]
	bl func_08050D5C
	b .L080B1D0C
.L080B1CD2:
	mov r2, sl
	cmp r2, #1
	bne .L080B1CF0
	movs r3, #0x83
	lsls r3, r3, #3
	adds r4, r7, r3
	ldr r0, [r4]
	add r1, sp, #0x34
	bl func_08050D8C
	ldr r0, [r4]
	bl func_08050DD8
	movs r0, #0
	str r0, [sp, #0x5c]
.L080B1CF0:
	ldr r1, [sp, #0x60]
	adds r1, #1
	str r1, [sp, #0x60]
	cmp r1, #0x78
	ble .L080B1D0C
	movs r2, #0x83
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r0, [r4]
	bl func_08050DE4
	ldr r0, [r4]
	bl func_08050D74
.L080B1D0C:
	adds r0, r7, #0
	bl func_080AF814
	ldr r3, .L080B1D30 @ =0x00000838
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B1D1E
	b .L080B1C24
.L080B1D1E:
	add sp, #0x64
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B1D30: .4byte 0x00000838

	thumb_func_start func_080B1D34
func_080B1D34: @ 0x080B1D34
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r6, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0xb2
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r0, r4, #0
	bl func_080AF814
	ldr r1, .L080B1D8C @ =0x00000814
	adds r0, r4, r1
	movs r1, #0xbb
	bl func_08008B6C
	ldr r3, .L080B1D90 @ =0x00000838
	adds r0, r4, r3
	ldr r0, [r0]
	cmp r0, #2
	bne .L080B1D84
	adds r5, r4, r3
	movs r7, #3
.L080B1D6A:
	adds r0, r4, #0
	bl func_080087C8
	adds r0, r4, #0
	bl func_080AF814
	adds r6, #1
	cmp r6, #0x78
	ble .L080B1D7E
	str r7, [r5]
.L080B1D7E:
	ldr r0, [r5]
	cmp r0, #2
	beq .L080B1D6A
.L080B1D84:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B1D8C: .4byte 0x00000814
.L080B1D90: .4byte 0x00000838

	thumb_func_start func_080B1D94
func_080B1D94: @ 0x080B1D94
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x30]
	movs r1, #0
	movs r2, #1
	ldr r3, .L080B1E84 @ =0x0000091A
	adds r4, r6, r3
	ldr r5, .L080B1E88 @ =0x00000848
	adds r3, r6, r5
.L080B1DB2:
	stm r3!, {r2}
	adds r0, r4, r1
	strb r2, [r0]
	adds r1, #1
	cmp r1, #4
	ble .L080B1DB2
	movs r0, #0x14
	bl __builtin_new
	movs r7, #0x84
	lsls r7, r7, #3
	adds r1, r6, r7
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r0, #0x96
	lsls r0, r0, #3
	adds r5, r6, r0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080B1DE8
	bl __builtin_delete
.L080B1DE8:
	str r4, [r5]
	adds r0, r4, #0
	movs r1, #0
	bl func_0805E860
	movs r1, #0x97
	lsls r1, r1, #3
	adds r4, r6, r1
	ldr r0, [r5]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	mov r0, sp
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sp
	mov r1, sp
	movs r2, #0x20
	bl memcpy
	mov r0, sp
	ldm r0!, {r2, r3, r5}
	stm r4!, {r2, r3, r5}
	ldm r0!, {r1, r2, r7}
	stm r4!, {r1, r2, r7}
	ldm r0!, {r3, r5}
	stm r4!, {r3, r5}
	adds r0, r6, #0
	bl func_08008910
	adds r5, r0, #0
	movs r7, #0x98
	lsls r7, r7, #3
	adds r4, r6, r7
	ldr r7, [r4]
	movs r1, #0x89
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080B1E50
	ldrh r3, [r4, #4]
.L080B1E50:
	str r5, [sp, #0x34]
	lsls r2, r2, #5
	ldr r4, .L080B1E8C @ =0x06010000
	adds r2, r2, r4
	mov r0, sp
	adds r1, r7, #0
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080B1E90
	cmp r1, #0
	beq .L080B1E7A
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B1E7A:
	ldr r3, [sp, #0x34]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L080B1F60
	.align 2, 0
.L080B1E84: .4byte 0x0000091A
.L080B1E88: .4byte 0x00000848
.L080B1E8C: .4byte 0x06010000
.L080B1E90:
	str r1, [sp, #0x38]
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r4, [sp, #0x34]
	ldr r0, [r4]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r1, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L080B1EAC
	adds r0, r1, #0
.L080B1EAC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B1ECA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B1ECE
	mov r0, sb
	bl func_080D3BC0
	b .L080B1ECE
.L080B1ECA:
	movs r0, #0
	mov sb, r0
.L080B1ECE:
	adds r4, r0, #0
	mov r8, r4
	ldr r7, [sp, #0x34]
	ldr r2, [r7]
	mov r3, r8
	b .L080B1EEE
.L080B1EDA:
	cmp r3, #0
	beq .L080B1EEA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B1EEA:
	adds r2, #0x10
	adds r3, #0x10
.L080B1EEE:
	ldr r0, [sp, #0x38]
	cmp r2, r0
	bne .L080B1EDA
	adds r4, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L080B1F10
	cmp r4, #0
	beq .L080B1F0C
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B1F0C:
	adds r4, #0x10
	b .L080B1F38
.L080B1F10:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080B1F36
.L080B1F18:
	cmp r2, #0
	beq .L080B1F28
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B1F28:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080B1F18
.L080B1F36:
	adds r4, r2, #0
.L080B1F38:
	ldr r0, [sp, #0x34]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B1F4A
.L080B1F44:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B1F44
.L080B1F4A:
	cmp r0, #0
	beq .L080B1F52
	bl free
.L080B1F52:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x34]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080B1F60:
	adds r0, r6, #0
	bl func_08008910
	adds r4, r0, #0
	movs r3, #0x99
	lsls r3, r3, #3
	adds r2, r6, r3
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B1F7A
	ldrh r3, [r2, #4]
.L080B1F7A:
	str r4, [sp, #0x34]
	mov r0, sp
	ldr r2, .L080B1FA8 @ =0x05000260
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080B1FAC
	cmp r1, #0
	beq .L080B1F9E
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B1F9E:
	ldr r1, [sp, #0x34]
	ldr r0, [r1, #4]
	adds r0, #0x10
	str r0, [r1, #4]
	b .L080B2080
	.align 2, 0
.L080B1FA8: .4byte 0x05000260
.L080B1FAC:
	str r1, [sp, #0x38]
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r2, [sp, #0x34]
	ldr r0, [r2]
	adds r3, r1, #0
	subs r0, r3, r0
	asrs r4, r0, #4
	str r4, [sp, #0x28]
	add r1, sp, #0x2c
	add r0, sp, #0x28
	cmp r4, #1
	bhs .L080B1FC8
	adds r0, r1, #0
.L080B1FC8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B1FE6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080B1FEA
	mov r0, sb
	bl func_080D3BC0
	b .L080B1FEA
.L080B1FE6:
	movs r0, #0
	mov sb, r0
.L080B1FEA:
	adds r4, r0, #0
	mov r8, r4
	ldr r4, [sp, #0x34]
	ldr r2, [r4]
	mov r3, r8
	ldr r5, [sp, #0x38]
	cmp r2, r5
	beq .L080B2014
.L080B1FFA:
	cmp r3, #0
	beq .L080B200A
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B200A:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x38]
	cmp r2, r7
	bne .L080B1FFA
.L080B2014:
	adds r4, r3, #0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne .L080B2030
	cmp r4, #0
	beq .L080B202C
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B202C:
	adds r4, #0x10
	b .L080B2058
.L080B2030:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L080B2056
.L080B2038:
	cmp r2, #0
	beq .L080B2048
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2048:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L080B2038
.L080B2056:
	adds r4, r2, #0
.L080B2058:
	ldr r0, [sp, #0x34]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B206A
.L080B2064:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2064
.L080B206A:
	cmp r0, #0
	beq .L080B2072
	bl free
.L080B2072:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x34]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L080B2080:
	adds r0, r6, #0
	bl func_080AF814
	ldr r3, .L080B208C @ =0x00000838
	adds r0, r6, r3
	b .L080B20F8
	.align 2, 0
.L080B208C: .4byte 0x00000838
.L080B2090:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r4, .L080B20AC @ =0x0000083C
	adds r0, r6, r4
	ldr r0, [r0]
	cmp r0, #0
	beq .L080B20B0
	cmp r0, #1
	beq .L080B20DA
	b .L080B20EE
	.align 2, 0
.L080B20AC: .4byte 0x0000083C
.L080B20B0:
	adds r0, r6, #0
	bl func_080B3518
	adds r0, r6, #0
	bl func_080B36B4
	adds r0, r6, #0
	bl func_080B3948
	ldr r5, [sp, #0x30]
	adds r5, #1
	str r5, [sp, #0x30]
	adds r0, r6, #0
	adds r1, r5, #0
	bl func_080B0708
	cmp r5, #0x3c
	bne .L080B20EE
	movs r7, #0
	str r7, [sp, #0x30]
	b .L080B20EE
.L080B20DA:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #8
	ands r1, r0
	cmp r1, #0
	beq .L080B20EE
	adds r0, r6, #0
	bl func_080B3BA8
.L080B20EE:
	adds r0, r6, #0
	bl func_080AF814
	ldr r1, .L080B2110 @ =0x00000838
	adds r0, r6, r1
.L080B20F8:
	ldr r0, [r0]
	cmp r0, #3
	beq .L080B2090
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B2110: .4byte 0x00000838

	thumb_func_start func_080B2114
func_080B2114: @ 0x080B2114
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x13c
	mov sl, r0
	movs r0, #0
	mov sb, r0
	ldr r0, .L080B2338 @ =0x00000844
	add r0, sl
	mov r1, sb
	str r1, [r0]
	ldr r1, .L080B233C @ =0x00000929
	add r1, sl
	movs r0, #1
	strb r0, [r1]
	add r2, sp, #0x1c
	mov r8, r2
	mov r3, sp
	adds r3, #0x28
	str r3, [sp, #0x110]
	add r6, sp, #0x2c
	mov r4, sp
	adds r4, #0x64
	str r4, [sp, #0x128]
	mov r5, sp
	adds r5, #0x34
	str r5, [sp, #0x11c]
	mov r7, sp
	adds r7, #0x44
	str r7, [sp, #0x124]
	mov r0, sp
	adds r0, #0x30
	str r0, [sp, #0x118]
	movs r3, #0
	ldr r5, .L080B2340 @ =0x0000091A
	add r5, sl
	movs r2, #1
	ldr r1, .L080B2344 @ =0x00000848
	add r1, sl
	ldr r4, .L080B2348 @ =0x0000091F
	add r4, sl
.L080B216A:
	ldr r0, [r1]
	cmp r0, #5
	beq .L080B2178
	str r3, [r1]
	mov r7, sb
	adds r0, r5, r7
	strb r2, [r0]
.L080B2178:
	str r3, [r1, #0x14]
	mov r7, sb
	adds r0, r4, r7
	strb r2, [r0]
	adds r1, #4
	movs r0, #1
	add sb, r0
	mov r7, sb
	cmp r7, #4
	ble .L080B216A
	ldr r2, .L080B234C @ =0x0000090C
	add r2, sl
	ldrb r0, [r2]
	subs r0, #5
	strb r0, [r2]
	movs r3, #0x91
	lsls r3, r3, #4
	add r3, sl
	ldrb r0, [r2]
	ldr r4, .L080B2350 @ =0x0000090D
	add r4, sl
	ldrb r1, [r4]
	subs r0, r0, r1
	str r0, [r3]
	cmp r0, #0
	bge .L080B21B0
	movs r0, #0
	str r0, [r3]
.L080B21B0:
	ldrb r0, [r2]
	cmp r0, #0x63
	bls .L080B21BA
	movs r0, #0x63
	strb r0, [r2]
.L080B21BA:
	ldrb r0, [r4]
	cmp r0, #0x63
	bls .L080B21C4
	movs r0, #0x63
	strb r0, [r4]
.L080B21C4:
	ldr r0, [r3]
	cmp r0, #0x63
	ble .L080B21CE
	movs r0, #0x63
	str r0, [r3]
.L080B21CE:
	ldrb r0, [r2]
	str r0, [sp, #0x28]
	ldrb r0, [r4]
	str r0, [sp, #0x2c]
	ldr r0, [r3]
	str r0, [sp, #0x30]
	mov r0, r8
	ldr r1, [sp, #0x110]
	movs r2, #0xc
	bl memcpy
	add r0, sp, #0x10
	mov r1, r8
	movs r2, #0xc
	bl memcpy
	movs r0, #0
	str r0, [sp, #0xe0]
	mov r0, sl
	bl func_08008918
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	ldr r3, [sp, #0x110]
	strh r1, [r3]
	strh r1, [r0]
	movs r4, #0x83
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r4]
	cmp r0, #0
	beq .L080B221A
	cmp r0, #0
	beq .L080B221A
	movs r1, #3
	bl func_08050D0C
.L080B221A:
	movs r0, #0
	str r0, [r4]
	movs r0, #4
	bl __builtin_new
	adds r4, r0, #0
	ldr r0, [sp, #0x110]
	bl func_0800835C
	adds r0, r6, #0
	bl func_0800770C
	movs r0, #0
	str r0, [sp]
	ldr r5, [sp, #0x110]
	str r5, [sp, #4]
	str r6, [sp, #8]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x18
	movs r3, #0
	bl func_08050CC0
	movs r5, #0x83
	lsls r5, r5, #3
	add r5, sl
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r4, r0
	beq .L080B2260
	cmp r0, #0
	beq .L080B2260
	movs r1, #3
	bl func_08050D0C
.L080B2260:
	str r4, [r5]
	adds r0, r6, #0
	movs r1, #2
	bl func_08007714
	ldr r0, [sp, #0x110]
	movs r1, #2
	bl func_08008364
	movs r0, #0x83
	lsls r0, r0, #3
	add r0, sl
	ldr r0, [r0]
	mov sb, r0
	mov r0, sl
	bl func_080088DC
	mov r8, r0
	mov r0, sl
	bl func_08008920
	adds r6, r0, #0
	mov r0, sl
	bl func_08008918
	adds r5, r0, #0
	mov r0, sl
	bl func_08008940
	adds r4, r0, #0
	mov r0, sl
	bl func_0800894C
	movs r1, #0x81
	lsls r1, r1, #4
	add r1, sl
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	movs r0, #0
	ldr r1, [sp, #0x110]
	movs r2, #0
	bl func_0804EC84
	movs r6, #0
	mov sb, r6
	ldr r7, [sp, #0x110]
	str r7, [sp, #0xe4]
	movs r0, #0x8d
	lsls r0, r0, #4
	add r0, sl
	str r0, [sp, #0xe8]
.L080B22D4:
	mov r1, sb
	lsls r4, r1, #6
	adds r0, r4, r1
	lsls r5, r0, #2
	mov r2, sl
	adds r1, r5, r2
	add r0, sp, #0x64
	movs r3, #4
	strh r3, [r0]
	movs r7, #2
	ldr r6, [sp, #0x128]
	strh r7, [r6, #2]
	ldr r0, [sp, #0x64]
	movs r2, #0x88
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r2, #0
	bl func_0804E7A0
	mov r3, sb
	cmp r3, #1
	beq .L080B2354
	ldr r0, [sp, #0xe4]
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	mov r6, sl
	adds r1, r5, r6
	movs r3, #5
	add r0, sp, #0x68
	movs r7, #4
	strh r7, [r0]
	movs r5, #2
	strh r5, [r0, #2]
	ldr r0, [sp, #0x68]
	movs r6, #0x88
	lsls r6, r6, #1
	adds r1, r1, r6
	ldr r7, [sp, #0xe4]
	str r7, [sp]
	movs r5, #0
	str r5, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	b .L080B2384
	.align 2, 0
.L080B2338: .4byte 0x00000844
.L080B233C: .4byte 0x00000929
.L080B2340: .4byte 0x0000091A
.L080B2344: .4byte 0x00000848
.L080B2348: .4byte 0x0000091F
.L080B234C: .4byte 0x0000090C
.L080B2350: .4byte 0x0000090D
.L080B2354:
	ldr r0, [sp, #0xe4]
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	movs r1, #7
	add r0, sp, #0x6c
	movs r6, #4
	strh r6, [r0]
	movs r7, #2
	strh r7, [r0, #2]
	ldr r0, [sp, #0x6c]
	ldr r3, [sp, #0xe4]
	str r3, [sp]
	movs r5, #0
	str r5, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x85
	lsls r1, r1, #2
	add r1, sl
	movs r3, #0
	bl func_0804E958
.L080B2384:
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	add r4, sb
	lsls r4, r4, #2
	add r4, sl
	movs r7, #0x88
	lsls r7, r7, #1
	adds r4, r4, r7
	ldr r0, [sp, #0xe8]
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	mov r1, sb
	lsls r5, r1, #3
	adds r2, r5, r2
	lsls r2, r2, #5
	ldr r3, .L080B23E8 @ =0x06010000
	adds r2, r2, r3
	add r0, sp, #0x34
	adds r1, r4, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_08008F0C
	ldr r4, [sp, #0x11c]
	str r4, [sp, #0xec]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	str r5, [sp, #0x114]
	cmp r1, r0
	beq .L080B23EC
	cmp r1, #0
	beq .L080B23D8
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r5, r7}
	stm r0!, {r2, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B23D8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	mov r3, sb
	adds r3, #1
	str r3, [sp, #0x10c]
	b .L080B24B8
	.align 2, 0
.L080B23E8: .4byte 0x06010000
.L080B23EC:
	str r1, [sp, #0x130]
	movs r0, #1
	str r0, [sp, #0x74]
	ldr r0, [r6]
	adds r4, r1, #0
	subs r0, r4, r0
	asrs r4, r0, #4
	str r4, [sp, #0x70]
	add r1, sp, #0x74
	add r0, sp, #0x70
	cmp r4, #1
	bhs .L080B2406
	adds r0, r1, #0
.L080B2406:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B2424
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B2428
	mov r0, r8
	bl func_080D3BC0
	b .L080B2428
.L080B2424:
	movs r0, #0
	mov r8, r0
.L080B2428:
	adds r4, r0, #0
	str r4, [sp, #0x134]
	ldr r2, [r6]
	adds r3, r4, #0
	mov r5, sb
	adds r5, #1
	str r5, [sp, #0x10c]
	ldr r7, [sp, #0x130]
	cmp r2, r7
	beq .L080B2456
.L080B243C:
	cmp r3, #0
	beq .L080B244C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B244C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x130]
	cmp r2, r0
	bne .L080B243C
.L080B2456:
	adds r4, r3, #0
	ldr r0, [sp, #0x74]
	cmp r0, #1
	bne .L080B2472
	cmp r4, #0
	beq .L080B246E
	adds r0, r4, #0
	ldr r1, [sp, #0xec]
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080B246E:
	adds r4, #0x10
	b .L080B2494
.L080B2472:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080B2492
.L080B247A:
	cmp r2, #0
	beq .L080B248A
	adds r0, r2, #0
	ldr r1, [sp, #0xec]
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B248A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B247A
.L080B2492:
	adds r4, r2, #0
.L080B2494:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B24A4
.L080B249E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B249E
.L080B24A4:
	cmp r0, #0
	beq .L080B24AC
	bl free
.L080B24AC:
	ldr r0, [sp, #0x134]
	add r0, r8
	ldr r7, [sp, #0x134]
	str r7, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L080B24B8:
	ldr r0, [sp, #0x114]
	movs r2, #0x89
	lsls r2, r2, #3
	adds r1, r0, r2
	add r1, sl
	movs r0, #0
	movs r2, #8
	bl func_08008EB8
	mov r3, sb
	cmp r3, #2
	beq .L080B250C
	ldr r4, [sp, #0x114]
	add r4, sl
	movs r5, #0x89
	lsls r5, r5, #3
	adds r4, r4, r5
	ldr r6, [sp, #0xe8]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	adds r3, r0, #0
	ldr r7, [sp, #0x114]
	adds r3, r3, r7
	mov r0, sb
	lsls r2, r0, #4
	adds r2, #0x6d
	movs r1, #2
	str r1, [sp]
	movs r5, #0
	str r5, [sp, #4]
	str r1, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0x78
	movs r1, #0x78
	bl func_0804EA94
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	b .L080B253C
.L080B250C:
	movs r4, #0x8b
	lsls r4, r4, #3
	add r4, sl
	ldr r6, [sp, #0xe8]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	adds r3, r0, #0
	adds r3, #0x10
	mov r7, sb
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r7, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	add r0, sp, #0x80
	movs r1, #0xb8
	movs r2, #0x8d
	bl func_0804EA94
	ldr r0, [sp, #0x80]
	ldr r1, [sp, #0x84]
.L080B253C:
	str r0, [r4]
	str r1, [r4, #4]
	ldr r1, [sp, #0x10c]
	mov sb, r1
	cmp r1, #2
	bgt .L080B254A
	b .L080B22D4
.L080B254A:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080B2668 @ =0x0000042C
	add r1, sl
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0x8c
	lsls r7, r7, #3
	add r7, sl
	ldr r0, [r7]
	cmp r4, r0
	beq .L080B2572
	bl __builtin_delete
.L080B2572:
	str r4, [r7]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r6, .L080B266C @ =0x00000464
	add r6, sl
	ldr r0, [r6]
	cmp r4, r0
	beq .L080B25A2
	bl __builtin_delete
.L080B25A2:
	str r4, [r6]
	ldr r0, [r7]
	movs r1, #1
	bl func_0805E860
	ldr r1, [r6]
	movs r0, #0x70
	strh r0, [r1]
	ldr r1, [r6]
	movs r0, #0x75
	strh r0, [r1, #2]
	ldr r4, [r6]
	movs r5, #0x8d
	lsls r5, r5, #4
	add r5, sl
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r0, #0x24
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #9
	strh r0, [r1, #4]
	ldr r0, [r6]
	movs r2, #1
	mov r8, r2
	mov r3, r8
	strb r3, [r0, #0x18]
	movs r4, #0x8d
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r7]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x44
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x124]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x124]
	ldm r0!, {r1, r6, r7}
	stm r4!, {r1, r6, r7}
	ldm r0!, {r2, r3, r6}
	stm r4!, {r2, r3, r6}
	ldm r0!, {r1, r7}
	stm r4!, {r1, r7}
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0x8e
	lsls r4, r4, #3
	add r4, sl
	ldr r7, [r4]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080B2636
	ldrh r3, [r4, #4]
.L080B2636:
	lsls r2, r2, #5
	ldr r4, .L080B2670 @ =0x06010480
	adds r2, r2, r4
	add r0, sp, #0x30
	adds r1, r7, #0
	bl func_08008F0C
	ldr r5, [sp, #0x118]
	mov sb, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B2674
	cmp r1, #0
	beq .L080B2660
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2660:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B273A
	.align 2, 0
.L080B2668: .4byte 0x0000042C
.L080B266C: .4byte 0x00000464
.L080B2670: .4byte 0x06010480
.L080B2674:
	str r1, [sp, #0x134]
	mov r4, r8
	str r4, [sp, #0x8c]
	ldr r0, [r6]
	adds r5, r1, #0
	subs r0, r5, r0
	asrs r4, r0, #4
	str r4, [sp, #0x88]
	add r1, sp, #0x8c
	add r0, sp, #0x88
	cmp r4, #1
	bhs .L080B268E
	adds r0, r1, #0
.L080B268E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B26AC
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B26B0
	mov r0, r8
	bl func_080D3BC0
	b .L080B26B0
.L080B26AC:
	movs r0, #0
	mov r8, r0
.L080B26B0:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080B26D8
.L080B26BE:
	cmp r3, #0
	beq .L080B26CE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B26CE:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B26BE
.L080B26D8:
	adds r5, r3, #0
	ldr r0, [sp, #0x8c]
	cmp r0, #1
	bne .L080B26F4
	cmp r5, #0
	beq .L080B26F0
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B26F0:
	adds r5, #0x10
	b .L080B2716
.L080B26F4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B2714
.L080B26FC:
	cmp r2, #0
	beq .L080B270C
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B270C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B26FC
.L080B2714:
	adds r5, r2, #0
.L080B2716:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B2726
.L080B2720:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2720
.L080B2726:
	cmp r0, #0
	beq .L080B272E
	bl free
.L080B272E:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B273A:
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0x8f
	lsls r2, r2, #3
	add r2, sl
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B2754
	ldrh r3, [r2, #4]
.L080B2754:
	adds r6, r4, #0
	add r0, sp, #0x30
	ldr r2, .L080B2784 @ =0x05000320
	bl func_08008F0C
	ldr r0, [sp, #0x118]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B2788
	cmp r1, #0
	beq .L080B277A
	adds r0, r1, #0
	ldr r1, [sp, #0x118]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B277A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B2850
	.align 2, 0
.L080B2784: .4byte 0x05000320
.L080B2788:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0x94
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x134]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0x90
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B27A4
	adds r0, r1, #0
.L080B27A4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B27C2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B27C6
	mov r0, r8
	bl func_080D3BC0
	b .L080B27C6
.L080B27C2:
	movs r0, #0
	mov r8, r0
.L080B27C6:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080B27EE
.L080B27D4:
	cmp r3, #0
	beq .L080B27E4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B27E4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B27D4
.L080B27EE:
	adds r5, r3, #0
	ldr r1, [sp, #0x94]
	cmp r1, #1
	bne .L080B280A
	cmp r5, #0
	beq .L080B2806
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2806:
	adds r5, #0x10
	b .L080B282C
.L080B280A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B282A
.L080B2812:
	cmp r2, #0
	beq .L080B2822
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2822:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B2812
.L080B282A:
	adds r5, r2, #0
.L080B282C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B283C
.L080B2836:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2836
.L080B283C:
	cmp r0, #0
	beq .L080B2844
	bl free
.L080B2844:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B2850:
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0x86
	lsls r1, r1, #3
	add r1, sl
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r4, r0, #0
	movs r7, #0x91
	lsls r7, r7, #3
	add r7, sl
	ldr r0, [r7]
	cmp r4, r0
	beq .L080B287A
	bl __builtin_delete
.L080B287A:
	str r4, [r7]
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	ldr r6, .L080B2970 @ =0x0000048C
	add r6, sl
	ldr r0, [r6]
	cmp r4, r0
	beq .L080B28AA
	bl __builtin_delete
.L080B28AA:
	str r4, [r6]
	ldr r0, [r7]
	movs r1, #0
	bl func_0805E860
	ldr r1, [r6]
	movs r0, #0x68
	strh r0, [r1]
	ldr r1, [r6]
	movs r0, #0x7d
	strh r0, [r1, #2]
	ldr r4, [r6]
	movs r5, #0x8d
	lsls r5, r5, #4
	add r5, sl
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r0, #0x28
	strh r0, [r4, #6]
	ldr r1, [r6]
	movs r0, #0xb
	strh r0, [r1, #4]
	ldr r0, [r6]
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x18]
	movs r4, #0x92
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r7]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x30
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x118]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x118]
	ldm r0!, {r3, r6, r7}
	stm r4!, {r3, r6, r7}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r6, r7}
	stm r4!, {r6, r7}
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	movs r4, #0x93
	lsls r4, r4, #3
	add r4, sl
	ldr r7, [r4]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080B293E
	ldrh r3, [r4, #4]
.L080B293E:
	lsls r2, r2, #5
	ldr r0, .L080B2974 @ =0x06010500
	adds r2, r2, r0
	ldr r0, [sp, #0x118]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r1, [sp, #0x118]
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B2978
	cmp r1, #0
	beq .L080B2968
	adds r0, r1, #0
	ldr r1, [sp, #0x118]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2968:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B2A3C
	.align 2, 0
.L080B2970: .4byte 0x0000048C
.L080B2974: .4byte 0x06010500
.L080B2978:
	str r1, [sp, #0x134]
	add r1, sp, #0x9c
	mov r5, r8
	str r5, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x134]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B2994
	adds r0, r1, #0
.L080B2994:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B29B2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B29B6
	mov r0, r8
	bl func_080D3BC0
	b .L080B29B6
.L080B29B2:
	movs r0, #0
	mov r8, r0
.L080B29B6:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080B29D4
.L080B29C0:
	cmp r3, #0
	beq .L080B29D0
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B29D0:
	adds r2, #0x10
	adds r3, #0x10
.L080B29D4:
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B29C0
	adds r5, r3, #0
	ldr r1, [sp, #0x9c]
	cmp r1, #1
	bne .L080B29F6
	cmp r5, #0
	beq .L080B29F2
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B29F2:
	adds r5, #0x10
	b .L080B2A18
.L080B29F6:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B2A16
.L080B29FE:
	cmp r2, #0
	beq .L080B2A0E
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2A0E:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B29FE
.L080B2A16:
	adds r5, r2, #0
.L080B2A18:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B2A28
.L080B2A22:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2A22
.L080B2A28:
	cmp r0, #0
	beq .L080B2A30
	bl free
.L080B2A30:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B2A3C:
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	movs r2, #0x94
	lsls r2, r2, #3
	add r2, sl
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B2A56
	ldrh r3, [r2, #4]
.L080B2A56:
	adds r6, r4, #0
	add r0, sp, #0x30
	ldr r2, .L080B2A84 @ =0x05000360
	bl func_08008F0C
	ldr r0, [sp, #0x118]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B2A88
	cmp r1, #0
	beq .L080B2A7C
	adds r0, r1, #0
	ldr r1, [sp, #0x118]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2A7C:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B2B50
	.align 2, 0
.L080B2A84: .4byte 0x05000360
.L080B2A88:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xa4
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x134]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xa0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B2AA4
	adds r0, r1, #0
.L080B2AA4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B2AC2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B2AC6
	mov r0, r8
	bl func_080D3BC0
	b .L080B2AC6
.L080B2AC2:
	movs r0, #0
	mov r8, r0
.L080B2AC6:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080B2AEE
.L080B2AD4:
	cmp r3, #0
	beq .L080B2AE4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2AE4:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B2AD4
.L080B2AEE:
	adds r5, r3, #0
	ldr r1, [sp, #0xa4]
	cmp r1, #1
	bne .L080B2B0A
	cmp r5, #0
	beq .L080B2B06
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2B06:
	adds r5, #0x10
	b .L080B2B2C
.L080B2B0A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B2B2A
.L080B2B12:
	cmp r2, #0
	beq .L080B2B22
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2B22:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B2B12
.L080B2B2A:
	adds r5, r2, #0
.L080B2B2C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B2B3C
.L080B2B36:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2B36
.L080B2B3C:
	cmp r0, #0
	beq .L080B2B44
	bl free
.L080B2B44:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B2B50:
	movs r0, #0x91
	lsls r0, r0, #4
	add r0, sl
	ldr r1, .L080B2B90 @ =0x0000090E
	add r1, sl
	ldr r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bge .L080B2B98
	movs r0, #0x14
	bl __builtin_new
	movs r1, #0x87
	lsls r1, r1, #3
	add r1, sl
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r5, r0, #0
	ldr r4, .L080B2B94 @ =0x000007E4
	add r4, sl
	ldr r0, [r4]
	cmp r5, r0
	beq .L080B2B8A
	bl __builtin_delete
.L080B2B8A:
	str r5, [r4]
	b .L080B2BC8
	.align 2, 0
.L080B2B90: .4byte 0x0000090E
.L080B2B94: .4byte 0x000007E4
.L080B2B98:
	movs r0, #0x14
	bl __builtin_new
	ldr r1, .L080B2CB8 @ =0x00000434
	add r1, sl
	ldr r1, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	movs r2, #0
	bl func_0805E824
	adds r5, r0, #0
	ldr r4, .L080B2CBC @ =0x000007E4
	add r4, sl
	ldr r0, [r4]
	cmp r5, r0
	beq .L080B2BBE
	bl __builtin_delete
.L080B2BBE:
	str r5, [r4]
	ldr r1, .L080B2CC0 @ =0x0000092C
	add r1, sl
	movs r0, #1
	strb r0, [r1]
.L080B2BC8:
	movs r0, #0x1c
	bl __builtin_new
	adds r4, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	strh r0, [r4, #8]
	str r0, [r4, #0xc]
	strb r1, [r4, #0x10]
	strb r1, [r4, #0x11]
	str r0, [r4, #0x14]
	strb r1, [r4, #0x18]
	movs r7, #0xfd
	lsls r7, r7, #3
	add r7, sl
	ldr r0, [r7]
	cmp r4, r0
	beq .L080B2BF8
	bl __builtin_delete
.L080B2BF8:
	str r4, [r7]
	ldr r6, .L080B2CBC @ =0x000007E4
	add r6, sl
	ldr r0, [r6]
	movs r1, #0
	bl func_0805E860
	ldr r0, [r7]
	movs r1, #0x40
	strh r1, [r0]
	ldr r0, [r7]
	strh r1, [r0, #2]
	ldr r4, [r7]
	ldr r5, .L080B2CC4 @ =0x000008D8
	add r5, sl
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	strh r0, [r4, #6]
	ldr r1, [r7]
	movs r0, #0xc
	strh r0, [r1, #4]
	ldr r0, [r7]
	movs r1, #1
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x18]
	ldr r4, .L080B2CC8 @ =0x000007EC
	add r4, sl
	ldr r0, [r6]
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r0, #4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x30
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x118]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r0, [sp, #0x118]
	ldm r0!, {r3, r6, r7}
	stm r4!, {r3, r6, r7}
	ldm r0!, {r1, r2, r3}
	stm r4!, {r1, r2, r3}
	ldm r0!, {r6, r7}
	stm r4!, {r6, r7}
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	ldr r4, .L080B2CCC @ =0x000007F4
	add r4, sl
	ldr r7, [r4]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [r4]
	movs r3, #0
	cmp r0, #0
	beq .L080B2C86
	ldrh r3, [r4, #4]
.L080B2C86:
	lsls r2, r2, #5
	ldr r0, .L080B2CD0 @ =0x06010000
	adds r2, r2, r0
	ldr r0, [sp, #0x118]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r1, [sp, #0x118]
	mov sb, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B2CD4
	cmp r1, #0
	beq .L080B2CB0
	adds r0, r1, #0
	ldr r1, [sp, #0x118]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2CB0:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B2D98
	.align 2, 0
.L080B2CB8: .4byte 0x00000434
.L080B2CBC: .4byte 0x000007E4
.L080B2CC0: .4byte 0x0000092C
.L080B2CC4: .4byte 0x000008D8
.L080B2CC8: .4byte 0x000007EC
.L080B2CCC: .4byte 0x000007F4
.L080B2CD0: .4byte 0x06010000
.L080B2CD4:
	str r1, [sp, #0x134]
	add r1, sp, #0xac
	mov r5, r8
	str r5, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0x134]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xa8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B2CF0
	adds r0, r1, #0
.L080B2CF0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B2D0E
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B2D12
	mov r0, r8
	bl func_080D3BC0
	b .L080B2D12
.L080B2D0E:
	movs r0, #0
	mov r8, r0
.L080B2D12:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080B2D30
.L080B2D1C:
	cmp r3, #0
	beq .L080B2D2C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2D2C:
	adds r2, #0x10
	adds r3, #0x10
.L080B2D30:
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B2D1C
	adds r5, r3, #0
	ldr r1, [sp, #0xac]
	cmp r1, #1
	bne .L080B2D52
	cmp r5, #0
	beq .L080B2D4E
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2D4E:
	adds r5, #0x10
	b .L080B2D74
.L080B2D52:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B2D72
.L080B2D5A:
	cmp r2, #0
	beq .L080B2D6A
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2D6A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B2D5A
.L080B2D72:
	adds r5, r2, #0
.L080B2D74:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B2D84
.L080B2D7E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2D7E
.L080B2D84:
	cmp r0, #0
	beq .L080B2D8C
	bl free
.L080B2D8C:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B2D98:
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	ldr r2, .L080B2DE0 @ =0x000007FC
	add r2, sl
	ldr r0, [r2]
	adds r1, r0, #0
	movs r3, #0
	cmp r1, #0
	beq .L080B2DB0
	ldrh r3, [r2, #4]
.L080B2DB0:
	adds r6, r4, #0
	add r0, sp, #0x30
	ldr r2, .L080B2DE4 @ =0x05000380
	bl func_08008F0C
	ldr r0, [sp, #0x118]
	mov sb, r0
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080B2DE8
	cmp r1, #0
	beq .L080B2DD6
	adds r0, r1, #0
	ldr r1, [sp, #0x118]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2DD6:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080B2EB0
	.align 2, 0
.L080B2DE0: .4byte 0x000007FC
.L080B2DE4: .4byte 0x05000380
.L080B2DE8:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xb4
	str r0, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0x134]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xb0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B2E04
	adds r0, r1, #0
.L080B2E04:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B2E22
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B2E26
	mov r0, r8
	bl func_080D3BC0
	b .L080B2E26
.L080B2E22:
	movs r0, #0
	mov r8, r0
.L080B2E26:
	adds r5, r0, #0
	str r5, [sp, #0x138]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080B2E4E
.L080B2E34:
	cmp r3, #0
	beq .L080B2E44
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2E44:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B2E34
.L080B2E4E:
	adds r5, r3, #0
	ldr r1, [sp, #0xb4]
	cmp r1, #1
	bne .L080B2E6A
	cmp r5, #0
	beq .L080B2E66
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B2E66:
	adds r5, #0x10
	b .L080B2E8C
.L080B2E6A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080B2E8A
.L080B2E72:
	cmp r2, #0
	beq .L080B2E82
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B2E82:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B2E72
.L080B2E8A:
	adds r5, r2, #0
.L080B2E8C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B2E9C
.L080B2E96:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B2E96
.L080B2E9C:
	cmp r0, #0
	beq .L080B2EA4
	bl free
.L080B2EA4:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080B2EB0:
	mov r0, sl
	bl func_080B0934
	ldr r0, .L080B2EE8 @ =0x0000080C
	add r0, sl
	ldr r2, .L080B2EEC @ =0x0000FFFF
	movs r1, #0xcd
	bl func_08008C38
	mov r0, sl
	bl func_080AF814
	movs r0, #0
	str r0, [sp, #0xf0]
	movs r1, #0
	str r1, [sp, #0xf4]
	ldr r1, [sp, #0x118]
	movs r2, #0
	adds r0, r1, #0
	adds r0, #8
.L080B2ED8:
	str r2, [r0]
	subs r0, #4
	cmp r0, r1
	bge .L080B2ED8
	movs r2, #0
	str r2, [sp, #0xf8]
	b .L080B34BA
	.align 2, 0
.L080B2EE8: .4byte 0x0000080C
.L080B2EEC: .4byte 0x0000FFFF
.L080B2EF0:
	mov r0, sl
	bl func_080087C8
	mov r0, sl
	bl func_080088B8
	movs r1, #0x84
	lsls r1, r1, #4
	add r1, sl
	ldr r0, [r1]
	cmp r0, #0
	bne .L080B2F1C
	ldr r3, [sp, #0xf0]
	adds r3, #1
	str r3, [sp, #0xf0]
	cmp r3, #0x78
	beq .L080B2F14
	b .L080B34B4
.L080B2F14:
	movs r4, #0
	str r4, [sp, #0xf0]
	movs r0, #1
	b .L080B34B2
.L080B2F1C:
	mov r0, sl
	bl func_080088D4
	str r0, [sp, #0xfc]
	movs r4, #0x83
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r4]
	bl func_08050D34
	adds r7, r0, #0
	ldr r4, [r4]
	mov sb, r4
	mov r0, sl
	bl func_080088DC
	mov r8, r0
	mov r0, sl
	bl func_08008920
	adds r6, r0, #0
	mov r0, sl
	bl func_08008918
	adds r5, r0, #0
	mov r0, sl
	bl func_08008940
	adds r4, r0, #0
	mov r0, sl
	bl func_0800894C
	movs r1, #0x81
	lsls r1, r1, #4
	add r1, sl
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, sb
	mov r1, r8
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	cmp r0, #6
	bhi .L080B2FD0
	lsls r0, r0, #2
	ldr r1, .L080B2F84 @ =.L080B2F88
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B2F84: .4byte .L080B2F88
.L080B2F88: @ jump table
	.4byte .L080B2FA4 @ case 0
	.4byte .L080B2FD0 @ case 1
	.4byte .L080B2FD0 @ case 2
	.4byte .L080B2FB2 @ case 3
	.4byte .L080B2FD0 @ case 4
	.4byte .L080B2FD0 @ case 5
	.4byte .L080B2FD0 @ case 6
.L080B2FA4:
	movs r0, #0x83
	lsls r0, r0, #3
	add r0, sl
	ldr r0, [r0]
	bl func_08050D5C
	b .L080B2FD0
.L080B2FB2:
	cmp r7, #1
	bne .L080B2FD0
	movs r4, #0x83
	lsls r4, r4, #3
	add r4, sl
	ldr r0, [r4]
	ldr r1, .L080B2FE8 @ =gUnk_08107850
	bl func_08050D8C
	ldr r0, [r4]
	bl func_08050DD8
	ldr r0, .L080B2FEC @ =0x0000092A
	add r0, sl
	strb r7, [r0]
.L080B2FD0:
	movs r0, #0x84
	lsls r0, r0, #4
	add r0, sl
	ldr r0, [r0]
	cmp r0, #2
	bne .L080B2FDE
	b .L080B343C
.L080B2FDE:
	cmp r0, #2
	bgt .L080B2FF0
	cmp r0, #1
	beq .L080B2FF8
	b .L080B34B4
	.align 2, 0
.L080B2FE8: .4byte gUnk_08107850
.L080B2FEC: .4byte 0x0000092A
.L080B2FF0:
	cmp r0, #3
	bne .L080B2FF6
	b .L080B3494
.L080B2FF6:
	b .L080B34B4
.L080B2FF8:
	ldr r0, .L080B3094 @ =0x0000092A
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B3004
	b .L080B34B4
.L080B3004:
	ldr r5, [sp, #0xe0]
	adds r5, #1
	str r5, [sp, #0xe0]
	ldr r6, [sp, #0xf8]
	lsls r6, r6, #2
	str r6, [sp, #0x108]
	cmp r5, #0x14
	beq .L080B3016
	b .L080B31F4
.L080B3016:
	movs r7, #0
	str r7, [sp, #0xe0]
	ldr r0, [sp, #0x118]
	adds r4, r0, r6
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	ldr r0, .L080B3098 @ =0x00000814
	add r0, sl
	movs r1, #0xa6
	bl func_08008B6C
	ldr r0, [r4]
	ldr r1, [sp, #0x110]
	movs r2, #0
	bl func_0804EC84
	ldr r1, [sp, #0xf8]
	lsls r4, r1, #6
	adds r0, r4, r1
	lsls r5, r0, #2
	mov r2, sl
	adds r1, r5, r2
	add r0, sp, #0xb8
	movs r6, #4
	movs r7, #2
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [r0]
	movs r3, #0x88
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r2, #0
	bl func_0804E7A0
	ldr r0, [sp, #0xf8]
	cmp r0, #1
	beq .L080B309C
	ldr r0, [sp, #0x110]
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	mov r3, sl
	adds r1, r5, r3
	movs r3, #5
	add r0, sp, #0xbc
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [r0]
	movs r5, #0x88
	lsls r5, r5, #1
	adds r1, r1, r5
	ldr r6, [sp, #0x110]
	str r6, [sp]
	ldr r7, [sp, #0xe0]
	str r7, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	b .L080B30C8
	.align 2, 0
.L080B3094: .4byte 0x0000092A
.L080B3098: .4byte 0x00000814
.L080B309C:
	ldr r0, [sp, #0x110]
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	movs r3, #7
	add r0, sp, #0xc0
	strh r6, [r0]
	strh r7, [r0, #2]
	ldr r0, [r0]
	movs r1, #0x85
	lsls r1, r1, #2
	add r1, sl
	ldr r5, [sp, #0x110]
	str r5, [sp]
	ldr r6, [sp, #0xe0]
	str r6, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
.L080B30C8:
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0xf8]
	adds r4, r4, r7
	lsls r4, r4, #2
	add r4, sl
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0x8d
	lsls r0, r0, #4
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r2, r7, #3
	adds r2, r2, r0
	movs r3, #0x80
	lsls r3, r3, #1
	lsls r2, r2, #5
	ldr r1, .L080B3128 @ =0x06010000
	adds r2, r2, r1
	add r0, sp, #0x3c
	adds r1, r4, #0
	bl func_08008F0C
	add r2, sp, #0x3c
	mov sb, r2
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	mov r3, sb
	str r3, [sp, #0x120]
	cmp r1, r0
	beq .L080B312C
	cmp r1, #0
	beq .L080B3120
	adds r0, r1, #0
	adds r1, r3, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B3120:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080B31F4
	.align 2, 0
.L080B3128: .4byte 0x06010000
.L080B312C:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xc8
	str r0, [r1]
	ldr r0, [r5]
	ldr r2, [sp, #0x134]
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xc4
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B3148
	adds r0, r1, #0
.L080B3148:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B3166
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B316A
	mov r0, r8
	bl func_080D3BC0
	b .L080B316A
.L080B3166:
	movs r0, #0
	mov r8, r0
.L080B316A:
	adds r6, r0, #0
	str r6, [sp, #0x138]
	ldr r2, [r5]
	adds r3, r6, #0
	ldr r4, [sp, #0x134]
	cmp r2, r4
	beq .L080B3192
.L080B3178:
	cmp r3, #0
	beq .L080B3188
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B3188:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x134]
	cmp r2, r6
	bne .L080B3178
.L080B3192:
	adds r6, r3, #0
	ldr r1, [sp, #0xc8]
	cmp r1, #1
	bne .L080B31AE
	cmp r6, #0
	beq .L080B31AA
	adds r0, r6, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B31AA:
	adds r6, #0x10
	b .L080B31D0
.L080B31AE:
	adds r3, r1, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080B31CE
.L080B31B6:
	cmp r2, #0
	beq .L080B31C6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B31C6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B31B6
.L080B31CE:
	adds r6, r2, #0
.L080B31D0:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B31E0
.L080B31DA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B31DA
.L080B31E0:
	cmp r0, #0
	beq .L080B31E8
	bl free
.L080B31E8:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r1, [sp, #0x138]
	str r1, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080B31F4:
	ldr r2, [sp, #0x118]
	ldr r3, [sp, #0x108]
	adds r0, r2, r3
	adds r1, r3, #0
	add r1, sp
	adds r1, #0x10
	ldr r2, [r0]
	ldr r0, [r1]
	cmp r2, r0
	bne .L080B320E
	ldr r4, [sp, #0xf8]
	adds r4, #1
	str r4, [sp, #0xf8]
.L080B320E:
	movs r0, #9
	ldr r5, [sp, #0xfc]
	ands r0, r5
	cmp r0, #0
	bne .L080B321A
	b .L080B3418
.L080B321A:
	movs r6, #0
	mov sb, r6
	mov r7, sp
	adds r7, #0x3c
	str r7, [sp, #0x120]
	mov r0, sp
	adds r0, #0xcc
	str r0, [sp, #0x12c]
	mov r1, sp
	adds r1, #0xd0
	str r1, [sp, #0x100]
.L080B3230:
	mov r2, sb
	lsls r0, r2, #2
	ldr r3, [sp, #0x118]
	adds r1, r3, r0
	add r0, sp
	adds r0, #0x10
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, [sp, #0x110]
	movs r2, #0
	bl func_0804EC84
	mov r5, sb
	lsls r4, r5, #6
	adds r0, r4, r5
	lsls r5, r0, #2
	mov r6, sl
	adds r1, r5, r6
	add r0, sp, #0xcc
	movs r7, #4
	strh r7, [r0]
	movs r3, #2
	ldr r2, [sp, #0x12c]
	strh r3, [r2, #2]
	ldr r0, [r0]
	movs r6, #0x88
	lsls r6, r6, #1
	adds r1, r1, r6
	movs r2, #0
	bl func_0804E7A0
	mov r7, sb
	cmp r7, #1
	beq .L080B32AA
	ldr r0, [sp, #0x110]
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	mov r0, sl
	adds r1, r5, r0
	movs r3, #5
	movs r6, #4
	ldr r5, [sp, #0x100]
	strh r6, [r5]
	movs r7, #2
	strh r7, [r5, #2]
	ldr r0, [r5]
	movs r5, #0x88
	lsls r5, r5, #1
	adds r1, r1, r5
	ldr r6, [sp, #0x110]
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	b .L080B32DA
.L080B32AA:
	ldr r0, [sp, #0x110]
	bl strlen
	lsls r0, r0, #3
	movs r2, #0x20
	subs r2, r2, r0
	movs r1, #7
	add r0, sp, #0xd4
	movs r3, #4
	strh r3, [r0]
	movs r5, #2
	strh r5, [r0, #2]
	ldr r0, [r0]
	ldr r6, [sp, #0x110]
	str r6, [sp]
	movs r7, #0
	str r7, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x85
	lsls r1, r1, #2
	add r1, sl
	movs r3, #0
	bl func_0804E958
.L080B32DA:
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	add r4, sb
	lsls r4, r4, #2
	add r4, sl
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r4, r0
	movs r0, #0x8d
	lsls r0, r0, #4
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r1, sb
	lsls r2, r1, #3
	adds r2, r2, r0
	lsls r2, r2, #5
	ldr r3, .L080B333C @ =0x06010000
	adds r2, r2, r3
	add r0, sp, #0x3c
	adds r1, r4, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_08008F0C
	ldr r4, [sp, #0x120]
	str r4, [sp, #0x104]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080B3340
	cmp r1, #0
	beq .L080B332E
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B332E:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	mov r3, sb
	adds r3, #1
	str r3, [sp, #0x10c]
	b .L080B340E
	.align 2, 0
.L080B333C: .4byte 0x06010000
.L080B3340:
	str r1, [sp, #0x134]
	movs r0, #1
	add r1, sp, #0xdc
	str r0, [r1]
	ldr r0, [r5]
	ldr r4, [sp, #0x134]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0xd8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080B335C
	adds r0, r1, #0
.L080B335C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080B337A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080B337E
	mov r0, r8
	bl func_080D3BC0
	b .L080B337E
.L080B337A:
	movs r0, #0
	mov r8, r0
.L080B337E:
	adds r6, r0, #0
	str r6, [sp, #0x138]
	ldr r2, [r5]
	adds r3, r6, #0
	mov r6, sb
	adds r6, #1
	str r6, [sp, #0x10c]
	ldr r7, [sp, #0x134]
	cmp r2, r7
	beq .L080B33AC
.L080B3392:
	cmp r3, #0
	beq .L080B33A2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B33A2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x134]
	cmp r2, r0
	bne .L080B3392
.L080B33AC:
	adds r6, r3, #0
	ldr r1, [sp, #0xdc]
	cmp r1, #1
	bne .L080B33C8
	cmp r6, #0
	beq .L080B33C4
	adds r0, r6, #0
	ldr r1, [sp, #0x104]
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080B33C4:
	adds r6, #0x10
	b .L080B33EA
.L080B33C8:
	adds r3, r1, #0
	adds r2, r6, #0
	cmp r3, #0
	beq .L080B33E8
.L080B33D0:
	cmp r2, #0
	beq .L080B33E0
	adds r0, r2, #0
	ldr r1, [sp, #0x104]
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080B33E0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080B33D0
.L080B33E8:
	adds r6, r2, #0
.L080B33EA:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080B33FA
.L080B33F4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080B33F4
.L080B33FA:
	cmp r0, #0
	beq .L080B3402
	bl free
.L080B3402:
	ldr r0, [sp, #0x138]
	add r0, r8
	ldr r7, [sp, #0x138]
	str r7, [r5]
	str r6, [r5, #4]
	str r0, [r5, #0xc]
.L080B340E:
	ldr r0, [sp, #0x10c]
	mov sb, r0
	cmp r0, #2
	bgt .L080B3418
	b .L080B3230
.L080B3418:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bne .L080B34B4
	ldr r2, [sp, #0x118]
	ldr r1, [r2, #4]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bne .L080B34B4
	ldr r1, [r2, #8]
	ldr r0, [sp, #0x18]
	cmp r1, r0
	bne .L080B34B4
	movs r1, #0x84
	lsls r1, r1, #4
	add r1, sl
	movs r0, #2
	b .L080B34B2
.L080B343C:
	ldr r3, [sp, #0xf4]
	adds r3, #1
	str r3, [sp, #0xf4]
	cmp r3, #0x3c
	bne .L080B347A
	ldr r1, .L080B3464 @ =0x0000092B
	add r1, sl
	movs r0, #1
	strb r0, [r1]
	ldr r0, .L080B3468 @ =0x0000092C
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080B3470
	ldr r0, .L080B346C @ =0x00000814
	add r0, sl
	movs r1, #0xb7
	bl func_08008B6C
	b .L080B347A
	.align 2, 0
.L080B3464: .4byte 0x0000092B
.L080B3468: .4byte 0x0000092C
.L080B346C: .4byte 0x00000814
.L080B3470:
	ldr r0, .L080B3490 @ =0x00000814
	add r0, sl
	movs r1, #0xb6
	bl func_08008B6C
.L080B347A:
	ldr r4, [sp, #0xf4]
	cmp r4, #0xf0
	bne .L080B34B4
	movs r5, #0
	str r5, [sp, #0xf4]
	movs r1, #0x84
	lsls r1, r1, #4
	add r1, sl
	movs r0, #3
	b .L080B34B2
	.align 2, 0
.L080B3490: .4byte 0x00000814
.L080B3494:
	ldr r6, [sp, #0xf4]
	adds r6, #1
	str r6, [sp, #0xf4]
	movs r0, #9
	ldr r7, [sp, #0xfc]
	ands r0, r7
	cmp r0, #0
	bne .L080B34AC
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r6, r0
	bne .L080B34B4
.L080B34AC:
	ldr r1, .L080B34D8 @ =0x00000838
	add r1, sl
	movs r0, #5
.L080B34B2:
	str r0, [r1]
.L080B34B4:
	mov r0, sl
	bl func_080AF814
.L080B34BA:
	ldr r0, .L080B34D8 @ =0x00000838
	add r0, sl
	ldr r0, [r0]
	cmp r0, #4
	bne .L080B34C6
	b .L080B2EF0
.L080B34C6:
	add sp, #0x13c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B34D8: .4byte 0x00000838

	thumb_func_start func_080B34DC
func_080B34DC: @ 0x080B34DC
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r2, #0
	movs r0, #0x8e
	lsls r0, r0, #4
	adds r5, r3, r0
	ldr r6, .L080B34FC @ =gUnk_0810787C
	subs r0, #0x5c
	adds r4, r3, r0
.L080B34EE:
	adds r1, r2, r6
	ldrb r0, [r5]
	ldrb r1, [r1]
	cmp r0, r1
	bne .L080B3500
	str r2, [r4]
	b .L080B350E
	.align 2, 0
.L080B34FC: .4byte gUnk_0810787C
.L080B3500:
	adds r2, #1
	cmp r2, #4
	ble .L080B34EE
	ldr r0, .L080B3514 @ =0x00000884
	adds r1, r3, r0
	movs r0, #5
	str r0, [r1]
.L080B350E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080B3514: .4byte 0x00000884

	thumb_func_start func_080B3518
func_080B3518: @ 0x080B3518
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	bl func_080088D4
	adds r0, r4, #0
	bl func_080088C4
	adds r7, r0, #0
	adds r0, r4, #0
	bl func_080088CC
	mov r8, r0
	ldr r0, .L080B3548 @ =0x00000844
	adds r6, r4, r0
	ldr r1, [r6]
	cmp r1, #2
	bgt .L080B354C
	cmp r1, #1
	bge .L080B3552
	cmp r1, #0
	beq .L080B35B4
	b .L080B3642
	.align 2, 0
.L080B3548: .4byte 0x00000844
.L080B354C:
	cmp r1, #3
	beq .L080B3614
	b .L080B3642
.L080B3552:
	movs r5, #0x30
	ands r5, r7
	cmp r5, #0
	bne .L080B357C
	adds r0, r4, #0
	bl func_080B34DC
	ldr r1, .L080B3574 @ =0x00000884
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #5
	beq .L080B3642
	str r5, [r6]
	ldr r2, .L080B3578 @ =0x00000929
	adds r1, r4, r2
	b .L080B3608
	.align 2, 0
.L080B3574: .4byte 0x00000884
.L080B3578: .4byte 0x00000929
.L080B357C:
	movs r0, #0x20
	ands r0, r7
	cmp r0, #0
	beq .L080B358E
	cmp r1, #1
	beq .L080B358E
	movs r1, #1
	str r1, [r6]
	b .L080B35E2
.L080B358E:
	movs r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq .L080B3642
	ldr r0, .L080B35AC @ =0x00000844
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #2
	beq .L080B3642
	movs r0, #2
	str r0, [r1]
	ldr r2, .L080B35B0 @ =0x00000929
	adds r1, r4, r2
	b .L080B3608
	.align 2, 0
.L080B35AC: .4byte 0x00000844
.L080B35B0: .4byte 0x00000929
.L080B35B4:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	beq .L080B35CC
	ldr r1, .L080B35EC @ =0x00000914
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080B35CC
	adds r0, r4, #0
	bl func_080B3A28
.L080B35CC:
	ldr r0, .L080B35F0 @ =0x00000844
	adds r2, r4, r0
	ldr r0, [r2]
	cmp r0, #0
	bne .L080B3642
	movs r0, #0x20
	ands r0, r7
	cmp r0, #0
	beq .L080B35F8
	movs r1, #1
	str r1, [r2]
.L080B35E2:
	ldr r2, .L080B35F4 @ =0x00000929
	adds r0, r4, r2
	strb r1, [r0]
	b .L080B3642
	.align 2, 0
.L080B35EC: .4byte 0x00000914
.L080B35F0: .4byte 0x00000844
.L080B35F4: .4byte 0x00000929
.L080B35F8:
	movs r0, #0x10
	ands r0, r7
	cmp r0, #0
	beq .L080B3642
	movs r0, #2
	str r0, [r2]
	ldr r0, .L080B3610 @ =0x00000929
	adds r1, r4, r0
.L080B3608:
	movs r0, #1
	strb r0, [r1]
	b .L080B3642
	.align 2, 0
.L080B3610: .4byte 0x00000929
.L080B3614:
	ldr r1, .L080B3670 @ =0x000008FA
	adds r2, r4, r1
	ldrb r0, [r2]
	adds r0, #1
	movs r3, #0
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls .L080B3642
	str r3, [r6]
	adds r1, #0x2f
	adds r0, r4, r1
	movs r1, #1
	strb r1, [r0]
	strb r3, [r2]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq .L080B3642
	ldr r2, .L080B3674 @ =0x00000914
	adds r0, r4, r2
	strb r3, [r0]
.L080B3642:
	ldr r0, .L080B3674 @ =0x00000914
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne .L080B3656
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	bne .L080B3656
	strb r0, [r1]
.L080B3656:
	ldr r1, .L080B3678 @ =0x00000844
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #1
	bne .L080B367C
	movs r2, #0x8e
	lsls r2, r2, #4
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #0x49
	bls .L080B367C
	subs r0, #2
	b .L080B3694
	.align 2, 0
.L080B3670: .4byte 0x000008FA
.L080B3674: .4byte 0x00000914
.L080B3678: .4byte 0x00000844
.L080B367C:
	ldr r1, .L080B36B0 @ =0x00000844
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #2
	bne .L080B3696
	movs r2, #0x8e
	lsls r2, r2, #4
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #0xa6
	bhi .L080B3696
	adds r0, #2
.L080B3694:
	strb r0, [r1]
.L080B3696:
	movs r0, #8
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq .L080B36A6
	adds r0, r4, #0
	bl func_080B3BA8
.L080B36A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B36B0: .4byte 0x00000844

	thumb_func_start func_080B36B4
func_080B36B4: @ 0x080B36B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r7, #0
.L080B36BE:
	ldr r1, .L080B3708 @ =0x00000915
	adds r0, r5, r1
	adds r6, r0, r7
	ldrb r0, [r6]
	cmp r0, #0
	beq .L080B36EA
	movs r4, #0xb4
	bl rand
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r4, r1
	asrs r1, r1, #0x10
	lsls r2, r7, #1
	ldr r3, .L080B370C @ =0x000008E6
	adds r0, r5, r3
	adds r0, r0, r2
	movs r2, #0
	adds r1, #0xb4
	strh r1, [r0]
	strb r2, [r6]
.L080B36EA:
	lsls r0, r7, #2
	ldr r4, .L080B3710 @ =0x00000848
	adds r1, r5, r4
	adds r1, r1, r0
	ldr r1, [r1]
	subs r1, #1
	adds r4, r0, #0
	cmp r1, #5
	bls .L080B36FE
	b .L080B3924
.L080B36FE:
	lsls r0, r1, #2
	ldr r1, .L080B3714 @ =.L080B3718
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080B3708: .4byte 0x00000915
.L080B370C: .4byte 0x000008E6
.L080B3710: .4byte 0x00000848
.L080B3714: .4byte .L080B3718
.L080B3718: @ jump table
	.4byte .L080B3840 @ case 0
	.4byte .L080B38D0 @ case 1
	.4byte .L080B3730 @ case 2
	.4byte .L080B379C @ case 3
	.4byte .L080B3924 @ case 4
	.4byte .L080B3800 @ case 5
.L080B3730:
	ldr r6, .L080B3784 @ =0x000008E1
	adds r0, r5, r6
	adds r1, r0, r7
	ldrb r0, [r1]
	cmp r0, #0x70
	bls .L080B3740
	subs r0, #1
	strb r0, [r1]
.L080B3740:
	ldrb r0, [r1]
	cmp r0, #0x70
	beq .L080B3748
	b .L080B3924
.L080B3748:
	ldr r1, .L080B3788 @ =0x00000848
	adds r0, r5, r1
	adds r0, r0, r4
	movs r3, #1
	str r3, [r0]
	ldr r2, .L080B378C @ =0x0000085C
	adds r0, r5, r2
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r4, .L080B3790 @ =0x00000915
	adds r0, r5, r4
	adds r0, r0, r7
	movs r2, #0
	strb r3, [r0]
	lsls r1, r7, #1
	movs r6, #0x8f
	lsls r6, r6, #4
	adds r0, r5, r6
	adds r0, r0, r1
	strh r2, [r0]
	ldr r1, .L080B3794 @ =0x0000091A
	adds r0, r5, r1
	adds r0, r0, r7
	strb r3, [r0]
	ldr r2, .L080B3798 @ =0x0000091F
	adds r0, r5, r2
	adds r0, r0, r7
	strb r3, [r0]
	b .L080B3924
	.align 2, 0
.L080B3784: .4byte 0x000008E1
.L080B3788: .4byte 0x00000848
.L080B378C: .4byte 0x0000085C
.L080B3790: .4byte 0x00000915
.L080B3794: .4byte 0x0000091A
.L080B3798: .4byte 0x0000091F
.L080B379C:
	ldr r3, .L080B37EC @ =0x000008E1
	adds r1, r5, r3
	adds r1, r1, r7
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xa8
	beq .L080B37B2
	b .L080B3924
.L080B37B2:
	ldr r6, .L080B37F0 @ =0x00000848
	adds r0, r5, r6
	adds r0, r0, r4
	movs r1, #5
	str r1, [r0]
	ldr r1, .L080B37F4 @ =0x0000085C
	adds r0, r5, r1
	adds r0, r0, r4
	movs r2, #1
	str r2, [r0]
	adds r3, #0x2c
	adds r1, r5, r3
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r4, .L080B37F8 @ =0x0000091A
	adds r0, r5, r4
	adds r0, r0, r7
	strb r2, [r0]
	adds r6, #0xd7
	adds r0, r5, r6
	adds r0, r0, r7
	strb r2, [r0]
	ldr r1, .L080B37FC @ =0x00000814
	adds r0, r5, r1
	movs r1, #0xc7
	bl func_08008B6C
	b .L080B3924
	.align 2, 0
.L080B37EC: .4byte 0x000008E1
.L080B37F0: .4byte 0x00000848
.L080B37F4: .4byte 0x0000085C
.L080B37F8: .4byte 0x0000091A
.L080B37FC: .4byte 0x00000814
.L080B3800:
	lsls r1, r7, #1
	ldr r2, .L080B3834 @ =0x000008FC
	adds r0, r5, r2
	adds r2, r0, r1
	ldrh r1, [r2]
	adds r1, #1
	movs r3, #0
	strh r1, [r2]
	lsls r1, r1, #0x10
	movs r0, #0x96
	lsls r0, r0, #0x11
	cmp r1, r0
	beq .L080B381C
	b .L080B3924
.L080B381C:
	strh r3, [r2]
	ldr r3, .L080B3838 @ =0x00000848
	adds r0, r5, r3
	adds r0, r0, r4
	movs r1, #3
	str r1, [r0]
	ldr r4, .L080B383C @ =0x0000091A
	adds r0, r5, r4
	adds r0, r0, r7
	movs r1, #1
	strb r1, [r0]
	b .L080B3924
	.align 2, 0
.L080B3834: .4byte 0x000008FC
.L080B3838: .4byte 0x00000848
.L080B383C: .4byte 0x0000091A
.L080B3840:
	lsls r2, r7, #1
	movs r6, #0x8f
	lsls r6, r6, #4
	adds r0, r5, r6
	adds r3, r0, r2
	ldrh r1, [r3]
	adds r1, #1
	movs r0, #0
	mov ip, r0
	movs r6, #0
	mov r8, r6
	strh r1, [r3]
	ldr r6, .L080B38B8 @ =0x000008E6
	adds r0, r5, r6
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r0, #1
	cmp r1, r0
	bne .L080B388C
	mov r0, r8
	strh r0, [r3]
	ldr r1, .L080B38BC @ =0x00000848
	adds r0, r5, r1
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	movs r2, #0x87
	lsls r2, r2, #4
	adds r0, r5, r2
	adds r0, r0, r4
	movs r1, #1
	str r1, [r0]
	ldr r3, .L080B38C0 @ =0x0000091A
	adds r0, r5, r3
	adds r0, r0, r7
	strb r1, [r0]
.L080B388C:
	ldr r4, .L080B38C4 @ =0x00000924
	adds r0, r5, r4
	adds r2, r0, r7
	ldrb r0, [r2]
	cmp r0, #0
	beq .L080B3924
	ldr r6, .L080B38C8 @ =0x0000090C
	adds r0, r5, r6
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	mov r1, ip
	strb r1, [r2]
	ldrb r0, [r0]
	cmp r0, #5
	bls .L080B3924
	ldr r2, .L080B38CC @ =0x0000081C
	adds r0, r5, r2
	movs r1, #0xbc
	bl func_08008B6C
	b .L080B3924
	.align 2, 0
.L080B38B8: .4byte 0x000008E6
.L080B38BC: .4byte 0x00000848
.L080B38C0: .4byte 0x0000091A
.L080B38C4: .4byte 0x00000924
.L080B38C8: .4byte 0x0000090C
.L080B38CC: .4byte 0x0000081C
.L080B38D0:
	lsls r2, r7, #1
	movs r3, #0x8f
	lsls r3, r3, #4
	adds r0, r5, r3
	adds r3, r0, r2
	ldrh r1, [r3]
	adds r1, #1
	movs r6, #0
	mov r8, r6
	strh r1, [r3]
	ldr r6, .L080B3938 @ =0x000008E6
	adds r0, r5, r6
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsrs r0, r0, #1
	cmp r1, r0
	bne .L080B3924
	mov r0, r8
	strh r0, [r3]
	ldr r1, .L080B393C @ =0x00000848
	adds r0, r5, r1
	adds r0, r0, r4
	movs r1, #4
	str r1, [r0]
	movs r2, #0x87
	lsls r2, r2, #4
	adds r0, r5, r2
	adds r0, r0, r4
	movs r1, #2
	str r1, [r0]
	ldr r3, .L080B3940 @ =0x0000091A
	adds r0, r5, r3
	adds r0, r0, r7
	movs r1, #1
	strb r1, [r0]
	ldr r4, .L080B3944 @ =0x00000814
	adds r0, r5, r4
	movs r1, #0xa6
	bl func_08008B6C
.L080B3924:
	adds r7, #1
	cmp r7, #4
	bgt .L080B392C
	b .L080B36BE
.L080B392C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B3938: .4byte 0x000008E6
.L080B393C: .4byte 0x00000848
.L080B3940: .4byte 0x0000091A
.L080B3944: .4byte 0x00000814

	thumb_func_start func_080B3948
func_080B3948: @ 0x080B3948
	push {r4, r5, lr}
	ldr r1, .L080B3988 @ =0x0000085C
	adds r2, r0, r1
	ldr r3, .L080B398C @ =0x00000906
	adds r1, r0, r3
	movs r5, #1
	movs r4, #4
.L080B3956:
	ldr r0, [r2]
	cmp r0, #2
	bgt .L080B3976
	cmp r0, #1
	blt .L080B3976
	ldrb r0, [r1]
	adds r0, #1
	movs r3, #0
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bne .L080B3976
	strb r3, [r1]
	str r3, [r2]
	strb r5, [r1, #0x19]
.L080B3976:
	adds r2, #4
	adds r1, #1
	subs r4, #1
	cmp r4, #0
	bge .L080B3956
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080B3988: .4byte 0x0000085C
.L080B398C: .4byte 0x00000906

	thumb_func_start func_080B3990
func_080B3990: @ 0x080B3990
	ldr r2, .L080B39B4 @ =gUnk_08107882
	ldr r3, .L080B39B8 @ =0x00000844
	adds r1, r0, r3
	ldr r1, [r1]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0x93
	lsls r2, r2, #4
	adds r0, r0, r2
	ldr r2, [r0]
	movs r0, #0x54
	muls r0, r2, r0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	.align 2, 0
.L080B39B4: .4byte gUnk_08107882
.L080B39B8: .4byte 0x00000844

	thumb_func_start func_080B39BC
func_080B39BC: @ 0x080B39BC
	ldr r2, .L080B39D4 @ =gUnk_0810788A
	lsls r1, r1, #2
	movs r3, #0x87
	lsls r3, r3, #4
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bx lr
	.align 2, 0
.L080B39D4: .4byte gUnk_0810788A

	thumb_func_start func_080B39D8
func_080B39D8: @ 0x080B39D8
	ldr r2, .L080B39EC @ =gUnk_08107890
	lsls r1, r1, #2
	ldr r3, .L080B39F0 @ =0x00000848
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bx lr
	.align 2, 0
.L080B39EC: .4byte gUnk_08107890
.L080B39F0: .4byte 0x00000848

	thumb_func_start func_080B39F4
func_080B39F4: @ 0x080B39F4
	ldr r2, .L080B3A08 @ =gUnk_0810789A
	lsls r1, r1, #2
	ldr r3, .L080B3A0C @ =0x0000085C
	adds r0, r0, r3
	adds r0, r0, r1
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	bx lr
	.align 2, 0
.L080B3A08: .4byte gUnk_0810789A
.L080B3A0C: .4byte 0x0000085C

	thumb_func_start func_080B3A10
func_080B3A10: @ 0x080B3A10
	ldr r1, .L080B3A20 @ =gUnk_081078A0
	ldr r2, .L080B3A24 @ =0x00000934
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	bx lr
	.align 2, 0
.L080B3A20: .4byte gUnk_081078A0
.L080B3A24: .4byte 0x00000934

	thumb_func_start func_080B3A28
func_080B3A28: @ 0x080B3A28
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	bl func_080B34DC
	ldr r1, .L080B3AB8 @ =0x00000844
	adds r0, r4, r1
	movs r2, #3
	mov sb, r2
	str r2, [r0]
	ldr r3, .L080B3ABC @ =0x00000929
	adds r0, r4, r3
	movs r1, #0
	mov r8, r1
	movs r7, #1
	strb r7, [r0]
	ldr r2, .L080B3AC0 @ =0x00000884
	adds r5, r4, r2
	ldr r1, [r5]
	lsls r3, r1, #2
	movs r0, #0x87
	lsls r0, r0, #4
	adds r6, r4, r0
	adds r2, r6, r3
	ldr r0, [r2]
	cmp r0, #0
	bne .L080B3AD4
	ldr r2, .L080B3AC4 @ =0x00000848
	adds r0, r4, r2
	adds r0, r0, r3
	ldr r0, [r0]
	cmp r0, #1
	beq .L080B3A70
	b .L080B3B98
.L080B3A70:
	lsls r1, r1, #1
	movs r3, #0x8f
	lsls r3, r3, #4
	adds r0, r4, r3
	adds r0, r0, r1
	movs r2, #0
	mov r1, r8
	strh r1, [r0]
	ldr r1, [r5]
	lsls r1, r1, #2
	subs r3, #0x94
	adds r0, r4, r3
	adds r0, r0, r1
	str r7, [r0]
	ldr r0, .L080B3AC8 @ =0x0000090D
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, .L080B3ACC @ =0x0000091F
	adds r0, r4, r1
	ldr r1, [r5]
	adds r0, r0, r1
	strb r7, [r0]
	adds r3, #0xaa
	adds r0, r4, r3
	ldr r1, [r5]
	adds r0, r0, r1
	strb r2, [r0]
	ldr r1, .L080B3AD0 @ =0x00000814
	adds r0, r4, r1
	movs r1, #0xc7
	bl func_08008B6C
	b .L080B3B98
	.align 2, 0
.L080B3AB8: .4byte 0x00000844
.L080B3ABC: .4byte 0x00000929
.L080B3AC0: .4byte 0x00000884
.L080B3AC4: .4byte 0x00000848
.L080B3AC8: .4byte 0x0000090D
.L080B3ACC: .4byte 0x0000091F
.L080B3AD0: .4byte 0x00000814
.L080B3AD4:
	cmp r0, #1
	bne .L080B3B40
	mov r3, r8
	str r3, [r2]
	lsls r1, r1, #1
	movs r2, #0x8f
	lsls r2, r2, #4
	adds r0, r4, r2
	adds r0, r0, r1
	strh r3, [r0]
	ldr r3, .L080B3B30 @ =0x00000915
	adds r0, r4, r3
	ldr r1, [r5]
	adds r0, r0, r1
	strb r7, [r0]
	ldr r2, [r5]
	lsls r1, r2, #2
	subs r3, #0xcd
	adds r0, r4, r3
	adds r0, r0, r1
	str r7, [r0]
	adds r3, #0x14
	adds r0, r4, r3
	adds r0, r0, r1
	movs r1, #2
	str r1, [r0]
	ldr r1, .L080B3B34 @ =0x0000091A
	adds r0, r4, r1
	adds r0, r0, r2
	strb r7, [r0]
	ldr r2, .L080B3B38 @ =0x00000924
	adds r0, r4, r2
	ldr r1, [r5]
	adds r0, r0, r1
	strb r7, [r0]
	adds r3, #0xc3
	adds r0, r4, r3
	ldr r1, [r5]
	adds r0, r0, r1
	strb r7, [r0]
	ldr r1, .L080B3B3C @ =0x00000814
	adds r0, r4, r1
	movs r1, #0x6c
	bl func_08008B6C
	b .L080B3B98
	.align 2, 0
.L080B3B30: .4byte 0x00000915
.L080B3B34: .4byte 0x0000091A
.L080B3B38: .4byte 0x00000924
.L080B3B3C: .4byte 0x00000814
.L080B3B40:
	ldr r2, .L080B3B78 @ =0x00000814
	adds r0, r4, r2
	movs r1, #0x6c
	bl func_08008B6C
	ldr r1, [r5]
	lsls r0, r1, #2
	adds r0, r6, r0
	mov r3, r8
	str r3, [r0]
	ldr r2, .L080B3B7C @ =0x00000924
	adds r0, r4, r2
	adds r0, r0, r1
	strb r7, [r0]
	ldr r2, [r5]
	lsls r1, r2, #2
	ldr r3, .L080B3B80 @ =0x00000848
	adds r0, r4, r3
	adds r1, r0, r1
	ldr r0, [r1]
	cmp r0, #4
	bne .L080B3B88
	mov r0, sb
	str r0, [r1]
	ldr r1, .L080B3B84 @ =0x0000091A
	adds r0, r4, r1
	b .L080B3B94
	.align 2, 0
.L080B3B78: .4byte 0x00000814
.L080B3B7C: .4byte 0x00000924
.L080B3B80: .4byte 0x00000848
.L080B3B84: .4byte 0x0000091A
.L080B3B88:
	cmp r0, #5
	bne .L080B3B98
	movs r0, #6
	str r0, [r1]
	ldr r3, .L080B3BA4 @ =0x0000091A
	adds r0, r4, r3
.L080B3B94:
	adds r0, r0, r2
	strb r7, [r0]
.L080B3B98:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080B3BA4: .4byte 0x0000091A

	thumb_func_start func_080B3BA8
func_080B3BA8: @ 0x080B3BA8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, .L080B3BCC @ =0x00000818
	adds r0, r4, r1
	movs r1, #0xb8
	bl func_08008B6C
	ldr r0, .L080B3BD0 @ =0x0000083C
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0
	bne .L080B3BD4
	movs r0, #1
	str r0, [r1]
	adds r0, r4, #0
	bl func_080B0934
	b .L080B3BDE
	.align 2, 0
.L080B3BCC: .4byte 0x00000818
.L080B3BD0: .4byte 0x0000083C
.L080B3BD4:
	movs r0, #0
	str r0, [r1]
	adds r0, r4, #0
	bl func_080B0970
.L080B3BDE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start func_080B3BE4
func_080B3BE4: @ 0x080B3BE4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080B3C04 @ =vtable_unk_080E850C
	str r0, [r4]
	ldr r0, .L080B3C08 @ =0x0000093C
	bl __builtin_new
	adds r1, r5, #0
	bl func_080ADF6C
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L080B3C04: .4byte vtable_unk_080E850C
.L080B3C08: .4byte 0x0000093C

