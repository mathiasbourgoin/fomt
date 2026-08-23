    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08008D9C
func_08008D9C: @ 0x08008D9C
    ldr r0, .L08008DA4 @ =0x040000C4
    ldr r0, [r0]
    lsrs r0, r0, #0x1f
    bx lr
    .align 2, 0
.L08008DA4: .4byte 0x040000C4

    thumb_func_start func_08008DA8
func_08008DA8: @ 0x08008DA8
    push {lr}
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    bl m4aSongNumStart
    pop {r0}
    bx r0
    .align 2, 0
