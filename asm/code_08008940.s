    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08008940
func_08008940: @ 0x08008940
    ldr r0, [r0]
    ldr r1, .L08008948 @ =0x00000494
    adds r0, r0, r1
    bx lr
    .align 2, 0
.L08008948: .4byte 0x00000494

    thumb_func_start func_0800894C
func_0800894C: @ 0x0800894C
    push {lr}
    ldr r0, [r0]
    movs r1, #0x92
    lsls r1, r1, #3
    adds r0, r0, r1
    bl func_08008AE0
    pop {r1}
    bx r1
    .align 2, 0
