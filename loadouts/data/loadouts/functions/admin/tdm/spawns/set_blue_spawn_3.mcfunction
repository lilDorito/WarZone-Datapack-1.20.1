data remove storage loadouts:spawns Blue3
execute store result storage loadouts:spawns Blue3.x double 1 run data get entity @s Pos[0]
execute store result storage loadouts:spawns Blue3.y double 1 run data get entity @s Pos[1]
execute store result storage loadouts:spawns Blue3.z double 1 run data get entity @s Pos[2]

wp remove minecraft:overworld Spawns "Blue Spawn 3"
wp add ~ ~ ~ Spawns "Blue Spawn 3" "B3" blue 0 true

tellraw @s {"text":"[✔] Blue spawn 3 set!","color":"blue"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1