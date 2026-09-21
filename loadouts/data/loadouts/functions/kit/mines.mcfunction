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
execute if score #map map matches 5 run tag @s add allowed
execute if score #map map matches 6 run tag @s add allowed
execute if score #map map matches 7 run tag @s add allowed
execute if score #map map matches 8 run tag @s add allowed
execute if score #map map matches 9 run tag @s add allowed
execute if score #map map matches 10 run tag @s add allowed
execute if score #map map matches 11 run tag @s add allowed
execute if score #map map matches 12 run tag @s add allowed
execute if score #map map matches 12 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Mines kit is not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={mine_cd=1..}] run scoreboard players operation @s mine_cd_sec = @s mine_cd
execute as @s[scores={mine_cd=1..}] run scoreboard players operation @s mine_cd_sec /= ticks_divisor const
execute as @s[scores={mine_cd=1..}] run tellraw @s ["",{"text":"[×] Mines kit on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"mine_cd_sec"}},{"text":"s"}]
execute as @s[scores={mine_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s mine_cd matches 1.. run return 0

clear @s superbwarfare:tm_62
clear @s superbwarfare:claymore_mine
clear @s superbwarfare:blu_43_mine
give @s superbwarfare:tm_62 4
give @s superbwarfare:claymore_mine 8
give @s superbwarfare:blu_43_mine 8

tellraw @s {"text":"[✔] Mines kit received!","color":"green"}

execute if score #map map matches 13 run scoreboard players set @s mine_cd 36000
execute if score #map map matches 13 run return 0
scoreboard players set @s mine_cd 12000