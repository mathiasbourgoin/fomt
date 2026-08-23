.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

.L08093AF0:
	.byte 0xFB, 0x21, 0x89, 0x00, 0x40, 0x18, 0x01, 0x21, 0x01, 0x70, 0x70, 0x47, 0x02, 0x1C, 0xFA, 0x23
	.byte 0x9B, 0x00, 0xD0, 0x18, 0x01, 0x60, 0xFB, 0x20, 0x80, 0x00, 0x11, 0x18, 0x01, 0x20, 0x08, 0x70
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x84, 0xB0, 0x01, 0x1C, 0x00, 0x24
	.byte 0xF9, 0x20, 0x80, 0x00, 0x0A, 0x18, 0x10, 0x68, 0x00, 0x28, 0x02, 0xD0, 0x01, 0x28, 0x19, 0xD0
	.byte 0x2B, 0xE0, 0xEE, 0x23, 0x5B, 0x00, 0xC8, 0x18, 0x00, 0x68, 0x03, 0x28, 0x25, 0xD1, 0x01, 0x20
	.byte 0x10, 0x60, 0xE8, 0x22, 0x52, 0x00, 0x88, 0x18, 0x04, 0x49, 0x05, 0x4A, 0x00, 0x94, 0x01, 0x94
	.byte 0x02, 0x94, 0x03, 0x94, 0x00, 0x23, 0xBD, 0xF7, 0x59, 0xF9, 0x16, 0xE0, 0x8C, 0x05, 0x10, 0x08
	.byte 0x90, 0x05, 0x10, 0x08, 0xEE, 0x23, 0x5B, 0x00, 0xC8, 0x18, 0x00, 0x68, 0x03, 0x28, 0x0C, 0xD1
	.byte 0xE8, 0x22, 0x52, 0x00, 0x88, 0x18, 0xBD, 0xF7, 0x3B, 0xF9, 0x01, 0x28, 0x02, 0xD0, 0x02, 0x28
	.byte 0x02, 0xD0, 0x02, 0xE0, 0x02, 0x24, 0x00, 0xE0, 0x03, 0x24, 0x20, 0x1C, 0x04, 0xB0, 0x10, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0x30, 0xB5, 0x05, 0x1C, 0xF8, 0x21, 0x89, 0x00, 0x68, 0x18, 0x00, 0x21
	.byte 0x01, 0x60, 0xF9, 0x22, 0x92, 0x00, 0xA8, 0x18, 0x01, 0x60, 0xE8, 0x20, 0x40, 0x00, 0x2C, 0x18
	.byte 0x07, 0x49, 0x20, 0x1C, 0xBD, 0xF7, 0xEA, 0xF8, 0x20, 0x1C, 0x3A, 0x21, 0xBD, 0xF7, 0x48, 0xF9
	.byte 0xEE, 0x22, 0x52, 0x00, 0xA9, 0x18, 0x04, 0x20, 0x08, 0x60, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xEC, 0x05, 0x10, 0x08, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x04, 0x1C, 0xE8, 0x20, 0x40, 0x00
	.byte 0x24, 0x18, 0x05, 0x49, 0x20, 0x1C, 0xBD, 0xF7, 0xD1, 0xF8, 0x20, 0x1C, 0x38, 0x21, 0xBD, 0xF7
	.byte 0x2F, 0xF9, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xD8, 0x05, 0x10, 0x08, 0x00, 0xB5, 0x74, 0xF7
	.byte 0x65, 0xFE, 0x02, 0x21, 0x08, 0x40, 0x00, 0x28, 0x01, 0xD1, 0x00, 0x20, 0x00, 0xE0, 0x01, 0x20
	.byte 0x02, 0xBC, 0x08, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0xE8, 0x20, 0x40, 0x00, 0x24, 0x18, 0x06, 0x49
	.byte 0x20, 0x1C, 0x00, 0x22, 0x00, 0x23, 0xBD, 0xF7, 0xCF, 0xF8, 0x20, 0x1C, 0x38, 0x21, 0xBD, 0xF7
	.byte 0x0F, 0xF9, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x94, 0x05, 0x10, 0x08

	thumb_func_start func_08093C3C
func_08093C3C: @ 0x08093C3C
	bx lr
	.align 2, 0
