    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08008AE0
func_08008AE0: @ 0x08008AE0
    ldr r0, [r0]
    adds r0, #0xc
    bx lr
    .align 2, 0
.L08008AE8:
    .byte 0x00, 0x68, 0x0C, 0x30, 0x70, 0x47, 0x00, 0x00

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
.L08008BEC:
    .byte 0x00, 0xB5, 0x00, 0x68
    .byte 0xC9, 0xF0, 0x22, 0xFC, 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_08008BF8
func_08008BF8: @ 0x08008BF8
    push {lr}
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r0, [r0]
    bl m4aMPlayFadeOut
    pop {r0}
    bx r0
.L08008C08:
    .byte 0x00, 0xB5, 0x09, 0x04, 0x09, 0x0C, 0x00, 0x68
    .byte 0xC9, 0xF0, 0x36, 0xFC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0xB5, 0x09, 0x04, 0x09, 0x0C, 0x00, 0x68
    .byte 0xC9, 0xF0, 0x3E, 0xFC, 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_08008C28
func_08008C28: @ 0x08008C28
    push {lr}
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r0, [r0]
    bl m4aMPlayTempoControl
    pop {r0}
    bx r0

    thumb_func_start func_08008C38
func_08008C38: @ 0x08008C38
    push {lr}
    adds r3, r1, #0
    adds r1, r2, #0
    lsls r3, r3, #0x10
    lsrs r3, r3, #0x10
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r0, [r0]
    adds r2, r3, #0
    bl m4aMPlayVolumeControl
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08008C54
func_08008C54: @ 0x08008C54
    push {lr}
    adds r3, r1, #0
    adds r1, r2, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r0, [r0]
    lsls r3, r3, #0x10
    asrs r3, r3, #0x10
    adds r2, r3, #0
    bl m4aMPlayPitchControl
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08008C70
func_08008C70: @ 0x08008C70
    push {lr}
    adds r3, r1, #0
    adds r1, r2, #0
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r0, [r0]
    lsls r3, r3, #0x18
    asrs r3, r3, #0x18
    adds r2, r3, #0
    bl m4aMPlayPanpotControl
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08008C8C
func_08008C8C: @ 0x08008C8C
    push {lr}
    adds r3, r1, #0
    adds r1, r2, #0
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r0, [r0]
    adds r2, r3, #0
    bl m4aMPlayModDepthSet
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08008CA8
func_08008CA8: @ 0x08008CA8
    push {lr}
    adds r3, r1, #0
    adds r1, r2, #0
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    ldr r0, [r0]
    adds r2, r3, #0
    bl m4aMPlayLFOSpeedSet
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08008CC4
func_08008CC4: @ 0x08008CC4
    push {lr}
    ldr r0, [r0]
    bl m4aMPlayImmInit
    pop {r0}
    bx r0

    thumb_func_start func_08008CD0
func_08008CD0: @ 0x08008CD0
    ldr r0, [r0]
    ldr r0, [r0, #4]
    lsrs r0, r0, #0x1f
    movs r1, #1
    eors r0, r1
    bx lr
.L08008CDC:
    .byte 0x00, 0x68, 0x80, 0x88
    .byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x68, 0x00, 0x7A, 0x70, 0x47, 0x00, 0x00, 0x00, 0x68, 0x40, 0x7A
    .byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x68, 0xC0, 0x68, 0x70, 0x47, 0x00, 0x00, 0x00, 0xB5, 0x81, 0xB0
    .byte 0x68, 0x46, 0x00, 0x21, 0xFF, 0xF7, 0x26, 0xFF, 0x00, 0x98, 0x01, 0xB0, 0x02, 0xBC, 0x08, 0x47
    .byte 0x00, 0xB5, 0x81, 0xB0, 0x04, 0x49, 0x09, 0x06, 0x09, 0x0E, 0x68, 0x46, 0xFF, 0xF7, 0x1A, 0xFF
    .byte 0x00, 0x98, 0x01, 0xB0, 0x02, 0xBC, 0x08, 0x47, 0x05, 0x00, 0x00, 0x00, 0x01, 0x68, 0x40, 0x31
    .byte 0x01, 0x60, 0x70, 0x47, 0x01, 0x68, 0x40, 0x39, 0x01, 0x60, 0x70, 0x47

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
.L08008D5C:
    .byte 0x00, 0x04, 0x03, 0x49
    .byte 0x40, 0x0B, 0x40, 0x18, 0x00, 0x68, 0x00, 0x78, 0x70, 0x47, 0x00, 0x00, 0xF0, 0xAB, 0x13, 0x08
    .byte 0x00, 0x04, 0x03, 0x49, 0x40, 0x0B, 0x40, 0x18, 0x00, 0x68, 0x80, 0x78, 0x70, 0x47, 0x00, 0x00
    .byte 0xF0, 0xAB, 0x13, 0x08

    thumb_func_start func_08008D84
func_08008D84: @ 0x08008D84
    push {lr}
    bl m4aSoundVSyncOn
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08008D90
func_08008D90: @ 0x08008D90
    push {lr}
    bl m4aSoundVSyncOff
    pop {r0}
    bx r0
    .align 2, 0

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

