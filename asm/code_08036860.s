    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036860
func_08036860: @ 0x08036860
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L0803688C @ =gUnk_080F4974
    str r0, [sp]
    ldr r0, .L08036890 @ =0x000007F2
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    movs r0, #0xfd
    lsls r0, r0, #2
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036894 @ =vtable_unk_080E6B98
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0803688C: .4byte gUnk_080F4974
.L08036890: .4byte 0x000007F2
.L08036894: .4byte vtable_unk_080E6B98

