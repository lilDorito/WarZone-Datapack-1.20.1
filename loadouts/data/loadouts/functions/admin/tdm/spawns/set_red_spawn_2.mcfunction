data remove storage loadouts:spawns Red2
execute store result storage loadouts:spawns Red2.x double 1 run data get entity @s Pos[0]
execute store result storage loadouts:spawns Red2.y double 1 run data get entity @s Pos[1]
execute store result storage loadouts:spawns Red2.z double 1 run data get entity @s Pos[2]

wp remove minecraft:overworld Spawns "Red Spawn 2"
wp add ~ ~ ~ Spawns "Red Spawn 2" "R2" dark_red 0 true

tellraw @s {"text":"[✔] Red spawn 2 set!","color":"dark_red"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1