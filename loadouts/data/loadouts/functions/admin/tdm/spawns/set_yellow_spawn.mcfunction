data remove storage loadouts:spawns Yellow
execute store result storage loadouts:spawns Yellow.x double 1 run data get entity @s Pos[0]
execute store result storage loadouts:spawns Yellow.y double 1 run data get entity @s Pos[1]
execute store result storage loadouts:spawns Yellow.z double 1 run data get entity @s Pos[2]

wp remove minecraft:overworld Spawns "Yellow Spawn"
wp add ~ ~ ~ Spawns "Yellow Spawn" "Y" yellow 0 true

tellraw @s {"text":"[✔] Yellow spawn set!","color":"yellow"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1