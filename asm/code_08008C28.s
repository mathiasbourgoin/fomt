    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

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
