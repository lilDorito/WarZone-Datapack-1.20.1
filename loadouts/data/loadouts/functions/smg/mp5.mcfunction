execute if score #game match_mode matches 4 run tellraw @s {"text":"[×] Weapon loadouts are disabled in Vehicle Mode!","color":"red"}
execute if score #game match_mode matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 4 run return 0
execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Weapon loadouts are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

execute as @s[scores={smg_cd=1..}] run scoreboard players operation @s smg_cd_sec = @s smg_cd
execute as @s[scores={smg_cd=1..}] run scoreboard players operation @s smg_cd_sec /= ticks_divisor const
execute as @s[scores={smg_cd=1..}] run tellraw @s ["",{"text":"[×] SMG loadout on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"smg_cd_sec"}},{"text":"s"}]
execute as @s[scores={smg_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s smg_cd matches 1.. run return 0

clear @s superbwarfare:mp_5
clear @s superbwarfare:vector
give @s superbwarfare:mp_5 1

execute store result score @s temp_count run clear @s superbwarfare:handgun_ammo 0

execute as @s[scores={temp_count=..191}] run clear @s superbwarfare:handgun_ammo
execute as @s[scores={temp_count=..191}] run give @s superbwarfare:handgun_ammo 192
execute as @s[scores={temp_count=..191}] run tellraw @s {"text":"[✔] MP5 + ammo refilled","color":"green"}

execute as @s[scores={temp_count=192..}] run tellraw @s {"text":"[✔] MP5 equipped (ammo already full)","color":"yellow"}

scoreboard players set @s smg_cd 12000