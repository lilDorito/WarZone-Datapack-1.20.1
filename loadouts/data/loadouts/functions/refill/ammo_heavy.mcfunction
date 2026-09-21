execute as @s[scores={heavy_ammo_cd=1..}] run scoreboard players operation @s heavy_ammo_cd_sec = @s heavy_ammo_cd
execute as @s[scores={heavy_ammo_cd=1..}] run scoreboard players operation @s heavy_ammo_cd_sec /= ticks_divisor const
execute as @s[scores={heavy_ammo_cd=1..}] run tellraw @s ["",{"text":"[×] Heavy ammo on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"heavy_ammo_cd_sec"}},{"text":"s"}]
execute as @s[scores={heavy_ammo_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={heavy_ammo_cd=1..}] run return 0

execute store result score @s temp_count run clear @s superbwarfare:heavy_ammo 0

execute as @s[scores={temp_count=64..}] run tellraw @s {"text":"[!] Heavy ammo already full (64)","color":"gray"}
execute as @s[scores={temp_count=64..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={temp_count=64..}] run return 0

clear @s superbwarfare:heavy_ammo
give @s superbwarfare:heavy_ammo 64

tellraw @s {"text":"[✔] Heavy ammo refilled!","color":"green"}
scoreboard players set @s heavy_ammo_cd 6000