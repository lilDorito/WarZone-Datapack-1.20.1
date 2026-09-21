data remove storage loadouts:spawns Red
data remove storage loadouts:spawns Blue
data remove storage loadouts:spawns Green
data remove storage loadouts:spawns Yellow
data remove storage loadouts:spawns Red2
data remove storage loadouts:spawns Blue2
data remove storage loadouts:spawns Green2
data remove storage loadouts:spawns Yellow2
data remove storage loadouts:spawns Red3
data remove storage loadouts:spawns Blue3
data remove storage loadouts:spawns Green3
data remove storage loadouts:spawns Yellow3

wp remove minecraft:overworld Spawns "Red Spawn"
wp remove minecraft:overworld Spawns "Blue Spawn"
wp remove minecraft:overworld Spawns "Green Spawn"
wp remove minecraft:overworld Spawns "Yellow Spawn"
wp remove minecraft:overworld Spawns "Red Spawn 2"
wp remove minecraft:overworld Spawns "Blue Spawn 2"
wp remove minecraft:overworld Spawns "Green Spawn 2"
wp remove minecraft:overworld Spawns "Yellow Spawn 2"
wp remove minecraft:overworld Spawns "Red Spawn 3"
wp remove minecraft:overworld Spawns "Blue Spawn 3"
wp remove minecraft:overworld Spawns "Green Spawn 3"
wp remove minecraft:overworld Spawns "Yellow Spawn 3"

tellraw @a {"text":"[>] All spawns cleared!","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1