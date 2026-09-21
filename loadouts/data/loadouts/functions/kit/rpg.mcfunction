execute if score #game match_mode matches 4 run tellraw @s {"text":"[×] Kits are disabled in Vehicle Mode!","color":"red"}
execute if score #game match_mode matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 4 run return 0
execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Kits are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

tag @s remove allowed
execute if score #map map matches 0 run tag @s add allowed
execute if score #map map matches 1 run tag @s add allowed
execute if score #map map matches 2 run tag @s add allowed
execute if score #map map matches 3 run tag @s add allowed
execute if score #map map matches 4 run tag @s add allowed
execute if score #map map matches 6 run tag @s add allowed
execute if score #map map matches 7 run tag @s add allowed
execute if score #map map matches 8 run tag @s add allowed
execute if score #map map matches 9 run tag @s add allowed
execute if score #map map matches 11 run tag @s add allowed
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] RPG kit is not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={rpg_cd=1..}] run scoreboard players operation @s rpg_cd_sec = @s rpg_cd
execute as @s[scores={rpg_cd=1..}] run scoreboard players operation @s rpg_cd_sec /= ticks_divisor const
execute as @s[scores={rpg_cd=1..}] run tellraw @s ["",{"text":"[×] RPG kit on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"rpg_cd_sec"}},{"text":"s"}]
execute as @s[scores={rpg_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s rpg_cd matches 1.. run return 0

clear @s superbwarfare:rpg
clear @s superbwarfare:rpg_rocket_tbg                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      
give @s superbwarfare:rpg 1
give @s superbwarfare:rpg_rocket_tbg 8

tellraw @s {"text":"[✔] RPG kit received!","color":"green"}

execute if score #map map matches 13 run scoreboard players set @s rpg_cd 36000
execute if score #map map matches 13 run return 0
scoreboard players set @s rpg_cd 12000