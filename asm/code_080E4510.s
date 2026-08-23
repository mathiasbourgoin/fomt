    .INCLUDE "asm/macro.inc"
    .SYNTAX UNIFIED

	thumb_func_start func_080E4564
func_080E4564: @ 0x080E4564
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, .L080E4818 @ =0x00000888
	adds r0, r5, r1
	movs r1, #2
	bl func_080E4860
	ldr r1, .L080E481C @ =0x0000082C
	adds r0, r5, r1
	movs r1, #2
	bl func_080098AC
	movs r1, #0x82
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r1, #2
	bl func_080098AC
	movs r1, #0xfd
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4820 @ =0x000007E4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4824 @ =0x000007BC
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xe1
	lsls r1, r1, #3
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E45DA
	adds r1, #0x14
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E45DA
	movs r0, #0xe1
	lsls r0, r0, #3
	adds r6, r5, r0
.L080E45CE:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E45CE
.L080E45DA:
	ldr r1, .L080E4828 @ =0x000006F4
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E45FA
	adds r1, #0x14
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E45FA
	ldr r0, .L080E4828 @ =0x000006F4
	adds r6, r5, r0
.L080E45EE:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E45EE
.L080E45FA:
	movs r1, #0xdc
	lsls r1, r1, #3
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E461E
	adds r1, #0x14
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E461E
	movs r0, #0xdc
	lsls r0, r0, #3
	adds r6, r5, r0
.L080E4612:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E4612
.L080E461E:
	ldr r1, .L080E482C @ =0x0000062C
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E463E
	adds r1, #0x14
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E463E
	ldr r0, .L080E482C @ =0x0000062C
	adds r6, r5, r0
.L080E4632:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E4632
.L080E463E:
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4662
	adds r1, #0x14
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E4662
	movs r0, #0xc3
	lsls r0, r0, #3
	adds r6, r5, r0
.L080E4656:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E4656
.L080E4662:
	ldr r1, .L080E4830 @ =0x00000564
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4682
	adds r1, #0x14
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E4682
	ldr r0, .L080E4830 @ =0x00000564
	adds r6, r5, r0
.L080E4676:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E4676
.L080E4682:
	movs r1, #0xaa
	lsls r1, r1, #3
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E46A6
	adds r1, #0x14
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E46A6
	movs r0, #0xaa
	lsls r0, r0, #3
	adds r6, r5, r0
.L080E469A:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E469A
.L080E46A6:
	ldr r1, .L080E4834 @ =0x0000052C
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xa5
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4838 @ =0x00000504
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E483C @ =0x000004DC
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4840 @ =0x000004B4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0x96
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4844 @ =0x0000048C
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4848 @ =0x00000464
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0x8c
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E484C @ =0x0000043C
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4740
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4740:
	movs r1, #0x87
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4758
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4758:
	ldr r1, .L080E4850 @ =0x00000434
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E476E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E476E:
	movs r1, #0x86
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4786
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4786:
	ldr r1, .L080E4854 @ =0x0000042C
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E479C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E479C:
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E47B4
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E47B4:
	ldr r1, .L080E4858 @ =0x00000424
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E47CA
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E47CA:
	movs r1, #0x84
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E47E2
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E47E2:
	ldr r1, .L080E485C @ =0x0000041C
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E47F8
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E47F8:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080E480A
	movs r1, #3
	bl func_08050D0C
.L080E480A:
	adds r0, r5, #0
	adds r1, r7, #0
	bl func_080086BC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080E4818: .4byte 0x00000888
.L080E481C: .4byte 0x0000082C
.L080E4820: .4byte 0x000007E4
.L080E4824: .4byte 0x000007BC
.L080E4828: .4byte 0x000006F4
.L080E482C: .4byte 0x0000062C
.L080E4830: .4byte 0x00000564
.L080E4834: .4byte 0x0000052C
.L080E4838: .4byte 0x00000504
.L080E483C: .4byte 0x000004DC
.L080E4840: .4byte 0x000004B4
.L080E4844: .4byte 0x0000048C
.L080E4848: .4byte 0x00000464
.L080E484C: .4byte 0x0000043C
.L080E4850: .4byte 0x00000434
.L080E4854: .4byte 0x0000042C
.L080E4858: .4byte 0x00000424
.L080E485C: .4byte 0x0000041C

	thumb_func_start func_080E4860
func_080E4860: @ 0x080E4860
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r6, #0
	adds r4, #0x50
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007C28
	adds r0, r6, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq .L080E493A
	adds r0, r6, #0
	bl __builtin_delete
