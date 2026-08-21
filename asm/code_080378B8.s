    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_080378B8
func_080378B8: @ 0x080378B8
    push {r4, lr}
    sub sp, #8
    adds r4, r0, #0
    mov r0, sp
    bl func_080A198C
    adds r0, r4, #0
    mov r1, sp
    bl SetLocation__12AActorEntityRC13ActorLocation
    adds r0, r4, #0
    movs r1, #0
    bl func_080378EC
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq .L080378E2
    adds r0, r4, #0
    bl SetAnim__12AActorEntityUi
.L080378E2:
    add sp, #8
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080378EC
func_080378EC: @ 0x080378EC
    ldr r0, .L080378F8 @ =gUnk_080F161C
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    bx lr
    .align 2, 0
.L080378F8: .4byte gUnk_080F161C

    thumb_func_start func_080378FC
func_080378FC: @ 0x080378FC
    push {lr}
    cmp r1, #0xc
    bhi .L08037944
    lsls r0, r1, #2
    ldr r1, .L0803790C @ =.L08037910
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0803790C: .4byte .L08037910
.L08037910: @ jump table
    .4byte .L08037944 @ case 0
    .4byte .L08037948 @ case 1
    .4byte .L0803794E @ case 2
    .4byte .L08037944 @ case 3
    .4byte .L08037944 @ case 4
    .4byte .L08037944 @ case 5
    .4byte .L08037944 @ case 6
    .4byte .L08037944 @ case 7
    .4byte .L08037944 @ case 8
    .4byte .L08037944 @ case 9
    .4byte .L08037944 @ case 10
    .4byte .L0803794E @ case 11
    .4byte .L08037944 @ case 12
.L08037944:
    movs r0, #0
    b .L08037952
.L08037948:
    movs r0, #0x80
    lsls r0, r0, #8
    b .L08037952
.L0803794E:
    movs r0, #0x80
    lsls r0, r0, #9
.L08037952:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08037958
func_08037958: @ 0x08037958
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldr r5, .L080379D4 @ =gUnk_080F1638
    adds r0, r5, #0
    movs r1, #3
    bl func_080AB82C
    lsls r4, r0, #2
    adds r4, r4, r5
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
    beq .L080379A4
    cmp r1, #3
    beq .L080379A4
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r0, [r4]
    bl func_080AB7A4
    adds r1, r0, #0
    ldrb r0, [r4]
    cmp r0, r1
    beq .L080379A4
    adds r0, r6, #0
    bl SetAnimFacing__12AActorEntityUi
.L080379A4:
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_08037A48
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08037098
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_08037A38
    adds r1, r0, #0
    ldrh r0, [r6, #0x22]
    cmp r0, r1
    beq .L080379CA
    adds r0, r6, #0
    bl SetAnim__12AActorEntityUi
.L080379CA:
    adds r0, r5, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080379D4: .4byte gUnk_080F1638

