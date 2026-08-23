    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

.L08000714:
    .byte 0x00, 0xB5, 0x00, 0x79, 0x03, 0x22, 0x10, 0x40, 0x03, 0x30, 0xD0, 0xF0
    .byte 0x75, 0xFC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_08000728
func_08000728: @ 0x08000728
    push {lr}
    lsls r1, r1, #0x10
    lsrs r3, r1, #0x10
    cmp r3, #0x10
    beq .L080007C0
    cmp r3, #0x10
    bgt .L0800074E
    cmp r3, #2
    beq .L08000780
    cmp r3, #2
    bgt .L08000744
    cmp r3, #1
    beq .L08000772
    b .L080007E2
.L08000744:
    cmp r3, #4
    beq .L0800079C
    cmp r3, #8
    beq .L080007B4
    b .L080007E2
.L0800074E:
    cmp r3, #0x80
    beq .L080007D8
    cmp r3, #0x80
    bgt .L08000760
    cmp r3, #0x20
    beq .L080007A8
    cmp r3, #0x40
    beq .L080007CC
    b .L080007E2
.L08000760:
    movs r0, #0x80
    lsls r0, r0, #1
    cmp r3, r0
    beq .L0800078C
    movs r0, #0x80
    lsls r0, r0, #2
    cmp r3, r0
    beq .L0800078C
    b .L080007E2
.L08000772:
    ldr r0, .L0800077C @ =gUnk_03000400
    ldrh r1, [r0]
    movs r2, #1
    b .L080007DE
    .align 2, 0
.L0800077C: .4byte gUnk_03000400
.L08000780:
    ldr r0, .L08000788 @ =gUnk_03000400
    ldrh r1, [r0]
    movs r2, #2
    b .L080007DE
    .align 2, 0
.L08000788: .4byte gUnk_03000400
.L0800078C:
    ldr r2, .L08000798 @ =gUnk_03000400
    ldrh r1, [r2]
    adds r0, r3, #0
    orrs r0, r1
    strh r0, [r2]
    b .L080007E2
    .align 2, 0
.L08000798: .4byte gUnk_03000400
.L0800079C:
    ldr r0, .L080007A4 @ =gUnk_03000400
    ldrh r1, [r0]
    movs r2, #4
    b .L080007DE
    .align 2, 0
.L080007A4: .4byte gUnk_03000400
.L080007A8:
    ldr r0, .L080007B0 @ =gUnk_03000400
    ldrh r1, [r0]
    movs r2, #0x20
    b .L080007DE
    .align 2, 0
.L080007B0: .4byte gUnk_03000400
.L080007B4:
    ldr r0, .L080007BC @ =gUnk_03000400
    ldrh r1, [r0]
    movs r2, #8
    b .L080007DE
    .align 2, 0
.L080007BC: .4byte gUnk_03000400
.L080007C0:
    ldr r0, .L080007C8 @ =gUnk_03000400
    ldrh r1, [r0]
    movs r2, #0x10
    b .L080007DE
    .align 2, 0
.L080007C8: .4byte gUnk_03000400
.L080007CC:
    ldr r0, .L080007D4 @ =gUnk_03000400
    ldrh r1, [r0]
    movs r2, #0x40
    b .L080007DE
    .align 2, 0
.L080007D4: .4byte gUnk_03000400
.L080007D8:
    ldr r0, .L080007E8 @ =gUnk_03000400
    ldrh r1, [r0]
    movs r2, #0x80
.L080007DE:
    orrs r1, r2
    strh r1, [r0]
.L080007E2:
    pop {r0}
    bx r0
    .align 2, 0
.L080007E8: .4byte gUnk_03000400
