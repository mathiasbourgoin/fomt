OUTPUT_ARCH(arm)

_M4aNumMusicPlayers = 5;
_M4aMaxLines = 0x50;

gMPlayJumpTableTemplate = 0x08139A88;
gScaleTable = 0x08139B18;
gFreqTable = 0x08139BCC;
gPcmSamplesPerVBlankTable = 0x08139BFC;
gCgbScaleTable = 0x08139C14;
gCgbFreqTable = 0x08139C98;
gNoiseTable = 0x08139CB0;
gCgb3Vol = 0x08139CEC;
gClockTable = 0x08139CFC;
gXcmdTable = 0x08139D30;

MEMORY
{
    EWRAM (w!x) : ORIGIN = 0x02000000, LENGTH = 256K
    IWRAM (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
    ROM   (rx)  : ORIGIN = 0x08000000, LENGTH = 32M
}

SECTIONS
{
    .ewram_bss (NOLOAD) : ALIGN(4)
    {
        . = ALIGN(4); src/sound_data.o(.sbss);
        . = ALIGN(4); src/m4a.o(.gSoundInfo);
        . = ALIGN(4); src/m4a.o(.gMPlayJumpTable);
        . = ALIGN(4); src/m4a.o(.gCgbChans);
        . = ALIGN(4); src/m4a.o(.gMusicPlayerA);
        . = ALIGN(4); src/m4a.o(.gMusicPlayerB);
        . = ALIGN(4); src/m4a.o(.gMusicPlayerC);
        . = ALIGN(4); src/m4a.o(.gMusicPlayerE);
        . = ALIGN(4); src/m4a.o(.gMPlayMemAccArea);
        . = ALIGN(4); src/m4a.o(.gMusicPlayerD);
        __ewram_bss_end = .;
    } > EWRAM

    .bss (NOLOAD) : ALIGN(4)
    {
        . = ALIGN(4); src/m4a.o(.bss);
        . = ALIGN(4);
        . = 0x000400; gUnk_03000400 = .;
        . = 0x000402; gUnk_03000402 = .;
        . = 0x000404; gUnk_03000404 = .;
        . = 0x000408; gUnk_03000408 = .;
        . = 0x00040C; gUnk_0300040C = .;
        . = 0x000410; gUnk_03000410 = .;
        . = 0x000414; gUnk_03000414 = .;
        . = 0x000418; gUnk_03000418 = .;
        . = 0x00041C; gUnk_0300041C = .;
        . = 0x000420; gUnk_03000420 = .;
        . = 0x000430; gUnk_03000430 = .;
        . = 0x000450; gUnk_03000450 = .;
        . = 0x000490; /* end */
    } > IWRAM

    .rom : ALIGN(4)
    {
        src/crt0.o(.rom_header);
        asm/main.o(.text);
        asm/sram_proxy_1.o(.text);
        asm/interrupt.o(.text);
        src/code_0800057C.o(.text);
        src/new.o(.text);
        src/pure_virtual.o(.text);
        asm/sram_proxy_2.o(.text);
        src/scene.o(.text);
        asm/scene.o(.text);
        asm/intro_scene.o(.text);
        src/code_080036F8.o(.text);
        src/code_0800371C.o(.text);
        asm/code_0800374C.o(.text);
        asm/new_game.o(.text);
        src/code_08004B58.o(.text);
        src/code_08004B94.o(.text);
        src/code_08004BDC.o(.text);
        asm/code_08004C0C.o(.text);
        src/code_08004C48.o(.text);
        src/code_08004C54.o(.text);
        asm/code_08004C68.o(.text);
        src/code_0800598C.o(.text);
        src/code_080059D0.o(.text);
        asm/code_08005A00.o(.text);
        src/code_08005A3C.o(.text);
        asm/code_08005A58.o(.text);
        src/code_08007078.o(.text);
        src/code_080070A4.o(.text);
        asm/code_080070D4.o(.text);
        src/code_08007110.o(.text);
        src/code_0800711C.o(.text);
        src/hardware.o(.text);
        asm/hardware.o(.text);
        src/code_08008928.o(.text);
        asm/code_08008940.o(.text);
        src/code_08008960.o(.text);
        src/code_08008980.o(.text);
        src/code_08008A68.o(.text);
        asm/code_08008AE0.o(.text);
        src/code_08008AE8.o(.text);
        asm/code_08008AF0.o(.text);
        src/code_08008BEC.o(.text);
        asm/code_08008BF8.o(.text);
        src/code_08008C08.o(.text);
        asm/code_08008C28.o(.text);
        src/code_08008CDC.o(.text);
        asm/code_08008D10.o(.text);
        src/code_08008D2C.o(.text);
        asm/code_08008D3C.o(.text);
        src/code_08008D5C.o(.text);
        asm/code_08008D84.o(.text);
        src/code_08008DB8.o(.text);
        asm/code_08008DE8.o(.text);
        src/code_08009790.o(.text);
        asm/code_080097A4.o(.text);
        src/code_08009878.o(.text);
        asm/code_080098AC.o(.text);
        src/code_080098DC.o(.text);
        asm/code_08009908.o(.text);
        src/code_080099EC.o(.text);
        src/farm.o(.text);
        src/field.o(.text);
        src/shipping_bin.o(.text);
        src/tool_chest.o(.text);
        src/fridge.o(.text);
        src/shelf.o(.text);
        src/record_player.o(.text);
        src/code_0800BC58.o(.text);
        src/farm_house.o(.text);
        src/coop.o(.text);
        src/barn.o(.text);
        src/item.o(.text);
        src/code_0800E2E4.o(.text);
        src/farmer.o(.text);
        src/rucksack_item.o(.text);
        src/held_item.o(.text);
        src/rucksack.o(.text);
        asm/more_items.o(.text);
        asm/game_scene.o(.text);
        src/code_080100F0.o(.text);
        src/code_08010158.o(.text);
        asm/code_080101A0.o(.text);
        asm/game_state.o(.text);
        src/code_08010F04.o(.text);
        asm/code_08010F0C.o(.text);
        src/code_08010F14.o(.text);
        src/game_state.o(.text);
        asm/code_08010F54.o(.text);
        src/code_08011ED8.o(.text);
        src/code_08011FE8.o(.text);
        asm/code_08012028.o(.text);
        src/code_0801DE30.o(.text);
        asm/code_0801DE3C.o(.text);
        src/entity.o(.text);
        src/code_entity_08020018.o(.text);
        asm/code_entities.o(.text);
        src/code_080222A8.o(.text);
        asm/code_08022320.o(.text);
        src/entity_actor.o(.text);
        asm/code_entities_080320DC.o(.text);
        src/code_08032A00.o(.text);
        asm/code_08032A30.o(.text);
        src/npc_entity.o(.text);
        asm/code_entities_08034CEC.o(.text);
        src/code_08035B38.o(.text);
        asm/code_08035B64.o(.text);
        src/code_08035B9C.o(.text);
        asm/code_08035BC8.o(.text);
        src/code_08035CD4.o(.text);
        asm/code_08035D04.o(.text);
        src/code_08035D40.o(.text);
        asm/code_08035D70.o(.text);
        src/code_08035DAC.o(.text);
        asm/code_08035DD8.o(.text);
        src/code_08035E14.o(.text);
        asm/code_08035E40.o(.text);
        src/code_08035E7C.o(.text);
        asm/code_08035EAC.o(.text);
        src/code_08035EE4.o(.text);
        asm/code_08035F10.o(.text);
        src/code_08035F48.o(.text);
        asm/code_08035F74.o(.text);
        src/code_08035FB0.o(.text);
        asm/code_08035FE0.o(.text);
        src/code_0803601C.o(.text);
        asm/code_08036048.o(.text);
        src/code_08036154.o(.text);
        asm/code_08036184.o(.text);
        src/code_080361C0.o(.text);
        asm/code_080361EC.o(.text);
        src/code_08036228.o(.text);
        asm/code_08036258.o(.text);
        src/code_08036290.o(.text);
        asm/code_080362C0.o(.text);
        src/code_080362FC.o(.text);
        asm/code_08036328.o(.text);
        src/code_08036364.o(.text);
        asm/code_08036390.o(.text);
        src/code_080363CC.o(.text);
        asm/code_080363F8.o(.text);
        src/code_08036500.o(.text);
        asm/code_08036530.o(.text);
        src/code_08036564.o(.text);
        asm/code_08036590.o(.text);
        src/code_0803669C.o(.text);
        asm/code_080366CC.o(.text);
        src/code_08036704.o(.text);
        asm/code_08036730.o(.text);
        src/code_080367C8.o(.text);
        asm/code_080367F8.o(.text);
        src/code_08036834.o(.text);
        asm/code_08036860.o(.text);
        src/code_08036898.o(.text);
        asm/code_080368C4.o(.text);
        src/code_080369E0.o(.text);
        asm/code_08036A10.o(.text);
        src/code_08036A4C.o(.text);
        asm/code_08036A78.o(.text);
        src/code_08036B1C.o(.text);
        asm/code_08036B4C.o(.text);
        src/code_08036B80.o(.text);
        asm/code_08036BB0.o(.text);
        src/code_08036C80.o(.text);
        asm/code_08036CAC.o(.text);
        src/code_08036CDC.o(.text);
        asm/code_08036D0C.o(.text);
        src/code_08036D3C.o(.text);
        asm/code_08036D68.o(.text);
        src/code_08036D98.o(.text);
        asm/code_08036DC4.o(.text);
        src/code_0803753C.o(.text);
        asm/code_08037568.o(.text);
        src/code_080376E4.o(.text);
        asm/code_08037714.o(.text);
        src/code_0803788C.o(.text);
        asm/code_080378B8.o(.text);
        src/code_080379D8.o(.text);
        asm/code_08037A04.o(.text);
        src/code_08039A30.o(.text);
        asm/code_08039A5C.o(.text);
        src/code_0803A798.o(.text);
        src/code_0803A804.o(.text);

        asm/code_0803A8A4.o(.text);
        src/code_0803BF14.o(.text);
        src/code_0803BF78.o(.text);
        asm/code_0803BFC8.o(.text);
        src/script_engine.o(.text);
        asm/code_0803EE94.o(.text);
        src/code_0804E4AC.o(.text);
        asm/code_0804E5AC.o(.text);
        src/code_0804E8F0.o(.text);
        src/code_0804E958.o(.text);
        asm/code_0804E9C8.o(.text);
        src/code_08050DF0.o(.text);
        asm/code_08050E0C.o(.text);
        src/code_08050E50.o(.text);
        src/code_08050E5C.o(.text);
        asm/code_08050E68.o(.text);
        src/code_08050E74.o(.text);
        src/code_08050E80.o(.text);
        src/code_08050E8C.o(.text);
        asm/code_08050E98.o(.text);
        src/code_08050EE4.o(.text);
        asm/code_08050F4C.o(.text);
        src/code_08050F60.o(.text);
        src/code_08050F70.o(.text);
        src/code_08050F74.o(.text);
        asm/code_08050FA0.o(.text);
        src/code_080512B8.o(.text);
        src/code_080512C8.o(.text);
        src/code_080512D0.o(.text);
        src/code_080512D8.o(.text);
        asm/code_08051320.o(.text);
        src/code_0805218C.o(.text);
        src/code_080521BC.o(.text);
        asm/code_080521FC.o(.text);
        src/code_08057DD8.o(.text);
        src/code_08057E1C.o(.text);
        asm/code_08057E5C.o(.text);
        src/code_0805CEB8.o(.text);
        src/code_0805CEFC.o(.text);
        asm/code_0805CF3C.o(.text);
        src/code_0805E624.o(.text);
        src/code_0805E658.o(.text);
        asm/code_0805E698.o(.text);
        src/code_0805E6CC.o(.text);
        asm/code_0805E760.o(.text);
        src/code_0805FCD0.o(.text);
        src/code_0805FD04.o(.text);
        asm/code_0805FD44.o(.text);
        src/code_08069E14.o(.text);
        src/code_08069E58.o(.text);
        asm/code_08069E98.o(.text);
        src/code_0806D8C8.o(.text);
        src/code_0806D918.o(.text);
        asm/code_0806D948.o(.text);
        src/code_0806E9D8.o(.text);
        src/code_0806EA00.o(.text);
        asm/code_0806EA30.o(.text);
        src/code_0806EA6C.o(.text);
        asm/code_0806EA78.o(.text);
        src/code_080709D8.o(.text);
        asm/code_08070A08.o(.text);
        src/code_080755EC.o(.text);
        src/code_0807561C.o(.text);
        asm/code_0807565C.o(.text);
        src/code_08075678.o(.text);
        src/code_080756B0.o(.text);
        asm/code_080756D0.o(.text);
        src/code_08077C40.o(.text);
        asm/code_08077CE0.o(.text);
        src/code_0807B038.o(.text);
        asm/code_0807B0F0.o(.text);
        src/code_0807D070.o(.text);
        asm/code_0807D194.o(.text);
        src/code_0807DD38.o(.text);
        src/code_0807DD68.o(.text);
        asm/code_0807DDA8.o(.text);
        src/code_0807E438.o(.text);
        asm/code_0807E4B8.o(.text);
        src/code_0807EE14.o(.text);
        src/code_0807EE44.o(.text);
        asm/code_0807EE84.o(.text);
        src/code_0807F580.o(.text);
        src/code_0807F5B0.o(.text);
        asm/code_0807F5F0.o(.text);
        src/code_0808045C.o(.text);
        src/code_0808048C.o(.text);
        asm/code_080804CC.o(.text);
        src/code_08080D94.o(.text);
        src/code_08080DC4.o(.text);
        asm/code_08080E04.o(.text);
        src/code_08081A40.o(.text);
        src/code_08081A70.o(.text);
        asm/code_08081AB0.o(.text);
        src/code_08082114.o(.text);
        src/code_08082144.o(.text);
        asm/code_08082184.o(.text);
        src/code_08083AEC.o(.text);
        asm/code_08083B2C.o(.text);
        src/code_080854F4.o(.text);
        src/code_08085528.o(.text);
        asm/code_08085568.o(.text);
        src/code_08088168.o(.text);
        src/code_080881AC.o(.text);
        asm/code_080881EC.o(.text);
        src/code_0808AB38.o(.text);
        src/code_0808AB68.o(.text);
        asm/code_0808ABA8.o(.text);
        src/code_0808C56C.o(.text);
        src/code_0808C59C.o(.text);
        asm/code_0808C5DC.o(.text);
        src/code_0808ECD8.o(.text);
        src/code_0808ED08.o(.text);
        asm/code_0808ED48.o(.text);
        src/code_08090E54.o(.text);
        src/code_08090E84.o(.text);
        asm/code_08090EC4.o(.text);
        src/code_080925C4.o(.text);
        asm/code_08092604.o(.text);
        src/code_080931B0.o(.text);
        src/code_080931E0.o(.text);
        asm/code_08093220.o(.text);
        src/code_08093A58.o(.text);
        src/code_08093A88.o(.text);
        asm/code_08093AC8.o(.text);
        src/code_080948F8.o(.text);
        asm/code_080948FC.o(.text);
        src/code_0809A4D4.o(.text);
        src/code_0809A518.o(.text);
        asm/code_0809A558.o(.text);

        src/actor.o(.text);
        src/animal.o(.text);
        src/pet.o(.text);
        src/livestock.o(.text);
        src/barn_animal.o(.text);
        src/dog.o(.text);
        src/horse.o(.text);
        src/chicken.o(.text);
        src/cow.o(.text);
        src/sheep.o(.text);
        src/code_actor_0809BFE8.o(.text);
        asm/code_actor_0809BFE8.o(.text);
        src/code_0809C318.o(.text);
        asm/code_0809C32C.o(.text);
        src/npc.o(.text);
        src/bachelorette.o(.text);
        src/harvest_sprite.o(.text);

        asm/code_809E804.o(.text);
        src/code_080A3744.o(.text);
        asm/code_080A3774.o(.text);
        src/code_080B3BE4.o(.text);
        src/code_080B3C0C.o(.text);
        asm/code_080B3C3C.o(.text);
        src/code_080BC898.o(.text);
        src/code_080BC8C0.o(.text);
        asm/code_080BC8F0.o(.text);
        src/code_080C0D1C.o(.text);
        src/code_080C0D44.o(.text);
        asm/code_080C0D74.o(.text);
        src/code_080C7EA8.o(.text);
        src/code_080C7ED0.o(.text);
        asm/code_080C7F00.o(.text);
        src/code_080CAD08.o(.text);
        asm/code_080CAD10.o(.text);
        src/code_080D0C68.o(.text);
        asm/code_080D0CD4.o(.text);

        src/m4a_1.o(.text);
        src/m4a.o(.text);
        asm/code_lib_syscall.o(.text);
        asm/code_lib_sram.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        /* these need to be recompiled using -mthumb-interwork */
        /* *libc.a:memcmp.o(.text); */
        /* *libc.a:memcpy.o(.text); */
        /* *libc.a:memmove.o(.text); */
        /* *libc.a:memset.o(.text); */
        /* *libc.a:strcat.o(.text); */
        /* *libc.a:strcpy.o(.text); */
        /* *libc.a:strlen.o(.text); */
        asm/code_libc_string.o(.text);

        asm/code_linkonce.o(.text.code_080D3BC0);
        *(.gnu.linkonce.t.__as__6AnimalRC6Animal);
        asm/code_linkonce.o(.text.code_080D68C0);
        src/code_080D6D98.o(.text);
        asm/code_080D6DB8.o(.text);
        src/code_080D7944.o(.text);
        asm/code_080D7990.o(.text);
        src/code_080D79CC.o(.text);
        asm/code_080D7AAC.o(.text);
        src/code_080D7AAC.o(.text);
        src/code_080D7AD4.o(.text);
        src/code_080D7B04.o(.text);
        asm/code_080D7B2C.o(.text);
        *(.gnu.linkonce.t.__as__5SheepRC5Sheep);
        *(.gnu.linkonce.t.__as__3CowRC3Cow);
        *(.gnu.linkonce.t.__as__9LivestockRC9Livestock);
        *(.gnu.linkonce.t.push_back__t8FixedVec2Z12RucksackItemUl8G12RucksackItem);
        *(.gnu.linkonce.t.push_front__t8FixedVec2Z12RucksackItemUl8G12RucksackItem);
        *(.gnu.linkonce.t.push_back__t8FixedVec2Z9ToolStackUl8G9ToolStack);
        *(.gnu.linkonce.t.push_front__t8FixedVec2Z9ToolStackUl8G9ToolStack);
        asm/code_linkonce.o(.text.code_080D7CFC);
        src/code_080E09B0.o(.text);
        asm/code_080E09BC.o(.text);
        *(.gnu.linkonce.t.__lower_bound__H4ZPC12JumpTableEntZiZ28ScriptJumpTableSearchCompareZl_X01T0RCX11X21PX31_X01);
        asm/code_linkonce.o(.text.code_080E0EF0);
        src/code_080E10F0.o(.text);
        asm/code_080E10F8.o(.text);
        src/code_080E41B0.o(.text);
        asm/code_080E41E8.o(.text);
        src/code_080E44E4.o(.text);
        asm/code_080E4510.o(.text);

        *(.gnu.linkonce.d.__vt_6AScene);
        *(.gnu.linkonce.d.__vt_13AUnk_0800080C);
        . = ALIGN(4); asm/vtables.o(.rodata);
        *(.gnu.linkonce.d.__vt_7AEntity);
        . = ALIGN(4); asm/vtables.o(.rodata.080E6284);
        *(.gnu.linkonce.d.__vt_13AScriptEngine);
        . = ALIGN(4); asm/vtables.o(.rodata.080E7824);

        . = ALIGN(4); asm/data/data_080E8610.o(.rodata);
        src/shipping_bin.o(.rodata);
        src/record_player.o(.rodata);
        . = . + 0x28;
        . = ALIGN(4); src/item.o(.rodata);
        /* . = ALIGN(4); src/code_0800E2E4.o(.rodata); */
        . = ALIGN(4); asm/data/data_080F0348.o(.rodata);
        . = ALIGN(4); src/data_schedules.o(.rodata);
        . = ALIGN(4); asm/data/data_080F1A80.o(.rodata);
        . = ALIGN(4); src/script_engine.o(.rodata);
        . = . + 0x08;
        . = ALIGN(4); asm/data/data_080F9EB8.o(.rodata);
        . = ALIGN(4); src/sound_data.o(.rodata.*);
        . = ALIGN(4); asm/data/data_0813B288.o(.rodata);
    } > ROM = 0xFF

    .iwram : ALIGN(4)
    {
        asm/code_iwram.o(.iwram);
    } > IWRAM AT> ROM = 0xFF

    __iwram_vma     = ADDR(.iwram);
    __iwram_vma_end = ADDR(.iwram) + SIZEOF(.iwram);
    __iwram_lma     = LOADADDR(.iwram);

    /* Pads up to the payload. Size is COMPUTED from the current position:
     * a hardcoded size (formerly 0x08800000 - 0x0875C240) silently breaks
     * the moment any upstream object's size changes.
     */
    .pad : ALIGN(4)
    {
        LONG(0);
        . = 0x08800000 - (__iwram_lma + SIZEOF(.iwram));
    } > ROM = 0xFF

    .franglais_payload 0x08800000 : ALIGN(4)
    {
        src/franglais_payload.o(.franglais_payload);
    } > ROM = 0xFF

    /* DWARF 2 sections */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    .debug_info     0 : { *(.debug_info) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
