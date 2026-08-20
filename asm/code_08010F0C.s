    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08010F0C
func_08010F0C: @ 0x08010F0C
    ldr r0, [r0]
    lsls r0, r0, #0xe
    lsrs r0, r0, #0x1b
    bx lr
.L08010F14:
    .byte 0x40, 0x88, 0xC0, 0x05, 0x40, 0x0E, 0x70, 0x47


