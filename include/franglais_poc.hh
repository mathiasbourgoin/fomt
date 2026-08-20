#ifndef FRANGLAIS_POC_HH
#define FRANGLAIS_POC_HH

#include "prelude.h"

#define FRANGLAIS_THUMB_PTR(name) ((name##_fn)(FRANGLAIS_##name | 1u))

#define FRANGLAIS_franglais_article_desc 0x08801A58u
#define FRANGLAIS_franglais_article_name 0x08801A2Cu
#define FRANGLAIS_franglais_farmer_stamina 0x08801074u
#define FRANGLAIS_franglais_food_desc 0x088019FCu
#define FRANGLAIS_franglais_food_name 0x088019D0u
#define FRANGLAIS_franglais_get_string 0x08800000u
#define FRANGLAIS_franglais_read_keys 0x08801870u
#define FRANGLAIS_franglais_scene_name 0x08801C28u
#define FRANGLAIS_franglais_scene_text 0x08801B7Cu
#define FRANGLAIS_franglais_scene_text_mode 0x08801BB4u
#define FRANGLAIS_franglais_scene_text_mode_arg 0x08801BECu
#define FRANGLAIS_franglais_scene_text_plain 0x08801B44u
#define FRANGLAIS_franglais_season_of 0x08801944u
#define FRANGLAIS_franglais_tool_desc 0x088019A0u
#define FRANGLAIS_franglais_tool_name 0x08801974u

#endif // FRANGLAIS_POC_HH
