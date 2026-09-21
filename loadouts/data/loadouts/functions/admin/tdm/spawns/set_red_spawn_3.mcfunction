data remove storage loadouts:spawns Red3
execute store result storage loadouts:spawns Red3.x double 1 run data get entity @s Pos[0]
execute store result storage loadouts:spawns Red3.y double 1 run data get entity @s Pos[1]
execute store result storage loadouts:spawns Red3.z double 1 run data get entity @s Pos[2]

wp remove minecraft:overworld Spawns "Red Spawn 3"
wp add ~ ~ ~ Spawns "Red Spawn 3" "R3" dark_red 0 true

tellraw @s {"text":"[✔] Red spawn 3 set!","color":"dark_red"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1