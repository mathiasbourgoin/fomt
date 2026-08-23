	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

	thumb_func_start func_080C7F0C
func_080C7F0C: @ 0x080C7F0C
	ldr r0, [r0, #4]
	ldr r1, .L080C7F18 @ =0x00000974
	adds r0, r0, r1
	ldr r0, [r0]
	bx lr
	.align 2, 0
.L080C7F18: .4byte 0x00000974

	thumb_func_start func_080C7F1C
func_080C7F1C: @ 0x080C7F1C
	push {r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r1, #4]
	mov r0, sp
	bl func_080C12C4
	ldr r2, [sp]
	mov r0, sp
	str r0, [sp, #4]
	str r2, [sp, #8]
	adds r1, r0, #0
	movs r0, #0
	str r0, [r1]
	str r2, [r4]
	ldr r1, [sp]
	cmp r1, #0
	beq .L080C7F4C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080C7F4C:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080C7F58
func_080C7F58: @ 0x080C7F58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x58
	adds r7, r0, #0
	adds r4, r1, #0
	bl func_08008444
	ldr r0, .L080C8310 @ =vtable_unk_080E8570
	str r0, [r7, #4]
	str r4, [r7, #8]
	movs r4, #0
	strh r4, [r7, #0xc]
	str r4, [r7, #0x10]
	movs r6, #1
	rsbs r6, r6, #0
	str r6, [r7, #0x14]
	adds r0, r7, #0
	adds r0, #0x18
	movs r1, #1
	bl func_08008B54
	str r4, [r7, #0x1c]
	str r4, [r7, #0x20]
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r0, r7, r1
	str r4, [r0]
	add r0, sp, #0xc
	bl func_0800835C
	add r5, sp, #0x10
	adds r0, r5, #0
	bl func_0800770C
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	str r4, [sp]
	add r1, sp, #0xc
	str r1, [sp, #4]
	str r5, [sp, #8]
	movs r1, #0
	movs r2, #0x1c
	movs r3, #0
	bl func_08050CC0
	adds r0, r5, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0xd7
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0xd9
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0xdb
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0xdd
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #1
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #1
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0xe1
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #1
	bl func_08007B54
	str r0, [r4, #4]
	movs r0, #0xe5
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #1
	bl func_08007B54
	str r0, [r4, #4]
	movs r1, #0xe7
	lsls r1, r1, #2
	adds r4, r7, r1
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	movs r0, #0xe9
	lsls r0, r0, #2
	adds r4, r7, r0
	movs r5, #8
	mov r1, sp
	adds r1, #0x14
	str r1, [sp, #0x50]
	movs r0, #0
	mov r8, r0
.L080C80B0:
	adds r0, r4, #0
	bl func_08007874
	mov r1, r8
	str r1, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r6
	bne .L080C80B0
	movs r0, #0xfb
	lsls r0, r0, #2
	adds r4, r7, r0
	movs r5, #8
	movs r1, #0xad
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x48]
	ldr r0, .L080C8314 @ =0x0000057C
	adds r0, r0, r7
	mov sl, r0
	movs r1, #0xb3
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x20]
	movs r0, #0xb4
	lsls r0, r0, #3
	adds r0, r7, r0
	str r0, [sp, #0x28]
	ldr r1, .L080C8318 @ =0x000005B4
	adds r1, r1, r7
	mov sb, r1
	movs r0, #0xba
	lsls r0, r0, #3
	adds r0, r7, r0
	str r0, [sp, #0x34]
	movs r1, #0xbb
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x38]
	ldr r0, .L080C831C @ =0x000005EC
	adds r0, r7, r0
	str r0, [sp, #0x3c]
	movs r1, #0xc1
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x40]
	movs r0, #0xc2
	lsls r0, r0, #3
	adds r0, r7, r0
	str r0, [sp, #0x44]
	ldr r1, .L080C8320 @ =0x00000624
	adds r1, r7, r1
	str r1, [sp, #0x4c]
	movs r0, #0xc8
	lsls r0, r0, #3
	adds r0, r7, r0
	str r0, [sp, #0x54]
	movs r1, #0xc9
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x1c]
	ldr r0, .L080C8324 @ =0x0000064C
	adds r0, r7, r0
	str r0, [sp, #0x24]
	movs r1, #0xcc
	lsls r1, r1, #3
	adds r1, r7, r1
	str r1, [sp, #0x2c]
	ldr r0, .L080C8328 @ =0x0000067C
	adds r0, r7, r0
	str r0, [sp, #0x30]
	movs r1, #0
	mov r8, r1
	movs r6, #1
	rsbs r6, r6, #0
.L080C8146:
	adds r0, r4, #0
	bl func_08007128
	mov r0, r8
	str r0, [r4, #4]
	adds r4, #8
	subs r5, #1
	cmp r5, r6
	bne .L080C8146
	ldr r1, .L080C832C @ =0x00000434
	adds r0, r7, r1
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	adds r1, #4
	adds r0, r7, r1
	str r7, [sp, #0x14]
	ldr r1, [sp, #0x50]
	bl func_080E542C
	ldr r0, .L080C8330 @ =0x000004D4
	adds r6, r7, r0
	ldr r1, .L080C8334 @ =gUnk_08527094
	adds r0, r6, #0
	bl func_0805E6CC
	ldr r1, .L080C8338 @ =0x00000504
	adds r1, r7, r1
	str r1, [sp, #0x18]
	ldr r1, .L080C833C @ =gUnk_08728208
	ldr r0, [sp, #0x18]
	bl func_0805E6CC
	ldr r0, .L080C8340 @ =0x00000534
	adds r0, r0, r7
	mov r8, r0
	ldr r1, .L080C8344 @ =gUnk_087536E4
	bl func_0805E6CC
	ldr r1, .L080C8348 @ =0x00000564
	adds r0, r7, r1
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x48]
	adds r1, r6, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	mov r0, sl
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
	ldr r1, [sp, #0x20]
	strb r5, [r1]
	ldr r1, .L080C834C @ =0x0000059C
	adds r0, r7, r1
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x28]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	mov r0, sb
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
	ldr r1, [sp, #0x34]
	strb r5, [r1]
	ldr r1, .L080C8350 @ =0x000005D4
	adds r0, r7, r1
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x38]
	mov r1, r8
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, [sp, #0x3c]
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
	ldr r1, [sp, #0x40]
	strb r5, [r1]
	ldr r1, .L080C8354 @ =0x0000060C
	adds r0, r7, r1
	strh r4, [r0]
	strh r4, [r0, #2]
	ldr r0, [sp, #0x44]
	mov r1, r8
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, [sp, #0x4c]
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
	ldr r1, [sp, #0x54]
	strb r5, [r1]
	ldr r0, .L080C8358 @ =0x00000644
	adds r6, r7, r0
	movs r0, #0xc
	strh r0, [r6]
	movs r0, #0x28
	ldr r1, [sp, #0x1c]
	str r0, [r1]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	ldr r0, [sp, #0x2c]
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
	movs r0, #1
	ldr r1, [sp, #0x30]
	strb r0, [r1]
	str r4, [r6, #0x3c]
	ldr r1, .L080C835C @ =0x00000684
	adds r0, r7, r1
	adds r1, r7, #0
	bl func_080CA770
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r0, r7, r1
	strb r5, [r0]
	adds r1, #1
	adds r0, r7, r1
	strb r5, [r0]
	adds r1, #1
	adds r0, r7, r1
	strb r5, [r0]
	adds r1, #1
	adds r0, r7, r1
	strb r5, [r0]
	movs r0, #0
	mov r8, r0
	movs r1, #0xea
	lsls r1, r1, #2
	adds r6, r7, r1
.L080C82BC:
	mov r0, r8
	lsls r5, r0, #3
	adds r4, r5, r7
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r4, r4, r1
	ldr r1, [r6]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_08007B54
	str r0, [r6]
	adds r5, r5, r7
	movs r0, #0xfb
	lsls r0, r0, #2
	adds r5, r5, r0
	ldr r1, [r6, #0x48]
	adds r0, r5, #0
	bl func_080073E0
	adds r0, r5, #0
	bl func_0800736C
	str r0, [r6, #0x48]
	adds r6, #8
	movs r1, #1
	add r8, r1
	mov r0, r8
	cmp r0, #8
	ble .L080C82BC
	adds r0, r7, #0
	add sp, #0x58
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080C8310: .4byte vtable_unk_080E8570
.L080C8314: .4byte 0x0000057C
.L080C8318: .4byte 0x000005B4
.L080C831C: .4byte 0x000005EC
.L080C8320: .4byte 0x00000624
.L080C8324: .4byte 0x0000064C
.L080C8328: .4byte 0x0000067C
.L080C832C: .4byte 0x00000434
.L080C8330: .4byte 0x000004D4
.L080C8334: .4byte gUnk_08527094
.L080C8338: .4byte 0x00000504
.L080C833C: .4byte gUnk_08728208
.L080C8340: .4byte 0x00000534
.L080C8344: .4byte gUnk_087536E4
.L080C8348: .4byte 0x00000564
.L080C834C: .4byte 0x0000059C
.L080C8350: .4byte 0x000005D4
.L080C8354: .4byte 0x0000060C
.L080C8358: .4byte 0x00000644
.L080C835C: .4byte 0x00000684

	thumb_func_start func_080C8360
func_080C8360: @ 0x080C8360
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r1
	ldr r0, .L080C853C @ =vtable_unk_080E8570
	str r0, [r5, #4]
	ldr r0, .L080C8540 @ =0x00000434
	adds r4, r5, r0
	ldrh r1, [r4]
	movs r0, #0
	bl func_08000540
	ldr r1, .L080C8544 @ =0x00000534
	adds r0, r5, r1
	ldr r1, .L080C8548 @ =vtable_unk_080E5A28
	str r1, [r0]
	ldr r2, .L080C854C @ =0x00000504
	adds r0, r5, r2
	str r1, [r0]
	subs r2, #0x30
	adds r0, r5, r2
	str r1, [r0]
	movs r1, #0x87
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #2
	bl func_080E5478
	movs r2, #0xfb
	lsls r2, r2, #2
	adds r0, r5, r2
	cmp r0, #0
	beq .L080C83C2
	cmp r0, r4
	beq .L080C83C2
	adds r6, r0, #0
.L080C83AC:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	cmp r6, r4
	bne .L080C83AC
.L080C83C2:
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r7, r5, #0
	adds r7, #0x20
	movs r2, #0x24
	adds r2, r2, r5
	mov r8, r2
	cmp r0, #0
	beq .L080C83FA
	adds r1, #0x48
	adds r4, r5, r1
	cmp r0, r4
	beq .L080C83FA
	movs r2, #0xe9
	lsls r2, r2, #2
	adds r6, r5, r2
.L080C83E4:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	cmp r6, r4
	bne .L080C83E4
.L080C83FA:
	movs r0, #0xe7
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0xe5
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0xe3
	lsls r2, r2, #2
	adds r4, r5, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0xe1
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0xdd
	lsls r2, r2, #2
	adds r4, r5, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #0xdb
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0xd9
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r2, #0xd7
	lsls r2, r2, #2
	adds r4, r5, r2
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xd5
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #2
	bl func_08050D0C
	ldr r0, [r5, #0x20]
	lsls r0, r0, #4
	adds r0, #4
	adds r1, r7, r0
	mov r0, r8
	cmp r0, r1
	beq .L080C84F6
.L080C84F0:
	adds r0, #0x10
	cmp r0, r1
	bne .L080C84F0
.L080C84F6:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq .L080C8528
	adds r4, r0, #0
	adds r0, #0x28
	movs r1, #2
	bl func_08075DEC
	adds r0, r4, #0
	adds r0, #0x18
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x18]
	cmp r1, r2
	beq .L080C8518
.L080C8512:
	adds r1, #0x40
	cmp r1, r2
	bne .L080C8512
.L080C8518:
	ldr r0, [r0]
	cmp r0, #0
	beq .L080C8522
	bl free
.L080C8522:
	adds r0, r4, #0
	bl __builtin_delete
.L080C8528:
	adds r0, r5, #0
	mov r1, sb
	bl func_080086BC
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080C853C: .4byte vtable_unk_080E8570
.L080C8540: .4byte 0x00000434
.L080C8544: .4byte 0x00000534
.L080C8548: .4byte vtable_unk_080E5A28
.L080C854C: .4byte 0x00000504

	thumb_func_start func_080C8550
func_080C8550: @ 0x080C8550
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, .L080C858C @ =0x03FF03FF
	ldr r1, .L080C8590 @ =0x0600FF8A
	adds r0, r4, #0
	movs r2, #0x28
	bl func_08008EB8
	ldr r1, .L080C8594 @ =0x0600FFCA
	adds r0, r4, #0
	movs r2, #0x28
	bl func_08008EB8
	ldr r0, [r5, #8]
	ldr r1, .L080C8598 @ =0x00001AA8
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, .L080C859C @ =0x0600FFB2
	movs r2, #0x20
	str r2, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080C858C: .4byte 0x03FF03FF
.L080C8590: .4byte 0x0600FF8A
.L080C8594: .4byte 0x0600FFCA
.L080C8598: .4byte 0x00001AA8
.L080C859C: .4byte 0x0600FFB2

	thumb_func_start func_080C85A0
func_080C85A0: @ 0x080C85A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x144
	adds r7, r0, #0
	bl func_08008918
	add r2, sp, #0xc
	movs r3, #0xe2
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #8]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r4, .L080C87B0 @ =0x00001D42
	adds r1, r4, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r5, .L080C87B4 @ =0x00003E41
	adds r1, r5, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	movs r6, #0xfa
	lsls r6, r6, #5
	adds r1, r6, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, .L080C87B8 @ =0x0600E800
	mov sb, r0
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	mov r1, sb
	adds r2, r5, #0
	bl func_08008EB8
	ldr r6, .L080C87BC @ =0x0600F000
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L080C87C0 @ =0x0600F800
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	movs r1, #0xc0
	lsls r1, r1, #0x13
	mov r8, r1
	movs r2, #0x80
	lsls r2, r2, #8
	movs r0, #0
	bl func_08008EB8
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0xc
	movs r3, #0xf2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r4, #0
	strh r2, [r0]
	ldr r0, .L080C87C4 @ =gUnk_080F9F70
	ldr r0, [r0]
	ldr r1, .L080C87C8 @ =gUnk_080F9F74
	ldr r2, [r1]
	mov r1, r8
	bl func_08008E64
	ldr r0, .L080C87CC @ =0x00030003
	adds r1, r6, #0
	adds r2, r5, #0
	bl func_08008EB8
	movs r0, #3
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0x1e
	bl func_08051320
	ldr r0, .L080C87D0 @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r0, .L080C87D4 @ =0x03FF03FF
	mov r1, sb
	adds r2, r5, #0
	bl func_08008EB8
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0xc
	ldr r4, .L080C87D8 @ =0x000001EB
	adds r1, r4, #0
	strh r1, [r2]
	strh r1, [r0, #0x1e]
	movs r5, #0
	mov sl, r5
	add r6, sp, #0xc4
	mov r8, r6
	mov r0, sp
	adds r0, #0x14
	str r0, [sp, #0x130]
	mov r1, sp
	adds r1, #0xc8
	str r1, [sp, #0x11c]
	adds r2, #0xc0
	str r2, [sp, #0x120]
	mov r3, sp
	adds r3, #0x54
	str r3, [sp, #0x100]
	mov r4, sp
	adds r4, #0x64
	str r4, [sp, #0x104]
	mov r5, sp
	adds r5, #0x74
	str r5, [sp, #0x108]
	mov r6, sp
	adds r6, #0x84
	str r6, [sp, #0x10c]
	adds r0, #0x80
	str r0, [sp, #0x110]
	subs r1, #0x24
	str r1, [sp, #0x114]
	subs r2, #0x18
	str r2, [sp, #0x118]
	movs r3, #1
	mov sb, r3
	ldr r5, .L080C87DC @ =0x06001400
	mov r6, r8
	ldr r4, .L080C87E0 @ =gUnk_081177F6
.L080C86DA:
	ldrh r1, [r4]
	mov r0, sb
	strh r0, [r6]
	movs r3, #2
	mov r2, r8
	strh r3, [r2, #2]
	ldr r0, [r6]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	mov r2, sb
	str r2, [sp, #8]
	add r1, sp, #0x14
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	ldr r0, [sp, #0x130]
	adds r1, r5, #0
	movs r2, #0x40
	bl func_08008E64
	adds r5, #0x40
	adds r4, #2
	movs r3, #1
	add sl, r3
	mov r0, sl
	cmp r0, #9
	ble .L080C86DA
	movs r1, #0xd2
	lsls r1, r1, #2
	adds r0, r7, r1
	bl func_08050D5C
	movs r4, #2
	movs r6, #0
	add r0, sp, #0xc8
	strh r4, [r0]
	ldr r2, [sp, #0x11c]
	strh r4, [r2, #2]
	ldr r0, [r0]
	ldr r3, .L080C87E4 @ =0x00000454
	adds r5, r7, r3
	adds r1, r5, #0
	movs r2, #0
	bl func_0804E7A0
	ldr r1, .L080C87E8 @ =gUnk_0811780C
	movs r0, #1
	mov sb, r0
	add r0, sp, #0xcc
	strh r4, [r0]
	ldr r2, [sp, #0x120]
	strh r4, [r2, #2]
	ldr r0, [r0]
	str r1, [sp]
	str r6, [sp, #4]
	mov r3, sb
	str r3, [sp, #8]
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	adds r0, r7, #0
	bl func_08008910
	str r0, [sp, #0x138]
	add r0, sp, #0x54
	adds r1, r5, #0
	ldr r2, .L080C87EC @ =0x06000400
	movs r3, #0x80
	bl func_08008F0C
	ldr r4, [sp, #0x100]
	mov sl, r4
	ldr r5, [sp, #0x138]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C87F8
	cmp r1, #0
	beq .L080C878C
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C878C:
	ldr r4, [sp, #0x138]
	ldr r0, [r4, #4]
	adds r0, #0x10
	str r0, [r4, #4]
	adds r5, r7, #0
	adds r5, #0x1c
	str r5, [sp, #0x134]
	movs r6, #0xca
	lsls r6, r6, #3
	adds r6, r7, r6
	str r6, [sp, #0x12c]
	ldr r0, .L080C87F0 @ =0x0000056C
	adds r0, r7, r0
	str r0, [sp, #0x124]
	ldr r1, .L080C87F4 @ =0x000005DC
	adds r1, r7, r1
	str r1, [sp, #0x128]
	b .L080C88EC
	.align 2, 0
.L080C87B0: .4byte 0x00001D42
.L080C87B4: .4byte 0x00003E41
.L080C87B8: .4byte 0x0600E800
.L080C87BC: .4byte 0x0600F000
.L080C87C0: .4byte 0x0600F800
.L080C87C4: .4byte gUnk_080F9F70
.L080C87C8: .4byte gUnk_080F9F74
.L080C87CC: .4byte 0x00030003
.L080C87D0: .4byte gUnk_080F9F78
.L080C87D4: .4byte 0x03FF03FF
.L080C87D8: .4byte 0x000001EB
.L080C87DC: .4byte 0x06001400
.L080C87E0: .4byte gUnk_081177F6
.L080C87E4: .4byte 0x00000454
.L080C87E8: .4byte gUnk_0811780C
.L080C87EC: .4byte 0x06000400
.L080C87F0: .4byte 0x0000056C
.L080C87F4: .4byte 0x000005DC
.L080C87F8:
	mov r8, r1
	add r1, sp, #0xd4
	mov r2, sb
	str r2, [r1]
	ldr r3, [sp, #0x138]
	ldr r0, [r3]
	mov r4, r8
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0xd0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C8816
	adds r0, r1, #0
.L080C8816:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C8834
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C8838
	mov r0, sb
	bl func_080D3BC0
	b .L080C8838
.L080C8834:
	movs r0, #0
	mov sb, r0
.L080C8838:
	adds r5, r0, #0
	str r5, [sp, #0x13c]
	ldr r5, [sp, #0x138]
	ldr r2, [r5]
	ldr r3, [sp, #0x13c]
	adds r6, r7, #0
	adds r6, #0x1c
	str r6, [sp, #0x134]
	movs r0, #0xca
	lsls r0, r0, #3
	adds r0, r7, r0
	str r0, [sp, #0x12c]
	ldr r1, .L080C8894 @ =0x0000056C
	adds r1, r7, r1
	str r1, [sp, #0x124]
	ldr r4, .L080C8898 @ =0x000005DC
	adds r4, r7, r4
	str r4, [sp, #0x128]
	cmp r2, r8
	beq .L080C8878
.L080C8860:
	cmp r3, #0
	beq .L080C8870
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C8870:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080C8860
.L080C8878:
	adds r5, r3, #0
	ldr r1, [sp, #0xd4]
	cmp r1, #1
	bne .L080C889C
	cmp r5, #0
	beq .L080C8890
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C8890:
	adds r5, #0x10
	b .L080C88C4
	.align 2, 0
.L080C8894: .4byte 0x0000056C
.L080C8898: .4byte 0x000005DC
.L080C889C:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L080C88C2
.L080C88A4:
	cmp r2, #0
	beq .L080C88B4
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C88B4:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r2, #0x10
	mov r1, r8
	cmp r1, #0
	bne .L080C88A4
.L080C88C2:
	adds r5, r2, #0
.L080C88C4:
	ldr r3, [sp, #0x138]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C88D6
.L080C88D0:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C88D0
.L080C88D6:
	cmp r0, #0
	beq .L080C88DE
	bl free
.L080C88DE:
	ldr r0, [sp, #0x13c]
	add r0, sb
	ldr r4, [sp, #0x13c]
	ldr r6, [sp, #0x138]
	str r4, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C88EC:
	ldr r0, .L080C8954 @ =0x0600FFB4
	movs r1, #0
	str r1, [sp]
	movs r1, #0x20
	str r1, [sp, #4]
	movs r2, #2
	movs r3, #2
	bl func_0804E9F4
	adds r0, r7, #0
	bl func_080C8550
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	movs r1, #0xd5
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r2, r0, #0
	str r4, [sp, #0x138]
	ldr r1, .L080C8958 @ =gUnk_08752F8C
	lsls r2, r2, #5
	ldr r3, .L080C895C @ =0x06010000
	adds r2, r2, r3
	add r0, sp, #0x54
	movs r3, #0x80
	bl func_08008F0C
	ldr r4, [sp, #0x100]
	mov sl, r4
	ldr r5, [sp, #0x138]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080C8960
	cmp r1, #0
	beq .L080C894A
	adds r0, r1, #0
	adds r1, r4, #0
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C894A:
	ldr r4, [sp, #0x138]
	ldr r0, [r4, #4]
	adds r0, #0x10
	str r0, [r4, #4]
	b .L080C8A32
	.align 2, 0
.L080C8954: .4byte 0x0600FFB4
.L080C8958: .4byte gUnk_08752F8C
.L080C895C: .4byte 0x06010000
.L080C8960:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0xdc
	str r0, [r1]
	ldr r5, [sp, #0x138]
	ldr r0, [r5]
	mov r6, r8
	subs r0, r6, r0
	asrs r4, r0, #4
	add r0, sp, #0xd8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C897E
	adds r0, r1, #0
.L080C897E:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C899C
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C89A0
	mov r0, sb
	bl func_080D3BC0
	b .L080C89A0
.L080C899C:
	movs r0, #0
	mov sb, r0
.L080C89A0:
	adds r5, r0, #0
	str r5, [sp, #0x13c]
	ldr r0, [sp, #0x138]
	ldr r2, [r0]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080C89C6
.L080C89AE:
	cmp r3, #0
	beq .L080C89BE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C89BE:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080C89AE
.L080C89C6:
	adds r5, r3, #0
	ldr r1, [sp, #0xdc]
	cmp r1, #1
	bne .L080C89E2
	cmp r5, #0
	beq .L080C89DE
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C89DE:
	adds r5, #0x10
	b .L080C8A0A
.L080C89E2:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L080C8A08
.L080C89EA:
	cmp r2, #0
	beq .L080C89FA
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C89FA:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L080C89EA
.L080C8A08:
	adds r5, r2, #0
.L080C8A0A:
	ldr r6, [sp, #0x138]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C8A1C
.L080C8A16:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C8A16
.L080C8A1C:
	cmp r0, #0
	beq .L080C8A24
	bl free
.L080C8A24:
	ldr r0, [sp, #0x13c]
	add r0, sb
	ldr r1, [sp, #0x13c]
	ldr r2, [sp, #0x138]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080C8A32:
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	movs r3, #0xd7
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	str r4, [sp, #0x138]
	ldr r1, .L080C8A84 @ =gUnk_0875300C
	lsls r2, r2, #5
	ldr r4, .L080C8A88 @ =0x05000200
	adds r2, r2, r4
	add r0, sp, #0x54
	movs r3, #0x20
	bl func_08008F0C
	ldr r5, [sp, #0x100]
	mov sl, r5
	ldr r6, [sp, #0x138]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C8A8C
	cmp r1, #0
	beq .L080C8A78
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C8A78:
	ldr r5, [sp, #0x138]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080C8B5E
	.align 2, 0
.L080C8A84: .4byte gUnk_0875300C
.L080C8A88: .4byte 0x05000200
.L080C8A8C:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0xe4
	str r0, [r1]
	ldr r6, [sp, #0x138]
	ldr r0, [r6]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xe0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C8AAA
	adds r0, r1, #0
.L080C8AAA:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C8AC8
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C8ACC
	mov r0, sb
	bl func_080D3BC0
	b .L080C8ACC
.L080C8AC8:
	movs r0, #0
	mov sb, r0
.L080C8ACC:
	adds r5, r0, #0
	str r5, [sp, #0x13c]
	ldr r3, [sp, #0x138]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080C8AF2
.L080C8ADA:
	cmp r3, #0
	beq .L080C8AEA
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C8AEA:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080C8ADA
.L080C8AF2:
	adds r5, r3, #0
	ldr r1, [sp, #0xe4]
	cmp r1, #1
	bne .L080C8B0E
	cmp r5, #0
	beq .L080C8B0A
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C8B0A:
	adds r5, #0x10
	b .L080C8B36
.L080C8B0E:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L080C8B34
.L080C8B16:
	cmp r2, #0
	beq .L080C8B26
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C8B26:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L080C8B16
.L080C8B34:
	adds r5, r2, #0
.L080C8B36:
	ldr r6, [sp, #0x138]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C8B48
.L080C8B42:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C8B42
.L080C8B48:
	cmp r0, #0
	beq .L080C8B50
	bl free
.L080C8B50:
	ldr r0, [sp, #0x13c]
	add r0, sb
	ldr r1, [sp, #0x13c]
	ldr r2, [sp, #0x138]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080C8B5E:
	movs r0, #0x4c
	bl __builtin_new
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r3, r0, #0
	ldr r0, .L080C8C88 @ =0x0600E800
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x64
	adds r2, r4, #0
	bl func_08075B00
	ldr r6, [sp, #0x134]
	adds r5, r0, #0
	ldr r4, [r7, #0x1c]
	cmp r5, r4
	beq .L080C8BBE
	cmp r4, #0
	beq .L080C8BBE
	adds r0, r4, #0
	adds r0, #0x28
	movs r1, #2
	bl func_08075DEC
	adds r0, r4, #0
	adds r0, #0x18
	ldr r2, [r0, #4]
	ldr r1, [r4, #0x18]
	cmp r1, r2
	beq .L080C8BAE
.L080C8BA8:
	adds r1, #0x40
	cmp r1, r2
	bne .L080C8BA8
.L080C8BAE:
	ldr r0, [r0]
	cmp r0, #0
	beq .L080C8BB8
	bl free
.L080C8BB8:
	adds r0, r4, #0
	bl __builtin_delete
.L080C8BBE:
	str r5, [r6]
	adds r0, r7, #0
	bl func_08008918
	ldrh r1, [r0, #4]
	movs r2, #0x20
	orrs r1, r2
	strh r1, [r0, #4]
	adds r0, r7, #0
	bl func_08008918
	ldrh r1, [r0, #4]
	movs r3, #0xb8
	lsls r3, r3, #5
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0, #4]
	movs r0, #4
	bl func_0800050C
	movs r0, #0
	movs r1, #4
	bl func_08000540
	ldr r4, .L080C8C8C @ =0x00000434
	adds r1, r7, r4
	strh r0, [r1]
	ldr r5, .L080C8C90 @ =0x00000564
	adds r0, r7, r5
	movs r2, #0xe8
	strh r2, [r0]
	ldr r6, .L080C8C94 @ =0x00000566
	adds r1, r7, r6
	movs r0, #0x18
	strh r0, [r1]
	ldr r1, .L080C8C98 @ =0x0000059C
	adds r0, r7, r1
	strh r2, [r0]
	ldr r2, .L080C8C9C @ =0x0000059E
	adds r1, r7, r2
	movs r0, #0x60
	strh r0, [r1]
	ldr r3, .L080C8CA0 @ =0x0000064C
	adds r0, r7, r3
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x12c]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, [sp, #0x104]
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r5, [sp, #0x74]
	movs r6, #0xdb
	lsls r6, r6, #2
	adds r0, r7, r6
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [sp, #0x74]
	movs r3, #0
	cmp r0, #0
	beq .L080C8C52
	ldr r0, [sp, #0x108]
	ldrh r3, [r0, #4]
.L080C8C52:
	str r4, [sp, #0x138]
	lsls r2, r2, #5
	ldr r1, .L080C8CA4 @ =0x05000200
	adds r2, r2, r1
	add r0, sp, #0x54
	adds r1, r5, #0
	bl func_08008F0C
	ldr r2, [sp, #0x100]
	mov sl, r2
	ldr r1, [r4, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	beq .L080C8CA8
	cmp r1, #0
	beq .L080C8C7E
	adds r0, r1, #0
	adds r1, r2, #0
	ldm r1!, {r3, r4, r5}
	stm r0!, {r3, r4, r5}
	ldr r1, [r1]
	str r1, [r0]
.L080C8C7E:
	ldr r6, [sp, #0x138]
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C8D7A
	.align 2, 0
.L080C8C88: .4byte 0x0600E800
.L080C8C8C: .4byte 0x00000434
.L080C8C90: .4byte 0x00000564
.L080C8C94: .4byte 0x00000566
.L080C8C98: .4byte 0x0000059C
.L080C8C9C: .4byte 0x0000059E
.L080C8CA0: .4byte 0x0000064C
.L080C8CA4: .4byte 0x05000200
.L080C8CA8:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0xec
	str r0, [r1]
	ldr r2, [sp, #0x138]
	ldr r0, [r2]
	mov r3, r8
	subs r0, r3, r0
	asrs r4, r0, #4
	add r0, sp, #0xe8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C8CC6
	adds r0, r1, #0
.L080C8CC6:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C8CE4
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C8CE8
	mov r0, sb
	bl func_080D3BC0
	b .L080C8CE8
.L080C8CE4:
	movs r0, #0
	mov sb, r0
.L080C8CE8:
	adds r5, r0, #0
	str r5, [sp, #0x13c]
	ldr r4, [sp, #0x138]
	ldr r2, [r4]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080C8D0E
.L080C8CF6:
	cmp r3, #0
	beq .L080C8D06
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C8D06:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080C8CF6
.L080C8D0E:
	adds r5, r3, #0
	ldr r1, [sp, #0xec]
	cmp r1, #1
	bne .L080C8D2A
	cmp r5, #0
	beq .L080C8D26
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C8D26:
	adds r5, #0x10
	b .L080C8D52
.L080C8D2A:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L080C8D50
.L080C8D32:
	cmp r2, #0
	beq .L080C8D42
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C8D42:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r2, #0x10
	mov r1, r8
	cmp r1, #0
	bne .L080C8D32
.L080C8D50:
	adds r5, r2, #0
.L080C8D52:
	ldr r3, [sp, #0x138]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C8D64
.L080C8D5E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C8D5E
.L080C8D64:
	cmp r0, #0
	beq .L080C8D6C
	bl free
.L080C8D6C:
	ldr r0, [sp, #0x13c]
	add r0, sb
	ldr r4, [sp, #0x13c]
	ldr r6, [sp, #0x138]
	str r4, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C8D7A:
	movs r1, #0xad
	lsls r1, r1, #3
	adds r0, r7, r1
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x124]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, [sp, #0x10c]
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r6, [sp, #0x110]
	ldr r5, [r6]
	movs r1, #0xe1
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [r6]
	movs r3, #0
	cmp r0, #0
	beq .L080C8DBC
	ldrh r3, [r6, #4]
.L080C8DBC:
	str r4, [sp, #0x138]
	lsls r2, r2, #5
	ldr r4, .L080C8DF4 @ =0x05000200
	adds r2, r2, r4
	add r0, sp, #0x54
	adds r1, r5, #0
	bl func_08008F0C
	ldr r5, [sp, #0x100]
	mov sl, r5
	ldr r6, [sp, #0x138]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C8DF8
	cmp r1, #0
	beq .L080C8DEA
	adds r0, r1, #0
	adds r1, r5, #0
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C8DEA:
	ldr r5, [sp, #0x138]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080C8ECA
	.align 2, 0
.L080C8DF4: .4byte 0x05000200
.L080C8DF8:
	mov r8, r1
	movs r0, #1
	add r1, sp, #0xf4
	str r0, [r1]
	ldr r6, [sp, #0x138]
	ldr r0, [r6]
	mov r2, r8
	subs r0, r2, r0
	asrs r4, r0, #4
	add r0, sp, #0xf0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C8E16
	adds r0, r1, #0
.L080C8E16:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C8E34
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C8E38
	mov r0, sb
	bl func_080D3BC0
	b .L080C8E38
.L080C8E34:
	movs r0, #0
	mov sb, r0
.L080C8E38:
	adds r5, r0, #0
	str r5, [sp, #0x13c]
	ldr r3, [sp, #0x138]
	ldr r2, [r3]
	adds r3, r5, #0
	cmp r2, r8
	beq .L080C8E5E
.L080C8E46:
	cmp r3, #0
	beq .L080C8E56
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C8E56:
	adds r2, #0x10
	adds r3, #0x10
	cmp r2, r8
	bne .L080C8E46
.L080C8E5E:
	adds r5, r3, #0
	ldr r1, [sp, #0xf4]
	cmp r1, #1
	bne .L080C8E7A
	cmp r5, #0
	beq .L080C8E76
	adds r0, r5, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C8E76:
	adds r5, #0x10
	b .L080C8EA2
.L080C8E7A:
	mov r8, r1
	adds r2, r5, #0
	cmp r1, #0
	beq .L080C8EA0
.L080C8E82:
	cmp r2, #0
	beq .L080C8E92
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r5, r6}
	stm r0!, {r3, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080C8E92:
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	adds r2, #0x10
	mov r5, r8
	cmp r5, #0
	bne .L080C8E82
.L080C8EA0:
	adds r5, r2, #0
.L080C8EA2:
	ldr r6, [sp, #0x138]
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C8EB4
.L080C8EAE:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C8EAE
.L080C8EB4:
	cmp r0, #0
	beq .L080C8EBC
	bl free
.L080C8EBC:
	ldr r0, [sp, #0x13c]
	add r0, sb
	ldr r1, [sp, #0x13c]
	ldr r2, [sp, #0x138]
	str r1, [r2]
	str r5, [r2, #4]
	str r0, [r2, #0xc]
.L080C8ECA:
	movs r3, #0xbb
	lsls r3, r3, #3
	adds r0, r7, r3
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r4, [sp, #0x128]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r2, [r0]
	ldr r0, [sp, #0x114]
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	adds r0, r7, #0
	bl func_08008910
	adds r4, r0, #0
	ldr r6, [sp, #0x118]
	ldr r5, [r6]
	movs r1, #0xe7
	lsls r1, r1, #2
	adds r0, r7, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	adds r2, r0, #0
	ldr r0, [r6]
	movs r3, #0
	cmp r0, #0
	beq .L080C8F0C
	ldrh r3, [r6, #4]
.L080C8F0C:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r4, .L080C8F40 @ =0x05000200
	adds r2, r2, r4
	add r0, sp, #0x54
	adds r1, r5, #0
	bl func_08008F0C
	ldr r5, [sp, #0x100]
	mov r8, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C8F44
	cmp r1, #0
	beq .L080C8F38
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C8F38:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C9010
	.align 2, 0
.L080C8F40: .4byte 0x05000200
.L080C8F44:
	str r1, [sp, #0x140]
	movs r0, #1
	add r1, sp, #0xfc
	str r0, [r1]
	ldr r0, [r6]
	ldr r4, [sp, #0x140]
	subs r0, r4, r0
	asrs r4, r0, #4
	add r0, sp, #0xf8
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080C8F62
	mov r0, sl
.L080C8F62:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C8F80
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C8F84
	mov r0, sb
	bl func_080D3BC0
	b .L080C8F84
.L080C8F80:
	movs r0, #0
	mov sb, r0
.L080C8F84:
	adds r5, r0, #0
	str r5, [sp, #0x13c]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r5, [sp, #0x140]
	cmp r2, r5
	beq .L080C8FAC
.L080C8F92:
	cmp r3, #0
	beq .L080C8FA2
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C8FA2:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0x140]
	cmp r2, r7
	bne .L080C8F92
.L080C8FAC:
	adds r5, r3, #0
	mov r0, sl
	ldr r1, [r0]
	cmp r1, #1
	bne .L080C8FCA
	cmp r5, #0
	beq .L080C8FC6
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C8FC6:
	adds r5, #0x10
	b .L080C8FEC
.L080C8FCA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C8FEA
.L080C8FD2:
	cmp r2, #0
	beq .L080C8FE2
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C8FE2:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C8FD2
.L080C8FEA:
	adds r5, r2, #0
.L080C8FEC:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C8FFC
.L080C8FF6:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C8FF6
.L080C8FFC:
	cmp r0, #0
	beq .L080C9004
	bl free
.L080C9004:
	ldr r0, [sp, #0x13c]
	add r0, sb
	ldr r7, [sp, #0x13c]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C9010:
	add sp, #0x144
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080C9020
func_080C9020: @ 0x080C9020
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0x28
	cmp r1, #1
	beq .L080C9040
	cmp r1, #1
	blo .L080C9040
	cmp r1, #2
	beq .L080C903A
	cmp r1, #3
	beq .L080C903E
	movs r7, #0x58
	b .L080C9040
.L080C903A:
	movs r7, #0x38
	b .L080C9040
.L080C903E:
	movs r7, #0x48
.L080C9040:
	ldr r0, .L080C90C0 @ =0x000006A1
	adds r1, r4, r0
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080C9056
	movs r2, #0xd4
	lsls r2, r2, #3
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080C906C
.L080C9056:
	adds r0, r4, #0
	bl func_080088CC
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L080C906E
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #1
.L080C906C:
	strb r0, [r1]
.L080C906E:
	ldr r2, .L080C90C4 @ =0x000006A3
	adds r1, r4, r2
	ldrb r0, [r1]
	cmp r0, #0
	beq .L080C9082
	subs r2, #1
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq .L080C9096
.L080C9082:
	adds r0, r4, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L080C9098
	ldr r0, .L080C90C8 @ =0x000006A2
	adds r1, r4, r0
	movs r0, #1
.L080C9096:
	strb r0, [r1]
.L080C9098:
	adds r0, r4, #0
	bl func_080088C4
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r2, #0xd0
	lsls r2, r2, #3
	adds r1, r4, r2
	ldr r0, [r1]
	cmp r0, #0
	beq .L080C90DA
	cmp r0, #0
	ble .L080C90CC
	ldrh r0, [r4, #0xc]
	adds r0, #4
	strh r0, [r4, #0xc]
	ldr r0, [r1]
	subs r0, #1
	b .L080C90D6
	.align 2, 0
.L080C90C0: .4byte 0x000006A1
.L080C90C4: .4byte 0x000006A3
.L080C90C8: .4byte 0x000006A2
.L080C90CC:
	ldrh r0, [r4, #0xc]
	subs r0, #4
	strh r0, [r4, #0xc]
	ldr r0, [r1]
	adds r0, #1
.L080C90D6:
	str r0, [r1]
	b .L080C9262
.L080C90DA:
	movs r6, #0
	adds r0, r4, #0
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L080C90F4
	ldr r0, .L080C9114 @ =0x000003BF
	ands r0, r5
	cmp r0, #0
	bne .L080C90F4
	movs r6, #1
.L080C90F4:
	cmp r6, #0
	beq .L080C9198
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r5, r4, r0
	ldrb r3, [r5]
	cmp r3, #0
	beq .L080C911C
	ldr r1, .L080C9118 @ =0x000006A1
	adds r0, r4, r1
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	strb r2, [r5]
	b .L080C96B4
	.align 2, 0
.L080C9114: .4byte 0x000003BF
.L080C9118: .4byte 0x000006A1
.L080C911C:
	ldr r2, .L080C9138 @ =0x000006A1
	adds r0, r4, r2
	strb r3, [r0]
	ldr r0, .L080C913C @ =0x000006A2
	adds r5, r4, r0
	ldrb r2, [r5]
	cmp r2, #0
	beq .L080C9144
	ldr r2, .L080C9140 @ =0x000006A3
	adds r1, r4, r2
	movs r0, #1
	strb r0, [r1]
	strb r3, [r5]
	b .L080C96B4
	.align 2, 0
.L080C9138: .4byte 0x000006A1
.L080C913C: .4byte 0x000006A2
.L080C9140: .4byte 0x000006A3
.L080C9144:
	ldr r1, .L080C9168 @ =0x000006A3
	adds r0, r4, r1
	strb r2, [r0]
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0x28
	ble .L080C917E
	cmp r0, #0x38
	beq .L080C916C
	cmp r0, #0x38
	ble .L080C9178
	cmp r0, #0x48
	beq .L080C9170
	cmp r0, #0x58
	beq .L080C9174
	b .L080C9178
	.align 2, 0
.L080C9168: .4byte 0x000006A3
.L080C916C:
	movs r0, #0x28
	b .L080C9176
.L080C9170:
	movs r0, #0x38
	b .L080C9176
.L080C9174:
	movs r0, #0x48
.L080C9176:
	str r0, [r1]
.L080C9178:
	ldr r0, [r4, #0x10]
	subs r0, #1
	b .L080C922A
.L080C917E:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble .L080C9244
	movs r2, #0xd0
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, [r4, #0x10]
	subs r0, #1
	b .L080C9256
.L080C9198:
	movs r6, #0
	adds r0, r4, #0
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L080C91B2
	ldr r0, .L080C9204 @ =0x0000037F
	ands r0, r5
	cmp r0, #0
	bne .L080C91B2
	movs r6, #1
.L080C91B2:
	cmp r6, #0
	beq .L080C926E
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r3, r4, r0
	ldrb r2, [r3]
	cmp r2, #0
	beq .L080C91C4
	b .L080C95E4
.L080C91C4:
	ldr r1, .L080C9208 @ =0x000006A1
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, .L080C920C @ =0x000006A2
	adds r3, r4, r0
	ldrb r1, [r3]
	cmp r1, #0
	beq .L080C91D6
	b .L080C960C
.L080C91D6:
	ldr r2, .L080C9210 @ =0x000006A3
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, [r4, #0x1c]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, r7
	bge .L080C9238
	cmp r0, #0x38
	beq .L080C921E
	cmp r0, #0x38
	bgt .L080C9214
	cmp r0, #0x28
	beq .L080C921A
	b .L080C9226
	.align 2, 0
.L080C9204: .4byte 0x0000037F
.L080C9208: .4byte 0x000006A1
.L080C920C: .4byte 0x000006A2
.L080C9210: .4byte 0x000006A3
.L080C9214:
	cmp r0, #0x48
	beq .L080C9222
	b .L080C9226
.L080C921A:
	movs r0, #0x38
	b .L080C9224
.L080C921E:
	movs r0, #0x48
	b .L080C9224
.L080C9222:
	movs r0, #0x58
.L080C9224:
	str r0, [r1]
.L080C9226:
	ldr r0, [r4, #0x10]
	adds r0, #1
.L080C922A:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #0xcb
	bl func_08008B6C
	b .L080C9262
.L080C9238:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt .L080C9248
.L080C9244:
	strh r2, [r4, #0xc]
	b .L080C9262
.L080C9248:
	movs r2, #0xd0
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #4
	str r0, [r1]
	ldr r0, [r4, #0x10]
	adds r0, #1
.L080C9256:
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #0xcb
	bl func_08008B6C
.L080C9262:
	ldr r0, [r4, #0x1c]
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	bl func_08075C88
	b .L080C96B4
.L080C926E:
	movs r6, #0
	adds r0, r4, #0
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L080C9288
	ldr r0, .L080C92DC @ =0x000003EF
	ands r0, r5
	cmp r0, #0
	bne .L080C9288
	movs r6, #1
.L080C9288:
	cmp r6, #0
	bne .L080C928E
	b .L080C93F8
.L080C928E:
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r3, r4, r0
	ldrb r2, [r3]
	cmp r2, #0
	beq .L080C929C
	b .L080C95E4
.L080C929C:
	ldr r1, .L080C92E0 @ =0x000006A1
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, .L080C92E4 @ =0x000006A2
	adds r3, r4, r0
	ldrb r1, [r3]
	cmp r1, #0
	beq .L080C92AE
	b .L080C960C
.L080C92AE:
	ldr r2, .L080C92E8 @ =0x000006A3
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, [r4, #0x1c]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r2, r4, r0
	ldr r1, [r2]
	cmp r1, #0x47
	bgt .L080C938E
	cmp r1, #0x38
	beq .L080C92F6
	cmp r1, #0x38
	bgt .L080C92EC
	cmp r1, #0x28
	beq .L080C92F2
	b .L080C92FE
	.align 2, 0
.L080C92DC: .4byte 0x000003EF
.L080C92E0: .4byte 0x000006A1
.L080C92E4: .4byte 0x000006A2
.L080C92E8: .4byte 0x000006A3
.L080C92EC:
	cmp r1, #0x48
	beq .L080C92FA
	b .L080C92FE
.L080C92F2:
	movs r0, #0x38
	b .L080C92FC
.L080C92F6:
	movs r0, #0x48
	b .L080C92FC
.L080C92FA:
	movs r0, #0x58
.L080C92FC:
	str r0, [r2]
.L080C92FE:
	movs r1, #0xc9
	lsls r1, r1, #3
	adds r2, r4, r1
	ldr r1, [r2]
	cmp r1, r7
	ble .L080C9330
	cmp r1, #0x38
	beq .L080C931E
	cmp r1, #0x38
	bgt .L080C9314
	b .L080C96B4
.L080C9314:
	cmp r1, #0x48
	beq .L080C9324
	cmp r1, #0x58
	beq .L080C932A
	b .L080C96B4
.L080C931E:
	movs r0, #0x28
	str r0, [r2]
	b .L080C96B4
.L080C9324:
	movs r0, #0x38
	str r0, [r2]
	b .L080C96B4
.L080C932A:
	movs r0, #0x48
	str r0, [r2]
	b .L080C96B4
.L080C9330:
	ldr r0, [r4, #0x10]
	adds r0, #1
	str r0, [r4, #0x10]
	cmp r1, #0x38
	beq .L080C934E
	cmp r1, #0x38
	bgt .L080C9344
	cmp r1, #0x28
	beq .L080C934A
	b .L080C9356
.L080C9344:
	cmp r1, #0x48
	beq .L080C9352
	b .L080C9356
.L080C934A:
	movs r0, #0x38
	b .L080C9354
.L080C934E:
	movs r0, #0x48
	b .L080C9354
.L080C9352:
	movs r0, #0x58
.L080C9354:
	str r0, [r2]
.L080C9356:
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r1, r4, r2
	ldr r0, [r1]
	cmp r0, r7
	ble .L080C9388
	cmp r0, #0x38
	beq .L080C9376
	cmp r0, #0x38
	bgt .L080C936C
	b .L080C94F0
.L080C936C:
	cmp r0, #0x48
	beq .L080C937C
	cmp r0, #0x58
	beq .L080C9382
	b .L080C94F0
.L080C9376:
	movs r0, #0x28
	str r0, [r1]
	b .L080C94F0
.L080C937C:
	movs r0, #0x38
	str r0, [r1]
	b .L080C94F0
.L080C9382:
	movs r0, #0x48
	str r0, [r1]
	b .L080C94F0
.L080C9388:
	ldr r0, [r4, #0x10]
	adds r0, #1
	b .L080C94EE
.L080C938E:
	cmp r1, #0x48
	bne .L080C93C2
	movs r0, #0x58
	str r0, [r2]
	cmp r0, r7
	ble .L080C939E
	str r1, [r2]
	b .L080C94F0
.L080C939E:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt .L080C93B2
	strh r3, [r4, #0xc]
	ldr r0, [r4, #0x10]
	adds r0, #1
	b .L080C94EE
.L080C93B2:
	movs r2, #0xd0
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #4
	str r0, [r1]
	ldr r0, [r4, #0x10]
	adds r0, #2
	b .L080C94EE
.L080C93C2:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bge .L080C94C4
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	subs r0, #0x10
	cmp r1, r0
	blt .L080C93E8
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #4
	str r0, [r1]
	ldr r0, [r4, #0x10]
	adds r0, #1
	b .L080C94EE
.L080C93E8:
	movs r2, #0xd0
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #8
	str r0, [r1]
	ldr r0, [r4, #0x10]
	adds r0, #2
	b .L080C94EE
.L080C93F8:
	movs r6, #0
	adds r0, r4, #0
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L080C9412
	ldr r0, .L080C9440 @ =0x000003DF
	ands r0, r5
	cmp r0, #0
	bne .L080C9412
	movs r6, #1
.L080C9412:
	cmp r6, #0
	beq .L080C94FC
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r3, r4, r0
	ldrb r2, [r3]
	cmp r2, #0
	beq .L080C9424
	b .L080C95E4
.L080C9424:
	ldr r1, .L080C9444 @ =0x000006A1
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, .L080C9448 @ =0x000006A2
	adds r5, r4, r0
	ldrb r3, [r5]
	cmp r3, #0
	beq .L080C944C
	adds r0, #1
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	strb r2, [r5]
	b .L080C96B4
	.align 2, 0
.L080C9440: .4byte 0x000003DF
.L080C9444: .4byte 0x000006A1
.L080C9448: .4byte 0x000006A2
.L080C944C:
	ldr r1, .L080C9468 @ =0x000006A3
	adds r0, r4, r1
	strb r3, [r0]
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r1, r4, r2
	ldr r0, [r1]
	cmp r0, #0x38
	ble .L080C949A
	cmp r0, #0x48
	beq .L080C946C
	cmp r0, #0x58
	beq .L080C9470
	b .L080C9474
	.align 2, 0
.L080C9468: .4byte 0x000006A3
.L080C946C:
	movs r0, #0x38
	b .L080C9472
.L080C9470:
	movs r0, #0x48
.L080C9472:
	str r0, [r1]
.L080C9474:
	movs r0, #0xc9
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, [r1]
	cmp r0, #0x38
	beq .L080C948E
	cmp r0, #0x38
	ble .L080C94EA
	cmp r0, #0x48
	beq .L080C9492
	cmp r0, #0x58
	beq .L080C9496
	b .L080C94EA
.L080C948E:
	movs r0, #0x28
	b .L080C94E8
.L080C9492:
	movs r0, #0x38
	b .L080C94E8
.L080C9496:
	movs r0, #0x48
	b .L080C94E8
.L080C949A:
	cmp r0, #0x38
	bne .L080C94BC
	movs r0, #0x28
	str r0, [r1]
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt .L080C94B0
	ldr r0, [r4, #0x10]
	subs r0, #1
	b .L080C94EE
.L080C94B0:
	movs r2, #0xd0
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #4
	rsbs r0, r0, #0
	b .L080C94E8
.L080C94BC:
	movs r1, #0xc
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt .L080C94C8
.L080C94C4:
	strh r3, [r4, #0xc]
	b .L080C96B4
.L080C94C8:
	cmp r0, #0x10
	bgt .L080C94DE
	movs r2, #0xd0
	lsls r2, r2, #3
	adds r1, r4, r2
	movs r0, #4
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, [r4, #0x10]
	subs r0, #1
	b .L080C94EE
.L080C94DE:
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r1, r4, r0
	movs r0, #8
	rsbs r0, r0, #0
.L080C94E8:
	str r0, [r1]
.L080C94EA:
	ldr r0, [r4, #0x10]
	subs r0, #2
.L080C94EE:
	str r0, [r4, #0x10]
.L080C94F0:
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #0xcb
	bl func_08008B6C
	b .L080C96B4
.L080C94FC:
	movs r6, #0
	adds r0, r4, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq .L080C9518
	ldr r0, .L080C9530 @ =0x000002FF
	ands r0, r5
	cmp r0, #0
	bne .L080C9518
	movs r6, #1
.L080C9518:
	cmp r6, #0
	beq .L080C95B6
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r3, r4, r1
	ldrb r2, [r3]
	cmp r2, #0
	beq .L080C9538
	ldr r2, .L080C9534 @ =0x000006A1
	adds r0, r4, r2
	b .L080C95E8
	.align 2, 0
.L080C9530: .4byte 0x000002FF
.L080C9534: .4byte 0x000006A1
.L080C9538:
	ldr r1, .L080C9568 @ =0x000006A1
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, .L080C956C @ =0x000006A2
	adds r3, r4, r0
	ldrb r1, [r3]
	cmp r1, #0
	bne .L080C960C
	ldr r2, .L080C9570 @ =0x000006A3
	adds r0, r4, r2
	strb r1, [r0]
	ldr r0, [r4, #0x1c]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	subs r0, #0xa0
	lsls r0, r0, #0x10
	movs r2, #0xc
	ldrsh r1, [r4, r2]
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	blt .L080C9574
	strh r2, [r4, #0xc]
	b .L080C96B4
	.align 2, 0
.L080C9568: .4byte 0x000006A1
.L080C956C: .4byte 0x000006A2
.L080C9570: .4byte 0x000006A3
.L080C9574:
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r1, #4
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #0xcb
	bl func_08008B6C
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r1, r4, r2
	ldr r0, [r1]
	cmp r0, #0x28
	ble .L080C95AE
	cmp r0, #0x38
	beq .L080C95A8
	cmp r0, #0x38
	bgt .L080C959E
	b .L080C96B4
.L080C959E:
	cmp r0, #0x48
	beq .L080C966E
	cmp r0, #0x58
	beq .L080C9674
	b .L080C96B4
.L080C95A8:
	movs r0, #0x28
	str r0, [r1]
	b .L080C96B4
.L080C95AE:
	ldr r0, [r4, #0x10]
	adds r0, #1
	str r0, [r4, #0x10]
	b .L080C96B4
.L080C95B6:
	movs r6, #0
	adds r0, r4, #0
	bl func_080088D4
	lsrs r0, r0, #8
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L080C95D2
	ldr r0, .L080C95F4 @ =0x000001FF
	ands r0, r5
	cmp r0, #0
	bne .L080C95D2
	movs r6, #1
.L080C95D2:
	adds r3, r6, #0
	cmp r3, #0
	beq .L080C9688
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r3, r4, r0
	ldrb r2, [r3]
	cmp r2, #0
	beq .L080C95FC
.L080C95E4:
	ldr r1, .L080C95F8 @ =0x000006A1
	adds r0, r4, r1
.L080C95E8:
	movs r2, #0
	movs r1, #1
	strb r1, [r0]
	strb r2, [r3]
	b .L080C96B4
	.align 2, 0
.L080C95F4: .4byte 0x000001FF
.L080C95F8: .4byte 0x000006A1
.L080C95FC:
	ldr r1, .L080C9618 @ =0x000006A1
	adds r0, r4, r1
	strb r2, [r0]
	ldr r0, .L080C961C @ =0x000006A2
	adds r3, r4, r0
	ldrb r1, [r3]
	cmp r1, #0
	beq .L080C9620
.L080C960C:
	adds r0, #1
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	strb r2, [r3]
	b .L080C96B4
	.align 2, 0
.L080C9618: .4byte 0x000006A1
.L080C961C: .4byte 0x000006A2
.L080C9620:
	ldr r2, .L080C9634 @ =0x000006A3
	adds r0, r4, r2
	strb r1, [r0]
	movs r2, #0xc
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt .L080C9638
	strh r1, [r4, #0xc]
	b .L080C96B4
	.align 2, 0
.L080C9634: .4byte 0x000006A3
.L080C9638:
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r1, #4
	rsbs r1, r1, #0
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x18
	movs r1, #0xcb
	bl func_08008B6C
	movs r2, #0xc9
	lsls r2, r2, #3
	adds r1, r4, r2
	ldr r0, [r1]
	cmp r0, #0x57
	bgt .L080C9680
	cmp r0, #0x38
	beq .L080C9674
	cmp r0, #0x38
	bgt .L080C9668
	cmp r0, #0x28
	beq .L080C966E
	b .L080C96B4
.L080C9668:
	cmp r0, #0x48
	beq .L080C967A
	b .L080C96B4
.L080C966E:
	movs r0, #0x38
	str r0, [r1]
	b .L080C96B4
.L080C9674:
	movs r0, #0x48
	str r0, [r1]
	b .L080C96B4
.L080C967A:
	movs r0, #0x58
	str r0, [r1]
	b .L080C96B4
.L080C9680:
	ldr r0, [r4, #0x10]
	subs r0, #1
	str r0, [r4, #0x10]
	b .L080C96B4
.L080C9688:
	movs r0, #0xd4
	lsls r0, r0, #3
	adds r2, r4, r0
	ldrb r5, [r2]
	cmp r5, #0
	beq .L080C96A0
	adds r0, #1
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	strb r3, [r2]
	b .L080C96B4
.L080C96A0:
	ldr r1, .L080C96BC @ =0x000006A2
	adds r2, r4, r1
	ldrb r0, [r2]
	cmp r0, #0
	beq .L080C96B4
	ldr r0, .L080C96C0 @ =0x000006A3
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	strb r5, [r2]
.L080C96B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080C96BC: .4byte 0x000006A2
.L080C96C0: .4byte 0x000006A3

	thumb_func_start func_080C96C4
func_080C96C4: @ 0x080C96C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xf8
	mov sl, r0
	movs r0, #1
	str r0, [sp, #0xb8]
	mov r0, sl
	bl func_08008920
	adds r5, r0, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_08007D4C
	adds r4, r0, #0
	movs r0, #0xd7
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, [sp, #0xb8]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r6, sp, #0x68
	adds r0, r6, #0
	movs r1, #0x10
	movs r2, #4
	adds r3, r4, #0
	bl func_0804EA94
	ldrb r2, [r5]
	cmp r2, #0x7f
	bhi .L080C972A
	lsls r0, r2, #3
	adds r0, #4
	adds r0, r5, r0
	ldr r1, [sp, #0x68]
	str r1, [r0]
	ldrh r1, [r6, #4]
	strh r1, [r0, #4]
	adds r0, r2, #1
	strb r0, [r5]
.L080C972A:
	movs r2, #0xd2
	lsls r2, r2, #2
	add r2, sl
	mov r8, r2
	mov r0, r8
	bl func_08050D34
	movs r1, #0xd3
	lsls r1, r1, #2
	add r1, sl
	str r0, [r1]
	mov r0, sl
	bl func_080088DC
	mov sb, r0
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
	mov r1, sl
	adds r1, #0x18
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, r8
	mov r1, sb
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	movs r1, #0xd4
	lsls r1, r1, #2
	add r1, sl
	str r0, [r1]
	movs r3, #0
	str r3, [sp, #0xb8]
	cmp r0, #3
	bne .L080C979A
	ldr r0, .L080C98A4 @ =0x00000684
	add r0, sl
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne .L080C979A
	movs r4, #1
	str r4, [sp, #0xb8]
.L080C979A:
	mov r5, sl
	ldr r0, [r5, #0x20]
	cmp r0, #0
	bne .L080C97A4
	b .L080C9CD8
.L080C97A4:
	movs r4, #0
	str r0, [sp, #0xbc]
	movs r7, #0xc
	ldrsh r0, [r5, r7]
	adds r2, r0, #0
	subs r2, #8
	mov r0, sp
	adds r0, #0x28
	str r0, [sp, #0xdc]
	ldr r1, [sp, #0xbc]
	cmp r4, r1
	bhs .L080C97DA
	movs r3, #0x24
	ldrsh r0, [r5, r3]
	cmp r0, r2
	bge .L080C97DA
	mov r1, sl
	adds r1, #0x24
.L080C97C8:
	adds r1, #0x10
	adds r4, #1
	ldr r5, [sp, #0xbc]
	cmp r4, r5
	bhs .L080C97DA
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, r2
	blt .L080C97C8
.L080C97DA:
	movs r0, #0
	str r0, [sp, #0xd0]
	str r0, [sp, #0x14]
	movs r0, #0x18
	bl malloc
	cmp r0, #0
	bne .L080C97F0
	movs r0, #0x18
	bl func_080D3BC0
.L080C97F0:
	str r0, [sp, #0x14]
	ldr r1, [sp, #0xd0]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	strb r1, [r0]
	ldr r3, [sp, #0xd0]
	str r3, [r0, #4]
	ldr r0, [sp, #0x14]
	str r0, [r0, #8]
	ldr r0, [sp, #0x14]
	str r0, [r0, #0xc]
	movs r5, #0
	str r5, [sp, #0xd4]
	str r5, [sp, #0x2c]
	movs r0, #0x18
	bl malloc
	cmp r0, #0
	bne .L080C981C
	movs r0, #0x18
	bl func_080D3BC0
.L080C981C:
	str r0, [sp, #0x2c]
	ldr r7, [sp, #0xd4]
	ldr r1, [sp, #0xdc]
	str r7, [r1, #8]
	str r7, [sp, #0x34]
	strb r7, [r0]
	ldr r3, [sp, #0xd4]
	str r3, [r0, #4]
	ldr r0, [sp, #0x2c]
	str r0, [r0, #8]
	ldr r0, [sp, #0x2c]
	str r0, [r0, #0xc]
	mov r5, sl
	movs r7, #0xc
	ldrsh r0, [r5, r7]
	adds r0, #0x68
	str r0, [sp, #0xc0]
	ldr r0, [sp, #0xbc]
	cmp r4, r0
	blo .L080C9846
	b .L080C9C82
.L080C9846:
	mov r1, sl
	adds r1, #0x20
	lsls r2, r4, #4
	adds r0, r2, #4
	adds r0, r1, r0
	movs r3, #0
	ldrsh r0, [r0, r3]
	str r1, [sp, #0xe0]
	str r2, [sp, #0xec]
	ldr r5, [sp, #0xc0]
	cmp r0, r5
	ble .L080C9860
	b .L080C9C82
.L080C9860:
	mov r7, sp
	adds r7, #0x20
	str r7, [sp, #0xcc]
	mov r0, sp
	adds r0, #0x24
	str r0, [sp, #0xd8]
	mov r1, sp
	adds r1, #0x7c
	str r1, [sp, #0xe8]
.L080C9872:
	ldr r0, [sp, #0xec]
	adds r0, #4
	ldr r2, [sp, #0xe0]
	adds r0, r2, r0
	str r0, [sp, #0xc4]
	ldr r0, [r0, #8]
	str r0, [sp, #0x70]
	ldr r3, [sp, #0x14]
	ldr r1, [r3, #4]
	adds r4, #1
	str r4, [sp, #0xe4]
	adds r5, r3, #0
	cmp r1, #0
	beq .L080C98AE
	adds r4, r0, #0
.L080C9890:
	movs r2, #0
	ldr r0, [r1, #0x10]
	cmp r0, r4
	bhs .L080C989A
	movs r2, #1
.L080C989A:
	cmp r2, #0
	bne .L080C98A8
	adds r3, r1, #0
	ldr r1, [r3, #8]
	b .L080C98AA
	.align 2, 0
.L080C98A4: .4byte 0x00000684
.L080C98A8:
	ldr r1, [r1, #0xc]
.L080C98AA:
	cmp r1, #0
	bne .L080C9890
.L080C98AE:
	ldr r4, [sp, #0xcc]
	str r3, [r4]
	movs r2, #0
	str r5, [sp, #0x24]
	movs r1, #0
	ldr r0, [sp, #0x20]
	cmp r0, r5
	bne .L080C98C0
	movs r1, #1
.L080C98C0:
	cmp r1, #0
	bne .L080C98CC
	ldr r1, [sp, #0x70]
	ldr r0, [r0, #0x10]
	cmp r1, r0
	bhs .L080C98D4
.L080C98CC:
	ldr r5, [sp, #0xd0]
	cmp r5, #8
	bgt .L080C98D4
	movs r2, #1
.L080C98D4:
	cmp r2, #0
	bne .L080C98DA
	b .L080C9A2E
.L080C98DA:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x3c]
	add r1, sp, #0x48
	ldr r0, [sp, #0x70]
	str r0, [sp, #0x48]
	ldr r7, [sp, #0xd0]
	str r7, [sp, #0x4c]
	adds r0, r1, #0
	movs r2, #8
	bl memcpy
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0x50]
	add r0, sp, #0x38
	add r1, sp, #0x10
	add r2, sp, #0x50
	add r3, sp, #0x40
	bl func_080E5664
	add r4, sp, #0x38
	lsls r0, r7, #3
	add r0, sl
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	str r0, [sp, #0xc8]
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	ldr r1, [sp, #0x70]
	ldr r3, [sp, #0xc8]
	lsls r2, r3, #5
	ldr r5, .L080C9958 @ =0x06010000
	adds r2, r2, r5
	adds r0, r4, #0
	movs r3, #0x80
	bl func_08008F0C
	mov sb, r4
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C995C
	cmp r1, #0
	beq .L080C9950
	adds r0, r1, #0
	mov r1, sb
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C9950:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C9A26
	.align 2, 0
.L080C9958: .4byte 0x06010000
.L080C995C:
	str r1, [sp, #0xf0]
	movs r0, #1
	str r0, [sp, #0x78]
	ldr r1, [r6]
	ldr r4, [sp, #0xf0]
	subs r0, r4, r1
	asrs r4, r0, #4
	str r4, [sp, #0x74]
	add r2, sp, #0x78
	add r0, sp, #0x74
	cmp r4, #1
	bhs .L080C9976
	adds r0, r2, #0
.L080C9976:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C9996
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C9992
	mov r0, r8
	bl func_080D3BC0
.L080C9992:
	ldr r1, [r6]
	b .L080C999A
.L080C9996:
	movs r0, #0
	mov r8, r0
.L080C999A:
	adds r5, r0, #0
	str r5, [sp, #0xf4]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r5, [sp, #0xf0]
	cmp r2, r5
	beq .L080C99C2
.L080C99A8:
	cmp r3, #0
	beq .L080C99B8
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C99B8:
	adds r2, #0x10
	adds r3, #0x10
	ldr r7, [sp, #0xf0]
	cmp r2, r7
	bne .L080C99A8
.L080C99C2:
	adds r5, r3, #0
	ldr r0, [sp, #0x78]
	cmp r0, #1
	bne .L080C99DE
	cmp r5, #0
	beq .L080C99DA
	adds r0, r5, #0
	mov r1, sb
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C99DA:
	adds r5, #0x10
	b .L080C9A00
.L080C99DE:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C99FE
.L080C99E6:
	cmp r2, #0
	beq .L080C99F6
	adds r0, r2, #0
	mov r1, sb
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C99F6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C99E6
.L080C99FE:
	adds r5, r2, #0
.L080C9A00:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080C9A10
.L080C9A0A:
	adds r0, #0x10
	cmp r0, r2
	bne .L080C9A0A
.L080C9A10:
	cmp r1, #0
	beq .L080C9A1A
	adds r0, r1, #0
	bl free
.L080C9A1A:
	ldr r0, [sp, #0xf4]
	add r0, r8
	ldr r7, [sp, #0xf4]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C9A26:
	ldr r0, [sp, #0xd0]
	adds r0, #1
	str r0, [sp, #0xd0]
	b .L080C9A44
.L080C9A2E:
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x14]
	lsls r0, r0, #3
	add r0, sl
	movs r1, #0xe9
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0, #4]
	bl func_08007D4C
	str r0, [sp, #0xc8]
.L080C9A44:
	ldr r2, [sp, #0xc4]
	ldr r0, [r2, #0xc]
	str r0, [sp, #0x7c]
	ldr r6, [sp, #0xd8]
	ldr r3, [sp, #0x2c]
	ldr r1, [r3, #4]
	adds r5, r3, #0
	cmp r1, #0
	beq .L080C9A74
	ldr r7, [sp, #0xe8]
	ldr r4, [r7]
.L080C9A5A:
	movs r2, #0
	ldr r0, [r1, #0x10]
	cmp r0, r4
	bhs .L080C9A64
	movs r2, #1
.L080C9A64:
	cmp r2, #0
	bne .L080C9A6E
	adds r3, r1, #0
	ldr r1, [r3, #8]
	b .L080C9A70
.L080C9A6E:
	ldr r1, [r1, #0xc]
.L080C9A70:
	cmp r1, #0
	bne .L080C9A5A
.L080C9A74:
	str r3, [r6]
	movs r2, #0
	str r5, [sp, #0x38]
	movs r1, #0
	ldr r0, [sp, #0x24]
	cmp r0, r5
	bne .L080C9A84
	movs r1, #1
.L080C9A84:
	cmp r1, #0
	bne .L080C9A90
	ldr r1, [sp, #0x7c]
	ldr r0, [r0, #0x10]
	cmp r1, r0
	bhs .L080C9A98
.L080C9A90:
	ldr r0, [sp, #0xd4]
	cmp r0, #8
	bgt .L080C9A98
	movs r2, #1
.L080C9A98:
	cmp r2, #0
	bne .L080C9A9E
	b .L080C9BF2
.L080C9A9E:
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x40]
	add r1, sp, #0x4c
	ldr r0, [sp, #0x7c]
	str r0, [sp, #0x4c]
	ldr r2, [sp, #0xd4]
	str r2, [sp, #0x50]
	adds r0, r1, #0
	movs r2, #8
	bl memcpy
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x40]
	str r0, [sp, #0x54]
	add r0, sp, #0x3c
	add r1, sp, #0x28
	add r2, sp, #0x54
	add r3, sp, #0x44
	bl func_080E5664
	add r4, sp, #0x3c
	ldr r3, [sp, #0xd4]
	lsls r0, r3, #3
	add r0, sl
	movs r5, #0xfb
	lsls r5, r5, #2
	adds r0, r0, r5
	ldr r1, [r0, #4]
	bl func_080074C0
	mov sb, r0
	mov r0, sl
	bl func_08008910
	adds r6, r0, #0
	ldr r1, [sp, #0x7c]
	mov r7, sb
	lsls r2, r7, #5
	ldr r0, .L080C9B1C @ =0x05000200
	adds r2, r2, r0
	adds r0, r4, #0
	movs r3, #0x20
	bl func_08008F0C
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C9B20
	cmp r1, #0
	beq .L080C9B14
	adds r0, r1, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C9B14:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C9BEA
	.align 2, 0
.L080C9B1C: .4byte 0x05000200
.L080C9B20:
	str r1, [sp, #0xf0]
	movs r0, #1
	str r0, [sp, #0x84]
	ldr r1, [r6]
	ldr r5, [sp, #0xf0]
	subs r0, r5, r1
	asrs r4, r0, #4
	str r4, [sp, #0x80]
	add r2, sp, #0x84
	add r0, sp, #0x80
	cmp r4, #1
	bhs .L080C9B3A
	adds r0, r2, #0
.L080C9B3A:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C9B5A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov r8, r4
	cmp r0, #0
	bne .L080C9B56
	mov r0, r8
	bl func_080D3BC0
.L080C9B56:
	ldr r1, [r6]
	b .L080C9B5E
.L080C9B5A:
	movs r0, #0
	mov r8, r0
.L080C9B5E:
	adds r5, r0, #0
	str r5, [sp, #0xf4]
	adds r2, r1, #0
	adds r3, r5, #0
	ldr r7, [sp, #0xf0]
	cmp r2, r7
	beq .L080C9B86
.L080C9B6C:
	cmp r3, #0
	beq .L080C9B7C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C9B7C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xf0]
	cmp r2, r0
	bne .L080C9B6C
.L080C9B86:
	adds r5, r3, #0
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne .L080C9BA2
	cmp r5, #0
	beq .L080C9B9E
	adds r0, r5, #0
	add r1, sp, #0x3c
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C9B9E:
	adds r5, #0x10
	b .L080C9BC4
.L080C9BA2:
	adds r3, r0, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C9BC2
.L080C9BAA:
	cmp r2, #0
	beq .L080C9BBA
	adds r0, r2, #0
	add r1, sp, #0x3c
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C9BBA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C9BAA
.L080C9BC2:
	adds r5, r2, #0
.L080C9BC4:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080C9BD4
.L080C9BCE:
	adds r0, #0x10
	cmp r0, r2
	bne .L080C9BCE
.L080C9BD4:
	cmp r1, #0
	beq .L080C9BDE
	adds r0, r1, #0
	bl free
.L080C9BDE:
	ldr r0, [sp, #0xf4]
	add r0, r8
	ldr r7, [sp, #0xf4]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C9BEA:
	ldr r0, [sp, #0xd4]
	adds r0, #1
	str r0, [sp, #0xd4]
	b .L080C9C08
.L080C9BF2:
	ldr r0, [sp, #0x24]
	ldr r0, [r0, #0x14]
	lsls r0, r0, #3
	add r0, sl
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r1, [r0, #4]
	bl func_080074C0
	mov sb, r0
.L080C9C08:
	ldr r2, [sp, #0xc8]
	cmp r2, #0
	blt .L080C9C64
	mov r3, sb
	cmp r3, #0
	blt .L080C9C64
	mov r0, sl
	bl func_08008920
	adds r5, r0, #0
	ldr r1, [sp, #0xec]
	adds r1, #4
	ldr r4, [sp, #0xe0]
	adds r1, r4, r1
	movs r7, #0
	ldrsh r2, [r1, r7]
	mov r3, sl
	movs r4, #0xc
	ldrsh r0, [r3, r4]
	subs r2, r2, r0
	ldr r1, [r1, #4]
	mov r7, sb
	str r7, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	add r4, sp, #0x88
	adds r0, r4, #0
	ldr r3, [sp, #0xc8]
	bl func_0804EA94
	ldrb r2, [r5]
	cmp r2, #0x7f
	bhi .L080C9C64
	lsls r1, r2, #3
	adds r1, #4
	adds r1, r5, r1
	ldr r0, [sp, #0x88]
	str r0, [r1]
	ldrh r0, [r4, #4]
	strh r0, [r1, #4]
	adds r0, r2, #1
	strb r0, [r5]
.L080C9C64:
	ldr r4, [sp, #0xe4]
	ldr r0, [sp, #0xbc]
	cmp r4, r0
	bhs .L080C9C82
	lsls r0, r4, #4
	adds r1, r0, #4
	ldr r2, [sp, #0xe0]
	adds r1, r2, r1
	movs r3, #0
	ldrsh r1, [r1, r3]
	str r0, [sp, #0xec]
	ldr r5, [sp, #0xc0]
	cmp r1, r5
	bgt .L080C9C82
	b .L080C9872
.L080C9C82:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq .L080C9CA4
	ldr r0, [sp, #0x2c]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0xdc]
	bl func_080E54C4
	ldr r0, [sp, #0x2c]
	str r0, [r0, #8]
	ldr r0, [sp, #0x2c]
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, [sp, #0x2c]
	str r0, [r0, #0xc]
	ldr r7, [sp, #0xdc]
	str r1, [r7, #8]
.L080C9CA4:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq .L080C9CAE
	bl free
.L080C9CAE:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq .L080C9CCE
	ldr r0, [sp, #0x14]
	ldr r1, [r0, #4]
	add r0, sp, #0x10
	bl func_080E54C4
	ldr r0, [sp, #0x14]
	str r0, [r0, #8]
	ldr r0, [sp, #0x14]
	movs r1, #0
	str r1, [r0, #4]
	ldr r0, [sp, #0x14]
	str r0, [r0, #0xc]
	str r1, [sp, #0x18]
.L080C9CCE:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq .L080C9CD8
	bl free
.L080C9CD8:
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	str r0, [sp, #0x1c]
	strb r2, [r1, #0x10]
	strb r2, [r1, #0x11]
	str r0, [sp, #0x24]
	strb r2, [r1, #0x18]
	mov r0, sl
	movs r3, #0xc
	ldrsh r1, [r0, r3]
	ldr r0, [r0, #0x1c]
	movs r4, #0xe
	ldrsh r0, [r0, r4]
	subs r0, #0xa0
	cmp r1, r0
	blt .L080C9D0E
	movs r0, #0xba
	lsls r0, r0, #3
	add r0, sl
	strb r2, [r0]
	b .L080C9D18
.L080C9D0E:
	movs r1, #0xba
	lsls r1, r1, #3
	add r1, sl
	movs r0, #1
	strb r0, [r1]
.L080C9D18:
	mov r5, sl
	movs r7, #0xc
	ldrsh r1, [r5, r7]
	cmp r1, #0
	bne .L080C9D2C
	movs r0, #0xb3
	lsls r0, r0, #3
	add r0, sl
	strb r1, [r0]
	b .L080C9D36
.L080C9D2C:
	movs r1, #0xb3
	lsls r1, r1, #3
	add r1, sl
	movs r0, #1
	strb r0, [r1]
.L080C9D36:
	ldr r3, .L080C9D88 @ =0x00000684
	add r3, sl
	ldrb r1, [r3, #8]
	cmp r1, #0
	beq .L080C9D9C
	movs r0, #0xc1
	lsls r0, r0, #3
	add r0, sl
	movs r1, #1
	strb r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #3
	add r0, sl
	strb r1, [r0]
	ldr r0, [r3, #0x10]
	adds r0, #2
	lsls r0, r0, #3
	ldr r1, .L080C9D8C @ =0x000005D4
	add r1, sl
	strh r0, [r1]
	movs r2, #0xc9
	lsls r2, r2, #3
	add r2, sl
	ldr r0, [r2]
	subs r0, #8
	ldr r1, .L080C9D90 @ =0x000005D6
	add r1, sl
	strh r0, [r1]
	ldr r0, [r3, #0x10]
	adds r0, #2
	lsls r0, r0, #3
	ldr r1, .L080C9D94 @ =0x0000060C
	add r1, sl
	strh r0, [r1]
	ldr r0, [r2]
	adds r0, #8
	ldr r1, .L080C9D98 @ =0x0000060E
	add r1, sl
	strh r0, [r1]
	b .L080C9DAC
	.align 2, 0
.L080C9D88: .4byte 0x00000684
.L080C9D8C: .4byte 0x000005D4
.L080C9D90: .4byte 0x000005D6
.L080C9D94: .4byte 0x0000060C
.L080C9D98: .4byte 0x0000060E
.L080C9D9C:
	movs r0, #0xc1
	lsls r0, r0, #3
	add r0, sl
	strb r1, [r0]
	movs r0, #0xc8
	lsls r0, r0, #3
	add r0, sl
	strb r1, [r0]
.L080C9DAC:
	ldr r0, .L080C9EAC @ =0x0000067C
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C9DB8
	b .L080C9F80
.L080C9DB8:
	ldr r0, [sp, #0xb8]
	cmp r0, #0
	beq .L080C9DC6
	ldr r0, .L080C9EB0 @ =0x0000064C
	add r0, sl
	bl func_0805E8F0
.L080C9DC6:
	add r6, sp, #0x2c
	ldr r0, .L080C9EB0 @ =0x0000064C
	add r0, sl
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	movs r0, #0xca
	lsls r0, r0, #3
	add r0, sl
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r1, sp, #0x10
	movs r0, #0xcc
	lsls r0, r0, #3
	add r0, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r1, sp, #0x10
	ldr r0, .L080C9EB4 @ =0x00000644
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0xc9
	lsls r0, r0, #3
	add r0, sl
	ldr r1, [r0]
	add r0, sp, #0x10
	strh r1, [r0, #2]
	movs r4, #1
	movs r3, #1
	mov sb, r3
	mov r5, sb
	strh r5, [r0, #8]
	movs r0, #0xdb
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #0x10
	strh r0, [r1, #4]
	movs r5, #0xd9
	lsls r5, r5, #2
	add r5, sl
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	add r1, sp, #0x10
	strh r0, [r1, #6]
	adds r0, r1, #0
	strb r4, [r0, #0x18]
	mov r0, sl
	bl func_08008920
	ldr r1, [sp, #0x2c]
	movs r2, #0
	cmp r1, #0
	beq .L080C9E52
	ldrh r2, [r6, #4]
.L080C9E52:
	add r3, sp, #0x10
	bl func_0805E99C
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	ldr r7, [sp, #0x34]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0x34
	ldr r0, [sp, #0x34]
	movs r3, #0
	cmp r0, #0
	beq .L080C9E78
	ldrh r3, [r1, #4]
.L080C9E78:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r0, .L080C9EB8 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x58
	adds r1, r7, #0
	bl func_08008F0C
	add r1, sp, #0x58
	mov r8, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080C9EBC
	cmp r1, #0
	beq .L080C9EA4
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C9EA4:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080C9F80
	.align 2, 0
.L080C9EAC: .4byte 0x0000067C
.L080C9EB0: .4byte 0x0000064C
.L080C9EB4: .4byte 0x00000644
.L080C9EB8: .4byte 0x06010000
.L080C9EBC:
	str r1, [sp, #0xf0]
	add r1, sp, #0x94
	mov r5, sb
	str r5, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0xf0]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0x90
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080C9ED8
	adds r0, r1, #0
.L080C9ED8:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080C9EF6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080C9EFA
	mov r0, sb
	bl func_080D3BC0
	b .L080C9EFA
.L080C9EF6:
	movs r0, #0
	mov sb, r0
.L080C9EFA:
	adds r5, r0, #0
	str r5, [sp, #0xf4]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080C9F18
.L080C9F04:
	cmp r3, #0
	beq .L080C9F14
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C9F14:
	adds r2, #0x10
	adds r3, #0x10
.L080C9F18:
	ldr r0, [sp, #0xf0]
	cmp r2, r0
	bne .L080C9F04
	adds r5, r3, #0
	ldr r1, [sp, #0x94]
	cmp r1, #1
	bne .L080C9F3A
	cmp r5, #0
	beq .L080C9F36
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080C9F36:
	adds r5, #0x10
	b .L080C9F5C
.L080C9F3A:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080C9F5A
.L080C9F42:
	cmp r2, #0
	beq .L080C9F52
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080C9F52:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080C9F42
.L080C9F5A:
	adds r5, r2, #0
.L080C9F5C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080C9F6C
.L080C9F66:
	adds r1, #0x10
	cmp r1, r2
	bne .L080C9F66
.L080C9F6C:
	cmp r0, #0
	beq .L080C9F74
	bl free
.L080C9F74:
	ldr r0, [sp, #0xf4]
	add r0, sb
	ldr r7, [sp, #0xf4]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080C9F80:
	movs r0, #0xb3
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080C9F8E
	b .L080CA158
.L080C9F8E:
	ldr r0, [sp, #0xb8]
	cmp r0, #0
	beq .L080C9F9E
	movs r0, #0xad
	lsls r0, r0, #3
	add r0, sl
	bl func_0805E8F0
.L080C9F9E:
	add r6, sp, #0x2c
	movs r0, #0xad
	lsls r0, r0, #3
	add r0, sl
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	ldr r0, .L080CA080 @ =0x0000056C
	add r0, sl
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r1, sp, #0x10
	ldr r0, .L080CA084 @ =0x0000057C
	add r0, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r1, sp, #0x10
	ldr r0, .L080CA088 @ =0x00000564
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, .L080CA08C @ =0x00000566
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r1, #2]
	adds r0, r1, #0
	movs r4, #1
	movs r3, #1
	mov sb, r3
	mov r5, sb
	strh r5, [r0, #8]
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #0x10
	strh r0, [r1, #4]
	movs r5, #0xdd
	lsls r5, r5, #2
	add r5, sl
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	add r1, sp, #0x10
	strh r0, [r1, #6]
	adds r0, r1, #0
	strb r4, [r0, #0x18]
	mov r0, sl
	bl func_08008920
	ldr r1, [sp, #0x2c]
	movs r2, #0
	cmp r1, #0
	beq .L080CA026
	ldrh r2, [r6, #4]
.L080CA026:
	add r3, sp, #0x10
	bl func_0805E99C
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	ldr r7, [sp, #0x34]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0x34
	ldr r0, [sp, #0x34]
	movs r3, #0
	cmp r0, #0
	beq .L080CA04C
	ldrh r3, [r1, #4]
.L080CA04C:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r0, .L080CA090 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x4c
	adds r1, r7, #0
	bl func_08008F0C
	add r1, sp, #0x4c
	mov r8, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CA094
	cmp r1, #0
	beq .L080CA078
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CA078:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080CA158
	.align 2, 0
.L080CA080: .4byte 0x0000056C
.L080CA084: .4byte 0x0000057C
.L080CA088: .4byte 0x00000564
.L080CA08C: .4byte 0x00000566
.L080CA090: .4byte 0x06010000
.L080CA094:
	str r1, [sp, #0xf0]
	add r1, sp, #0x9c
	mov r5, sb
	str r5, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0xf0]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0x98
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080CA0B0
	adds r0, r1, #0
.L080CA0B0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CA0CE
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CA0D2
	mov r0, sb
	bl func_080D3BC0
	b .L080CA0D2
.L080CA0CE:
	movs r0, #0
	mov sb, r0
.L080CA0D2:
	adds r5, r0, #0
	str r5, [sp, #0xf4]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080CA0F0
.L080CA0DC:
	cmp r3, #0
	beq .L080CA0EC
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA0EC:
	adds r2, #0x10
	adds r3, #0x10
.L080CA0F0:
	ldr r0, [sp, #0xf0]
	cmp r2, r0
	bne .L080CA0DC
	adds r5, r3, #0
	ldr r1, [sp, #0x9c]
	cmp r1, #1
	bne .L080CA112
	cmp r5, #0
	beq .L080CA10E
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CA10E:
	adds r5, #0x10
	b .L080CA134
.L080CA112:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CA132
.L080CA11A:
	cmp r2, #0
	beq .L080CA12A
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA12A:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CA11A
.L080CA132:
	adds r5, r2, #0
.L080CA134:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080CA144
.L080CA13E:
	adds r1, #0x10
	cmp r1, r2
	bne .L080CA13E
.L080CA144:
	cmp r0, #0
	beq .L080CA14C
	bl free
.L080CA14C:
	ldr r0, [sp, #0xf4]
	add r0, sb
	ldr r7, [sp, #0xf4]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CA158:
	movs r0, #0xba
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CA166
	b .L080CA330
.L080CA166:
	ldr r0, [sp, #0xb8]
	cmp r0, #0
	beq .L080CA176
	movs r0, #0xb4
	lsls r0, r0, #3
	add r0, sl
	bl func_0805E8F0
.L080CA176:
	add r6, sp, #0x2c
	movs r0, #0xb4
	lsls r0, r0, #3
	add r0, sl
	ldr r1, [r0]
	ldr r3, [r1]
	ldrh r2, [r0, #0xc]
	ldr r0, .L080CA258 @ =0x000005A4
	add r0, sl
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r6, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r1, sp, #0x10
	ldr r0, .L080CA25C @ =0x000005B4
	add r0, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r5, r7}
	stm r1!, {r2, r5, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r1, sp, #0x10
	ldr r0, .L080CA260 @ =0x0000059C
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, .L080CA264 @ =0x0000059E
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r1, #2]
	adds r0, r1, #0
	movs r4, #1
	movs r3, #1
	mov sb, r3
	mov r5, sb
	strh r5, [r0, #8]
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #0x10
	strh r0, [r1, #4]
	movs r5, #0xdf
	lsls r5, r5, #2
	add r5, sl
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	add r1, sp, #0x10
	strh r0, [r1, #6]
	adds r0, r1, #0
	strb r4, [r0, #0x18]
	mov r0, sl
	bl func_08008920
	ldr r1, [sp, #0x2c]
	movs r2, #0
	cmp r1, #0
	beq .L080CA1FE
	ldrh r2, [r6, #4]
.L080CA1FE:
	add r3, sp, #0x10
	bl func_0805E99C
	mov r0, sl
	bl func_08008910
	adds r4, r0, #0
	ldr r7, [sp, #0x34]
	ldr r1, [r5, #4]
	adds r0, r5, #0
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0x34
	ldr r0, [sp, #0x34]
	movs r3, #0
	cmp r0, #0
	beq .L080CA224
	ldrh r3, [r1, #4]
.L080CA224:
	adds r6, r4, #0
	lsls r2, r2, #5
	ldr r0, .L080CA268 @ =0x06010000
	adds r2, r2, r0
	add r0, sp, #0x4c
	adds r1, r7, #0
	bl func_08008F0C
	add r1, sp, #0x4c
	mov r8, r1
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CA26C
	cmp r1, #0
	beq .L080CA250
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CA250:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080CA330
	.align 2, 0
.L080CA258: .4byte 0x000005A4
.L080CA25C: .4byte 0x000005B4
.L080CA260: .4byte 0x0000059C
.L080CA264: .4byte 0x0000059E
.L080CA268: .4byte 0x06010000
.L080CA26C:
	str r1, [sp, #0xf0]
	add r1, sp, #0xa4
	mov r5, sb
	str r5, [r1]
	ldr r0, [r6]
	ldr r7, [sp, #0xf0]
	subs r0, r7, r0
	asrs r4, r0, #4
	add r0, sp, #0xa0
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080CA288
	adds r0, r1, #0
.L080CA288:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CA2A6
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CA2AA
	mov r0, sb
	bl func_080D3BC0
	b .L080CA2AA
.L080CA2A6:
	movs r0, #0
	mov sb, r0
.L080CA2AA:
	adds r5, r0, #0
	str r5, [sp, #0xf4]
	ldr r2, [r6]
	adds r3, r5, #0
	b .L080CA2C8
.L080CA2B4:
	cmp r3, #0
	beq .L080CA2C4
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA2C4:
	adds r2, #0x10
	adds r3, #0x10
.L080CA2C8:
	ldr r0, [sp, #0xf0]
	cmp r2, r0
	bne .L080CA2B4
	adds r5, r3, #0
	ldr r1, [sp, #0xa4]
	cmp r1, #1
	bne .L080CA2EA
	cmp r5, #0
	beq .L080CA2E6
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CA2E6:
	adds r5, #0x10
	b .L080CA30C
.L080CA2EA:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CA30A
.L080CA2F2:
	cmp r2, #0
	beq .L080CA302
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA302:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CA2F2
.L080CA30A:
	adds r5, r2, #0
.L080CA30C:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080CA31C
.L080CA316:
	adds r1, #0x10
	cmp r1, r2
	bne .L080CA316
.L080CA31C:
	cmp r0, #0
	beq .L080CA324
	bl free
.L080CA324:
	ldr r0, [sp, #0xf4]
	add r0, sb
	ldr r7, [sp, #0xf4]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CA330:
	movs r0, #0xc8
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CA33E
	b .L080CA508
.L080CA33E:
	movs r4, #0xc2
	lsls r4, r4, #3
	add r4, sl
	adds r0, r4, #0
	bl func_0805E8F0
	add r5, sp, #0x2c
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	ldr r0, .L080CA42C @ =0x00000614
	add r0, sl
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r5, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r1, sp, #0x10
	ldr r0, .L080CA430 @ =0x00000624
	add r0, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r1, sp, #0x10
	ldr r0, .L080CA434 @ =0x0000060C
	add r0, sl
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r1]
	ldr r0, .L080CA438 @ =0x0000060E
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r1, #2]
	adds r0, r1, #0
	strh r2, [r0, #8]
	movs r0, #0xe7
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #0x10
	strh r0, [r1, #4]
	movs r4, #0xe5
	lsls r4, r4, #2
	add r4, sl
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #0x10
	strh r0, [r1, #6]
	adds r0, r1, #0
	movs r7, #1
	mov sb, r7
	mov r1, sb
	strb r1, [r0, #0x18]
	mov r0, sl
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x2c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080CA3D0
	ldrh r2, [r5, #4]
.L080CA3D0:
	adds r0, r3, #0
	add r3, sp, #0x10
	bl func_0805E99C
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x34]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0x34
	ldr r0, [sp, #0x34]
	movs r3, #0
	cmp r0, #0
	beq .L080CA3F8
	ldrh r3, [r1, #4]
.L080CA3F8:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r4, .L080CA43C @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x4c
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x4c
	mov r8, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CA440
	cmp r1, #0
	beq .L080CA424
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA424:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080CA508
	.align 2, 0
.L080CA42C: .4byte 0x00000614
.L080CA430: .4byte 0x00000624
.L080CA434: .4byte 0x0000060C
.L080CA438: .4byte 0x0000060E
.L080CA43C: .4byte 0x06010000
.L080CA440:
	str r1, [sp, #0xf0]
	add r1, sp, #0xac
	mov r4, sb
	str r4, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xf0]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xa8
	str r4, [r0]
	ldr r2, [r1]
	cmp r4, r2
	bhs .L080CA45C
	adds r0, r1, #0
.L080CA45C:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CA47A
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CA47E
	mov r0, sb
	bl func_080D3BC0
	b .L080CA47E
.L080CA47A:
	movs r0, #0
	mov sb, r0
.L080CA47E:
	adds r5, r0, #0
	str r5, [sp, #0xf4]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xf0]
	cmp r2, r7
	beq .L080CA4A6
.L080CA48C:
	cmp r3, #0
	beq .L080CA49C
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA49C:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xf0]
	cmp r2, r0
	bne .L080CA48C
.L080CA4A6:
	adds r5, r3, #0
	ldr r1, [sp, #0xac]
	cmp r1, #1
	bne .L080CA4C2
	cmp r5, #0
	beq .L080CA4BE
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L080CA4BE:
	adds r5, #0x10
	b .L080CA4E4
.L080CA4C2:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CA4E2
.L080CA4CA:
	cmp r2, #0
	beq .L080CA4DA
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA4DA:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CA4CA
.L080CA4E2:
	adds r5, r2, #0
.L080CA4E4:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080CA4F4
.L080CA4EE:
	adds r1, #0x10
	cmp r1, r2
	bne .L080CA4EE
.L080CA4F4:
	cmp r0, #0
	beq .L080CA4FC
	bl free
.L080CA4FC:
	ldr r0, [sp, #0xf4]
	add r0, sb
	ldr r7, [sp, #0xf4]
	str r7, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CA508:
	movs r0, #0xc1
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne .L080CA516
	b .L080CA6E4
.L080CA516:
	movs r4, #0xbb
	lsls r4, r4, #3
	add r4, sl
	adds r0, r4, #0
	bl func_0805E8F0
	add r5, sp, #0x2c
	ldr r1, [r4]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	ldr r0, .L080CA604 @ =0x000005DC
	add r0, sl
	lsls r2, r2, #2
	ldr r0, [r0]
	adds r0, r0, r2
	ldrh r2, [r0]
	adds r0, r5, #0
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r1, sp, #0x10
	ldr r0, .L080CA608 @ =0x000005EC
	add r0, sl
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r7}
	stm r1!, {r2, r3, r7}
	ldr r0, [r0]
	str r0, [r1]
	add r1, sp, #0x10
	ldr r0, .L080CA60C @ =0x000005D4
	add r0, sl
	ldrh r0, [r0]
	movs r2, #0
	strh r0, [r1]
	ldr r0, .L080CA610 @ =0x000005D6
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r1, #2]
	adds r0, r1, #0
	strh r2, [r0, #8]
	movs r0, #0xe7
	lsls r0, r0, #2
	add r0, sl
	ldr r1, [r0, #4]
	bl func_080074C0
	add r1, sp, #0x10
	strh r0, [r1, #4]
	movs r4, #0xe3
	lsls r4, r4, #2
	add r4, sl
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	add r1, sp, #0x10
	strh r0, [r1, #6]
	adds r0, r1, #0
	movs r7, #1
	mov sb, r7
	mov r1, sb
	strb r1, [r0, #0x18]
	mov r0, sl
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x2c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L080CA5A8
	ldrh r2, [r5, #4]
.L080CA5A8:
	adds r0, r3, #0
	add r3, sp, #0x10
	bl func_0805E99C
	mov r0, sl
	bl func_08008910
	adds r5, r0, #0
	ldr r7, [sp, #0x34]
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	add r1, sp, #0x34
	ldr r0, [sp, #0x34]
	movs r3, #0
	cmp r0, #0
	beq .L080CA5D0
	ldrh r3, [r1, #4]
.L080CA5D0:
	adds r6, r5, #0
	lsls r2, r2, #5
	ldr r4, .L080CA614 @ =0x06010000
	adds r2, r2, r4
	add r0, sp, #0x4c
	adds r1, r7, #0
	bl func_08008F0C
	add r5, sp, #0x4c
	mov r8, r5
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L080CA618
	cmp r1, #0
	beq .L080CA5FC
	adds r0, r1, #0
	mov r1, r8
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA5FC:
	ldr r0, [r6, #4]
	adds r0, #0x10
	str r0, [r6, #4]
	b .L080CA6E4
	.align 2, 0
.L080CA604: .4byte 0x000005DC
.L080CA608: .4byte 0x000005EC
.L080CA60C: .4byte 0x000005D4
.L080CA610: .4byte 0x000005D6
.L080CA614: .4byte 0x06010000
.L080CA618:
	str r1, [sp, #0xf0]
	add r1, sp, #0xb4
	mov r4, sb
	str r4, [r1]
	ldr r0, [r6]
	ldr r5, [sp, #0xf0]
	subs r0, r5, r0
	asrs r4, r0, #4
	add r0, sp, #0xb0
	str r4, [r0]
	ldr r2, [r1]
	mov sl, r1
	cmp r4, r2
	bhs .L080CA636
	mov r0, sl
.L080CA636:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CA654
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CA658
	mov r0, sb
	bl func_080D3BC0
	b .L080CA658
.L080CA654:
	movs r0, #0
	mov sb, r0
.L080CA658:
	adds r5, r0, #0
	str r5, [sp, #0xf4]
	ldr r2, [r6]
	adds r3, r5, #0
	ldr r7, [sp, #0xf0]
	cmp r2, r7
	beq .L080CA680
.L080CA666:
	cmp r3, #0
	beq .L080CA676
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA676:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0xf0]
	cmp r2, r0
	bne .L080CA666
.L080CA680:
	adds r5, r3, #0
	mov r2, sl
	ldr r1, [r2]
	cmp r1, #1
	bne .L080CA69E
	cmp r5, #0
	beq .L080CA69A
	adds r0, r5, #0
	mov r1, r8
	ldm r1!, {r3, r4, r7}
	stm r0!, {r3, r4, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA69A:
	adds r5, #0x10
	b .L080CA6C0
.L080CA69E:
	adds r3, r1, #0
	adds r2, r5, #0
	cmp r3, #0
	beq .L080CA6BE
.L080CA6A6:
	cmp r2, #0
	beq .L080CA6B6
	adds r0, r2, #0
	mov r1, r8
	ldm r1!, {r4, r5, r7}
	stm r0!, {r4, r5, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA6B6:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CA6A6
.L080CA6BE:
	adds r5, r2, #0
.L080CA6C0:
	ldr r2, [r6, #4]
	ldr r0, [r6]
	adds r1, r0, #0
	cmp r0, r2
	beq .L080CA6D0
.L080CA6CA:
	adds r1, #0x10
	cmp r1, r2
	bne .L080CA6CA
.L080CA6D0:
	cmp r0, #0
	beq .L080CA6D8
	bl free
.L080CA6D8:
	ldr r0, [sp, #0xf4]
	add r0, sb
	ldr r1, [sp, #0xf4]
	str r1, [r6]
	str r5, [r6, #4]
	str r0, [r6, #0xc]
.L080CA6E4:
	add sp, #0xf8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start func_080CA6F4
func_080CA6F4: @ 0x080CA6F4
	push {lr}
	ldr r0, .L080CA704 @ =0x04000006
	ldrb r0, [r0]
	cmp r0, #0x17
	beq .L080CA708
	cmp r0, #0x9f
	beq .L080CA744
	b .L080CA760
	.align 2, 0
.L080CA704: .4byte 0x04000006
.L080CA708:
	ldr r2, .L080CA738 @ =0x04000004
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne .L080CA720
	movs r3, #2
.L080CA716:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq .L080CA716
.L080CA720:
	ldr r1, .L080CA73C @ =0x0400000C
	ldr r2, .L080CA740 @ =0x00003E43
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, .L080CA738 @ =0x04000004
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	movs r0, #0x9f
	lsls r0, r0, #8
	b .L080CA75A
	.align 2, 0
.L080CA738: .4byte 0x04000004
.L080CA73C: .4byte 0x0400000C
.L080CA740: .4byte 0x00003E43
.L080CA744:
	ldr r1, .L080CA764 @ =0x0400000C
	ldr r2, .L080CA768 @ =0x00003E41
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, .L080CA76C @ =0x04000004
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xb8
	lsls r0, r0, #5
.L080CA75A:
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
.L080CA760:
	pop {r0}
	bx r0
	.align 2, 0
.L080CA764: .4byte 0x0400000C
.L080CA768: .4byte 0x00003E41
.L080CA76C: .4byte 0x04000004

	thumb_func_start func_080CA770
func_080CA770: @ 0x080CA770
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0x18]
	adds r0, r1, #0
	movs r2, #0
	ldr r1, [sp, #0x18]
	str r2, [r1]
	movs r1, #0x63
	ldr r3, [sp, #0x18]
	str r1, [r3, #4]
	strb r2, [r3, #8]
	str r2, [r3, #0xc]
	str r2, [r3, #0x10]
	movs r4, #1
	str r4, [r3, #0x14]
	str r0, [r3, #0x18]
	bl func_08008910
	adds r5, r0, #0
	ldr r1, .L080CA7D0 @ =gUnk_08750C8C
	mov r0, sp
	ldr r2, .L080CA7D4 @ =0x06000480
	movs r3, #0xe0
	lsls r3, r3, #1
	bl func_08008F0C
	mov sl, sp
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L080CA7D8
	cmp r1, #0
	beq .L080CA7C6
	adds r0, r1, #0
	mov r1, sp
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA7C6:
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L080CA8A0
	.align 2, 0
.L080CA7D0: .4byte gUnk_08750C8C
.L080CA7D4: .4byte 0x06000480
.L080CA7D8:
	str r1, [sp, #0x1c]
	str r4, [sp, #0x14]
	ldr r1, [r5]
	ldr r2, [sp, #0x1c]
	subs r0, r2, r1
	asrs r4, r0, #4
	str r4, [sp, #0x10]
	add r2, sp, #0x14
	add r0, sp, #0x10
	cmp r4, #1
	bhs .L080CA7F0
	adds r0, r2, #0
.L080CA7F0:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080CA810
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080CA80C
	mov r0, sb
	bl func_080D3BC0
.L080CA80C:
	ldr r1, [r5]
	b .L080CA814
.L080CA810:
	movs r0, #0
	mov sb, r0
.L080CA814:
	adds r4, r0, #0
	mov r8, r4
	adds r2, r1, #0
	mov r3, r8
	ldr r4, [sp, #0x1c]
	cmp r2, r4
	beq .L080CA83C
.L080CA822:
	cmp r3, #0
	beq .L080CA832
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA832:
	adds r2, #0x10
	adds r3, #0x10
	ldr r6, [sp, #0x1c]
	cmp r2, r6
	bne .L080CA822
.L080CA83C:
	adds r4, r3, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne .L080CA858
	cmp r4, #0
	beq .L080CA854
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r7}
	stm r0!, {r2, r3, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA854:
	adds r4, #0x10
	b .L080CA87A
.L080CA858:
	adds r3, r0, #0
	adds r2, r4, #0
	cmp r3, #0
	beq .L080CA878
.L080CA860:
	cmp r2, #0
	beq .L080CA870
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r6, r7}
	stm r0!, {r4, r6, r7}
	ldr r1, [r1]
	str r1, [r0]
.L080CA870:
	subs r3, #1
	adds r2, #0x10
	cmp r3, #0
	bne .L080CA860
.L080CA878:
	adds r4, r2, #0
.L080CA87A:
	ldr r2, [r5, #4]
	ldr r1, [r5]
	adds r0, r1, #0
	cmp r1, r2
	beq .L080CA88A
.L080CA884:
	adds r0, #0x10
	cmp r0, r2
	bne .L080CA884
.L080CA88A:
	cmp r1, #0
	beq .L080CA894
	adds r0, r1, #0
	bl free
.L080CA894:
	mov r0, sb
	add r0, r8
	mov r1, r8
	str r1, [r5]
	str r4, [r5, #4]
	str r0, [r5, #0xc]
.L080CA8A0:
	ldr r0, [sp, #0x18]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080CA8B4
func_080CA8B4: @ 0x080CA8B4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r3, #0
	ldr r0, [r6, #0x18]
	ldr r0, [r0, #0x10]
	lsls r0, r0, #1
	adds r0, #4
	str r0, [r6, #0xc]
	str r7, [r6, #0x10]
	str r1, [r6]
	cmp r2, #0x63
	bls .L080CA8D4
	movs r0, #0x63
	str r0, [r6, #4]
	b .L080CA8D6
.L080CA8D4:
	str r2, [r6, #4]
.L080CA8D6:
	ldr r4, [r6, #0x18]
	ldr r0, [r4, #8]
	ldr r1, .L080CA988 @ =0x00001AA8
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, [r6]
	bl __udivsi3
	adds r1, r0, #0
	ldr r0, [r6, #4]
	cmp r1, r0
	bhs .L080CA8F0
	str r1, [r6, #4]
.L080CA8F0:
	ldr r0, [r4, #0x1c]
	ldr r1, [r6, #0xc]
	adds r1, #1
	ldr r0, [r0, #0x18]
	lsls r1, r1, #6
	adds r0, r0, r1
	lsls r1, r7, #1
	adds r0, r0, r1
	movs r5, #0
	str r5, [sp]
	movs r4, #0x20
	str r4, [sp, #4]
	movs r1, #0x2e
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	ldr r0, [r6, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r0, [r6, #0xc]
	adds r0, #1
	ldr r1, [r1, #0x18]
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r0, r7, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r6, #0x14]
	str r4, [sp]
	movs r2, #0x24
	movs r3, #0
	bl func_0804EE30
	ldr r0, [r6, #0x18]
	ldr r0, [r0, #0x1c]
	ldr r1, [r6, #0xc]
	adds r1, #1
	ldr r0, [r0, #0x18]
	lsls r1, r1, #6
	adds r0, r0, r1
	adds r1, r7, #4
	lsls r1, r1, #1
	adds r0, r0, r1
	str r5, [sp]
	str r4, [sp, #4]
	movs r1, #0x2f
	movs r2, #1
	movs r3, #1
	bl func_0804E9F4
	ldr r0, [r6, #0x18]
	ldr r0, [r0, #0x1c]
	movs r4, #0xc
	ldrsh r3, [r0, r4]
	adds r1, r3, #0
	cmp r3, #0
	bge .L080CA964
	adds r1, r3, #7
.L080CA964:
	asrs r1, r1, #3
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r3, r4
	cmp r2, #0
	bge .L080CA974
	adds r4, #7
	adds r2, r3, r4
.L080CA974:
	asrs r2, r2, #3
	bl func_08075BC8
	movs r0, #1
	strb r0, [r6, #8]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080CA988: .4byte 0x00001AA8

	thumb_func_start func_080CA98C
func_080CA98C: @ 0x080CA98C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	ldr r4, [r5, #0x14]
	ldr r0, [r5, #0x18]
	bl func_080088D4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L080CA9B4
	ldr r0, [r5, #0x14]
	adds r0, #1
	str r0, [r5, #0x14]
	ldr r1, [r5, #4]
	cmp r0, r1
	bls .L080CAA1A
	movs r0, #1
	b .L080CAA18
.L080CA9B4:
	ldr r0, [r5, #0x18]
	bl func_080088D4
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	beq .L080CA9D0
	ldr r0, [r5, #0x14]
	subs r0, #1
	str r0, [r5, #0x14]
	cmp r0, #0
	bne .L080CAA1A
	ldr r0, [r5, #4]
	b .L080CAA18
.L080CA9D0:
	ldr r0, [r5, #0x18]
	bl func_080088D4
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq .L080CA9F6
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #4]
	cmp r0, r1
	bne .L080CA9EA
	movs r0, #1
	b .L080CAA18
.L080CA9EA:
	adds r0, #0xa
	str r0, [r5, #0x14]
	cmp r0, r1
	blo .L080CAA1A
	str r1, [r5, #0x14]
	b .L080CAA1A
.L080CA9F6:
	ldr r0, [r5, #0x18]
	bl func_080088D4
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq .L080CAA1A
	ldr r0, [r5, #0x14]
	cmp r0, #1
	bne .L080CAA0E
	ldr r0, [r5, #4]
	b .L080CAA18
.L080CAA0E:
	cmp r0, #0xb
	bhi .L080CAA16
	movs r0, #1
	b .L080CAA18
.L080CAA16:
	subs r0, #0xa
.L080CAA18:
	str r0, [r5, #0x14]
.L080CAA1A:
	ldr r0, [r5, #0x14]
	cmp r4, r0
	beq .L080CAA22
	movs r6, #1
.L080CAA22:
	cmp r6, #0
	beq .L080CAAE6
	ldr r4, .L080CAAF0 @ =0x03FF03FF
	ldr r0, [r5, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r0, [r5, #0xc]
	adds r0, #1
	ldr r1, [r1, #0x18]
	lsls r0, r0, #6
	adds r1, r1, r0
	ldr r0, [r5, #0x10]
	adds r0, #1
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #4
	bl func_08008EB8
	ldr r0, [r5, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r0, [r5, #0xc]
	ldr r1, [r1, #0x18]
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r1, #0x18
	adds r0, r4, #0
	movs r2, #0x1c
	bl func_08008EB8
	ldr r0, [r5, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r0, [r5, #0xc]
	adds r0, #1
	ldr r1, [r1, #0x18]
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r1, #0x18
	adds r0, r4, #0
	movs r2, #0x1c
	bl func_08008EB8
	ldr r0, [r5, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r0, [r5, #0xc]
	adds r0, #1
	ldr r1, [r1, #0x18]
	lsls r0, r0, #6
	adds r1, r1, r0
	ldr r0, [r5, #0x10]
	adds r0, #2
	lsls r0, r0, #1
	adds r1, r1, r0
	ldr r0, [r5, #0x14]
	movs r4, #0x20
	str r4, [sp]
	movs r2, #0x24
	movs r3, #0
	bl func_0804EE30
	ldr r0, [r5, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r0, [r5, #0xc]
	ldr r1, [r1, #0x18]
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r1, #0x32
	ldr r2, [r5, #0x14]
	ldr r0, [r5]
	muls r0, r2, r0
	str r4, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0x1c]
	movs r1, #0xc
	ldrsh r3, [r0, r1]
	adds r1, r3, #0
	cmp r3, #0
	bge .L080CAAC6
	adds r1, r3, #7
.L080CAAC6:
	asrs r1, r1, #3
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r3, r4
	cmp r2, #0
	bge .L080CAAD6
	adds r4, #7
	adds r2, r3, r4
.L080CAAD6:
	asrs r2, r2, #3
	bl func_08075BC8
	ldr r0, [r5, #0x18]
	adds r0, #0x18
	movs r1, #0xcb
	bl func_08008B6C
.L080CAAE6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L080CAAF0: .4byte 0x03FF03FF

	thumb_func_start func_080CAAF4
func_080CAAF4: @ 0x080CAAF4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, .L080CAB9C @ =0x03FF03FF
	ldr r0, [r5, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r0, [r5, #0xc]
	adds r0, #1
	ldr r1, [r1, #0x18]
	lsls r0, r0, #6
	adds r1, r1, r0
	ldr r0, [r5, #0x10]
	lsls r0, r0, #1
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x10
	bl func_08008EB8
	ldr r0, [r5, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r0, [r5, #0xc]
	ldr r1, [r1, #0x18]
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r1, #0x18
	adds r0, r4, #0
	movs r2, #0x1c
	bl func_08008EB8
	ldr r0, [r5, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r0, [r5, #0xc]
	adds r0, #1
	ldr r1, [r1, #0x18]
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r1, #0x18
	adds r0, r4, #0
	movs r2, #0x1c
	bl func_08008EB8
	ldr r0, [r5, #0x18]
	ldr r1, [r0, #0x1c]
	ldr r0, [r5, #0xc]
	ldr r1, [r1, #0x18]
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r1, #0x32
	ldr r0, [r5]
	movs r2, #0x20
	str r2, [sp]
	movs r2, #0xa0
	movs r3, #0
	bl func_0804EDB4
	ldr r0, [r5, #0x18]
	ldr r0, [r0, #0x1c]
	movs r1, #0xc
	ldrsh r3, [r0, r1]
	adds r1, r3, #0
	cmp r3, #0
	bge .L080CAB72
	adds r1, r3, #7
.L080CAB72:
	asrs r1, r1, #3
	movs r4, #0x80
	lsls r4, r4, #1
	adds r2, r3, r4
	cmp r2, #0
	bge .L080CAB82
	adds r4, #7
	adds r2, r3, r4
.L080CAB82:
	asrs r2, r2, #3
	bl func_08075BC8
	movs r0, #0
	strb r0, [r5, #8]
	str r0, [r5, #0xc]
	movs r0, #1
	str r0, [r5, #0x14]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080CAB9C: .4byte 0x03FF03FF

	thumb_func_start func_080CABA0
func_080CABA0: @ 0x080CABA0
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #4
	bl func_08050EBC
	adds r0, r4, #0
	movs r1, #8
	bl func_08050EBC
	adds r0, r4, #0
	movs r1, #1
	bl func_08050EBC
	adds r0, r4, #0
	movs r1, #2
	bl func_08050EBC
	adds r0, r4, #0
	movs r1, #0x10
	bl func_08050EBC
	adds r0, r4, #0
	movs r1, #0x20
	bl func_08050EBC
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_08050D8C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080CABEC
func_080CABEC: @ 0x080CABEC
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #4
	bl func_08050E98
	adds r0, r4, #0
	movs r1, #8
	bl func_08050E98
	adds r0, r4, #0
	movs r1, #1
	bl func_08050E98
	adds r0, r4, #0
	movs r1, #2
	bl func_08050E98
	adds r0, r4, #0
	movs r1, #0x10
	bl func_08050E98
	adds r0, r4, #0
	movs r1, #0x20
	bl func_08050E98
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl func_08050DC8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080CAC3C:
	.byte 0x01, 0x49, 0x40, 0x18
	.byte 0x00, 0x78, 0x70, 0x47, 0xA3, 0x06, 0x00, 0x00, 0x01, 0x49, 0x40, 0x18, 0x00, 0x78, 0x70, 0x47
	.byte 0xA1, 0x06, 0x00, 0x00, 0x09, 0x04, 0x05, 0x4A, 0x13, 0x88, 0xFF, 0x20, 0x18, 0x40, 0x10, 0x80
	.byte 0x09, 0x0A, 0x10, 0x88, 0x01, 0x43, 0x11, 0x80, 0x70, 0x47, 0x00, 0x00, 0x04, 0x00, 0x00, 0x04

	thumb_func_start func_080CAC70
func_080CAC70: @ 0x080CAC70
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start func_080CAC7C
func_080CAC7C: @ 0x080CAC7C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x88
	mov r8, r0
	adds r5, r2, #0
	mov sb, r3
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	mov r0, sp
	bl func_0805E6CC
	add r0, sp, #0x30
	movs r6, #0
	movs r4, #0
	strh r4, [r0]
	strh r4, [r0, #2]
	add r0, sp, #0x34
	mov r1, sp
	adds r2, r5, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	add r0, sp, #0x48
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	strh r4, [r0, #8]
	str r4, [r0, #0xc]
	strb r6, [r0, #0x10]
	strb r6, [r0, #0x11]
	str r4, [r0, #0x14]
	strb r6, [r0, #0x18]
	add r0, sp, #0x64
	strb r6, [r0]
	add r0, sp, #0x68
	add r2, sp, #0x34
	ldr r1, [sp, #0x34]
	ldr r4, [r1]
	ldrh r3, [r2, #0xc]
	lsls r3, r3, #2
	ldr r2, [sp, #0x38]
	adds r2, r2, r3
	ldrh r2, [r2]
	ldr r3, [r4, #0x10]
	bl _call_via_r3
	ldr r0, [sp, #0x70]
	mov r1, r8
	str r0, [r1, #4]
	ldr r0, [sp, #0x78]
	str r0, [r1, #8]
	mov r0, sb
	str r0, [r1]
	ldr r0, .L080CAD04 @ =vtable_unk_080E5A28
	str r0, [sp]
	mov r0, r8
	add sp, #0x88
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
.L080CAD04: .4byte vtable_unk_080E5A28
