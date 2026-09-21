execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Boats are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

tag @s remove allowed
execute if score #map map matches 0 run tag @s add allowed
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Boat loadouts are not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={boat_cd=1..}] run scoreboard players operation @s boat_cd_sec = @s boat_cd
execute as @s[scores={boat_cd=1..}] run scoreboard players operation @s boat_cd_sec /= ticks_divisor const
execute as @s[scores={boat_cd=1..}] run tellraw @s ["",{"text":"[×] Boat loadout on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"boat_cd_sec"}},{"text":"s"}]
execute as @s[scores={boat_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s boat_cd matches 1.. run return 0

clear @s superbwarfare:crowbar
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:speedboat",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:rubber_boat",Count:1b}}
clear @s superbwarfare:heavy_ammo

give @s superbwarfare:crowbar 1
give @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:speedboat",Count:1b}} 1
give @s superbwarfare:heavy_ammo 128

tellraw @s {"text":"[✔] Assault Boat loadout received!","color":"green"}

execute unless score #game match_mode matches 4 if score #map map matches 13 run scoreboard players set @s boat_cd 24000
execute unless score #game match_mode matches 4 unless score #map map matches 13 run scoreboard players set @s boat_cd 8000