.L08093C40:
	.byte 0x70, 0xB5, 0x83, 0xB0, 0x01, 0x1C, 0x00, 0x26, 0xF9, 0x20, 0x80, 0x00, 0x0C, 0x18, 0x20, 0x68
	.byte 0x00, 0x28, 0x02, 0xD0, 0x01, 0x28, 0x1B, 0xD0, 0x2D, 0xE0, 0xE8, 0x20, 0x40, 0x00, 0x0D, 0x18
	.byte 0x28, 0x1C, 0xBD, 0xF7, 0x67, 0xF8, 0x03, 0x28, 0x25, 0xD1, 0x01, 0x20, 0x20, 0x60, 0x05, 0x49
	.byte 0x05, 0x4A, 0x06, 0x4B, 0x00, 0x96, 0x01, 0x96, 0x02, 0x96, 0x28, 0x1C, 0xBD, 0xF7, 0xD8, 0xF8
	.byte 0x19, 0xE0, 0x00, 0x00, 0x88, 0x05, 0x10, 0x08, 0x8C, 0x05, 0x10, 0x08, 0x90, 0x05, 0x10, 0x08
	.byte 0xE8, 0x20, 0x40, 0x00, 0x0C, 0x18, 0x20, 0x1C, 0xBD, 0xF7, 0x4C, 0xF8, 0x03, 0x28, 0x0A, 0xD1
	.byte 0x20, 0x1C, 0xBD, 0xF7, 0xA5, 0xF8, 0x01, 0x28, 0x02, 0xD0, 0x02, 0x28, 0x02, 0xD0, 0x02, 0xE0
	.byte 0x02, 0x26, 0x00, 0xE0, 0x03, 0x26, 0x30, 0x1C, 0x03, 0xB0, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47
	.byte 0x10, 0xB5, 0x02, 0x1C, 0xF8, 0x21, 0x89, 0x00, 0x50, 0x18, 0x00, 0x21, 0x01, 0x60, 0xF9, 0x23
	.byte 0x9B, 0x00, 0xD0, 0x18, 0x01, 0x60, 0xE8, 0x20, 0x40, 0x00, 0x14, 0x18, 0x06, 0x49, 0x20, 0x1C
	.byte 0x00, 0x22, 0x00, 0x23, 0xBD, 0xF7, 0x70, 0xF8, 0x20, 0x1C, 0x3A, 0x21, 0xBD, 0xF7, 0xB0, 0xF8
	.byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x58, 0x05, 0x10, 0x08, 0x10, 0xB5, 0x04, 0x1C
	.byte 0xE8, 0x20, 0x40, 0x00, 0x24, 0x18, 0x06, 0x49, 0x20, 0x1C, 0x00, 0x22, 0x00, 0x23, 0xBD, 0xF7
	.byte 0x5B, 0xF8, 0x20, 0x1C, 0x38, 0x21, 0xBD, 0xF7, 0x9B, 0xF8, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0x40, 0x05, 0x10, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0xE8, 0x20, 0x40, 0x00, 0x24, 0x18, 0x06, 0x49
	.byte 0x20, 0x1C, 0x00, 0x22, 0x00, 0x23, 0xBD, 0xF7, 0x47, 0xF8, 0x20, 0x1C, 0x38, 0x21, 0xBD, 0xF7
	.byte 0x87, 0xF8, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x24, 0x05, 0x10, 0x08, 0x00, 0xB5, 0x74, 0xF7
	.byte 0xBD, 0xFD, 0x02, 0x21, 0x08, 0x40, 0x00, 0x28, 0x01, 0xD1, 0x00, 0x20, 0x00, 0xE0, 0x01, 0x20
	.byte 0x02, 0xBC, 0x08, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0xE8, 0x20, 0x40, 0x00, 0x24, 0x18, 0x06, 0x49
	.byte 0x20, 0x1C, 0x00, 0x22, 0x00, 0x23, 0xBD, 0xF7, 0x27, 0xF8, 0x20, 0x1C, 0x39, 0x21, 0xBD, 0xF7
	.byte 0x67, 0xF8, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xE0, 0x04, 0x10, 0x08, 0x00, 0xB5, 0x74, 0xF7
	.byte 0x9D, 0xFD, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x74, 0xF7, 0x93, 0xFD, 0x02, 0xBC
	.byte 0x08, 0x47, 0x00, 0x00, 0xE2, 0x21, 0x49, 0x00, 0x40, 0x18, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00
	.byte 0x04, 0x49, 0x01, 0x60, 0x04, 0x49, 0x41, 0x60, 0x00, 0x21, 0x81, 0x60, 0x01, 0x21, 0x41, 0x73
	.byte 0x70, 0x47, 0x00, 0x00, 0x2C, 0x81, 0x0E, 0x08, 0x9C, 0x08, 0x10, 0x08

	thumb_func_start func_08093DCC
