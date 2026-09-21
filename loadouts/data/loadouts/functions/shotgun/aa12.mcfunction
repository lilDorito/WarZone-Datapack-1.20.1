execute if score #game match_mode matches 4 run tellraw @s {"text":"[×] Weapon loadouts are disabled in Vehicle Mode!","color":"red"}
execute if score #game match_mode matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 4 run return 0
execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Weapon loadouts are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

execute as @s[scores={shotgun_cd=1..}] run scoreboard players operation @s shotgun_cd_sec = @s shotgun_cd
execute as @s[scores={shotgun_cd=1..}] run scoreboard players operation @s shotgun_cd_sec /= ticks_divisor const
execute as @s[scores={shotgun_cd=1..}] run tellraw @s ["",{"text":"[×] Shotgun loadout on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"shotgun_cd_sec"}},{"text":"s"}]
execute as @s[scores={shotgun_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s shotgun_cd matches 1.. run return 0

clear @s superbwarfare:aa_12
clear @s superbwarfare:m_870
give @s superbwarfare:aa_12 1

execute store result score @s temp_count run clear @s superbwarfare:shotgun_ammo 0

execute as @s[scores={temp_count=..63}] run clear @s superbwarfare:shotgun_ammo
execute as @s[scores={temp_count=..63}] run give @s superbwarfare:shotgun_ammo 64
execute as @s[scores={temp_count=..63}] run tellraw @s {"text":"[✔] AA-12 + ammo refilled","color":"green"}

execute as @s[scores={temp_count=64..}] run tellraw @s {"text":"[✔] AA-12 equipped (ammo already full)","color":"yellow"}

scoreboard players set @s shotgun_cd 12000