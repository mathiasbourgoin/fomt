    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

.L0801DE54:
    .byte 0x70, 0xB5, 0x46, 0x46, 0x40, 0xB4, 0x82, 0xB0, 0x05, 0x1C, 0x88, 0x46
    .byte 0x13, 0x49, 0x68, 0x18, 0x00, 0x68, 0xFA, 0x21, 0x49, 0x00, 0x40, 0x18, 0xEE, 0xF7, 0x06, 0xF9
    .byte 0x06, 0x1C, 0x68, 0x68, 0x88, 0xF0, 0x72, 0xFA, 0x01, 0xAC, 0x20, 0x1C, 0x41, 0x46, 0xF0, 0xF7
    .byte 0x67, 0xF8, 0x68, 0x46, 0x31, 0x1C, 0x22, 0x1C, 0xED, 0xF7, 0xB2, 0xFE, 0x28, 0x1C, 0xFF, 0xF7
    .byte 0x63, 0xFE, 0x68, 0x46, 0xF0, 0xF7, 0xE0, 0xF8, 0x01, 0x1C, 0x68, 0x46, 0x05, 0x30, 0x01, 0x70
    .byte 0xF0, 0xF7, 0x58, 0xF8, 0x02, 0xB0, 0x08, 0xBC, 0x98, 0x46, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47
    .byte 0x38, 0x10, 0x00, 0x00

    thumb_func_start func_0801DEB4
