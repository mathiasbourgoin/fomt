    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08008B24
func_08008B24: @ 0x08008B24
    push {lr}
    adds r2, r0, #0
    ldr r0, .L08008B4C @ =0x00000005
    lsls r0, r0, #0x10
    lsrs r1, r0, #0x10
    cmp r2, r1
    blo .L08008B3A
    adds r0, r2, #0
    bl __umodsi3
    adds r2, r0, #0
.L08008B3A:
    ldr r0, .L08008B50 @ =gMusicPlayerTable
    lsls r1, r2, #1
    adds r1, r1, r2
    lsls r1, r1, #2
    adds r1, r1, r0
    ldr r0, [r1]
    pop {r1}
    bx r1
    .align 2, 0
.L08008B4C: .4byte 0x00000005
.L08008B50: .4byte gMusicPlayerTable

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
