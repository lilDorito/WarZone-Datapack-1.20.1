scoreboard players set #redCount temp_count 0
scoreboard players set #blueCount temp_count 0
scoreboard players set #greenCount temp_count 0
scoreboard players set #yellowCount temp_count 0
execute as @a[team=Red] run scoreboard players add #redCount temp_count 1
execute as @a[team=Blue] run scoreboard players add #blueCount temp_count 1
execute as @a[team=Green] run scoreboard players add #greenCount temp_count 1
execute as @a[team=Yellow] run scoreboard players add #yellowCount temp_count 1

scoreboard players operation #minCount temp_count = #redCount temp_count
execute if score #blueCount temp_count < #minCount temp_count run scoreboard players operation #minCount temp_count = #blueCount temp_count
execute if score #greenCount temp_count < #minCount temp_count run scoreboard players operation #minCount temp_count = #greenCount temp_count
execute if score #yellowCount temp_count < #minCount temp_count run scoreboard players operation #minCount temp_count = #yellowCount temp_count

execute if score #redCount temp_count = #minCount temp_count run team join Red @s
execute if score #redCount temp_count = #minCount temp_count run function loadouts:admin/tdm/spawns/apply_red_spawn
execute unless score #redCount temp_count = #minCount temp_count if score #blueCount temp_count = #minCount temp_count run team join Blue @s
execute unless score #redCount temp_count = #minCount temp_count if score #blueCount temp_count = #minCount temp_count run function loadouts:admin/tdm/spawns/apply_blue_spawn
execute unless score #redCount temp_count = #minCount temp_count unless score #blueCount temp_count = #minCount temp_count if score #greenCount temp_count = #minCount temp_count run team join Green @s
execute unless score #redCount temp_count = #minCount temp_count unless score #blueCount temp_count = #minCount temp_count if score #greenCount temp_count = #minCount temp_count run function loadouts:admin/tdm/spawns/apply_green_spawn
execute unless score #redCount temp_count = #minCount temp_count unless score #blueCount temp_count = #minCount temp_count unless score #greenCount temp_count = #minCount temp_count run team join Yellow @s
execute unless score #redCount temp_count = #minCount temp_count unless score #blueCount temp_count = #minCount temp_count unless score #greenCount temp_count = #minCount temp_count run function loadouts:admin/tdm/spawns/apply_yellow_spawn

tag @s remove unassigned

execute if entity @a[tag=unassigned] run function loadouts:admin/tdm/assign_tdm4