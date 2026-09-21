data remove storage loadouts:spawns Green
execute store result storage loadouts:spawns Green.x double 1 run data get entity @s Pos[0]
execute store result storage loadouts:spawns Green.y double 1 run data get entity @s Pos[1]
execute store result storage loadouts:spawns Green.z double 1 run data get entity @s Pos[2]

wp remove minecraft:overworld Spawns "Green Spawn"
wp add ~ ~ ~ Spawns "Green Spawn" "G" green 0 true

tellraw @s {"text":"[✔] Green spawn set!","color":"green"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1