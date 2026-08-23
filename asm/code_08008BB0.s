    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08008BB0
func_08008BB0: @ 0x08008BB0
    push {lr}
    lsls r1, r1, #0x10
    ldr r2, .L08008BCC @ =gSongTable
    lsrs r1, r1, #0xd
    adds r1, r1, r2
    ldr r1, [r1]
    ldr r2, [r0]
    ldr r0, [r2]
    cmp r0, r1
    beq .L08008BD0
    adds r0, r2, #0
    bl m4aMPlayStart
    b .L08008BDC
    .align 2, 0
.L08008BCC: .4byte gSongTable
.L08008BD0:
    ldr r0, [r2, #4]
    cmp r0, #0
    bge .L08008BDC
    adds r0, r2, #0
    bl m4aMPlayContinue
.L08008BDC:
    pop {r0}
    bx r0
