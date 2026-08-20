    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    .align 2, 0

    thumb_func_start func_08035FE0
func_08035FE0: @ 0x08035FE0
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    ldr r0, .L0803600C @ =gUnk_080F5540
    str r0, [sp]
    ldr r0, .L08036010 @ =0x0000084B
    str r0, [sp, #4]
    adds r0, #4
    str r0, [sp, #8]
    ldr r0, .L08036014 @ =0x000003F7
    str r0, [sp, #0xc]
    adds r0, r4, #0
    bl __10ANpcEntityP10GameObjectP3NpcUiPCvUiUiUi
    ldr r0, .L08036018 @ =vtable_unk_080E6F18
    str r0, [r4, #0x14]
    adds r0, r4, #0
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
.L0803600C: .4byte gUnk_080F5540
.L08036010: .4byte 0x0000084B
.L08036014: .4byte 0x000003F7
.L08036018: .4byte vtable_unk_080E6F18

