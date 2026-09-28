execute unless score #game match_mode matches 1..6 run tellraw @s {"text":"[×] Loadout commands are disabled until the match starts.","color":"red"}
execute unless score #game match_mode matches 1..6 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless score #game match_mode matches 1..6 run return 0

execute if score #game match_mode matches 6 if score #game wz_state matches 0 run tellraw @s {"text":"[×] Loadout commands are disabled until both beacons are placed.","color":"red"}
execute if score #game match_mode matches 6 if score #game wz_state matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 6 if score #game wz_state matches 0 run return 0

execute as @s[scores={food_cd=1..}] run scoreboard players operation @s food_cd_sec = @s food_cd
execute as @s[scores={food_cd=1..}] run scoreboard players operation @s food_cd_sec /= ticks_divisor const
execute as @s[scores={food_cd=1..}] run tellraw @s ["",{"text":"[×] Food on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"food_cd_sec"}},{"text":"s"}]
execute as @s[scores={food_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={food_cd=1..}] run return 0

execute store result score @s temp_count run clear @s minecraft:cooked_beef 0

execute as @s[scores={temp_count=32..}] run tellraw @s {"text":"[!] Food already full (32)","color":"gray"}
execute as @s[scores={temp_count=32..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={temp_count=32..}] run return 0

clear @s minecraft:cooked_beef
give @s minecraft:cooked_beef 16

tellraw @s {"text":"[✔] Food refilled!","color":"green"}
scoreboard players set @s food_cd 12000