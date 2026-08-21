    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08008BF8
func_08008BF8: @ 0x08008BF8
    push {lr}
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r0, [r0]
    bl m4aMPlayFadeOut
    pop {r0}
    bx r0
