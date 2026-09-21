scoreboard players set #redCount temp_count 0
scoreboard players set #blueCount temp_count 0
execute as @a[team=Red] run scoreboard players add #redCount temp_count 1
execute as @a[team=Blue] run scoreboard players add #blueCount temp_count 1

execute if score #redCount temp_count <= #blueCount temp_count run team join Red @s
execute if score #redCount temp_count <= #blueCount temp_count run function loadouts:admin/tdm/spawns/apply_red_spawn
execute if score #redCount temp_count > #blueCount temp_count run team join Blue @s
execute if score #redCount temp_count > #blueCount temp_count run function loadouts:admin/tdm/spawns/apply_blue_spawn

tag @s remove unassigned

execute if entity @a[tag=unassigned] run function loadouts:admin/tdm/assign_tdm2