execute as @s[scores={blocks_cd=1..}] run scoreboard players operation @s blocks_cd_sec = @s blocks_cd
execute as @s[scores={blocks_cd=1..}] run scoreboard players operation @s blocks_cd_sec /= ticks_divisor const
execute as @s[scores={blocks_cd=1..}] run tellraw @s ["",{"text":"[×] Blocks on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"blocks_cd_sec"}},{"text":"s"}]
execute as @s[scores={blocks_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={blocks_cd=1..}] run return 0

execute store result score @s temp_count run clear @s minecraft:dirt 0

execute as @s[scores={temp_count=64..}] run tellraw @s {"text":"[!] Blocks already full (64)","color":"gray"}
execute as @s[scores={temp_count=64..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={temp_count=64..}] run return 0

clear @s minecraft:dirt
give @s minecraft:dirt 32

tellraw @s {"text":"[✔] Blocks refilled!","color":"green"}
scoreboard players set @s blocks_cd 12000