.L080E493A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start func_080E4940
func_080E4940: @ 0x080E4940
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, .L080E4C70 @ =0x00000AEC
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4966
	adds r1, #0x28
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E4966
	ldr r0, .L080E4C70 @ =0x00000AEC
	adds r6, r5, r0
.L080E495A:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E495A
.L080E4966:
	ldr r1, .L080E4C74 @ =0x00000AC8
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4C78 @ =0x00000AA4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xa8
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4C7C @ =0x00000A7C
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4C80 @ =0x00000A34
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E49B0
	adds r1, #8
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E49B0
	ldr r0, .L080E4C80 @ =0x00000A34
	adds r6, r5, r0
.L080E49A4:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E49A4
.L080E49B0:
	movs r1, #0xa3
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4C84 @ =0x000009E8
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E49DC
	adds r1, #8
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E49DC
	ldr r0, .L080E4C84 @ =0x000009E8
	adds r6, r5, r0
.L080E49D0:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E49D0
.L080E49DC:
	ldr r1, .L080E4C88 @ =0x000009E4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0x9c
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4C8C @ =0x000009BC
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4C90 @ =0x00000998
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4C94 @ =0x00000994
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0x97
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4C98 @ =0x0000096C
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4C9C @ =0x00000924
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4A46
	adds r1, #8
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E4A46
	ldr r0, .L080E4C9C @ =0x00000924
	adds r6, r5, r0
.L080E4A3A:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E4A3A
.L080E4A46:
	ldr r1, .L080E4CA0 @ =0x0000091C
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4A66
	adds r1, #8
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E4A66
	ldr r0, .L080E4CA0 @ =0x0000091C
	adds r6, r5, r0
.L080E4A5A:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E4A5A
.L080E4A66:
	ldr r1, .L080E4CA4 @ =0x000008F8
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4CA8 @ =0x000008F4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0x8d
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4CAC @ =0x000008CC
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4CB0 @ =0x00000884
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4AB0
	adds r1, #8
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E4AB0
	ldr r0, .L080E4CB0 @ =0x00000884
	adds r6, r5, r0
.L080E4AA4:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E4AA4
.L080E4AB0:
	ldr r1, .L080E4CB4 @ =0x0000087C
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4AD0
	adds r1, #8
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E4AD0
	ldr r0, .L080E4CB4 @ =0x0000087C
	adds r6, r5, r0
.L080E4AC4:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E4AC4
.L080E4AD0:
	movs r1, #0xf9
	lsls r1, r1, #3
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4AF4
	adds r1, #0x14
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E4AF4
	movs r0, #0xf9
	lsls r0, r0, #3
	adds r6, r5, r0
.L080E4AE8:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E4AE8
.L080E4AF4:
	ldr r1, .L080E4CB8 @ =0x000007B4
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4B14
	adds r1, #0x14
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E4B14
	ldr r0, .L080E4CB8 @ =0x000007B4
	adds r6, r5, r0
.L080E4B08:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E4B08
.L080E4B14:
	ldr r1, .L080E4CBC @ =0x000007AC
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4B34
	adds r1, #8
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E4B34
	ldr r0, .L080E4CBC @ =0x000007AC
	adds r6, r5, r0
.L080E4B28:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E4B28
.L080E4B34:
	ldr r1, .L080E4CC0 @ =0x000007A4
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4B54
	adds r1, #8
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E4B54
	ldr r0, .L080E4CC0 @ =0x000007A4
	adds r6, r5, r0
.L080E4B48:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E4B48
.L080E4B54:
	movs r1, #0xf4
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4B6C
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4B6C:
	ldr r1, .L080E4CC4 @ =0x0000079C
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4B82
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4B82:
	movs r1, #0xf3
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4B9A
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4B9A:
	ldr r1, .L080E4CC8 @ =0x00000794
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4BB0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4BB0:
	movs r1, #0xf2
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4BC8
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4BC8:
	ldr r1, .L080E4CCC @ =0x0000078C
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4BDE
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4BDE:
	movs r1, #0xf1
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4BF6
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4BF6:
	ldr r1, .L080E4CD0 @ =0x00000784
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4C0C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4C0C:
	movs r1, #0xf0
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4C24
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4C24:
	ldr r0, .L080E4CD4 @ =0x0000077C
	adds r4, r5, r0
	ldr r1, [r4]
	cmp r1, #0
	beq .L080E4C3A
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4C3A:
	ldr r1, .L080E4CD8 @ =0x0000073C
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4C5E
	cmp r0, r4
	beq .L080E4C5E
	adds r6, r0, #0
