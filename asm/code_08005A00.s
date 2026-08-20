.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

    thumb_func_start func_08005A00
func_08005A00: @ 0x08005A00
    push {r4, lr}
    sub sp, #0xc
    adds r4, r0, #0
    ldr r1, [r1, #4]
    mov r0, sp
    bl func_080050F8
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
    beq .L08005A30
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08005A30:
    adds r0, r4, #0
    add sp, #0xc
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

