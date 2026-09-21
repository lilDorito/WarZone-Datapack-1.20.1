data remove storage loadouts:spawns Blue2
execute store result storage loadouts:spawns Blue2.x double 1 run data get entity @s Pos[0]
execute store result storage loadouts:spawns Blue2.y double 1 run data get entity @s Pos[1]
execute store result storage loadouts:spawns Blue2.z double 1 run data get entity @s Pos[2]

wp remove minecraft:overworld Spawns "Blue Spawn 2"
wp add ~ ~ ~ Spawns "Blue Spawn 2" "B2" blue 0 true

tellraw @s {"text":"[✔] Blue spawn 2 set!","color":"blue"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1