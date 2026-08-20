.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_08050E0C
func_08050E0C: @ 0x08050E0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x28]
	ldr r6, [sp, #0x2c]
	ldr r7, [sp, #0x30]
	ldr r0, [r0]
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	bl func_08050478
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050E30
func_08050E30: @ 0x08050E30
	push {r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x1c]
	ldr r5, [sp, #0x20]
	ldr r6, [sp, #0x24]
	ldr r0, [r0]
	str r4, [sp]
	str r5, [sp, #4]
	str r6, [sp, #8]
	bl func_08050664
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_08050E50
func_08050E50: @ 0x08050E50
	push {lr}
	ldr r0, [r0]
	bl func_08050AD8
	pop {r0}
	bx r0

	thumb_func_start func_08050E5C
func_08050E5C: @ 0x08050E5C
	push {lr}
	ldr r0, [r0]
	bl func_08050B3C
	pop {r0}
	bx r0

	thumb_func_start func_08050E68
func_08050E68: @ 0x08050E68
	ldr r3, .Lfranglais_scene_speaker
	bx r3
	nop
	nop
	.align 2, 0
.Lfranglais_scene_speaker: .4byte 0x08801C25

	thumb_func_start func_08050E74
func_08050E74: @ 0x08050E74
	push {lr}
	ldr r0, [r0]
	bl func_08050C18
	pop {r0}
	bx r0

	thumb_func_start func_08050E80
func_08050E80: @ 0x08050E80
	push {lr}
	ldr r0, [r0]
	bl func_08050C2C
	pop {r0}
	bx r0

	thumb_func_start func_08050E8C
func_08050E8C: @ 0x08050E8C
	push {lr}
	ldr r0, [r0]
	bl func_08050C64
	pop {r0}
	bx r0

	thumb_func_start func_08050E98
func_08050E98: @ 0x08050E98
	push {r4, lr}
	ldr r3, [r0]
	movs r0, #0xaa
	lsls r0, r0, #3
	adds r3, r3, r0
	ldrb r4, [r3]
	lsls r0, r4, #0x1a
	lsrs r0, r0, #0x1a
	adds r2, r0, #0
	bics r2, r1
	movs r1, #0x40
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r3]
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start func_08050EBC
func_08050EBC: @ 0x08050EBC
	push {r4, lr}
	ldr r3, [r0]
	movs r0, #0xaa
	lsls r0, r0, #3
	adds r3, r3, r0
	ldrb r4, [r3]
	lsls r0, r4, #0x1a
	lsrs r0, r0, #0x1a
	orrs r1, r0
	movs r2, #0x3f
	ands r1, r2
	movs r2, #0x40
	rsbs r2, r2, #0
	ands r2, r4
	orrs r2, r1
	strb r2, [r3]
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
.L08050EE4:
	.byte 0x70, 0xB5, 0x04, 0x9E, 0x00, 0x24, 0x04, 0x60, 0x44, 0x60, 0x13, 0x4C
	.byte 0x84, 0x60, 0x1F, 0x24, 0x21, 0x40, 0x05, 0x7B, 0x20, 0x24, 0x64, 0x42, 0x2C, 0x40, 0x0C, 0x43
	.byte 0x04, 0x73, 0x0F, 0x4C, 0x21, 0x1C, 0x0A, 0x40, 0x52, 0x01, 0x84, 0x89, 0x0D, 0x49, 0x21, 0x40
	.byte 0x11, 0x43, 0x81, 0x81, 0x0F, 0x22, 0x1A, 0x40, 0xD2, 0x03, 0xC1, 0x68, 0x0A, 0x4B, 0x19, 0x40
	.byte 0x11, 0x43, 0xC1, 0x60, 0x0F, 0x21, 0x0E, 0x40, 0xF6, 0x00, 0x82, 0x7B, 0x79, 0x21, 0x49, 0x42
	.byte 0x11, 0x40, 0x31, 0x43, 0x81, 0x73, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x78, 0x78, 0x0E, 0x08
	.byte 0xFF, 0x03, 0x00, 0x00, 0x1F, 0x80, 0xFF, 0xFF, 0xFF, 0x7F, 0xF8, 0xFF, 0x00, 0xB5, 0x00, 0x79
	.byte 0x01, 0x1C, 0x00, 0x28, 0x00, 0xD0, 0x01, 0x21, 0x08, 0x1C, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00
	.byte 0x02, 0x4B, 0x03, 0x60, 0x09, 0x68, 0x41, 0x60, 0x02, 0x72, 0x70, 0x47, 0xA8, 0x78, 0x0E, 0x08
	.byte 0x80, 0x7E, 0x70, 0x47, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x10, 0x1C, 0x02, 0x28, 0x02, 0xD9
	.byte 0x03, 0x21, 0x7F, 0xF0, 0xE4, 0xFF, 0xE0, 0x82, 0x28, 0x1C, 0x1B, 0x28, 0x02, 0xD9, 0x1C, 0x21
	.byte 0x7F, 0xF0, 0xDD, 0xFF, 0xA0, 0x82, 0x00, 0x20, 0x60, 0x76, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47
	.byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x8A, 0xB0, 0x04, 0x90, 0x09, 0x91
	.byte 0x40, 0x68, 0x41, 0x68, 0xB6, 0xF7, 0x84, 0xFA, 0x00, 0x28, 0x00, 0xDA, 0x84, 0xE0, 0x00, 0x21
	.byte 0x6B, 0x22, 0x91, 0x46, 0x02, 0xAF, 0xBA, 0x46, 0x00, 0x01, 0x06, 0x90, 0x04, 0x9A, 0x10, 0x7E
	.byte 0x08, 0x18, 0x02, 0x28, 0x00, 0xDD, 0x03, 0x38, 0x80, 0x00, 0x04, 0x9F, 0xC0, 0x19, 0x80, 0x68
	.byte 0x08, 0x22, 0x90, 0x46, 0x01, 0x31, 0x05, 0x91, 0x4F, 0x46, 0x11, 0x37, 0x07, 0x97, 0x54, 0x46
	.byte 0x06, 0x1D, 0x05, 0x1C, 0x06, 0x23, 0x00, 0x20, 0x00, 0x21, 0x00, 0x90, 0x01, 0x91, 0x80, 0x20
	.byte 0x40, 0x01, 0x00, 0x9A, 0x02, 0x43, 0x0E, 0x48, 0x02, 0x40, 0x80, 0x20, 0xC0, 0x01, 0x02, 0x43
	.byte 0x0C, 0x48, 0x02, 0x40, 0x80, 0x20, 0x00, 0x06, 0x02, 0x43, 0x00, 0x92, 0xA9, 0x68, 0x48, 0x42
	.byte 0x08, 0x43, 0x00, 0x28, 0x12, 0xDA, 0x30, 0x1C, 0x08, 0x93, 0xB6, 0xF7, 0x8F, 0xFE, 0x80, 0x05
	.byte 0x80, 0x0D, 0x05, 0x4A, 0x01, 0x99, 0x11, 0x40, 0x01, 0x43, 0x01, 0x91, 0x08, 0x9B, 0x0B, 0xE0
	.byte 0xFF, 0x3F, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x3F, 0x00, 0xFC, 0xFF, 0xFF, 0x22, 0x48, 0x10, 0x40
	.byte 0x80, 0x21, 0x89, 0x00, 0x08, 0x43, 0x00, 0x90, 0x00, 0x98, 0x01, 0x99, 0x02, 0x90, 0x03, 0x91
	.byte 0x48, 0x46, 0x01, 0x06, 0x09, 0x0E, 0x1D, 0x4A, 0x02, 0x98, 0x10, 0x40, 0x08, 0x43, 0x02, 0x90
	.byte 0x1B, 0x49, 0x08, 0x1C, 0x42, 0x46, 0x02, 0x40, 0x60, 0x88, 0x1A, 0x4F, 0x39, 0x1C, 0x08, 0x40
	.byte 0x10, 0x43, 0x60, 0x80, 0x61, 0x79, 0x0F, 0x20, 0x08, 0x40, 0x06, 0x99, 0x08, 0x43, 0x60, 0x71
	.byte 0x09, 0x9F, 0x3A, 0x78, 0x7F, 0x2A, 0x0A, 0xD8, 0xD0, 0x00, 0x04, 0x30, 0x38, 0x18, 0x02, 0x99
	.byte 0x01, 0x60, 0x57, 0x46, 0xB9, 0x88, 0x81, 0x80, 0x50, 0x1C, 0x09, 0x99, 0x08, 0x70, 0x10, 0x36
	.byte 0x10, 0x35, 0x01, 0x3B, 0x20, 0x22, 0x90, 0x44, 0x00, 0x2B, 0x9C, 0xDA, 0x05, 0x99, 0x07, 0x9F
	.byte 0xB9, 0x46, 0x02, 0x29, 0x00, 0xDC, 0x81, 0xE7, 0x0A, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46
	.byte 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xFF, 0xFC, 0xFF, 0xFF, 0x00, 0xFF, 0xFF, 0xFF
	.byte 0xFF, 0x01, 0x00, 0x00, 0x00, 0xFE, 0xFF, 0xFF, 0xF0, 0xB5, 0x4F, 0x46, 0x46, 0x46, 0xC0, 0xB4
	.byte 0x80, 0x46, 0x00, 0x21, 0x00, 0x27, 0x88, 0x00, 0x01, 0x31, 0x89, 0x46, 0x41, 0x46, 0x46, 0x18
	.byte 0x08, 0x36, 0x30, 0x68, 0x39, 0x01, 0x45, 0x18, 0x28, 0x7B, 0x00, 0x28, 0x14, 0xD0, 0x2A, 0x1D
	.byte 0x51, 0x68, 0x48, 0x42, 0x08, 0x43, 0x00, 0x28, 0x0C, 0xDA, 0x2C, 0x68, 0x04, 0x34, 0x10, 0x1C
	.byte 0xB6, 0xF7, 0x14, 0xFE, 0x01, 0x1C, 0x49, 0x01, 0x0F, 0x48, 0x09, 0x18, 0x20, 0x1C, 0x40, 0x22
	.byte 0x82, 0xF0, 0x0C, 0xFB, 0x00, 0x20, 0x28, 0x73, 0x01, 0x37, 0x06, 0x2F, 0xE1, 0xDD, 0x49, 0x46
	.byte 0x02, 0x29, 0xD7, 0xDD, 0x41, 0x46, 0x48, 0x7E, 0x00, 0x28, 0x01, 0xD0, 0x00, 0x20, 0x48, 0x76
	.byte 0x41, 0x46, 0x88, 0x7E, 0x00, 0x28, 0x01, 0xD0, 0x00, 0x20, 0x88, 0x76, 0x18, 0xBC, 0x98, 0x46
	.byte 0xA1, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x01, 0x06, 0xF0, 0xB5, 0x57, 0x46
	.byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x85, 0xB0, 0x81, 0x46, 0x03, 0x92, 0x4D, 0x48, 0x4A, 0x46
	.byte 0x10, 0x60, 0x51, 0x60, 0x49, 0x46, 0x08, 0x31, 0x02, 0x20, 0x00, 0x23, 0x01, 0x22, 0x52, 0x42
	.byte 0x08, 0xC1, 0x01, 0x38, 0x90, 0x42, 0xFB, 0xD1, 0x00, 0x21, 0x00, 0x20, 0x4A, 0x46, 0x90, 0x82
	.byte 0xD0, 0x82, 0x11, 0x76, 0x51, 0x76, 0x91, 0x76, 0xD1, 0x76, 0x00, 0x24, 0x70, 0x20, 0xAF, 0xF7
	.byte 0x11, 0xFA, 0x80, 0x46, 0x45, 0x46, 0x06, 0x26, 0xA0, 0x00, 0x82, 0x46, 0x01, 0x34, 0x04, 0x94
	.byte 0x82, 0x20, 0x40, 0x00, 0xAF, 0xF7, 0x06, 0xFA, 0x2C, 0x1C, 0x01, 0xC4, 0x20, 0x1C, 0xB6, 0xF7
	.byte 0x51, 0xFB, 0x00, 0x21, 0x61, 0x60, 0x29, 0x73, 0x10, 0x35, 0x01, 0x3E, 0x01, 0x20, 0x40, 0x42
	.byte 0x86, 0x42, 0xED, 0xD1, 0x57, 0x46, 0x4F, 0x44, 0x08, 0x37, 0x3E, 0x68, 0xB0, 0x45, 0x17, 0xD0
	.byte 0x00, 0x2E, 0x15, 0xD0, 0x35, 0x1C, 0x70, 0x35, 0xAE, 0x42, 0x0E, 0xD0, 0x10, 0x3D, 0x2C, 0x1D
	.byte 0x61, 0x68, 0x20, 0x1C, 0xB6, 0xF7, 0x10, 0xFD, 0x20, 0x1C, 0x02, 0x21, 0xB6, 0xF7, 0xEC, 0xFB
	.byte 0x28, 0x68, 0xAF, 0xF7, 0xF9, 0xF9, 0xAE, 0x42, 0xF0, 0xD1, 0x30, 0x1C, 0xAF, 0xF7, 0xF4, 0xF9
	.byte 0x42, 0x46, 0x3A, 0x60, 0x00, 0x20, 0x80, 0x46, 0x56, 0x46, 0x4E, 0x44, 0x08, 0x36, 0x02, 0xAF
	.byte 0x31, 0x68, 0x42, 0x46, 0x10, 0x01, 0x0D, 0x18, 0x68, 0x46, 0x03, 0x99, 0x03, 0x22, 0xB7, 0xF7
	.byte 0xC7, 0xF8, 0x2C, 0x1D, 0xA5, 0x45, 0x08, 0xD0, 0x61, 0x68, 0x20, 0x1C, 0xB6, 0xF7, 0xEC, 0xFC
	.byte 0x01, 0x99, 0x20, 0x1C, 0xB6, 0xF7, 0x40, 0xFD, 0x60, 0x60, 0x01, 0x99, 0x68, 0x46, 0xB6, 0xF7
	.byte 0xE3, 0xFC, 0x68, 0x46, 0x02, 0x21, 0xB6, 0xF7, 0xBF, 0xFB, 0x61, 0x68, 0x48, 0x42, 0x08, 0x43
	.byte 0xC0, 0x0F, 0x00, 0x28, 0x0A, 0xD0, 0x29, 0x68, 0x04, 0x20, 0x02, 0x22, 0x38, 0x80, 0x7A, 0x80
	.byte 0x02, 0x98, 0x04, 0x31, 0x00, 0x22, 0xFD, 0xF7, 0x8B, 0xFA, 0x01, 0x20, 0x28, 0x73, 0x01, 0x20
	.byte 0x80, 0x44, 0x41, 0x46, 0x06, 0x29, 0xCB, 0xDD, 0x04, 0x9C, 0x02, 0x2C, 0x86, 0xDD, 0x4A, 0x46
	.byte 0x90, 0x76, 0x48, 0x46, 0x05, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0xC0, 0x78, 0x0E, 0x08, 0x00, 0xB5, 0x00, 0x7E, 0x08, 0x18, 0x02, 0x28
	.byte 0x00, 0xDD, 0x03, 0x38, 0x02, 0xBC, 0x08, 0x47, 0x89, 0x00, 0x09, 0x18, 0x88, 0x68, 0x70, 0x47
	.byte 0x89, 0x00, 0x09, 0x18, 0x88, 0x68, 0x70, 0x47, 0x30, 0xB5, 0x03, 0xAC, 0x25, 0x78, 0x00, 0x24
	.byte 0x04, 0x60, 0x44, 0x60, 0x0B, 0x4C, 0x84, 0x60, 0xC1, 0x60, 0x02, 0x61, 0x0A, 0x4A, 0x11, 0x1C
	.byte 0x0B, 0x40, 0x82, 0x8A, 0x09, 0x49, 0x11, 0x40, 0x19, 0x43, 0x81, 0x82, 0x42, 0x7D, 0x41, 0x21
	.byte 0x49, 0x42, 0x11, 0x40, 0xED, 0x01, 0x7F, 0x22, 0x11, 0x40, 0x29, 0x43, 0x41, 0x75, 0x30, 0xBC
	.byte 0x02, 0xBC, 0x08, 0x47, 0xE0, 0x78, 0x0E, 0x08, 0xFF, 0x3F, 0x00, 0x00, 0x00, 0xC0, 0xFF, 0xFF

	thumb_func_start func_08051320
func_08051320: @ 0x08051320
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov sl, r0
	adds r6, r1, #0
	adds r7, r2, #0
	mov ip, r3
	movs r1, #0x1f
	ands r6, r1
	adds r0, r6, r3
	cmp r0, #0x20
	bls .L08051344
	movs r0, #0x20
	subs r0, r0, r6
	mov ip, r0
.L08051344:
	ands r7, r1
	ldr r1, [sp, #0x2c]
	adds r0, r7, r1
	cmp r0, #0x20
	bls .L08051354
	movs r0, #0x20
	subs r0, r0, r7
	str r0, [sp, #0x2c]
.L08051354:
	ldr r2, .L08051438 @ =0x000003FF
	adds r1, r2, #0
	ldr r0, [sp, #0x30]
	adds r4, r0, #0
	ands r4, r1
	ldr r0, [sp, #0x34]
	lsls r0, r0, #0xc
	movs r2, #0xf0
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	orrs r4, r0
	lsls r0, r7, #6
	mov r1, sl
	adds r5, r1, r0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	adds r0, r4, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	lsls r2, r6, #1
	adds r3, r5, r2
	strh r4, [r3]
	adds r3, #2
	mov r0, ip
	adds r1, r6, r0
	lsls r0, r1, #1
	subs r0, #2
	adds r0, r5, r0
	str r1, [sp, #8]
	ldr r1, [sp, #0x2c]
	adds r7, r7, r1
	str r2, [sp]
.L0805139C:
	mov r2, r8
	strh r2, [r3]
	adds r3, #2
	cmp r3, r0
	bne .L0805139C
	mov r0, sb
	strh r0, [r3]
	adds r5, #0x40
	adds r0, r4, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r0, r4, #3
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	adds r0, #8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r0, r7, #6
	subs r0, #0x40
	mov r1, sl
	adds r2, r1, r0
	adds r0, r4, #5
	mov ip, r0
	adds r1, r4, #7
	mov sl, r1
	adds r4, #6
	str r4, [sp, #4]
	ldr r7, [sp]
	ldr r1, [sp, #8]
	lsls r0, r1, #1
	subs r4, r0, #2
.L080513E0:
	adds r0, r5, r7
	mov r1, sb
	strh r1, [r0]
	adds r0, #2
	adds r1, r5, r4
	adds r3, r5, #0
	adds r3, #0x40
.L080513EE:
	strh r6, [r0]
	adds r0, #2
	cmp r0, r1
	bne .L080513EE
	mov r1, r8
	strh r1, [r0]
	adds r5, r3, #0
	cmp r3, r2
	bne .L080513E0
	mov r2, sl
	lsls r0, r2, #0x10
	lsrs r4, r0, #0x10
	ldr r1, [sp, #4]
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	ldr r0, [sp]
	adds r2, r3, r0
	mov r1, ip
	strh r1, [r2]
	adds r2, #2
	ldr r1, [sp, #8]
	lsls r0, r1, #1
	subs r0, #2
	adds r0, r3, r0
.L0805141E:
	strh r4, [r2]
	adds r2, #2
	cmp r2, r0
	bne .L0805141E
	strh r5, [r2]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08051438: .4byte 0x000003FF

	thumb_func_start func_0805143C
func_0805143C: @ 0x0805143C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	adds r4, r1, #0
	mov r3, sp
	movs r1, #0x1e
	movs r2, #1
	movs r6, #0
	movs r5, #0
	mov r0, sp
	strh r1, [r0]
	strh r2, [r3, #2]
	adds r0, r7, #0
	mov r1, sp
	bl func_080084DC
	ldr r0, .L080514F8 @ =vtable_unk_080E7928
	str r0, [r7, #4]
	str r4, [r7, #8]
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #2
	bl func_08008B54
	adds r4, r7, #0
	adds r4, #0x10
	ldr r1, .L080514FC @ =gUnk_08527094
	adds r0, r4, #0
	bl func_0805E6CC
	adds r0, r7, #0
	adds r0, #0x40
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x54
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r6, [r0, #0x10]
	strb r6, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r6, [r0, #0x18]
	adds r0, #0x20
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0x80
	lsls r3, r3, #1
	bl func_0805E824
	adds r0, r7, #0
	adds r0, #0x88
	strh r5, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	strh r5, [r0, #8]
	str r5, [r0, #0xc]
	strb r6, [r0, #0x10]
	strb r6, [r0, #0x11]
	str r5, [r0, #0x14]
	strb r6, [r0, #0x18]
	adds r4, #0x98
	adds r0, r4, #0
	bl func_08007874
	adds r0, r4, #0
	movs r1, #4
	bl func_08007B54
	str r0, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007128
	adds r0, r4, #0
	bl func_0800736C
	str r0, [r4, #4]
	ldr r1, .L08051500 @ =0x000008B8
	adds r0, r7, r1
	strh r5, [r0]
	adds r0, r7, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080514F8: .4byte vtable_unk_080E7928
.L080514FC: .4byte gUnk_08527094
.L08051500: .4byte 0x000008B8

	thumb_func_start func_08051504
func_08051504: @ 0x08051504
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sb, r0
	adds r6, r1, #0
	adds r0, r6, #0
	bl func_08008724
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
	movs r5, #0
	str r5, [r4]
	str r5, [r4, #4]
	ldr r0, .L080515A0 @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xc
	bl func_08009300
	str r4, [sp, #4]
	adds r0, r6, #0
	bl func_080516F0
	ldr r0, [sp, #4]
	ldr r1, .L080515A4 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	ldr r1, .L080515A8 @ =0x000008BC
	adds r0, r6, r1
	str r5, [r0]
	movs r7, #0
	add r3, sp, #8
	mov r8, r3
	add r0, sp, #0xc
	mov sl, r0
	adds r5, r6, r1
.L08051584:
	adds r0, r6, #0
	bl func_080087C8
	adds r0, r6, #0
	bl func_080088B8
	ldr r0, [r5]
	cmp r0, #1
	beq .L080515C8
	cmp r0, #1
	bgt .L080515AC
	cmp r0, #0
	beq .L080515B6
	b .L0805169A
	.align 2, 0
.L080515A0: .4byte vtable_unk_080E5B80
.L080515A4: .4byte 0x00000889
.L080515A8: .4byte 0x000008BC
.L080515AC:
	cmp r0, #2
	beq .L08051664
	cmp r0, #3
	beq .L0805168C
	b .L0805169A
.L080515B6:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0805169A
	movs r0, #1
	str r0, [r5]
	b .L0805169A
.L080515C8:
	adds r0, r6, #0
	bl func_080088C4
	movs r1, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0
	beq .L080515F8
	ldr r3, .L080515F4 @ =0x000008B8
	adds r1, r6, r3
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble .L08051618
	movs r0, #0x20
	strh r0, [r1]
	b .L08051618
	.align 2, 0
.L080515F4: .4byte 0x000008B8
.L080515F8:
	adds r0, r6, #0
	bl func_080088C4
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq .L08051618
	ldr r0, .L08051660 @ =0x000008B8
	adds r1, r6, r0
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge .L08051618
	strh r4, [r1]
.L08051618:
	movs r4, #0
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne .L08051636
	adds r0, r6, #0
	bl func_080088CC
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq .L08051638
.L08051636:
	movs r4, #1
.L08051638:
	cmp r4, #0
	beq .L0805164A
	adds r0, r6, #0
	adds r0, #0xc
	movs r1, #0xc6
	bl func_08008B6C
	movs r0, #2
	str r0, [r5]
.L0805164A:
	adds r0, r6, #0
	bl func_08008918
	mov r2, sp
	ldr r3, .L08051660 @ =0x000008B8
	adds r1, r6, r3
	ldrh r1, [r1]
	strh r1, [r2]
	strh r1, [r0, #0x16]
	b .L0805169A
	.align 2, 0
.L08051660: .4byte 0x000008B8
.L08051664:
	ldr r0, [sp, #4]
	adds r0, #0xc
	ldr r1, .L08051688 @ =0x00000889
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r6, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #4]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r0, #3
	str r0, [r5]
	b .L0805169A
	.align 2, 0
.L08051688: .4byte 0x00000889
.L0805168C:
	ldr r0, [sp, #4]
	ldr r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	cmp r0, #0
	blt .L0805169A
	movs r7, #1
.L0805169A:
	adds r0, r6, #0
	bl func_08051D70
	cmp r7, #0
	bne .L080516A6
	b .L08051584
.L080516A6:
	movs r0, #0
	str r0, [sp, #8]
	mov r1, r8
	str r1, [sp, #0xc]
	mov r3, sl
	str r0, [r3, #4]
	str r0, [r1]
	mov r1, sb
	str r0, [r1]
	ldr r1, [sp, #8]
	cmp r1, #0
	beq .L080516CA
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080516CA:
	ldr r1, [sp, #4]
	cmp r1, #0
	beq .L080516DC
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080516DC:
	mov r0, sb
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080516F0
func_080516F0: @ 0x080516F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, .L080519B8 @ =0xFFFFF58C
	add sp, r4
	mov sl, r0
	bl func_08008918
	add r1, sp, #0xc
	movs r4, #0
	strh r4, [r1]
	strh r4, [r0, #0x10]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	movs r1, #4
	strh r1, [r2]
	strh r1, [r0, #0x12]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
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
	ldr r1, .L080519BC @ =0x06007FE0
	movs r0, #0
	movs r2, #0x20
	bl func_08008EB8
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, .L080519C0 @ =0x0600E000
	mov r8, r0
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L080519C4 @ =0x0600E800
	mov sb, r1
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L080519C8 @ =0x0600F000
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L080519CC @ =0x0600F800
	adds r0, r4, #0
	adds r2, r5, #0
	bl func_08008EB8
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	movs r2, #0xfa
	lsls r2, r2, #5
	adds r4, r2, #0
	strh r4, [r1]
	movs r6, #0
	strh r4, [r0]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080519D0 @ =0x00001C43
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xe]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080519D4 @ =0x00001D41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	mov r0, sl
	bl func_08008918
	add r2, sp, #0xc
	ldr r3, .L080519D8 @ =0x00001E42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	mov r0, sl
	bl func_08008918
	add r1, sp, #0xc
	strh r4, [r1]
	strh r4, [r0, #8]
	ldr r0, .L080519DC @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L080519E0 @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L080519E4 @ =0x00030003
	mov r1, r8
	adds r2, r5, #0
	bl func_08008EB8
	movs r0, #3
	str r0, [sp]
	str r6, [sp, #4]
	str r6, [sp, #8]
	mov r0, sb
	movs r1, #0
	movs r2, #0
	movs r3, #0x20
	bl func_08051320
	ldr r0, .L080519E8 @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r1, .L080519EC @ =0x05000040
	movs r4, #0xf8
	lsls r4, r4, #2
	adds r0, r4, #0
	strh r0, [r1]
	ldr r0, .L080519F0 @ =0x05000042
	strh r6, [r0]
	adds r1, #4
	ldr r2, .L080519F4 @ =0x00004218
	adds r0, r2, #0
	strh r0, [r1]
	movs r3, #0
	mov sb, r3
	ldr r7, .L080519F8 @ =0x00000A1C
	add r7, sp
	mov r4, sp
	adds r4, #0x14
	ldr r0, .L080519FC @ =0x00000A4C
	add r0, sp
	str r4, [r0]
	movs r1, #0xa2
	lsls r1, r1, #4
	add r1, sp
	ldr r2, .L08051A00 @ =0x00000A64
	add r2, sp
	str r1, [r2]
	ldr r3, .L08051A04 @ =0x00000A24
	add r3, sp
	ldr r4, .L08051A08 @ =0x00000A68
	add r4, sp
	str r3, [r4]
	mov r0, sp
	adds r0, #0x58
	ldr r1, .L08051A0C @ =0x00000A5C
	add r1, sp
	str r0, [r1]
	movs r2, #0xa3
	lsls r2, r2, #4
	add r2, sp
	ldr r3, .L08051A10 @ =0x00000A6C
	add r3, sp
	str r2, [r3]
	ldr r4, .L08051A14 @ =0x00000A34
	add r4, sp
	movs r0, #0xa7
	lsls r0, r0, #4
	add r0, sp
	str r4, [r0]
	movs r1, #0xd7
	lsls r1, r1, #2
	add r1, sp
	ldr r2, .L08051A18 @ =0x00000A54
	add r2, sp
	str r1, [r2]
	mov r3, sp
	adds r3, #0x1c
	movs r4, #0xa5
	lsls r4, r4, #4
	add r4, sp
	str r3, [r4]
	movs r0, #1
	mov r8, r0
	ldr r5, .L08051A1C @ =0x06001800
	adds r6, r7, #0
	ldr r4, .L08051A20 @ =gUnk_080FA12E
.L080518B0:
	ldrh r1, [r4]
	mov r2, r8
	strh r2, [r6]
	movs r3, #2
	strh r3, [r7, #2]
	ldr r0, [r6]
	str r1, [sp]
	movs r1, #0
	str r1, [sp, #4]
	mov r2, r8
	str r2, [sp, #8]
	add r1, sp, #0x14
	movs r2, #0
	movs r3, #0
	bl func_0804E5AC
	ldr r3, .L080519FC @ =0x00000A4C
	add r3, sp
	ldr r0, [r3]
	adds r1, r5, #0
	movs r2, #0x40
	bl func_08008E64
	adds r5, #0x40
	adds r4, #2
	movs r0, #1
	add sb, r0
	mov r1, sb
	cmp r1, #0xc
	ble .L080518B0
	ldr r0, .L08051A24 @ =0x03FF03FF
	mov r4, sl
	adds r4, #0xb8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r4, #0
	bl func_08008EB8
	movs r1, #0
	movs r0, #0xa2
	lsls r0, r0, #4
	add r0, sp
	strb r1, [r0]
	ldr r2, .L08051A00 @ =0x00000A64
	add r2, sp
	ldr r2, [r2]
	strh r1, [r2, #2]
	ldr r3, .L08051A28 @ =0x00000A38
	add r3, sp
	str r1, [r3]
	movs r0, #0xfa
	lsls r0, r0, #2
	ldr r1, .L08051A2C @ =0x00000A3C
	add r1, sp
	str r0, [r1]
	movs r2, #0
	mov r8, r2
	ldr r3, .L08051A30 @ =0x00000A44
	add r3, sp
	str r4, [r3]
	adds r4, #0x40
	ldr r0, .L08051A34 @ =0x00000A48
	add r0, sp
	str r4, [r0]
	mov r1, sl
	adds r1, #0x40
	movs r2, #0xa6
	lsls r2, r2, #4
	add r2, sp
	str r1, [r2]
	mov r3, sl
	adds r3, #0xb0
	movs r4, #0xa4
	lsls r4, r4, #4
	add r4, sp
	str r3, [r4]
	ldr r0, .L08051A38 @ =0x00000A28
	add r0, sp
	mov sb, r0
.L0805194E:
	mov r1, sl
	ldr r0, [r1, #8]
	ldr r2, .L08051A3C @ =0x00002C4C
	adds r0, r0, r2
	ldr r3, .L08051A00 @ =0x00000A64
	add r3, sp
	ldr r1, [r3]
	mov r2, r8
	bl func_080522D8
	ldr r0, .L08051A04 @ =0x00000A24
	add r0, sp
	movs r4, #0xc
	strh r4, [r0]
	movs r2, #2
	ldr r1, .L08051A08 @ =0x00000A68
	add r1, sp
	ldr r1, [r1]
	strh r2, [r1, #2]
	ldr r0, [r0]
	add r1, sp, #0x58
	movs r2, #0
	bl func_0804E7A0
	movs r0, #0xa2
	lsls r0, r0, #4
	add r0, sp
	ldrb r4, [r0]
	cmp r4, #0
	bne .L08051A44
	mov r2, sl
	ldr r0, [r2, #8]
	ldr r3, .L08051A40 @ =0x00001C70
	adds r0, r0, r3
	bl GetName__C6Animal
	movs r2, #0xc
	mov r1, sb
	strh r2, [r1]
	movs r3, #2
	strh r3, [r1, #2]
	ldr r1, [r1]
	str r0, [sp]
	str r4, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	adds r0, r1, #0
	add r1, sp, #0x58
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	b .L08051A72
	.align 2, 0
.L080519B8: .4byte 0xFFFFF58C
.L080519BC: .4byte 0x06007FE0
.L080519C0: .4byte 0x0600E000
.L080519C4: .4byte 0x0600E800
.L080519C8: .4byte 0x0600F000
.L080519CC: .4byte 0x0600F800
.L080519D0: .4byte 0x00001C43
.L080519D4: .4byte 0x00001D41
.L080519D8: .4byte 0x00001E42
.L080519DC: .4byte gUnk_080F9F70
.L080519E0: .4byte gUnk_080F9F74
.L080519E4: .4byte 0x00030003
.L080519E8: .4byte gUnk_080F9F78
.L080519EC: .4byte 0x05000040
.L080519F0: .4byte 0x05000042
.L080519F4: .4byte 0x00004218
.L080519F8: .4byte 0x00000A1C
.L080519FC: .4byte 0x00000A4C
.L08051A00: .4byte 0x00000A64
.L08051A04: .4byte 0x00000A24
.L08051A08: .4byte 0x00000A68
.L08051A0C: .4byte 0x00000A5C
.L08051A10: .4byte 0x00000A6C
.L08051A14: .4byte 0x00000A34
.L08051A18: .4byte 0x00000A54
.L08051A1C: .4byte 0x06001800
.L08051A20: .4byte gUnk_080FA12E
.L08051A24: .4byte 0x03FF03FF
.L08051A28: .4byte 0x00000A38
.L08051A2C: .4byte 0x00000A3C
.L08051A30: .4byte 0x00000A44
.L08051A34: .4byte 0x00000A48
.L08051A38: .4byte 0x00000A28
.L08051A3C: .4byte 0x00002C4C
.L08051A40: .4byte 0x00001C70
.L08051A44:
	ldrb r0, [r0]
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #1
	ldr r0, .L08051CE0 @ =gUnk_080F9F7C
	adds r1, r1, r0
	ldr r0, .L08051CE4 @ =0x00000A2C
	add r0, sp
	movs r2, #0xc
	strh r2, [r0]
	movs r3, #2
	strh r3, [r0, #2]
	ldr r0, [r0]
	str r1, [sp]
	movs r4, #0
	str r4, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	add r1, sp, #0x58
	movs r2, #0
	movs r3, #0
	bl func_0804E958
.L08051A72:
	mov r2, r8
	lsls r5, r2, #1
	adds r4, r5, r2
	lsls r1, r4, #8
	ldr r3, .L08051CE8 @ =0x06002800
	adds r1, r1, r3
	ldr r2, .L08051CEC @ =0x00000A5C
	add r2, sp
	ldr r0, [r2]
	movs r2, #0xc0
	lsls r2, r2, #2
	bl func_08008E64
	lsls r4, r4, #0x13
	movs r3, #0x85
	lsls r3, r3, #0x16
	adds r4, r4, r3
	lsrs r7, r4, #0x10
	movs r4, #0
	mov r0, r8
	adds r0, #1
	ldr r1, .L08051CF0 @ =0x00000A58
	add r1, sp
	str r0, [r1]
	adds r2, r5, #4
	lsls r2, r2, #6
	adds r0, r5, #5
	lsls r0, r0, #6
	adds r6, r7, #0
	adds r6, #0xc
	ldr r3, .L08051CF4 @ =0x00000A44
	add r3, sp
	ldr r1, [r3]
	adds r1, #0xe
	adds r3, r0, r1
	adds r2, r2, r1
.L08051ABA:
	adds r0, r7, r4
	strh r0, [r2]
	strh r6, [r3]
	adds r6, #1
	adds r3, #2
	adds r2, #2
	adds r4, #1
	cmp r4, #0xb
	ble .L08051ABA
	mov r4, r8
	cmp r4, #0
	beq .L08051AE6
	ldr r1, .L08051CF8 @ =0x00000A64
	add r1, sp
	ldr r1, [r1]
	movs r2, #2
	ldrsh r0, [r1, r2]
	ldr r2, .L08051CFC @ =0x00000A3C
	add r2, sp
	ldr r2, [r2]
	cmp r0, r2
	beq .L08051AFE
.L08051AE6:
	mov r3, r8
	ldr r4, .L08051D00 @ =0x00000A38
	add r4, sp
	str r3, [r4]
	ldr r0, .L08051CF8 @ =0x00000A64
	add r0, sp
	ldr r0, [r0]
	movs r1, #2
	ldrsh r0, [r0, r1]
	ldr r1, .L08051CFC @ =0x00000A3C
	add r1, sp
	str r0, [r1]
.L08051AFE:
	ldr r1, .L08051D00 @ =0x00000A38
	add r1, sp
	ldr r1, [r1]
	cmp r1, #9
	bne .L08051B14
	adds r2, r5, #4
	mov r0, sl
	movs r1, #2
	movs r3, #1
	bl func_08051D30
.L08051B14:
	adds r6, r5, #4
	ldr r2, .L08051D00 @ =0x00000A38
	add r2, sp
	ldr r0, [r2]
	adds r0, #1
	movs r1, #0xa
	bl __modsi3
	adds r3, r0, #0
	mov r0, sl
	movs r1, #4
	adds r2, r6, #0
	bl func_08051D30
	mov r0, sl
	movs r1, #1
	adds r2, r6, #0
	movs r3, #0xc
	bl func_08051D30
	ldr r3, .L08051CF8 @ =0x00000A64
	add r3, sp
	ldr r3, [r3]
	ldrh r0, [r3, #2]
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	movs r5, #0x64
	adds r0, r7, #0
	movs r1, #0x64
	bl __divsi3
	lsls r4, r0, #0x10
	asrs r3, r4, #0x10
	cmp r3, #0
	beq .L08051B64
	mov r0, sl
	movs r1, #0x14
	adds r2, r6, #0
	bl func_08051D30
.L08051B64:
	asrs r0, r4, #0x10
	muls r5, r0, r5
	subs r5, r7, r5
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	adds r0, r5, #0
	movs r1, #0xa
	bl __divsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	asrs r3, r4, #0x10
	mov r0, sl
	movs r1, #0x16
	adds r2, r6, #0
	bl func_08051D30
	mov r0, sl
	movs r1, #0x18
	adds r2, r6, #0
	movs r3, #0xa
	bl func_08051D30
	asrs r4, r4, #0x10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r5, r5, r0
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sl
	movs r1, #0x19
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08051D30
	mov r0, sl
	movs r1, #0x1b
	adds r2, r6, #0
	movs r3, #0xb
	bl func_08051D30
	ldr r4, .L08051CF0 @ =0x00000A58
	add r4, sp
	ldr r4, [r4]
	mov r8, r4
	cmp r4, #9
	bgt .L08051BC6
	b .L0805194E
.L08051BC6:
	ldr r1, .L08051D04 @ =0x0600F000
	movs r4, #0x80
	lsls r4, r4, #4
	ldr r2, .L08051CF4 @ =0x00000A44
	add r2, sp
	ldr r0, [r2]
	adds r2, r4, #0
	bl func_08008E64
	ldr r0, .L08051D08 @ =0x03FF03FF
	ldr r3, .L08051CF4 @ =0x00000A44
	add r3, sp
	ldr r1, [r3]
	adds r2, r4, #0
	bl func_08008EB8
	movs r4, #0x1b
	movs r5, #2
	movs r6, #0
	movs r0, #0xa3
	lsls r0, r0, #4
	add r0, sp
	strh r4, [r0]
	ldr r1, .L08051D0C @ =0x00000A6C
	add r1, sp
	ldr r1, [r1]
	strh r5, [r1, #2]
	ldr r0, [r0]
	add r1, sp, #0x35c
	movs r2, #0
	bl func_0804E7A0
	ldr r1, .L08051D10 @ =gUnk_080FA158
	movs r2, #1
	ldr r0, .L08051D14 @ =0x00000A34
	add r0, sp
	strh r4, [r0]
	movs r3, #0xa7
	lsls r3, r3, #4
	add r3, sp
	ldr r3, [r3]
	strh r5, [r3, #2]
	ldr r0, [r0]
	str r1, [sp]
	str r6, [sp, #4]
	str r2, [sp, #8]
	add r1, sp, #0x35c
	movs r2, #0
	movs r3, #0
	bl func_0804E958
	ldr r1, .L08051D18 @ =0x06002000
	movs r2, #0xd8
	lsls r2, r2, #3
	ldr r4, .L08051D1C @ =0x00000A54
	add r4, sp
	ldr r0, [r4]
	bl func_08008E64
	movs r5, #0x84
	lsls r5, r5, #6
	movs r3, #0
	adds r4, r5, #0
	adds r4, #0x1b
	movs r2, #0x9e
	lsls r2, r2, #1
	add r2, sl
	ldr r0, .L08051D20 @ =0x00000A48
	add r0, sp
	ldr r1, [r0]
	adds r1, #4
.L08051C54:
	adds r0, r5, r3
	strh r0, [r1]
	strh r4, [r2]
	adds r4, #1
	adds r2, #2
	adds r1, #2
	adds r3, #1
	cmp r3, #0x1a
	ble .L08051C54
	ldr r1, .L08051D24 @ =0x0600F800
	movs r2, #0x80
	lsls r2, r2, #4
	ldr r3, .L08051CF4 @ =0x00000A44
	add r3, sp
	ldr r0, [r3]
	bl func_08008E64
	mov r4, sl
	ldr r1, [r4, #0x40]
	ldr r3, [r1]
	movs r0, #0xa6
	lsls r0, r0, #4
	add r0, sp
	ldr r0, [r0]
	ldrh r2, [r0, #0xc]
	lsls r2, r2, #2
	ldr r0, [r4, #0x44]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0xc
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	ldr r4, [sp, #0x1c]
	movs r2, #0xa4
	lsls r2, r2, #4
	add r2, sp
	ldr r2, [r2]
	ldr r1, [r2, #4]
	movs r3, #0xa4
	lsls r3, r3, #4
	add r3, sp
	ldr r0, [r3]
	bl func_080074C0
	lsls r0, r0, #5
	ldr r2, .L08051D28 @ =0x05000200
	adds r1, r0, r2
	ldr r0, [sp, #0x1c]
	movs r2, #0
	cmp r0, #0
	beq .L08051CC6
	movs r3, #0xa5
	lsls r3, r3, #4
	add r3, sp
	ldr r3, [r3]
	ldrh r2, [r3, #4]
.L08051CC6:
	adds r0, r4, #0
	bl func_08008E64
	ldr r3, .L08051D2C @ =0x00000A74
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08051CE0: .4byte gUnk_080F9F7C
.L08051CE4: .4byte 0x00000A2C
.L08051CE8: .4byte 0x06002800
.L08051CEC: .4byte 0x00000A5C
.L08051CF0: .4byte 0x00000A58
.L08051CF4: .4byte 0x00000A44
.L08051CF8: .4byte 0x00000A64
.L08051CFC: .4byte 0x00000A3C
.L08051D00: .4byte 0x00000A38
.L08051D04: .4byte 0x0600F000
.L08051D08: .4byte 0x03FF03FF
.L08051D0C: .4byte 0x00000A6C
.L08051D10: .4byte gUnk_080FA158
.L08051D14: .4byte 0x00000A34
.L08051D18: .4byte 0x06002000
.L08051D1C: .4byte 0x00000A54
.L08051D20: .4byte 0x00000A48
.L08051D24: .4byte 0x0600F800
.L08051D28: .4byte 0x05000200
.L08051D2C: .4byte 0x00000A74

	thumb_func_start func_08051D30
func_08051D30: @ 0x08051D30
	push {r4, r5, r6, r7, lr}
	lsls r3, r3, #1
	movs r4, #0x83
	lsls r4, r4, #6
	adds r6, r3, r4
	movs r5, #0
	lsls r4, r2, #6
	ldr r7, .L08051D6C @ =0x000020C1
	adds r3, r3, r7
	lsls r1, r1, #1
	adds r4, #0xf8
	adds r4, r1, r4
	adds r4, r4, r0
	lsls r2, r2, #6
	adds r2, #0xb8
	adds r1, r1, r2
	adds r1, r1, r0
.L08051D52:
	adds r0, r6, r5
	strh r0, [r1]
	strh r3, [r4]
	adds r3, #1
	adds r4, #2
	adds r1, #2
	adds r5, #1
	cmp r5, #0
	ble .L08051D52
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08051D6C: .4byte 0x000020C1

	thumb_func_start func_08051D70
func_08051D70: @ 0x08051D70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
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
	add r3, sp, #0x1c
	str r0, [sp, #0x1c]
	strh r0, [r3, #4]
	add r2, sp, #0x24
	str r0, [sp, #0x24]
	strh r0, [r2, #4]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	strh r0, [r1, #4]
	add r1, sp, #0x34
	str r0, [sp, #0x34]
	strh r0, [r1, #4]
	ldr r1, .L08051E98 @ =0x000008B8
	adds r0, r7, r1
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	bgt .L08051DBE
	b .L08051F92
.L08051DBE:
	adds r4, r7, #0
	adds r4, #0x40
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r7, #0x40]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r7, #0x44]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r6, sp, #0x3c
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	adds r0, r6, #0
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldm r0!, {r3, r4}
	stm r1!, {r3, r4}
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0x54
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r2, r4, r5}
	stm r1!, {r2, r4, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x1a
	strh r0, [r1, #2]
	adds r4, r7, #0
	adds r4, #0xa8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	strh r0, [r1, #6]
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r1, #1
	movs r3, #1
	mov sb, r3
	mov r5, sb
	strh r5, [r0, #8]
	strb r1, [r0, #0x18]
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	mov r8, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L08051E64
	mov r1, sp
	ldrh r3, [r1, #0x28]
.L08051E64:
	str r5, [sp, #0x6c]
	lsls r2, r2, #5
	ldr r4, .L08051E9C @ =0x06010000
	adds r2, r2, r4
	adds r0, r6, #0
	mov r1, r8
	bl func_08008F0C
	mov sl, r6
	ldr r1, [r5, #4]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	beq .L08051EA0
	cmp r1, #0
	beq .L08051E8E
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r5, r6}
	stm r0!, {r2, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08051E8E:
	ldr r3, [sp, #0x6c]
	ldr r0, [r3, #4]
	adds r0, #0x10
	str r0, [r3, #4]
	b .L08051F74
	.align 2, 0
.L08051E98: .4byte 0x000008B8
.L08051E9C: .4byte 0x06010000
.L08051EA0:
	str r1, [sp, #0x70]
	mov r4, sb
	str r4, [sp, #0x60]
	ldr r5, [sp, #0x6c]
	ldr r0, [r5]
	adds r6, r1, #0
	subs r0, r6, r0
	asrs r4, r0, #4
	str r4, [sp, #0x5c]
	add r1, sp, #0x60
	add r0, sp, #0x5c
	cmp r4, #1
	bhs .L08051EBC
	adds r0, r1, #0
.L08051EBC:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L08051EDA
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L08051EDE
	mov r0, sb
	bl func_080D3BC0
	b .L08051EDE
.L08051EDA:
	movs r0, #0
	mov sb, r0
.L08051EDE:
	adds r4, r0, #0
	mov r8, r4
	ldr r0, [sp, #0x6c]
	ldr r2, [r0]
	mov r3, r8
	ldr r1, [sp, #0x70]
	cmp r2, r1
	beq .L08051F08
.L08051EEE:
	cmp r3, #0
	beq .L08051EFE
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08051EFE:
	adds r2, #0x10
	adds r3, #0x10
	ldr r0, [sp, #0x70]
	cmp r2, r0
	bne .L08051EEE
.L08051F08:
	adds r4, r3, #0
	ldr r0, [sp, #0x60]
	cmp r0, #1
	bne .L08051F24
	cmp r4, #0
	beq .L08051F20
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r5}
	stm r0!, {r2, r3, r5}
	ldr r1, [r1]
	str r1, [r0]
.L08051F20:
	adds r4, #0x10
	b .L08051F4C
.L08051F24:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L08051F4A
.L08051F2C:
	cmp r2, #0
	beq .L08051F3C
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r3, r4, r6}
	stm r0!, {r3, r4, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08051F3C:
	movs r5, #1
	rsbs r5, r5, #0
	add ip, r5
	adds r2, #0x10
	mov r6, ip
	cmp r6, #0
	bne .L08051F2C
.L08051F4A:
	adds r4, r2, #0
.L08051F4C:
	ldr r0, [sp, #0x6c]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08051F5E
.L08051F58:
	adds r1, #0x10
	cmp r1, r2
	bne .L08051F58
.L08051F5E:
	cmp r0, #0
	beq .L08051F66
	bl free
.L08051F66:
	mov r0, sb
	add r0, r8
	mov r1, r8
	ldr r2, [sp, #0x6c]
	str r1, [r2]
	str r4, [r2, #4]
	str r0, [r2, #0xc]
.L08051F74:
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08051F8A
	mov r4, sp
	ldrh r2, [r4, #0x20]
.L08051F8A:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L08051F92:
	ldr r5, .L08052080 @ =0x000008B8
	adds r0, r7, r5
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0x1f
	ble .L08051FA0
	b .L0805217A
.L08051FA0:
	adds r4, r7, #0
	adds r4, #0x74
	adds r0, r4, #0
	bl func_0805E8F0
	ldr r1, [r7, #0x74]
	ldr r3, [r1]
	ldrh r2, [r4, #0xc]
	lsls r2, r2, #2
	ldr r0, [r7, #0x78]
	adds r0, r0, r2
	ldrh r2, [r0]
	add r0, sp, #0x3c
	ldr r3, [r3, #0x10]
	bl _call_via_r3
	add r6, sp, #0x3c
	adds r0, r6, #0
	adds r1, r6, #0
	movs r2, #0x20
	bl memcpy
	add r1, sp, #0x1c
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldm r0!, {r4, r5}
	stm r1!, {r4, r5}
	mov r1, sp
	adds r0, r7, #0
	adds r0, #0x88
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r5}
	stm r1!, {r2, r3, r5}
	ldr r0, [r0]
	str r0, [r1]
	mov r1, sp
	movs r0, #0xe8
	strh r0, [r1]
	movs r0, #0x98
	strh r0, [r1, #2]
	adds r4, r7, #0
	adds r4, #0xa8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	mov r1, sp
	adds r0, #4
	strh r0, [r1, #6]
	adds r0, r7, #0
	adds r0, #0xb0
	ldr r1, [r0, #4]
	bl func_080074C0
	mov r1, sp
	strh r0, [r1, #4]
	mov r0, sp
	movs r1, #1
	movs r5, #1
	mov sb, r5
	mov r2, sb
	strh r2, [r0, #8]
	strb r1, [r0, #0x18]
	adds r0, r7, #0
	bl func_08008910
	adds r5, r0, #0
	ldr r3, [sp, #0x24]
	mov r8, r3
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007D4C
	adds r2, r0, #0
	ldr r0, [sp, #0x24]
	movs r3, #0
	cmp r0, #0
	beq .L08052048
	mov r4, sp
	ldrh r3, [r4, #0x28]
.L08052048:
	str r5, [sp, #0x6c]
	lsls r2, r2, #5
	ldr r5, .L08052084 @ =0x06010080
	adds r2, r2, r5
	adds r0, r6, #0
	mov r1, r8
	bl func_08008F0C
	mov sl, r6
	ldr r6, [sp, #0x6c]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	beq .L08052088
	cmp r1, #0
	beq .L08052074
	adds r0, r1, #0
	mov r1, sl
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldr r1, [r1]
	str r1, [r0]
.L08052074:
	ldr r5, [sp, #0x6c]
	ldr r0, [r5, #4]
	adds r0, #0x10
	str r0, [r5, #4]
	b .L0805215C
	.align 2, 0
.L08052080: .4byte 0x000008B8
.L08052084: .4byte 0x06010080
.L08052088:
	str r1, [sp, #0x70]
	mov r6, sb
	str r6, [sp, #0x68]
	ldr r1, [sp, #0x6c]
	ldr r0, [r1]
	ldr r2, [sp, #0x70]
	subs r0, r2, r0
	asrs r4, r0, #4
	str r4, [sp, #0x64]
	add r1, sp, #0x68
	add r0, sp, #0x64
	cmp r4, #1
	bhs .L080520A4
	adds r0, r1, #0
.L080520A4:
	ldr r0, [r0]
	adds r0, r4, r0
	cmp r0, #0
	beq .L080520C2
	lsls r4, r0, #4
	adds r0, r4, #0
	bl malloc
	mov sb, r4
	cmp r0, #0
	bne .L080520C6
	mov r0, sb
	bl func_080D3BC0
	b .L080520C6
.L080520C2:
	movs r0, #0
	mov sb, r0
.L080520C6:
	adds r4, r0, #0
	mov r8, r4
	ldr r3, [sp, #0x6c]
	ldr r2, [r3]
	mov r3, r8
	ldr r4, [sp, #0x70]
	cmp r2, r4
	beq .L080520F0
.L080520D6:
	cmp r3, #0
	beq .L080520E6
	adds r0, r3, #0
	adds r1, r2, #0
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L080520E6:
	adds r2, #0x10
	adds r3, #0x10
	ldr r5, [sp, #0x70]
	cmp r2, r5
	bne .L080520D6
.L080520F0:
	adds r4, r3, #0
	ldr r0, [sp, #0x68]
	cmp r0, #1
	bne .L0805210C
	cmp r4, #0
	beq .L08052108
	adds r0, r4, #0
	mov r1, sl
	ldm r1!, {r2, r3, r6}
	stm r0!, {r2, r3, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08052108:
	adds r4, #0x10
	b .L08052134
.L0805210C:
	mov ip, r0
	adds r2, r4, #0
	cmp r0, #0
	beq .L08052132
.L08052114:
	cmp r2, #0
	beq .L08052124
	adds r0, r2, #0
	mov r1, sl
	ldm r1!, {r4, r5, r6}
	stm r0!, {r4, r5, r6}
	ldr r1, [r1]
	str r1, [r0]
.L08052124:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	adds r2, #0x10
	mov r1, ip
	cmp r1, #0
	bne .L08052114
.L08052132:
	adds r4, r2, #0
.L08052134:
	ldr r3, [sp, #0x6c]
	ldr r2, [r3, #4]
	ldr r0, [r3]
	adds r1, r0, #0
	cmp r0, r2
	beq .L08052146
.L08052140:
	adds r1, #0x10
	cmp r1, r2
	bne .L08052140
.L08052146:
	cmp r0, #0
	beq .L0805214E
	bl free
.L0805214E:
	mov r0, sb
	add r0, r8
	mov r5, r8
	ldr r6, [sp, #0x6c]
	str r5, [r6]
	str r4, [r6, #4]
	str r0, [r6, #0xc]
.L0805215C:
	adds r0, r7, #0
	bl func_08008920
	adds r3, r0, #0
	ldr r0, [sp, #0x1c]
	adds r1, r0, #0
	movs r2, #0
	cmp r1, #0
	beq .L08052172
	mov r0, sp
	ldrh r2, [r0, #0x20]
.L08052172:
	adds r0, r3, #0
	mov r3, sp
	bl func_0805E99C
.L0805217A:
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
