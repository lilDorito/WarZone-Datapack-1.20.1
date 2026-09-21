execute as @s[scores={medkit_cd=1..}] run scoreboard players operation @s medkit_cd_sec = @s medkit_cd
execute as @s[scores={medkit_cd=1..}] run scoreboard players operation @s medkit_cd_sec /= ticks_divisor const
execute as @s[scores={medkit_cd=1..}] run tellraw @s ["",{"text":"[×] Medkits on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"medkit_cd_sec"}},{"text":"s"}]
execute as @s[scores={medkit_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={medkit_cd=1..}] run return 0

execute store result score @s temp_count run clear @s superbwarfare:sniper_ammo 0

execute as @s[scores={temp_count=8..}] run tellraw @s {"text":"[!] Medkits already full (8)","color":"gray"}
execute as @s[scores={temp_count=8..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={temp_count=8..}] run return 0

clear @s superbwarfare:medical_kit
give @s superbwarfare:medical_kit 8

tellraw @s {"text":"[✔] Medkits refilled!","color":"green"}
scoreboard players set @s medkit_cd 12000