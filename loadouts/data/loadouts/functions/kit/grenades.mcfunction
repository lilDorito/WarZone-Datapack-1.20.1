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
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Grenades kit is not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={grenade_cd=1..}] run scoreboard players operation @s grenade_cd_sec = @s grenade_cd
execute as @s[scores={grenade_cd=1..}] run scoreboard players operation @s grenade_cd_sec /= ticks_divisor const
execute as @s[scores={grenade_cd=1..}] run tellraw @s ["",{"text":"[×] Grenades kit on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"grenade_cd_sec"}},{"text":"s"}]
execute as @s[scores={grenade_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s grenade_cd matches 1.. run return 0

clear @s superbwarfare:rgo_grenade
clear @s superbwarfare:hand_grenade
clear @s superbwarfare:m18_smoke_grenade
give @s superbwarfare:rgo_grenade 8
give @s superbwarfare:hand_grenade 8
give @s superbwarfare:m18_smoke_grenade 8

tellraw @s {"text":"[✔] Grenades kit received!","color":"green"}

scoreboard players set @s grenade_cd 12000