execute unless score #game match_mode matches 1..6 run tellraw @s {"text":"[×] Loadout commands are disabled until the match starts.","color":"red"}
execute unless score #game match_mode matches 1..6 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless score #game match_mode matches 1..6 run return 0

execute if score #game match_mode matches 6 if score #game wz_state matches 0 run tellraw @s {"text":"[×] Loadout commands are disabled until both beacons are placed.","color":"red"}
execute if score #game match_mode matches 6 if score #game wz_state matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 6 if score #game wz_state matches 0 run return 0

execute if score #game match_mode matches 4 run tellraw @s {"text":"[×] Kits are disabled in Vehicle Mode!","color":"red"}
execute if score #game match_mode matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 4 run return 0
execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Kits are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

tag @s remove allowed
execute if score #map map matches 0 run tag @s add allowed
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Orlan kit is not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={orlan_cd=1..}] run scoreboard players operation @s orlan_cd_sec = @s orlan_cd
execute as @s[scores={orlan_cd=1..}] run scoreboard players operation @s orlan_cd_sec /= ticks_divisor const
execute as @s[scores={orlan_cd=1..}] run tellraw @s ["",{"text":"[×] Orlan kit on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"orlan_cd_sec"}},{"text":"s"}]
execute as @s[scores={orlan_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s orlan_cd matches 1.. run return 0

clear @s ata:orlan
clear @s ata:orlan_launcher
clear @s ata:orlan_tablet
give @s ata:orlan 1
give @s ata:orlan_launcher 1
give @s ata:orlan_tablet 1

tellraw @s {"text":"[✔] Orlan kit received!","color":"green"}

scoreboard players set @s orlan_cd 12000