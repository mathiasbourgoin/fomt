    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08008B54
func_08008B54: @ 0x08008B54
    push {r4, lr}
    adds r4, r0, #0
    lsls r0, r1, #0x18
    lsrs r0, r0, #0x18
    bl func_08008B24
    str r0, [r4]
    adds r0, r4, #0
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
