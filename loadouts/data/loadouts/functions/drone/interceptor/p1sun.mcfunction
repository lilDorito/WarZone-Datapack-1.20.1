execute unless score #game match_mode matches 1..5 run tellraw @s {"text":"[×] Loadout commands are disabled until the match starts.","color":"red"}
execute unless score #game match_mode matches 1..5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless score #game match_mode matches 1..5 run return 0

execute if score #game match_mode matches 5 if score #game wz_state matches 0 run tellraw @s {"text":"[×] Loadout commands are disabled until both beacons are placed.","color":"red"}
execute if score #game match_mode matches 5 if score #game wz_state matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 if score #game wz_state matches 0 run return 0

execute if score #game variant matches 2 run tellraw @s {"text":"[×] This loadout is disabled in Snipers mode!","color":"red"}
execute if score #game variant matches 2 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game variant matches 2 run return 0

execute if score #game variant matches 1 run tellraw @s {"text":"[×] Drones are disabled in Vehicles mode!","color":"red"}
execute if score #game variant matches 1 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game variant matches 1 run return 0

execute if score #game match_mode matches 4 run tellraw @s {"text":"[×] Drones are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 4 run return 0

tag @s remove allowed
execute if score #map map matches 0 run tag @s add allowed
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Strategic / interceptor drones are not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={drone_strategic_cd=1..}] run scoreboard players operation @s drone_strategic_cd_sec = @s drone_strategic_cd
execute as @s[scores={drone_strategic_cd=1..}] run scoreboard players operation @s drone_strategic_cd_sec /= ticks_divisor const
execute as @s[scores={drone_strategic_cd=1..}] run tellraw @s ["",{"text":"[×] Strategic / interceptor drones on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"drone_strategic_cd_sec"}},{"text":"s"}]
execute as @s[scores={drone_strategic_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s drone_strategic_cd matches 1.. run return 0

clear @s mhwarfare:alexa_spatium
clear @s mhwarfare:sting
clear @s mhwarfare:p1_sun

give @s mhwarfare:p1_sun 4

clear @s superbwarfare:monitor
give @s superbwarfare:monitor 2

clear @s superbwarfare:battery
give @s superbwarfare:battery{Energy:100000} 2

tellraw @s {"text":"[✔] P1-Sun interceptor drones received!","color":"green"}

scoreboard players set @s drone_strategic_cd 8400