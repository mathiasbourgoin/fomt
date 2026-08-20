    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_0801004C
func_0801004C: @ 0x0801004C
    push {r4, r5, r6, r7, lr}
    sub sp, #0x1c
    adds r7, r0, #0
    adds r5, r1, #0
    mov r0, sp
    bl func_08008980
    movs r1, #0
    str r1, [sp, #4]
    movs r2, #0xd9
    lsls r2, r2, #2
    adds r0, r5, r2
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08010070
    add r4, sp, #8
    str r1, [sp, #8]
    b .L08010076
.L08010070:
    add r4, sp, #8
    movs r0, #1
    str r0, [sp, #8]
.L08010076:
    movs r0, #8
    bl __builtin_new
    ldr r1, [r5, #4]
    adds r2, r4, #0
    bl func_08011DC4
    adds r5, r0, #0
    ldr r1, [sp, #4]
    adds r6, r4, #0
    cmp r5, r1
    beq .L0801009E
    cmp r1, #0
    beq .L0801009E
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0801009E:
    str r5, [sp, #4]
    ldr r0, [sp, #4]
    movs r4, #0
    str r4, [sp, #4]
    str r0, [sp, #8]
    adds r0, r6, #0
    bl func_0800082C
    str r4, [sp, #8]
    add r0, sp, #0x14
    str r6, [sp, #0x14]
    str r4, [r0, #4]
    str r4, [r6]
    str r4, [r7]
    ldr r1, [sp, #8]
    cmp r1, #0
    beq .L080100CC
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L080100CC:
    ldr r1, [sp, #4]
    cmp r1, #0
    beq .L080100DE
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L080100DE:
    mov r0, sp
    movs r1, #2
    bl func_08008A68
    adds r0, r7, #0
    add sp, #0x1c
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
.L080100F0:
    .byte 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00, 0x0C, 0x04, 0x00, 0x03
    .byte 0x24, 0x05, 0x00, 0x00, 0x02, 0x48, 0x00, 0x68, 0x02, 0x49, 0x40, 0x18, 0x70, 0x47, 0x00, 0x00
    .byte 0x0C, 0x04, 0x00, 0x03, 0xDC, 0x04, 0x00, 0x00, 0x02, 0x48, 0x00, 0x68, 0xDE, 0x21, 0x89, 0x00
    .byte 0x40, 0x18, 0x70, 0x47, 0x0C, 0x04, 0x00, 0x03, 0x02, 0x48, 0x00, 0x68, 0xDB, 0x21, 0x89, 0x00
    .byte 0x40, 0x18, 0x70, 0x47, 0x0C, 0x04, 0x00, 0x03, 0x02, 0x48, 0x00, 0x68, 0xDA, 0x21, 0x89, 0x00
    .byte 0x40, 0x18, 0x70, 0x47, 0x0C, 0x04, 0x00, 0x03, 0x19, 0x20, 0x70, 0x47, 0x01, 0x48, 0x00, 0x68
    .byte 0x08, 0x30, 0x70, 0x47, 0x0C, 0x04, 0x00, 0x03

