scoreboard players add @s kills 0
scoreboard players add @s kills_total 0
scoreboard players add @s deaths 0

scoreboard players operation #cur gid = @s gid
scoreboard players operation #gp temp_count = @s kills
scoreboard players operation #gk temp_count = @s kills_total
scoreboard players operation #gd temp_count = @s deaths

execute as @e[type=text_display,tag=ghost] if score @s gid = #cur gid run function loadouts:admin/ghost/copy