.L080E4C48:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	cmp r6, r4
	bne .L080E4C48
.L080E4C5E:
	ldr r1, .L080E4CDC @ =0x0000072C
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E4CFC
	adds r1, #0x10
	adds r4, r5, r1
	cmp r0, r4
	b .L080E4CE0
	.align 2, 0
.L080E4C70: .4byte 0x00000AEC
.L080E4C74: .4byte 0x00000AC8
.L080E4C78: .4byte 0x00000AA4
.L080E4C7C: .4byte 0x00000A7C
.L080E4C80: .4byte 0x00000A34
.L080E4C84: .4byte 0x000009E8
.L080E4C88: .4byte 0x000009E4
.L080E4C8C: .4byte 0x000009BC
.L080E4C90: .4byte 0x00000998
.L080E4C94: .4byte 0x00000994
.L080E4C98: .4byte 0x0000096C
.L080E4C9C: .4byte 0x00000924
.L080E4CA0: .4byte 0x0000091C
.L080E4CA4: .4byte 0x000008F8
.L080E4CA8: .4byte 0x000008F4
.L080E4CAC: .4byte 0x000008CC
.L080E4CB0: .4byte 0x00000884
.L080E4CB4: .4byte 0x0000087C
.L080E4CB8: .4byte 0x000007B4
.L080E4CBC: .4byte 0x000007AC
.L080E4CC0: .4byte 0x000007A4
.L080E4CC4: .4byte 0x0000079C
.L080E4CC8: .4byte 0x00000794
.L080E4CCC: .4byte 0x0000078C
.L080E4CD0: .4byte 0x00000784
.L080E4CD4: .4byte 0x0000077C
.L080E4CD8: .4byte 0x0000073C
.L080E4CDC: .4byte 0x0000072C
.L080E4CE0:
	beq .L080E4CFC
	ldr r0, .L080E4D44 @ =0x0000072C
	adds r6, r5, r0
.L080E4CE6:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	cmp r6, r4
	bne .L080E4CE6
.L080E4CFC:
	ldr r1, .L080E4D48 @ =0x00000724
	adds r4, r5, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	ldr r0, .L080E4D4C @ =0x0000071C
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r1, #0xe3
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080E4D36
	movs r1, #3
	bl func_08050D0C
.L080E4D36:
	adds r0, r5, #0
	adds r1, r7, #0
	bl func_080086BC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080E4D44: .4byte 0x0000072C
.L080E4D48: .4byte 0x00000724
.L080E4D4C: .4byte 0x0000071C

	thumb_func_start func_080E4D50
func_080E4D50: @ 0x080E4D50
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0xb6
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r1, #2
	bl func_080E4F34
	ldr r1, .L080E4F00 @ =0x00000594
	adds r0, r4, r1
	movs r1, #2
	bl func_080098AC
	movs r1, #0xb1
	lsls r1, r1, #3
	adds r0, r4, r1
	movs r1, #2
	bl func_080098AC
	ldr r1, .L080E4F04 @ =0x00000554
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xaa
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4F08 @ =0x0000052C
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xa5
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4F0C @ =0x00000504
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xa0
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4F10 @ =0x000004DC
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0x9b
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4F14 @ =0x000004B4
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0x96
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4F18 @ =0x0000048C
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4F1C @ =0x00000464
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0x8c
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E4F20 @ =0x0000043C
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4E28
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4E28:
	movs r1, #0x87
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4E40
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4E40:
	ldr r1, .L080E4F24 @ =0x00000434
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4E56
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4E56:
	movs r1, #0x86
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4E6E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4E6E:
	ldr r1, .L080E4F28 @ =0x0000042C
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4E84
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4E84:
	movs r1, #0x85
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4E9C
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4E9C:
	ldr r1, .L080E4F2C @ =0x00000424
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4EB2
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4EB2:
	movs r1, #0x84
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4ECA
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4ECA:
	ldr r1, .L080E4F30 @ =0x0000041C
	adds r0, r4, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E4EE0
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E4EE0:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080E4EF2
	movs r1, #3
	bl func_08050D0C
