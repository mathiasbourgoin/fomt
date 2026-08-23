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

	.section .text.tail0809EAD0, "ax", %progbits
	.section .text.tail0809EAD8, "ax", %progbits
	.section .text.tail0809EAE0, "ax", %progbits
	.section .text.tail0809EAEC, "ax", %progbits
	.section .text.tail0809EAF8, "ax", %progbits
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

	.section .text.tail0809EB70, "ax", %progbits
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

	.section .text.tail0809ECE0, "ax", %progbits
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

	.section .text.tail080A0B18, "ax", %progbits
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

	.section .text.tail080A1484, "ax", %progbits
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

	.section .text.tail080A1A4C, "ax", %progbits
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
