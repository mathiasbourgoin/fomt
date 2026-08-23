    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08037568
func_08037568: @ 0x08037568
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
    bhi .L08037600
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
    bls .L080375C2
    adds r0, r3, #0
    movs r1, #7
    bl __umodsi3
    adds r3, r0, #0
.L080375C2:
    movs r0, #7
    ands r3, r0
    cmp r3, #0
    beq .L08037600
    ldr r0, [r5]
    cmp r0, #0
    bne .L08037600
    adds r0, r4, #0
    adds r0, #0x44
    ldrb r1, [r0]
    lsls r1, r1, #0x1e
    lsrs r1, r1, #0x1e
    mov r0, sp
    bl func_080A17A0
    adds r0, r4, #0
    mov r1, sp
    bl SetLocation__12AActorEntityRC13ActorLocation
    adds r0, r4, #0
    movs r1, #0
    bl func_08037618
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq .L0803760A
    adds r0, r4, #0
    bl SetAnim__12AActorEntityUi
    b .L0803760A
.L08037600:
    adds r0, r4, #0
    movs r1, #0x8d
    lsls r1, r1, #2
    bl SetMap__7AEntityUi
.L0803760A:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    .section .text.tail08037628, "ax", %progbits
    thumb_func_start func_08037628
func_08037628: @ 0x08037628
    push {lr}
    cmp r1, #1
    beq .L08037632
    movs r0, #0
    b .L08037636
.L08037632:
    movs r0, #0x80
    lsls r0, r0, #8
.L08037636:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_0803763C
func_0803763C: @ 0x0803763C
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
    movs r1, #0
    subs r0, #6
    cmp r0, #0xe
    bls .L08037660
    movs r1, #1
.L08037660:
    lsls r4, r1, #3
    subs r4, r4, r1
    lsls r4, r4, #2
    ldr r0, .L080376E0 @ =gUnk_080F156C
    adds r4, r4, r0
    adds r0, r4, #0
    movs r1, #7
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
    beq .L080376B0
    cmp r1, #3
    beq .L080376B0
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r0, [r4]
    bl func_080AB7A4
    adds r1, r0, #0
    ldrb r0, [r4]
    cmp r0, r1
    beq .L080376B0
    adds r0, r6, #0
    bl SetAnimFacing__12AActorEntityUi
.L080376B0:
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_080377D4
    adds r1, r0, #0
    adds r0, r6, #0
    bl func_08037098
    adds r0, r6, #0
    adds r1, r7, #0
    bl func_080377C4
    adds r1, r0, #0
    ldrh r0, [r6, #0x22]
    cmp r0, r1
    beq .L080376D6
    adds r0, r6, #0
    bl SetAnim__12AActorEntityUi
.L080376D6:
    adds r0, r5, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080376E0: .4byte gUnk_080F156C
