data remove storage loadouts:spawns Green3
execute store result storage loadouts:spawns Green3.x double 1 run data get entity @s Pos[0]
execute store result storage loadouts:spawns Green3.y double 1 run data get entity @s Pos[1]
execute store result storage loadouts:spawns Green3.z double 1 run data get entity @s Pos[2]

wp remove minecraft:overworld Spawns "Green Spawn 3"
wp add ~ ~ ~ Spawns "Green Spawn 3" "G3" green 0 true

tellraw @s {"text":"[✔] Green spawn 3 set!","color":"green"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1