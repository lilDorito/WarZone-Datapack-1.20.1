scoreboard players set #spawn_slots temp_count 3
execute store result score #spawnPick temp_count run time query gametime
scoreboard players operation #spawnPick temp_count %= #spawn_slots temp_count

execute if score #spawnPick temp_count matches 1 unless data storage loadouts:spawns Red2 run scoreboard players set #spawnPick temp_count 0
execute if score #spawnPick temp_count matches 2 unless data storage loadouts:spawns Red3 run scoreboard players set #spawnPick temp_count 0

kill @e[tag=loadouts_spawn_marker]
summon minecraft:marker ~ ~ ~ {Tags:["loadouts_spawn_marker"]}

execute if score #spawnPick temp_count matches 0 as @e[tag=loadouts_spawn_marker,limit=1] run data modify entity @s Pos[0] set from storage loadouts:spawns Red.x
execute if score #spawnPick temp_count matches 0 as @e[tag=loadouts_spawn_marker,limit=1] run data modify entity @s Pos[1] set from storage loadouts:spawns Red.y
execute if score #spawnPick temp_count matches 0 as @e[tag=loadouts_spawn_marker,limit=1] run data modify entity @s Pos[2] set from storage loadouts:spawns Red.z

execute if score #spawnPick temp_count matches 1 as @e[tag=loadouts_spawn_marker,limit=1] run data modify entity @s Pos[0] set from storage loadouts:spawns Red2.x
execute if score #spawnPick temp_count matches 1 as @e[tag=loadouts_spawn_marker,limit=1] run data modify entity @s Pos[1] set from storage loadouts:spawns Red2.y
execute if score #spawnPick temp_count matches 1 as @e[tag=loadouts_spawn_marker,limit=1] run data modify entity @s Pos[2] set from storage loadouts:spawns Red2.z

execute if score #spawnPick temp_count matches 2 as @e[tag=loadouts_spawn_marker,limit=1] run data modify entity @s Pos[0] set from storage loadouts:spawns Red3.x
execute if score #spawnPick temp_count matches 2 as @e[tag=loadouts_spawn_marker,limit=1] run data modify entity @s Pos[1] set from storage loadouts:spawns Red3.y
execute if score #spawnPick temp_count matches 2 as @e[tag=loadouts_spawn_marker,limit=1] run data modify entity @s Pos[2] set from storage loadouts:spawns Red3.z

execute at @e[tag=loadouts_spawn_marker,limit=1] run spawnpoint @s ~ ~ ~
execute at @e[tag=loadouts_spawn_marker,limit=1] run tp @s ~ ~ ~
kill @e[tag=loadouts_spawn_marker]