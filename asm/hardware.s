    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_0800736C
func_0800736C: @ 0x0800736C
    push {r4, r5, lr}
    ldr r0, .L080073CC @ =gUnk_03000404
    ldr r2, [r0]
    ldr r3, [r2]
    adds r5, r3, #0
    cmp r3, #0
    beq .L080073D4
    ldr r0, [r3]
    str r0, [r2]
    cmp r3, #0
    beq .L080073D4
    subs r0, r3, #4
    subs r0, r0, r2
    asrs r4, r0, #2
    cmp r4, #0xf
    bhi .L0800739A
    movs r0, #0x1f
    ands r0, r4
    movs r1, #1
    lsls r1, r0
    ldr r0, [r2, #0x44]
    orrs r0, r1
    str r0, [r2, #0x44]
.L0800739A:
    adds r1, r2, #0
    adds r1, #0x48
    ldrh r0, [r1]
    adds r0, #1
    strh r0, [r1]
    movs r0, #1
    strh r0, [r3]
    adds r1, #2
    ldrh r0, [r1]
    adds r0, #1
    ldr r2, .L080073D0 @ =0x0000FFFF
    cmp r0, r2
    bls .L080073B6
    movs r0, #1
.L080073B6:
    strh r0, [r5, #2]
    strh r0, [r1]
    movs r1, #0xf
    ldrh r0, [r5, #2]
    ands r0, r2
    lsls r0, r0, #4
    adds r2, r4, #0
    ands r2, r1
    orrs r2, r0
    b .L080073D6
    .align 2, 0
.L080073CC: .4byte gUnk_03000404
.L080073D0: .4byte 0x0000FFFF
.L080073D4:
    movs r2, #0
.L080073D6:
    adds r0, r2, #0
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080073E0
func_080073E0: @ 0x080073E0
    push {r4, r5, lr}
    adds r4, r1, #0
    ldr r0, .L08007458 @ =gUnk_03000404
    ldr r3, [r0]
    cmp r4, #0
    beq .L08007450
    lsls r0, r4, #0x1c
    lsrs r2, r0, #0x1c
    adds r5, r2, #0
    movs r0, #0
    cmp r2, #0xf
    bhi .L08007406
    movs r0, #1
    lsls r0, r2
    ldr r1, [r3, #0x44]
    ands r1, r0
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
.L08007406:
    cmp r0, #0
    beq .L08007450
    lsls r0, r2, #2
    adds r0, #4
    adds r1, r3, r0
    movs r2, #0
    lsls r0, r4, #0xc
    lsrs r0, r0, #0x10
    ldrh r4, [r1, #2]
    cmp r0, r4
    bne .L0800741E
    movs r2, #1
.L0800741E:
    cmp r2, #0
    beq .L08007450
    ldrh r0, [r1]
    subs r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    cmp r0, #0
    bne .L08007450
    strh r0, [r1, #2]
    ldr r0, [r3]
    str r0, [r1]
    str r1, [r3]
    cmp r5, #0xf
    bhi .L08007446
    movs r1, #1
    lsls r1, r5
    ldr r0, [r3, #0x44]
    bics r0, r1
    str r0, [r3, #0x44]
.L08007446:
    adds r1, r3, #0
    adds r1, #0x48
    ldrh r0, [r1]
    subs r0, #1
    strh r0, [r1]
.L08007450:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08007458: .4byte gUnk_03000404

    thumb_func_start func_0800745C
func_0800745C: @ 0x0800745C
    push {r4, lr}
    adds r3, r1, #0
    ldr r0, .L080074B0 @ =gUnk_03000404
    ldr r2, [r0]
    cmp r3, #0
    beq .L080074B6
    lsls r0, r3, #0x1c
    lsrs r1, r0, #0x1c
    adds r4, r1, #0
    movs r0, #0
    cmp r1, #0xf
    bhi .L08007482
    movs r0, #1
    lsls r0, r1
    ldr r1, [r2, #0x44]
    ands r1, r0
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
.L08007482:
    cmp r0, #0
    beq .L080074B6
    lsls r0, r4, #2
    adds r0, #4
    adds r1, r2, r0
    movs r2, #0
    lsls r0, r3, #0xc
    lsrs r0, r0, #0x10
    ldrh r4, [r1, #2]
    cmp r0, r4
    bne .L0800749A
    movs r2, #1
.L0800749A:
    cmp r2, #0
    beq .L080074B6
    ldrh r2, [r1]
    adds r0, r2, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    cmp r0, #0
    beq .L080074B4
    adds r0, r3, #0
    b .L080074B8
    .align 2, 0
.L080074B0: .4byte gUnk_03000404
.L080074B4:
    strh r2, [r1]
.L080074B6:
    movs r0, #0
.L080074B8:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
