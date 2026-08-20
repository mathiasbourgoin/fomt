	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

.L08005A4C:
    .byte 0x01, 0x49, 0x40, 0x18
    .byte 0x00, 0x78, 0x70, 0x47, 0x76, 0x1A, 0x00, 0x00

    thumb_func_start func_08005A58
func_08005A58: @ 0x08005A58
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x14
    adds r5, r0, #0
    mov r8, r1
    adds r7, r2, #0
    bl func_08008444
    ldr r0, .L08005B1C @ =vtable_unk_080E5AB4
    str r0, [r5, #4]
    movs r0, #7
    add r6, sp, #0x10
    movs r1, #1
    rsbs r1, r1, #0
.L08005A76:
    subs r0, #1
    cmp r0, r1
    bne .L08005A76
    ldr r1, .L08005B20 @ =0x000045F0
    adds r0, r5, r1
    movs r1, #1
    bl func_08008B54
    ldr r2, .L08005B24 @ =0x000045F4
    adds r0, r5, r2
    movs r1, #2
    bl func_08008B54
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    add r0, sp, #0xc
    bl func_0800835C
    adds r0, r6, #0
    bl func_0800770C
    movs r0, #0
    str r0, [sp]
    add r3, sp, #0xc
    str r3, [sp, #4]
    str r6, [sp, #8]
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0xf
    movs r3, #4
    bl func_08050CC0
    ldr r4, .L08005B28 @ =0x000045F8
    adds r1, r5, r4
    str r0, [r1]
    adds r0, r6, #0
    movs r1, #2
    bl func_08007714
    add r0, sp, #0xc
    movs r1, #2
    bl func_08008364
    ldr r6, .L08005B2C @ =0x000045FC
    adds r0, r5, r6
    mov r1, r8
    str r1, [r0]
    ldr r3, .L08005B30 @ =0x0000461C
    adds r2, r5, r3
    adds r1, r2, #0
    ldr r0, .L08005B34 @ =gUnk_080E8BE4
    ldm r0!, {r3, r4, r6}
    stm r1!, {r3, r4, r6}
    ldrb r0, [r0]
    strb r0, [r1]
    cmp r7, #0
    beq .L08005B0C
    movs r3, #0
    ldrb r0, [r7]
    cmp r0, #0
    beq .L08005B0C
    adds r4, r2, #0
    adds r2, r7, #0
.L08005AF8:
    adds r1, r4, r3
    ldrb r0, [r2]
    strb r0, [r1]
    adds r2, #1
    adds r3, #1
    cmp r3, #0xc
    bgt .L08005B0C
    ldrb r0, [r2]
    cmp r0, #0
    bne .L08005AF8
.L08005B0C:
    adds r0, r5, #0
    add sp, #0x14
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08005B1C: .4byte vtable_unk_080E5AB4
.L08005B20: .4byte 0x000045F0
.L08005B24: .4byte 0x000045F4
.L08005B28: .4byte 0x000045F8
.L08005B2C: .4byte 0x000045FC
.L08005B30: .4byte 0x0000461C
.L08005B34: .4byte gUnk_080E8BE4

    thumb_func_start func_08005B38
func_08005B38: @ 0x08005B38
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L08005B60 @ =vtable_unk_080E5AB4
    str r0, [r4, #4]
    ldr r1, .L08005B64 @ =0x000045F8
    adds r0, r4, r1
    ldr r0, [r0]
    cmp r0, #0
    beq .L08005B52
    movs r1, #3
    bl func_08050D0C
.L08005B52:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080086BC
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08005B60: .4byte vtable_unk_080E5AB4
.L08005B64: .4byte 0x000045F8

    thumb_func_start func_08005B68
func_08005B68: @ 0x08005B68
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #0x28
    adds r7, r0, #0
    adds r6, r1, #0
    adds r0, r6, #0
    bl func_08008724
    mov r0, sp
    bl func_08007874
    movs r5, #0
    str r5, [sp, #4]
    mov r0, sp
    movs r1, #0
    bl func_08007C28
    mov r0, sp
    movs r1, #3
    bl func_08007B54
    adds r1, r0, #0
    str r1, [sp, #4]
    mov r0, sp
    bl func_08007D4C
    adds r4, r0, #0
    adds r0, r6, #0
    bl func_08005CDC
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_080061A0
    adds r0, r6, #0
    bl func_08006334
    adds r0, r6, #0
    bl func_0800637C
    adds r0, r6, #0
    bl func_08008918
    add r1, sp, #8
    movs r2, #0x3f
    strh r2, [r1]
    adds r0, #0x50
    strh r2, [r0]
    adds r0, r6, #0
    bl func_08008918
    adds r1, r0, #0
    add r4, sp, #0xc
    str r5, [sp, #0xc]
    str r5, [r4, #4]
    ldr r0, .L08005C20 @ =vtable_unk_080E5B80
    str r0, [sp, #0x14]
    add r0, sp, #0x18
    bl func_08009300
    ldr r1, .L08005C24 @ =0x00000889
    add r0, sp, #0x18
    movs r2, #1
    movs r3, #1
    bl func_0800934C
    adds r0, r6, #0
    bl func_08008940
    ldr r1, [r0, #8]
    ldr r2, [r1, #0x10]
    adds r1, r4, #0
    bl _call_via_r2
    ldr r0, [sp, #0xc]
    rsbs r1, r0, #0
    orrs r1, r0
    mov r8, r4
    add r5, sp, #0x1c
    add r4, sp, #0x20
    cmp r1, #0
    bge .L08005C58
.L08005C0E:
    adds r0, r6, #0
    bl func_080087C8
    ldr r0, [sp, #0xc]
    rsbs r1, r0, #0
    orrs r1, r0
    cmp r1, #0
    blt .L08005C0E
    b .L08005C58
    .align 2, 0
.L08005C20: .4byte vtable_unk_080E5B80
.L08005C24: .4byte 0x00000889
.L08005C28:
    adds r0, r6, #0
    bl func_080088B8
    adds r0, r6, #0
    bl func_08006CDC
    adds r0, r6, #0
    bl func_080068CC
    adds r0, r6, #0
    bl func_0800637C
    adds r0, r6, #0
    bl func_080064E8
    adds r0, r6, #0
    bl func_08006858
    adds r0, r6, #0
    bl func_08006ED8
    adds r0, r6, #0
    bl func_080087C8
.L08005C58:
    ldr r1, .L08005C80 @ =0x00004636
    adds r0, r6, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08005C28
    ldr r1, .L08005C84 @ =0x00000889
    add r0, sp, #0x18
    movs r2, #1
    movs r3, #1
    bl func_08009378
    adds r0, r6, #0
    bl func_08008940
    ldr r1, [r0, #8]
    ldr r2, [r1, #0x10]
    mov r1, r8
    bl _call_via_r2
    b .L08005C8E
    .align 2, 0
.L08005C80: .4byte 0x00004636
.L08005C84: .4byte 0x00000889
.L08005C88:
    adds r0, r6, #0
    bl func_080087C8
.L08005C8E:
    ldr r1, [sp, #0xc]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    blt .L08005C88
    movs r0, #0
    str r0, [sp, #0x1c]
    str r5, [sp, #0x20]
    str r0, [r4, #4]
    str r0, [r5]
    str r0, [r7]
    ldr r1, [sp, #0x1c]
    cmp r1, #0
    beq .L08005CB6
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08005CB6:
    mov r0, r8
    movs r1, #2
    bl func_080094B8
    ldr r1, [sp, #4]
    mov r0, sp
    bl func_08007C28
    mov r0, sp
    movs r1, #2
    bl func_080079E8
    adds r0, r7, #0
    add sp, #0x28
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08005CDC
func_08005CDC: @ 0x08005CDC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x54
    mov sl, r0
    ldr r0, .L08005EC8 @ =gUnk_080F9F70
    ldr r0, [r0]
    ldr r1, .L08005ECC @ =0x06004B00
    ldr r2, .L08005ED0 @ =gUnk_080F9F74
    ldr r2, [r2]
    bl func_08008E64
    ldr r0, .L08005ED4 @ =gUnk_080F9F78
    ldr r0, [r0]
    movs r1, #0xa0
    lsls r1, r1, #0x13
    movs r2, #0x20
    bl func_08008E64
    mov r0, sl
    bl func_08008918
    add r1, sp, #0xc
    movs r3, #0xba
    lsls r3, r3, #5
    adds r2, r3, #0
    strh r2, [r1]
    movs r4, #0
    strh r2, [r0]
    mov r0, sl
    bl func_08008918
    add r2, sp, #0xc
    ldr r5, .L08005ED8 @ =0x00001841
    adds r1, r5, #0
    strh r1, [r2]
    strh r1, [r0, #0xa]
    mov r0, sl
    bl func_08008918
    add r2, sp, #0xc
    ldr r7, .L08005EDC @ =0x00001F02
    adds r1, r7, #0
    strh r1, [r2]
    strh r1, [r0, #0xc]
    ldr r0, .L08005EE0 @ =0x0600F800
    movs r1, #0x14
    str r1, [sp]
    movs r1, #0x96
    lsls r1, r1, #2
    str r1, [sp, #4]
    str r4, [sp, #8]
    movs r1, #0
    movs r2, #0
    movs r3, #0x1e
    bl func_08051320
    movs r0, #1
    rsbs r0, r0, #0
    ldr r4, .L08005EE4 @ =0x0600C000
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r4, #0
    bl func_08008EB8
    movs r1, #0
    add r0, sp, #0x20
    mov r8, r0
    add r2, sp, #0x24
    mov sb, r2
    mov r3, sp
    adds r3, #0x10
    str r3, [sp, #0x44]
    mov r5, sp
    adds r5, #0x30
    str r5, [sp, #0x48]
    mov r7, sl
    adds r7, #0xc
    ldr r0, .L08005EE8 @ =0x000043B0
    add r0, sl
    str r0, [sp, #0x40]
    movs r2, #0xd1
    lsls r2, r2, #1
    adds r6, r2, #0
.L08005D88:
    movs r3, #0
    lsls r2, r1, #6
    adds r5, r1, #1
    adds r0, r2, r4
.L08005D90:
    strh r6, [r0]
    adds r0, #2
    adds r3, #1
    cmp r3, #0x1d
    bls .L08005D90
    adds r1, r5, #0
    cmp r1, #0x13
    bls .L08005D88
    movs r3, #0xa
    ldr r2, .L08005EEC @ =0x0600C094
    ldr r1, .L08005EF0 @ =0x0600C054
.L08005DA6:
    strh r3, [r1]
    adds r0, r3, #0
    adds r0, #0x1e
    strh r0, [r2]
    adds r2, #2
    adds r1, #2
    adds r3, #1
    cmp r3, #0xf
    bls .L08005DA6
    movs r3, #3
    movs r4, #0xd2
    lsls r4, r4, #1
    adds r5, r4, #0
    movs r0, #0xe1
    lsls r0, r0, #1
    adds r4, r0, #0
    ldr r2, .L08005EF4 @ =0x0600C486
    ldr r1, .L08005EF8 @ =0x0600C446
.L08005DCA:
    adds r0, r3, r5
    strh r0, [r1]
    adds r0, r3, r4
    strh r0, [r2]
    adds r2, #2
    adds r1, #2
    adds r3, #1
    cmp r3, #0x1a
    bls .L08005DCA
    movs r1, #4
    ldr r4, .L08005EE4 @ =0x0600C000
.L08005DE0:
    movs r3, #0
    lsls r2, r1, #6
    adds r5, r1, #1
    subs r1, #2
    lsls r0, r1, #4
    subs r0, r0, r1
    lsls r1, r0, #1
    adds r2, r2, r4
.L08005DF0:
    adds r0, r1, r3
    strh r0, [r2]
    adds r2, #2
    adds r3, #1
    cmp r3, #0x1d
    bls .L08005DF0
    adds r1, r5, #0
    cmp r1, #0xf
    bls .L08005DE0
    movs r3, #0x12
    movs r1, #0xf0
    lsls r1, r1, #1
    adds r5, r1, #0
    movs r2, #0xff
    lsls r2, r2, #1
    adds r4, r2, #0
    ldr r2, .L08005EFC @ =0x0600C0A4
    ldr r1, .L08005F00 @ =0x0600C064
.L08005E14:
    adds r0, r3, r5
    strh r0, [r1]
    adds r0, r3, r4
    strh r0, [r2]
    adds r2, #2
    adds r1, #2
    adds r3, #1
    cmp r3, #0x1d
    bls .L08005E14
    ldr r0, .L08005F04 @ =0x000045FC
    add r0, sl
    ldr r0, [r0]
    cmp r0, #0
    beq .L08005E52
    movs r3, #1
    ldr r4, .L08005F08 @ =0x0000021B
    adds r5, r4, #0
    movs r0, #0x89
    lsls r0, r0, #2
    adds r4, r0, #0
    ldr r2, .L08005F0C @ =0x0600C082
    ldr r1, .L08005F10 @ =0x0600C042
.L08005E40:
    adds r0, r3, r5
    strh r0, [r1]
    adds r0, r3, r4
    strh r0, [r2]
    adds r2, #2
    adds r1, #2
    adds r3, #1
    cmp r3, #9
    bls .L08005E40
.L08005E52:
    ldr r1, .L08005F14 @ =0x06FFC000
    movs r0, #0
    movs r2, #0x20
    bl func_08008EB8
    movs r4, #0x1e
    movs r5, #2
    add r0, sp, #0x20
    strh r4, [r0]
    mov r1, r8
    strh r5, [r1, #2]
    ldr r0, [sp, #0x20]
    adds r1, r7, #0
    movs r2, #0
    bl func_0804E7A0
    ldr r1, .L08005F18 @ =gUnk_080E8BF4
    add r0, sp, #0x24
    strh r4, [r0]
    mov r2, sb
    strh r5, [r2, #2]
    ldr r0, [sp, #0x24]
    str r1, [sp]
    adds r1, r7, #0
    movs r2, #0x58
    movs r3, #0
    bl func_0804E8F0
    mov r0, sl
    bl func_08008910
    movs r3, #0xf0
    lsls r3, r3, #3
    adds r6, r0, #0
    add r0, sp, #0x10
    adds r1, r7, #0
    movs r2, #0xc0
    lsls r2, r2, #0x13
    bl func_08008F0C
    ldr r3, [sp, #0x44]
    mov r8, r3
    ldr r1, [r6, #4]
    ldr r0, [r6, #0xc]
    cmp r1, r0
    beq .L08005F1C
    cmp r1, #0
    beq .L08005EBE
    adds r0, r1, #0
    mov r1, r8
    ldm r1!, {r4, r5, r7}
    stm r0!, {r4, r5, r7}
    ldr r1, [r1]
    str r1, [r0]
.L08005EBE:
    ldr r0, [r6, #4]
    adds r0, #0x10
    str r0, [r6, #4]
    b .L08005FE0
    .align 2, 0
.L08005EC8: .4byte gUnk_080F9F70
.L08005ECC: .4byte 0x06004B00
.L08005ED0: .4byte gUnk_080F9F74
.L08005ED4: .4byte gUnk_080F9F78
.L08005ED8: .4byte 0x00001841
.L08005EDC: .4byte 0x00001F02
.L08005EE0: .4byte 0x0600F800
.L08005EE4: .4byte 0x0600C000
.L08005EE8: .4byte 0x000043B0
.L08005EEC: .4byte 0x0600C094
.L08005EF0: .4byte 0x0600C054
.L08005EF4: .4byte 0x0600C486
.L08005EF8: .4byte 0x0600C446
.L08005EFC: .4byte 0x0600C0A4
.L08005F00: .4byte 0x0600C064
.L08005F04: .4byte 0x000045FC
.L08005F08: .4byte 0x0000021B
.L08005F0C: .4byte 0x0600C082
.L08005F10: .4byte 0x0600C042
.L08005F14: .4byte 0x06FFC000
.L08005F18: .4byte gUnk_080E8BF4
.L08005F1C:
    str r1, [sp, #0x4c]
    movs r0, #1
    str r0, [sp, #0x2c]
    ldr r0, [r6]
    subs r0, r1, r0
    asrs r4, r0, #4
    str r4, [sp, #0x28]
    add r1, sp, #0x2c
    add r0, sp, #0x28
    cmp r4, #1
    bhs .L08005F34
    adds r0, r1, #0
.L08005F34:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq .L08005F52
    lsls r4, r0, #4
    adds r0, r4, #0
    bl malloc
    mov sb, r4
    cmp r0, #0
    bne .L08005F56
    mov r0, sb
    bl func_080D3BC0
    b .L08005F56
.L08005F52:
    movs r0, #0
    mov sb, r0
.L08005F56:
    adds r5, r0, #0
    str r5, [sp, #0x50]
    ldr r2, [r6]
    adds r3, r5, #0
    ldr r4, [sp, #0x4c]
    cmp r2, r4
    beq .L08005F7E
.L08005F64:
    cmp r3, #0
    beq .L08005F74
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r5, r7}
    stm r0!, {r4, r5, r7}
    ldr r1, [r1]
    str r1, [r0]
.L08005F74:
    adds r2, #0x10
    adds r3, #0x10
    ldr r5, [sp, #0x4c]
    cmp r2, r5
    bne .L08005F64
.L08005F7E:
    adds r5, r3, #0
    ldr r0, [sp, #0x2c]
    cmp r0, #1
    bne .L08005F9A
    cmp r5, #0
    beq .L08005F96
    adds r0, r5, #0
    mov r1, r8
    ldm r1!, {r2, r3, r7}
    stm r0!, {r2, r3, r7}
    ldr r1, [r1]
    str r1, [r0]
.L08005F96:
    adds r5, #0x10
    b .L08005FBC
.L08005F9A:
    adds r3, r0, #0
    adds r2, r5, #0
    cmp r3, #0
    beq .L08005FBA
.L08005FA2:
    cmp r2, #0
    beq .L08005FB2
    adds r0, r2, #0
    mov r1, r8
    ldm r1!, {r4, r5, r7}
    stm r0!, {r4, r5, r7}
    ldr r1, [r1]
    str r1, [r0]
.L08005FB2:
    subs r3, #1
    adds r2, #0x10
    cmp r3, #0
    bne .L08005FA2
.L08005FBA:
    adds r5, r2, #0
.L08005FBC:
    ldr r2, [r6, #4]
    ldr r0, [r6]
    adds r1, r0, #0
    cmp r0, r2
    beq .L08005FCC
.L08005FC6:
    adds r1, #0x10
    cmp r1, r2
    bne .L08005FC6
.L08005FCC:
    cmp r0, #0
    beq .L08005FD4
    bl free
.L08005FD4:
    ldr r0, [sp, #0x50]
    add r0, sb
    ldr r1, [sp, #0x50]
    str r1, [r6]
    str r5, [r6, #4]
    str r0, [r6, #0xc]
.L08005FE0:
    movs r1, #0x8c
    lsls r1, r1, #7
    add r1, sl
    movs r0, #0
    str r0, [r1]
    ldr r0, .L08006074 @ =0x00004637
    add r0, sl
    movs r2, #1
    mov r8, r2
    mov r3, r8
    strb r3, [r0]
    mov r0, sl
    bl func_080064E8
    movs r5, #9
    movs r6, #2
    add r0, sp, #0x30
    strh r5, [r0]
    ldr r4, [sp, #0x48]
    strh r6, [r4, #2]
    ldr r0, [sp, #0x30]
    ldr r4, [sp, #0x40]
    adds r1, r4, #0
    movs r2, #0
    bl func_0804E7A0
    ldr r0, .L08006078 @ =0x000045FC
    add r0, sl
    ldr r1, [r0]
    cmp r1, #0
    beq .L08006032
    add r0, sp, #0x34
    strh r5, [r0]
    strh r6, [r0, #2]
    ldr r0, [sp, #0x34]
    str r1, [sp]
    adds r1, r4, #0
    movs r2, #0
    movs r3, #0
    bl func_0804E8F0
.L08006032:
    mov r0, sl
    bl func_08008910
    movs r3, #0x90
    lsls r3, r3, #2
    adds r6, r0, #0
    movs r2, #0xf0
    lsls r2, r2, #3
    lsls r2, r2, #3
    ldr r5, .L0800607C @ =0x06000780
    adds r2, r2, r5
    add r0, sp, #0xc
    ldr r1, [sp, #0x40]
    bl func_08008F0C
    add r7, sp, #0xc
    mov sb, r7
    ldr r1, [r6, #4]
    ldr r0, [r6, #0xc]
    cmp r1, r0
    beq .L08006080
    cmp r1, #0
    beq .L0800606C
    adds r0, r1, #0
    add r1, sp, #0xc
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
.L0800606C:
    ldr r0, [r6, #4]
    adds r0, #0x10
    str r0, [r6, #4]
    b .L08006142
    .align 2, 0
.L08006074: .4byte 0x00004637
.L08006078: .4byte 0x000045FC
.L0800607C: .4byte 0x06000780
.L08006080:
    str r1, [sp, #0x4c]
    mov r5, r8
    str r5, [sp, #0x3c]
    ldr r0, [r6]
    adds r7, r1, #0
    subs r0, r7, r0
    asrs r4, r0, #4
    str r4, [sp, #0x38]
    add r1, sp, #0x3c
    add r0, sp, #0x38
    cmp r4, #1
    bhs .L0800609A
    adds r0, r1, #0
.L0800609A:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq .L080060B8
    lsls r4, r0, #4
    adds r0, r4, #0
    bl malloc
    mov r8, r4
    cmp r0, #0
    bne .L080060BC
    mov r0, r8
    bl func_080D3BC0
    b .L080060BC
.L080060B8:
    movs r0, #0
    mov r8, r0
.L080060BC:
    adds r5, r0, #0
    str r5, [sp, #0x50]
    ldr r2, [r6]
    adds r3, r5, #0
    b .L080060DA
.L080060C6:
    cmp r3, #0
    beq .L080060D6
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r5, r7}
    stm r0!, {r4, r5, r7}
    ldr r1, [r1]
    str r1, [r0]
.L080060D6:
    adds r2, #0x10
    adds r3, #0x10
.L080060DA:
    ldr r0, [sp, #0x4c]
    cmp r2, r0
    bne .L080060C6
    adds r5, r3, #0
    ldr r0, [sp, #0x3c]
    cmp r0, #1
    bne .L080060FC
    cmp r5, #0
    beq .L080060F8
    adds r0, r5, #0
    mov r1, sb
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
.L080060F8:
    adds r5, #0x10
    b .L0800611E
.L080060FC:
    adds r3, r0, #0
    adds r2, r5, #0
    cmp r3, #0
    beq .L0800611C
.L08006104:
    cmp r2, #0
    beq .L08006114
    adds r0, r2, #0
    mov r1, sb
    ldm r1!, {r4, r5, r7}
    stm r0!, {r4, r5, r7}
    ldr r1, [r1]
    str r1, [r0]
.L08006114:
    subs r3, #1
    adds r2, #0x10
    cmp r3, #0
    bne .L08006104
.L0800611C:
    adds r5, r2, #0
.L0800611E:
    ldr r2, [r6, #4]
    ldr r0, [r6]
    adds r1, r0, #0
    cmp r0, r2
    beq .L0800612E
.L08006128:
    adds r1, #0x10
    cmp r1, r2
    bne .L08006128
.L0800612E:
    cmp r0, #0
    beq .L08006136
    bl free
.L08006136:
    ldr r0, [sp, #0x50]
    add r0, r8
    ldr r7, [sp, #0x50]
    str r7, [r6]
    str r5, [r6, #4]
    str r0, [r6, #0xc]
.L08006142:
    ldr r0, .L08006198 @ =0x000045F8
    add r0, sl
    ldr r0, [r0]
    mov sb, r0
    mov r0, sl
    bl func_080088DC
    mov r8, r0
    mov r0, sl
    bl func_08008920
    adds r6, r0, #0
    mov r0, sl
    bl func_08008918
    adds r5, r0, #0
    mov r0, sl
    bl func_08008940
    adds r4, r0, #0
    mov r0, sl
    bl func_0800894C
    ldr r1, .L0800619C @ =0x000045F0
    add r1, sl
    str r4, [sp]
    str r0, [sp, #4]
    str r1, [sp, #8]
    mov r0, sb
    mov r1, r8
    adds r2, r6, #0
    adds r3, r5, #0
    bl func_08050D3C
    add sp, #0x54
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08006198: .4byte 0x000045F8
.L0800619C: .4byte 0x000045F0

    thumb_func_start func_080061A0
func_080061A0: @ 0x080061A0
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    adds r6, r1, #0
    ldr r0, .L080062E4 @ =0x00004608
    adds r1, r7, r0
    movs r0, #0
    movs r2, #8
    bl func_08008EB8
    ldr r2, .L080062E8 @ =0x00004614
    adds r1, r7, r2
    movs r0, #0
    movs r2, #8
    bl func_08008EB8
    ldr r4, .L080062EC @ =0x0000460B
    adds r3, r7, r4
    ldrb r2, [r3]
    movs r1, #0x3f
    adds r0, r1, #0
    ands r0, r2
    strb r0, [r3]
    ldr r0, .L080062F0 @ =0x00004617
    adds r3, r7, r0
    ldrb r2, [r3]
    adds r0, r1, #0
    ands r0, r2
    strb r0, [r3]
    ldr r2, .L080062F4 @ =0x00004615
    adds r3, r7, r2
    ldrb r0, [r3]
    ands r1, r0
    movs r0, #0x80
    orrs r1, r0
    strb r1, [r3]
    ldr r0, .L080062F8 @ =0x00004609
    adds r4, r7, r0
    ldrb r2, [r4]
    movs r1, #0xd
    rsbs r1, r1, #0
    adds r0, r1, #0
    ands r0, r2
    movs r2, #4
    orrs r0, r2
    strb r0, [r4]
    ldrb r0, [r3]
    ands r1, r0
    orrs r1, r2
    strb r1, [r3]
    ldr r2, .L080062FC @ =0x0000460C
    adds r4, r7, r2
    ldr r0, .L08006300 @ =0x000003FF
    adds r5, r0, #0
    adds r2, r6, #0
    ands r2, r5
    ldrh r3, [r4]
    ldr r1, .L08006304 @ =0xFFFFFC00
    adds r0, r1, #0
    ands r0, r3
    orrs r0, r2
    strh r0, [r4]
    ldr r4, .L08006308 @ =0x00004618
    adds r3, r7, r4
    ands r2, r5
    ldrh r0, [r3]
    ands r1, r0
    orrs r1, r2
    strh r1, [r3]
    ldr r0, .L0800630C @ =0x0000460D
    adds r3, r7, r0
    ldrb r2, [r3]
    movs r1, #0xf
    adds r0, r1, #0
    ands r0, r2
    movs r4, #0x40
    orrs r0, r4
    strb r0, [r3]
    ldr r0, .L08006310 @ =0x00004619
    adds r2, r7, r0
    ldrb r0, [r2]
    ands r1, r0
    orrs r1, r4
    strb r1, [r2]
    movs r3, #0
    lsls r6, r6, #5
    ldr r2, .L08006314 @ =0x88888888
.L0800624C:
    lsls r1, r3, #2
    adds r1, r6, r1
    ldr r4, .L08006318 @ =0x06010000
    adds r0, r1, r4
    str r2, [r0]
    adds r4, #0x20
    adds r0, r1, r4
    str r2, [r0]
    adds r4, #0x20
    adds r0, r1, r4
    str r2, [r0]
    adds r4, #0x20
    adds r0, r1, r4
    str r2, [r0]
    adds r4, #0x20
    adds r0, r1, r4
    str r2, [r0]
    adds r4, #0x20
    adds r0, r1, r4
    str r2, [r0]
    adds r4, #0x20
    adds r0, r1, r4
    str r2, [r0]
    ldr r0, .L0800631C @ =0x060100E0
    adds r1, r1, r0
    str r2, [r1]
    adds r0, r3, #1
    lsls r0, r0, #0x18
    lsrs r3, r0, #0x18
    cmp r3, #7
    bls .L0800624C
    ldr r1, .L08006320 @ =0x05000290
    ldr r2, .L08006324 @ =0x0000027F
    adds r0, r2, #0
    strh r0, [r1]
    ldr r4, .L08006328 @ =0x00004616
    adds r3, r7, r4
    ldrh r1, [r3]
    ldr r2, .L0800632C @ =0xFFFFFE00
    adds r0, r2, #0
    ands r0, r1
    movs r1, #0x90
    orrs r0, r1
    strh r0, [r3]
    ldr r0, .L080062E8 @ =0x00004614
    adds r1, r7, r0
    movs r4, #8
    movs r0, #8
    strb r0, [r1]
    ldr r0, .L08006330 @ =0x0000460A
    adds r1, r7, r0
    ldrh r0, [r1]
    ands r2, r0
    strh r2, [r1]
    ldr r2, .L080062E4 @ =0x00004608
    adds r1, r7, r2
    movs r0, #0x20
    strb r0, [r1]
    ldr r0, .L08006310 @ =0x00004619
    adds r3, r7, r0
    ldrb r2, [r3]
    movs r1, #0xd
    rsbs r1, r1, #0
    adds r0, r1, #0
    ands r0, r2
    orrs r0, r4
    strb r0, [r3]
    ldr r0, .L0800630C @ =0x0000460D
    adds r2, r7, r0
    ldrb r0, [r2]
    ands r1, r0
    orrs r1, r4
    strb r1, [r2]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080062E4: .4byte 0x00004608
.L080062E8: .4byte 0x00004614
.L080062EC: .4byte 0x0000460B
.L080062F0: .4byte 0x00004617
.L080062F4: .4byte 0x00004615
.L080062F8: .4byte 0x00004609
.L080062FC: .4byte 0x0000460C
.L08006300: .4byte 0x000003FF
.L08006304: .4byte 0xFFFFFC00
.L08006308: .4byte 0x00004618
.L0800630C: .4byte 0x0000460D
.L08006310: .4byte 0x00004619
.L08006314: .4byte 0x88888888
.L08006318: .4byte 0x06010000
.L0800631C: .4byte 0x060100E0
.L08006320: .4byte 0x05000290
.L08006324: .4byte 0x0000027F
.L08006328: .4byte 0x00004616
.L0800632C: .4byte 0xFFFFFE00
.L08006330: .4byte 0x0000460A

    thumb_func_start func_08006334
func_08006334: @ 0x08006334
    ldr r2, .L08006370 @ =0x00004639
    adds r1, r0, r2
    movs r2, #0
    strb r2, [r1]
    ldr r3, .L08006374 @ =0x00004638
    adds r1, r0, r3
    strb r2, [r1]
    subs r3, #2
    adds r1, r0, r3
    strb r2, [r1]
    adds r3, #1
    adds r1, r0, r3
    strb r2, [r1]
    subs r3, #0x32
    adds r1, r0, r3
    strb r2, [r1]
    subs r3, #1
    adds r1, r0, r3
    strb r2, [r1]
    subs r3, #4
    adds r1, r0, r3
    str r2, [r1]
    adds r3, #0x10
    adds r1, r0, r3
    strb r2, [r1]
    ldr r1, .L08006378 @ =0x0000463C
    adds r0, r0, r1
    str r2, [r0]
    bx lr
    .align 2, 0
.L08006370: .4byte 0x00004639
.L08006374: .4byte 0x00004638
.L08006378: .4byte 0x0000463C

    thumb_func_start func_0800637C
func_0800637C: @ 0x0800637C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x30
    adds r5, r0, #0
    movs r0, #0xf0
    lsls r0, r0, #3
    mov sb, r0
    movs r1, #0x60
    movs r2, #0x10
    movs r3, #0
    add r0, sp, #0x1c
    movs r6, #0x1e
    movs r4, #2
    mov r8, r4
    strh r6, [r0]
    mov r7, r8
    strh r7, [r0, #2]
    ldr r0, [sp, #0x1c]
    ldr r7, .L08006410 @ =0x00003C2C
    adds r4, r5, r7
    str r1, [sp]
    str r2, [sp, #4]
    str r3, [sp, #8]
    adds r1, r4, #0
    movs r2, #0
    bl func_0804E7DC
    ldr r0, .L08006414 @ =0x0000461C
    adds r1, r5, r0
    add r0, sp, #0x20
    strh r6, [r0]
    mov r2, r8
    strh r2, [r0, #2]
    ldr r0, [sp, #0x20]
    str r1, [sp]
    adds r1, r4, #0
    movs r2, #0x90
    movs r3, #0
    bl func_0804E8F0
    adds r0, r5, #0
    bl func_08008910
    adds r6, r0, #0
    mov r3, sb
    lsls r2, r3, #3
    movs r0, #0xc0
    lsls r0, r0, #0x13
    adds r2, r2, r0
    add r0, sp, #0xc
    adds r1, r4, #0
    bl func_08008F0C
    add r4, sp, #0xc
    mov sb, r4
    ldr r1, [r6, #4]
    ldr r0, [r6, #0xc]
    cmp r1, r0
    beq .L08006418
    cmp r1, #0
    beq .L08006408
    adds r0, r1, #0
    add r1, sp, #0xc
    ldm r1!, {r2, r5, r7}
    stm r0!, {r2, r5, r7}
    ldr r1, [r1]
    str r1, [r0]
.L08006408:
    ldr r0, [r6, #4]
    adds r0, #0x10
    str r0, [r6, #4]
    b .L080064D8
    .align 2, 0
.L08006410: .4byte 0x00003C2C
.L08006414: .4byte 0x0000461C
.L08006418:
    mov sl, r1
    movs r0, #1
    str r0, [sp, #0x28]
    ldr r0, [r6]
    subs r0, r1, r0
    asrs r4, r0, #4
    str r4, [sp, #0x24]
    add r1, sp, #0x28
    add r0, sp, #0x24
    cmp r4, #1
    bhs .L08006430
    adds r0, r1, #0
.L08006430:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq .L0800644E
    lsls r4, r0, #4
    adds r0, r4, #0
    bl malloc
    mov r8, r4
    cmp r0, #0
    bne .L08006452
    mov r0, r8
    bl func_080D3BC0
    b .L08006452
.L0800644E:
    movs r0, #0
    mov r8, r0
.L08006452:
    adds r5, r0, #0
    str r5, [sp, #0x2c]
    ldr r2, [r6]
    adds r3, r5, #0
    cmp r2, sl
    beq .L08006476
.L0800645E:
    cmp r3, #0
    beq .L0800646E
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r5, r7}
    stm r0!, {r4, r5, r7}
    ldr r1, [r1]
    str r1, [r0]
.L0800646E:
    adds r2, #0x10
    adds r3, #0x10
    cmp r2, sl
    bne .L0800645E
.L08006476:
    adds r5, r3, #0
    ldr r0, [sp, #0x28]
    cmp r0, #1
    bne .L08006492
    cmp r5, #0
    beq .L0800648E
    adds r0, r5, #0
    mov r1, sb
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
.L0800648E:
    adds r5, #0x10
    b .L080064B4
.L08006492:
    adds r3, r0, #0
    adds r2, r5, #0
    cmp r3, #0
    beq .L080064B2
.L0800649A:
    cmp r2, #0
    beq .L080064AA
    adds r0, r2, #0
    mov r1, sb
    ldm r1!, {r4, r5, r7}
    stm r0!, {r4, r5, r7}
    ldr r1, [r1]
    str r1, [r0]
.L080064AA:
    subs r3, #1
    adds r2, #0x10
    cmp r3, #0
    bne .L0800649A
.L080064B2:
    adds r5, r2, #0
.L080064B4:
    ldr r2, [r6, #4]
    ldr r0, [r6]
    adds r1, r0, #0
    cmp r0, r2
    beq .L080064C4
.L080064BE:
    adds r1, #0x10
    cmp r1, r2
    bne .L080064BE
.L080064C4:
    cmp r0, #0
    beq .L080064CC
    bl free
.L080064CC:
    ldr r0, [sp, #0x2c]
    add r0, r8
    ldr r7, [sp, #0x2c]
    str r7, [r6]
    str r5, [r6, #4]
    str r0, [r6, #0xc]
.L080064D8:
    add sp, #0x30
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_080064E8
func_080064E8: @ 0x080064E8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x5c
    mov sl, r0
    ldr r0, .L080065D0 @ =0x00004637
    add r0, sl
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08006502
    b .L08006842
.L08006502:
    movs r0, #1
    mov r8, r0
    mov r1, sp
    adds r1, #0x14
    str r1, [sp, #0x40]
    mov r2, sp
    adds r2, #0x18
    str r2, [sp, #0x44]
    mov r3, sp
    adds r3, #0x24
    str r3, [sp, #0x48]
    ldr r4, .L080065D4 @ =0x000034A8
    add r4, sl
    str r4, [sp, #0x50]
    mov r6, sp
    adds r6, #4
    str r6, [sp, #0x3c]
.L08006524:
    mov r7, r8
    lsls r4, r7, #4
    subs r4, r4, r7
    lsls r4, r4, #5
    add r4, r8
    lsls r4, r4, #2
    mov r0, sl
    adds r1, r4, r0
    add r0, sp, #0x14
    movs r2, #0x1e
    strh r2, [r0]
    movs r6, #2
    ldr r3, [sp, #0x40]
    strh r6, [r3, #2]
    ldr r0, [sp, #0x14]
    adds r1, #0xc
    movs r2, #0
    bl func_0804E7A0
    movs r0, #0x8c
    lsls r0, r0, #7
    add r0, sl
    ldr r3, [r0]
    mov r7, sl
    adds r1, r4, r7
    mov r0, r8
    lsls r2, r0, #5
    subs r2, r2, r0
    movs r0, #0xba
    muls r0, r3, r0
    adds r2, r2, r0
    ldr r0, .L080065D8 @ =gUnk_080E8997
    adds r2, r2, r0
    add r0, sp, #0x18
    movs r3, #0x1e
    strh r3, [r0]
    ldr r7, [sp, #0x44]
    strh r6, [r7, #2]
    ldr r0, [sp, #0x18]
    adds r1, #0xc
    str r2, [sp]
    movs r2, #0
    movs r3, #0
    bl func_0804E8F0
    mov r0, sl
    bl func_08008910
    add r4, sl
    adds r4, #0xc
    movs r1, #0xf0
    lsls r1, r1, #3
    mov r2, r8
    muls r2, r1, r2
    adds r5, r0, #0
    movs r3, #0xc0
    lsls r3, r3, #0x13
    adds r2, r2, r3
    add r0, sp, #4
    adds r1, r4, #0
    movs r3, #0xf0
    lsls r3, r3, #3
    bl func_08008F0C
    ldr r1, [r5, #4]
    ldr r0, [r5, #0xc]
    cmp r1, r0
    beq .L080065DC
    cmp r1, #0
    beq .L080065BC
    adds r0, r1, #0
    add r1, sp, #4
    ldm r1!, {r4, r6, r7}
    stm r0!, {r4, r6, r7}
    ldr r1, [r1]
    str r1, [r0]
.L080065BC:
    ldr r0, [r5, #4]
    adds r0, #0x10
    str r0, [r5, #4]
    movs r0, #1
    add r8, r0
    movs r1, #0xf0
    lsls r1, r1, #3
    lsls r1, r1, #3
    str r1, [sp, #0x4c]
    b .L080066AE
    .align 2, 0
.L080065D0: .4byte 0x00004637
.L080065D4: .4byte 0x000034A8
.L080065D8: .4byte gUnk_080E8997
.L080065DC:
    str r1, [sp, #0x54]
    movs r0, #1
    str r0, [sp, #0x20]
    ldr r0, [r5]
    adds r2, r1, #0
    subs r0, r2, r0
    asrs r4, r0, #4
    str r4, [sp, #0x1c]
    add r1, sp, #0x20
    add r0, sp, #0x1c
    cmp r4, #1
    bhs .L080065F6
    adds r0, r1, #0
.L080065F6:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq .L08006614
    lsls r4, r0, #4
    adds r0, r4, #0
    bl malloc
    mov sb, r4
    cmp r0, #0
    bne .L08006618
    mov r0, sb
    bl func_080D3BC0
    b .L08006618
.L08006614:
    movs r0, #0
    mov sb, r0
.L08006618:
    adds r4, r0, #0
    str r4, [sp, #0x58]
    ldr r2, [r5]
    adds r3, r4, #0
    movs r4, #1
    add r8, r4
    movs r6, #0xf0
    lsls r6, r6, #3
    lsls r6, r6, #3
    str r6, [sp, #0x4c]
    ldr r7, [sp, #0x54]
    cmp r2, r7
    beq .L0800664C
.L08006632:
    cmp r3, #0
    beq .L08006642
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r6, r7}
    stm r0!, {r4, r6, r7}
    ldr r1, [r1]
    str r1, [r0]
.L08006642:
    adds r2, #0x10
    adds r3, #0x10
    ldr r0, [sp, #0x54]
    cmp r2, r0
    bne .L08006632
.L0800664C:
    adds r4, r3, #0
    ldr r0, [sp, #0x20]
    cmp r0, #1
    bne .L08006668
    cmp r4, #0
    beq .L08006664
    adds r0, r4, #0
    ldr r1, [sp, #0x3c]
    ldm r1!, {r2, r3, r6}
    stm r0!, {r2, r3, r6}
    ldr r1, [r1]
    str r1, [r0]
.L08006664:
    adds r4, #0x10
    b .L0800668A
.L08006668:
    adds r3, r0, #0
    adds r2, r4, #0
    cmp r3, #0
    beq .L08006688
.L08006670:
    cmp r2, #0
    beq .L08006680
    adds r0, r2, #0
    ldr r1, [sp, #0x3c]
    ldm r1!, {r4, r6, r7}
    stm r0!, {r4, r6, r7}
    ldr r1, [r1]
    str r1, [r0]
.L08006680:
    subs r3, #1
    adds r2, #0x10
    cmp r3, #0
    bne .L08006670
.L08006688:
    adds r4, r2, #0
.L0800668A:
    ldr r2, [r5, #4]
    ldr r0, [r5]
    adds r1, r0, #0
    cmp r0, r2
    beq .L0800669A
.L08006694:
    adds r1, #0x10
    cmp r1, r2
    bne .L08006694
.L0800669A:
    cmp r0, #0
    beq .L080066A2
    bl free
.L080066A2:
    ldr r0, [sp, #0x58]
    add r0, sb
    ldr r7, [sp, #0x58]
    str r7, [r5]
    str r4, [r5, #4]
    str r0, [r5, #0xc]
.L080066AE:
    mov r0, r8
    cmp r0, #6
    bhi .L080066B6
    b .L08006524
.L080066B6:
    movs r4, #0x1e
    movs r5, #2
    add r0, sp, #0x24
    strh r4, [r0]
    ldr r1, [sp, #0x48]
    strh r5, [r1, #2]
    ldr r0, [sp, #0x24]
    ldr r1, [sp, #0x50]
    movs r2, #0
    bl func_0804E7A0
    movs r0, #0x8c
    lsls r0, r0, #7
    add r0, sl
    ldr r2, [r0]
    cmp r2, #1
    beq .L080066F8
    cmp r2, #1
    bgt .L080066E2
    cmp r2, #0
    beq .L080066E8
    b .L0800672A
.L080066E2:
    cmp r2, #2
    beq .L08006714
    b .L0800672A
.L080066E8:
    ldr r1, .L080066F4 @ =gUnk_080E8BFC
    add r0, sp, #0x28
    strh r4, [r0]
    strh r5, [r0, #2]
    ldr r0, [sp, #0x28]
    b .L08006702
    .align 2, 0
.L080066F4: .4byte gUnk_080E8BFC
.L080066F8:
    ldr r1, .L08006710 @ =gUnk_080E8C14
    add r0, sp, #0x2c
    strh r4, [r0]
    strh r5, [r0, #2]
    ldr r0, [sp, #0x2c]
.L08006702:
    str r1, [sp]
    ldr r1, [sp, #0x50]
    movs r2, #0x18
    movs r3, #0
    bl func_0804E8F0
    b .L0800672A
    .align 2, 0
.L08006710: .4byte gUnk_080E8C14
.L08006714:
    ldr r1, .L08006770 @ =gUnk_080E8C14
    add r0, sp, #0x30
    strh r4, [r0]
    strh r2, [r0, #2]
    ldr r0, [sp, #0x30]
    str r1, [sp]
    ldr r1, [sp, #0x50]
    movs r2, #0x18
    movs r3, #0
    bl func_0804E8F0
.L0800672A:
    mov r0, sl
    bl func_08008910
    adds r5, r0, #0
    ldr r3, [sp, #0x4c]
    movs r4, #0xf0
    lsls r4, r4, #3
    subs r2, r3, r4
    movs r6, #0xc0
    lsls r6, r6, #0x13
    adds r2, r2, r6
    add r0, sp, #4
    ldr r1, [sp, #0x50]
    adds r3, r4, #0
    bl func_08008F0C
    add r7, sp, #4
    mov sb, r7
    ldr r1, [r5, #4]
    ldr r0, [r5, #0xc]
    cmp r1, r0
    beq .L08006774
    cmp r1, #0
    beq .L08006766
    adds r0, r1, #0
    add r1, sp, #4
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
.L08006766:
    ldr r0, [r5, #4]
    adds r0, #0x10
    str r0, [r5, #4]
    b .L0800683A
    .align 2, 0
.L08006770: .4byte gUnk_080E8C14
.L08006774:
    str r1, [sp, #0x54]
    movs r0, #1
    str r0, [sp, #0x38]
    ldr r0, [r5]
    adds r6, r1, #0
    subs r0, r6, r0
    asrs r4, r0, #4
    str r4, [sp, #0x34]
    add r1, sp, #0x38
    add r0, sp, #0x34
    cmp r4, #1
    bhs .L0800678E
    adds r0, r1, #0
.L0800678E:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq .L080067AC
    lsls r4, r0, #4
    adds r0, r4, #0
    bl malloc
    mov r8, r4
    cmp r0, #0
    bne .L080067B0
    mov r0, r8
    bl func_080D3BC0
    b .L080067B0
.L080067AC:
    movs r0, #0
    mov r8, r0
.L080067B0:
    adds r4, r0, #0
    str r4, [sp, #0x58]
    ldr r2, [r5]
    adds r3, r4, #0
    ldr r7, [sp, #0x54]
    cmp r2, r7
    beq .L080067D8
.L080067BE:
    cmp r3, #0
    beq .L080067CE
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r6, r7}
    stm r0!, {r4, r6, r7}
    ldr r1, [r1]
    str r1, [r0]
.L080067CE:
    adds r2, #0x10
    adds r3, #0x10
    ldr r0, [sp, #0x54]
    cmp r2, r0
    bne .L080067BE
.L080067D8:
    adds r4, r3, #0
    ldr r0, [sp, #0x38]
    cmp r0, #1
    bne .L080067F4
    cmp r4, #0
    beq .L080067F0
    adds r0, r4, #0
    mov r1, sb
    ldm r1!, {r2, r3, r6}
    stm r0!, {r2, r3, r6}
    ldr r1, [r1]
    str r1, [r0]
.L080067F0:
    adds r4, #0x10
    b .L08006816
.L080067F4:
    adds r3, r0, #0
    adds r2, r4, #0
    cmp r3, #0
    beq .L08006814
.L080067FC:
    cmp r2, #0
    beq .L0800680C
    adds r0, r2, #0
    mov r1, sb
    ldm r1!, {r4, r6, r7}
    stm r0!, {r4, r6, r7}
    ldr r1, [r1]
    str r1, [r0]
.L0800680C:
    subs r3, #1
    adds r2, #0x10
    cmp r3, #0
    bne .L080067FC
.L08006814:
    adds r4, r2, #0
.L08006816:
    ldr r2, [r5, #4]
    ldr r0, [r5]
    adds r1, r0, #0
    cmp r0, r2
    beq .L08006826
.L08006820:
    adds r1, #0x10
    cmp r1, r2
    bne .L08006820
.L08006826:
    cmp r0, #0
    beq .L0800682E
    bl free
.L0800682E:
    ldr r0, [sp, #0x58]
    add r0, r8
    ldr r7, [sp, #0x58]
    str r7, [r5]
    str r4, [r5, #4]
    str r0, [r5, #0xc]
.L0800683A:
    ldr r1, .L08006854 @ =0x00004637
    add r1, sl
    movs r0, #0
    strb r0, [r1]
.L08006842:
    add sp, #0x5c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08006854: .4byte 0x00004637

    thumb_func_start func_08006858
func_08006858: @ 0x08006858
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L080068BC @ =0x0000463C
    adds r0, r4, r1
    ldr r0, [r0]
    cmp r0, #0
    bne .L0800688E
    adds r0, r4, #0
    bl func_08008920
    adds r3, r0, #0
    ldr r5, .L080068C0 @ =0x00004608
    adds r1, r4, r5
    ldrb r2, [r3]
    cmp r2, #0x7f
    bhi .L0800688E
    lsls r0, r2, #3
    adds r0, #4
    adds r0, r3, r0
    ldr r1, [r1]
    str r1, [r0]
    adds r5, #4
    adds r1, r4, r5
    ldrh r1, [r1]
    strh r1, [r0, #4]
    adds r0, r2, #1
    strb r0, [r3]
.L0800688E:
    adds r0, r4, #0
    bl func_08008920
    adds r3, r0, #0
    ldr r0, .L080068C4 @ =0x00004614
    adds r1, r4, r0
    ldrb r2, [r3]
    cmp r2, #0x7f
    bhi .L080068B6
    lsls r0, r2, #3
    adds r0, #4
    adds r0, r3, r0
    ldr r1, [r1]
    str r1, [r0]
    ldr r5, .L080068C8 @ =0x00004618
    adds r1, r4, r5
    ldrh r1, [r1]
    strh r1, [r0, #4]
    adds r0, r2, #1
    strb r0, [r3]
.L080068B6:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080068BC: .4byte 0x0000463C
.L080068C0: .4byte 0x00004608
.L080068C4: .4byte 0x00004614
.L080068C8: .4byte 0x00004618

    thumb_func_start func_080068CC
func_080068CC: @ 0x080068CC
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    ldr r1, .L08006948 @ =0x00004610
    adds r0, r4, r1
    ldrb r1, [r0]
    lsls r1, r1, #3
    adds r1, #0x90
    ldr r2, .L0800694C @ =0x00004616
    adds r3, r4, r2
    ldr r0, .L08006950 @ =0x000001FF
    adds r7, r0, #0
    ands r1, r7
    ldrh r2, [r3]
    ldr r6, .L08006954 @ =0xFFFFFE00
    adds r0, r6, #0
    ands r0, r2
    orrs r0, r1
    strh r0, [r3]
    ldr r2, .L08006958 @ =0x00004614
    adds r1, r4, r2
    movs r0, #8
    strb r0, [r1]
    ldr r0, .L0800695C @ =0x00004605
    adds r5, r4, r0
    movs r0, #0
    ldrsb r0, [r5, r0]
    cmp r0, #5
    bgt .L08006970
    ldr r1, .L08006960 @ =0x00004604
    adds r0, r4, r1
    movs r1, #0
    ldrsb r1, [r0, r1]
    lsls r1, r1, #4
    subs r2, #0xa
    adds r3, r4, r2
    ands r1, r7
    ldrh r2, [r3]
    adds r0, r6, #0
    ands r0, r2
    orrs r0, r1
    strh r0, [r3]
    movs r0, #0
    ldrsb r0, [r5, r0]
    lsls r0, r0, #4
    adds r0, #0x20
    ldr r2, .L08006964 @ =0x00004608
    adds r1, r4, r2
    strb r0, [r1]
    ldr r0, .L08006968 @ =0x0000460B
    adds r3, r4, r0
    ldrb r2, [r3]
    movs r1, #0x3f
    adds r0, r1, #0
    ands r0, r2
    strb r0, [r3]
    ldr r0, .L0800696C @ =0x00004609
    adds r2, r4, r0
    ldrb r0, [r2]
    ands r1, r0
    movs r0, #0x80
    b .L080069CC
    .align 2, 0
.L08006948: .4byte 0x00004610
.L0800694C: .4byte 0x00004616
.L08006950: .4byte 0x000001FF
.L08006954: .4byte 0xFFFFFE00
.L08006958: .4byte 0x00004614
.L0800695C: .4byte 0x00004605
.L08006960: .4byte 0x00004604
.L08006964: .4byte 0x00004608
.L08006968: .4byte 0x0000460B
.L0800696C: .4byte 0x00004609
.L08006970:
    movs r2, #0
    ldr r1, .L080069D8 @ =0x00004604
    adds r0, r4, r1
    ldrb r1, [r0]
    cmp r1, #4
    bls .L0800698C
.L0800697C:
    subs r0, r1, #5
    lsls r0, r0, #0x18
    lsrs r1, r0, #0x18
    adds r0, r2, #1
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
    cmp r1, #4
    bhi .L0800697C
.L0800698C:
    lsls r1, r2, #2
    adds r1, r1, r2
    lsls r1, r1, #4
    adds r1, #0x18
    ldr r2, .L080069DC @ =0x0000460A
    adds r3, r4, r2
    ldr r2, .L080069E0 @ =0x000001FF
    adds r0, r2, #0
    ands r1, r0
    ldrh r2, [r3]
    ldr r0, .L080069E4 @ =0xFFFFFE00
    ands r0, r2
    orrs r0, r1
    strh r0, [r3]
    ldr r0, .L080069E8 @ =0x00004608
    adds r1, r4, r0
    movs r0, #0x88
    strb r0, [r1]
    ldr r1, .L080069EC @ =0x0000460B
    adds r3, r4, r1
    ldrb r2, [r3]
    movs r1, #0x3f
    adds r0, r1, #0
    ands r0, r2
    movs r2, #0x80
    orrs r0, r2
    strb r0, [r3]
    ldr r0, .L080069F0 @ =0x00004609
    adds r2, r4, r0
    ldrb r0, [r2]
    ands r1, r0
    movs r0, #0x40
.L080069CC:
    orrs r1, r0
    strb r1, [r2]
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080069D8: .4byte 0x00004604
.L080069DC: .4byte 0x0000460A
.L080069E0: .4byte 0x000001FF
.L080069E4: .4byte 0xFFFFFE00
.L080069E8: .4byte 0x00004608
.L080069EC: .4byte 0x0000460B
.L080069F0: .4byte 0x00004609

    thumb_func_start func_080069F4
func_080069F4: @ 0x080069F4
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    bl func_080088D4
    adds r1, r0, #0
    movs r0, #0x40
    ands r0, r1
    lsls r0, r0, #0x18
    lsrs r6, r0, #0x18
    cmp r6, #0
    beq .L08006A60
    ldr r1, .L08006A54 @ =0x000045F4
    adds r0, r4, r1
    movs r1, #0xcb
    bl func_08008B6C
    ldr r3, .L08006A58 @ =0x00004605
    adds r2, r4, r3
    ldrb r0, [r2]
    subs r0, #1
    strb r0, [r2]
    lsls r0, r0, #0x18
    cmp r0, #0
    bge .L08006A30
    movs r0, #6
    strb r0, [r2]
    ldr r0, .L08006A5C @ =0x00004604
    adds r1, r4, r0
    movs r0, #0xc
    strb r0, [r1]
.L08006A30:
    ldrb r1, [r2]
    movs r0, #0
    ldrsb r0, [r2, r0]
    cmp r0, #5
    beq .L08006A3C
    b .L08006B8A
.L08006A3C:
    ldr r3, .L08006A5C @ =0x00004604
    adds r0, r4, r3
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0xc
    bgt .L08006A4C
    b .L08006B8A
.L08006A4C:
    subs r0, r1, #1
    strb r0, [r2]
    b .L08006B8A
    .align 2, 0
.L08006A54: .4byte 0x000045F4
.L08006A58: .4byte 0x00004605
.L08006A5C: .4byte 0x00004604
.L08006A60:
    movs r0, #0x80
    ands r0, r1
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    cmp r5, #0
    beq .L08006AC8
    ldr r1, .L08006ABC @ =0x000045F4
    adds r0, r4, r1
    movs r1, #0xcb
    bl func_08008B6C
    ldr r3, .L08006AC0 @ =0x00004605
    adds r1, r4, r3
    ldrb r0, [r1]
    adds r0, #1
    strb r0, [r1]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #6
    ble .L08006A8A
    strb r6, [r1]
.L08006A8A:
    ldrb r2, [r1]
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #5
    bne .L08006AA6
    ldr r3, .L08006AC4 @ =0x00004604
    adds r0, r4, r3
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0xc
    ble .L08006AA6
    adds r0, r2, #1
    strb r0, [r1]
.L08006AA6:
    ldr r1, .L08006AC0 @ =0x00004605
    adds r0, r4, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #6
    bne .L08006B8A
    ldr r3, .L08006AC4 @ =0x00004604
    adds r1, r4, r3
    movs r0, #0xc
    b .L08006B88
    .align 2, 0
.L08006ABC: .4byte 0x000045F4
.L08006AC0: .4byte 0x00004605
.L08006AC4: .4byte 0x00004604
.L08006AC8:
    movs r0, #0x10
    ands r0, r1
    cmp r0, #0
    beq .L08006B2C
    ldr r1, .L08006AF0 @ =0x000045F4
    adds r0, r4, r1
    movs r1, #0xcb
    bl func_08008B6C
    ldr r0, .L08006AF4 @ =0x00004605
    adds r3, r4, r0
    movs r0, #0
    ldrsb r0, [r3, r0]
    cmp r0, #6
    bne .L08006AFC
    ldr r3, .L08006AF8 @ =0x00004604
    adds r1, r4, r3
    movs r0, #0xc
    b .L08006B88
    .align 2, 0
.L08006AF0: .4byte 0x000045F4
.L08006AF4: .4byte 0x00004605
.L08006AF8: .4byte 0x00004604
.L08006AFC:
    ldr r0, .L08006B1C @ =0x00004604
    adds r1, r4, r0
    ldrb r0, [r1]
    adds r2, r0, #1
    strb r2, [r1]
    movs r0, #0
    ldrsb r0, [r3, r0]
    cmp r0, #5
    bne .L08006B20
    movs r0, #0
    ldrsb r0, [r1, r0]
    cmp r0, #0xc
    ble .L08006B8A
    strb r5, [r1]
    b .L08006B8A
    .align 2, 0
.L08006B1C: .4byte 0x00004604
.L08006B20:
    lsls r0, r2, #0x18
    asrs r0, r0, #0x18
    cmp r0, #0xe
    ble .L08006B8A
    strb r5, [r1]
    b .L08006B8A
.L08006B2C:
    movs r0, #0x20
    ands r0, r1
    cmp r0, #0
    beq .L08006B8A
    ldr r1, .L08006B54 @ =0x000045F4
    adds r0, r4, r1
    movs r1, #0xcb
    bl func_08008B6C
    ldr r0, .L08006B58 @ =0x00004605
    adds r3, r4, r0
    movs r0, #0
    ldrsb r0, [r3, r0]
    cmp r0, #6
    bne .L08006B60
    ldr r3, .L08006B5C @ =0x00004604
    adds r1, r4, r3
    movs r0, #0xc
    b .L08006B88
    .align 2, 0
.L08006B54: .4byte 0x000045F4
.L08006B58: .4byte 0x00004605
.L08006B5C: .4byte 0x00004604
.L08006B60:
    ldr r0, .L08006B7C @ =0x00004604
    adds r1, r4, r0
    ldrb r0, [r1]
    subs r2, r0, #1
    strb r2, [r1]
    movs r0, #0
    ldrsb r0, [r3, r0]
    cmp r0, #5
    bne .L08006B80
    lsls r0, r2, #0x18
    cmp r0, #0
    bge .L08006B8A
    movs r0, #0xc
    b .L08006B88
    .align 2, 0
.L08006B7C: .4byte 0x00004604
.L08006B80:
    lsls r0, r2, #0x18
    cmp r0, #0
    bge .L08006B8A
    movs r0, #0xe
.L08006B88:
    strb r0, [r1]
.L08006B8A:
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_08006B90
func_08006B90: @ 0x08006B90
    push {r4, r5, lr}
    sub sp, #4
    adds r5, r0, #0
    mov r4, sp
    ldr r3, .L08006BDC @ =gUnk_080E89B6
    ldr r1, .L08006BE0 @ =0x00004604
    adds r0, r5, r1
    movs r1, #0
    ldrsb r1, [r0, r1]
    lsls r1, r1, #1
    ldr r2, .L08006BE4 @ =0x00004605
    adds r0, r5, r2
    movs r2, #0
    ldrsb r2, [r0, r2]
    lsls r0, r2, #5
    subs r0, r0, r2
    adds r1, r1, r0
    movs r2, #0x8c
    lsls r2, r2, #7
    adds r0, r5, r2
    ldr r2, [r0]
    movs r0, #0xba
    muls r0, r2, r0
    adds r1, r1, r0
    adds r1, r1, r3
    ldrb r1, [r1]
    strb r1, [r4]
    ldr r3, .L08006BE8 @ =0x00004610
    adds r2, r5, r3
    ldrb r4, [r2]
    adds r3, #0xc
    adds r0, r5, r3
    adds r3, r0, r4
    ldrb r0, [r3]
    cmp r0, r1
    bne .L08006BEC
    adds r0, r4, #1
    b .L08006BF2
    .align 2, 0
.L08006BDC: .4byte gUnk_080E89B6
.L08006BE0: .4byte 0x00004604
.L08006BE4: .4byte 0x00004605
.L08006BE8: .4byte 0x00004610
.L08006BEC:
    strb r1, [r3]
    ldrb r0, [r2]
    adds r0, #1
.L08006BF2:
    strb r0, [r2]
    ldr r0, .L08006C1C @ =0x00004610
    adds r2, r5, r0
    ldrb r0, [r2]
    cmp r0, #0xb
    bls .L08006C12
    ldr r3, .L08006C20 @ =0x00004604
    adds r1, r5, r3
    movs r0, #0xc
    strb r0, [r1]
    ldr r0, .L08006C24 @ =0x00004605
    adds r1, r5, r0
    movs r0, #6
    strb r0, [r1]
    movs r0, #0xb
    strb r0, [r2]
.L08006C12:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08006C1C: .4byte 0x00004610
.L08006C20: .4byte 0x00004604
.L08006C24: .4byte 0x00004605

    thumb_func_start func_08006C28
func_08006C28: @ 0x08006C28
    push {r4, lr}
    adds r4, r0, #0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    cmp r1, #0xa
    bhi .L08006C4A
    ldr r0, .L08006C58 @ =0x0000461C
    adds r3, r4, r0
.L08006C38:
    adds r2, r3, r1
    adds r1, #1
    adds r0, r3, r1
    ldrb r0, [r0]
    strb r0, [r2]
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    cmp r1, #0xa
    bls .L08006C38
.L08006C4A:
    ldr r0, .L08006C5C @ =0x00004627
    adds r1, r4, r0
    movs r0, #0x5f
    strb r0, [r1]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08006C58: .4byte 0x0000461C
.L08006C5C: .4byte 0x00004627

    thumb_func_start func_08006C60
func_08006C60: @ 0x08006C60
    push {r4, r5, r6, r7, lr}
    adds r7, r0, #0
    movs r6, #0
    movs r5, #0
    ldr r0, .L08006C88 @ =0x00004629
    adds r4, r7, r0
    subs r0, #0xd
    adds r1, r7, r0
    adds r0, r4, #0
    bl strcpy
    movs r1, #0
.L08006C78:
    adds r0, r4, r1
    ldrb r0, [r0]
    cmp r0, #0x5f
    bne .L08006C8C
    adds r5, #1
    adds r0, r1, #1
    b .L08006C96
    .align 2, 0
.L08006C88: .4byte 0x00004629
.L08006C8C:
    cmp r0, #0x20
    bne .L08006C92
    adds r5, #1
.L08006C92:
    adds r6, r1, #1
    adds r0, r6, #0
.L08006C96:
    adds r1, r0, #0
    cmp r1, #0xb
    ble .L08006C78
    cmp r5, #0xc
    bne .L08006CA4
    movs r6, #0
    b .L08006CC0
.L08006CA4:
    movs r2, #0
    cmp r2, r6
    bge .L08006CC0
    ldr r1, .L08006CD8 @ =0x00004629
    adds r3, r7, r1
    movs r4, #0x20
.L08006CB0:
    adds r1, r3, r2
    ldrb r0, [r1]
    cmp r0, #0x5f
    bne .L08006CBA
    strb r4, [r1]
.L08006CBA:
    adds r2, #1
    cmp r2, r6
    blt .L08006CB0
.L08006CC0:
    ldr r1, .L08006CD8 @ =0x00004629
    adds r0, r7, r1
    adds r0, r0, r6
    movs r1, #0
    strb r1, [r0]
    rsbs r0, r6, #0
    orrs r0, r6
    lsrs r0, r0, #0x1f
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08006CD8: .4byte 0x00004629

    thumb_func_start func_08006CDC
func_08006CDC: @ 0x08006CDC
    push {r4, r5, r6, r7, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, .L08006D2C @ =0x0000463C
    adds r5, r4, r0
    ldr r6, [r5]
    cmp r6, #0
    beq .L08006CEE
    b .L08006EC8
.L08006CEE:
    adds r0, r4, #0
    bl func_080069F4
    adds r0, r4, #0
    bl func_080088D4
    str r0, [sp]
    mov r0, sp
    ldrb r1, [r0]
    movs r7, #1
    adds r0, r7, #0
    ands r0, r1
    cmp r0, #0
    beq .L08006DA6
    ldr r1, .L08006D30 @ =0x00004605
    adds r0, r4, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #5
    bgt .L08006D34
    subs r1, #0x11
    adds r0, r4, r1
    movs r1, #0x6a
    bl func_08008B6C
    adds r0, r4, #0
    bl func_08006B90
    b .L08006EC8
    .align 2, 0
.L08006D2C: .4byte 0x0000463C
.L08006D30: .4byte 0x00004605
.L08006D34:
    ldr r1, .L08006D54 @ =0x00004604
    adds r0, r4, r1
    ldrb r1, [r0]
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #4
    bgt .L08006D5C
    movs r0, #0x8c
    lsls r0, r0, #7
    adds r1, r4, r0
    ldr r0, [r1]
    cmp r0, #2
    bne .L08006D58
    str r6, [r1]
    b .L08006D7A
    .align 2, 0
.L08006D54: .4byte 0x00004604
.L08006D58:
    adds r0, #1
    b .L08006D78
.L08006D5C:
    subs r0, r1, #5
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    cmp r0, #4
    bhi .L08006D98
    movs r0, #0x8c
    lsls r0, r0, #7
    adds r1, r4, r0
    ldr r0, [r1]
    cmp r0, #0
    bne .L08006D76
    movs r0, #2
    b .L08006D78
.L08006D76:
    subs r0, #1
.L08006D78:
    str r0, [r1]
.L08006D7A:
    ldr r1, .L08006D90 @ =0x00004637
    adds r0, r4, r1
    movs r1, #1
    strb r1, [r0]
    ldr r1, .L08006D94 @ =0x000045F4
    adds r0, r4, r1
    movs r1, #0xca
    bl func_08008B6C
    b .L08006EC8
    .align 2, 0
.L08006D90: .4byte 0x00004637
.L08006D94: .4byte 0x000045F4
.L08006D98:
    adds r0, r4, #0
    bl func_08006C60
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08006E48
    b .L08006DE8
.L08006DA6:
    movs r2, #2
    adds r0, r2, #0
    ands r0, r1
    cmp r0, #0
    beq .L08006E14
    ldr r0, .L08006DC4 @ =0x00004610
    adds r1, r4, r0
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08006DC8
    subs r0, #1
    strb r0, [r1]
    ldrb r1, [r1]
    adds r0, r4, #0
    b .L08006E00
    .align 2, 0
.L08006DC4: .4byte 0x00004610
.L08006DC8:
    movs r2, #0
    movs r1, #0
    ldr r0, .L08006DF4 @ =0x0000461C
    adds r3, r4, r0
.L08006DD0:
    adds r0, r3, r1
    ldrb r0, [r0]
    cmp r0, #0x5f
    bne .L08006DDE
    adds r0, r2, #1
    lsls r0, r0, #0x18
    lsrs r2, r0, #0x18
.L08006DDE:
    adds r1, #1
    cmp r1, #0xb
    ble .L08006DD0
    cmp r2, #0xc
    bne .L08006DFC
.L08006DE8:
    ldr r1, .L08006DF8 @ =0x000045F4
    adds r0, r4, r1
    movs r1, #0xc7
    bl func_08008B6C
    b .L08006EC8
    .align 2, 0
.L08006DF4: .4byte 0x0000461C
.L08006DF8: .4byte 0x000045F4
.L08006DFC:
    adds r0, r4, #0
    movs r1, #0
.L08006E00:
    bl func_08006C28
    ldr r1, .L08006E10 @ =0x000045F4
    adds r0, r4, r1
    movs r1, #0x6c
    bl func_08008B6C
    b .L08006EC8
    .align 2, 0
.L08006E10: .4byte 0x000045F4
.L08006E14:
    movs r0, #8
    ands r0, r1
    cmp r0, #0
    beq .L08006E78
    ldr r1, .L08006E58 @ =0x00004605
    adds r0, r4, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #6
    bne .L08006E60
    subs r1, #1
    adds r0, r4, r1
    ldrb r0, [r0]
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    cmp r0, #9
    ble .L08006E60
    cmp r0, #0xe
    bgt .L08006E60
    adds r0, r4, #0
    bl func_08006C60
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08006E4A
.L08006E48:
    str r7, [r5]
.L08006E4A:
    ldr r1, .L08006E5C @ =0x000045F4
    adds r0, r4, r1
    movs r1, #0xc5
    bl func_08008B6C
    b .L08006EC8
    .align 2, 0
.L08006E58: .4byte 0x00004605
.L08006E5C: .4byte 0x000045F4
.L08006E60:
    ldr r0, .L08006E70 @ =0x00004604
    adds r1, r4, r0
    movs r0, #0xc
    strb r0, [r1]
    ldr r0, .L08006E74 @ =0x00004605
    adds r1, r4, r0
    movs r0, #6
    b .L08006E90
    .align 2, 0
.L08006E70: .4byte 0x00004604
.L08006E74: .4byte 0x00004605
.L08006E78:
    mov r0, sp
    ldrb r1, [r0, #1]
    adds r0, r2, #0
    ands r0, r1
    cmp r0, #0
    beq .L08006EA8
    ldr r0, .L08006EA0 @ =0x00004610
    adds r1, r4, r0
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08006E92
    subs r0, #1
.L08006E90:
    strb r0, [r1]
.L08006E92:
    ldr r1, .L08006EA4 @ =0x000045F4
    adds r0, r4, r1
    movs r1, #0xcb
    bl func_08008B6C
    b .L08006EC8
    .align 2, 0
.L08006EA0: .4byte 0x00004610
.L08006EA4: .4byte 0x000045F4
.L08006EA8:
    adds r0, r7, #0
    ands r0, r1
    cmp r0, #0
    beq .L08006EC8
    ldr r0, .L08006ED0 @ =0x00004610
    adds r1, r4, r0
    ldrb r0, [r1]
    cmp r0, #0xb
    beq .L08006EBE
    adds r0, #1
    strb r0, [r1]
.L08006EBE:
    ldr r1, .L08006ED4 @ =0x000045F4
    adds r0, r4, r1
    movs r1, #0xcb
    bl func_08008B6C
.L08006EC8:
    add sp, #4
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08006ED0: .4byte 0x00004610
.L08006ED4: .4byte 0x000045F4

    thumb_func_start func_08006ED8
func_08006ED8: @ 0x08006ED8
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    adds r7, r0, #0
    ldr r1, .L08006F50 @ =0x0000463C
    adds r0, r7, r1
    ldr r0, [r0]
    cmp r0, #0
    bne .L08006EF2
    b .L08007064
.L08006EF2:
    ldr r2, .L08006F54 @ =0x000045F8
    adds r4, r7, r2
    ldr r0, [r4]
    bl func_08050D34
    adds r6, r0, #0
    ldr r4, [r4]
    mov sb, r4
    adds r0, r7, #0
    bl func_080088DC
    mov r8, r0
    adds r0, r7, #0
    bl func_08008920
    mov sl, r0
    adds r0, r7, #0
    bl func_08008918
    adds r5, r0, #0
    adds r0, r7, #0
    bl func_08008940
    adds r4, r0, #0
    adds r0, r7, #0
    bl func_0800894C
    ldr r2, .L08006F58 @ =0x000045F0
    adds r1, r7, r2
    str r4, [sp]
    str r0, [sp, #4]
    str r1, [sp, #8]
    mov r0, sb
    mov r1, r8
    mov r2, sl
    adds r3, r5, #0
    bl func_08050D3C
    cmp r0, #6
    bls .L08006F44
    b .L08007064
.L08006F44:
    lsls r0, r0, #2
    ldr r1, .L08006F5C @ =.L08006F60
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08006F50: .4byte 0x0000463C
.L08006F54: .4byte 0x000045F8
.L08006F58: .4byte 0x000045F0
.L08006F5C: .4byte .L08006F60
.L08006F60: @ jump table
    .4byte .L08006F7C @ case 0
    .4byte .L08007064 @ case 1
    .4byte .L08007064 @ case 2
    .4byte .L08006FD8 @ case 3
    .4byte .L08007064 @ case 4
    .4byte .L08007064 @ case 5
    .4byte .L08007064 @ case 6
.L08006F7C:
    ldr r0, .L08006FC0 @ =0x00004638
    adds r2, r7, r0
    ldrb r0, [r2]
    cmp r0, #0
    beq .L08006F90
    ldr r0, .L08006FC4 @ =0x0000463C
    adds r1, r7, r0
    movs r0, #0
    str r0, [r1]
    strb r0, [r2]
.L08006F90:
    ldr r2, .L08006FC8 @ =0x00004639
    adds r1, r7, r2
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08006FB2
    movs r0, #0
    strb r0, [r1]
    ldr r0, .L08006FCC @ =0x00004636
    adds r1, r7, r0
    movs r0, #1
    strb r0, [r1]
    ldr r1, .L08006FD0 @ =0x0000461C
    adds r0, r7, r1
    subs r2, #0x10
    adds r1, r7, r2
    bl strcpy
.L08006FB2:
    ldr r1, .L08006FD4 @ =0x000045F8
    adds r0, r7, r1
    ldr r0, [r0]
    bl func_08050D5C
    b .L08007064
    .align 2, 0
.L08006FC0: .4byte 0x00004638
.L08006FC4: .4byte 0x0000463C
.L08006FC8: .4byte 0x00004639
.L08006FCC: .4byte 0x00004636
.L08006FD0: .4byte 0x0000461C
.L08006FD4: .4byte 0x000045F8
.L08006FD8:
    cmp r6, #5
    bgt .L08006FE6
    cmp r6, #4
    bge .L08007064
    cmp r6, #1
    beq .L08006FFC
    b .L08006FEA
.L08006FE6:
    cmp r6, #6
    beq .L08007034
.L08006FEA:
    ldr r2, .L08006FF8 @ =0x000045F8
    adds r0, r7, r2
    ldr r0, [r0]
    bl func_08050D74
    b .L08007064
    .align 2, 0
.L08006FF8: .4byte 0x000045F8
.L08006FFC:
    ldr r1, .L08007020 @ =0x0000463C
    adds r0, r7, r1
    ldr r0, [r0]
    cmp r0, #1
    bne .L08007064
    ldr r2, .L08007024 @ =0x000045F8
    adds r0, r7, r2
    ldr r0, [r0]
    ldr r1, .L08007028 @ =gUnk_080E8C2C
    ldr r2, .L0800702C @ =gUnk_080E8C44
    ldr r3, .L08007030 @ =gUnk_080E8C48
    movs r4, #0
    str r4, [sp]
    str r4, [sp, #4]
    str r4, [sp, #8]
    bl func_08050E30
    b .L08007064
    .align 2, 0
.L08007020: .4byte 0x0000463C
.L08007024: .4byte 0x000045F8
.L08007028: .4byte gUnk_080E8C2C
.L0800702C: .4byte gUnk_080E8C44
.L08007030: .4byte gUnk_080E8C48
.L08007034:
    ldr r1, .L0800704C @ =0x000045F8
    adds r0, r7, r1
    ldr r0, [r0]
    bl func_08050DF0
    adds r2, r0, #0
    cmp r2, #1
    beq .L08007050
    cmp r2, #2
    beq .L0800705C
    b .L08007064
    .align 2, 0
.L0800704C: .4byte 0x000045F8
.L08007050:
    ldr r1, .L08007058 @ =0x00004639
    adds r0, r7, r1
    strb r2, [r0]
    b .L08007064
    .align 2, 0
.L08007058: .4byte 0x00004639
.L0800705C:
    ldr r2, .L08007074 @ =0x00004638
    adds r1, r7, r2
    movs r0, #1
    strb r0, [r1]
.L08007064:
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08007074: .4byte 0x00004638

