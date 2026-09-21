# One-time scoreboard init for anyone brand new (still teamless), so the
# sidebar shows 0 instead of blank without having to re-add 0 to @a's
# kills/deaths every tick forever.
execute as @a[team=] run scoreboard players add @s kills 0
execute as @a[team=] run scoreboard players add @s deaths 0

# TDM-2: assign new (teamless) players in round-robin
execute if score #game match_mode matches 1 as @a[team=] run tag @s add unassigned
execute if score #game match_mode matches 1 run function loadouts:admin/tdm/assign_tdm2

# TDM-4: assign new (teamless) players in round-robin
execute if score #game match_mode matches 3 as @a[team=] run tag @s add unassigned
execute if score #game match_mode matches 3 run function loadouts:admin/tdm/assign_tdm4

# FFA / Vehicle Mode: give new (teamless) players their own color
execute if score #game match_mode matches 2 run function loadouts:admin/team/assign_colors
execute if score #game match_mode matches 4 run function loadouts:admin/team/assign_colors

# WarZone: assign new (teamless) players in round-robin, same as TDM-2
execute if score #game match_mode matches 6 as @a[team=] run tag @s add unassigned
execute if score #game match_mode matches 6 run function loadouts:admin/tdm/assign_tdm2