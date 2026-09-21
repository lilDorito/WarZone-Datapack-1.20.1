tag @s remove allowed
execute if score #map map matches 0 run tag @s add allowed
execute if score #map map matches 7 run tag @s add allowed
execute if score #map map matches 9 run tag @s add allowed
execute if score #map map matches 11 run tag @s add allowed
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Fuel is not needed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={fuel_cd=1..}] run scoreboard players operation @s fuel_cd_sec = @s fuel_cd
execute as @s[scores={fuel_cd=1..}] run scoreboard players operation @s fuel_cd_sec /= ticks_divisor const
execute as @s[scores={fuel_cd=1..}] run tellraw @s ["",{"text":"[×] Fuel on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"fuel_cd_sec"}},{"text":"s"}]
execute as @s[scores={fuel_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={fuel_cd=1..}] run return 0

execute store result score @s temp_count run clear @s superbwarfare:large_battery_pack{Energy:20000000} 0

execute as @s[scores={temp_count=2..}] run tellraw @s {"text":"[!] Fuel already full (2)","color":"gray"}
execute as @s[scores={temp_count=2..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={temp_count=2..}] run return 0

clear @s superbwarfare:large_battery_pack
give @s superbwarfare:large_battery_pack{Energy:20000000} 2

tellraw @s {"text":"[✔] Fuel refilled!","color":"green"}
scoreboard players set @s fuel_cd 12000