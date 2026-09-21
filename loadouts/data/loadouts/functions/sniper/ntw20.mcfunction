execute if score #game match_mode matches 4 run tellraw @s {"text":"[×] Weapon loadouts are disabled in Vehicle Mode!","color":"red"}
execute if score #game match_mode matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 4 run return 0
execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Weapon loadouts are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

execute as @s[scores={sniper_cd=1..}] run scoreboard players operation @s sniper_cd_sec = @s sniper_cd
execute as @s[scores={sniper_cd=1..}] run scoreboard players operation @s sniper_cd_sec /= ticks_divisor const
execute as @s[scores={sniper_cd=1..}] run tellraw @s ["",{"text":"[×] Sniper loadout on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"sniper_cd_sec"}},{"text":"s"}]
execute as @s[scores={sniper_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={sniper_cd=1..}] run return 0

clear @s superbwarfare:awm
clear @s superbwarfare:m_98b
clear @s superbwarfare:ntw_20
clear @s superbwarfare:sentinel
clear @s superbwarfare:svd
give @s superbwarfare:ntw_20 1

execute store result score @s temp_count run clear @s superbwarfare:heavy_ammo 0

execute as @s[scores={temp_count=..31}] run clear @s superbwarfare:heavy_ammo
execute as @s[scores={temp_count=..31}] run give @s superbwarfare:heavy_ammo 32
execute as @s[scores={temp_count=..31}] run tellraw @s {"text":"[✔] NTW-20 + ammo refilled","color":"green"}

execute as @s[scores={temp_count=32..}] run tellraw @s {"text":"[✔] NTW-20 equipped (ammo already full)","color":"yellow"}

scoreboard players set @s sniper_cd 12000