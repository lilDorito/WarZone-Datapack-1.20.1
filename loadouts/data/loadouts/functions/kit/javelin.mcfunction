execute if score #game match_mode matches 4 run tellraw @s {"text":"[×] Kits are disabled in Vehicle Mode!","color":"red"}
execute if score #game match_mode matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 4 run return 0
execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Kits are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

tag @s remove allowed
execute if score #map map matches 0 run tag @s add allowed
execute if score #map map matches 7 run tag @s add allowed
execute if score #map map matches 9 run tag @s add allowed
execute if score #map map matches 11 run tag @s add allowed
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Javelin kit is not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={javelin_cd=1..}] run scoreboard players operation @s javelin_cd_sec = @s javelin_cd
execute as @s[scores={javelin_cd=1..}] run scoreboard players operation @s javelin_cd_sec /= ticks_divisor const
execute as @s[scores={javelin_cd=1..}] run tellraw @s ["",{"text":"[×] Javelin kit on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"javelin_cd_sec"}},{"text":"s"}]
execute as @s[scores={javelin_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s javelin_cd matches 1.. run return 0

clear @s superbwarfare:javelin
clear @s superbwarfare:javelin_missile
give @s superbwarfare:javelin 1
give @s superbwarfare:javelin_missile 8

tellraw @s {"text":"[✔] Javelin kit received!","color":"green"}

scoreboard players set @s javelin_cd 12000