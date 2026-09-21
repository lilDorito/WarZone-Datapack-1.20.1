data remove storage loadouts:spawns Red
execute store result storage loadouts:spawns Red.x double 1 run data get entity @s Pos[0]
execute store result storage loadouts:spawns Red.y double 1 run data get entity @s Pos[1]
execute store result storage loadouts:spawns Red.z double 1 run data get entity @s Pos[2]

wp remove minecraft:overworld Spawns "Red Spawn"
wp add ~ ~ ~ Spawns "Red Spawn" "R" dark_red 0 true

tellraw @s {"text":"[✔] Red spawn set!","color":"red"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1