.L080E4EF2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080086BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080E4F00: .4byte 0x00000594
.L080E4F04: .4byte 0x00000554
.L080E4F08: .4byte 0x0000052C
.L080E4F0C: .4byte 0x00000504
.L080E4F10: .4byte 0x000004DC
.L080E4F14: .4byte 0x000004B4
.L080E4F18: .4byte 0x0000048C
.L080E4F1C: .4byte 0x00000464
.L080E4F20: .4byte 0x0000043C
.L080E4F24: .4byte 0x00000434
.L080E4F28: .4byte 0x0000042C
.L080E4F2C: .4byte 0x00000424
.L080E4F30: .4byte 0x0000041C

	thumb_func_start func_080E4F34
func_080E4F34: @ 0x080E4F34
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r6, #0
	adds r4, #0x40
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007C28
	adds r0, r6, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq .L080E4FEA
	adds r0, r6, #0
	bl __builtin_delete
.L080E4FEA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start func_080E4FF0
func_080E4FF0: @ 0x080E4FF0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, .L080E5250 @ =0x0000083C
	adds r0, r5, r1
	movs r1, #2
	bl func_080E5324
	movs r1, #0x83
	lsls r1, r1, #4
	adds r0, r5, r1
	movs r1, #2
	bl func_080098AC
	ldr r1, .L080E5254 @ =0x00000824
	adds r0, r5, r1
	movs r1, #2
	bl func_080098AC
	ldr r1, .L080E5258 @ =0x000007EC
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xfd
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E525C @ =0x000007C4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E5260 @ =0x0000079C
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xf3
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E5264 @ =0x00000754
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xea
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E5268 @ =0x0000072C
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xe5
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E526C @ =0x000006A4
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E50A4
	adds r1, #0x64
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E50A4
	ldr r0, .L080E526C @ =0x000006A4
	adds r6, r5, r0
.L080E5098:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E5098
.L080E50A4:
	movs r1, #0xd4
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E5270 @ =0x0000061C
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E50D0
	adds r1, #0x64
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E50D0
	ldr r0, .L080E5270 @ =0x0000061C
	adds r6, r5, r0
.L080E50C4:
	subs r4, #4
	ldr r0, [r4]
	bl __builtin_delete
	cmp r6, r4
	bne .L080E50C4
