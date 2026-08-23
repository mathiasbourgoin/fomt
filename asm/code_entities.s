    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

    thumb_func_start func_08020080
func_08020080: @ 0x08020080
    push {r4, r5, lr}
    adds r3, r0, #0
    movs r4, #0
    movs r5, #0
    cmp r1, #0
    beq .L080200B8
    adds r0, #0x20
    ldrb r0, [r0]
    adds r2, r0, #0
    cmp r0, #1
    beq .L080200AE
    cmp r0, #1
    bgt .L080200A0
    cmp r0, #0
    beq .L080200AA
    b .L080200B8
.L080200A0:
    cmp r2, #2
    beq .L080200B2
    cmp r2, #3
    beq .L080200B6
    b .L080200B8
.L080200AA:
    adds r5, r1, #0
    b .L080200B8
.L080200AE:
    rsbs r5, r1, #0
    b .L080200B8
.L080200B2:
    rsbs r4, r1, #0
    b .L080200B8
.L080200B6:
    adds r4, r1, #0
.L080200B8:
    str r4, [r3, #0x18]
    str r5, [r3, #0x1c]
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080200C4
func_080200C4: @ 0x080200C4
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r4, r0, #0
    mov r8, r1
    adds r6, r4, #0
    adds r6, #0x30
    ldrb r0, [r6]
    cmp r0, #0
    bne .L08020126
    adds r0, r4, #0
    bl func_08020060
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08020126
    ldr r0, [r4]
    ldr r1, [r0]
    movs r2, #0xa6
    lsls r2, r2, #1
    adds r1, r1, r2
    ldr r1, [r1]
    bl _call_via_r1
    ldr r4, [r0]
    ldr r5, [r0, #4]
    adds r7, r6, #0
    mov r0, r8
    lsls r6, r0, #0x10
    cmp r4, r5
    beq .L08020118
.L08020102:
    ldr r0, [r4]
    bl func_08008CD0
    lsls r0, r0, #0x18
    cmp r0, #0
    bne .L08020112
    ldr r0, [r4]
    b .L0802011C
.L08020112:
    adds r4, #4
    cmp r4, r5
    bne .L08020102
.L08020118:
    subs r0, r5, #4
    ldr r0, [r0]
.L0802011C:
    lsrs r1, r6, #0x10
    bl func_08008B6C
    movs r0, #1
    strb r0, [r7]
.L08020126:
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0

    thumb_func_start func_08020130
func_08020130: @ 0x08020130
    push {r4, lr}
    ldr r0, [r0, #0x10]
    cmp r0, #0
    beq .L08020166
    movs r4, #0
    adds r2, r0, #0
    adds r2, #0x30
    movs r1, #0
    ldrh r0, [r2, #0xe]
    cmp r0, #0
    beq .L08020150
    movs r0, #0x10
    ldrsh r1, [r2, r0]
    rsbs r0, r1, #0
    orrs r0, r1
    lsrs r1, r0, #0x1f
.L08020150:
    cmp r1, #0
    beq .L08020160
    adds r0, r2, #0
    bl func_0805E894
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08020162
.L08020160:
    movs r4, #1
.L08020162:
    adds r0, r4, #0
    b .L08020168
.L08020166:
    movs r0, #1
.L08020168:
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08020170
func_08020170: @ 0x08020170
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #4
    adds r7, r0, #0
    ldr r2, [r7, #8]
    ldr r3, [r7, #0xc]
    ldr r0, [r7, #0x18]
    adds r0, r0, r2
    mov sl, r0
    ldr r0, [r7, #0x1c]
    adds r0, r0, r3
    mov sb, r0
    cmp r1, #0
    beq .L08020286
    adds r4, r1, #0
    asrs r2, r2, #0x10
    str r2, [sp]
    asrs r6, r3, #0x10
    asrs r0, r0, #0x10
    subs r5, r0, r6
    mov r1, sl
    asrs r0, r1, #0x10
    subs r2, r0, r2
    mov r8, r2
    cmp r5, #0
    ble .L080201DC
    ldr r1, [r4]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble .L080201BC
    adds r0, r4, #0
    bl func_080AB85C
    ldr r0, [r4]
    b .L080201BE
.L080201BC:
    adds r0, r1, #0
.L080201BE:
    cmp r5, r0
    ble .L080201DC
    ldr r1, [r4]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble .L080201D4
    adds r0, r4, #0
    bl func_080AB85C
    ldr r0, [r4]
    b .L080201D6
.L080201D4:
    adds r0, r1, #0
.L080201D6:
    adds r0, r6, r0
    lsls r0, r0, #0x10
    mov sb, r0
.L080201DC:
    cmp r5, #0
    bge .L08020212
    ldr r1, [r4, #4]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge .L080201F2
    adds r0, r4, #0
    bl func_080AB8D0
    ldr r0, [r4, #4]
    b .L080201F4
.L080201F2:
    adds r0, r1, #0
.L080201F4:
    cmp r5, r0
    bge .L08020212
    ldr r1, [r4, #4]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge .L0802020A
    adds r0, r4, #0
    bl func_080AB8D0
    ldr r0, [r4, #4]
    b .L0802020C
.L0802020A:
    adds r0, r1, #0
.L0802020C:
    adds r0, r6, r0
    lsls r0, r0, #0x10
    mov sb, r0
.L08020212:
    mov r0, r8
    cmp r0, #0
    bge .L0802024C
    ldr r1, [r4, #8]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge .L0802022A
    adds r0, r4, #0
    bl func_080AB948
    ldr r0, [r4, #8]
    b .L0802022C
.L0802022A:
    adds r0, r1, #0
.L0802022C:
    cmp r8, r0
    bge .L0802024C
    ldr r1, [r4, #8]
    ldr r0, [r4, #0x28]
    cmn r1, r0
    bge .L08020242
    adds r0, r4, #0
    bl func_080AB948
    ldr r0, [r4, #8]
    b .L08020244
.L08020242:
    adds r0, r1, #0
.L08020244:
    ldr r1, [sp]
    adds r0, r1, r0
    lsls r0, r0, #0x10
    mov sl, r0
.L0802024C:
    mov r0, r8
    cmp r0, #0
    ble .L08020286
    ldr r1, [r4, #0xc]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble .L08020264
    adds r0, r4, #0
    bl func_080AB9C4
    ldr r0, [r4, #0xc]
    b .L08020266
.L08020264:
    adds r0, r1, #0
.L08020266:
    cmp r8, r0
    ble .L08020286
    ldr r1, [r4, #0xc]
    ldr r0, [r4, #0x28]
    cmp r1, r0
    ble .L0802027C
    adds r0, r4, #0
    bl func_080AB9C4
    ldr r0, [r4, #0xc]
    b .L0802027E
.L0802027C:
    adds r0, r1, #0
.L0802027E:
    ldr r1, [sp]
    adds r0, r1, r0
    lsls r0, r0, #0x10
    mov sl, r0
.L08020286:
    mov r0, sl
    str r0, [r7, #8]
    mov r1, sb
    str r1, [r7, #0xc]
    add sp, #4
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080202A0
func_080202A0: @ 0x080202A0
    push {r4, lr}
    movs r3, #0xa
    ldrsh r2, [r1, r3]
    movs r4, #0xe
    ldrsh r3, [r1, r4]
    subs r1, r2, #7
    strh r1, [r0]
    adds r1, r3, #0
    subs r1, #9
    strh r1, [r0, #2]
    adds r2, #7
    strh r2, [r0, #4]
    adds r3, #5
    strh r3, [r0, #6]
    pop {r4}
    pop {r2}
    bx r2
    .align 2, 0

	.section .text.tail080202CC, "ax", %progbits
.L080202CC:
    .byte 0x00, 0x20, 0x70, 0x47
    .byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47
    .byte 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x00, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00
    .byte 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x05, 0x20, 0x70, 0x47
    .byte 0x05, 0x20, 0x70, 0x47, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00, 0x70, 0x47, 0x00, 0x00

    thumb_func_start func_08020310
func_08020310: @ 0x08020310
    push {r4, r5, r6, r7, lr}
    sub sp, #0xc
    adds r6, r0, #0
    adds r7, r1, #0
    adds r4, r2, #0
    adds r5, r3, #0
    add r0, sp, #4
    adds r1, r4, #0
    bl __5ActorRC5Actor
    movs r3, #0xd0
    lsls r3, r3, #2
    adds r0, r6, #0
    adds r1, r7, #0
    add r2, sp, #4
    bl func_08020038
    ldr r0, .L08020378 @ =vtable_unk_080E64C8
    str r0, [r6, #0x14]
    str r4, [r6, #0x34]
    str r5, [r6, #0x38]
    adds r1, r6, #0
    adds r1, #0x40
    movs r0, #0
    strb r0, [r1]
    ldr r0, [r4, #0x20]
    cmp r0, #5
    bne .L08020384
    ldr r0, [r7]
    ldr r2, [r0, #0x40]
    adds r0, r7, #0
    movs r1, #0x4b
    bl _call_via_r2
    adds r4, r0, #0
    cmp r4, #0
    beq .L08020384
    ldrh r0, [r4, #4]
    ldrh r1, [r6, #4]
    cmp r0, r1
    bne .L0802037C
    ldr r1, [r6, #8]
    ldr r2, [r6, #0xc]
    ldrh r3, [r6, #0x22]
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    str r0, [sp]
    adds r0, r4, #0
    bl func_08038374
    b .L08020384
    .align 2, 0
.L08020378: .4byte vtable_unk_080E64C8
.L0802037C:
    adds r0, r6, #0
    movs r1, #0
    bl func_08020410
.L08020384:
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_080211E4
    adds r0, r6, #0
    add sp, #0xc
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    .align 2, 0
.L080203A4:
    .byte 0x70, 0xB5, 0x82, 0xB0, 0x05, 0x1C, 0x0E, 0x1C, 0x16, 0x48, 0x68, 0x61
    .byte 0x28, 0x1C, 0x40, 0x30, 0x00, 0x78, 0x00, 0x28, 0x07, 0xD0, 0x3C, 0x21, 0x68, 0x5E, 0x00, 0x04
    .byte 0xA8, 0x60, 0x3E, 0x21, 0x68, 0x5E, 0x00, 0x04, 0xE8, 0x60, 0x6C, 0x6B, 0x68, 0x46, 0x29, 0x1C
    .byte 0x11, 0xF0, 0xCE, 0xFE, 0x20, 0x1C, 0x69, 0x46, 0x7A, 0xF0, 0xA4, 0xFE, 0x0B, 0x48, 0x68, 0x61
    .byte 0x29, 0x69, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68, 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0xB3, 0xF0
    .byte 0x91, 0xFA, 0x01, 0x20, 0x30, 0x40, 0x00, 0x28, 0x02, 0xD0, 0x28, 0x1C, 0xE0, 0xF7, 0x04, 0xF9
    .byte 0x02, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0xC8, 0x64, 0x0E, 0x08, 0x50, 0x62, 0x0E, 0x08

    thumb_func_start func_08020410
func_08020410: @ 0x08020410
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r5, r1, #0
    ldr r0, [r4, #0x34]
    ldr r0, [r0, #0x20]
    cmp r0, #5
    bne .L08020426
    adds r0, r4, #0
    bl func_080212C0
.L08020426:
    lsls r1, r5, #0x10
    lsrs r1, r1, #0x10
    ldr r2, .L08020458 @ =0xFFFF0000
    ldr r0, [sp]
    ands r0, r2
    orrs r0, r1
    ldr r1, .L0802045C @ =0xFF00FFFF
    ands r0, r1
    str r0, [sp]
    ldr r0, [r4, #0x34]
    mov r1, sp
    bl method_0809BB48__3DogPC15UnkBarnAnimal2C
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r4, #0
    movs r1, #0
    bl func_080211E4
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08020458: .4byte 0xFFFF0000
.L0802045C: .4byte 0xFF00FFFF

    thumb_func_start func_08020460
func_08020460: @ 0x08020460
    push {lr}
    movs r1, #0
    ldr r0, [r0, #0x34]
    ldr r0, [r0, #0x20]
    cmp r0, #5
    bne .L0802046E
    movs r1, #1
.L0802046E:
    adds r0, r1, #0
    pop {r1}
    bx r1
.L08020474:
    .byte 0x10, 0xB5, 0x04, 0x1C, 0x00, 0xF0, 0x28, 0xF8, 0x21, 0x1C, 0x30, 0x31
    .byte 0x00, 0x20, 0x08, 0x70, 0xA0, 0x8C, 0x00, 0x28, 0x01, 0xD0, 0x01, 0x38, 0x00, 0xE0, 0xE0, 0x8C
    .byte 0xA0, 0x84, 0x22, 0x69, 0x00, 0x2A, 0x04, 0xD0, 0x50, 0x68, 0xC1, 0x68, 0x10, 0x1C, 0xB3, 0xF0
    .byte 0x37, 0xFA, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x11, 0xF0
    .byte 0x5F, 0xFF, 0x00, 0x06, 0x00, 0x28, 0x02, 0xD0, 0x20, 0x1C, 0x00, 0xF0, 0x07, 0xF8, 0x20, 0x1C
    .byte 0x29, 0x1C, 0x11, 0xF0, 0xB3, 0xFF, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_080204CC
func_080204CC: @ 0x080204CC
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0xfc
    adds r6, r0, #0
    ldr r0, [r6]
    str r0, [sp, #0xd8]
    ldr r1, [r6, #0x34]
    mov sl, r1
    mov r0, sl
    bl GetGrowthStage__C3Dog
    adds r5, r0, #0
    ldrh r2, [r6, #4]
    str r2, [sp, #0xdc]
    ldr r3, [sp, #0xd8]
    ldr r1, [r3]
    add r0, sp, #8
    ldr r3, [r1, #0x34]
    ldr r1, [sp, #0xd8]
    bl _call_via_r3
    ldr r1, [r6, #0x14]
    add r4, sp, #0x7c
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    movs r1, #0
    movs r0, #0
    mov r8, r4
    ldr r4, [sp, #0xdc]
    cmp r4, #8
    bgt .L08020518
    movs r0, #1
.L08020518:
    cmp r0, #0
    beq .L08020522
    cmp r5, #1
    bne .L08020522
    movs r1, #1
.L08020522:
    adds r2, r1, #0
    cmp r2, #0
    beq .L0802053C
    mov r7, r8
    movs r1, #4
    ldrsh r0, [r7, r1]
    add r1, sp, #0x7c
    movs r3, #0
    ldrsh r1, [r1, r3]
    subs r0, r0, r1
    adds r0, #0x10
    str r0, [sp, #0xe0]
    b .L08020540
.L0802053C:
    movs r4, #0
    str r4, [sp, #0xe0]
.L08020540:
    cmp r2, #0
    beq .L08020556
    mov r7, r8
    movs r1, #6
    ldrsh r0, [r7, r1]
    movs r2, #2
    ldrsh r1, [r7, r2]
    subs r0, r0, r1
    adds r0, #0x10
    str r0, [sp, #0xe4]
    b .L0802055A
.L08020556:
    movs r3, #0
    str r3, [sp, #0xe4]
.L0802055A:
    add r4, sp, #0x14
    movs r7, #0x21
    str r7, [sp, #0x14]
    movs r0, #0x21
    rsbs r0, r0, #0
    str r0, [r4, #4]
    str r0, [r4, #8]
    str r7, [r4, #0xc]
    add r1, sp, #0x28
    add r0, sp, #8
    ldm r0!, {r2, r3, r7}
    stm r1!, {r2, r3, r7}
    ldr r0, [sp, #0x7c]
    ldr r1, [sp, #0x80]
    str r0, [sp, #0x34]
    str r1, [sp, #0x38]
    movs r0, #0x20
    str r0, [r4, #0x28]
    ldr r1, [sp, #0xe0]
    str r1, [sp, #0x40]
    ldr r2, [sp, #0xe4]
    str r2, [sp, #0x44]
    ldr r3, [sp, #0xd8]
    ldr r0, [r3]
    ldr r2, [r0, #0x40]
    adds r0, r3, #0
    movs r1, #0
    bl _call_via_r2
    mov sb, r0
    ldr r7, [sp, #0xd8]
    ldr r0, [r7]
    ldr r2, [r0, #0x40]
    adds r0, r7, #0
    movs r1, #0x4a
    bl _call_via_r2
    adds r7, r0, #0
    movs r0, #0
    str r0, [sp, #0xe8]
    adds r0, r6, #0
    adds r0, #0x40
    ldrb r1, [r0]
    str r0, [sp, #0xf8]
    cmp r1, #0
    bne .L080205B8
    b .L080206EE
.L080205B8:
    movs r1, #0
    ldrh r0, [r6, #0x24]
    cmp r0, #0
    bne .L080205C2
    movs r1, #1
.L080205C2:
    cmp r1, #0
    bne .L080205C8
    b .L080206EE
.L080205C8:
    add r1, sp, #0xe8
    ldrb r2, [r1]
    ldr r1, [sp, #0xf8]
    strb r2, [r1]
    movs r2, #0x3c
    ldrsh r0, [r6, r2]
    lsls r0, r0, #0x10
    str r0, [r6, #8]
    movs r3, #0x3e
    ldrsh r0, [r6, r3]
    lsls r0, r0, #0x10
    str r0, [r6, #0xc]
    ldr r1, [r6, #0x14]
    add r4, sp, #0x84
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r6, #0
    bl _call_via_r2
    ldr r0, [r4]
    ldr r1, [r4, #4]
    str r0, [sp, #0x7c]
    str r1, [sp, #0x80]
    mov r4, r8
    movs r0, #4
    ldrsh r5, [r4, r0]
    movs r1, #0
    ldrsh r0, [r4, r1]
    subs r5, r5, r0
    adds r5, #0x10
    mov ip, r5
    movs r2, #6
    ldrsh r4, [r4, r2]
    mov r3, r8
    movs r5, #2
    ldrsh r0, [r3, r5]
    subs r4, r4, r0
    adds r4, #0x10
    mov r8, r4
    add r1, sp, #0x48
    movs r0, #0x21
    str r0, [sp, #0x48]
    movs r2, #0x21
    rsbs r2, r2, #0
    str r2, [r1, #4]
    str r2, [r1, #8]
    str r0, [r1, #0xc]
    add r2, sp, #0x5c
    add r0, sp, #8
    ldm r0!, {r3, r4, r5}
    stm r2!, {r3, r4, r5}
    ldr r2, [sp, #0x7c]
    ldr r3, [sp, #0x80]
    str r2, [sp, #0x68]
    str r3, [sp, #0x6c]
    movs r0, #0x20
    str r0, [r1, #0x28]
    mov r2, ip
    str r2, [sp, #0x74]
    mov r3, r8
    str r3, [sp, #0x78]
    add r0, sp, #0x14
    movs r2, #0x34
    bl memcpy
    mov r4, sb
    cmp r4, #0
    beq .L08020670
    ldrh r0, [r4, #4]
    ldr r5, [sp, #0xdc]
    cmp r0, r5
    bne .L08020670
    ldr r1, [r4, #0x14]
    add r4, sp, #0x8c
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    mov r1, sb
    bl _call_via_r2
    add r0, sp, #0x14
    adds r1, r4, #0
    movs r2, #1
    bl func_080ABA90
.L08020670:
    cmp r7, #0
    beq .L08020694
    ldrh r0, [r7, #4]
    ldr r1, [sp, #0xdc]
    cmp r0, r1
    bne .L08020694
    ldr r1, [r7, #0x14]
    add r4, sp, #0x94
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    add r0, sp, #0x14
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
.L08020694:
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r2, [r4]
    adds r0, r6, #0
    bl func_080211E4
    mov r2, sl
    ldr r0, [r2, #0x20]
    cmp r0, #5
    beq .L080206B4
    bl .L080210A0
.L080206B4:
    ldr r3, [sp, #0xe8]
    cmp r3, #0
    bne .L080206D2
    ldr r5, [sp, #0xd8]
    ldr r0, [r5]
    ldr r2, [r0, #0x40]
    adds r0, r5, #0
    movs r1, #0x4b
    bl _call_via_r2
    str r0, [sp, #0xe8]
    cmp r0, #0
    bne .L080206D2
    bl .L080210A0
.L080206D2:
    ldr r7, [sp, #0xe8]
    ldrh r0, [r7, #4]
    ldr r1, [sp, #0xdc]
    cmp r0, r1
    beq .L080206E0
    bl .L080210A0
.L080206E0:
    ldrh r1, [r6, #0x22]
    ldrb r2, [r4]
    adds r0, r7, #0
    bl func_08038398
    bl .L080210A0
.L080206EE:
    mov r2, sb
    cmp r2, #0
    beq .L08020714
    ldrh r0, [r2, #4]
    ldr r3, [sp, #0xdc]
    cmp r0, r3
    bne .L08020714
    ldr r1, [r2, #0x14]
    add r4, sp, #0x9c
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    mov r1, sb
    bl _call_via_r2
    add r0, sp, #0x14
    adds r1, r4, #0
    movs r2, #1
    bl func_080ABA90
.L08020714:
    cmp r7, #0
    beq .L08020738
    ldrh r0, [r7, #4]
    ldr r4, [sp, #0xdc]
    cmp r0, r4
    bne .L08020738
    ldr r1, [r7, #0x14]
    add r4, sp, #0xa4
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r7, #0
    bl _call_via_r2
    add r0, sp, #0x14
    adds r1, r4, #0
    movs r2, #0
    bl func_080ABA90
.L08020738:
    ldr r7, [sp, #0xf8]
    ldrb r0, [r7]
    cmp r0, #0
    beq .L08020742
    b .L0802089A
.L08020742:
    cmp r5, #1
    beq .L08020748
    b .L0802089A
.L08020748:
    movs r1, #0xa
    ldrsh r0, [r6, r1]
    str r0, [sp, #0xec]
    movs r3, #0xe
    ldrsh r2, [r6, r3]
    str r2, [sp, #0xf0]
    ldr r4, [r6, #0x18]
    mov r8, r4
    ldr r7, [r6, #0x1c]
    adds r4, r0, #0
    adds r5, r2, #0
    cmp r7, #0
    ble .L08020794
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble .L08020774
    add r0, sp, #0x14
    bl func_080AB85C
    ldr r0, [sp, #0x14]
    b .L08020776
.L08020774:
    adds r0, r1, #0
.L08020776:
    cmp r0, #0
    bne .L08020794
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble .L08020788
    add r0, sp, #0x14
    bl func_080AB85C
.L08020788:
    add r1, sp, #0x24
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08020794
    ldr r2, [sp, #0xe4]
    adds r5, r5, r2
.L08020794:
    cmp r7, #0
    bge .L080207CC
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x3c]
    cmn r1, r0
    bge .L080207AA
    add r0, sp, #0x14
    bl func_080AB8D0
    ldr r0, [sp, #0x18]
    b .L080207AC
.L080207AA:
    adds r0, r1, #0
.L080207AC:
    cmp r0, #0
    bne .L080207CC
    ldr r1, [sp, #0x3c]
    ldr r0, [sp, #0x18]
    cmn r0, r1
    bge .L080207BE
    add r0, sp, #0x14
    bl func_080AB8D0
.L080207BE:
    movs r3, #0x25
    add r3, sp
    ldrb r0, [r3]
    cmp r0, #0
    beq .L080207CC
    ldr r7, [sp, #0xe4]
    subs r5, r5, r7
.L080207CC:
    mov r0, r8
    cmp r0, #0
    bge .L08020806
    ldr r1, [sp, #0x1c]
    ldr r0, [sp, #0x3c]
    cmn r1, r0
    bge .L080207E4
    add r0, sp, #0x14
    bl func_080AB948
    ldr r0, [sp, #0x1c]
    b .L080207E6
.L080207E4:
    adds r0, r1, #0
.L080207E6:
    cmp r0, #0
    bne .L08020806
    ldr r1, [sp, #0x3c]
    ldr r0, [sp, #0x1c]
    cmn r0, r1
    bge .L080207F8
    add r0, sp, #0x14
    bl func_080AB948
.L080207F8:
    movs r1, #0x26
    add r1, sp
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08020806
    ldr r2, [sp, #0xe0]
    subs r4, r4, r2
.L08020806:
    mov r3, r8
    cmp r3, #0
    ble .L08020840
    ldr r1, [sp, #0x20]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble .L0802081E
    add r0, sp, #0x14
    bl func_080AB9C4
    ldr r0, [sp, #0x20]
    b .L08020820
.L0802081E:
    adds r0, r1, #0
.L08020820:
    cmp r0, #0
    bne .L08020840
    ldr r1, [sp, #0x20]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble .L08020832
    add r0, sp, #0x14
    bl func_080AB9C4
.L08020832:
    movs r7, #0x27
    add r7, sp
    ldrb r0, [r7]
    cmp r0, #0
    beq .L08020840
    ldr r0, [sp, #0xe0]
    adds r4, r4, r0
.L08020840:
    ldr r1, [sp, #0xec]
    cmp r4, r1
    bne .L0802084C
    ldr r2, [sp, #0xf0]
    cmp r5, r2
    beq .L0802089A
.L0802084C:
    strh r4, [r6, #0x3c]
    strh r5, [r6, #0x3e]
    movs r0, #1
    ldr r3, [sp, #0xf8]
    strb r0, [r3]
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r2, [r4]
    adds r0, r6, #0
    movs r1, #0xc
    bl func_080211E4
    mov r5, sl
    ldr r0, [r5, #0x20]
    cmp r0, #5
    bne .L0802089A
    ldr r7, [sp, #0xe8]
    cmp r7, #0
    bne .L08020886
    ldr r1, [sp, #0xd8]
    ldr r0, [r1]
    ldr r2, [r0, #0x40]
    adds r0, r1, #0
    movs r1, #0x4b
    bl _call_via_r2
    str r0, [sp, #0xe8]
    cmp r0, #0
    beq .L0802089A
.L08020886:
    ldr r2, [sp, #0xe8]
    ldrh r0, [r2, #4]
    ldr r3, [sp, #0xdc]
    cmp r0, r3
    bne .L0802089A
    ldrh r1, [r6, #0x22]
    ldrb r2, [r4]
    ldr r0, [sp, #0xe8]
    bl func_08038398
.L0802089A:
    mov r4, sl
    ldr r0, [r4, #0x20]
    cmp r0, #6
    bls .L080208A6
    bl .L080210A0
.L080208A6:
    lsls r0, r0, #2
    ldr r1, .L080208B0 @ =.L080208B4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L080208B0: .4byte .L080208B4
.L080208B4: @ jump table
    .4byte .L080208D0 @ case 0
    .4byte .L08020A54 @ case 1
    .4byte .L08020B38 @ case 2
    .4byte .L08020C14 @ case 3
    .4byte .L08020D38 @ case 4
    .4byte .L08020DE4 @ case 5
    .4byte .L08020F0C @ case 6
.L080208D0:
    movs r5, #0x24
    add r5, sl
    mov sb, r5
    mov r7, sl
    ldrh r4, [r7, #0x24]
    cmp r4, #0
    beq .L08020968
    ldr r5, [r6, #0x18]
    ldr r7, [r6, #0x1c]
    movs r0, #0
    mov r8, r0
    cmp r5, #0
    bge .L08020902
    ldr r1, [sp, #0x1c]
    ldr r0, [sp, #0x3c]
    cmn r1, r0
    bge .L080208FA
    add r0, sp, #0x14
    bl func_080AB948
    ldr r1, [sp, #0x1c]
.L080208FA:
    movs r0, #0x10
    rsbs r0, r0, #0
    cmp r1, r0
    bgt .L08020956
.L08020902:
    cmp r5, #0
    ble .L0802091E
    ldr r1, [sp, #0x20]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble .L08020918
    add r0, sp, #0x14
    bl func_080AB9C4
    ldr r0, [sp, #0x20]
    b .L0802091A
.L08020918:
    adds r0, r1, #0
.L0802091A:
    cmp r0, #0xf
    ble .L08020956
.L0802091E:
    cmp r7, #0
    bge .L0802093A
    ldr r1, [sp, #0x18]
    ldr r0, [sp, #0x3c]
    cmn r1, r0
    bge .L08020932
    add r0, sp, #0x14
    bl func_080AB8D0
    ldr r1, [sp, #0x18]
.L08020932:
    movs r0, #0x10
    rsbs r0, r0, #0
    cmp r1, r0
    bgt .L08020956
.L0802093A:
    cmp r7, #0
    ble .L0802095A
    ldr r1, [sp, #0x14]
    ldr r0, [sp, #0x3c]
    cmp r1, r0
    ble .L08020950
    add r0, sp, #0x14
    bl func_080AB85C
    ldr r0, [sp, #0x14]
    b .L08020952
.L08020950:
    adds r0, r1, #0
.L08020952:
    cmp r0, #0xf
    bgt .L0802095A
.L08020956:
    movs r1, #1
    mov r8, r1
.L0802095A:
    mov r2, r8
    cmp r2, #0
    beq .L08020964
    movs r4, #0
    b .L08020A48
.L08020964:
    subs r4, #1
    b .L08020A48
.L08020968:
    ldr r3, [sp, #0xf8]
    ldrb r0, [r3]
    cmp r0, #0
    bne .L08020A48
    adds r0, r6, #0
    bl func_08020130
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08020A48
    mov r0, sl
    bl GetGrowthStage__C3Dog
    cmp r0, #1
    bne .L080209C8
    ldr r4, [sp, #0xd8]
    ldr r0, [r4]
    ldr r2, [r0, #0x40]
    adds r0, r4, #0
    movs r1, #0x2d
    bl _call_via_r2
    cmp r0, #0
    beq .L080209C8
    ldrh r0, [r0, #4]
    ldr r5, [sp, #0xdc]
    cmp r0, r5
    bne .L080209C8
    adds r0, r6, #0
    movs r1, #0xa9
    bl func_080200C4
    ldr r2, .L080209C0 @ =0xFFFF0000
    add r1, sp, #0xac
    ldr r0, [r1]
    ands r0, r2
    ldr r2, .L080209C4 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    mov r0, sl
    bl method_0809BB9C__3DogPC15UnkBarnAnimal2C
    b .L08020FD6
    .align 2, 0
.L080209C0: .4byte 0xFFFF0000
.L080209C4: .4byte 0xFF00FFFF
.L080209C8:
    ldr r7, [sp, #0xd8]
    ldr r0, [r7]
    movs r1, #0xa2
    lsls r1, r1, #1
    adds r0, r0, r1
    ldr r1, [r0]
    adds r0, r7, #0
    bl _call_via_r1
    ldrb r0, [r0, #0xa]
    lsls r0, r0, #0x1b
    lsrs r0, r0, #0x1b
    movs r4, #0
    subs r0, #6
    cmp r0, #0xe
    bls .L080209EA
    movs r4, #1
.L080209EA:
    mov r0, sl
    bl GetGrowthStage__C3Dog
    movs r1, #0x68
    muls r4, r1, r4
    movs r1, #0x34
    muls r0, r1, r0
    ldr r1, .L08020A50 @ =gUnk_080F0838
    adds r0, r0, r1
    adds r4, r4, r0
    adds r0, r4, #0
    movs r1, #0xd
    bl func_080AB82C
    adds r7, r0, #0
    lsls r0, r7, #2
    adds r4, r4, r0
    movs r5, #0x3c
    ldrb r0, [r4, #2]
    muls r0, r5, r0
    bl func_080AB788
    ldrb r1, [r4, #1]
    muls r1, r5, r1
    adds r4, r1, r0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r5, [r0]
    movs r0, #4
    bl func_080AB788
    adds r1, r0, #0
    cmp r1, #0
    beq .L08020A3A
    cmp r1, #3
    beq .L08020A3A
    adds r0, r5, #0
    bl func_080AB7A4
    adds r5, r0, #0
.L08020A3A:
    mov r2, sb
    strb r7, [r2, #2]
    adds r0, r6, #0
    adds r1, r7, #0
    adds r2, r5, #0
    bl func_080211E4
.L08020A48:
    mov r3, sb
    strh r4, [r3]
    b .L080210A0
    .align 2, 0
.L08020A50: .4byte gUnk_080F0838
.L08020A54:
    mov r4, sl
    adds r4, #0x24
    mov r7, sl
    ldrh r5, [r7, #0x24]
    cmp r5, #0
    beq .L08020A62
    subs r5, #1
.L08020A62:
    ldrh r2, [r4, #2]
    cmp r2, #0
    beq .L08020A6A
    subs r2, #1
.L08020A6A:
    ldr r1, [sp, #0xf8]
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08020A7A
    mov r3, sl
    strh r5, [r3, #0x24]
    strh r2, [r4, #2]
    b .L080210A0
.L08020A7A:
    cmp r5, #0
    beq .L08020B1A
    mov r7, sb
    cmp r7, #0
    beq .L08020B1A
    ldrh r0, [r7, #4]
    ldr r1, [sp, #0xdc]
    cmp r0, r1
    bne .L08020B1A
    movs r7, #0xa
    ldrsh r3, [r6, r7]
    movs r0, #0xe
    ldrsh r1, [r6, r0]
    mov r7, sb
    movs r0, #0xa
    ldrsh r7, [r7, r0]
    mov r8, r7
    mov r7, sb
    movs r0, #0xe
    ldrsh r7, [r7, r0]
    mov sb, r7
    mov r7, r8
    subs r0, r7, r3
    cmp r0, #0
    bge .L08020AAE
    rsbs r0, r0, #0
.L08020AAE:
    cmp r0, #0xf
    bgt .L08020AC0
    mov r7, sb
    subs r0, r7, r1
    cmp r0, #0
    bge .L08020ABC
    rsbs r0, r0, #0
.L08020ABC:
    cmp r0, #0xf
    ble .L08020B1A
.L08020AC0:
    cmp r2, #0
    beq .L08020AE4
    movs r7, #4
    ldrsh r0, [r4, r7]
    subs r0, r0, r3
    cmp r0, #0
    bge .L08020AD0
    rsbs r0, r0, #0
.L08020AD0:
    cmp r0, #0xf
    bgt .L08020B14
    movs r7, #6
    ldrsh r0, [r4, r7]
    subs r0, r0, r1
    cmp r0, #0
    bge .L08020AE0
    rsbs r0, r0, #0
.L08020AE0:
    cmp r0, #0xf
    bgt .L08020B14
.L08020AE4:
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    add r2, sp, #0x14
    str r2, [sp]
    str r0, [sp, #4]
    adds r0, r3, #0
    mov r2, r8
    mov r3, sb
    bl func_080ABC40
    adds r2, r0, #0
    adds r0, r6, #0
    movs r1, #2
    bl func_080211E4
    movs r0, #0x1e
    bl func_080AB788
    adds r2, r0, #1
    mov r3, r8
    strh r3, [r4, #4]
    mov r7, sb
    strh r7, [r4, #6]
.L08020B14:
    strh r5, [r4]
    strh r2, [r4, #2]
    b .L080210A0
.L08020B1A:
    ldr r2, .L08020B30 @ =0xFFFF0000
    add r1, sp, #0xb0
    ldr r0, [r1]
    ands r0, r2
    movs r2, #0xb4
    orrs r0, r2
    ldr r2, .L08020B34 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    b .L08020FD0
    .align 2, 0
.L08020B30: .4byte 0xFFFF0000
.L08020B34: .4byte 0xFF00FFFF
.L08020B38:
    mov r7, sl
    adds r7, #0x24
    mov r0, sl
    ldrh r0, [r0, #0x24]
    mov r8, r0
    cmp r0, #0
    beq .L08020B4C
    movs r1, #1
    rsbs r1, r1, #0
    add r8, r1
.L08020B4C:
    mov r2, sl
    ldr r1, [r2, #0x24]
    lsls r0, r1, #9
    lsrs r5, r0, #0x19
    cmp r5, #0
    beq .L08020B5A
    subs r5, #1
.L08020B5A:
    ldrb r4, [r7, #3]
    cmp r4, #0
    beq .L08020B62
    subs r4, #1
.L08020B62:
    ldr r3, [sp, #0xf8]
    ldrb r0, [r3]
    cmp r0, #0
    beq .L08020B72
    mov r1, r8
    mov r0, sl
    strh r1, [r0, #0x24]
    b .L08020BDC
.L08020B72:
    mov r2, r8
    cmp r2, #0
    beq .L08020BF0
    lsls r0, r1, #8
    cmp r0, #0
    bge .L08020B90
    ldr r3, [sp, #0xd8]
    ldr r0, [r3]
    ldr r2, [r0, #0x40]
    adds r0, r3, #0
    movs r1, #0x2d
    bl _call_via_r2
    adds r3, r0, #0
    b .L08020B92
.L08020B90:
    mov r3, sb
.L08020B92:
    cmp r3, #0
    beq .L08020BF0
    ldrh r0, [r3, #4]
    ldr r1, [sp, #0xdc]
    cmp r0, r1
    bne .L08020BF0
    cmp r4, #0
    bne .L08020BD8
    movs r2, #0xa
    ldrsh r0, [r6, r2]
    movs r4, #0xe
    ldrsh r1, [r6, r4]
    movs r4, #0xa
    ldrsh r2, [r3, r4]
    movs r4, #0xe
    ldrsh r3, [r3, r4]
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r4, [r4]
    mov sb, r4
    add r4, sp, #0x14
    str r4, [sp]
    mov r4, sb
    str r4, [sp, #4]
    bl func_080ABE58
    adds r2, r0, #0
    adds r0, r6, #0
    movs r1, #2
    bl func_080211E4
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
.L08020BD8:
    mov r0, r8
    strh r0, [r7]
.L08020BDC:
    movs r0, #0x7f
    ands r5, r0
    ldrb r1, [r7, #2]
    movs r0, #0x80
    rsbs r0, r0, #0
    ands r0, r1
    orrs r0, r5
    strb r0, [r7, #2]
    strb r4, [r7, #3]
    b .L080210A0
.L08020BF0:
    adds r0, r6, #0
    bl func_080323C8
    ldr r2, .L08020C0C @ =0xFFFF0000
    add r1, sp, #0xb4
    ldr r0, [r1]
    ands r0, r2
    movs r2, #0xb4
    orrs r0, r2
    ldr r2, .L08020C10 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    b .L08020FD0
    .align 2, 0
.L08020C0C: .4byte 0xFFFF0000
.L08020C10: .4byte 0xFF00FFFF
.L08020C14:
    mov r5, sl
    adds r5, #0x24
    mov r1, sl
    ldrh r7, [r1, #0x24]
    cmp r7, #0
    beq .L08020C22
    subs r7, #1
.L08020C22:
    ldrh r4, [r5, #2]
    cmp r4, #0
    beq .L08020C2A
    subs r4, #1
.L08020C2A:
    ldr r2, [sp, #0xf8]
    ldrb r0, [r2]
    cmp r0, #0
    beq .L08020C3A
    mov r3, sl
    strh r7, [r3, #0x24]
    strh r4, [r5, #2]
    b .L080210A0
.L08020C3A:
    cmp r7, #0
    beq .L08020D1A
    ldr r1, [sp, #0xd8]
    ldr r0, [r1]
    ldr r2, [r0, #0x40]
    adds r0, r1, #0
    movs r1, #0x4b
    bl _call_via_r2
    str r0, [sp, #0xe8]
    cmp r0, #0
    beq .L08020D08
    ldrh r0, [r0, #4]
    ldr r2, [sp, #0xdc]
    cmp r0, r2
    bne .L08020D08
    movs r3, #0xa
    ldrsh r2, [r6, r3]
    movs r0, #0xe
    ldrsh r1, [r6, r0]
    ldr r3, [sp, #0xe8]
    movs r0, #0xa
    ldrsh r3, [r3, r0]
    mov sb, r3
    ldr r3, [sp, #0xe8]
    movs r0, #0xe
    ldrsh r3, [r3, r0]
    mov r8, r3
    mov r3, sb
    subs r0, r3, r2
    cmp r0, #0
    bge .L08020C7C
    rsbs r0, r0, #0
.L08020C7C:
    cmp r0, #7
    bgt .L08020C8E
    mov r3, r8
    subs r0, r3, r1
    cmp r0, #0
    bge .L08020C8A
    rsbs r0, r0, #0
.L08020C8A:
    cmp r0, #7
    ble .L08020CE4
.L08020C8E:
    cmp r4, #0
    beq .L08020CB2
    movs r3, #4
    ldrsh r0, [r5, r3]
    subs r0, r0, r2
    cmp r0, #0
    bge .L08020C9E
    rsbs r0, r0, #0
.L08020C9E:
    cmp r0, #7
    bgt .L08020D0C
    movs r3, #6
    ldrsh r0, [r5, r3]
    subs r0, r0, r1
    cmp r0, #0
    bge .L08020CAE
    rsbs r0, r0, #0
.L08020CAE:
    cmp r0, #7
    bgt .L08020D0C
.L08020CB2:
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    add r4, sp, #0x14
    str r4, [sp]
    str r0, [sp, #4]
    adds r0, r2, #0
    mov r2, sb
    mov r3, r8
    bl func_080ABC40
    adds r2, r0, #0
    adds r0, r6, #0
    movs r1, #2
    bl func_080211E4
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
    mov r0, sb
    strh r0, [r5, #4]
    mov r1, r8
    strh r1, [r5, #6]
    b .L08020D0C
.L08020CE4:
    movs r0, #0x78
    bl func_080AB788
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r3, .L08020D04 @ =0xFFFF0000
    add r1, sp, #0xb8
    ldr r2, [r1]
    ands r2, r3
    orrs r2, r0
    str r2, [r1]
    mov r0, sl
    bl method_0809BB80__3DogPC15UnkBarnAnimal2C
    b .L08020FD6
    .align 2, 0
.L08020D04: .4byte 0xFFFF0000
.L08020D08:
    cmp r4, #0
    beq .L08020D12
.L08020D0C:
    strh r7, [r5]
    strh r4, [r5, #2]
    b .L080210A0
.L08020D12:
    adds r0, r6, #0
    movs r1, #0xaa
    bl func_080200C4
.L08020D1A:
    ldr r2, .L08020D30 @ =0xFFFF0000
    add r1, sp, #0xbc
    ldr r0, [r1]
    ands r0, r2
    movs r2, #0xb4
    orrs r0, r2
    ldr r2, .L08020D34 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    b .L08020FD0
    .align 2, 0
.L08020D30: .4byte 0xFFFF0000
.L08020D34: .4byte 0xFF00FFFF
.L08020D38:
    ldr r2, [sp, #0xd8]
    ldr r0, [r2]
    ldr r2, [r0, #0x40]
    ldr r0, [sp, #0xd8]
    movs r1, #0x4b
    bl _call_via_r2
    str r0, [sp, #0xe8]
    mov r3, sl
    ldrh r1, [r3, #0x24]
    cmp r1, #0
    beq .L08020D52
    subs r1, #1
.L08020D52:
    ldr r4, [sp, #0xe8]
    cmp r4, #0
    beq .L08020DC0
    ldrh r0, [r4, #4]
    ldr r5, [sp, #0xdc]
    cmp r0, r5
    bne .L08020DC0
    cmp r1, #0
    bne .L08020DBA
    adds r0, r6, #0
    movs r1, #0xa9
    bl func_080200C4
    mov r0, sl
    bl GetAffection__C6Animal
    adds r1, r0, #0
    lsls r0, r1, #4
    subs r0, r0, r1
    lsls r0, r0, #6
    movs r1, #0xfb
    bl __udivsi3
    movs r7, #0xf0
    lsls r7, r7, #1
    adds r0, r0, r7
    lsls r0, r0, #0x10
    add r1, sp, #0xc0
    lsrs r0, r0, #0x10
    str r0, [r1]
    ldr r0, [r6, #0x34]
    bl method_0809BB8C__3DogPC18UnkBarnAnimal2C_x2
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r2, [r4]
    adds r0, r6, #0
    bl func_080211E4
    ldr r1, [r6, #8]
    ldr r2, [r6, #0xc]
    ldrh r3, [r6, #0x22]
    ldrb r0, [r4]
    str r0, [sp]
    ldr r0, [sp, #0xe8]
    bl func_08038374
    b .L080210A0
.L08020DBA:
    mov r0, sl
    strh r1, [r0, #0x24]
    b .L080210A0
.L08020DC0:
    adds r0, r6, #0
    movs r1, #0xaa
    bl func_080200C4
    ldr r2, .L08020DDC @ =0xFFFF0000
    add r1, sp, #0xc8
    ldr r0, [r1]
    ands r0, r2
    movs r2, #0xb4
    orrs r0, r2
    ldr r2, .L08020DE0 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    b .L08020FD0
    .align 2, 0
.L08020DDC: .4byte 0xFFFF0000
.L08020DE0: .4byte 0xFF00FFFF
.L08020DE4:
    mov r5, sl
    adds r5, #0x24
    ldr r1, [sp, #0xd8]
    ldr r0, [r1]
    ldr r2, [r0, #0x40]
    adds r0, r1, #0
    movs r1, #0x4b
    bl _call_via_r2
    str r0, [sp, #0xe8]
    mov r2, sl
    ldrh r7, [r2, #0x24]
    cmp r7, #0
    beq .L08020E02
    subs r7, #1
.L08020E02:
    ldrh r2, [r5, #2]
    cmp r2, #0
    beq .L08020E0A
    subs r2, #1
.L08020E0A:
    ldr r3, [sp, #0xf8]
    ldrb r0, [r3]
    cmp r0, #0
    beq .L08020E1A
    mov r4, sl
    strh r7, [r4, #0x24]
    strh r2, [r5, #2]
    b .L080210A0
.L08020E1A:
    ldr r0, [sp, #0xe8]
    cmp r0, #0
    beq .L08020ED8
    ldrh r0, [r0, #4]
    ldr r1, [sp, #0xdc]
    cmp r0, r1
    bne .L08020ED8
    cmp r7, #0
    beq .L08020EEA
    mov r3, sb
    cmp r3, #0
    beq .L08020EEA
    ldrh r0, [r3, #4]
    cmp r0, r1
    bne .L08020EEA
    movs r4, #0xa
    ldrsh r3, [r6, r4]
    movs r0, #0xe
    ldrsh r1, [r6, r0]
    mov r4, sb
    movs r0, #0xa
    ldrsh r4, [r4, r0]
    str r4, [sp, #0xf4]
    mov r4, sb
    movs r0, #0xe
    ldrsh r4, [r4, r0]
    mov r8, r4
    ldr r4, [sp, #0xf4]
    subs r0, r4, r3
    cmp r0, #0
    bge .L08020E5A
    rsbs r0, r0, #0
.L08020E5A:
    cmp r0, #0xf
    bgt .L08020E6C
    mov r4, r8
    subs r0, r4, r1
    cmp r0, #0
    bge .L08020E68
    rsbs r0, r0, #0
.L08020E68:
    cmp r0, #0xf
    ble .L08020ECE
.L08020E6C:
    cmp r2, #0
    beq .L08020E90
    movs r4, #4
    ldrsh r0, [r5, r4]
    subs r0, r0, r3
    cmp r0, #0
    bge .L08020E7C
    rsbs r0, r0, #0
.L08020E7C:
    cmp r0, #0xf
    bgt .L08020EDC
    movs r4, #6
    ldrsh r0, [r5, r4]
    subs r0, r0, r1
    cmp r0, #0
    bge .L08020E8C
    rsbs r0, r0, #0
.L08020E8C:
    cmp r0, #0xf
    bgt .L08020EDC
.L08020E90:
    adds r4, r6, #0
    adds r4, #0x20
    ldrb r0, [r4]
    add r2, sp, #0x14
    str r2, [sp]
    str r0, [sp, #4]
    adds r0, r3, #0
    ldr r2, [sp, #0xf4]
    mov r3, r8
    bl func_080ABC40
    adds r2, r0, #0
    adds r0, r6, #0
    movs r1, #2
    bl func_080211E4
    ldrh r1, [r6, #0x22]
    ldrb r2, [r4]
    ldr r0, [sp, #0xe8]
    bl func_08038398
    movs r0, #0x1e
    bl func_080AB788
    adds r2, r0, #1
    add r3, sp, #0xf4
    ldrh r3, [r3]
    strh r3, [r5, #4]
    mov r4, r8
    strh r4, [r5, #6]
    b .L08020EDC
.L08020ECE:
    adds r0, r6, #0
    movs r1, #0xa9
    bl func_080200C4
    b .L08020EEA
.L08020ED8:
    cmp r2, #0
    beq .L08020EE2
.L08020EDC:
    strh r7, [r5]
    strh r2, [r5, #2]
    b .L080210A0
.L08020EE2:
    adds r0, r6, #0
    movs r1, #0xaa
    bl func_080200C4
.L08020EEA:
    adds r0, r6, #0
    bl func_080212C0
    ldr r2, .L08020F04 @ =0xFFFF0000
    add r1, sp, #0xcc
    ldr r0, [r1]
    ands r0, r2
    movs r2, #0xb4
    orrs r0, r2
    ldr r2, .L08020F08 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    b .L08020FD0
    .align 2, 0
.L08020F04: .4byte 0xFFFF0000
.L08020F08: .4byte 0xFF00FFFF
.L08020F0C:
    movs r5, #0x24
    add r5, sl
    mov r8, r5
    mov sb, r8
    mov r7, sl
    ldrh r4, [r7, #0x24]
    cmp r4, #0
    beq .L08020F1E
    subs r4, #1
.L08020F1E:
    ldr r1, [sp, #0xf8]
    ldrb r0, [r1]
    cmp r0, #0
    beq .L08020F2C
    mov r2, sl
    strh r4, [r2, #0x24]
    b .L080210A0
.L08020F2C:
    ldr r3, [sp, #0xd8]
    ldr r0, [r3]
    ldr r2, [r0, #0x40]
    adds r0, r3, #0
    movs r1, #0x2d
    bl _call_via_r2
    adds r5, r0, #0
    cmp r5, #0
    bne .L08020F42
    b .L08021074
.L08020F42:
    ldrh r0, [r5, #4]
    ldr r7, [sp, #0xdc]
    cmp r0, r7
    beq .L08020F4C
    b .L08021074
.L08020F4C:
    movs r1, #0xa
    ldrsh r0, [r6, r1]
    mov ip, r0
    movs r2, #0xe
    ldrsh r1, [r6, r2]
    movs r3, #0xa
    ldrsh r2, [r5, r3]
    movs r7, #0xe
    ldrsh r3, [r5, r7]
    mov r7, r8
    ldrb r0, [r7, #2]
    cmp r0, #0
    beq .L08021008
    cmp r4, #0
    bne .L08021002
    mov r4, ip
    subs r0, r2, r4
    cmp r0, #0
    bge .L08020F74
    rsbs r0, r0, #0
.L08020F74:
    cmp r0, #0xf
    bgt .L08020FA0
    subs r1, r3, r1
    cmp r1, #0
    bge .L08020F80
    rsbs r1, r1, #0
.L08020F80:
    cmp r1, #0xf
    bgt .L08020FA0
    ldr r0, [r5, #0x14]
    ldr r1, [r0, #0x44]
    adds r0, r5, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L08020FA0
    ldr r0, [r5, #0x14]
    adds r0, #0x80
    ldr r1, [r0]
    adds r0, r5, #0
    bl _call_via_r1
.L08020FA0:
    movs r0, #0xfb
    bl func_080AB788
    adds r4, r0, #0
    mov r0, sl
    bl GetAdequacy__C3Pet
    movs r1, #0xfb
    subs r1, r1, r0
    cmp r4, r1
    bhs .L08020FF4
    movs r0, #0xb4
    bl func_080AB788
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    ldr r3, .L08020FEC @ =0xFFFF0000
    add r1, sp, #0xd0
    ldr r2, [r1]
    ands r2, r3
    orrs r2, r0
    ldr r0, .L08020FF0 @ =0xFF00FFFF
    ands r2, r0
    str r2, [r1]
.L08020FD0:
    mov r0, sl
    bl method_0809BB48__3DogPC15UnkBarnAnimal2C
.L08020FD6:
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_080211E4
    b .L080210A0
    .align 2, 0
.L08020FEC: .4byte 0xFFFF0000
.L08020FF0: .4byte 0xFF00FFFF
.L08020FF4:
    movs r0, #0
    mov r5, sb
    strb r0, [r5, #2]
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
.L08021002:
    mov r7, sb
    strh r4, [r7]
    b .L080210A0
.L08021008:
    mov r5, ip
    subs r0, r2, r5
    cmp r0, #0
    bge .L08021012
    rsbs r0, r0, #0
.L08021012:
    cmp r0, #0xf
    bgt .L08021022
    subs r0, r3, r1
    cmp r0, #0
    bge .L0802101E
    rsbs r0, r0, #0
.L0802101E:
    cmp r0, #0xf
    ble .L08021050
.L08021022:
    cmp r4, #0
    bne .L0802104A
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r0, [r0]
    add r7, sp, #0x14
    str r7, [sp]
    str r0, [sp, #4]
    mov r0, ip
    bl func_080ABC40
    adds r2, r0, #0
    adds r0, r6, #0
    movs r1, #2
    bl func_080211E4
    movs r0, #0x1e
    bl func_080AB788
    adds r4, r0, #1
.L0802104A:
    mov r0, sb
    strh r4, [r0]
    b .L080210A0
.L08021050:
    adds r0, r6, #0
    movs r1, #0xd2
    bl func_080200C4
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    movs r1, #0xb
    bl func_080211E4
    movs r0, #1
    mov r1, sb
    strb r0, [r1, #2]
    movs r0, #0x24
    mov r2, sl
    strh r0, [r2, #0x24]
    b .L080210A0
.L08021074:
    ldr r2, .L08021104 @ =0xFFFF0000
    add r1, sp, #0xd4
    ldr r0, [r1]
    ands r0, r2
    movs r2, #0xb4
    orrs r0, r2
    ldr r2, .L08021108 @ =0xFF00FFFF
    ands r0, r2
    str r0, [r1]
    mov r0, sl
    bl method_0809BB48__3DogPC15UnkBarnAnimal2C
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_080211E4
.L080210A0:
    ldr r0, [r6, #0x18]
    cmp r0, #0
    bne .L080210AC
    ldr r0, [r6, #0x1c]
    cmp r0, #0
    beq .L080210D6
.L080210AC:
    ldr r3, [sp, #0xdc]
    cmp r3, #2
    beq .L080210C4
    ldr r4, [sp, #0xd8]
    ldr r0, [r4]
    ldr r1, [r0, #0x14]
    adds r0, r4, #0
    bl _call_via_r1
    ldr r5, [sp, #0xdc]
    cmp r5, r0
    bne .L080210D6
.L080210C4:
    ldr r7, [sp, #0xf8]
    ldrb r0, [r7]
    add r1, sp, #0x14
    cmp r0, #0
    beq .L080210D0
    movs r1, #0
.L080210D0:
    adds r0, r6, #0
    bl func_08020170
.L080210D6:
    mov r1, sl
    ldr r0, [r1, #0x20]
    cmp r0, #5
    bne .L080210F4
    ldr r2, [sp, #0xe8]
    cmp r2, #0
    beq .L080210F4
    ldrh r0, [r2, #4]
    ldr r3, [sp, #0xdc]
    cmp r0, r3
    bne .L080210F4
    ldr r0, [r6, #8]
    str r0, [r2, #8]
    ldr r0, [r6, #0xc]
    str r0, [r2, #0xc]
.L080210F4:
    add sp, #0xfc
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08021104: .4byte 0xFFFF0000
.L08021108: .4byte 0xFF00FFFF

    thumb_func_start func_0802110C
func_0802110C: @ 0x0802110C
    push {r4, r5, lr}
    adds r4, r1, #0
    ldr r5, .L0802112C @ =gUnk_080F0908
    lsls r4, r4, #1
    ldr r0, [r0, #0x34]
    bl GetGrowthStage__C3Dog
    cmp r0, #1
    bne .L08021120
    adds r4, #0x1a
.L08021120:
    adds r0, r4, r5
    ldrh r0, [r0]
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L0802112C: .4byte gUnk_080F0908

    thumb_func_start func_08021130
func_08021130: @ 0x08021130
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    cmp r1, #0xc
    bhi .L0802117C
    lsls r0, r1, #2
    ldr r1, .L08021144 @ =.L08021148
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08021144: .4byte .L08021148
.L08021148: @ jump table
    .4byte .L0802117C @ case 0
    .4byte .L08021180 @ case 1
    .4byte .L08021186 @ case 2
    .4byte .L0802117C @ case 3
    .4byte .L0802117C @ case 4
    .4byte .L0802117C @ case 5
    .4byte .L0802117C @ case 6
    .4byte .L0802117C @ case 7
    .4byte .L0802117C @ case 8
    .4byte .L0802117C @ case 9
    .4byte .L0802117C @ case 10
    .4byte .L0802117C @ case 11
    .4byte .L0802118C @ case 12
.L0802117C:
    movs r0, #0
    b .L080211DA
.L08021180:
    movs r0, #0x80
    lsls r0, r0, #8
    b .L080211DA
.L08021186:
    movs r0, #0x80
    lsls r0, r0, #9
    b .L080211DA
.L0802118C:
    ldr r1, [r4, #0x14]
    mov r0, sp
    ldr r2, [r1, #0xc]
    adds r1, r4, #0
    bl _call_via_r2
    ldr r0, [sp]
    ldr r1, [sp, #4]
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    add r1, sp, #8
    movs r2, #0x10
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    adds r3, r1, #0
    cmp r0, #0
    blt .L080211D2
    cmp r0, #1
    ble .L080211BA
    cmp r0, #3
    ble .L080211C4
    b .L080211D2
.L080211BA:
    movs r1, #6
    ldrsh r0, [r3, r1]
    movs r2, #2
    ldrsh r1, [r3, r2]
    b .L080211CC
.L080211C4:
    movs r2, #4
    ldrsh r0, [r1, r2]
    movs r2, #0
    ldrsh r1, [r1, r2]
.L080211CC:
    subs r0, r0, r1
    adds r2, r0, #0
    adds r2, #0x10
.L080211D2:
    lsls r0, r2, #0x10
    movs r1, #0x1e
    bl __divsi3
.L080211DA:
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_080211E4
func_080211E4: @ 0x080211E4
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    cmp r5, #0xc
    beq .L080211FA
    adds r0, #0x40
    ldrb r0, [r0]
    cmp r0, #0
    beq .L080211FA
    movs r5, #0xc
.L080211FA:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_0802110C
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq .L08021210
    adds r0, r4, #0
    bl SetAnim__12AActorEntityUi
.L08021210:
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r6
    beq .L08021222
    adds r0, r4, #0
    adds r1, r6, #0
    bl SetAnimFacing__12AActorEntityUi
.L08021222:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08021130
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08020080
    adds r0, r4, #0
    adds r0, #0x41
    adds r6, r0, #0
    ldrb r0, [r6]
    cmp r5, r0
    beq .L0802125C
    movs r1, #1
    rsbs r1, r1, #0
    cmp r5, #8
    bne .L08021248
    movs r1, #8
.L08021248:
    cmp r1, #0
    blt .L08021256
    adds r0, r4, #0
    movs r2, #1
    bl func_08032384
    b .L0802125C
.L08021256:
    adds r0, r4, #0
    bl func_080323C8
.L0802125C:
    strb r5, [r6]
    pop {r4, r5, r6}
    pop {r0}
    bx r0

    thumb_func_start func_08021264
func_08021264: @ 0x08021264
    push {lr}
    adds r2, r0, #0
    ldr r0, [r2, #0x34]
    ldr r0, [r0, #0x20]
    cmp r0, #6
    bhi .L0802129C
    lsls r0, r0, #2
    ldr r1, .L0802127C @ =.L08021280
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L0802127C: .4byte .L08021280
.L08021280: @ jump table
    .4byte .L080212A0 @ case 0
    .4byte .L080212A8 @ case 1
    .4byte .L080212A8 @ case 2
    .4byte .L080212A8 @ case 3
    .4byte .L0802129C @ case 4
    .4byte .L080212A8 @ case 5
    .4byte .L080212AC @ case 6
.L0802129C:
    movs r0, #3
    b .L080212BC
.L080212A0:
    ldr r0, [r2, #0x34]
    adds r0, #0x26
    ldrb r0, [r0]
    b .L080212BC
.L080212A8:
    movs r0, #2
    b .L080212BC
.L080212AC:
    ldr r0, [r2, #0x34]
    adds r0, #0x26
    ldrb r0, [r0]
    movs r1, #2
    cmp r0, #0
    beq .L080212BA
    movs r1, #0xb
.L080212BA:
    adds r0, r1, #0
.L080212BC:
    pop {r1}
    bx r1

    thumb_func_start func_080212C0
func_080212C0: @ 0x080212C0
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, sb
    mov r5, r8
    push {r5, r6, r7}
    sub sp, #0x14
    adds r6, r0, #0
    ldr r0, [r6]
    ldr r1, [r0]
    ldr r2, [r1, #0x40]
    movs r1, #0x4b
    bl _call_via_r2
    adds r5, r0, #0
    cmp r5, #0
    beq .L08021394
    adds r0, #0x26
    ldrb r0, [r0]
    cmp r0, #0
    beq .L08021394
    ldr r0, [r6, #8]
    mov sb, r0
    ldr r2, [r6, #0xc]
    mov r8, r2
    movs r0, #8
    mov sl, r0
    ldrh r7, [r6, #4]
    ldr r4, [r6]
    ldr r0, [r4]
    ldr r1, [r0, #0x14]
    adds r0, r4, #0
    bl _call_via_r1
    cmp r7, r0
    beq .L0802130E
    cmp r7, #2
    beq .L0802130E
    movs r2, #0
    mov sl, r2
.L0802130E:
    ldr r1, [r4]
    mov r0, sp
    ldr r3, [r1, #0x34]
    adds r1, r4, #0
    adds r2, r7, #0
    bl _call_via_r3
    mov r7, sp
    adds r6, #0x20
    b .L0802133E
.L08021322:
    ldr r1, [r5, #0x14]
    add r4, sp, #0xc
    adds r0, r4, #0
    ldr r2, [r1, #0xc]
    adds r1, r5, #0
    bl _call_via_r2
    adds r0, r7, #0
    adds r1, r4, #0
    bl func_080AC070
    lsls r0, r0, #0x18
    cmp r0, #0
    beq .L0802138E
.L0802133E:
    mov r0, sl
    lsls r1, r0, #0x10
    ldrb r0, [r6]
    adds r2, r0, #0
    cmp r0, #1
    beq .L08021368
    cmp r0, #1
    bgt .L08021354
    cmp r0, #0
    beq .L0802135E
    b .L08021382
.L08021354:
    cmp r2, #2
    beq .L08021372
    cmp r2, #3
    beq .L08021378
    b .L08021382
.L0802135E:
    mov r2, sb
    str r2, [r5, #8]
    mov r2, r8
    adds r0, r2, r1
    b .L08021380
.L08021368:
    mov r0, sb
    str r0, [r5, #8]
    mov r2, r8
    subs r0, r2, r1
    b .L08021380
.L08021372:
    mov r2, sb
    subs r0, r2, r1
    b .L0802137C
.L08021378:
    mov r2, sb
    adds r0, r2, r1
.L0802137C:
    str r0, [r5, #8]
    mov r0, r8
.L08021380:
    str r0, [r5, #0xc]
.L08021382:
    movs r2, #1
    rsbs r2, r2, #0
    add sl, r2
    mov r0, sl
    cmp r0, #0
    bge .L08021322
.L0802138E:
    adds r0, r5, #0
    bl func_080384FC
.L08021394:
    add sp, #0x14
    pop {r3, r4, r5}
    mov r8, r3
    mov sb, r4
    mov sl, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
.L080213A4:
    .byte 0x40, 0x30, 0x00, 0x78, 0x01, 0x21, 0x48, 0x40, 0x70, 0x47, 0x00, 0x00
    .byte 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x40, 0x30, 0x00, 0x78, 0x00, 0x28, 0x35, 0xD1, 0x60, 0x6B
    .byte 0x00, 0x6A, 0x05, 0x28, 0x02, 0xD1, 0x20, 0x1C, 0xFF, 0xF7, 0x7A, 0xFF, 0x78, 0x20, 0x8A, 0xF0
    .byte 0xDB, 0xF9, 0xF0, 0x30, 0x00, 0x04, 0x00, 0x0C, 0x16, 0x4A, 0x00, 0x99, 0x11, 0x40, 0x01, 0x43
    .byte 0x15, 0x48, 0x01, 0x40, 0xF0, 0x20, 0x80, 0x03, 0x01, 0x43, 0x14, 0x48, 0x01, 0x40, 0x14, 0x48
    .byte 0x01, 0x40, 0x00, 0x91, 0x60, 0x6B, 0x69, 0x46, 0x7A, 0xF0, 0xB4, 0xFB, 0x20, 0x1C, 0xFF, 0xF7
    .byte 0x31, 0xFF, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C, 0xFF, 0xF7, 0xEA, 0xFE
    .byte 0x60, 0x6B, 0x0A, 0x21, 0x79, 0xF0, 0x62, 0xFF, 0x20, 0x1C, 0x02, 0x21, 0x00, 0x22, 0x10, 0xF0
    .byte 0xB1, 0xFF, 0x20, 0x1C, 0xAA, 0x21, 0xFE, 0xF7, 0x4D, 0xFE, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC
    .byte 0x00, 0x47, 0x00, 0x00, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x80, 0xFF, 0xFF, 0xFF, 0x7F, 0xFF
    .byte 0xFF, 0xFF, 0xFF, 0x00

    thumb_func_start func_08021444
func_08021444: @ 0x08021444
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    adds r7, r1, #0
    ldrh r0, [r7]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    ldrh r1, [r6, #4]
    cmp r0, r1
    bne .L0802150A
    ldr r1, [r6, #0x34]
    ldr r0, [r1, #0x20]
    cmp r0, #5
    beq .L0802150A
    adds r0, r1, #0
    bl GetAffection__C6Animal
    mov r8, r0
    bl func_08020018
    movs r1, #0xa
    ldrsh r3, [r6, r1]
    ldrb r1, [r7, #1]
    lsrs r1, r1, #2
    ldrh r2, [r7, #2]
    ldr r4, .L08021518 @ =0x000003FF
    ands r2, r4
    lsls r2, r2, #6
    orrs r2, r1
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    subs r2, r2, r3
    movs r3, #0xe
    ldrsh r5, [r6, r3]
    ldrb r3, [r7, #3]
    lsrs r3, r3, #2
    ldrh r1, [r7, #4]
    ands r1, r4
    lsls r1, r1, #6
    orrs r1, r3
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    subs r1, r1, r5
    adds r3, r2, #0
    muls r3, r2, r3
    adds r2, r3, #0
    adds r3, r1, #0
    muls r3, r1, r3
    adds r1, r3, #0
    adds r2, r2, r1
    adds r1, r0, #0
    muls r1, r0, r1
    adds r0, r1, #0
    cmp r2, r0
    bgt .L0802150A
    ldr r0, [r6, #0x34]
    ldr r0, [r0, #0x20]
    cmp r0, #5
    bne .L080214C4
    adds r0, r6, #0
    bl func_080212C0
.L080214C4:
    mov r3, r8
    lsls r0, r3, #4
    subs r0, r0, r3
    lsls r0, r0, #6
    movs r1, #0xfb
    bl __udivsi3
    movs r1, #0xf0
    lsls r1, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    str r0, [sp]
    ldr r0, [r6, #0x34]
    mov r1, sp
    bl method_0809BB54__3DogPC18UnkBarnAnimal2C_x2
    adds r0, r6, #0
    adds r0, #0x40
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08021504
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_080211E4
.L08021504:
    ldr r0, [r6, #0x34]
    bl SetHasTalkedToday__3Pet
.L0802150A:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L08021518: .4byte 0x000003FF

    thumb_func_start func_0802151C
func_0802151C: @ 0x0802151C
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r6, r0, #0
    adds r7, r1, #0
    ldr r0, [r6, #0x34]
    bl GetGrowthStage__C3Dog
    cmp r0, #1
    bne .L080215EC
    ldrh r0, [r7]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    ldrh r1, [r6, #4]
    cmp r0, r1
    bne .L080215EC
    ldr r0, [r6, #0x34]
    bl GetAdequacy__C3Pet
    mov r8, r0
    bl func_08020018
    movs r1, #0xa
    ldrsh r3, [r6, r1]
    ldrb r1, [r7, #1]
    lsrs r1, r1, #2
    ldrh r2, [r7, #2]
    ldr r4, .L080215F8 @ =0x000003FF
    ands r2, r4
    lsls r2, r2, #6
    orrs r2, r1
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    subs r2, r2, r3
    movs r3, #0xe
    ldrsh r5, [r6, r3]
    ldrb r3, [r7, #3]
    lsrs r3, r3, #2
    ldrh r1, [r7, #4]
    ands r1, r4
    lsls r1, r1, #6
    orrs r1, r3
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    subs r1, r1, r5
    adds r3, r2, #0
    muls r3, r2, r3
    adds r2, r3, #0
    adds r3, r1, #0
    muls r3, r1, r3
    adds r1, r3, #0
    adds r2, r2, r1
    adds r1, r0, #0
    muls r1, r0, r1
    adds r0, r1, #0
    cmp r2, r0
    bgt .L080215EC
    adds r0, r6, #0
    movs r1, #0xa9
    bl func_080200C4
    ldr r0, [r6, #0x34]
    ldr r0, [r0, #0x20]
    cmp r0, #5
    bne .L080215A6
    adds r0, r6, #0
    bl func_080212C0
.L080215A6:
    mov r3, r8
    lsls r0, r3, #4
    subs r0, r0, r3
    lsls r0, r0, #6
    movs r1, #0xfb
    bl __udivsi3
    movs r1, #0xf0
    lsls r1, r1, #1
    adds r0, r0, r1
    lsls r0, r0, #0x10
    lsrs r0, r0, #0x10
    str r0, [sp]
    ldr r0, [r6, #0x34]
    mov r1, sp
    bl method_0809BB70__3DogPC18UnkBarnAnimal2C_x2
    adds r0, r6, #0
    adds r0, #0x40
    ldrb r0, [r0]
    cmp r0, #0
    bne .L080215E6
    adds r0, r6, #0
    bl func_08021264
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_080211E4
.L080215E6:
    ldr r0, [r6, #0x34]
    bl SetHasPlayedToday__3Pet
.L080215EC:
    add sp, #8
    pop {r3}
    mov r8, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080215F8: .4byte 0x000003FF
.L080215FC:
    .byte 0x10, 0xB5, 0x0A, 0x23
    .byte 0xCA, 0x5E, 0x0E, 0x24, 0x0B, 0x5F, 0xD1, 0x1F, 0x01, 0x80, 0x19, 0x1F, 0x41, 0x80, 0x07, 0x32
    .byte 0x82, 0x80, 0x05, 0x33, 0xC3, 0x80, 0x10, 0xBC, 0x04, 0xBC, 0x10, 0x47

    .section .text.tail08021620, "ax", %progbits
    thumb_func_start func_08021620
func_08021620: @ 0x08021620
    push {lr}
    cmp r0, #0
    beq .L0802162A
    cmp r0, #1
    beq .L0802162E
.L0802162A:
    movs r0, #6
    b .L08021630
.L0802162E:
    movs r0, #8
.L08021630:
    pop {r1}
    bx r1
.L08021634:
    .byte 0x70, 0xB5, 0x46, 0x46, 0x40, 0xB4, 0x84, 0xB0, 0x05, 0x1C, 0x68, 0x6B
    .byte 0x7A, 0xF0, 0x78, 0xFA, 0x06, 0x1C, 0x8C, 0x20, 0xDE, 0xF7, 0xC4, 0xFF, 0x80, 0x46, 0x30, 0x1C
    .byte 0xFF, 0xF7, 0xE4, 0xFF, 0x04, 0x1C, 0x30, 0x1C, 0xFF, 0xF7, 0xE2, 0xFF, 0x00, 0x94, 0x01, 0x90
    .byte 0x00, 0x26, 0x02, 0x96, 0x03, 0xA8, 0x06, 0x70, 0x40, 0x46, 0x29, 0x1C, 0x02, 0x22, 0x06, 0x23
    .byte 0x10, 0xF0, 0x24, 0xFF, 0x04, 0x1C, 0xA0, 0x46, 0x41, 0x35, 0x28, 0x78, 0x08, 0x28, 0x15, 0xD1
    .byte 0x20, 0x1C, 0x70, 0x30, 0x08, 0x21, 0x3D, 0xF0, 0xEB, 0xF8, 0x20, 0x1C, 0x84, 0x30, 0x01, 0x21
    .byte 0x01, 0x70, 0x02, 0x30, 0x06, 0x70, 0x01, 0x30, 0x01, 0x70, 0x22, 0x1C, 0x8A, 0x32, 0x02, 0x23
    .byte 0x11, 0x78, 0x04, 0x20, 0x40, 0x42, 0x08, 0x40, 0x18, 0x43, 0x10, 0x70, 0x40, 0x46, 0x04, 0xB0
    .byte 0x08, 0xBC, 0x98, 0x46, 0x70, 0xBC, 0x02, 0xBC, 0x08, 0x47, 0x00, 0x00

    thumb_func_start func_080216BC
func_080216BC: @ 0x080216BC
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r0, #0
    adds r4, r1, #0
    adds r5, r2, #0
    mov r0, sp
    adds r1, r5, #0
    bl __5ActorRC5Actor
    ldr r3, .L08021734 @ =0x00000782
    adds r0, r6, #0
    adds r1, r4, #0
    mov r2, sp
    bl func_08020038
    ldr r0, .L08021738 @ =vtable_unk_080E6428
    str r0, [r6, #0x14]
    str r5, [r6, #0x34]
    adds r1, r6, #0
    adds r1, #0x3d
    movs r0, #0
    strb r0, [r1]
    ldr r0, [r4]
    ldr r2, [r0, #0x40]
    adds r0, r4, #0
    movs r1, #0
    bl _call_via_r2
    adds r2, r0, #0
    movs r0, #0
    cmp r2, #0
    beq .L0802170E
    ldr r0, [r2, #0x14]
    ldr r1, [r0, #0x40]
    adds r0, r2, #0
    bl _call_via_r1
    lsls r0, r0, #0x18
    lsrs r0, r0, #0x18
    rsbs r0, r0, #0
    lsrs r0, r0, #0x1f
.L0802170E:
    adds r1, r6, #0
    adds r1, #0x3e
    strb r0, [r1]
    adds r0, r6, #0
    bl func_080220D4
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_08022048
    adds r0, r6, #0
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    .align 2, 0
.L08021734: .4byte 0x00000782
.L08021738: .4byte vtable_unk_080E6428
.L0802173C:
    .byte 0x70, 0xB5, 0x82, 0xB0
    .byte 0x05, 0x1C, 0x0E, 0x1C, 0x16, 0x48, 0x68, 0x61, 0x28, 0x1C, 0x3D, 0x30, 0x00, 0x78, 0x00, 0x28
    .byte 0x07, 0xD0, 0x38, 0x21, 0x68, 0x5E, 0x00, 0x04, 0xA8, 0x60, 0x3A, 0x21, 0x68, 0x5E, 0x00, 0x04
    .byte 0xE8, 0x60, 0x6C, 0x6B, 0x68, 0x46, 0x29, 0x1C, 0x10, 0xF0, 0x02, 0xFD, 0x20, 0x1C, 0x69, 0x46
    .byte 0x79, 0xF0, 0xD8, 0xFC, 0x0B, 0x48, 0x68, 0x61, 0x29, 0x69, 0x00, 0x29, 0x05, 0xD0, 0x48, 0x68
    .byte 0x82, 0x68, 0x08, 0x1C, 0x03, 0x21, 0xB2, 0xF0, 0xC5, 0xF8, 0x01, 0x20, 0x30, 0x40, 0x00, 0x28
    .byte 0x02, 0xD0, 0x28, 0x1C, 0xDE, 0xF7, 0x38, 0xFF, 0x02, 0xB0, 0x70, 0xBC, 0x01, 0xBC, 0x00, 0x47
    .byte 0x28, 0x64, 0x0E, 0x08, 0x50, 0x62, 0x0E, 0x08, 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x09, 0x04
    .byte 0x09, 0x0C, 0x0C, 0x4A, 0x00, 0x98, 0x10, 0x40, 0x08, 0x43, 0x0B, 0x49, 0x08, 0x40, 0x00, 0x90
    .byte 0x60, 0x6B, 0x69, 0x46, 0x7A, 0xF0, 0x2E, 0xFA, 0x20, 0x1C, 0x00, 0xF0, 0x83, 0xFC, 0x01, 0x1C
    .byte 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C, 0x00, 0xF0, 0x36, 0xFC, 0x01, 0xB0, 0x10, 0xBC
    .byte 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0xF0, 0xB5, 0x57, 0x46
    .byte 0x4E, 0x46, 0x45, 0x46, 0xE0, 0xB4, 0xB6, 0xB0, 0x06, 0x1C, 0x30, 0x68, 0x82, 0x46, 0x30, 0x1C
    .byte 0x3E, 0x30, 0x00, 0x78, 0x00, 0x28, 0x00, 0xD0, 0x2F, 0xE3, 0x71, 0x6B, 0x2F, 0x91, 0x08, 0x1C
    .byte 0x7A, 0xF0, 0xFE, 0xF9, 0x05, 0x1C, 0xB2, 0x88, 0x30, 0x92, 0x53, 0x46, 0x19, 0x68, 0x02, 0xA8
    .byte 0x4B, 0x6B, 0x51, 0x46, 0xB2, 0xF0, 0x78, 0xF8, 0x71, 0x69, 0x1F, 0xAC, 0x20, 0x1C, 0xCA, 0x68
    .byte 0x31, 0x1C, 0xB2, 0xF0, 0x6F, 0xF8, 0x00, 0x21, 0x00, 0x20, 0xA0, 0x46, 0x30, 0x9C, 0x08, 0x2C
    .byte 0x00, 0xDC, 0x01, 0x20, 0x00, 0x28, 0x02, 0xD0, 0x01, 0x2D, 0x00, 0xD1, 0x01, 0x21, 0x0A, 0x1C
    .byte 0x00, 0x2A, 0x09, 0xD0, 0x47, 0x46, 0x04, 0x21, 0x78, 0x5E, 0x1F, 0xA9, 0x00, 0x23, 0xC9, 0x5E
    .byte 0x40, 0x1A, 0x10, 0x30, 0x31, 0x90, 0x01, 0xE0, 0x00, 0x24, 0x31, 0x94, 0x00, 0x2A, 0x08, 0xD0
    .byte 0x47, 0x46, 0x06, 0x21, 0x78, 0x5E, 0x02, 0x22, 0xB9, 0x5E, 0x40, 0x1A, 0x10, 0x30, 0x32, 0x90
    .byte 0x01, 0xE0, 0x00, 0x23, 0x32, 0x93, 0x05, 0xAC, 0x21, 0x27, 0x05, 0x97, 0x21, 0x20, 0x40, 0x42
    .byte 0x60, 0x60, 0xA0, 0x60, 0xE7, 0x60, 0x0A, 0xA9, 0x02, 0xA8, 0x8C, 0xC8, 0x8C, 0xC1, 0x1F, 0x98
    .byte 0x20, 0x99, 0x0D, 0x90, 0x0E, 0x91, 0x20, 0x20, 0xA0, 0x62, 0x31, 0x99, 0x10, 0x91, 0x32, 0x9A
    .byte 0x11, 0x92, 0x53, 0x46, 0x18, 0x68, 0x02, 0x6C, 0x50, 0x46, 0x00, 0x21, 0xB2, 0xF0, 0x2A, 0xF8
    .byte 0x81, 0x46, 0x57, 0x46, 0x38, 0x68, 0x02, 0x6C, 0x50, 0x46, 0x4A, 0x21, 0xB2, 0xF0, 0x22, 0xF8
    .byte 0x07, 0x1C, 0x30, 0x1C, 0x3D, 0x30, 0x01, 0x78, 0x35, 0x90, 0x00, 0x29, 0x6E, 0xD0, 0x00, 0x21
    .byte 0xB0, 0x8C, 0x00, 0x28, 0x00, 0xD1, 0x01, 0x21, 0x00, 0x29, 0x67, 0xD0, 0x00, 0x20, 0x35, 0x99
    .byte 0x08, 0x70, 0x38, 0x22, 0xB0, 0x5E, 0x00, 0x04, 0xB0, 0x60, 0x3A, 0x23, 0xF0, 0x5E, 0x00, 0x04
    .byte 0xF0, 0x60, 0x71, 0x69, 0x21, 0xAC, 0x20, 0x1C, 0xCA, 0x68, 0x31, 0x1C, 0xB2, 0xF0, 0x02, 0xF8
    .byte 0x20, 0x68, 0x61, 0x68, 0x1F, 0x90, 0x20, 0x91, 0x44, 0x46, 0x04, 0x20, 0x25, 0x5E, 0x00, 0x21
    .byte 0x60, 0x5E, 0x2D, 0x1A, 0x10, 0x35, 0xAA, 0x46, 0x06, 0x22, 0xA4, 0x5E, 0x43, 0x46, 0x02, 0x25
    .byte 0x58, 0x5F, 0x24, 0x1A, 0x10, 0x34, 0xA0, 0x46, 0x12, 0xA9, 0x21, 0x20, 0x12, 0x90, 0x21, 0x22
    .byte 0x52, 0x42, 0x4A, 0x60, 0x8A, 0x60, 0xC8, 0x60, 0x17, 0xAA, 0x02, 0xA8, 0x38, 0xC8, 0x38, 0xC2
    .byte 0x1F, 0x9A, 0x20, 0x9B, 0x1A, 0x92, 0x1B, 0x93, 0x20, 0x20, 0x88, 0x62, 0x52, 0x46, 0x1D, 0x92
    .byte 0x43, 0x46, 0x1E, 0x93, 0x05, 0xA8, 0x34, 0x22, 0xB2, 0xF0, 0x14, 0xF8, 0x4C, 0x46, 0x00, 0x2C
    .byte 0x0F, 0xD0, 0xA0, 0x88, 0x30, 0x9D, 0xA8, 0x42, 0x0B, 0xD1, 0x61, 0x69, 0x23, 0xAC, 0x20, 0x1C
    .byte 0xCA, 0x68, 0x49, 0x46, 0xB1, 0xF0, 0xC6, 0xFF, 0x05, 0xA8, 0x21, 0x1C, 0x01, 0x22, 0x8A, 0xF0
    .byte 0x7F, 0xF8, 0x00, 0x2F, 0x00, 0xD1, 0xE2, 0xE1, 0xB8, 0x88, 0x30, 0x99, 0x88, 0x42, 0x00, 0xD0
    .byte 0xDD, 0xE1, 0x79, 0x69, 0x25, 0xAC, 0x20, 0x1C, 0xCA, 0x68, 0x39, 0x1C, 0xB1, 0xF0, 0xB2, 0xFF
    .byte 0x05, 0xA8, 0x21, 0x1C, 0x00, 0x22, 0x8A, 0xF0, 0x6B, 0xF8, 0xD0, 0xE1, 0x4A, 0x46, 0x00, 0x2A
    .byte 0x0F, 0xD0, 0x90, 0x88, 0x30, 0x9B, 0x98, 0x42, 0x0B, 0xD1, 0x51, 0x69, 0x27, 0xAC, 0x20, 0x1C
    .byte 0xCA, 0x68, 0x49, 0x46, 0xB1, 0xF0, 0x9E, 0xFF, 0x05, 0xA8, 0x21, 0x1C, 0x01, 0x22, 0x8A, 0xF0
    .byte 0x57, 0xF8, 0x00, 0x2F, 0x0F, 0xD0, 0xB8, 0x88, 0x30, 0x9C, 0xA0, 0x42, 0x0B, 0xD1, 0x79, 0x69
    .byte 0x29, 0xAC, 0x20, 0x1C, 0xCA, 0x68, 0x39, 0x1C, 0xB1, 0xF0, 0x8C, 0xFF, 0x05, 0xA8, 0x21, 0x1C
    .byte 0x00, 0x22, 0x8A, 0xF0, 0x45, 0xF8, 0x35, 0x9F, 0x38, 0x78, 0x00, 0x28, 0x00, 0xD0, 0x90, 0xE0
    .byte 0x01, 0x2D, 0x00, 0xD0, 0x8D, 0xE0, 0x0A, 0x21, 0x70, 0x5E, 0x33, 0x90, 0x0E, 0x23, 0xF2, 0x5E
    .byte 0x34, 0x92, 0xB4, 0x69, 0xA0, 0x46, 0xF7, 0x69, 0x04, 0x1C, 0x15, 0x1C, 0x00, 0x2F, 0x18, 0xDD
    .byte 0x05, 0x99, 0x0F, 0x98, 0x81, 0x42, 0x04, 0xDD, 0x05, 0xA8, 0x89, 0xF0, 0x0F, 0xFF, 0x05, 0x98
    .byte 0x00, 0xE0, 0x08, 0x1C, 0x00, 0x28, 0x0C, 0xD1, 0x05, 0x99, 0x0F, 0x98, 0x81, 0x42, 0x02, 0xDD
    .byte 0x05, 0xA8, 0x89, 0xF0, 0x03, 0xFF, 0x09, 0xA9, 0x08, 0x78, 0x00, 0x28, 0x01, 0xD0, 0x32, 0x9A
    .byte 0xAD, 0x18, 0x00, 0x2F, 0x19, 0xDA, 0x06, 0x99, 0x0F, 0x98, 0xC1, 0x42, 0x04, 0xDA, 0x05, 0xA8
    .byte 0x89, 0xF0, 0x2E, 0xFF, 0x06, 0x98, 0x00, 0xE0, 0x08, 0x1C, 0x00, 0x28, 0x0D, 0xD1, 0x0F, 0x99
    .byte 0x06, 0x98, 0xC8, 0x42, 0x02, 0xDA, 0x05, 0xA8, 0x89, 0xF0, 0x22, 0xFF, 0x25, 0x23, 0x6B, 0x44
    .byte 0x18, 0x78, 0x00, 0x28, 0x01, 0xD0, 0x32, 0x9F, 0xED, 0x1B, 0x40, 0x46, 0x00, 0x28, 0x19, 0xDA
    .byte 0x07, 0x99, 0x0F, 0x98, 0xC1, 0x42, 0x04, 0xDA, 0x05, 0xA8, 0x89, 0xF0, 0x4D, 0xFF, 0x07, 0x98
    .byte 0x00, 0xE0, 0x08, 0x1C, 0x00, 0x28, 0x0D, 0xD1, 0x0F, 0x99, 0x07, 0x98, 0xC8, 0x42, 0x02, 0xDA
    .byte 0x05, 0xA8, 0x89, 0xF0, 0x41, 0xFF, 0x26, 0x21, 0x69, 0x44, 0x08, 0x78, 0x00, 0x28, 0x01, 0xD0
    .byte 0x31, 0x9A, 0xA4, 0x1A, 0x43, 0x46, 0x00, 0x2B, 0x19, 0xDD, 0x08, 0x99, 0x0F, 0x98, 0x81, 0x42
    .byte 0x04, 0xDD, 0x05, 0xA8, 0x89, 0xF0, 0x6E, 0xFF, 0x08, 0x98, 0x00, 0xE0, 0x08, 0x1C, 0x00, 0x28
    .byte 0x0D, 0xD1, 0x08, 0x99, 0x0F, 0x98, 0x81, 0x42, 0x02, 0xDD, 0x05, 0xA8, 0x89, 0xF0, 0x62, 0xFF
    .byte 0x27, 0x27, 0x6F, 0x44, 0x38, 0x78, 0x00, 0x28, 0x01, 0xD0, 0x31, 0x98, 0x24, 0x18, 0x33, 0x99
    .byte 0x8C, 0x42, 0x02, 0xD1, 0x34, 0x9A, 0x95, 0x42, 0x0B, 0xD0, 0x34, 0x87, 0x75, 0x87, 0x01, 0x20
    .byte 0x35, 0x9B, 0x18, 0x70, 0x30, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x30, 0x1C, 0x06, 0x21, 0x00, 0xF0
    .byte 0x8B, 0xFA, 0x2F, 0x9C, 0x20, 0x6A, 0x01, 0x28, 0x00, 0xD1, 0xA5, 0xE0, 0x01, 0x28, 0x02, 0xDC
    .byte 0x00, 0x28, 0x04, 0xD0, 0x88, 0xE1, 0x02, 0x28, 0x00, 0xD1, 0x17, 0xE1, 0x84, 0xE1, 0x2F, 0x9D
    .byte 0x24, 0x35, 0xA9, 0x46, 0x2F, 0x9F, 0xBC, 0x8C, 0x00, 0x2C, 0x44, 0xD0, 0xB5, 0x69, 0xF7, 0x69
    .byte 0x00, 0x20, 0x80, 0x46, 0x00, 0x2D, 0x0B, 0xDA, 0x07, 0x99, 0x0F, 0x98, 0xC1, 0x42, 0x03, 0xDA
    .byte 0x05, 0xA8, 0x89, 0xF0, 0xE9, 0xFE, 0x07, 0x99, 0x10, 0x20, 0x40, 0x42, 0x81, 0x42, 0x29, 0xDC
    .byte 0x00, 0x2D, 0x0B, 0xDD, 0x08, 0x99, 0x0F, 0x98, 0x81, 0x42, 0x04, 0xDD, 0x05, 0xA8, 0x89, 0xF0
    .byte 0x19, 0xFF, 0x08, 0x98, 0x00, 0xE0, 0x08, 0x1C, 0x0F, 0x28, 0x1B, 0xDD, 0x00, 0x2F, 0x0B, 0xDA
    .byte 0x06, 0x99, 0x0F, 0x98, 0xC1, 0x42, 0x03, 0xDA, 0x05, 0xA8, 0x89, 0xF0, 0x91, 0xFE, 0x06, 0x99
    .byte 0x10, 0x20, 0x40, 0x42, 0x81, 0x42, 0x0D, 0xDC, 0x00, 0x2F, 0x0D, 0xDD, 0x05, 0x99, 0x0F, 0x98
    .byte 0x81, 0x42, 0x04, 0xDD, 0x05, 0xA8, 0x89, 0xF0, 0x49, 0xFE, 0x05, 0x98, 0x00, 0xE0, 0x08, 0x1C
    .byte 0x0F, 0x28, 0x01, 0xDC, 0x01, 0x21, 0x88, 0x46, 0x42, 0x46, 0x00, 0x2A, 0x01, 0xD0, 0x00, 0x24
    .byte 0x4D, 0xE0, 0x01, 0x3C, 0x4B, 0xE0, 0x35, 0x9B, 0x18, 0x78, 0x00, 0x28, 0x47, 0xD1, 0x30, 0x1C
    .byte 0xFE, 0xF7, 0x9E, 0xFA, 0x00, 0x06, 0x00, 0x28, 0x41, 0xD0, 0x54, 0x46, 0x20, 0x68, 0xA2, 0x25
    .byte 0x6D, 0x00, 0x40, 0x19, 0x01, 0x68, 0x50, 0x46, 0xB1, 0xF0, 0x82, 0xFE, 0x80, 0x7A, 0xC0, 0x06
    .byte 0xC0, 0x0E, 0x00, 0x25, 0x06, 0x38, 0x0E, 0x28, 0x00, 0xD9, 0x01, 0x25, 0x2F, 0x98, 0x79, 0xF0
    .byte 0xF7, 0xFF, 0xEC, 0x00, 0x64, 0x1B, 0xE4, 0x00, 0xC1, 0x00, 0x09, 0x1A, 0x89, 0x00, 0x15, 0x48
    .byte 0x09, 0x18, 0x64, 0x18, 0x20, 0x1C, 0x07, 0x21, 0x89, 0xF0, 0xF8, 0xFD, 0x07, 0x1C, 0xB8, 0x00
    .byte 0x24, 0x18, 0x3C, 0x25, 0xA0, 0x78, 0x68, 0x43, 0x89, 0xF0, 0x9E, 0xFD, 0x61, 0x78, 0x69, 0x43
    .byte 0x0C, 0x18, 0x30, 0x1C, 0x20, 0x30, 0x05, 0x78, 0x04, 0x20, 0x89, 0xF0, 0x95, 0xFD, 0x01, 0x1C
    .byte 0x00, 0x29, 0x05, 0xD0, 0x03, 0x29, 0x03, 0xD0, 0x28, 0x1C, 0x89, 0xF0, 0x9B, 0xFD, 0x05, 0x1C
    .byte 0x48, 0x46, 0x87, 0x70, 0x30, 0x1C, 0x39, 0x1C, 0x2A, 0x1C, 0x00, 0xF0, 0xE5, 0xF9, 0x49, 0x46
    .byte 0x0C, 0x80, 0xE9, 0xE0, 0x3C, 0x09, 0x0F, 0x08, 0x2F, 0x9C, 0x24, 0x34, 0x2F, 0x9A, 0x95, 0x8C
    .byte 0x00, 0x2D, 0x00, 0xD0, 0x01, 0x3D, 0x62, 0x88, 0x00, 0x2A, 0x00, 0xD0, 0x01, 0x3A, 0x00, 0x2D
    .byte 0x51, 0xD0, 0x4B, 0x46, 0x00, 0x2B, 0x4E, 0xD0, 0x98, 0x88, 0x30, 0x9F, 0xB8, 0x42, 0x4A, 0xD1
    .byte 0x0A, 0x20, 0x33, 0x5E, 0x0E, 0x27, 0xF1, 0x5F, 0x48, 0x46, 0x0A, 0x27, 0xC0, 0x5F, 0x80, 0x46
    .byte 0x48, 0x46, 0x0E, 0x27, 0xC0, 0x5F, 0x81, 0x46, 0x47, 0x46, 0xF8, 0x1A, 0x00, 0x28, 0x00, 0xDA
    .byte 0x40, 0x42, 0x0F, 0x28, 0x06, 0xDC, 0x4F, 0x46, 0x78, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42
    .byte 0x0F, 0x28, 0x30, 0xDD, 0x35, 0x9F, 0x38, 0x78, 0x00, 0x28, 0x29, 0xD1, 0x00, 0x2A, 0x0F, 0xD0
    .byte 0x04, 0x27, 0xE0, 0x5F, 0xC0, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x1F, 0xDC
    .byte 0x06, 0x27, 0xE0, 0x5F, 0x40, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x17, 0xDC
    .byte 0x30, 0x1C, 0x20, 0x30, 0x00, 0x78, 0x05, 0xAA, 0x00, 0x92, 0x01, 0x90, 0x18, 0x1C, 0x42, 0x46
    .byte 0x4B, 0x46, 0x89, 0xF0, 0x8D, 0xFF, 0x02, 0x1C, 0x30, 0x1C, 0x02, 0x21, 0x00, 0xF0, 0x8C, 0xF9
    .byte 0x1E, 0x20, 0x89, 0xF0, 0x29, 0xFD, 0x42, 0x1C, 0x43, 0x46, 0xA3, 0x80, 0x4F, 0x46, 0xE7, 0x80
    .byte 0x25, 0x80, 0x62, 0x80, 0x88, 0xE0, 0x0B, 0x4A, 0x2B, 0xA9, 0x08, 0x68, 0x10, 0x40, 0xB4, 0x22
    .byte 0x10, 0x43, 0x09, 0x4A, 0x10, 0x40, 0x08, 0x60, 0x2F, 0x98, 0x79, 0xF0, 0x63, 0xFF, 0x30, 0x1C
    .byte 0x00, 0xF0, 0xB8, 0xF9, 0x01, 0x1C, 0x30, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x30, 0x1C, 0x00, 0xF0
    .byte 0x6B, 0xF9, 0x71, 0xE0, 0x00, 0x00, 0xFF, 0xFF, 0xFF, 0xFF, 0x00, 0xFF, 0x2F, 0x98, 0x24, 0x30
    .byte 0x81, 0x46, 0x33, 0x1C, 0x20, 0x33, 0x1C, 0x78, 0x0A, 0x22, 0xB1, 0x5E, 0x8C, 0x46, 0x0E, 0x27
    .byte 0xF5, 0x5F, 0x2C, 0xAA, 0x78, 0x20, 0xD0, 0x21, 0x10, 0x80, 0x51, 0x80, 0x2D, 0xA8, 0xBC, 0x21
    .byte 0x89, 0x00, 0x88, 0x46, 0x84, 0x21, 0x47, 0x46, 0x07, 0x80, 0x41, 0x80, 0x9A, 0x46, 0x01, 0x1C
    .byte 0x30, 0x98, 0x09, 0x28, 0x12, 0xD1, 0x00, 0x2C, 0x10, 0xD1, 0x02, 0x23, 0xD1, 0x5E, 0x28, 0x1C
    .byte 0x08, 0x38, 0x08, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x07, 0x28, 0x28, 0xDC, 0x30, 0x1C
    .byte 0x02, 0x21, 0x42, 0x46, 0x94, 0x23, 0xFE, 0xF7, 0x4F, 0xF8, 0x21, 0xE0, 0x30, 0x9F, 0x02, 0x2F
    .byte 0x1E, 0xD1, 0x01, 0x2C, 0x1C, 0xD1, 0x00, 0x23, 0xC8, 0x5E, 0x64, 0x46, 0x00, 0x1B, 0x00, 0x28
    .byte 0x00, 0xDA, 0x40, 0x42, 0x0F, 0x28, 0x13, 0xDC, 0x02, 0x27, 0xC9, 0x5F, 0x28, 0x1C, 0x08, 0x30
    .byte 0x08, 0x1A, 0x00, 0x28, 0x00, 0xDA, 0x40, 0x42, 0x07, 0x28, 0x09, 0xDC, 0x00, 0x20, 0x12, 0x5E
    .byte 0x2C, 0xA8, 0x02, 0x21, 0x43, 0x5E, 0x20, 0x3B, 0x30, 0x1C, 0x09, 0x21, 0xFE, 0xF7, 0x2C, 0xF8
    .byte 0x4A, 0x46, 0x10, 0x88, 0x00, 0x28, 0x02, 0xD0, 0x01, 0x38, 0x10, 0x80, 0x14, 0xE0, 0x13, 0x4A
    .byte 0x2E, 0xA9, 0x08, 0x68, 0x10, 0x40, 0xB4, 0x22, 0x10, 0x43, 0x11, 0x4A, 0x10, 0x40, 0x08, 0x60
    .byte 0x2F, 0x98, 0x79, 0xF0, 0xEF, 0xFE, 0x30, 0x1C, 0x00, 0xF0, 0x44, 0xF9, 0x01, 0x1C, 0x53, 0x46
    .byte 0x1A, 0x78, 0x30, 0x1C, 0x00, 0xF0, 0xF8, 0xF8, 0x35, 0x9C, 0x20, 0x78, 0x05, 0xA9, 0x00, 0x28
    .byte 0x00, 0xD0, 0x00, 0x21, 0x30, 0x1C, 0xFE, 0xF7, 0x83, 0xF9, 0x31, 0x1C, 0x30, 0x31, 0x00, 0x20
    .byte 0x08, 0x70, 0xB0, 0x8C, 0x00, 0x28, 0x05, 0xD0, 0x01, 0x38, 0x04, 0xE0, 0x00, 0x00, 0xFF, 0xFF
    .byte 0xFF, 0xFF, 0x00, 0xFF, 0xF0, 0x8C, 0xB0, 0x84, 0x33, 0x69, 0x00, 0x2B, 0x04, 0xD0, 0x58, 0x68
    .byte 0xC1, 0x68, 0x18, 0x1C, 0xB1, 0xF0, 0x3C, 0xFD, 0x36, 0xB0, 0x38, 0xBC, 0x98, 0x46, 0xA1, 0x46
    .byte 0xAA, 0x46, 0xF0, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x30, 0xB5, 0x04, 0x1C, 0x0D, 0x1C, 0x3E, 0x30
    .byte 0x00, 0x78, 0x00, 0x28, 0x0D, 0xD0, 0x20, 0x68, 0x01, 0x68, 0x0A, 0x6C, 0x00, 0x21, 0xB1, 0xF0
    .byte 0x29, 0xFD, 0x41, 0x69, 0xA0, 0x31, 0x09, 0x68, 0xB1, 0xF0, 0x22, 0xFD, 0x00, 0x06, 0x00, 0x28
    .byte 0x03, 0xD1, 0x20, 0x1C, 0x29, 0x1C, 0x10, 0xF0, 0xA9, 0xFA, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47

    thumb_func_start func_08021EE0
func_08021EE0: @ 0x08021EE0
    push {r4, r5, lr}
    sub sp, #4
    adds r4, r0, #0
    ldr r0, [r4, #0x34]
    bl GetGrowthStage__C5Horse
    adds r5, r0, #0
    cmp r5, #1
    bne .L08021F2A
    ldr r1, .L08021F34 @ =0xFFFF0000
    ldr r0, [sp]
    ands r0, r1
    movs r1, #0x78
    orrs r0, r1
    ldr r1, .L08021F38 @ =0xFF00FFFF
    ands r0, r1
    str r0, [sp]
    ldr r0, [r4, #0x34]
    mov r1, sp
    bl method_0809BC24__5HorsePC15UnkBarnAnimal2C
    adds r0, r4, #0
    bl func_080220D4
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r4, #0
    bl func_08022048
    adds r0, r4, #0
    adds r0, #0x3e
    strb r5, [r0]
    ldr r0, [r4, #0x34]
    bl SetHasPlayedToday__3Pet
.L08021F2A:
    add sp, #4
    pop {r4, r5}
    pop {r0}
    bx r0
    .align 2, 0
.L08021F34: .4byte 0xFFFF0000
.L08021F38: .4byte 0xFF00FFFF

    thumb_func_start func_08021F3C
func_08021F3C: @ 0x08021F3C
    push {r4, lr}
    sub sp, #4
    adds r4, r0, #0
    adds r1, r4, #0
    adds r1, #0x3e
    movs r0, #0
    strb r0, [r1]
    ldr r1, .L08021F80 @ =0xFFFF0000
    ldr r0, [sp]
    ands r0, r1
    movs r1, #0x78
    orrs r0, r1
    ldr r1, .L08021F84 @ =0xFF00FFFF
    ands r0, r1
    str r0, [sp]
    ldr r0, [r4, #0x34]
    mov r1, sp
    bl method_0809BC24__5HorsePC15UnkBarnAnimal2C
    adds r0, r4, #0
    bl func_080220D4
    adds r1, r0, #0
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r4, #0
    bl func_08022048
    add sp, #4
    pop {r4}
    pop {r0}
    bx r0
    .align 2, 0
.L08021F80: .4byte 0xFFFF0000
.L08021F84: .4byte 0xFF00FFFF

    thumb_func_start func_08021F88
func_08021F88: @ 0x08021F88
    push {r4, r5, lr}
    adds r4, r1, #0
    ldr r5, .L08021FA8 @ =gUnk_080F09AC
    ldr r0, [r0, #0x34]
    bl GetGrowthStage__C5Horse
    lsls r1, r0, #3
    subs r1, r1, r0
    adds r1, r1, r4
    lsls r1, r1, #1
    adds r1, r1, r5
    ldrh r0, [r1]
    pop {r4, r5}
    pop {r1}
    bx r1
    .align 2, 0
.L08021FA8: .4byte gUnk_080F09AC

    thumb_func_start func_08021FAC
func_08021FAC: @ 0x08021FAC
    push {r4, lr}
    sub sp, #0x10
    adds r4, r0, #0
    cmp r1, #6
    bhi .L08021FE0
    lsls r0, r1, #2
    ldr r1, .L08021FC0 @ =.L08021FC4
    adds r0, r0, r1
    ldr r0, [r0]
    mov pc, r0
    .align 2, 0
.L08021FC0: .4byte .L08021FC4
.L08021FC4: @ jump table
    .4byte .L08021FE0 @ case 0
    .4byte .L08021FE4 @ case 1
    .4byte .L08021FEA @ case 2
    .4byte .L08021FE0 @ case 3
    .4byte .L08021FE0 @ case 4
    .4byte .L08021FE0 @ case 5
    .4byte .L08021FF0 @ case 6
.L08021FE0:
    movs r0, #0
    b .L0802203E
.L08021FE4:
    movs r0, #0x80
    lsls r0, r0, #8
    b .L0802203E
.L08021FEA:
    movs r0, #0x80
    lsls r0, r0, #9
    b .L0802203E
.L08021FF0:
    ldr r1, [r4, #0x14]
    mov r0, sp
    ldr r2, [r1, #0xc]
    adds r1, r4, #0
    bl _call_via_r2
    ldr r0, [sp]
    ldr r1, [sp, #4]
    str r0, [sp, #8]
    str r1, [sp, #0xc]
    add r1, sp, #8
    movs r2, #0x10
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    adds r3, r1, #0
    cmp r0, #0
    blt .L08022036
    cmp r0, #1
    ble .L0802201E
    cmp r0, #3
    ble .L08022028
    b .L08022036
.L0802201E:
    movs r1, #6
    ldrsh r0, [r3, r1]
    movs r2, #2
    ldrsh r1, [r3, r2]
    b .L08022030
.L08022028:
    movs r2, #4
    ldrsh r0, [r1, r2]
    movs r2, #0
    ldrsh r1, [r1, r2]
.L08022030:
    subs r0, r0, r1
    adds r2, r0, #0
    adds r2, #0x10
.L08022036:
    lsls r0, r2, #0x10
    movs r1, #0xc
    bl __divsi3
.L0802203E:
    add sp, #0x10
    pop {r4}
    pop {r1}
    bx r1
    .align 2, 0

    thumb_func_start func_08022048
func_08022048: @ 0x08022048
    push {r4, r5, r6, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    adds r6, r2, #0
    cmp r5, #6
    beq .L0802205E
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    beq .L0802205E
    movs r5, #6
.L0802205E:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08021F88
    adds r1, r0, #0
    ldrh r0, [r4, #0x22]
    cmp r0, r1
    beq .L08022074
    adds r0, r4, #0
    bl SetAnim__12AActorEntityUi
.L08022074:
    adds r0, r4, #0
    adds r0, #0x20
    ldrb r0, [r0]
    cmp r0, r6
    beq .L08022086
    adds r0, r4, #0
    adds r1, r6, #0
    bl SetAnimFacing__12AActorEntityUi
.L08022086:
    adds r0, r4, #0
    adds r1, r5, #0
    bl func_08021FAC
    adds r1, r0, #0
    adds r0, r4, #0
    bl func_08020080
    adds r0, r4, #0
    adds r0, #0x3c
    adds r6, r0, #0
    ldrb r0, [r6]
    cmp r5, r0
    beq .L080220CA
    adds r0, r4, #0
    adds r0, #0x3e
    ldrb r0, [r0]
    cmp r0, #0
    bne .L080220CA
    movs r1, #1
    rsbs r1, r1, #0
    cmp r5, #4
    bne .L080220B6
    movs r1, #8
.L080220B6:
    cmp r1, #0
    blt .L080220C4
    adds r0, r4, #0
    movs r2, #1
    bl func_08032384
    b .L080220CA
.L080220C4:
    adds r0, r4, #0
    bl func_080323C8
.L080220CA:
    strb r5, [r6]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .align 2, 0

    thumb_func_start func_080220D4
func_080220D4: @ 0x080220D4
    push {lr}
    ldr r0, [r0, #0x34]
    ldr r1, [r0, #0x20]
    cmp r1, #1
    beq .L080220F6
    cmp r1, #1
    bgt .L080220E8
    cmp r1, #0
    beq .L080220F0
    b .L080220EC
.L080220E8:
    cmp r1, #2
    beq .L080220FA
.L080220EC:
    movs r0, #0
    b .L080220FC
.L080220F0:
    adds r0, #0x26
    ldrb r0, [r0]
    b .L080220FC
.L080220F6:
    movs r0, #2
    b .L080220FC
.L080220FA:
    movs r0, #1
.L080220FC:
    pop {r1}
    bx r1
.L08022100:
    .byte 0x10, 0xB5, 0x81, 0xB0, 0x04, 0x1C, 0x62, 0x6B, 0x10, 0x6A, 0x02, 0x28, 0x1A, 0xD1, 0x0F, 0x49
    .byte 0x00, 0x98, 0x08, 0x40, 0xB4, 0x21, 0x08, 0x43, 0x0D, 0x49, 0x08, 0x40, 0x00, 0x90, 0x10, 0x1C
    .byte 0x69, 0x46, 0x79, 0xF0, 0x7F, 0xFD, 0x20, 0x1C, 0x3D, 0x30, 0x00, 0x78, 0x00, 0x28, 0x09, 0xD1
    .byte 0x20, 0x1C, 0xFF, 0xF7, 0xCF, 0xFF, 0x01, 0x1C, 0x20, 0x1C, 0x20, 0x30, 0x02, 0x78, 0x20, 0x1C
    .byte 0xFF, 0xF7, 0x82, 0xFF, 0x01, 0xB0, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFF, 0xFF
    .byte 0xFF, 0xFF, 0x00, 0xFF, 0x00, 0xB5, 0x40, 0x6B, 0x79, 0xF0, 0x6A, 0xF8, 0x01, 0x21, 0x48, 0x40
    .byte 0x02, 0xBC, 0x08, 0x47, 0x10, 0xB5, 0x04, 0x1C, 0x60, 0x6B, 0x79, 0xF0, 0x61, 0xF8, 0x00, 0x06
    .byte 0x00, 0x28, 0x06, 0xD1, 0x60, 0x6B, 0x01, 0x21, 0x79, 0xF0, 0x96, 0xF8, 0x60, 0x6B, 0x79, 0xF0
    .byte 0x7B, 0xF8, 0x20, 0x1C, 0x01, 0x21, 0x00, 0x22, 0x10, 0xF0, 0xFC, 0xF8, 0x20, 0x1C, 0xA7, 0x21
    .byte 0xFD, 0xF7, 0x98, 0xFF, 0x10, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0x30, 0xB5, 0x81, 0xB0
    .byte 0x04, 0x1C, 0x3B, 0x2A, 0x1E, 0xD9, 0x25, 0x1C, 0x20, 0x35, 0x28, 0x78, 0x88, 0x42, 0x02, 0xD0
    .byte 0x20, 0x1C, 0x0F, 0xF0, 0xF1, 0xFF, 0x0D, 0x49, 0x00, 0x98, 0x08, 0x40, 0x3C, 0x21, 0x08, 0x43
    .byte 0x00, 0x90, 0x60, 0x6B, 0x69, 0x46, 0x79, 0xF0, 0x3B, 0xFD, 0x20, 0x1C, 0x3D, 0x30, 0x00, 0x78
    .byte 0x00, 0x28, 0x07, 0xD1, 0x20, 0x1C, 0xFF, 0xF7, 0x7D, 0xFF, 0x01, 0x1C, 0x2A, 0x78, 0x20, 0x1C
    .byte 0xFF, 0xF7, 0x32, 0xFF, 0x01, 0xB0, 0x30, 0xBC, 0x01, 0xBC, 0x00, 0x47, 0x00, 0x00, 0xFF, 0xFF

    thumb_func_start func_080221F0
func_080221F0: @ 0x080221F0
    push {r4, r5, r6, r7, lr}
    sub sp, #8
    adds r6, r0, #0
    adds r7, r1, #0
    ldrh r0, [r7]
    lsls r0, r0, #0x16
    lsrs r0, r0, #0x16
    ldrh r1, [r6, #4]
    cmp r0, r1
    bne .L0802229A
    ldr r0, [r6, #0x34]
    bl GetAffection__C6Animal
    bl func_08020018
    movs r1, #0xa
    ldrsh r3, [r6, r1]
    ldrb r1, [r7, #1]
    lsrs r1, r1, #2
    ldrh r2, [r7, #2]
    ldr r4, .L080222A4 @ =0x000003FF
    ands r2, r4
    lsls r2, r2, #6
    orrs r2, r1
    lsls r2, r2, #0x10
    asrs r2, r2, #0x10
    subs r2, r2, r3
    movs r3, #0xe
    ldrsh r5, [r6, r3]
    ldrb r3, [r7, #3]
    lsrs r3, r3, #2
    ldrh r1, [r7, #4]
    ands r1, r4
    lsls r1, r1, #6
    orrs r1, r3
    lsls r1, r1, #0x10
    asrs r1, r1, #0x10
    subs r1, r1, r5
    adds r3, r2, #0
    muls r3, r2, r3
    adds r2, r3, #0
    adds r3, r1, #0
    muls r3, r1, r3
    adds r1, r3, #0
    adds r2, r2, r1
    adds r1, r0, #0
    muls r1, r0, r1
    adds r0, r1, #0
    cmp r2, r0
    bgt .L0802229A
    ldr r0, [r6, #0x34]
    bl GetAffection__C6Animal
    lsls r1, r0, #4
    subs r1, r1, r0
    lsls r1, r1, #6
    lsrs r1, r1, #8
    movs r3, #0xf0
    lsls r3, r3, #1
    adds r1, r1, r3
    lsls r1, r1, #0x10
    lsrs r1, r1, #0x10
    str r1, [sp]
    ldr r0, [r6, #0x34]
    mov r1, sp
    bl method_0809BC30__5HorsePC18UnkBarnAnimal2C_x2
    adds r0, r6, #0
    adds r0, #0x3d
    ldrb r0, [r0]
    cmp r0, #0
    bne .L08022294
    adds r0, r6, #0
    bl func_080220D4
    adds r1, r0, #0
    adds r0, r6, #0
    adds r0, #0x20
    ldrb r2, [r0]
    adds r0, r6, #0
    bl func_08022048
.L08022294:
    ldr r0, [r6, #0x34]
    bl SetHasTalkedToday__3Pet
.L0802229A:
    add sp, #8
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .align 2, 0
.L080222A4: .4byte 0x000003FF
