    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08035380
func_08035380: @ 0x08035380
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xbc
    adds r6, r0, #0
    ldr r5, [r6]
    ldr r1, [r6, #0x38]
    cmp r1, #0
    bne .L08035398
    b .L080358F8
.L08035398:
    adds r0, #0x3c
    ldrb r0, [r0]
    ldr r1, [r1, #8]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r0, [r0]
    str r0, [sp, #0x70]
    cmp r0, #0
    bne .L080353AC
    b .L080358F8
.L080353AC:
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r1, [r0]
    str r0, [sp, #0xb0]
    ldr r0, [sp, #0x70]
    ldrh r0, [r0]
    cmp r1, r0
    blo .L080353BE
    b .L080358F8
.L080353BE:
    lsls r1, r1, #3
    ldr r2, [sp, #0x70]
    ldr r0, [r2, #4]
    adds r7, r0, r1
    ldr r3, [r7, #4]
    str r3, [sp, #0x74]
    cmp r3, #0
    bne .L080353D0
    b .L080358F8
.L080353D0:
    ldr r0, [r5]
    movs r4, #0xa2
    lsls r4, r4, #1
    adds r0, r0, r4
    ldr r1, [r0]
    adds r0, r5, #0
    bl _call_via_r1
    ldrh r3, [r0, #0xa]
    lsls r0, r3, #0x1b
    lsrs r0, r0, #0x1b
    subs r2, r0, #6
    cmp r2, #0
    bge .L080353EE
    adds r2, #0x18
.L080353EE:
    lsls r1, r2, #4
    subs r1, r1, r2
    lsls r1, r1, #2
    lsls r0, r3, #0x15
    lsrs r0, r0, #0x1a
    adds r1, r1, r0
    movs r0, #0
    str r0, [sp, #0x78]
    ldr r2, [sp, #0x74]
    ldr r3, [r2]
    cmp r3, #0
    bne .L08035408
    b .L080358C0
.L08035408:
    ldrh r4, [r2, #4]
    cmp r4, #0
    bne .L08035410
    b .L080358C0
.L08035410:
    adds r0, r6, #0
    adds r0, #0x3e
    ldrb r2, [r0]
    str r0, [sp, #0xb4]
    cmp r2, r4
    blo .L0803541E
    b .L080358F8
.L0803541E:
    ldr r4, [sp, #0x74]
    ldrb r0, [r4, #0xb]
    lsls r0, r0, #0x1b
    cmp r0, #0
    bge .L0803542A
    b .L08035638
.L0803542A:
    lsls r0, r2, #3
    adds r3, r3, r0
    str r3, [sp, #0x7c]
    movs r1, #0
    ldrb r0, [r3, #4]
    lsls r0, r0, #0x1f
    cmp r0, #0
    bne .L0803543C
    movs r1, #1
.L0803543C:
    mov r8, r1
    ldr r0, [r6, #8]
    str r0, [sp]
    ldr r0, [r6, #0xc]
    str r0, [sp, #8]
    ldr r0, [r6, #0x18]
    str r0, [sp, #4]
    ldr r0, [r6, #0x1c]
    str r0, [sp, #0xc]
    cmp r1, #0
    beq .L0803545C
    mov sl, sp
    mov r7, sp
    adds r7, #4
    str r7, [sp, #0x80]
    b .L08035466
.L0803545C:
    add r0, sp, #8
    mov sl, r0
    mov r1, sp
    adds r1, #0xc
    str r1, [sp, #0x80]
.L08035466:
    mov r2, sl
    ldr r1, [r2]
    asrs r3, r1, #0x10
    str r3, [sp, #0x84]
    ldr r4, [sp, #0x80]
    ldr r0, [r4]
    adds r1, r1, r0
    str r1, [sp, #0x88]
    asrs r7, r1, #0x10
    str r7, [sp, #0x8c]
    subs r7, r7, r3
    movs r3, #0
    adds r0, r6, #0
    adds r0, #0x40
    ldrh r2, [r0]
    ldr r1, .L080354AC @ =0x000002EE
    str r0, [sp, #0xb8]
    cmp r2, r1
    blt .L0803548E
    movs r3, #1
.L0803548E:
    movs r0, #1
    str r0, [sp, #0x90]
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r2, [r0]
    adds r1, r0, #0
    cmp r2, #0
    beq .L080354BE
    movs r4, #0
    str r4, [sp, #0x90]
    cmp r3, #0
    beq .L080354B0
    strb r4, [r1]
    b .L080354B4
    .align 2, 0
.L080354AC: .4byte 0x000002EE
.L080354B0:
    subs r0, r2, #1
    strb r0, [r1]
.L080354B4:
    ldrb r0, [r1]
    cmp r0, #0
    bne .L080354BE
    movs r1, #1
    str r1, [sp, #0x78]
.L080354BE:
    cmp r3, #0
    bne .L080355A0
    cmp r7, #0
    beq .L080355A0
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    movs r1, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq .L080355A0
    ldrh r0, [r4, #4]
    ldrh r2, [r6, #4]
    cmp r0, r2
    bne .L080355A0
    ldr r1, [r6, #0x14]
    add r0, sp, #0x10
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    ldr r0, [sp, #0x10]
    ldr r1, [sp, #0x14]
    str r0, [sp, #0x18]
    str r1, [sp, #0x1c]
    add r5, sp, #0x18
    ldr r1, [r4, #0x14]
    add r0, sp, #0x20
    ldr r2, [r1, #0xc]
    adds r1, r4, #0
    bl _call_via_r2
    ldr r0, [sp, #0x20]
    ldr r1, [sp, #0x24]
    str r0, [sp, #0x28]
    str r1, [sp, #0x2c]
    add r4, sp, #0x28
    mov r3, r8
    cmp r3, #0
    beq .L08035518
    adds r2, r7, #0
    movs r7, #0
    b .L0803551A
.L08035518:
    movs r2, #0
.L0803551A:
    mov sb, r7
    movs r1, #0
    ldrsh r0, [r5, r1]
    mov ip, r0
    movs r3, #4
    ldrsh r1, [r4, r3]
    subs r1, r0, r1
    movs r7, #0
    ldrsh r0, [r4, r7]
    movs r7, #4
    ldrsh r3, [r5, r7]
    mov r8, r3
    subs r0, r0, r3
    ands r1, r0
    movs r0, #2
    ldrsh r7, [r5, r0]
    movs r3, #6
    ldrsh r0, [r4, r3]
    subs r0, r7, r0
    ands r1, r0
    movs r3, #2
    ldrsh r0, [r4, r3]
    movs r3, #6
    ldrsh r5, [r5, r3]
    subs r0, r0, r5
    ands r1, r0
    cmp r1, #0
    blt .L080355A0
    add r3, sp, #0x30
    mov r1, ip
    adds r0, r2, r1
    strh r0, [r3]
    mov r1, sb
    adds r0, r1, r7
    strh r0, [r3, #2]
    mov r7, r8
    adds r0, r2, r7
    strh r0, [r3, #4]
    adds r0, r1, r5
    strh r0, [r3, #6]
    movs r0, #0
    ldrsh r1, [r3, r0]
    movs r2, #4
    ldrsh r0, [r4, r2]
    subs r1, r1, r0
    movs r5, #0
    ldrsh r0, [r4, r5]
    movs r7, #4
    ldrsh r2, [r3, r7]
    subs r0, r0, r2
    ands r1, r0
    movs r2, #2
    ldrsh r0, [r3, r2]
    movs r5, #6
    ldrsh r2, [r4, r5]
    subs r0, r0, r2
    ands r1, r0
    movs r7, #2
    ldrsh r0, [r4, r7]
    movs r4, #6
    ldrsh r2, [r3, r4]
    subs r0, r0, r2
    ands r1, r0
    cmp r1, #0
    bge .L080355A0
    movs r5, #0
    str r5, [sp, #0x90]
.L080355A0:
    ldr r7, [sp, #0x90]
    cmp r7, #0
    beq .L0803562E
    ldr r1, [sp, #0x7c]
    movs r2, #2
    ldrsh r0, [r1, r2]
    ldr r3, [sp, #0x84]
    cmp r3, r0
    beq .L080355D0
    ldr r4, [sp, #0x8c]
    cmp r4, r0
    beq .L080355D0
    movs r1, #0
    cmp r0, r3
    bge .L080355C0
    movs r1, #1
.L080355C0:
    ldr r5, [sp, #0x8c]
    cmp r0, r5
    bge .L080355CC
    cmp r1, #0
    beq .L080355D0
    b .L08035616
.L080355CC:
    cmp r1, #0
    beq .L08035616
.L080355D0:
    lsls r0, r0, #0x10
    mov r7, sl
    str r0, [r7]
    movs r1, #0
    ldr r0, [sp, #0x80]
    str r1, [r0]
    ldr r2, [sp, #0xb4]
    ldrb r0, [r2]
    adds r0, #1
    strb r0, [r2]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r3, [sp, #0x74]
    ldrh r3, [r3, #4]
    cmp r0, r3
    bhs .L080355F6
    movs r4, #1
    str r4, [sp, #0x78]
    b .L0803561C
.L080355F6:
    ldr r5, [sp, #0xb0]
    ldrb r0, [r5]
    adds r0, #1
    ldr r7, [sp, #0x70]
    ldrh r7, [r7]
    cmp r0, r7
    blt .L08035606
    b .L080358F8
.L08035606:
    ldr r0, [sp, #0xb4]
    strb r1, [r0]
    ldrb r0, [r5]
    adds r0, #1
    strb r0, [r5]
    movs r1, #2
    str r1, [sp, #0x78]
    b .L0803561C
.L08035616:
    ldr r2, [sp, #0x88]
    mov r3, sl
    str r2, [r3]
.L0803561C:
    ldr r0, [sp]
    str r0, [r6, #8]
    ldr r0, [sp, #8]
    str r0, [r6, #0xc]
    ldr r0, [sp, #4]
    str r0, [r6, #0x18]
    ldr r0, [sp, #0xc]
    str r0, [r6, #0x1c]
    b .L080358E6
.L0803562E:
    ldr r4, [sp, #0xb8]
    ldrh r0, [r4]
    adds r0, #1
    strh r0, [r4]
    b .L080358E6
.L08035638:
    lsls r0, r2, #3
    adds r3, r3, r0
    str r3, [sp, #0x94]
    movs r2, #0
    ldrb r0, [r3, #6]
    lsls r0, r0, #0x1d
    cmp r0, #0
    blt .L0803564A
    movs r2, #1
.L0803564A:
    mov r8, r2
    movs r2, #0
    ldr r3, [sp, #0xb0]
    ldrb r0, [r3]
    adds r0, #1
    ldr r4, [sp, #0x70]
    ldrh r4, [r4]
    cmp r0, r4
    bge .L08035664
    ldrh r7, [r7, #8]
    cmp r1, r7
    blo .L08035664
    movs r2, #1
.L08035664:
    mov sl, r2
    cmp r2, #0
    beq .L08035682
    ldrh r4, [r6, #4]
    ldr r0, [r5]
    ldr r1, [r0, #0x14]
    adds r0, r5, #0
    bl _call_via_r1
    cmp r4, r0
    beq .L08035682
    movs r0, #0
    ldr r5, [sp, #0xb4]
    strb r0, [r5]
    b .L080358AC
.L08035682:
    adds r1, r6, #0
    adds r1, #0x40
    ldrh r0, [r1]
    str r1, [sp, #0xb8]
    cmp r0, #0
    beq .L08035690
    b .L08035874
.L08035690:
    ldr r0, [r6, #8]
    str r0, [sp, #0x38]
    ldr r0, [r6, #0xc]
    str r0, [sp, #0x40]
    ldr r0, [r6, #0x18]
    str r0, [sp, #0x3c]
    ldr r0, [r6, #0x1c]
    str r0, [sp, #0x44]
    mov r1, r8
    cmp r1, #0
    beq .L080356B4
    mov r2, sp
    adds r2, #0x38
    str r2, [sp, #0x98]
    mov r3, sp
    adds r3, #0x3c
    str r3, [sp, #0x9c]
    b .L080356C0
.L080356B4:
    mov r4, sp
    adds r4, #0x40
    str r4, [sp, #0x98]
    mov r7, sp
    adds r7, #0x44
    str r7, [sp, #0x9c]
.L080356C0:
    ldr r1, [sp, #0x98]
    ldr r0, [r1]
    asrs r2, r0, #0x10
    str r2, [sp, #0xa0]
    ldr r3, [sp, #0x9c]
    ldr r1, [r3]
    adds r0, r0, r1
    str r0, [sp, #0xa4]
    asrs r4, r0, #0x10
    str r4, [sp, #0xa8]
    subs r7, r4, r2
    movs r0, #1
    str r0, [sp, #0xac]
    adds r0, r6, #0
    adds r0, #0x3f
    ldrb r2, [r0]
    adds r1, r0, #0
    cmp r2, #0
    beq .L08035702
    movs r3, #0
    str r3, [sp, #0xac]
    mov r4, sl
    cmp r4, #0
    beq .L080356F4
    strb r3, [r1]
    b .L080356F8
.L080356F4:
    subs r0, r2, #1
    strb r0, [r1]
.L080356F8:
    ldrb r0, [r1]
    cmp r0, #0
    bne .L08035702
    movs r1, #1
    str r1, [sp, #0x78]
.L08035702:
    mov r2, sl
    cmp r2, #0
    bne .L080357E8
    cmp r7, #0
    beq .L080357E8
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    movs r1, #0
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq .L080357E8
    ldrh r0, [r4, #4]
    ldrh r3, [r6, #4]
    cmp r0, r3
    bne .L080357E8
    ldr r1, [r6, #0x14]
    add r0, sp, #0x48
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    ldr r0, [sp, #0x48]
    ldr r1, [sp, #0x4c]
    str r0, [sp, #0x50]
    str r1, [sp, #0x54]
    add r5, sp, #0x50
    ldr r1, [r4, #0x14]
    add r0, sp, #0x58
    ldr r2, [r1, #0xc]
    adds r1, r4, #0
    bl _call_via_r2
    ldr r0, [sp, #0x58]
    ldr r1, [sp, #0x5c]
    str r0, [sp, #0x60]
    str r1, [sp, #0x64]
    add r4, sp, #0x60
    mov r0, r8
    cmp r0, #0
    beq .L08035760
    adds r2, r7, #0
    movs r1, #0
    mov sb, r1
    b .L08035764
.L08035760:
    movs r2, #0
    mov sb, r7
.L08035764:
    movs r7, #0
    ldrsh r3, [r5, r7]
    mov r8, r3
    movs r0, #4
    ldrsh r1, [r4, r0]
    subs r1, r3, r1
    movs r3, #0
    ldrsh r0, [r4, r3]
    movs r3, #4
    ldrsh r7, [r5, r3]
    mov ip, r7
    subs r0, r0, r7
    ands r1, r0
    movs r0, #2
    ldrsh r7, [r5, r0]
    movs r3, #6
    ldrsh r0, [r4, r3]
    subs r0, r7, r0
    ands r1, r0
    movs r3, #2
    ldrsh r0, [r4, r3]
    movs r3, #6
    ldrsh r5, [r5, r3]
    subs r0, r0, r5
    ands r1, r0
    cmp r1, #0
    blt .L080357E8
    add r3, sp, #0x68
    mov r1, r8
    adds r0, r2, r1
    strh r0, [r3]
    mov r1, sb
    adds r0, r1, r7
    strh r0, [r3, #2]
    mov r7, ip
    adds r0, r2, r7
    strh r0, [r3, #4]
    adds r0, r1, r5
    strh r0, [r3, #6]
    movs r0, #0
    ldrsh r1, [r3, r0]
    movs r2, #4
    ldrsh r0, [r4, r2]
    subs r1, r1, r0
    movs r5, #0
    ldrsh r0, [r4, r5]
    movs r7, #4
    ldrsh r2, [r3, r7]
    subs r0, r0, r2
    ands r1, r0
    movs r2, #2
    ldrsh r0, [r3, r2]
    movs r5, #6
    ldrsh r2, [r4, r5]
    subs r0, r0, r2
    ands r1, r0
    movs r7, #2
    ldrsh r0, [r4, r7]
    movs r4, #6
    ldrsh r2, [r3, r4]
    subs r0, r0, r2
    ands r1, r0
    cmp r1, #0
    bge .L080357E8
    movs r5, #0
    str r5, [sp, #0xac]
.L080357E8:
    ldr r7, [sp, #0xac]
    cmp r7, #0
    beq .L080358E6
    ldr r0, [sp, #0x94]
    movs r1, #0
    ldrsh r2, [r0, r1]
    ldr r3, [sp, #0xa8]
    cmp r3, r2
    beq .L08035806
    ldr r4, [sp, #0xa0]
    subs r0, r2, r4
    subs r1, r2, r3
    eors r0, r1
    cmp r0, #0
    bge .L0803585C
.L08035806:
    lsls r0, r2, #0x10
    ldr r5, [sp, #0x98]
    str r0, [r5]
    movs r1, #0
    ldr r7, [sp, #0x9c]
    str r1, [r7]
    mov r0, sl
    cmp r0, #0
    bne .L08035820
    ldr r2, [sp, #0x94]
    ldrh r0, [r2, #4]
    cmp r0, #0
    bne .L08035850
.L08035820:
    ldr r3, [sp, #0xb4]
    ldrb r0, [r3]
    adds r0, #1
    strb r0, [r3]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r4, [sp, #0x74]
    ldrh r4, [r4, #4]
    cmp r0, r4
    blo .L0803584A
    strb r1, [r3]
    mov r5, sl
    cmp r5, #0
    beq .L08035844
    ldr r7, [sp, #0xb0]
    ldrb r0, [r7]
    adds r0, #1
    strb r0, [r7]
.L08035844:
    movs r0, #2
    str r0, [sp, #0x78]
    b .L08035862
.L0803584A:
    movs r1, #1
    str r1, [sp, #0x78]
    b .L08035862
.L08035850:
    movs r0, #1
    ldr r2, [sp, #0xb8]
    strh r0, [r2]
    movs r3, #1
    str r3, [sp, #0x78]
    b .L08035862
.L0803585C:
    ldr r4, [sp, #0xa4]
    ldr r5, [sp, #0x98]
    str r4, [r5]
.L08035862:
    ldr r0, [sp, #0x38]
    str r0, [r6, #8]
    ldr r0, [sp, #0x40]
    str r0, [r6, #0xc]
    ldr r0, [sp, #0x3c]
    str r0, [r6, #0x18]
    ldr r0, [sp, #0x44]
    str r0, [r6, #0x1c]
    b .L080358E6
.L08035874:
    mov r7, sl
    cmp r7, #0
    bne .L0803588A
    adds r0, #1
    strh r0, [r1]
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, [sp, #0x94]
    ldrh r2, [r2, #4]
    cmp r0, r2
    bls .L080358E6
.L0803588A:
    movs r0, #0
    strh r0, [r1]
    ldr r3, [sp, #0xb4]
    ldrb r0, [r3]
    adds r0, #1
    strb r0, [r3]
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r4, [sp, #0x74]
    ldrh r4, [r4, #4]
    cmp r0, r4
    blo .L080358BA
    movs r0, #0
    strb r0, [r3]
    mov r5, sl
    cmp r5, #0
    beq .L080358B4
.L080358AC:
    ldr r7, [sp, #0xb0]
    ldrb r0, [r7]
    adds r0, #1
    strb r0, [r7]
.L080358B4:
    movs r0, #2
    str r0, [sp, #0x78]
    b .L080358EC
.L080358BA:
    movs r1, #1
    str r1, [sp, #0x78]
    b .L080358EC
.L080358C0:
    ldr r2, [sp, #0xb0]
    ldrb r0, [r2]
    adds r0, #1
    ldr r3, [sp, #0x70]
    ldrh r3, [r3]
    cmp r0, r3
    bge .L080358E6
    ldrh r7, [r7, #8]
    cmp r1, r7
    blo .L080358E6
    adds r1, r6, #0
    adds r1, #0x3e
    movs r0, #0
    strb r0, [r1]
    ldrb r0, [r2]
    adds r0, #1
    strb r0, [r2]
    movs r4, #2
    str r4, [sp, #0x78]
.L080358E6:
    ldr r5, [sp, #0x78]
    cmp r5, #0
    ble .L080358F8
.L080358EC:
    ldr r0, [r6, #0x14]
    ldr r2, [r0, #0x3c]
    adds r0, r6, #0
    ldr r1, [sp, #0x78]
    bl _call_via_r2
.L080358F8:
    add sp, #0xbc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08035908
func_08035908: @ 0x08035908
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r0, #0x44
    ldrh r6, [r0]
    cmp r5, r6
    beq .L0803593A
    strh r5, [r0]
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803593A
    ldrh r0, [r4, #0x22]
    cmp r0, r6
    bne .L0803593A
    cmp r0, r5
    beq .L0803593A
    adds r0, r4, #0
    adds r1, r5, #0
    bl SetAnim__12AActorEntityUi
.L0803593A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_08035940
func_08035940: @ 0x08035940
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r0, #0x46
    ldrh r6, [r0]
    cmp r5, r6
    beq .L08035972
    strh r5, [r0]
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08035972
    ldrh r0, [r4, #0x22]
    cmp r0, r6
    bne .L08035972
    cmp r0, r5
    beq .L08035972
    adds r0, r4, #0
    adds r1, r5, #0
    bl SetAnim__12AActorEntityUi
.L08035972:
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_08035978
func_08035978: @ 0x08035978
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08035A3A
    ldr r1, [r4, #0x38]
    cmp r1, #0
    beq .L08035A3A
    adds r0, r4, #0
    adds r0, #0x3c
    ldrb r0, [r0]
    ldr r1, [r1, #8]
    lsls r0, r0, #2
    adds r0, r0, r1
    ldr r6, [r0]
    cmp r6, #0
    beq .L08035A3A
    adds r0, r4, #0
    adds r0, #0x3d
    ldrb r1, [r0]
    mov r8, r0
    ldrh r0, [r6]
    cmp r1, r0
    bhs .L08035A3A
    lsls r1, r1, #3
    ldr r0, [r6, #4]
    adds r7, r0, r1
    ldr r5, [r7, #4]
    cmp r5, #0
    beq .L08035A3A
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldrh r1, [r0, #0xa]
    lsls r0, r1, #0x1b
    lsrs r0, r0, #0x1b
    subs r2, r0, #6
    cmp r2, #0
    bge .L080359E0
    adds r2, #0x18
.L080359E0:
    lsls r0, r2, #4
    subs r0, r0, r2
    lsls r0, r0, #2
    lsls r1, r1, #0x15
    lsrs r1, r1, #0x1a
    adds r1, r0, r1
    ldr r0, [r5]
    cmp r0, #0
    beq .L08035A20
    ldrh r2, [r5, #4]
    cmp r2, #0
    beq .L08035A20
    adds r0, r4, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, r2
    bhs .L08035A3A
    ldrb r0, [r5, #0xb]
    lsls r0, r0, #0x1b
    cmp r0, #0
    blt .L08035A20
    movs r2, #0
    adds r0, r4, #0
    adds r0, #0x40
    ldrh r1, [r0]
    ldr r0, .L08035A1C @ =0x000002EE
    cmp r1, r0
    blt .L08035A36
    b .L08035A34
    .align 2, 0
.L08035A1C: .4byte 0x000002EE
.L08035A20:
    movs r2, #0
    mov r3, r8
    ldrb r0, [r3]
    adds r0, #1
    ldrh r6, [r6]
    cmp r0, r6
    bge .L08035A36
    ldrh r7, [r7, #8]
    cmp r1, r7
    blo .L08035A36
.L08035A34:
    movs r2, #1
.L08035A36:
    adds r0, r2, #0
    b .L08035A3C
.L08035A3A:
    movs r0, #0
.L08035A3C:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08035A48
func_08035A48: @ 0x08035A48
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r3, r1, #0
    ldrh r1, [r4, #4]
    ldrh r0, [r3]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    cmp r1, r0
    bne .L08035AD6
    movs r0, #0xa
    ldrsh r2, [r4, r0]
    ldrb r1, [r3, #1]
    lsrs r1, r1, #2
    ldrh r0, [r3, #2]
    ldr r5, .L08035ADC @ =0x000003FF
    ands r0, r5
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    subs r0, r0, r2
    cmp r0, #0
    bge .L08035A78
    rsbs r0, r0, #0
.L08035A78:
    cmp r0, #0x97
    bgt .L08035AD6
    movs r0, #0xe
    ldrsh r2, [r4, r0]
    ldrb r1, [r3, #3]
    lsrs r1, r1, #2
    ldrh r0, [r3, #4]
    ands r0, r5
    lsls r0, r0, #6
    orrs r0, r1
    lsls r0, r0, #0x10
    asrs r0, r0, #0x10
    subs r0, r0, r2
    cmp r0, #0
    bge .L08035A98
    rsbs r0, r0, #0
.L08035A98:
    cmp r0, #0x6f
    bgt .L08035AD6
    adds r0, r4, #0
    bl func_08035978
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08035AD6
    ldr r0, [r4, #0x14]
    ldr r1, [r0, #0x28]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08035AD6
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0
    bl func_08032384
    adds r1, r4, #0
    adds r1, #0x3f
    movs r0, #0x78
    strb r0, [r1]
    ldr r0, [r4, #0x14]
    ldr r2, [r0, #0x3c]
    adds r0, r4, #0
    movs r1, #1
    bl _call_via_r2
.L08035AD6:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08035ADC: .4byte 0x000003FF

    thumb_func_start func_08035AE0
func_08035AE0: @ 0x08035AE0
    push {lr}
    adds r1, r0, #0
    movs r2, #0
    ldrh r0, [r1, #4]
    cmp r0, #0x1d
    bne .L08035AF6
    movs r3, #0xe
    ldrsh r0, [r1, r3]
    cmp r0, #0x37
    bgt .L08035AF6
    movs r2, #1
.L08035AF6:
    adds r0, r2, #0
    pop {r1}
    bx r1

    thumb_func_start func_08035AFC
func_08035AFC: @ 0x08035AFC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08035B28 @ =gUnk_080F280C
    str r0, [sp]
    ldr r0, .L08035B2C @ =0x0000025F
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L08035B30 @ =0x000003E2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08035B34 @ =vtable_unk_080E7198
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08035B28: .4byte gUnk_080F280C
.L08035B2C: .4byte 0x0000025F
.L08035B30: .4byte 0x000003E2
.L08035B34: .4byte vtable_unk_080E7198

