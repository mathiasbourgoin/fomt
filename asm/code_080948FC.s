    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_08094904
func_08094904: @ 0x08094904
	movs r0, #0x2b
	bx lr

	thumb_func_start func_08094908
func_08094908: @ 0x08094908
	ldr r0, [r0, #8]
	bx lr

	thumb_func_start func_0809490C
func_0809490C: @ 0x0809490C
	movs r0, #0x2f
	bx lr

	thumb_func_start func_08094910
func_08094910: @ 0x08094910
	ldr r0, [r0, #0x14]
	bx lr
.L08094914:
	.byte 0x00, 0xB5, 0x82, 0x68, 0x00, 0xF0, 0x72, 0xF8, 0x01, 0xBC, 0x00, 0x47
	.byte 0x00, 0xB5, 0x82, 0x68, 0x0D, 0x32, 0x00, 0xF0, 0x6B, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
	.byte 0x00, 0xB5, 0x82, 0x68, 0x1A, 0x32, 0x00, 0xF0, 0x63, 0xF8, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00

	thumb_func_start func_08094940
func_08094940: @ 0x08094940
	push {lr}
	ldr r2, [r0, #8]
	bl func_08094A00
	pop {r0}
	bx r0

	thumb_func_start func_0809494C
func_0809494C: @ 0x0809494C
	push {lr}
	ldr r2, [r0, #8]
	adds r2, #0xd
	bl func_08094A00
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809495C
func_0809495C: @ 0x0809495C
	push {lr}
	ldr r2, [r0, #8]
	adds r2, #0x1a
	bl func_08094A00
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809496C
func_0809496C: @ 0x0809496C
	ldr r0, [r0, #8]
	adds r0, #0x27
	bx lr
	.align 2, 0

	thumb_func_start func_08094974
func_08094974: @ 0x08094974
	push {r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	movs r2, #0
	cmp r2, r3
	bhs .L0809498E
.L08094980:
	adds r0, r5, r2
	adds r1, r4, r2
	ldrb r1, [r1]
	strb r1, [r0]
	adds r2, #1
	cmp r2, r3
	blo .L08094980
.L0809498E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start func_08094994
func_08094994: @ 0x08094994
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r4, r2, #0
	movs r5, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq .L080949EA
	ldr r0, .L080949D4 @ =gUnk_08100A36
	ldrb r0, [r0]
	mov ip, r0
	adds r2, r7, #0
.L080949AA:
	ldrb r1, [r4]
	adds r4, #1
	movs r3, #0
	cmp r1, ip
	beq .L080949C8
	ldr r6, .L080949D4 @ =gUnk_08100A36
.L080949B6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x60
	bhi .L080949CC
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r1, r0
	bne .L080949B6
.L080949C8:
	cmp r3, #0x60
	bls .L080949D8
.L080949CC:
	movs r0, #0
	strb r0, [r2]
	b .L080949EA
	.align 2, 0
.L080949D4: .4byte gUnk_08100A36
.L080949D8:
	adds r0, r3, #1
	strb r0, [r2]
	adds r2, #1
	adds r5, #1
	cmp r5, #0xb
	bhi .L080949EA
	ldrb r0, [r4]
	cmp r0, #0
	bne .L080949AA
.L080949EA:
	cmp r5, #0xc
	bhi .L080949FA
	movs r2, #0
.L080949F0:
	adds r0, r7, r5
	strb r2, [r0]
	adds r5, #1
	cmp r5, #0xc
	bls .L080949F0
.L080949FA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_08094A00
func_08094A00: @ 0x08094A00
	push {r4, lr}
	movs r3, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq .L08094A2E
	subs r0, #1
	cmp r0, #0x60
	bhi .L08094A2E
	ldr r4, .L08094A38 @ =gUnk_08100A36
.L08094A12:
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r1]
	adds r1, #1
	adds r3, #1
	cmp r3, #0xb
	bgt .L08094A2E
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08094A2E
	subs r0, #1
	cmp r0, #0x60
	bls .L08094A12
.L08094A2E:
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08094A38: .4byte gUnk_08100A36

	thumb_func_start func_08094A3C
func_08094A3C: @ 0x08094A3C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	adds r7, r1, #0
	ldr r0, .L08094AB8 @ =0x00000814
	add r0, r8
	mov sb, r0
	movs r6, #0
.L08094A50:
	lsls r1, r6, #7
	adds r1, r1, r6
	lsls r1, r1, #2
	adds r1, #4
	add r1, r8
	adds r4, r1, #4
	ldr r0, [r1]
	lsls r0, r0, #2
	adds r0, #4
	adds r5, r1, r0
	adds r0, r4, #0
	adds r1, r5, #0
	ldr r2, .L08094ABC @ =func_03000C08
	bl _call_via_r2
	adds r6, #1
	cmp r4, r5
	beq .L08094AA2
	movs r1, #0x7f
	mov ip, r1
.L08094A78:
	ldr r0, [r4]
	mov r1, ip
	ands r0, r1
	lsls r0, r0, #3
	mov r1, sb
	adds r3, r0, r1
	ldrb r2, [r7]
	cmp r2, #0x7f
	bhi .L08094A9C
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r7, r0
	ldr r1, [r3]
	str r1, [r0]
	ldrh r1, [r3, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r7]
.L08094A9C:
	adds r4, #4
	cmp r4, r5
	bne .L08094A78
.L08094AA2:
	cmp r6, #3
	bls .L08094A50
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08094AB8: .4byte 0x00000814
.L08094ABC: .4byte func_03000C08

	thumb_func_start func_08094AC0
func_08094AC0: @ 0x08094AC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #4]
	bl func_080CD578
	ldr r0, .L08094E9C @ =vtable_unk_080E8230
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x8c
	str r4, [r0]
	adds r0, #4
	movs r1, #0
	bl func_08008B54
	adds r0, r7, #0
	adds r0, #0x94
	movs r1, #2
	bl func_08008B54
	adds r6, r7, #0
	adds r6, #0x98
	ldr r1, .L08094EA0 @ =gUnk_08527094
	adds r0, r6, #0
	bl func_0805E6CC
	movs r0, #0xc8
	adds r0, r0, r7
	mov r8, r0
	ldr r1, .L08094EA4 @ =gUnk_08728208
	bl func_0805E6CC
	movs r1, #0xf8
	adds r1, r1, r7
	mov sb, r1
	ldr r1, .L08094EA8 @ =gUnk_08754C0C
	mov r0, sb
	bl func_0805E6CC
	movs r2, #0x94
	lsls r2, r2, #1
	adds r2, r2, r7
	mov sl, r2
	ldr r1, .L08094EAC @ =gUnk_08754674
	mov r0, sl
	bl func_0805E6CC
	movs r3, #0xac
	lsls r3, r3, #1
	adds r0, r7, r3
	adds r1, r6, #0
	movs r2, #3
	subs r3, #0x58
	bl func_0805E824
	movs r1, #0xb6
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r5, #0
	movs r4, #0
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
	movs r2, #0xc6
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0xc8
	lsls r3, r3, #1
	adds r0, r7, r3
	adds r1, r6, #0
	movs r2, #2
	subs r3, #0x90
	bl func_0805E824
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r0, r7, r1
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
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r0, r7, r3
	adds r1, r6, #0
	movs r2, #0
	subs r3, #0xc8
	bl func_0805E824
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r7, r1
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
	movs r2, #0xfe
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r7, r3
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0x85
	lsls r1, r1, #2
	adds r0, r7, r1
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
	movs r2, #0x8d
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0x8e
	lsls r3, r3, #2
	adds r0, r7, r3
	mov r1, r8
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0x93
	lsls r1, r1, #2
	adds r0, r7, r1
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
	movs r2, #0x9b
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0x9c
	lsls r3, r3, #2
	adds r0, r7, r3
	mov r1, sb
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0xa1
	lsls r1, r1, #2
	adds r0, r7, r1
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
	movs r2, #0xa9
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0xaa
	lsls r3, r3, #2
	adds r0, r7, r3
	mov r1, sl
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	movs r1, #0xaf
	lsls r1, r1, #2
	adds r0, r7, r1
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
	movs r2, #0xb7
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r5, [r0]
	movs r3, #0xb8
	lsls r3, r3, #2
	adds r5, r7, r3
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r5, #4]
	movs r0, #0xba
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r1, #0xbc
	lsls r1, r1, #2
	adds r5, r7, r1
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r5, #4]
	movs r2, #0xbe
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	bl func_08007128
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r5, #4]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r5, r7, r3
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #6
	bl func_08007B54
	str r0, [r5, #4]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r1, #0xc4
	lsls r1, r1, #2
	adds r5, r7, r1
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r2, #0xc6
	lsls r2, r2, #2
	adds r5, r7, r2
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r5, #4]
	movs r3, #0xc8
	lsls r3, r3, #2
	adds r5, r7, r3
	adds r0, r5, #0
	bl func_08007128
	str r4, [r5, #4]
	movs r0, #0xca
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	bl func_08007874
	adds r0, r5, #0
	movs r1, #7
	bl func_08007B54
	str r0, [r5, #4]
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r1, r7, r2
	strh r4, [r1]
	ldrh r2, [r1, #0x12]
	ldr r0, .L08094EB0 @ =0xFFFFF000
	ands r0, r2
	strh r0, [r1, #0x12]
	ldrb r2, [r1, #0x13]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0x13]
	movs r2, #0
	movs r1, #7
	movs r3, #0xd1
	lsls r3, r3, #2
	adds r0, r7, r3
.L08094D7C:
	strh r2, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge .L08094D7C
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #0
	strh r0, [r1]
	ldrh r2, [r1, #0x12]
	ldr r0, .L08094EB0 @ =0xFFFFF000
	ands r0, r2
	strh r0, [r1, #0x12]
	ldrb r2, [r1, #0x13]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0x13]
	movs r1, #0x8c
	adds r1, r1, r7
	mov sb, r1
	movs r2, #0
	movs r1, #7
	movs r3, #0xd6
	lsls r3, r3, #2
	adds r0, r7, r3
.L08094DB2:
	strh r2, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge .L08094DB2
	movs r0, #7
	movs r1, #1
	rsbs r1, r1, #0
.L08094DC2:
	subs r0, #1
	cmp r0, r1
	bne .L08094DC2
	ldr r0, .L08094EB4 @ =0x00002BB0
	adds r4, r7, r0
	movs r5, #7
	movs r6, #1
	rsbs r6, r6, #0
.L08094DD2:
	adds r0, r4, #0
	bl __12RucksackItem
	adds r4, #4
	subs r5, #1
	cmp r5, r6
	bne .L08094DD2
	ldr r2, .L08094EB8 @ =0x000033D8
	adds r1, r7, r2
	ldr r0, .L08094EBC @ =vtable_unk_080E823C
	str r0, [r1]
	movs r3, #0
	mov r8, r3
	movs r2, #0
	strh r2, [r1, #4]
	mov r0, r8
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	ldr r1, .L08094EC0 @ =0x0000035E
	adds r0, r7, r1
	mov r3, sp
	ldrb r3, [r3, #4]
	strb r3, [r0]
	mov r5, sb
	ldr r0, [r5]
	ldr r1, .L08094EC4 @ =0x00002C1A
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r3, #0xda
	lsls r3, r3, #2
	adds r0, r7, r3
	strb r1, [r0]
	movs r0, #0xcc
	lsls r0, r0, #2
	adds r4, r7, r0
	strh r2, [r4]
	ldr r0, [r5]
	movs r6, #0xfa
	lsls r6, r6, #1
	adds r0, r0, r6
	bl HasKitchenKnife__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094E34
	ldrh r0, [r4]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4]
.L08094E34:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenFryingPan__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094E4A
	ldrh r0, [r4]
	movs r1, #2
	orrs r0, r1
	strh r0, [r4]
.L08094E4A:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenPot__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094E60
	ldrh r0, [r4]
	movs r1, #4
	orrs r0, r1
	strh r0, [r4]
.L08094E60:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenMixer__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094E76
	ldrh r0, [r4]
	movs r1, #8
	orrs r0, r1
	strh r0, [r4]
.L08094E76:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenWhisk__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094E8C
	ldrh r0, [r4]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r4]
.L08094E8C:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenRollingPin__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	b .L08094EC8
	.align 2, 0
.L08094E9C: .4byte vtable_unk_080E8230
.L08094EA0: .4byte gUnk_08527094
.L08094EA4: .4byte gUnk_08728208
.L08094EA8: .4byte gUnk_08754C0C
.L08094EAC: .4byte gUnk_08754674
.L08094EB0: .4byte 0xFFFFF000
.L08094EB4: .4byte 0x00002BB0
.L08094EB8: .4byte 0x000033D8
.L08094EBC: .4byte vtable_unk_080E823C
.L08094EC0: .4byte 0x0000035E
.L08094EC4: .4byte 0x00002C1A
.L08094EC8:
	beq .L08094ED2
	ldrh r0, [r4]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r4]
.L08094ED2:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenOven__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094EE8
	ldrh r0, [r4]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4]
.L08094EE8:
	ldr r0, [r5]
	adds r0, r0, r6
	bl HasKitchenSeasoningSet__C9FarmHouse
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094F02
	ldrh r0, [r4]
	movs r2, #0xf8
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
.L08094F02:
	mov r3, sb
	ldr r0, [r3]
	ldr r1, .L08094F58 @ =0x00001C38
	adds r0, r0, r1
	bl GetSize__C8Rucksack
	ldr r2, .L08094F5C @ =0x00002BA0
	adds r1, r7, r2
	str r0, [r1]
	ldr r3, .L08094F60 @ =0x00002BB0
	adds r5, r7, r3
	movs r4, #7
.L08094F1A:
	mov r0, sp
	bl __12RucksackItem
	ldr r0, [sp]
	stm r5!, {r0}
	subs r4, #1
	cmp r4, #0
	bge .L08094F1A
	movs r2, #0
	movs r1, #8
	ldr r3, .L08094F64 @ =0x00002BAF
	adds r0, r7, r3
.L08094F32:
	strb r2, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge .L08094F32
	ldr r0, .L08094F68 @ =0x000033D0
	adds r1, r7, r0
	movs r0, #0
	strh r0, [r1]
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
.L08094F58: .4byte 0x00001C38
.L08094F5C: .4byte 0x00002BA0
.L08094F60: .4byte 0x00002BB0
.L08094F64: .4byte 0x00002BAF
.L08094F68: .4byte 0x000033D0

	thumb_func_start func_08094F6C
func_08094F6C: @ 0x08094F6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0xc
	mov r8, r0
	adds r4, r1, #0
	adds r0, r4, #0
	bl func_08008724
	movs r7, #0
	add r0, sp, #4
	mov sb, r0
.L08094F86:
	ldr r1, .L08094FA0 @ =0x000033D0
	adds r0, r4, r1
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #7
	bls .L08094F94
	b .L08095176
.L08094F94:
	lsls r0, r0, #2
	ldr r1, .L08094FA4 @ =.L08094FA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08094FA0: .4byte 0x000033D0
.L08094FA4: .4byte .L08094FA8
.L08094FA8: @ jump table
	.4byte .L08094FC8 @ case 0
	.4byte .L08095020 @ case 1
	.4byte .L08095048 @ case 2
	.4byte .L08095074 @ case 3
	.4byte .L080950C0 @ case 4
	.4byte .L080950F4 @ case 5
	.4byte .L08095138 @ case 6
	.4byte .L08095138 @ case 7
.L08094FC8:
	ldr r1, .L08095010 @ =0x0000035E
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08094FD4
	b .L080950E4
.L08094FD4:
	ldr r1, .L08095014 @ =0x00000366
	adds r0, r4, r1
	movs r5, #0
	strb r5, [r0]
	movs r2, #0xda
	lsls r2, r2, #2
	adds r1, r4, r2
	ldrb r0, [r1]
	lsrs r3, r0, #3
	ldr r0, .L08095018 @ =0x00000367
	adds r2, r4, r0
	strb r3, [r2]
	ldrb r0, [r1]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne .L08094FFA
	subs r0, r3, #1
	strb r0, [r2]
.L08094FFA:
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r4, r2
	strb r5, [r0]
	adds r2, #1
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, .L0809501C @ =0x000033D0
	adds r1, r4, r0
	b .L080950B4
	.align 2, 0
.L08095010: .4byte 0x0000035E
.L08095014: .4byte 0x00000366
.L08095018: .4byte 0x00000367
.L0809501C: .4byte 0x000033D0
.L08095020:
	adds r0, r4, #0
	bl func_080951B4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne .L08095034
	movs r7, #1
.L08095034:
	cmp r1, #1
	beq .L0809503A
	b .L08095176
.L0809503A:
	ldr r2, .L08095044 @ =0x000033D0
	adds r1, r4, r2
	movs r0, #2
	strh r0, [r1]
	b .L08095176
	.align 2, 0
.L08095044: .4byte 0x000033D0
.L08095048:
	adds r0, r4, #0
	bl func_080958C0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne .L0809505C
	movs r7, #1
.L0809505C:
	cmp r2, #1
	bne .L08095068
	ldr r0, .L08095070 @ =0x000033D0
	adds r1, r4, r0
	movs r0, #3
	strh r0, [r1]
.L08095068:
	cmp r2, #2
	beq .L0809506E
	b .L08095176
.L0809506E:
	b .L080950B0
	.align 2, 0
.L08095070: .4byte 0x000033D0
.L08095074:
	adds r0, r4, #0
	bl func_08095D80
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne .L08095088
	movs r7, #1
.L08095088:
	cmp r2, #1
	bne .L08095094
	ldr r0, .L080950A8 @ =0x000033D0
	adds r1, r4, r0
	movs r0, #4
	strh r0, [r1]
.L08095094:
	cmp r2, #2
	bne .L08095176
	ldr r1, .L080950AC @ =0x0000035E
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080950B0
	movs r7, #1
	b .L08095176
	.align 2, 0
.L080950A8: .4byte 0x000033D0
.L080950AC: .4byte 0x0000035E
.L080950B0:
	ldr r2, .L080950BC @ =0x000033D0
	adds r1, r4, r2
.L080950B4:
	movs r0, #1
	strh r0, [r1]
	b .L08095176
	.align 2, 0
.L080950BC: .4byte 0x000033D0
.L080950C0:
	adds r0, r4, #0
	bl func_080962F0
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne .L080950D4
	movs r7, #1
.L080950D4:
	cmp r2, #1
	bne .L080950E0
	ldr r0, .L080950F0 @ =0x000033D0
	adds r1, r4, r0
	movs r0, #5
	strh r0, [r1]
.L080950E0:
	cmp r2, #2
	bne .L08095176
.L080950E4:
	ldr r2, .L080950F0 @ =0x000033D0
	adds r1, r4, r2
	movs r0, #3
	strh r0, [r1]
	b .L08095176
	.align 2, 0
.L080950F0: .4byte 0x000033D0
.L080950F4:
	adds r0, r4, #0
	bl func_080972AC
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne .L08095108
	movs r7, #1
.L08095108:
	cmp r2, #1
	bne .L08095114
	ldr r0, .L08095134 @ =0x000033D0
	adds r1, r4, r0
	movs r0, #4
	strh r0, [r1]
.L08095114:
	cmp r2, #2
	bne .L08095120
	ldr r0, .L08095134 @ =0x000033D0
	adds r1, r4, r0
	movs r0, #3
	strh r0, [r1]
.L08095120:
	cmp r2, #3
	bne .L08095126
	movs r7, #1
.L08095126:
	cmp r2, #4
	bne .L08095176
	ldr r2, .L08095134 @ =0x000033D0
	adds r1, r4, r2
	movs r0, #6
	strh r0, [r1]
	b .L08095176
	.align 2, 0
.L08095134: .4byte 0x000033D0
.L08095138:
	ldr r0, .L08095170 @ =0x000033D0
	adds r5, r4, r0
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r6, #6
	eors r0, r6
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	adds r0, r4, #0
	bl func_08097AE4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne .L0809515E
	movs r7, #1
.L0809515E:
	cmp r1, #1
	bne .L08095176
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #6
	bne .L08095174
	movs r0, #7
	strh r0, [r5]
	b .L08095176
	.align 2, 0
.L08095170: .4byte 0x000033D0
.L08095174:
	strh r6, [r5]
.L08095176:
	cmp r7, #1
	beq .L0809517C
	b .L08094F86
.L0809517C:
	movs r1, #0
	str r1, [sp]
	mov r0, sp
	str r0, [sp, #4]
	mov r2, sb
	str r1, [r2, #4]
	ldr r0, [sp, #4]
	str r1, [r0]
	mov r0, r8
	str r1, [r0]
	ldr r1, [sp]
	cmp r1, #0
	beq .L080951A2
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080951A2:
	mov r0, r8
	add sp, #0xc
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080951B4
func_080951B4: @ 0x080951B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	movs r0, #0
	mov sb, r0
	movs r7, #0
	adds r0, r6, #0
	bl func_08008724
	movs r1, #0xba
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	adds r0, r6, #0
	bl func_0809800C
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r6, #0
	bl func_08008918
	adds r1, r0, #0
	mov r3, sb
	str r3, [r4]
	str r3, [r4, #4]
	ldr r0, .L0809527C @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #4]
	ldr r1, .L08095280 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	adds r0, r6, #0
	bl func_08095580
	movs r4, #0
	mov sl, r4
.L0809525C:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	adds r0, r7, #0
	cmp r0, #4
	bls .L08095270
	b .L08095508
.L08095270:
	lsls r0, r0, #2
	ldr r1, .L08095284 @ =.L08095288
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0809527C: .4byte vtable_unk_080E5B80
.L08095280: .4byte 0x00000889
.L08095284: .4byte .L08095288
.L08095288: @ jump table
	.4byte .L0809529C @ case 0
	.4byte .L080952AE @ case 1
	.4byte .L080954C8 @ case 2
	.4byte .L080954D2 @ case 3
	.4byte .L080954F8 @ case 4
.L0809529C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080952AA
	b .L08095508
.L080952AA:
	movs r7, #1
	b .L08095508
.L080952AE:
	ldr r1, .L080952FC @ =0x00000366
	adds r0, r6, r1
	ldrb r5, [r0]
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r0, [r0]
	mov r8, r0
	movs r4, #0
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne .L080952DE
	adds r0, r6, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq .L080952E0
.L080952DE:
	movs r4, #1
.L080952E0:
	cmp r4, #0
	beq .L08095308
	ldr r3, .L080952FC @ =0x00000366
	adds r2, r6, r3
	ldr r4, .L08095300 @ =0x00000367
	adds r0, r6, r4
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhs .L08095304
	adds r0, r1, #1
	strb r0, [r2]
	adds r1, r0, #0
	b .L0809534A
	.align 2, 0
.L080952FC: .4byte 0x00000366
.L08095300: .4byte 0x00000367
.L08095304:
	movs r1, #0
	b .L0809534A
.L08095308:
	movs r4, #0
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne .L08095328
	adds r0, r6, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L0809532A
.L08095328:
	movs r4, #1
.L0809532A:
	cmp r4, #0
	beq .L0809535C
	ldr r3, .L08095340 @ =0x00000366
	adds r1, r6, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq .L08095344
	subs r0, #1
	strb r0, [r1]
	adds r1, r0, #0
	b .L0809534A
	.align 2, 0
.L08095340: .4byte 0x00000366
.L08095344:
	ldr r4, .L08095354 @ =0x00000367
	adds r0, r6, r4
	ldrb r1, [r0]
.L0809534A:
	ldr r2, .L08095358 @ =0x00000366
	adds r0, r6, r2
	strb r1, [r0]
	movs r7, #2
	b .L080953BC
	.align 2, 0
.L08095354: .4byte 0x00000367
.L08095358: .4byte 0x00000366
.L0809535C:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L0809538C
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r2, r6, r3
	ldr r4, .L08095384 @ =0x00000365
	adds r0, r6, r4
	ldrb r1, [r2]
	ldrb r0, [r0]
	cmp r1, r0
	bhs .L08095388
	adds r0, r1, #1
	strb r0, [r2]
	adds r1, r0, #0
	b .L080953B4
	.align 2, 0
.L08095384: .4byte 0x00000365
.L08095388:
	movs r1, #0
	b .L080953B4
.L0809538C:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L080953BC
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r1, r6, r3
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080953AE
	subs r0, #1
	strb r0, [r1]
	adds r1, r0, #0
	b .L080953B4
.L080953AE:
	ldr r4, .L080953D4 @ =0x00000365
	adds r0, r6, r4
	ldrb r1, [r0]
.L080953B4:
	movs r2, #0xd9
	lsls r2, r2, #2
	adds r0, r6, r2
	strb r1, [r0]
.L080953BC:
	ldr r3, .L080953D8 @ =0x00000366
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r5, r0
	beq .L080953DC
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xca
	bl func_08008B6C
	b .L080953F2
	.align 2, 0
.L080953D4: .4byte 0x00000365
.L080953D8: .4byte 0x00000366
.L080953DC:
	movs r4, #0xd9
	lsls r4, r4, #2
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r8, r0
	beq .L080953F2
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xcb
	bl func_08008B6C
.L080953F2:
	movs r4, #0
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L08095410
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L08095412
.L08095410:
	movs r4, #1
.L08095412:
	cmp r4, #0
	beq .L080954A6
	add r2, sp, #8
	movs r0, #0
	strh r0, [r2]
	ldrh r1, [r2, #0x12]
	ldr r0, .L08095490 @ =0xFFFFF000
	ands r0, r1
	strh r0, [r2, #0x12]
	ldrb r1, [r2, #0x13]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #0x13]
	adds r4, r6, #0
	adds r4, #0x94
	adds r5, r2, #0
	adds r0, r6, #0
	adds r0, #0x8c
	adds r2, #2
	movs r3, #0
	add r1, sp, #0x18
.L0809543E:
	strh r3, [r1]
	subs r1, #2
	cmp r1, r2
	bge .L0809543E
	ldr r0, [r0]
	ldr r1, .L08095494 @ =0x00002214
	adds r0, r0, r1
	ldr r2, .L08095498 @ =0x00000366
	adds r1, r6, r2
	ldrb r2, [r1]
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r1, r6, r3
	lsls r2, r2, #3
	ldrb r1, [r1]
	adds r2, r2, r1
	adds r1, r5, #0
	bl func_0809A970
	ldrb r1, [r5, #0x13]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L0809549C
	adds r0, r4, #0
	movs r1, #0xc5
	bl func_08008B6C
	movs r4, #0xcd
	lsls r4, r4, #2
	adds r1, r6, r4
	adds r0, r5, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	movs r4, #1
	mov sb, r4
	movs r7, #3
	b .L08095508
	.align 2, 0
.L08095490: .4byte 0xFFFFF000
.L08095494: .4byte 0x00002214
.L08095498: .4byte 0x00000366
.L0809549C:
	adds r0, r4, #0
	movs r1, #0xc7
	bl func_08008B6C
	b .L08095508
.L080954A6:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08095508
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc6
	bl func_08008B6C
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	movs r7, #3
	b .L08095508
.L080954C8:
	adds r0, r6, #0
	bl func_08095580
	movs r7, #1
	b .L08095508
.L080954D2:
	ldr r0, [sp, #4]
	ldr r1, .L080954F4 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #4
	b .L08095508
	.align 2, 0
.L080954F4: .4byte 0x00000889
.L080954F8:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08095508
	movs r1, #1
	mov sl, r1
.L08095508:
	movs r2, #0xd8
	lsls r2, r2, #2
	adds r1, r6, r2
	movs r0, #0x10
	strh r0, [r1]
	movs r3, #0xd9
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, #0x28
	ldr r4, .L0809557C @ =0x00000362
	adds r1, r6, r4
	strh r0, [r1]
	adds r0, r6, #0
	bl func_080983E8
	mov r0, sl
	cmp r0, #0
	bne .L08095532
	b .L0809525C
.L08095532:
	movs r1, #0xba
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r5, #0
	str r5, [r4, #4]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	mov r4, sb
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L08095568
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08095568:
	adds r0, r4, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L0809557C: .4byte 0x00000362

	thumb_func_start func_08095580
func_08095580: @ 0x08095580
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	mov sl, r0
	add r1, sp, #0xc
	movs r0, #0
	strh r0, [r1]
	ldrh r2, [r1, #0x12]
	ldr r0, .L0809563C @ =0xFFFFF000
	ands r0, r2
	strh r0, [r1, #0x12]
	ldrb r2, [r1, #0x13]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #0x13]
	mov r0, sp
	adds r0, #0x40
	str r0, [sp, #0x60]
	adds r1, #0x14
	str r1, [sp, #0x5c]
	movs r2, #0
	movs r1, #7
	add r0, sp, #0x1c
.L080955B6:
	strh r2, [r0]
	subs r0, #2
	subs r1, #1
	cmp r1, #0
	bge .L080955B6
	ldr r0, .L08095640 @ =0x00000366
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #3
	str r0, [sp, #0x58]
	ldr r1, .L08095644 @ =0x00000365
	add r1, sl
	movs r0, #0
	strb r0, [r1]
	movs r6, #0
.L080955D4:
	lsls r4, r6, #2
	adds r1, r4, r6
	lsls r1, r1, #6
	adds r1, r1, r6
	lsls r1, r1, #2
	add r1, sl
	add r0, sp, #0x40
	movs r2, #0x14
	strh r2, [r0]
	movs r7, #2
	ldr r3, [sp, #0x60]
	strh r7, [r3, #2]
	ldr r0, [sp, #0x40]
	movs r2, #0xdd
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0
	bl func_0804E7A0
	ldr r3, [sp, #0x58]
	adds r2, r3, r6
	movs r0, #0xda
	lsls r0, r0, #2
	add r0, sl
	mov r8, r4
	adds r4, r6, #1
	str r4, [sp, #0x64]
	ldrb r0, [r0]
	cmp r2, r0
	bge .L08095702
	mov r0, sl
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r7, .L08095648 @ =0x00002214
	adds r0, r0, r7
	add r1, sp, #0xc
	bl func_0809A970
	add r0, sp, #0xc
	ldrh r0, [r0]
	cmp r0, #0xab
	bhi .L0809564C
	add r0, sp, #0xc
	ldrh r1, [r0]
	subs r1, #1
	ldr r0, [sp, #0x5c]
	bl __4FoodUi
	ldr r0, [sp, #0x5c]
	bl GetName__C4Food
	b .L08095660
	.align 2, 0
.L0809563C: .4byte 0xFFFFF000
.L08095640: .4byte 0x00000366
.L08095644: .4byte 0x00000365
.L08095648: .4byte 0x00002214
.L0809564C:
	add r4, sp, #0x44
	add r0, sp, #0xc
	ldrh r1, [r0]
	subs r1, #0xac
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetName__C7Article
.L08095660:
	adds r2, r0, #0
	add r0, sp, #0xc
	ldrb r1, [r0, #0x13]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L080956A2
	mov r0, r8
	adds r1, r0, r6
	lsls r1, r1, #6
	adds r1, r1, r6
	lsls r1, r1, #2
	add r1, sl
	add r0, sp, #0x48
	movs r3, #0x14
	strh r3, [r0]
	movs r4, #2
	strh r4, [r0, #2]
	ldr r0, [sp, #0x48]
	movs r7, #0xdd
	lsls r7, r7, #2
	adds r1, r1, r7
	str r2, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r3, #0
	bl func_0804E958
	adds r4, r6, #1
	str r4, [sp, #0x64]
	b .L080956F8
.L080956A2:
	movs r1, #0
	ldrb r0, [r2]
	add r3, sp, #0x24
	add r7, sp, #0x4c
	adds r4, r6, #1
	str r4, [sp, #0x64]
	cmp r0, #0
	beq .L080956C4
	adds r5, r3, #0
	movs r4, #0x3f
.L080956B6:
	adds r0, r5, r1
	strb r4, [r0]
	adds r2, #1
	adds r1, #1
	ldrb r0, [r2]
	cmp r0, #0
	bne .L080956B6
.L080956C4:
	adds r0, r3, r1
	movs r1, #0
	strb r1, [r0]
	mov r2, r8
	adds r1, r2, r6
	lsls r1, r1, #6
	adds r1, r1, r6
	lsls r1, r1, #2
	add r1, sl
	add r0, sp, #0x4c
	movs r4, #0x14
	strh r4, [r0]
	movs r0, #2
	strh r0, [r7, #2]
	ldr r0, [sp, #0x4c]
	movs r2, #0xdd
	lsls r2, r2, #2
	adds r1, r1, r2
	str r3, [sp]
	movs r3, #0
	str r3, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	movs r2, #0
	bl func_0804E958
.L080956F8:
	ldr r1, .L08095750 @ =0x00000365
	add r1, sl
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
.L08095702:
	mov r0, sl
	bl func_08008910
	mov r7, r8
	adds r2, r7, r6
	lsls r1, r2, #6
	adds r1, r1, r6
	lsls r1, r1, #2
	add r1, sl
	movs r3, #0xdd
	lsls r3, r3, #2
	adds r1, r1, r3
	adds r5, r0, #0
	lsls r2, r2, #8
	ldr r4, .L08095754 @ =0x06002000
	adds r2, r2, r4
	add r0, sp, #0x20
	movs r3, #0xa0
	lsls r3, r3, #3
	bl func_08008F0C
	ldr r6, [sp, #0x5c]
	mov sb, r6
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08095758
	cmp r1, #0
	beq .L08095748
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08095748:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0809581E
	.align 2, 0
.L08095750: .4byte 0x00000365
.L08095754: .4byte 0x06002000
.L08095758:
	str r1, [sp, #0x68]
	movs r4, #1
	str r4, [sp, #0x54]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x50]
	add r1, sp, #0x54
	add r0, sp, #0x50
	cmp r4, #1
	bhs .L08095772
	adds r0, r1, #0
.L08095772:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08095790
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08095794
	mov r0, r8
	bl func_080D3BC0
	b .L08095794
.L08095790:
	movs r0, #0
	mov r8, r0
.L08095794:
	adds r4, r0, #0
	str r4, [sp, #0x6c]
	ldr r2, [r5]
	adds r3, r4, #0
	ldr r7, [sp, #0x68]
	cmp r2, r7
	beq .L080957BC
.L080957A2:
	cmp r3, #0
	beq .L080957B2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080957B2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x68]
	cmp r2, r0
	bne .L080957A2
.L080957BC:
	adds r4, r3, #0
	ldr r0, [sp, #0x54]
	cmp r0, #1
	bne .L080957D8
	cmp r4, #0
	beq .L080957D4
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080957D4:
	adds r4, #0x10
	b .L080957FA
.L080957D8:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080957F8
.L080957E0:
	cmp r2, #0
	beq .L080957F0
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080957F0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080957E0
.L080957F8:
	adds r4, r2, #0
.L080957FA:
	ldr r2, [r5, #4]
	ldr r0, [r5]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0809580A
.L08095804:
	adds r1, #0x10
	cmp r1, r2
	bne .L08095804
.L0809580A:
	cmp r0, #0
	beq .L08095812
	bl free
.L08095812:
	ldr r0, [sp, #0x6c]
	add r0, r8
	ldr r7, [sp, #0x6c]
	str r7, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L0809581E:
	ldr r6, [sp, #0x64]
	cmp r6, #7
	bgt .L08095826
	b .L080955D4
.L08095826:
	ldr r1, .L080958A4 @ =0x00000365
	add r1, sl
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	movs r3, #0xd9
	lsls r3, r3, #2
	add r3, sl
	ldrb r1, [r3]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bls .L08095842
	strb r2, [r3]
.L08095842:
	ldr r4, .L080958A8 @ =0x00000366
	add r4, sl
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0xa
	bl __divsi3
	ldr r1, .L080958AC @ =0x00000369
	add r1, sl
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0xa
	bl __modsi3
	ldr r1, .L080958B0 @ =0x0000036A
	add r1, sl
	strb r0, [r1]
	ldr r1, .L080958B4 @ =0x0000036B
	add r1, sl
	movs r0, #0xd
	strb r0, [r1]
	ldr r4, .L080958B8 @ =0x00000367
	add r4, sl
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0xa
	bl __divsi3
	movs r1, #0xdb
	lsls r1, r1, #2
	add r1, sl
	strb r0, [r1]
	ldrb r0, [r4]
	adds r0, #1
	movs r1, #0xa
	bl __modsi3
	ldr r1, .L080958BC @ =0x0000036D
	add r1, sl
	strb r0, [r1]
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080958A4: .4byte 0x00000365
.L080958A8: .4byte 0x00000366
.L080958AC: .4byte 0x00000369
.L080958B0: .4byte 0x0000036A
.L080958B4: .4byte 0x0000036B
.L080958B8: .4byte 0x00000367
.L080958BC: .4byte 0x0000036D

	thumb_func_start func_080958C0
func_080958C0: @ 0x080958C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	movs r7, #0
	movs r1, #1
	str r1, [sp, #0xc]
	movs r2, #0
	mov sb, r2
	adds r0, r6, #0
	bl func_08008724
	movs r3, #0xc8
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r4, .L080959A8 @ =0x00002BB0
	adds r5, r6, r4
	movs r4, #7
.L080958FE:
	mov r0, sp
	bl __12RucksackItem
	ldr r0, [sp]
	stm r5!, {r0}
	subs r4, #1
	cmp r4, #0
	bge .L080958FE
	movs r2, #0
	movs r1, #8
	ldr r3, .L080959AC @ =0x00002BAF
	adds r0, r6, r3
.L08095916:
	strb r2, [r0]
	subs r0, #1
	subs r1, #1
	cmp r1, #0
	bge .L08095916
	movs r4, #0xcd
	lsls r4, r4, #2
	adds r1, r6, r4
	adds r0, r6, #0
	bl func_080989DC
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r6, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L080959B0 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp]
	ldr r1, .L080959B4 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r0, .L080959B8 @ =0x000033D2
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
	movs r1, #0
	mov sl, r1
.L0809598A:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	adds r0, r7, #0
	cmp r0, #0xa
	bls .L0809599E
	b .L08095D10
.L0809599E:
	lsls r0, r0, #2
	ldr r1, .L080959BC @ =.L080959C0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L080959A8: .4byte 0x00002BB0
.L080959AC: .4byte 0x00002BAF
.L080959B0: .4byte vtable_unk_080E5B80
.L080959B4: .4byte 0x00000889
.L080959B8: .4byte 0x000033D2
.L080959BC: .4byte .L080959C0
.L080959C0: @ jump table
	.4byte .L080959EC @ case 0
	.4byte .L08095A40 @ case 1
	.4byte .L08095A90 @ case 2
	.4byte .L08095AB8 @ case 3
	.4byte .L08095AD8 @ case 4
	.4byte .L08095B7C @ case 5
	.4byte .L08095BAE @ case 6
	.4byte .L08095BD4 @ case 7
	.4byte .L08095C0C @ case 8
	.4byte .L08095CCC @ case 9
	.4byte .L08095D00 @ case 10
.L080959EC:
	ldr r0, [sp]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080959FA
	b .L08095D10
.L080959FA:
	ldr r2, .L08095A18 @ =0x0000035D
	adds r0, r6, r2
	ldrb r2, [r0]
	cmp r2, #0
	bne .L08095A24
	ldr r3, .L08095A1C @ =0x000033D4
	adds r0, r6, r3
	movs r1, #0
	strh r2, [r0]
	ldr r4, .L08095A20 @ =0x000033D2
	adds r0, r6, r4
	strb r1, [r0]
	movs r7, #1
	b .L08095D10
	.align 2, 0
.L08095A18: .4byte 0x0000035D
.L08095A1C: .4byte 0x000033D4
.L08095A20: .4byte 0x000033D2
.L08095A24:
	ldr r0, .L08095A38 @ =0x000033D4
	adds r1, r6, r0
	movs r2, #0
	movs r0, #1
	strh r0, [r1]
	ldr r1, .L08095A3C @ =0x000033D2
	adds r0, r6, r1
	strb r2, [r0]
	movs r7, #7
	b .L08095D10
	.align 2, 0
.L08095A38: .4byte 0x000033D4
.L08095A3C: .4byte 0x000033D2
.L08095A40:
	ldr r2, .L08095A6C @ =0x000033D2
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq .L08095A50
	b .L08095D10
.L08095A50:
	ldr r3, .L08095A70 @ =0x000033D3
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne .L08095A60
	b .L08095C00
.L08095A60:
	cmp r0, #1
	bgt .L08095A74
	cmp r0, #0
	beq .L08095A7C
	b .L08095D10
	.align 2, 0
.L08095A6C: .4byte 0x000033D2
.L08095A70: .4byte 0x000033D3
.L08095A74:
	cmp r0, #2
	bne .L08095A7A
	b .L08095C04
.L08095A7A:
	b .L08095D10
.L08095A7C:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08095A8C @ =gUnk_08100AC0
	bl func_08050D8C
	movs r7, #2
	b .L08095D10
	.align 2, 0
.L08095A8C: .4byte gUnk_08100AC0
.L08095A90:
	ldr r0, [sp]
	ldr r1, .L08095AB4 @ =0x00000889
	adds r0, #0xc
	movs r2, #2
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #3
	b .L08095D10
	.align 2, 0
.L08095AB4: .4byte 0x00000889
.L08095AB8:
	ldr r0, [sp]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08095AC6
	b .L08095D10
.L08095AC6:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xad
	bl func_08008B6C
	movs r0, #0x78
	mov sb, r0
	movs r7, #4
	b .L08095D10
.L08095AD8:
	mov r1, sb
	lsls r0, r1, #0x10
	ldr r2, .L08095B74 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov sb, r3
	cmp r0, #0
	blt .L08095AEA
	b .L08095D10
.L08095AEA:
	adds r0, r6, #0
	bl func_08008918
	add r2, sp, #4
	movs r4, #0x82
	lsls r4, r4, #5
	adds r1, r4, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r4, r6, #0
	adds r4, #0x7c
	movs r5, #0
	ldr r1, [r6, #0x7c]
	cmp r5, r1
	beq .L08095B1E
	cmp r1, #0
	beq .L08095B1E
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08095B1E:
	str r5, [r4]
	adds r4, r6, #0
	adds r4, #0x78
	movs r5, #0
	ldr r1, [r6, #0x78]
	cmp r5, r1
	beq .L08095B42
	cmp r1, #0
	beq .L08095B42
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08095B42:
	str r5, [r4]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	movs r4, #0
	str r4, [sp, #0xc]
	ldr r0, [sp]
	ldr r1, .L08095B78 @ =0x00000889
	adds r0, #0xc
	movs r2, #2
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #5
	b .L08095D10
	.align 2, 0
.L08095B74: .4byte 0xFFFF0000
.L08095B78: .4byte 0x00000889
.L08095B7C:
	ldr r0, [sp]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08095B8A
	b .L08095D10
.L08095B8A:
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r0, r6, r2
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	adds r0, r6, #0
	bl func_080975F4
	movs r0, #1
	rsbs r0, r0, #0
	mov r8, r0
	movs r7, #6
	b .L08095D10
.L08095BAE:
	ldr r1, .L08095BCC @ =0x000033D2
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq .L08095BBE
	b .L08095D10
.L08095BBE:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08095BD0 @ =gUnk_08100AC0
	bl func_08050D8C
	movs r7, #9
	b .L08095D10
	.align 2, 0
.L08095BCC: .4byte 0x000033D2
.L08095BD0: .4byte gUnk_08100AC0
.L08095BD4:
	ldr r2, .L08095BF8 @ =0x000033D2
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq .L08095BE4
	b .L08095D10
.L08095BE4:
	ldr r3, .L08095BFC @ =0x000033D3
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq .L08095C00
	cmp r0, #1
	beq .L08095C04
	b .L08095D10
	.align 2, 0
.L08095BF8: .4byte 0x000033D2
.L08095BFC: .4byte 0x000033D3
.L08095C00:
	movs r7, #8
	b .L08095D10
.L08095C04:
	movs r4, #2
	mov r8, r4
	movs r7, #9
	b .L08095D10
.L08095C0C:
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r6, r0
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r0, r6, r2
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	movs r5, #0
	ldr r0, .L08095CAC @ =0x00002BB0
	adds r4, r6, r0
	movs r7, #1
.L08095C28:
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrb r0, [r0]
	asrs r0, r5
	eors r0, r7
	ands r0, r7
	cmp r0, #0
	beq .L08095C50
	lsls r1, r5, #1
	ldr r2, .L08095CB0 @ =0x0000034A
	adds r0, r6, r2
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	add r0, sp, #8
	bl __12RucksackItem
	ldr r0, [sp, #8]
	str r0, [r4]
.L08095C50:
	adds r4, #4
	adds r5, #1
	cmp r5, #7
	ble .L08095C28
	movs r4, #0
.L08095C5A:
	lsls r0, r4, #1
	ldr r3, .L08095CB0 @ =0x0000034A
	adds r1, r6, r3
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r5, r4, #1
	cmp r0, #0
	bne .L08095CBE
	adds r3, r5, #0
	cmp r5, #7
	bgt .L08095CBE
	mov ip, r1
	movs r0, #0
	mov r8, r0
	lsls r0, r5, #1
	ldr r1, .L08095CB0 @ =0x0000034A
	adds r0, r0, r1
	adds r2, r0, r6
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, .L08095CAC @ =0x00002BB0
	adds r7, r0, r1
	lsls r0, r5, #2
	adds r0, r0, r1
	adds r4, r0, r6
.L08095C8C:
	ldrh r0, [r2]
	cmp r0, #0
	beq .L08095CB4
	mov r3, ip
	strh r0, [r3]
	ldr r0, [r4]
	str r0, [r7]
	mov r0, r8
	strh r0, [r2]
	add r0, sp, #4
	bl __12RucksackItem
	ldr r0, [sp, #4]
	str r0, [r4]
	b .L08095CBE
	.align 2, 0
.L08095CAC: .4byte 0x00002BB0
.L08095CB0: .4byte 0x0000034A
.L08095CB4:
	adds r2, #2
	adds r4, #4
	adds r3, #1
	cmp r3, #7
	ble .L08095C8C
.L08095CBE:
	adds r4, r5, #0
	cmp r4, #6
	ble .L08095C5A
	movs r1, #1
	mov r8, r1
	movs r7, #9
	b .L08095D10
.L08095CCC:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08095CF8 @ =gUnk_08100AC0
	bl func_08050D8C
	ldr r0, [sp]
	ldr r1, .L08095CFC @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #0xa
	b .L08095D10
	.align 2, 0
.L08095CF8: .4byte gUnk_08100AC0
.L08095CFC: .4byte 0x00000889
.L08095D00:
	ldr r0, [sp]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08095D10
	movs r2, #1
	mov sl, r2
.L08095D10:
	ldr r3, [sp, #0xc]
	cmp r3, #0
	beq .L08095D30
	ldr r4, .L08095D7C @ =0x00000346
	adds r0, r6, r4
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r2, [r0]
	adds r0, r6, #0
	movs r3, #0
	bl func_08099144
.L08095D30:
	adds r0, r6, #0
	bl func_080CD8A0
	adds r0, r6, #0
	bl func_08097D38
	mov r3, sl
	cmp r3, #0
	bne .L08095D44
	b .L0809598A
.L08095D44:
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r0, #0
	str r0, [r4, #4]
	mov r4, r8
	ldr r1, [sp]
	cmp r1, #0
	beq .L08095D6A
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08095D6A:
	adds r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08095D7C: .4byte 0x00000346

	thumb_func_start func_08095D80
func_08095D80: @ 0x08095D80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	mov sl, r0
	adds r0, r6, #0
	bl func_08008724
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r4, r6, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r3, #0xd2
	lsls r3, r3, #2
	adds r1, r6, r3
	adds r0, r6, #0
	bl func_08098CE8
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r6, #0
	bl func_08008918
	adds r1, r0, #0
	ldr r0, [sp, #8]
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L08095E64 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #4]
	ldr r1, .L08095E68 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r1, #0
	mov sb, r1
	movs r2, #0
	str r2, [sp, #0xc]
	mov r8, r2
	movs r3, #0
	str r3, [sp, #0x10]
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #0x14]
	ldr r0, .L08095E6C @ =0x00000362
	adds r1, r6, r0
	movs r0, #0xc8
	strh r0, [r1]
	movs r1, #0
	str r1, [sp, #0x18]
.L08095E44:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	mov r0, sl
	cmp r0, #6
	bls .L08095E58
	b .L08096278
.L08095E58:
	lsls r0, r0, #2
	ldr r1, .L08095E70 @ =.L08095E74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08095E64: .4byte vtable_unk_080E5B80
.L08095E68: .4byte 0x00000889
.L08095E6C: .4byte 0x00000362
.L08095E70: .4byte .L08095E74
.L08095E74: @ jump table
	.4byte .L08095E90 @ case 0
	.4byte .L08095EA4 @ case 1
	.4byte .L080960C8 @ case 2
	.4byte .L080961D4 @ case 3
	.4byte .L080961F8 @ case 4
	.4byte .L08096240 @ case 5
	.4byte .L08096268 @ case 6
.L08095E90:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08095E9E
	b .L08096278
.L08095E9E:
	movs r2, #1
	mov sl, r2
	b .L08096278
.L08095EA4:
	mov r5, sb
	ldr r7, [sp, #0xc]
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L08095EC4
	cmp r5, #2
	bgt .L08095EC0
	mov r0, sb
	adds r0, #1
	b .L08095EE0
.L08095EC0:
	movs r0, #0
	b .L08095EE0
.L08095EC4:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L08095EE4
	mov r3, sb
	cmp r3, #0
	ble .L08095EDE
	mov r0, sb
	subs r0, #1
	b .L08095EE0
.L08095EDE:
	movs r0, #3
.L08095EE0:
	mov sb, r0
	b .L08095F10
.L08095EE4:
	movs r4, #0
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne .L08095F02
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08095F04
.L08095F02:
	movs r4, #1
.L08095F04:
	cmp r4, #0
	beq .L08095F10
	movs r0, #1
	ldr r4, [sp, #0xc]
	eors r4, r0
	str r4, [sp, #0xc]
.L08095F10:
	cmp r5, sb
	bne .L08095F1A
	ldr r0, [sp, #0xc]
	cmp r7, r0
	beq .L08095F24
.L08095F1A:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xcb
	bl func_08008B6C
.L08095F24:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #2
	mov r2, sb
	adds r7, r0, r2
	ldr r0, .L08095F80 @ =gUnk_08117838
	adds r1, r7, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r2, [r1]
	movs r3, #0xd8
	lsls r3, r3, #2
	adds r0, r6, r3
	strh r2, [r0]
	ldrb r1, [r1, #1]
	ldr r4, .L08095F84 @ =0x00000362
	adds r0, r6, r4
	strh r1, [r0]
	ldr r0, [sp, #0x14]
	cmp r0, r7
	beq .L08095FB6
	str r7, [sp, #0x14]
	movs r1, #0xcc
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r0, [r0]
	asrs r0, r7
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08095FAC
	cmp r7, #7
	beq .L08095F8C
	movs r0, #0xb
	adds r4, r7, #0
	muls r4, r0, r4
	ldr r0, .L08095F88 @ =gUnk_08101064
	adds r4, r4, r0
	adds r5, r6, #0
	adds r5, #0x80
	adds r0, r5, #0
	movs r1, #4
	bl func_08050E98
	adds r0, r5, #0
	adds r1, r4, #0
	b .L08095F9E
	.align 2, 0
.L08095F80: .4byte gUnk_08117838
.L08095F84: .4byte 0x00000362
.L08095F88: .4byte gUnk_08101064
.L08095F8C:
	ldr r5, .L08095FA8 @ =gUnk_08100DE4
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050E98
	adds r0, r4, #0
	adds r1, r5, #0
.L08095F9E:
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L08095FB6
	.align 2, 0
.L08095FA8: .4byte gUnk_08100DE4
.L08095FAC:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08095FFC @ =gUnk_08100AC0
	bl func_08050D8C
.L08095FB6:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08096016
	movs r2, #0xcc
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrh r0, [r0]
	asrs r0, r7
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	beq .L08096078
	cmp r7, #7
	beq .L0809600C
	ldr r0, .L08096000 @ =0x0000035A
	adds r3, r6, r0
	ldrh r2, [r3]
	lsls r1, r2, #0x14
	lsrs r1, r1, #0x14
	adds r0, r4, #0
	lsls r0, r7
	eors r1, r0
	ldr r4, .L08096004 @ =0x00000FFF
	adds r0, r4, #0
	ands r1, r0
	ldr r0, .L08096008 @ =0xFFFFF000
	ands r0, r2
	orrs r0, r1
	strh r0, [r3]
	b .L08096066
	.align 2, 0
.L08095FFC: .4byte gUnk_08100AC0
.L08096000: .4byte 0x0000035A
.L08096004: .4byte 0x00000FFF
.L08096008: .4byte 0xFFFFF000
.L0809600C:
	movs r0, #1
	str r0, [sp, #0x10]
	movs r1, #2
	mov sl, r1
	b .L08096066
.L08096016:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L080960A8
	ldr r2, .L08096054 @ =0x0000035A
	adds r4, r6, r2
	ldrh r3, [r4]
	ldr r5, .L08096058 @ =0x00000FFF
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq .L08096084
	cmp r7, #7
	beq .L08096078
	lsls r0, r3, #0x14
	lsrs r1, r0, #0x14
	movs r2, #1
	lsls r2, r7
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq .L08096060
	bics r1, r2
	ands r1, r5
	ldr r0, .L0809605C @ =0xFFFFF000
	ands r0, r3
	orrs r0, r1
	b .L08096064
	.align 2, 0
.L08096054: .4byte 0x0000035A
.L08096058: .4byte 0x00000FFF
.L0809605C: .4byte 0xFFFFF000
.L08096060:
	ldr r0, .L08096074 @ =0xFFFFF000
	ands r0, r3
.L08096064:
	strh r0, [r4]
.L08096066:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc5
	bl func_08008B6C
	b .L08096278
	.align 2, 0
.L08096074: .4byte 0xFFFFF000
.L08096078:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc7
	bl func_08008B6C
	b .L08096278
.L08096084:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc6
	bl func_08008B6C
	movs r3, #2
	str r3, [sp, #8]
	movs r4, #5
	mov sl, r4
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L080960A4 @ =gUnk_08100AC0
	bl func_08050D8C
	b .L08096278
	.align 2, 0
.L080960A4: .4byte gUnk_08100AC0
.L080960A8:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne .L080960B8
	b .L08096278
.L080960B8:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc5
	bl func_08008B6C
	movs r0, #3
	mov sl, r0
	b .L08096278
.L080960C8:
	mov r4, r8
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L080960E6
	cmp r4, #3
	bgt .L080960E2
	mov r0, r8
	adds r0, #1
	b .L08096102
.L080960E2:
	movs r0, #0
	b .L08096102
.L080960E6:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08096106
	mov r1, r8
	cmp r1, #0
	ble .L08096100
	mov r0, r8
	subs r0, #1
	b .L08096102
.L08096100:
	movs r0, #4
.L08096102:
	mov r8, r0
	b .L08096144
.L08096106:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L08096126
	movs r2, #2
	add r8, r2
	mov r3, r8
	cmp r3, #4
	ble .L08096144
	movs r0, #5
	rsbs r0, r0, #0
	add r8, r0
	b .L08096144
.L08096126:
	adds r0, r6, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L08096144
	movs r1, #2
	rsbs r1, r1, #0
	add r8, r1
	mov r2, r8
	cmp r2, #0
	bge .L08096144
	movs r3, #5
	add r8, r3
.L08096144:
	cmp r4, r8
	beq .L08096152
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xcb
	bl func_08008B6C
.L08096152:
	movs r4, #0xd8
	lsls r4, r4, #2
	adds r1, r6, r4
	movs r0, #0x90
	strh r0, [r1]
	mov r1, r8
	lsls r0, r1, #4
	adds r0, #0x18
	ldr r2, .L080961C4 @ =0x00000362
	adds r1, r6, r2
	strh r0, [r1]
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L080961A2
	ldr r3, .L080961C8 @ =0x0000035A
	adds r4, r6, r3
	ldrh r3, [r4]
	lsls r1, r3, #0x14
	lsrs r1, r1, #0x14
	mov r2, r8
	adds r2, #7
	movs r0, #1
	lsls r0, r2
	eors r1, r0
	ldr r2, .L080961CC @ =0x00000FFF
	adds r0, r2, #0
	ands r1, r0
	ldr r0, .L080961D0 @ =0xFFFFF000
	ands r0, r3
	orrs r0, r1
	strh r0, [r4]
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc5
	bl func_08008B6C
.L080961A2:
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08096278
	movs r3, #0
	str r3, [sp, #0x10]
	movs r4, #1
	mov sl, r4
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc6
	bl func_08008B6C
	b .L08096278
	.align 2, 0
.L080961C4: .4byte 0x00000362
.L080961C8: .4byte 0x0000035A
.L080961CC: .4byte 0x00000FFF
.L080961D0: .4byte 0xFFFFF000
.L080961D4:
	ldr r5, .L080961F4 @ =gUnk_08100DF4
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050E98
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	movs r0, #4
	mov sl, r0
	b .L08096278
	.align 2, 0
.L080961F4: .4byte gUnk_08100DF4
.L080961F8:
	movs r4, #0
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L08096216
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L08096218
.L08096216:
	movs r4, #1
.L08096218:
	cmp r4, #0
	beq .L08096278
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xc5
	bl func_08008B6C
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L0809623C @ =gUnk_08100AC0
	bl func_08050D8C
	movs r1, #1
	str r1, [sp, #8]
	movs r2, #5
	mov sl, r2
	b .L08096278
	.align 2, 0
.L0809623C: .4byte gUnk_08100AC0
.L08096240:
	ldr r0, [sp, #4]
	ldr r1, .L08096264 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r3, #6
	mov sl, r3
	b .L08096278
	.align 2, 0
.L08096264: .4byte 0x00000889
.L08096268:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08096278
	movs r4, #1
	str r4, [sp, #0x18]
.L08096278:
	ldr r4, [sp, #0x10]
	adds r0, r6, #0
	adds r1, r4, #0
	bl func_08099000
	ldr r1, .L080962EC @ =0x0000035A
	adds r0, r6, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	adds r0, r6, #0
	movs r2, #0
	adds r3, r4, #0
	bl func_08099144
	adds r0, r6, #0
	bl func_080CD8A0
	ldr r2, [sp, #0x18]
	cmp r2, #0
	bne .L080962A4
	b .L08095E44
.L080962A4:
	movs r3, #0xc8
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r5, #0
	str r5, [r4, #4]
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	ldr r4, [sp, #8]
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L080962DA
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080962DA:
	adds r0, r4, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080962EC: .4byte 0x0000035A

	thumb_func_start func_080962F0
func_080962F0: @ 0x080962F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xcc
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0xa8]
	movs r1, #0
	str r1, [sp, #0xac]
	add r0, sp, #4
	add r2, sp, #0xa8
	ldrb r2, [r2]
	strb r2, [r0]
	add r6, sp, #0x84
	add r4, sp, #0xa8
	ldrb r4, [r4]
	strb r4, [r6]
	adds r0, r7, #0
	bl func_08008724
	movs r0, #0xba
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r4, r7, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	adds r0, r7, #0
	bl func_0809964C
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0x8c
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
	ldr r0, [sp, #0xa8]
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L0809640C @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	add r5, sp, #0x90
	str r4, [r5]
	ldr r1, .L08096410 @ =0x00002B90
	adds r0, r7, r1
	add r2, sp, #0xa8
	ldrb r2, [r2]
	strb r2, [r0]
	adds r0, r7, #0
	bl func_08096B88
	movs r4, #0
	str r4, [sp, #0xb0]
	movs r0, #1
	str r0, [sp, #0xb4]
	movs r1, #0
	str r1, [sp, #0xb8]
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp, #0xbc]
	ldr r4, .L08096414 @ =0x00000362
	adds r1, r7, r4
	movs r0, #0xc8
	strh r0, [r1]
	ldr r0, [r5]
	ldr r1, .L08096418 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [r5]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r0, .L0809641C @ =0x000033D2
	adds r1, r7, r0
	movs r0, #2
	strb r0, [r1]
	movs r1, #0
	str r1, [sp, #0xc0]
.L080963EE:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r0, [sp, #0xac]
	cmp r0, #4
	bls .L08096402
	b .L08096B14
.L08096402:
	lsls r0, r0, #2
	ldr r1, .L08096420 @ =.L08096424
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0809640C: .4byte vtable_unk_080E5B80
.L08096410: .4byte 0x00002B90
.L08096414: .4byte 0x00000362
.L08096418: .4byte 0x00000889
.L0809641C: .4byte 0x000033D2
.L08096420: .4byte .L08096424
.L08096424: @ jump table
	.4byte .L08096438 @ case 0
	.4byte .L0809644C @ case 1
	.4byte .L08096ABC @ case 2
	.4byte .L08096ADC @ case 3
	.4byte .L08096B04 @ case 4
.L08096438:
	ldr r0, [sp, #0x90]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L08096446
	b .L08096B14
.L08096446:
	movs r2, #1
	str r2, [sp, #0xac]
	b .L08096B14
.L0809644C:
	movs r6, #0
	ldr r4, .L0809648C @ =0x00002B90
	adds r5, r7, r4
.L08096452:
	movs r4, #0
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	bne .L08096474
	adds r0, r7, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq .L08096476
.L08096474:
	movs r4, #1
.L08096476:
	cmp r4, #0
	beq .L08096490
	movs r0, #0
	ldr r1, [sp, #0xb0]
	cmp r1, #3
	bgt .L08096484
	movs r0, #4
.L08096484:
	str r0, [sp, #0xb0]
	movs r2, #1
	str r2, [sp, #0xb4]
	b .L08096544
	.align 2, 0
.L0809648C: .4byte 0x00002B90
.L08096490:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L080964B2
	ldr r4, [sp, #0xb0]
	cmp r4, #6
	bgt .L080964AA
	adds r0, r4, #0
	adds r0, #1
	b .L080964AC
.L080964AA:
	movs r0, #0
.L080964AC:
	str r0, [sp, #0xb0]
	str r0, [sp, #0xb8]
	b .L08096544
.L080964B2:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L080964CE
	ldr r0, [sp, #0xb0]
	cmp r0, #0
	ble .L080964CA
	subs r0, #1
	b .L080964AC
.L080964CA:
	movs r0, #7
	b .L080964AC
.L080964CE:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L08096554
	ldr r1, [sp, #0xb4]
	adds r1, #1
	str r1, [sp, #0xb4]
	cmp r1, #2
	ble .L0809651E
	movs r2, #0
	str r2, [sp, #0xb4]
	ldr r4, [sp, #0xb0]
	cmp r4, #3
	ble .L08096544
	ldr r0, .L08096500 @ =0x00002B90
	adds r1, r7, r0
	ldrb r0, [r1]
	cmp r0, #7
	bhi .L08096504
	adds r0, #1
	strb r0, [r1]
	b .L08096506
	.align 2, 0
.L08096500: .4byte 0x00002B90
.L08096504:
	movs r0, #0
.L08096506:
	strb r0, [r5]
	adds r0, r7, #0
	bl func_08096B88
	ldrb r0, [r5]
	cmp r0, #0
	bne .L08096544
	ldr r1, [sp, #0xb0]
	str r1, [sp, #0xb8]
	movs r2, #4
	str r2, [sp, #0xb0]
	b .L08096544
.L0809651E:
	ldrb r0, [r5]
	cmp r0, #0
	bne .L08096544
	ldr r4, [sp, #0xb4]
	cmp r4, #1
	bne .L08096544
	ldr r1, .L08096550 @ =0x00002BA0
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r2, [sp, #0xb8]
	str r2, [sp, #0xb0]
	cmp r1, #3
	bgt .L08096544
	adds r0, r2, #0
	subs r0, #4
	cmp r1, r0
	bgt .L08096544
	adds r1, #3
	str r1, [sp, #0xb0]
.L08096544:
	adds r0, r7, #0
	adds r0, #0x94
	movs r1, #0xcb
	bl func_08008B6C
	b .L080965E4
	.align 2, 0
.L08096550: .4byte 0x00002BA0
.L08096554:
	adds r0, r7, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L080965E4
	ldr r4, [sp, #0xb4]
	subs r4, #1
	str r4, [sp, #0xb4]
	cmp r4, #0
	bge .L080965C2
	movs r0, #2
	str r0, [sp, #0xb4]
	ldr r1, [sp, #0xb0]
	cmp r1, #3
	ble .L080965DA
	ldr r2, .L08096588 @ =0x00002B90
	adds r1, r7, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq .L0809658C
	subs r0, #1
	strb r0, [r1]
	b .L0809658E
	.align 2, 0
.L08096588: .4byte 0x00002B90
.L0809658C:
	movs r0, #8
.L0809658E:
	strb r0, [r5]
	adds r0, r7, #0
	bl func_08096B88
	ldrb r0, [r5]
	cmp r0, #0
	bne .L080965BC
	ldr r4, .L080965B8 @ =0x00002BA0
	adds r0, r7, r4
	ldr r1, [r0]
	ldr r0, [sp, #0xb8]
	str r0, [sp, #0xb0]
	cmp r1, #3
	bgt .L080965DA
	subs r0, #4
	cmp r1, r0
	bgt .L080965DA
	adds r1, #3
	str r1, [sp, #0xb0]
	b .L080965DA
	.align 2, 0
.L080965B8: .4byte 0x00002BA0
.L080965BC:
	ldr r1, [sp, #0xb8]
	str r1, [sp, #0xb0]
	b .L080965DA
.L080965C2:
	ldr r2, [sp, #0xb0]
	cmp r2, #3
	ble .L080965DA
	ldrb r0, [r5]
	cmp r0, #0
	bne .L080965DA
	ldr r4, [sp, #0xb4]
	cmp r4, #0
	bne .L080965DA
	str r2, [sp, #0xb8]
	movs r0, #4
	str r0, [sp, #0xb0]
.L080965DA:
	adds r0, r7, #0
	adds r0, #0x94
	movs r1, #0xcb
	bl func_08008B6C
.L080965E4:
	ldr r1, .L08096620 @ =0x00002BA4
	adds r0, r7, r1
	ldr r2, [sp, #0xb4]
	adds r0, r0, r2
	ldrb r1, [r0]
	movs r0, #7
	ldr r4, [sp, #0xb0]
	subs r0, r0, r4
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq .L08096600
	movs r6, #1
.L08096600:
	cmp r6, #0
	bne .L08096606
	b .L08096452
.L08096606:
	ldr r0, [sp, #0xb4]
	cmp r0, #0
	beq .L08096624
	adds r1, r0, #0
	subs r1, #1
	lsls r1, r1, #2
	movs r0, #3
	ldr r2, [sp, #0xb0]
	ands r0, r2
	adds r1, r1, r0
	adds r6, r1, #1
	b .L08096626
	.align 2, 0
.L08096620: .4byte 0x00002BA4
.L08096624:
	movs r6, #0
.L08096626:
	movs r0, #4
	ldr r4, [sp, #0xb0]
	ands r0, r4
	asrs r0, r0, #2
	lsls r1, r0, #4
	subs r1, r1, r0
	ldr r2, .L08096694 @ =gUnk_08117838
	lsls r3, r6, #2
	adds r2, r3, r2
	lsls r1, r1, #3
	ldrb r0, [r2]
	adds r1, r1, r0
	movs r4, #0xd8
	lsls r4, r4, #2
	adds r0, r7, r4
	strh r1, [r0]
	ldrb r1, [r2, #1]
	ldr r2, .L08096698 @ =0x00000362
	adds r0, r7, r2
	strh r1, [r0]
	ldr r4, .L0809669C @ =0x00002B90
	adds r5, r7, r4
	ldrb r1, [r5]
	lsls r1, r1, #3
	ldr r2, [sp, #0xb4]
	lsls r0, r2, #1
	adds r0, r0, r2
	adds r1, r1, r0
	ldr r4, [sp, #0xb0]
	adds r1, r1, r4
	ldr r0, [sp, #0xbc]
	cmp r0, r1
	bne .L0809666A
	b .L080967D0
.L0809666A:
	str r1, [sp, #0xbc]
	cmp r2, #0
	bne .L08096672
	b .L080967C6
.L08096672:
	add r4, sp, #0x94
	adds r0, r4, #0
	str r3, [sp, #0xc8]
	bl __12RucksackItem
	mov r8, r4
	ldr r3, [sp, #0xc8]
	ldr r1, [sp, #0xb0]
	cmp r1, #3
	ble .L080966A0
	ldrb r2, [r5]
	subs r3, r6, #1
	adds r0, r7, #0
	mov r1, r8
	bl func_08096EE8
	b .L080966AC
	.align 2, 0
.L08096694: .4byte gUnk_08117838
.L08096698: .4byte 0x00000362
.L0809669C: .4byte 0x00002B90
.L080966A0:
	adds r0, r3, r7
	ldr r2, .L08096704 @ =0x00002BAC
	adds r0, r0, r2
	ldr r0, [r0]
	mov r4, r8
	str r0, [r4]
.L080966AC:
	mov r0, r8
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0
	bne .L080967A6
	mov r0, r8
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08096772
	ldr r5, .L08096708 @ =gUnk_08100E28
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #7
	bls .L080966D6
	movs r4, #7
.L080966D6:
	add r0, sp, #0x84
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	mov r0, sp
	adds r0, r0, r4
	adds r0, #0x84
	strb r6, [r0]
	mov r0, r8
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L0809670C
	add r4, sp, #0x98
	adds r0, r4, #0
	mov r1, r8
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetName__C4Food
	b .L0809671C
	.align 2, 0
.L08096704: .4byte 0x00002BAC
.L08096708: .4byte gUnk_08100E28
.L0809670C:
	mov r0, r8
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xa0
	strb r1, [r0]
	bl GetName__C7Article
.L0809671C:
	adds r5, r0, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0x7f
	bls .L0809672A
	movs r4, #0x7f
.L0809672A:
	add r0, sp, #4
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	mov r0, sp
	adds r0, r0, r4
	adds r0, #4
	strb r6, [r0]
	add r0, sp, #0x84
	bl strlen
	mov r6, sp
	adds r6, r6, r0
	adds r6, #0x84
	movs r1, #7
	subs r5, r1, r0
	cmp r5, #0
	beq .L0809676E
	add r0, sp, #4
	bl strlen
	adds r4, r0, #0
	cmp r4, r5
	bls .L0809675E
	adds r4, r5, #0
.L0809675E:
	adds r0, r6, #0
	add r1, sp, #4
	adds r2, r4, #0
	bl memcpy
	adds r1, r6, r4
	movs r0, #0
	strb r0, [r1]
.L0809676E:
	add r5, sp, #4
	b .L080967A8
.L08096772:
	mov r0, r8
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L08096790
	add r4, sp, #0x98
	adds r0, r4, #0
	mov r1, r8
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetDesc__C4Food
	adds r5, r0, #0
	b .L080967A8
.L08096790:
	mov r0, r8
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xa1
	strb r1, [r0]
	bl GetDesc__C7Article
	adds r5, r0, #0
	b .L080967A8
.L080967A6:
	movs r5, #0
.L080967A8:
	cmp r5, #0
	beq .L080967C6
	adds r4, r7, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050E98
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	b .L080967D0
.L080967C6:
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08096838 @ =gUnk_08100AC0
	bl func_08050D8C
.L080967D0:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L080967E0
	b .L08096980
.L080967E0:
	ldr r0, [sp, #0xb4]
	cmp r0, #0
	bne .L080967E8
	b .L08096974
.L080967E8:
	adds r1, r0, #0
	subs r1, #1
	lsls r1, r1, #2
	movs r0, #3
	ldr r2, [sp, #0xb0]
	ands r0, r2
	adds r6, r1, r0
	cmp r2, #3
	bgt .L080967FC
	b .L0809693E
.L080967FC:
	add r5, sp, #0x94
	adds r0, r5, #0
	bl __12RucksackItem
	ldr r0, .L0809683C @ =0x00002B90
	adds r4, r7, r0
	ldrb r2, [r4]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r3, r6, #0
	bl func_08096EE8
	ldr r1, .L08096840 @ =0x00002BA7
	adds r0, r7, r1
	ldrb r4, [r4]
	adds r0, r0, r4
	ldrb r1, [r0]
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	mov r8, r5
	cmp r1, #0
	beq .L0809682C
	b .L08096930
.L0809682C:
	movs r6, #0
	movs r2, #0x94
	adds r2, r2, r7
	mov sb, r2
	b .L08096846
	.align 2, 0
.L08096838: .4byte gUnk_08100AC0
.L0809683C: .4byte 0x00002B90
.L08096840: .4byte 0x00002BA7
.L08096844:
	adds r6, #1
.L08096846:
	cmp r6, #7
	bgt .L0809692C
	lsls r4, r6, #2
	ldr r1, .L080968BC @ =0x00002BB0
	adds r0, r4, r1
	adds r0, r7, r0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	mov sl, r4
	cmp r0, #0
	beq .L08096844
	mov r5, r8
	adds r0, r5, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08096928
	adds r0, r5, #0
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08096924
	adds r0, r5, #0
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L080968C4
	add r4, sp, #0x9c
	adds r0, r4, #0
	adds r1, r5, #0
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r2, sl
	adds r0, r2, r7
	ldr r4, .L080968BC @ =0x00002BB0
	adds r0, r0, r4
	ldr r1, [r5]
	str r1, [r0]
	ldr r0, [r7, #0x78]
	ldr r2, .L080968C0 @ =gUnk_086678A0
	movs r1, #1
	str r1, [sp]
	adds r1, r6, #0
	bl func_080CB304
	adds r0, r7, #0
	adds r1, r5, #0
	bl func_08096FB4
	b .L08096A80
	.align 2, 0
.L080968BC: .4byte 0x00002BB0
.L080968C0: .4byte gUnk_086678A0
.L080968C4:
	mov r0, r8
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xa2
	strb r1, [r0]
	bl CanBeDiscarded__C7Article
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08096920
	mov r0, r8
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xa3
	strb r1, [r0]
	bl GetIconId__C7Article
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r0, r4, r7
	ldr r1, .L08096918 @ =0x00002BB0
	adds r0, r0, r1
	mov r2, r8
	ldr r1, [r2]
	str r1, [r0]
	ldr r0, [r7, #0x78]
	ldr r2, .L0809691C @ =gUnk_086678A0
	movs r1, #1
	str r1, [sp]
	adds r1, r6, #0
	bl func_080CB304
	adds r0, r7, #0
	mov r1, r8
	bl func_08096FB4
	b .L08096A80
	.align 2, 0
.L08096918: .4byte 0x00002BB0
.L0809691C: .4byte gUnk_086678A0
.L08096920:
	mov r0, sb
	b .L08096978
.L08096924:
	mov r0, sb
	b .L08096978
.L08096928:
	mov r0, sb
	b .L08096978
.L0809692C:
	mov r0, sb
	b .L08096978
.L08096930:
	adds r0, r7, #0
	adds r1, r5, #0
	bl func_08097114
	adds r0, r7, #0
	adds r0, #0x94
	b .L08096A82
.L0809693E:
	lsls r0, r6, #2
	ldr r4, .L0809696C @ =0x00002BB0
	adds r0, r0, r4
	adds r4, r7, r0
	adds r0, r4, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08096974
	adds r0, r7, #0
	adds r1, r4, #0
	bl func_08097114
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L08096970 @ =gUnk_08100AC0
	bl func_08050D8C
	adds r0, r7, #0
	adds r0, #0x94
	b .L08096A82
	.align 2, 0
.L0809696C: .4byte 0x00002BB0
.L08096970: .4byte gUnk_08100AC0
.L08096974:
	adds r0, r7, #0
	adds r0, #0x94
.L08096978:
	movs r1, #0xc7
	bl func_08008B6C
	b .L08096B14
.L08096980:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L080969B0
	movs r0, #2
	str r0, [sp, #0xa8]
	movs r1, #3
	str r1, [sp, #0xac]
	adds r0, r7, #0
	adds r0, #0x80
	ldr r1, .L080969AC @ =gUnk_08100AC0
	bl func_08050D8C
	adds r0, r7, #0
	adds r0, #0x94
	movs r1, #0xc6
	bl func_08008B6C
	b .L08096B14
	.align 2, 0
.L080969AC: .4byte gUnk_08100AC0
.L080969B0:
	adds r0, r7, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	bne .L080969C0
	b .L08096B14
.L080969C0:
	movs r5, #0
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r7, r2
	strb r5, [r0]
	movs r4, #0x94
	adds r4, r4, r7
	mov sb, r4
	adds r0, r2, #0
	adds r0, r0, r7
	mov r8, r0
	ldr r1, .L08096A10 @ =0x00002BB0
	adds r4, r7, r1
	mov sl, r5
	add r6, sp, #0x94
	movs r2, #7
	str r2, [sp, #0xc4]
.L080969E2:
	adds r0, r4, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08096A44
	adds r0, r4, #0
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L08096A18
	adds r0, r6, #0
	adds r1, r4, #0
	bl GetFood__C12RucksackItem
	adds r0, r6, #0
	bl GetId__C4Food
	ldr r2, .L08096A14 @ =0x0000034A
	adds r1, r7, r2
	add r1, sl
	adds r0, #1
	b .L08096A30
	.align 2, 0
.L08096A10: .4byte 0x00002BB0
.L08096A14: .4byte 0x0000034A
.L08096A18:
	adds r0, r4, #0
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xa4
	strb r1, [r0]
	bl GetId__C7Article
	ldr r2, .L08096A8C @ =0x0000034A
	adds r1, r7, r2
	add r1, sl
	adds r0, #0xac
.L08096A30:
	strh r0, [r1]
	movs r0, #1
	lsls r0, r5
	mov r2, r8
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	movs r0, #2
	add sl, r0
	adds r5, #1
.L08096A44:
	adds r4, #4
	ldr r1, [sp, #0xc4]
	subs r1, #1
	str r1, [sp, #0xc4]
	cmp r1, #0
	bge .L080969E2
	cmp r5, #0
	beq .L08096A94
	adds r2, r7, #0
	adds r2, #0x80
	ldr r1, .L08096A90 @ =gUnk_08100AC0
	cmp r5, #7
	bgt .L08096A72
	movs r3, #0
	lsls r0, r5, #1
	ldr r4, .L08096A8C @ =0x0000034A
	adds r0, r0, r4
	adds r0, r0, r7
.L08096A68:
	strh r3, [r0]
	adds r0, #2
	adds r5, #1
	cmp r5, #7
	ble .L08096A68
.L08096A72:
	adds r0, r2, #0
	bl func_08050D8C
	movs r0, #1
	str r0, [sp, #0xa8]
	movs r1, #3
	str r1, [sp, #0xac]
.L08096A80:
	mov r0, sb
.L08096A82:
	movs r1, #0xc5
	bl func_08008B6C
	b .L08096B14
	.align 2, 0
.L08096A8C: .4byte 0x0000034A
.L08096A90: .4byte gUnk_08100AC0
.L08096A94:
	ldr r2, .L08096AB4 @ =0x000033D4
	adds r1, r7, r2
	movs r2, #0
	movs r0, #0xa
	strh r0, [r1]
	ldr r4, .L08096AB8 @ =0x000033D2
	adds r0, r7, r4
	strb r2, [r0]
	mov r0, sb
	movs r1, #0xc7
	bl func_08008B6C
	movs r0, #2
	str r0, [sp, #0xac]
	b .L08096B14
	.align 2, 0
.L08096AB4: .4byte 0x000033D4
.L08096AB8: .4byte 0x000033D2
.L08096ABC:
	ldr r1, .L08096AD8 @ =0x000033D2
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne .L08096B14
	movs r2, #1
	rsbs r2, r2, #0
	str r2, [sp, #0xbc]
	movs r4, #1
	str r4, [sp, #0xac]
	b .L08096B14
	.align 2, 0
.L08096AD8: .4byte 0x000033D2
.L08096ADC:
	ldr r0, [sp, #0x90]
	ldr r1, .L08096B00 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x90]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r0, #4
	str r0, [sp, #0xac]
	b .L08096B14
	.align 2, 0
.L08096B00: .4byte 0x00000889
.L08096B04:
	ldr r0, [sp, #0x90]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08096B14
	movs r1, #1
	str r1, [sp, #0xc0]
.L08096B14:
	adds r0, r7, #0
	bl func_08099ACC
	adds r0, r7, #0
	bl func_080CD8A0
	adds r0, r7, #0
	bl func_08097D38
	ldr r2, [sp, #0xc0]
	cmp r2, #0
	bne .L08096B2E
	b .L080963EE
.L08096B2E:
	movs r0, #0xba
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r5, #0
	str r5, [r4, #4]
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r4, r7, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	movs r2, #0xc2
	lsls r2, r2, #2
	adds r4, r7, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	str r5, [r4, #4]
	ldr r4, [sp, #0xa8]
	ldr r1, [sp, #0x90]
	cmp r1, #0
	beq .L08096B74
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08096B74:
	adds r0, r4, #0
	add sp, #0xcc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08096B88
func_08096B88: @ 0x08096B88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r5, r0, #0
	movs r0, #8
	mov r8, r0
	add r0, sp, #4
	bl __12RucksackItem
	ldr r1, .L08096BF0 @ =0x00002B90
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08096BB2
	ldr r2, .L08096BF4 @ =0x00002BA0
	adds r0, r5, r2
	ldr r0, [r0]
	mov r8, r0
.L08096BB2:
	movs r6, #0
	add r3, sp, #0xc
	mov sl, r3
	cmp r6, r8
	bge .L08096C4A
.L08096BBC:
	ldr r4, .L08096BF0 @ =0x00002B90
	adds r0, r5, r4
	ldrb r2, [r0]
	adds r0, r5, #0
	add r1, sp, #4
	adds r3, r6, #0
	bl func_08096EE8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	add r0, sp, #4
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08096C3C
	add r0, sp, #4
	bl IsWrapped__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08096BF8
	movs r3, #0xb0
	lsls r3, r3, #1
	b .L08096C28
	.align 2, 0
.L08096BF0: .4byte 0x00002B90
.L08096BF4: .4byte 0x00002BA0
.L08096BF8:
	add r0, sp, #4
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L08096C14
	add r4, sp, #8
	adds r0, r4, #0
	add r1, sp, #4
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetIconId__C4Food
	b .L08096C24
.L08096C14:
	add r0, sp, #4
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0x1c
	strb r1, [r0]
	bl GetIconId__C7Article
.L08096C24:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
.L08096C28:
	ldr r0, [r5, #0x7c]
	str r7, [sp]
	adds r1, r6, #0
	ldr r2, .L08096C38 @ =gUnk_086678A0
	bl func_080CC728
	b .L08096C44
	.align 2, 0
.L08096C38: .4byte gUnk_086678A0
.L08096C3C:
	ldr r0, [r5, #0x7c]
	adds r1, r6, #0
	bl func_080CCDEC
.L08096C44:
	adds r6, #1
	cmp r6, r8
	blt .L08096BBC
.L08096C4A:
	mov r6, r8
	cmp r6, #7
	bgt .L08096C60
	mov r4, r8
.L08096C52:
	ldr r0, [r5, #0x7c]
	adds r1, r4, #0
	bl func_080CCDEC
	adds r4, #1
	cmp r4, #7
	ble .L08096C52
.L08096C60:
	ldr r7, .L08096C74 @ =0x00002B90
	adds r0, r5, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne .L08096C7C
	ldr r1, .L08096C78 @ =0x00002BA0
	adds r0, r5, r1
	ldrh r0, [r0]
	b .L08096C7E
	.align 2, 0
.L08096C74: .4byte 0x00002B90
.L08096C78: .4byte 0x00002BA0
.L08096C7C:
	movs r0, #8
.L08096C7E:
	adds r4, r0, #0
	ldr r2, .L08096D70 @ =0x00002B90
	adds r0, r5, r2
	ldrb r0, [r0]
	movs r1, #3
	cmp r0, #0
	bne .L08096C8E
	ldr r1, .L08096D74 @ =0x0000101C
.L08096C8E:
	mov r8, r1
	movs r3, #0
	cmp r3, r4
	bge .L08096CD6
	ldr r6, .L08096D78 @ =gUnk_0811785C
	mov sb, r6
	ldr r6, .L08096D74 @ =0x0000101C
	ldr r7, .L08096D7C @ =0x00002BD0
.L08096C9E:
	adds r3, #1
	lsls r0, r3, #2
	add r0, sb
	ldrb r1, [r0]
	adds r1, #0xf
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r2, [r0, #1]
	adds r0, r1, #1
	lsls r0, r0, #1
	lsls r2, r2, #6
	adds r0, r0, r7
	adds r0, r2, r0
	adds r0, r0, r5
	lsls r1, r1, #1
	adds r1, r1, r7
	adds r2, r2, r1
	adds r2, r2, r5
	movs r1, #1
.L08096CC4:
	strh r6, [r2]
	strh r6, [r0]
	adds r0, #0x40
	adds r2, #0x40
	subs r1, #1
	cmp r1, #0
	bge .L08096CC4
	cmp r3, r4
	blt .L08096C9E
.L08096CD6:
	cmp r4, #7
	bhi .L08096D1E
	adds r3, r4, #0
	cmp r3, #7
	bgt .L08096D1E
	ldr r7, .L08096D78 @ =gUnk_0811785C
	movs r4, #3
	ldr r6, .L08096D7C @ =0x00002BD0
.L08096CE6:
	adds r3, #1
	lsls r0, r3, #2
	adds r0, r0, r7
	ldrb r1, [r0]
	adds r1, #0xf
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrb r2, [r0, #1]
	adds r0, r1, #1
	lsls r0, r0, #1
	lsls r2, r2, #6
	adds r0, r0, r6
	adds r0, r2, r0
	adds r0, r0, r5
	lsls r1, r1, #1
	adds r1, r1, r6
	adds r2, r2, r1
	adds r2, r2, r5
	movs r1, #1
.L08096D0C:
	strh r4, [r2]
	strh r4, [r0]
	adds r0, #0x40
	adds r2, #0x40
	subs r1, #1
	cmp r1, #0
	bge .L08096D0C
	cmp r3, #7
	ble .L08096CE6
.L08096D1E:
	movs r1, #0
	ldr r7, .L08096D80 @ =0x00002C32
	adds r0, r5, r7
.L08096D24:
	mov r2, r8
	strh r2, [r0]
	strh r2, [r0, #2]
	adds r0, #0x40
	adds r1, #1
	cmp r1, #1
	ble .L08096D24
	adds r0, r5, #0
	bl func_08008910
	str r0, [sp, #0x28]
	ldr r3, .L08096D7C @ =0x00002BD0
	adds r1, r5, r3
	add r0, sp, #0xc
	ldr r2, .L08096D84 @ =0x0600F800
	movs r3, #0xc0
	lsls r3, r3, #2
	bl func_08008F0C
	mov sb, sl
	ldr r4, [sp, #0x28]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L08096D88
	cmp r1, #0
	beq .L08096D66
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r6, r7}
	stm r0!, {r2, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08096D66:
	ldr r3, [sp, #0x28]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L08096E5C
	.align 2, 0
.L08096D70: .4byte 0x00002B90
.L08096D74: .4byte 0x0000101C
.L08096D78: .4byte gUnk_0811785C
.L08096D7C: .4byte 0x00002BD0
.L08096D80: .4byte 0x00002C32
.L08096D84: .4byte 0x0600F800
.L08096D88:
	str r1, [sp, #0x2c]
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r4, [sp, #0x28]
	ldr r1, [r4]
	ldr r6, [sp, #0x2c]
	subs r0, r6, r1
	asrs r4, r0, #4
	str r4, [sp, #0x20]
	add r2, sp, #0x24
	add r0, sp, #0x20
	cmp r4, #1
	bhs .L08096DA4
	adds r0, r2, #0
.L08096DA4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08096DC6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sl, r4
	cmp r0, #0
	bne .L08096DC0
	mov r0, sl
	bl func_080D3BC0
.L08096DC0:
	ldr r7, [sp, #0x28]
	ldr r1, [r7]
	b .L08096DCA
.L08096DC6:
	movs r0, #0
	mov sl, r0
.L08096DCA:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov r3, r8
	b .L08096DE8
.L08096DD4:
	cmp r3, #0
	beq .L08096DE4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08096DE4:
	adds r2, #0x10
	adds r3, #0x10
.L08096DE8:
	ldr r0, [sp, #0x2c]
	cmp r2, r0
	bne .L08096DD4
	adds r4, r3, #0
	ldr r0, [sp, #0x24]
	cmp r0, #1
	bne .L08096E0A
	cmp r4, #0
	beq .L08096E06
	adds r0, r4, #0
	mov r1, sb
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08096E06:
	adds r4, #0x10
	b .L08096E32
.L08096E0A:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L08096E30
.L08096E12:
	cmp r2, #0
	beq .L08096E22
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08096E22:
	movs r6, #1
	rsbs r6, r6, #0
	add ip, r6
	adds r2, #0x10
	mov r7, ip
	cmp r7, #0
	bne .L08096E12
.L08096E30:
	adds r4, r2, #0
.L08096E32:
	ldr r0, [sp, #0x28]
	ldr r2, [r0, #4]
	ldr r1, [r0]
	adds r0, r1, #0
	cmp r1, r2
	beq .L08096E44
.L08096E3E:
	adds r0, #0x10
	cmp r0, r2
	bne .L08096E3E
.L08096E44:
	cmp r1, #0
	beq .L08096E4E
	adds r0, r1, #0
	bl free
.L08096E4E:
	mov r0, sl
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x28]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L08096E5C:
	ldr r4, .L08096EAC @ =0x00002B90
	adds r3, r5, r4
	ldrb r1, [r3]
	ldr r6, .L08096EB0 @ =0x00000369
	adds r0, r5, r6
	movs r2, #0
	strb r1, [r0]
	ldr r7, .L08096EB4 @ =0x0000036A
	adds r1, r5, r7
	movs r0, #0xd
	strb r0, [r1]
	ldr r1, .L08096EB8 @ =0x0000036B
	adds r0, r5, r1
	movs r6, #8
	strb r6, [r0]
	ldr r7, .L08096EBC @ =0x00002BA4
	adds r4, r5, r7
	strb r2, [r4]
	ldr r0, .L08096EC0 @ =0x00002BA5
	adds r2, r5, r0
	movs r0, #0xff
	strb r0, [r2]
	adds r7, #2
	adds r1, r5, r7
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	ldrb r0, [r3]
	cmp r0, #0
	bne .L08096ED4
	strb r6, [r4]
	ldr r1, .L08096EC4 @ =0x00002BA0
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #2
	beq .L08096EC8
	cmp r0, #4
	beq .L08096ECC
	b .L08096ED4
	.align 2, 0
.L08096EAC: .4byte 0x00002B90
.L08096EB0: .4byte 0x00000369
.L08096EB4: .4byte 0x0000036A
.L08096EB8: .4byte 0x0000036B
.L08096EBC: .4byte 0x00002BA4
.L08096EC0: .4byte 0x00002BA5
.L08096EC4: .4byte 0x00002BA0
.L08096EC8:
	movs r0, #0xfc
	strb r0, [r2]
.L08096ECC:
	ldr r2, .L08096EE4 @ =0x00002BA6
	adds r1, r5, r2
	movs r0, #0xf0
	strb r0, [r1]
.L08096ED4:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08096EE4: .4byte 0x00002BA6

	thumb_func_start func_08096EE8
func_08096EE8: @ 0x08096EE8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	movs r0, #0
	mov r8, r0
	cmp r6, #0
	bne .L08096F36
	ldr r1, .L08096F24 @ =0x00002BA0
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r5, r0
	bge .L08096F2C
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r1, .L08096F28 @ =0x00001C38
	adds r0, r0, r1
	adds r1, r5, #0
	bl GetItemAt__8RucksackUi
	ldr r0, [r0]
	str r0, [r7]
	movs r0, #1
	mov r8, r0
	b .L08096FA4
	.align 2, 0
.L08096F24: .4byte 0x00002BA0
.L08096F28: .4byte 0x00001C38
.L08096F2C:
	mov r0, sp
	bl __12RucksackItem
	ldr r0, [sp]
	b .L08096FA2
.L08096F36:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetFridge__9FarmHouse
	subs r1, r6, #1
	lsls r1, r1, #3
	adds r1, r1, r5
	bl GetFoodStackAt__6FridgeUi
	ldr r0, [r0]
	str r0, [sp]
	mov r0, sp
	bl IsEmpty__C9FoodStack
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08096F9A
	add r5, sp, #4
	add r4, sp, #8
	adds r0, r4, #0
	mov r1, sp
	bl GetFood__C9FoodStack
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
	ldr r0, [sp, #4]
	str r0, [r7]
	mov r0, sp
	bl GetAmount__C9FoodStack
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	b .L08096FA4
.L08096F9A:
	add r0, sp, #4
	bl __12RucksackItem
	ldr r0, [sp, #4]
.L08096FA2:
	str r0, [r7]
.L08096FA4:
	mov r0, r8
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08096FB4
func_08096FB4: @ 0x08096FB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	adds r5, r1, #0
	mov r0, sp
	bl __12RucksackItem
	ldr r0, .L08096FEC @ =0x0000FFFF
	mov sb, r0
	adds r0, r5, #0
	bl GetKind__C12RucksackItem
	adds r6, r0, #0
	cmp r6, #0
	bne .L08096FF0
	add r4, sp, #4
	adds r0, r4, #0
	adds r1, r5, #0
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetId__C4Food
	b .L08097000
	.align 2, 0
.L08096FEC: .4byte 0x0000FFFF
.L08096FF0:
	adds r0, r5, #0
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #8
	strb r1, [r0]
	bl GetId__C7Article
.L08097000:
	mov sl, r0
	movs r5, #0
	ldr r7, .L08097040 @ =0x00002BA7
	add r7, r8
.L08097008:
	mov r0, r8
	mov r1, sp
	movs r2, #0
	adds r3, r5, #0
	bl func_08096EE8
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0809707C
	mov r0, sp
	bl GetKind__C12RucksackItem
	cmp r0, r6
	bne .L0809707C
	cmp r6, #0
	bne .L08097044
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, sp
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetId__C4Food
	b .L08097056
	.align 2, 0
.L08097040: .4byte 0x00002BA7
.L08097044:
	mov r0, sp
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #9
	strb r1, [r0]
	bl GetId__C7Article
.L08097056:
	cmp r0, sl
	bne .L0809707C
	movs r0, #1
	lsls r0, r5
	ldrb r1, [r7]
	orrs r0, r1
	strb r0, [r7]
	mov r2, sb
	lsls r1, r2, #0x10
	asrs r0, r1, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne .L08097078
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	b .L0809707A
.L08097078:
	lsrs r0, r1, #0x10
.L0809707A:
	mov sb, r0
.L0809707C:
	adds r5, #1
	cmp r5, #7
	ble .L08097008
	cmp r6, #0
	bne .L080970FE
	movs r6, #8
.L08097088:
	adds r0, r6, #0
	cmp r6, #0
	bge .L08097090
	adds r0, r6, #7
.L08097090:
	asrs r5, r0, #3
	lsls r0, r5, #3
	subs r7, r6, r0
	mov r0, r8
	mov r1, sp
	adds r2, r5, #0
	adds r3, r7, #0
	bl func_08096EE8
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080970F8
	add r4, sp, #4
	adds r0, r4, #0
	mov r1, sp
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetId__C4Food
	movs r1, #0
	cmp sl, r0
	bne .L080970C6
	movs r1, #1
.L080970C6:
	cmp r1, #0
	beq .L080970F8
	ldr r2, .L080970F0 @ =0x00002BA7
	add r2, r8
	adds r2, r2, r5
	movs r0, #1
	lsls r0, r7
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	mov r0, sb
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	movs r2, #1
	rsbs r2, r2, #0
	cmp r0, r2
	bne .L080970F4
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	b .L080970F6
	.align 2, 0
.L080970F0: .4byte 0x00002BA7
.L080970F4:
	lsrs r0, r1, #0x10
.L080970F6:
	mov sb, r0
.L080970F8:
	adds r6, #1
	cmp r6, #0x47
	ble .L08097088
.L080970FE:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start func_08097114
func_08097114: @ 0x08097114
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	adds r5, r1, #0
	mov r0, sp
	bl __12RucksackItem
	adds r0, r5, #0
	bl GetKind__C12RucksackItem
	mov r8, r0
	cmp r0, #0
	bne .L08097148
	add r4, sp, #4
	adds r0, r4, #0
	adds r1, r5, #0
	bl GetFood__C12RucksackItem
	adds r0, r4, #0
	bl GetId__C4Food
	b .L08097158
.L08097148:
	adds r0, r5, #0
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0xc
	strb r1, [r0]
	bl GetId__C7Article
.L08097158:
	mov sl, r0
	movs r4, #0
	add r6, sp, #4
	ldr r5, .L0809719C @ =0x00002BA7
	add r5, sb
.L08097162:
	mov r0, sb
	mov r1, sp
	movs r2, #0
	adds r3, r4, #0
	bl func_08096EE8
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080971C0
	mov r0, sp
	bl GetKind__C12RucksackItem
	cmp r0, r8
	bne .L080971C0
	mov r0, r8
	cmp r0, #0
	bne .L080971A0
	adds r0, r6, #0
	mov r1, sp
	bl GetFood__C12RucksackItem
	adds r0, r6, #0
	bl GetId__C4Food
	b .L080971B2
	.align 2, 0
.L0809719C: .4byte 0x00002BA7
.L080971A0:
	mov r0, sp
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xd
	strb r1, [r0]
	bl GetId__C7Article
.L080971B2:
	cmp r0, sl
	bne .L080971C0
	movs r1, #1
	lsls r1, r4
	ldrb r0, [r5]
	bics r0, r1
	strb r0, [r5]
.L080971C0:
	adds r4, #1
	cmp r4, #7
	ble .L08097162
	mov r1, r8
	cmp r1, #0
	bne .L08097226
	movs r5, #8
	add r7, sp, #4
.L080971D0:
	adds r0, r5, #0
	cmp r5, #0
	bge .L080971D8
	adds r0, r5, #7
.L080971D8:
	asrs r4, r0, #3
	lsls r0, r4, #3
	subs r6, r5, r0
	mov r0, sb
	mov r1, sp
	adds r2, r4, #0
	adds r3, r6, #0
	bl func_08096EE8
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08097220
	adds r0, r7, #0
	mov r1, sp
	bl GetFood__C12RucksackItem
	adds r0, r7, #0
	bl GetId__C4Food
	movs r1, #0
	cmp sl, r0
	bne .L0809720C
	movs r1, #1
.L0809720C:
	cmp r1, #0
	beq .L08097220
	ldr r2, .L08097260 @ =0x00002BA7
	add r2, sb
	adds r2, r2, r4
	movs r1, #1
	lsls r1, r6
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
.L08097220:
	adds r5, #1
	cmp r5, #0x47
	ble .L080971D0
.L08097226:
	movs r5, #0
	ldr r4, .L08097264 @ =0x00002BB0
	add r4, sb
	add r6, sp, #4
.L0809722E:
	ldr r0, [r4]
	str r0, [sp]
	mov r0, sp
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08097292
	mov r0, sp
	bl GetKind__C12RucksackItem
	cmp r0, r8
	bne .L08097292
	mov r0, r8
	cmp r0, #0
	bne .L08097268
	adds r0, r6, #0
	mov r1, sp
	bl GetFood__C12RucksackItem
	adds r0, r6, #0
	bl GetId__C4Food
	b .L0809727A
	.align 2, 0
.L08097260: .4byte 0x00002BA7
.L08097264: .4byte 0x00002BB0
.L08097268:
	mov r0, sp
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	mov r0, sp
	adds r0, #0xe
	strb r1, [r0]
	bl GetId__C7Article
.L0809727A:
	cmp r0, sl
	bne .L08097292
	add r0, sp, #8
	bl __12RucksackItem
	ldr r0, [sp, #8]
	str r0, [r4]
	mov r1, sb
	ldr r0, [r1, #0x78]
	adds r1, r5, #0
	bl func_080CBA60
.L08097292:
	adds r4, #4
	adds r5, #1
	cmp r5, #7
	ble .L0809722E
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080972AC
func_080972AC: @ 0x080972AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0
	mov r8, r0
	movs r7, #0
	movs r1, #1
	str r1, [sp, #8]
	movs r2, #0
	mov sb, r2
	adds r0, r6, #0
	bl func_08008724
	movs r3, #0xc8
	lsls r3, r3, #2
	adds r4, r6, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r6, r0
	adds r0, r6, #0
	bl func_080989DC
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r6, #0
	bl func_08008918
	adds r1, r0, #0
	mov r2, r8
	str r2, [r4]
	str r2, [r4, #4]
	ldr r0, .L0809736C @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #4]
	ldr r1, .L08097370 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r3, .L08097374 @ =0x000033D2
	adds r1, r6, r3
	movs r0, #2
	strb r0, [r1]
	movs r0, #0
	mov sl, r0
.L0809734E:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	adds r0, r7, #0
	cmp r0, #8
	bls .L08097362
	b .L08097584
.L08097362:
	lsls r0, r0, #2
	ldr r1, .L08097378 @ =.L0809737C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0809736C: .4byte vtable_unk_080E5B80
.L08097370: .4byte 0x00000889
.L08097374: .4byte 0x000033D2
.L08097378: .4byte .L0809737C
.L0809737C: @ jump table
	.4byte .L080973A0 @ case 0
	.4byte .L080973CC @ case 1
	.4byte .L08097414 @ case 2
	.4byte .L0809743C @ case 3
	.4byte .L0809745C @ case 4
	.4byte .L08097500 @ case 5
	.4byte .L08097526 @ case 6
	.4byte .L0809754C @ case 7
	.4byte .L08097574 @ case 8
.L080973A0:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L080973AE
	b .L08097584
.L080973AE:
	ldr r2, .L080973C4 @ =0x000033D4
	adds r1, r6, r2
	movs r2, #0
	movs r0, #2
	strh r0, [r1]
	ldr r3, .L080973C8 @ =0x000033D2
	adds r0, r6, r3
	strb r2, [r0]
	movs r7, #1
	b .L08097584
	.align 2, 0
.L080973C4: .4byte 0x000033D4
.L080973C8: .4byte 0x000033D2
.L080973CC:
	ldr r1, .L080973F0 @ =0x000033D2
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	beq .L080973DC
	b .L08097584
.L080973DC:
	ldr r2, .L080973F4 @ =0x000033D3
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne .L080973F8
	movs r7, #2
	b .L08097404
	.align 2, 0
.L080973F0: .4byte 0x000033D2
.L080973F4: .4byte 0x000033D3
.L080973F8:
	cmp r0, #0
	blt .L08097404
	cmp r0, #2
	bgt .L08097404
	mov r8, r0
	movs r7, #7
.L08097404:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097410 @ =gUnk_08100AC0
	bl func_08050D8C
	b .L08097584
	.align 2, 0
.L08097410: .4byte gUnk_08100AC0
.L08097414:
	ldr r0, [sp, #4]
	ldr r1, .L08097438 @ =0x00000889
	adds r0, #0xc
	movs r2, #2
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #3
	b .L08097584
	.align 2, 0
.L08097438: .4byte 0x00000889
.L0809743C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	bge .L0809744A
	b .L08097584
.L0809744A:
	adds r0, r6, #0
	adds r0, #0x94
	movs r1, #0xad
	bl func_08008B6C
	movs r3, #0x78
	mov sb, r3
	movs r7, #4
	b .L08097584
.L0809745C:
	mov r1, sb
	lsls r0, r1, #0x10
	ldr r2, .L080974F8 @ =0xFFFF0000
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	mov sb, r3
	cmp r0, #0
	blt .L0809746E
	b .L08097584
.L0809746E:
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	movs r3, #0x82
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0]
	adds r4, r6, #0
	adds r4, #0x7c
	movs r5, #0
	ldr r1, [r6, #0x7c]
	cmp r5, r1
	beq .L080974A2
	cmp r1, #0
	beq .L080974A2
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080974A2:
	str r5, [r4]
	adds r4, r6, #0
	adds r4, #0x78
	movs r5, #0
	ldr r1, [r6, #0x78]
	cmp r5, r1
	beq .L080974C6
	cmp r1, #0
	beq .L080974C6
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080974C6:
	str r5, [r4]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r0, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, .L080974FC @ =0x00000889
	adds r0, #0xc
	movs r2, #2
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #5
	b .L08097584
	.align 2, 0
.L080974F8: .4byte 0xFFFF0000
.L080974FC: .4byte 0x00000889
.L08097500:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08097584
	adds r0, r6, #0
	bl func_080975F4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #4
	mov r8, r1
	cmp r0, #3
	beq .L08097522
	movs r2, #3
	mov r8, r2
.L08097522:
	movs r7, #6
	b .L08097584
.L08097526:
	ldr r3, .L08097544 @ =0x000033D2
	adds r0, r6, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne .L08097584
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097548 @ =gUnk_08100AC0
	bl func_08050D8C
	movs r7, #7
	b .L08097584
	.align 2, 0
.L08097544: .4byte 0x000033D2
.L08097548: .4byte gUnk_08100AC0
.L0809754C:
	ldr r0, [sp, #4]
	ldr r1, .L08097570 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #8
	b .L08097584
	.align 2, 0
.L08097570: .4byte 0x00000889
.L08097574:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08097584
	movs r0, #1
	mov sl, r0
.L08097584:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080975A4
	ldr r2, .L080975F0 @ =0x0000035A
	adds r0, r6, r2
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r3, #0xd7
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrb r2, [r0]
	adds r0, r6, #0
	movs r3, #0
	bl func_08099144
.L080975A4:
	adds r0, r6, #0
	bl func_080CD8A0
	adds r0, r6, #0
	bl func_08097D38
	mov r0, sl
	cmp r0, #0
	bne .L080975B8
	b .L0809734E
.L080975B8:
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r0, #0
	str r0, [r4, #4]
	mov r4, r8
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L080975DE
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080975DE:
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080975F0: .4byte 0x0000035A

	thumb_func_start func_080975F4
func_080975F4: @ 0x080975F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	adds r7, r0, #0
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r7, #0
	adds r1, r4, #0
	mov r2, sp
	bl func_080977A0
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #0xfa
	lsls r1, r1, #1
	adds r0, r0, r1
	bl GetFridge__9FarmHouse
	mov sb, r0
	movs r2, #1
	rsbs r2, r2, #0
	mov sl, r2
	ldr r4, .L08097670 @ =0x00002BB0
	adds r6, r7, r4
	movs r0, #7
	mov r8, r0
.L08097634:
	adds r0, r6, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	adds r5, r7, #0
	adds r5, #0x8c
	cmp r0, #0
	bne .L08097686
	adds r0, r7, #0
	adds r1, r6, #0
	bl func_08096FB4
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, sl
	beq .L08097686
	cmp r1, #7
	bgt .L08097678
	ldr r0, [r5]
	ldr r2, .L08097674 @ =0x00001C38
	adds r0, r0, r2
	bl GetItemAt__8RucksackUi
	adds r4, r0, #0
	add r0, sp, #0x14
	bl __12RucksackItem
	ldr r0, [sp, #0x14]
	str r0, [r4]
	b .L08097686
	.align 2, 0
.L08097670: .4byte 0x00002BB0
.L08097674: .4byte 0x00001C38
.L08097678:
	subs r1, #8
	mov r0, sb
	bl GetFoodStackAt__6FridgeUi
	movs r1, #1
	bl SubtractAmount__9FoodStackUi
.L08097686:
	adds r6, #4
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	mov r0, r8
	cmp r0, #0
	bge .L08097634
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r1, r7, r2
	ldrh r0, [r1]
	cmp r0, #0xab
	bhi .L080976F4
	add r6, sp, #0x14
	adds r1, r0, #0
	subs r1, #1
	adds r0, r6, #0
	bl __4FoodUi
	mov r0, sp
	ldrh r1, [r0, #2]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r2, #4
	ldrsb r2, [r0, r2]
	adds r0, r6, #0
	bl AddBonuses__4FoodScSc
	ldr r5, [r5]
	ldr r4, .L080976F0 @ =0x00001C2C
	adds r5, r5, r4
	add r4, sp, #0x18
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #3
	bl memcpy
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x19
	ldrb r0, [r0]
	lsls r0, r0, #8
	orrs r0, r1
	mov r1, sp
	adds r1, #0x1a
	ldrb r1, [r1]
	lsls r1, r1, #0x10
	orrs r1, r0
	adds r0, r5, #0
	bl func_0800F3B0
	b .L0809770C
	.align 2, 0
.L080976F0: .4byte 0x00001C2C
.L080976F4:
	add r4, sp, #0x1c
	ldrh r1, [r1]
	subs r1, #0xac
	adds r0, r4, #0
	bl __7ArticleUi
	ldr r0, [r5]
	ldr r1, .L0809773C @ =0x00001C2C
	adds r0, r0, r1
	ldrb r1, [r4]
	bl func_0800F3E8
.L0809770C:
	adds r0, r7, #0
	mov r1, sp
	bl func_08097800
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	beq .L0809772C
	movs r4, #0xd2
	lsls r4, r4, #2
	adds r0, r7, r4
	ldrh r1, [r0]
	ldr r4, .L08097740 @ =0x000033DC
	adds r0, r7, r4
	strh r1, [r0]
.L0809772C:
	cmp r2, #1
	beq .L0809775C
	cmp r2, #1
	bgt .L08097744
	cmp r2, #0
	beq .L0809774E
	b .L0809777C
	.align 2, 0
.L0809773C: .4byte 0x00001C2C
.L08097740: .4byte 0x000033DC
.L08097744:
	cmp r2, #2
	beq .L08097768
	cmp r2, #3
	beq .L08097774
	b .L0809777C
.L0809774E:
	ldr r0, .L08097758 @ =0x000033D4
	adds r1, r7, r0
	movs r0, #3
	b .L0809777A
	.align 2, 0
.L08097758: .4byte 0x000033D4
.L0809775C:
	ldr r2, .L08097764 @ =0x000033D4
	adds r1, r7, r2
	movs r0, #4
	b .L0809777A
	.align 2, 0
.L08097764: .4byte 0x000033D4
.L08097768:
	ldr r4, .L08097770 @ =0x000033D4
	adds r1, r7, r4
	movs r0, #5
	b .L0809777A
	.align 2, 0
.L08097770: .4byte 0x000033D4
.L08097774:
	ldr r0, .L08097798 @ =0x000033D4
	adds r1, r7, r0
	movs r0, #6
.L0809777A:
	strh r0, [r1]
.L0809777C:
	ldr r2, .L0809779C @ =0x000033D2
	adds r1, r7, r2
	movs r0, #0
	strb r0, [r1]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08097798: .4byte 0x000033D4
.L0809779C: .4byte 0x000033D2

	thumb_func_start func_080977A0
func_080977A0: @ 0x080977A0
	push {r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	mov r0, sp
	bl func_0809A58C
	adds r1, r4, #0
	mov r0, sp
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldrh r0, [r4]
	cmp r0, #0
	bne .L080977F4
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	movs r3, #0
	ldr r6, .L080977DC @ =gUnk_081010E8
	ldrh r5, [r4, #6]
	adds r2, r6, #2
	adds r1, r6, #0
.L080977CC:
	ldrh r0, [r1]
	ands r0, r5
	cmp r0, #0
	beq .L080977E0
	ldrh r0, [r2]
	strh r0, [r4]
	b .L080977EA
	.align 2, 0
.L080977DC: .4byte gUnk_081010E8
.L080977E0:
	adds r2, #4
	adds r1, #4
	adds r3, #1
	cmp r3, #7
	ble .L080977CC
.L080977EA:
	ldrh r0, [r4]
	cmp r0, #0
	bne .L080977F4
	ldrh r0, [r6, #0x22]
	strh r0, [r4]
.L080977F4:
	ldrh r0, [r4]
	add sp, #0x14
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_08097800
func_08097800: @ 0x08097800
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	mov sb, r1
	ldrh r0, [r1]
	subs r0, #0x9b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bhi .L08097860
	adds r4, r7, #0
	adds r4, #0x8c
	ldr r0, [r4]
	ldr r1, .L08097858 @ =0x00002214
	adds r0, r0, r1
	mov r2, sb
	ldrh r1, [r2]
	bl func_0809AA58
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08097852
	ldr r2, [r4]
	ldr r3, .L0809785C @ =0x000021C3
	adds r2, r2, r3
	ldrb r3, [r2]
	lsls r1, r3, #0x19
	lsrs r1, r1, #0x1c
	adds r1, #1
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #3
	movs r0, #0x79
	rsbs r0, r0, #0
	ands r0, r3
	orrs r0, r1
	strb r0, [r2]
.L08097852:
	movs r0, #0
	b .L08097ACC
	.align 2, 0
.L08097858: .4byte 0x00002214
.L0809785C: .4byte 0x000021C3
.L08097860:
	movs r4, #0
	movs r6, #0xda
	lsls r6, r6, #2
	adds r0, r7, r6
	ldrb r0, [r0]
	cmp r4, r0
	bge .L08097912
	movs r0, #0x8c
	adds r0, r0, r7
	mov r8, r0
	ldr r3, .L080978C8 @ =0x00002214
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r6, r7, r1
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r5, r7, r2
.L08097882:
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r3
	adds r1, r5, #0
	adds r2, r4, #0
	str r3, [sp, #0x28]
	bl func_0809A970
	ldrh r0, [r6]
	ldr r3, [sp, #0x28]
	ldrh r2, [r5]
	cmp r0, r2
	bne .L08097904
	ldr r4, .L080978CC @ =0x00000347
	adds r0, r7, r4
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne .L08097912
	mov r1, r8
	ldr r0, [r1]
	adds r0, r0, r3
	adds r1, r6, #0
	bl func_0809A9C0
	mov r2, sb
	ldrh r0, [r2]
	cmp r0, #0x50
	beq .L080978D8
	cmp r0, #0x50
	bgt .L080978D0
	cmp r0, #0x19
	beq .L080978D8
	b .L080978FA
	.align 2, 0
.L080978C8: .4byte 0x00002214
.L080978CC: .4byte 0x00000347
.L080978D0:
	cmp r0, #0x7e
	beq .L080978D8
	cmp r0, #0x8d
	bne .L080978FA
.L080978D8:
	mov r4, r8
	ldr r3, [r4]
	ldr r6, .L08097900 @ =0x000021C3
	adds r3, r3, r6
	ldrb r2, [r3]
	lsls r0, r2, #0x19
	lsrs r0, r0, #0x1c
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #3
	movs r4, #0x79
	rsbs r4, r4, #0
	adds r1, r4, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r3]
.L080978FA:
	movs r0, #1
	b .L08097ACC
	.align 2, 0
.L08097900: .4byte 0x000021C3
.L08097904:
	adds r4, #1
	movs r1, #0xda
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r4, r0
	blt .L08097882
.L08097912:
	movs r2, #0
	mov ip, r2
	add r1, sp, #0x14
	movs r3, #0xcd
	lsls r3, r3, #2
	adds r0, r7, r3
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	movs r6, #0
	mov r8, r6
	movs r0, #0x16
	add r0, sp
	mov sl, r0
	ldr r1, .L0809795C @ =0x0000034A
	adds r4, r7, r1
	adds r5, r4, #0
.L08097936:
	ldrh r0, [r4]
	cmp r0, #0
	beq .L08097966
	movs r2, #0
	ldrh r3, [r5]
	mov r1, sl
.L08097942:
	adds r0, r1, #0
	ldrh r6, [r0]
	cmp r3, r6
	beq .L08097960
	adds r1, r0, #2
	adds r2, #1
	cmp r2, #7
	ble .L08097942
.L08097952:
	cmp r2, #8
	bne .L08097966
	movs r0, #1
	mov ip, r0
	b .L08097974
	.align 2, 0
.L0809795C: .4byte 0x0000034A
.L08097960:
	movs r0, #0
	strh r0, [r1]
	b .L08097952
.L08097966:
	adds r4, #2
	adds r5, #2
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #7
	ble .L08097936
.L08097974:
	movs r1, #0
	mov r3, sl
	ldrh r0, [r3]
	cmp r0, #0
	beq .L08097984
	movs r4, #1
	mov ip, r4
	b .L08097998
.L08097984:
	adds r1, #1
	cmp r1, #7
	bgt .L08097998
	lsls r0, r1, #1
	add r0, sl
	ldrh r0, [r0]
	cmp r0, #0
	beq .L08097984
	movs r6, #1
	mov ip, r6
.L08097998:
	ldr r1, .L080979BC @ =0x0000035A
	adds r0, r7, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	ldr r2, .L080979C0 @ =0x00000346
	adds r0, r7, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x14
	cmp r1, r0
	beq .L080979B0
	movs r3, #1
	mov ip, r3
.L080979B0:
	mov r4, ip
	cmp r4, #0
	bne .L080979C4
	movs r0, #2
	b .L08097ACC
	.align 2, 0
.L080979BC: .4byte 0x0000035A
.L080979C0: .4byte 0x00000346
.L080979C4:
	movs r6, #0xcd
	lsls r6, r6, #2
	adds r1, r7, r6
	adds r0, r7, #0
	mov r2, sp
	bl func_080977A0
	mov r0, sb
	movs r2, #2
	ldrsh r1, [r0, r2]
	mov r0, sp
	movs r3, #2
	ldrsh r0, [r0, r3]
	subs r2, r1, r0
	mov r4, sb
	movs r6, #4
	ldrsh r1, [r4, r6]
	mov r0, sp
	movs r3, #4
	ldrsh r0, [r0, r3]
	subs r1, r1, r0
	movs r3, #0
	movs r0, #0xb
	rsbs r0, r0, #0
	cmp r2, r0
	bgt .L080979FC
	adds r4, r3, #0
	b .L08097A38
.L080979FC:
	movs r0, #6
	rsbs r0, r0, #0
	cmp r2, r0
	bgt .L08097A08
	movs r4, #1
	b .L08097A38
.L08097A08:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bgt .L08097A14
	movs r4, #2
	b .L08097A38
.L08097A14:
	movs r0, #1
	rsbs r0, r0, #0
	movs r4, #3
	cmp r2, r0
	beq .L08097A38
	movs r4, #4
	cmp r2, #0
	beq .L08097A38
	movs r4, #5
	cmp r2, #1
	beq .L08097A38
	movs r4, #6
	cmp r2, #5
	ble .L08097A38
	movs r4, #8
	cmp r2, #0xa
	bgt .L08097A38
	movs r4, #7
.L08097A38:
	movs r0, #0xb
	rsbs r0, r0, #0
	cmp r1, r0
	bgt .L08097A4A
	movs r3, #0x11
	cmp r4, #8
	bne .L08097ABE
	movs r3, #0x10
	b .L08097ABE
.L08097A4A:
	movs r0, #6
	rsbs r0, r0, #0
	cmp r1, r0
	bgt .L08097A5C
	movs r3, #0xf
	cmp r4, #7
	bne .L08097ABE
	movs r3, #0xe
	b .L08097ABE
.L08097A5C:
	movs r0, #2
	rsbs r0, r0, #0
	cmp r1, r0
	bgt .L08097A6E
	movs r3, #0xd
	cmp r4, #6
	bne .L08097ABE
	movs r3, #0xc
	b .L08097ABE
.L08097A6E:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne .L08097A80
	movs r3, #0xb
	cmp r4, #5
	bne .L08097ABE
	movs r3, #0xa
	b .L08097ABE
.L08097A80:
	cmp r1, #0
	bne .L08097A8E
	movs r3, #9
	cmp r4, #4
	bne .L08097ABE
	movs r3, #8
	b .L08097ABE
.L08097A8E:
	cmp r1, #1
	bne .L08097A9C
	movs r3, #7
	cmp r4, #3
	bne .L08097ABE
	movs r3, #6
	b .L08097ABE
.L08097A9C:
	cmp r1, #5
	bgt .L08097AAA
	movs r3, #5
	cmp r4, #2
	bne .L08097ABE
	movs r3, #4
	b .L08097ABE
.L08097AAA:
	cmp r1, #0xa
	bgt .L08097AB8
	movs r3, #3
	cmp r4, #1
	bne .L08097ABE
	movs r3, #2
	b .L08097ABE
.L08097AB8:
	rsbs r0, r4, #0
	orrs r0, r4
	lsrs r3, r0, #0x1f
.L08097ABE:
	ldr r6, .L08097ADC @ =0x000033DE
	adds r0, r7, r6
	strb r4, [r0]
	ldr r1, .L08097AE0 @ =0x000033DF
	adds r0, r7, r1
	strb r3, [r0]
	movs r0, #3
.L08097ACC:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08097ADC: .4byte 0x000033DE
.L08097AE0: .4byte 0x000033DF

	thumb_func_start func_08097AE4
func_08097AE4: @ 0x08097AE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	movs r0, #0
	mov sb, r0
	movs r7, #0
	adds r0, r6, #0
	bl func_08008724
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r4, r6, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	mov r2, r8
	cmp r2, #0
	bne .L08097B28
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r6, r0
	adds r0, r6, #0
	bl func_080989DC
	b .L08097B34
.L08097B28:
	movs r2, #0xcd
	lsls r2, r2, #2
	adds r1, r6, r2
	adds r0, r6, #0
	bl func_080989DC
.L08097B34:
	adds r0, r6, #0
	bl func_08008918
	mov r1, sp
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r6, #0
	bl func_08008918
	adds r1, r0, #0
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	ldr r0, .L08097BAC @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #4]
	ldr r1, .L08097BB0 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r0, .L08097BB4 @ =0x000033D2
	adds r1, r6, r0
	movs r0, #2
	strb r0, [r1]
	movs r4, #0
.L08097B90:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	adds r0, r7, #0
	cmp r0, #1
	beq .L08097BFC
	cmp r0, #1
	bgt .L08097BB8
	cmp r0, #0
	beq .L08097BC2
	b .L08097CAA
	.align 2, 0
.L08097BAC: .4byte vtable_unk_080E5B80
.L08097BB0: .4byte 0x00000889
.L08097BB4: .4byte 0x000033D2
.L08097BB8:
	cmp r0, #2
	beq .L08097C66
	cmp r0, #3
	beq .L08097C9C
	b .L08097CAA
.L08097BC2:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08097CAA
	mov r1, r8
	cmp r1, #0
	bne .L08097BE0
	ldr r2, .L08097BDC @ =0x000033D4
	adds r1, r6, r2
	movs r0, #8
	b .L08097BE6
	.align 2, 0
.L08097BDC: .4byte 0x000033D4
.L08097BE0:
	ldr r0, .L08097BF4 @ =0x000033D4
	adds r1, r6, r0
	movs r0, #9
.L08097BE6:
	strh r0, [r1]
	ldr r2, .L08097BF8 @ =0x000033D2
	adds r1, r6, r2
	movs r0, #0
	strb r0, [r1]
	movs r7, #1
	b .L08097CAA
	.align 2, 0
.L08097BF4: .4byte 0x000033D4
.L08097BF8: .4byte 0x000033D2
.L08097BFC:
	ldr r1, .L08097C24 @ =0x000033D2
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne .L08097CAA
	ldr r2, .L08097C28 @ =0x000033D3
	adds r0, r6, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq .L08097C54
	cmp r0, #1
	bgt .L08097C2C
	cmp r0, #0
	beq .L08097C32
	b .L08097CAA
	.align 2, 0
.L08097C24: .4byte 0x000033D2
.L08097C28: .4byte 0x000033D3
.L08097C2C:
	cmp r0, #2
	beq .L08097C5E
	b .L08097CAA
.L08097C32:
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0]
	ldr r1, .L08097C50 @ =0x00002214
	adds r0, r0, r1
	movs r2, #0xd2
	lsls r2, r2, #2
	adds r1, r6, r2
	bl func_0809A9C0
	movs r0, #1
	rsbs r0, r0, #0
	mov sb, r0
	movs r7, #2
	b .L08097CAA
	.align 2, 0
.L08097C50: .4byte 0x00002214
.L08097C54:
	movs r1, #1
	rsbs r1, r1, #0
	mov sb, r1
	movs r7, #2
	b .L08097CAA
.L08097C5E:
	movs r2, #1
	mov sb, r2
	movs r7, #2
	b .L08097CAA
.L08097C66:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097C94 @ =gUnk_08100AC0
	bl func_08050D8C
	ldr r0, [sp, #4]
	adds r0, #0xc
	ldr r1, .L08097C98 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r7, #3
	b .L08097CAA
	.align 2, 0
.L08097C94: .4byte gUnk_08100AC0
.L08097C98: .4byte 0x00000889
.L08097C9C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L08097CAA
	movs r4, #1
.L08097CAA:
	mov r0, r8
	cmp r0, #0
	bne .L08097CD0
	ldr r1, .L08097CCC @ =0x0000035A
	adds r0, r6, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r2, [r0]
	adds r0, r6, #0
	movs r3, #0
	bl func_08099144
	b .L08097CEA
	.align 2, 0
.L08097CCC: .4byte 0x0000035A
.L08097CD0:
	ldr r1, .L08097D34 @ =0x00000346
	adds r0, r6, r1
	ldrh r1, [r0]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r6, r2
	ldrb r2, [r0]
	adds r0, r6, #0
	movs r3, #0
	bl func_08099144
.L08097CEA:
	adds r0, r6, #0
	bl func_080CD8A0
	adds r0, r6, #0
	bl func_08097D38
	cmp r4, #0
	bne .L08097CFC
	b .L08097B90
.L08097CFC:
	movs r0, #0xc8
	lsls r0, r0, #2
	adds r4, r6, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	movs r0, #0
	str r0, [r4, #4]
	mov r4, sb
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L08097D22
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08097D22:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08097D34: .4byte 0x00000346

	thumb_func_start func_08097D38
func_08097D38: @ 0x08097D38
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #6
	bls .L08097D48
	b .L08097FFE
.L08097D48:
	lsls r0, r0, #2
	ldr r1, .L08097D54 @ =.L08097D58
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08097D54: .4byte .L08097D58
.L08097D58: @ jump table
	.4byte .L08097FFE @ case 0
	.4byte .L08097FFE @ case 1
	.4byte .L08097FFE @ case 2
	.4byte .L08097D74 @ case 3
	.4byte .L08097FFE @ case 4
	.4byte .L08097FFE @ case 5
	.4byte .L08097FFE @ case 6
.L08097D74:
	ldr r0, .L08097D88 @ =0x000033D2
	adds r4, r6, r0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne .L08097D8C
	movs r0, #3
	strb r0, [r4]
	b .L08097FFE
	.align 2, 0
.L08097D88: .4byte 0x000033D2
.L08097D8C:
	cmp r0, #5
	bne .L08097D96
	movs r0, #2
	strb r0, [r4]
	b .L08097FFE
.L08097D96:
	cmp r0, #4
	bne .L08097E08
	adds r0, r6, #0
	adds r0, #0x80
	bl func_08050DF0
	adds r1, r0, #0
	movs r0, #3
	strb r0, [r4]
	ldr r2, .L08097DD0 @ =0x000033D4
	adds r0, r6, r2
	ldrh r0, [r0]
	cmp r0, #0
	bge .L08097DB4
	b .L08097FFE
.L08097DB4:
	cmp r0, #2
	ble .L08097DC4
	cmp r0, #9
	ble .L08097DBE
	b .L08097FFE
.L08097DBE:
	cmp r0, #8
	bge .L08097DC4
	b .L08097FFE
.L08097DC4:
	cmp r1, #1
	bne .L08097DD8
	ldr r0, .L08097DD4 @ =0x000033D3
	adds r1, r6, r0
	movs r0, #0
	b .L08097DF2
	.align 2, 0
.L08097DD0: .4byte 0x000033D4
.L08097DD4: .4byte 0x000033D3
.L08097DD8:
	cmp r1, #2
	bne .L08097DE8
	ldr r2, .L08097DE4 @ =0x000033D3
	adds r1, r6, r2
	movs r0, #1
	b .L08097DF2
	.align 2, 0
.L08097DE4: .4byte 0x000033D3
.L08097DE8:
	cmp r1, #3
	bne .L08097DF4
	ldr r0, .L08097E00 @ =0x000033D3
	adds r1, r6, r0
	movs r0, #2
.L08097DF2:
	strb r0, [r1]
.L08097DF4:
	ldr r2, .L08097E04 @ =0x000033D2
	adds r1, r6, r2
	movs r0, #5
	strb r0, [r1]
	b .L08097FFE
	.align 2, 0
.L08097E00: .4byte 0x000033D3
.L08097E04: .4byte 0x000033D2
.L08097E08:
	cmp r0, #3
	beq .L08097E0E
	b .L08097FFE
.L08097E0E:
	movs r0, #5
	strb r0, [r4]
	ldr r1, .L08097E28 @ =0x000033D4
	adds r0, r6, r1
	ldrh r0, [r0]
	cmp r0, #0xa
	bls .L08097E1E
	b .L08097FFE
.L08097E1E:
	lsls r0, r0, #2
	ldr r1, .L08097E2C @ =.L08097E30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08097E28: .4byte 0x000033D4
.L08097E2C: .4byte .L08097E30
.L08097E30: @ jump table
	.4byte .L08097E5C @ case 0
	.4byte .L08097E8C @ case 1
	.4byte .L08097EB0 @ case 2
	.4byte .L08097EE0 @ case 3
	.4byte .L08097EFC @ case 4
	.4byte .L08097F04 @ case 5
	.4byte .L08097F20 @ case 6
	.4byte .L08097F5C @ case 7
	.4byte .L08097F80 @ case 8
	.4byte .L08097FB0 @ case 9
	.4byte .L08097FE4 @ case 10
.L08097E5C:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097E7C @ =gUnk_08100E34
	ldr r2, .L08097E80 @ =gUnk_08100E48
	ldr r3, .L08097E84 @ =gUnk_08100E5C
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	bl func_08050E0C
	ldr r2, .L08097E88 @ =0x000033D2
	adds r1, r6, r2
	b .L08097FCC
	.align 2, 0
.L08097E7C: .4byte gUnk_08100E34
.L08097E80: .4byte gUnk_08100E48
.L08097E84: .4byte gUnk_08100E5C
.L08097E88: .4byte 0x000033D2
.L08097E8C:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097EA4 @ =gUnk_08100E74
	ldr r2, .L08097EA8 @ =gUnk_08100E90
	ldr r3, .L08097EAC @ =gUnk_08100E5C
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl func_08050E30
	b .L08097FC8
	.align 2, 0
.L08097EA4: .4byte gUnk_08100E74
.L08097EA8: .4byte gUnk_08100E90
.L08097EAC: .4byte gUnk_08100E5C
.L08097EB0:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097ED0 @ =gUnk_08100EA4
	ldr r2, .L08097ED4 @ =gUnk_08100EBC
	ldr r3, .L08097ED8 @ =gUnk_08100ED8
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	bl func_08050E0C
	ldr r2, .L08097EDC @ =0x000033D2
	adds r1, r6, r2
	b .L08097FCC
	.align 2, 0
.L08097ED0: .4byte gUnk_08100EA4
.L08097ED4: .4byte gUnk_08100EBC
.L08097ED8: .4byte gUnk_08100ED8
.L08097EDC: .4byte 0x000033D2
.L08097EE0:
	ldr r5, .L08097EF4 @ =gUnk_08100EF0
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050EBC
	ldr r0, .L08097EF8 @ =0x000033D8
	adds r2, r6, r0
	b .L08097F6E
	.align 2, 0
.L08097EF4: .4byte gUnk_08100EF0
.L08097EF8: .4byte 0x000033D8
.L08097EFC:
	ldr r5, .L08097F00 @ =gUnk_08100F04
	b .L08097F5E
	.align 2, 0
.L08097F00: .4byte gUnk_08100F04
.L08097F04:
	ldr r5, .L08097F18 @ =gUnk_08100F30
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050EBC
	ldr r0, .L08097F1C @ =0x000033D8
	adds r2, r6, r0
	b .L08097F6E
	.align 2, 0
.L08097F18: .4byte gUnk_08100F30
.L08097F1C: .4byte 0x000033D8
.L08097F20:
	ldr r5, .L08097F4C @ =gUnk_08100F30
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050EBC
	ldr r1, .L08097F50 @ =0x000033D8
	adds r2, r6, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_08050DA0
	ldr r2, .L08097F54 @ =0x000033D2
	adds r1, r6, r2
	movs r0, #3
	strb r0, [r1]
	ldr r0, .L08097F58 @ =0x000033D4
	adds r1, r6, r0
	movs r0, #7
	strh r0, [r1]
	b .L08097FFE
	.align 2, 0
.L08097F4C: .4byte gUnk_08100F30
.L08097F50: .4byte 0x000033D8
.L08097F54: .4byte 0x000033D2
.L08097F58: .4byte 0x000033D4
.L08097F5C:
	ldr r5, .L08097F78 @ =gUnk_08100F44
.L08097F5E:
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050EBC
	ldr r1, .L08097F7C @ =0x000033D8
	adds r2, r6, r1
.L08097F6E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_08050DA0
	b .L08097FFE
	.align 2, 0
.L08097F78: .4byte gUnk_08100F44
.L08097F7C: .4byte 0x000033D8
.L08097F80:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097FA0 @ =gUnk_08100F78
	ldr r2, .L08097FA4 @ =gUnk_08100F90
	ldr r3, .L08097FA8 @ =gUnk_08100FA4
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	bl func_08050E0C
	ldr r2, .L08097FAC @ =0x000033D2
	adds r1, r6, r2
	b .L08097FCC
	.align 2, 0
.L08097FA0: .4byte gUnk_08100F78
.L08097FA4: .4byte gUnk_08100F90
.L08097FA8: .4byte gUnk_08100FA4
.L08097FAC: .4byte 0x000033D2
.L08097FB0:
	adds r0, r6, #0
	adds r0, #0x80
	ldr r1, .L08097FD4 @ =gUnk_08100FBC
	ldr r2, .L08097FD8 @ =gUnk_08100F90
	ldr r3, .L08097FDC @ =gUnk_08100FCC
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	bl func_08050E0C
.L08097FC8:
	ldr r0, .L08097FE0 @ =0x000033D2
	adds r1, r6, r0
.L08097FCC:
	movs r0, #4
	strb r0, [r1]
	b .L08097FFE
	.align 2, 0
.L08097FD4: .4byte gUnk_08100FBC
.L08097FD8: .4byte gUnk_08100F90
.L08097FDC: .4byte gUnk_08100FCC
.L08097FE0: .4byte 0x000033D2
.L08097FE4:
	ldr r5, .L08098008 @ =gUnk_08100FE0
	adds r4, r6, #0
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #4
	bl func_08050E98
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
.L08097FFE:
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08098008: .4byte gUnk_08100FE0

	thumb_func_start func_0809800C
func_0809800C: @ 0x0809800C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb8
	mov sl, r0
	bl func_08008918
	add r1, sp, #0xc
	movs r4, #0
	strh r4, [r1]
	strh r4, [r0, #0x14]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x16]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x18]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1a]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1c]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #0x1e]
	movs r7, #0xc0
	lsls r7, r7, #0x13
	movs r2, #0x80
	lsls r2, r2, #8
	movs r0, #0
	adds r1, r7, #0
	bl func_08008EB8
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, .L08098394 @ =0x0600E000
	mov r8, r0
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r6, #0
	mov r1, r8
	adds r2, r4, #0
	bl func_08008EB8
	ldr r1, .L08098398 @ =0x0600F800
	mov sb, r1
	adds r0, r6, #0
	adds r2, r4, #0
	bl func_08008EB8
	ldr r1, .L0809839C @ =0x0600F000
	adds r0, r6, #0
	adds r2, r4, #0
	bl func_08008EB8
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r5, #0
	strh r2, [r0]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080983A0 @ =0x00001C43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080983A4 @ =0x00001F41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080983A8 @ =0x00001E42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	ldr r0, .L080983AC @ =gUnk_080F9F70
	ldr r0, [r0]
	ldr r1, .L080983B0 @ =gUnk_080F9F74
	ldr r2, [r1]
	adds r1, r7, #0
	bl func_08008E64
	ldr r0, .L080983B4 @ =0x00030003
	mov r1, r8
	adds r2, r4, #0
	bl func_08008EB8
	movs r0, #3
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, sb
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl func_08051320
	ldr r0, .L080983B8 @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r1, .L080983BC @ =0x05000040
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r0, r7, #0
	strh r0, [r1]
	ldr r0, .L080983C0 @ =0x05000042
	strh r5, [r0]
	adds r1, #4
	ldr r2, .L080983C4 @ =0x00004218
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, .L080983C8 @ =0x00002BD0
	add r1, sl
	adds r0, r6, #0
	adds r2, r4, #0
	bl func_08008EB8
	movs r5, #0x84
	lsls r5, r5, #6
	movs r1, #0
	mov r3, sp
	adds r3, #0x10
	str r3, [sp, #0xa4]
	mov r4, sp
	adds r4, #0x18
	str r4, [sp, #0xa8]
	mov r7, sp
	adds r7, #0x20
	str r7, [sp, #0xb0]
	mov r0, sp
	adds r0, #0x28
	str r0, [sp, #0xb4]
	add r2, sp, #0x30
	mov sb, r2
	movs r3, #0xae
	lsls r3, r3, #1
	add r3, sl
	str r3, [sp, #0xa0]
	mov r4, sl
	adds r4, #0xc8
	str r4, [sp, #0xac]
	ldr r7, .L080983CC @ =0x00002BD4
	add r7, sl
	mov r8, r7
.L08098174:
	movs r4, #0
	lsls r0, r1, #1
	adds r6, r5, #0
	adds r6, #0x28
	adds r1, #1
	mov ip, r1
	adds r1, r0, #4
	lsls r1, r1, #6
	adds r0, #5
	lsls r0, r0, #6
	adds r3, r5, #0
	adds r3, #0x14
	mov r7, r8
	adds r2, r0, r7
	add r1, r8
.L08098192:
	adds r0, r5, r4
	strh r0, [r1]
	strh r3, [r2]
	adds r3, #1
	adds r2, #2
	adds r1, #2
	adds r4, #1
	cmp r4, #0x13
	ble .L08098192
	lsls r0, r6, #0x10
	lsrs r5, r0, #0x10
	mov r1, ip
	cmp r1, #7
	ble .L08098174
	ldr r0, .L080983C8 @ =0x00002BD0
	add r0, sl
	ldr r1, .L0809839C @ =0x0600F000
	movs r2, #0x80
	lsls r2, r2, #4
	bl func_08008E64
	ldr r4, .L080983D0 @ =gUnk_08750C8C
	movs r0, #0xc4
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r7, .L080983D4 @ =0x06010000
	adds r1, r1, r7
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r5, [sp, #0xa4]
	movs r0, #0
	str r0, [sp, #0x10]
	strh r0, [r5, #4]
	ldr r1, [sp, #0xa8]
	str r0, [sp, #0x18]
	strh r0, [r1, #4]
	ldr r6, [sp, #0xb0]
	str r0, [sp, #0x20]
	strh r0, [r6, #4]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0xb4]
	strh r0, [r1, #4]
	movs r0, #0xac
	lsls r0, r0, #1
	add r0, sl
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0xa0]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x30
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r4, sb
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	ldm r4!, {r0, r1, r2}
	stm r5!, {r0, r1, r2}
	ldm r4!, {r0, r1, r3}
	stm r5!, {r0, r1, r3}
	ldm r4!, {r2, r3}
	stm r5!, {r2, r3}
	ldr r4, [sp, #0x20]
	movs r0, #0xba
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r5, .L080983D8 @ =0x05000200
	adds r1, r0, r5
	ldr r0, [sp, #0x20]
	movs r2, #0
	cmp r0, #0
	beq .L0809824A
	ldrh r2, [r6, #4]
.L0809824A:
	adds r0, r4, #0
	bl func_08008E64
	mov r0, sb
	ldr r1, [sp, #0xac]
	movs r2, #0
	bl func_0805E790
	ldr r1, [sp, #0xa4]
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r4}
	stm r1!, {r2, r4}
	ldr r4, [sp, #0x20]
	movs r0, #0xbe
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r5
	ldr r0, [sp, #0x20]
	movs r2, #0
	cmp r0, #0
	beq .L08098288
	ldr r3, [sp, #0xb0]
	ldrh r2, [r3, #4]
.L08098288:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #0x18]
	movs r0, #0xbc
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	adds r1, r0, r7
	ldr r0, [sp, #0x18]
	movs r2, #0
	cmp r0, #0
	beq .L080982AC
	ldr r0, [sp, #0xa8]
	ldrh r2, [r0, #4]
.L080982AC:
	adds r0, r4, #0
	bl func_08008E64
	movs r0, #0xc0
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	adds r1, r1, r7
	movs r2, #0xe0
	lsls r2, r2, #3
	movs r0, #0
	bl func_08008EB8
	movs r5, #0
	add r7, sp, #0x94
	movs r1, #1
	mov r8, r1
	movs r2, #2
	mov sb, r2
	add r6, sp, #0x98
	mov r3, sp
	adds r3, #0x54
	str r3, [sp, #0x9c]
.L080982E2:
	ldr r0, .L080983DC @ =gUnk_08101008
	adds r0, r5, r0
	ldrb r4, [r0]
	cmp r4, #0
	beq .L0809833C
	mov r0, r8
	strh r0, [r7]
	mov r1, sb
	strh r1, [r7, #2]
	ldr r0, [r7]
	add r1, sp, #0x54
	movs r2, #0
	bl func_0804E7A0
	mov r2, r8
	strh r2, [r6]
	mov r3, sb
	strh r3, [r6, #2]
	ldr r0, [r6]
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	mov r1, r8
	str r1, [sp, #8]
	add r1, sp, #0x54
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	movs r0, #0xc0
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r0, r5, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r2, .L080983D4 @ =0x06010000
	adds r1, r1, r2
	ldr r0, [sp, #0x9c]
	movs r2, #0x40
	bl func_08008E64
.L0809833C:
	adds r5, #1
	cmp r5, #0x15
	ble .L080982E2
	movs r4, #0xc2
	lsls r4, r4, #2
	add r4, sl
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L080983D8 @ =0x05000200
	adds r0, r0, r3
	movs r7, #0xf8
	lsls r7, r7, #2
	adds r1, r7, #0
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L080983E0 @ =0x05000202
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L080983E4 @ =0x05000204
	adds r0, r0, r2
	ldr r3, .L080983C4 @ =0x00004218
	adds r1, r3, #0
	strh r1, [r0]
	add sp, #0xb8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08098394: .4byte 0x0600E000
.L08098398: .4byte 0x0600F800
.L0809839C: .4byte 0x0600F000
.L080983A0: .4byte 0x00001C43
.L080983A4: .4byte 0x00001F41
.L080983A8: .4byte 0x00001E42
.L080983AC: .4byte gUnk_080F9F70
.L080983B0: .4byte gUnk_080F9F74
.L080983B4: .4byte 0x00030003
.L080983B8: .4byte gUnk_080F9F78
.L080983BC: .4byte 0x05000040
.L080983C0: .4byte 0x05000042
.L080983C4: .4byte 0x00004218
.L080983C8: .4byte 0x00002BD0
.L080983CC: .4byte 0x00002BD4
.L080983D0: .4byte gUnk_08750C8C
.L080983D4: .4byte 0x06010000
.L080983D8: .4byte 0x05000200
.L080983DC: .4byte gUnk_08101008
.L080983E0: .4byte 0x05000202
.L080983E4: .4byte 0x05000204

	thumb_func_start func_080983E8
func_080983E8: @ 0x080983E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x90
	mov r8, r0
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
	add r5, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r5, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	ldr r1, .L080986CC @ =0xFFFFFCFF
	ldr r0, [sp, #0x5c]
	ands r0, r1
	ldr r4, .L080986D0 @ =0xFFFFF3FF
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, .L080986D4 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L080986D8 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L080986DC @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L080986E0 @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L080986E4 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L080986E8 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp, #0x5c]
	movs r0, #0xc2
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L080986EC @ =0xFFFF0FFF
	add r3, sp, #0x5c
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L080986F0 @ =0x0000FFFF
	ands r1, r0
	ands r1, r4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r3, #4]
	ldr r1, .L080986F4 @ =0xFFFFFF00
	ldr r0, [sp, #0x5c]
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [sp, #0x5c]
	movs r4, #0
	mov sb, r3
	add r0, sp, #0x64
	mov sl, r0
	mov r1, sp
	adds r1, #0x3c
	str r1, [sp, #0x80]
	movs r5, #0xc0
	lsls r5, r5, #2
	add r5, r8
	movs r6, #8
.L080984A8:
	ldr r1, .L080986F8 @ =0x000001FF
	ands r1, r6
	lsls r1, r1, #0x10
	ldr r2, .L080986FC @ =0xFE00FFFF
	ldr r0, [sp, #0x5c]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x5c]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	lsls r1, r4, #1
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L08098700 @ =0xFFFFFC00
	ldr r1, [sp, #0x60]
	ands r1, r2
	orrs r1, r0
	str r1, [sp, #0x60]
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080984F4
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x5c]
	str r0, [r1]
	mov r7, sb
	ldrh r0, [r7, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080984F4:
	adds r6, #8
	adds r4, #1
	cmp r4, #0x15
	ble .L080984A8
	ldr r1, .L080986CC @ =0xFFFFFCFF
	ldr r0, [sp, #0x64]
	ands r0, r1
	ldr r4, .L080986D0 @ =0xFFFFF3FF
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, .L080986D4 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L080986D8 @ =0xFFFF3FFF
	ands r0, r1
	ldr r1, .L080986DC @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L080986E0 @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L080986E4 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L080986E8 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp, #0x64]
	movs r0, #0xc2
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L080986EC @ =0xFFFF0FFF
	mov r3, sl
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L080986F0 @ =0x0000FFFF
	ands r1, r0
	ands r1, r4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r3, #4]
	ldr r1, .L080986F4 @ =0xFFFFFF00
	ldr r0, [sp, #0x64]
	ands r0, r1
	movs r1, #0xc
	orrs r0, r1
	str r0, [sp, #0x64]
	movs r4, #0
	movs r5, #0xae
	lsls r5, r5, #1
	add r5, r8
	mov sb, r5
	movs r6, #0xca
	lsls r6, r6, #1
	add r6, r8
	str r6, [sp, #0x7c]
	movs r7, #0xc4
	lsls r7, r7, #2
	add r7, r8
	str r7, [sp, #0x84]
	movs r7, #0xc0
	mov r5, sl
.L0809857E:
	ldr r1, .L080986F8 @ =0x000001FF
	ands r1, r7
	lsls r1, r1, #0x10
	ldr r2, .L080986FC @ =0xFE00FFFF
	ldr r0, [sp, #0x64]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x84]
	ldr r1, [r0, #4]
	bl func_08007D4C
	ldr r1, .L08098704 @ =0x00000369
	add r1, r8
	adds r1, r1, r4
	ldrb r1, [r1]
	adds r1, r1, r0
	lsls r1, r1, #0x16
	lsrs r1, r1, #0x16
	ldr r2, .L08098700 @ =0xFFFFFC00
	ldr r0, [r5, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080985D0
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x64]
	str r0, [r1]
	mov r6, sl
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080985D0:
	adds r7, #8
	adds r4, #1
	cmp r4, #4
	ble .L0809857E
	movs r5, #0xc4
	lsls r5, r5, #1
	add r5, r8
	movs r4, #0xac
	lsls r4, r4, #1
	add r4, r8
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r5]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	mov r7, sb
	ldr r0, [r7]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x80]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	ldr r0, [sp, #0x80]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r1, sp
	movs r0, #0xb6
	lsls r0, r0, #1
	add r0, r8
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldm r0!, {r3, r4, r6}
	stm r1!, {r3, r4, r6}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	movs r4, #0xb8
	lsls r4, r4, #2
	add r4, r8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r0, #0xba
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r1, #1
	movs r7, #1
	mov sb, r7
	mov r2, sb
	strh r2, [r0, #8]
	strb r1, [r0, #0x18]
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08098676
	b .L080987CE
.L08098676:
	mov r0, r8
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x24]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L08098696
	mov r4, sp
	ldrh r3, [r4, #0x28]
.L08098696:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r5, .L08098708 @ =0x06010000
	adds r2, r2, r5
	ldr r0, [sp, #0x80]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r7, [sp, #0x80]
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L0809870C
	cmp r1, #0
	beq .L080986C2
	adds r0, r1, #0
	adds r1, r7, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080986C2:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080987CE
	.align 2, 0
.L080986CC: .4byte 0xFFFFFCFF
.L080986D0: .4byte 0xFFFFF3FF
.L080986D4: .4byte 0xFFFFDFFF
.L080986D8: .4byte 0xFFFF3FFF
.L080986DC: .4byte 0xF1FFFFFF
.L080986E0: .4byte 0xEFFFFFFF
.L080986E4: .4byte 0xDFFFFFFF
.L080986E8: .4byte 0x3FFFFFFF
.L080986EC: .4byte 0xFFFF0FFF
.L080986F0: .4byte 0x0000FFFF
.L080986F4: .4byte 0xFFFFFF00
.L080986F8: .4byte 0x000001FF
.L080986FC: .4byte 0xFE00FFFF
.L08098700: .4byte 0xFFFFFC00
.L08098704: .4byte 0x00000369
.L08098708: .4byte 0x06010000
.L0809870C:
	str r1, [sp, #0x88]
	mov r5, sb
	str r5, [sp, #0x70]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x6c]
	add r1, sp, #0x70
	add r0, sp, #0x6c
	cmp r4, #1
	bhs .L08098726
	adds r0, r1, #0
.L08098726:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08098744
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08098748
	mov r0, sb
	bl func_080D3BC0
	b .L08098748
.L08098744:
	movs r0, #0
	mov sb, r0
.L08098748:
	adds r5, r0, #0
	str r5, [sp, #0x8c]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L08098766
.L08098752:
	cmp r3, #0
	beq .L08098762
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L08098762:
	adds r2, #0x10
	adds r3, #0x10
.L08098766:
	ldr r0, [sp, #0x88]
	cmp r2, r0
	bne .L08098752
	adds r5, r3, #0
	ldr r0, [sp, #0x70]
	cmp r0, #1
	bne .L08098788
	cmp r5, #0
	beq .L08098784
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08098784:
	adds r5, #0x10
	b .L080987AA
.L08098788:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080987A8
.L08098790:
	cmp r2, #0
	beq .L080987A0
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080987A0:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L08098790
.L080987A8:
	adds r5, r2, #0
.L080987AA:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080987BA
.L080987B4:
	adds r1, #0x10
	cmp r1, r2
	bne .L080987B4
.L080987BA:
	cmp r0, #0
	beq .L080987C2
	bl free
.L080987C2:
	ldr r0, [sp, #0x8c]
	add r0, sb
	ldr r7, [sp, #0x8c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080987CE:
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080987E4
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L080987E4:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	movs r5, #0xe0
	lsls r5, r5, #1
	add r5, r8
	movs r4, #0xc8
	lsls r4, r4, #1
	add r4, r8
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r5]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x7c]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r4, [sp, #0x80]
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x1c
	ldm r4!, {r1, r6, r7}
	stm r0!, {r1, r6, r7}
	ldm r4!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldm r4!, {r1, r7}
	stm r0!, {r1, r7}
	mov r1, sp
	movs r0, #0xd2
	lsls r0, r0, #1
	add r0, r8
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r6, r7}
	stm r1!, {r2, r6, r7}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #8
	strh r0, [r1, #2]
	movs r4, #0xb8
	lsls r4, r4, #2
	add r4, r8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #2
	strh r0, [r1, #6]
	movs r0, #0xba
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r1, #1
	movs r3, #1
	mov sb, r3
	mov r6, sb
	strh r6, [r0, #8]
	strb r1, [r0, #0x18]
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L0809888C
	b .L080989A8
.L0809888C:
	mov r0, r8
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x24]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L080988AC
	mov r0, sp
	ldrh r3, [r0, #0x28]
.L080988AC:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r1, .L080988E0 @ =0x06010040
	adds r2, r2, r1
	ldr r0, [sp, #0x80]
	adds r1, r7, #0
	bl func_08008F0C
	ldr r2, [sp, #0x80]
	mov sl, r2
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080988E4
	cmp r1, #0
	beq .L080988D8
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080988D8:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080989A8
	.align 2, 0
.L080988E0: .4byte 0x06010040
.L080988E4:
	str r1, [sp, #0x88]
	mov r7, sb
	str r7, [sp, #0x78]
	ldr r0, [r6]
	subs r0, r1, r0
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r1, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L080988FC
	adds r0, r1, #0
.L080988FC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0809891A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0809891E
	mov r0, sb
	bl func_080D3BC0
	b .L0809891E
.L0809891A:
	movs r0, #0
	mov sb, r0
.L0809891E:
	adds r5, r0, #0
	str r5, [sp, #0x8c]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r4, [sp, #0x88]
	cmp r2, r4
	beq .L08098946
.L0809892C:
	cmp r3, #0
	beq .L0809893C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0809893C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x88]
	cmp r2, r5
	bne .L0809892C
.L08098946:
	adds r5, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L08098962
	cmp r5, #0
	beq .L0809895E
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0809895E:
	adds r5, #0x10
	b .L08098984
.L08098962:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08098982
.L0809896A:
	cmp r2, #0
	beq .L0809897A
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0809897A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0809896A
.L08098982:
	adds r5, r2, #0
.L08098984:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08098994
.L0809898E:
	adds r1, #0x10
	cmp r1, r2
	bne .L0809898E
.L08098994:
	cmp r0, #0
	beq .L0809899C
	bl free
.L0809899C:
	ldr r0, [sp, #0x8c]
	add r0, sb
	ldr r1, [sp, #0x8c]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080989A8:
	mov r0, r8
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080989BE
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L080989BE:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	mov r0, r8
	bl func_0809A3E0
	add sp, #0x90
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080989DC
func_080989DC: @ 0x080989DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	adds r7, r0, #0
	mov sb, r1
	bl func_080CD620
	adds r4, r7, #0
	adds r4, #0x78
	movs r5, #0
	ldr r1, [r7, #0x78]
	cmp r5, r1
	beq .L08098A12
	cmp r1, #0
	beq .L08098A12
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098A12:
	str r5, [r4]
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08098BB0 @ =gUnk_08101020
	str r0, [sp]
	add r4, sp, #4
	movs r0, #0
	strb r0, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #8
	bl func_080CAFC4
	adds r6, r7, #0
	adds r6, #0x78
	adds r5, r0, #0
	ldr r1, [r7, #0x78]
	str r4, [sp, #0x68]
	cmp r5, r1
	beq .L08098A66
	cmp r1, #0
	beq .L08098A66
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098A66:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	movs r4, #0
	movs r0, #0x7c
	adds r0, r0, r7
	mov r8, r0
	mov r1, sb
	adds r1, #2
	str r1, [sp, #0x70]
	add r2, sp, #0xc
	mov sl, r2
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x6c]
	mov r0, sp
	adds r0, #0x1c
	str r0, [sp, #0x74]
	mov r1, sp
	adds r1, #0x24
	str r1, [sp, #0x78]
	mov r2, sp
	adds r2, #0x2c
	str r2, [sp, #0x7c]
	adds r3, r7, #0
	adds r3, #0xf8
	str r3, [sp, #0x64]
	adds r0, #0x3c
	str r0, [sp, #0x60]
	adds r1, #0x10
	str r1, [sp, #0x80]
	movs r6, #1
	ldr r5, .L08098BB4 @ =gUnk_08100AC2
.L08098AAA:
	movs r2, #0xcc
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrh r0, [r0]
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq .L08098AC8
	ldr r0, [r7, #0x78]
	ldrh r3, [r5]
	str r6, [sp]
	adds r1, r4, #0
	ldr r2, .L08098BB8 @ =gUnk_086678A0
	bl func_080CB304
.L08098AC8:
	adds r5, #2
	adds r4, #1
	cmp r4, #7
	ble .L08098AAA
	mov r4, r8
	movs r5, #0
	ldr r1, [r7, #0x7c]
	cmp r5, r1
	beq .L08098AF0
	cmp r1, #0
	beq .L08098AF0
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098AF0:
	str r5, [r4]
	movs r0, #0xcb
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08098BBC @ =gUnk_0810102C
	str r0, [sp]
	movs r0, #0
	ldr r1, [sp, #0x68]
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl func_080CC15C
	mov r5, r8
	adds r4, r0, #0
	ldr r1, [r7, #0x7c]
	cmp r4, r1
	beq .L08098B40
	cmp r1, #0
	beq .L08098B40
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098B40:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	add r0, sp, #8
	bl __12RucksackItem
	ldr r3, .L08098BC0 @ =0x0000035D
	adds r0, r7, r3
	movs r1, #0
	strb r1, [r0]
	movs r4, #0xd7
	lsls r4, r4, #2
	adds r0, r7, r4
	strb r1, [r0]
	mov r8, r1
	mov sb, sl
	ldr r0, .L08098BC4 @ =0x00002BB0
	adds r6, r7, r0
	ldr r5, [sp, #0x70]
.L08098B68:
	ldrh r0, [r5]
	cmp r0, #0
	beq .L08098C44
	cmp r0, #0xab
	bhi .L08098BC8
	add r4, sp, #0x10
	adds r1, r0, #0
	subs r1, #1
	adds r0, r4, #0
	bl __4FoodUi
	ldrb r1, [r4]
	mov r0, sp
	adds r0, #0x11
	ldrb r2, [r0]
	lsls r2, r2, #8
	orrs r2, r1
	adds r0, #1
	ldrb r1, [r0]
	lsls r1, r1, #0x10
	orrs r1, r2
	mov r0, sb
	bl __12RucksackItemG4Food
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	ldrh r1, [r5]
	subs r1, #1
	mov r0, sb
	bl __4FoodUi
	mov r0, sb
	bl GetIconId__C4Food
	b .L08098BF4
	.align 2, 0
.L08098BB0: .4byte gUnk_08101020
.L08098BB4: .4byte gUnk_08100AC2
.L08098BB8: .4byte gUnk_086678A0
.L08098BBC: .4byte gUnk_0810102C
.L08098BC0: .4byte 0x0000035D
.L08098BC4: .4byte 0x00002BB0
.L08098BC8:
	ldrh r1, [r5]
	subs r1, #0xac
	add r0, sp, #0x54
	bl __7ArticleUi
	add r0, sp, #0x54
	ldrb r1, [r0]
	mov r0, sl
	bl __12RucksackItemG7Article
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r4, sp
	adds r4, #0x55
	ldrh r1, [r5]
	subs r1, #0xac
	adds r0, r4, #0
	bl __7ArticleUi
	adds r0, r4, #0
	bl GetIconId__C7Article
.L08098BF4:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r7, #0x7c]
	movs r4, #1
	str r4, [sp]
	mov r1, r8
	ldr r2, .L08098C34 @ =gUnk_086678A0
	bl func_080CC728
	ldr r0, [sp, #8]
	str r0, [r6]
	adds r0, r7, #0
	add r1, sp, #8
	bl func_08096FB4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq .L08098C38
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r0, r7, r2
	adds r1, r4, #0
	mov r3, r8
	lsls r1, r3
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
	b .L08098C4E
	.align 2, 0
.L08098C34: .4byte gUnk_086678A0
.L08098C38:
	ldr r1, .L08098C40 @ =0x0000035D
	adds r0, r7, r1
	strb r4, [r0]
	b .L08098C4E
	.align 2, 0
.L08098C40: .4byte 0x0000035D
.L08098C44:
	mov r0, sl
	bl __12RucksackItem
	ldr r0, [sp, #0xc]
	str r0, [r6]
.L08098C4E:
	adds r6, #4
	adds r5, #2
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #7
	ble .L08098B68
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r4, [sp, #0x6c]
	strh r0, [r4, #4]
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x74]
	strh r0, [r1, #4]
	str r0, [sp, #0x24]
	ldr r2, [sp, #0x78]
	strh r0, [r2, #4]
	str r0, [sp, #0x2c]
	ldr r3, [sp, #0x7c]
	strh r0, [r3, #4]
	ldr r0, [sp, #0x64]
	ldr r4, [r0]
	ldr r0, [sp, #0x60]
	ldr r3, [r4, #0xc]
	ldr r1, [sp, #0x64]
	movs r2, #1
	bl _call_via_r3
	ldr r0, [sp, #0x58]
	ldrh r2, [r0]
	add r0, sp, #0x34
	ldr r3, [r4, #0x10]
	ldr r1, [sp, #0x64]
	bl _call_via_r3
	ldr r0, [sp, #0x80]
	adds r1, r0, #0
	movs r2, #0x20
	bl memcpy
	ldr r1, [sp, #0x6c]
	ldr r0, [sp, #0x80]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x24]
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L08098CE4 @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x24]
	movs r2, #0
	cmp r0, #0
	beq .L08098CCE
	ldr r3, [sp, #0x78]
	ldrh r2, [r3, #4]
.L08098CCE:
	adds r0, r4, #0
	bl func_08008E64
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08098CE4: .4byte 0x05000200

	thumb_func_start func_08098CE8
func_08098CE8: @ 0x08098CE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc4
	mov r8, r0
	bl func_080CD620
	mov r4, r8
	adds r4, #0x78
	movs r5, #0
	mov r0, r8
	ldr r1, [r0, #0x78]
	cmp r5, r1
	beq .L08098D1E
	cmp r1, #0
	beq .L08098D1E
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098D1E:
	str r5, [r4]
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	mov r0, r8
	bl func_08008910
	adds r4, r0, #0
	mov r0, r8
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08098FDC @ =gUnk_08101020
	str r0, [sp]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl func_080CAFC4
	mov r5, r8
	adds r5, #0x78
	adds r4, r0, #0
	mov r3, r8
	ldr r1, [r3, #0x78]
	cmp r4, r1
	beq .L08098D72
	cmp r1, #0
	beq .L08098D72
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098D72:
	str r4, [r5]
	mov r3, r8
	ldr r0, [r3, #0x78]
	bl func_080CB090
	movs r4, #0
	movs r0, #0x7c
	add r0, r8
	mov sl, r0
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0xb4]
	mov r2, sp
	adds r2, #0x1c
	str r2, [sp, #0xb8]
	mov r3, sp
	adds r3, #0x24
	str r3, [sp, #0xbc]
	mov r7, r8
	adds r7, #0xf8
	mov r0, sp
	adds r0, #0x90
	str r0, [sp, #0xa8]
	add r1, sp, #0x2c
	mov sb, r1
	mov r2, r8
	adds r2, #0xc8
	str r2, [sp, #0xa0]
	adds r3, #0x74
	str r3, [sp, #0xac]
	adds r0, #0xc
	str r0, [sp, #0xb0]
	mov r1, sp
	adds r1, #0x50
	str r1, [sp, #0xa4]
	movs r6, #1
	ldr r5, .L08098FE0 @ =gUnk_08100AC2
.L08098DBC:
	movs r0, #0xcc
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq .L08098DDC
	mov r2, r8
	ldr r0, [r2, #0x78]
	ldrh r3, [r5]
	str r6, [sp]
	adds r1, r4, #0
	ldr r2, .L08098FE4 @ =gUnk_086678A0
	bl func_080CB304
.L08098DDC:
	adds r5, #2
	adds r4, #1
	cmp r4, #7
	ble .L08098DBC
	mov r4, sl
	movs r5, #0
	mov r3, r8
	ldr r1, [r3, #0x7c]
	cmp r5, r1
	beq .L08098E06
	cmp r1, #0
	beq .L08098E06
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08098E06:
	str r5, [r4]
	add r1, sp, #0xc
	movs r0, #0
	str r0, [sp, #0xc]
	strh r0, [r1, #4]
	ldr r1, [sp, #0xb4]
	str r0, [sp, #0x14]
	strh r0, [r1, #4]
	ldr r5, [sp, #0xb8]
	str r0, [sp, #0x1c]
	strh r0, [r5, #4]
	str r0, [sp, #0x24]
	ldr r3, [sp, #0xbc]
	strh r0, [r3, #4]
	ldr r4, [r7]
	ldr r0, [sp, #0xa8]
	ldr r3, [r4, #0xc]
	adds r1, r7, #0
	movs r2, #1
	bl _call_via_r3
	add r0, sp, #0x90
	ldr r0, [r0]
	ldrh r2, [r0]
	add r0, sp, #0x2c
	ldr r3, [r4, #0x10]
	adds r1, r7, #0
	bl _call_via_r3
	mov r4, sb
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0xc
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2}
	stm r0!, {r1, r2}
	ldr r4, [sp, #0x1c]
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r6, .L08098FE8 @ =0x05000200
	adds r1, r0, r6
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L08098E78
	ldrh r2, [r5, #4]
.L08098E78:
	adds r0, r4, #0
	bl func_08008E64
	mov r0, sb
	ldr r1, [sp, #0xa0]
	movs r2, #0
	bl func_0805E790
	add r1, sp, #0xc
	mov r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	ldr r4, [sp, #0x1c]
	movs r0, #0xbe
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	adds r1, r0, r6
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L08098EB6
	ldr r0, [sp, #0xb8]
	ldrh r2, [r0, #4]
.L08098EB6:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #0x14]
	movs r0, #0xbc
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r5, .L08098FEC @ =0x06010000
	adds r1, r0, r5
	ldr r0, [sp, #0x14]
	movs r2, #0
	cmp r0, #0
	beq .L08098EDC
	ldr r3, [sp, #0xb4]
	ldrh r2, [r3, #4]
.L08098EDC:
	adds r0, r4, #0
	bl func_08008E64
	movs r0, #0xc0
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	adds r1, r1, r5
	movs r2, #0xe0
	lsls r2, r2, #3
	movs r0, #0
	bl func_08008EB8
	movs r7, #0
	movs r4, #1
	mov sb, r4
.L08098F04:
	movs r6, #0
	adds r0, r7, #0
	adds r0, #8
	lsls r1, r7, #2
	mov sl, r1
	adds r2, r7, #1
	str r2, [sp, #0xc0]
	movs r1, #0xb
	muls r0, r1, r0
	ldr r3, .L08098FF0 @ =gUnk_08101059
	adds r5, r0, r3
.L08098F1A:
	ldrb r4, [r5]
	add r0, sp, #0x98
	mov r1, sb
	strh r1, [r0]
	movs r3, #2
	ldr r2, [sp, #0xac]
	strh r3, [r2, #2]
	ldr r0, [r0]
	add r1, sp, #0x50
	movs r2, #0
	bl func_0804E7A0
	add r0, sp, #0x9c
	mov r1, sb
	strh r1, [r0]
	movs r3, #2
	ldr r2, [sp, #0xb0]
	strh r3, [r2, #2]
	ldr r0, [r0]
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	mov r1, sb
	str r1, [sp, #8]
	add r1, sp, #0x50
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	movs r0, #0xc0
	lsls r0, r0, #2
	add r0, r8
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	mov r2, sl
	adds r0, r2, r7
	lsls r0, r0, #2
	adds r1, r1, r0
	lsls r0, r6, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r3, .L08098FEC @ =0x06010000
	adds r1, r1, r3
	ldr r0, [sp, #0xa4]
	movs r2, #0x40
	bl func_08008E64
	adds r5, #1
	adds r6, #1
	cmp r6, #9
	ble .L08098F1A
	ldr r7, [sp, #0xc0]
	cmp r7, #4
	ble .L08098F04
	movs r4, #0xc2
	lsls r4, r4, #2
	add r4, r8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L08098FE8 @ =0x05000200
	adds r0, r0, r1
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L08098FF4 @ =0x05000202
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r4, .L08098FF8 @ =0x05000204
	adds r0, r0, r4
	ldr r2, .L08098FFC @ =0x00004218
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #0xc4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08098FDC: .4byte gUnk_08101020
.L08098FE0: .4byte gUnk_08100AC2
.L08098FE4: .4byte gUnk_086678A0
.L08098FE8: .4byte 0x05000200
.L08098FEC: .4byte 0x06010000
.L08098FF0: .4byte gUnk_08101059
.L08098FF4: .4byte 0x05000202
.L08098FF8: .4byte 0x05000204
.L08098FFC: .4byte 0x00004218

	thumb_func_start func_08099000
func_08099000: @ 0x08099000
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	lsls r4, r1, #0x18
	lsrs r4, r4, #0x18
	bl func_0809A3E0
	cmp r4, #1
	bne .L080990FA
	ldr r1, .L0809910C @ =0xFFFFFCFF
	ldr r0, [sp]
	ands r0, r1
	ldr r4, .L08099110 @ =0xFFFFF3FF
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, .L08099114 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L08099118 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L0809911C @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L08099120 @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L08099124 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L08099128 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp]
	movs r1, #0xc2
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L0809912C @ =0xFFFF0FFF
	ldr r1, [sp, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L08099130 @ =0x0000FFFF
	ands r1, r0
	ands r1, r4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [sp, #4]
	movs r1, #0
	mov r4, sp
.L0809907A:
	movs r5, #0
	lsls r2, r1, #4
	mov sb, r2
	lsls r0, r1, #2
	adds r2, r1, #1
	mov sl, r2
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r8, r0
	movs r6, #0x98
.L0809908E:
	ldr r0, .L08099134 @ =0x000001FF
	ands r0, r6
	lsls r0, r0, #0x10
	ldr r2, .L08099138 @ =0xFE00FFFF
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	mov r0, sb
	adds r0, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, .L0809913C @ =0xFFFFFF00
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r1, #0xc0
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r1, r5, #1
	add r1, r8
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L08099140 @ =0xFFFFFC00
	ldr r1, [r4, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r4, #4]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L080990EC
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r3, r0
	ldr r1, [sp]
	str r1, [r0]
	ldrh r1, [r4, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L080990EC:
	adds r6, #8
	adds r5, #1
	cmp r5, #9
	ble .L0809908E
	mov r1, sl
	cmp r1, #4
	ble .L0809907A
.L080990FA:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L0809910C: .4byte 0xFFFFFCFF
.L08099110: .4byte 0xFFFFF3FF
.L08099114: .4byte 0xFFFFDFFF
.L08099118: .4byte 0xFFFF3FFF
.L0809911C: .4byte 0xF1FFFFFF
.L08099120: .4byte 0xEFFFFFFF
.L08099124: .4byte 0xDFFFFFFF
.L08099128: .4byte 0x3FFFFFFF
.L0809912C: .4byte 0xFFFF0FFF
.L08099130: .4byte 0x0000FFFF
.L08099134: .4byte 0x000001FF
.L08099138: .4byte 0xFE00FFFF
.L0809913C: .4byte 0xFFFFFF00
.L08099140: .4byte 0xFFFFFC00

	thumb_func_start func_08099144
func_08099144: @ 0x08099144
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x80
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x6c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0x70]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp, #0x74]
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
	add r5, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r5, #4]
	add r1, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r1, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	movs r6, #0xa8
	lsls r6, r6, #2
	add r6, sb
	movs r4, #0x9c
	lsls r4, r4, #2
	add r4, sb
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r6]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	movs r0, #0x9d
	lsls r0, r0, #2
	add r0, sb
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
	adds r1, r5, #0
	adds r0, r4, #0
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	mov r1, sp
	movs r0, #0xa1
	lsls r0, r0, #2
	add r0, sb
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	movs r7, #0xc6
	lsls r7, r7, #2
	add r7, sb
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	mov r0, sp
	movs r1, #1
	strb r1, [r0, #0x18]
	ldrb r0, [r6]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L0809922C
	b .L0809935A
.L0809922C:
	ldr r0, [sp, #0x24]
	movs r1, #0
	cmp r0, #0
	beq .L08099238
	mov r2, sp
	ldrh r1, [r2, #0x28]
.L08099238:
	cmp r1, #0
	bne .L0809923E
	b .L0809935A
.L0809923E:
	mov r0, sb
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x24]
	ldr r1, [r7, #4]
	adds r0, r7, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0809925E
	mov r7, sp
	ldrh r3, [r7, #0x28]
.L0809925E:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r0, .L08099294 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x3c
	adds r1, r5, #0
	bl func_08008F0C
	add r1, sp, #0x3c
	mov sl, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08099298
	cmp r1, #0
	beq .L0809928A
	adds r0, r1, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0809928A:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L0809935A
	.align 2, 0
.L08099294: .4byte 0x06010000
.L08099298:
	str r1, [sp, #0x78]
	movs r5, #1
	str r5, [sp, #0x60]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r1, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L080992B2
	adds r0, r1, #0
.L080992B2:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080992D0
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080992D4
	mov r0, r8
	bl func_080D3BC0
	b .L080992D4
.L080992D0:
	movs r0, #0
	mov r8, r0
.L080992D4:
	adds r5, r0, #0
	str r5, [sp, #0x7c]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080992F2
.L080992DE:
	cmp r3, #0
	beq .L080992EE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080992EE:
	adds r2, #0x10
	adds r3, #0x10
.L080992F2:
	ldr r0, [sp, #0x78]
	cmp r2, r0
	bne .L080992DE
	adds r5, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L08099314
	cmp r5, #0
	beq .L08099310
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08099310:
	adds r5, #0x10
	b .L08099336
.L08099314:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L08099334
.L0809931C:
	cmp r2, #0
	beq .L0809932C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0809932C:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L0809931C
.L08099334:
	adds r5, r2, #0
.L08099336:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08099346
.L08099340:
	adds r1, #0x10
	cmp r1, r2
	bne .L08099340
.L08099346:
	cmp r0, #0
	beq .L0809934E
	bl free
.L0809934E:
	ldr r0, [sp, #0x7c]
	add r0, r8
	ldr r7, [sp, #0x7c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L0809935A:
	movs r2, #0
	mov r5, sp
	ldr r6, .L08099530 @ =gUnk_08117838
.L08099360:
	ldr r1, [sp, #0x6c]
	asrs r1, r2
	movs r0, #1
	ands r1, r0
	adds r4, r2, #1
	cmp r1, #0
	beq .L0809939A
	lsls r1, r4, #2
	adds r1, r1, r6
	ldrb r0, [r1]
	adds r0, #8
	strh r0, [r5]
	ldrb r0, [r1, #1]
	strh r0, [r5, #2]
	mov r0, sb
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08099392
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L08099392:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0809939A:
	adds r2, r4, #0
	cmp r2, #6
	ble .L08099360
	movs r0, #0xf8
	lsls r0, r0, #4
	ldr r1, [sp, #0x6c]
	ands r0, r1
	cmp r0, #0
	beq .L080993DE
	mov r2, sp
	ldr r1, .L08099530 @ =gUnk_08117838
	adds r0, r1, #0
	adds r0, #0x20
	ldrb r0, [r0]
	adds r0, #8
	strh r0, [r2]
	adds r1, #0x21
	ldrb r0, [r1]
	strh r0, [r2, #2]
	mov r0, sb
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080993D6
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L080993D6:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L080993DE:
	ldr r5, [sp, #0x74]
	cmp r5, #1
	beq .L08099432
	movs r2, #0
	mov r5, sp
	ldr r6, .L08099530 @ =gUnk_08117838
.L080993EA:
	ldr r1, [sp, #0x70]
	asrs r1, r2
	movs r0, #1
	ands r1, r0
	adds r4, r2, #1
	cmp r1, #0
	beq .L08099424
	lsls r1, r4, #2
	adds r1, r1, r6
	ldrb r0, [r1]
	adds r0, #0x80
	strh r0, [r5]
	ldrb r0, [r1, #1]
	strh r0, [r5, #2]
	mov r0, sb
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0809941C
	mov r7, sp
	ldrh r2, [r7, #0x20]
.L0809941C:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L08099424:
	adds r2, r4, #0
	cmp r2, #7
	ble .L080993EA
	ldr r0, [sp, #0x74]
	cmp r0, #1
	beq .L08099432
	b .L0809963A
.L08099432:
	movs r5, #0xb6
	lsls r5, r5, #2
	add r5, sb
	movs r4, #0xaa
	lsls r4, r4, #2
	add r4, sb
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r5]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	movs r0, #0xab
	lsls r0, r0, #2
	add r0, sb
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
	add r0, sp, #0x1c
	ldm r4!, {r1, r2, r3}
	stm r0!, {r1, r2, r3}
	ldm r4!, {r1, r2, r7}
	stm r0!, {r1, r2, r7}
	ldm r4!, {r3, r7}
	stm r0!, {r3, r7}
	mov r1, sp
	movs r0, #0xaf
	lsls r0, r0, #2
	add r0, sb
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	movs r4, #0xca
	lsls r4, r4, #2
	add r4, sb
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r0, #0xc8
	lsls r0, r0, #2
	add r0, sb
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	mov r0, sp
	movs r7, #1
	mov r8, r7
	mov r1, r8
	strb r1, [r0, #0x18]
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L080994CA
	b .L080995FA
.L080994CA:
	add r1, sp, #0x24
	ldr r0, [sp, #0x24]
	movs r2, #0
	cmp r0, #0
	beq .L080994D6
	ldrh r2, [r1, #4]
.L080994D6:
	cmp r2, #0
	bne .L080994DC
	b .L080995FA
.L080994DC:
	mov r0, sb
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x24]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L080994FC
	mov r4, sp
	ldrh r3, [r4, #0x28]
.L080994FC:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r5, .L08099534 @ =0x06010000
	adds r2, r2, r5
	add r0, sp, #0x3c
	adds r1, r7, #0
	bl func_08008F0C
	add r7, sp, #0x3c
	mov sl, r7
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08099538
	cmp r1, #0
	beq .L08099528
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08099528:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080995FA
	.align 2, 0
.L08099530: .4byte gUnk_08117838
.L08099534: .4byte 0x06010000
.L08099538:
	str r1, [sp, #0x78]
	mov r5, r8
	str r5, [sp, #0x68]
	ldr r0, [r6]
	adds r7, r1, #0
	subs r0, r7, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L08099552
	adds r0, r1, #0
.L08099552:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08099570
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L08099574
	mov r0, r8
	bl func_080D3BC0
	b .L08099574
.L08099570:
	movs r0, #0
	mov r8, r0
.L08099574:
	adds r5, r0, #0
	str r5, [sp, #0x7c]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L08099592
.L0809957E:
	cmp r3, #0
	beq .L0809958E
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L0809958E:
	adds r2, #0x10
	adds r3, #0x10
.L08099592:
	ldr r0, [sp, #0x78]
	cmp r2, r0
	bne .L0809957E
	adds r5, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L080995B4
	cmp r5, #0
	beq .L080995B0
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080995B0:
	adds r5, #0x10
	b .L080995D6
.L080995B4:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080995D4
.L080995BC:
	cmp r2, #0
	beq .L080995CC
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080995CC:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080995BC
.L080995D4:
	adds r5, r2, #0
.L080995D6:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080995E6
.L080995E0:
	adds r1, #0x10
	cmp r1, r2
	bne .L080995E0
.L080995E6:
	cmp r0, #0
	beq .L080995EE
	bl free
.L080995EE:
	ldr r0, [sp, #0x7c]
	add r0, r8
	ldr r7, [sp, #0x7c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080995FA:
	movs r4, #0
	mov r5, sp
.L080995FE:
	adds r0, r4, #7
	ldr r1, [sp, #0x6c]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq .L08099634
	movs r0, #0x90
	strh r0, [r5]
	lsls r0, r4, #4
	adds r0, #0x10
	strh r0, [r5, #2]
	mov r0, sb
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0809962C
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L0809962C:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L08099634:
	adds r4, #1
	cmp r4, #4
	ble .L080995FE
.L0809963A:
	add sp, #0x80
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809964C
func_0809964C: @ 0x0809964C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc8
	adds r7, r0, #0
	bl func_080CD620
	adds r4, r7, #0
	adds r4, #0x78
	movs r5, #0
	ldr r1, [r7, #0x78]
	cmp r5, r1
	beq .L08099680
	cmp r1, #0
	beq .L08099680
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08099680:
	str r5, [r4]
	movs r0, #0xa7
	lsls r0, r0, #2
	bl __builtin_new
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08099740 @ =gUnk_08101038
	str r0, [sp]
	add r4, sp, #4
	movs r0, #0
	strb r0, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #8
	bl func_080CAFC4
	adds r6, r7, #0
	adds r6, #0x78
	adds r5, r0, #0
	ldr r1, [r7, #0x78]
	mov r8, r4
	cmp r5, r1
	beq .L080996D4
	cmp r1, #0
	beq .L080996D4
	movs r3, #0x84
	lsls r3, r3, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080996D4:
	str r5, [r6]
	ldr r0, [r7, #0x78]
	bl func_080CB090
	movs r5, #0
	adds r6, r7, #0
	adds r6, #0x7c
	mov r4, sp
	adds r4, #0x10
	str r4, [sp, #0xb8]
	mov r0, sp
	adds r0, #0x18
	str r0, [sp, #0xbc]
	mov r1, sp
	adds r1, #0x20
	str r1, [sp, #0xc0]
	add r2, sp, #0x28
	mov sb, r2
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r3, r7, r3
	str r3, [sp, #0xb4]
	adds r4, #0x20
	str r4, [sp, #0xc4]
	movs r0, #0xf8
	adds r0, r0, r7
	mov sl, r0
	adds r1, #0x78
	str r1, [sp, #0xac]
	adds r2, r7, #0
	adds r2, #0xc8
	str r2, [sp, #0xb0]
	ldr r3, .L08099744 @ =0x00002BB0
	adds r4, r7, r3
.L08099718:
	adds r0, r4, #0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L0809976A
	adds r0, r4, #0
	bl GetKind__C12RucksackItem
	cmp r0, #0
	bne .L08099748
	add r0, sp, #0xc
	adds r1, r4, #0
	bl GetFood__C12RucksackItem
	add r0, sp, #0xc
	bl GetIconId__C4Food
	b .L08099758
	.align 2, 0
.L08099740: .4byte gUnk_08101038
.L08099744: .4byte 0x00002BB0
.L08099748:
	adds r0, r4, #0
	bl GetArticle__C12RucksackItem
	adds r1, r0, #0
	add r0, sp, #0x94
	strb r1, [r0]
	bl GetIconId__C7Article
.L08099758:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, [r7, #0x78]
	movs r1, #1
	str r1, [sp]
	adds r1, r5, #0
	ldr r2, .L08099A94 @ =gUnk_086678A0
	bl func_080CB304
.L0809976A:
	adds r4, #4
	adds r5, #1
	cmp r5, #7
	ble .L08099718
	adds r4, r6, #0
	movs r5, #0
	ldr r1, [r7, #0x7c]
	cmp r5, r1
	beq .L08099792
	cmp r1, #0
	beq .L08099792
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L08099792:
	str r5, [r4]
	movs r0, #0xcb
	lsls r0, r0, #2
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r2, r0, #0
	ldr r0, .L08099A98 @ =gUnk_08101044
	str r0, [sp]
	movs r0, #0
	mov r3, r8
	strb r0, [r3]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #8
	bl func_080CC15C
	adds r5, r6, #0
	adds r4, r0, #0
	ldr r1, [r7, #0x7c]
	cmp r4, r1
	beq .L080997E2
	cmp r1, #0
	beq .L080997E2
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080997E2:
	str r4, [r5]
	ldr r0, [r7, #0x7c]
	bl func_080CC310
	ldr r4, .L08099A9C @ =gUnk_08750C8C
	movs r3, #0xc4
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r0, .L08099AA0 @ =0x06010000
	adds r1, r1, r0
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r4, #0
	bl func_08008E64
	ldr r6, [sp, #0xb8]
	movs r0, #0
	str r0, [sp, #0x10]
	strh r0, [r6, #4]
	ldr r1, [sp, #0xbc]
	str r0, [sp, #0x18]
	strh r0, [r1, #4]
	ldr r1, [sp, #0xc0]
	mov r8, r1
	str r0, [sp, #0x20]
	strh r0, [r1, #4]
	str r0, [sp, #0x28]
	mov r2, sb
	strh r0, [r2, #4]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0xb4]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x30
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r5, [sp, #0xc4]
	adds r0, r5, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r6, #0
	adds r0, r5, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x20]
	movs r1, #0xba
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L08099AA4 @ =0x05000200
	mov sb, r2
	adds r1, r0, r2
	ldr r0, [sp, #0x20]
	movs r2, #0
	cmp r0, #0
	beq .L08099882
	mov r3, r8
	ldrh r2, [r3, #4]
.L08099882:
	adds r0, r4, #0
	bl func_08008E64
	mov r0, sl
	ldr r4, [r0]
	ldr r0, [sp, #0xac]
	ldr r3, [r4, #0xc]
	mov r1, sl
	movs r2, #1
	bl _call_via_r3
	add r0, sp, #0x98
	ldr r0, [r0]
	ldrh r2, [r0]
	adds r0, r5, #0
	ldr r3, [r4, #0x10]
	mov r1, sl
	bl _call_via_r3
	adds r0, r5, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl memcpy
	adds r1, r6, #0
	adds r0, r5, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	ldr r4, [sp, #0x20]
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	mov r2, sb
	adds r1, r0, r2
	ldr r0, [sp, #0x20]
	movs r2, #0
	cmp r0, #0
	beq .L080998E2
	mov r3, r8
	ldrh r2, [r3, #4]
.L080998E2:
	adds r0, r4, #0
	bl func_08008E64
	ldr r0, [sp, #0xc4]
	ldr r1, [sp, #0xb0]
	movs r2, #0
	bl func_0805E790
	ldr r1, [sp, #0xb8]
	ldr r0, [sp, #0xc4]
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r4}
	stm r1!, {r2, r4}
	ldr r4, [sp, #0x20]
	movs r3, #0xbe
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #5
	mov r2, sb
	adds r1, r0, r2
	ldr r0, [sp, #0x20]
	movs r2, #0
	cmp r0, #0
	beq .L08099922
	ldr r3, [sp, #0xc0]
	ldrh r2, [r3, #4]
.L08099922:
	adds r0, r4, #0
	bl func_08008E64
	ldr r4, [sp, #0x18]
	movs r1, #0xbc
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r0, r0, #5
	ldr r2, .L08099AA0 @ =0x06010000
	adds r1, r0, r2
	ldr r0, [sp, #0x18]
	movs r2, #0
	cmp r0, #0
	beq .L08099948
	ldr r3, [sp, #0xbc]
	ldrh r2, [r3, #4]
.L08099948:
	adds r0, r4, #0
	bl func_08008E64
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r1, r1, #5
	ldr r0, .L08099AA0 @ =0x06010000
	adds r1, r1, r0
	movs r2, #0xe0
	lsls r2, r2, #3
	movs r0, #0
	bl func_08008EB8
	movs r5, #0
	add r1, sp, #0xa0
	mov r8, r1
	movs r2, #1
	mov sb, r2
	movs r3, #2
	mov sl, r3
	add r6, sp, #0xa4
	mov r4, sp
	adds r4, #0x54
	str r4, [sp, #0xa8]
.L08099982:
	ldr r0, .L08099AA8 @ =gUnk_08101048
	adds r0, r5, r0
	ldrb r4, [r0]
	cmp r4, #0
	beq .L080999DE
	mov r1, sb
	mov r0, r8
	strh r1, [r0]
	mov r2, sl
	strh r2, [r0, #2]
	ldr r0, [r0]
	add r1, sp, #0x54
	movs r2, #0
	bl func_0804E7A0
	mov r3, sb
	strh r3, [r6]
	mov r0, sl
	strh r0, [r6, #2]
	ldr r0, [r6]
	str r4, [sp]
	movs r1, #0
	str r1, [sp, #4]
	mov r2, sb
	str r2, [sp, #8]
	add r1, sp, #0x54
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r1, r0, #0
	lsls r0, r5, #1
	adds r1, r1, r0
	lsls r1, r1, #5
	ldr r4, .L08099AA0 @ =0x06010000
	adds r1, r1, r4
	ldr r0, [sp, #0xa8]
	movs r2, #0x40
	bl func_08008E64
.L080999DE:
	adds r5, #1
	cmp r5, #0x10
	ble .L08099982
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r1, .L08099AA4 @ =0x05000200
	adds r0, r0, r1
	movs r2, #0xf8
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r3, .L08099AAC @ =0x05000202
	adds r0, r0, r3
	movs r1, #0
	strh r1, [r0]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080074C0
	lsls r0, r0, #5
	ldr r4, .L08099AB0 @ =0x05000204
	adds r0, r0, r4
	ldr r2, .L08099AB4 @ =0x00004218
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, .L08099AB8 @ =0x00030003
	ldr r4, .L08099ABC @ =0x00002BD0
	adds r1, r7, r4
	movs r2, #0xc0
	lsls r2, r2, #2
	bl func_08008EB8
	movs r3, #0
	ldr r6, .L08099AC0 @ =gUnk_0811785C
	ldr r5, .L08099AC4 @ =0x0000101C
.L08099A3A:
	adds r3, #1
	lsls r0, r3, #2
	adds r0, r0, r6
	ldrb r1, [r0]
	ldrb r2, [r0, #1]
	adds r0, r1, #1
	lsls r0, r0, #1
	lsls r2, r2, #6
	adds r0, r0, r4
	adds r0, r2, r0
	adds r0, r0, r7
	lsls r1, r1, #1
	adds r1, r1, r4
	adds r2, r2, r1
	adds r2, r2, r7
	movs r1, #1
.L08099A5A:
	strh r5, [r2]
	strh r5, [r0]
	adds r0, #0x40
	adds r2, #0x40
	subs r1, #1
	cmp r1, #0
	bge .L08099A5A
	cmp r3, #7
	ble .L08099A3A
	movs r3, #8
	ldr r4, .L08099AC8 @ =0x00002BEC
	adds r0, r7, r4
	movs r2, #2
	movs r1, #0xb
.L08099A76:
	strh r3, [r0]
	strh r2, [r0, #2]
	adds r0, #0x40
	subs r1, #1
	cmp r1, #0
	bge .L08099A76
	add sp, #0xc8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08099A94: .4byte gUnk_086678A0
.L08099A98: .4byte gUnk_08101044
.L08099A9C: .4byte gUnk_08750C8C
.L08099AA0: .4byte 0x06010000
.L08099AA4: .4byte 0x05000200
.L08099AA8: .4byte gUnk_08101048
.L08099AAC: .4byte 0x05000202
.L08099AB0: .4byte 0x05000204
.L08099AB4: .4byte 0x00004218
.L08099AB8: .4byte 0x00030003
.L08099ABC: .4byte 0x00002BD0
.L08099AC0: .4byte gUnk_0811785C
.L08099AC4: .4byte 0x0000101C
.L08099AC8: .4byte 0x00002BEC

	thumb_func_start func_08099ACC
func_08099ACC: @ 0x08099ACC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	adds r7, r0, #0
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
	add r5, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r5, #4]
	add r4, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r4, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	adds r0, r7, #0
	bl func_0809A3E0
	ldr r1, .L08099C18 @ =0x00000369
	adds r0, r7, r1
	ldrb r0, [r0]
	movs r2, #0
	str r2, [sp, #0x7c]
	cmp r0, #0
	bne .L08099B24
	movs r3, #0x18
	str r3, [sp, #0x7c]
.L08099B24:
	ldr r1, .L08099C1C @ =0xFFFFFCFF
	ldr r0, [sp, #0x5c]
	ands r0, r1
	ldr r4, .L08099C20 @ =0xFFFFF3FF
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	ldr r1, .L08099C24 @ =0xFFFFDFFF
	ands r0, r1
	ldr r1, .L08099C28 @ =0xFFFF3FFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, .L08099C2C @ =0xF1FFFFFF
	ands r0, r1
	ldr r1, .L08099C30 @ =0xEFFFFFFF
	ands r0, r1
	ldr r1, .L08099C34 @ =0xDFFFFFFF
	ands r0, r1
	ldr r1, .L08099C38 @ =0x3FFFFFFF
	ands r0, r1
	str r0, [sp, #0x5c]
	movs r5, #0xc2
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #0xc
	ldr r2, .L08099C3C @ =0xFFFF0FFF
	add r3, sp, #0x5c
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	ldr r0, .L08099C40 @ =0x0000FFFF
	ands r1, r0
	ands r1, r4
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r1, r0
	str r1, [r3, #4]
	ldr r1, .L08099C44 @ =0xFFFFFF00
	ldr r0, [sp, #0x5c]
	ands r0, r1
	str r0, [sp, #0x5c]
	mov sb, r3
	ldr r6, [sp, #0x7c]
	cmp r6, #0
	beq .L08099C54
	movs r4, #0
	movs r0, #0x9d
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x80]
	add r1, sp, #0x3c
	mov sl, r1
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r2, r7, r2
	str r2, [sp, #0x84]
	movs r3, #0x81
	lsls r3, r3, #2
	adds r3, r7, r3
	str r3, [sp, #0x88]
	subs r5, #8
	adds r5, r7, r5
	str r5, [sp, #0x8c]
	movs r6, #0xb8
	mov r8, sb
.L08099BBA:
	ldr r1, .L08099C48 @ =0x000001FF
	ands r1, r6
	lsls r1, r1, #0x10
	ldr r2, .L08099C4C @ =0xFE00FFFF
	ldr r0, [sp, #0x5c]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x8c]
	ldr r1, [r0, #4]
	bl func_08007D4C
	lsls r1, r4, #1
	adds r0, r0, r1
	ldr r1, [sp, #0x7c]
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldr r2, .L08099C50 @ =0xFFFFFC00
	mov r3, r8
	ldr r1, [r3, #4]
	ands r1, r2
	orrs r1, r0
	str r1, [r3, #4]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L08099C0C
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x5c]
	str r0, [r1]
	mov r5, sb
	ldrh r0, [r5, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L08099C0C:
	adds r6, #8
	adds r4, #1
	cmp r4, #3
	ble .L08099BBA
	b .L08099CE4
	.align 2, 0
.L08099C18: .4byte 0x00000369
.L08099C1C: .4byte 0xFFFFFCFF
.L08099C20: .4byte 0xFFFFF3FF
.L08099C24: .4byte 0xFFFFDFFF
.L08099C28: .4byte 0xFFFF3FFF
.L08099C2C: .4byte 0xF1FFFFFF
.L08099C30: .4byte 0xEFFFFFFF
.L08099C34: .4byte 0xDFFFFFFF
.L08099C38: .4byte 0x3FFFFFFF
.L08099C3C: .4byte 0xFFFF0FFF
.L08099C40: .4byte 0x0000FFFF
.L08099C44: .4byte 0xFFFFFF00
.L08099C48: .4byte 0x000001FF
.L08099C4C: .4byte 0xFE00FFFF
.L08099C50: .4byte 0xFFFFFC00
.L08099C54:
	movs r5, #0
	movs r6, #0x9d
	lsls r6, r6, #2
	adds r6, r7, r6
	str r6, [sp, #0x80]
	add r0, sp, #0x3c
	mov sl, r0
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r1, r7, r1
	str r1, [sp, #0x84]
	movs r2, #0x81
	lsls r2, r2, #2
	adds r2, r7, r2
	str r2, [sp, #0x88]
	mov r4, sb
	movs r3, #0x88
	mov r8, r3
	movs r6, #0xc0
	lsls r6, r6, #2
	adds r6, r7, r6
	str r6, [sp, #0x90]
.L08099C80:
	ldr r1, .L08099E78 @ =0x000001FF
	adds r0, r1, #0
	mov r2, r8
	ands r2, r0
	ldrh r0, [r4, #2]
	ldr r3, .L08099E7C @ =0xFFFFFE00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #2]
	ldr r6, [sp, #0x90]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	lsls r1, r5, #1
	adds r0, r0, r1
	ldr r1, [sp, #0x7c]
	adds r0, r0, r1
	ldr r2, .L08099E80 @ =0x000003FF
	adds r1, r2, #0
	ands r0, r1
	ldrh r1, [r4, #4]
	ldr r3, .L08099E84 @ =0xFFFFFC00
	adds r2, r3, #0
	ands r1, r2
	orrs r1, r0
	strh r1, [r4, #4]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L08099CDA
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x5c]
	str r0, [r1]
	mov r6, sb
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L08099CDA:
	movs r0, #8
	add r8, r0
	adds r5, #1
	cmp r5, #0xb
	ble .L08099C80
.L08099CE4:
	ldr r1, .L08099E88 @ =0x00000369
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq .L08099D7C
	mov r3, sb
	ldrb r2, [r3, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #3]
	movs r2, #0x18
	add r0, sp, #0x5c
	strb r2, [r0]
	ldrb r0, [r3, #1]
	ands r1, r0
	strb r1, [r3, #1]
	movs r5, #0
	mov r4, sb
	movs r6, #0xd0
	mov r8, r6
	movs r0, #0xc4
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x90]
.L08099D16:
	ldr r1, .L08099E78 @ =0x000001FF
	adds r0, r1, #0
	mov r2, r8
	ands r2, r0
	ldrh r0, [r4, #2]
	ldr r3, .L08099E7C @ =0xFFFFFE00
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #2]
	ldr r6, [sp, #0x90]
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007D4C
	ldr r2, .L08099E88 @ =0x00000369
	adds r1, r7, r2
	adds r1, r1, r5
	ldrb r2, [r1]
	adds r2, r2, r0
	ldr r3, .L08099E80 @ =0x000003FF
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r6, .L08099E84 @ =0xFFFFFC00
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldrb r2, [r3]
	cmp r2, #0x7f
	bhi .L08099D72
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r3, r1
	ldr r0, [sp, #0x5c]
	str r0, [r1]
	mov r6, sb
	ldrh r0, [r6, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r3]
.L08099D72:
	movs r0, #8
	add r8, r0
	adds r5, #1
	cmp r5, #2
	ble .L08099D16
.L08099D7C:
	movs r1, #0xa8
	lsls r1, r1, #2
	adds r5, r7, r1
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r5]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x80]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	mov r0, sl
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r1, sp
	movs r6, #0xa1
	lsls r6, r6, #2
	adds r0, r7, r6
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0]
	str r0, [r1]
	movs r6, #0xc6
	lsls r6, r6, #2
	adds r4, r7, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r1, #0xc8
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r0, #2
	strh r0, [r1, #8]
	mov r0, sp
	movs r2, #1
	mov sb, r2
	mov r3, sb
	strb r3, [r0, #0x18]
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L08099E10
	b .L08099F60
.L08099E10:
	ldr r0, [sp, #0x24]
	movs r1, #0
	cmp r0, #0
	beq .L08099E1C
	mov r5, sp
	ldrh r1, [r5, #0x28]
.L08099E1C:
	cmp r1, #0
	bne .L08099E22
	b .L08099F60
.L08099E22:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r6, [sp, #0x24]
	mov r8, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L08099E44
	mov r0, sp
	ldrh r3, [r0, #0x28]
.L08099E44:
	str r5, [sp, #0x90]
	lsls r2, r2, #5
	ldr r1, .L08099E8C @ =0x06010000
	adds r2, r2, r1
	mov r0, sl
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08099E90
	cmp r1, #0
	beq .L08099E6C
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08099E6C:
	ldr r5, [sp, #0x90]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L08099F60
	.align 2, 0
.L08099E78: .4byte 0x000001FF
.L08099E7C: .4byte 0xFFFFFE00
.L08099E80: .4byte 0x000003FF
.L08099E84: .4byte 0xFFFFFC00
.L08099E88: .4byte 0x00000369
.L08099E8C: .4byte 0x06010000
.L08099E90:
	mov r8, r1
	mov r6, sb
	str r6, [sp, #0x68]
	ldr r1, [sp, #0x90]
	ldr r0, [r1]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L08099EAC
	adds r0, r1, #0
.L08099EAC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08099ECA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08099ECE
	mov r0, sb
	bl func_080D3BC0
	b .L08099ECE
.L08099ECA:
	movs r0, #0
	mov sb, r0
.L08099ECE:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r3, [sp, #0x90]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L08099EF4
.L08099EDC:
	cmp r3, #0
	beq .L08099EEC
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08099EEC:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L08099EDC
.L08099EF4:
	adds r5, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L08099F10
	cmp r5, #0
	beq .L08099F0C
	adds r0, r5, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08099F0C:
	adds r5, #0x10
	b .L08099F38
.L08099F10:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L08099F36
.L08099F18:
	cmp r2, #0
	beq .L08099F28
	adds r0, r2, #0
	add r1, sp, #0x3c
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08099F28:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L08099F18
.L08099F36:
	adds r5, r2, #0
.L08099F38:
	ldr r6, [sp, #0x90]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08099F4A
.L08099F44:
	adds r1, #0x10
	cmp r1, r2
	bne .L08099F44
.L08099F4A:
	cmp r0, #0
	beq .L08099F52
	bl free
.L08099F52:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x90]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L08099F60:
	movs r6, #0
	mov r5, sp
	ldr r3, .L0809A0E4 @ =gUnk_08117838
	mov r8, r3
.L08099F68:
	lsls r0, r6, #2
	ldr r4, .L0809A0E8 @ =0x00002BB0
	adds r0, r0, r4
	adds r0, r7, r0
	bl IsEmpty__C12RucksackItem
	lsls r0, r0, #0x18
	adds r4, r6, #1
	cmp r0, #0
	bne .L08099FA8
	lsls r1, r4, #2
	add r1, r8
	ldrb r0, [r1]
	adds r0, #8
	strh r0, [r5]
	ldrb r0, [r1, #1]
	strh r0, [r5, #2]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08099FA0
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L08099FA0:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L08099FA8:
	ldr r2, .L0809A0EC @ =0x00002B90
	adds r1, r7, r2
	ldr r3, .L0809A0F0 @ =0x00002BA7
	adds r0, r7, r3
	ldrb r1, [r1]
	adds r0, r0, r1
	ldrb r0, [r0]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08099FEC
	lsls r1, r4, #2
	add r1, r8
	ldrb r0, [r1]
	adds r0, #0x80
	strh r0, [r5]
	ldrb r0, [r1, #1]
	strh r0, [r5, #2]
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08099FE4
	mov r6, sp
	ldrh r2, [r6, #0x20]
.L08099FE4:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L08099FEC:
	adds r6, r4, #0
	cmp r6, #7
	ble .L08099F68
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r5, r7, r0
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r5]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x84]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r0, sl
	mov r1, sl
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	mov r0, sl
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r1, sp
	movs r6, #0xee
	lsls r6, r6, #1
	adds r0, r7, r6
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x28
	strh r0, [r1, #2]
	movs r6, #0xb8
	lsls r6, r6, #2
	adds r4, r7, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	movs r1, #0xba
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r1, #1
	movs r2, #1
	mov sb, r2
	mov r3, sb
	strh r3, [r0, #8]
	strb r1, [r0, #0x18]
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L0809A090
	b .L0809A1C8
.L0809A090:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r6, [sp, #0x24]
	mov r8, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0809A0B2
	mov r0, sp
	ldrh r3, [r0, #0x28]
.L0809A0B2:
	str r5, [sp, #0x90]
	lsls r2, r2, #5
	ldr r1, .L0809A0F4 @ =0x06010000
	adds r2, r2, r1
	mov r0, sl
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0809A0F8
	cmp r1, #0
	beq .L0809A0DA
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0809A0DA:
	ldr r5, [sp, #0x90]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0809A1C8
	.align 2, 0
.L0809A0E4: .4byte gUnk_08117838
.L0809A0E8: .4byte 0x00002BB0
.L0809A0EC: .4byte 0x00002B90
.L0809A0F0: .4byte 0x00002BA7
.L0809A0F4: .4byte 0x06010000
.L0809A0F8:
	mov r8, r1
	mov r6, sb
	str r6, [sp, #0x70]
	ldr r1, [sp, #0x90]
	ldr r0, [r1]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x6c]
	add r1, sp, #0x70
	add r0, sp, #0x6c
	cmp r4, #1
	bhs .L0809A114
	adds r0, r1, #0
.L0809A114:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0809A132
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0809A136
	mov r0, sb
	bl func_080D3BC0
	b .L0809A136
.L0809A132:
	movs r0, #0
	mov sb, r0
.L0809A136:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r3, [sp, #0x90]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0809A15C
.L0809A144:
	cmp r3, #0
	beq .L0809A154
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0809A154:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0809A144
.L0809A15C:
	adds r5, r3, #0
	ldr r0, [sp, #0x70]
	cmp r0, #1
	bne .L0809A178
	cmp r5, #0
	beq .L0809A174
	adds r0, r5, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0809A174:
	adds r5, #0x10
	b .L0809A1A0
.L0809A178:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0809A19E
.L0809A180:
	cmp r2, #0
	beq .L0809A190
	adds r0, r2, #0
	add r1, sp, #0x3c
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0809A190:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L0809A180
.L0809A19E:
	adds r5, r2, #0
.L0809A1A0:
	ldr r6, [sp, #0x90]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0809A1B2
.L0809A1AC:
	adds r1, #0x10
	cmp r1, r2
	bne .L0809A1AC
.L0809A1B2:
	cmp r0, #0
	beq .L0809A1BA
	bl free
.L0809A1BA:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x90]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0809A1C8:
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0809A1DE
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L0809A1DE:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	movs r6, #0x8c
	lsls r6, r6, #2
	adds r5, r7, r6
	movs r0, #0x80
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_0805E8F0
	str r0, [r5]
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x88]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	mov r4, sl
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	add r0, sp, #0x1c
	ldm r4!, {r1, r2, r6}
	stm r0!, {r1, r2, r6}
	ldm r4!, {r1, r3, r6}
	stm r0!, {r1, r3, r6}
	ldm r4!, {r2, r3}
	stm r0!, {r2, r3}
	mov r1, sp
	movs r4, #0x85
	lsls r4, r4, #2
	adds r0, r7, r4
	ldm r0!, {r2, r3, r6}
	stm r1!, {r2, r3, r6}
	ldm r0!, {r2, r4, r6}
	stm r1!, {r2, r4, r6}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x50
	strh r0, [r1, #2]
	movs r3, #0xb8
	lsls r3, r3, #2
	adds r4, r7, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #2
	strh r0, [r1, #6]
	movs r6, #0xba
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r1, #1
	movs r2, #1
	mov sb, r2
	mov r3, sb
	strh r3, [r0, #8]
	strb r1, [r0, #0x18]
	ldrb r0, [r5]
	lsls r0, r0, #0x1e
	cmp r0, #0
	blt .L0809A286
	b .L0809A3B0
.L0809A286:
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r6, [sp, #0x24]
	mov r8, r6
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L0809A2A8
	mov r0, sp
	ldrh r3, [r0, #0x28]
.L0809A2A8:
	str r5, [sp, #0x90]
	lsls r2, r2, #5
	ldr r1, .L0809A2DC @ =0x06010040
	adds r2, r2, r1
	mov r0, sl
	mov r1, r8
	bl func_08008F0C
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L0809A2E0
	cmp r1, #0
	beq .L0809A2D0
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0809A2D0:
	ldr r5, [sp, #0x90]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0809A3B0
	.align 2, 0
.L0809A2DC: .4byte 0x06010040
.L0809A2E0:
	mov r8, r1
	mov r6, sb
	str r6, [sp, #0x78]
	ldr r1, [sp, #0x90]
	ldr r0, [r1]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r1, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L0809A2FC
	adds r0, r1, #0
.L0809A2FC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L0809A31A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L0809A31E
	mov r0, sb
	bl func_080D3BC0
	b .L0809A31E
.L0809A31A:
	movs r0, #0
	mov sb, r0
.L0809A31E:
	adds r5, r0, #0
	str r5, [sp, #0x94]
	ldr r3, [sp, #0x90]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L0809A344
.L0809A32C:
	cmp r3, #0
	beq .L0809A33C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0809A33C:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L0809A32C
.L0809A344:
	adds r5, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L0809A360
	cmp r5, #0
	beq .L0809A35C
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L0809A35C:
	adds r5, #0x10
	b .L0809A388
.L0809A360:
	mov r8, r0
	adds r2, r5, #0
	cmp r0, #0
	beq .L0809A386
.L0809A368:
	cmp r2, #0
	beq .L0809A378
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L0809A378:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L0809A368
.L0809A386:
	adds r5, r2, #0
.L0809A388:
	ldr r6, [sp, #0x90]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L0809A39A
.L0809A394:
	adds r1, #0x10
	cmp r1, r2
	bne .L0809A394
.L0809A39A:
	cmp r0, #0
	beq .L0809A3A2
	bl free
.L0809A3A2:
	ldr r0, [sp, #0x94]
	add r0, sb
	ldr r1, [sp, #0x94]
	ldr r2, [sp, #0x90]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L0809A3B0:
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0809A3C6
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L0809A3C6:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809A3E0
func_0809A3E0: @ 0x0809A3E0
	push {r4, r5, r6, lr}
	sub sp, #0x5c
	adds r5, r0, #0
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
	movs r0, #0x8e
	lsls r0, r0, #2
	adds r4, r5, r0
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	movs r4, #0x8f
	lsls r4, r4, #2
	adds r0, r5, r4
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
	movs r3, #0x93
	lsls r3, r3, #2
	adds r0, r5, r3
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r4, #0xd8
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r2, .L0809A4D0 @ =0x00000362
	adds r0, r5, r2
	ldrh r0, [r0]
	strh r0, [r1, #2]
	movs r3, #0xbc
	lsls r3, r3, #2
	adds r0, r5, r3
	ldr r1, [r0, #4]
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	subs r4, #0x68
	adds r0, r5, r4
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	movs r2, #1
	movs r0, #1
	strh r0, [r1, #8]
	mov r0, sp
	strb r2, [r0, #0x18]
	adds r0, r5, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L0809A4BE
	ldrh r2, [r6, #4]
.L0809A4BE:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
	add sp, #0x5c
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L0809A4D0: .4byte 0x00000362
