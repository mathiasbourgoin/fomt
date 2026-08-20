    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    .align 2, 0

    thumb_func_start func_08036BB0
func_08036BB0: @ 0x08036BB0
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    movs r0, #0xa
    ldrsh r5, [r4, r0]
    movs r2, #0xe
    ldrsh r6, [r4, r2]
    adds r0, r4, #0
    bl func_08034EB4
    ldrh r0, [r4, #4]
    cmp r0, #2
    bne .L08036BF0
    cmp r5, #0xf4
    bne .L08036BD0
    cmp r6, #0xab
    beq .L08036BF0
.L08036BD0:
    movs r1, #0xa
    ldrsh r0, [r4, r1]
    movs r2, #0xe
    ldrsh r1, [r4, r2]
    cmp r0, #0xf4
    bne .L08036BF0
    cmp r1, #0xab
    bne .L08036BF0
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0x8a
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
.L08036BF0:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08036BF8
func_08036BF8: @ 0x08036BF8
    push {r4, r5, r6, r7, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    movs r0, #0xa
    ldrsh r6, [r5, r0]
    movs r1, #0xe
    ldrsh r7, [r5, r1]
    adds r0, r5, #0
    adds r1, r4, #0
    bl func_08034F00
    cmp r4, #1
    ble .L08036C40
    ldrh r0, [r5, #4]
    cmp r0, #2
    bne .L08036C40
    cmp r6, #0xf4
    bne .L08036C20
    cmp r7, #0xab
    beq .L08036C40
.L08036C20:
    movs r2, #0xa
    ldrsh r0, [r5, r2]
    movs r2, #0xe
    ldrsh r1, [r5, r2]
    cmp r0, #0xf4
    bne .L08036C40
    cmp r1, #0xab
    bne .L08036C40
    ldr r0, [r5]
    ldr r1, [r0]
    movs r2, #0x8a
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
.L08036C40:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08036C48
func_08036C48: @ 0x08036C48
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08036C74 @ =gUnk_080F597C
    str r0, [sp]
    ldr r0, .L08036C78 @ =0x00000857
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0xfe
    lsls r0, r0, #2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036C7C @ =vtable_unk_080E6A58
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08036C74: .4byte gUnk_080F597C
.L08036C78: .4byte 0x00000857
.L08036C7C: .4byte vtable_unk_080E6A58

