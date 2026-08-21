	.INCLUDE "asm/macro.inc"
	.SYNTAX UNIFIED

    thumb_func_start func_0801DD78
func_0801DD78: @ 0x0801DD78
    push {lr}
    ldr r0, [r0, #4]
    bl func_080A601C
    pop {r0}
    bx r0
.L0801DD84:
    .byte 0x30, 0xB5, 0x82, 0xB0, 0x04, 0x1C, 0x0F, 0x49, 0x60, 0x18, 0x00, 0x68
    .byte 0xFA, 0x21, 0x49, 0x00, 0x40, 0x18, 0xEE, 0xF7, 0x71, 0xF9, 0x05, 0x1C, 0x60, 0x68, 0x88, 0xF0
    .byte 0xAF, 0xFA, 0x68, 0x46, 0x29, 0x1C, 0xED, 0xF7, 0xFD, 0xFE, 0x20, 0x1C, 0xFF, 0xF7, 0xD4, 0xFE
    .byte 0x68, 0x46, 0xF0, 0xF7, 0x51, 0xF9, 0x01, 0x1C, 0x01, 0xA8, 0x01, 0x70, 0xF0, 0xF7, 0xCA, 0xF8
    .byte 0x02, 0xB0, 0x30, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x38, 0x10, 0x00, 0x00

    thumb_func_start func_0801DDCC
func_0801DDCC: @ 0x0801DDCC
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0801DDF0 @ =0x00001038
    adds r0, r4, r1
    ldr r0, [r0]
    ldr r1, .L0801DDF4 @ =0x000034D8
    adds r0, r0, r1
    adds r1, r5, #0
    bl func_0809C5B4
    ldr r0, [r4, #4]
    adds r1, r5, #0
    bl func_080AA850
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0801DDF0: .4byte 0x00001038
.L0801DDF4: .4byte 0x000034D8

    thumb_func_start func_0801DDF8
func_0801DDF8: @ 0x0801DDF8
    push {r4, r5, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r1, .L0801DE1C @ =0x00001038
    adds r0, r4, r1
    ldr r0, [r0]
    ldr r1, .L0801DE20 @ =0x000034D8
    adds r0, r0, r1
    adds r1, r5, #0
    bl func_0809C5D0
    ldr r0, [r4, #4]
    adds r1, r5, #0
    bl func_080AA850
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L0801DE1C: .4byte 0x00001038
.L0801DE20: .4byte 0x000034D8

    thumb_func_start func_0801DE24
func_0801DE24: @ 0x0801DE24
    push {lr}
    ldr r0, [r0, #4]
    bl func_080A63B8
    pop {r0}
    bx r0
