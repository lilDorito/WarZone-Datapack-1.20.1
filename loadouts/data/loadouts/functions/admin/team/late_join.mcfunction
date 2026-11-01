execute as @a[team=] run scoreboard players add @s kills 0
execute as @a[team=] run scoreboard players add @s deaths 0

# FFA (also Vehicles and Snipers)
execute if score #game match_mode matches 1 run function loadouts:admin/team/assign_colors

# TDM-2
execute if score #game match_mode matches 2 as @a[team=] run tag @s add unassigned
execute if score #game match_mode matches 2 run function loadouts:admin/tdm/assign_tdm2

# TDM-4
execute if score #game match_mode matches 3 as @a[team=] run tag @s add unassigned
execute if score #game match_mode matches 3 run function loadouts:admin/tdm/assign_tdm4

# Gun Game
execute if score #game match_mode matches 4 run function loadouts:admin/team/assign_colors
execute if score #game match_mode matches 4 as @a[tag=!has_started] run function loadouts:admin/gungame/late_join_player

# WarZone
execute if score #game match_mode matches 5 as @a[team=] run tag @s add unassigned
execute if score #game match_mode matches 5 run function loadouts:admin/tdm/assign_tdm2

# Radios
execute if score #game match_mode matches 2..3 as @a[team=!,tag=!has_radio] run function loadouts:admin/team/give_radio
execute if score #game match_mode matches 5 as @a[team=!,tag=!has_radio] run function loadouts:admin/team/give_radio