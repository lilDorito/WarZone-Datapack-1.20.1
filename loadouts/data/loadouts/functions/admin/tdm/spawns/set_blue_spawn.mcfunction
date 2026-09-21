data remove storage loadouts:spawns Blue
execute store result storage loadouts:spawns Blue.x double 1 run data get entity @s Pos[0]
execute store result storage loadouts:spawns Blue.y double 1 run data get entity @s Pos[1]
execute store result storage loadouts:spawns Blue.z double 1 run data get entity @s Pos[2]

wp remove minecraft:overworld Spawns "Blue Spawn"
wp add ~ ~ ~ Spawns "Blue Spawn" "B" blue 0 true

tellraw @s {"text":"[✔] Blue spawn set!","color":"blue"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1