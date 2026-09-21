execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Helicopters are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

tag @s remove allowed
execute if score #map map matches 0 run tag @s add allowed
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Helicopter loadouts are not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={heli_cd=1..}] run scoreboard players operation @s heli_cd_sec = @s heli_cd
execute as @s[scores={heli_cd=1..}] run scoreboard players operation @s heli_cd_sec /= ticks_divisor const
execute as @s[scores={heli_cd=1..}] run tellraw @s ["",{"text":"[×] Helicopter loadout on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"heli_cd_sec"}},{"text":"s"}]
execute as @s[scores={heli_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s heli_cd matches 1.. run return 0

clear @s superbwarfare:crowbar
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:ah_6",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:mh_60m",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:v-22",Count:1b}}
clear @s superbwarfare:small_rocket

give @s superbwarfare:crowbar 1
give @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:mh_60m",Count:1b}} 1

execute store result score @s temp_count run clear @s superbwarfare:small_shell 0
execute if score @s temp_count matches ..128 run give @s superbwarfare:small_shell 128

give @s superbwarfare:small_rocket 32

tellraw @s {"text":"[✔] MH-60M Black Hawk loadout received!","color":"green"}

execute unless score #game match_mode matches 4 if score #map map matches 13 run scoreboard players set @s heli_cd 36000
execute unless score #game match_mode matches 4 unless score #map map matches 13 run scoreboard players set @s heli_cd 12000