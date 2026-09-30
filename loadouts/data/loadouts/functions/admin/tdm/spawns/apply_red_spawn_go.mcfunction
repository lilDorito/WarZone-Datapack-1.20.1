scoreboard players set #spawn_slots temp_count 3
scoreboard players add #redSpawnCounter temp_count 1
scoreboard players operation #spawnPick temp_count = #redSpawnCounter temp_count
scoreboard players operation #spawnPick temp_count %= #spawn_slots temp_count

execute if score #spawnPick temp_count matches 1 unless data storage loadouts:spawns Red2 run scoreboard players set #spawnPick temp_count 0
execute if score #spawnPick temp_count matches 2 unless data storage loadouts:spawns Red3 run scoreboard players set #spawnPick temp_count 0

execute if score #spawnPick temp_count matches 0 run wp tp minecraft:overworld Spawns "Red Spawn"
execute if score #spawnPick temp_count matches 1 run wp tp minecraft:overworld Spawns "Red Spawn 2"
execute if score #spawnPick temp_count matches 2 run wp tp minecraft:overworld Spawns "Red Spawn 3"

spawnpoint @s ~ ~ ~