    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08037A5C
func_08037A5C: @ 0x08037A5C
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #0xc
    adds r6, r0, #0
    mov r8, r1
    adds r4, r2, #0
    movs r0, #0x48
    bl __builtin_new
    adds r5, r0, #0
    movs r0, #0
    str r0, [sp]
    adds r0, r5, #0
    adds r1, r6, #0
    mov r2, r8
    ldr r3, .L08037AC8 @ =0x0000071C
    bl func_08037008
    ldr r0, .L08037ACC @ =vtable_unk_080E72E4
    str r0, [r5, #0x14]
    adds r2, r5, #0
    adds r2, #0x44
    movs r0, #3
    ands r4, r0
    ldrb r1, [r2]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r4
    strb r0, [r2]
    add r2, sp, #4
    movs r1, #0xb0
    lsls r1, r1, #1
    movs r3, #0xd8
    adds r0, r2, #0
    strh r1, [r0]
    strh r3, [r2, #2]
    adds r1, #0x38
    strh r1, [r2, #4]
    movs r0, #0xe8
    strh r0, [r2, #6]
    adds r0, r5, #0
    adds r1, r2, #0
    bl func_08037244
    adds r0, r5, #0
    add sp, #0xc
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08037AC8: .4byte 0x0000071C
.L08037ACC: .4byte vtable_unk_080E72E4

    thumb_func_start func_08037AD0
func_08037AD0: @ 0x08037AD0
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #0xc
    adds r6, r0, #0
    mov r8, r1
    adds r4, r2, #0
    movs r0, #0x48
    bl __builtin_new
    adds r5, r0, #0
    movs r0, #0xb
    str r0, [sp]
    adds r0, r5, #0
    adds r1, r6, #0
    mov r2, r8
    movs r3, #0xab
    lsls r3, r3, #2
    bl func_08037008
    ldr r0, .L08037B44 @ =vtable_unk_080E72A0
    str r0, [r5, #0x14]
    adds r2, r5, #0
    adds r2, #0x44
    movs r0, #3
    ands r4, r0
    ldrb r1, [r2]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r4
    strb r0, [r2]
    add r3, sp, #4
    movs r1, #0xe6
    lsls r1, r1, #2
    movs r2, #0x90
    lsls r2, r2, #1
    adds r0, r3, #0
    strh r1, [r0]
    strh r2, [r3, #2]
    movs r0, #0xa4
    lsls r0, r0, #1
    adds r1, r1, r0
    strh r1, [r3, #4]
    adds r2, #8
    strh r2, [r3, #6]
    adds r0, r5, #0
    adds r1, r3, #0
    bl func_08037244
    adds r0, r5, #0
    add sp, #0xc
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08037B44: .4byte vtable_unk_080E72A0

    thumb_func_start func_08037B48
func_08037B48: @ 0x08037B48
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    movs r0, #0x44
    bl __builtin_new
    adds r4, r0, #0
    movs r0, #0xc
    str r0, [sp]
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r6, #0
    ldr r3, .L08037B78 @ =0x00000379
    bl func_08037008
    ldr r0, .L08037B7C @ =vtable_unk_080E725C
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08037B78: .4byte 0x00000379
.L08037B7C: .4byte vtable_unk_080E725C

    thumb_func_start func_08037B80
func_08037B80: @ 0x08037B80
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r6, r1, #0
    movs r0, #0x44
    bl __builtin_new
    adds r4, r0, #0
    movs r0, #0xa
    str r0, [sp]
    adds r0, r4, #0
    adds r1, r5, #0
    adds r2, r6, #0
    ldr r3, .L08037BB0 @ =0x00000207
    bl func_08037008
    ldr r0, .L08037BB4 @ =vtable_unk_080E7218
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08037BB0: .4byte 0x00000207
.L08037BB4: .4byte vtable_unk_080E7218
.L08037BB8:
    .byte 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x06, 0x4B
    .byte 0x0A, 0x20, 0x00, 0x90, 0x20, 0x1C, 0xFF, 0xF7, 0x1F, 0xFA, 0x04, 0x48, 0x60, 0x61, 0x20, 0x1C
    .byte 0x01, 0xB0, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x07, 0x02, 0x00, 0x00, 0x18, 0x72, 0x0E, 0x08
    .byte 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x06, 0x4B, 0x0C, 0x20, 0x00, 0x90, 0x20, 0x1C, 0xFF, 0xF7
    .byte 0x0B, 0xFA, 0x04, 0x48, 0x60, 0x61, 0x20, 0x1C, 0x01, 0xB0, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47
    .byte 0x79, 0x03, 0x00, 0x00, 0x5C, 0x72, 0x0E, 0x08, 0x30, 0xB5, 0x83, 0xB0, 0x05, 0x1C, 0x1C, 0x1C
    .byte 0xAB, 0x23, 0x9B, 0x00, 0x0B, 0x20, 0x00, 0x90, 0x28, 0x1C, 0xFF, 0xF7, 0xF5, 0xF9, 0x11, 0x48
    .byte 0x68, 0x61, 0x2A, 0x1C, 0x44, 0x32, 0x03, 0x20, 0x04, 0x40, 0x11, 0x78, 0x04, 0x20, 0x40, 0x42
    .byte 0x08, 0x40, 0x20, 0x43, 0x10, 0x70, 0x01, 0xAB, 0xE6, 0x21, 0x89, 0x00, 0x90, 0x22, 0x52, 0x00
    .byte 0x18, 0x1C, 0x01, 0x80, 0x5A, 0x80, 0xA4, 0x20, 0x40, 0x00, 0x09, 0x18, 0x99, 0x80, 0x08, 0x32
    .byte 0xDA, 0x80, 0x28, 0x1C, 0x19, 0x1C, 0xFF, 0xF7, 0xF5, 0xFA, 0x28, 0x1C, 0x03, 0xB0, 0x30, 0xBC
    .byte 0x02, 0xBC, 0x08, 0x47, 0xA0, 0x72, 0x0E, 0x08, 0x30, 0xB5, 0x83, 0xB0, 0x05, 0x1C, 0x1C, 0x1C
    .byte 0x12, 0x4B, 0x00, 0x20, 0x00, 0x90, 0x28, 0x1C, 0xFF, 0xF7, 0xC6, 0xF9, 0x10, 0x48, 0x68, 0x61
    .byte 0x2A, 0x1C, 0x44, 0x32, 0x03, 0x20, 0x04, 0x40, 0x11, 0x78, 0x04, 0x20, 0x40, 0x42, 0x08, 0x40
    .byte 0x20, 0x43, 0x10, 0x70, 0x01, 0xAA, 0xB0, 0x21, 0x49, 0x00, 0xD8, 0x23, 0x10, 0x1C, 0x01, 0x80
    .byte 0x53, 0x80, 0x38, 0x31, 0x91, 0x80, 0xE8, 0x20, 0xD0, 0x80, 0x28, 0x1C, 0x11, 0x1C, 0xFF, 0xF7
    .byte 0xC9, 0xFA, 0x28, 0x1C, 0x03, 0xB0, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x1C, 0x07, 0x00, 0x00
    .byte 0xE4, 0x72, 0x0E, 0x08

    thumb_func_start func_08037CC4
func_08037CC4: @ 0x08037CC4
    push {r4, lr}
    adds r4, r0, #0
    bl __7AEntityP10GameObjectRC8Location
    ldr r0, .L08037CD8 @ =vtable_unk_080E7444
    str r0, [r4, #0x14]
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08037CD8: .4byte vtable_unk_080E7444
.L08037CDC:
    .byte 0x0A, 0x23, 0xCA, 0x5E
    .byte 0x0E, 0x23, 0xC9, 0x5E, 0x02, 0x80, 0x01, 0x31, 0x41, 0x80, 0x82, 0x80, 0xC1, 0x80, 0x70, 0x47

	.if 0
	thumb_func_start func_08037CF0
func_08037CF0: @ 0x08037CF0
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x54
    bl __builtin_new
    adds r1, r4, #0
    bl func_08037D08
    pop {r4}
    pop {r1}
	bx r1
	.align 2, 0
	.endif

	.section .text.tail08037D08, "ax", %progbits

	thumb_func_start func_08037D08
func_08037D08: @ 0x08037D08
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r7, r0, #0
    adds r4, r1, #0
    str r4, [r7]
    ldr r0, .L08037D68 @ =vtable_unk_080E7478
    str r0, [r7, #4]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r5, r0, #0
    ldr r1, [r4]
    adds r4, r7, #0
    adds r4, #8
    adds r0, r4, #0
    movs r2, #2
    movs r3, #0xa
    bl func_080A4740
    ldr r0, .L08037D6C @ =vtable_unk_080E602C
    str r0, [r4, #0x24]
    adds r6, r7, #0
    adds r6, #0x30
    ldr r4, [r5]
    mov r0, sp
    ldr r3, [r4, #0xc]
    adds r1, r5, #0
    movs r2, #0x7d
    bl _call_via_r3
    ldr r0, [sp]
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r4, #0x10]
    adds r1, r5, #0
    bl _call_via_r3
    adds r1, r7, #0
    adds r1, #0x50
    movs r0, #1
    strb r0, [r1]
    adds r0, r7, #0
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08037D68: .4byte vtable_unk_080E7478
.L08037D6C: .4byte vtable_unk_080E602C
.L08037D70:
    .byte 0x70, 0x47, 0x00, 0x00

    thumb_func_start func_08037D74
func_08037D74: @ 0x08037D74
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    adds r4, r0, #0
    ldr r3, [r4]
    movs r0, #0xa
    ldrsh r2, [r3, r0]
    movs r5, #0xc
    ldrsh r0, [r1, r5]
    subs r2, r2, r0
    mov r8, r2
    movs r0, #0xe
    ldrsh r2, [r3, r0]
    movs r3, #0xe
    ldrsh r0, [r1, r3]
    subs r0, r2, r0
    mov ip, r0
    ldr r0, [r1]
    ldr r3, [r1, #8]
    str r0, [sp, #0x14]
    str r3, [sp, #0x18]
    movs r0, #0x80
    lsls r0, r0, #8
    subs r7, r0, r2
    adds r5, r4, #0
    adds r5, #8
    adds r6, r4, #0
    adds r6, #0x30
    ldr r2, [r4, #8]
    ldr r1, [r4, #0x10]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge .L08037DE0
    ldrh r0, [r5, #0xc]
    adds r1, r4, #0
    adds r1, #0x18
    str r7, [sp]
    str r6, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    adds r0, r3, #0
    mov r1, r8
    mov r2, ip
    movs r3, #0xaa
    ldr r4, .L08037DDC @ =func_030004DC
    bl _call_via_r4
    b .L08037DE2
    .align 2, 0
.L08037DDC: .4byte func_030004DC
.L08037DE0:
    movs r0, #0
.L08037DE2:
    cmp r0, #0
    beq .L08037E0C
    adds r4, r5, #0
    adds r4, #0x48
    ldrb r0, [r4]
    cmp r0, #0
    beq .L08037E0C
    ldr r1, [sp, #0x14]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #0
    strb r0, [r4]
.L08037E0C:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08037E18
func_08037E18: @ 0x08037E18
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    mov r0, sp
    adds r1, r6, #0
    bl func_0800FFE0
    adds r0, r4, #0
    adds r1, r5, #0
    mov r2, sp
    bl __7AEntityP10GameObjectRC8Location
    ldr r0, .L08037E44 @ =vtable_unk_080E73FC
    str r0, [r4, #0x14]
    str r6, [r4, #0x18]
    adds r0, r4, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08037E44: .4byte vtable_unk_080E73FC

    thumb_func_start func_08037E48
func_08037E48: @ 0x08037E48
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r0, .L08037E94 @ =vtable_unk_080E73FC
    str r0, [r5, #0x14]
    ldr r4, [r5, #0x18]
    mov r0, sp
    adds r1, r5, #0
    bl GetLocation__C7AEntity
    adds r0, r4, #0
    mov r1, sp
    bl func_08010014
    ldr r0, .L08037E98 @ =__vt_7AEntity
    str r0, [r5, #0x14]
    ldr r1, [r5, #0x10]
    cmp r1, #0
    beq .L08037E7C
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08037E7C:
    movs r0, #1
    ands r0, r6
    cmp r0, #0
    beq .L08037E8A
    adds r0, r5, #0
    bl __builtin_delete
.L08037E8A:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08037E94: .4byte vtable_unk_080E73FC
.L08037E98: .4byte __vt_7AEntity

	.if 0
	thumb_func_start func_08037E9C
func_08037E9C: @ 0x08037E9C
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x58
    bl __builtin_new
    adds r1, r4, #0
    bl func_08037EF0
    pop {r4}
    pop {r1}
	bx r1
	.align 2, 0
	.endif

	.section .text.tail08037EB4, "ax", %progbits

	thumb_func_start func_08037EB4
func_08037EB4: @ 0x08037EB4
    push {r4, lr}
    adds r4, r0, #0
    ldr r0, [r4, #0x18]
    ldrb r1, [r1]
    bl func_0800FFF4
    ldr r0, [r4, #0x10]
    cmp r0, #0
    beq .L08037ECA
    bl func_08037F74
.L08037ECA:
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08037ED0
func_08037ED0: @ 0x08037ED0
    push {r4, lr}
    movs r3, #0xa
    ldrsh r2, [r1, r3]
    movs r4, #0xe
    ldrsh r3, [r1, r4]
    subs r1, r2, #7
    strh r1, [r0]
    subs r1, r3, #4
    strh r1, [r0, #2]
    adds r2, #7
    strh r2, [r0, #4]
    adds r3, #5
    strh r3, [r0, #6]
    pop {r4}
    pop {r2}
    bx r2

    thumb_func_start func_08037EF0
func_08037EF0: @ 0x08037EF0
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r7, r0, #0
    adds r4, r1, #0
    str r4, [r7]
    ldr r0, .L08037F58 @ =vtable_unk_080E7430
    str r0, [r7, #4]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r5, r0, #0
    ldr r1, [r4]
    adds r4, r7, #0
    adds r4, #8
    adds r0, r4, #0
    movs r2, #2
    movs r3, #8
    bl func_080A4740
    ldr r0, .L08037F5C @ =vtable_unk_080E602C
    str r0, [r4, #0x24]
    adds r6, r7, #0
    adds r6, #0x30
    ldr r4, [r5]
    mov r0, sp
    ldr r3, [r4, #0xc]
    adds r1, r5, #0
    movs r2, #0x35
    bl _call_via_r3
    ldr r0, [sp]
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r4, #0x10]
    adds r1, r5, #0
    bl _call_via_r3
    adds r1, r7, #0
    adds r1, #0x50
    movs r2, #0
    movs r0, #1
    strb r0, [r1]
    adds r0, r7, #0
    adds r0, #0x54
    strb r2, [r0]
    adds r0, r7, #0
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08037F58: .4byte vtable_unk_080E7430
.L08037F5C: .4byte vtable_unk_080E602C

    thumb_func_start func_08037F60
func_08037F60: @ 0x08037F60
    push {lr}
    adds r1, r0, #0
    adds r1, #0x54
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08037F70
    subs r0, #1
    strb r0, [r1]
.L08037F70:
    pop {r0}
    bx r0

    .section .text.tail08037F7C, "ax", %progbits
    thumb_func_start func_08037F7C
func_08037F7C: @ 0x08037F7C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x1c
    adds r4, r0, #0
    ldr r3, [r4]
    movs r0, #0xa
    ldrsh r2, [r3, r0]
    movs r5, #0xc
    ldrsh r0, [r1, r5]
    subs r2, r2, r0
    mov r8, r2
    movs r0, #0xe
    ldrsh r3, [r3, r0]
    movs r2, #0xe
    ldrsh r0, [r1, r2]
    subs r2, r3, r0
    ldr r0, [r1]
    ldr r1, [r1, #8]
    mov ip, r1
    str r0, [sp, #0x14]
    str r1, [sp, #0x18]
    adds r0, r4, #0
    adds r0, #0x54
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08037FB4
    subs r2, #2
.L08037FB4:
    movs r0, #0x80
    lsls r0, r0, #8
    subs r7, r0, r3
    adds r5, r4, #0
    adds r5, #8
    adds r6, r4, #0
    adds r6, #0x30
    ldr r3, [r4, #8]
    ldr r1, [r4, #0x10]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge .L08037FF0
    ldrh r0, [r5, #0xc]
    adds r1, r4, #0
    adds r1, #0x18
    str r7, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    mov r0, ip
    mov r1, r8
    movs r3, #0xaa
    ldr r4, .L08037FEC @ =func_030004DC
    bl _call_via_r4
    b .L08037FF2
    .align 2, 0
.L08037FEC: .4byte func_030004DC
.L08037FF0:
    movs r0, #0
.L08037FF2:
    cmp r0, #0
    beq .L0803801C
    adds r4, r5, #0
    adds r4, #0x48
    ldrb r0, [r4]
    cmp r0, #0
    beq .L0803801C
    ldr r1, [sp, #0x14]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #0
    strb r0, [r4]
.L0803801C:
    add sp, #0x1c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08038028
func_08038028: @ 0x08038028
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r5, r1, #0
    adds r4, r2, #0
    bl __7AEntityP10GameObjectRC8Location
    ldr r0, .L08038094 @ =vtable_unk_080E73B4
    str r0, [r6, #0x14]
    str r4, [r6, #0x18]
    movs r0, #0
    str r0, [r6, #0x1c]
    adds r1, r6, #0
    adds r1, #0x25
    strb r0, [r1]
    adds r1, #1
    strb r0, [r1]
    movs r0, #0x31
    strh r0, [r6, #0x28]
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    movs r1, #0x2b
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq .L08038088
    ldrh r0, [r4, #4]
    ldrh r1, [r6, #4]
    cmp r0, r1
    bne .L08038088
    adds r0, r4, #0
    bl func_08020460
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08038088
    ldr r1, [r4, #8]
    ldr r2, [r4, #0xc]
    ldrh r3, [r4, #0x22]
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    str r0, [sp]
    adds r0, r6, #0
    bl func_08038374
.L08038088:
    adds r0, r6, #0
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08038094: .4byte vtable_unk_080E73B4

    thumb_func_start func_08038098
func_08038098: @ 0x08038098
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r0, .L080380E4 @ =vtable_unk_080E73B4
    str r0, [r5, #0x14]
    ldr r4, [r5, #0x18]
    mov r0, sp
    adds r1, r5, #0
    bl GetLocation__C7AEntity
    adds r0, r4, #0
    mov r1, sp
    movs r2, #6
    bl memcpy
    ldr r0, .L080380E8 @ =__vt_7AEntity
    str r0, [r5, #0x14]
    ldr r1, [r5, #0x10]
    cmp r1, #0
    beq .L080380CE
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L080380CE:
    movs r0, #1
    ands r0, r6
    cmp r0, #0
    beq .L080380DC
    adds r0, r5, #0
    bl __builtin_delete
.L080380DC:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L080380E4: .4byte vtable_unk_080E73B4
.L080380E8: .4byte __vt_7AEntity

    thumb_func_start func_080380EC
func_080380EC: @ 0x080380EC
    adds r2, r0, #0
    adds r2, #0x24
    strb r1, [r2]
    movs r1, #0xa8
    lsls r1, r1, #0xd
    str r1, [r0, #0x1c]
    movs r1, #0xc0
    lsls r1, r1, #0xa
    str r1, [r0, #0x20]
    adds r0, #0x25
    movs r1, #1
    strb r1, [r0]
    bx lr
    .align 2, 0

    .section .text.tail08038110, "ax", %progbits
    thumb_func_start func_08038110
func_08038110: @ 0x08038110
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x44
    adds r6, r0, #0
    adds r4, r6, #0
    adds r4, #0x25
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08038126
    b .L080382F4
.L08038126:
    ldr r7, [r6]
    ldrh r2, [r6, #4]
    ldr r1, [r7]
    mov r0, sp
    ldr r3, [r1, #0x34]
    adds r1, r7, #0
    bl _call_via_r3
    mov r8, sp
    ldr r1, [r6, #0x20]
    ldr r0, .L080381A0 @ =0xFFFFB85D
    adds r1, r1, r0
    str r1, [r6, #0x20]
    ldr r0, [r6, #0x1c]
    adds r0, r0, r1
    str r0, [r6, #0x1c]
    cmp r0, #0
    bgt .L0803814C
    b .L0803825C
.L0803814C:
    ldr r1, [r6, #0x14]
    add r0, sp, #0x34
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    ldr r1, [sp, #0x34]
    ldr r2, [sp, #0x38]
    str r1, [sp, #0x3c]
    str r2, [sp, #0x40]
    add r5, sp, #0xc
    movs r2, #0x20
    mov r8, r2
    movs r1, #0x21
    str r1, [sp, #0xc]
    movs r0, #0x21
    rsbs r0, r0, #0
    str r0, [r5, #4]
    str r0, [r5, #8]
    str r1, [r5, #0xc]
    add r1, sp, #0x1c
    mov r0, sp
    ldm r0!, {r2, r3, r4}
    stm r1!, {r2, r3, r4}
    ldr r3, [sp, #0x3c]
    ldr r4, [sp, #0x40]
    str r3, [sp, #0x28]
    str r4, [sp, #0x2c]
    mov r4, r8
    str r4, [r5, #0x24]
    ldr r4, [r6, #8]
    ldr r7, [r6, #0xc]
    adds r0, r6, #0
    adds r0, #0x24
    ldrb r0, [r0]
    cmp r0, #1
    beq .L080381AE
    cmp r0, #1
    bgt .L080381A4
    cmp r0, #0
    beq .L080381D4
    b .L08038250
    .align 2, 0
.L080381A0: .4byte 0xFFFFB85D
.L080381A4:
    cmp r0, #2
    beq .L08038230
    cmp r0, #3
    beq .L08038204
    b .L08038250
.L080381AE:
    ldr r1, [sp, #0x10]
    ldr r0, [sp, #0x30]
    cmn r1, r0
    bge .L080381C0
    adds r0, r5, #0
    bl func_080ABBC4
    ldr r0, [sp, #0x10]
    b .L080381C2
.L080381C0:
    adds r0, r1, #0
.L080381C2:
    lsls r1, r0, #0x10
    ldr r0, .L080381D0 @ =0xFFFE38E4
    cmp r1, r0
    bgt .L080381F0
    ldr r5, .L080381D0 @ =0xFFFE38E4
    adds r7, r7, r5
    b .L08038250
    .align 2, 0
.L080381D0: .4byte 0xFFFE38E4
.L080381D4:
    ldr r1, [sp, #0xc]
    ldr r0, [sp, #0x30]
    cmp r1, r0
    ble .L080381E6
    adds r0, r5, #0
    bl func_080ABBA0
    ldr r0, [sp, #0xc]
    b .L080381E8
.L080381E6:
    adds r0, r1, #0
.L080381E8:
    lsls r1, r0, #0x10
    ldr r0, .L080381F4 @ =0x0001C71B
    cmp r1, r0
    bgt .L080381F8
.L080381F0:
    adds r7, r7, r1
    b .L08038250
    .align 2, 0
.L080381F4: .4byte 0x0001C71B
.L080381F8:
    ldr r0, .L08038200 @ =0x0001C71C
    adds r7, r7, r0
    b .L08038250
    .align 2, 0
.L08038200: .4byte 0x0001C71C
.L08038204:
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x30]
    cmp r1, r0
    ble .L08038216
    adds r0, r5, #0
    bl func_080ABC14
    ldr r0, [sp, #0x18]
    b .L08038218
.L08038216:
    adds r0, r1, #0
.L08038218:
    lsls r1, r0, #0x10
    ldr r0, .L08038228 @ =0x0001C71B
    cmp r1, r0
    ble .L08038222
    ldr r1, .L0803822C @ =0x0001C71C
.L08038222:
    adds r4, r4, r1
    b .L08038250
    .align 2, 0
.L08038228: .4byte 0x0001C71B
.L0803822C: .4byte 0x0001C71C
.L08038230:
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x30]
    cmn r1, r0
    bge .L08038242
    adds r0, r5, #0
    bl func_080ABBEC
    ldr r0, [sp, #0x14]
    b .L08038244
.L08038242:
    adds r0, r1, #0
.L08038244:
    lsls r1, r0, #0x10
    ldr r0, .L08038258 @ =0xFFFE38E4
    cmp r1, r0
    bgt .L08038222
    ldr r2, .L08038258 @ =0xFFFE38E4
    adds r4, r4, r2
.L08038250:
    str r4, [r6, #8]
    str r7, [r6, #0xc]
    b .L080382F4
    .align 2, 0
.L08038258: .4byte 0xFFFE38E4
.L0803825C:
    movs r0, #0
    str r0, [r6, #0x1c]
    strb r0, [r4]
    add r4, sp, #0xc
    adds r0, r4, #0
    adds r1, r6, #0
    bl GetLocation__C7AEntity
    ldr r0, [r6, #0x18]
    adds r1, r4, #0
    movs r2, #6
    bl memcpy
    ldr r0, [r6, #8]
    ldr r1, [r6, #0xc]
    asrs r0, r0, #0x13
    mov ip, r0
    asrs r3, r1, #0x13
    ldr r1, [sp]
    mov r5, r8
    ldrh r0, [r5, #8]
    cmp r1, #0
    beq .L080382A8
    cmp ip, r0
    bhi .L080382A8
    ldrh r2, [r5, #0xa]
    cmp r3, r2
    bhi .L080382A8
    ldr r2, [sp, #4]
    muls r0, r3, r0
    add r0, ip
    cmp r2, #0
    beq .L080382A2
    adds r0, r2, r0
    ldrb r0, [r0]
.L080382A2:
    lsls r0, r0, #2
    adds r0, r1, r0
    b .L080382AA
.L080382A8:
    movs r0, #0
.L080382AA:
    cmp r0, #0
    bne .L080382C2
    ldr r0, [r7]
    movs r3, #0x9e
    lsls r3, r3, #1
    adds r0, r0, r3
    ldr r2, [r0]
    adds r0, r7, #0
    movs r1, #1
    bl _call_via_r2
    b .L080382F4
.L080382C2:
    ldr r0, [r0]
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge .L080382DE
    ldr r0, [r7]
    movs r4, #0x9e
    lsls r4, r4, #1
    adds r0, r0, r4
    ldr r2, [r0]
    adds r0, r7, #0
    movs r1, #0
    bl _call_via_r2
    b .L080382F4
.L080382DE:
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x2b
    bl _call_via_r2
    cmp r0, #0
    beq .L080382F4
    adds r1, r4, #0
    bl func_0802151C
.L080382F4:
    add sp, #0x44
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08038300
func_08038300: @ 0x08038300
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, [r4, #0x10]
    cmp r2, #0
    beq .L08038314
    ldr r0, [r2, #4]
    ldr r1, [r0, #0xc]
    adds r0, r2, #0
    bl _call_via_r1
.L08038314:
    adds r0, r4, #0
    bl func_08038110
    pop {r4}
    pop {r0}
    bx r0

	.if 0
	thumb_func_start func_08038320
func_08038320: @ 0x08038320
    push {r4, lr}
    adds r4, r0, #0
    bl vfunc_2C__7AEntityUi
    adds r0, r4, #0
    bl func_08038110
    pop {r4}
	pop {r0}
	bx r0
	.endif

	.section .text.tail08038334, "ax", %progbits
	.if 0

	thumb_func_start func_08038334
func_08038334: @ 0x08038334
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x48
    bl __builtin_new
    adds r1, r4, #0
    bl func_0803853C
    pop {r4}
    pop {r1}
	bx r1
	.align 2, 0
	.endif

	.section .text.tail0803834C, "ax", %progbits

	thumb_func_start func_0803834C
func_0803834C: @ 0x0803834C
    push {r4, lr}
    movs r3, #0xa
    ldrsh r2, [r1, r3]
    movs r4, #0xe
    ldrsh r3, [r1, r4]
    subs r1, r2, #4
    strh r1, [r0]
    subs r1, r3, #4
    strh r1, [r0, #2]
    adds r2, #4
    strh r2, [r0, #4]
    adds r3, #4
    strh r3, [r0, #6]
    pop {r4}
    pop {r2}
    bx r2

    .section .text.tail08038374, "ax", %progbits
    thumb_func_start func_08038374
func_08038374: @ 0x08038374
    push {r4, r5, r6, lr}
    ldr r5, [sp, #0x10]
    movs r4, #0x26
    adds r4, r4, r0
    mov ip, r4
    movs r4, #1
    mov r6, ip
    strb r4, [r6]
    str r1, [r0, #8]
    str r2, [r0, #0xc]
    adds r1, r3, #0
    adds r2, r5, #0
    bl func_08038398
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08038398
func_08038398: @ 0x08038398
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    movs r3, #0x15
    ldr r4, .L080383B4 @ =0xFFFFFCC8
    adds r0, r1, r4
    cmp r0, #0x3d
    bls .L080383A8
    b .L080384CA
.L080383A8:
    lsls r0, r0, #2
    ldr r1, .L080383B8 @ =.L080383BC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L080383B4: .4byte 0xFFFFFCC8
.L080383B8: .4byte .L080383BC
.L080383BC: @ jump table
    .4byte .L080384CA @ case 0
    .4byte .L080384CA @ case 1
    .4byte .L080384CA @ case 2
    .4byte .L080384CA @ case 3
    .4byte .L080384B4 @ case 4
    .4byte .L080384CA @ case 5
    .4byte .L080384CA @ case 6
    .4byte .L080384CA @ case 7
    .4byte .L080384B8 @ case 8
    .4byte .L080384CA @ case 9
    .4byte .L080384CA @ case 10
    .4byte .L080384CA @ case 11
    .4byte .L080384BC @ case 12
    .4byte .L080384CA @ case 13
    .4byte .L080384CA @ case 14
    .4byte .L080384CA @ case 15
    .4byte .L080384C0 @ case 16
    .4byte .L080384CA @ case 17
    .4byte .L080384CA @ case 18
    .4byte .L080384CA @ case 19
    .4byte .L080384C4 @ case 20
    .4byte .L080384CA @ case 21
    .4byte .L080384CA @ case 22
    .4byte .L080384CA @ case 23
    .4byte .L080384CA @ case 24
    .4byte .L080384CA @ case 25
    .4byte .L080384CA @ case 26
    .4byte .L080384CA @ case 27
    .4byte .L080384CA @ case 28
    .4byte .L080384CA @ case 29
    .4byte .L080384CA @ case 30
    .4byte .L080384CA @ case 31
    .4byte .L080384CA @ case 32
    .4byte .L080384CA @ case 33
    .4byte .L080384CA @ case 34
    .4byte .L080384CA @ case 35
    .4byte .L080384CA @ case 36
    .4byte .L080384CA @ case 37
    .4byte .L080384CA @ case 38
    .4byte .L080384CA @ case 39
    .4byte .L080384CA @ case 40
    .4byte .L080384CA @ case 41
    .4byte .L080384CA @ case 42
    .4byte .L080384CA @ case 43
    .4byte .L080384CA @ case 44
    .4byte .L080384CA @ case 45
    .4byte .L080384CA @ case 46
    .4byte .L080384CA @ case 47
    .4byte .L080384CA @ case 48
    .4byte .L080384CA @ case 49
    .4byte .L080384CA @ case 50
    .4byte .L080384CA @ case 51
    .4byte .L080384CA @ case 52
    .4byte .L080384CA @ case 53
    .4byte .L080384CA @ case 54
    .4byte .L080384CA @ case 55
    .4byte .L080384CA @ case 56
    .4byte .L080384CA @ case 57
    .4byte .L080384CA @ case 58
    .4byte .L080384CA @ case 59
    .4byte .L080384CA @ case 60
    .4byte .L080384C8 @ case 61
.L080384B4:
    movs r3, #0x19
    b .L080384CA
.L080384B8:
    movs r3, #0x1d
    b .L080384CA
.L080384BC:
    movs r3, #0x21
    b .L080384CA
.L080384C0:
    movs r3, #0x25
    b .L080384CA
.L080384C4:
    movs r3, #0x29
    b .L080384CA
.L080384C8:
    movs r3, #0x2d
.L080384CA:
    adds r1, r3, r2
    adds r6, r1, #0
    ldrh r0, [r5, #0x28]
    cmp r1, r0
    beq .L080384F6
    ldr r4, [r5, #0x10]
    cmp r4, #0
    beq .L080384F4
    adds r0, r4, #0
    adds r0, #0x30
    bl func_0805E860
    adds r0, r4, #0
    adds r0, #0x44
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
.L080384F4:
    strh r6, [r5, #0x28]
.L080384F6:
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_080384FC
func_080384FC: @ 0x080384FC
    push {r4, r5, lr}
    adds r5, r0, #0
    ldrh r0, [r5, #0x28]
    cmp r0, #0x31
    beq .L0803852C
    ldr r4, [r5, #0x10]
    cmp r4, #0
    beq .L08038528
    adds r0, r4, #0
    adds r0, #0x30
    movs r1, #0x31
    bl func_0805E860
    adds r0, r4, #0
    adds r0, #0x44
    movs r2, #0
    movs r1, #1
    strb r1, [r0]
    adds r0, #2
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
.L08038528:
    movs r0, #0x31
    strh r0, [r5, #0x28]
.L0803852C:
    adds r1, r5, #0
    adds r1, #0x26
    movs r0, #0
    strb r0, [r1]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_0803853C
func_0803853C: @ 0x0803853C
    push {r4, r5, r6, lr}
    sub sp, #0xc
    adds r6, r0, #0
    adds r4, r1, #0
    str r4, [r6]
    ldr r0, .L0803857C @ =vtable_unk_080E73E8
    str r0, [r6, #4]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x64]
    bl _call_via_r1
    adds r1, r0, #0
    ldr r3, [r4]
    adds r0, r6, #0
    adds r0, #8
    ldrh r2, [r4, #0x28]
    movs r4, #2
    str r4, [sp]
    movs r4, #7
    str r4, [sp, #4]
    add r5, sp, #8
    movs r4, #0
    strb r4, [r5]
    bl func_080A4A00
    adds r0, r6, #0
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0803857C: .4byte vtable_unk_080E73E8

    thumb_func_start func_08038580
func_08038580: @ 0x08038580
    push {r4, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x47
    ldrb r0, [r1]
    cmp r0, #0
    bne .L080385A4
    adds r0, r4, #0
    adds r0, #0x30
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge .L080385A8
    adds r1, r4, #0
    adds r1, #0x44
    movs r0, #1
    b .L080385A6
.L080385A4:
    movs r0, #0
.L080385A6:
    strb r0, [r1]
.L080385A8:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080385B0
func_080385B0: @ 0x080385B0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x50
    adds r5, r0, #0
    mov sl, r1
    ldr r0, [r5]
    mov sb, r0
    movs r1, #0xa
    ldrsh r6, [r0, r1]
    mov r2, sl
    movs r3, #0xc
    ldrsh r0, [r2, r3]
    subs r0, r6, r0
    str r0, [sp, #0x3c]
    mov r0, sb
    movs r1, #0xe
    ldrsh r4, [r0, r1]
    movs r3, #0xe
    ldrsh r0, [r2, r3]
    subs r0, r4, r0
    str r0, [sp, #0x40]
    mov r0, sb
    adds r0, #0x26
    ldrb r0, [r0]
    str r0, [sp, #0x44]
    movs r0, #0x80
    lsls r0, r0, #8
    subs r0, r0, r4
    mov r8, r0
    ldr r0, [sp, #0x44]
    cmp r0, #0
    beq .L080385FC
    movs r1, #1
    rsbs r1, r1, #0
    add r8, r1
.L080385FC:
    add r0, sp, #0x34
    mov r2, sl
    ldr r1, [r2]
    ldr r2, [r2, #8]
    str r1, [sp, #0x34]
    str r2, [r0, #4]
    ldr r3, [sp, #0x40]
    str r3, [sp, #0x48]
    movs r7, #2
    ldr r0, [sp, #0x44]
    cmp r0, #0
    bne .L08038646
    mov r0, sb
    bl func_0803836C
    ldr r1, [sp, #0x40]
    subs r1, r1, r0
    str r1, [sp, #0x48]
    cmp r0, #0xf
    ble .L08038646
    mov r2, sb
    ldrh r0, [r2, #4]
    cmp r0, #8
    bgt .L08038644
    cmp r0, #2
    bne .L08038646
    ldr r3, .L080386AC @ =0xFFFFFEF0
    adds r1, r6, r3
    ldr r0, .L080386B0 @ =0x000002AF
    cmp r1, r0
    bhi .L08038646
    cmp r4, #0xaf
    ble .L08038646
    subs r0, #0x60
    cmp r4, r0
    bgt .L08038646
.L08038644:
    movs r7, #1
.L08038646:
    adds r6, r5, #0
    adds r6, #8
    mov r0, sp
    adds r0, #0x34
    str r0, [sp, #0x4c]
    adds r0, r7, #0
    lsls r4, r0, #2
    orrs r4, r0
    lsls r1, r0, #4
    orrs r4, r1
    lsls r0, r0, #6
    orrs r4, r0
    ldr r1, [r5, #0x30]
    ldr r3, [r1]
    ldrh r2, [r5, #0x3c]
    lsls r2, r2, #2
    ldr r0, [r5, #0x34]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    ldr r1, [sp, #0x4c]
    ldr r3, [r1, #4]
    ldr r2, [r5, #8]
    ldr r1, [r5, #0x10]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge .L080386B8
    ldrh r0, [r6, #0xc]
    adds r1, r5, #0
    adds r1, #0x18
    mov r5, r8
    str r5, [sp]
    adds r5, r7, #0
    str r5, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    adds r0, r3, #0
    ldr r1, [sp, #0x3c]
    ldr r2, [sp, #0x48]
    adds r3, r4, #0
    ldr r4, .L080386B4 @ =func_030004DC
    bl _call_via_r4
    b .L080386BA
    .align 2, 0
.L080386AC: .4byte 0xFFFFFEF0
.L080386B0: .4byte 0x000002AF
.L080386B4: .4byte func_030004DC
.L080386B8:
    movs r0, #0
.L080386BA:
    cmp r0, #0
    beq .L0803870E
    adds r0, r6, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    adds r5, r0, #0
    cmp r1, #0
    beq .L0803870E
    ldr r0, [sp, #0x4c]
    ldr r1, [r0]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq .L080386F0
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    b .L0803870A
.L080386F0:
    adds r4, r6, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0803870A
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
.L0803870A:
    movs r0, #0
    strb r0, [r5]
.L0803870E:
    ldr r1, [sp, #0x44]
    cmp r1, #0
    bne .L08038730
    mov r2, sb
    ldr r0, [r2]
    ldr r1, [r0]
    ldr r1, [r1, #0x58]
    bl _call_via_r1
    mov r3, sl
    ldr r1, [r3, #8]
    ldr r5, [sp, #0x44]
    str r5, [sp]
    ldr r2, [sp, #0x3c]
    ldr r3, [sp, #0x40]
    bl func_0803AE58
.L08038730:
    add sp, #0x50
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08038740
func_08038740: @ 0x08038740
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #8
    adds r6, r0, #0
    mov r8, r2
    mov r2, sp
    movs r5, #8
    ldrh r3, [r2]
    ldr r4, .L08038798 @ =0xFFFFFC00
    adds r0, r4, #0
    ands r0, r3
    orrs r0, r5
    strh r0, [r2]
    ldrb r5, [r2, #1]
    movs r3, #3
    adds r0, r3, #0
    ands r0, r5
    strb r0, [r2, #1]
    ldrh r5, [r2, #2]
    adds r0, r4, #0
    ands r0, r5
    strh r0, [r2, #2]
    ldrb r0, [r2, #3]
    ands r3, r0
    strb r3, [r2, #3]
    ldrh r0, [r2, #4]
    ands r4, r0
    strh r4, [r2, #4]
    adds r0, r6, #0
    bl __7AEntityP10GameObjectRC8Location
    ldr r0, .L0803879C @ =vtable_unk_080E7380
    str r0, [r6, #0x14]
    mov r0, r8
    str r0, [r6, #0x18]
    adds r0, r6, #0
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08038798: .4byte 0xFFFFFC00
.L0803879C: .4byte vtable_unk_080E7380

    thumb_func_start func_080387A0
func_080387A0: @ 0x080387A0
    push {r4, lr}
    adds r4, r0, #0
    movs r0, #0x18
    bl __builtin_new
    adds r1, r4, #0
    bl func_08038820
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

	.if 0
	thumb_func_start func_080387B8
func_080387B8: @ 0x080387B8
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    beq .L080387C4
    bl func_08038DF0
.L080387C4:
    pop {r0}
    bx r0

    thumb_func_start func_080387C8
func_080387C8: @ 0x080387C8
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    beq .L080387D4
    bl func_08038E90
.L080387D4:
    pop {r0}
    bx r0

	.endif
	.section .text.tail080387D8, "ax", %progbits
	thumb_func_start func_080387D8
func_080387D8: @ 0x080387D8
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    bne .L080387E4
    movs r0, #1
    b .L080387E8
.L080387E4:
    bl func_08038EA0
.L080387E8:
    pop {r1}
    bx r1

	.if 0
	thumb_func_start func_080387EC
func_080387EC: @ 0x080387EC
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    beq .L080387F8
    bl func_08038EB8
.L080387F8:
    pop {r0}
    bx r0

    thumb_func_start func_080387FC
func_080387FC: @ 0x080387FC
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    beq .L08038808
    bl func_08038EE0
.L08038808:
    pop {r0}
    bx r0

	.endif
	.section .text.tail0803880C, "ax", %progbits
	thumb_func_start func_0803880C
func_0803880C: @ 0x0803880C
    push {lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    bne .L08038818
    movs r0, #0
    b .L0803881C
.L08038818:
    bl func_080390D0
.L0803881C:
    pop {r1}
    bx r1

    thumb_func_start func_08038820
func_08038820: @ 0x08038820
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r7, r0, #0
    mov sb, r1
    str r1, [r7]
    ldr r0, .L0803889C @ =vtable_unk_080E736C
    str r0, [r7, #4]
    ldr r0, [r1, #0x18]
    adds r0, #0x54
    ldrb r0, [r0]
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1e
    mov sl, r0
    cmp r0, #1
    bne .L080388A4
    movs r0, #0x4c
    bl __builtin_new
    adds r6, r0, #0
    mov r0, sb
    ldr r4, [r0]
    ldr r0, [r4]
    ldr r1, [r0, #0x74]
    adds r0, r4, #0
    bl _call_via_r1
    adds r5, r0, #0
    adds r0, r6, #0
    adds r1, r4, #0
    movs r2, #6
    movs r3, #0x1b
    bl func_080A4740
    ldr r0, .L080388A0 @ =vtable_unk_080E602C
    str r0, [r6, #0x24]
    movs r1, #0x28
    adds r1, r1, r6
    mov r8, r1
    ldr r4, [r5]
    mov r0, sp
    ldr r3, [r4, #0xc]
    adds r1, r5, #0
    movs r2, #0
    bl _call_via_r3
    ldr r0, [sp]
    ldrh r2, [r0]
    mov r0, r8
    ldr r3, [r4, #0x10]
    adds r1, r5, #0
    bl _call_via_r3
    adds r0, r6, #0
    adds r0, #0x48
    mov r5, sl
    strb r5, [r0]
    b .L080388A6
    .align 2, 0
.L0803889C: .4byte vtable_unk_080E736C
.L080388A0: .4byte vtable_unk_080E602C
.L080388A4:
    movs r6, #0
.L080388A6:
    str r6, [r7, #8]
    movs r0, #0
    str r0, [r7, #0xc]
    str r0, [r7, #0x10]
    adds r4, r7, #0
    adds r4, #0x14
    str r0, [r7, #0x14]
    movs r0, #0xca
    lsls r0, r0, #1
    bl __builtin_new
    adds r3, r0, #0
    ldr r0, [r7]
    ldr r1, [r0]
    movs r2, #0
    mov r5, sb
    ldr r0, [r5, #0x18]
    adds r0, #0x5d
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne .L080388D6
    movs r2, #1
.L080388D6:
    adds r0, r3, #0
    bl func_080DCB7C
    mov sb, r4
    mov r8, r0
    ldr r6, [r7, #0x14]
    cmp r8, r6
    beq .L08038910
    cmp r6, #0
    beq .L08038910
    ldr r1, [r6]
    lsls r0, r1, #2
    adds r0, r0, r1
    lsls r0, r0, #4
    adds r0, #4
    adds r5, r6, r0
    adds r4, r6, #4
    cmp r4, r5
    beq .L0803890A
.L080388FC:
    adds r0, r4, #0
    movs r1, #2
    bl func_080A47B4
    adds r4, #0x50
    cmp r4, r5
    bne .L080388FC
.L0803890A:
    adds r0, r6, #0
    bl __builtin_delete
.L08038910:
    mov r0, r8
    mov r1, sb
    str r0, [r1]
    adds r0, r7, #0
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08038928
func_08038928: @ 0x08038928
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    mov r8, r0
    ldr r0, [r0, #0x14]
    cmp r0, #0
    beq .L0803898A
    adds r6, r0, #0
    movs r7, #0
    ldr r0, [r6]
    cmp r7, r0
    bhs .L0803898A
    adds r4, r6, #0
    adds r4, #0x40
    adds r5, r6, #0
    adds r5, #0x2c
.L0803894C:
    ldrb r0, [r4, #3]
    cmp r0, #0
    bne .L08038964
    adds r0, r5, #0
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge .L08038968
    movs r0, #1
    strb r0, [r4]
    b .L08038968
.L08038964:
    movs r0, #0
    strb r0, [r4, #3]
.L08038968:
    ldr r1, [r4, #4]
    ldr r0, [r4, #0xc]
    subs r1, r1, r0
    str r1, [r4, #4]
    ldrb r0, [r4, #0x10]
    lsls r0, r0, #0x10
    cmn r1, r0
    bge .L0803897E
    movs r0, #0xf0
    lsls r0, r0, #0x11
    str r0, [r4, #4]
.L0803897E:
    adds r4, #0x50
    adds r5, #0x50
    adds r7, #1
    ldr r0, [r6]
    cmp r7, r0
    blo .L0803894C
.L0803898A:
    mov r0, r8
    ldr r1, [r0, #0xc]
    cmp r1, #0
    beq .L080389B2
    adds r3, r1, #0
    adds r3, #0x50
    ldrb r0, [r3]
    cmp r0, #0
    beq .L080389B2
    ldr r0, [r1, #0x4c]
    ldr r2, .L080389F4 @ =0xFFFF8000
    adds r0, r0, r2
    str r0, [r1, #0x4c]
    movs r2, #0xa8
    lsls r2, r2, #0x10
    cmp r0, r2
    bgt .L080389B2
    str r2, [r1, #0x4c]
    movs r0, #0
    strb r0, [r3]
.L080389B2:
    mov r1, r8
    ldr r0, [r1, #0x10]
    cmp r0, #0
    beq .L08038A60
    movs r2, #0
    movs r7, #0
    movs r1, #0xa2
    lsls r1, r1, #1
    adds r5, r0, r1
    adds r4, r0, #0
    adds r4, #0x2c
    adds r6, r0, #0
    adds r6, #0x43
.L080389CC:
    ldrb r1, [r5]
    cmp r1, #0
    bne .L08038A08
    ldrb r0, [r4, #0x17]
    cmp r0, #0
    bne .L080389F8
    adds r0, r4, #0
    str r2, [sp]
    bl func_0805E8F0
    adds r1, r0, #0
    lsls r0, r1, #0x1e
    ldr r2, [sp]
    cmp r0, #0
    bge .L080389EE
    movs r0, #1
    strb r0, [r4, #0x14]
.L080389EE:
    adds r0, r1, #0
    b .L080389FC
    .align 2, 0
.L080389F4: .4byte 0xFFFF8000
.L080389F8:
    strb r1, [r6]
    movs r0, #2
.L080389FC:
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge .L08038A0A
    movs r0, #1
    strb r0, [r5]
    b .L08038A0A
.L08038A08:
    adds r2, #1
.L08038A0A:
    adds r5, #1
    adds r4, #0x40
    adds r6, #0x40
    adds r7, #1
    cmp r7, #4
    bls .L080389CC
    movs r0, #0
    cmp r2, #5
    bne .L08038A1E
    movs r0, #1
.L08038A1E:
    cmp r0, #0
    beq .L08038A60
    mov r7, r8
    adds r7, #0x10
    movs r2, #0
    mov sb, r2
    mov r0, r8
    ldr r6, [r0, #0x10]
    cmp sb, r6
    beq .L08038A5C
    cmp r6, #0
    beq .L08038A5C
    ldr r0, [r6]
    lsls r0, r0, #6
    adds r0, #4
    adds r5, r6, r0
    adds r4, r6, #4
    cmp r4, r5
    beq .L08038A56
.L08038A44:
    ldr r0, [r4, #0x24]
    ldr r2, [r0, #8]
    adds r0, r4, #0
    movs r1, #2
    bl _call_via_r2
    adds r4, #0x40
    cmp r4, r5
    bne .L08038A44
.L08038A56:
    adds r0, r6, #0
    bl __builtin_delete
.L08038A5C:
    mov r1, sb
    str r1, [r7]
.L08038A60:
    add sp, #4
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08038A70
func_08038A70: @ 0x08038A70
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x8c
    str r0, [sp, #0x5c]
    movs r2, #0xc
    ldrsh r0, [r1, r2]
    str r0, [sp, #0x60]
    movs r2, #0xe
    ldrsh r0, [r1, r2]
    str r0, [sp, #0x64]
    ldr r0, [r1]
    ldr r1, [r1, #8]
    str r0, [sp, #0x34]
    str r1, [sp, #0x38]
    ldr r1, [sp, #0x5c]
    ldr r0, [r1, #0x14]
    cmp r0, #0
    bne .L08038A9C
    b .L08038BA2
.L08038A9C:
    str r0, [sp, #0x68]
    ldr r0, [sp, #0x34]
    ldr r1, [sp, #0x38]
    str r0, [sp, #0x6c]
    str r1, [sp, #0x70]
    movs r1, #0
    str r1, [sp, #0x74]
    ldr r2, [sp, #0x68]
    ldr r0, [r2]
    cmp r1, r0
    bhs .L08038BA2
    adds r5, r2, #0
    adds r5, #0x40
    adds r2, #0x14
    str r2, [sp, #0x88]
    ldr r6, [sp, #0x68]
    adds r6, #4
.L08038ABE:
    ldr r0, [sp, #0x6c]
    ldr r1, [sp, #0x70]
    str r0, [sp, #0x3c]
    str r1, [sp, #0x40]
    ldrb r0, [r5, #0x11]
    cmp r0, #0
    beq .L08038B86
    movs r1, #6
    ldrsh r0, [r5, r1]
    ldr r2, [sp, #0x60]
    subs r2, r0, r2
    mov sb, r2
    movs r1, #8
    ldrsh r0, [r5, r1]
    ldr r2, [sp, #0x64]
    subs r4, r0, r2
    ldr r0, .L08038B30 @ =0x00007FFF
    mov sl, r0
    add r1, sp, #0x3c
    mov r8, r1
    ldr r1, [r6, #0x28]
    ldr r3, [r1]
    ldrh r2, [r6, #0x34]
    lsls r2, r2, #2
    ldr r0, [r6, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    mov r2, r8
    ldr r3, [r2, #4]
    ldr r2, [r6]
    ldr r1, [r6, #8]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge .L08038B38
    ldrh r0, [r6, #0xc]
    mov r1, sl
    str r1, [sp]
    adds r1, r7, #0
    str r1, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    ldr r2, [sp, #0x88]
    str r2, [sp, #0x10]
    adds r0, r3, #0
    mov r1, sb
    adds r2, r4, #0
    movs r3, #0xff
    ldr r4, .L08038B34 @ =func_030004DC
    bl _call_via_r4
    b .L08038B3A
    .align 2, 0
.L08038B30: .4byte 0x00007FFF
.L08038B34: .4byte func_030004DC
.L08038B38:
    movs r0, #0
.L08038B3A:
    cmp r0, #0
    beq .L08038B82
    ldrb r0, [r5]
    adds r4, r5, #0
    cmp r0, #0
    beq .L08038B82
    mov r0, r8
    ldr r1, [r0]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    ldrb r0, [r5, #1]
    cmp r0, #0
    beq .L08038B68
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    b .L08038B7E
.L08038B68:
    ldrb r0, [r5, #2]
    cmp r0, #0
    bne .L08038B7E
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r5, #2]
.L08038B7E:
    movs r0, #0
    strb r0, [r4]
.L08038B82:
    movs r0, #0
    b .L08038B88
.L08038B86:
    movs r0, #1
.L08038B88:
    strb r0, [r5, #0x11]
    adds r5, #0x50
    ldr r1, [sp, #0x88]
    adds r1, #0x50
    str r1, [sp, #0x88]
    adds r6, #0x50
    ldr r2, [sp, #0x74]
    adds r2, #1
    str r2, [sp, #0x74]
    ldr r1, [sp, #0x68]
    ldr r0, [r1]
    cmp r2, r0
    blo .L08038ABE
.L08038BA2:
    ldr r2, [sp, #0x5c]
    ldr r0, [r2, #8]
    cmp r0, #0
    beq .L08038C30
    adds r5, r0, #0
    ldr r0, [sp, #0x34]
    ldr r1, [sp, #0x38]
    str r0, [sp, #0x44]
    str r1, [sp, #0x48]
    movs r0, #0x96
    lsls r0, r0, #1
    ldr r1, [sp, #0x60]
    subs r1, r0, r1
    mov sb, r1
    movs r0, #0x64
    ldr r2, [sp, #0x64]
    subs r2, r0, r2
    mov r8, r2
    add r7, sp, #0x44
    adds r6, r5, #0
    adds r6, #0x28
    ldr r4, [r7, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge .L08038C04
    ldrh r1, [r5, #0xc]
    adds r2, r5, #0
    adds r2, #0x10
    movs r0, #0x80
    lsls r0, r0, #8
    str r0, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, sb
    mov r2, r8
    movs r3, #0xff
    ldr r4, .L08038C00 @ =func_030004DC
    bl _call_via_r4
    b .L08038C06
    .align 2, 0
.L08038C00: .4byte func_030004DC
.L08038C04:
    movs r0, #0
.L08038C06:
    cmp r0, #0
    beq .L08038C30
    adds r4, r5, #0
    adds r4, #0x48
    ldrb r0, [r4]
    cmp r0, #0
    beq .L08038C30
    ldr r1, [r7]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #0
    strb r0, [r4]
.L08038C30:
    ldr r1, [sp, #0x5c]
    ldr r0, [r1, #0xc]
    cmp r0, #0
    beq .L08038CC8
    adds r5, r0, #0
    ldr r0, [sp, #0x34]
    ldr r1, [sp, #0x38]
    str r0, [sp, #0x4c]
    str r1, [sp, #0x50]
    adds r0, r5, #0
    adds r0, #0x51
    ldrb r0, [r0]
    lsls r0, r0, #3
    ldr r1, [sp, #0x60]
    subs r1, #0xf0
    subs r0, r0, r1
    mov sb, r0
    ldr r0, [r5, #0x4c]
    asrs r0, r0, #0x10
    ldr r2, [sp, #0x64]
    subs r2, r0, r2
    mov r8, r2
    add r7, sp, #0x4c
    adds r6, r5, #0
    adds r6, #0x28
    ldr r4, [r7, #4]
    adds r0, r5, #0
    ldm r0!, {r3}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge .L08038C9C
    ldrh r1, [r5, #0xc]
    adds r2, r5, #0
    adds r2, #0x10
    movs r0, #0x80
    lsls r0, r0, #8
    str r0, [sp]
    str r6, [sp, #4]
    str r3, [sp, #8]
    str r1, [sp, #0xc]
    str r2, [sp, #0x10]
    adds r0, r4, #0
    mov r1, sb
    mov r2, r8
    movs r3, #0xff
    ldr r4, .L08038C98 @ =func_030004DC
    bl _call_via_r4
    b .L08038C9E
    .align 2, 0
.L08038C98: .4byte func_030004DC
.L08038C9C:
    movs r0, #0
.L08038C9E:
    cmp r0, #0
    beq .L08038CC8
    adds r4, r5, #0
    adds r4, #0x48
    ldrb r0, [r4]
    cmp r0, #0
    beq .L08038CC8
    ldr r1, [r7]
    adds r2, r6, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r1, r6, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #0
    bl func_080A4944
    movs r0, #0
    strb r0, [r4]
.L08038CC8:
    ldr r1, [sp, #0x5c]
    ldr r0, [r1, #0x10]
    cmp r0, #0
    bne .L08038CD2
    b .L08038DE0
.L08038CD2:
    str r0, [sp, #0x78]
    ldr r0, [sp, #0x34]
    ldr r1, [sp, #0x38]
    str r0, [sp, #0x54]
    str r1, [sp, #0x58]
    movs r2, #0
    str r2, [sp, #0x7c]
    ldr r0, [sp, #0x78]
    adds r0, #0x14
    str r0, [sp, #0x80]
    ldr r1, .L08038D68 @ =gUnk_080F165E
    str r1, [sp, #0x84]
    ldr r5, [sp, #0x78]
    adds r5, #4
.L08038CEE:
    ldr r2, [sp, #0x78]
    movs r1, #0xa2
    lsls r1, r1, #1
    adds r0, r2, r1
    ldr r2, [sp, #0x7c]
    adds r0, r0, r2
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08038DC8
    ldr r1, [sp, #0x84]
    ldrh r0, [r1]
    ldr r2, [sp, #0x60]
    subs r2, r0, r2
    mov sb, r2
    ldrh r0, [r1, #2]
    ldr r1, [sp, #0x64]
    subs r4, r0, r1
    adds r6, r5, #0
    movs r2, #0x80
    lsls r2, r2, #8
    mov sl, r2
    add r0, sp, #0x54
    mov r8, r0
    ldr r1, [r5, #0x28]
    ldr r3, [r1]
    ldrh r2, [r5, #0x34]
    lsls r2, r2, #2
    ldr r0, [r5, #0x2c]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    mov r1, r8
    ldr r3, [r1, #4]
    ldr r2, [r5]
    ldr r1, [r5, #8]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge .L08038D70
    ldrh r0, [r5, #0xc]
    mov r1, sl
    str r1, [sp]
    adds r1, r7, #0
    str r1, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    ldr r2, [sp, #0x80]
    str r2, [sp, #0x10]
    adds r0, r3, #0
    mov r1, sb
    adds r2, r4, #0
    movs r3, #0xff
    ldr r4, .L08038D6C @ =func_030004DC
    bl _call_via_r4
    b .L08038D72
    .align 2, 0
.L08038D68: .4byte gUnk_080F165E
.L08038D6C: .4byte func_030004DC
.L08038D70:
    movs r0, #0
.L08038D72:
    cmp r0, #0
    beq .L08038DC8
    adds r0, r6, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    mov sb, r0
    cmp r1, #0
    beq .L08038DC8
    mov r0, r8
    ldr r1, [r0]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08038DA8
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    b .L08038DC2
.L08038DA8:
    adds r4, r6, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne .L08038DC2
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
.L08038DC2:
    movs r0, #0
    mov r1, sb
    strb r0, [r1]
.L08038DC8:
    ldr r2, [sp, #0x80]
    adds r2, #0x40
    str r2, [sp, #0x80]
    ldr r0, [sp, #0x84]
    adds r0, #4
    str r0, [sp, #0x84]
    adds r5, #0x40
    ldr r1, [sp, #0x7c]
    adds r1, #1
    str r1, [sp, #0x7c]
    cmp r1, #4
    bls .L08038CEE
.L08038DE0:
    add sp, #0x8c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08038DF0
func_08038DF0: @ 0x08038DF0
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    mov r8, r0
    movs r0, #0x54
    bl __builtin_new
    adds r7, r0, #0
    mov r1, r8
    ldr r0, [r1]
    ldr r4, [r0]
    ldr r0, [r4]
    ldr r1, [r0, #0x70]
    adds r0, r4, #0
    bl _call_via_r1
    adds r5, r0, #0
    adds r0, r7, #0
    adds r1, r4, #0
    movs r2, #6
    movs r3, #0x1b
    bl func_080A4740
    ldr r0, .L08038E8C @ =vtable_unk_080E602C
    str r0, [r7, #0x24]
    adds r6, r7, #0
    adds r6, #0x28
    ldr r4, [r5]
    mov r0, sp
    ldr r3, [r4, #0xc]
    adds r1, r5, #0
    movs r2, #0
    bl _call_via_r3
    ldr r0, [sp]
    ldrh r2, [r0]
    adds r0, r6, #0
    ldr r3, [r4, #0x10]
    adds r1, r5, #0
    bl _call_via_r3
    adds r1, r7, #0
    adds r1, #0x48
    movs r2, #0
    movs r0, #1
    strb r0, [r1]
    movs r0, #0x90
    lsls r0, r0, #0x11
    str r0, [r7, #0x4c]
    adds r0, r7, #0
    adds r0, #0x50
    strb r2, [r0]
    adds r0, #1
    strb r2, [r0]
    mov r5, r8
    adds r5, #0xc
    adds r6, r7, #0
    mov r0, r8
    ldr r4, [r0, #0xc]
    cmp r6, r4
    beq .L08038E7E
    cmp r4, #0
    beq .L08038E7E
    adds r0, r4, #0
    movs r1, #2
    bl func_080A47B4
    adds r0, r4, #0
    bl __builtin_delete
.L08038E7E:
    str r6, [r5]
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08038E8C: .4byte vtable_unk_080E602C

    .if 0
    thumb_func_start func_08038E90
func_08038E90: @ 0x08038E90
    ldr r0, [r0, #0xc]
    movs r1, #0x90
    lsls r1, r1, #0x11
    str r1, [r0, #0x4c]
    adds r0, #0x50
    movs r1, #1
    strb r1, [r0]
    bx lr

    .endif
    .section .text.tail08038EA0, "ax", %progbits
    thumb_func_start func_08038EA0
func_08038EA0: @ 0x08038EA0
    push {lr}
    ldr r0, [r0, #0xc]
    movs r1, #0
    adds r0, #0x50
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08038EB0
    movs r1, #1
.L08038EB0:
    adds r0, r1, #0
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08038EB8
func_08038EB8: @ 0x08038EB8
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r5, #0xc
    movs r6, #0
    ldr r4, [r0, #0xc]
    cmp r6, r4
    beq .L08038ED8
    cmp r4, #0
    beq .L08038ED8
    adds r0, r4, #0
    movs r1, #2
    bl func_080A47B4
    adds r0, r4, #0
    bl __builtin_delete
.L08038ED8:
    str r6, [r5]
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_08038EE0
func_08038EE0: @ 0x08038EE0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x4c
    mov sb, r0
    movs r0, #0xa6
    lsls r0, r0, #1
    bl __builtin_new
    mov r2, sb
    ldr r1, [r2]
    adds r5, r0, #0
    ldr r6, [r1]
    movs r0, #0
    str r0, [r5]
    mov sl, r0
    add r3, sp, #8
    mov r8, r3
.L08038F08:
    mov r7, sl
    lsls r0, r7, #2
    ldr r1, .L08038F14 @ =.L08038F18
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08038F14: .4byte .L08038F18
.L08038F18: @ jump table
    .4byte .L08038F2C @ case 0
    .4byte .L08038F4C @ case 1
    .4byte .L08038F4C @ case 2
    .4byte .L08038FDC @ case 3
    .4byte .L08038FDC @ case 4
.L08038F2C:
    ldr r0, [r6]
    ldr r1, [r0, #0x78]
    adds r0, r6, #0
    bl _call_via_r1
    adds r1, r0, #0
    movs r0, #4
    str r0, [sp]
    movs r0, #0x1c
    str r0, [sp, #4]
    movs r0, #0
    mov r2, r8
    strb r0, [r2]
    add r0, sp, #0xc
    movs r2, #2
    b .L08038F6A
.L08038F4C:
    ldr r0, [r6]
    ldr r1, [r0, #0x78]
    adds r0, r6, #0
    bl _call_via_r1
    adds r1, r0, #0
    movs r0, #4
    str r0, [sp]
    movs r0, #0x1c
    str r0, [sp, #4]
    movs r0, #0
    mov r2, r8
    strb r0, [r2]
    add r0, sp, #0xc
    movs r2, #1
.L08038F6A:
    adds r3, r6, #0
    bl func_080A4A00
    ldr r0, [r5]
    cmp r0, #4
    bhi .L08038FCC
    lsls r0, r0, #6
    adds r0, #4
    adds r4, r5, r0
    cmp r4, #0
    beq .L08038FC6
    adds r0, r4, #0
    add r1, sp, #0xc
    bl func_080DC840
    ldr r0, .L08038FD8 @ =vtable_unk_080E681C
    str r0, [r4, #0x24]
    adds r1, r4, #0
    adds r1, #0x28
    add r0, sp, #0x34
    ldm r0!, {r2, r3, r7}
    stm r1!, {r2, r3, r7}
    ldm r0!, {r3, r7}
    stm r1!, {r3, r7}
    add r0, sp, #0x48
    ldrb r1, [r0]
    adds r0, r4, #0
    adds r0, #0x3c
    strb r1, [r0]
    mov r0, sp
    adds r0, #0x49
    ldrb r0, [r0]
    adds r1, r4, #0
    adds r1, #0x3d
    strb r0, [r1]
    mov r0, sp
    adds r0, #0x4a
    ldrb r0, [r0]
    adds r1, #1
    strb r0, [r1]
    mov r0, sp
    adds r0, #0x4b
    ldrb r1, [r0]
    adds r0, r4, #0
    adds r0, #0x3f
    strb r1, [r0]
.L08038FC6:
    ldr r0, [r5]
    adds r0, #1
    str r0, [r5]
.L08038FCC:
    add r0, sp, #0xc
    movs r1, #2
    bl func_080A47B4
    b .L08039064
    .align 2, 0
.L08038FD8: .4byte vtable_unk_080E681C
.L08038FDC:
    ldr r0, [r6]
    ldr r1, [r0, #0x78]
    adds r0, r6, #0
    bl _call_via_r1
    adds r1, r0, #0
    movs r0, #4
    str r0, [sp]
    movs r0, #0x1c
    str r0, [sp, #4]
    movs r0, #0
    mov r2, r8
    strb r0, [r2]
    add r0, sp, #0xc
    movs r2, #0
    adds r3, r6, #0
    bl func_080A4A00
    ldr r0, [r5]
    cmp r0, #4
    bhi .L0803905C
    lsls r0, r0, #6
    adds r0, #4
    adds r4, r5, r0
    cmp r4, #0
    beq .L08039056
    adds r0, r4, #0
    add r1, sp, #0xc
    bl func_080DC840
    ldr r0, .L080390CC @ =vtable_unk_080E681C
    str r0, [r4, #0x24]
    adds r1, r4, #0
    adds r1, #0x28
    add r0, sp, #0x34
    ldm r0!, {r2, r3, r7}
    stm r1!, {r2, r3, r7}
    ldm r0!, {r3, r7}
    stm r1!, {r3, r7}
    add r0, sp, #0x48
    ldrb r1, [r0]
    adds r0, r4, #0
    adds r0, #0x3c
    strb r1, [r0]
    mov r0, sp
    adds r0, #0x49
    ldrb r0, [r0]
    adds r1, r4, #0
    adds r1, #0x3d
    strb r0, [r1]
    mov r0, sp
    adds r0, #0x4a
    ldrb r0, [r0]
    adds r1, #1
    strb r0, [r1]
    mov r0, sp
    adds r0, #0x4b
    ldrb r1, [r0]
    adds r0, r4, #0
    adds r0, #0x3f
    strb r1, [r0]
.L08039056:
    ldr r0, [r5]
    adds r0, #1
    str r0, [r5]
.L0803905C:
    add r0, sp, #0xc
    movs r1, #2
    bl func_080A47B4
.L08039064:
    movs r1, #0xa2
    lsls r1, r1, #1
    adds r0, r5, r1
    add r0, sl
    movs r1, #0
    strb r1, [r0]
    movs r2, #1
    add sl, r2
    mov r3, sl
    cmp r3, #4
    bhi .L0803907C
    b .L08038F08
.L0803907C:
    movs r7, #0x10
    add r7, sb
    mov r8, r7
    adds r7, r5, #0
    mov r0, sb
    ldr r6, [r0, #0x10]
    cmp r7, r6
    beq .L080390B6
    cmp r6, #0
    beq .L080390B6
    ldr r0, [r6]
    lsls r0, r0, #6
    adds r0, #4
    adds r5, r6, r0
    adds r4, r6, #4
    cmp r4, r5
    beq .L080390B0
.L0803909E:
    ldr r0, [r4, #0x24]
    ldr r2, [r0, #8]
    adds r0, r4, #0
    movs r1, #2
    bl _call_via_r2
    adds r4, #0x40
    cmp r4, r5
    bne .L0803909E
.L080390B0:
    adds r0, r6, #0
    bl __builtin_delete
.L080390B6:
    mov r1, r8
    str r7, [r1]
    add sp, #0x4c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080390CC: .4byte vtable_unk_080E681C

    .section .text.tail080390DC, "ax", %progbits
.L080390DC:
    .byte 0x10, 0xB5, 0x04, 0x1C
    .byte 0x30, 0x30, 0x25, 0xF0, 0xBD, 0xFB, 0x20, 0x1C, 0x44, 0x30, 0x00, 0x22, 0x01, 0x21, 0x01, 0x70
    .byte 0x02, 0x30, 0x02, 0x70, 0x01, 0x30, 0x01, 0x70, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
    .byte 0x26, 0x30, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00, 0xCB, 0x1F, 0x03, 0x80, 0x13, 0x1F, 0x43, 0x80
    .byte 0x07, 0x31, 0x81, 0x80, 0x05, 0x32, 0xC2, 0x80, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x80, 0x69
    .byte 0xD6, 0xF7, 0x56, 0xFF, 0x00, 0x21, 0x1E, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x08, 0x1C, 0x02, 0xBC
    .byte 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_08039134
func_08039134: @ 0x08039134
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r6, r0, #0
    str r1, [sp]
    mov sl, r2
    mov sb, r3
    movs r7, #0x64
    movs r0, #0
    mov r8, r0
    movs r5, #0x2e
.L08039150:
    ldr r0, [r6]
    ldr r2, [r0, #0x40]
    adds r0, r6, #0
    adds r1, r5, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq .L080391A6
    ldrh r0, [r4, #4]
    ldr r1, [sp]
    cmp r0, r1
    bne .L080391A6
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x60]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080391A6
    movs r2, #0xa
    ldrsh r1, [r4, r2]
    mov r0, sl
    subs r1, r1, r0
    movs r2, #0xe
    ldrsh r0, [r4, r2]
    mov r2, sb
    subs r0, r0, r2
    adds r2, r1, #0
    muls r2, r1, r2
    adds r1, r2, #0
    adds r2, r0, #0
    muls r2, r0, r2
    adds r0, r2, #0
    adds r0, r1, r0
    adds r1, r0, #0
    cmp r7, #0x64
    beq .L080391A2
    cmp r8, r0
    ble .L080391A6
.L080391A2:
    adds r7, r5, #0
    mov r8, r1
.L080391A6:
    adds r5, #1
    cmp r5, #0x45
    ble .L08039150
    adds r0, r7, #0
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080391C0
func_080391C0: @ 0x080391C0
    push {lr}
    adds r2, r0, #0
    cmp r1, #0x38
    bgt .L080391D4
    ldr r0, .L080391EC @ =0x00000143
    cmp r2, r0
    ble .L080391D4
    adds r0, #0x21
    cmp r2, r0
    ble .L080391E6
.L080391D4:
    ldr r0, .L080391F0 @ =0x0000027F
    cmp r1, r0
    ble .L080391F4
    cmp r2, #0xf7
    ble .L080391F4
    movs r0, #0x8c
    lsls r0, r0, #1
    cmp r2, r0
    bgt .L080391F4
.L080391E6:
    movs r0, #1
    b .L080391F6
    .align 2, 0
.L080391EC: .4byte 0x00000143
.L080391F0: .4byte 0x0000027F
.L080391F4:
    movs r0, #0
.L080391F6:
    pop {r1}
    bx r1
    .align 2, 0

    .section .text.tail08039204, "ax", %progbits
    thumb_func_start func_08039204
func_08039204: @ 0x08039204
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    adds r5, r1, #0
    str r2, [sp, #0x10]
    ldr r0, [r5, #0x34]
    mov r8, r0
    mov r1, r8
    adds r1, #0x10
    str r1, [sp, #0x14]
    mov r2, r8
    ldrh r4, [r2, #0x10]
    cmp r4, #0
    beq .L08039228
    subs r4, #1
.L08039228:
    ldrh r3, [r5, #4]
    mov ip, r3
    movs r1, #0xa
    ldrsh r0, [r5, r1]
    mov sb, r0
    movs r2, #0xe
    ldrsh r7, [r5, r2]
    movs r0, #0xb0
    lsls r0, r0, #1
    cmp r7, r0
    ble .L0803924A
    add r3, sp, #8
    movs r1, #0x84
    lsls r1, r1, #1
    movs r2, #0xb4
    lsls r2, r2, #2
    b .L08039254
.L0803924A:
    add r3, sp, #8
    movs r1, #0xaa
    lsls r1, r1, #1
    movs r2, #0x10
    rsbs r2, r2, #0
.L08039254:
    adds r0, r3, #0
    strh r1, [r0]
    strh r2, [r3, #2]
    add r1, sp, #8
    adds r0, r1, #0
    movs r2, #0
    ldrsh r3, [r0, r2]
    mov sl, r3
    movs r3, #2
    ldrsh r6, [r1, r3]
    mov r0, ip
    cmp r0, #2
    bne .L080392EA
    mov r1, sl
    mov r2, sb
    subs r0, r1, r2
    cmp r0, #0
    bge .L0803927A
    rsbs r0, r0, #0
.L0803927A:
    cmp r0, #0xf
    bgt .L0803928A
    subs r0, r6, r7
    cmp r0, #0
    bge .L08039286
    rsbs r0, r0, #0
.L08039286:
    cmp r0, #0xf
    ble .L080392EA
.L0803928A:
    cmp r4, #0
    bne .L080392E4
    mov r0, sb
    adds r1, r7, #0
    bl func_080391C0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L080392B6
    movs r1, #0
    cmp r7, r6
    blt .L080392A4
    movs r1, #1
.L080392A4:
    adds r0, r5, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r1
    beq .L080392DC
    adds r0, r5, #0
    bl SetAnimFacing__12AActorEntityUi
    b .L080392DC
.L080392B6:
    adds r4, r5, #0
    adds r4, #0x20
    ldrb r0, [r4]
    ldr r3, [sp, #0x10]
    str r3, [sp]
    str r0, [sp, #4]
    mov r0, sb
    adds r1, r7, #0
    mov r2, sl
    adds r3, r6, #0
    bl func_080ABC40
    adds r1, r0, #0
    ldrb r0, [r4]
    cmp r0, r1
    beq .L080392DC
    adds r0, r5, #0
    bl SetAnimFacing__12AActorEntityUi
.L080392DC:
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
.L080392E4:
    ldr r0, [sp, #0x14]
    strh r4, [r0]
    b .L080392FC
.L080392EA:
    adds r0, r5, #0
    movs r1, #0x8d
    lsls r1, r1, #2
    bl SetMap__7AEntityUi
    add r1, sp, #0xc
    mov r0, r8
    bl func_0809C098
.L080392FC:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    .section .text.tail08039310, "ax", %progbits
    thumb_func_start func_08039310
func_08039310: @ 0x08039310
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x2c
    adds r5, r1, #0
    str r2, [sp, #0x1c]
    ldr r0, [r5, #0x34]
    str r0, [sp, #0x20]
    adds r0, #0x10
    mov r8, r0
    ldr r3, [r5]
    ldrb r1, [r0, #6]
    str r1, [sp, #0x24]
    ldr r2, [sp, #0x20]
    ldrh r6, [r2, #0x10]
    cmp r6, #0
    beq .L08039344
    subs r6, #1
    cmp r6, #0
    bne .L08039344
    cmp r1, #0
    beq .L08039344
    subs r1, #1
    str r1, [sp, #0x24]
.L08039344:
    ldr r0, [r3]
    mov r2, r8
    ldrb r1, [r2, #7]
    ldr r2, [r0, #0x40]
    adds r0, r3, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    bne .L0803935A
    b .L08039488
.L0803935A:
    ldrh r0, [r4, #4]
    ldrh r3, [r5, #4]
    cmp r0, r3
    beq .L08039364
    b .L08039488
.L08039364:
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x60]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08039376
    b .L08039488
.L08039376:
    movs r0, #0xa
    ldrsh r2, [r5, r0]
    movs r1, #0xe
    ldrsh r7, [r5, r1]
    movs r0, #0xa
    ldrsh r3, [r4, r0]
    mov sl, r3
    movs r3, #0xe
    ldrsh r1, [r4, r3]
    mov sb, r1
    ldr r0, [sp, #0x24]
    cmp r0, #0
    beq .L08039444
    mov r1, sl
    subs r0, r1, r2
    cmp r0, #0
    bge .L0803939A
    rsbs r0, r0, #0
.L0803939A:
    cmp r0, #0xf
    bgt .L080393AC
    mov r3, sb
    subs r0, r3, r7
    cmp r0, #0
    bge .L080393A8
    rsbs r0, r0, #0
.L080393A8:
    cmp r0, #0xf
    ble .L08039444
.L080393AC:
    cmp r6, #0
    beq .L080393D4
    mov r1, r8
    movs r3, #2
    ldrsh r0, [r1, r3]
    subs r0, r0, r2
    cmp r0, #0
    bge .L080393BE
    rsbs r0, r0, #0
.L080393BE:
    cmp r0, #0xf
    bgt .L08039438
    mov r1, r8
    movs r3, #4
    ldrsh r0, [r1, r3]
    subs r0, r0, r7
    cmp r0, #0
    bge .L080393D0
    rsbs r0, r0, #0
.L080393D0:
    cmp r0, #0xf
    bgt .L08039438
.L080393D4:
    adds r0, r2, #0
    adds r1, r7, #0
    str r2, [sp, #0x28]
    bl func_080391C0
    lsls r0, r0, #0x18
    ldr r2, [sp, #0x28]
    cmp r0, #0
    beq .L08039400
    movs r1, #0
    cmp r7, sb
    blt .L080393EE
    movs r1, #1
.L080393EE:
    adds r0, r5, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r1
    beq .L08039426
    adds r0, r5, #0
    bl SetAnimFacing__12AActorEntityUi
    b .L08039426
.L08039400:
    adds r4, r5, #0
    adds r4, #0x20
    ldrb r0, [r4]
    ldr r6, [sp, #0x1c]
    str r6, [sp]
    str r0, [sp, #4]
    adds r0, r2, #0
    adds r1, r7, #0
    mov r2, sl
    mov r3, sb
    bl func_080ABC40
    adds r1, r0, #0
    ldrb r0, [r4]
    cmp r0, r1
    beq .L08039426
    adds r0, r5, #0
    bl SetAnimFacing__12AActorEntityUi
.L08039426:
    movs r0, #0x1e
    bl func_080AB788
    adds r6, r0, #1
    mov r1, sl
    mov r0, r8
    strh r1, [r0, #2]
    mov r2, sb
    strh r2, [r0, #4]
.L08039438:
    add r3, sp, #0x24
    ldrb r0, [r3]
    mov r3, r8
    strb r0, [r3, #6]
    strh r6, [r3]
    b .L08039548
.L08039444:
    ldr r1, .L0803947C @ =0xFFFF0000
    ldr r0, [sp, #8]
    ands r0, r1
    movs r1, #0x24
    orrs r0, r1
    ldr r1, .L08039480 @ =0xFF00FFFF
    ands r0, r1
    movs r1, #0x80
    lsls r1, r1, #9
    orrs r0, r1
    str r0, [sp, #8]
    mov r6, r8
    ldrb r1, [r6, #7]
    lsls r1, r1, #0x18
    ldr r2, .L08039484 @ =0x00FFFFFF
    ands r0, r2
    orrs r0, r1
    str r0, [sp, #8]
    ldr r0, [sp, #0x20]
    add r1, sp, #8
    bl func_0809C0BC
    adds r0, r5, #0
    movs r1, #0xab
    bl func_080200C4
    b .L08039548
    .align 2, 0
.L0803947C: .4byte 0xFFFF0000
.L08039480: .4byte 0xFF00FFFF
.L08039484: .4byte 0x00FFFFFF
.L08039488:
    ldr r4, [r5, #0x34]
    movs r6, #0x64
    adds r0, r4, #0
    bl func_0809C060
    cmp r0, #0
    beq .L080394AA
    ldr r0, [r5]
    ldrh r1, [r5, #4]
    movs r3, #0xa
    ldrsh r2, [r5, r3]
    movs r6, #0xe
    ldrsh r3, [r5, r6]
    bl func_08039134
    adds r6, r0, #0
    b .L080394B2
.L080394AA:
    adds r0, r5, #0
    movs r1, #0xaa
    bl func_080200C4
.L080394B2:
    cmp r6, #0x64
    beq .L08039534
    movs r0, #0x64
    bl func_080AB788
    cmp r0, #0x45
    bhi .L080394FC
    ldr r1, .L080394F0 @ =0xFFFF0000
    ldr r0, [sp, #0xc]
    ands r0, r1
    str r0, [sp, #0xc]
    movs r0, #8
    bl func_080AB788
    adds r0, #3
    lsls r0, r0, #0x18
    lsrs r0, r0, #8
    ldr r3, .L080394F4 @ =0xFF00FFFF
    add r1, sp, #0xc
    ldr r2, [r1, #4]
    ands r2, r3
    orrs r2, r0
    lsls r3, r6, #0x18
    ldr r0, .L080394F8 @ =0x00FFFFFF
    ands r2, r0
    orrs r2, r3
    str r2, [r1, #4]
    adds r0, r4, #0
    bl func_0809C0AC
    b .L08039548
    .align 2, 0
.L080394F0: .4byte 0xFFFF0000
.L080394F4: .4byte 0xFF00FFFF
.L080394F8: .4byte 0x00FFFFFF
.L080394FC:
    movs r0, #0x3c
    bl func_080AB788
    adds r0, #0x78
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L08039528 @ =0xFFFF0000
    ldr r1, [sp, #0x14]
    ands r1, r2
    orrs r1, r0
    ldr r0, .L0803952C @ =0xFF00FFFF
    ands r1, r0
    lsls r2, r6, #0x18
    ldr r0, .L08039530 @ =0x00FFFFFF
    ands r1, r0
    orrs r1, r2
    str r1, [sp, #0x14]
    add r1, sp, #0x14
    adds r0, r4, #0
    bl func_0809C0BC
    b .L08039548
    .align 2, 0
.L08039528: .4byte 0xFFFF0000
.L0803952C: .4byte 0xFF00FFFF
.L08039530: .4byte 0x00FFFFFF
.L08039534:
    ldr r1, .L08039558 @ =0xFFFF0000
    ldr r0, [sp, #0x18]
    ands r0, r1
    movs r1, #0xb4
    orrs r0, r1
    str r0, [sp, #0x18]
    add r1, sp, #0x18
    adds r0, r4, #0
    bl func_0809C0A0
.L08039548:
    add sp, #0x2c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08039558: .4byte 0xFFFF0000

    thumb_func_start func_0803955C
func_0803955C: @ 0x0803955C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    adds r5, r1, #0
    ldr r0, [r5, #0x34]
    mov r8, r0
    mov r6, r8
    adds r6, #0x10
    mov r1, r8
    ldrh r4, [r1, #0x10]
    cmp r4, #0
    beq .L08039582
    subs r4, #1
    cmp r4, #0
    beq .L08039582
    b .L080396E2
.L08039582:
    ldrb r0, [r6, #2]
    cmp r0, #0
    bne .L0803958A
    b .L080396D4
.L0803958A:
    ldr r4, [r5]
    ldrh r7, [r5, #4]
    movs r3, #0xa
    ldrsh r2, [r5, r3]
    mov sb, r2
    movs r1, #0xe
    ldrsh r0, [r5, r1]
    mov sl, r0
    adds r0, r4, #0
    adds r1, r7, #0
    mov r3, sl
    bl func_08039134
    adds r1, r0, #0
    cmp r1, #0x64
    bne .L080395AC
    ldrb r1, [r6, #3]
.L080395AC:
    ldr r0, [r4]
    ldr r2, [r0, #0x40]
    adds r0, r4, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq .L08039602
    ldrh r0, [r4, #4]
    cmp r0, r7
    bne .L08039602
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x60]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08039602
    movs r2, #0xa
    ldrsh r0, [r4, r2]
    movs r3, #0xe
    ldrsh r1, [r4, r3]
    mov r6, sb
    subs r0, r0, r6
    cmp r0, #0
    bge .L080395E4
    rsbs r0, r0, #0
.L080395E4:
    cmp r0, #0xf
    bgt .L08039602
    mov r0, sl
    subs r3, r1, r0
    cmp r3, #0
    bge .L080395F2
    rsbs r3, r3, #0
.L080395F2:
    cmp r3, #0xf
    bgt .L08039602
    ldr r0, [r4, #0x14]
    adds r0, #0x80
    ldr r1, [r0]
    adds r0, r4, #0
    bl _call_via_r1
.L08039602:
    mov r0, r8
    movs r1, #4
    bl func_0809C068
    ldr r4, [r5, #0x34]
    movs r6, #0x64
    adds r0, r4, #0
    bl func_0809C060
    cmp r0, #0
    beq .L0803962C
    ldr r0, [r5]
    ldrh r1, [r5, #4]
    movs r3, #0xa
    ldrsh r2, [r5, r3]
    movs r6, #0xe
    ldrsh r3, [r5, r6]
    bl func_08039134
    adds r6, r0, #0
    b .L08039634
.L0803962C:
    adds r0, r5, #0
    movs r1, #0xaa
    bl func_080200C4
.L08039634:
    cmp r6, #0x64
    beq .L080396B8
    movs r0, #0x64
    bl func_080AB788
    cmp r0, #0x45
    bhi .L08039680
    ldr r1, .L08039674 @ =0xFFFF0000
    ldr r0, [sp]
    ands r0, r1
    str r0, [sp]
    movs r0, #8
    bl func_080AB788
    adds r0, #3
    lsls r0, r0, #0x18
    lsrs r0, r0, #8
    ldr r2, .L08039678 @ =0xFF00FFFF
    ldr r1, [sp, #4]
    ands r1, r2
    orrs r1, r0
    lsls r2, r6, #0x18
    ldr r0, .L0803967C @ =0x00FFFFFF
    ands r1, r0
    orrs r1, r2
    str r1, [sp, #4]
    adds r0, r4, #0
    mov r1, sp
    bl func_0809C0AC
    b .L080396E4
    .align 2, 0
.L08039674: .4byte 0xFFFF0000
.L08039678: .4byte 0xFF00FFFF
.L0803967C: .4byte 0x00FFFFFF
.L08039680:
    movs r0, #0x3c
    bl func_080AB788
    adds r0, #0x78
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L080396AC @ =0xFFFF0000
    ldr r1, [sp, #8]
    ands r1, r2
    orrs r1, r0
    ldr r0, .L080396B0 @ =0xFF00FFFF
    ands r1, r0
    lsls r2, r6, #0x18
    ldr r0, .L080396B4 @ =0x00FFFFFF
    ands r1, r0
    orrs r1, r2
    str r1, [sp, #8]
    add r1, sp, #8
    adds r0, r4, #0
    bl func_0809C0BC
    b .L080396E4
    .align 2, 0
.L080396AC: .4byte 0xFFFF0000
.L080396B0: .4byte 0xFF00FFFF
.L080396B4: .4byte 0x00FFFFFF
.L080396B8:
    ldr r1, .L080396D0 @ =0xFFFF0000
    ldr r0, [sp, #0xc]
    ands r0, r1
    movs r1, #0xb4
    orrs r0, r1
    str r0, [sp, #0xc]
    add r1, sp, #0xc
    adds r0, r4, #0
    bl func_0809C0A0
    b .L080396E4
    .align 2, 0
.L080396D0: .4byte 0xFFFF0000
.L080396D4:
    movs r4, #0x24
    movs r0, #1
    strb r0, [r6, #2]
    adds r0, r5, #0
    movs r1, #0xab
    bl func_080200C4
.L080396E2:
    strh r4, [r6]
.L080396E4:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

	.if 0
	thumb_func_start func_080396F4
func_080396F4: @ 0x080396F4
    push {lr}
    ldr r0, [r1, #0x34]
    ldrb r0, [r0, #0x12]
    movs r1, #0
    cmp r0, #0
    beq .L08039702
    movs r1, #3
.L08039702:
    adds r0, r1, #0
	pop {r1}
	bx r1
	.endif

	.section .text.tail08039708, "ax", %progbits

	thumb_func_start func_08039708
func_08039708: @ 0x08039708
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    adds r6, r1, #0
    mov sl, r2
    ldr r0, [r6, #0x34]
    movs r1, #0x10
    adds r1, r1, r0
    mov sb, r1
    ldr r3, [r6]
    ldrh r2, [r0, #0x10]
    mov r8, r2
    cmp r2, #0
    beq .L08039730
    movs r4, #1
    rsbs r4, r4, #0
    add r8, r4
.L08039730:
    ldr r1, [r0, #0x10]
    lsls r0, r1, #9
    lsrs r7, r0, #0x19
    cmp r7, #0
    beq .L0803973C
    subs r7, #1
.L0803973C:
    mov r5, sb
    ldrb r4, [r5, #3]
    cmp r4, #0
    beq .L08039746
    subs r4, #1
.L08039746:
    mov r0, r8
    cmp r0, #0
    beq .L080397C6
    ldr r2, [r3]
    lsls r0, r1, #8
    movs r1, #0
    cmp r0, #0
    bge .L08039758
    movs r1, #0x2b
.L08039758:
    ldr r2, [r2, #0x40]
    adds r0, r3, #0
    bl _call_via_r2
    adds r3, r0, #0
    cmp r3, #0
    beq .L080397C6
    ldrh r0, [r3, #4]
    ldrh r1, [r6, #4]
    cmp r0, r1
    bne .L080397C6
    cmp r4, #0
    bne .L080397AC
    movs r2, #0xa
    ldrsh r0, [r6, r2]
    movs r4, #0xe
    ldrsh r1, [r6, r4]
    movs r5, #0xa
    ldrsh r2, [r3, r5]
    movs r4, #0xe
    ldrsh r3, [r3, r4]
    adds r5, r6, #0
    adds r5, #0x20
    ldrb r4, [r5]
    mov ip, r4
    mov r4, sl
    str r4, [sp]
    mov r4, ip
    str r4, [sp, #4]
    bl func_080ABE58
    adds r1, r0, #0
    ldrb r0, [r5]
    cmp r0, r1
    beq .L080397A4
    adds r0, r6, #0
    bl SetAnimFacing__12AActorEntityUi
.L080397A4:
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
.L080397AC:
    mov r0, r8
    mov r5, sb
    strh r0, [r5]
    movs r0, #0x7f
    ands r7, r0
    ldrb r1, [r5, #2]
    movs r0, #0x80
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r7
    strb r0, [r5, #2]
    strb r4, [r5, #3]
    b .L0803988C
.L080397C6:
    adds r0, r6, #0
    bl func_080323C8
    ldr r4, [r6, #0x34]
    movs r5, #0x64
    adds r0, r4, #0
    bl func_0809C060
    cmp r0, #0
    beq .L080397EE
    ldr r0, [r6]
    ldrh r1, [r6, #4]
    movs r3, #0xa
    ldrsh r2, [r6, r3]
    movs r5, #0xe
    ldrsh r3, [r6, r5]
    bl func_08039134
    adds r5, r0, #0
    b .L080397F6
.L080397EE:
    adds r0, r6, #0
    movs r1, #0xaa
    bl func_080200C4
.L080397F6:
    cmp r5, #0x64
    beq .L08039878
    movs r0, #0x64
    bl func_080AB788
    cmp r0, #0x45
    bhi .L08039840
    ldr r1, .L08039834 @ =0xFFFF0000
    ldr r0, [sp, #8]
    ands r0, r1
    str r0, [sp, #8]
    movs r0, #8
    bl func_080AB788
    adds r0, #3
    lsls r0, r0, #0x18
    lsrs r0, r0, #8
    ldr r2, .L08039838 @ =0xFF00FFFF
    ldr r1, [sp, #0xc]
    ands r1, r2
    orrs r1, r0
    lsls r2, r5, #0x18
    ldr r0, .L0803983C @ =0x00FFFFFF
    ands r1, r0
    orrs r1, r2
    str r1, [sp, #0xc]
    adds r0, r4, #0
    add r1, sp, #8
    bl func_0809C0AC
    b .L0803988C
    .align 2, 0
.L08039834: .4byte 0xFFFF0000
.L08039838: .4byte 0xFF00FFFF
.L0803983C: .4byte 0x00FFFFFF
.L08039840:
    movs r0, #0x3c
    bl func_080AB788
    adds r0, #0x78
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L0803986C @ =0xFFFF0000
    ldr r1, [sp, #0x10]
    ands r1, r2
    orrs r1, r0
    ldr r0, .L08039870 @ =0xFF00FFFF
    ands r1, r0
    lsls r2, r5, #0x18
    ldr r0, .L08039874 @ =0x00FFFFFF
    ands r1, r0
    orrs r1, r2
    str r1, [sp, #0x10]
    add r1, sp, #0x10
    adds r0, r4, #0
    bl func_0809C0BC
    b .L0803988C
    .align 2, 0
.L0803986C: .4byte 0xFFFF0000
.L08039870: .4byte 0xFF00FFFF
.L08039874: .4byte 0x00FFFFFF
.L08039878:
    ldr r1, .L0803989C @ =0xFFFF0000
    ldr r0, [sp, #0x14]
    ands r0, r1
    movs r1, #0xb4
    orrs r0, r1
    str r0, [sp, #0x14]
    add r1, sp, #0x14
    adds r0, r4, #0
    bl func_0809C0A0
.L0803988C:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803989C: .4byte 0xFFFF0000
.L080398A0:
    .byte 0x02, 0x20, 0x70, 0x47

    thumb_func_start func_080398A4
func_080398A4: @ 0x080398A4
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    mov r0, sp
    adds r1, r5, #0
    bl __5ActorRC5Actor
    ldr r3, .L080399A4 @ =0x000009C7
    adds r0, r6, #0
    adds r1, r4, #0
    mov r2, sp
    bl func_08020038
    ldr r0, .L080399A8 @ =vtable_unk_080E74DC
    str r0, [r6, #0x14]
    str r5, [r6, #0x34]
    adds r1, r6, #0
    adds r1, #0x38
    movs r0, #4
    movs r3, #0
    movs r2, #1
    rsbs r2, r2, #0
.L080398D4:
    stm r1!, {r3}
    subs r0, #1
    cmp r0, r2
    bne .L080398D4
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, .L080399AC @ =vtable_unk_080E74CC
    str r0, [r4]
    ldr r0, [r6, #0x38]
    cmp r4, r0
    beq .L080398F2
    bl __builtin_delete
.L080398F2:
    str r4, [r6, #0x38]
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, .L080399B0 @ =vtable_unk_080E74BC
    str r0, [r4]
    ldr r0, [r6, #0x3c]
    cmp r4, r0
    beq .L0803990A
    bl __builtin_delete
.L0803990A:
    str r4, [r6, #0x3c]
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, .L080399B4 @ =vtable_unk_080E74AC
    str r0, [r4]
    ldr r0, [r6, #0x40]
    cmp r4, r0
    beq .L08039922
    bl __builtin_delete
.L08039922:
    str r4, [r6, #0x40]
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, .L080399B8 @ =vtable_unk_080E749C
    str r0, [r4]
    ldr r0, [r6, #0x44]
    cmp r4, r0
    beq .L0803993A
    bl __builtin_delete
.L0803993A:
    str r4, [r6, #0x44]
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, .L080399BC @ =vtable_unk_080E748C
    str r0, [r4]
    ldr r0, [r6, #0x48]
    cmp r4, r0
    beq .L08039952
    bl __builtin_delete
.L08039952:
    str r4, [r6, #0x48]
    ldr r0, [r6, #0x34]
    ldr r0, [r0, #0xc]
    lsls r0, r0, #2
    adds r0, r0, r6
    ldr r0, [r0, #0x38]
    ldr r1, [r0]
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    adds r4, r0, #0
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_08039D5C
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08020080
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_08039D4C
    adds r1, r0, #0
    ldrh r0, [r6, #0x22]
    cmp r0, r1
    beq .L08039990
    adds r0, r6, #0
    bl SetAnim__12AActorEntityUi
.L08039990:
    str r4, [r6, #0x4c]
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    str r0, [r6, #0x50]
    adds r0, r6, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L080399A4: .4byte 0x000009C7
.L080399A8: .4byte vtable_unk_080E74DC
.L080399AC: .4byte vtable_unk_080E74CC
.L080399B0: .4byte vtable_unk_080E74BC
.L080399B4: .4byte vtable_unk_080E74AC
.L080399B8: .4byte vtable_unk_080E749C
.L080399BC: .4byte vtable_unk_080E748C

    thumb_func_start func_080399C0
func_080399C0: @ 0x080399C0
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r7, r1, #0
    ldr r0, .L08039A28 @ =vtable_unk_080E74DC
    str r0, [r5, #0x14]
    ldr r4, [r5, #0x34]
    mov r0, sp
    adds r1, r5, #0
    bl GetLocation__C12AActorEntity
    adds r0, r4, #0
    mov r1, sp
    bl SetLocation__5ActorRC13ActorLocation
    adds r0, r5, #0
    adds r0, #0x38
    cmp r0, #0
    beq .L080399FC
    adds r4, r5, #0
    adds r4, #0x4c
    cmp r0, r4
    beq .L080399FC
    adds r6, r0, #0
.L080399F0:
    subs r4, #4
    ldr r0, [r4]
    bl __builtin_delete
    cmp r6, r4
    bne .L080399F0
.L080399FC:
    ldr r0, .L08039A2C @ =__vt_7AEntity
    str r0, [r5, #0x14]
    ldr r1, [r5, #0x10]
    cmp r1, #0
    beq .L08039A12
    ldr r0, [r1, #4]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08039A12:
    movs r0, #1
    ands r0, r7
    cmp r0, #0
    beq .L08039A20
    adds r0, r5, #0
    bl __builtin_delete
.L08039A20:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08039A28: .4byte vtable_unk_080E74DC
.L08039A2C: .4byte __vt_7AEntity
