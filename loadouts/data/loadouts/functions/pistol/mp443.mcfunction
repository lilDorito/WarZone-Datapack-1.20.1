execute if score #game match_mode matches 4 run tellraw @s {"text":"[×] Weapon loadouts are disabled in Vehicle Mode!","color":"red"}
execute if score #game match_mode matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 4 run return 0
execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Weapon loadouts are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

execute as @s[scores={pistol_cd=1..}] run scoreboard players operation @s pistol_cd_sec = @s pistol_cd
execute as @s[scores={pistol_cd=1..}] run scoreboard players operation @s pistol_cd_sec /= ticks_divisor const
execute as @s[scores={pistol_cd=1..}] run tellraw @s ["",{"text":"[×] Pistol loadout on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"pistol_cd_sec"}},{"text":"s"}]
execute as @s[scores={pistol_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s pistol_cd matches 1.. run return 0

clear @s superbwarfare:glock_18
clear @s superbwarfare:m_1911
clear @s superbwarfare:mp_443
clear @s superbwarfare:trachelium
give @s superbwarfare:mp_443 1

execute store result score @s temp_count run clear @s superbwarfare:handgun_ammo 0

execute as @s[scores={temp_count=..191}] run clear @s superbwarfare:handgun_ammo
execute as @s[scores={temp_count=..191}] run give @s superbwarfare:handgun_ammo 192
execute as @s[scores={temp_count=..191}] run tellraw @s {"text":"[✔] MP-443 + ammo refilled","color":"green"}

execute as @s[scores={temp_count=192..}] run tellraw @s {"text":"[✔] MP-443 equipped (ammo already full)","color":"yellow"}

scoreboard players set @s pistol_cd 12000