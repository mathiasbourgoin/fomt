	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

    thumb_func_start func_080098AC
func_080098AC: @ 0x080098AC
    push {lr}
    adds r3, r0, #0
    ldr r0, .L080098D4 @ =vtable_unk_080E5BE8
    str r0, [r3, #8]
    ldr r2, [r3]
    cmp r2, #0
    beq .L080098C2
    ldr r0, [r3, #4]
    str r0, [r2]
    ldr r0, [r3, #4]
    str r2, [r0]
.L080098C2:
    movs r0, #1
    ands r0, r1
    cmp r0, #0
    beq .L080098D0
    adds r0, r3, #0
    bl __builtin_delete
.L080098D0:
    pop {r0}
    bx r0
    .align 2, 0
.L080098D4: .4byte vtable_unk_080E5BE8
.L080098D8:
    .byte 0x01, 0x20, 0x70, 0x47