.L080E50D0:
	movs r1, #0xc3
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E5274 @ =0x000005F4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xbe
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E5278 @ =0x000005CC
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xb9
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E527C @ =0x000005A4
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xb4
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E5280 @ =0x0000057C
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E5284 @ =0x00000554
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	movs r1, #0xaa
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r0, [r0]
	bl __builtin_delete
	ldr r1, .L080E5288 @ =0x00000544
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E5160
	ldr r0, [r1, #8]
	ldr r2, [r0, #0xc]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E5160:
	movs r1, #0xa8
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E5178
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E5178:
	ldr r1, .L080E528C @ =0x0000053C
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E518E
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E518E:
	movs r1, #0xa7
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E51A6
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E51A6:
	ldr r1, .L080E5290 @ =0x00000534
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E51BC
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E51BC:
	movs r1, #0xa6
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E51D4
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E51D4:
	ldr r1, .L080E5294 @ =0x0000052C
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E51EA
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E51EA:
	movs r1, #0xa5
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E5202
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E5202:
	ldr r1, .L080E5298 @ =0x00000524
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E5218
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E5218:
	movs r1, #0xa4
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	cmp r1, #0
	beq .L080E5230
	ldr r0, [r1]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E5230:
	ldr r1, .L080E529C @ =0x0000051C
	adds r0, r5, r1
	ldr r0, [r0]
	cmp r0, #0
	beq .L080E5240
	movs r1, #3
	bl func_08050D0C
.L080E5240:
	adds r0, r5, #0
	adds r1, r7, #0
	bl func_080086BC
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080E5250: .4byte 0x0000083C
.L080E5254: .4byte 0x00000824
.L080E5258: .4byte 0x000007EC
.L080E525C: .4byte 0x000007C4
.L080E5260: .4byte 0x0000079C
.L080E5264: .4byte 0x00000754
.L080E5268: .4byte 0x0000072C
.L080E526C: .4byte 0x000006A4
.L080E5270: .4byte 0x0000061C
.L080E5274: .4byte 0x000005F4
.L080E5278: .4byte 0x000005CC
.L080E527C: .4byte 0x000005A4
.L080E5280: .4byte 0x0000057C
.L080E5284: .4byte 0x00000554
.L080E5288: .4byte 0x00000544
.L080E528C: .4byte 0x0000053C
.L080E5290: .4byte 0x00000534
.L080E5294: .4byte 0x0000052C
.L080E5298: .4byte 0x00000524
.L080E529C: .4byte 0x0000051C

	thumb_func_start func_080E52A0
func_080E52A0: @ 0x080E52A0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl func_08007874
	movs r5, #0
	str r5, [r6, #4]
	adds r4, r6, #0
	adds r4, #8
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	adds r4, #8
	adds r0, r4, #0
	bl func_08007874
	str r5, [r4, #4]
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start func_080E5324
func_080E5324: @ 0x080E5324
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r6, #0
	adds r4, #0x58
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	ldr r1, [r6, #4]
	adds r0, r6, #0
	bl func_08007C28
	adds r0, r6, #0
	movs r1, #2
	bl func_080079E8
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq .L080E5410
	adds r0, r6, #0
	bl __builtin_delete
.L080E5410:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E5418
func_080E5418: @ 0x080E5418
	push {lr}
	ldr r0, .L080E5428 @ =gUnk_03000414
	ldr r0, [r0]
	ldr r0, [r0]
	bl func_080CA6F4
	pop {r0}
	bx r0
	.align 2, 0
.L080E5428: .4byte gUnk_03000414

	thumb_func_start func_080E542C
func_080E542C: @ 0x080E542C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, .L080E5468 @ =vtable_unk_080E857C
	str r0, [r5, #0x14]
	ldr r0, [r1]
	str r0, [r5]
	movs r4, #4
	movs r0, #4
	bl func_08000528
	ands r4, r0
	strh r4, [r5, #4]
	ldr r0, .L080E546C @ =gUnk_03000414
	ldr r1, [r0]
	str r5, [r0]
	str r1, [r5, #8]
	ldr r0, .L080E5470 @ =vtable_unk_080E8588
	str r0, [r5, #0xc]
	ldr r1, .L080E5474 @ =func_080E5418
	movs r0, #2
	bl func_080D100C
	str r0, [r5, #0x10]
	movs r0, #4
	bl func_0800050C
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
.L080E5468: .4byte vtable_unk_080E857C
.L080E546C: .4byte gUnk_03000414
.L080E5470: .4byte vtable_unk_080E8588
.L080E5474: .4byte func_080E5418

	thumb_func_start func_080E5478
func_080E5478: @ 0x080E5478
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, .L080E54B8 @ =vtable_unk_080E857C
	str r0, [r4, #0x14]
	movs r0, #4
	bl func_08000528
	ldr r1, [r4, #0x10]
	movs r0, #2
	bl func_080D100C
	ldr r0, .L080E54BC @ =vtable_unk_080E8594
	str r0, [r4, #0xc]
	ldr r1, .L080E54C0 @ =gUnk_03000414
	ldr r0, [r4, #8]
	str r0, [r1]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq .L080E54A4
	bl func_080004F4
.L080E54A4:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq .L080E54B2
	adds r0, r4, #0
	bl __builtin_delete
.L080E54B2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080E54B8: .4byte vtable_unk_080E857C
.L080E54BC: .4byte vtable_unk_080E8594
.L080E54C0: .4byte gUnk_03000414

	thumb_func_start func_080E54C4
func_080E54C4: @ 0x080E54C4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r4, #0
	beq .L080E54E8
.L080E54CE:
	ldr r1, [r4, #0xc]
	adds r0, r6, #0
	bl func_080E54C4
	ldr r5, [r4, #8]
	cmp r4, #0
	beq .L080E54E2
	adds r0, r4, #0
	bl free
.L080E54E2:
	adds r4, r5, #0
	cmp r4, #0
	bne .L080E54CE
.L080E54E8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E54F0
func_080E54F0: @ 0x080E54F0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, [sp, #0x14]
	adds r5, r3, #0
	ldr r0, [r6, #4]
	cmp r5, r0
	beq .L080E551A
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne .L080E555A
	cmp r2, #0
	bne .L080E551A
	movs r2, #0
	ldr r1, [r4]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bhs .L080E5516
	movs r2, #1
.L080E5516:
	cmp r2, #0
	beq .L080E555A
.L080E551A:
	movs r0, #0x18
	bl malloc
	adds r2, r0, #0
	cmp r2, #0
	bne .L080E552E
	movs r0, #0x18
	bl func_080D3BC0
	adds r2, r0, #0
.L080E552E:
	adds r1, r2, #0
	adds r1, #0x10
	cmp r1, #0
	beq .L080E553E
	ldr r0, [r4]
	str r0, [r2, #0x10]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
.L080E553E:
	adds r4, r2, #0
	str r4, [r5, #8]
	ldr r1, [r6, #4]
	cmp r5, r1
	bne .L080E5550
	str r4, [r5, #4]
	ldr r0, [r6, #4]
	str r4, [r0, #0xc]
	b .L080E558C
.L080E5550:
	ldr r0, [r1, #8]
	cmp r5, r0
	bne .L080E558C
	str r4, [r1, #8]
	b .L080E558C
.L080E555A:
	movs r0, #0x18
	bl malloc
	adds r2, r0, #0
	cmp r2, #0
	bne .L080E556E
	movs r0, #0x18
	bl func_080D3BC0
	adds r2, r0, #0
.L080E556E:
	adds r1, r2, #0
	adds r1, #0x10
	cmp r1, #0
	beq .L080E557E
	ldr r0, [r4]
	str r0, [r2, #0x10]
	ldr r0, [r4, #4]
	str r0, [r1, #4]
.L080E557E:
	adds r4, r2, #0
	str r4, [r5, #0xc]
	ldr r1, [r6, #4]
	ldr r0, [r1, #0xc]
	cmp r5, r0
	bne .L080E558C
	str r4, [r1, #0xc]
.L080E558C:
	str r5, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #0xc]
	ldr r1, [r6, #4]
	adds r1, #4
	adds r0, r4, #0
	bl func_080E21E0
	ldr r0, [r6, #8]
	adds r0, #1
	str r0, [r6, #8]
	str r4, [r7]
	adds r0, r7, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E55B0
func_080E55B0: @ 0x080E55B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x14
	adds r6, r0, #0
	mov r8, r1
	adds r7, r2, #0
	ldr r4, [r1, #4]
	ldr r5, [r4, #4]
	movs r0, #1
	cmp r5, #0
	beq .L080E55E6
	ldr r2, [r7]
.L080E55CA:
	adds r4, r5, #0
	movs r1, #0
	ldr r0, [r4, #0x10]
	cmp r2, r0
	bhs .L080E55D6
	movs r1, #1
.L080E55D6:
	adds r0, r1, #0
	cmp r0, #0
	beq .L080E55E0
	ldr r5, [r4, #8]
	b .L080E55E2
.L080E55E0:
	ldr r5, [r4, #0xc]
.L080E55E2:
	cmp r5, #0
	bne .L080E55CA
.L080E55E6:
	str r4, [sp, #8]
	cmp r0, #0
	beq .L080E5620
	mov r1, r8
	ldr r0, [r1, #4]
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	movs r1, #0
	cmp r4, r0
	bne .L080E55FC
	movs r1, #1
.L080E55FC:
	cmp r1, #0
	beq .L080E5618
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0x10
	mov r1, r8
	adds r2, r5, #0
	adds r3, r4, #0
	bl func_080E54F0
	movs r1, #1
	ldr r0, [sp, #0x10]
	b .L080E564A
.L080E5618:
	adds r0, r4, #0
	bl func_080E2354
	str r0, [sp, #8]
.L080E5620:
	ldr r2, [sp, #8]
	movs r3, #0
	ldr r1, [r2, #0x10]
	ldr r0, [r7]
	cmp r1, r0
	bhs .L080E562E
	movs r3, #1
.L080E562E:
	adds r0, r3, #0
	cmp r0, #0
	beq .L080E5650
	str r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0xc
	mov r1, r8
	adds r2, r5, #0
	adds r3, r4, #0
	bl func_080E54F0
	movs r1, #1
	ldr r0, [sp, #0xc]
.L080E564A:
	str r0, [r6]
	strb r1, [r6, #4]
	b .L080E5654
.L080E5650:
	str r2, [r6]
	strb r0, [r6, #4]
.L080E5654:
	adds r0, r6, #0
	add sp, #0x14
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E5664
func_080E5664: @ 0x080E5664
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	adds r6, r1, #0
	mov r8, r2
	adds r4, r3, #0
	ldr r1, [r6, #4]
	ldr r2, [r2]
	ldr r0, [r1, #8]
	cmp r2, r0
	bne .L080E56F4
	ldr r0, [r6, #8]
	cmp r0, #0
	bne .L080E5694
	add r0, sp, #8
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080E55B0
	ldr r0, [sp, #8]
	b .L080E5808
.L080E5694:
	movs r0, #0
	ldr r1, [r2, #0x10]
	adds r3, r2, #0
	ldr r2, [r4]
	cmp r2, r1
	bhs .L080E56A2
	movs r0, #1
.L080E56A2:
	mov sb, r0
	cmp r0, #0
	bne .L080E5768
	movs r0, #0
	cmp r1, r2
	bhs .L080E56B0
	movs r0, #1
.L080E56B0:
	cmp r0, #0
	bne .L080E56B8
	str r3, [r7]
	b .L080E580A
.L080E56B8:
	str r3, [sp, #8]
	adds r0, r3, #0
	bl func_080E2B28
	adds r2, r0, #0
	str r2, [sp, #8]
	ldr r0, [r6, #4]
	cmp r2, r0
	bne .L080E56D0
	mov r0, r8
	ldr r3, [r0]
	b .L080E57CE
.L080E56D0:
	movs r3, #0
	ldr r1, [r4]
	ldr r0, [r2, #0x10]
	adds r5, r2, #0
	cmp r1, r0
	bhs .L080E56DE
	movs r3, #1
.L080E56DE:
	cmp r3, #0
	bne .L080E56E4
	b .L080E57FC
.L080E56E4:
	mov r1, r8
	ldr r3, [r1]
	ldr r0, [r3, #0xc]
	cmp r0, #0
	beq .L080E57CE
	str r4, [sp]
	mov r0, sb
	b .L080E57E2
.L080E56F4:
	cmp r2, r1
	bne .L080E571E
	ldr r3, [r2, #0xc]
	movs r5, #0
	ldr r1, [r3, #0x10]
	ldr r0, [r4]
	cmp r1, r0
	bhs .L080E5706
	movs r5, #1
.L080E5706:
	cmp r5, #0
	beq .L080E5710
	str r4, [sp]
	str r2, [sp, #4]
	b .L080E57D2
.L080E5710:
	add r0, sp, #8
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080E55B0
	ldr r0, [sp, #8]
	b .L080E5808
.L080E571E:
	str r2, [sp, #8]
	adds r0, r2, #0
	bl func_080E2354
	adds r2, r0, #0
	str r2, [sp, #8]
	mov r1, r8
	ldr r3, [r1]
	movs r5, #0
	ldr r1, [r4]
	ldr r0, [r3, #0x10]
	cmp r1, r0
	bhs .L080E573A
	movs r5, #1
.L080E573A:
	mov sb, r5
	cmp r5, #0
	beq .L080E577A
	movs r0, #0
	mov ip, r0
	ldr r0, [r2, #0x10]
	adds r5, r2, #0
	cmp r0, r1
	bhs .L080E5750
	movs r1, #1
	mov ip, r1
.L080E5750:
	mov r0, ip
	cmp r0, #0
	beq .L080E577A
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne .L080E5768
	str r4, [sp]
	str r5, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	b .L080E57EA
.L080E5768:
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r3, #0
	bl func_080E54F0
	b .L080E580A
.L080E577A:
	mov r1, r8
	ldr r0, [r1]
	str r0, [sp, #0xc]
	bl func_080E2B28
	mov ip, r0
	str r0, [sp, #0xc]
	movs r0, #1
	mov r1, sb
	eors r1, r0
	mov r0, sb
	cmp r0, #0
	bne .L080E57F2
	mov r1, r8
	ldr r0, [r1]
	movs r5, #0
	ldr r1, [r0, #0x10]
	adds r3, r0, #0
	ldr r2, [r4]
	cmp r1, r2
	bhs .L080E57A6
	movs r5, #1
.L080E57A6:
	adds r1, r5, #0
	cmp r1, #0
	beq .L080E57F2
	ldr r0, [r6, #4]
	mov r5, ip
	cmp r5, r0
	beq .L080E57C8
	movs r0, #0
	mov ip, r0
	ldr r0, [r5, #0x10]
	cmp r2, r0
	bhs .L080E57C2
	movs r0, #1
	mov ip, r0
.L080E57C2:
	mov r0, ip
	cmp r0, #0
	beq .L080E57F2
.L080E57C8:
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne .L080E57DE
.L080E57CE:
	str r4, [sp]
	str r3, [sp, #4]
.L080E57D2:
	adds r0, r7, #0
	adds r1, r6, #0
	movs r2, #0
	bl func_080E54F0
	b .L080E580A
.L080E57DE:
	str r4, [sp]
	movs r0, #0
.L080E57E2:
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r5, #0
.L080E57EA:
	adds r3, r5, #0
	bl func_080E54F0
	b .L080E580A
.L080E57F2:
	cmp sb, r1
	bne .L080E57FC
	mov r1, r8
	ldr r0, [r1]
	b .L080E5808
.L080E57FC:
	add r0, sp, #0x10
	adds r1, r6, #0
	adds r2, r4, #0
	bl func_080E55B0
	ldr r0, [sp, #0x10]
.L080E5808:
	str r0, [r7]
.L080E580A:
	adds r0, r7, #0
	add sp, #0x18
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start func_080E581C
func_080E581C: @ 0x080E581C
	push {lr}
	adds r3, r0, #0
	ldr r0, .L080E583C @ =vtable_unk_080E8594
	str r0, [r3, #4]
	ldr r2, .L080E5840 @ =gUnk_03000414
	ldr r0, [r3]
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L080E5838
	adds r0, r3, #0
	bl __builtin_delete
.L080E5838:
	pop {r0}
	bx r0
	.align 2, 0
.L080E583C: .4byte vtable_unk_080E8594
.L080E5840: .4byte gUnk_03000414

	thumb_func_start func_080E5844
func_080E5844: @ 0x080E5844
	push {lr}
	adds r3, r0, #0
	ldr r0, .L080E5864 @ =vtable_unk_080E8594
	str r0, [r3, #4]
	ldr r2, .L080E5868 @ =gUnk_03000414
	ldr r0, [r3]
	str r0, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq .L080E5860
	adds r0, r3, #0
	bl __builtin_delete
.L080E5860:
	pop {r0}
	bx r0
	.align 2, 0
.L080E5864: .4byte vtable_unk_080E8594
.L080E5868: .4byte gUnk_03000414

	thumb_func_start func_080E586C
func_080E586C: @ 0x080E586C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r0]
	cmp r4, r0
	beq .L080E588A
.L080E5878:
	adds r0, r4, #0
	ldr r4, [r4]
	cmp r0, #0
	beq .L080E5884
	bl free
.L080E5884:
	ldr r0, [r5, #4]
	cmp r4, r0
	bne .L080E5878
.L080E588A:
	ldr r0, [r5, #4]
	str r0, [r0]
	str r0, [r0, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start func_080E5898
func_080E5898: @ 0x080E5898
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	mov r8, r1
	movs r0, #0x84
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, .L080E5968 @ =vtable_unk_080E85AC
	str r0, [r1]
	movs r1, #0xbb
	lsls r1, r1, #2
	adds r0, r5, r1
	cmp r0, #0
	beq .L080E58DA
	adds r1, #0x40
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E58DA
	movs r0, #0xbb
	lsls r0, r0, #2
	adds r6, r5, r0
.L080E58C4:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	cmp r6, r4
	bne .L080E58C4
.L080E58DA:
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r5, r1
	subs r1, #0x94
	adds r7, r5, r1
	cmp r0, #0
	beq .L080E590C
	adds r1, #0xd4
	adds r4, r5, r1
	cmp r0, r4
	beq .L080E590C
	movs r0, #0xab
	lsls r0, r0, #2
	adds r6, r5, r0
.L080E58F6:
	subs r4, #8
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	cmp r6, r4
	bne .L080E58F6
.L080E590C:
	movs r1, #0xa9
	lsls r1, r1, #2
	adds r4, r5, r1
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_080073E0
	adds r0, r4, #0
	movs r1, #2
	bl func_08007184
	movs r0, #0xa7
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r1, [r4, #4]
	adds r0, r4, #0
	bl func_08007C28
	adds r0, r4, #0
	movs r1, #2
	bl func_080079E8
	movs r1, #0x85
	lsls r1, r1, #2
	adds r2, r5, r1
	ldr r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, #4
	adds r2, r2, r0
	adds r0, r7, #0
	cmp r0, r2
	beq .L080E5956
.L080E5950:
	adds r0, #0xc
	cmp r0, r2
	bne .L080E5950
.L080E5956:
	adds r0, r5, #0
	mov r1, r8
	bl func_080CADF0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
.L080E5968: .4byte vtable_unk_080E85AC

	thumb_func_start func_080E596C
func_080E596C: @ 0x080E596C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r0, #0x80
	movs r1, #2
	bl func_08050D0C
	ldr r1, [r4, #0x7c]
	cmp r1, #0
	beq .L080E5992
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E5992:
	ldr r1, [r4, #0x78]
	cmp r1, #0
	beq .L080E59AA
	movs r2, #0x84
	lsls r2, r2, #2
	adds r0, r1, r2
	ldr r0, [r0]
	ldr r2, [r0, #8]
	adds r0, r1, #0
	movs r1, #3
	bl _call_via_r2
.L080E59AA:
	ldr r0, .L080E59BC @ =vtable_unk_080E5A28
	str r0, [r4, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	bl func_080086BC
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
.L080E59BC: .4byte vtable_unk_080E5A28
