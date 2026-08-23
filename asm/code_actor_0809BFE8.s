    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_0809C0BC
func_0809C0BC: @ 0x0809C0BC
    ldr r1, [r1]
    str r1, [r0, #0x10]
    movs r1, #3
    str r1, [r0, #0xc]
    bx lr
    .align 2, 0

    thumb_func_start func_0809C0C8
func_0809C0C8: @ 0x0809C0C8
    ldr r1, [r1]
    str r1, [r0, #0x10]
    movs r1, #4
    str r1, [r0, #0xc]
    bx lr
    .align 2, 0

    thumb_func_start func_0809C0D4
func_0809C0D4: @ 0x0809C0D4
    push {r4, r5, r6, lr}
    sub sp, #0x14
    adds r5, r0, #0
    add r1, sp, #8
    movs r4, #0x8d
    lsls r4, r4, #2
    ldrh r2, [r1]
    ldr r3, .L0809C140 @ =0xFFFFFC00
    adds r0, r3, #0
    ands r0, r2
    orrs r0, r4
    strh r0, [r1]
    movs r6, #0
    ldrb r4, [r1, #1]
    movs r2, #3
    adds r0, r2, #0
    ands r0, r4
    strb r0, [r1, #1]
    ldrh r4, [r1, #2]
    adds r0, r3, #0
    ands r0, r4
    strh r0, [r1, #2]
    ldrb r0, [r1, #3]
    ands r2, r0
    strb r2, [r1, #3]
    ldrh r0, [r1, #4]
    ands r3, r0
    strh r3, [r1, #4]
    mov r4, sp
    mov r0, sp
    movs r2, #6
    bl memcpy
    strb r6, [r4, #6]
    adds r0, r5, #0
    mov r1, sp
    bl SetLocation__5ActorRC13ActorLocation
    add r1, sp, #0x10
    adds r0, r5, #0
    bl func_0809C098
    ldrb r1, [r5, #8]
    movs r0, #0x80
    rsbs r0, r0, #0
    ands r0, r1
    movs r1, #0x64
    orrs r0, r1
    strb r0, [r5, #8]
    add sp, #0x14
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0
.L0809C140: .4byte 0xFFFFFC00

    thumb_func_start func_0809C144
func_0809C144: @ 0x0809C144
    push {lr}
    movs r3, #0
    movs r2, #0
    adds r1, r0, #0
.L0809C14C:
    strb r2, [r1]
    strb r2, [r1, #0xc]
    strb r2, [r1, #6]
    adds r1, #1
    adds r3, #1
    cmp r3, #5
    bls .L0809C14C
    pop {r1}
    bx r1
    .align 2, 0
.L0809C160:
    .byte 0x00, 0xB5, 0x08, 0x1C, 0x71, 0xF7, 0xE4, 0xFC, 0x05, 0x38, 0x28, 0x28, 0x5A, 0xD8, 0x80, 0x00
    .byte 0x01, 0x49, 0x40, 0x18, 0x00, 0x68, 0x87, 0x46, 0x7C, 0xC1, 0x09, 0x08, 0x20, 0xC2, 0x09, 0x08
    .byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08
    .byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x20, 0xC2, 0x09, 0x08
    .byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08
    .byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x20, 0xC2, 0x09, 0x08
    .byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08
    .byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x20, 0xC2, 0x09, 0x08
    .byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08
    .byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x20, 0xC2, 0x09, 0x08
    .byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08
    .byte 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x24, 0xC2, 0x09, 0x08, 0x20, 0xC2, 0x09, 0x08
    .byte 0x01, 0x20, 0x00, 0xE0, 0x00, 0x20, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_0809C22C
func_0809C22C: @ 0x0809C22C
    push {lr}
    movs r2, #1
    subs r0, r1, #5
    cmp r0, #0x28
    bhi .L0809C2FE
    lsls r0, r0, #2
    ldr r1, .L0809C240 @ =.L0809C244
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0809C240: .4byte .L0809C244
.L0809C244: @ jump table
    .4byte .L0809C2E8 @ case 0
    .4byte .L0809C2FE @ case 1
    .4byte .L0809C2FE @ case 2
    .4byte .L0809C2FE @ case 3
    .4byte .L0809C2FE @ case 4
    .4byte .L0809C2FE @ case 5
    .4byte .L0809C2FE @ case 6
    .4byte .L0809C2FE @ case 7
    .4byte .L0809C2EC @ case 8
    .4byte .L0809C2FE @ case 9
    .4byte .L0809C2FE @ case 10
    .4byte .L0809C2FE @ case 11
    .4byte .L0809C2FE @ case 12
    .4byte .L0809C2FE @ case 13
    .4byte .L0809C2FE @ case 14
    .4byte .L0809C2FE @ case 15
    .4byte .L0809C2F0 @ case 16
    .4byte .L0809C2FE @ case 17
    .4byte .L0809C2FE @ case 18
    .4byte .L0809C2FE @ case 19
    .4byte .L0809C2FE @ case 20
    .4byte .L0809C2FE @ case 21
    .4byte .L0809C2FE @ case 22
    .4byte .L0809C2FE @ case 23
    .4byte .L0809C2F4 @ case 24
    .4byte .L0809C2FE @ case 25
    .4byte .L0809C2FE @ case 26
    .4byte .L0809C2FE @ case 27
    .4byte .L0809C2FE @ case 28
    .4byte .L0809C2FE @ case 29
    .4byte .L0809C2FE @ case 30
    .4byte .L0809C2FE @ case 31
    .4byte .L0809C2F8 @ case 32
    .4byte .L0809C2FE @ case 33
    .4byte .L0809C2FE @ case 34
    .4byte .L0809C2FE @ case 35
    .4byte .L0809C2FE @ case 36
    .4byte .L0809C2FE @ case 37
    .4byte .L0809C2FE @ case 38
    .4byte .L0809C2FE @ case 39
    .4byte .L0809C2FC @ case 40
.L0809C2E8:
    movs r2, #0
    b .L0809C2FE
.L0809C2EC:
    movs r2, #1
    b .L0809C2FE
.L0809C2F0:
    movs r2, #2
    b .L0809C2FE
.L0809C2F4:
    movs r2, #3
    b .L0809C2FE
.L0809C2F8:
    movs r2, #4
    b .L0809C2FE
.L0809C2FC:
    movs r2, #5
.L0809C2FE:
    adds r0, r2, #0
    pop {r1}
    bx r1

    thumb_func_start func_0809C304
func_0809C304: @ 0x0809C304
    push {r4, lr}
    adds r4, r0, #0
    bl func_0809C22C
    adds r4, r4, r0
    ldrb r0, [r4]
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0
