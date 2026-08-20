    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    .align 2, 0

    thumb_func_start func_08035EAC
func_08035EAC: @ 0x08035EAC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L08035EDC @ =gUnk_080F6370
    str r0, [sp]
    movs r0, #0x8c
    lsls r0, r0, #4
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0xff
    lsls r0, r0, #2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08035EE0 @ =vtable_unk_080E6FD8
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L08035EDC: .4byte gUnk_080F6370
.L08035EE0: .4byte vtable_unk_080E6FD8

