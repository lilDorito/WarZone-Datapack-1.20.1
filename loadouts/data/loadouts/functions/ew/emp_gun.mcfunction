execute unless score #game match_mode matches 1..6 run tellraw @s {"text":"[×] Loadout commands are disabled until the match starts.","color":"red"}
execute unless score #game match_mode matches 1..6 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless score #game match_mode matches 1..6 run return 0

execute if score #game match_mode matches 6 if score #game wz_state matches 0 run tellraw @s {"text":"[×] Loadout commands are disabled until both beacons are placed.","color":"red"}
execute if score #game match_mode matches 6 if score #game wz_state matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 6 if score #game wz_state matches 0 run return 0

execute if score #game match_mode matches 4 run tellraw @s {"text":"[×] EW loadouts are disabled in Vehicle Mode!","color":"red"}
execute if score #game match_mode matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 4 run return 0
execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] EW loadouts are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

tag @s remove allowed
execute if score #map map matches 0 run tag @s add allowed
execute if score #map map matches 1 run tag @s add allowed
execute if score #map map matches 2 run tag @s add allowed
execute if score #map map matches 6 run tag @s add allowed
execute if score #map map matches 7 run tag @s add allowed
execute if score #map map matches 8 run tag @s add allowed
execute if score #map map matches 9 run tag @s add allowed
execute if score #map map matches 10 run tag @s add allowed
execute if score #map map matches 11 run tag @s add allowed
execute if score #map map matches 13 run tag @s add allowed
execute if score #map map matches 14 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] EW loadouts are not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={ew_cd=1..}] run scoreboard players operation @s ew_cd_sec = @s ew_cd
execute as @s[scores={ew_cd=1..}] run scoreboard players operation @s ew_cd_sec /= ticks_divisor const
execute as @s[scores={ew_cd=1..}] run tellraw @s ["",{"text":"[×] EW loadouts on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"ew_cd_sec"}},{"text":"s"}]
execute as @s[scores={ew_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s ew_cd matches 1.. run return 0

clear @s sbw_ew_addon:direction_finder
clear @s sbw_ew_addon:jammer
clear @s sbw_ew_addon:portable_jammer
clear @s sbw_ew_addon:phased_array_module
clear @s sbw_ew_addon:electromagnetic_gun
clear @s sbw_ew_addon:drone_interceptor

give @s sbw_ew_addon:electromagnetic_gun 1

execute store result score @s temp_count run clear @s superbwarfare:battery 0
execute if score @s temp_count matches ..1 run give @s superbwarfare:battery{Energy:100000} 1

tellraw @s {"text":"[✔] EMP gun received!","color":"green"}

scoreboard players set @s ew_cd 9600