func_08093DCC: @ 0x08093DCC
	push {lr}
	adds r2, r0, #0
	ldr r0, .L08093DE8 @ =vtable_unk_080E812C
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L08093DE2
	adds r0, r2, #0
	bl __builtin_delete
.L08093DE2:
	pop {r0}
	bx r0
	.align 2, 0
.L08093DE8: .4byte vtable_unk_080E812C

	thumb_func_start func_08093DEC
func_08093DEC: @ 0x08093DEC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x14]
	ldr r7, [sp, #0x18]
	ldr r0, [r4]
	ldr r3, [r0, #0x20]
	adds r0, r4, #0
	bl _call_via_r3
	str r5, [r4, #0x14]
	str r6, [r4, #0x18]
	str r7, [r4, #0x1c]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x20]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x24]
	ldr r0, .L08093E1C @ =gUnk_081007AC
	str r0, [r4, #8]
	movs r0, #0
	strb r0, [r4, #0xd]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08093E1C: .4byte gUnk_081007AC

	thumb_func_start func_08093E20
func_08093E20: @ 0x08093E20
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x24]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L08093E8C
	str r1, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #0x12
	ldrsh r2, [r1, r0]
	cmp r2, #0
	ble .L08093E54
	movs r3, #0x14
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L08093E56
.L08093E54:
	ldr r1, [r1, #0x14]
.L08093E56:
	ldr r0, [r4, #4]
	movs r2, #0x10
	ldrsh r0, [r0, r2]
	adds r0, r4, r0
	bl _call_via_r1
	ldr r0, [r4, #4]
	movs r3, #2
	ldrsh r2, [r0, r3]
	cmp r2, #0
	ble .L08093E7E
	movs r1, #4
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L08093E80
.L08093E7E:
	ldr r1, [r0, #4]
.L08093E80:
	ldr r0, [r4, #4]
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r4, r0
	bl _call_via_r1
.L08093E8C:
	ldr r0, [r4, #4]
	movs r3, #0x1a
	ldrsh r2, [r0, r3]
	cmp r2, #0
	ble .L08093EA8
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L08093EAA
.L08093EA8:
	ldr r1, [r0, #0x1c]
.L08093EAA:
	ldr r0, [r4, #4]
	movs r2, #0x18
	ldrsh r0, [r0, r2]
	adds r0, r4, r0
	bl _call_via_r1
	adds r3, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0xa
	ldrsh r2, [r0, r1]
	cmp r2, #0
	ble .L08093ED4
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r2, [r0]
	b .L08093ED6
.L08093ED4:
	ldr r2, [r0, #0xc]
.L08093ED6:
	ldr r0, [r4, #4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	adds r1, r3, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08093EEC
func_08093EEC: @ 0x08093EEC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #4]
	movs r1, #0x22
	ldrsh r3, [r0, r1]
	cmp r3, #0
	ble .L08093F0C
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L08093F0E
.L08093F0C:
	ldr r1, [r0, #0x24]
.L08093F0E:
	ldr r0, [r2, #4]
	movs r3, #0x20
	ldrsh r0, [r0, r3]
	adds r0, r2, r0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08093F20
func_08093F20: @ 0x08093F20
	ldrb r0, [r0, #0xd]
	bx lr

	thumb_func_start func_08093F24
func_08093F24: @ 0x08093F24
	ldr r0, [r0, #0x10]
	bx lr

	thumb_func_start func_08093F28
func_08093F28: @ 0x08093F28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, [r4]
	ldr r1, [r0, #0x30]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08093F48
func_08093F48: @ 0x08093F48
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	bne .L08093F5A
	ldr r0, [r4]
	ldr r1, [r0, #0x3c]
	adds r0, r4, #0
	bl _call_via_r1
.L08093F5A:
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08093FA4
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08093F84
	ldr r0, .L08093F80 @ =gUnk_081008C4
	b .L08093FA2
	.align 2, 0
.L08093F80: .4byte gUnk_081008C4
.L08093F84:
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08093FA0
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, .L08093F9C @ =gUnk_0810089C
	b .L08093FA2
	.align 2, 0
.L08093F9C: .4byte gUnk_0810089C
.L08093FA0:
	ldr r0, .L08093FAC @ =gUnk_081007D4
.L08093FA2:
	str r0, [r4, #8]
.L08093FA4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08093FAC: .4byte gUnk_081007D4

	thumb_func_start func_08093FB0
func_08093FB0: @ 0x08093FB0
	push {lr}
	ldr r2, [r0]
	ldr r1, [r0, #0x14]
	ldr r1, [r1]
	ldr r3, [r2, #0x38]
	movs r2, #0
	bl _call_via_r3
	pop {r0}
	bx r0

	thumb_func_start func_08093FC4
func_08093FC4: @ 0x08093FC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08093FF4
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08093FF0
	ldr r0, .L08093FEC @ =gUnk_081008C4
	b .L08093FF2
	.align 2, 0
.L08093FEC: .4byte gUnk_081008C4
.L08093FF0:
	ldr r0, .L08093FFC @ =gUnk_081007FC
.L08093FF2:
	str r0, [r4, #8]
.L08093FF4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08093FFC: .4byte gUnk_081007FC

	thumb_func_start func_08094000
func_08094000: @ 0x08094000
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x4c]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, [r4, #0x14]
	str r0, [r1, #8]
	ldr r0, [r4]
	ldr r1, [r0, #0x50]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094032
	ldr r0, [r4]
	ldr r3, [r0, #0x38]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	b .L08094040
.L08094032:
	ldr r0, [r4]
	ldr r3, [r0, #0x38]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
.L08094040:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08094048
func_08094048: @ 0x08094048
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080940B0
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094074
	ldr r0, .L08094070 @ =gUnk_081008C4
	b .L080940AE
	.align 2, 0
.L08094070: .4byte gUnk_081008C4
.L08094074:
	ldr r0, [r4]
	ldr r1, [r0, #0x54]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080940A8
	ldr r0, [r4]
	ldr r1, [r0, #0x58]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809409C
	ldr r0, .L08094098 @ =gUnk_08100824
	b .L080940AE
	.align 2, 0
.L08094098: .4byte gUnk_08100824
.L0809409C:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, .L080940A4 @ =gUnk_0810084C
	b .L080940AE
	.align 2, 0
.L080940A4: .4byte gUnk_0810084C
.L080940A8:
	movs r0, #3
	str r0, [r4, #0x10]
	ldr r0, .L080940B8 @ =gUnk_0810089C
.L080940AE:
	str r0, [r4, #8]
.L080940B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080940B8: .4byte gUnk_0810089C
.L080940BC:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_080940C0
func_080940C0: @ 0x080940C0
	push {lr}
	adds r2, r0, #0
	cmp r1, #2
	beq .L080940CE
	cmp r1, #3
	beq .L080940D2
	b .L080940DA
.L080940CE:
	movs r0, #1
	b .L080940D4
.L080940D2:
	movs r0, #0
.L080940D4:
	strb r0, [r2, #0xc]
	ldr r0, .L080940E0 @ =gUnk_0810084C
	str r0, [r2, #8]
.L080940DA:
	pop {r0}
	bx r0
	.align 2, 0
.L080940E0: .4byte gUnk_0810084C

	thumb_func_start func_080940E4
func_080940E4: @ 0x080940E4
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq .L080940FE
	ldr r0, [r1]
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #1
	bl _call_via_r3
	b .L0809410C
.L080940FE:
	ldr r0, [r1]
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl _call_via_r3
.L0809410C:
	pop {r0}
	bx r0

	thumb_func_start func_08094110
func_08094110: @ 0x08094110
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	bne .L08094122
	ldr r0, [r4]
	ldr r1, [r0, #0x3c]
	adds r0, r4, #0
	bl _call_via_r1
.L08094122:
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809419C
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809414C
	ldr r0, .L08094148 @ =gUnk_081008C4
	b .L0809419A
	.align 2, 0
.L08094148: .4byte gUnk_081008C4
.L0809414C:
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094168
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, .L08094164 @ =gUnk_0810089C
	b .L0809419A
	.align 2, 0
.L08094164: .4byte gUnk_0810089C
.L08094168:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne .L0809417C
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, .L08094178 @ =gUnk_0810089C
	b .L0809419A
	.align 2, 0
.L08094178: .4byte gUnk_0810089C
.L0809417C:
	ldr r0, [r4]
	ldr r1, [r0, #0x5c]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08094198
	movs r0, #2
	str r0, [r4, #0x10]
	ldr r0, .L08094194 @ =gUnk_0810089C
	b .L0809419A
	.align 2, 0
.L08094194: .4byte gUnk_0810089C
.L08094198:
	ldr r0, .L080941A4 @ =gUnk_08100874
.L0809419A:
	str r0, [r4, #8]
.L0809419C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080941A4: .4byte gUnk_08100874

	thumb_func_start func_080941A8
func_080941A8: @ 0x080941A8
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, [r0]
	ldr r1, [r0, #0x18]
	ldr r2, [r0, #0x1c]
	ldr r3, [r0, #0x20]
	ldr r4, [r0, #0x24]
	str r4, [sp]
	ldr r4, [r5, #0x34]
	bl _call_via_r4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080941C8
func_080941C8: @ 0x080941C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080941FE
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq .L080941F8
	ldr r0, .L080941F4 @ =gUnk_081008C4
	b .L080941FC
	.align 2, 0
.L080941F4: .4byte gUnk_081008C4
.L080941F8:
	str r0, [r4, #0x10]
	ldr r0, .L08094204 @ =gUnk_0810089C
.L080941FC:
	str r0, [r4, #8]
.L080941FE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08094204: .4byte gUnk_0810089C
.L08094208:
	.byte 0x00, 0xB5, 0x01, 0x21, 0x41, 0x73, 0x01, 0x68
	.byte 0xC9, 0x6A, 0x3F, 0xF0, 0x7D, 0xFB, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x02, 0x1C, 0x02, 0x29, 0x02, 0xD0, 0x03, 0x29, 0x05, 0xD0
	.byte 0x08, 0xE0, 0x01, 0x48, 0x05, 0xE0, 0x00, 0x00, 0xAC, 0x07, 0x10, 0x08, 0x01, 0x20, 0x10, 0x61
	.byte 0x01, 0x48, 0x90, 0x60, 0x01, 0xBC, 0x00, 0x47, 0x9C, 0x08, 0x10, 0x08

	thumb_func_start func_0809424C
func_0809424C: @ 0x0809424C
	ldr r1, .L08094260 @ =vtable_unk_080E8028
	str r1, [r0]
	ldr r1, .L08094264 @ =gUnk_081009DC
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0, #8]
	movs r1, #1
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0
.L08094260: .4byte vtable_unk_080E8028
.L08094264: .4byte gUnk_081009DC

	thumb_func_start func_08094268
func_08094268: @ 0x08094268
	push {lr}
	adds r2, r0, #0
	ldr r0, .L08094284 @ =vtable_unk_080E8028
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L0809427E
	adds r0, r2, #0
	bl __builtin_delete
.L0809427E:
	pop {r0}
	bx r0
	.align 2, 0
.L08094284: .4byte vtable_unk_080E8028

	thumb_func_start func_08094288
func_08094288: @ 0x08094288
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x14]
	ldr r7, [sp, #0x18]
	ldr r0, [r4]
	ldr r3, [r0, #0x20]
	adds r0, r4, #0
	bl _call_via_r3
	str r5, [r4, #0x14]
	str r6, [r4, #0x20]
	str r7, [r4, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x20]
	str r0, [r4, #0x2c]
	ldr r0, .L080942B8 @ =gUnk_081008EC
	str r0, [r4, #8]
	movs r0, #0
	strb r0, [r4, #0xd]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080942B8: .4byte gUnk_081008EC

	thumb_func_start func_080942BC
func_080942BC: @ 0x080942BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x24]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r1, [r4, #8]
	cmp r1, #0
	beq .L08094328
	str r1, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #0x12
	ldrsh r2, [r1, r0]
	cmp r2, #0
	ble .L080942F0
	movs r3, #0x14
	ldrsh r0, [r1, r3]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L080942F2
.L080942F0:
	ldr r1, [r1, #0x14]
.L080942F2:
	ldr r0, [r4, #4]
	movs r2, #0x10
	ldrsh r0, [r0, r2]
	adds r0, r4, r0
	bl _call_via_r1
	ldr r0, [r4, #4]
	movs r3, #2
	ldrsh r2, [r0, r3]
	cmp r2, #0
	ble .L0809431A
	movs r1, #4
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L0809431C
.L0809431A:
	ldr r1, [r0, #4]
.L0809431C:
	ldr r0, [r4, #4]
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, r4, r0
	bl _call_via_r1
.L08094328:
	ldr r0, [r4, #4]
	movs r3, #0x1a
	ldrsh r2, [r0, r3]
	cmp r2, #0
	ble .L08094344
	movs r1, #0x1c
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L08094346
.L08094344:
	ldr r1, [r0, #0x1c]
.L08094346:
	ldr r0, [r4, #4]
	movs r2, #0x18
	ldrsh r0, [r0, r2]
	adds r0, r4, r0
	bl _call_via_r1
	adds r3, r0, #0
	ldr r0, [r4, #4]
	movs r1, #0xa
	ldrsh r2, [r0, r1]
	cmp r2, #0
	ble .L08094370
	movs r1, #0xc
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	ldr r1, [r0]
	lsls r0, r2, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r2, [r0]
	b .L08094372
.L08094370:
	ldr r2, [r0, #0xc]
.L08094372:
	ldr r0, [r4, #4]
	movs r1, #8
	ldrsh r0, [r0, r1]
	adds r0, r4, r0
	adds r1, r3, #0
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08094388
func_08094388: @ 0x08094388
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #4]
	movs r1, #0x22
	ldrsh r3, [r0, r1]
	cmp r3, #0
	ble .L080943A8
	movs r1, #0x24
	ldrsh r0, [r0, r1]
	adds r0, r2, r0
	ldr r1, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	subs r0, #4
	ldr r1, [r0]
	b .L080943AA
.L080943A8:
	ldr r1, [r0, #0x24]
.L080943AA:
	ldr r0, [r2, #4]
	movs r3, #0x20
	ldrsh r0, [r0, r3]
	adds r0, r2, r0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080943BC
func_080943BC: @ 0x080943BC
	ldrb r0, [r0, #0xd]
	bx lr

	thumb_func_start func_080943C0
func_080943C0: @ 0x080943C0
	ldr r0, [r0, #0x10]
	bx lr

	thumb_func_start func_080943C4
func_080943C4: @ 0x080943C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x28]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, [r4]
	ldr r1, [r0, #0x30]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080943E4
func_080943E4: @ 0x080943E4
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	bne .L080943F6
	ldr r0, [r4]
	ldr r1, [r0, #0x3c]
	adds r0, r4, #0
	bl _call_via_r1
.L080943F6:
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094440
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094420
	ldr r0, .L0809441C @ =gUnk_08100A04
	b .L0809443E
	.align 2, 0
.L0809441C: .4byte gUnk_08100A04
.L08094420:
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809443C
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, .L08094438 @ =gUnk_081009DC
	b .L0809443E
	.align 2, 0
.L08094438: .4byte gUnk_081009DC
.L0809443C:
	ldr r0, .L08094448 @ =gUnk_08100914
.L0809443E:
	str r0, [r4, #8]
.L08094440:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08094448: .4byte gUnk_08100914

	thumb_func_start func_0809444C
func_0809444C: @ 0x0809444C
	push {r4, lr}
	sub sp, #4
	ldr r4, [r0]
	ldr r1, [r0, #0x14]
	adds r3, r0, #0
	adds r3, #0x18
	movs r2, #8
	str r2, [sp]
	ldr r4, [r4, #0x34]
	bl _call_via_r4
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_0809446C
func_0809446C: @ 0x0809446C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809449C
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094498
	ldr r0, .L08094494 @ =gUnk_08100A04
	b .L0809449A
	.align 2, 0
.L08094494: .4byte gUnk_08100A04
.L08094498:
	ldr r0, .L080944A4 @ =gUnk_0810093C
.L0809449A:
	str r0, [r4, #8]
.L0809449C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080944A4: .4byte gUnk_0810093C

	thumb_func_start func_080944A8
func_080944A8: @ 0x080944A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x18]
	str r0, [r1, #8]
	ldr r0, [r4]
	ldr r1, [r0, #0x50]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080944D2
	ldr r0, [r4]
	ldr r3, [r0, #0x38]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl _call_via_r3
	b .L080944E0
.L080944D2:
	ldr r0, [r4]
	ldr r3, [r0, #0x38]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl _call_via_r3
.L080944E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080944E8
func_080944E8: @ 0x080944E8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094550
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094514
	ldr r0, .L08094510 @ =gUnk_08100A04
	b .L0809454E
	.align 2, 0
.L08094510: .4byte gUnk_08100A04
.L08094514:
	ldr r0, [r4]
	ldr r1, [r0, #0x54]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094548
	ldr r0, [r4]
	ldr r1, [r0, #0x58]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809453C
	ldr r0, .L08094538 @ =gUnk_08100964
	b .L0809454E
	.align 2, 0
.L08094538: .4byte gUnk_08100964
.L0809453C:
	movs r0, #1
	strb r0, [r4, #0xc]
	ldr r0, .L08094544 @ =gUnk_0810098C
	b .L0809454E
	.align 2, 0
.L08094544: .4byte gUnk_0810098C
.L08094548:
	movs r0, #3
	str r0, [r4, #0x10]
	ldr r0, .L08094558 @ =gUnk_081009DC
.L0809454E:
	str r0, [r4, #8]
.L08094550:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08094558: .4byte gUnk_081009DC
.L0809455C:
	.byte 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_08094560
func_08094560: @ 0x08094560
	push {lr}
	adds r2, r0, #0
	cmp r1, #2
	beq .L0809456E
	cmp r1, #3
	beq .L08094572
	b .L0809457A
.L0809456E:
	movs r0, #1
	b .L08094574
.L08094572:
	movs r0, #0
.L08094574:
	strb r0, [r2, #0xc]
	ldr r0, .L08094580 @ =gUnk_0810098C
	str r0, [r2, #8]
.L0809457A:
	pop {r0}
	bx r0
	.align 2, 0
.L08094580: .4byte gUnk_0810098C

	thumb_func_start func_08094584
func_08094584: @ 0x08094584
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #0xc]
	cmp r0, #0
	beq .L0809459E
	ldr r0, [r1]
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	movs r1, #0
	movs r2, #1
	bl _call_via_r3
	b .L080945AC
.L0809459E:
	ldr r0, [r1]
	ldr r3, [r0, #0x38]
	adds r0, r1, #0
	movs r1, #1
	movs r2, #1
	bl _call_via_r3
.L080945AC:
	pop {r0}
	bx r0

	thumb_func_start func_080945B0
func_080945B0: @ 0x080945B0
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #1
	bne .L080945C2
	ldr r0, [r4]
	ldr r1, [r0, #0x3c]
	adds r0, r4, #0
	bl _call_via_r1
.L080945C2:
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809463C
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L080945EC
	ldr r0, .L080945E8 @ =gUnk_08100A04
	b .L0809463A
	.align 2, 0
.L080945E8: .4byte gUnk_08100A04
.L080945EC:
	ldr r0, [r4]
	ldr r1, [r0, #0x44]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L08094608
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, .L08094604 @ =gUnk_081009DC
	b .L0809463A
	.align 2, 0
.L08094604: .4byte gUnk_081009DC
.L08094608:
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	bne .L0809461C
	movs r0, #1
	str r0, [r4, #0x10]
	ldr r0, .L08094618 @ =gUnk_081009DC
	b .L0809463A
	.align 2, 0
.L08094618: .4byte gUnk_081009DC
.L0809461C:
	ldr r0, [r4]
	ldr r1, [r0, #0x5c]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L08094638
	movs r0, #2
	str r0, [r4, #0x10]
	ldr r0, .L08094634 @ =gUnk_081009DC
	b .L0809463A
	.align 2, 0
.L08094634: .4byte gUnk_081009DC
.L08094638:
	ldr r0, .L08094644 @ =gUnk_081009B4
.L0809463A:
	str r0, [r4, #8]
.L0809463C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L08094644: .4byte gUnk_081009B4

	thumb_func_start func_08094648
func_08094648: @ 0x08094648
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, [r0]
	ldr r1, [r0, #0x20]
	ldr r2, [r0, #0x24]
	ldr r3, [r0, #0x28]
	ldr r4, [r0, #0x2c]
	str r4, [sp]
	ldr r4, [r5, #0x34]
	bl _call_via_r4
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08094668
func_08094668: @ 0x08094668
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r0, #0x40]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	beq .L0809469E
	ldr r0, [r4]
	ldr r1, [r0, #0x48]
	adds r0, r4, #0
	bl _call_via_r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	beq .L08094698
	ldr r0, .L08094694 @ =gUnk_08100A04
	b .L0809469C
	.align 2, 0
.L08094694: .4byte gUnk_08100A04
.L08094698:
	str r0, [r4, #0x10]
	ldr r0, .L080946A4 @ =gUnk_081009DC
.L0809469C:
	str r0, [r4, #8]
.L0809469E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
.L080946A4: .4byte gUnk_081009DC

	thumb_func_start func_080946A8
func_080946A8: @ 0x080946A8
	push {lr}
	movs r1, #1
	strb r1, [r0, #0xd]
	ldr r1, [r0]
	ldr r1, [r1, #0x2c]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080946BC
func_080946BC: @ 0x080946BC
	bx lr
	.align 2, 0

	thumb_func_start func_080946C0
func_080946C0: @ 0x080946C0
	bx lr
	.align 2, 0

	thumb_func_start func_080946C4
func_080946C4: @ 0x080946C4
	push {lr}
	adds r2, r0, #0
	cmp r1, #2
	beq .L080946D2
	cmp r1, #3
	beq .L080946DC
	b .L080946E4
.L080946D2:
	ldr r0, .L080946D8 @ =gUnk_081008EC
	b .L080946E2
	.align 2, 0
.L080946D8: .4byte gUnk_081008EC
.L080946DC:
	movs r0, #1
	str r0, [r2, #0x10]
	ldr r0, .L080946E8 @ =gUnk_081009DC
.L080946E2:
	str r0, [r2, #8]
.L080946E4:
	pop {r0}
	bx r0
	.align 2, 0
.L080946E8: .4byte gUnk_081009DC
.L080946EC:
	.byte 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x40, 0x69, 0x80, 0x68
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47
	.byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00
	.byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00
	.byte 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x00, 0x20, 0x70, 0x47
	.byte 0x70, 0x47, 0x00, 0x00, 0x40, 0x69, 0x80, 0x68, 0x70, 0x47, 0x00, 0x00

	thumb_func_start func_080947BC
func_080947BC: @ 0x080947BC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	str r1, [r4]
	bl func_08094904
	bl __builtin_vec_new
	str r0, [r4, #4]
	adds r0, r4, #0
	bl func_0809490C
	bl __builtin_vec_new
	str r0, [r4, #8]
	movs r3, #0
	movs r6, #1
	adds r5, r4, #0
	adds r5, #0x18
.L080947E0:
	ldr r0, [r4]
	adds r2, r3, #0
	cmp r3, #0
	bge .L080947EA
	adds r2, r3, #7
.L080947EA:
	asrs r2, r2, #3
	lsls r1, r2, #3
	subs r1, r3, r1
	ldr r7, .L08094810 @ =0x000021D4
	adds r0, r0, r7
	adds r0, r0, r2
	ldrb r0, [r0]
	asrs r0, r1
	ands r0, r6
	adds r1, r5, r3
	strb r0, [r1]
	adds r3, #1
	cmp r3, #0x30
	ble .L080947E0
	adds r0, r4, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L08094810: .4byte 0x000021D4

	thumb_func_start func_08094814
func_08094814: @ 0x08094814
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq .L08094824
	bl __builtin_vec_delete
.L08094824:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq .L0809482E
	bl __builtin_vec_delete
.L0809482E:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq .L0809483C
	adds r0, r4, #0
	bl __builtin_delete
.L0809483C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08094844
func_08094844: @ 0x08094844
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, [r4, #4]
	ldr r0, [r4]
	ldr r2, .L080948D0 @ =0x000021CC
	adds r1, r0, r2
	ldr r7, [r1]
	ldr r1, [r1, #4]
	str r1, [sp]
	adds r0, #0x14
	bl method_08009AF4__C4Farm
	mov sb, r0
	ldr r0, [r4]
	ldr r1, .L080948D4 @ =0x00001BD8
	adds r0, r0, r1
	bl func_0800E4E0
	mov sl, r0
	ldr r0, [r4]
	ldr r2, .L080948D8 @ =0x00001CD4
	adds r0, r0, r2
	bl func_080A0A04
	bl func_0809EACC
	mov r8, r0
	ldr r5, [r4]
	ldr r0, .L080948DC @ =0x000021DC
	adds r5, r5, r0
	str r7, [r4, #0xc]
	ldr r1, [sp]
	str r1, [r4, #0x10]
	adds r0, r4, #0
	adds r1, r6, #0
	mov r2, sb
	bl func_08094994
	adds r1, r6, #0
	adds r1, #0xd
	adds r0, r4, #0
	mov r2, sl
	bl func_08094994
	adds r1, r6, #0
	adds r1, #0x1a
	adds r0, r4, #0
	mov r2, r8
	bl func_08094994
	adds r6, #0x27
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #4
	bl func_08094974
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080948D0: .4byte 0x000021CC
.L080948D4: .4byte 0x00001BD8
.L080948D8: .4byte 0x00001CD4
.L080948DC: .4byte 0x000021DC

	thumb_func_start func_080948E0
func_080948E0: @ 0x080948E0
	ldr r0, .L080948E8 @ =gUnk_08100A98
	ldr r0, [r0]
	bx lr
	.align 2, 0
.L080948E8: .4byte gUnk_08100A98

	thumb_func_start func_080948EC
func_080948EC: @ 0x080948EC
	ldr r0, .L080948F4 @ =gUnk_08100AA0
	ldr r0, [r0]
	bx lr
	.align 2, 0
.L080948F4: .4byte gUnk_08100AA0
