data remove storage loadouts:spawns Yellow2
execute store result storage loadouts:spawns Yellow2.x double 1 run data get entity @s Pos[0]
execute store result storage loadouts:spawns Yellow2.y double 1 run data get entity @s Pos[1]
execute store result storage loadouts:spawns Yellow2.z double 1 run data get entity @s Pos[2]

wp remove minecraft:overworld Spawns "Yellow Spawn 2"
wp add ~ ~ ~ Spawns "Yellow Spawn 2" "Y2" yellow 0 true

tellraw @s {"text":"[✔] Yellow spawn 2 set!","color":"yellow"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1