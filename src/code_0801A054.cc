#include "prelude.h"

struct MapCollisionView
{
    void *tiles;
    void *metadata;
    u16 width;
    u16 height;

    MapCollisionView(void *tiles, void *metadata, u16 width, u16 height)
        : tiles(tiles), metadata(metadata), width(width), height(height)
    {
    }

    MapCollisionView(void *tiles, u16 width, u16 height)
        : tiles(tiles), metadata(nullptr), width(width), height(height)
    {
    }
};

struct ActiveMap
{
    u32 map_id;
    u32 data_id;
    u8 padding[0x24];
    void *tiles;
};

EC u32 func_0800E324(void const *date);
EC u32 GetUpgradeLevel__C9FarmHouse(void const *house);
EC u32 GetUpgradeLevel__C4Coop(void const *coop);
EC u32 GetUpgradeLevel__C4Barn(void const *barn);
EC u32 func_0803A8A4(u32 map_id, u32 season, u32 house_level, u32 coop_level,
                     u32 barn_level);
EC u8 *GetMapData(u32 map_id);

EC MapCollisionView func_0801A054(u8 *self, u32 requested_map)
{
    if (requested_map > 0x233)
        return MapCollisionView(nullptr, nullptr, 0, 0);

    u32 current_map = (*(ActiveMap **)(self + 4))->map_id;

    if (requested_map == 2 && current_map != 2)
        return MapCollisionView(*(void **)(self + 0x1050), 0x80, 0x58);

    u32 data_id;
    if (current_map == requested_map)
    {
        data_id = (*(ActiveMap **)(self + 4))->data_id;
    }
    else
    {
        u8 **game_state = (u8 **)(self + 0x1038);
        u32 season = func_0800E324(*game_state + 0x10);
        u32 house_level = GetUpgradeLevel__C9FarmHouse(*game_state + 0x1F4);
        u32 coop_level = GetUpgradeLevel__C4Coop(*game_state + 0x410);
        u32 barn_level = GetUpgradeLevel__C4Barn(*game_state + 0x5F0);
        data_id = func_0803A8A4(requested_map, season, house_level, coop_level,
                               barn_level);
    }

    register u8 *map_data asm("r0") = GetMapData(data_id);
    asm("" : "+r"(map_data));
    u16 width = *(u16 *)(map_data + 0x20);
    u16 height = *(u16 *)(map_data + 0x22);
    void *tiles;
    void *metadata;

    if (current_map == requested_map)
    {
        ActiveMap *active_map = *(ActiveMap **)(self + 4);
        GetMapData(active_map->data_id);
        metadata = nullptr;
        tiles = active_map->tiles;
    }
    else
    {
        metadata = *(void **)(map_data + 0x1C);
        tiles = *(void **)(map_data + 0x18);
    }

    return MapCollisionView(tiles, metadata, width, height);
}
