execute unless score #game match_mode matches 1..6 run tellraw @s {"text":"[×] Loadout commands are disabled until the match starts.","color":"red"}
execute unless score #game match_mode matches 1..6 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless score #game match_mode matches 1..6 run return 0

execute if score #game match_mode matches 6 if score #game wz_state matches 0 run tellraw @s {"text":"[×] Loadout commands are disabled until both beacons are placed.","color":"red"}
execute if score #game match_mode matches 6 if score #game wz_state matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 6 if score #game wz_state matches 0 run return 0

execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Vehicles are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

tag @s remove allowed
execute if score #map map matches 0 run tag @s add allowed
execute if score #map map matches 7 run tag @s add allowed
execute if score #map map matches 9 run tag @s add allowed
execute if score #map map matches 11 run tag @s add allowed
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Vehicle loadouts are not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={vehicle_cd=1..}] run scoreboard players operation @s vehicle_cd_sec = @s vehicle_cd
execute as @s[scores={vehicle_cd=1..}] run scoreboard players operation @s vehicle_cd_sec /= ticks_divisor const
execute as @s[scores={vehicle_cd=1..}] run tellraw @s ["",{"text":"[×] Vehicle loadout on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"vehicle_cd_sec"}},{"text":"s"}]
execute as @s[scores={vehicle_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s vehicle_cd matches 1.. run return 0

clear @s superbwarfare:crowbar
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:sodayo_pick_up_hmg",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:sodayo_pick_up_tow",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:sodayo_pick_up_rocket",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:lav_150",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:lav_25",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:bmp_2",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:lav_ad",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:ztz_99a",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:plz_05",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:fh_77bw",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:gepard-1a2",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:pa_pantsir",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:m_777",Count:1b}}
clear @s mcsp:typhoon_30_spawn_item
clear @s mcsp:typhoon_tricolor_30_spawn_item
clear @s mcsp:typhoon_snow_30_spawn_item
clear @s mcsp:vdv_standart_spawn_item
clear @s mcsp:vdv_desert_spawn_item
clear @s mcsp:vdv_snow_spawn_item
clear @s mcsp:humvee_standart_spawn_item
clear @s mcsp:humvee_carc_spawn_item
clear @s mcsp:humvee_sand_spawn_item
clear @s mcsp:humvee_mk19_spawn_item
clear @s mcsp:bmd_4_spawn_item
clear @s mcsp:bmd_4_camo_spawn_item
clear @s mcsp:sprut_spawn_item
clear @s mcsp:sprut_camo_spawn_item
clear @s mcsp:m3a3_bradley_spawn_item
clear @s mcsp:m3a3_bradley_busk_ii_spawn_item
clear @s mcsp:m3a3_bradley_busk_iii_spawn_item
clear @s mcsp:m3a3_bradley_sand_spawn_item
clear @s mcsp:m3a3_bradley_busk_ii_sand_spawn_item
clear @s mcsp:m3a3_bradley_busk_iii_sand_spawn_item
clear @s mcsp:m1a2_spawn_item
clear @s mcsp:m1a2_sep_spawn_item
clear @s mcsp:m1a2_sand_spawn_item
clear @s mcsp:m1a2_sep_sand_spawn_item
clear @s mcsp:ural_green_spawn_item
clear @s mcsp:ural_tricolor_spawn_item
clear @s mcsp:tos_1a_green_spawn_item
clear @s mcsp:tos_1a_tricolor_spawn_item
clear @s mcsp:t90a_green_spawn_item
clear @s mcsp:t90a_tricolor_spawn_item
clear @s mcsp:ztz99a_sand_spawn_item
clear @s mcsp:t80u_green_spawn_item
clear @s mcsp:t80u_camo_spawn_item
clear @s mcsp:t80u_pixel_spawn_item
clear @s mcsp:t80u_kantemir_spawn_item
clear @s mcsp:t80bv_green_spawn_item
clear @s mcsp:t80bv_camo_spawn_item
clear @s mcsp:t80bv_pixel_spawn_item
clear @s mcsp:t80bv_kantemir_spawn_item
clear @s mcsp:zbd04a_green_spawn_item
clear @s mcsp:zbd04a_sand_spawn_item
clear @s mcsp:mlrs_shells
clear @s mcsp:40mm_explosive

give @s superbwarfare:crowbar 1
give @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:lav_25",Count:1b}} 1

clear @s superbwarfare:medium_anti_ground_missile
give @s superbwarfare:medium_anti_ground_missile 16

execute store result score @s temp_count run clear @s superbwarfare:small_shell_ap 0
execute if score @s temp_count matches ..64 run give @s superbwarfare:small_shell_ap 64

execute store result score @s temp_count run clear @s superbwarfare:small_shell_he 0
execute if score @s temp_count matches ..64 run give @s superbwarfare:small_shell_he 64

clear @s superbwarfare:small_shell_gs
give @s superbwarfare:small_shell_gs 32

clear @s superbwarfare:rifle_ammo
give @s superbwarfare:rifle_ammo 192

clear @s superbwarfare:vehicle_smoke_ammo
give @s superbwarfare:vehicle_smoke_ammo 8

tellraw @s {"text":"[✔] LAV-25 loadout received!","color":"green"}

execute unless score #game match_mode matches 4 run scoreboard players set @s vehicle_cd 12000