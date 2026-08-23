    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036084
func_08036084: @ 0x08036084
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r7, .L080360C8 @ =0x00000813
    ldr r0, .L080360CC @ =0x00000817
    mov r8, r0
    ldr r5, [r4, #0x34]
    ldr r1, .L080360D0 @ =0x00001CD4
    adds r6, r5, r1
    adds r0, r6, #0
    bl func_080A0490
    cmp r0, #0xc
    bne .L08036114
    ldrh r0, [r4, #4]
    cmp r0, #0x1d
    bne .L08036114
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L080360C2
    ldr r2, .L080360D4 @ =0x0000216C
    adds r0, r5, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x19
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne .L080360DC
.L080360C2:
    ldr r7, .L080360D8 @ =0x00000827
    b .L08036114
    .align 2, 0
.L080360C8: .4byte 0x00000813
.L080360CC: .4byte 0x00000817
.L080360D0: .4byte 0x00001CD4
.L080360D4: .4byte 0x0000216C
.L080360D8: .4byte 0x00000827
.L080360DC:
    adds r0, r6, #0
    bl func_080A0384
    cmp r0, #0
    beq .L08036114
    bl func_0809EAD8
    cmp r0, #0x3b
    bhi .L08036114
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa2
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    adds r1, r0, #0
    adds r1, #0xa
    adds r0, r5, #0
    bl func_08034C64
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08036114
    ldr r7, .L08036130 @ =0x0000082F
    ldr r0, .L08036134 @ =0x00000833
    mov r8, r0
.L08036114:
    adds r0, r4, #0
    adds r1, r7, #0
    bl func_08035908
    adds r0, r4, #0
    mov r1, r8
    bl func_08035940
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08036130: .4byte 0x0000082F
.L08036134: .4byte 0x00000833
