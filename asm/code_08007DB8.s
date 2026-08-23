    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08007DB8
func_08007DB8: @ 0x08007DB8
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r1, #0
    ldr r0, .L08007E14 @ =gUnk_03000408
    ldr r5, [r0]
    cmp r4, #0
    beq .L08007E18
    str r4, [sp]
    mov r0, sp
    ldrb r3, [r0]
    movs r0, #0
    cmp r3, #0xff
    bhi .L08007DEA
    lsrs r1, r3, #5
    lsls r1, r1, #2
    adds r1, r5, r1
    movs r0, #0x1f
    ands r0, r3
    movs r2, #1
    lsls r2, r0
    ldr r1, [r1]
    ands r1, r2
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
.L08007DEA:
    cmp r0, #0
    beq .L08007E18
    adds r0, r5, #0
    adds r0, #0x20
    lsls r1, r3, #3
    adds r1, #4
    adds r1, r0, r1
    movs r2, #0
    lsls r0, r4, #8
    lsrs r0, r0, #0x10
    ldrh r3, [r1, #4]
    cmp r0, r3
    bne .L08007E06
    movs r2, #1
.L08007E06:
    cmp r2, #0
    beq .L08007E18
    ldrb r0, [r1, #1]
    lsls r0, r0, #0x1a
    lsrs r0, r0, #0x1c
    b .L08007E1A
    .align 2, 0
.L08007E14: .4byte gUnk_03000408
.L08007E18:
    movs r0, #0xb
.L08007E1A:
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08007E24
func_08007E24: @ 0x08007E24
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r1, #0
    ldr r0, .L08007E7C @ =gUnk_03000408
    ldr r5, [r0]
    cmp r4, #0
    beq .L08007E80
    str r4, [sp]
    mov r0, sp
    ldrb r3, [r0]
    movs r0, #0
    cmp r3, #0xff
    bhi .L08007E56
    lsrs r1, r3, #5
    lsls r1, r1, #2
    adds r1, r5, r1
    movs r0, #0x1f
    ands r0, r3
    movs r2, #1
    lsls r2, r0
    ldr r1, [r1]
    ands r1, r2
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
.L08007E56:
    cmp r0, #0
    beq .L08007E80
    adds r0, r5, #0
    adds r0, #0x20
    lsls r1, r3, #3
    adds r1, #4
    adds r1, r0, r1
    movs r2, #0
    lsls r0, r4, #8
    lsrs r0, r0, #0x10
    ldrh r3, [r1, #4]
    cmp r0, r3
    bne .L08007E72
    movs r2, #1
.L08007E72:
    cmp r2, #0
    beq .L08007E80
    ldrh r0, [r1, #2]
    b .L08007E82
    .align 2, 0
.L08007E7C: .4byte gUnk_03000408
.L08007E80:
    movs r0, #0
.L08007E82:
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08007E8C:
    .byte 0x03, 0x48, 0x00, 0x68
    .byte 0x92, 0x21, 0x09, 0x01, 0x40, 0x18, 0x00, 0x88, 0x70, 0x47, 0x00, 0x00, 0x08, 0x04, 0x00, 0x03
    .byte 0x80, 0x20, 0x40, 0x00, 0x70, 0x47, 0x00, 0x00

    thumb_func_start func_08007EA8
func_08007EA8: @ 0x08007EA8
    push {r4, lr}
    adds r4, r0, #0
    adds r0, r4, #4
    bl func_080D6EEC
    adds r0, r4, #0
    adds r0, #0x80
    bl func_080D6EEC
    movs r1, #0
    movs r0, #1
    strb r0, [r4]
    strb r1, [r4, #1]
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_08007EC8
func_08007EC8: @ 0x08007EC8
    push {r4, lr}
    adds r4, r0, #0
    adds r0, #0x80
    bl func_080D6F5C
    adds r0, r4, #4
    bl func_080D6F5C
    movs r0, #0
    strb r0, [r4]
    movs r0, #1
    strb r0, [r4, #1]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08007EE8
func_08007EE8: @ 0x08007EE8
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    str r2, [sp]
    ldr r1, .L08007F10 @ =0x000003FF
    cmp r4, r1
    bhi .L08007F72
    adds r0, r2, #0
    cmp r0, #0
    beq .L08007F72
    cmp r4, #0
    bne .L08007F14
    cmp r0, r1
    bls .L08007F14
    adds r0, r5, #0
    bl func_08007EA8
    b .L08007F72
    .align 2, 0
.L08007F10: .4byte 0x000003FF
.L08007F14:
    ldr r0, .L08007F7C @ =0x000001FF
    cmp r4, r0
    bhi .L08007F36
    adds r0, #1
    subs r0, r0, r4
    str r0, [sp, #4]
    add r3, sp, #4
    ldr r1, [sp]
    mov r2, sp
    cmp r1, r0
    bls .L08007F2C
    adds r2, r3, #0
.L08007F2C:
    ldr r2, [r2]
    adds r0, r5, #4
    adds r1, r4, #0
    bl func_080D7118
.L08007F36:
    ldr r0, [sp]
    adds r2, r4, r0
    movs r3, #0x80
    lsls r3, r3, #2
    cmp r2, r3
    bls .L08007F5A
    ldr r0, .L08007F7C @ =0x000001FF
    movs r1, #0
    cmp r4, r0
    bls .L08007F4E
    ldr r0, .L08007F80 @ =0xFFFFFE00
    adds r1, r4, r0
.L08007F4E:
    subs r2, r2, r3
    subs r2, r2, r1
    adds r0, r5, #0
    adds r0, #0x80
    bl func_080D7118
.L08007F5A:
    movs r1, #0
    ldrb r0, [r5, #4]
    cmp r0, #0
    beq .L08007F6C
    adds r0, r5, #0
    adds r0, #0x80
    ldrb r0, [r0]
    rsbs r0, r0, #0
    lsrs r1, r0, #0x1f
.L08007F6C:
    movs r0, #0
    strb r1, [r5]
    strb r0, [r5, #1]
.L08007F72:
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08007F7C: .4byte 0x000001FF
.L08007F80: .4byte 0xFFFFFE00

    thumb_func_start func_08007F84
func_08007F84: @ 0x08007F84
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    str r2, [sp]
    ldr r1, .L08007FAC @ =0x000003FF
    cmp r4, r1
    bhi .L08008010
    adds r0, r2, #0
    cmp r0, #0
    beq .L08008010
    cmp r4, #0
    bne .L08007FB0
    cmp r0, r1
    bls .L08007FB0
    adds r0, r5, #0
    bl func_08007EC8
    b .L08008010
    .align 2, 0
.L08007FAC: .4byte 0x000003FF
.L08007FB0:
    ldr r0, .L08008018 @ =0x000001FF
    adds r6, r5, #4
    cmp r4, r0
    bhi .L08007FD4
    adds r0, #1
    subs r0, r0, r4
    str r0, [sp, #4]
    add r3, sp, #4
    ldr r1, [sp]
    mov r2, sp
    cmp r1, r0
    bls .L08007FCA
    adds r2, r3, #0
.L08007FCA:
    ldr r2, [r2]
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_080D734C
.L08007FD4:
    ldr r0, [sp]
    adds r2, r4, r0
    movs r3, #0x80
    lsls r3, r3, #2
    cmp r2, r3
    bls .L08007FF8
    ldr r0, .L08008018 @ =0x000001FF
    movs r1, #0
    cmp r4, r0
    bls .L08007FEC
    ldr r0, .L0800801C @ =0xFFFFFE00
    adds r1, r4, r0
.L08007FEC:
    subs r2, r2, r3
    subs r2, r2, r1
    adds r0, r5, #0
    adds r0, #0x80
    bl func_080D734C
.L08007FF8:
    movs r0, #0
    strb r0, [r5]
    movs r1, #0
    ldrb r0, [r6, #1]
    cmp r0, #0
    beq .L0800800E
    adds r0, r5, #0
    adds r0, #0x80
    ldrb r0, [r0, #1]
    rsbs r0, r0, #0
    lsrs r1, r0, #0x1f
.L0800800E:
    strb r1, [r5, #1]
.L08008010:
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L08008018: .4byte 0x000001FF
.L0800801C: .4byte 0xFFFFFE00

    thumb_func_start func_08008020
func_08008020: @ 0x08008020
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r7, r1, #0
    cmp r7, #9
    bhi .L0800807E
    movs r3, #0
    adds r4, r6, #4
.L08008030:
    ldrb r5, [r4]
    cmp r5, #0
    bne .L08008074
    adds r0, r4, #0
    adds r1, r7, #0
    str r3, [sp]
    bl func_080D7568
    adds r2, r0, #0
    movs r1, #0
    ldr r0, .L08008070 @ =0x000001FF
    ldr r3, [sp]
    cmp r2, r0
    bhi .L0800804E
    movs r1, #1
.L0800804E:
    cmp r1, #0
    beq .L08008074
    strb r5, [r6, #1]
    movs r1, #0
    ldrb r0, [r6, #4]
    cmp r0, #0
    beq .L08008066
    adds r0, r6, #0
    adds r0, #0x80
    ldrb r0, [r0]
    rsbs r0, r0, #0
    lsrs r1, r0, #0x1f
.L08008066:
    strb r1, [r6]
    lsls r0, r3, #9
    orrs r0, r2
    b .L08008096
    .align 2, 0
.L08008070: .4byte 0x000001FF
.L08008074:
    adds r4, #0x7c
    adds r3, #1
    cmp r3, #1
    ble .L08008030
    b .L08008092
.L0800807E:
    cmp r7, #0xa
    bne .L08008092
    ldrb r0, [r6, #1]
    cmp r0, #0
    beq .L08008092
    adds r0, r6, #0
    bl func_08007EA8
    movs r0, #0
    b .L08008096
.L08008092:
    movs r0, #0x80
    lsls r0, r0, #3
.L08008096:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080080A0
func_080080A0: @ 0x080080A0
    push {r4, r5, lr}
    adds r4, r0, #0
    cmp r2, #9
    bhi .L080080DA
    movs r0, #0x80
    lsls r0, r0, #2
    ands r0, r1
    adds r5, r4, #4
    adds r3, r5, #0
    cmp r0, #0
    beq .L080080BA
    adds r3, r4, #0
    adds r3, #0x80
.L080080BA:
    adds r0, r3, #0
    bl func_080D76C0
    movs r0, #0
    strb r0, [r4]
    movs r1, #0
    ldrb r0, [r5, #1]
    cmp r0, #0
    beq .L080080D6
    adds r0, r4, #0
    adds r0, #0x80
    ldrb r0, [r0, #1]
    rsbs r0, r0, #0
    lsrs r1, r0, #0x1f
.L080080D6:
    strb r1, [r4, #1]
    b .L080080E4
.L080080DA:
    cmp r2, #0xa
    bne .L080080E4
    adds r0, r4, #0
    bl func_08007EC8
.L080080E4:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080080EC:
    .byte 0x40, 0x78, 0x70, 0x47
    .byte 0x00, 0x78, 0x70, 0x47, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x82, 0xB0
    .byte 0x00, 0x90, 0x00, 0x20, 0x00, 0x99, 0x08, 0x70, 0x01, 0x20, 0x48, 0x70, 0x04, 0x31, 0x01, 0x23
    .byte 0x00, 0x27, 0x9C, 0x46, 0x01, 0x26, 0x76, 0x42, 0x0F, 0x70, 0x60, 0x46, 0x48, 0x70, 0x08, 0x1D
    .byte 0x01, 0x22, 0x7C, 0x31, 0x8A, 0x46, 0x01, 0x3B, 0x01, 0x93, 0x07, 0x70, 0x61, 0x46, 0x41, 0x70
    .byte 0x01, 0x1D, 0x01, 0x23, 0x3C, 0x30, 0x80, 0x46, 0x01, 0x3A, 0x91, 0x46, 0x0F, 0x70, 0x60, 0x46
    .byte 0x48, 0x70, 0x08, 0x1D, 0x01, 0x22, 0x0C, 0x1C, 0x1C, 0x34, 0x5D, 0x1E, 0x07, 0x70, 0x61, 0x46
    .byte 0x41, 0x70, 0x03, 0x1D, 0x01, 0x21, 0x0C, 0x30, 0x01, 0x3A, 0x80, 0xC3, 0x01, 0x39, 0xB1, 0x42
    .byte 0xFB, 0xD1, 0xB2, 0x42, 0xF2, 0xD1, 0x21, 0x1C, 0x2B, 0x1C, 0xB3, 0x42, 0xE6, 0xD1, 0x40, 0x46
    .byte 0x4A, 0x46, 0xB2, 0x42, 0xD9, 0xD1, 0x51, 0x46, 0x01, 0x9B, 0xB3, 0x42, 0xCC, 0xD1, 0x00, 0x98
    .byte 0x02, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47
    .byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x8C, 0xB0, 0x05, 0x90, 0x06, 0x91
    .byte 0xA0, 0x20, 0xF8, 0xF7, 0x17, 0xFA, 0x07, 0x90, 0x01, 0x1C, 0x07, 0x23, 0x00, 0x22, 0x01, 0x24
    .byte 0x64, 0x42, 0x0A, 0x60, 0x4A, 0x60, 0x08, 0x1C, 0x08, 0x30, 0x42, 0x60, 0x14, 0x31, 0x01, 0x3B
    .byte 0xA3, 0x42, 0xF6, 0xD1, 0x00, 0x20, 0x08, 0x90, 0x06, 0x99, 0x08, 0x9A, 0x88, 0x18, 0x91, 0x00
    .byte 0x89, 0x18, 0x89, 0x00, 0x07, 0x9A, 0x8F, 0x18, 0x06, 0x78, 0x38, 0x1C, 0x31, 0x1C, 0xCF, 0xF0
    .byte 0xA5, 0xFA, 0x70, 0x1E, 0x00, 0x06, 0x06, 0x0E, 0x08, 0x98, 0x01, 0x30, 0x09, 0x90, 0xFF, 0x2E
    .byte 0x00, 0xD1, 0xA0, 0xE0, 0x01, 0xA9, 0x89, 0x46, 0x48, 0x46, 0xFF, 0xF7, 0x3B, 0xFB, 0x48, 0x46
    .byte 0x08, 0x99, 0xFF, 0xF7, 0xA7, 0xFC, 0x02, 0x90, 0x7C, 0x68, 0xF8, 0x68, 0x84, 0x42, 0x10, 0xD0
    .byte 0x00, 0x2C, 0x08, 0xD0, 0x20, 0x1C, 0xFF, 0xF7, 0x2D, 0xFB, 0x4A, 0x46, 0x51, 0x68, 0x20, 0x1C
    .byte 0xFF, 0xF7, 0x5A, 0xFD, 0x60, 0x60, 0x78, 0x68, 0x08, 0x30, 0x78, 0x60, 0x01, 0x3E, 0x0A, 0x96
    .byte 0x73, 0xE0, 0xA0, 0x46, 0x01, 0x20, 0x04, 0x90, 0x39, 0x68, 0x60, 0x1A, 0xC4, 0x10, 0x03, 0x94
    .byte 0x04, 0xAA, 0x03, 0xA8, 0x01, 0x2C, 0x00, 0xD2, 0x10, 0x1C, 0x00, 0x68, 0x20, 0x18, 0x00, 0x28
    .byte 0x0B, 0xD0, 0xC4, 0x00, 0x20, 0x1C, 0xC7, 0xF0, 0xCF, 0xFF, 0x0B, 0x94, 0x00, 0x28, 0x02, 0xD1
    .byte 0x20, 0x1C, 0xCB, 0xF0, 0xAD, 0xFC, 0x39, 0x68, 0x02, 0xE0, 0x00, 0x20, 0x00, 0x22, 0x0B, 0x92
    .byte 0x05, 0x1C, 0xAA, 0x46, 0x0D, 0x1C, 0x54, 0x46, 0x01, 0x3E, 0x0A, 0x96, 0x45, 0x45, 0x0D, 0xD0
    .byte 0x00, 0x2C, 0x07, 0xD0, 0x20, 0x1C, 0xFF, 0xF7, 0xF5, 0xFA, 0x69, 0x68, 0x20, 0x1C, 0xFF, 0xF7
    .byte 0x23, 0xFD, 0x60, 0x60, 0x08, 0x35, 0x08, 0x34, 0x45, 0x45, 0xF1, 0xD1, 0x25, 0x1C, 0x04, 0x98
    .byte 0x01, 0x28, 0x0C, 0xD1, 0x00, 0x2D, 0x08, 0xD0, 0x28, 0x1C, 0xFF, 0xF7, 0xE3, 0xFA, 0x48, 0x46
    .byte 0x41, 0x68, 0x28, 0x1C, 0xFF, 0xF7, 0x10, 0xFD, 0x68, 0x60, 0x08, 0x35, 0x13, 0xE0, 0x06, 0x1C
    .byte 0x2C, 0x1C, 0x00, 0x2E, 0x0E, 0xD0, 0x00, 0x2C, 0x08, 0xD0, 0x20, 0x1C, 0xFF, 0xF7, 0xD2, 0xFA
    .byte 0x4A, 0x46, 0x51, 0x68, 0x20, 0x1C, 0xFF, 0xF7, 0xFF, 0xFC, 0x60, 0x60, 0x01, 0x3E, 0x08, 0x34
    .byte 0x00, 0x2E, 0xF0, 0xD1, 0x25, 0x1C, 0x7E, 0x68, 0x3C, 0x68, 0xB4, 0x42, 0x0A, 0xD0, 0x61, 0x68
    .byte 0x20, 0x1C, 0xFF, 0xF7, 0x99, 0xFC, 0x20, 0x1C, 0x02, 0x21, 0xFF, 0xF7, 0x75, 0xFB, 0x08, 0x34
    .byte 0xB4, 0x42, 0xF4, 0xD1, 0x38, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xC7, 0xF0, 0xA9, 0xFF, 0x0B, 0x98
    .byte 0x50, 0x44, 0x51, 0x46, 0x39, 0x60, 0x7D, 0x60, 0xF8, 0x60, 0x02, 0x99, 0x48, 0x46, 0xFF, 0xF7
    .byte 0x83, 0xFC, 0x48, 0x46, 0x02, 0x21, 0xFF, 0xF7, 0x5F, 0xFB, 0x0A, 0x9A, 0x10, 0x06, 0x06, 0x0E
    .byte 0xFF, 0x2E, 0x00, 0xD0, 0x60, 0xE7, 0x38, 0x68, 0x38, 0x61, 0x09, 0x98, 0x08, 0x90, 0x07, 0x28
    .byte 0x00, 0xD8, 0x41, 0xE7, 0x07, 0x99, 0x05, 0x9A, 0x11, 0x60, 0x10, 0x1C, 0x0C, 0xB0, 0x38, 0xBC
    .byte 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47

    thumb_func_start func_0800835C
func_0800835C: @ 0x0800835C
    movs r1, #0
    str r1, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_08008364
func_08008364: @ 0x08008364
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    mov r8, r0
    mov sb, r1
    ldr r0, [r0]
    cmp r0, #0
    beq .L080083B2
    adds r7, r0, #0
    adds r5, r7, #0
    adds r5, #0xa0
.L0800837C:
    cmp r7, r5
    beq .L080083AC
    subs r5, #0x14
    ldr r6, [r5, #4]
    ldr r4, [r5]
    cmp r4, r6
    beq .L080083A0
.L0800838A:
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_08007C28
    adds r0, r4, #0
    movs r1, #2
    bl func_080079E8
    adds r4, #8
    cmp r4, r6
    bne .L0800838A
.L080083A0:
    ldr r0, [r5]
    cmp r0, #0
    beq .L0800837C
    bl free
    b .L0800837C
.L080083AC:
    adds r0, r7, #0
    bl __builtin_delete
.L080083B2:
    movs r0, #1
    mov r1, sb
    ands r0, r1
    cmp r0, #0
    beq .L080083C2
    mov r0, r8
    bl __builtin_delete
.L080083C2:
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080083D0
func_080083D0: @ 0x080083D0
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r7, r0, #0
    adds r4, r2, #0
    ldr r1, [r1]
    cmp r1, #0
    beq .L08008426
    lsls r0, r4, #2
    adds r0, r0, r4
    lsls r0, r0, #2
    adds r6, r0, r1
    ldr r0, [r6, #4]
    mov r8, r0
    ldr r4, [r6, #0x10]
    cmp r4, r8
    beq .L08008410
    mov sb, r4
.L080083F6:
    adds r5, r4, #0
    adds r4, #8
    cmp r4, r8
    bne .L08008400
    ldr r4, [r6]
.L08008400:
    ldr r1, [r5, #4]
    adds r0, r5, #0
    bl func_08007E24
    cmp r0, #1
    beq .L08008420
    cmp r4, sb
    bne .L080083F6
.L08008410:
    adds r0, r7, #0
    bl func_08007874
    ldr r1, [r4, #4]
    adds r0, r7, #0
    bl func_08007CD8
    b .L08008434
.L08008420:
    str r4, [r6, #0x10]
    adds r4, r5, #0
    b .L08008410
.L08008426:
    adds r0, r7, #0
    bl func_08007874
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_08007B54
.L08008434:
    str r0, [r7, #4]
    adds r0, r7, #0
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08008444
func_08008444: @ 0x08008444
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    ldr r0, .L080084C4 @ =vtable_unk_080E5B00
    str r0, [r6, #4]
    movs r0, #0x96
    lsls r0, r0, #3
    bl __builtin_new
    adds r4, r0, #0
    movs r1, #0x1e
    movs r2, #4
    bl func_080091A4
    movs r5, #0
    str r5, [r4, #0x24]
    str r5, [r4, #0x28]
    adds r0, r4, #0
    adds r0, #0x2c
    str r5, [r0, #4]
    adds r0, #8
    bl func_080096B0
    adds r0, r4, #0
    adds r0, #0x8c
    movs r1, #0
    movs r2, #0x20
    bl func_08009744
    movs r1, #0x92
    lsls r1, r1, #3
    adds r0, r4, r1
    bl func_08008980
    ldr r3, .L080084C8 @ =0x00000494
    adds r2, r4, r3
    str r5, [r2]
    str r5, [r2, #4]
    ldr r0, .L080084CC @ =vtable_unk_080E5BB4
    str r0, [r2, #8]
    ldr r0, .L080084D0 @ =0x000004A4
    adds r1, r4, r0
    str r1, [r2, #0xc]
    str r5, [r1]
    str r5, [r1, #4]
    ldr r0, .L080084D4 @ =vtable_unk_080E5BD8
    str r0, [r1, #8]
    adds r3, #0xc
    adds r0, r4, r3
    str r0, [r2, #0x10]
    str r1, [r2, #0x14]
    ldrh r0, [r4, #0x38]
    movs r1, #8
    orrs r0, r1
    strh r0, [r4, #0x38]
    ldr r1, .L080084D8 @ =0x04000004
    strh r0, [r1]
    str r4, [r6]
    adds r0, r6, #0
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L080084C4: .4byte vtable_unk_080E5B00
.L080084C8: .4byte 0x00000494
.L080084CC: .4byte vtable_unk_080E5BB4
.L080084D0: .4byte 0x000004A4
.L080084D4: .4byte vtable_unk_080E5BD8
.L080084D8: .4byte 0x04000004

    thumb_func_start func_080084DC
func_080084DC: @ 0x080084DC
    push {r4, r5, r6, lr}
    sub sp, #4
    adds r6, r0, #0
    adds r4, r1, #0
    ldr r0, .L0800855C @ =vtable_unk_080E5B00
    str r0, [r6, #4]
    movs r0, #0x96
    lsls r0, r0, #3
    bl __builtin_new
    adds r5, r0, #0
    ldrh r1, [r4]
    ldrh r2, [r4, #2]
    bl func_080091A4
    movs r4, #0
    str r4, [r5, #0x24]
    str r4, [r5, #0x28]
    adds r0, r5, #0
    adds r0, #0x2c
    str r4, [r0, #4]
    adds r0, #8
    bl func_080096B0
    adds r0, r5, #0
    adds r0, #0x8c
    movs r1, #0
    movs r2, #0x20
    bl func_08009744
    movs r1, #0x92
    lsls r1, r1, #3
    adds r0, r5, r1
    bl func_08008980
    ldr r3, .L08008560 @ =0x00000494
    adds r2, r5, r3
    str r4, [r2]
    str r4, [r2, #4]
    ldr r0, .L08008564 @ =vtable_unk_080E5BB4
    str r0, [r2, #8]
    ldr r0, .L08008568 @ =0x000004A4
    adds r1, r5, r0
    str r1, [r2, #0xc]
    str r4, [r1]
    str r4, [r1, #4]
    ldr r0, .L0800856C @ =vtable_unk_080E5BD8
    str r0, [r1, #8]
    adds r3, #0xc
    adds r0, r5, r3
    str r0, [r2, #0x10]
    str r1, [r2, #0x14]
    ldrh r0, [r5, #0x38]
    movs r1, #8
    orrs r0, r1
    strh r0, [r5, #0x38]
    ldr r1, .L08008570 @ =0x04000004
    strh r0, [r1]
    str r5, [r6]
    adds r0, r6, #0
    add sp, #4
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L0800855C: .4byte vtable_unk_080E5B00
.L08008560: .4byte 0x00000494
.L08008564: .4byte vtable_unk_080E5BB4
.L08008568: .4byte 0x000004A4
.L0800856C: .4byte vtable_unk_080E5BD8
.L08008570: .4byte 0x04000004

    thumb_func_start func_08008574
func_08008574: @ 0x08008574
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #4
    adds r6, r0, #0
    mov r8, r1
    ldr r0, .L08008600 @ =vtable_unk_080E5B00
    str r0, [r6, #4]
    movs r0, #0x96
    lsls r0, r0, #3
    bl __builtin_new
    adds r4, r0, #0
    movs r1, #0x1e
    movs r2, #4
    bl func_080091A4
    movs r5, #0
    str r5, [r4, #0x24]
    str r5, [r4, #0x28]
    adds r0, r4, #0
    adds r0, #0x2c
    str r5, [r0, #4]
    adds r0, #8
    bl func_080096B0
    adds r0, r4, #0
    adds r0, #0x8c
    mov r2, r8
    ldrb r1, [r2]
    ldrb r2, [r2, #1]
    bl func_08009744
    movs r3, #0x92
    lsls r3, r3, #3
    adds r0, r4, r3
    bl func_08008980
    ldr r0, .L08008604 @ =0x00000494
    adds r2, r4, r0
    str r5, [r2]
    str r5, [r2, #4]
    ldr r0, .L08008608 @ =vtable_unk_080E5BB4
    str r0, [r2, #8]
    ldr r3, .L0800860C @ =0x000004A4
    adds r1, r4, r3
    str r1, [r2, #0xc]
    str r5, [r1]
    str r5, [r1, #4]
    ldr r0, .L08008610 @ =vtable_unk_080E5BD8
    str r0, [r1, #8]
    subs r3, #4
    adds r0, r4, r3
    str r0, [r2, #0x10]
    str r1, [r2, #0x14]
    ldrh r0, [r4, #0x38]
    movs r1, #8
    orrs r0, r1
    strh r0, [r4, #0x38]
    ldr r1, .L08008614 @ =0x04000004
    strh r0, [r1]
    str r4, [r6]
    adds r0, r6, #0
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08008600: .4byte vtable_unk_080E5B00
.L08008604: .4byte 0x00000494
.L08008608: .4byte vtable_unk_080E5BB4
.L0800860C: .4byte 0x000004A4
.L08008610: .4byte vtable_unk_080E5BD8
.L08008614: .4byte 0x04000004
.L08008618:
    .byte 0x70, 0xB5, 0x46, 0x46, 0x40, 0xB4, 0x81, 0xB0
    .byte 0x06, 0x1C, 0x0D, 0x1C, 0x90, 0x46, 0x1F, 0x48, 0x70, 0x60, 0x96, 0x20, 0xC0, 0x00, 0xF7, 0xF7
    .byte 0xD1, 0xFF, 0x04, 0x1C, 0x29, 0x88, 0x6A, 0x88, 0x00, 0xF0, 0xB4, 0xFD, 0x00, 0x25, 0x65, 0x62
    .byte 0xA5, 0x62, 0x20, 0x1C, 0x2C, 0x30, 0x45, 0x60, 0x08, 0x30, 0x01, 0xF0, 0x31, 0xF8, 0x20, 0x1C
    .byte 0x8C, 0x30, 0x42, 0x46, 0x11, 0x78, 0x52, 0x78, 0x01, 0xF0, 0x74, 0xF8, 0x92, 0x23, 0xDB, 0x00
    .byte 0xE0, 0x18, 0x00, 0xF0, 0x8D, 0xF9, 0x10, 0x48, 0x22, 0x18, 0x15, 0x60, 0x55, 0x60, 0x0F, 0x48
    .byte 0x90, 0x60, 0x0F, 0x4B, 0xE1, 0x18, 0xD1, 0x60, 0x0D, 0x60, 0x4D, 0x60, 0x0D, 0x48, 0x88, 0x60
    .byte 0x04, 0x3B, 0xE0, 0x18, 0x10, 0x61, 0x51, 0x61, 0x20, 0x8F, 0x08, 0x21, 0x08, 0x43, 0x20, 0x87
    .byte 0x09, 0x49, 0x08, 0x80, 0x34, 0x60, 0x30, 0x1C, 0x01, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0x70, 0xBC
    .byte 0x02, 0xBC, 0x08, 0x47, 0x00, 0x5B, 0x0E, 0x08, 0x94, 0x04, 0x00, 0x00, 0xB4, 0x5B, 0x0E, 0x08
    .byte 0xA4, 0x04, 0x00, 0x00, 0xD8, 0x5B, 0x0E, 0x08, 0x04, 0x00, 0x00, 0x04

    thumb_func_start func_080086BC
func_080086BC: @ 0x080086BC
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r6, r1, #0
    ldr r0, .L0800871C @ =vtable_unk_080E5B00
    str r0, [r5, #4]
    ldr r0, [r5]
    cmp r0, #0
    beq .L08008706
    adds r4, r0, #0
    ldr r1, .L08008720 @ =0x00000494
    adds r0, r4, r1
    movs r1, #2
    bl func_080098DC
    movs r1, #0x92
    lsls r1, r1, #3
    adds r0, r4, r1
    movs r1, #2
    bl func_08008A68
    adds r0, r4, #0
    adds r0, #0x24
    ldr r2, [r0, #4]
    ldr r1, [r4, #0x24]
    cmp r1, r2
    beq .L080086F6
.L080086F0:
    adds r1, #0x10
    cmp r1, r2
    bne .L080086F0
.L080086F6:
    ldr r0, [r0]
    cmp r0, #0
    beq .L08008700
    bl free
.L08008700:
    adds r0, r4, #0
    bl __builtin_delete
.L08008706:
    movs r0, #1
    ands r0, r6
    cmp r0, #0
    beq .L08008714
    adds r0, r5, #0
    bl __builtin_delete
.L08008714:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0800871C: .4byte vtable_unk_080E5B00
.L08008720: .4byte 0x00000494

    thumb_func_start func_08008724
func_08008724: @ 0x08008724
    push {r4, lr}
    sub sp, #0x10
    ldr r4, [r0]
    adds r3, r4, #0
    adds r3, #0x34
    movs r2, #0
    ldrh r0, [r4, #0x34]
    movs r1, #0x80
    orrs r0, r1
    strh r0, [r4, #0x34]
    str r2, [sp]
    str r2, [sp, #4]
    ldr r0, .L08008770 @ =vtable_unk_080E5AF0
    str r0, [sp, #8]
    str r3, [sp, #0xc]
    movs r0, #0x92
    lsls r0, r0, #3
    adds r4, r4, r0
    adds r0, r4, #0
    bl func_08008AE0
    ldr r1, [r0, #8]
    ldr r2, [r1, #0x10]
    mov r1, sp
    bl _call_via_r2
    adds r0, r4, #0
    bl func_08008AF0
    mov r0, sp
    movs r1, #2
    bl func_080098AC
    add sp, #0x10
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08008770: .4byte vtable_unk_080E5AF0
.L08008774:
    .byte 0x10, 0xB5, 0x84, 0xB0, 0x04, 0x68, 0x23, 0x1C, 0x34, 0x33, 0x00, 0x22
    .byte 0xA1, 0x8E, 0x0F, 0x48, 0x08, 0x40, 0xA0, 0x86, 0x00, 0x92, 0x01, 0x92, 0x0D, 0x48, 0x02, 0x90
    .byte 0x03, 0x93, 0x92, 0x20, 0xC0, 0x00, 0x24, 0x18, 0x20, 0x1C, 0x00, 0xF0, 0xA1, 0xF9, 0x81, 0x68
    .byte 0x0A, 0x69, 0x69, 0x46, 0xCB, 0xF0, 0xB6, 0xF8, 0x20, 0x1C, 0x00, 0xF0, 0xA1, 0xF9, 0x68, 0x46
    .byte 0x02, 0x21, 0x01, 0xF0, 0x7B, 0xF8, 0x04, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00
    .byte 0x7F, 0xFF, 0x00, 0x00, 0xF0, 0x5A, 0x0E, 0x08

    thumb_func_start func_080087C8
func_080087C8: @ 0x080087C8
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #0x4c
    ldr r5, [r0]
    adds r2, r5, #0
    adds r2, #0x34
    ldr r3, .L0800889C @ =vtable_unk_080E5BE8
    movs r1, #0
    str r1, [sp]
    str r1, [sp, #4]
    ldr r0, .L080088A0 @ =vtable_unk_080E5AF0
    str r0, [sp, #8]
    str r2, [sp, #0xc]
    add r0, sp, #0x10
    mov r8, r0
    adds r2, #0x58
    str r1, [sp, #0x10]
    str r1, [r0, #4]
    ldr r0, .L080088A4 @ =vtable_unk_080E5AE0
    str r0, [sp, #0x18]
    str r2, [sp, #0x1c]
    add r6, sp, #0x20
    subs r2, #0x68
    str r1, [sp, #0x20]
    str r1, [r6, #4]
    ldr r0, .L080088A8 @ =vtable_unk_080E5AD0
    str r0, [sp, #0x28]
    str r2, [sp, #0x2c]
    add r4, sp, #0x30
    str r1, [sp, #0x30]
    str r1, [r4, #4]
    ldr r0, .L080088AC @ =vtable_unk_080E5BB4
    str r0, [sp, #0x38]
    add r2, sp, #0x40
    str r2, [r4, #0xc]
    str r3, [sp, #0x48]
    str r1, [sp, #0x40]
    str r1, [r2, #4]
    ldr r0, .L080088B0 @ =vtable_unk_080E5BD8
    str r0, [r2, #8]
    add r0, sp, #0x3c
    str r0, [r4, #0x10]
    str r2, [r4, #0x14]
    ldr r0, .L080088B4 @ =0x00000494
    adds r1, r5, r0
    adds r0, r4, #0
    bl func_08009940
    adds r0, r4, #0
    mov r1, sp
    bl func_08009940
    adds r0, r4, #0
    adds r1, r6, #0
    bl func_08009940
    adds r0, r4, #0
    mov r1, r8
    bl func_08009940
    movs r0, #0x92
    lsls r0, r0, #3
    adds r5, r5, r0
    adds r0, r5, #0
    bl func_08008AE0
    ldr r1, [r0, #8]
    ldr r2, [r1, #0x10]
    adds r1, r4, #0
    bl _call_via_r2
    adds r0, r5, #0
    bl func_08008AF0
    adds r0, r5, #0
    bl func_08008AE0
    ldr r1, [r0, #8]
    ldr r2, [r1, #0x14]
    adds r1, r4, #0
    bl _call_via_r2
    adds r0, r4, #0
    movs r1, #2
    bl func_080098DC
    adds r0, r6, #0
    movs r1, #2
    bl func_080098AC
    mov r0, r8
    movs r1, #2
    bl func_080098AC
    mov r0, sp
    movs r1, #2
    bl func_080098AC
    add sp, #0x4c
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0800889C: .4byte vtable_unk_080E5BE8
.L080088A0: .4byte vtable_unk_080E5AF0
.L080088A4: .4byte vtable_unk_080E5AE0
.L080088A8: .4byte vtable_unk_080E5AD0
.L080088AC: .4byte vtable_unk_080E5BB4
.L080088B0: .4byte vtable_unk_080E5BD8
.L080088B4: .4byte 0x00000494

    thumb_func_start func_080088B8
func_080088B8: @ 0x080088B8
    push {lr}
    ldr r0, [r0]
    bl func_08009268
    pop {r0}
    bx r0

    thumb_func_start func_080088C4
func_080088C4: @ 0x080088C4
    ldr r0, [r0]
    ldrh r0, [r0]
    bx lr
    .align 2, 0

    thumb_func_start func_080088CC
func_080088CC: @ 0x080088CC
    ldr r0, [r0]
    ldrh r0, [r0, #4]
    bx lr
    .align 2, 0

    thumb_func_start func_080088D4
func_080088D4: @ 0x080088D4
    ldr r0, [r0]
    ldrh r0, [r0, #8]
    bx lr
    .align 2, 0

    thumb_func_start func_080088DC
func_080088DC: @ 0x080088DC
    ldr r0, [r0]
    bx lr
.L080088E0:
    .byte 0x00, 0xB5, 0x09, 0x04, 0x09, 0x0C, 0x00, 0x68, 0x00, 0xF0, 0xEE, 0xFC, 0x01, 0xBC, 0x00, 0x47
    .byte 0x00, 0xB5, 0x09, 0x04, 0x09, 0x0C, 0x00, 0x68, 0x00, 0xF0, 0x00, 0xFD, 0x01, 0xBC, 0x00, 0x47
    .byte 0x00, 0x68, 0x40, 0x89, 0x70, 0x47, 0x00, 0x00, 0x00, 0x68, 0x80, 0x89, 0x70, 0x47, 0x00, 0x00
