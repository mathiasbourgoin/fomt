    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08010F0C
func_08010F0C: @ 0x08010F0C
    ldr r0, [r0]
    lsls r0, r0, #0xe
    lsrs r0, r0, #0x1b
    bx lr
