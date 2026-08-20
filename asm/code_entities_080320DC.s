    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_0803242C
func_0803242C: @ 0x0803242C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r3, r0, #0
    mov r8, r1
    ldrh r0, [r3, #0x24]
    cmp r0, #0
    beq .L08032440
    subs r0, #1
    b .L08032442
.L08032440:
    ldrh r0, [r3, #0x26]
.L08032442:
    strh r0, [r3, #0x24]
    ldr r4, [r3, #0x28]
    cmp r4, #0
    beq .L080324A6
    movs r2, #0
    adds r0, r3, #0
    adds r0, #0x2e
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08032458
    movs r2, #1
.L08032458:
    mov ip, r2
    cmp r2, #0
    beq .L08032462
    ldr r2, [r3, #8]
    b .L08032464
.L08032462:
    ldr r2, [r3, #0xc]
.L08032464:
    asrs r5, r2, #0x10
    movs r0, #0x2c
    ldrsh r6, [r3, r0]
    subs r0, r6, r5
    adds r7, r0, #0
    cmp r0, #0
    bne .L08032476
    str r0, [r3, #0x28]
    b .L080324A6
.L08032476:
    adds r1, r2, r4
    cmp r0, #0
    bgt .L0803247E
    subs r1, r2, r4
.L0803247E:
    adds r2, r1, #0
    asrs r0, r2, #0x10
    cmp r0, r5
    beq .L0803249A
    subs r0, r6, r0
    cmp r7, #0
    ble .L08032492
    cmp r0, #0
    ble .L08032496
    b .L0803249A
.L08032492:
    cmp r0, #0
    blt .L0803249A
.L08032496:
    movs r0, #0
    str r0, [r3, #0x28]
.L0803249A:
    mov r0, ip
    cmp r0, #0
    beq .L080324A4
    str r2, [r3, #8]
    b .L080324A6
.L080324A4:
    str r2, [r3, #0xc]
.L080324A6:
    adds r0, r3, #0
    mov r1, r8
    bl vfunc_2C__7AEntityUi
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_080324B8
func_080324B8: @ 0x080324B8
    movs r0, #0
    bx lr

    thumb_func_start func_080324BC
func_080324BC: @ 0x080324BC
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0xc
    adds r7, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    mov sb, r3
    add r0, sp, #0x34
    ldrb r0, [r0]
    mov r8, r0
    str r4, [r7]
    ldr r0, .L0803255C @ =vtable_unk_080E68B4
    str r0, [r7, #4]
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x68]
    bl _call_via_r1
    adds r1, r0, #0
    ldrh r2, [r4, #0x22]
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    adds r2, r2, r0
    ldr r3, [r4]
    adds r0, r7, #0
    adds r0, #8
    str r5, [sp]
    mov r5, sb
    str r5, [sp, #4]
    add r5, sp, #8
    mov r6, r8
    strb r6, [r5]
    bl func_080A4A00
    ldr r0, [r4]
    ldr r1, [r0]
    ldr r1, [r1, #0x6c]
    bl _call_via_r1
    adds r1, r0, #0
    ldr r3, [r4]
    adds r0, r7, #0
    adds r0, #0x48
    movs r2, #2
    str r2, [sp]
    movs r2, #0xe
    str r2, [sp, #4]
    movs r2, #0
    strb r2, [r5]
    movs r2, #0
    bl func_080A4A00
    adds r0, r7, #0
    adds r0, #0x88
    movs r1, #0
    add r2, sp, #0x28
    ldrb r2, [r2]
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    ldr r3, [sp, #0x2c]
    lsls r6, r3, #2
    strb r6, [r0]
    adds r0, #1
    add r5, sp, #0x30
    ldrb r5, [r5]
    strb r5, [r0]
    adds r0, r7, #0
    add sp, #0xc
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0803255C: .4byte vtable_unk_080E68B4

    thumb_func_start func_08032560
func_08032560: @ 0x08032560
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x14
    adds r7, r0, #0
    adds r5, r1, #0
    adds r4, r2, #0
    mov sb, r3
    ldr r6, [sp, #0x30]
    add r0, sp, #0x40
    ldrb r0, [r0]
    mov r8, r0
    str r5, [r7]
    ldr r0, .L08032608 @ =vtable_unk_080E68B4
    str r0, [r7, #4]
    ldr r0, [r5]
    ldr r1, [r0]
    ldr r1, [r1, #0x68]
    bl _call_via_r1
    adds r1, r0, #0
    ldrh r2, [r5, #0x22]
    adds r0, r5, #0
    adds r0, #0x20
    ldrb r0, [r0]
    adds r2, r2, r0
    ldr r3, [r5]
    adds r0, r7, #0
    adds r0, #8
    str r4, [sp]
    mov r4, sb
    str r4, [sp, #4]
    str r6, [sp, #8]
    add r4, sp, #0xc
    mov r6, r8
    strb r6, [r4]
    bl func_080A49A0
    ldr r0, [r5]
    ldr r1, [r0]
    ldr r1, [r1, #0x6c]
    bl _call_via_r1
    adds r1, r0, #0
    ldr r3, [r5]
    adds r0, r7, #0
    adds r0, #0x48
    movs r2, #2
    str r2, [sp]
    movs r2, #0xe
    str r2, [sp, #4]
    add r4, sp, #8
    movs r2, #0
    strb r2, [r4]
    movs r2, #0
    bl func_080A4A00
    adds r0, r7, #0
    adds r0, #0x88
    movs r1, #0
    add r2, sp, #0x34
    ldrb r2, [r2]
    strb r2, [r0]
    adds r0, #1
    strb r1, [r0]
    adds r0, #1
    ldr r3, [sp, #0x38]
    lsls r3, r3, #2
    str r3, [sp, #0x10]
    strb r3, [r0]
    adds r0, #1
    add r6, sp, #0x3c
    ldrb r6, [r6]
    strb r6, [r0]
    adds r0, r7, #0
    add sp, #0x14
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08032608: .4byte vtable_unk_080E68B4

    thumb_func_start func_0803260C
func_0803260C: @ 0x0803260C
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x47
    ldrb r0, [r1]
    cmp r0, #0
    bne .L08032630
    adds r0, r4, #0
    adds r0, #0x30
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge .L08032634
    adds r1, r4, #0
    adds r1, #0x44
    movs r0, #1
    b .L08032632
.L08032630:
    movs r0, #0
.L08032632:
    strb r0, [r1]
.L08032634:
    adds r1, r4, #0
    adds r1, #0x8a
    ldrb r0, [r1]
    lsls r0, r0, #0x1e
    lsrs r5, r0, #0x1e
    adds r6, r1, #0
    cmp r5, #0
    beq .L0803268A
    movs r7, #0
    subs r1, #3
    ldrb r0, [r1]
    cmp r0, #0
    bne .L0803266A
    adds r0, r4, #0
    adds r0, #0x70
    bl func_0805E8F0
    adds r2, r0, #0
    lsls r0, r2, #0x1e
    cmp r0, #0
    bge .L08032666
    adds r1, r4, #0
    adds r1, #0x84
    movs r0, #1
    strb r0, [r1]
.L08032666:
    adds r0, r2, #0
    b .L08032670
.L0803266A:
    movs r0, #0
    strb r0, [r1]
    movs r0, #2
.L08032670:
    lsls r0, r0, #0x1d
    cmp r0, #0
    bge .L0803267C
    cmp r5, #2
    beq .L0803267C
    movs r7, #1
.L0803267C:
    cmp r7, #0
    beq .L0803268A
    ldrb r1, [r6]
    movs r0, #4
    rsbs r0, r0, #0
    ands r0, r1
    strb r0, [r6]
.L0803268A:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08032690
func_08032690: @ 0x08032690
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x50
    adds r6, r0, #0
    mov sl, r1
    ldr r0, [r6]
    mov r8, r0
    ldr r1, [r0]
    str r1, [sp, #0x3c]
    movs r2, #0xa
    ldrsh r1, [r0, r2]
    mov r3, sl
    movs r4, #0xc
    ldrsh r0, [r3, r4]
    subs r1, r1, r0
    str r1, [sp, #0x40]
    mov r0, r8
    movs r2, #0xe
    ldrsh r1, [r0, r2]
    movs r4, #0xe
    ldrsh r0, [r3, r4]
    subs r0, r1, r0
    str r0, [sp, #0x44]
    movs r0, #0x80
    lsls r0, r0, #8
    subs r0, r0, r1
    str r0, [sp, #0x48]
    add r2, sp, #0x34
    ldr r0, [r3]
    ldr r1, [r3, #8]
    str r0, [sp, #0x34]
    str r1, [r2, #4]
    adds r0, r6, #0
    adds r0, #0x8a
    ldrb r1, [r0]
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #0
    beq .L080327C2
    cmp r0, #0
    blt .L080327C2
    cmp r0, #2
    bgt .L080327C2
    mov r0, r8
    adds r0, #0x20
    ldrb r0, [r0]
    lsrs r1, r1, #2
    lsls r1, r1, #4
    lsls r0, r0, #2
    ldr r2, .L08032764 @ =gUnk_080F1328
    adds r0, r0, r2
    adds r1, r1, r0
    movs r2, #0
    ldrsh r0, [r1, r2]
    movs r3, #2
    ldrsh r1, [r1, r3]
    adds r5, r6, #0
    adds r5, #0x48
    ldr r4, [sp, #0x40]
    adds r0, r4, r0
    str r0, [sp, #0x4c]
    ldr r0, [sp, #0x44]
    adds r0, r0, r1
    mov sb, r0
    adds r0, r6, #0
    adds r0, #0x70
    ldr r1, [r6, #0x70]
    ldr r3, [r1]
    ldrh r2, [r0, #0xc]
    lsls r2, r2, #2
    ldr r0, [r6, #0x74]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    ldr r3, [sp, #0x38]
    ldr r2, [r6, #0x48]
    ldr r1, [r6, #0x50]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge .L0803276C
    ldrh r0, [r5, #0xc]
    adds r1, r6, #0
    adds r1, #0x58
    ldr r4, [sp, #0x48]
    str r4, [sp]
    adds r4, r7, #0
    str r4, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    adds r0, r3, #0
    ldr r1, [sp, #0x4c]
    mov r2, sb
    movs r3, #0x55
    ldr r4, .L08032768 @ =func_030004DC
    bl _call_via_r4
    b .L0803276E
    .align 2, 0
.L08032764: .4byte gUnk_080F1328
.L08032768: .4byte func_030004DC
.L0803276C:
    movs r0, #0
.L0803276E:
    cmp r0, #0
    beq .L080327C2
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    mov sb, r0
    cmp r1, #0
    beq .L080327C2
    ldr r1, [sp, #0x34]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq .L080327A2
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    b .L080327BC
.L080327A2:
    adds r4, r5, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne .L080327BC
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
.L080327BC:
    movs r0, #0
    mov r1, sb
    strb r0, [r1]
.L080327C2:
    adds r0, r6, #0
    adds r0, #0x8b
    ldrb r0, [r0]
    cmp r0, #1
    beq .L080327EC
    cmp r0, #1
    ble .L080327D4
    cmp r0, #2
    beq .L080327F0
.L080327D4:
    mov r0, r8
    adds r0, #0x21
    ldrb r0, [r0]
    movs r1, #3
    ands r0, r1
    lsls r4, r0, #2
    orrs r4, r0
    lsls r1, r0, #4
    orrs r4, r1
    lsls r0, r0, #6
    orrs r4, r0
    b .L080327F2
.L080327EC:
    movs r4, #0x19
    b .L080327F2
.L080327F0:
    movs r4, #0x1a
.L080327F2:
    adds r5, r6, #0
    adds r5, #8
    add r2, sp, #0x34
    mov r8, r2
    ldr r1, [r6, #0x30]
    ldr r3, [r1]
    ldrh r2, [r6, #0x3c]
    lsls r2, r2, #2
    ldr r0, [r6, #0x34]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    mov r3, r8
    ldr r3, [r3, #4]
    mov sb, r3
    ldr r2, [r6, #8]
    ldr r1, [r6, #0x10]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge .L0803284C
    ldrh r0, [r5, #0xc]
    adds r1, r6, #0
    adds r1, #0x18
    ldr r3, [sp, #0x48]
    str r3, [sp]
    adds r3, r7, #0
    str r3, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    mov r0, sb
    ldr r1, [sp, #0x40]
    ldr r2, [sp, #0x44]
    adds r3, r4, #0
    ldr r4, .L08032848 @ =func_030004DC
    bl _call_via_r4
    b .L0803284E
    .align 2, 0
.L08032848: .4byte func_030004DC
.L0803284C:
    movs r0, #0
.L0803284E:
    cmp r0, #0
    beq .L080328A4
    adds r0, r5, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    mov sb, r0
    cmp r1, #0
    beq .L080328A4
    mov r4, r8
    ldr r1, [r4]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r5, #0
    bl func_080A480C
    adds r0, r5, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08032884
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    b .L0803289E
.L08032884:
    adds r4, r5, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0803289E
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r5, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
.L0803289E:
    movs r0, #0
    mov r1, sb
    strb r0, [r1]
.L080328A4:
    adds r0, r6, #0
    adds r0, #0x88
    ldrb r0, [r0]
    cmp r0, #1
    beq .L080328C6
    cmp r0, #1
    bgt .L080328B8
    cmp r0, #0
    beq .L080328C2
    b .L080328C6
.L080328B8:
    cmp r0, #2
    beq .L080328CA
    cmp r0, #3
    bne .L080328C6
    b .L080328F0
.L080328C2:
    movs r4, #0
    b .L080328CC
.L080328C6:
    movs r4, #1
    b .L080328CC
.L080328CA:
    movs r4, #2
.L080328CC:
    ldr r2, [sp, #0x3c]
    ldr r0, [r2]
    ldr r1, [r0, #0x58]
    adds r0, r2, #0
    bl _call_via_r1
    mov r3, sl
    ldr r1, [r3, #8]
    adds r2, r6, #0
    adds r2, #0x89
    movs r3, #0
    ldrsb r3, [r2, r3]
    ldr r2, [sp, #0x44]
    adds r3, r2, r3
    str r4, [sp]
    ldr r2, [sp, #0x40]
    bl func_0803AE58
.L080328F0:
    add sp, #0x50
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08032900
func_08032900: @ 0x08032900
    push {lr}
    cmp r0, #2
    bne .L0803292C
    ldr r0, .L08032920 @ =0xFFFFFEF0
    adds r1, r1, r0
    ldr r0, .L08032924 @ =0x000002AF
    cmp r1, r0
    bhi .L08032928
    cmp r2, #0xaf
    ble .L08032928
    subs r0, #0x60
    cmp r2, r0
    bgt .L08032928
    movs r0, #1
    b .L0803292E
    .align 2, 0
.L08032920: .4byte 0xFFFFFEF0
.L08032924: .4byte 0x000002AF
.L08032928:
    movs r0, #2
    b .L0803292E
.L0803292C:
    movs r0, #0
.L0803292E:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08032934
func_08032934: @ 0x08032934
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    adds r4, r2, #0
    ldrh r0, [r4, #8]
    str r0, [sp]
    adds r0, r5, #0
    movs r3, #2
    bl __12AActorEntityP10GameObjectRC13ActorLocationUiUi
    ldr r0, .L08032958 @ =vtable_unk_080E6828
    str r0, [r5, #0x14]
    str r4, [r5, #0x30]
    adds r0, r5, #0
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08032958: .4byte vtable_unk_080E6828
.L0803295C:
    .byte 0x70, 0xB5, 0x82, 0xB0
    .byte 0x05, 0x1C, 0x0E, 0x1C, 0x11, 0x48, 0x68, 0x61, 0x2C, 0x6B, 0x68, 0x46, 0x29, 0x1C, 0xFF, 0xF7
    .byte 0xFF, 0xFB, 0x68, 0x46, 0x06, 0xC8, 0x06, 0xC4, 0x69, 0x8C, 0x28, 0x6B, 0x01, 0x81, 0x0C, 0x48
    .byte 0x68, 0x61, 0x29, 0x69, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21
    .byte 0xA0, 0xF0, 0xC0, 0xFF, 0x01, 0x20, 0x30, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x28, 0x1C, 0xCD, 0xF7
    .byte 0x33, 0xFE, 0x02, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x28, 0x68, 0x0E, 0x08
    .byte 0x50, 0x62, 0x0E, 0x08, 0x10, 0xB5, 0x04, 0x1C, 0x8C, 0x20, 0xCD, 0xF7, 0x0B, 0xFE, 0x21, 0x1C
    .byte 0x00, 0xF0, 0x1E, 0xF8, 0x10, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00, 0x00, 0x6B, 0x40, 0x89
    .byte 0x70, 0x47, 0x00, 0x00, 0x00, 0x6B, 0x41, 0x81, 0x70, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x0A, 0x23
    .byte 0xCA, 0x5E, 0x0E, 0x24, 0x0B, 0x5F, 0xD1, 0x1F, 0x01, 0x80, 0x19, 0x1C, 0x0A, 0x39, 0x41, 0x80
    .byte 0x07, 0x32, 0x82, 0x80, 0x04, 0x33, 0xC3, 0x80, 0x10, 0xBC, 0x04, 0xBC, 0x10, 0x47, 0x00, 0x00

    @ 3295c:       b570            push    {r4, r5, r6, lr}
    @ 3295e:       b082            sub     sp, #8
    @ 32960:       1c05            adds    r5, r0, #0
    @ 32962:       1c0e            adds    r6, r1, #0
    @ 32964:       4811            ldr     r0, [pc, #68]   @ (0x329ac)
    @ 32966:       6168            str     r0, [r5, #20]
    @ 32968:       6b2c            ldr     r4, [r5, #48]   @ 0x30
    @ 3296a:       4668            mov     r0, sp
    @ 3296c:       1c29            adds    r1, r5, #0
    @ 3296e:       f7ff fbff       bl      0x32170
    @ 32972:       4668            mov     r0, sp
    @ 32974:       c806            ldmia   r0!, {r1, r2}
    @ 32976:       c406            stmia   r4!, {r1, r2}
    @ 32978:       8c69            ldrh    r1, [r5, #34]   @ 0x22
    @ 3297a:       6b28            ldr     r0, [r5, #48]   @ 0x30
    @ 3297c:       8101            strh    r1, [r0, #8]
    @ 3297e:       480c            ldr     r0, [pc, #48]   @ (0x329b0)
    @ 32980:       6168            str     r0, [r5, #20]
    @ 32982:       6929            ldr     r1, [r5, #16]
    @ 32984:       2900            cmp     r1, #0
    @ 32986:       d005            beq.n   0x32994
    @ 32988:       6848            ldr     r0, [r1, #4]
    @ 3298a:       6882            ldr     r2, [r0, #8]
    @ 3298c:       1c08            adds    r0, r1, #0
    @ 3298e:       2103            movs    r1, #3
    @ 32990:       f0a0 ffc0       bl      0xd3914
    @ 32994:       2001            movs    r0, #1
    @ 32996:       4030            ands    r0, r6
    @ 32998:       2800            cmp     r0, #0
    @ 3299a:       d002            beq.n   0x329a2
    @ 3299c:       1c28            adds    r0, r5, #0
    @ 3299e:       f7cd fe33       bl      0x608
    @ 329a2:       b002            add     sp, #8
    @ 329a4:       bc70            pop     {r4, r5, r6}
    @ 329a6:       bc01            pop     {r0}
    @ 329a8:       4700            bx      r0
    @ 329aa:       0000            movs    r0, r0
    @ 329ac:       6828            ldr     r0, [r5, #0]
    @ 329ae:       080e            lsrs    r6, r1, #32
    @ 329b0:       6250            str     r0, [r2, #36]   @ 0x24
    @ 329b2:       080e            lsrs    r6, r1, #32
    @ 329b4:       b510            push    {r4, lr}
    @ 329b6:       1c04            adds    r4, r0, #0
    @ 329b8:       208c            movs    r0, #140        @ 0x8c
    @ 329ba:       f7cd fe0b       bl      __builtin_new
    @ 329be:       1c21            adds    r1, r4, #0
    @ 329c0:       f000 f81e       bl      0x32a00
    @ 329c4:       bc10            pop     {r4}
    @ 329c6:       bc02            pop     {r1}
    @ 329c8:       4708            bx      r1
    @ 329ca:       0000            movs    r0, r0
    @ 329cc:       6b00            ldr     r0, [r0, #48]   @ 0x30
    @ 329ce:       8940            ldrh    r0, [r0, #10]
    @ 329d0:       4770            bx      lr
    @ 329d2:       0000            movs    r0, r0
    @ 329d4:       6b00            ldr     r0, [r0, #48]   @ 0x30
    @ 329d6:       8141            strh    r1, [r0, #10]
    @ 329d8:       4770            bx      lr
    @ 329da:       0000            movs    r0, r0
    @ 329dc:       b510            push    {r4, lr}
    @ 329de:       230a            movs    r3, #10
    @ 329e0:       5eca            ldrsh   r2, [r1, r3]
    @ 329e2:       240e            movs    r4, #14
    @ 329e4:       5f0b            ldrsh   r3, [r1, r4]
    @ 329e6:       1fd1            subs    r1, r2, #7
    @ 329e8:       8001            strh    r1, [r0, #0]
    @ 329ea:       1c19            adds    r1, r3, #0
    @ 329ec:       390a            subs    r1, #10
    @ 329ee:       8041            strh    r1, [r0, #2]
    @ 329f0:       3207            adds    r2, #7
    @ 329f2:       8082            strh    r2, [r0, #4]
    @ 329f4:       3304            adds    r3, #4
    @ 329f6:       80c3            strh    r3, [r0, #6]
    @ 329f8:       bc10            pop     {r4}
    @ 329fa:       bc04            pop     {r2}
    @ 329fc:       4710            bx      r2
    @ 329fe:       0000            movs    r0, r0

