	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

    thumb_func_start func_08009638
func_08009638: @ 0x08009638
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #4
    adds r6, r0, #0
    mov r8, r1
    mov r5, sp
    movs r4, #1
    movs r0, #1
    bl func_08000528
    ands r4, r0
    strh r4, [r5]
    adds r0, r6, #0
    mov r1, r8
    bl func_080099B0
    mov r1, sp
    ldrh r0, [r1]
    cmp r0, #0
    beq .L08009666
    bl func_080004F4
.L08009666:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08009674
func_08009674: @ 0x08009674
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    sub sp, #4
    adds r6, r0, #0
    mov r8, r1
    mov r5, sp
    movs r4, #1
    movs r0, #1
    bl func_08000528
    ands r4, r0
    strh r4, [r5]
    adds r0, r6, #0
    mov r1, r8
    bl func_080099D4
    mov r1, sp
    ldrh r0, [r1]
    cmp r0, #0
    beq .L080096A2
    bl func_080004F4
.L080096A2:
    add sp, #4
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080096B0
func_080096B0: @ 0x080096B0
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    mov r1, sp
    movs r0, #0
    strh r0, [r1]
    ldr r2, .L080096EC @ =0x0100002B
    mov r0, sp
    adds r1, r4, #0
    bl CpuSet
    movs r0, #0x80
    str r0, [r4]
    movs r0, #0
    movs r1, #0x80
    lsls r1, r1, #1
    strh r1, [r4, #0x20]
    strh r0, [r4, #0x22]
    strh r0, [r4, #0x24]
    strh r1, [r4, #0x26]
    strh r1, [r4, #0x30]
    strh r0, [r4, #0x32]
    strh r0, [r4, #0x34]
    strh r1, [r4, #0x36]
    adds r0, r4, #0
    add sp, #4
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080096EC: .4byte 0x0100002B

    thumb_func_start func_080096F0
func_080096F0: @ 0x080096F0
    push {r4, lr}
    adds r4, r0, #0
    movs r1, #0x80
    lsls r1, r1, #0x13
    movs r2, #0x54
    bl func_08008E64
    ldr r1, .L0800970C @ =0x04000054
    adds r4, #0x54
    ldrh r0, [r4]
    strh r0, [r1]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L0800970C: .4byte 0x04000054
.L08009710:
    .byte 0x10, 0xB5, 0x04, 0x1C, 0x80, 0x21, 0xC9, 0x04, 0x10, 0x22, 0xCA, 0xF0, 0x17, 0xF8, 0x20, 0x1C
    .byte 0x40, 0x30, 0x05, 0x49, 0x05, 0x4A, 0xCA, 0xF0, 0x13, 0xF8, 0x05, 0x49, 0xA0, 0x8A, 0x08, 0x80
    .byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x40, 0x00, 0x00, 0x04, 0x05, 0x00, 0x00, 0x04
    .byte 0x14, 0x00, 0x00, 0x04

    thumb_func_start func_08009744
func_08009744: @ 0x08009744
    push {lr}
    adds r3, r0, #0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    lsls r2, r2, #0x18
    lsrs r2, r2, #0x18
    movs r0, #0x7f
    ands r1, r0
    strb r1, [r3, #1]
    strb r1, [r3]
    movs r0, #0x1f
    ands r2, r0
    strb r2, [r3, #3]
    strb r2, [r3, #2]
    adds r0, r3, #4
    ldr r2, .L08009778 @ =0x00000404
    adds r1, r3, r2
    movs r2, #2
.L08009768:
    strb r2, [r0, #1]
    adds r0, #8
    cmp r0, r1
    bne .L08009768
    adds r0, r3, #0
    pop {r1}
    bx r1
    .align 2, 0
.L08009778: .4byte 0x00000404
