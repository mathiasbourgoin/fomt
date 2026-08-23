    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08007510
func_08007510: @ 0x08007510
    push {r4, lr}
    adds r2, r1, #0
    ldr r0, .L08007558 @ =gUnk_03000404
    ldr r3, [r0]
    cmp r2, #0
    beq .L0800755C
    lsls r0, r2, #0x1c
    lsrs r1, r0, #0x1c
    adds r4, r1, #0
    movs r0, #0
    cmp r1, #0xf
    bhi .L08007536
    movs r0, #1
    lsls r0, r1
    ldr r1, [r3, #0x44]
    ands r1, r0
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
.L08007536:
    cmp r0, #0
    beq .L0800755C
    lsls r0, r4, #2
    adds r0, #4
    adds r1, r3, r0
    movs r3, #0
    lsls r0, r2, #0xc
    lsrs r0, r0, #0x10
    ldrh r2, [r1, #2]
    cmp r0, r2
    bne .L0800754E
    movs r3, #1
.L0800754E:
    cmp r3, #0
    beq .L0800755C
    ldrh r0, [r1]
    b .L0800755E
    .align 2, 0
.L08007558: .4byte gUnk_03000404
.L0800755C:
    movs r0, #0
.L0800755E:
    pop {r4}
    pop {r1}
    bx r1
.L08007564:
    .byte 0x02, 0x48, 0x00, 0x68, 0x48, 0x30, 0x00, 0x88, 0x70, 0x47, 0x00, 0x00
    .byte 0x04, 0x04, 0x00, 0x03, 0x10, 0x20, 0x70, 0x47, 0xF0, 0xB5, 0x57, 0x46, 0x4E, 0x46, 0x45, 0x46
    .byte 0xE0, 0xB4, 0x88, 0xB0, 0x05, 0x90, 0x0C, 0x1C, 0x14, 0x20, 0xF9, 0xF7, 0x23, 0xF8, 0x07, 0x1C
    .byte 0x00, 0x20, 0x38, 0x60, 0x78, 0x60, 0x39, 0x1C, 0x08, 0x31, 0x48, 0x60, 0x26, 0x78, 0x38, 0x1C
    .byte 0x31, 0x1C, 0xCF, 0xF0, 0x09, 0xFC, 0x70, 0x1E, 0x00, 0x06, 0x06, 0x0E, 0xFF, 0x2E, 0x00, 0xD1
    .byte 0x9F, 0xE0, 0x01, 0xA8, 0x81, 0x46, 0x48, 0x46, 0xFF, 0xF7, 0xB6, 0xFD, 0x48, 0x46, 0xFF, 0xF7
    .byte 0xD5, 0xFE, 0x02, 0x90, 0x7C, 0x68, 0xF8, 0x68, 0x84, 0x42, 0x10, 0xD0, 0x00, 0x2C, 0x08, 0xD0
    .byte 0x20, 0x1C, 0xFF, 0xF7, 0xA9, 0xFD, 0x4A, 0x46, 0x51, 0x68, 0x20, 0x1C, 0xFF, 0xF7, 0x3E, 0xFF
    .byte 0x60, 0x60, 0x78, 0x68, 0x08, 0x30, 0x78, 0x60, 0x01, 0x3E, 0x07, 0x96, 0x73, 0xE0, 0xA0, 0x46
    .byte 0x01, 0x20, 0x04, 0x90, 0x39, 0x68, 0x60, 0x1A, 0xC4, 0x10, 0x03, 0x94, 0x04, 0xAA, 0x03, 0xA8
    .byte 0x01, 0x2C, 0x00, 0xD2, 0x10, 0x1C, 0x00, 0x68, 0x20, 0x18, 0x00, 0x28, 0x0B, 0xD0, 0xC4, 0x00
    .byte 0x20, 0x1C, 0xC8, 0xF0, 0xF1, 0xFD, 0x06, 0x94, 0x00, 0x28, 0x02, 0xD1, 0x20, 0x1C, 0xCC, 0xF0
    .byte 0xCF, 0xFA, 0x39, 0x68, 0x02, 0xE0, 0x00, 0x20, 0x00, 0x22, 0x06, 0x92, 0x05, 0x1C, 0xAA, 0x46
    .byte 0x0D, 0x1C, 0x54, 0x46, 0x01, 0x3E, 0x07, 0x96, 0x45, 0x45, 0x0D, 0xD0, 0x00, 0x2C, 0x07, 0xD0
    .byte 0x20, 0x1C, 0xFF, 0xF7, 0x71, 0xFD, 0x69, 0x68, 0x20, 0x1C, 0xFF, 0xF7, 0x07, 0xFF, 0x60, 0x60
    .byte 0x08, 0x35, 0x08, 0x34, 0x45, 0x45, 0xF1, 0xD1, 0x25, 0x1C, 0x04, 0x98, 0x01, 0x28, 0x0C, 0xD1
    .byte 0x00, 0x2D, 0x08, 0xD0, 0x28, 0x1C, 0xFF, 0xF7, 0x5F, 0xFD, 0x48, 0x46, 0x41, 0x68, 0x28, 0x1C
    .byte 0xFF, 0xF7, 0xF4, 0xFE, 0x68, 0x60, 0x08, 0x35, 0x13, 0xE0, 0x06, 0x1C, 0x2C, 0x1C, 0x00, 0x2E
    .byte 0x0E, 0xD0, 0x00, 0x2C, 0x08, 0xD0, 0x20, 0x1C, 0xFF, 0xF7, 0x4E, 0xFD, 0x4A, 0x46, 0x51, 0x68
    .byte 0x20, 0x1C, 0xFF, 0xF7, 0xE3, 0xFE, 0x60, 0x60, 0x01, 0x3E, 0x08, 0x34, 0x00, 0x2E, 0xF0, 0xD1
    .byte 0x25, 0x1C, 0x7E, 0x68, 0x3C, 0x68, 0xB4, 0x42, 0x0A, 0xD0, 0x61, 0x68, 0x20, 0x1C, 0xFF, 0xF7
    .byte 0x97, 0xFE, 0x20, 0x1C, 0x02, 0x21, 0xFF, 0xF7, 0x65, 0xFD, 0x08, 0x34, 0xB4, 0x42, 0xF4, 0xD1
    .byte 0x38, 0x68, 0x00, 0x28, 0x01, 0xD0, 0xC8, 0xF0, 0xCB, 0xFD, 0x06, 0x98, 0x50, 0x44, 0x51, 0x46
    .byte 0x39, 0x60, 0x7D, 0x60, 0xF8, 0x60, 0x02, 0x99, 0x48, 0x46, 0xFF, 0xF7, 0x81, 0xFE, 0x48, 0x46
    .byte 0x02, 0x21, 0xFF, 0xF7, 0x4F, 0xFD, 0x07, 0x9A, 0x10, 0x06, 0x06, 0x0E, 0xFF, 0x2E, 0x00, 0xD0
    .byte 0x61, 0xE7, 0x38, 0x68, 0x38, 0x61, 0x05, 0x98, 0x07, 0x60, 0x08, 0xB0, 0x38, 0xBC, 0x98, 0x46
    .byte 0xA1, 0x46, 0xAA, 0x46, 0xF0, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

    .section .text.tail08007714, "ax", %progbits
    thumb_func_start func_08007714
func_08007714: @ 0x08007714
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r7, r0, #0
    mov r8, r1
    ldr r0, [r7]
    cmp r0, #0
    beq .L08007754
    adds r6, r0, #0
    ldr r5, [r6, #4]
    ldr r4, [r6]
    cmp r4, r5
    beq .L08007744
.L0800772E:
    ldr r1, [r4, #4]
    adds r0, r4, #0
    bl func_080073E0
    adds r0, r4, #0
    movs r1, #2
    bl func_08007184
    adds r4, #8
    cmp r4, r5
    bne .L0800772E
.L08007744:
    ldr r0, [r6]
    cmp r0, #0
    beq .L0800774E
    bl free
.L0800774E:
    adds r0, r6, #0
    bl __builtin_delete
.L08007754:
    movs r0, #1
    mov r1, r8
    ands r0, r1
    cmp r0, #0
    beq .L08007764
    adds r0, r7, #0
    bl __builtin_delete
.L08007764:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08007770
func_08007770: @ 0x08007770
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    adds r7, r0, #0
    ldr r1, [r1]
    cmp r1, #0
    beq .L080077BE
    adds r6, r1, #0
    ldr r0, [r6, #4]
    mov r8, r0
    ldr r4, [r6, #0x10]
    cmp r4, r8
    beq .L080077A8
    mov sb, r4
.L0800778E:
    adds r5, r4, #0
    adds r4, #8
    cmp r4, r8
    bne .L08007798
    ldr r4, [r6]
.L08007798:
    ldr r1, [r5, #4]
    adds r0, r5, #0
    bl func_08007510
    cmp r0, #1
    beq .L080077B8
    cmp r4, sb
    bne .L0800778E
.L080077A8:
    adds r0, r7, #0
    bl func_08007128
    ldr r1, [r4, #4]
    adds r0, r7, #0
    bl func_0800745C
    b .L080077CA
.L080077B8:
    str r4, [r6, #0x10]
    adds r4, r5, #0
    b .L080077A8
.L080077BE:
    adds r0, r7, #0
    bl func_08007128
    adds r0, r7, #0
    bl func_0800736C
.L080077CA:
    str r0, [r7, #4]
    adds r0, r7, #0
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080077DC
func_080077DC: @ 0x080077DC
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    movs r1, #0
    ldr r3, [r5]
    adds r0, r3, #1
    cmp r0, #0
    bne .L080077EE
    movs r1, #1
.L080077EE:
    cmp r1, #0
    bne .L0800783A
    movs r0, #0
    cmp r3, #0
    bne .L080077FA
    movs r0, #1
.L080077FA:
    cmp r0, #0
    beq .L0800781A
    movs r0, #1
    adds r1, r0, #0
    lsls r1, r4
    lsls r0, r1
    subs r0, #1
    orrs r3, r0
    str r3, [r5]
    movs r0, #0
    b .L0800783C
.L08007810:
    ldr r0, [r5]
    orrs r0, r1
    str r0, [r5]
    adds r0, r4, #0
    b .L0800783C
.L0800781A:
    cmp r4, #4
    bhi .L0800783A
    movs r0, #1
    adds r2, r0, #0
    lsls r2, r4
    movs r4, #0
    lsls r0, r2
    subs r1, r0, #1
.L0800782A:
    adds r0, r3, #0
    ands r0, r1
    cmp r0, #0
    beq .L08007810
    adds r4, r4, r2
    lsls r1, r2
    cmp r1, #0
    bne .L0800782A
.L0800783A:
    movs r0, #0x20
.L0800783C:
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08007844
func_08007844: @ 0x08007844
    push {r4, lr}
    adds r3, r0, #0
    adds r4, r1, #0
    cmp r2, #4
    bhi .L08007864
    movs r1, #1
    adds r0, r1, #0
    lsls r0, r2
    lsls r1, r0
    subs r1, #1
    movs r0, #0x1f
    ands r0, r4
    lsls r1, r0
    ldr r0, [r3]
    bics r0, r1
    b .L0800786A
.L08007864:
    cmp r2, #5
    bne .L0800786C
    movs r0, #0
.L0800786A:
    str r0, [r3]
.L0800786C:
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08007874
func_08007874: @ 0x08007874
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x30
    str r0, [sp, #8]
    ldr r0, .L080079B4 @ =gUnk_03000408
    ldr r4, [r0]
    cmp r4, #0
    beq .L0800788C
    b .L08007992
.L0800788C:
    ldr r0, .L080079B8 @ =0x0000092C
    bl __builtin_new
    mov r8, r0
    str r4, [sp]
    mov r1, r8
    adds r1, #0x20
    mov r2, sp
    adds r2, #4
    str r2, [sp, #0x2c]
    cmp r8, r1
    beq .L080078AC
    movs r2, #0
.L080078A6:
    stm r0!, {r2}
    cmp r0, r1
    bne .L080078A6
.L080078AC:
    mov r0, r8
    adds r0, #0x24
    movs r1, #0x80
    lsls r1, r1, #1
    movs r2, #0
    bl func_080D770C
    mov r1, r8
    str r0, [r1, #0x20]
    ldr r1, .L080079BC @ =0x00000824
    add r1, r8
    movs r0, #0
    strb r0, [r1]
    movs r0, #1
    strb r0, [r1, #1]
    ldr r2, .L080079C0 @ =0x00000828
    add r2, r8
    movs r4, #1
    mov r0, r8
    adds r0, #0x20
    str r0, [sp, #0x20]
    str r1, [sp, #0xc]
    movs r1, #0x92
    lsls r1, r1, #4
    add r1, r8
    str r1, [sp, #0x10]
    ldr r0, .L080079C4 @ =0x00000924
    add r0, r8
    str r0, [sp, #0x14]
    ldr r1, .L080079C8 @ =0x00000928
    add r1, r8
    str r1, [sp, #0x18]
    ldr r0, .L080079CC @ =0x0000092A
    add r0, r8
    str r0, [sp, #0x1c]
    movs r7, #0
    mov ip, r4
    movs r6, #1
    rsbs r6, r6, #0
.L080078FA:
    strb r7, [r2]
    mov r1, ip
    strb r1, [r2, #1]
    adds r0, r2, #4
    movs r3, #1
    adds r2, #0x7c
    str r2, [sp, #0x28]
    subs r4, #1
    str r4, [sp, #0x24]
.L0800790C:
    strb r7, [r0]
    mov r2, ip
    strb r2, [r0, #1]
    adds r2, r0, #4
    movs r1, #1
    adds r0, #0x3c
    mov sb, r0
    subs r3, #1
    mov sl, r3
.L0800791E:
    strb r7, [r2]
    mov r0, ip
    strb r0, [r2, #1]
    adds r0, r2, #4
    movs r3, #1
    adds r4, r2, #0
    adds r4, #0x1c
    subs r5, r1, #1
.L0800792E:
    strb r7, [r0]
    mov r1, ip
    strb r1, [r0, #1]
    adds r1, r0, #4
    movs r2, #1
    adds r0, #0xc
    subs r3, #1
.L0800793C:
    stm r1!, {r7}
    subs r2, #1
    cmp r2, r6
    bne .L0800793C
    cmp r3, r6
    bne .L0800792E
    adds r2, r4, #0
    adds r1, r5, #0
    cmp r1, r6
    bne .L0800791E
    mov r0, sb
    mov r3, sl
    cmp r3, r6
    bne .L0800790C
    ldr r2, [sp, #0x28]
    ldr r4, [sp, #0x24]
    cmp r4, r6
    bne .L080078FA
    movs r0, #0
    ldr r2, [sp, #0x10]
    strh r0, [r2]
    ldr r1, [sp, #0x14]
    str r0, [r1]
    ldr r2, [sp, #0x18]
    strh r0, [r2]
    ldr r1, [sp, #0x1c]
    strh r0, [r1]
    str r0, [sp, #4]
    mov r0, r8
    ldr r2, [sp, #0x20]
    cmp r8, r2
    beq .L08007986
    ldr r1, [sp, #0x2c]
    ldr r3, [r1]
.L08007980:
    stm r0!, {r3}
    cmp r0, r2
    bne .L08007980
.L08007986:
    ldr r0, [sp, #0xc]
    bl func_08007EC8
    mov r2, r8
    ldr r0, .L080079B4 @ =gUnk_03000408
    str r2, [r0]
.L08007992:
    ldr r0, .L080079B4 @ =gUnk_03000408
    ldr r1, [r0]
    ldr r2, .L080079C4 @ =0x00000924
    adds r1, r1, r2
    ldr r0, [r1]
    adds r0, #1
    str r0, [r1]
    ldr r0, [sp, #8]
    add sp, #0x30
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080079B4: .4byte gUnk_03000408
.L080079B8: .4byte 0x0000092C
.L080079BC: .4byte 0x00000824
.L080079C0: .4byte 0x00000828
.L080079C4: .4byte 0x00000924
.L080079C8: .4byte 0x00000928
.L080079CC: .4byte 0x0000092A
.L080079D0:
    .byte 0x03, 0x49, 0x0A, 0x68, 0x03, 0x49, 0x52, 0x18, 0x11, 0x68, 0x01, 0x31, 0x11, 0x60, 0x70, 0x47
    .byte 0x08, 0x04, 0x00, 0x03, 0x24, 0x09, 0x00, 0x00

    thumb_func_start func_080079E8
func_080079E8: @ 0x080079E8
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r5, r1, #0
    ldr r6, .L08007A20 @ =gUnk_03000408
    ldr r2, [r6]
    ldr r0, .L08007A24 @ =0x00000924
    adds r1, r2, r0
    ldr r0, [r1]
    subs r4, r0, #1
    str r4, [r1]
    cmp r4, #0
    bne .L08007A0C
    cmp r2, #0
    beq .L08007A0A
    adds r0, r2, #0
    bl __builtin_delete
.L08007A0A:
    str r4, [r6]
.L08007A0C:
    movs r0, #1
    ands r0, r5
    cmp r0, #0
    beq .L08007A1A
    adds r0, r7, #0
    bl __builtin_delete
.L08007A1A:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08007A20: .4byte gUnk_03000408
.L08007A24: .4byte 0x00000924

    thumb_func_start func_08007A28
func_08007A28: @ 0x08007A28
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    str r1, [sp]
    str r2, [sp, #4]
    ldr r0, .L08007B44 @ =gUnk_03000408
    ldr r5, [r0]
    ldr r0, .L08007B48 @ =0x0000092A
    adds r4, r5, r0
    ldrh r0, [r4]
    cmp r0, #0
    beq .L08007A5A
    ldr r1, .L08007B4C @ =0x00000824
    adds r0, r5, r1
    ldr r2, .L08007B50 @ =0x00000928
    adds r1, r5, r2
    ldrh r1, [r1]
    ldrh r2, [r4]
    bl func_08007F84
    movs r0, #0
    strh r0, [r4]
.L08007A5A:
    ldr r0, [sp, #4]
    cmp r0, #0
    beq .L08007B32
    ldr r1, [sp]
    adds r1, r1, r0
    str r1, [sp, #8]
    movs r7, #0
    movs r2, #0x92
    lsls r2, r2, #4
    adds r0, r5, r2
    ldrh r1, [r0]
    str r4, [sp, #0x14]
    subs r2, #0xfc
    adds r2, r5, r2
    str r2, [sp, #0xc]
    ldr r2, .L08007B50 @ =0x00000928
    adds r2, r5, r2
    str r2, [sp, #0x10]
    mov sl, r0
    cmp r1, #0
    beq .L08007B18
    movs r0, #0x24
    adds r0, r0, r5
    mov r8, r0
    mov r6, r8
.L08007A8C:
    movs r0, #0
    cmp r7, #0xff
    bhi .L08007AAA
    lsrs r1, r7, #5
    lsls r1, r1, #2
    adds r1, r5, r1
    movs r0, #0x1f
    ands r0, r7
    movs r2, #1
    lsls r2, r0
    ldr r1, [r1]
    ands r1, r2
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
.L08007AAA:
    cmp r0, #0
    beq .L08007B04
    ldrh r0, [r6]
    lsls r4, r0, #0x16
    lsrs r3, r4, #0x16
    ldrb r0, [r6, #1]
    lsls r2, r0, #0x1a
    lsrs r1, r2, #0x1c
    movs r0, #1
    mov sb, r0
    lsls r0, r1
    adds r0, r3, r0
    ldr r1, [sp]
    cmp r1, r0
    bhs .L08007B04
    ldr r0, [sp, #8]
    cmp r3, r0
    bhs .L08007B04
    adds r1, r3, #0
    lsrs r2, r2, #0x1c
    ldr r0, [sp, #0xc]
    bl func_080080A0
    movs r0, #0
    strh r0, [r6, #4]
    ldr r0, [r5, #0x20]
    str r0, [r6]
    mov r1, r8
    str r1, [r5, #0x20]
    cmp r7, #0xff
    bhi .L08007AFC
    lsrs r2, r7, #5
    lsls r2, r2, #2
    adds r2, r5, r2
    movs r0, #0x1f
    ands r0, r7
    mov r1, sb
    lsls r1, r0
    ldr r0, [r2]
    bics r0, r1
    str r0, [r2]
.L08007AFC:
    mov r2, sl
    ldrh r0, [r2]
    subs r0, #1
    strh r0, [r2]
.L08007B04:
    adds r6, #8
    movs r0, #8
    add r8, r0
    adds r7, #1
    mov r1, sl
    ldrh r0, [r1]
    cmp r0, #0
    beq .L08007B18
    cmp r7, #0xff
    bls .L08007A8C
.L08007B18:
    ldr r0, [sp, #0xc]
    ldr r1, [sp]
    ldr r2, [sp, #4]
    bl func_08007EE8
    mov r2, sp
    ldrh r0, [r2]
    ldr r2, [sp, #0x10]
    strh r0, [r2]
    mov r1, sp
    ldrh r2, [r1, #4]
    ldr r1, [sp, #0x14]
    strh r2, [r1]
.L08007B32:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08007B44: .4byte gUnk_03000408
.L08007B48: .4byte 0x0000092A
.L08007B4C: .4byte 0x00000824
.L08007B50: .4byte 0x00000928

    thumb_func_start func_08007B54
func_08007B54: @ 0x08007B54
    push {r4, r5, r6, r7, lr}
    adds r7, r1, #0
    ldr r0, .L08007BFC @ =gUnk_03000408
    ldr r4, [r0]
    ldr r0, .L08007C00 @ =0x00000824
    adds r6, r4, r0
    adds r0, r6, #0
    bl func_08008020
    adds r5, r0, #0
    adds r1, r5, #0
    movs r0, #0
    ldr r2, .L08007C04 @ =0x000003FF
    mov ip, r2
    cmp r5, ip
    bhi .L08007B76
    movs r0, #1
.L08007B76:
    cmp r0, #0
    beq .L08007C1C
    adds r2, r4, #0
    adds r2, #0x20
    ldr r3, [r4, #0x20]
    cmp r3, #0
    beq .L08007C14
    ldr r0, [r3]
    str r0, [r4, #0x20]
    cmp r3, #0
    beq .L08007C14
    subs r0, r3, #4
    subs r0, r0, r2
    asrs r6, r0, #3
    cmp r6, #0xff
    bhi .L08007BAA
    lsrs r2, r6, #5
    lsls r2, r2, #2
    adds r2, r4, r2
    movs r0, #0x1f
    ands r0, r6
    movs r1, #1
    lsls r1, r0
    ldr r0, [r2]
    orrs r0, r1
    str r0, [r2]
.L08007BAA:
    movs r0, #0x92
    lsls r0, r0, #4
    adds r1, r4, r0
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    mov r2, ip
    ands r5, r2
    ldrh r1, [r3]
    ldr r0, .L08007C08 @ =0xFFFFFC00
    ands r0, r1
    orrs r0, r5
    strh r0, [r3]
    movs r0, #0xf
    ands r7, r0
    lsls r2, r7, #2
    ldrb r1, [r3, #1]
    movs r0, #0x3d
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r2
    strb r0, [r3, #1]
    movs r0, #1
    strh r0, [r3, #2]
    ldr r0, .L08007C0C @ =0x00000922
    adds r1, r4, r0
    ldrh r0, [r1]
    adds r0, #1
    ldr r2, .L08007C10 @ =0x0000FFFF
    cmp r0, r2
    bls .L08007BEA
    movs r0, #1
.L08007BEA:
    strh r0, [r3, #4]
    strh r0, [r1]
    lsls r1, r6, #0x18
    ldrh r0, [r3, #4]
    ands r0, r2
    lsls r0, r0, #8
    lsrs r1, r1, #0x18
    orrs r1, r0
    b .L08007C1E
    .align 2, 0
.L08007BFC: .4byte gUnk_03000408
.L08007C00: .4byte 0x00000824
.L08007C04: .4byte 0x000003FF
.L08007C08: .4byte 0xFFFFFC00
.L08007C0C: .4byte 0x00000922
.L08007C10: .4byte 0x0000FFFF
.L08007C14:
    adds r0, r6, #0
    adds r2, r7, #0
    bl func_080080A0
.L08007C1C:
    movs r1, #0
.L08007C1E:
    adds r0, r1, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08007C28
func_08007C28: @ 0x08007C28
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r3, r1, #0
    ldr r0, .L08007CD0 @ =gUnk_03000408
    ldr r6, [r0]
    cmp r3, #0
    beq .L08007CC8
    str r3, [sp]
    mov r0, sp
    ldrb r5, [r0]
    movs r0, #0
    cmp r5, #0xff
    bhi .L08007C5A
    lsrs r1, r5, #5
    lsls r1, r1, #2
    adds r1, r6, r1
    movs r0, #0x1f
    ands r0, r5
    movs r2, #1
    lsls r2, r0
    ldr r1, [r1]
    ands r1, r2
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
.L08007C5A:
    cmp r0, #0
    beq .L08007CC8
    adds r0, r6, #0
    adds r0, #0x20
    lsls r1, r5, #3
    adds r1, #4
    adds r4, r0, r1
    movs r1, #0
    lsls r0, r3, #8
    lsrs r0, r0, #0x10
    ldrh r2, [r4, #4]
    cmp r0, r2
    bne .L08007C76
    movs r1, #1
.L08007C76:
    cmp r1, #0
    beq .L08007CC8
    ldrh r0, [r4, #2]
    subs r0, #1
    strh r0, [r4, #2]
    lsls r0, r0, #0x10
    lsrs r7, r0, #0x10
    cmp r7, #0
    bne .L08007CC8
    ldr r1, .L08007CD4 @ =0x00000824
    adds r0, r6, r1
    ldrh r1, [r4]
    lsls r1, r1, #0x16
    lsrs r1, r1, #0x16
    ldrb r2, [r4, #1]
    lsls r2, r2, #0x1a
    lsrs r2, r2, #0x1c
    bl func_080080A0
    strh r7, [r4, #4]
    ldr r0, [r6, #0x20]
    str r0, [r4]
    str r4, [r6, #0x20]
    cmp r5, #0xff
    bhi .L08007CBC
    lsrs r2, r5, #5
    lsls r2, r2, #2
    adds r2, r6, r2
    movs r0, #0x1f
    ands r5, r0
    movs r1, #1
    lsls r1, r5
    ldr r0, [r2]
    bics r0, r1
    str r0, [r2]
.L08007CBC:
    movs r2, #0x92
    lsls r2, r2, #4
    adds r1, r6, r2
    ldrh r0, [r1]
    subs r0, #1
    strh r0, [r1]
.L08007CC8:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08007CD0: .4byte gUnk_03000408
.L08007CD4: .4byte 0x00000824

    thumb_func_start func_08007CD8
func_08007CD8: @ 0x08007CD8
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r1, #0
    ldr r0, .L08007D3C @ =gUnk_03000408
    ldr r5, [r0]
    cmp r4, #0
    beq .L08007D42
    str r4, [sp]
    mov r0, sp
    ldrb r3, [r0]
    movs r0, #0
    cmp r3, #0xff
    bhi .L08007D0A
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
.L08007D0A:
    cmp r0, #0
    beq .L08007D42
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
    bne .L08007D26
    movs r2, #1
.L08007D26:
    cmp r2, #0
    beq .L08007D42
    ldrh r2, [r1, #2]
    adds r0, r2, #1
    strh r0, [r1, #2]
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L08007D40
    adds r0, r4, #0
    b .L08007D44
    .align 2, 0
.L08007D3C: .4byte gUnk_03000408
.L08007D40:
    strh r2, [r1, #2]
.L08007D42:
    movs r0, #0
.L08007D44:
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
