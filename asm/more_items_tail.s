    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08010014
func_08010014: @ 0x08010014
    push {lr}
    adds r0, #0x24
    movs r2, #6
    bl memcpy
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08010024
func_08010024: @ 0x08010024
    push {r4, r5, lr}
    adds r3, r0, #0
    adds r5, r3, #4
    ldr r0, [r3]
    adds r0, #4
    adds r0, r3, r0
    adds r2, r0, #0
    adds r1, r5, #0
    ldr r4, [r3]
    cmp r1, r2
    beq .L08010040
.L0801003A:
    adds r1, #1
    cmp r1, r2
    bne .L0801003A
.L08010040:
    subs r0, r0, r5
    subs r0, r4, r0
    str r0, [r3]
    pop {r4, r5}
    pop {r0}
    bx r0
