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

clear @s superbwarfare:he_5_inches
clear @s superbwarfare:ap_5_inches
clear @s superbwarfare:wire_guide_missile
clear @s mcsp:m1a2_sep_sand_spawn_item
clear @s mcsp:m1a2_sep_spawn_item
clear @s mcsp:bmd_4_camo_spawn_item
clear @s mcsp:m3a3_bradley_busk_iii_sand_spawn_item
clear @s mcsp:m3a3_bradley_busk_iii_spawn_item
clear @s mcsp:sprut_camo_spawn_item
clear @s mcsp:humvee_desert_standart_spawn_item
clear @s mcsp:vdv_desert_30mm_spawn_item

give @s superbwarfare:wire_guide_missile 12
give @s mcsp:m3a3_bradley_busk_iii_spawn_item 1

execute store result score @s temp_count run clear @s superbwarfare:small_shell 0
execute if score @s temp_count matches ..128 run give @s superbwarfare:small_shell 128

tellraw @s {"text":"[✔] M3A3 Bradley loadout received!","color":"green"}

execute unless score #game match_mode matches 4 run scoreboard players set @s vehicle_cd 12000