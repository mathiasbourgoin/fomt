    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036A78
func_08036A78: @ 0x08036A78
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08036AA4 @ =gUnk_080F7B40
    str r0, [sp]
    ldr r0, .L08036AA8 @ =0x000009D3
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L08036AAC @ =0x00000404
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036AB0 @ =vtable_unk_080E6AD8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08036AA4: .4byte gUnk_080F7B40
.L08036AA8: .4byte 0x000009D3
.L08036AAC: .4byte 0x00000404
.L08036AB0: .4byte vtable_unk_080E6AD8

    thumb_func_start func_08036AB4
func_08036AB4: @ 0x08036AB4
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L08036AD0 @ =0x000009D3
    ldr r5, .L08036AD4 @ =0x000009D7
    ldrh r0, [r4, #4]
    adds r2, r0, #0
    cmp r0, #0x11
    beq .L08036AE0
    cmp r0, #0x11
    bgt .L08036AD8
    cmp r0, #7
    beq .L08036AE0
    b .L08036AE4
    .align 2, 0
.L08036AD0: .4byte 0x000009D3
.L08036AD4: .4byte 0x000009D7
.L08036AD8:
    cmp r2, #0x1d
    beq .L08036AE0
    cmp r2, #0x25
    bne .L08036AE4
.L08036AE0:
    ldr r1, .L08036AF8 @ =0x000009DF
    ldr r5, .L08036AFC @ =0x000009E3
.L08036AE4:
    adds r0, r4, #0
    bl func_08035908
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08035940
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08036AF8: .4byte 0x000009DF
.L08036AFC: .4byte 0x000009E3

    thumb_func_start func_08036B00
func_08036B00: @ 0x08036B00
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08034F00
    cmp r4, #1
    ble .L08036B14
    adds r0, r5, #0
    bl func_08036AB4
.L08036B14:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

