    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036590
func_08036590: @ 0x08036590
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L080365BC @ =gUnk_080F5D94
    str r0, [sp]
    ldr r0, .L080365C0 @ =0x00000884
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L080365C4 @ =0x000003FA
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L080365C8 @ =vtable_unk_080E6C98
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L080365BC: .4byte gUnk_080F5D94
.L080365C0: .4byte 0x00000884
.L080365C4: .4byte 0x000003FA
.L080365C8: .4byte vtable_unk_080E6C98

    thumb_func_start func_080365CC
func_080365CC: @ 0x080365CC
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r7, .L08036610 @ =0x00000884
    ldr r0, .L08036614 @ =0x00000888
    mov r8, r0
    ldr r5, [r4, #0x34]
    ldr r1, .L08036618 @ =0x00001CD4
    adds r6, r5, r1
    adds r0, r6, #0
    bl func_080A0490
    cmp r0, #0x15
    bne .L0803665C
    ldrh r0, [r4, #4]
    cmp r0, #0x1d
    bne .L0803665C
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803660A
    ldr r2, .L0803661C @ =0x0000216C
    adds r0, r5, r2
    ldrb r0, [r0]
    lsls r0, r0, #0x1d
    lsrs r0, r0, #0x1e
    cmp r0, #1
    bne .L08036624
.L0803660A:
    ldr r7, .L08036620 @ =0x0000089C
    b .L0803665C
    .align 2, 0
.L08036610: .4byte 0x00000884
.L08036614: .4byte 0x00000888
.L08036618: .4byte 0x00001CD4
.L0803661C: .4byte 0x0000216C
.L08036620: .4byte 0x0000089C
.L08036624:
    adds r0, r6, #0
    bl func_080A0384
    cmp r0, #0
    beq .L0803665C
    bl func_0809EAD8
    cmp r0, #0x3b
    bhi .L0803665C
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
    beq .L0803665C
    ldr r7, .L08036678 @ =0x00000894
    ldr r0, .L0803667C @ =0x00000898
    mov r8, r0
.L0803665C:
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
.L08036678: .4byte 0x00000894
.L0803667C: .4byte 0x00000898

    thumb_func_start func_08036680
func_08036680: @ 0x08036680
    push {r4, r5, lr}
    adds r5, r0, #0
    adds r4, r1, #0
    bl func_08034F00
    cmp r4, #1
    ble .L08036694
    adds r0, r5, #0
    bl func_080365CC
.L08036694:
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

