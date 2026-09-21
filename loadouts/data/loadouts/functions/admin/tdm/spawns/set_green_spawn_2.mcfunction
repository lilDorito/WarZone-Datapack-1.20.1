data remove storage loadouts:spawns Green2
execute store result storage loadouts:spawns Green2.x double 1 run data get entity @s Pos[0]
execute store result storage loadouts:spawns Green2.y double 1 run data get entity @s Pos[1]
execute store result storage loadouts:spawns Green2.z double 1 run data get entity @s Pos[2]

wp remove minecraft:overworld Spawns "Green Spawn 2"
wp add ~ ~ ~ Spawns "Green Spawn 2" "G2" green 0 true

tellraw @s {"text":"[✔] Green spawn 2 set!","color":"green"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1