    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08008D3C
func_08008D3C: @ 0x08008D3C
    push {lr}
    sub sp, #4
    lsls r0, r0, #0x10
    ldr r1, .L08008D58 @ =gSongTable
    lsrs r0, r0, #0xd
    adds r0, r0, r1
    ldrb r1, [r0, #4]
    mov r0, sp
    bl func_08008B54
    ldr r0, [sp]
    add sp, #4
    pop {r1}
    bx r1
    .align 2, 0
.L08008D58: .4byte gSongTable
