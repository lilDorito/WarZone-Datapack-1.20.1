scoreboard players set #spawn_slots temp_count 3
scoreboard players add #yellowSpawnCounter temp_count 1
scoreboard players operation #spawnPick temp_count = #yellowSpawnCounter temp_count
scoreboard players operation #spawnPick temp_count %= #spawn_slots temp_count

execute if score #spawnPick temp_count matches 1 unless data storage loadouts:spawns Yellow2 run scoreboard players set #spawnPick temp_count 0
execute if score #spawnPick temp_count matches 2 unless data storage loadouts:spawns Yellow3 run scoreboard players set #spawnPick temp_count 0

execute if score #spawnPick temp_count matches 0 run wp tp minecraft:overworld Spawns "Yellow Spawn"
execute if score #spawnPick temp_count matches 1 run wp tp minecraft:overworld Spawns "Yellow Spawn 2"
execute if score #spawnPick temp_count matches 2 run wp tp minecraft:overworld Spawns "Yellow Spawn 3"

spawnpoint @s ~ ~ ~