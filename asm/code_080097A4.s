	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

    thumb_func_start func_080097A4
func_080097A4: @ 0x080097A4
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    mov sl, r0
    mov r3, sl
    adds r3, #4
    movs r4, #0xe0
    lsls r4, r4, #0x13
    mov r1, sl
    ldrb r0, [r1]
    lsls r0, r0, #3
    adds r0, #4
    adds r6, r1, r0
    movs r5, #0
    movs r7, #0x80
    lsls r7, r7, #3
    mov sb, r7
    ldr r0, .L0800982C @ =0x00000FFF
    mov r8, r0
.L080097CE:
    mov r1, sl
    adds r1, #4
    cmp r1, r6
    beq .L080097FC
    movs r7, #0xc0
    lsls r7, r7, #4
    mov ip, r7
.L080097DC:
    ldrh r2, [r1, #4]
    adds r0, r2, #0
    mov r7, ip
    ands r0, r7
    cmp r0, r5
    bne .L080097F6
    ldr r0, [r1]
    str r0, [r4]
    strh r2, [r4, #4]
    ldrh r0, [r3, #6]
    strh r0, [r4, #6]
    adds r3, #8
    adds r4, #8
.L080097F6:
    adds r1, #8
    cmp r1, r6
    bne .L080097DC
.L080097FC:
    add r5, sb
    cmp r5, r8
    bls .L080097CE
    ldr r0, .L08009830 @ =0x07000400
    cmp r4, r0
    beq .L0800981C
    movs r2, #0x80
    lsls r2, r2, #2
    adds r1, r0, #0
.L0800980E:
    str r2, [r4]
    ldrh r0, [r3, #6]
    strh r0, [r4, #6]
    adds r3, #8
    adds r4, #8
    cmp r4, r1
    bne .L0800980E
.L0800981C:
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L0800982C: .4byte 0x00000FFF
.L08009830: .4byte 0x07000400

    thumb_func_start func_08009834
func_08009834: @ 0x08009834
    push {r4, lr}
    adds r2, r0, #0
    ldrb r4, [r2]
    ldrb r3, [r2, #1]
    cmp r4, r3
    bls .L08009856
    lsls r0, r3, #3
    adds r0, #4
    adds r1, r2, r0
    lsls r0, r4, #3
    adds r0, #4
    adds r0, r2, r0
    movs r4, #2
.L0800984E:
    strb r4, [r1, #1]
    adds r1, #8
    cmp r1, r0
    bne .L0800984E
.L08009856:
    strb r3, [r2]
    ldrb r0, [r2, #3]
    strb r0, [r2, #2]
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08009864
func_08009864: @ 0x08009864
    push {r4, lr}
    adds r4, r0, #0
    bl func_0800977C
    adds r0, r4, #0
    bl func_08009834
    pop {r4}
    pop {r0}
    bx r0
.L08009878:
    .byte 0x10, 0xB5, 0x04, 0x1C, 0x20, 0x1D, 0xE0, 0x21
    .byte 0xC9, 0x04, 0x80, 0x22, 0x52, 0x00, 0xC9, 0xF0, 0x61, 0xFF, 0x20, 0x1C, 0xFF, 0xF7, 0xD2, 0xFF
    .byte 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x10, 0xB5, 0x04, 0x1C, 0xFF, 0xF7, 0x82, 0xFF
    .byte 0x20, 0x1C, 0xFF, 0xF7, 0xC7, 0xFF, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47

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

