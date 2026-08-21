    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08008D10
func_08008D10: @ 0x08008D10
    push {lr}
    sub sp, #4
    ldr r1, .L08008D28 @ =0x00000005
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    mov r0, sp
    bl func_08008B54
    ldr r0, [sp]
    add sp, #4
    pop {r1}
    bx r1
.L08008D28: .4byte 0x00000005
