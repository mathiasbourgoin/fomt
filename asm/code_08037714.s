    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    .align 2, 0

    thumb_func_start func_08037714
func_08037714: @ 0x08037714
    push {r4, r5, lr}
    mov r5, r8
    push {r5}
    sub sp, #8
    adds r4, r0, #0
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    adds r1, r0, #0
    adds r5, r1, #0
    ldrb r0, [r1, #0xa]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    subs r0, #6
    cmp r0, #9
    bhi .L080377AC
    ldrb r2, [r1, #8]
    lsls r2, r2, #0x1d
    lsrs r2, r2, #0x1d
    ldrb r3, [r1, #9]
    lsls r0, r3, #0x1e
    lsrs r0, r0, #0x1e
    lsls r3, r3, #0x19
    lsrs r3, r3, #0x1b
    adds r2, #6
    lsls r1, r0, #4
    subs r1, r1, r0
    lsls r1, r1, #1
    lsls r0, r2, #4
    subs r0, r0, r2
    lsls r0, r0, #3
    adds r1, r1, r0
    adds r3, r3, r1
    cmp r3, #6
    bls .L0803776E
    adds r0, r3, #0
    movs r1, #7
    bl __umodsi3
    adds r3, r0, #0
.L0803776E:
    movs r0, #7
    ands r3, r0
    cmp r3, #1
    beq .L080377AC
    ldr r0, [r5]
    cmp r0, #0
    bne .L080377AC
    adds r0, r4, #0
    adds r0, #0x44
    ldrb r1, [r0]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
    mov r0, sp
    bl func_080A1890
    adds r0, r4, #0
    mov r1, sp
    bl SetLocation__12AActorEntityRC13ActorLocation
    adds r0, r4, #0
    movs r1, #0
    bl func_080377C4
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq .L080377B6
    adds r0, r4, #0
    bl SetAnim__12AActorEntityUi
    b .L080377B6
.L080377AC:
    adds r0, r4, #0
    movs r1, #0x8d
    lsls r1, r1, #2
    bl SetMap__7AEntityUi
.L080377B6:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080377C4
func_080377C4: @ 0x080377C4
    ldr r0, .L080377D0 @ =gUnk_080F15A4
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    bx lr
    .align 2, 0
.L080377D0: .4byte gUnk_080F15A4

    thumb_func_start func_080377D4
func_080377D4: @ 0x080377D4
    push {lr}
    cmp r1, #1
    beq .L080377DE
    movs r0, #0
    b .L080377E2
.L080377DE:
    movs r0, #0x80
    lsls r0, r0, #8
.L080377E2:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080377E8
func_080377E8: @ 0x080377E8
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldr r0, [r6]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    movs r4, #0
    subs r0, #6
    cmp r0, #0xe
    bls .L0803780C
    movs r4, #1
.L0803780C:
    movs r0, #0x34
    muls r4, r0, r4
    ldr r0, .L08037888 @ =gUnk_080F15B4
    adds r4, r4, r0
    adds r0, r4, #0
    movs r1, #0xd
    bl func_080AB82C
    lsls r1, r0, #2
    adds r4, r4, r1
    adds r7, r0, #0
    movs r5, #0x3c
    ldrb r0, [r4, #2]
    muls r0, r5, r0
    bl func_080AB788
    ldrb r1, [r4, #1]
    muls r1, r5, r1
    adds r5, r1, r0
    movs r0, #4
    bl func_080AB788
    adds r1, r0, #0
    cmp r1, #0
    beq .L0803785A
    cmp r1, #3
    beq .L0803785A
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r0, [r4]
    bl func_080AB7A4
    adds r1, r0, #0
    ldrb r0, [r4]
    cmp r0, r1
    beq .L0803785A
    adds r0, r6, #0
    bl SetAnimFacing__12AActorEntityUi
.L0803785A:
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_080378FC
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08037098
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_080378EC
    adds r1, r0, #0
    ldrh r0, [r6, #0x22]
    cmp r0, r1
    beq .L08037880
    adds r0, r6, #0
    bl SetAnim__12AActorEntityUi
.L08037880:
    adds r0, r5, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08037888: .4byte gUnk_080F15B4

