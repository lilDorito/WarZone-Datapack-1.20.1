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
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Thermal vision is not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={thermal_cd=1..}] run scoreboard players operation @s thermal_cd_sec = @s thermal_cd
execute as @s[scores={thermal_cd=1..}] run scoreboard players operation @s thermal_cd_sec /= ticks_divisor const
execute as @s[scores={thermal_cd=1..}] run tellraw @s ["",{"text":"[×] Thermal vision on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"thermal_cd_sec"}},{"text":"s"}]
execute as @s[scores={thermal_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s thermal_cd matches 1.. run return 0

# Fallback
execute if entity @s[tag=thermal_on] run tellraw @s {"text":"[×] Thermal vision already active!","color":"red"}
execute if entity @s[tag=thermal_on] run return 0

tag @s add thermal_on

clear @s superbwarfare:ru_helmet_6b47{display:{Name:'{"text":"Marsh Heavy Helmet"}'}}
clear @s superbwarfare:us_helmet_pastg{display:{Name:'{"text":"Desert Heavy Helmet"}'}}
clear @s mcsp:opscore_helmet{display:{Name:'{"text":"Light Tac Helmet"}'}}
item replace entity @s armor.head with thermal_imaging_goggles:thermal_imaging_goggles_helmet

scoreboard players set @s thermal_active 1
scoreboard players set @s thermal_timer 600
scoreboard players set @s thermal_cd 6600

tellraw @a ["", {"selector": "@s", "color": "gold"}, {"text":" has activated thermal vision!","color":"gold"}]
execute at @s run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1