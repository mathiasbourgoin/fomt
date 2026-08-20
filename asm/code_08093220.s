.INCLUDE "asm/macro.inc"
.SYNTAX UNIFIED

	thumb_func_start func_08093220
func_08093220: @ 0x08093220
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl func_08092D64
	ldr r1, [r4, #8]
	movs r0, #0
	str r0, [r4, #8]
	str r1, [r5]
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start func_0809323C
func_0809323C: @ 0x0809323C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r5, r1, #0
	bl func_08008444
	adds r4, r7, #0
	adds r4, #8
	adds r0, r4, #0
	bl func_0809424C
	ldr r0, .L080932FC @ =vtable_unk_080E7F0C
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0x38
	bl func_080D02CC
	adds r0, r4, #0
	movs r1, #0
	bl func_080E3A9C
	ldr r0, .L08093300 @ =vtable_unk_080E7DF4
	str r0, [r7, #8]
	ldr r0, .L08093304 @ =vtable_unk_080E7F00
	str r0, [r7, #4]
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r6, #1
	str r6, [r0]
	movs r0, #0x4c
	bl __builtin_new
	adds r1, r5, #0
	bl func_080947BC
	movs r2, #0xe4
	lsls r2, r2, #1
	adds r1, r7, r2
	str r0, [r1]
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r7, r1
	str r5, [r0]
	add r0, sp, #0xc
	bl func_0800835C
	add r4, sp, #0x10
	adds r0, r4, #0
	bl func_0800770C
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r5, #0
	str r5, [sp]
	add r1, sp, #0xc
	str r1, [sp, #4]
	str r4, [sp, #8]
	movs r1, #0
	movs r2, #0x1d
	movs r3, #0
	bl func_08050CC0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007714
	add r0, sp, #0xc
	movs r1, #2
	bl func_08008364
	movs r2, #0xea
	lsls r2, r2, #1
	adds r0, r7, r2
	movs r1, #1
	bl func_08008B54
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r7, r1
	strb r5, [r0]
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r7, r2
	str r5, [r0]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r6, [r0]
	adds r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
.L080932FC: .4byte vtable_unk_080E7F0C
.L08093300: .4byte vtable_unk_080E7DF4
.L08093304: .4byte vtable_unk_080E7F00

	thumb_func_start func_08093308
func_08093308: @ 0x08093308
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, .L08093358 @ =vtable_unk_080E7DF4
	str r0, [r5, #8]
	ldr r0, .L0809335C @ =vtable_unk_080E7F00
	str r0, [r5, #4]
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r0, r5, r1
	movs r1, #2
	bl func_08050D0C
	movs r1, #0xe4
	lsls r1, r1, #1
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L08093334
	movs r1, #3
	bl func_08094814
.L08093334:
	adds r4, r5, #0
	adds r4, #8
	ldr r0, .L08093360 @ =vtable_unk_080E7F0C
	str r0, [r5, #8]
	bl func_080D02EC
	adds r0, r4, #0
	movs r1, #0
	bl func_08094268
	adds r0, r5, #0
	adds r1, r6, #0
	bl func_080086BC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
.L08093358: .4byte vtable_unk_080E7DF4
.L0809335C: .4byte vtable_unk_080E7F00
.L08093360: .4byte vtable_unk_080E7F0C

	thumb_func_start func_08093364
func_08093364: @ 0x08093364
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	adds r7, r0, #0
	bl func_08008724
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0x10
	movs r3, #0xea
	lsls r3, r3, #5
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #8]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0x10
	ldr r3, .L0809355C @ =0x00001E41
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xa]
	adds r0, r7, #0
	bl func_08008918
	add r2, sp, #0x10
	ldr r3, .L08093560 @ =0x00001F42
	adds r1, r3, #0
	strh r1, [r2]
	strh r1, [r0, #0xc]
	movs r4, #1
	rsbs r4, r4, #0
	ldr r0, .L08093564 @ =0x0600F000
	mov r8, r0
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r4, #0
	mov r1, r8
	adds r2, r5, #0
	bl func_08008EB8
	ldr r6, .L08093568 @ =0x0600F800
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r1, .L0809356C @ =0x06007FE0
	movs r2, #0x80
	lsls r2, r2, #8
	movs r0, #0
	bl func_08008EB8
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0x10
	movs r3, #0xb2
	lsls r3, r3, #5
	adds r2, r3, #0
	strh r2, [r1]
	movs r1, #0
	mov sb, r1
	strh r2, [r0]
	ldr r0, .L08093570 @ =gUnk_080F9F70
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, .L08093574 @ =gUnk_080F9F74
	ldr r2, [r2]
	bl func_08008E64
	ldr r0, .L08093578 @ =0x00030003
	adds r1, r6, #0
	adds r2, r5, #0
	bl func_08008EB8
	ldr r0, .L0809357C @ =gUnk_080F9F78
	ldr r0, [r0]
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x20
	bl func_08008E64
	ldr r0, .L08093580 @ =0x03FF03FF
	mov r1, r8
	adds r2, r5, #0
	bl func_08008EB8
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08050D5C
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	ldr r1, .L08093584 @ =0x00001CD4
	adds r0, r0, r1
	movs r1, #0x1f
	bl func_0809FE3C
	adds r1, r0, #0
	adds r0, r4, #0
	bl func_08050E68
	ldr r1, .L08093588 @ =func_080D0704
	movs r0, #7
	bl func_080D100C
	movs r0, #0x80
	bl func_0800050C
	movs r0, #0
	movs r1, #0x80
	bl func_08000540
	adds r0, r7, #0
	bl func_08008918
	add r1, sp, #0x10
	movs r2, #0x3f
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r0, #0x10
	bl __builtin_new
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r1, r0, #0
	mov r2, sb
	str r2, [r4]
	str r2, [r4, #4]
	ldr r0, .L0809358C @ =vtable_unk_080E5B80
	str r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl func_08009300
	str r4, [sp, #0x14]
	ldr r1, .L08093590 @ =0x00000889
	adds r0, r5, #0
	movs r2, #1
	movs r3, #1
	bl func_0800934C
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r3, #0
	str r3, [sp, #0x50]
.L080934B8:
	adds r0, r7, #0
	bl func_080087C8
	adds r0, r7, #0
	bl func_080088B8
	ldr r0, [r7, #8]
	movs r1, #8
	adds r1, r1, r7
	mov sl, r1
	ldr r1, [r0, #0xc]
	mov r0, sl
	bl _call_via_r1
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	mov r0, r8
	bl func_08050D34
	movs r3, #0xec
	lsls r3, r3, #1
	adds r1, r7, r3
	str r0, [r1]
	adds r0, r7, #0
	bl func_080088DC
	mov sb, r0
	adds r0, r7, #0
	bl func_08008920
	adds r6, r0, #0
	adds r0, r7, #0
	bl func_08008918
	adds r5, r0, #0
	adds r0, r7, #0
	bl func_08008940
	adds r4, r0, #0
	adds r0, r7, #0
	bl func_0800894C
	movs r2, #0xea
	lsls r2, r2, #1
	adds r1, r7, r2
	str r4, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, r8
	mov r1, sb
	adds r2, r6, #0
	adds r3, r5, #0
	bl func_08050D3C
	movs r3, #0xee
	lsls r3, r3, #1
	adds r1, r7, r3
	str r0, [r1]
	movs r0, #0xfb
	lsls r0, r0, #2
	adds r1, r7, r0
	ldrb r0, [r1]
	mov r2, sl
	str r2, [sp, #0x58]
	cmp r0, #0
	beq .L08093626
	movs r0, #0
	strb r0, [r1]
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #8
	bhi .L08093626
	lsls r0, r0, #2
	ldr r1, .L08093594 @ =.L08093598
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L0809355C: .4byte 0x00001E41
.L08093560: .4byte 0x00001F42
.L08093564: .4byte 0x0600F000
.L08093568: .4byte 0x0600F800
.L0809356C: .4byte 0x06007FE0
.L08093570: .4byte gUnk_080F9F70
.L08093574: .4byte gUnk_080F9F74
.L08093578: .4byte 0x00030003
.L0809357C: .4byte gUnk_080F9F78
.L08093580: .4byte 0x03FF03FF
.L08093584: .4byte 0x00001CD4
.L08093588: .4byte func_080D0704
.L0809358C: .4byte vtable_unk_080E5B80
.L08093590: .4byte 0x00000889
.L08093594: .4byte .L08093598
.L08093598: @ jump table
	.4byte .L08093626 @ case 0
	.4byte .L08093626 @ case 1
	.4byte .L08093626 @ case 2
	.4byte .L08093626 @ case 3
	.4byte .L08093626 @ case 4
	.4byte .L08093626 @ case 5
	.4byte .L080935BC @ case 6
	.4byte .L08093626 @ case 7
	.4byte .L08093626 @ case 8
.L080935BC:
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x18]
	ldr r0, [sp, #0x58]
	bl _call_via_r1
	cmp r0, #1
	beq .L080935D8
	cmp r0, #1
	ble .L08093626
	cmp r0, #2
	beq .L080935F4
	cmp r0, #3
	beq .L08093610
	b .L08093626
.L080935D8:
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r1, .L080935F0 @ =gUnk_08100610
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
	b .L08093626
	.align 2, 0
.L080935F0: .4byte gUnk_08100610
.L080935F4:
	movs r1, #0xe8
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r1, .L0809360C @ =gUnk_08100638
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x3a
	bl func_08050E50
	b .L08093626
	.align 2, 0
.L0809360C: .4byte gUnk_08100638
.L08093610:
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r1, .L08093640 @ =gUnk_08100678
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x3a
	bl func_08050E50
.L08093626:
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #8
	bls .L08093634
	b .L08093A14
.L08093634:
	lsls r0, r0, #2
	ldr r1, .L08093644 @ =.L08093648
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
.L08093640: .4byte gUnk_08100678
.L08093644: .4byte .L08093648
.L08093648: @ jump table
	.4byte .L0809366C @ case 0
	.4byte .L08093698 @ case 1
	.4byte .L080936B8 @ case 2
	.4byte .L080936F8 @ case 3
	.4byte .L08093758 @ case 4
	.4byte .L080937CA @ case 5
	.4byte .L08093940 @ case 6
	.4byte .L080939CC @ case 7
	.4byte .L08093A14 @ case 8
.L0809366C:
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r1, .L08093694 @ =gUnk_081006C4
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
	movs r1, #1
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	movs r3, #0xfb
	lsls r3, r3, #2
	adds r0, r7, r3
	b .L08093A12
	.align 2, 0
.L08093694: .4byte gUnk_081006C4
.L08093698:
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L080936A6
	b .L08093A14
.L080936A6:
	movs r1, #2
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	movs r3, #0xfb
	lsls r3, r3, #2
	adds r1, r7, r3
	b .L080937C4
.L080936B8:
	movs r0, #0xe8
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r1, .L080936EC @ =gUnk_0810073C
	ldr r2, .L080936F0 @ =gUnk_0810058C
	ldr r3, .L080936F4 @ =gUnk_08100590
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	bl func_08050E30
	adds r0, r4, #0
	movs r1, #0x39
	bl func_08050E50
	movs r1, #3
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	movs r3, #0xfb
	lsls r3, r3, #2
	adds r1, r7, r3
	b .L080937C4
	.align 2, 0
.L080936EC: .4byte gUnk_0810073C
.L080936F0: .4byte gUnk_0810058C
.L080936F4: .4byte gUnk_08100590
.L080936F8:
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r7, r1
	ldr r0, [r0]
	cmp r0, #3
	beq .L08093706
	b .L08093A14
.L08093706:
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08050DF0
	adds r2, r0, #0
	cmp r2, #1
	beq .L0809371E
	cmp r2, #2
	beq .L08093732
	b .L08093A14
.L0809371E:
	movs r0, #4
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r1, r7, r3
	str r0, [r1]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r2, [r0]
	b .L08093A14
.L08093732:
	ldr r1, .L08093754 @ =gUnk_08100758
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x3a
	bl func_08050E50
	movs r1, #7
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	movs r3, #0xfb
	lsls r3, r3, #2
	adds r0, r7, r3
	b .L080939B8
	.align 2, 0
.L08093754: .4byte gUnk_08100758
.L08093758:
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r4, r7, r3
	ldr r0, [r4]
	bl func_08094844
	ldr r0, [r4]
	bl func_080948E0
	str r0, [sp, #0x54]
	ldr r0, [r4]
	bl func_080948EC
	mov sl, r0
	ldr r0, [r4]
	bl func_080948FC
	mov sb, r0
	ldr r0, [r4]
	bl func_08094900
	mov r8, r0
	ldr r0, [r4]
	bl func_08094904
	adds r6, r0, #0
	ldr r0, [r4]
	bl func_08094908
	adds r5, r0, #0
	ldr r0, [r4]
	bl func_0809490C
	ldr r1, [r7, #8]
	mov r2, r8
	str r2, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	ldr r4, [r1, #8]
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x54]
	mov r2, sl
	mov r3, sb
	bl _call_via_r4
	movs r1, #5
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r0, r7, r3
	str r1, [r0]
	movs r0, #0xfb
	lsls r0, r0, #2
	adds r1, r7, r0
.L080937C4:
	movs r0, #1
	strb r0, [r1]
	b .L08093A14
.L080937CA:
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r7, r1
	movs r6, #1
	strb r6, [r0]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #0x58]
	bl _call_via_r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bne .L080937E6
	b .L08093A14
.L080937E6:
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x18]
	ldr r0, [sp, #0x58]
	bl _call_via_r1
	adds r5, r0, #0
	cmp r5, #0
	beq .L080937F8
	b .L0809392C
.L080937F8:
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r4, r7, r2
	ldr r1, .L08093918 @ =gUnk_08100790
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x39
	bl func_08050E50
	movs r1, #7
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r0, r7, r3
	str r1, [r0]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r6, [r0]
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r0, r7, r2
	str r5, [r0]
	movs r3, #0xe4
	lsls r3, r3, #1
	adds r5, r7, r3
	ldr r0, [r5]
	bl func_08094910
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r4, r7, r1
	ldr r1, [r4]
	ldr r2, .L0809391C @ =0x000021CC
	adds r1, r1, r2
	str r0, [r1, #4]
	ldr r0, [r5]
	bl func_0809496C
	adds r1, r0, #0
	ldr r0, [r4]
	ldr r3, .L08093920 @ =0x000021D4
	adds r0, r0, r3
	adds r5, r1, #0
	adds r5, #8
	cmp r5, r1
	beq .L08093862
	subs r4, r5, r1
	adds r2, r4, #0
	bl memmove
	adds r0, r0, r4
.L08093862:
	add r1, sp, #0x18
	str r5, [sp, #0x18]
	str r0, [sp, #0x1c]
	adds r0, r1, #0
	movs r2, #8
	bl memcpy
	movs r0, #0xe4
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
	ldr r0, [r0]
	add r5, sp, #0x20
	adds r1, r5, #0
	bl func_08094940
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r1, r1, r7
	mov r8, r1
	ldr r0, [r1]
	ldr r2, .L08093924 @ =0x000021E0
	adds r6, r0, r2
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xe
	bls .L0809389E
	movs r4, #0xe
.L0809389E:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	movs r3, #0
	mov sl, r3
	strb r3, [r0]
	mov r1, sb
	ldr r0, [r1]
	add r5, sp, #0x30
	adds r1, r5, #0
	bl func_0809494C
	mov r2, r8
	ldr r0, [r2]
	ldr r3, .L08093928 @ =0x000021F0
	adds r6, r0, r3
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xe
	bls .L080938D2
	movs r4, #0xe
.L080938D2:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r1, sl
	strb r1, [r0]
	mov r2, sb
	ldr r0, [r2]
	add r5, sp, #0x40
	adds r1, r5, #0
	bl func_0809495C
	mov r3, r8
	ldr r0, [r3]
	movs r1, #0x88
	lsls r1, r1, #6
	adds r6, r0, r1
	adds r0, r5, #0
	bl strlen
	adds r4, r0, #0
	cmp r4, #0xe
	bls .L08093906
	movs r4, #0xe
.L08093906:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl memcpy
	adds r0, r6, r4
	mov r2, sl
	strb r2, [r0]
	b .L08093A14
	.align 2, 0
.L08093918: .4byte gUnk_08100790
.L0809391C: .4byte 0x000021CC
.L08093920: .4byte 0x000021D4
.L08093924: .4byte 0x000021E0
.L08093928: .4byte 0x000021F0
.L0809392C:
	movs r0, #6
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r1, r7, r3
	str r0, [r1]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r7, r1
	strb r6, [r0]
	b .L08093A14
.L08093940:
	movs r2, #0xe8
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r0, r4, #0
	bl func_08050D34
	cmp r0, #3
	bne .L08093A14
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x18]
	ldr r0, [sp, #0x58]
	bl _call_via_r1
	cmp r0, #2
	beq .L08093998
	cmp r0, #3
	bne .L080939A8
	ldr r1, .L08093994 @ =gUnk_08100610
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
	movs r1, #7
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r0, r7, r3
	str r1, [r0]
	movs r0, #0xfb
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r0, #1
	strb r0, [r1]
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #2
	str r0, [r1]
	b .L08093A14
	.align 2, 0
.L08093994: .4byte gUnk_08100610
.L08093998:
	ldr r1, .L080939C8 @ =gUnk_08100610
	adds r0, r4, #0
	bl func_08050D8C
	adds r0, r4, #0
	movs r1, #0x38
	bl func_08050E50
.L080939A8:
	movs r1, #7
	movs r3, #0xfa
	lsls r3, r3, #2
	adds r0, r7, r3
	str r1, [r0]
	movs r1, #0xfb
	lsls r1, r1, #2
	adds r0, r7, r1
.L080939B8:
	movs r1, #1
	strb r1, [r0]
	movs r2, #0xe2
	lsls r2, r2, #1
	adds r0, r7, r2
	str r1, [r0]
	b .L08093A14
	.align 2, 0
.L080939C8: .4byte gUnk_08100610
.L080939CC:
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, #3
	bne .L08093A14
	bl func_080D02EC
	movs r0, #1
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x14]
	ldr r1, .L08093A54 @ =0x00000889
	adds r0, #0xc
	movs r2, #1
	movs r3, #1
	bl func_08009378
	adds r0, r7, #0
	bl func_08008940
	ldr r2, [r0, #8]
	ldr r1, [sp, #0x14]
	ldr r2, [r2, #0x10]
	bl _call_via_r2
	movs r1, #8
	movs r2, #0xfa
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	movs r3, #0xfb
	lsls r3, r3, #2
	adds r0, r7, r3
	add r1, sp, #0x50
	ldrb r1, [r1]
.L08093A12:
	strb r1, [r0]
.L08093A14:
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #0x58]
	bl _call_via_r1
	ldr r3, [sp, #0x14]
	ldr r1, [r3]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	ldr r2, [sp, #0x50]
	cmp r2, #0
	bne .L08093A30
	b .L080934B8
.L08093A30:
	cmp r0, #0
	beq .L08093A36
	b .L080934B8
.L08093A36:
	ldr r0, [r3, #8]
	ldr r2, [r0, #0xc]
	adds r0, r3, #0
	movs r1, #3
	bl _call_via_r2
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L08093A54: .4byte 0x00000889
