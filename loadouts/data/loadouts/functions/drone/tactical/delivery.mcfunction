execute unless score #game match_mode matches 1..6 run tellraw @s {"text":"[×] Loadout commands are disabled until the match starts.","color":"red"}
execute unless score #game match_mode matches 1..6 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless score #game match_mode matches 1..6 run return 0

execute if score #game match_mode matches 6 if score #game wz_state matches 0 run tellraw @s {"text":"[×] Loadout commands are disabled until both beacons are placed.","color":"red"}
execute if score #game match_mode matches 6 if score #game wz_state matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 6 if score #game wz_state matches 0 run return 0

execute if score #game match_mode matches 4 run tellraw @s {"text":"[×] Drones are disabled in Vehicle Mode!","color":"red"}
execute if score #game match_mode matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 4 run return 0
execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Drones are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

execute if score #off_drones global matches 1 run tellraw @s {"text":"[×] Tactical drones are disabled for this match!","color":"red"}
execute if score #off_drones global matches 1 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #off_drones global matches 1 run return 0

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
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Tactical drones are not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={drone_tactical_cd=1..}] run scoreboard players operation @s drone_tactical_cd_sec = @s drone_tactical_cd
execute as @s[scores={drone_tactical_cd=1..}] run scoreboard players operation @s drone_tactical_cd_sec /= ticks_divisor const
execute as @s[scores={drone_tactical_cd=1..}] run tellraw @s ["",{"text":"[×] Tactical drones on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"drone_tactical_cd_sec"}},{"text":"s"}]
execute as @s[scores={drone_tactical_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s drone_tactical_cd matches 1.. run return 0

clear @s superbwarfare:drone
clear @s sbw_ew_addon:recon_drone
clear @s sbw_ew_addon:heavy_bomber_drone
clear @s sbw_ew_addon:delivery_drone
clear @s superbwarfare:monitor

give @s sbw_ew_addon:delivery_drone 2
give @s superbwarfare:monitor 2

clear @s sbw_ew_addon:extraction_crate
give @s sbw_ew_addon:extraction_crate 2

clear @s superbwarfare:battery
give @s superbwarfare:battery{Energy:100000} 2

tellraw @s {"text":"[✔] Delivery drone received!","color":"green"}

scoreboard players set @s drone_tactical_cd 6000