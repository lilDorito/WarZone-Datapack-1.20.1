execute as @a[team=] run scoreboard players add @s kills 0
execute as @a[team=] run scoreboard players add @s deaths 0

# TDM-2
execute if score #game match_mode matches 1 as @a[team=] run tag @s add unassigned
execute if score #game match_mode matches 1 run function loadouts:admin/tdm/assign_tdm2

# TDM-4
execute if score #game match_mode matches 3 as @a[team=] run tag @s add unassigned
execute if score #game match_mode matches 3 run function loadouts:admin/tdm/assign_tdm4

# FFA / Vehicle Mode
execute if score #game match_mode matches 2 run function loadouts:admin/team/assign_colors
execute if score #game match_mode matches 4 run function loadouts:admin/team/assign_colors

# WarZone
execute if score #game match_mode matches 6 as @a[team=] run tag @s add unassigned
execute if score #game match_mode matches 6 run function loadouts:admin/tdm/assign_tdm2