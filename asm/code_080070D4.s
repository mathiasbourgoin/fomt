.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

    thumb_func_start func_080070D4
func_080070D4: @ 0x080070D4
    push {r4, lr}
    sub sp, #0xc
    adds r4, r0, #0
    ldr r1, [r1, #4]
    mov r0, sp
    bl func_08005B68
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
    beq .L08007104
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08007104:
    adds r0, r4, #0
    add sp, #0xc
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08007110
func_08007110: @ 0x08007110
    ldr r0, [r0, #4]
    ldr r1, .L08007118 @ =0x0000461C
    adds r0, r0, r1
    bx lr
    .align 2, 0
.L08007118: .4byte 0x0000461C
.L0800711C:
    .byte 0x01, 0x49, 0x40, 0x18
    .byte 0x70, 0x47, 0x00, 0x00, 0x1C, 0x46, 0x00, 0x00
