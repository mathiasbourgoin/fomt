    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08039A5C
func_08039A5C: @ 0x08039A5C
    bx lr
    .align 2, 0

    thumb_func_start func_08039A60
func_08039A60: @ 0x08039A60
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x70
    adds r7, r0, #0
    ldr r0, [r7]
    mov sl, r0
    ldrb r0, [r1, #4]
    cmp r0, #0
    bne .L08039A7A
    b .L08039BAC
.L08039A7A:
    ldrh r0, [r7, #4]
    cmp r0, #2
    bne .L08039A82
    b .L08039BAC
.L08039A82:
    mov r1, sl
    ldr r0, [r1]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r0, r0, r2
    ldr r1, [r0]
    mov r0, sl
    bl _call_via_r1
    adds r2, r0, #0
    ldrh r1, [r2, #0xa]
    ldr r0, .L08039AC0 @ =0x000007FF
    ands r0, r1
    cmp r0, #0x14
    beq .L08039AA2
    b .L08039BAC
.L08039AA2:
    ldr r0, [r2]
    cmp r0, #0
    beq .L08039AAA
    b .L08039BAC
.L08039AAA:
    movs r0, #2
    bl func_080AB788
    cmp r0, #0
    beq .L08039AC4
    add r0, sp, #0x44
    movs r1, #0x84
    lsls r1, r1, #1
    movs r2, #0xb4
    lsls r2, r2, #2
    b .L08039ACE
    .align 2, 0
.L08039AC0: .4byte 0x000007FF
.L08039AC4:
    add r0, sp, #0x44
    movs r1, #0xaa
    lsls r1, r1, #1
    movs r2, #0x10
    rsbs r2, r2, #0
.L08039ACE:
    strh r1, [r0]
    strh r2, [r0, #2]
    ldr r0, [sp, #0x44]
    str r0, [sp, #0x48]
    add r4, sp, #0x48
    movs r3, #0
    ldrsh r2, [r4, r3]
    movs r6, #2
    ldrsh r3, [r4, r6]
    mov r0, sl
    movs r1, #2
    bl func_08039134
    str r0, [sp, #0x6c]
    cmp r0, #0x64
    beq .L08039BAC
    movs r0, #0x64
    bl func_080AB788
    cmp r0, #0xe
    bhi .L08039BAC
    movs r0, #0
    ldrsh r6, [r4, r0]
    movs r2, #2
    ldrsh r1, [r4, r2]
    mov r8, r1
    mov r3, sp
    movs r2, #2
    ldrh r1, [r3]
    ldr r4, .L08039D18 @ =0xFFFFFC00
    adds r0, r4, #0
    ands r0, r1
    orrs r0, r2
    strh r0, [r3]
    lsls r6, r6, #0x10
    lsrs r1, r6, #0x10
    movs r0, #0x3f
    mov sb, r0
    ands r1, r0
    lsls r1, r1, #2
    ldrb r5, [r3, #1]
    movs r2, #3
    adds r0, r2, #0
    ands r0, r5
    orrs r0, r1
    strb r0, [r3, #1]
    lsrs r6, r6, #0x16
    ldrh r1, [r3, #2]
    adds r0, r4, #0
    ands r0, r1
    orrs r0, r6
    strh r0, [r3, #2]
    mov r1, r8
    lsls r1, r1, #0x10
    mov r8, r1
    lsrs r0, r1, #0x10
    mov r6, sb
    ands r0, r6
    lsls r0, r0, #2
    ldrb r1, [r3, #3]
    ands r2, r1
    orrs r2, r0
    strb r2, [r3, #3]
    mov r0, r8
    lsrs r0, r0, #0x16
    mov r8, r0
    ldrh r0, [r3, #4]
    ands r4, r0
    mov r1, r8
    orrs r4, r1
    strh r4, [r3, #4]
    add r4, sp, #8
    movs r5, #1
    adds r0, r4, #0
    mov r1, sp
    movs r2, #6
    bl memcpy
    strb r5, [r4, #6]
    adds r0, r7, #0
    adds r1, r4, #0
    bl SetLocation__12AActorEntityRC13ActorLocation
    ldr r1, .L08039D1C @ =0xFFFF0000
    ldr r0, [sp, #0x4c]
    ands r0, r1
    str r0, [sp, #0x4c]
    movs r0, #8
    bl func_080AB788
    adds r0, #3
    lsls r0, r0, #0x18
    lsrs r0, r0, #8
    ldr r3, .L08039D20 @ =0xFF00FFFF
    add r1, sp, #0x4c
    ldr r2, [r1, #4]
    ands r2, r3
    orrs r2, r0
    ldr r6, [sp, #0x6c]
    lsls r3, r6, #0x18
    ldr r0, .L08039D24 @ =0x00FFFFFF
    ands r2, r0
    orrs r2, r3
    str r2, [r1, #4]
    ldr r0, [r7, #0x34]
    bl func_0809C0AC
    adds r0, r7, #0
    movs r1, #0xab
    bl func_080200C4
.L08039BAC:
    ldrh r5, [r7, #4]
    movs r0, #0x8d
    lsls r0, r0, #2
    cmp r5, r0
    bne .L08039BB8
    b .L08039D06
.L08039BB8:
    mov r0, sl
    ldr r1, [r0]
    mov r0, sp
    ldr r3, [r1, #0x34]
    mov r1, sl
    adds r2, r5, #0
    bl _call_via_r3
    ldr r1, [r7, #0x14]
    add r0, sp, #0x54
    ldr r2, [r1, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    add r4, sp, #0x10
    movs r1, #0x20
    mov r8, r1
    movs r2, #0
    mov sb, r2
    movs r1, #0x21
    str r1, [sp, #0x10]
    movs r0, #0x21
    rsbs r0, r0, #0
    str r0, [r4, #4]
    str r0, [r4, #8]
    str r1, [r4, #0xc]
    add r1, sp, #0x24
    mov r0, sp
    ldm r0!, {r2, r3, r6}
    stm r1!, {r2, r3, r6}
    ldr r0, [sp, #0x54]
    ldr r1, [sp, #0x58]
    str r0, [sp, #0x30]
    str r1, [sp, #0x34]
    mov r3, r8
    str r3, [r4, #0x28]
    mov r6, sb
    str r6, [r4, #0x2c]
    str r6, [r4, #0x30]
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0
    bl _call_via_r2
    adds r3, r0, #0
    mov r8, r4
    cmp r3, #0
    beq .L08039C38
    ldrh r0, [r3, #4]
    cmp r0, r5
    bne .L08039C38
    ldr r1, [r3, #0x14]
    add r4, sp, #0x5c
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    mov r0, r8
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
.L08039C38:
    ldr r0, [r7]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4a
    bl _call_via_r2
    adds r3, r0, #0
    cmp r3, #0
    beq .L08039C68
    ldrh r0, [r3, #4]
    cmp r0, r5
    bne .L08039C68
    ldr r1, [r3, #0x14]
    add r4, sp, #0x64
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r3, #0
    bl _call_via_r2
    mov r0, r8
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
.L08039C68:
    ldr r0, [r7, #0x34]
    ldr r0, [r0, #0xc]
    lsls r0, r0, #2
    adds r0, r0, r7
    ldr r0, [r0, #0x38]
    ldr r1, [r0]
    ldr r3, [r1, #8]
    adds r1, r7, #0
    mov r2, r8
    bl _call_via_r3
    ldr r0, [r7, #0x34]
    ldr r0, [r0, #0xc]
    lsls r0, r0, #2
    adds r0, r0, r7
    ldr r0, [r0, #0x38]
    ldr r1, [r0]
    ldr r2, [r1, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    adds r4, r0, #0
    adds r0, r7, #0
    adds r0, #0x20
    ldrb r5, [r0]
    ldr r1, [r7, #0x4c]
    adds r6, r0, #0
    cmp r4, r1
    bne .L08039CA8
    ldr r0, [r7, #0x50]
    cmp r5, r0
    beq .L08039CB8
.L08039CA8:
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_08039D5C
    adds r1, r0, #0
    adds r0, r7, #0
    bl func_08020080
.L08039CB8:
    ldr r0, [r7, #0x4c]
    cmp r4, r0
    beq .L08039CD4
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_08039D4C
    adds r1, r0, #0
    ldrh r0, [r7, #0x22]
    cmp r0, r1
    beq .L08039CD4
    adds r0, r7, #0
    bl SetAnim__12AActorEntityUi
.L08039CD4:
    str r4, [r7, #0x4c]
    str r5, [r7, #0x50]
    mov r4, r8
    ldr r0, [r7, #0x34]
    ldr r0, [r0, #0xc]
    ldrb r1, [r6]
    subs r0, #1
    cmp r0, #1
    bhi .L08039CFE
    cmp r1, #1
    bhi .L08039CFE
    movs r1, #0xa
    ldrsh r0, [r7, r1]
    movs r2, #0xe
    ldrsh r1, [r7, r2]
    bl func_080391C0
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08039CFE
    movs r4, #0
.L08039CFE:
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_08020170
.L08039D06:
    adds r1, r7, #0
    adds r1, #0x30
    movs r0, #0
    strb r0, [r1]
    ldrh r0, [r7, #0x24]
    cmp r0, #0
    beq .L08039D28
    subs r0, #1
    b .L08039D2A
    .align 2, 0
.L08039D18: .4byte 0xFFFFFC00
.L08039D1C: .4byte 0xFFFF0000
.L08039D20: .4byte 0xFF00FFFF
.L08039D24: .4byte 0x00FFFFFF
.L08039D28:
    ldrh r0, [r7, #0x26]
.L08039D2A:
    strh r0, [r7, #0x24]
    ldr r2, [r7, #0x10]
    cmp r2, #0
    beq .L08039D3C
    ldr r0, [r2, #4]
    ldr r1, [r0, #0xc]
    adds r0, r2, #0
    bl _call_via_r1
.L08039D3C:
    add sp, #0x70
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08039D4C
func_08039D4C: @ 0x08039D4C
    ldr r0, .L08039D58 @ =gUnk_080F16AE
    lsls r1, r1, #1
    adds r1, r1, r0
    ldrh r0, [r1]
    bx lr
    .align 2, 0
.L08039D58: .4byte gUnk_080F16AE

    thumb_func_start func_08039D5C
func_08039D5C: @ 0x08039D5C
    push {lr}
    cmp r1, #4
    bhi .L08039D90
    lsls r0, r1, #2
    ldr r1, .L08039D6C @ =.L08039D70
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08039D6C: .4byte .L08039D70
.L08039D70: @ jump table
    .4byte .L08039D90 @ case 0
    .4byte .L08039D84 @ case 1
    .4byte .L08039D8A @ case 2
    .4byte .L08039D90 @ case 3
    .4byte .L08039D90 @ case 4
.L08039D84:
    movs r0, #0x80
    lsls r0, r0, #8
    b .L08039D92
.L08039D8A:
    movs r0, #0x80
    lsls r0, r0, #9
    b .L08039D92
.L08039D90:
    movs r0, #0
.L08039D92:
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08039D98
func_08039D98: @ 0x08039D98
    ldr r0, [r0, #0x34]
    ldr r1, [r0, #0xc]
    movs r0, #4
    eors r1, r0
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r0, r0, #0x1f
    bx lr

    thumb_func_start func_08039DA8
func_08039DA8: @ 0x08039DA8
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, [r4, #0x34]
    ldr r0, [r0, #0xc]
    cmp r0, #1
    beq .L08039E00
    movs r0, #0x78
    bl func_080AB788
    adds r0, #0xf0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L08039E08 @ =0xFFFF0000
    ldr r1, [sp]
    ands r1, r2
    orrs r1, r0
    ldr r0, .L08039E0C @ =0xFF80FFFF
    ands r1, r0
    movs r0, #0xf0
    lsls r0, r0, #0xe
    orrs r1, r0
    ldr r0, .L08039E10 @ =0xFF7FFFFF
    ands r1, r0
    ldr r0, .L08039E14 @ =0x00FFFFFF
    ands r1, r0
    str r1, [sp]
    ldr r0, [r4, #0x34]
    mov r1, sp
    bl func_0809C0C8
    ldr r0, [r4, #0x34]
    movs r1, #0xf
    bl func_0809C068
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0
    bl func_08032384
    adds r0, r4, #0
    movs r1, #0xaa
    bl func_080200C4
.L08039E00:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08039E08: .4byte 0xFFFF0000
.L08039E0C: .4byte 0xFF80FFFF
.L08039E10: .4byte 0xFF7FFFFF
.L08039E14: .4byte 0x00FFFFFF

    thumb_func_start func_08039E18
func_08039E18: @ 0x08039E18
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, [r4, #0x34]
    ldr r0, [r0, #0xc]
    cmp r0, #1
    beq .L08039E72
    movs r0, #0x78
    bl func_080AB788
    adds r0, #0xf0
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r2, .L08039E7C @ =0xFFFF0000
    ldr r1, [sp]
    ands r1, r2
    orrs r1, r0
    ldr r0, .L08039E80 @ =0xFF80FFFF
    ands r1, r0
    movs r0, #0xf0
    lsls r0, r0, #0xe
    orrs r1, r0
    movs r0, #0x80
    lsls r0, r0, #0x10
    orrs r1, r0
    ldr r0, .L08039E84 @ =0x00FFFFFF
    ands r1, r0
    str r1, [sp]
    ldr r0, [r4, #0x34]
    mov r1, sp
    bl func_0809C0C8
    ldr r0, [r4, #0x34]
    movs r1, #4
    bl func_0809C068
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0
    bl func_08032384
    adds r0, r4, #0
    movs r1, #0xaa
    bl func_080200C4
.L08039E72:
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08039E7C: .4byte 0xFFFF0000
.L08039E80: .4byte 0xFF80FFFF
.L08039E84: .4byte 0x00FFFFFF
.L08039E88:
    .byte 0x02, 0x20, 0x70, 0x47, 0x41, 0x6B, 0xC9, 0x68
    .byte 0x89, 0x00, 0x09, 0x18, 0x88, 0x6B, 0x70, 0x47

    thumb_func_start func_08039E98
func_08039E98: @ 0x08039E98
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x14
    adds r7, r0, #0
    adds r6, r1, #0
    adds r5, r2, #0
    mov sb, r3
    ldr r0, .L08039F30 @ =vtable_unk_080E76BC
    str r0, [r7, #0x4c]
    str r6, [r7]
    movs r4, #0
    strh r5, [r7, #4]
    ldr r0, [r6]
    ldr r1, [r0, #0x68]
    adds r0, r6, #0
    bl _call_via_r1
    adds r1, r0, #0
    adds r0, r7, #0
    adds r0, #8
    movs r2, #3
    str r2, [sp]
    movs r2, #0x1b
    str r2, [sp, #4]
    add r2, sp, #8
    strb r4, [r2]
    adds r2, r5, #0
    adds r3, r6, #0
    bl func_080A4A00
    mov r0, sb
    cmp r0, #1
    bne .L08039F3C
    movs r0, #0x4c
    bl __builtin_new
    adds r5, r0, #0
    ldr r0, [r6]
    ldr r1, [r0, #0x68]
    adds r0, r6, #0
    bl _call_via_r1
    adds r4, r0, #0
    adds r0, r5, #0
    adds r1, r6, #0
    movs r2, #2
    movs r3, #0xf
    bl func_080A4740
    ldr r0, .L08039F34 @ =vtable_unk_080E602C
    str r0, [r5, #0x24]
    movs r1, #0x28
    adds r1, r1, r5
    mov r8, r1
    ldr r6, [r4]
    add r0, sp, #0xc
    ldr r3, [r6, #0xc]
    adds r1, r4, #0
    ldr r2, .L08039F38 @ =0x0000091A
    bl _call_via_r3
    ldr r0, [sp, #0xc]
    ldrh r2, [r0]
    mov r0, r8
    ldr r3, [r6, #0x10]
    adds r1, r4, #0
    bl _call_via_r3
    adds r0, r5, #0
    adds r0, #0x48
    mov r1, sb
    strb r1, [r0]
    b .L08039F3E
    .align 2, 0
.L08039F30: .4byte vtable_unk_080E76BC
.L08039F34: .4byte vtable_unk_080E602C
.L08039F38: .4byte 0x0000091A
.L08039F3C:
    movs r5, #0
.L08039F3E:
    str r5, [r7, #0x48]
    adds r0, r7, #0
    add sp, #0x14
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08039F50
func_08039F50: @ 0x08039F50
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, .L08039F8C @ =vtable_unk_080E76BC
    str r0, [r4, #0x4c]
    ldr r1, [r4, #0x48]
    cmp r1, #0
    beq .L08039F6C
    ldr r0, [r1, #0x24]
    ldr r2, [r0, #8]
    adds r0, r1, #0
    movs r1, #3
    bl _call_via_r2
.L08039F6C:
    adds r0, r4, #0
    adds r0, #8
    movs r1, #2
    bl func_080A47B4
    movs r0, #1
    ands r0, r5
    cmp r0, #0
    beq .L08039F84
    adds r0, r4, #0
    bl __builtin_delete
.L08039F84:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08039F8C: .4byte vtable_unk_080E76BC

    thumb_func_start func_08039F90
func_08039F90: @ 0x08039F90
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x48
    mov sl, r0
    adds r4, r1, #0
    mov sb, r2
    mov r8, r3
    ldr r5, [sp, #0x68]
    ldr r6, [sp, #0x6c]
    ldr r7, [sp, #0x70]
    ldr r0, [r4]
    ldr r1, [r0, #0x18]
    adds r0, r4, #0
    bl _call_via_r1
    subs r5, r5, r0
    str r5, [sp, #0x3c]
    ldr r0, [r4]
    ldr r1, [r0, #0x1c]
    adds r0, r4, #0
    bl _call_via_r1
    subs r0, r6, r0
    str r0, [sp, #0x40]
    movs r0, #0x80
    lsls r0, r0, #8
    subs r0, r0, r6
    str r0, [sp, #0x44]
    add r0, sp, #0x34
    mov r1, r8
    str r1, [sp, #0x34]
    mov r3, sb
    str r3, [r0, #4]
    adds r5, r7, #0
    mov sb, r0
    cmp r5, #0
    bge .L08039FE2
    rsbs r7, r5, #0
.L08039FE2:
    ldr r4, [sp, #0x40]
    subs r4, r4, r7
    mov r8, r4
    mov r6, sl
    adds r6, #8
    movs r0, #3
    ldr r7, [sp, #0x74]
    ands r0, r7
    lsls r4, r0, #2
    orrs r4, r0
    lsls r1, r0, #4
    orrs r4, r1
    lsls r0, r0, #6
    orrs r4, r0
    mov r0, sl
    ldr r1, [r0, #0x30]
    ldr r3, [r1]
    ldrh r2, [r0, #0x3c]
    lsls r2, r2, #2
    ldr r0, [r0, #0x34]
    adds r0, r0, r2
    ldrh r2, [r0]
    add r0, sp, #0x14
    ldr r3, [r3, #0x10]
    bl _call_via_r3
    add r7, sp, #0x14
    mov r1, sb
    ldr r1, [r1, #4]
    mov ip, r1
    mov r3, sl
    ldr r2, [r3, #8]
    ldr r1, [r3, #0x10]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge .L0803A054
    ldrh r0, [r6, #0xc]
    mov r1, sl
    adds r1, #0x18
    ldr r3, [sp, #0x44]
    str r3, [sp]
    adds r3, r7, #0
    str r3, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    mov r0, ip
    ldr r1, [sp, #0x3c]
    mov r2, r8
    adds r3, r4, #0
    ldr r4, .L0803A050 @ =func_030004DC
    bl _call_via_r4
    b .L0803A056
    .align 2, 0
.L0803A050: .4byte func_030004DC
.L0803A054:
    movs r0, #0
.L0803A056:
    cmp r0, #0
    beq .L0803A0AA
    adds r0, r6, #0
    adds r0, #0x3c
    ldrb r1, [r0]
    mov r8, r0
    cmp r1, #0
    beq .L0803A0AA
    ldr r1, [sp, #0x34]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0803A08A
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    b .L0803A0A4
.L0803A08A:
    adds r4, r6, #0
    adds r4, #0x3e
    ldrb r0, [r4]
    cmp r0, #0
    bne .L0803A0A4
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #1
    strb r0, [r4]
.L0803A0A4:
    movs r0, #0
    mov r4, r8
    strb r0, [r4]
.L0803A0AA:
    mov r7, sl
    ldr r0, [r7, #0x48]
    cmp r0, #0
    beq .L0803A134
    cmp r5, #0
    blt .L0803A134
    adds r6, r0, #0
    mov r5, sb
    movs r0, #3
    ldr r1, [sp, #0x74]
    ands r0, r1
    lsls r3, r0, #2
    orrs r3, r0
    lsls r1, r0, #4
    orrs r3, r1
    lsls r0, r0, #6
    orrs r3, r0
    adds r7, r6, #0
    adds r7, #0x28
    ldr r4, [r5, #4]
    mov r8, r4
    adds r0, r6, #0
    ldm r0!, {r2}
    ldr r1, [r0, #4]
    rsbs r0, r1, #0
    orrs r0, r1
    cmp r0, #0
    bge .L0803A108
    ldrh r0, [r6, #0xc]
    adds r1, r6, #0
    adds r1, #0x10
    ldr r4, [sp, #0x44]
    str r4, [sp]
    str r7, [sp, #4]
    str r2, [sp, #8]
    str r0, [sp, #0xc]
    str r1, [sp, #0x10]
    mov r0, r8
    ldr r1, [sp, #0x3c]
    ldr r2, [sp, #0x40]
    ldr r4, .L0803A104 @ =func_030004DC
    bl _call_via_r4
    b .L0803A10A
    .align 2, 0
.L0803A104: .4byte func_030004DC
.L0803A108:
    movs r0, #0
.L0803A10A:
    cmp r0, #0
    beq .L0803A134
    adds r4, r6, #0
    adds r4, #0x48
    ldrb r0, [r4]
    cmp r0, #0
    beq .L0803A134
    ldr r1, [r5]
    adds r2, r7, #0
    adds r2, #8
    adds r0, r6, #0
    bl func_080A480C
    adds r1, r7, #0
    adds r1, #0x10
    adds r0, r6, #0
    movs r2, #1
    bl func_080A4944
    movs r0, #0
    strb r0, [r4]
.L0803A134:
    add sp, #0x48
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_0803A144
func_0803A144: @ 0x0803A144
    push {r4, lr}
    adds r4, r1, #0
    lsls r2, r2, #0x18
    lsrs r0, r2, #0x18
    cmp r2, #0
    bge .L0803A15A
    movs r0, #3
    bl func_080AB788
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
.L0803A15A:
    ldr r2, .L0803A17C @ =gUnk_080F16C2
    lsls r0, r0, #0x18
    asrs r0, r0, #0x18
    lsls r1, r0, #2
    adds r1, r1, r2
    ldrh r1, [r1]
    strh r1, [r4, #4]
    lsls r1, r0, #1
    adds r1, #1
    lsls r1, r1, #1
    adds r1, r1, r2
    ldrh r1, [r1]
    strh r1, [r4, #6]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0803A17C: .4byte gUnk_080F16C2

    thumb_func_start func_0803A180
func_0803A180: @ 0x0803A180
    push {r4, r5, r6, r7, lr}
    mov r7, sb
    mov r6, r8
    push {r6, r7}
    sub sp, #0x48
    mov r8, r0
    adds r4, r1, #0
    adds r5, r2, #0
    movs r0, #0
    mov sb, r0
    mov r2, r8
    ldr r1, [r2]
    ldr r2, [r1]
    mov r0, sp
    ldr r3, [r2, #0x34]
    movs r2, #0
    bl _call_via_r3
    movs r6, #4
    ldrsh r1, [r4, r6]
    movs r7, #6
    ldrsh r3, [r4, r7]
    add r2, sp, #0x40
    adds r0, r1, #0
    subs r0, #8
    strh r0, [r2]
    adds r0, r3, #0
    subs r0, #8
    strh r0, [r2, #2]
    adds r1, #8
    strh r1, [r2, #4]
    adds r3, #8
    strh r3, [r2, #6]
    add r3, sp, #0xc
    movs r0, #0x20
    mov ip, r0
    movs r1, #0x21
    str r1, [sp, #0xc]
    subs r0, #0x41
    str r0, [r3, #4]
    str r0, [r3, #8]
    str r1, [r3, #0xc]
    add r1, sp, #0x20
    mov r0, sp
    ldm r0!, {r2, r6, r7}
    stm r1!, {r2, r6, r7}
    ldr r0, [sp, #0x40]
    ldr r1, [sp, #0x44]
    str r0, [sp, #0x2c]
    str r1, [sp, #0x30]
    mov r0, ip
    str r0, [r3, #0x28]
    mov r1, sb
    str r1, [r3, #0x2c]
    str r1, [r3, #0x30]
    movs r0, #0x12
    ldrsb r0, [r4, r0]
    cmp r0, #0
    beq .L0803A2A6
    cmp r0, #1
    bne .L0803A2A6
    ldr r0, [r4]
    cmp r0, #1
    beq .L0803A234
    cmp r0, #1
    bgt .L0803A20A
    cmp r0, #0
    beq .L0803A214
    b .L0803A2A2
.L0803A20A:
    cmp r0, #2
    beq .L0803A254
    cmp r0, #3
    beq .L0803A274
    b .L0803A2A2
.L0803A214:
    ldr r1, [sp, #0xc]
    ldr r0, [sp, #0x34]
    cmp r1, r0
    ble .L0803A226
    adds r0, r3, #0
    bl func_080AB85C
    ldr r0, [sp, #0xc]
    b .L0803A228
.L0803A226:
    adds r0, r1, #0
.L0803A228:
    cmp r0, #1
    ble .L0803A2A2
    ldr r0, [r4, #0xc]
    adds r0, r0, r5
    str r0, [r4, #0xc]
    b .L0803A2A6
.L0803A234:
    ldr r1, [sp, #0x10]
    ldr r0, [sp, #0x34]
    cmn r1, r0
    bge .L0803A244
    adds r0, r3, #0
    bl func_080AB8D0
    ldr r1, [sp, #0x10]
.L0803A244:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bge .L0803A2A2
    ldr r0, [r4, #0xc]
    subs r0, r0, r5
    str r0, [r4, #0xc]
    b .L0803A2A6
.L0803A254:
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x34]
    cmn r1, r0
    bge .L0803A264
    adds r0, r3, #0
    bl func_080AB948
    ldr r1, [sp, #0x14]
.L0803A264:
    movs r0, #1
    rsbs r0, r0, #0
    cmp r1, r0
    bge .L0803A2A2
    ldr r0, [r4, #8]
    subs r0, r0, r5
    str r0, [r4, #8]
    b .L0803A2A6
.L0803A274:
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x34]
    cmp r1, r0
    ble .L0803A286
    adds r0, r3, #0
    bl func_080AB9C4
    ldr r0, [sp, #0x18]
    b .L0803A288
.L0803A286:
    adds r0, r1, #0
.L0803A288:
    cmp r0, #1
    ble .L0803A2A2
    ldr r0, [r4, #8]
    adds r0, r0, r5
    str r0, [r4, #8]
    asrs r0, r0, #0x10
    movs r1, #0x91
    lsls r1, r1, #2
    cmp r0, r1
    ble .L0803A2A6
    movs r0, #0x91
    lsls r0, r0, #0x12
    str r0, [r4, #8]
.L0803A2A2:
    movs r0, #0
    strh r0, [r4, #0x10]
.L0803A2A6:
    movs r2, #0xa
    ldrsh r0, [r4, r2]
    strh r0, [r4, #4]
    movs r6, #0xe
    ldrsh r0, [r4, r6]
    strh r0, [r4, #6]
    mov r1, r8
    adds r1, #0x47
    ldrb r0, [r1]
    cmp r0, #0
    bne .L0803A2D2
    mov r0, r8
    adds r0, #0x30
    bl func_0805E8F0
    lsls r0, r0, #0x1e
    cmp r0, #0
    bge .L0803A2D6
    mov r1, r8
    adds r1, #0x44
    movs r0, #1
    b .L0803A2D4
.L0803A2D2:
    movs r0, #0
.L0803A2D4:
    strb r0, [r1]
.L0803A2D6:
    ldrh r0, [r4, #0x10]
    subs r0, #1
    strh r0, [r4, #0x10]
    lsls r0, r0, #0x10
    cmp r0, #0
    bge .L0803A310
    movs r0, #3
    bl func_080AB788
    lsls r0, r0, #0x10
    asrs r1, r0, #0x10
    cmp r1, #3
    bne .L0803A2F6
    movs r0, #0
    strb r0, [r4, #0x12]
    b .L0803A302
.L0803A2F6:
    movs r0, #1
    strb r0, [r4, #0x12]
    ldr r0, [r4]
    bl func_080AB7A4
    str r0, [r4]
.L0803A302:
    movs r0, #0x1f
    bl func_080AB788
    adds r0, #0x10
    strh r0, [r4, #0x10]
    movs r7, #1
    mov sb, r7
.L0803A310:
    mov r0, sb
    add sp, #0x48
    pop {r3, r4}
    mov r8, r3
    mov sb, r4
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_0803A320
func_0803A320: @ 0x0803A320
    ldr r0, .L0803A330 @ =gUnk_080F16D2
    lsls r1, r1, #0x10
    asrs r1, r1, #0xf
    adds r1, r1, r0
    movs r2, #0
    ldrsh r0, [r1, r2]
    bx lr
    .align 2, 0
.L0803A330: .4byte gUnk_080F16D2

    thumb_func_start func_0803A334
func_0803A334: @ 0x0803A334
    ldr r2, .L0803A34C @ =gUnk_080F16D2
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    adds r1, #0x40
    movs r0, #0xff
    ands r1, r0
    lsls r1, r1, #1
    adds r1, r1, r2
    movs r2, #0
    ldrsh r0, [r1, r2]
    bx lr
    .align 2, 0
.L0803A34C: .4byte gUnk_080F16D2

    thumb_func_start func_0803A350
func_0803A350: @ 0x0803A350
    push {r4, r5, r6, lr}
    adds r6, r1, #0
    ldr r0, [r0]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    cmp r4, r5
    beq .L0803A382
.L0803A36C:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803A37C
    ldr r0, [r4]
    b .L0803A386
.L0803A37C:
    adds r4, #4
    cmp r4, r5
    bne .L0803A36C
.L0803A382:
    subs r0, r5, #4
    ldr r0, [r0]
.L0803A386:
    lsls r1, r6, #0x10
    lsrs r1, r1, #0x10
    bl func_08008B6C
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_0803A394
func_0803A394: @ 0x0803A394
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #8
    adds r6, r0, #0
    mov r8, r1
    adds r5, r2, #0
    lsls r3, r3, #0x18
    lsrs r3, r3, #0x18
    mov sb, r3
    ldr r7, .L0803A3E4 @ =gUnk_080F1904
    cmp r3, #0
    bne .L0803A3B4
    ldr r7, .L0803A3E8 @ =gUnk_080F18D2
.L0803A3B4:
    movs r0, #4
    mov sl, r0
    mov r1, sb
    cmp r1, #0
    bne .L0803A3C2
    movs r2, #0xa
    mov sl, r2
.L0803A3C2:
    movs r0, #0x63
    bl func_080AB788
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    movs r3, #0
    str r3, [sp]
    movs r0, #0
    str r0, [sp, #4]
    mov ip, r0
    cmp r5, #1
    beq .L0803A3FC
    cmp r5, #1
    bgt .L0803A3EC
    cmp r5, #0
    beq .L0803A3F6
    b .L0803A40C
    .align 2, 0
.L0803A3E4: .4byte gUnk_080F1904
.L0803A3E8: .4byte gUnk_080F18D2
.L0803A3EC:
    cmp r5, #2
    beq .L0803A402
    cmp r5, #3
    beq .L0803A408
    b .L0803A40C
.L0803A3F6:
    movs r1, #0
    mov ip, r1
    b .L0803A40C
.L0803A3FC:
    movs r2, #1
    mov ip, r2
    b .L0803A40C
.L0803A402:
    movs r3, #2
    mov ip, r3
    b .L0803A40C
.L0803A408:
    movs r5, #3
    mov ip, r5
.L0803A40C:
    movs r3, #0
    cmp r3, sl
    bge .L0803A458
    lsls r0, r4, #0x10
    asrs r0, r0, #0x10
    mov r2, ip
    adds r1, r7, r2
    ldrb r1, [r1]
    cmp r0, r1
    bge .L0803A428
    str r3, [sp]
    ldrb r5, [r7, #4]
    str r5, [sp, #4]
    b .L0803A458
.L0803A428:
    lsls r0, r3, #2
    adds r0, r0, r3
    adds r0, r0, r7
    add r0, ip
    ldrb r0, [r0]
    subs r0, r4, r0
    lsls r0, r0, #0x10
    lsrs r4, r0, #0x10
    adds r3, #1
    cmp r3, sl
    bge .L0803A458
    lsls r0, r4, #0x10
    asrs r0, r0, #0x10
    lsls r1, r3, #2
    adds r1, r1, r3
    adds r2, r1, r7
    mov r5, ip
    adds r1, r2, r5
    ldrb r1, [r1]
    cmp r0, r1
    bge .L0803A428
    str r3, [sp]
    ldrb r2, [r2, #4]
    str r2, [sp, #4]
.L0803A458:
    ldr r0, [sp]
    cmp r0, #0
    beq .L0803A468
    mov r1, sb
    cmp r1, #0
    beq .L0803A468
    adds r0, #9
    str r0, [sp]
.L0803A468:
    ldr r2, [sp, #4]
    cmp r2, #1
    ble .L0803A47A
    adds r0, r2, #0
    subs r0, #1
    bl func_080AB788
    adds r0, #1
    str r0, [sp, #4]
.L0803A47A:
    ldr r3, [sp, #4]
    cmp r3, #0
    bgt .L0803A482
    b .L0803A782
.L0803A482:
    movs r0, #0xc4
    lsls r0, r0, #1
    bl func_080AB788
    adds r5, r0, #0
    adds r5, #0xb8
    cmp r5, #0xef
    bgt .L0803A4A0
    movs r0, #0x38
    bl func_080AB788
    movs r1, #0xf8
    lsls r1, r1, #1
    adds r7, r0, r1
    b .L0803A4AC
.L0803A4A0:
    movs r0, #0x30
    bl func_080AB788
    movs r2, #0x8a
    lsls r2, r2, #2
    adds r7, r0, r2
.L0803A4AC:
    ldr r0, [sp]
    subs r0, #1
    cmp r0, #0xb
    bls .L0803A4B6
    b .L0803A776
.L0803A4B6:
    lsls r0, r0, #2
    ldr r1, .L0803A4C0 @ =.L0803A4C4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0803A4C0: .4byte .L0803A4C4
.L0803A4C4: @ jump table
    .4byte .L0803A4F4 @ case 0
    .4byte .L0803A55C @ case 1
    .4byte .L0803A578 @ case 2
    .4byte .L0803A598 @ case 3
    .4byte .L0803A5B8 @ case 4
    .4byte .L0803A608 @ case 5
    .4byte .L0803A670 @ case 6
    .4byte .L0803A690 @ case 7
    .4byte .L0803A6B0 @ case 8
    .4byte .L0803A6D0 @ case 9
    .4byte .L0803A6F0 @ case 10
    .4byte .L0803A710 @ case 11
.L0803A4F4:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, .L0803A554 @ =0x000009B6
    movs r3, #1
    bl func_08039E98
    ldr r0, .L0803A558 @ =vtable_unk_080E76A4
.L0803A508:
    str r0, [r4, #0x4c]
    movs r1, #0
    str r1, [r4, #0x50]
    adds r2, r4, #0
    adds r2, #0x54
    movs r3, #0
    strh r5, [r2]
    adds r5, r4, #0
    adds r5, #0x56
    strh r7, [r5]
    adds r0, r4, #0
    adds r0, #0x60
    strh r1, [r0]
    adds r0, #2
    strb r3, [r0]
    movs r3, #0
    ldrsh r0, [r2, r3]
    lsls r0, r0, #0x10
    str r0, [r4, #0x58]
    movs r1, #0
    ldrsh r0, [r5, r1]
    lsls r0, r0, #0x10
    str r0, [r4, #0x5c]
.L0803A536:
    adds r1, r6, #0
    adds r1, #8
    ldr r0, [r6, #8]
    cmp r0, #2
    bls .L0803A542
    b .L0803A776
.L0803A542:
    lsls r0, r0, #2
    adds r0, #4
    adds r0, r1, r0
    cmp r0, #0
    bne .L0803A54E
    b .L0803A770
.L0803A54E:
    str r4, [r0]
    b .L0803A770
    .align 2, 0
.L0803A554: .4byte 0x000009B6
.L0803A558: .4byte vtable_unk_080E76A4
.L0803A55C:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    movs r2, #0x10
    movs r3, #1
    bl func_08039E98
    ldr r0, .L0803A574 @ =vtable_unk_080E768C
    b .L0803A508
    .align 2, 0
.L0803A574: .4byte vtable_unk_080E768C
.L0803A578:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, .L0803A590 @ =0x000003DB
    movs r3, #1
    bl func_08039E98
    ldr r0, .L0803A594 @ =vtable_unk_080E7674
    b .L0803A508
    .align 2, 0
.L0803A590: .4byte 0x000003DB
.L0803A594: .4byte vtable_unk_080E7674
.L0803A598:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, .L0803A5B0 @ =0x00000806
    movs r3, #1
    bl func_08039E98
    ldr r0, .L0803A5B4 @ =vtable_unk_080E765C
    b .L0803A508
    .align 2, 0
.L0803A5B0: .4byte 0x00000806
.L0803A5B4: .4byte vtable_unk_080E765C
.L0803A5B8:
    movs r0, #0x6c
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, .L0803A600 @ =0x00000202
    movs r3, #1
    bl func_08039E98
    ldr r0, .L0803A604 @ =vtable_unk_080E7644
    str r0, [r4, #0x4c]
    movs r1, #0
    str r1, [r4, #0x50]
    adds r2, r4, #0
    adds r2, #0x54
    movs r3, #0
    strh r5, [r2]
    adds r5, r4, #0
    adds r5, #0x56
    strh r7, [r5]
    adds r0, r4, #0
    adds r0, #0x60
    strh r1, [r0]
    adds r0, #2
    strb r3, [r0]
    movs r3, #0
    ldrsh r0, [r2, r3]
    lsls r0, r0, #0x10
    str r0, [r4, #0x58]
    movs r2, #0
    ldrsh r0, [r5, r2]
    lsls r0, r0, #0x10
    str r0, [r4, #0x5c]
    str r1, [r4, #0x68]
    b .L0803A536
    .align 2, 0
.L0803A600: .4byte 0x00000202
.L0803A604: .4byte vtable_unk_080E7644
.L0803A608:
    movs r0, #0x88
    bl __builtin_new
    adds r5, r0, #0
    mov r1, r8
    movs r2, #0xa9
    lsls r2, r2, #2
    movs r3, #1
    bl func_08039E98
    ldr r0, .L0803A66C @ =vtable_unk_080E762C
    str r0, [r5, #0x4c]
    movs r4, #0
    str r4, [r5, #0x50]
    adds r1, r5, #0
    adds r1, #0x50
    adds r0, r5, #0
    movs r2, #1
    rsbs r2, r2, #0
    bl func_0803A144
    adds r1, r5, #0
    adds r1, #0x78
    strb r0, [r1]
    adds r1, #1
    movs r0, #0xff
    strb r0, [r1]
    adds r0, r5, #0
    adds r0, #0x60
    movs r1, #0
    strh r4, [r0]
    adds r0, #2
    strb r1, [r0]
    subs r0, #0xe
    movs r3, #0
    ldrsh r0, [r0, r3]
    lsls r0, r0, #0x10
    str r0, [r5, #0x58]
    adds r0, r5, #0
    adds r0, #0x56
    movs r1, #0
    ldrsh r0, [r0, r1]
    lsls r0, r0, #0x10
    str r0, [r5, #0x5c]
    adds r1, r5, #0
    adds r1, #0x84
    movs r0, #0xf8
    strb r0, [r1]
    b .L0803A75A
    .align 2, 0
.L0803A66C: .4byte vtable_unk_080E762C
.L0803A670:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, .L0803A688 @ =0x0000087B
    movs r3, #1
    bl func_08039E98
    ldr r0, .L0803A68C @ =vtable_unk_080E7614
    b .L0803A508
    .align 2, 0
.L0803A688: .4byte 0x0000087B
.L0803A68C: .4byte vtable_unk_080E7614
.L0803A690:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, .L0803A6A8 @ =0x0000065C
    movs r3, #1
    bl func_08039E98
    ldr r0, .L0803A6AC @ =vtable_unk_080E75FC
    b .L0803A508
    .align 2, 0
.L0803A6A8: .4byte 0x0000065C
.L0803A6AC: .4byte vtable_unk_080E75FC
.L0803A6B0:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, .L0803A6C8 @ =0x000008F9
    movs r3, #1
    bl func_08039E98
    ldr r0, .L0803A6CC @ =vtable_unk_080E75E4
    b .L0803A508
    .align 2, 0
.L0803A6C8: .4byte 0x000008F9
.L0803A6CC: .4byte vtable_unk_080E75E4
.L0803A6D0:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, .L0803A6E8 @ =0x000009A9
    movs r3, #1
    bl func_08039E98
    ldr r0, .L0803A6EC @ =vtable_unk_080E75CC
    b .L0803A508
    .align 2, 0
.L0803A6E8: .4byte 0x000009A9
.L0803A6EC: .4byte vtable_unk_080E75CC
.L0803A6F0:
    movs r0, #0x64
    bl __builtin_new
    adds r4, r0, #0
    mov r1, r8
    ldr r2, .L0803A708 @ =0x000008FD
    movs r3, #1
    bl func_08039E98
    ldr r0, .L0803A70C @ =vtable_unk_080E75B4
    b .L0803A508
    .align 2, 0
.L0803A708: .4byte 0x000008FD
.L0803A70C: .4byte vtable_unk_080E75B4
.L0803A710:
    movs r0, #0x64
    bl __builtin_new
    adds r5, r0, #0
    mov r1, r8
    movs r2, #0x15
    movs r3, #0
    bl func_08039E98
    ldr r0, .L0803A794 @ =vtable_unk_080E759C
    str r0, [r5, #0x4c]
    movs r4, #0
    str r4, [r5, #0x50]
    adds r1, r5, #0
    adds r1, #0x50
    adds r0, r5, #0
    movs r2, #1
    rsbs r2, r2, #0
    bl func_0803A144
    adds r0, r5, #0
    adds r0, #0x60
    movs r1, #0
    strh r4, [r0]
    adds r0, #2
    strb r1, [r0]
    subs r0, #0xe
    movs r2, #0
    ldrsh r0, [r0, r2]
    lsls r0, r0, #0x10
    str r0, [r5, #0x58]
    adds r0, r5, #0
    adds r0, #0x56
    movs r3, #0
    ldrsh r0, [r0, r3]
    lsls r0, r0, #0x10
    str r0, [r5, #0x5c]
.L0803A75A:
    adds r1, r6, #0
    adds r1, #8
    ldr r0, [r6, #8]
    cmp r0, #2
    bhi .L0803A776
    lsls r0, r0, #2
    adds r0, #4
    adds r0, r1, r0
    cmp r0, #0
    beq .L0803A770
    str r5, [r0]
.L0803A770:
    ldr r0, [r6, #8]
    adds r0, #1
    str r0, [r6, #8]
.L0803A776:
    ldr r5, [sp, #4]
    subs r5, #1
    str r5, [sp, #4]
    cmp r5, #0
    ble .L0803A782
    b .L0803A482
.L0803A782:
    add sp, #8
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0803A794: .4byte vtable_unk_080E759C
