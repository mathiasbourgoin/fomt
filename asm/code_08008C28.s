    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08008CC4
func_08008CC4: @ 0x08008CC4
    push {lr}
    ldr r0, [r0]
    bl m4aMPlayImmInit
    pop {r0}
    bx r0
