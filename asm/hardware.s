    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

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
