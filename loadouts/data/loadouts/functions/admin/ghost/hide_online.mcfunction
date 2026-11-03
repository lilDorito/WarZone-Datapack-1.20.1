execute unless score @s gid matches 1.. run return 0
scoreboard players operation #cur gid = @s gid
execute as @e[type=text_display,tag=ghost] if score @s gid = #cur gid run tag @s remove end_pending