func_0801DEB4: @ 0x0801DEB4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x20
    mov sl, r0
    adds r7, r1, #0
    movs r0, #0
    str r0, [sp, #4]
    mov r8, r0
    movs r1, #0
    str r1, [sp, #8]
    mov ip, r1
    movs r4, #0
    ldr r0, .L0801DFC8 @ =0x00001038
    add r0, sl
    ldr r0, [r0]
    ldr r2, .L0801DFCC @ =0x000009DC
    adds r2, r0, r2
    str r2, [sp, #0x18]
.L0801DEDE:
    movs r3, #0
    adds r6, r4, #1
    mov sb, r6
    movs r5, #0x8c
    lsls r5, r5, #1
    movs r0, #0xac
    muls r0, r4, r0
    ldr r1, [sp, #0x18]
    adds r2, r0, r1
    lsls r0, r4, #4
    adds r0, #0xb8
    str r0, [sp, #0x1c]
.L0801DEF6:
    ldr r1, [r2]
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x14
    bne .L0801DF3C
    lsls r0, r1, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #5
    bne .L0801DF3C
    movs r6, #0
    ldrsh r1, [r7, r6]
    subs r1, r5, r1
    movs r6, #2
    ldrsh r0, [r7, r6]
    ldr r6, [sp, #0x1c]
    subs r0, r6, r0
    adds r6, r1, #0
    muls r6, r1, r6
    adds r1, r6, #0
    adds r6, r0, #0
    muls r6, r0, r6
    adds r0, r6, #0
    adds r1, r1, r0
    adds r0, r1, #0
    mov r6, ip
    cmp r6, #0
    beq .L0801DF32
    ldr r6, [sp, #4]
    cmp r1, r6
    bge .L0801DF3C
.L0801DF32:
    movs r1, #1
    mov ip, r1
    mov r8, r3
    str r4, [sp, #8]
    str r0, [sp, #4]
.L0801DF3C:
    adds r5, #0x10
    adds r2, #4
    adds r3, #1
    cmp r3, #0x2a
    bls .L0801DEF6
    movs r1, #0x2b
    mov r4, sb
    cmp r4, #0x18
    bls .L0801DEDE
    mov r2, ip
    cmp r2, #0
    bne .L0801DF56
    b .L0801E072
.L0801DF56:
    ldr r0, .L0801DFC8 @ =0x00001038
    add r0, sl
    ldr r0, [r0]
    ldr r3, .L0801DFCC @ =0x000009DC
    adds r0, r0, r3
    ldr r6, [sp, #8]
    muls r1, r6, r1
    mov r7, r8
    adds r4, r7, r1
    lsls r1, r4, #2
    adds r0, r0, r1
    bl method_0800A3C8__9FieldPlot
    mov r1, sl
    ldr r0, [r1]
    ldr r1, [r0, #0x14]
    mov r0, sl
    bl _call_via_r1
    cmp r0, #2
    bne .L0801E06E
    lsls r0, r7, #1
    adds r0, #0x22
    str r0, [sp, #0xc]
    lsls r0, r6, #1
    mov r2, sl
    ldr r2, [r2, #4]
    str r2, [sp, #0x10]
    adds r0, #0x14
    mov sb, r0
    adds r5, r4, #0
    subs r5, #0x2b
    adds r4, r6, #0
    subs r4, #1
    movs r3, #2
    str r3, [sp, #0x14]
.L0801DF9E:
    ldr r0, .L0801DFC8 @ =0x00001038
    add r0, sl
    ldr r0, [r0]
    ldr r6, .L0801DFCC @ =0x000009DC
    adds r1, r0, r6
    movs r0, #0
    mov r7, r8
    cmp r7, #0
    blt .L0801DFBE
    cmp r4, #0
    blt .L0801DFBE
    cmp r7, #0x2a
    bgt .L0801DFBE
    cmp r4, #0x18
    bgt .L0801DFBE
    movs r0, #1
.L0801DFBE:
    cmp r0, #0
    beq .L0801DFD0
    lsls r0, r5, #2
    adds r3, r1, r0
    b .L0801DFD2
    .align 2, 0
.L0801DFC8: .4byte 0x00001038
.L0801DFCC: .4byte 0x000009DC
.L0801DFD0:
    movs r3, #0
.L0801DFD2:
    adds r6, r3, #0
    cmp r6, #0
    beq .L0801E05C
    ldr r0, .L0801E014 @ =0x00001038
    add r0, sl
    ldr r0, [r0]
    ldr r1, .L0801E018 @ =0x000009DC
    adds r2, r0, r1
    adds r3, r4, #0
    lsls r0, r5, #2
    adds r0, r0, r2
    mov ip, r0
    adds r0, r4, #1
    movs r1, #0
    mov r7, r8
    cmp r7, #0
    blt .L0801E002
    cmp r0, #0
    blt .L0801E002
    cmp r7, #0x2a
    bgt .L0801E002
    cmp r0, #0x18
    bgt .L0801E002
    movs r1, #1
.L0801E002:
    cmp r1, #0
    beq .L0801E01C
    movs r1, #0x2b
    muls r0, r1, r0
    add r0, r8
    lsls r0, r0, #2
    adds r1, r2, r0
    b .L0801E01E
    .align 2, 0
.L0801E014: .4byte 0x00001038
.L0801E018: .4byte 0x000009DC
.L0801E01C:
    movs r1, #0
.L0801E01E:
    subs r0, r3, #1
    movs r3, #0
    mov r7, r8
    cmp r7, #0
    blt .L0801E036
    cmp r0, #0
    blt .L0801E036
    cmp r7, #0x2a
    bgt .L0801E036
    cmp r0, #0x18
    bgt .L0801E036
    movs r3, #1
.L0801E036:
    cmp r3, #0
    beq .L0801E046
    movs r3, #0x2b
    muls r0, r3, r0
    add r0, r8
    lsls r0, r0, #2
    adds r2, r2, r0
    b .L0801E048
.L0801E046:
    movs r2, #0
.L0801E048:
    mov r0, ip
    bl method_0800AF5C__C9FieldPlotPC9FieldPlotT1
    str r0, [sp]
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0xc]
    mov r2, sb
    adds r3, r6, #0
    bl func_080AA6D0
.L0801E05C:
    movs r6, #2
    add sb, r6
    adds r5, #0x2b
    adds r4, #1
    ldr r7, [sp, #0x14]
    subs r7, #1
    str r7, [sp, #0x14]
    cmp r7, #0
    bge .L0801DF9E
.L0801E06E:
    movs r0, #1
    b .L0801E074
.L0801E072:
    movs r0, #0
.L0801E074:
    add sp, #0x20
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
.L0801E084:
    .byte 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0x93, 0xB0
    .byte 0x10, 0x90, 0x00, 0xF0, 0x3B, 0xFC, 0x00, 0x20, 0x11, 0x90, 0x00, 0x21, 0x12, 0x91, 0x12, 0x9A
    .byte 0x91, 0x46, 0x10, 0x9B, 0x18, 0x68, 0x02, 0x6C, 0x18, 0x1C, 0x12, 0x99, 0xB5, 0xF0, 0x32, 0xFC
    .byte 0x07, 0x1C, 0x00, 0x2F, 0x00, 0xD1, 0xBB, 0xE2, 0x00, 0x20, 0x82, 0x46, 0x12, 0x98, 0x2B, 0x38
    .byte 0x28, 0x28, 0x00, 0xD9, 0xEA, 0xE0, 0x80, 0x00, 0x01, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46
    .byte 0xD4, 0xE0, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x9C, 0xE2, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x9C, 0xE2, 0x01, 0x08, 0x9C, 0xE2, 0x01, 0x08, 0x9C, 0xE2, 0x01, 0x08, 0x9C, 0xE2, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x78, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08
    .byte 0x8A, 0xE1, 0x01, 0x08, 0x8A, 0xE1, 0x01, 0x08, 0x10, 0x99, 0x13, 0x4A, 0x88, 0x18, 0x00, 0x68
    .byte 0x80, 0x68, 0x03, 0x38, 0x01, 0x28, 0x00, 0xD8, 0x8C, 0xE0, 0xBA, 0x88, 0x8D, 0x20, 0x80, 0x00
    .byte 0x82, 0x42, 0x00, 0xD1, 0x86, 0xE0, 0x10, 0x9B, 0x5D, 0x68, 0x28, 0x68, 0x82, 0x42, 0x15, 0xD1
    .byte 0x68, 0x68, 0x86, 0xF0, 0x79, 0xFA, 0x05, 0x8C, 0x46, 0x8C, 0x10, 0x98, 0x44, 0x68, 0x60, 0x68
    .byte 0x86, 0xF0, 0x72, 0xFA, 0x00, 0x22, 0xE0, 0x6A, 0x01, 0xA9, 0x01, 0x90, 0x02, 0x92, 0x0D, 0x81
    .byte 0x4E, 0x81, 0x79, 0x69, 0x06, 0xAC, 0x11, 0xE0, 0x38, 0x10, 0x00, 0x00, 0x02, 0x2A, 0x1D, 0xD1
    .byte 0x01, 0xAB, 0x10, 0x99, 0x0C, 0x4A, 0x88, 0x18, 0x00, 0x68, 0x80, 0x21, 0x58, 0x22, 0x01, 0x90
    .byte 0x00, 0x20, 0x02, 0x90, 0x19, 0x81, 0x5A, 0x81, 0x79, 0x69, 0x08, 0xAC, 0x20, 0x1C, 0xCA, 0x68
    .byte 0x39, 0x1C, 0xB5, 0xF0, 0x8F, 0xFB, 0x01, 0xA8, 0x21, 0x1C, 0x8D, 0xF0, 0x39, 0xFF, 0x00, 0x06
    .byte 0x00, 0x28, 0x4B, 0xD0, 0x4E, 0xE0, 0x00, 0x00, 0x50, 0x10, 0x00, 0x00, 0x01, 0xAB, 0x00, 0x20
    .byte 0x80, 0x46, 0x29, 0x49, 0x08, 0x1C, 0x02, 0x40, 0x19, 0x88, 0x28, 0x4C, 0x20, 0x1C, 0x08, 0x40
    .byte 0x10, 0x43, 0x18, 0x80, 0x59, 0x78, 0x03, 0x22, 0x10, 0x1C, 0x08, 0x40, 0x58, 0x70, 0x59, 0x88
    .byte 0x20, 0x1C, 0x08, 0x40, 0x58, 0x80, 0xD8, 0x78, 0x02, 0x40, 0xDA, 0x70, 0x98, 0x88, 0x04, 0x40
    .byte 0x9C, 0x80, 0x1E, 0x20, 0x00, 0x90, 0x28, 0x1C, 0x19, 0x1C, 0x03, 0x22, 0x00, 0x23, 0x87, 0xF0
    .byte 0x45, 0xFA, 0x01, 0x22, 0x11, 0x92, 0x10, 0x9B, 0x58, 0x68, 0x40, 0x68, 0x86, 0xF0, 0x1C, 0xFA
    .byte 0x05, 0x8C, 0x46, 0x8C, 0x10, 0x98, 0x44, 0x68, 0x60, 0x68, 0x86, 0xF0, 0x15, 0xFA, 0xE0, 0x6A
    .byte 0x01, 0xA9, 0x01, 0x90, 0x42, 0x46, 0x02, 0x92, 0x0D, 0x81, 0x4E, 0x81, 0x79, 0x69, 0x0A, 0xAC
    .byte 0x20, 0x1C, 0xCA, 0x68, 0x39, 0x1C, 0xB5, 0xF0, 0x45, 0xFB, 0x01, 0xA8, 0x21, 0x1C, 0x8D, 0xF0
    .byte 0xEF, 0xFE, 0x00, 0x06, 0x00, 0x28, 0x01, 0xD0, 0x01, 0x23, 0x9A, 0x46, 0x50, 0x46, 0x00, 0x28
    .byte 0x00, 0xD1, 0xC5, 0xE1, 0x48, 0x46, 0x2B, 0x38, 0x28, 0x28, 0x00, 0xD9, 0xC0, 0xE1, 0x80, 0x00
    .byte 0x03, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0xFF, 0x03, 0x00, 0x00, 0x00, 0xFC, 0xFF, 0xFF
    .byte 0xC4, 0xE2, 0x01, 0x08, 0x68, 0xE3, 0x01, 0x08, 0xB0, 0xE3, 0x01, 0x08, 0x30, 0xE6, 0x01, 0x08
    .byte 0xDC, 0xE3, 0x01, 0x08, 0xDC, 0xE3, 0x01, 0x08, 0xDC, 0xE3, 0x01, 0x08, 0xDC, 0xE3, 0x01, 0x08
    .byte 0xDC, 0xE3, 0x01, 0x08, 0xDC, 0xE3, 0x01, 0x08, 0xDC, 0xE3, 0x01, 0x08, 0xDC, 0xE3, 0x01, 0x08
    .byte 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08
    .byte 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08
    .byte 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08
    .byte 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08, 0xEC, 0xE4, 0x01, 0x08
    .byte 0x30, 0xE6, 0x01, 0x08, 0x30, 0xE6, 0x01, 0x08, 0x30, 0xE6, 0x01, 0x08, 0x30, 0xE6, 0x01, 0x08
    .byte 0x04, 0xE6, 0x01, 0x08, 0x12, 0xE6, 0x01, 0x08, 0xBC, 0xE4, 0x01, 0x08, 0xBC, 0xE4, 0x01, 0x08
    .byte 0xBC, 0xE4, 0x01, 0x08, 0xBC, 0xE4, 0x01, 0x08, 0xBC, 0xE4, 0x01, 0x08, 0xBC, 0xE4, 0x01, 0x08
    .byte 0xBC, 0xE4, 0x01, 0x08, 0xBC, 0xE4, 0x01, 0x08, 0x00, 0x2F, 0x00, 0xD1, 0x60, 0xE1, 0x04, 0xA9
    .byte 0x02, 0x23, 0x0A, 0x88, 0x0D, 0x4C, 0x20, 0x1C, 0x10, 0x40, 0x18, 0x43, 0x08, 0x80, 0xF8, 0x25
    .byte 0x4B, 0x78, 0x03, 0x22, 0x10, 0x1C, 0x18, 0x40, 0x28, 0x43, 0x48, 0x70, 0x05, 0x25, 0x4B, 0x88
    .byte 0x20, 0x1C, 0x18, 0x40, 0x28, 0x43, 0x48, 0x80, 0xC8, 0x78, 0x02, 0x40, 0x48, 0x20, 0x02, 0x43
    .byte 0xCA, 0x70, 0x01, 0x22, 0x88, 0x88, 0x04, 0x40, 0x14, 0x43, 0x1C, 0xE1, 0x00, 0xFC, 0xFF, 0xFF
    .byte 0x00, 0x2F, 0x00, 0xD1, 0x3C, 0xE1, 0x03, 0xA9, 0x02, 0x26, 0x0A, 0x88, 0x06, 0x4C, 0x20, 0x1C
    .byte 0x10, 0x40, 0x30, 0x43, 0x08, 0x80, 0xC0, 0x25, 0x4B, 0x78, 0x03, 0x22, 0x10, 0x1C, 0x18, 0x40
    .byte 0x28, 0x43, 0x48, 0x70, 0x0B, 0x25, 0xF9, 0xE0, 0x00, 0xFC, 0xFF, 0xFF, 0x00, 0x2F, 0x00, 0xD1
    .byte 0x26, 0xE1, 0xB9, 0x88, 0x11, 0x29, 0x03, 0xD0, 0x8D, 0x20, 0x80, 0x00, 0x81, 0x42, 0x45, 0xD1
    .byte 0x4A, 0x46, 0x2E, 0x3A, 0x10, 0x99, 0x1F, 0x4B, 0xC8, 0x18, 0x01, 0x68, 0x82, 0x20, 0xC0, 0x00
    .byte 0x09, 0x18, 0x0C, 0xA8, 0xEE, 0xF7, 0x74, 0xF9, 0x0C, 0x98, 0x0D, 0x90, 0x0D, 0xA8, 0x00, 0x21
    .byte 0x46, 0x5E, 0x02, 0x23, 0xC2, 0x5E, 0x90, 0x46, 0x03, 0xA9, 0x11, 0x23, 0x0A, 0x88, 0x16, 0x4D
    .byte 0x28, 0x1C, 0x10, 0x40, 0x18, 0x43, 0x08, 0x80, 0x36, 0x04, 0x32, 0x0C, 0x3F, 0x20, 0x81, 0x46
    .byte 0x02, 0x40, 0x92, 0x00, 0x4C, 0x78, 0x03, 0x23, 0x18, 0x1C, 0x20, 0x40, 0x10, 0x43, 0x48, 0x70
    .byte 0xB6, 0x0D, 0x4A, 0x88, 0x28, 0x1C, 0x10, 0x40, 0x30, 0x43, 0x48, 0x80, 0x42, 0x46, 0x12, 0x04
    .byte 0x90, 0x46, 0x10, 0x0C, 0x4A, 0x46, 0x10, 0x40, 0x80, 0x00, 0xCA, 0x78, 0x13, 0x40, 0x03, 0x43
    .byte 0xCB, 0x70, 0x43, 0x46, 0x9B, 0x0D, 0x88, 0x88, 0x05, 0x40, 0x1D, 0x43, 0x8D, 0x80, 0x01, 0xAD
    .byte 0x01, 0x24, 0xBB, 0xE0, 0x38, 0x10, 0x00, 0x00, 0x00, 0xFC, 0xFF, 0xFF, 0x03, 0xA9, 0x02, 0x25
    .byte 0x0A, 0x88, 0x0D, 0x4C, 0x20, 0x1C, 0x10, 0x40, 0x28, 0x43, 0x08, 0x80, 0x4A, 0x78, 0x03, 0x23
    .byte 0x18, 0x1C, 0x10, 0x40, 0x3C, 0x22, 0x10, 0x43, 0x48, 0x70, 0x4A, 0x88, 0x20, 0x1C, 0x10, 0x40
    .byte 0x28, 0x43, 0x48, 0x80, 0xC8, 0x78, 0x03, 0x40, 0x30, 0x20, 0x03, 0x43, 0xCB, 0x70, 0x08, 0x22
    .byte 0x88, 0x88, 0x04, 0x40, 0x14, 0x43, 0x96, 0xE0, 0x00, 0xFC, 0xFF, 0xFF, 0x00, 0x2F, 0x00, 0xD1
    .byte 0xB6, 0xE0, 0x10, 0x99, 0x08, 0x68, 0xC2, 0x6B, 0x08, 0x1C, 0x49, 0x46, 0xB5, 0xF0, 0x22, 0xFA
    .byte 0x10, 0x9A, 0x05, 0x4B, 0xD0, 0x18, 0x00, 0x68, 0x82, 0x21, 0xC9, 0x00, 0x40, 0x18, 0x49, 0x46
    .byte 0x4C, 0x39, 0xEE, 0xF7, 0x69, 0xFA, 0xA3, 0xE0, 0x38, 0x10, 0x00, 0x00, 0x00, 0x2F, 0x00, 0xD1
    .byte 0x9E, 0xE0, 0xB9, 0x88, 0x25, 0x29, 0x03, 0xD0, 0x8D, 0x20, 0x80, 0x00, 0x81, 0x42, 0x55, 0xD1
    .byte 0x36, 0x22, 0x52, 0x42, 0x4A, 0x44, 0x92, 0x46, 0x10, 0x9B, 0x26, 0x49, 0x58, 0x18, 0x01, 0x68
    .byte 0xBE, 0x22, 0xD2, 0x00, 0x89, 0x18, 0x0E, 0xA8, 0x52, 0x46, 0xEE, 0xF7, 0xAB, 0xFD, 0x0E, 0x98
    .byte 0x0F, 0x90, 0x0F, 0xA8, 0x00, 0x23, 0xC6, 0x5E, 0x02, 0x22, 0x81, 0x5E, 0x88, 0x46, 0x03, 0xA9
    .byte 0x25, 0x23, 0x0A, 0x88, 0x1C, 0x4D, 0x28, 0x1C, 0x10, 0x40, 0x18, 0x43, 0x08, 0x80, 0x36, 0x04
    .byte 0x32, 0x0C, 0x3F, 0x23, 0x99, 0x46, 0x1A, 0x40, 0x92, 0x00, 0x4C, 0x78, 0x03, 0x23, 0x18, 0x1C
    .byte 0x20, 0x40, 0x10, 0x43, 0x48, 0x70, 0xB6, 0x0D, 0x4A, 0x88, 0x28, 0x1C, 0x10, 0x40, 0x30, 0x43
    .byte 0x48, 0x80, 0x40, 0x46, 0x00, 0x04, 0x80, 0x46, 0x00, 0x0C, 0x4A, 0x46, 0x10, 0x40, 0x80, 0x00
    .byte 0xCA, 0x78, 0x13, 0x40, 0x03, 0x43, 0xCB, 0x70, 0x43, 0x46, 0x9B, 0x0D, 0x88, 0x88, 0x05, 0x40
    .byte 0x1D, 0x43, 0x8D, 0x80, 0x50, 0x46, 0x80, 0x08, 0x82, 0x46, 0x01, 0x20, 0x52, 0x46, 0x02, 0x40
    .byte 0x92, 0x46, 0x01, 0xAC, 0x20, 0x1C, 0x06, 0x22, 0xB5, 0xF0, 0xFC, 0xF9, 0x53, 0x46, 0xA3, 0x71
    .byte 0x29, 0xE0, 0x00, 0x00, 0x38, 0x10, 0x00, 0x00, 0x00, 0xFC, 0xFF, 0xFF, 0x03, 0xA9, 0x02, 0x26
    .byte 0x0A, 0x88, 0x13, 0x4C, 0x20, 0x1C, 0x10, 0x40, 0x30, 0x43, 0x08, 0x80, 0xE0, 0x25, 0x4B, 0x78
    .byte 0x03, 0x22, 0x10, 0x1C, 0x18, 0x40, 0x28, 0x43, 0x48, 0x70, 0x07, 0x25, 0x4B, 0x88, 0x20, 0x1C
    .byte 0x18, 0x40, 0x28, 0x43, 0x48, 0x80, 0xC8, 0x78, 0x02, 0x40, 0x10, 0x20, 0x02, 0x43, 0xCA, 0x70
    .byte 0x88, 0x88, 0x04, 0x40, 0x34, 0x43, 0x8C, 0x80, 0x01, 0xAD, 0x00, 0x24, 0x28, 0x1C, 0x06, 0x22
    .byte 0xB5, 0xF0, 0xD0, 0xF9, 0xAC, 0x71, 0x38, 0x1C, 0x01, 0xA9, 0x13, 0xF0, 0x8F, 0xFD, 0x17, 0xE0
    .byte 0x00, 0xFC, 0xFF, 0xFF, 0x38, 0x1C, 0x02, 0x21, 0xE0, 0x22, 0xA8, 0x23, 0x01, 0xF0, 0x34, 0xFC
    .byte 0x0E, 0xE0, 0x10, 0x99, 0x08, 0x68, 0xC2, 0x6B, 0x08, 0x1C, 0x49, 0x46, 0xB5, 0xF0, 0x7A, 0xF9
    .byte 0x10, 0x9A, 0x14, 0x4B, 0xD0, 0x18, 0x00, 0x68, 0x13, 0x49, 0x40, 0x18, 0xF0, 0xF7, 0x7E, 0xFB
    .byte 0x12, 0x9A, 0x01, 0x32, 0x12, 0x92, 0x63, 0x2A, 0x00, 0xDC, 0x30, 0xE5, 0x11, 0x9B, 0x00, 0x2B
    .byte 0x10, 0xD0, 0x10, 0x98, 0x04, 0x68, 0xB4, 0x34, 0x0A, 0x49, 0x40, 0x18, 0x01, 0x68, 0x0A, 0x4A
    .byte 0x89, 0x18, 0x01, 0xA8, 0xF0, 0xF7, 0x66, 0xF9, 0x23, 0x68, 0x10, 0x98, 0x01, 0xA9, 0x00, 0x22
    .byte 0xB5, 0xF0, 0x5A, 0xF9, 0x13, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC
    .byte 0x01, 0xBC, 0x00, 0x47, 0x38, 0x10, 0x00, 0x00, 0xD8, 0x1B, 0x00, 0x00

    thumb_func_start func_0801E67C
func_0801E67C: @ 0x0801E67C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    adds r7, r0, #0
    ldr r0, [r7, #4]
    ldr r0, [r0, #4]
    cmp r0, #0x2a
    beq .L0801E6B0
    cmp r0, #0x2a
    bgt .L0801E69C
    cmp r0, #0x29
    beq .L0801E6A2
    b .L0801E8F6
.L0801E69C:
    cmp r0, #0x2b
    beq .L0801E6B8
    b .L0801E8F6
.L0801E6A2:
    ldr r1, .L0801E6AC @ =gUnk_080F0704
    str r1, [sp, #0x14]
    movs r1, #5
    b .L0801E6BE
    .align 2, 0
.L0801E6AC: .4byte gUnk_080F0704
.L0801E6B0:
    ldr r1, .L0801E6B4 @ =gUnk_080F0718
    b .L0801E6BA
    .align 2, 0
.L0801E6B4: .4byte gUnk_080F0718
.L0801E6B8:
    ldr r1, .L0801E70C @ =gUnk_080F0730
.L0801E6BA:
    str r1, [sp, #0x14]
    movs r1, #6
.L0801E6BE:
    mov sl, r1
    bl GetMapData
    ldrh r5, [r0, #0x20]
    ldrh r6, [r0, #0x22]
    ldr r4, [r7, #4]
    ldr r0, [r4, #4]
    bl GetMapData
    movs r2, #0
    ldr r0, [r4, #0x2c]
    mov r1, sp
    str r0, [sp]
    str r2, [sp, #4]
    strh r5, [r1, #8]
    strh r6, [r1, #0xa]
    mov r8, r2
.L0801E6E0:
    mov r6, r8
    ldr r0, [r7]
    ldr r2, [r0, #0x40]
    adds r0, r7, #0
    mov r1, r8
    bl _call_via_r2
    adds r5, r0, #0
    cmp r5, #0
    bne .L0801E6F6
    b .L0801E8EA
.L0801E6F6:
    movs r0, #0
    mov sb, r0
    mov r0, r8
    subs r0, #0x2b
    cmp r0, #0x28
    bhi .L0801E7DE
    lsls r0, r0, #2
    ldr r1, .L0801E710 @ =.L0801E714
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0801E70C: .4byte gUnk_080F0730
.L0801E710: .4byte .L0801E714
.L0801E714: @ jump table
    .4byte .L0801E7B8 @ case 0
    .4byte .L0801E7DE @ case 1
    .4byte .L0801E7DE @ case 2
    .4byte .L0801E7B8 @ case 3
    .4byte .L0801E7B8 @ case 4
    .4byte .L0801E7B8 @ case 5
    .4byte .L0801E7B8 @ case 6
    .4byte .L0801E7B8 @ case 7
    .4byte .L0801E7B8 @ case 8
    .4byte .L0801E7B8 @ case 9
    .4byte .L0801E7B8 @ case 10
    .4byte .L0801E7DE @ case 11
    .4byte .L0801E7DE @ case 12
    .4byte .L0801E7DE @ case 13
    .4byte .L0801E7DE @ case 14
    .4byte .L0801E7DE @ case 15
    .4byte .L0801E7DE @ case 16
    .4byte .L0801E7DE @ case 17
    .4byte .L0801E7DE @ case 18
    .4byte .L0801E7DE @ case 19
    .4byte .L0801E7DE @ case 20
    .4byte .L0801E7DE @ case 21
    .4byte .L0801E7DE @ case 22
    .4byte .L0801E7DE @ case 23
    .4byte .L0801E7DE @ case 24
    .4byte .L0801E7DE @ case 25
    .4byte .L0801E7DE @ case 26
    .4byte .L0801E7DE @ case 27
    .4byte .L0801E7DE @ case 28
    .4byte .L0801E7DE @ case 29
    .4byte .L0801E7DE @ case 30
    .4byte .L0801E7B8 @ case 31
    .4byte .L0801E7B8 @ case 32
    .4byte .L0801E7B8 @ case 33
    .4byte .L0801E7B8 @ case 34
    .4byte .L0801E7B8 @ case 35
    .4byte .L0801E7B8 @ case 36
    .4byte .L0801E7B8 @ case 37
    .4byte .L0801E7B8 @ case 38
    .4byte .L0801E7B8 @ case 39
    .4byte .L0801E7B8 @ case 40
.L0801E7B8:
    ldrh r0, [r5, #4]
    cmp r0, #0x1d
    bne .L0801E7DE
    ldr r1, [r5, #0x14]
    add r4, sp, #0xc
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r5, #0
    bl _call_via_r2
    mov r0, sp
    adds r1, r4, #0
    bl func_080AC070
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801E7DE
    movs r1, #1
    mov sb, r1
.L0801E7DE:
    mov r0, sb
    cmp r0, #0
    bne .L0801E7E6
    b .L0801E8EA
.L0801E7E6:
    adds r0, r6, #0
    subs r0, #0x2b
    cmp r0, #0x28
    bhi .L0801E8A0
    lsls r0, r0, #2
    ldr r1, .L0801E7F8 @ =.L0801E7FC
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0801E7F8: .4byte .L0801E7FC
.L0801E7FC: @ jump table
    .4byte .L0801E8A0 @ case 0
    .4byte .L0801E8A0 @ case 1
    .4byte .L0801E8A0 @ case 2
    .4byte .L0801E8A0 @ case 3
    .4byte .L0801E8A0 @ case 4
    .4byte .L0801E8A0 @ case 5
    .4byte .L0801E8A0 @ case 6
    .4byte .L0801E8A0 @ case 7
    .4byte .L0801E8A0 @ case 8
    .4byte .L0801E8A0 @ case 9
    .4byte .L0801E8A0 @ case 10
    .4byte .L0801E8A0 @ case 11
    .4byte .L0801E8A0 @ case 12
    .4byte .L0801E8A0 @ case 13
    .4byte .L0801E8A0 @ case 14
    .4byte .L0801E8A0 @ case 15
    .4byte .L0801E8A0 @ case 16
    .4byte .L0801E8A0 @ case 17
    .4byte .L0801E8A0 @ case 18
    .4byte .L0801E8A0 @ case 19
    .4byte .L0801E8A0 @ case 20
    .4byte .L0801E8A0 @ case 21
    .4byte .L0801E8A0 @ case 22
    .4byte .L0801E8A0 @ case 23
    .4byte .L0801E8A0 @ case 24
    .4byte .L0801E8A0 @ case 25
    .4byte .L0801E8A0 @ case 26
    .4byte .L0801E8A0 @ case 27
    .4byte .L0801E8A0 @ case 28
    .4byte .L0801E8A0 @ case 29
    .4byte .L0801E8A0 @ case 30
    .4byte .L0801E8A0 @ case 31
    .4byte .L0801E8A0 @ case 32
    .4byte .L0801E8C6 @ case 33
    .4byte .L0801E8C6 @ case 34
    .4byte .L0801E8C6 @ case 35
    .4byte .L0801E8C6 @ case 36
    .4byte .L0801E8C6 @ case 37
    .4byte .L0801E8C6 @ case 38
    .4byte .L0801E8C6 @ case 39
    .4byte .L0801E8C6 @ case 40
.L0801E8A0:
    cmp r5, #0
    beq .L0801E8EA
    bl rand
    mov r1, sl
    bl __umodsi3
    lsls r0, r0, #2
    ldr r1, [sp, #0x14]
    adds r0, r1, r0
    movs r1, #0
    ldrsh r2, [r0, r1]
    movs r1, #2
    ldrsh r3, [r0, r1]
    adds r0, r5, #0
    movs r1, #0x1d
    bl SetLocation__7AEntityUiii
    b .L0801E8EA
.L0801E8C6:
    cmp r5, #0
    beq .L0801E8EA
    ldr r0, [r7]
    ldr r2, [r0, #0x3c]
    adds r0, r7, #0
    adds r1, r6, #0
    bl _call_via_r2
    ldr r1, .L0801E908 @ =0x00001038
    adds r0, r7, r1
    ldr r0, [r0]
    movs r1, #0x82
    lsls r1, r1, #3
    adds r0, r0, r1
    adds r1, r6, #0
    subs r1, #0x4c
    bl method_0800C9B8__4CoopUi
.L0801E8EA:
    movs r0, #1
    add r8, r0
    mov r1, r8
    cmp r1, #0x63
    bgt .L0801E8F6
    b .L0801E6E0
.L0801E8F6:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801E908: .4byte 0x00001038

    thumb_func_start func_0801E90C
func_0801E90C: @ 0x0801E90C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x40
    mov r8, r0
    movs r0, #0
    str r0, [sp, #0x34]
    movs r4, #0
.L0801E920:
    mov r1, r8
    ldr r0, [r1]
    ldr r2, [r0, #0x40]
    mov r0, r8
    adds r1, r4, #0
    bl _call_via_r2
    adds r3, r0, #0
    adds r4, #1
    mov sl, r4
    cmp r3, #0
    beq .L0801EA18
    ldrh r0, [r3, #4]
    cmp r0, #2
    bne .L0801EA18
    ldr r1, [r3, #0x14]
    add r0, sp, #4
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    ldr r0, [sp, #4]
    ldr r1, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    add r4, sp, #0xc
    adds r6, r4, #0
    movs r5, #0
    str r5, [sp, #0x14]
    ldrh r0, [r4]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x13
    subs r0, #0x22
    asrs r0, r0, #1
    str r0, [sp, #0x18]
    add r1, sp, #0x18
    add r2, sp, #0x14
    cmp r5, r0
    bge .L0801E970
    adds r2, r1, #0
.L0801E970:
    ldr r2, [r2]
    mov sb, r2
    movs r1, #0x2a
    str r1, [sp, #0x1c]
    movs r2, #4
    ldrsh r0, [r4, r2]
    subs r0, #1
    asrs r0, r0, #3
    subs r0, #0x22
    asrs r0, r0, #1
    str r0, [sp, #0x20]
    add r2, sp, #0x20
    add r3, sp, #0x1c
    cmp r1, r0
    ble .L0801E990
    adds r3, r2, #0
.L0801E990:
    ldr r7, [r3]
    str r5, [sp, #0x24]
    ldrh r0, [r4, #2]
    lsls r0, r0, #0x10
    asrs r0, r0, #0x13
    subs r0, #0x16
    asrs r0, r0, #1
    str r0, [sp, #0x28]
    add r1, sp, #0x28
    add r2, sp, #0x24
    cmp r5, r0
    bge .L0801E9AA
    adds r2, r1, #0
.L0801E9AA:
    ldr r4, [r2]
    movs r1, #0x18
    str r1, [sp, #0x2c]
    movs r2, #6
    ldrsh r0, [r6, r2]
    subs r0, #1
    asrs r0, r0, #3
    subs r0, #0x16
    asrs r0, r0, #1
    str r0, [sp, #0x30]
    add r2, sp, #0x30
    add r3, sp, #0x2c
    cmp r1, r0
    ble .L0801E9C8
    adds r3, r2, #0
.L0801E9C8:
    ldr r2, [r3]
    adds r1, r4, #0
    cmp r1, r2
    bgt .L0801EA18
    mov r0, sb
    lsls r3, r0, #2
.L0801E9D4:
    mov r4, sb
    adds r6, r1, #1
    cmp r4, r7
    bgt .L0801EA12
    movs r0, #0xac
    muls r0, r1, r0
    adds r5, r3, r0
.L0801E9E2:
    ldr r0, .L0801EA50 @ =0x00001038
    add r0, r8
    ldr r0, [r0]
    ldr r1, .L0801EA54 @ =0x000009DC
    adds r0, r0, r1
    adds r1, r0, r5
    ldr r0, [r1]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x1a
    cmp r0, #0x15
    bne .L0801EA0A
    mov r0, sp
    str r2, [sp, #0x38]
    str r3, [sp, #0x3c]
    bl method_0800A4A4__9FieldPlot
    movs r0, #1
    str r0, [sp, #0x34]
    ldr r3, [sp, #0x3c]
    ldr r2, [sp, #0x38]
.L0801EA0A:
    adds r5, #4
    adds r4, #1
    cmp r4, r7
    ble .L0801E9E2
.L0801EA12:
    adds r1, r6, #0
    cmp r1, r2
    ble .L0801E9D4
.L0801EA18:
    mov r4, sl
    cmp r4, #0x63
    bgt .L0801EA20
    b .L0801E920
.L0801EA20:
    ldr r1, [sp, #0x34]
    cmp r1, #0
    beq .L0801EA86
    mov r2, r8
    ldr r5, [r2, #4]
    ldr r0, [r5]
    cmp r0, #2
    bne .L0801EA60
    adds r0, r5, #0
    adds r0, #0x90
    ldr r4, [r0]
    ldr r0, .L0801EA58 @ =0x00001048
    add r0, r8
    ldr r1, [r0]
    ldr r0, .L0801EA5C @ =0x0000104C
    add r0, r8
    ldrb r2, [r0]
    movs r3, #0x1e
    subs r3, r3, r2
    ldr r4, [r4, #0x14]
    adds r0, r5, #0
    bl _call_via_r4
    b .L0801EA86
    .align 2, 0
.L0801EA50: .4byte 0x00001038
.L0801EA54: .4byte 0x000009DC
.L0801EA58: .4byte 0x00001048
.L0801EA5C: .4byte 0x0000104C
.L0801EA60:
    ldr r0, .L0801EA98 @ =0x00001050
    add r0, r8
    ldr r5, [r0]
    ldr r0, .L0801EA9C @ =0x00001038
    add r0, r8
    ldr r0, [r0]
    adds r4, r0, #0
    adds r4, #0x14
    adds r0, #0x10
    bl func_0800E324
    movs r2, #0
    cmp r0, #3
    bne .L0801EA7E
    movs r2, #1
.L0801EA7E:
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_080171F8
.L0801EA86:
    add sp, #0x40
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801EA98: .4byte 0x00001050
.L0801EA9C: .4byte 0x00001038

    thumb_func_start func_0801EAA0
func_0801EAA0: @ 0x0801EAA0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    ldr r4, .L0801EBB0 @ =0xFFFFFCB0
    add sp, r4
    adds r7, r0, #0
    str r1, [sp, #0x330]
    ldr r1, .L0801EBB4 @ =0x00001038
    adds r0, r7, r1
    ldr r0, [r0]
    adds r0, #0x12
    str r0, [sp, #0x334]
    ldr r3, .L0801EBB8 @ =0x0000103C
    adds r0, r7, r3
    ldrb r0, [r0]
    str r0, [sp, #0x338]
    cmp r0, #0
    beq .L0801EAD8
    ldr r0, [r7]
    movs r4, #0x94
    lsls r4, r4, #1
    adds r0, r0, r4
    ldr r1, [r0]
    adds r0, r7, #0
    bl _call_via_r1
.L0801EAD8:
    adds r5, r7, #0
    adds r5, #8
    str r5, [sp, #0x33c]
    movs r0, #0xcc
    lsls r0, r0, #1
    adds r0, r7, r0
    str r0, [sp, #0x340]
    adds r4, r5, #0
    adds r6, r4, #0
    movs r3, #0xca
    lsls r3, r3, #2
    add r3, sp
    mov r8, r3
    cmp r6, r0
    beq .L0801EB0E
.L0801EAF6:
    ldr r2, [r4]
    cmp r2, #0
    beq .L0801EB06
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x14]
    adds r0, r2, #0
    bl _call_via_r1
.L0801EB06:
    adds r4, #4
    ldr r0, [sp, #0x340]
    cmp r4, r0
    bne .L0801EAF6
.L0801EB0E:
    movs r0, #0
    str r0, [sp]
    movs r3, #0
    adds r4, r6, #0
    ldr r2, .L0801EBBC @ =gUnk_080F0748
.L0801EB18:
    ldr r0, [r2]
    lsls r0, r0, #2
    adds r0, r4, r0
    ldr r1, [r0]
    cmp r1, #0
    beq .L0801EB3C
    ldr r0, [sp]
    cmp r0, #0x63
    bhi .L0801EB3C
    lsls r0, r0, #2
    adds r0, #4
    add r0, sp
    cmp r0, #0
    beq .L0801EB36
    str r1, [r0]
.L0801EB36:
    ldr r0, [sp]
    adds r0, #1
    str r0, [sp]
.L0801EB3C:
    adds r2, #4
    adds r3, #1
    cmp r3, #9
    bls .L0801EB18
    ldr r0, [sp]
    lsls r0, r0, #2
    adds r0, #4
    add r0, sp
    mov sb, r0
    movs r2, #0xca
    lsls r2, r2, #1
    mov r3, sp
    adds r1, r3, r2
    movs r0, #0
    str r0, [r1]
    movs r5, #0
    ldr r4, .L0801EBC0 @ =gUnk_080F0770
.L0801EB5E:
    ldr r0, [r4]
    lsls r0, r0, #2
    adds r0, r6, r0
    ldr r3, [r0]
    cmp r3, #0
    beq .L0801EB86
    mov r0, sp
    adds r1, r0, r2
    ldr r0, [r1]
    cmp r0, #0x63
    bhi .L0801EB86
    lsls r0, r0, #2
    adds r0, #4
    adds r0, r1, r0
    cmp r0, #0
    beq .L0801EB80
    str r3, [r0]
.L0801EB80:
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
.L0801EB86:
    adds r4, #4
    adds r5, #1
    cmp r5, #0x23
    bls .L0801EB5E
    add r1, sp, #0x194
    ldr r0, [r1]
    lsls r0, r0, #2
    adds r0, #4
    adds r1, r1, r0
    str r1, [sp, #0x344]
    movs r1, #0
    add r0, sp, #0x328
    str r1, [r0]
    mov r3, r8
    strb r1, [r3, #4]
    movs r4, #0x82
    lsls r4, r4, #5
    adds r6, r7, r4
    movs r5, #3
    mov sl, r5
    b .L0801EBE2
    .align 2, 0
.L0801EBB0: .4byte 0xFFFFFCB0
.L0801EBB4: .4byte 0x00001038
.L0801EBB8: .4byte 0x0000103C
.L0801EBBC: .4byte gUnk_080F0748
.L0801EBC0: .4byte gUnk_080F0770
.L0801EBC4:
    movs r0, #0
    mov r1, r8
    strb r0, [r1, #4]
    b .L0801EBE2
.L0801EBCC:
    add r4, sp, #4
    cmp r4, sb
    beq .L0801EBE2
.L0801EBD2:
    ldm r4!, {r0}
    ldr r1, [r0, #0x14]
    ldr r2, [r1, #0x18]
    mov r1, r8
    bl _call_via_r2
    cmp r4, sb
    bne .L0801EBD2
.L0801EBE2:
    ldrb r0, [r6, #4]
    adds r0, #1
    cmp r0, #0x19
    bhs .L0801EBF0
    strb r0, [r6, #4]
    movs r0, #0
    b .L0801ED06
.L0801EBF0:
    movs r0, #0
    strb r0, [r6, #4]
    ldr r4, [r6]
    ldr r1, [r4]
    lsls r1, r1, #5
    lsrs r1, r1, #0x1a
    adds r1, #1
    movs r2, #0x3f
    ands r2, r1
    lsls r2, r2, #5
    ldrh r3, [r4, #2]
    ldr r5, .L0801EDEC @ =0xFFFFF81F
    adds r0, r5, #0
    ands r0, r3
    orrs r0, r2
    strh r0, [r4, #2]
    movs r0, #0x3f
    ands r1, r0
    cmp r1, #0x3b
    bls .L0801ED04
    ldr r1, [r6]
    ldrh r2, [r1, #2]
    adds r0, r5, #0
    ands r0, r2
    strh r0, [r1, #2]
    ldr r3, [r6]
    ldr r1, [r3]
    lsls r1, r1, #0xb
    lsrs r1, r1, #0x1b
    adds r1, #1
    movs r4, #0x1f
    mov ip, r4
    mov r5, ip
    ands r1, r5
    ldrb r2, [r3, #2]
    movs r4, #0x20
    rsbs r4, r4, #0
    adds r0, r4, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r3, #2]
    cmp r1, #0x17
    bls .L0801ED04
    ldr r1, [r6]
    ldrb r2, [r1, #2]
    adds r0, r4, #0
    ands r0, r2
    strb r0, [r1, #2]
    ldr r3, [r6]
    ldrb r2, [r3, #1]
    lsls r0, r2, #0x19
    lsrs r0, r0, #0x1b
    adds r0, #1
    cmp r0, #0x1e
    bne .L0801EC96
    lsls r0, r2, #0x1e
    lsrs r0, r0, #0x1e
    mov r1, sl
    ands r0, r1
    movs r1, #4
    rsbs r1, r1, #0
    add r4, sp, #0x348
    ldrb r4, [r4]
    ands r1, r4
    orrs r1, r0
    adds r0, #1
    mov r5, sl
    ands r0, r5
    movs r4, #4
    rsbs r4, r4, #0
    ands r1, r4
    orrs r1, r0
    add r5, sp, #0x348
    strb r1, [r5]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
    mov r0, sl
    ands r1, r0
    adds r0, r4, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r3, #1]
    movs r0, #0
.L0801EC96:
    mov r1, ip
    ands r0, r1
    lsls r2, r0, #2
    ldrb r1, [r3, #1]
    movs r0, #0x7d
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r2
    strb r0, [r3, #1]
    add r3, sp, #0x34c
    ldrb r0, [r3]
    movs r3, #4
    rsbs r3, r3, #0
    ands r0, r3
    movs r4, #0x7d
    rsbs r4, r4, #0
    ands r0, r4
    add r5, sp, #0x34c
    strb r0, [r5]
    ldr r2, [r6]
    movs r3, #0
    ldrb r1, [r2, #1]
    movs r0, #0x7f
    ands r0, r1
    cmp r0, #0
    bne .L0801ECCC
    movs r3, #1
.L0801ECCC:
    cmp r3, #0
    beq .L0801ED04
    adds r4, r2, #0
    ldrb r3, [r4]
    lsls r0, r3, #0x1d
    lsrs r0, r0, #0x1d
    adds r2, r0, #1
    cmp r2, #6
    bls .L0801ECF2
    movs r2, #0
    lsrs r1, r3, #3
    cmp r1, #0x1c
    bhi .L0801ECF2
    adds r1, #1
    lsls r1, r1, #3
    movs r0, #7
    ands r0, r3
    orrs r0, r1
    strb r0, [r4]
.L0801ECF2:
    movs r0, #7
    ands r2, r0
    ldrb r0, [r4]
    movs r3, #8
    rsbs r3, r3, #0
    adds r1, r3, #0
    ands r0, r1
    orrs r0, r2
    strb r0, [r4]
.L0801ED04:
    movs r0, #1
.L0801ED06:
    cmp r0, #0
    bne .L0801ED0C
    b .L0801EBCC
.L0801ED0C:
    movs r0, #1
    mov r4, r8
    strb r0, [r4, #4]
    add r4, sp, #0x198
    ldr r5, [sp, #0x344]
    cmp r4, r5
    beq .L0801ED2C
.L0801ED1A:
    ldm r4!, {r0}
    ldr r1, [r0, #0x14]
    ldr r2, [r1, #0x18]
    mov r1, r8
    bl _call_via_r2
    ldr r0, [sp, #0x344]
    cmp r4, r0
    bne .L0801ED1A
.L0801ED2C:
    ldr r1, [sp, #0x330]
    ldrh r2, [r1]
    ldr r0, .L0801EDF0 @ =0x000007FF
    ldr r4, [sp, #0x334]
    ldrh r3, [r4]
    adds r1, r0, #0
    ands r1, r2
    ands r0, r3
    cmp r1, r0
    beq .L0801ED42
    b .L0801EBC4
.L0801ED42:
    ldr r4, [sp, #0x33c]
    ldr r5, [sp, #0x340]
    cmp r4, r5
    beq .L0801ED62
.L0801ED4A:
    ldr r2, [r4]
    cmp r2, #0
    beq .L0801ED5A
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x10]
    adds r0, r2, #0
    bl _call_via_r1
.L0801ED5A:
    adds r4, #4
    ldr r0, [sp, #0x340]
    cmp r4, r0
    bne .L0801ED4A
.L0801ED62:
    ldr r1, [sp, #0x338]
    cmp r1, #0
    beq .L0801ED78
    ldr r0, [r7]
    movs r3, #0x92
    lsls r3, r3, #1
    adds r0, r0, r3
    ldr r1, [r0]
    adds r0, r7, #0
    bl _call_via_r1
.L0801ED78:
    ldr r0, [r7, #4]
    ldr r0, [r0, #4]
    bl GetMapData
    adds r0, #0x24
    ldrb r0, [r0]
    cmp r0, #0
    bne .L0801EDA2
    movs r4, #0x82
    lsls r4, r4, #5
    adds r0, r7, r4
    ldr r0, [r0]
    ldr r2, [r0]
    lsls r1, r2, #0xb
    lsrs r1, r1, #0x1b
    lsls r2, r2, #5
    lsrs r2, r2, #0x1a
    adds r0, r7, #0
    movs r3, #0
    bl func_0801A13C
.L0801EDA2:
    ldr r0, [r7, #8]
    ldr r1, [r0, #0x14]
    adds r1, #0xa4
    ldr r1, [r1]
    bl _call_via_r1
    ldr r5, .L0801EDF4 @ =0x00001054
    adds r0, r7, r5
    ldr r0, [r0]
    bl func_080167CC
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801EDD8
    ldr r1, .L0801EDF8 @ =0x00001038
    adds r0, r7, r1
    ldr r0, [r0]
    ldr r3, .L0801EDFC @ =0x0000214C
    adds r0, r0, r3
    bl func_0809C5F4
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0801EDD8
    adds r0, r7, #0
    bl func_0801DB58
.L0801EDD8:
    movs r3, #0xd4
    lsls r3, r3, #2
    add sp, r3
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801EDEC: .4byte 0xFFFFF81F
.L0801EDF0: .4byte 0x000007FF
.L0801EDF4: .4byte 0x00001054
.L0801EDF8: .4byte 0x00001038
.L0801EDFC: .4byte 0x0000214C

    thumb_func_start func_0801EE00
func_0801EE00: @ 0x0801EE00
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x3c
    mov sl, r0
    mov sb, r1
    adds r7, r2, #0
    ldr r1, [r0]
    mov r0, sb
    ldrh r2, [r0]
    lsls r2, r2, #0x16
    lsrs r2, r2, #0x16
    add r0, sp, #0xc
    ldr r3, [r1, #0x34]
    mov r1, sl
    bl _call_via_r3
    mov r1, sb
    ldrb r0, [r1, #1]
    lsrs r0, r0, #2
    ldrh r1, [r1, #2]
    ldr r3, .L0801EEC0 @ =0x000003FF
    ands r1, r3
    lsls r1, r1, #6
    orrs r1, r0
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    mov r2, sb
    ldrb r0, [r2, #3]
    lsrs r0, r0, #2
    ldrh r2, [r2, #4]
    ands r2, r3
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
    str r0, [sp, #0x2c]
    movs r3, #0
    str r3, [sp, #0x30]
    movs r6, #1
    mov r4, sp
    adds r4, #0x28
    str r4, [sp, #0x38]
    mov r0, sp
    adds r0, #8
    str r0, [sp, #0x34]
    ldr r1, [sp, #0x2c]
    cmp r1, #0
    beq .L0801EE76
    b .L0801EFA8
.L0801EE76:
    mov r2, sl
    ldr r0, [r2]
    movs r3, #0xa6
    lsls r3, r3, #1
    adds r0, r0, r3
    ldr r1, [r0]
    mov r0, sl
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq .L0801EEA2
.L0801EE90:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801EEC4
    adds r4, #4
    cmp r4, r5
    bne .L0801EE90
.L0801EEA2:
    subs r0, r5, #4
    ldr r0, [r0]
.L0801EEA6:
    movs r1, #0x6d
    bl func_08008B6C
    mov r0, sb
    bl func_080A45A8
    cmp r0, #2
    beq .L0801EF78
    cmp r0, #2
    bgt .L0801EEC8
    cmp r0, #0
    beq .L0801EF84
    b .L0801EFA8
    .align 2, 0
.L0801EEC0: .4byte 0x000003FF
.L0801EEC4:
    ldr r0, [r4]
    b .L0801EEA6
.L0801EEC8:
    cmp r0, #4
    beq .L0801EED2
    cmp r0, #6
    beq .L0801EF00
    b .L0801EFA8
.L0801EED2:
    adds r0, r7, #0
    bl GetKind__C12RucksackItem
    cmp r0, #0
    bne .L0801EFA8
    add r0, sp, #0xc
    adds r1, r7, #0
    bl GetFood__C12RucksackItem
    add r0, sp, #0xc
    bl GetId__C4Food
    cmp r0, #0xa0
    bne .L0801EFA8
    ldr r0, .L0801EEFC @ =0x00001038
    add r0, sl
    ldr r0, [r0]
    bl func_08011458
    b .L0801EFA8
    .align 2, 0
.L0801EEFC: .4byte 0x00001038
.L0801EF00:
    movs r5, #0
    adds r0, r7, #0
    bl GetKind__C12RucksackItem
    cmp r0, #0
    bne .L0801EF34
    add r0, sp, #0xc
    adds r1, r7, #0
    bl GetFood__C12RucksackItem
    add r0, sp, #0xc
    bl GetId__C4Food
    cmp r0, #0xe
    ble .L0801EF34
    add r4, sp, #0x10
    adds r0, r4, #0
    adds r1, r7, #0
    bl GetFood__C12RucksackItem
    adds r0, r4, #0
    bl GetId__C4Food
    cmp r0, #0x14
    bgt .L0801EF34
    movs r5, #1
.L0801EF34:
    cmp r5, #0
    beq .L0801EFA8
    mov r4, sl
    ldr r6, [r4, #8]
    ldr r0, [r6, #0x14]
    mov r8, r0
    add r5, sp, #0x14
    add r4, sp, #0x18
    adds r0, r4, #0
    movs r1, #0x15
    bl __4FoodUi
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
    bl __12RucksackItemG4Food
    mov r1, r8
    ldr r3, [r1, #0x5c]
    adds r0, r6, #0
    adds r1, r5, #0
    movs r2, #0
    bl _call_via_r3
    b .L0801EFA6
.L0801EF78:
    ldr r2, .L0801EF80 @ =0x0000023B
    str r2, [sp, #0x30]
    b .L0801EFA6
    .align 2, 0
.L0801EF80: .4byte 0x0000023B
.L0801EF84:
    adds r0, r7, #0
    bl GetKind__C12RucksackItem
    cmp r0, #0
    bne .L0801EFA8
    add r0, sp, #0xc
    adds r1, r7, #0
    bl GetFood__C12RucksackItem
    add r0, sp, #0xc
    bl GetId__C4Food
    cmp r0, #2
    bne .L0801EFA8
    movs r3, #0x8f
    lsls r3, r3, #2
    str r3, [sp, #0x30]
.L0801EFA6:
    movs r6, #0
.L0801EFA8:
    ldr r4, [sp, #0x30]
    cmp r4, #0
    beq .L0801EFC8
    mov r1, sl
    ldr r0, [r1]
    movs r2, #0xa0
    lsls r2, r2, #1
    adds r0, r0, r2
    add r1, sp, #0x1c
    movs r2, #0
    str r4, [sp, #0x1c]
    str r2, [r1, #4]
    ldr r3, [r0]
    mov r0, sl
    bl _call_via_r3
.L0801EFC8:
    cmp r6, #0
    beq .L0801EFE0
    ldr r0, .L0801F00C @ =0x00001038
    add r0, sl
    ldr r2, [r0]
    ldr r3, .L0801F010 @ =0x00001CD4
    adds r0, r2, r3
    ldr r4, .L0801F014 @ =0x0000214C
    adds r2, r2, r4
    mov r1, sb
    bl func_080A1484
.L0801EFE0:
    adds r0, r7, #0
    bl IsWrapped__C12RucksackItem
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0801F04A
    adds r0, r7, #0
    bl GetKind__C12RucksackItem
    cmp r0, #0
    beq .L0801EFFA
    cmp r0, #1
    beq .L0801F018
.L0801EFFA:
    add r0, sp, #0xc
    adds r1, r7, #0
    bl GetFood__C12RucksackItem
    add r0, sp, #0xc
    bl GetIconId__C4Food
    b .L0801F032
    .align 2, 0
.L0801F00C: .4byte 0x00001038
.L0801F010: .4byte 0x00001CD4
.L0801F014: .4byte 0x0000214C
.L0801F018:
    adds r0, r7, #0
    bl GetArticle__C12RucksackItem
    add r4, sp, #0x24
    strb r0, [r4]
    adds r0, r4, #0
    bl GetId__C7Article
    cmp r0, #0x1b
    beq .L0801F038
    adds r0, r4, #0
    bl GetIconId__C7Article
.L0801F032:
    lsls r0, r0, #0x10
    lsrs r5, r0, #0x10
    b .L0801F04E
.L0801F038:
    mov r1, sb
    ldrh r0, [r1]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    movs r5, #3
    cmp r0, #8
    bgt .L0801F04E
    movs r5, #4
    b .L0801F04E
.L0801F04A:
    movs r5, #0xb0
    lsls r5, r5, #1
.L0801F04E:
    mov r2, sb
    ldrb r0, [r2, #1]
    lsrs r0, r0, #2
    ldrh r2, [r2, #2]
    ldr r3, .L0801F0F8 @ =0x000003FF
    ands r2, r3
    lsls r2, r2, #6
    orrs r2, r0
    mov r4, sb
    ldrb r1, [r4, #3]
    lsrs r1, r1, #2
    ldrh r0, [r4, #4]
    ands r0, r3
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    add r1, sp, #0x28
    strh r2, [r1]
    ldr r1, [sp, #0x38]
    strh r0, [r1, #2]
    mov r2, sl
    ldr r0, [r2]
    ldr r1, [r0, #0x64]
    mov r0, sl
    bl _call_via_r1
    ldr r4, .L0801F0FC @ =0x0000102C
    add r4, sl
    adds r6, r0, #0
    adds r7, r5, #0
    ldr r0, [sp, #0x28]
    str r0, [r4, #4]
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq .L0801F0A8
    cmp r1, #0
    beq .L0801F0A8
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F0A8:
    str r5, [r4]
    add r3, sp, #0x2c
    ldrb r3, [r3]
    strb r3, [r4, #8]
    ldr r5, [sp, #0x2c]
    cmp r5, #0
    beq .L0801F100
    movs r0, #0x40
    bl __builtin_new
    movs r1, #2
    str r1, [sp]
    movs r1, #3
    str r1, [sp, #4]
    movs r1, #0
    ldr r2, [sp, #0x34]
    strb r1, [r2]
    adds r1, r6, #0
    adds r2, r7, #0
    mov r3, sl
    bl func_080A4A00
    adds r5, r0, #0
    ldr r1, [r4]
    cmp r5, r1
    beq .L0801F0EC
    cmp r1, #0
    beq .L0801F0EC
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F0EC:
    str r5, [r4]
    movs r1, #0
    movs r0, #0x10
    strb r0, [r4, #9]
    strb r1, [r4, #0xa]
    b .L0801F138
    .align 2, 0
.L0801F0F8: .4byte 0x000003FF
.L0801F0FC: .4byte 0x0000102C
.L0801F100:
    movs r0, #0x40
    bl __builtin_new
    movs r1, #2
    str r1, [sp]
    movs r1, #3
    str r1, [sp, #4]
    ldr r3, [sp, #0x34]
    strb r5, [r3]
    adds r1, r6, #0
    ldr r2, .L0801F148 @ =0x000001A9
    mov r3, sl
    bl func_080A4A00
    adds r5, r0, #0
    ldr r1, [r4]
    cmp r5, r1
    beq .L0801F134
    cmp r1, #0
    beq .L0801F134
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F134:
    str r5, [r4]
    movs r0, #0
.L0801F138:
    add sp, #0x3c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0801F148: .4byte 0x000001A9

    thumb_func_start func_0801F14C
func_0801F14C: @ 0x0801F14C
    push {r4, r5, r6, lr}
    sub sp, #0xc
    adds r6, r0, #0
    movs r0, #0x83
    lsls r0, r0, #5
    adds r1, r6, r0
    movs r0, #0
    strb r0, [r1]
    ldr r1, .L0801F198 @ =0x0000105C
    adds r4, r6, r1
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq .L0801F178
    cmp r1, #0
    beq .L0801F178
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F178:
    str r5, [r4]
    ldr r0, [r6]
    ldr r1, [r0, #0x14]
    adds r0, r6, #0
    bl _call_via_r1
    subs r0, #0xa
    cmp r0, #0x1d
    bls .L0801F18C
    b .L0801F2CA
.L0801F18C:
    lsls r0, r0, #2
    ldr r1, .L0801F19C @ =.L0801F1A0
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0801F198: .4byte 0x0000105C
.L0801F19C: .4byte .L0801F1A0
.L0801F1A0: @ jump table
    .4byte .L0801F26C @ case 0
    .4byte .L0801F2CA @ case 1
    .4byte .L0801F2CA @ case 2
    .4byte .L0801F2CA @ case 3
    .4byte .L0801F2CA @ case 4
    .4byte .L0801F2CA @ case 5
    .4byte .L0801F2CA @ case 6
    .4byte .L0801F2CA @ case 7
    .4byte .L0801F248 @ case 8
    .4byte .L0801F2CA @ case 9
    .4byte .L0801F2CA @ case 10
    .4byte .L0801F2CA @ case 11
    .4byte .L0801F2CA @ case 12
    .4byte .L0801F2CA @ case 13
    .4byte .L0801F2CA @ case 14
    .4byte .L0801F2CA @ case 15
    .4byte .L0801F2CA @ case 16
    .4byte .L0801F26C @ case 17
    .4byte .L0801F2CA @ case 18
    .4byte .L0801F218 @ case 19
    .4byte .L0801F2CA @ case 20
    .4byte .L0801F2CA @ case 21
    .4byte .L0801F2CA @ case 22
    .4byte .L0801F2CA @ case 23
    .4byte .L0801F2CA @ case 24
    .4byte .L0801F2CA @ case 25
    .4byte .L0801F2CA @ case 26
    .4byte .L0801F2CA @ case 27
    .4byte .L0801F2CA @ case 28
    .4byte .L0801F258 @ case 29
.L0801F218:
    ldr r0, .L0801F244 @ =0x00001038
    adds r4, r6, r0
    ldr r0, [r4]
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r0, r1
    bl GetUpgradeLevel__C9FarmHouse
    cmp r0, #2
    bne .L0801F2CA
    ldr r0, [r4]
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r0, r1
    bl IsFireplaceLighted__C9FarmHouse
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    rsbs r1, r0, #0
    orrs r1, r0
    lsrs r5, r1, #0x1f
    b .L0801F280
    .align 2, 0
.L0801F244: .4byte 0x00001038
.L0801F248:
    ldr r1, .L0801F254 @ =0x00001038
    adds r0, r6, r1
    ldr r0, [r0]
    ldrb r0, [r0, #3]
    lsrs r5, r0, #7
    b .L0801F280
    .align 2, 0
.L0801F254: .4byte 0x00001038
.L0801F258:
    ldr r1, .L0801F268 @ =0x00001038
    adds r0, r6, r1
    ldr r0, [r0]
    ldrb r0, [r0, #4]
    lsls r0, r0, #0x1f
    lsrs r5, r0, #0x1f
    b .L0801F280
    .align 2, 0
.L0801F268: .4byte 0x00001038
.L0801F26C:
    ldr r1, .L0801F2D4 @ =0x00001038
    adds r0, r6, r1
    ldr r0, [r0]
    adds r0, #0x10
    bl func_0800E324
    movs r5, #0
    cmp r0, #3
    bne .L0801F280
    movs r5, #1
.L0801F280:
    movs r0, #0x40
    bl __builtin_new
    adds r4, r0, #0
    ldr r0, [r6]
    ldr r1, [r0, #0x60]
    adds r0, r6, #0
    bl _call_via_r1
    adds r1, r0, #0
    movs r0, #2
    str r0, [sp]
    movs r0, #0x1b
    str r0, [sp, #4]
    add r2, sp, #8
    movs r0, #0
    strb r0, [r2]
    adds r0, r4, #0
    adds r2, r5, #0
    adds r3, r6, #0
    bl func_080A4A00
    ldr r1, .L0801F2D8 @ =0x0000105C
    adds r5, r6, r1
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq .L0801F2C8
    cmp r1, #0
    beq .L0801F2C8
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F2C8:
    str r4, [r5]
.L0801F2CA:
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801F2D4: .4byte 0x00001038
.L0801F2D8: .4byte 0x0000105C

    thumb_func_start func_0801F2DC
func_0801F2DC: @ 0x0801F2DC
    push {r4, r5, lr}
    sub sp, #0xc
    adds r4, r0, #0
    ldr r0, [r4]
    ldr r1, [r0, #0x14]
    adds r0, r4, #0
    bl _call_via_r1
    cmp r0, #0x23
    bne .L0801F3B8
    ldr r1, .L0801F320 @ =0x00001038
    adds r0, r4, r1
    ldr r0, [r0]
    ldrb r0, [r0, #0x12]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    cmp r0, #3
    bls .L0801F370
    cmp r0, #8
    bhi .L0801F328
    movs r0, #0x40
    bl __builtin_new
    ldr r2, .L0801F324 @ =0x00000FF4
    adds r1, r4, r2
    movs r2, #5
    str r2, [sp]
    movs r2, #0x1b
    str r2, [sp, #4]
    add r3, sp, #8
    movs r2, #0
    strb r2, [r3]
    movs r2, #0
    b .L0801F38A
    .align 2, 0
.L0801F320: .4byte 0x00001038
.L0801F324: .4byte 0x00000FF4
.L0801F328:
    cmp r0, #0xf
    bhi .L0801F34C
    movs r0, #0x40
    bl __builtin_new
    ldr r2, .L0801F348 @ =0x00000FF4
    adds r1, r4, r2
    movs r2, #5
    str r2, [sp]
    movs r2, #0x1b
    str r2, [sp, #4]
    add r3, sp, #8
    movs r2, #0
    strb r2, [r3]
    movs r2, #1
    b .L0801F38A
    .align 2, 0
.L0801F348: .4byte 0x00000FF4
.L0801F34C:
    cmp r0, #0x12
    bhi .L0801F370
    movs r0, #0x40
    bl __builtin_new
    ldr r2, .L0801F36C @ =0x00000FF4
    adds r1, r4, r2
    movs r2, #5
    str r2, [sp]
    movs r2, #0x1b
    str r2, [sp, #4]
    add r3, sp, #8
    movs r2, #0
    strb r2, [r3]
    movs r2, #2
    b .L0801F38A
    .align 2, 0
.L0801F36C: .4byte 0x00000FF4
.L0801F370:
    movs r0, #0x40
    bl __builtin_new
    ldr r2, .L0801F3B0 @ =0x00000FF4
    adds r1, r4, r2
    movs r2, #5
    str r2, [sp]
    movs r2, #0x1b
    str r2, [sp, #4]
    add r3, sp, #8
    movs r2, #0
    strb r2, [r3]
    movs r2, #3
.L0801F38A:
    adds r3, r4, #0
    bl func_080A4A00
    ldr r1, .L0801F3B4 @ =0x00001064
    adds r5, r4, r1
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq .L0801F3AC
    cmp r1, #0
    beq .L0801F3AC
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F3AC:
    str r4, [r5]
    b .L0801F3D6
    .align 2, 0
.L0801F3B0: .4byte 0x00000FF4
.L0801F3B4: .4byte 0x00001064
.L0801F3B8:
    ldr r2, .L0801F3E0 @ =0x00001064
    adds r4, r4, r2
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq .L0801F3D4
    cmp r1, #0
    beq .L0801F3D4
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F3D4:
    str r5, [r4]
.L0801F3D6:
    add sp, #0xc
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0801F3E0: .4byte 0x00001064

    thumb_func_start func_0801F3E4
func_0801F3E4: @ 0x0801F3E4
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x40
    adds r6, r0, #0
    ldr r0, [r6]
    ldr r1, [r0, #0x14]
    adds r0, r6, #0
    bl _call_via_r1
    cmp r0, #0x1d
    bne .L0801F4E8
    ldr r1, .L0801F488 @ =0x00001038
    adds r0, r6, r1
    ldr r0, [r0]
    movs r2, #0xfa
    lsls r2, r2, #1
    adds r0, r0, r2
    bl GetVaseArticleId__C9FarmHouse
    adds r1, r0, #0
    cmp r1, #0x5f
    beq .L0801F506
    add r4, sp, #0x34
    adds r0, r4, #0
    bl __7ArticleUi
    adds r0, r4, #0
    bl GetIconId__C7Article
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    ldr r3, .L0801F48C @ =0x00001068
    adds r3, r3, r6
    mov sb, r3
    ldr r4, [r3]
    cmp r4, #0
    beq .L0801F490
    ldr r0, [r6]
    ldr r1, [r0, #0x64]
    adds r0, r6, #0
    bl _call_via_r1
    adds r1, r0, #0
    add r0, sp, #0x20
    adds r2, r7, #0
    movs r3, #0x80
    lsls r3, r3, #1
    bl func_0805E824
    add r0, sp, #0x20
    ldr r1, [sp, #0x20]
    ldr r3, [r1]
    ldrh r2, [r0, #0xc]
    lsls r2, r2, #2
    ldr r0, [sp, #0x24]
    adds r0, r0, r2
    ldrh r2, [r0]
    mov r0, sp
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    mov r0, sp
    mov r1, sp
    movs r2, #0x20
    bl memcpy
    adds r1, r4, #0
    adds r1, #0x28
    mov r0, sp
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r3, r5}
    stm r1!, {r2, r3, r5}
    ldm r0!, {r2, r5}
    stm r1!, {r2, r5}
    adds r1, r4, #0
    adds r1, #0x48
    movs r0, #1
    strb r0, [r1]
    b .L0801F506
    .align 2, 0
.L0801F488: .4byte 0x00001038
.L0801F48C: .4byte 0x00001068
.L0801F490:
    movs r0, #0x4c
    bl __builtin_new
    adds r5, r0, #0
    ldr r0, [r6]
    ldr r1, [r0, #0x64]
    adds r0, r6, #0
    bl _call_via_r1
    adds r4, r0, #0
    adds r0, r5, #0
    adds r1, r6, #0
    movs r2, #2
    movs r3, #0x1b
    bl func_080A4740
    ldr r0, .L0801F4E4 @ =vtable_unk_080E602C
    str r0, [r5, #0x24]
    movs r3, #0x28
    adds r3, r3, r5
    mov r8, r3
    ldr r6, [r4]
    add r0, sp, #0x38
    ldr r3, [r6, #0xc]
    adds r1, r4, #0
    adds r2, r7, #0
    bl _call_via_r3
    ldr r0, [sp, #0x38]
    ldrh r2, [r0]
    mov r0, r8
    ldr r3, [r6, #0x10]
    adds r1, r4, #0
    bl _call_via_r3
    adds r1, r5, #0
    adds r1, #0x48
    movs r0, #1
    strb r0, [r1]
    mov r4, sb
    b .L0801F4EE
    .align 2, 0
.L0801F4E4: .4byte vtable_unk_080E602C
.L0801F4E8:
    ldr r5, .L0801F514 @ =0x00001068
    adds r4, r6, r5
    movs r5, #0
.L0801F4EE:
    ldr r1, [r4]
    cmp r5, r1
    beq .L0801F504
    cmp r1, #0
    beq .L0801F504
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F504:
    str r5, [r4]
.L0801F506:
    add sp, #0x40
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801F514: .4byte 0x00001068
.L0801F518:
    .byte 0x70, 0xB5, 0x83, 0xB0, 0x06, 0x1C, 0x0C, 0x1C
    .byte 0x1D, 0x2C, 0x07, 0xD0, 0x1D, 0x2C, 0x02, 0xDC, 0x12, 0x2C, 0x17, 0xD0, 0x58, 0xE0, 0x27, 0x2C
    .byte 0x1E, 0xD0, 0x55, 0xE0, 0x08, 0x48, 0x35, 0x18, 0x28, 0x68, 0xFA, 0x21, 0x49, 0x00, 0x40, 0x18
    .byte 0xEC, 0xF7, 0x40, 0xFD, 0x00, 0x06, 0x00, 0x28, 0x19, 0xD1, 0x28, 0x68, 0xFA, 0x21, 0x49, 0x00
    .byte 0x40, 0x18, 0xEC, 0xF7, 0x83, 0xFE, 0x12, 0xE0, 0x38, 0x10, 0x00, 0x00, 0x03, 0x49, 0x70, 0x18
    .byte 0x02, 0x68, 0xD0, 0x78, 0x80, 0x21, 0x08, 0x43, 0xD0, 0x70, 0x08, 0xE0, 0x38, 0x10, 0x00, 0x00
    .byte 0x1D, 0x49, 0x70, 0x18, 0x02, 0x68, 0x10, 0x79, 0x01, 0x21, 0x08, 0x43, 0x10, 0x71, 0x30, 0x68
    .byte 0x41, 0x69, 0x30, 0x1C, 0xB4, 0xF0, 0xC4, 0xF9, 0xA0, 0x42, 0x29, 0xD1, 0x83, 0x20, 0x40, 0x01
    .byte 0x31, 0x18, 0x00, 0x25, 0x01, 0x20, 0x08, 0x70, 0x40, 0x20, 0xE1, 0xF7, 0x1B, 0xF8, 0x04, 0x1C
    .byte 0x30, 0x68, 0x01, 0x6E, 0x30, 0x1C, 0xB4, 0xF0, 0xB3, 0xF9, 0x01, 0x1C, 0x02, 0x20, 0x00, 0x90
    .byte 0x1B, 0x20, 0x01, 0x90, 0x02, 0xA8, 0x05, 0x70, 0x20, 0x1C, 0x02, 0x22, 0x33, 0x1C, 0x85, 0xF0
    .byte 0x1F, 0xFA, 0x0A, 0x49, 0x75, 0x18, 0x04, 0x1C, 0x29, 0x68, 0x8C, 0x42, 0x07, 0xD0, 0x00, 0x29
    .byte 0x05, 0xD0, 0x48, 0x6A, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0xB4, 0xF0, 0x9B, 0xF9, 0x2C, 0x60
    .byte 0x03, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x38, 0x10, 0x00, 0x00, 0x5C, 0x10, 0x00, 0x00

    thumb_func_start func_0801F5F0
func_0801F5F0: @ 0x0801F5F0
    push {r4, lr}
    adds r4, r0, #0
    ldr r2, .L0801F610 @ =0x00001038
    adds r0, r4, r2
    ldr r0, [r0]
    movs r2, #0xfa
    lsls r2, r2, #1
    adds r0, r0, r2
    bl SetVaseArticleId__9FarmHouseUi
    adds r0, r4, #0
    bl func_0801F3E4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0801F610: .4byte 0x00001038

    thumb_func_start func_0801F614
func_0801F614: @ 0x0801F614
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0xc
    adds r6, r0, #0
    ldr r0, .L0801F6D8 @ =0x0000106C
    adds r4, r6, r0
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq .L0801F63A
    cmp r1, #0
    beq .L0801F63A
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F63A:
    str r5, [r4]
    ldr r1, .L0801F6DC @ =0x00001070
    adds r4, r6, r1
    movs r5, #0
    ldr r1, [r4]
    cmp r5, r1
    beq .L0801F658
    cmp r1, #0
    beq .L0801F658
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F658:
    str r5, [r4]
    ldr r0, [r6]
    ldr r1, [r0, #0x14]
    adds r0, r6, #0
    bl _call_via_r1
    adds r7, r0, #0
    cmp r7, #0
    bne .L0801F762
    ldr r1, .L0801F6E0 @ =0x00001038
    adds r0, r6, r1
    ldr r0, [r0]
    adds r0, #0x10
    bl func_0800E324
    adds r4, r0, #0
    cmp r4, #3
    beq .L0801F6E8
    movs r0, #0x40
    bl __builtin_new
    ldr r1, .L0801F6E4 @ =0x00000F04
    adds r5, r6, r1
    movs r1, #3
    str r1, [sp]
    movs r1, #0x1e
    str r1, [sp, #4]
    add r4, sp, #8
    strb r7, [r4]
    adds r1, r5, #0
    movs r2, #0
    adds r3, r6, #0
    bl func_080A4A00
    ldr r1, .L0801F6D8 @ =0x0000106C
    adds r1, r1, r6
    mov r8, r1
    adds r7, r0, #0
    ldr r1, [r1]
    cmp r7, r1
    beq .L0801F6BA
    cmp r1, #0
    beq .L0801F6BA
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F6BA:
    mov r0, r8
    str r7, [r0]
    movs r0, #0x40
    bl __builtin_new
    movs r1, #3
    str r1, [sp]
    movs r1, #0x1e
    str r1, [sp, #4]
    movs r1, #0
    strb r1, [r4]
    adds r1, r5, #0
    movs r2, #0
    b .L0801F73E
    .align 2, 0
.L0801F6D8: .4byte 0x0000106C
.L0801F6DC: .4byte 0x00001070
.L0801F6E0: .4byte 0x00001038
.L0801F6E4: .4byte 0x00000F04
.L0801F6E8:
    movs r0, #0x40
    bl __builtin_new
    ldr r1, .L0801F770 @ =0x00000F04
    adds r5, r6, r1
    str r4, [sp]
    movs r1, #0x1e
    str r1, [sp, #4]
    add r4, sp, #8
    strb r7, [r4]
    adds r1, r5, #0
    movs r2, #1
    adds r3, r6, #0
    bl func_080A4A00
    ldr r1, .L0801F774 @ =0x0000106C
    adds r1, r1, r6
    mov r8, r1
    adds r7, r0, #0
    ldr r1, [r1]
    cmp r7, r1
    beq .L0801F724
    cmp r1, #0
    beq .L0801F724
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F724:
    mov r0, r8
    str r7, [r0]
    movs r0, #0x40
    bl __builtin_new
    movs r1, #3
    str r1, [sp]
    movs r1, #0x1e
    str r1, [sp, #4]
    movs r1, #0
    strb r1, [r4]
    adds r1, r5, #0
    movs r2, #1
.L0801F73E:
    adds r3, r6, #0
    bl func_080A4A00
    ldr r1, .L0801F778 @ =0x00001070
    adds r5, r6, r1
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq .L0801F760
    cmp r1, #0
    beq .L0801F760
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F760:
    str r4, [r5]
.L0801F762:
    add sp, #0xc
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801F770: .4byte 0x00000F04
.L0801F774: .4byte 0x0000106C
.L0801F778: .4byte 0x00001070

    thumb_func_start func_0801F77C
func_0801F77C: @ 0x0801F77C
    push {r4, r5, r6, lr}
    sub sp, #0xc
    adds r5, r0, #0
    ldr r0, .L0801F7D8 @ =0x00001074
    adds r4, r5, r0
    movs r6, #0
    ldr r1, [r4]
    cmp r6, r1
    beq .L0801F79E
    cmp r1, #0
    beq .L0801F79E
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F79E:
    str r6, [r4]
    ldr r1, .L0801F7DC @ =0x00001078
    adds r4, r5, r1
    movs r6, #0
    ldr r1, [r4]
    cmp r6, r1
    beq .L0801F7BC
    cmp r1, #0
    beq .L0801F7BC
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F7BC:
    str r6, [r4]
    ldr r0, [r5]
    ldr r1, [r0, #0x14]
    adds r0, r5, #0
    bl _call_via_r1
    adds r4, r0, #0
    cmp r4, #2
    beq .L0801F8BC
    cmp r4, #2
    bgt .L0801F7E0
    cmp r4, #0
    beq .L0801F88C
    b .L0801F90E
    .align 2, 0
.L0801F7D8: .4byte 0x00001074
.L0801F7DC: .4byte 0x00001078
.L0801F7E0:
    cmp r4, #3
    beq .L0801F864
    cmp r4, #7
    beq .L0801F7EA
    b .L0801F90E
.L0801F7EA:
    ldr r2, .L0801F858 @ =0x00001038
    adds r0, r5, r2
    ldr r0, [r0]
    ldrb r0, [r0, #4]
    lsls r0, r0, #0x1f
    cmp r0, #0
    beq .L0801F836
    movs r0, #0x40
    bl __builtin_new
    ldr r2, .L0801F85C @ =0x00000F04
    adds r1, r5, r2
    movs r2, #2
    str r2, [sp]
    movs r2, #0x1f
    str r2, [sp, #4]
    add r3, sp, #8
    movs r2, #0
    strb r2, [r3]
    movs r2, #2
    adds r3, r5, #0
    bl func_080A4A00
    ldr r1, .L0801F860 @ =0x00001078
    adds r6, r5, r1
    adds r4, r0, #0
    ldr r1, [r6]
    cmp r4, r1
    beq .L0801F834
    cmp r1, #0
    beq .L0801F834
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F834:
    str r4, [r6]
.L0801F836:
    ldr r2, .L0801F858 @ =0x00001038
    adds r0, r5, r2
    ldr r0, [r0]
    adds r0, #0x10
    bl func_0800E324
    cmp r0, #3
    bne .L0801F90E
    movs r0, #0x40
    bl __builtin_new
    ldr r2, .L0801F85C @ =0x00000F04
    adds r1, r5, r2
    movs r2, #2
    str r2, [sp]
    b .L0801F8DE
    .align 2, 0
.L0801F858: .4byte 0x00001038
.L0801F85C: .4byte 0x00000F04
.L0801F860: .4byte 0x00001078
.L0801F864:
    ldr r2, .L0801F884 @ =0x00001038
    adds r0, r5, r2
    ldr r0, [r0]
    adds r0, #0x10
    bl func_0800E324
    cmp r0, #3
    bne .L0801F90E
    movs r0, #0x40
    bl __builtin_new
    ldr r2, .L0801F888 @ =0x00000F04
    adds r1, r5, r2
    movs r2, #2
    str r2, [sp]
    b .L0801F8DE
    .align 2, 0
.L0801F884: .4byte 0x00001038
.L0801F888: .4byte 0x00000F04
.L0801F88C:
    ldr r2, .L0801F8B4 @ =0x00001038
    adds r0, r5, r2
    ldr r0, [r0]
    ldrb r0, [r0, #3]
    lsrs r0, r0, #7
    cmp r0, #0
    beq .L0801F90E
    movs r0, #0x40
    bl __builtin_new
    ldr r2, .L0801F8B8 @ =0x00000F04
    adds r1, r5, r2
    movs r2, #2
    str r2, [sp]
    movs r2, #0x1f
    str r2, [sp, #4]
    add r2, sp, #8
    strb r4, [r2]
    b .L0801F8E8
    .align 2, 0
.L0801F8B4: .4byte 0x00001038
.L0801F8B8: .4byte 0x00000F04
.L0801F8BC:
    ldr r2, .L0801F918 @ =0x00001038
    adds r0, r5, r2
    ldr r0, [r0]
    movs r1, #0xfa
    lsls r1, r1, #1
    adds r0, r0, r1
    bl IsFireplaceLighted__C9FarmHouse
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801F90E
    movs r0, #0x40
    bl __builtin_new
    ldr r2, .L0801F91C @ =0x00000F04
    adds r1, r5, r2
    str r4, [sp]
.L0801F8DE:
    movs r2, #0x1f
    str r2, [sp, #4]
    add r3, sp, #8
    movs r2, #0
    strb r2, [r3]
.L0801F8E8:
    movs r2, #2
    adds r3, r5, #0
    bl func_080A4A00
    ldr r1, .L0801F920 @ =0x00001074
    adds r5, r5, r1
    adds r4, r0, #0
    ldr r1, [r5]
    cmp r4, r1
    beq .L0801F90C
    cmp r1, #0
    beq .L0801F90C
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801F90C:
    str r4, [r5]
.L0801F90E:
    add sp, #0xc
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0801F918: .4byte 0x00001038
.L0801F91C: .4byte 0x00000F04
.L0801F920: .4byte 0x00001074

    thumb_func_start func_0801F924
func_0801F924: @ 0x0801F924
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x38
    adds r4, r0, #0
    adds r7, r1, #0
    ldr r1, .L0801F95C @ =0x00001038
    adds r0, r4, r1
    ldr r0, [r0]
    adds r0, #0x54
    mov r8, r0
    adds r0, r7, #0
    bl GetId__C7Product
    adds r5, r0, #0
    mov r0, r8
    adds r1, r5, #0
    bl IsDisplayEnabled__C11ShippingBini
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801F960
    mov r0, r8
    adds r1, r5, #0
    bl GetAmountShipped__C11ShippingBini
    adds r6, r0, #0
    b .L0801F962
    .align 2, 0
.L0801F95C: .4byte 0x00001038
.L0801F960:
    movs r6, #0
.L0801F962:
    mov r0, r8
    adds r1, r7, #0
    bl Ship__11ShippingBinRC7Product
    mov r0, r8
    adds r1, r5, #0
    bl GetAmountShipped__C11ShippingBini
    adds r1, r0, #0
    cmp r6, r1
    bhs .L0801FA50
    ldr r0, .L0801F990 @ =0x000F4240
    cmp r1, r0
    beq .L0801F9F0
    cmp r1, r0
    bhi .L0801F99C
    ldr r0, .L0801F994 @ =0x00002710
    cmp r1, r0
    beq .L0801F9C4
    ldr r0, .L0801F998 @ =0x000186A0
    cmp r1, r0
    beq .L0801F9DC
    b .L0801FA50
    .align 2, 0
.L0801F990: .4byte 0x000F4240
.L0801F994: .4byte 0x00002710
.L0801F998: .4byte 0x000186A0
.L0801F99C:
    ldr r0, .L0801F9B0 @ =0x05F5E100
    cmp r1, r0
    beq .L0801FA18
    cmp r1, r0
    bhi .L0801F9B8
    ldr r0, .L0801F9B4 @ =0x00989680
    cmp r1, r0
    beq .L0801FA04
    b .L0801FA50
    .align 2, 0
.L0801F9B0: .4byte 0x05F5E100
.L0801F9B4: .4byte 0x00989680
.L0801F9B8:
    ldr r0, .L0801F9C0 @ =0x3B9ACA00
    cmp r1, r0
    beq .L0801FA36
    b .L0801FA50
    .align 2, 0
.L0801F9C0: .4byte 0x3B9ACA00
.L0801F9C4:
    ldr r0, [r4]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r0, r0, r1
    movs r1, #0xcf
    lsls r1, r1, #2
    str r1, [sp]
    str r5, [sp, #4]
    ldr r3, [r0]
    adds r0, r4, #0
    mov r1, sp
    b .L0801FA2E
.L0801F9DC:
    ldr r2, [r4]
    movs r0, #0xa0
    lsls r0, r0, #1
    adds r2, r2, r0
    add r1, sp, #8
    ldr r0, .L0801F9EC @ =0x0000033D
    str r0, [sp, #8]
    b .L0801FA28
    .align 2, 0
.L0801F9EC: .4byte 0x0000033D
.L0801F9F0:
    ldr r2, [r4]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    add r1, sp, #0x10
    ldr r0, .L0801FA00 @ =0x0000033E
    str r0, [sp, #0x10]
    b .L0801FA28
    .align 2, 0
.L0801FA00: .4byte 0x0000033E
.L0801FA04:
    ldr r2, [r4]
    movs r0, #0xa0
    lsls r0, r0, #1
    adds r2, r2, r0
    add r1, sp, #0x18
    ldr r0, .L0801FA14 @ =0x0000033F
    str r0, [sp, #0x18]
    b .L0801FA28
    .align 2, 0
.L0801FA14: .4byte 0x0000033F
.L0801FA18:
    ldr r2, [r4]
    movs r1, #0xa0
    lsls r1, r1, #1
    adds r2, r2, r1
    add r1, sp, #0x20
    movs r0, #0xd0
    lsls r0, r0, #2
    str r0, [sp, #0x20]
.L0801FA28:
    str r5, [r1, #4]
    ldr r3, [r2]
    adds r0, r4, #0
.L0801FA2E:
    movs r2, #1
    bl _call_via_r3
    b .L0801FA50
.L0801FA36:
    ldr r2, [r4]
    movs r0, #0xa0
    lsls r0, r0, #1
    adds r2, r2, r0
    add r1, sp, #0x28
    ldr r0, .L0801FA98 @ =0x00000341
    str r0, [sp, #0x28]
    str r5, [r1, #4]
    ldr r3, [r2]
    adds r0, r4, #0
    movs r2, #1
    bl _call_via_r3
.L0801FA50:
    ldr r1, .L0801FA9C @ =0x00001038
    adds r0, r4, r1
    ldr r0, [r0]
    ldr r1, .L0801FAA0 @ =0x00002192
    adds r0, r0, r1
    ldrb r0, [r0]
    movs r5, #3
    ands r5, r0
    cmp r5, #0
    bne .L0801FA8A
    mov r0, r8
    bl HasShippedOneOfEachProduct__C11ShippingBin
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0801FA8A
    ldr r2, [r4]
    movs r0, #0xa0
    lsls r0, r0, #1
    adds r2, r2, r0
    add r1, sp, #0x30
    ldr r0, .L0801FAA4 @ =0x00000342
    str r0, [sp, #0x30]
    str r5, [r1, #4]
    ldr r3, [r2]
    adds r0, r4, #0
    movs r2, #1
    bl _call_via_r3
.L0801FA8A:
    add sp, #0x38
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801FA98: .4byte 0x00000341
.L0801FA9C: .4byte 0x00001038
.L0801FAA0: .4byte 0x00002192
.L0801FAA4: .4byte 0x00000342

    thumb_func_start func_0801FAA8
func_0801FAA8: @ 0x0801FAA8
    push {lr}
    ldr r2, [r0]
    ldr r2, [r2, #0x40]
    bl _call_via_r2
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0801FAB8
func_0801FAB8: @ 0x0801FAB8
    push {lr}
    ldr r2, [r0]
    ldr r2, [r2, #0x44]
    bl _call_via_r2
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0801FAC8
func_0801FAC8: @ 0x0801FAC8
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #4
    adds r4, r0, #0
    adds r6, r1, #0
    movs r0, #0
    mov r8, r0
    cmp r6, #0
    beq .L0801FAEC
    cmp r6, #1
    bne .L0801FAF2
    ldr r1, .L0801FAE8 @ =0x00000ED4
    adds r1, r1, r4
    mov r8, r1
    b .L0801FAF2
    .align 2, 0
.L0801FAE8: .4byte 0x00000ED4
.L0801FAEC:
    ldr r0, .L0801FB38 @ =0x00000EA4
    adds r0, r0, r4
    mov r8, r0
.L0801FAF2:
    mov r1, r8
    cmp r1, #0
    beq .L0801FB68
    movs r7, #0x20
    ldr r0, [r4, #4]
    ldr r5, [r0]
    cmp r5, #2
    bne .L0801FB3E
    movs r3, #0
    adds r1, r4, #0
    adds r1, #8
    movs r0, #0xcc
    lsls r0, r0, #1
    adds r2, r4, r0
    cmp r1, r2
    beq .L0801FB26
.L0801FB12:
    ldr r0, [r1]
    cmp r0, #0
    beq .L0801FB20
    ldrh r0, [r0, #4]
    cmp r0, r5
    bne .L0801FB20
    adds r3, #1
.L0801FB20:
    adds r1, #4
    cmp r1, r2
    bne .L0801FB12
.L0801FB26:
    adds r0, r3, #0
    adds r0, #0xa
    cmp r0, #0xa
    bls .L0801FB3E
    cmp r3, #0x15
    bhi .L0801FB3C
    movs r0, #0x20
    subs r7, r0, r3
    b .L0801FB3E
    .align 2, 0
.L0801FB38: .4byte 0x00000EA4
.L0801FB3C:
    movs r7, #0xa
.L0801FB3E:
    ldr r0, .L0801FB74 @ =0x0000046C
    bl __builtin_new
    str r7, [sp]
    adds r1, r4, #0
    mov r2, r8
    adds r3, r6, #0
    bl func_0803AEA0
    ldr r1, .L0801FB78 @ =0x0000107C
    adds r5, r4, r1
    adds r4, r0, #0
    ldr r0, [r5]
    cmp r4, r0
    beq .L0801FB66
    cmp r0, #0
    beq .L0801FB66
    movs r1, #3
    bl func_0803B0A8
.L0801FB66:
    str r4, [r5]
.L0801FB68:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0801FB74: .4byte 0x0000046C
.L0801FB78: .4byte 0x0000107C

    thumb_func_start func_0801FB7C
func_0801FB7C: @ 0x0801FB7C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x14
    adds r7, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    lsls r4, r3, #0x18
    lsrs r4, r4, #0x18
    movs r0, #0xbc
    bl __builtin_new
    adds r1, r5, #0
    bl func_080A6474
    str r0, [sp, #8]
    ldr r0, .L0801FBD8 @ =0x000010CC
    bl __builtin_new
    add r3, sp, #8
    mov r1, sp
    strb r4, [r1]
    adds r1, r5, #0
    adds r2, r6, #0
    bl func_080175B4
    str r0, [sp, #4]
    add r1, sp, #4
    str r1, [sp, #0xc]
    str r0, [sp, #0x10]
    adds r2, r1, #0
    movs r1, #0
    str r1, [r2]
    str r0, [r7]
    ldr r1, [sp, #4]
    cmp r1, #0
    beq .L0801FBCE
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801FBCE:
    adds r0, r7, #0
    add sp, #0x14
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0801FBD8: .4byte 0x000010CC
.L0801FBDC:
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
    .byte 0x70, 0x47, 0x00, 0x00, 0xB4, 0x0D, 0x00, 0x00, 0x30, 0xB5, 0x07, 0x49, 0x44, 0x18, 0x00, 0x25
    .byte 0x20, 0x68, 0x85, 0x42, 0x04, 0xD0, 0x00, 0x28, 0x02, 0xD0, 0x03, 0x21, 0x1B, 0xF0, 0x0C, 0xFA
    .byte 0x25, 0x60, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x7C, 0x10, 0x00, 0x00, 0x40, 0x68, 0x70, 0x47
    .byte 0x40, 0x68, 0x70, 0x47, 0x02, 0x49, 0x40, 0x18, 0x00, 0x68, 0x08, 0x30, 0x70, 0x47, 0x00, 0x00
    .byte 0x38, 0x10, 0x00, 0x00, 0x10, 0xB5, 0xCE, 0x22, 0x52, 0x00, 0x83, 0x18, 0x5C, 0x18, 0x20, 0x78
    .byte 0x02, 0x1C, 0x10, 0x3A, 0x00, 0x2A, 0x05, 0xDA, 0x18, 0x1C, 0x8C, 0xF0, 0x4F, 0xFE, 0x02, 0x1C
    .byte 0x10, 0x30, 0x20, 0x70, 0x10, 0x1C, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x4A, 0x01, 0x52, 0x18
    .byte 0x92, 0x00, 0x80, 0x18, 0x02, 0x49, 0x40, 0x18, 0x00, 0x21, 0x01, 0x70, 0x70, 0x47, 0x00, 0x00
    .byte 0x3D, 0x02, 0x00, 0x00, 0x08, 0x30, 0x89, 0x00, 0x40, 0x18, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00
    .byte 0x08, 0x30, 0x89, 0x00, 0x40, 0x18, 0x00, 0x68, 0x70, 0x47, 0x00, 0x00

    thumb_func_start func_0801FD0C
func_0801FD0C: @ 0x0801FD0C
    push {r4, lr}
    adds r0, #8
    lsls r1, r1, #2
    adds r4, r0, r1
    ldr r1, [r4]
    cmp r1, #0
    beq .L0801FD2A
    ldr r0, [r1, #0x14]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
    movs r0, #0
    str r0, [r4]
.L0801FD2A:
    pop {r4}
    pop {r0}
    bx r0
.L0801FD30:
    .byte 0x01, 0x49, 0x40, 0x18, 0x00, 0x68, 0x70, 0x47, 0x24, 0x10, 0x00, 0x00
