    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08008DA8
func_08008DA8: @ 0x08008DA8
    push {lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl m4aSongNumStart
    pop {r0}
    bx r0
    .align 2, 0
