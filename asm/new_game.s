    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08003788
func_08003788: @ 0x08003788
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x2c
    adds r6, r1, #0
    str r2, [sp, #0x24]
    movs r0, #0
    mov sb, r0
    mov r1, sb
    strb r1, [r6]
    ldr r2, [sp, #0x24]
    adds r2, #0x10
    mov sl, r2
    movs r3, #0xc8
    str r3, [sp, #0x18]
    ldr r1, [sp, #0x24]
    ldrb r0, [r1, #0x10]
    lsrs r2, r0, #3
    lsls r1, r2, #3
    subs r1, r1, r2
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1d
    adds r1, r1, r0
    str r1, [sp, #0x1c]
    add r2, sp, #0x1c
    add r0, sp, #0x18
    cmp r3, r1
    bls .L080037C6
    adds r0, r2, #0
.L080037C6:
    ldr r0, [r0]
    mov r1, sp
    movs r2, #0
    bl func_0804EC84
    ldr r2, .L08003B24 @ =gUnk_080E874C
    mov r8, r2
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    movs r1, #0x7f
    subs r5, r1, r0
    cmp r5, #0
    beq .L08003802
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L080037F2
    adds r4, r5, #0
.L080037F2:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r0, r7, r4
    mov r1, sb
    strb r1, [r0]
.L08003802:
    mov r8, r6
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    movs r1, #0x7f
    subs r5, r1, r0
    cmp r5, #0
    beq .L08003832
    mov r0, sp
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08003822
    adds r4, r5, #0
.L08003822:
    adds r0, r7, #0
    mov r1, sp
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
.L08003832:
    ldr r2, .L08003B28 @ =gUnk_080E8754
    mov sb, r2
    mov r0, r8
    bl strlen
    mov r1, r8
    adds r7, r1, r0
    movs r1, #0x7f
    subs r5, r1, r0
    cmp r5, #0
    beq .L08003866
    mov r0, sb
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08003856
    adds r4, r5, #0
.L08003856:
    adds r0, r7, #0
    mov r1, sb
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
.L08003866:
    mov r2, sl
    ldrb r0, [r2, #1]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    bl func_0800E2E4
    mov r8, r0
    mov r4, r8
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    movs r1, #0x7f
    subs r5, r1, r0
    cmp r5, #0
    beq .L080038A4
    adds r0, r4, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08003894
    adds r4, r5, #0
.L08003894:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
.L080038A4:
    mov r1, sl
    ldrb r0, [r1, #1]
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1b
    adds r0, #1
    mov r1, sp
    movs r2, #0
    bl func_0804EC84
    ldr r2, .L08003B2C @ =gUnk_080E8758
    mov r8, r2
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    movs r1, #0x7f
    subs r5, r1, r0
    cmp r5, #0
    beq .L080038E8
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L080038D8
    adds r4, r5, #0
.L080038D8:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
.L080038E8:
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    movs r1, #0x7f
    subs r5, r1, r0
    cmp r5, #0
    beq .L08003916
    mov r0, sp
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08003906
    adds r4, r5, #0
.L08003906:
    adds r0, r7, #0
    mov r1, sp
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
.L08003916:
    ldr r0, .L08003B30 @ =gUnk_080E8760
    mov r8, r0
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    movs r1, #0x7f
    subs r5, r1, r0
    cmp r5, #0
    beq .L08003948
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08003938
    adds r4, r5, #0
.L08003938:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
.L08003948:
    mov r1, sl
    ldrb r2, [r1]
    lsls r2, r2, #0x1d
    lsrs r2, r2, #0x1d
    ldrb r3, [r1, #1]
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
    adds r2, r3, r1
    cmp r2, #6
    bls .L0800397A
    adds r0, r2, #0
    movs r1, #7
    bl __umodsi3
    adds r2, r0, #0
.L0800397A:
    movs r0, #7
    ands r2, r0
    adds r0, r2, #0
    bl func_0800E304
    mov r8, r0
    mov sb, r6
    mov r4, r8
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    movs r1, #0x7f
    subs r5, r1, r0
    cmp r5, #0
    beq .L080039B8
    adds r0, r4, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L080039A8
    adds r4, r5, #0
.L080039A8:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
.L080039B8:
    ldr r2, .L08003B34 @ =gUnk_080E8764
    mov r8, r2
    mov r0, sb
    bl strlen
    mov r1, sb
    adds r7, r1, r0
    movs r1, #0x7f
    subs r5, r1, r0
    cmp r5, #0
    beq .L080039EC
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L080039DC
    adds r4, r5, #0
.L080039DC:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
.L080039EC:
    movs r1, #0xd
    add r0, sp, #0x20
    strb r1, [r0]
    adds r0, r6, #0
    bl strlen
    adds r3, r0, #1
    cmp r3, #0x7f
    bhi .L08003A0A
    adds r1, r6, r0
    movs r2, #0
    movs r0, #0xd
    strb r0, [r1]
    adds r0, r6, r3
    strb r2, [r0]
.L08003A0A:
    movs r1, #0xa
    mov r0, sp
    adds r0, #0x21
    strb r1, [r0]
    adds r0, r6, #0
    bl strlen
    adds r3, r0, #1
    cmp r3, #0x7f
    bhi .L08003A2A
    adds r1, r6, r0
    movs r2, #0
    movs r0, #0xa
    strb r0, [r1]
    adds r0, r6, r3
    strb r2, [r0]
.L08003A2A:
    ldr r0, [sp, #0x24]
    adds r0, #0x14
    bl method_08009AF4__C4Farm
    mov r8, r0
    mov r4, r8
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    movs r1, #0x7f
    subs r5, r1, r0
    cmp r5, #0
    beq .L08003A64
    adds r0, r4, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08003A54
    adds r4, r5, #0
.L08003A54:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
.L08003A64:
    ldr r2, .L08003B38 @ =gUnk_080E8768
    mov r8, r2
    adds r0, r6, #0
    bl strlen
    adds r7, r6, r0
    movs r1, #0x7f
    subs r5, r1, r0
    cmp r5, #0
    beq .L08003A96
    mov r0, r8
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08003A86
    adds r4, r5, #0
.L08003A86:
    adds r0, r7, #0
    mov r1, r8
    adds r2, r4, #0
    bl memcpy
    adds r1, r7, r4
    movs r0, #0
    strb r0, [r1]
.L08003A96:
    movs r1, #0xd
    mov r0, sp
    adds r0, #0x22
    strb r1, [r0]
    adds r0, r6, #0
    bl strlen
    adds r3, r0, #1
    cmp r3, #0x7f
    bhi .L08003AB6
    adds r1, r6, r0
    movs r2, #0
    movs r0, #0xd
    strb r0, [r1]
    adds r0, r6, r3
    strb r2, [r0]
.L08003AB6:
    movs r1, #0xa
    mov r0, sp
    adds r0, #0x23
    strb r1, [r0]
    adds r0, r6, #0
    bl strlen
    adds r3, r0, #1
    cmp r3, #0x7f
    bhi .L08003AD6
    adds r1, r6, r0
    movs r2, #0
    movs r0, #0xa
    strb r0, [r1]
    adds r0, r6, r3
    strb r2, [r0]
.L08003AD6:
    ldr r1, [sp, #0x24]
    ldr r2, .L08003B3C @ =0x00001BD8
    adds r0, r1, r2
    bl func_0800E4E0
    adds r7, r0, #0
    adds r4, r7, #0
    adds r0, r6, #0
    bl strlen
    adds r6, r6, r0
    movs r1, #0x7f
    subs r5, r1, r0
    cmp r5, #0
    beq .L08003B12
    adds r0, r4, #0
    bl strlen
    adds r4, r0, #0
    cmp r4, r5
    bls .L08003B02
    adds r4, r5, #0
.L08003B02:
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r4, #0
    bl memcpy
    adds r1, r6, r4
    movs r0, #0
    strb r0, [r1]
.L08003B12:
    add sp, #0x2c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08003B24: .4byte gUnk_080E874C
.L08003B28: .4byte gUnk_080E8754
.L08003B2C: .4byte gUnk_080E8758
.L08003B30: .4byte gUnk_080E8760
.L08003B34: .4byte gUnk_080E8764
.L08003B38: .4byte gUnk_080E8768
.L08003B3C: .4byte 0x00001BD8

    thumb_func_start func_08003B40
func_08003B40: @ 0x08003B40
    push {r4, r5, lr}
    sub sp, #0x14
    adds r5, r0, #0
    bl func_08008918
    mov r1, sp
    movs r2, #0x3f
    strh r2, [r1]
    adds r0, #0x50
    strh r2, [r0]
    adds r0, r5, #0
    bl func_08008918
    adds r1, r0, #0
    add r4, sp, #4
    movs r0, #0
    str r0, [sp, #4]
    str r0, [r4, #4]
    ldr r0, .L08003B8C @ =vtable_unk_080E5B80
    str r0, [sp, #0xc]
    add r0, sp, #0x10
    bl func_08009300
    ldr r1, .L08003B90 @ =0x00000889
    add r0, sp, #0x10
    movs r2, #1
    movs r3, #1
    bl func_0800934C
    adds r0, r5, #0
    bl func_08008940
    ldr r1, [r0, #8]
    ldr r2, [r1, #0x10]
    adds r1, r4, #0
    bl _call_via_r2
    b .L08003B9A
    .align 2, 0
.L08003B8C: .4byte vtable_unk_080E5B80
.L08003B90: .4byte 0x00000889
.L08003B94:
    adds r0, r5, #0
    bl func_080087C8
.L08003B9A:
    ldr r1, [sp, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    blt .L08003B94
    adds r0, r4, #0
    movs r1, #2
    bl func_080094B8
    add sp, #0x14
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_08003BB4
func_08003BB4: @ 0x08003BB4
    push {r4, r5, lr}
    sub sp, #0x14
    adds r5, r0, #0
    bl func_08008918
    mov r1, sp
    movs r2, #0x3f
    strh r2, [r1]
    adds r0, #0x50
    strh r2, [r0]
    adds r0, r5, #0
    bl func_08008918
    adds r1, r0, #0
    add r4, sp, #4
    movs r0, #0
    str r0, [sp, #4]
    str r0, [r4, #4]
    ldr r0, .L08003C00 @ =vtable_unk_080E5B80
    str r0, [sp, #0xc]
    add r0, sp, #0x10
    bl func_08009300
    ldr r1, .L08003C04 @ =0x00000889
    add r0, sp, #0x10
    movs r2, #1
    movs r3, #1
    bl func_08009378
    adds r0, r5, #0
    bl func_08008940
    ldr r1, [r0, #8]
    ldr r2, [r1, #0x10]
    adds r1, r4, #0
    bl _call_via_r2
    b .L08003C0E
    .align 2, 0
.L08003C00: .4byte vtable_unk_080E5B80
.L08003C04: .4byte 0x00000889
.L08003C08:
    adds r0, r5, #0
    bl func_080087C8
.L08003C0E:
    ldr r1, [sp, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    blt .L08003C08
    adds r0, r4, #0
    movs r1, #2
    bl func_080094B8
    add sp, #0x14
    pop {r4, r5}
    pop {r0}
    bx r0

    thumb_func_start func_08003C28
func_08003C28: @ 0x08003C28
    push {r4, r5, r6, lr}
    mov r6, sb
    mov r5, r8
    push {r5, r6}
    sub sp, #0xc
    adds r4, r0, #0
    bl func_080088DC
    mov sb, r0
    adds r0, r4, #0
    bl func_08008920
    mov r8, r0
    adds r0, r4, #0
    bl func_08008918
    adds r6, r0, #0
    adds r0, r4, #0
    bl func_08008940
    adds r5, r0, #0
    adds r0, r4, #0
    bl func_0800894C
    adds r1, r4, #0
    adds r1, #0x10
    adds r4, #0x14
    str r5, [sp]
    str r0, [sp, #4]
    str r4, [sp, #8]
    adds r0, r1, #0
    mov r1, sb
    mov r2, r8
    adds r3, r6, #0
    bl func_08050D3C
    add sp, #0xc
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08003C80
func_08003C80: @ 0x08003C80
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    ldr r4, .L08003DBC @ =0xFFFFD2D8
    add sp, r4
    ldr r4, .L08003DC0 @ =0x0600E800
    ldr r1, .L08003DC4 @ =0x06007FE0
    movs r0, #0
    movs r2, #0x20
    bl func_08008EB8
    movs r0, #1
    rsbs r0, r0, #0
    movs r2, #0x80
    lsls r2, r2, #4
    adds r1, r4, #0
    bl func_08008EB8
    movs r3, #0
    movs r2, #0
    ldr r5, .L08003DC8 @ =0x00002D08
    add r5, sp
    mov r0, sp
    adds r0, #8
    ldr r1, .L08003DCC @ =0x00002D24
    add r1, sp
    str r0, [r1]
    ldr r0, .L08003DD0 @ =0x00002D0C
    add r0, sp
    ldr r1, .L08003DD4 @ =0x00002D18
    add r1, sp
    str r0, [r1]
    ldr r0, .L08003DD8 @ =0x00002D10
    add r0, sp
    ldr r1, .L08003DDC @ =0x00002D1C
    add r1, sp
    str r0, [r1]
    ldr r0, .L08003DE0 @ =0x00002D14
    add r0, sp
    ldr r1, .L08003DE4 @ =0x00002D20
    add r1, sp
    str r0, [r1]
    adds r4, #0x40
.L08003CDA:
    movs r1, #0
    lsls r0, r2, #6
    adds r2, #1
    adds r0, r0, r4
.L08003CE2:
    strh r3, [r0]
    adds r3, #1
    adds r0, #2
    adds r1, #1
    cmp r1, #0x1d
    bls .L08003CE2
    cmp r2, #0xb
    bls .L08003CDA
    movs r1, #0x1e
    movs r2, #0xc
    ldr r0, .L08003DC8 @ =0x00002D08
    add r0, sp
    strh r1, [r0]
    strh r2, [r5, #2]
    ldr r0, [r0]
    ldr r2, .L08003DCC @ =0x00002D24
    add r2, sp
    ldr r1, [r2]
    movs r2, #0
    bl func_0804E7A0
    movs r7, #0
    movs r3, #0xc
    mov sl, r3
    ldr r0, .L08003DCC @ =0x00002D24
    add r0, sp
    ldr r6, [r0]
    movs r1, #0
    mov sb, r1
    ldr r2, .L08003DD0 @ =0x00002D0C
    add r2, sp
    mov r8, r2
.L08003D22:
    ldr r4, .L08003DE8 @ =gUnk_080E8704
    add r4, sb
    lsls r5, r7, #4
    ldr r1, [r4]
    movs r0, #0x1e
    mov r3, r8
    strh r0, [r3]
    mov r3, sl
    ldr r2, .L08003DD4 @ =0x00002D18
    add r2, sp
    ldr r2, [r2]
    strh r3, [r2, #2]
    mov r3, r8
    ldr r0, [r3]
    str r1, [sp]
    adds r1, r6, #0
    movs r2, #0x10
    adds r3, r5, #0
    bl func_0804E8F0
    ldr r1, [r4, #4]
    ldr r0, .L08003DD8 @ =0x00002D10
    add r0, sp
    movs r2, #0x1e
    strh r2, [r0]
    mov r2, sl
    ldr r3, .L08003DDC @ =0x00002D1C
    add r3, sp
    ldr r3, [r3]
    strh r2, [r3, #2]
    ldr r0, [r0]
    str r1, [sp]
    adds r1, r6, #0
    movs r2, #0x80
    adds r3, r5, #0
    bl func_0804E8F0
    ldr r1, [r4, #8]
    ldr r0, .L08003DE0 @ =0x00002D14
    add r0, sp
    movs r2, #0x1e
    strh r2, [r0]
    mov r2, sl
    ldr r3, .L08003DE4 @ =0x00002D20
    add r3, sp
    ldr r3, [r3]
    strh r2, [r3, #2]
    ldr r0, [r0]
    str r1, [sp]
    adds r1, r6, #0
    movs r2, #0xc0
    adds r3, r5, #0
    bl func_0804E8F0
    movs r0, #0xc
    add sb, r0
    adds r7, #1
    cmp r7, #5
    bls .L08003D22
    movs r1, #0xc0
    lsls r1, r1, #0x13
    movs r2, #0xb4
    lsls r2, r2, #6
    ldr r3, .L08003DCC @ =0x00002D24
    add r3, sp
    ldr r0, [r3]
    bl func_08008E64
    ldr r3, .L08003DEC @ =0x00002D28
    add sp, r3
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08003DBC: .4byte 0xFFFFD2D8
.L08003DC0: .4byte 0x0600E800
.L08003DC4: .4byte 0x06007FE0
.L08003DC8: .4byte 0x00002D08
.L08003DCC: .4byte 0x00002D24
.L08003DD0: .4byte 0x00002D0C
.L08003DD4: .4byte 0x00002D18
.L08003DD8: .4byte 0x00002D10
.L08003DDC: .4byte 0x00002D1C
.L08003DE0: .4byte 0x00002D14
.L08003DE4: .4byte 0x00002D20
.L08003DE8: .4byte gUnk_080E8704
.L08003DEC: .4byte 0x00002D28

    thumb_func_start func_08003DF0
func_08003DF0: @ 0x08003DF0
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    str r2, [sp]
    str r3, [sp, #4]
    mov r0, sp
    ldrb r1, [r0]
    adds r1, #8
    lsls r0, r4, #1
    adds r0, #1
    lsls r0, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    ldr r0, .L08003E78 @ =0xFFFFFF00
    ldr r2, [sp]
    ands r2, r0
    orrs r2, r1
    str r2, [sp]
    lsls r0, r2, #7
    lsrs r3, r0, #0x17
    adds r0, r5, #0
    adds r0, #0x84
    adds r0, r0, r4
    ldrb r0, [r0]
    adds r1, r3, #0
    adds r1, #0x80
    cmp r0, #0
    beq .L08003E2E
    adds r1, #0x40
.L08003E2E:
    ldr r0, .L08003E7C @ =0x000001FF
    ands r1, r0
    lsls r0, r1, #0x10
    ldr r1, .L08003E80 @ =0xFE00FFFF
    ands r1, r2
    orrs r1, r0
    str r1, [sp]
    cmp r4, #1
    bne .L08003E56
    adds r0, r5, #0
    adds r0, #0x80
    ldr r0, [r0]
    cmp r0, #1
    beq .L08003E56
    ldr r0, .L08003E84 @ =0xFFFFFCFF
    ands r0, r1
    movs r1, #0x80
    lsls r1, r1, #2
    orrs r0, r1
    str r0, [sp]
.L08003E56:
    adds r0, r5, #0
    bl func_08008920
    mov r2, sp
    movs r1, #0x7f
    ands r1, r4
    lsls r1, r1, #3
    adds r1, #4
    adds r0, r0, r1
    ldr r1, [sp]
    str r1, [r0]
    ldrh r1, [r2, #4]
    strh r1, [r0, #4]
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08003E78: .4byte 0xFFFFFF00
.L08003E7C: .4byte 0x000001FF
.L08003E80: .4byte 0xFE00FFFF
.L08003E84: .4byte 0xFFFFFCFF

    thumb_func_start func_08003E88
func_08003E88: @ 0x08003E88
    push {r4, r5, lr}
    sub sp, #8
    adds r5, r0, #0
    adds r4, r1, #0
    cmp r4, #1
    bne .L08003E96
    movs r4, #0
.L08003E96:
    str r2, [sp]
    str r3, [sp, #4]
    mov r0, sp
    ldrb r1, [r0]
    adds r1, #8
    lsls r0, r4, #1
    adds r0, #1
    lsls r0, r0, #3
    adds r1, r1, r0
    lsls r1, r1, #0x18
    lsrs r1, r1, #0x18
    ldr r0, .L08003EE0 @ =0xFFFFFF00
    ldr r2, [sp]
    ands r2, r0
    orrs r2, r1
    lsls r1, r2, #7
    lsrs r1, r1, #0x17
    adds r1, #0x10
    ldr r0, .L08003EE4 @ =0x000001FF
    ands r1, r0
    lsls r1, r1, #0x10
    ldr r0, .L08003EE8 @ =0xFE00FFFF
    ands r0, r2
    orrs r0, r1
    str r0, [sp]
    adds r0, r5, #0
    bl func_08008920
    mov r2, sp
    ldr r1, [sp]
    str r1, [r0, #0x34]
    ldrh r1, [r2, #4]
    strh r1, [r0, #0x38]
    add sp, #8
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08003EE0: .4byte 0xFFFFFF00
.L08003EE4: .4byte 0x000001FF
.L08003EE8: .4byte 0xFE00FFFF

    thumb_func_start func_08003EEC
func_08003EEC: @ 0x08003EEC
    push {lr}
    adds r2, r0, #0
    movs r1, #0
    adds r0, #0x80
    ldr r0, [r0]
    cmp r0, #5
    bhi .L08003F7E
    lsls r0, r0, #2
    ldr r1, .L08003F04 @ =.L08003F08
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08003F04: .4byte .L08003F08
.L08003F08: @ jump table
    .4byte .L08003F20 @ case 0
    .4byte .L08003F38 @ case 1
    .4byte .L08003F64 @ case 2
    .4byte .L08003F6C @ case 3
    .4byte .L08003F74 @ case 4
    .4byte .L08003F7C @ case 5
.L08003F20:
    adds r0, r2, #0
    adds r0, #0x84
    ldrb r0, [r0]
    ldr r1, .L08003F30 @ =gUnk_080E877C
    cmp r0, #0
    beq .L08003F7E
    ldr r1, .L08003F34 @ =gUnk_080E8770
    b .L08003F7E
    .align 2, 0
.L08003F30: .4byte gUnk_080E877C
.L08003F34: .4byte gUnk_080E8770
.L08003F38:
    adds r0, r2, #0
    adds r0, #0x85
    ldrb r0, [r0]
    lsls r1, r0, #7
    adds r0, r1, r2
    adds r0, #0x98
    movs r3, #0
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08003F4E
    movs r3, #1
.L08003F4E:
    cmp r3, #0
    bne .L08003F5A
    adds r0, r1, r2
    adds r1, r0, #0
    adds r1, #0x98
    b .L08003F7E
.L08003F5A:
    ldr r1, .L08003F60 @ =gUnk_080E878C
    b .L08003F7E
    .align 2, 0
.L08003F60: .4byte gUnk_080E878C
.L08003F64:
    ldr r1, .L08003F68 @ =gUnk_080E87A4
    b .L08003F7E
    .align 2, 0
.L08003F68: .4byte gUnk_080E87A4
.L08003F6C:
    ldr r1, .L08003F70 @ =gUnk_080E87FC
    b .L08003F7E
    .align 2, 0
.L08003F70: .4byte gUnk_080E87FC
.L08003F74:
    ldr r1, .L08003F78 @ =gUnk_080E8828
    b .L08003F7E
    .align 2, 0
.L08003F78: .4byte gUnk_080E8828
.L08003F7C:
    ldr r1, .L08003F94 @ =gUnk_080E8878
.L08003F7E:
    adds r0, r2, #0
    adds r0, #0x10
    cmp r1, #0
    bne .L08003F88
    ldr r1, .L08003F98 @ =gUnk_080E86C0
.L08003F88:
    movs r2, #0
    movs r3, #0
    bl func_08050DC8
    pop {r0}
    bx r0
    .align 2, 0
.L08003F94: .4byte gUnk_080E8878
.L08003F98: .4byte gUnk_080E86C0

    thumb_func_start func_08003F9C
func_08003F9C: @ 0x08003F9C
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x18
    adds r5, r0, #0
    ldr r0, [r5, #8]
    cmp r0, #0
    beq .L0800406A
    adds r0, r5, #0
    adds r0, #0x85
    ldrb r0, [r0]
    mov r8, r0
    adds r4, r5, #0
    adds r4, #0x90
    adds r0, r4, #0
    mov r1, r8
    bl func_080003DC
    str r0, [sp, #4]
    movs r0, #3
    mov sb, r0
    adds r7, r4, #0
    adds r1, r5, #0
    adds r1, #0x10
    str r1, [sp, #0x10]
    adds r0, r5, #0
    adds r0, #0x8c
    str r0, [sp, #0xc]
    adds r1, #8
    str r1, [sp, #0x14]
    mov r0, sp
    str r0, [sp, #8]
    mov r1, r8
    lsls r6, r1, #7
    adds r4, r6, r5
    adds r4, #0x98
    movs r0, #0x80
    lsls r0, r0, #5
    mov sl, r0
.L08003FEE:
    mov r0, sl
    bl func_08000528
    mov r1, sl
    ands r1, r0
    ldr r0, [sp, #8]
    strh r1, [r0]
    ldr r0, [r5, #8]
    adds r1, r7, #0
    ldr r2, [sp, #4]
    bl func_080115B0
    cmp r0, #0
    bne .L08004052
    adds r1, r6, #0
    adds r1, #0x98
    ldr r2, [r5, #8]
    adds r0, r5, #0
    adds r1, r5, r1
    bl func_08003788
    ldr r0, [sp, #0x10]
    adds r1, r4, #0
    movs r2, #0
    movs r3, #0
    bl func_08050DC8
    movs r0, #3
    ldr r1, [sp, #0xc]
    str r0, [r1]
    ldr r0, [sp, #0x14]
    movs r1, #0xc5
    bl func_08008B6C
    adds r0, r7, #0
    mov r1, r8
    bl func_080003E8
    adds r0, r7, #0
    mov r1, r8
    bl func_08000470
    mov r1, sp
    ldrh r0, [r1]
    cmp r0, #0
    beq .L0800404E
    bl func_080004F4
.L0800404E:
    movs r0, #1
    b .L0800408C
.L08004052:
    mov r1, sp
    ldrh r0, [r1]
    cmp r0, #0
    beq .L0800405E
    bl func_080004F4
.L0800405E:
    movs r0, #1
    rsbs r0, r0, #0
    add sb, r0
    mov r1, sb
    cmp r1, #0
    bne .L08003FEE
.L0800406A:
    adds r0, r5, #0
    adds r0, #0x10
    ldr r1, .L0800409C @ =gUnk_080E88C8
    movs r2, #0
    movs r3, #0
    bl func_08050DC8
    adds r1, r5, #0
    adds r1, #0x8c
    movs r0, #3
    str r0, [r1]
    adds r0, r5, #0
    adds r0, #0x18
    movs r1, #0xc7
    bl func_08008B6C
    movs r0, #0
.L0800408C:
    add sp, #0x18
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L0800409C: .4byte gUnk_080E88C8

    thumb_func_start func_080040A0
func_080040A0: @ 0x080040A0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x10
    adds r6, r0, #0
    adds r0, #0x85
    ldrb r0, [r0]
    mov r8, r0
    adds r4, r6, #0
    adds r4, #0x90
    adds r0, r4, #0
    mov r1, r8
    bl func_080003DC
    mov sl, r0
    movs r0, #0
    str r0, [sp, #8]
    movs r7, #3
    add r0, sp, #8
    mov sb, r0
    str r4, [sp, #0xc]
.L080040CE:
    mov r5, sp
    movs r4, #0x80
    lsls r4, r4, #5
    adds r0, r4, #0
    bl func_08000528
    ands r4, r0
    strh r4, [r5]
    ldr r0, .L08004118 @ =0x000034F4
    bl __builtin_new
    adds r1, r6, #0
    adds r1, #0x90
    mov r2, sl
    mov r3, sb
    bl func_08011650
    adds r1, r0, #0
    str r1, [sp, #4]
    ldr r0, [sp, #8]
    cmp r0, #0
    bne .L0800417C
    ldr r4, [r6, #8]
    cmp r4, #0
    beq .L0800411C
    adds r0, r4, #0
    movs r1, #2
    bl func_080D4480
    ldr r0, [r6, #8]
    cmp r0, #0
    beq .L0800414A
    ldr r1, [sp, #4]
    bl func_080D4178
    b .L0800414A
    .align 2, 0
.L08004118: .4byte 0x000034F4
.L0800411C:
    movs r0, #8
    bl __builtin_new
    ldr r1, .L08004178 @ =vtable_unk_080E5A4C
    str r1, [r0]
    ldr r1, [sp, #4]
    str r4, [sp, #4]
    str r1, [r0, #4]
    adds r5, r6, #0
    adds r5, #0xc
    adds r4, r0, #0
    ldr r1, [r6, #0xc]
    cmp r4, r1
    beq .L08004148
    cmp r1, #0
    beq .L08004148
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08004148:
    str r4, [r5]
.L0800414A:
    adds r0, r6, #0
    adds r0, #0x18
    movs r1, #0xc5
    bl func_08008B6C
    ldr r0, [sp, #0xc]
    mov r1, r8
    bl func_08000470
    ldr r0, [sp, #4]
    cmp r0, #0
    beq .L08004168
    movs r1, #3
    bl func_080D4480
.L08004168:
    mov r1, sp
    ldrh r0, [r1]
    cmp r0, #0
    beq .L08004174
    bl func_080004F4
.L08004174:
    movs r0, #1
    b .L080041C6
    .align 2, 0
.L08004178: .4byte vtable_unk_080E5A4C
.L0800417C:
    movs r0, #0
    str r0, [sp, #4]
    adds r0, r1, #0
    bl __builtin_delete
    ldr r0, [sp, #4]
    cmp r0, #0
    beq .L08004192
    movs r1, #3
    bl func_080D4480
.L08004192:
    mov r1, sp
    ldrh r0, [r1]
    cmp r0, #0
    beq .L0800419E
    bl func_080004F4
.L0800419E:
    subs r7, #1
    cmp r7, #0
    bne .L080040CE
    adds r0, r6, #0
    adds r0, #0x10
    ldr r1, .L080041D8 @ =gUnk_080E88D8
    movs r2, #0
    movs r3, #0
    bl func_08050DC8
    adds r1, r6, #0
    adds r1, #0x8c
    movs r0, #3
    str r0, [r1]
    adds r0, r6, #0
    adds r0, #0x18
    movs r1, #0xc7
    bl func_08008B6C
    movs r0, #0
.L080041C6:
    add sp, #0x10
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080041D8: .4byte gUnk_080E88D8

    thumb_func_start func_080041DC
func_080041DC: @ 0x080041DC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x70
    adds r7, r0, #0
    adds r4, r1, #0
    str r2, [sp, #0x40]
    add r1, sp, #0x38
    movs r0, #7
    movs r5, #0
    strb r0, [r1]
    strb r5, [r1, #1]
    adds r0, r7, #0
    bl func_08008574
    ldr r0, .L080043B0 @ =vtable_unk_080E5A5C
    str r0, [r7, #4]
    str r4, [r7, #8]
    ldr r1, [sp, #0x40]
    ldr r0, [r1]
    str r5, [r1]
    str r0, [r7, #0xc]
    add r0, sp, #0xc
    bl func_0800835C
    add r4, sp, #0x10
    adds r0, r4, #0
    bl func_0800770C
    adds r0, r7, #0
    adds r0, #0x10
    str r5, [sp]
    add r2, sp, #0xc
    str r2, [sp, #4]
    str r4, [sp, #8]
    movs r1, #0
    movs r2, #0x1f
    movs r3, #0xf
    bl func_08050CC0
    adds r0, r4, #0
    movs r1, #2
    bl func_08007714
    add r0, sp, #0xc
    movs r1, #2
    bl func_08008364
    adds r0, r7, #0
    adds r0, #0x14
    movs r1, #1
    bl func_08008B54
    adds r0, r7, #0
    adds r0, #0x18
    movs r1, #2
    bl func_08008B54
    adds r6, r7, #0
    adds r6, #0x1c
    ldr r1, .L080043B4 @ =gUnk_08728208
    adds r0, r6, #0
    bl func_0805E6CC
    adds r4, r7, #0
    adds r4, #0x4c
    adds r0, r4, #0
    bl func_08007874
    adds r0, r4, #0
    movs r1, #2
    bl func_08007B54
    str r0, [r4, #4]
    adds r4, #8
    adds r0, r4, #0
    bl func_08007128
    adds r0, r4, #0
    bl func_0800736C
    str r0, [r4, #4]
    movs r0, #0
    movs r1, #0
    str r0, [r7, #0x5c]
    str r1, [r7, #0x60]
    adds r0, r7, #0
    adds r0, #0x64
    movs r3, #0x80
    lsls r3, r3, #1
    adds r1, r6, #0
    movs r2, #0
    bl func_0805E824
    adds r0, r7, #0
    adds r0, #0x80
    str r5, [r0]
    adds r0, #0xc
    str r5, [r0]
    adds r0, #4
    bl func_08000640
    adds r0, r7, #0
    adds r0, #0x98
    movs r1, #1
    mov r3, sp
    adds r3, #0x14
    str r3, [sp, #0x6c]
    movs r3, #0
    movs r2, #1
    rsbs r2, r2, #0
.L080042BE:
    strb r3, [r0]
    adds r0, #0x80
    subs r1, #1
    cmp r1, r2
    bne .L080042BE
    movs r0, #0xcc
    lsls r0, r0, #1
    adds r4, r7, r0
    movs r5, #1
    movs r1, #0x1c
    adds r1, r1, r7
    mov sl, r1
    movs r2, #0x4c
    adds r2, r2, r7
    mov r8, r2
    adds r3, r7, #0
    adds r3, #0x54
    str r3, [sp, #0x44]
    movs r0, #0x90
    adds r0, r0, r7
    mov sb, r0
    adds r1, r7, #0
    adds r1, #0x60
    str r1, [sp, #0x4c]
    adds r2, r7, #0
    adds r2, #0x61
    str r2, [sp, #0x50]
    adds r3, #9
    str r3, [sp, #0x48]
    adds r0, r7, #0
    adds r0, #0x84
    str r0, [sp, #0x54]
    adds r1, #0x25
    str r1, [sp, #0x58]
    adds r2, #0x25
    str r2, [sp, #0x5c]
    adds r3, #0x2a
    str r3, [sp, #0x60]
    adds r0, #4
    str r0, [sp, #0x64]
    adds r1, #4
    str r1, [sp, #0x68]
    movs r6, #1
    rsbs r6, r6, #0
.L08004316:
    adds r0, r4, #0
    bl func_080114F8
    adds r4, #4
    subs r5, #1
    cmp r5, r6
    bne .L08004316
    ldr r0, [sp, #0x6c]
    mov r1, sl
    movs r2, #0
    bl func_0805E790
    ldr r0, [sp, #0x14]
    ldr r1, [r0, #4]
    ldr r0, [r0]
    str r0, [r7, #0x5c]
    str r1, [r7, #0x60]
    mov r2, r8
    ldr r1, [r2, #4]
    mov r0, r8
    bl func_08007D4C
    ldr r3, .L080043B8 @ =0x000003FF
    adds r1, r3, #0
    ands r0, r1
    ldr r1, [sp, #0x4c]
    ldrh r2, [r1]
    ldr r1, .L080043BC @ =0xFFFFFC00
    ands r1, r2
    orrs r1, r0
    ldr r2, [sp, #0x4c]
    strh r1, [r2]
    ldr r3, [sp, #0x44]
    ldr r1, [r3, #4]
    adds r0, r3, #0
    bl func_080074C0
    lsls r0, r0, #4
    ldr r1, [sp, #0x50]
    ldrb r2, [r1]
    movs r1, #0xf
    ands r1, r2
    orrs r1, r0
    ldr r2, [sp, #0x50]
    strb r1, [r2]
    ldr r3, [sp, #0x48]
    ldrb r0, [r3]
    movs r1, #0x10
    orrs r0, r1
    strb r0, [r3]
    ldr r0, [r7, #0x5c]
    ldr r1, [r7, #0x60]
    str r0, [r7, #0x78]
    str r1, [r7, #0x7c]
    movs r4, #0
.L08004384:
    mov r0, sb
    bl func_080003A0
    movs r1, #1
    lsls r1, r4
    ands r1, r0
    rsbs r0, r1, #0
    orrs r0, r1
    adds r1, r4, #1
    mov sl, r1
    cmp r0, #0
    bge .L08004426
    mov r0, sb
    adds r1, r4, #0
    bl func_080003DC
    mov r8, r0
    movs r0, #0
    str r0, [sp, #0x3c]
    movs r5, #3
    add r6, sp, #0x3c
    b .L080043E0
    .align 2, 0
.L080043B0: .4byte vtable_unk_080E5A5C
.L080043B4: .4byte gUnk_08728208
.L080043B8: .4byte 0x000003FF
.L080043BC: .4byte 0xFFFFFC00
.L080043C0:
    movs r0, #0
    str r0, [sp, #0x34]
    adds r0, r2, #0
    bl __builtin_delete
    ldr r0, [sp, #0x34]
    cmp r0, #0
    beq .L080043D6
    movs r1, #3
    bl func_080D4480
.L080043D6:
    subs r5, #1
    movs r0, #1
    rsbs r0, r0, #0
    cmp r5, r0
    beq .L08004426
.L080043E0:
    ldr r0, .L080044B8 @ =0x000034F4
    bl __builtin_new
    mov r1, sb
    mov r2, r8
    adds r3, r6, #0
    bl func_08011650
    adds r2, r0, #0
    str r2, [sp, #0x34]
    ldr r0, [sp, #0x3c]
    cmp r0, #0
    bne .L080043C0
    lsls r1, r4, #7
    adds r1, #0x98
    adds r1, r7, r1
    adds r0, r7, #0
    bl func_08003788
    ldr r2, [sp, #0x34]
    lsls r0, r4, #2
    adds r0, r0, r7
    movs r3, #0xcc
    lsls r3, r3, #1
    adds r0, r0, r3
    ldr r3, .L080044BC @ =0x00002210
    adds r1, r2, r3
    ldr r1, [r1]
    str r1, [r0]
    cmp r2, #0
    beq .L08004426
    adds r0, r2, #0
    movs r1, #3
    bl func_080D4480
.L08004426:
    mov r4, sl
    cmp r4, #1
    bls .L08004384
    mov r0, sb
    bl func_08000488
    adds r2, r0, #0
    ldr r0, [r7, #8]
    cmp r0, #0
    beq .L080044C0
    movs r0, #0
    ldr r1, [sp, #0x54]
    strb r0, [r1]
    rsbs r0, r2, #0
    orrs r0, r2
    lsrs r0, r0, #0x1f
    ldr r2, [sp, #0x58]
    strb r0, [r2]
    ldr r0, [r7, #8]
    ldr r3, .L080044BC @ =0x00002210
    adds r5, r0, r3
    movs r1, #0
    ldr r0, [r5]
    lsls r0, r0, #0x1f
    cmp r0, #0
    beq .L0800445C
    movs r1, #1
.L0800445C:
    ldr r0, [sp, #0x5c]
    strb r1, [r0]
    ldr r2, [r7, #0x5c]
    ldr r3, [r7, #0x60]
    adds r0, r7, #0
    movs r1, #2
    bl func_08003DF0
    ldrb r0, [r5]
    lsrs r0, r0, #1
    movs r4, #1
    eors r0, r4
    ands r0, r4
    ldr r1, [sp, #0x60]
    strb r0, [r1]
    ldr r2, [r7, #0x5c]
    ldr r3, [r7, #0x60]
    adds r0, r7, #0
    movs r1, #3
    bl func_08003DF0
    ldrb r0, [r5]
    lsrs r0, r0, #2
    eors r0, r4
    ands r0, r4
    ldr r2, [sp, #0x64]
    strb r0, [r2]
    ldr r2, [r7, #0x5c]
    ldr r3, [r7, #0x60]
    adds r0, r7, #0
    movs r1, #4
    bl func_08003DF0
    ldrb r0, [r5]
    lsrs r0, r0, #3
    eors r0, r4
    ands r0, r4
    ldr r3, [sp, #0x68]
    strb r0, [r3]
    ldr r2, [r7, #0x5c]
    ldr r3, [r7, #0x60]
    adds r0, r7, #0
    movs r1, #5
    bl func_08003DF0
    b .L08004548
    .align 2, 0
.L080044B8: .4byte 0x000034F4
.L080044BC: .4byte 0x00002210
.L080044C0:
    adds r0, r7, #0
    adds r0, #0x80
    movs r1, #1
    str r1, [r0]
    movs r5, #1
    ldr r0, [sp, #0x54]
    strb r1, [r0]
    rsbs r0, r2, #0
    orrs r0, r2
    lsrs r0, r0, #0x1f
    ldr r1, [sp, #0x58]
    strb r0, [r1]
    ldrb r0, [r1]
    lsls r0, r0, #2
    adds r4, r0, r7
    movs r2, #0xcc
    lsls r2, r2, #1
    adds r4, r4, r2
    movs r1, #0
    ldr r0, [r4]
    lsls r0, r0, #0x1f
    cmp r0, #0
    beq .L080044F0
    movs r1, #1
.L080044F0:
    ldr r3, [sp, #0x5c]
    strb r1, [r3]
    ldr r2, [r7, #0x5c]
    ldr r3, [r7, #0x60]
    adds r0, r7, #0
    movs r1, #2
    bl func_08003DF0
    ldrb r0, [r4]
    lsrs r0, r0, #1
    eors r0, r5
    ands r0, r5
    ldr r1, [sp, #0x60]
    strb r0, [r1]
    ldr r2, [r7, #0x5c]
    ldr r3, [r7, #0x60]
    adds r0, r7, #0
    movs r1, #3
    bl func_08003DF0
    ldrb r0, [r4]
    lsrs r0, r0, #2
    eors r0, r5
    ands r0, r5
    ldr r2, [sp, #0x64]
    strb r0, [r2]
    ldr r2, [r7, #0x5c]
    ldr r3, [r7, #0x60]
    adds r0, r7, #0
    movs r1, #4
    bl func_08003DF0
    ldrb r0, [r4]
    lsrs r0, r0, #3
    eors r0, r5
    ands r0, r5
    ldr r3, [sp, #0x68]
    strb r0, [r3]
    ldr r2, [r7, #0x5c]
    ldr r3, [r7, #0x60]
    adds r0, r7, #0
    movs r1, #5
    bl func_08003DF0
.L08004548:
    ldr r0, [sp, #0x40]
    ldr r1, [r0]
    cmp r1, #0
    beq .L0800455C
    ldr r0, [r1]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L0800455C:
    adds r0, r7, #0
    add sp, #0x70
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08004570
func_08004570: @ 0x08004570
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x5c
    str r0, [sp, #0x58]
    adds r6, r1, #0
    adds r0, r6, #0
    bl func_08008724
    adds r0, r6, #0
    bl func_08008918
    adds r5, r0, #0
    add r0, sp, #0xc
    movs r2, #0xe2
    lsls r2, r2, #5
    adds r1, r2, #0
    strh r1, [r0]
    movs r4, #0
    strh r1, [r5]
    ldr r0, .L080046A4 @ =gUnk_080F9F78
    ldr r0, [r0]
    movs r1, #0xa0
    lsls r1, r1, #0x13
    ldr r2, .L080046A8 @ =gUnk_080F9F7C
    ldr r2, [r2]
    bl func_08008E64
    add r1, sp, #0xc
    ldr r2, .L080046AC @ =0x00001E4C
    adds r0, r2, #0
    strh r0, [r1]
    strh r0, [r5, #0xe]
    ldr r0, .L080046B0 @ =gUnk_080F9F70
    ldr r0, [r0]
    ldr r1, .L080046B4 @ =0x0600C000
    ldr r2, .L080046B8 @ =gUnk_080F9F74
    ldr r2, [r2]
    bl func_08008E64
    ldr r0, .L080046BC @ =0x0600F000
    movs r1, #0x14
    str r1, [sp]
    str r4, [sp, #4]
    str r4, [sp, #8]
    movs r1, #0
    movs r2, #0
    movs r3, #0x1e
    bl func_08051320
    add r1, sp, #0xc
    movs r2, #0xea
    lsls r2, r2, #5
    adds r0, r2, #0
    strh r0, [r1]
    strh r0, [r5, #0xc]
    adds r0, r6, #0
    bl func_08003C80
    adds r4, r6, #0
    adds r4, #0x10
    adds r0, r4, #0
    movs r1, #0x2c
    bl func_08050E98
    adds r0, r4, #0
    bl func_08050D68
    adds r0, r6, #0
    bl func_08003C28
    ldrh r0, [r5, #8]
    movs r1, #0x40
    orrs r0, r1
    strh r0, [r5, #8]
    adds r0, r6, #0
    bl func_08003EEC
    add r0, sp, #0x10
    adds r1, r6, #0
    adds r1, #0x1c
    movs r2, #0
    bl func_0805E790
    ldr r4, [sp, #0x18]
    adds r0, r6, #0
    adds r0, #0x4c
    ldr r1, [r0, #4]
    bl func_08007D4C
    adds r1, r0, #0
    lsls r1, r1, #5
    ldr r0, .L080046C0 @ =0x06010000
    adds r1, r1, r0
    adds r0, r4, #0
    movs r2, #0x80
    bl func_08008E64
    ldr r4, [sp, #0x20]
    adds r0, r6, #0
    adds r0, #0x54
    ldr r1, [r0, #4]
    bl func_080074C0
    adds r1, r0, #0
    lsls r1, r1, #5
    ldr r2, .L080046C4 @ =0x05000200
    adds r1, r1, r2
    adds r0, r4, #0
    movs r2, #0x20
    bl func_08008E64
    movs r4, #0
.L08004656:
    ldr r2, [r6, #0x5c]
    ldr r3, [r6, #0x60]
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_08003DF0
    adds r4, #1
    cmp r4, #5
    bls .L08004656
    adds r0, r6, #0
    bl func_08003B40
    movs r0, #0x8c
    adds r0, r0, r6
    mov sl, r0
.L08004674:
    adds r0, r6, #0
    bl func_080087C8
    adds r0, r6, #0
    bl func_080088B8
    adds r0, r6, #0
    bl func_08003C28
    adds r0, r6, #0
    bl func_080088D4
    adds r7, r0, #0
    mov r5, sl
    ldr r0, [r5]
    cmp r0, #1
    bne .L08004698
    b .L08004A9E
.L08004698:
    cmp r0, #1
    bgt .L080046C8
    cmp r0, #0
    beq .L080046D6
    b .L08004674
    .align 2, 0
.L080046A4: .4byte gUnk_080F9F78
.L080046A8: .4byte gUnk_080F9F7C
.L080046AC: .4byte 0x00001E4C
.L080046B0: .4byte gUnk_080F9F70
.L080046B4: .4byte 0x0600C000
.L080046B8: .4byte gUnk_080F9F74
.L080046BC: .4byte 0x0600F000
.L080046C0: .4byte 0x06010000
.L080046C4: .4byte 0x05000200
.L080046C8:
    cmp r0, #2
    bne .L080046CE
    b .L08004AC4
.L080046CE:
    cmp r0, #3
    bne .L080046D4
    b .L08004B1A
.L080046D4:
    b .L08004674
.L080046D6:
    adds r4, r6, #0
    adds r4, #0x64
    adds r0, r4, #0
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge .L0800474A
    ldr r1, [r6, #0x64]
    ldr r3, [r1]
    ldrh r2, [r4, #0xc]
    lsls r2, r2, #2
    ldr r0, [r6, #0x68]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x30
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r1, sp, #0x30
    adds r0, r1, #0
    movs r2, #0x20
    bl memcpy
    ldr r1, [sp, #0x30]
    ldrb r0, [r1]
    adds r5, r6, #0
    adds r5, #0x78
    strb r0, [r5]
    ldrh r1, [r1, #2]
    lsls r1, r1, #0x17
    adds r3, r6, #0
    adds r3, #0x7a
    lsrs r1, r1, #0x17
    ldrh r2, [r3]
    ldr r0, .L0800479C @ =0xFFFFFE00
    ands r0, r2
    orrs r0, r1
    strh r0, [r3]
    adds r4, #0x1c
    ldr r1, [r4]
    ldr r2, [r6, #0x78]
    ldr r3, [r6, #0x7c]
    adds r0, r6, #0
    bl func_08003DF0
    ldr r1, [r4]
    ldr r0, [r6, #8]
    adds r2, r6, #0
    adds r2, #0x5c
    cmp r0, #0
    beq .L08004740
    adds r2, r5, #0
.L08004740:
    ldr r3, [r2, #4]
    ldr r2, [r2]
    adds r0, r6, #0
    bl func_08003E88
.L0800474A:
    movs r1, #2
    mov sb, r1
    adds r0, r7, #0
    ands r0, r1
    lsls r0, r0, #0x18
    lsrs r5, r0, #0x18
    cmp r5, #0
    beq .L080047AE
    ldr r0, [r6, #8]
    cmp r0, #0
    beq .L080047A0
    adds r4, r6, #0
    adds r4, #0x80
    ldr r0, [r4]
    cmp r0, #1
    beq .L0800476C
    b .L08004B36
.L0800476C:
    adds r0, r6, #0
    adds r0, #0x18
    movs r1, #0xc6
    bl func_08008B6C
    movs r0, #0
    str r0, [r4]
    adds r0, r6, #0
    bl func_08003EEC
    ldr r2, [r6, #0x5c]
    ldr r3, [r6, #0x60]
    adds r0, r6, #0
    movs r1, #1
    bl func_08003DF0
    ldr r2, [r6, #0x78]
    ldr r3, [r6, #0x7c]
    adds r0, r6, #0
    movs r1, #0
    bl func_08003DF0
    b .L08004674
    .align 2, 0
.L0800479C: .4byte 0xFFFFFE00
.L080047A0:
    adds r0, r6, #0
    adds r0, #0x18
    movs r1, #0xc6
    bl func_08008B6C
    add r4, sp, #0x50
    b .L08004AF2
.L080047AE:
    movs r2, #1
    mov r8, r2
    movs r1, #1
    adds r0, r7, #0
    ands r0, r1
    cmp r0, #0
    beq .L080048A0
    adds r0, r6, #0
    adds r0, #0x80
    ldr r7, [r0]
    cmp r7, #0
    bne .L080047F2
    str r1, [r0]
    ldr r2, [r6, #0x5c]
    ldr r3, [r6, #0x60]
    adds r0, r6, #0
    movs r1, #0
    bl func_08003DF0
    ldr r2, [r6, #0x78]
    ldr r3, [r6, #0x7c]
    adds r0, r6, #0
    movs r1, #1
    bl func_08003DF0
    adds r0, r6, #0
    bl func_08003EEC
    adds r0, r6, #0
    adds r0, #0x18
    movs r1, #0xc5
    bl func_08008B6C
    b .L08004674
.L080047F2:
    cmp r7, #1
    beq .L080047F8
    b .L08004674
.L080047F8:
    adds r0, r6, #0
    adds r0, #0x85
    ldrb r1, [r0]
    subs r0, #1
    ldrb r4, [r0]
    cmp r4, #0
    beq .L08004864
    lsls r0, r1, #7
    adds r0, r0, r6
    adds r0, #0x98
    movs r1, #0
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08004816
    movs r1, #1
.L08004816:
    cmp r1, r8
    beq .L08004840
    adds r0, r6, #0
    adds r0, #0x10
    ldr r1, .L08004834 @ =gUnk_080E890C
    ldr r2, .L08004838 @ =gUnk_080E86EC
    ldr r3, .L0800483C @ =gUnk_080E86F0
    str r5, [sp]
    str r5, [sp, #4]
    str r5, [sp, #8]
    bl func_08050E30
    mov r0, sb
    b .L08004B30
    .align 2, 0
.L08004834: .4byte gUnk_080E890C
.L08004838: .4byte gUnk_080E86EC
.L0800483C: .4byte gUnk_080E86F0
.L08004840:
    adds r0, r6, #0
    adds r0, #0x10
    ldr r1, .L08004860 @ =gUnk_080E878C
    movs r2, #0
    movs r3, #0
    bl func_08050DC8
    movs r0, #3
    mov r2, sl
    str r0, [r2]
    adds r0, r6, #0
    adds r0, #0x18
    movs r1, #0xc7
    bl func_08008B6C
    b .L08004674
    .align 2, 0
.L08004860: .4byte gUnk_080E878C
.L08004864:
    lsls r0, r1, #7
    adds r0, r0, r6
    adds r0, #0x98
    movs r1, #0
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08004874
    movs r1, #1
.L08004874:
    cmp r1, r8
    bne .L0800487A
    b .L08004ABC
.L0800487A:
    adds r0, r6, #0
    adds r0, #0x10
    ldr r1, .L08004894 @ =gUnk_080E8914
    ldr r2, .L08004898 @ =gUnk_080E86EC
    ldr r3, .L0800489C @ =gUnk_080E86F0
    str r4, [sp]
    str r4, [sp, #4]
    str r4, [sp, #8]
    bl func_08050E30
    mov r0, sl
    str r7, [r0]
    b .L08004674
    .align 2, 0
.L08004894: .4byte gUnk_080E8914
.L08004898: .4byte gUnk_080E86EC
.L0800489C: .4byte gUnk_080E86F0
.L080048A0:
    adds r0, r7, #0
    lsls r1, r0, #0x1b
    lsls r0, r0, #0x1a
    lsrs r1, r1, #0x1f
    lsrs r0, r0, #0x1f
    cmp r1, r0
    bne .L080048B0
    b .L08004A16
.L080048B0:
    adds r2, r6, #0
    adds r2, #0x80
    adds r1, r6, #0
    adds r1, #0x84
    ldr r0, [r2]
    adds r1, r1, r0
    ldrb r4, [r1]
    mov r0, r8
    eors r4, r0
    strb r4, [r1]
    ldr r0, [r6, #8]
    adds r5, r2, #0
    cmp r0, #0
    beq .L08004980
    ldr r0, [r5]
    cmp r0, #5
    bls .L080048D4
    b .L08004A08
.L080048D4:
    lsls r0, r0, #2
    ldr r1, .L080048E0 @ =.L080048E4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L080048E0: .4byte .L080048E4
.L080048E4: @ jump table
    .4byte .L080048FC @ case 0
    .4byte .L080048FC @ case 1
    .4byte .L08004904 @ case 2
    .4byte .L08004924 @ case 3
    .4byte .L08004940 @ case 4
    .4byte .L0800495C @ case 5
.L080048FC:
    adds r0, r6, #0
    bl func_08003EEC
    b .L08004A08
.L08004904:
    ldr r3, [r6, #8]
    rsbs r1, r4, #0
    orrs r1, r4
    ldr r2, .L08004920 @ =0x00002210
    adds r3, r3, r2
    lsrs r1, r1, #0x1f
    ldrb r2, [r3]
    movs r0, #2
    rsbs r0, r0, #0
    ands r0, r2
    orrs r0, r1
    strb r0, [r3]
    b .L08004A08
    .align 2, 0
.L08004920: .4byte 0x00002210
.L08004924:
    ldr r2, [r6, #8]
    movs r3, #1
    cmp r4, #0
    beq .L0800492E
    movs r3, #0
.L0800492E:
    ldr r0, .L0800493C @ =0x00002210
    adds r2, r2, r0
    lsls r3, r3, #1
    ldrb r1, [r2]
    movs r0, #3
    rsbs r0, r0, #0
    b .L08004972
    .align 2, 0
.L0800493C: .4byte 0x00002210
.L08004940:
    ldr r2, [r6, #8]
    movs r3, #1
    cmp r4, #0
    beq .L0800494A
    movs r3, #0
.L0800494A:
    ldr r1, .L08004958 @ =0x00002210
    adds r2, r2, r1
    lsls r3, r3, #2
    ldrb r1, [r2]
    movs r0, #5
    rsbs r0, r0, #0
    b .L08004972
    .align 2, 0
.L08004958: .4byte 0x00002210
.L0800495C:
    ldr r2, [r6, #8]
    movs r3, #1
    cmp r4, #0
    beq .L08004966
    movs r3, #0
.L08004966:
    ldr r0, .L0800497C @ =0x00002210
    adds r2, r2, r0
    lsls r3, r3, #3
    ldrb r1, [r2]
    movs r0, #9
    rsbs r0, r0, #0
.L08004972:
    ands r0, r1
    orrs r0, r3
    strb r0, [r2]
    b .L08004A08
    .align 2, 0
.L0800497C: .4byte 0x00002210
.L08004980:
    adds r0, r6, #0
    bl func_08003EEC
    adds r0, r6, #0
    adds r0, #0x85
    ldrb r0, [r0]
    lsls r0, r0, #2
    adds r4, r0, r6
    movs r1, #0xcc
    lsls r1, r1, #1
    adds r4, r4, r1
    movs r1, #0
    ldr r0, [r4]
    lsls r0, r0, #0x1f
    cmp r0, #0
    beq .L080049A2
    movs r1, #1
.L080049A2:
    adds r0, r6, #0
    adds r0, #0x86
    strb r1, [r0]
    ldr r2, [r6, #0x5c]
    ldr r3, [r6, #0x60]
    adds r0, r6, #0
    movs r1, #2
    bl func_08003DF0
    ldrb r0, [r4]
    lsrs r0, r0, #1
    mov r2, r8
    eors r0, r2
    ands r0, r2
    adds r1, r6, #0
    adds r1, #0x87
    strb r0, [r1]
    ldr r2, [r6, #0x5c]
    ldr r3, [r6, #0x60]
    adds r0, r6, #0
    movs r1, #3
    bl func_08003DF0
    ldrb r0, [r4]
    lsrs r0, r0, #2
    mov r1, r8
    eors r0, r1
    ands r0, r1
    adds r1, r6, #0
    adds r1, #0x88
    strb r0, [r1]
    ldr r2, [r6, #0x5c]
    ldr r3, [r6, #0x60]
    adds r0, r6, #0
    movs r1, #4
    bl func_08003DF0
    ldrb r0, [r4]
    lsrs r0, r0, #3
    mov r2, r8
    eors r0, r2
    ands r0, r2
    adds r1, r6, #0
    adds r1, #0x89
    strb r0, [r1]
    ldr r2, [r6, #0x5c]
    ldr r3, [r6, #0x60]
    adds r0, r6, #0
    movs r1, #5
    bl func_08003DF0
.L08004A08:
    ldr r1, [r5]
    ldr r2, [r6, #0x78]
    ldr r3, [r6, #0x7c]
    adds r0, r6, #0
    bl func_08003DF0
    b .L08004A92
.L08004A16:
    ldr r0, [r6, #8]
    cmp r0, #0
    bne .L08004A1E
    b .L08004674
.L08004A1E:
    lsls r1, r7, #0x18
    lsls r0, r7, #0x19
    lsrs r1, r1, #0x1f
    lsrs r0, r0, #0x1f
    cmp r1, r0
    bne .L08004A2C
    b .L08004674
.L08004A2C:
    adds r1, r6, #0
    adds r1, #0x80
    ldr r4, [r1]
    movs r0, #0x80
    ands r0, r7
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    adds r5, r1, #0
    cmp r0, #0
    beq .L08004A52
    cmp r4, #0
    bne .L08004A48
    mov r0, sb
    b .L08004A66
.L08004A48:
    movs r0, #0
    cmp r4, #5
    beq .L08004A66
    adds r0, r4, #1
    b .L08004A66
.L08004A52:
    cmp r4, #2
    beq .L08004A66
    cmp r4, #1
    bne .L08004A5E
    movs r0, #5
    b .L08004A66
.L08004A5E:
    movs r0, #5
    cmp r4, #0
    beq .L08004A66
    subs r0, r4, #1
.L08004A66:
    str r0, [r5]
    ldr r2, [r6, #0x5c]
    ldr r3, [r6, #0x60]
    adds r0, r6, #0
    adds r1, r4, #0
    bl func_08003DF0
    ldr r1, [r5]
    ldr r2, [r6, #0x78]
    ldr r3, [r6, #0x7c]
    adds r0, r6, #0
    bl func_08003DF0
    ldr r1, [r5]
    ldr r2, [r6, #0x78]
    ldr r3, [r6, #0x7c]
    adds r0, r6, #0
    bl func_08003E88
    adds r0, r6, #0
    bl func_08003EEC
.L08004A92:
    adds r0, r6, #0
    adds r0, #0x18
    movs r1, #0xcb
    bl func_08008B6C
    b .L08004674
.L08004A9E:
    adds r4, r6, #0
    adds r4, #0x10
    adds r0, r4, #0
    bl func_08050D34
    cmp r0, #3
    beq .L08004AB2
    cmp r0, #6
    bne .L08004AB2
    b .L08004674
.L08004AB2:
    adds r0, r4, #0
    bl func_08050DF0
    cmp r0, #1
    bne .L08004B04
.L08004ABC:
    adds r0, r6, #0
    bl func_08003F9C
    b .L08004674
.L08004AC4:
    adds r4, r6, #0
    adds r4, #0x10
    adds r0, r4, #0
    bl func_08050D34
    cmp r0, #3
    beq .L08004AD8
    cmp r0, #6
    bne .L08004AD8
    b .L08004674
.L08004AD8:
    adds r0, r4, #0
    bl func_08050DF0
    cmp r0, #1
    bne .L08004B04
    adds r0, r6, #0
    bl func_080040A0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08004AF0
    b .L08004674
.L08004AF0:
    add r4, sp, #0x54
.L08004AF2:
    adds r0, r4, #0
    movs r1, #0
    bl func_08008B54
    adds r0, r4, #0
    movs r1, #2
    bl func_08008BF8
    b .L08004B36
.L08004B04:
    adds r0, r6, #0
    adds r0, #0x18
    movs r1, #0xc5
    bl func_08008B6C
    adds r0, r6, #0
    bl func_08003EEC
    movs r0, #0
    str r0, [r5]
    b .L08004674
.L08004B1A:
    adds r0, r6, #0
    adds r0, #0x10
    bl func_08050D34
    cmp r0, #5
    bne .L08004B28
    b .L08004674
.L08004B28:
    adds r0, r6, #0
    bl func_08003EEC
    movs r0, #0
.L08004B30:
    mov r1, sl
    str r0, [r1]
    b .L08004674
.L08004B36:
    adds r0, r6, #0
    bl func_08003BB4
    ldr r1, [r6, #0xc]
    movs r0, #0
    str r0, [r6, #0xc]
    ldr r2, [sp, #0x58]
    str r1, [r2]
    ldr r0, [sp, #0x58]
    add sp, #0x5c
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
