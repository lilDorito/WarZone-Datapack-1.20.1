data remove storage loadouts:spawns Yellow3
execute store result storage loadouts:spawns Yellow3.x double 1 run data get entity @s Pos[0]
execute store result storage loadouts:spawns Yellow3.y double 1 run data get entity @s Pos[1]
execute store result storage loadouts:spawns Yellow3.z double 1 run data get entity @s Pos[2]

wp remove minecraft:overworld Spawns "Yellow Spawn 3"
wp add ~ ~ ~ Spawns "Yellow Spawn 3" "Y3" yellow 0 true

tellraw @s {"text":"[✔] Yellow spawn 3 set!","color":"yellow"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1