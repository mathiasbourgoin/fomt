    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08010348
func_08010348: @ 0x08010348
    push {lr}
.L0801034A:
    bl rand
    cmp r0, #0
    beq .L0801034A
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08010358
func_08010358: @ 0x08010358
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xa8
    str r0, [sp, #0x48]
    mov sl, r2
    add r0, sp, #0xc
    mov sb, r0
    strb r3, [r0]
    ldr r7, [sp, #0xc8]
    ldr r3, [sp, #0x48]
    ldrb r2, [r3]
    movs r3, #2
    rsbs r3, r3, #0
    adds r0, r3, #0
    ands r0, r2
    movs r2, #3
    rsbs r2, r2, #0
    ands r0, r2
    subs r2, #2
    ands r0, r2
    subs r2, #4
    ands r0, r2
    subs r2, #8
    ands r0, r2
    ldr r2, [sp, #0x48]
    strb r0, [r2]
    ldr r0, [r2]
    ldr r2, .L080105F0 @ =0xFFFC1FFF
    ands r0, r2
    ldr r2, [sp, #0x48]
    str r0, [r2]
    ldrh r2, [r2, #2]
    ldr r0, .L080105F4 @ =0xFFFFFE03
    ands r0, r2
    ldr r2, [sp, #0x48]
    strh r0, [r2, #2]
    ldrb r2, [r2, #3]
    movs r0, #0x7f
    rsbs r0, r0, #0
    ands r0, r2
    movs r2, #0x7f
    ands r0, r2
    ldr r2, [sp, #0x48]
    strb r0, [r2, #3]
    ldrb r0, [r2, #4]
    ands r3, r0
    strb r3, [r2, #4]
    movs r0, #0x1d
    str r0, [sp]
    movs r5, #0
    str r5, [sp, #4]
    movs r3, #1
    mov r8, r3
    subs r3, #5
    ands r3, r4
    movs r2, #4
    subs r0, #0x9a
    ands r3, r0
    orrs r3, r2
    add r4, sp, #8
    adds r0, #0x5d
    ands r0, r6
    movs r2, #6
    orrs r0, r2
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    ldr r2, .L080105F8 @ =0xFFFFFF00
    ands r2, r6
    orrs r2, r0
    movs r6, #0
    ldr r0, .L080105FC @ =0xFFFFF81F
    ands r2, r0
    mov r0, r8
    strb r0, [r4]
    strb r3, [r4, #1]
    strh r2, [r4, #2]
    ldr r2, [sp, #0x48]
    adds r2, #8
    ldr r3, [sp, #0x48]
    str r5, [r3, #8]
    str r5, [r2, #4]
    ldr r0, [sp, #8]
    str r0, [r2, #8]
    adds r0, r3, #0
    adds r0, #0x14
    bl __4FarmPCc
    ldr r1, [sp, #0x48]
    ldr r2, .L08010600 @ =0x00001AA8
    adds r0, r1, r2
    bl func_0809AB8C
    ldr r3, [sp, #0x48]
    ldr r1, .L08010604 @ =0x00001BD8
    adds r0, r3, r1
    mov r1, sl
    mov r2, sb
    bl __6FarmerPCcRC8GameDate
    ldr r2, [sp, #0x48]
    ldr r3, .L08010608 @ =0x00001C70
    adds r0, r2, r3
    adds r1, r7, #0
    bl __3DogPCc
    ldr r7, [sp, #0x48]
    movs r1, #0xe5
    lsls r1, r1, #5
    adds r0, r7, r1
    bl func_0800FF8C
    ldr r2, .L0801060C @ =0x00001CCC
    adds r1, r7, r2
    movs r4, #0x8d
    lsls r4, r4, #2
    ldrh r2, [r1]
    ldr r3, .L08010610 @ =0xFFFFFC00
    adds r0, r3, #0
    ands r0, r2
    orrs r0, r4
    strh r0, [r1]
    ldrb r4, [r1, #1]
    movs r2, #3
    adds r0, r2, #0
    ands r0, r4
    strb r0, [r1, #1]
    ldrh r4, [r1, #2]
    adds r0, r3, #0
    ands r0, r4
    strh r0, [r1, #2]
    ldrb r0, [r1, #3]
    ands r2, r0
    strb r2, [r1, #3]
    ldrh r0, [r1, #4]
    ands r3, r0
    strh r3, [r1, #4]
    ldr r3, .L08010614 @ =0x00001CD4
    adds r0, r7, r3
    bl func_0809EEE8
    ldr r1, .L08010618 @ =0x0000214C
    adds r0, r7, r1
    bl func_0809C6BC
    bl func_08010348
    ldr r3, .L0801061C @ =0x000021CC
    adds r2, r7, r3
    str r0, [r2]
    str r5, [r2, #4]
    ldr r1, .L08010620 @ =0x000021E0
    adds r0, r7, r1
    strb r6, [r0]
    adds r3, #0x24
    adds r0, r7, r3
    strb r6, [r0]
    adds r1, #0x20
    adds r0, r7, r1
    strb r6, [r0]
    str r5, [sp, #0x10]
    subs r3, #0x1c
    adds r0, r7, r3
    movs r1, #8
    add r4, sp, #0x14
    ldr r6, .L08010624 @ =0x00002C48
    adds r5, r7, r6
    ldr r3, .L08010628 @ =0x00002C4A
    adds r6, r7, r3
    add r7, sp, #0x18
    mov r3, sp
    adds r3, #0x20
    str r3, [sp, #0x8c]
    adds r3, #8
    str r3, [sp, #0x90]
    adds r3, #8
    str r3, [sp, #0x94]
    adds r3, #8
    str r3, [sp, #0x98]
    adds r3, #8
    str r3, [sp, #0x9c]
    movs r3, #0
.L080104C8:
    strb r3, [r0]
    subs r1, #1
    adds r0, #1
    cmp r1, #0
    bgt .L080104C8
    movs r0, #0
    str r0, [sp, #0x14]
    adds r0, r2, #0
    adds r0, #0x10
    movs r1, #4
    ldr r2, [r4]
.L080104DE:
    strb r2, [r0]
    subs r1, #1
    adds r0, #1
    cmp r1, #0
    bgt .L080104DE
    ldr r1, [sp, #0x48]
    ldr r2, .L0801062C @ =0x00002210
    adds r0, r1, r2
    bl func_080114F8
    ldr r3, [sp, #0x48]
    ldr r1, .L08010630 @ =0x00002214
    adds r0, r3, r1
    bl func_0809A8AC
    ldr r3, [sp, #0x48]
    ldr r0, .L08010634 @ =0x00002C1C
    adds r2, r3, r0
    ldrb r0, [r5]
    movs r1, #3
    orrs r0, r1
    strb r0, [r5]
    ldr r0, [r2, #0x2c]
    ldr r1, .L08010638 @ =0xFFF80003
    ands r0, r1
    str r0, [r2, #0x2c]
    ldrb r1, [r6]
    movs r0, #9
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #0x11
    rsbs r1, r1, #0
    ands r0, r1
    subs r1, #0x10
    ands r0, r1
    subs r1, #0x20
    ands r0, r1
    movs r1, #0x7f
    ands r0, r1
    strb r0, [r6]
    ldr r1, .L0801063C @ =0x00002C4C
    adds r0, r3, r1
    movs r1, #9
    movs r2, #0
    movs r3, #1
    rsbs r3, r3, #0
.L0801053A:
    strb r2, [r0]
    strh r2, [r0, #2]
    adds r0, #4
    subs r1, #1
    cmp r1, r3
    bne .L0801053A
    ldr r2, [sp, #0x48]
    ldr r3, .L08010640 @ =0x00002C74
    adds r0, r2, r3
    bl func_08011510
    ldr r6, [sp, #0x48]
    movs r1, #0xb2
    lsls r1, r1, #6
    adds r0, r6, r1
    bl func_0809CD78
    ldr r2, .L08010644 @ =0x00002E58
    adds r0, r6, r2
    bl func_0809CE8C
    movs r3, #0xd2
    lsls r3, r3, #6
    adds r0, r6, r3
    bl func_0809C144
    ldr r0, .L08010648 @ =0x00003494
    adds r2, r6, r0
    movs r3, #2
    movs r5, #0x10
    rsbs r5, r5, #0
    movs r4, #1
    rsbs r4, r4, #0
.L0801057C:
    ldrb r1, [r2]
    adds r0, r5, #0
    ands r0, r1
    strb r0, [r2]
    adds r2, #0x10
    subs r3, #1
    cmp r3, r4
    bne .L0801057C
    ldr r1, [sp, #0x48]
    ldr r2, .L0801064C @ =0x000034C4
    adds r0, r1, r2
    movs r1, #0
    strb r1, [r0]
    ldr r3, [sp, #0x48]
    ldr r6, .L08010650 @ =0x000034C5
    adds r0, r3, r6
    strb r1, [r0]
    ldr r1, .L08010654 @ =0x000034C8
    adds r0, r3, r1
    bl func_080A1A48
    ldr r2, [sp, #0x48]
    ldr r3, .L08010658 @ =0x000034D8
    adds r0, r2, r3
    bl func_0809C4E4
    ldr r6, [sp, #0x48]
    ldr r1, .L0801065C @ =0x000034DC
    adds r0, r6, r1
    bl func_0809BFE8
    ldr r2, .L08010608 @ =0x00001C70
    adds r0, r6, r2
    movs r1, #0x32
    bl AddAffection__6Animali
    movs r0, #0
    ldr r3, .L08010660 @ =0x000009DC
    adds r6, r6, r3
    mov r8, r6
    str r7, [sp, #0x4c]
.L080105CE:
    movs r6, #0
    str r6, [sp, #0x50]
    adds r0, #1
    str r0, [sp, #0x80]
.L080105D6:
    movs r7, #1
    cmp r7, #0
    beq .L08010664
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b .L08010676
    .align 2, 0
.L080105F0: .4byte 0xFFFC1FFF
.L080105F4: .4byte 0xFFFFFE03
.L080105F8: .4byte 0xFFFFFF00
.L080105FC: .4byte 0xFFFFF81F
.L08010600: .4byte 0x00001AA8
.L08010604: .4byte 0x00001BD8
.L08010608: .4byte 0x00001C70
.L0801060C: .4byte 0x00001CCC
.L08010610: .4byte 0xFFFFFC00
.L08010614: .4byte 0x00001CD4
.L08010618: .4byte 0x0000214C
.L0801061C: .4byte 0x000021CC
.L08010620: .4byte 0x000021E0
.L08010624: .4byte 0x00002C48
.L08010628: .4byte 0x00002C4A
.L0801062C: .4byte 0x00002210
.L08010630: .4byte 0x00002214
.L08010634: .4byte 0x00002C1C
.L08010638: .4byte 0xFFF80003
.L0801063C: .4byte 0x00002C4C
.L08010640: .4byte 0x00002C74
.L08010644: .4byte 0x00002E58
.L08010648: .4byte 0x00003494
.L0801064C: .4byte 0x000034C4
.L08010650: .4byte 0x000034C5
.L08010654: .4byte 0x000034C8
.L08010658: .4byte 0x000034D8
.L0801065C: .4byte 0x000034DC
.L08010660: .4byte 0x000009DC
.L08010664:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
.L08010676:
    bl __umodsi3
    adds r7, r0, #0
    movs r1, #0x2b
    adds r0, r7, #0
    muls r0, r1, r0
    mov sb, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, r8
    mov sl, r0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010730
    movs r2, #1
    cmp r2, #0
    beq .L080106D8
    adds r5, r6, #1
    mov r3, sb
    adds r0, r5, r3
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010730
    adds r0, r7, #1
    movs r1, #0x2b
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010730
    adds r0, r5, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010730
.L080106D8:
    mov r2, sl
    ldr r0, [r2]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010730
    movs r3, #1
    cmp r3, #0
    beq .L08010726
    adds r2, r6, #1
    mov r1, sb
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010730
    adds r0, r7, #1
    movs r3, #0x2b
    adds r1, r0, #0
    muls r1, r3, r1
    adds r0, r6, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010730
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010730
.L08010726:
    ldr r0, [sp, #0x4c]
    str r6, [r0]
    str r7, [r0, #4]
    movs r0, #1
    b .L0801073E
.L08010730:
    ldr r1, [sp, #0x50]
    adds r1, #1
    str r1, [sp, #0x50]
    cmp r1, #0x63
    bhi .L0801073C
    b .L080105D6
.L0801073C:
    movs r0, #0
.L0801073E:
    cmp r0, #0
    beq .L080107A2
    ldr r0, [sp, #0x18]
    ldr r2, [sp, #0x4c]
    ldr r1, [r2, #4]
    movs r3, #0x2b
    muls r1, r3, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x1f
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x18]
    adds r0, #1
    ldr r6, [sp, #0x4c]
    ldr r1, [r6, #4]
    movs r7, #0x2b
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x20
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x18]
    ldr r1, [r6, #4]
    adds r1, #1
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x21
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x18]
    adds r0, #1
    ldr r1, [r6, #4]
    adds r1, #1
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x22
    movs r2, #8
    bl method_0800A134__9FieldPlotii
.L080107A2:
    ldr r0, [sp, #0x80]
    cmp r0, #9
    bhi .L080107AA
    b .L080105CE
.L080107AA:
    movs r0, #0
    ldr r1, [sp, #0x48]
    ldr r2, .L080107DC @ =0x000009DC
    adds r1, r1, r2
    mov r8, r1
    ldr r3, [sp, #0x8c]
    str r3, [sp, #0x54]
.L080107B8:
    movs r6, #0
    str r6, [sp, #0x58]
    adds r0, #1
    str r0, [sp, #0x88]
.L080107C0:
    movs r7, #1
    cmp r7, #0
    beq .L080107E0
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b .L080107F2
    .align 2, 0
.L080107DC: .4byte 0x000009DC
.L080107E0:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
.L080107F2:
    bl __umodsi3
    adds r7, r0, #0
    movs r1, #0x2b
    adds r0, r7, #0
    muls r0, r1, r0
    mov sb, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, r8
    mov sl, r0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080108AC
    movs r2, #1
    cmp r2, #0
    beq .L08010854
    adds r5, r6, #1
    mov r3, sb
    adds r0, r5, r3
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080108AC
    adds r0, r7, #1
    movs r1, #0x2b
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080108AC
    adds r0, r5, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080108AC
.L08010854:
    mov r2, sl
    ldr r0, [r2]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L080108AC
    movs r3, #1
    cmp r3, #0
    beq .L080108A2
    adds r2, r6, #1
    mov r1, sb
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L080108AC
    adds r0, r7, #1
    movs r3, #0x2b
    adds r1, r0, #0
    muls r1, r3, r1
    adds r0, r6, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L080108AC
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L080108AC
.L080108A2:
    ldr r0, [sp, #0x54]
    str r6, [r0]
    str r7, [r0, #4]
    movs r0, #1
    b .L080108B8
.L080108AC:
    ldr r1, [sp, #0x58]
    adds r1, #1
    str r1, [sp, #0x58]
    cmp r1, #0x63
    bls .L080107C0
    movs r0, #0
.L080108B8:
    cmp r0, #0
    beq .L0801091C
    ldr r0, [sp, #0x20]
    ldr r2, [sp, #0x54]
    ldr r1, [r2, #4]
    movs r3, #0x2b
    muls r1, r3, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x23
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x20]
    adds r0, #1
    ldr r6, [sp, #0x54]
    ldr r1, [r6, #4]
    movs r7, #0x2b
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x24
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x20]
    ldr r1, [r6, #4]
    adds r1, #1
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x25
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x20]
    adds r0, #1
    ldr r1, [r6, #4]
    adds r1, #1
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x26
    movs r2, #8
    bl method_0800A134__9FieldPlotii
.L0801091C:
    ldr r0, [sp, #0x88]
    cmp r0, #4
    bhi .L08010924
    b .L080107B8
.L08010924:
    movs r0, #0
    ldr r1, [sp, #0x48]
    ldr r2, .L08010954 @ =0x000009DC
    adds r1, r1, r2
    mov r8, r1
    ldr r3, [sp, #0x90]
    str r3, [sp, #0x5c]
.L08010932:
    movs r6, #0
    str r6, [sp, #0x60]
    adds r0, #1
    str r0, [sp, #0xa4]
.L0801093A:
    movs r7, #1
    cmp r7, #0
    beq .L08010958
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b .L0801096A
    .align 2, 0
.L08010954: .4byte 0x000009DC
.L08010958:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
.L0801096A:
    bl __umodsi3
    adds r7, r0, #0
    movs r1, #0x2b
    adds r0, r7, #0
    muls r0, r1, r0
    mov sb, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, r8
    mov sl, r0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010A24
    movs r2, #1
    cmp r2, #0
    beq .L080109CC
    adds r5, r6, #1
    mov r3, sb
    adds r0, r5, r3
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010A24
    adds r0, r7, #1
    movs r1, #0x2b
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010A24
    adds r0, r5, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010A24
.L080109CC:
    mov r2, sl
    ldr r0, [r2]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010A24
    movs r3, #1
    cmp r3, #0
    beq .L08010A1A
    adds r2, r6, #1
    mov r1, sb
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010A24
    adds r0, r7, #1
    movs r3, #0x2b
    adds r1, r0, #0
    muls r1, r3, r1
    adds r0, r6, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010A24
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010A24
.L08010A1A:
    ldr r0, [sp, #0x5c]
    str r6, [r0]
    str r7, [r0, #4]
    movs r0, #1
    b .L08010A30
.L08010A24:
    ldr r1, [sp, #0x60]
    adds r1, #1
    str r1, [sp, #0x60]
    cmp r1, #0x63
    bls .L0801093A
    movs r0, #0
.L08010A30:
    cmp r0, #0
    beq .L08010A94
    ldr r0, [sp, #0x28]
    ldr r2, [sp, #0x5c]
    ldr r1, [r2, #4]
    movs r3, #0x2b
    muls r1, r3, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x1b
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x28]
    adds r0, #1
    ldr r6, [sp, #0x5c]
    ldr r1, [r6, #4]
    movs r7, #0x2b
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x1c
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x28]
    ldr r1, [r6, #4]
    adds r1, #1
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x1d
    movs r2, #8
    bl method_0800A134__9FieldPlotii
    ldr r0, [sp, #0x28]
    adds r0, #1
    ldr r1, [r6, #4]
    adds r1, #1
    muls r1, r7, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x1e
    movs r2, #8
    bl method_0800A134__9FieldPlotii
.L08010A94:
    ldr r0, [sp, #0xa4]
    cmp r0, #9
    bhi .L08010A9C
    b .L08010932
.L08010A9C:
    movs r1, #0
    ldr r0, [sp, #0x48]
    ldr r2, .L08010ACC @ =0x000009DC
    adds r0, r0, r2
    mov r8, r0
    ldr r3, [sp, #0x94]
    str r3, [sp, #0x64]
.L08010AAA:
    movs r6, #0
    str r6, [sp, #0x68]
    adds r1, #1
    str r1, [sp, #0x7c]
.L08010AB2:
    movs r7, #0
    cmp r7, #0
    beq .L08010AD0
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b .L08010AE2
    .align 2, 0
.L08010ACC: .4byte 0x000009DC
.L08010AD0:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
.L08010AE2:
    bl __umodsi3
    adds r7, r0, #0
    movs r1, #0x2b
    adds r0, r7, #0
    muls r0, r1, r0
    mov sb, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, r8
    mov sl, r0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010B9C
    movs r2, #0
    cmp r2, #0
    beq .L08010B44
    adds r5, r6, #1
    mov r3, sb
    adds r0, r5, r3
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010B9C
    adds r0, r7, #1
    movs r1, #0x2b
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010B9C
    adds r0, r5, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010B9C
.L08010B44:
    mov r2, sl
    ldr r0, [r2]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010B9C
    movs r3, #0
    cmp r3, #0
    beq .L08010B92
    adds r2, r6, #1
    mov r1, sb
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010B9C
    adds r0, r7, #1
    movs r3, #0x2b
    adds r1, r0, #0
    muls r1, r3, r1
    adds r0, r6, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010B9C
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010B9C
.L08010B92:
    ldr r0, [sp, #0x64]
    str r6, [r0]
    str r7, [r0, #4]
    movs r0, #1
    b .L08010BA8
.L08010B9C:
    ldr r1, [sp, #0x68]
    adds r1, #1
    str r1, [sp, #0x68]
    cmp r1, #0x63
    bls .L08010AB2
    movs r0, #0
.L08010BA8:
    cmp r0, #0
    beq .L08010BC4
    ldr r0, [sp, #0x30]
    ldr r3, [sp, #0x94]
    ldr r2, [r3, #4]
    movs r1, #0x2b
    muls r1, r2, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x15
    movs r2, #8
    bl method_0800A134__9FieldPlotii
.L08010BC4:
    ldr r1, [sp, #0x7c]
    ldr r0, .L08010C00 @ =0x0000012B
    cmp r1, r0
    bhi .L08010BCE
    b .L08010AAA
.L08010BCE:
    movs r0, #0
    ldr r6, [sp, #0x48]
    ldr r7, .L08010C04 @ =0x000009DC
    adds r6, r6, r7
    mov r8, r6
    ldr r1, [sp, #0x98]
    str r1, [sp, #0x6c]
.L08010BDC:
    movs r2, #0
    str r2, [sp, #0x70]
    adds r0, #1
    str r0, [sp, #0x84]
.L08010BE4:
    movs r3, #0
    cmp r3, #0
    beq .L08010C08
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b .L08010C1A
    .align 2, 0
.L08010C00: .4byte 0x0000012B
.L08010C04: .4byte 0x000009DC
.L08010C08:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
.L08010C1A:
    bl __umodsi3
    adds r7, r0, #0
    movs r1, #0x2b
    adds r0, r7, #0
    muls r0, r1, r0
    mov sb, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, r8
    mov sl, r0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010CD4
    movs r2, #0
    cmp r2, #0
    beq .L08010C7C
    adds r5, r6, #1
    mov r3, sb
    adds r0, r5, r3
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010CD4
    adds r0, r7, #1
    movs r1, #0x2b
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010CD4
    adds r0, r5, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010CD4
.L08010C7C:
    mov r2, sl
    ldr r0, [r2]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010CD4
    movs r3, #0
    cmp r3, #0
    beq .L08010CCA
    adds r2, r6, #1
    mov r1, sb
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010CD4
    adds r0, r7, #1
    movs r3, #0x2b
    adds r1, r0, #0
    muls r1, r3, r1
    adds r0, r6, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010CD4
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010CD4
.L08010CCA:
    ldr r0, [sp, #0x6c]
    str r6, [r0]
    str r7, [r0, #4]
    movs r0, #1
    b .L08010CE0
.L08010CD4:
    ldr r1, [sp, #0x70]
    adds r1, #1
    str r1, [sp, #0x70]
    cmp r1, #0x63
    bls .L08010BE4
    movs r0, #0
.L08010CE0:
    cmp r0, #0
    beq .L08010CFC
    ldr r0, [sp, #0x38]
    ldr r3, [sp, #0x98]
    ldr r2, [r3, #4]
    movs r1, #0x2b
    muls r1, r2, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x16
    movs r2, #8
    bl method_0800A134__9FieldPlotii
.L08010CFC:
    ldr r0, [sp, #0x84]
    cmp r0, #0x31
    bhi .L08010D04
    b .L08010BDC
.L08010D04:
    movs r0, #0
    ldr r6, [sp, #0x48]
    ldr r7, .L08010D34 @ =0x000009DC
    adds r6, r6, r7
    mov r8, r6
    ldr r1, [sp, #0x9c]
    str r1, [sp, #0x74]
.L08010D12:
    movs r2, #0
    str r2, [sp, #0x78]
    adds r0, #1
    str r0, [sp, #0xa0]
.L08010D1A:
    movs r3, #0
    cmp r3, #0
    beq .L08010D38
    bl rand
    movs r1, #0x2a
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x18
    b .L08010D4A
    .align 2, 0
.L08010D34: .4byte 0x000009DC
.L08010D38:
    bl rand
    movs r1, #0x2b
    bl __umodsi3
    adds r6, r0, #0
    bl rand
    movs r1, #0x19
.L08010D4A:
    bl __umodsi3
    adds r7, r0, #0
    movs r1, #0x2b
    adds r0, r7, #0
    muls r0, r1, r0
    mov sb, r0
    adds r0, r6, r0
    lsls r0, r0, #2
    add r0, r8
    mov sl, r0
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010E04
    movs r2, #0
    cmp r2, #0
    beq .L08010DAC
    adds r5, r6, #1
    mov r3, sb
    adds r0, r5, r3
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010E04
    adds r0, r7, #1
    movs r1, #0x2b
    adds r4, r0, #0
    muls r4, r1, r4
    adds r0, r6, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010E04
    adds r0, r5, r4
    lsls r0, r0, #2
    add r0, r8
    bl method_0800A78C__C9FieldPlot
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08010E04
.L08010DAC:
    mov r2, sl
    ldr r0, [r2]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010E04
    movs r3, #0
    cmp r3, #0
    beq .L08010DFA
    adds r2, r6, #1
    mov r1, sb
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010E04
    adds r0, r7, #1
    movs r3, #0x2b
    adds r1, r0, #0
    muls r1, r3, r1
    adds r0, r6, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010E04
    adds r0, r2, r1
    lsls r0, r0, #2
    add r0, r8
    ldr r0, [r0]
    lsls r0, r0, #0x14
    lsrs r0, r0, #0x1c
    cmp r0, #0
    bne .L08010E04
.L08010DFA:
    ldr r0, [sp, #0x74]
    str r6, [r0]
    str r7, [r0, #4]
    movs r0, #1
    b .L08010E10
.L08010E04:
    ldr r1, [sp, #0x78]
    adds r1, #1
    str r1, [sp, #0x78]
    cmp r1, #0x63
    bls .L08010D1A
    movs r0, #0
.L08010E10:
    cmp r0, #0
    beq .L08010E2C
    ldr r0, [sp, #0x40]
    ldr r3, [sp, #0x9c]
    ldr r2, [r3, #4]
    movs r1, #0x2b
    muls r1, r2, r1
    adds r0, r0, r1
    lsls r0, r0, #2
    add r0, r8
    movs r1, #0x17
    movs r2, #8
    bl method_0800A134__9FieldPlotii
.L08010E2C:
    ldr r0, [sp, #0xa0]
    cmp r0, #0x31
    bhi .L08010E34
    b .L08010D12
.L08010E34:
    ldr r0, [sp, #0x48]
    add sp, #0xa8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08010E48
func_08010E48: @ 0x08010E48
    ldrb r0, [r0]
    lsls r0, r0, #0x1f
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08010E50
func_08010E50: @ 0x08010E50
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08010E58
func_08010E58: @ 0x08010E58
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08010E60
func_08010E60: @ 0x08010E60
    ldrb r0, [r0]
    lsls r0, r0, #0x1c
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08010E68
func_08010E68: @ 0x08010E68
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    movs r7, #1
    ldr r1, .L08010E9C @ =0x00001C70
    adds r0, r6, r1
    bl GetAffection__C6Animal
    cmp r0, #0xc7
    bhi .L08010E7C
    movs r7, #0
.L08010E7C:
    adds r0, r6, #0
    adds r0, #0x14
    bl GetHorse__C4Farm
    cmp r0, #0
    beq .L08010E92
    bl GetAffection__C6Animal
    cmp r0, #0xc7
    bhi .L08010E92
    movs r7, #0
.L08010E92:
    movs r4, #0
    movs r0, #0x82
    lsls r0, r0, #3
    adds r5, r6, r0
    b .L08010EB8
    .align 2, 0
.L08010E9C: .4byte 0x00001C70
.L08010EA0:
    adds r0, r5, #0
    adds r1, r4, #0
    bl GetChicken__C4CoopUi
    cmp r0, #0
    beq .L08010EB6
    bl GetAffection__C6Animal
    cmp r0, #0xc7
    bhi .L08010EB6
    movs r7, #0
.L08010EB6:
    adds r4, #1
.L08010EB8:
    adds r0, r5, #0
    bl GetCapacity__C4Coop
    cmp r4, r0
    blo .L08010EA0
    movs r4, #0
    movs r1, #0xbe
    lsls r1, r1, #3
    adds r5, r6, r1
    b .L08010EF0
.L08010ECC:
    adds r0, r5, #0
    adds r1, r4, #0
    bl GetCow__C4BarnUi
    cmp r0, #0
    bne .L08010EE4
    adds r0, r5, #0
    adds r1, r4, #0
    bl GetSheep__C4BarnUi
    cmp r0, #0
    beq .L08010EEE
.L08010EE4:
    bl GetAffection__C6Animal
    cmp r0, #0xc7
    bhi .L08010EEE
    movs r7, #0
.L08010EEE:
    adds r4, #1
.L08010EF0:
    adds r0, r5, #0
    bl GetCapacity__C4Barn
    cmp r4, r0
    blo .L08010ECC
    adds r0, r7, #0
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

