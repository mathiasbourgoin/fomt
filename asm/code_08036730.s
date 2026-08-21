    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036730
func_08036730: @ 0x08036730
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L0803675C @ =gUnk_080F2AF8
    str r0, [sp]
    ldr r0, .L08036760 @ =0x0000027B
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0xf9
    lsls r0, r0, #2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036764 @ =vtable_unk_080E6C18
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0803675C: .4byte gUnk_080F2AF8
.L08036760: .4byte 0x0000027B
.L08036764: .4byte vtable_unk_080E6C18

    thumb_func_start func_08036768
func_08036768: @ 0x08036768
    push {r4, r5, lr}
    adds r4, r0, #0
    ldr r1, .L080367A0 @ =0x0000027B
    movs r5, #2
    ldr r0, [r4, #0x34]
    ldr r2, .L080367A4 @ =0x00002181
    adds r0, r0, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x1e
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne .L08036784
    adds r1, #0x18
    movs r5, #1
.L08036784:
    adds r0, r4, #0
    bl func_08035908
    adds r0, r4, #0
    ldr r1, .L080367A8 @ =0x0000027F
    bl func_08035940
    adds r0, r4, #0
    adds r0, #0x21
    strb r5, [r0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L080367A0: .4byte 0x0000027B
.L080367A4: .4byte 0x00002181
.L080367A8: .4byte 0x0000027F

    thumb_func_start func_080367AC
func_080367AC: @ 0x080367AC
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08034F00
    cmp r4, #1
    ble .L080367C0
    adds r0, r5, #0
    bl func_08036768
.L080367C0:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

