execute as @s[scores={plates_cd=1..}] run scoreboard players operation @s plates_cd_sec = @s plates_cd
execute as @s[scores={plates_cd=1..}] run scoreboard players operation @s plates_cd_sec /= ticks_divisor const
execute as @s[scores={plates_cd=1..}] run tellraw @s ["",{"text":"[×] Armor plates on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"plates_cd_sec"}},{"text":"s"}]
execute as @s[scores={plates_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={plates_cd=1..}] run return 0

execute store result score @s temp_count run clear @s superbwarfare:armor_plate 0

execute as @s[scores={temp_count=32..}] run tellraw @s {"text":"[!] Armor plates already full (32)","color":"gray"}
execute as @s[scores={temp_count=32..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={temp_count=32..}] run return 0

clear @s superbwarfare:armor_plate
give @s superbwarfare:armor_plate 32

tellraw @s {"text":"[✔] Armor plates refilled!","color":"green"}
scoreboard players set @s plates_cd 12000