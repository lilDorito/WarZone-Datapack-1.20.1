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

tag @s remove allowed
execute if score #map map matches 0 run tag @s add allowed
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Strategic drones are not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={drone_strategic_cd=1..}] run scoreboard players operation @s drone_strategic_cd_sec = @s drone_strategic_cd
execute as @s[scores={drone_strategic_cd=1..}] run scoreboard players operation @s drone_strategic_cd_sec /= ticks_divisor const
execute as @s[scores={drone_strategic_cd=1..}] run tellraw @s ["",{"text":"[×] Strategic drones on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"drone_strategic_cd_sec"}},{"text":"s"}]
execute as @s[scores={drone_strategic_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s drone_strategic_cd matches 1.. run return 0

clear @s ata:shahed
clear @s ata:orlan
clear @s sbw_ew_addon:kub_bla
clear @s sbw_ew_addon:bayraktar_tb2
clear @s ata:strike_uav_launcher
clear @s ata:strike_uav_tablet
clear @s ata:recon_uav_launcher
clear @s ata:recon_uav_tablet

give @s ata:shahed 1
give @s ata:strike_uav_launcher 1
give @s ata:strike_uav_tablet 1

tellraw @s {"text":"[✔] Shahed strike drone received!","color":"green"}

scoreboard players set @s drone_strategic_cd 12000