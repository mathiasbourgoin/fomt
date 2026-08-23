    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08036900
func_08036900: @ 0x08036900
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    ldr r7, .L08036950 @ =0x000007BE
    ldr r0, .L08036954 @ =0x000007C2
    mov r8, r0
    ldr r5, [r4, #0x34]
    ldr r1, .L08036958 @ =0x00001CD4
    adds r6, r5, r1
    adds r0, r6, #0
    bl func_080A0490
    cmp r0, #0x19
    bne .L080369A0
    ldrh r0, [r4, #4]
    cmp r0, #0x1d
    bne .L080369A0
    adds r0, r4, #0
    bl func_08035AE0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L0803694A
    ldr r2, .L0803695C @ =0x0000216B
    adds r0, r5, r2
    ldrb r2, [r0]
    lsrs r2, r2, #7
    ldr r1, .L08036960 @ =0x0000216C
    adds r0, r5, r1
    ldrb r0, [r0]
    movs r1, #1
    ands r0, r1
    lsls r0, r0, #1
    orrs r0, r2
    cmp r0, #1
    bne .L08036968
.L0803694A:
    ldr r7, .L08036964 @ =0x000007D2
    b .L080369A0
    .align 2, 0
.L08036950: .4byte 0x000007BE
.L08036954: .4byte 0x000007C2
.L08036958: .4byte 0x00001CD4
.L0803695C: .4byte 0x0000216B
.L08036960: .4byte 0x0000216C
.L08036964: .4byte 0x000007D2
.L08036968:
    adds r0, r6, #0
    bl func_080A0384
    cmp r0, #0
    beq .L080369A0
    bl func_0809EAD8
    cmp r0, #0x3b
    bhi .L080369A0
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
    beq .L080369A0
    ldr r7, .L080369BC @ =0x000007CA
    ldr r0, .L080369C0 @ =0x000007CE
    mov r8, r0
.L080369A0:
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
.L080369BC: .4byte 0x000007CA
.L080369C0: .4byte 0x000007CE
