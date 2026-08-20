.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

    thumb_func_start func_08009908
func_08009908: @ 0x08009908
    push {r4, r5, r6, r7, lr}
    adds r6, r0, #0
    ldr r5, [r6, #0xc]
    adds r7, r6, #0
    adds r7, #0x10
.L08009912:
    cmp r5, r7
    beq .L08009938
    adds r4, r5, #0
    ldr r5, [r5, #4]
    ldr r0, [r4, #8]
    ldr r1, [r0, #8]
    adds r0, r4, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08009912
    ldr r0, [r6, #8]
    ldr r2, [r0, #0x14]
    adds r0, r6, #0
    adds r1, r4, #0
    bl _call_via_r2
    b .L08009912
.L08009938:
    movs r0, #1
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1

    thumb_func_start func_08009940
func_08009940: @ 0x08009940
    push {lr}
    adds r3, r0, #0
    ldr r2, [r1]
    cmp r2, #0
    beq .L08009952
    ldr r0, [r1, #4]
    str r0, [r2]
    ldr r0, [r1, #4]
    str r2, [r0]
.L08009952:
    ldr r0, [r3, #0x10]
    str r1, [r0]
    str r0, [r1]
    adds r0, r3, #0
    adds r0, #0x10
    str r0, [r1, #4]
    adds r0, r1, #4
    str r0, [r3, #0x10]
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08009968
func_08009968: @ 0x08009968
    push {lr}
    ldr r2, [r1]
    cmp r2, #0
    beq .L0800997E
    ldr r0, [r1, #4]
    str r0, [r2]
    ldr r0, [r1, #4]
    str r2, [r0]
    movs r0, #0
    str r0, [r1]
    str r0, [r1, #4]
.L0800997E:
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_08009984
func_08009984: @ 0x08009984
    push {r4, lr}
    adds r2, r0, #0
    ldr r1, [r2, #0xc]
    adds r3, r2, #0
    adds r3, #0x10
    cmp r1, r3
    beq .L080099A0
    movs r4, #0
.L08009994:
    adds r0, r1, #0
    ldr r1, [r1, #4]
    str r4, [r0]
    str r4, [r0, #4]
    cmp r1, r3
    bne .L08009994
.L080099A0:
    adds r0, r2, #0
    adds r0, #0x10
    str r0, [r2, #0xc]
    subs r0, #4
    str r0, [r2, #0x10]
    pop {r4}
    pop {r0}
    bx r0

    thumb_func_start func_080099B0
func_080099B0: @ 0x080099B0
    adds r3, r1, #0
    ldr r2, [r0, #0x10]
    ldr r1, [r3, #0xc]
    str r1, [r2]
    ldr r1, [r3, #0xc]
    str r2, [r1]
    ldr r2, [r3, #0x10]
    adds r1, r0, #0
    adds r1, #0x10
    str r1, [r2]
    str r2, [r0, #0x10]
    adds r0, r3, #0
    adds r0, #0x10
    str r0, [r3, #0xc]
    subs r0, #4
    str r0, [r3, #0x10]
    bx lr
    .align 2, 0

    thumb_func_start func_080099D4
func_080099D4: @ 0x080099D4
    ldr r3, [r0, #0xc]
    ldr r2, [r1, #0xc]
    str r2, [r0, #0xc]
    str r3, [r1, #0xc]
    ldr r2, [r0, #0x10]
    ldr r1, [r1, #0x10]
    ldr r3, [r2]
    ldr r0, [r1]
    str r0, [r2]
    str r3, [r1]
    bx lr
    .align 2, 0
