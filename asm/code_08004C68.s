.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

    thumb_func_start func_08004C68
func_08004C68: @ 0x08004C68
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x5c
    str r0, [sp, #0x4c]
    add r0, sp, #4
    bl func_08008980
    movs r0, #0x23
    bl func_08008DB8
    add r4, sp, #8
    movs r0, #0
    strb r0, [r4]
    add r3, sp, #0x18
    strb r0, [r3]
    add r2, sp, #0x28
    strb r0, [r2]
    subs r0, #4
    mov r1, r8
    ands r0, r1
    movs r1, #0x7d
    rsbs r1, r1, #0
    ands r0, r1
    mov r8, r0
    mov sb, r3
    mov r0, sp
    adds r0, #0x38
    str r0, [sp, #0x54]
    mov r1, sp
    adds r1, #0x44
    str r1, [sp, #0x58]
    adds r6, r0, #0
    add r0, sp, #8
    mov sl, r0
    add r7, sp, #0x40
.L08004CB4:
    adds r0, r6, #0
    ldr r1, .L08004EE8 @ =gUnk_080E8934
    mov r2, sl
    bl func_08007078
    adds r0, r7, #0
    adds r1, r6, #0
    bl func_080070D4
    ldr r1, [sp, #0x40]
    cmp r1, #0
    beq .L08004CD8
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08004CD8:
    adds r0, r6, #0
    bl func_08007110
    adds r5, r0, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, #0xc
    bls .L08004CEC
    movs r4, #0xc
.L08004CEC:
    mov r0, sl
    adds r1, r5, #0
    adds r2, r4, #0
    bl memcpy
    mov r1, sl
    adds r0, r1, r4
    movs r1, #0
    strb r1, [r0]
    adds r0, r6, #0
    movs r1, #2
    bl func_080070A4
    adds r0, r6, #0
    mov r1, r8
    bl func_0806E9D8
    adds r0, r7, #0
    adds r1, r6, #0
    bl func_0806EA30
    ldr r1, [sp, #0x40]
    cmp r1, #0
    beq .L08004D28
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08004D28:
    adds r0, r6, #0
    bl func_0806EA6C
    mov r8, r0
    adds r0, r6, #0
    movs r1, #2
    bl func_0806EA00
    adds r0, r6, #0
    ldr r1, .L08004EEC @ =gUnk_080E893C
    mov r2, sb
    bl func_08007078
    adds r0, r7, #0
    adds r1, r6, #0
    bl func_080070D4
    ldr r1, [sp, #0x40]
    cmp r1, #0
    beq .L08004D5C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08004D5C:
    adds r0, r6, #0
    bl func_08007110
    adds r5, r0, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, #0xc
    bls .L08004D70
    movs r4, #0xc
.L08004D70:
    mov r0, sb
    adds r1, r5, #0
    adds r2, r4, #0
    bl memcpy
    mov r1, sb
    adds r0, r1, r4
    movs r1, #0
    strb r1, [r0]
    adds r0, r6, #0
    movs r1, #2
    bl func_080070A4
    adds r0, r6, #0
    ldr r1, .L08004EF0 @ =gUnk_080E8944
    add r2, sp, #0x28
    bl func_08007078
    adds r0, r7, #0
    adds r1, r6, #0
    bl func_080070D4
    ldr r1, [sp, #0x40]
    cmp r1, #0
    beq .L08004DAE
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08004DAE:
    adds r0, r6, #0
    bl func_08007110
    adds r5, r0, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, #0xc
    bls .L08004DC2
    movs r4, #0xc
.L08004DC2:
    add r0, sp, #0x28
    adds r1, r5, #0
    adds r2, r4, #0
    bl memcpy
    mov r0, sp
    adds r0, r0, r4
    adds r0, #0x28
    movs r1, #0
    strb r1, [r0]
    adds r0, r6, #0
    movs r1, #2
    bl func_080070A4
    add r0, sp, #0x28
    str r0, [sp]
    adds r0, r6, #0
    mov r1, sl
    mov r2, r8
    mov r3, sb
    bl func_0800598C
    adds r0, r7, #0
    adds r1, r6, #0
    bl func_08005A00
    ldr r1, [sp, #0x40]
    cmp r1, #0
    beq .L08004E08
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08004E08:
    adds r0, r6, #0
    bl func_08005A3C
    adds r4, r0, #0
    lsls r4, r4, #0x18
    lsrs r4, r4, #0x18
    adds r0, r6, #0
    movs r1, #2
    bl func_080059D0
    cmp r4, #0
    bne .L08004E22
    b .L08004CB4
.L08004E22:
    movs r0, #0x38
    bl __builtin_new
    adds r6, r0, #0
    mov r0, sb
    add r1, sp, #8
    mov sl, r1
    mov r1, sp
    adds r1, #0x28
    str r1, [sp, #0x50]
    ldr r1, .L08004EF4 @ =__vt_13AUnk_0800080C
    str r1, [r6]
    ldr r1, .L08004EF8 @ =vtable_unk_080E5A78
    adds r5, r6, #0
    stm r5!, {r1}
    bl strlen
    adds r4, r0, #0
    cmp r4, #0xc
    bls .L08004E4C
    movs r4, #0xc
.L08004E4C:
    adds r0, r5, #0
    mov r1, sb
    adds r2, r4, #0
    bl memcpy
    adds r0, r5, r4
    movs r7, #0
    strb r7, [r0]
    adds r5, r6, #0
    adds r5, #0x14
    mov r0, sl
    bl strlen
    adds r4, r0, #0
    cmp r4, #0xc
    bls .L08004E6E
    movs r4, #0xc
.L08004E6E:
    adds r0, r5, #0
    add r1, sp, #8
    adds r2, r4, #0
    bl memcpy
    adds r0, r5, r4
    strb r7, [r0]
    adds r0, r6, #0
    adds r0, #0x24
    mov r1, r8
    strb r1, [r0]
    adds r5, r6, #0
    adds r5, #0x28
    ldr r0, [sp, #0x50]
    bl strlen
    adds r4, r0, #0
    cmp r4, #0xc
    bls .L08004E96
    movs r4, #0xc
.L08004E96:
    adds r0, r5, #0
    add r1, sp, #0x28
    adds r2, r4, #0
    bl memcpy
    adds r0, r5, r4
    movs r1, #0
    strb r1, [r0]
    str r6, [sp, #0x38]
    ldr r0, [sp, #0x54]
    str r0, [sp, #0x44]
    ldr r1, [sp, #0x58]
    str r6, [r1, #4]
    movs r0, #0
    ldr r1, [sp, #0x54]
    str r0, [r1]
    ldr r0, [sp, #0x4c]
    str r6, [r0]
    ldr r1, [sp, #0x38]
    cmp r1, #0
    beq .L08004ECC
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08004ECC:
    add r0, sp, #4
    movs r1, #2
    bl func_08008A68
    ldr r0, [sp, #0x4c]
    add sp, #0x5c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L08004EE8: .4byte gUnk_080E8934
.L08004EEC: .4byte gUnk_080E893C
.L08004EF0: .4byte gUnk_080E8944
.L08004EF4: .4byte __vt_13AUnk_0800080C
.L08004EF8: .4byte vtable_unk_080E5A78

    thumb_func_start func_08004EFC
func_08004EFC: @ 0x08004EFC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x28
    adds r7, r0, #0
    adds r6, r1, #0
    mov r8, r2
    str r3, [sp, #0x24]
    bl func_08008444
    ldr r0, .L080050A4 @ =vtable_unk_080E5A98
    str r0, [r7, #4]
    movs r0, #3
    add r5, sp, #0x10
    add r1, sp, #0x14
    mov sb, r1
    movs r1, #1
    rsbs r1, r1, #0
.L08004F24:
    subs r0, #1
    cmp r0, r1
    bne .L08004F24
    movs r0, #3
    movs r1, #1
    rsbs r1, r1, #0
.L08004F30:
    subs r0, #1
    cmp r0, r1
    bne .L08004F30
    ldr r2, .L080050A8 @ =0x00001A28
    adds r1, r7, r2
    movs r0, #2
    str r0, [r1]
    movs r0, #4
    bl __builtin_new
    adds r4, r0, #0
    add r0, sp, #0xc
    bl func_0800835C
    adds r0, r5, #0
    bl func_0800770C
    movs r0, #0
    str r0, [sp]
    add r0, sp, #0xc
    str r0, [sp, #4]
    str r5, [sp, #8]
    adds r0, r4, #0
    movs r1, #0
    movs r2, #0x1c
    movs r3, #4
    bl func_08050CC0
    ldr r2, .L080050AC @ =0x00001A2C
    adds r1, r7, r2
    str r0, [r1]
    adds r0, r5, #0
    movs r1, #2
    bl func_08007714
    add r0, sp, #0xc
    movs r1, #2
    bl func_08008364
    ldr r0, .L080050B0 @ =0x00001A30
    adds r4, r7, r0
    movs r0, #0xc8
    bl func_08008D3C
    str r0, [r4]
    ldr r1, .L080050B4 @ =0x00001A34
    adds r0, r7, r1
    movs r1, #3
    movs r3, #0
    movs r2, #1
    rsbs r2, r2, #0
.L08004F96:
    strb r3, [r0]
    adds r0, #0x10
    subs r1, #1
    cmp r1, r2
    bne .L08004F96
    ldr r2, .L080050B8 @ =0x00001A76
    adds r0, r7, r2
    movs r1, #0
    mov sl, r1
    mov r2, sl
    strb r2, [r0]
    ldr r0, .L080050B4 @ =0x00001A34
    adds r5, r7, r0
    adds r0, r6, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, #0xf
    bls .L08004FBE
    movs r4, #0xf
.L08004FBE:
    adds r0, r5, #0
    adds r1, r6, #0
    adds r2, r4, #0
    bl memcpy
    adds r0, r5, r4
    mov r1, sl
    strb r1, [r0]
    mov r2, r8
    lsls r0, r2, #0x19
    lsrs r0, r0, #0x1b
    adds r0, #1
    mov r1, sb
    movs r2, #2
    bl func_0804EC84
    mov r1, r8
    lsls r0, r1, #0x1e
    lsrs r0, r0, #0x1e
    bl func_0800E2E4
    mov sb, r0
    ldr r2, .L080050BC @ =0x00001A44
    adds r6, r7, r2
    mov r4, sb
    adds r0, r6, #0
    bl strlen
    adds r1, r6, r0
    mov r8, r1
    movs r1, #0xf
    subs r5, r1, r0
    cmp r5, #0
    beq .L08005022
    adds r0, r4, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08005010
    adds r4, r5, #0
.L08005010:
    mov r0, r8
    mov r1, sb
    adds r2, r4, #0
    bl memcpy
    mov r2, r8
    adds r0, r2, r4
    mov r1, sl
    strb r1, [r0]
.L08005022:
    adds r0, r6, #0
    bl strlen
    adds r6, r6, r0
    movs r1, #0xf
    subs r5, r1, r0
    cmp r5, #0
    beq .L08005050
    add r0, sp, #0x14
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08005040
    adds r4, r5, #0
.L08005040:
    adds r0, r6, #0
    add r1, sp, #0x14
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
.L08005050:
    ldr r2, .L080050C0 @ =0x00001A54
    adds r5, r7, r2
    ldr r0, [sp, #0x24]
    bl strlen
    adds r4, r0, #0
    cmp r4, #0xf
    bls .L08005062
    movs r4, #0xf
.L08005062:
    adds r0, r5, #0
    ldr r1, [sp, #0x24]
    adds r2, r4, #0
    bl memcpy
    adds r0, r5, r4
    movs r6, #0
    strb r6, [r0]
    ldr r0, .L080050C4 @ =0x00001A64
    adds r5, r7, r0
    ldr r0, [sp, #0x48]
    bl strlen
    adds r4, r0, #0
    cmp r4, #0xf
    bls .L08005084
    movs r4, #0xf
.L08005084:
    adds r0, r5, #0
    ldr r1, [sp, #0x48]
    adds r2, r4, #0
    bl memcpy
    adds r0, r5, r4
    strb r6, [r0]
    adds r0, r7, #0
    add sp, #0x28
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080050A4: .4byte vtable_unk_080E5A98
.L080050A8: .4byte 0x00001A28
.L080050AC: .4byte 0x00001A2C
.L080050B0: .4byte 0x00001A30
.L080050B4: .4byte 0x00001A34
.L080050B8: .4byte 0x00001A76
.L080050BC: .4byte 0x00001A44
.L080050C0: .4byte 0x00001A54
.L080050C4: .4byte 0x00001A64

    thumb_func_start func_080050C8
func_080050C8: @ 0x080050C8
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L080050F0 @ =vtable_unk_080E5A98
    str r0, [r4, #4]
    ldr r1, .L080050F4 @ =0x00001A2C
    adds r0, r4, r1
    ldr r0, [r0]
    cmp r0, #0
    beq .L080050E2
    movs r1, #3
    bl func_08050D0C
.L080050E2:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_080086BC
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080050F0: .4byte vtable_unk_080E5A98
.L080050F4: .4byte 0x00001A2C

    thumb_func_start func_080050F8
func_080050F8: @ 0x080050F8
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x14
    mov sb, r0
    adds r6, r1, #0
    adds r0, r6, #0
    bl func_08005254
    adds r0, r6, #0
    bl func_08005260
    adds r0, r6, #0
    bl func_08005278
    adds r0, r6, #0
    bl func_08008918
    mov r1, sp
    movs r2, #0x3f
    strh r2, [r1]
    adds r0, #0x50
    strh r2, [r0]
    movs r0, #0x10
    bl __builtin_new
    adds r4, r0, #0
    adds r0, r6, #0
    bl func_08008918
    adds r1, r0, #0
    movs r0, #0
    str r0, [r4]
    str r0, [r4, #4]
    ldr r0, .L08005198 @ =vtable_unk_080E5B80
    str r0, [r4, #8]
    adds r5, r4, #0
    adds r5, #0xc
    adds r0, r5, #0
    bl func_08009300
    str r4, [sp, #4]
    ldr r1, .L0800519C @ =0x00000889
    adds r0, r5, #0
    movs r2, #1
    movs r3, #1
    bl func_0800934C
    adds r0, r6, #0
    bl func_08008940
    ldr r2, [r0, #8]
    ldr r1, [sp, #4]
    ldr r2, [r2, #0x10]
    bl _call_via_r2
    movs r4, #0
    movs r5, #0
    add r7, sp, #8
    add r0, sp, #0xc
    mov r8, r0
.L08005174:
    adds r0, r6, #0
    bl func_080087C8
    adds r0, r6, #0
    bl func_080088B8
    adds r0, r6, #0
    bl func_080088D4
    adds r0, r4, #0
    cmp r0, #1
    beq .L080051BA
    cmp r0, #1
    bgt .L080051A0
    cmp r0, #0
    beq .L080051AA
    b .L0800520A
    .align 2, 0
.L08005198: .4byte vtable_unk_080E5B80
.L0800519C: .4byte 0x00000889
.L080051A0:
    cmp r0, #2
    beq .L080051D4
    cmp r0, #3
    beq .L080051FC
    b .L0800520A
.L080051AA:
    ldr r0, [sp, #4]
    ldr r1, [r0]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    blt .L0800520A
    movs r4, #1
    b .L0800520A
.L080051BA:
    adds r0, r6, #0
    bl func_08005800
    ldr r1, .L080051D0 @ =0x00001A74
    adds r0, r6, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0800520A
    movs r4, #2
    b .L0800520A
    .align 2, 0
.L080051D0: .4byte 0x00001A74
.L080051D4:
    ldr r0, [sp, #4]
    adds r0, #0xc
    ldr r1, .L080051F8 @ =0x00000889
    movs r2, #1
    movs r3, #1
    bl func_08009378
    adds r0, r6, #0
    bl func_08008940
    ldr r2, [r0, #8]
    ldr r1, [sp, #4]
    ldr r2, [r2, #0x10]
    bl _call_via_r2
    movs r4, #3
    b .L0800520A
    .align 2, 0
.L080051F8: .4byte 0x00000889
.L080051FC:
    ldr r0, [sp, #4]
    ldr r1, [r0]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    blt .L0800520A
    movs r5, #1
.L0800520A:
    cmp r5, #0
    beq .L08005174
    movs r0, #0
    str r0, [sp, #8]
    str r7, [sp, #0xc]
    mov r1, r8
    str r0, [r1, #4]
    str r0, [r7]
    mov r1, sb
    str r0, [r1]
    ldr r1, [sp, #8]
    cmp r1, #0
    beq .L08005230
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08005230:
    ldr r1, [sp, #4]
    cmp r1, #0
    beq .L08005242
    ldr r0, [r1, #8]
    ldr r2, [r0, #0xc]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08005242:
    mov r0, sb
    add sp, #0x14
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    .section .text.tail08005260, "ax", %progbits
    .if 0
    thumb_func_start func_08005260
func_08005260: @ 0x08005260
    ldr r2, .L08005270 @ =0x00001A75
    adds r1, r0, r2
    movs r2, #0
    strb r2, [r1]
    ldr r1, .L08005274 @ =0x00001A74
    adds r0, r0, r1
    strb r2, [r0]
    bx lr
    .align 2, 0
.L08005270: .4byte 0x00001A75
.L08005274: .4byte 0x00001A74

    .endif
    .section .text.tail08005278, "ax", %progbits
    thumb_func_start func_08005278
func_08005278: @ 0x08005278
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x94
    mov sl, r0
    ldr r0, .L08005488 @ =gUnk_080F9F70
    ldr r0, [r0]
    ldr r1, .L0800548C @ =0x06004B00
    ldr r2, .L08005490 @ =gUnk_080F9F74
    ldr r2, [r2]
    bl func_08008E64
    ldr r0, .L08005494 @ =gUnk_080F9F78
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
    ldr r5, .L08005498 @ =0x00001841
    adds r1, r5, #0
    strh r1, [r2]
    strh r1, [r0, #0xa]
    mov r0, sl
    bl func_08008918
    add r2, sp, #0xc
    ldr r7, .L0800549C @ =0x00001F01
    adds r1, r7, #0
    strh r1, [r2]
    strh r1, [r0, #0xc]
    ldr r0, .L080054A0 @ =0x0600F800
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
    ldr r1, .L080054A4 @ =0x06FFC000
    movs r0, #0
    movs r2, #0x20
    bl func_08008EB8
    movs r0, #0
    mov r8, r0
    add r5, sp, #0x20
    add r1, sp, #0x24
    mov sb, r1
    mov r2, sp
    adds r2, #0x28
    str r2, [sp, #0x64]
    mov r3, sp
    adds r3, #0x2c
    str r3, [sp, #0x68]
    mov r4, sp
    adds r4, #0x30
    str r4, [sp, #0x70]
    mov r7, sp
    adds r7, #0x34
    str r7, [sp, #0x74]
    mov r0, sp
    adds r0, #0x38
    str r0, [sp, #0x78]
    mov r1, sp
    adds r1, #0x10
    str r1, [sp, #0x5c]
    movs r7, #0xc
    movs r6, #2
    mov r4, sl
    adds r4, #0xc
.L0800532E:
    add r0, sp, #0x20
    strh r7, [r0]
    strh r6, [r5, #2]
    ldr r0, [sp, #0x20]
    adds r1, r4, #0
    movs r2, #0
    bl func_0804E7A0
    movs r2, #0xc1
    lsls r2, r2, #2
    adds r4, r4, r2
    movs r3, #1
    add r8, r3
    mov r0, r8
    cmp r0, #3
    bls .L0800532E
    movs r1, #0
    mov r8, r1
    ldr r7, .L080054A8 @ =0x00000C1C
    add r7, sl
    movs r2, #0xfa
    lsls r2, r2, #4
    add r2, sl
    str r2, [sp, #0x54]
    ldr r3, .L080054AC @ =0x00001324
    add r3, sl
    str r3, [sp, #0x58]
    ldr r4, .L080054B0 @ =0x000016A8
    add r4, sl
    str r4, [sp, #0x6c]
    movs r6, #0xe
    movs r5, #2
    ldr r4, .L080054A8 @ =0x00000C1C
    add r4, sl
.L08005372:
    add r0, sp, #0x24
    strh r6, [r0]
    mov r0, sb
    strh r5, [r0, #2]
    ldr r0, [sp, #0x24]
    adds r1, r4, #0
    movs r2, #0
    bl func_0804E7A0
    movs r1, #0xe1
    lsls r1, r1, #2
    adds r4, r4, r1
    movs r2, #1
    add r8, r2
    mov r3, r8
    cmp r3, #3
    bls .L08005372
    movs r4, #0
    mov r8, r4
    movs r6, #0xc
    movs r5, #2
    mov r4, sl
    adds r4, #0xc
.L080053A0:
    mov r0, r8
    lsls r1, r0, #4
    add r1, sl
    ldr r2, .L080054B4 @ =0x00001A34
    adds r1, r1, r2
    add r0, sp, #0x28
    strh r6, [r0]
    ldr r3, [sp, #0x64]
    strh r5, [r3, #2]
    ldr r0, [sp, #0x28]
    str r1, [sp]
    adds r1, r4, #0
    movs r2, #0
    movs r3, #0
    bl func_0804E8F0
    movs r0, #0xc1
    lsls r0, r0, #2
    adds r4, r4, r0
    movs r1, #1
    add r8, r1
    mov r2, r8
    cmp r2, #3
    bls .L080053A0
    ldr r1, .L080054B8 @ =gUnk_080E8958
    movs r4, #0xe
    movs r5, #2
    add r0, sp, #0x2c
    strh r4, [r0]
    ldr r3, [sp, #0x68]
    strh r5, [r3, #2]
    ldr r0, [sp, #0x2c]
    str r1, [sp]
    adds r1, r7, #0
    movs r2, #0
    movs r3, #0
    bl func_0804E8F0
    ldr r1, .L080054BC @ =gUnk_080E8968
    add r0, sp, #0x30
    strh r4, [r0]
    ldr r7, [sp, #0x70]
    strh r5, [r7, #2]
    ldr r0, [sp, #0x30]
    str r1, [sp]
    ldr r1, [sp, #0x54]
    movs r2, #0
    movs r3, #0
    bl func_0804E8F0
    ldr r1, .L080054C0 @ =gUnk_080E8978
    add r0, sp, #0x34
    strh r4, [r0]
    ldr r0, [sp, #0x74]
    strh r5, [r0, #2]
    ldr r0, [sp, #0x34]
    str r1, [sp]
    ldr r1, [sp, #0x58]
    movs r2, #0
    movs r3, #0
    bl func_0804E8F0
    ldr r1, .L080054C4 @ =gUnk_080E8988
    add r0, sp, #0x38
    strh r4, [r0]
    ldr r2, [sp, #0x78]
    strh r5, [r2, #2]
    ldr r0, [sp, #0x38]
    str r1, [sp]
    ldr r1, [sp, #0x6c]
    movs r2, #0
    movs r3, #0
    bl func_0804E8F0
    movs r3, #0
    mov r8, r3
    ldr r4, [sp, #0x5c]
    str r4, [sp, #0x4c]
    movs r5, #0xc0
    lsls r5, r5, #0x13
    str r5, [sp, #0x84]
    mov r7, sl
    adds r7, #0xc
    str r7, [sp, #0x88]
.L08005448:
    mov r0, sl
    bl func_08008910
    adds r6, r0, #0
    add r0, sp, #0x10
    ldr r1, [sp, #0x88]
    ldr r2, [sp, #0x84]
    movs r3, #0xc0
    lsls r3, r3, #2
    bl func_08008F0C
    ldr r1, [r6, #4]
    ldr r0, [r6, #0xc]
    cmp r1, r0
    beq .L080054C8
    cmp r1, #0
    beq .L08005476
    adds r0, r1, #0
    ldr r1, [sp, #0x4c]
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
.L08005476:
    ldr r0, [r6, #4]
    adds r0, #0x10
    str r0, [r6, #4]
    movs r5, #0xc0
    lsls r5, r5, #2
    lsls r5, r5, #2
    str r5, [sp, #0x60]
    b .L08005596
    .align 2, 0
.L08005488: .4byte gUnk_080F9F70
.L0800548C: .4byte 0x06004B00
.L08005490: .4byte gUnk_080F9F74
.L08005494: .4byte gUnk_080F9F78
.L08005498: .4byte 0x00001841
.L0800549C: .4byte 0x00001F01
.L080054A0: .4byte 0x0600F800
.L080054A4: .4byte 0x06FFC000
.L080054A8: .4byte 0x00000C1C
.L080054AC: .4byte 0x00001324
.L080054B0: .4byte 0x000016A8
.L080054B4: .4byte 0x00001A34
.L080054B8: .4byte gUnk_080E8958
.L080054BC: .4byte gUnk_080E8968
.L080054C0: .4byte gUnk_080E8978
.L080054C4: .4byte gUnk_080E8988
.L080054C8:
    str r1, [sp, #0x8c]
    movs r0, #1
    str r0, [sp, #0x40]
    ldr r0, [r6]
    adds r7, r1, #0
    subs r0, r7, r0
    asrs r4, r0, #4
    str r4, [sp, #0x3c]
    add r1, sp, #0x40
    add r0, sp, #0x3c
    cmp r4, #1
    bhs .L080054E2
    adds r0, r1, #0
.L080054E2:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq .L08005500
    lsls r4, r0, #4
    adds r0, r4, #0
    bl malloc
    mov sb, r4
    cmp r0, #0
    bne .L08005504
    mov r0, sb
    bl func_080D3BC0
    b .L08005504
.L08005500:
    movs r0, #0
    mov sb, r0
.L08005504:
    adds r5, r0, #0
    str r5, [sp, #0x90]
    ldr r2, [r6]
    adds r3, r5, #0
    movs r0, #0xc0
    lsls r0, r0, #2
    lsls r0, r0, #2
    str r0, [sp, #0x60]
    ldr r1, [sp, #0x8c]
    cmp r2, r1
    beq .L08005534
.L0800551A:
    cmp r3, #0
    beq .L0800552A
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r5, r7}
    stm r0!, {r4, r5, r7}
    ldr r1, [r1]
    str r1, [r0]
.L0800552A:
    adds r2, #0x10
    adds r3, #0x10
    ldr r0, [sp, #0x8c]
    cmp r2, r0
    bne .L0800551A
.L08005534:
    adds r5, r3, #0
    ldr r0, [sp, #0x40]
    cmp r0, #1
    bne .L08005550
    cmp r5, #0
    beq .L0800554C
    adds r0, r5, #0
    ldr r1, [sp, #0x4c]
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
.L0800554C:
    adds r5, #0x10
    b .L08005572
.L08005550:
    adds r3, r0, #0
    adds r2, r5, #0
    cmp r3, #0
    beq .L08005570
.L08005558:
    cmp r2, #0
    beq .L08005568
    adds r0, r2, #0
    ldr r1, [sp, #0x4c]
    ldm r1!, {r4, r5, r7}
    stm r0!, {r4, r5, r7}
    ldr r1, [r1]
    str r1, [r0]
.L08005568:
    subs r3, #1
    adds r2, #0x10
    cmp r3, #0
    bne .L08005558
.L08005570:
    adds r5, r2, #0
.L08005572:
    ldr r2, [r6, #4]
    ldr r0, [r6]
    adds r1, r0, #0
    cmp r0, r2
    beq .L08005582
.L0800557C:
    adds r1, #0x10
    cmp r1, r2
    bne .L0800557C
.L08005582:
    cmp r0, #0
    beq .L0800558A
    bl free
.L0800558A:
    ldr r0, [sp, #0x90]
    add r0, sb
    ldr r7, [sp, #0x90]
    str r7, [r6]
    str r5, [r6, #4]
    str r0, [r6, #0xc]
.L08005596:
    ldr r0, [sp, #0x84]
    movs r1, #0xc0
    lsls r1, r1, #2
    adds r0, r0, r1
    str r0, [sp, #0x84]
    ldr r2, [sp, #0x88]
    movs r3, #0xc1
    lsls r3, r3, #2
    adds r2, r2, r3
    str r2, [sp, #0x88]
    movs r4, #1
    add r8, r4
    mov r5, r8
    cmp r5, #3
    bhi .L080055B6
    b .L08005448
.L080055B6:
    movs r7, #0
    mov r8, r7
    mov r0, sp
    adds r0, #0xc
    str r0, [sp, #0x50]
    movs r0, #0xc0
    lsls r0, r0, #0x13
    ldr r1, [sp, #0x60]
    adds r0, r1, r0
    str r0, [sp, #0x7c]
    ldr r2, .L08005608 @ =0x00000C1C
    add r2, sl
    str r2, [sp, #0x80]
.L080055D0:
    mov r0, sl
    bl func_08008910
    adds r6, r0, #0
    add r0, sp, #0xc
    ldr r1, [sp, #0x80]
    ldr r2, [sp, #0x7c]
    movs r3, #0xe0
    lsls r3, r3, #2
    bl func_08008F0C
    ldr r1, [r6, #4]
    ldr r0, [r6, #0xc]
    cmp r1, r0
    beq .L0800560C
    cmp r1, #0
    beq .L080055FE
    adds r0, r1, #0
    add r1, sp, #0xc
    ldm r1!, {r3, r4, r5}
    stm r0!, {r3, r4, r5}
    ldr r1, [r1]
    str r1, [r0]
.L080055FE:
    ldr r0, [r6, #4]
    adds r0, #0x10
    str r0, [r6, #4]
    b .L080056CE
    .align 2, 0
.L08005608: .4byte 0x00000C1C
.L0800560C:
    str r1, [sp, #0x8c]
    movs r0, #1
    str r0, [sp, #0x48]
    ldr r0, [r6]
    adds r7, r1, #0
    subs r0, r7, r0
    asrs r4, r0, #4
    str r4, [sp, #0x44]
    add r1, sp, #0x48
    add r0, sp, #0x44
    cmp r4, #1
    bhs .L08005626
    adds r0, r1, #0
.L08005626:
    ldr r0, [r0]
    adds r0, r4, r0
    cmp r0, #0
    beq .L08005644
    lsls r4, r0, #4
    adds r0, r4, #0
    bl malloc
    mov sb, r4
    cmp r0, #0
    bne .L08005648
    mov r0, sb
    bl func_080D3BC0
    b .L08005648
.L08005644:
    movs r0, #0
    mov sb, r0
.L08005648:
    adds r5, r0, #0
    str r5, [sp, #0x90]
    ldr r2, [r6]
    adds r3, r5, #0
    b .L08005666
.L08005652:
    cmp r3, #0
    beq .L08005662
    adds r0, r3, #0
    adds r1, r2, #0
    ldm r1!, {r4, r5, r7}
    stm r0!, {r4, r5, r7}
    ldr r1, [r1]
    str r1, [r0]
.L08005662:
    adds r2, #0x10
    adds r3, #0x10
.L08005666:
    ldr r0, [sp, #0x8c]
    cmp r2, r0
    bne .L08005652
    adds r5, r3, #0
    ldr r0, [sp, #0x48]
    cmp r0, #1
    bne .L08005688
    cmp r5, #0
    beq .L08005684
    adds r0, r5, #0
    ldr r1, [sp, #0x50]
    ldm r1!, {r2, r3, r4}
    stm r0!, {r2, r3, r4}
    ldr r1, [r1]
    str r1, [r0]
.L08005684:
    adds r5, #0x10
    b .L080056AA
.L08005688:
    adds r3, r0, #0
    adds r2, r5, #0
    cmp r3, #0
    beq .L080056A8
.L08005690:
    cmp r2, #0
    beq .L080056A0
    adds r0, r2, #0
    ldr r1, [sp, #0x50]
    ldm r1!, {r4, r5, r7}
    stm r0!, {r4, r5, r7}
    ldr r1, [r1]
    str r1, [r0]
.L080056A0:
    subs r3, #1
    adds r2, #0x10
    cmp r3, #0
    bne .L08005690
.L080056A8:
    adds r5, r2, #0
.L080056AA:
    ldr r2, [r6, #4]
    ldr r0, [r6]
    adds r1, r0, #0
    cmp r0, r2
    beq .L080056BA
.L080056B4:
    adds r1, #0x10
    cmp r1, r2
    bne .L080056B4
.L080056BA:
    cmp r0, #0
    beq .L080056C2
    bl free
.L080056C2:
    ldr r0, [sp, #0x90]
    add r0, sb
    ldr r7, [sp, #0x90]
    str r7, [r6]
    str r5, [r6, #4]
    str r0, [r6, #0xc]
.L080056CE:
    ldr r0, [sp, #0x7c]
    movs r1, #0xe0
    lsls r1, r1, #2
    adds r0, r0, r1
    str r0, [sp, #0x7c]
    ldr r2, [sp, #0x80]
    movs r3, #0xe1
    lsls r3, r3, #2
    adds r2, r2, r3
    str r2, [sp, #0x80]
    movs r4, #1
    add r8, r4
    mov r5, r8
    cmp r5, #3
    bhi .L080056EE
    b .L080055D0
.L080056EE:
    movs r0, #1
    rsbs r0, r0, #0
    ldr r4, .L080057E8 @ =0x0600C000
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r4, #0
    bl func_08008EB8
    movs r7, #0
    mov r8, r7
    movs r1, #0x64
.L08005704:
    movs r5, #0
    mov r2, r8
    lsls r0, r2, #6
    adds r0, r0, r4
.L0800570C:
    strh r1, [r0]
    adds r0, #2
    adds r5, #1
    cmp r5, #0x1d
    bls .L0800570C
    movs r3, #1
    add r8, r3
    mov r5, r8
    cmp r5, #0x13
    bls .L08005704
    movs r5, #2
    ldr r6, .L080057EC @ =0x0600C080
.L08005724:
    movs r7, #0
    mov r8, r7
    lsls r1, r5, #1
    adds r4, r5, #0
    adds r4, #0x6c
    adds r3, r5, #0
    adds r3, #0x5e
    ldr r0, .L080057F0 @ =0x0600C040
    adds r2, r1, r0
.L08005736:
    strh r3, [r2]
    adds r0, r1, r6
    strh r4, [r0]
    adds r4, #0x1c
    adds r3, #0x1c
    adds r2, #0xc0
    adds r1, #0xc0
    movs r7, #1
    add r8, r7
    mov r0, r8
    cmp r0, #3
    bls .L08005736
    adds r5, #1
    cmp r5, #0xf
    bls .L08005724
    movs r5, #0x10
    ldr r1, .L080057F4 @ =0x0000FFF0
    adds r7, r1, #0
    ldr r2, .L080057EC @ =0x0600C080
    mov sb, r2
.L0800575E:
    movs r3, #0
    mov r8, r3
    lsls r1, r5, #1
    adds r6, r5, #1
    adds r0, r5, #0
    adds r0, #0xc
    adds r4, r0, r7
    adds r3, r5, r7
    ldr r5, .L080057F0 @ =0x0600C040
    adds r2, r1, r5
.L08005772:
    strh r3, [r2]
    mov r5, sb
    adds r0, r1, r5
    strh r4, [r0]
    adds r4, #0x18
    adds r3, #0x18
    adds r2, #0xc0
    adds r1, #0xc0
    movs r0, #1
    add r8, r0
    mov r5, r8
    cmp r5, #3
    bls .L08005772
    adds r5, r6, #0
    cmp r5, #0x1b
    bls .L0800575E
    ldr r0, .L080057F8 @ =0x00001A2C
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
    ldr r1, .L080057FC @ =0x00001A30
    add r1, sl
    str r4, [sp]
    str r0, [sp, #4]
    str r1, [sp, #8]
    mov r0, sb
    mov r1, r8
    adds r2, r6, #0
    adds r3, r5, #0
    bl func_08050D3C
    add sp, #0x94
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080057E8: .4byte 0x0600C000
.L080057EC: .4byte 0x0600C080
.L080057F0: .4byte 0x0600C040
.L080057F4: .4byte 0x0000FFF0
.L080057F8: .4byte 0x00001A2C
.L080057FC: .4byte 0x00001A30

    thumb_func_start func_08005800
func_08005800: @ 0x08005800
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xc
    adds r7, r0, #0
    ldr r0, .L0800586C @ =0x00001A2C
    adds r4, r7, r0
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
    ldr r2, .L08005870 @ =0x00001A30
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
    bls .L08005860
    b .L08005974
.L08005860:
    lsls r0, r0, #2
    ldr r1, .L08005874 @ =.L08005878
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0800586C: .4byte 0x00001A2C
.L08005870: .4byte 0x00001A30
.L08005874: .4byte .L08005878
.L08005878: @ jump table
    .4byte .L08005894 @ case 0
    .4byte .L08005974 @ case 1
    .4byte .L08005974 @ case 2
    .4byte .L080058C0 @ case 3
    .4byte .L08005974 @ case 4
    .4byte .L08005974 @ case 5
    .4byte .L08005974 @ case 6
.L08005894:
    ldr r1, .L080058B4 @ =0x00001A75
    adds r0, r7, r1
    ldrb r0, [r0]
    cmp r0, #0
    beq .L080058A6
    ldr r2, .L080058B8 @ =0x00001A74
    adds r1, r7, r2
    movs r0, #1
    strb r0, [r1]
.L080058A6:
    ldr r1, .L080058BC @ =0x00001A2C
    adds r0, r7, r1
    ldr r0, [r0]
    bl func_08050D5C
    b .L08005974
    .align 2, 0
.L080058B4: .4byte 0x00001A75
.L080058B8: .4byte 0x00001A74
.L080058BC: .4byte 0x00001A2C
.L080058C0:
    cmp r6, #5
    bgt .L080058CE
    cmp r6, #4
    bge .L08005974
    cmp r6, #1
    beq .L080058E4
    b .L080058D2
.L080058CE:
    cmp r6, #6
    beq .L08005910
.L080058D2:
    ldr r2, .L080058E0 @ =0x00001A2C
    adds r0, r7, r2
    ldr r0, [r0]
    bl func_08050D74
    b .L08005974
    .align 2, 0
.L080058E0: .4byte 0x00001A2C
.L080058E4:
    ldr r1, .L08005900 @ =0x00001A2C
    adds r0, r7, r1
    ldr r0, [r0]
    ldr r1, .L08005904 @ =gUnk_080E8998
    ldr r2, .L08005908 @ =gUnk_080E89A4
    ldr r3, .L0800590C @ =gUnk_080E89A8
    movs r4, #0
    str r4, [sp]
    str r4, [sp, #4]
    str r4, [sp, #8]
    bl func_08050E30
    b .L08005974
    .align 2, 0
.L08005900: .4byte 0x00001A2C
.L08005904: .4byte gUnk_080E8998
.L08005908: .4byte gUnk_080E89A4
.L0800590C: .4byte gUnk_080E89A8
.L08005910:
    ldr r2, .L08005928 @ =0x00001A2C
    adds r0, r7, r2
    ldr r0, [r0]
    bl func_08050DF0
    cmp r0, #6
    bhi .L08005974
    lsls r0, r0, #2
    ldr r1, .L0800592C @ =.L08005930
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08005928: .4byte 0x00001A2C
.L0800592C: .4byte .L08005930
.L08005930: @ jump table
    .4byte .L08005974 @ case 0
    .4byte .L0800594C @ case 1
    .4byte .L08005964 @ case 2
    .4byte .L08005974 @ case 3
    .4byte .L08005974 @ case 4
    .4byte .L08005974 @ case 5
    .4byte .L08005974 @ case 6
.L0800594C:
    ldr r1, .L0800595C @ =0x00001A75
    adds r0, r7, r1
    movs r1, #1
    strb r1, [r0]
    ldr r2, .L08005960 @ =0x00001A76
    adds r0, r7, r2
    strb r1, [r0]
    b .L08005974
    .align 2, 0
.L0800595C: .4byte 0x00001A75
.L08005960: .4byte 0x00001A76
.L08005964:
    ldr r0, .L08005984 @ =0x00001A75
    adds r1, r7, r0
    movs r2, #0
    movs r0, #1
    strb r0, [r1]
    ldr r1, .L08005988 @ =0x00001A76
    adds r0, r7, r1
    strb r2, [r0]
.L08005974:
    add sp, #0xc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08005984: .4byte 0x00001A75
.L08005988: .4byte 0x00001A76
