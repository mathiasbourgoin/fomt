    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08008AF0
func_08008AF0: @ 0x08008AF0
    push {lr}
    movs r0, #1
    bl func_08000568
    pop {r0}
    bx r0

    thumb_func_start func_08008AFC
func_08008AFC: @ 0x08008AFC
    push {lr}
    bl m4aSoundInit
    bl m4aSoundVSyncOff
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08008B0C
func_08008B0C: @ 0x08008B0C
    push {lr}
    bl m4aSoundVSync
    movs r0, #1
    pop {r1}
    bx r1

    thumb_func_start func_08008B18
func_08008B18: @ 0x08008B18
    push {lr}
    bl m4aSoundMain
    movs r0, #1
    pop {r1}
    bx r1

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

    thumb_func_start func_08008B6C
func_08008B6C: @ 0x08008B6C
    push {lr}
    lsls r1, r1, #0x10
    ldr r0, [r0]
    ldr r2, .L08008B84 @ =gSongTable
    lsrs r1, r1, #0xd
    adds r1, r1, r2
    ldr r1, [r1]
    bl m4aMPlayStart
    pop {r0}
    bx r0
    .align 2, 0
.L08008B84: .4byte gSongTable

    thumb_func_start func_08008B88
func_08008B88: @ 0x08008B88
    push {lr}
    lsls r1, r1, #0x10
    ldr r2, .L08008BAC @ =gSongTable
    lsrs r1, r1, #0xd
    adds r1, r1, r2
    ldr r1, [r1]
    ldr r2, [r0]
    ldr r0, [r2]
    cmp r0, r1
    bne .L08008BA2
    ldr r0, [r2, #4]
    cmp r0, #0
    bge .L08008BA8
.L08008BA2:
    adds r0, r2, #0
    bl m4aMPlayStart
.L08008BA8:
    pop {r0}
    bx r0
    .align 2, 0
.L08008BAC: .4byte gSongTable

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

    thumb_func_start func_08008BE0
func_08008BE0: @ 0x08008BE0
    push {lr}
    ldr r0, [r0]
    bl m4aMPlayStop
    pop {r0}
    bx r0
