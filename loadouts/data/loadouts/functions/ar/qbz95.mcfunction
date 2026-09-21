execute if score #game match_mode matches 4 run tellraw @s {"text":"[×] Weapon loadouts are disabled in Vehicle Mode!","color":"red"}
execute if score #game match_mode matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 4 run return 0
execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Weapon loadouts are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

execute as @s[scores={ar_cd=1..}] run scoreboard players operation @s ar_cd_sec = @s ar_cd
execute as @s[scores={ar_cd=1..}] run scoreboard players operation @s ar_cd_sec /= ticks_divisor const
execute as @s[scores={ar_cd=1..}] run tellraw @s ["",{"text":"[×] AR loadout on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"ar_cd_sec"}},{"text":"s"}]
execute as @s[scores={ar_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s ar_cd matches 1.. run return 0

clear @s superbwarfare:ak_12
clear @s superbwarfare:ak_47
clear @s superbwarfare:hk_416
clear @s superbwarfare:insidious
clear @s superbwarfare:m_4
clear @s superbwarfare:mk_14
clear @s superbwarfare:qbz_191
clear @s superbwarfare:qbz_95
give @s superbwarfare:qbz_95 1

execute store result score @s temp_count run clear @s superbwarfare:rifle_ammo 0

execute as @s[scores={temp_count=..191}] run clear @s superbwarfare:rifle_ammo
execute as @s[scores={temp_count=..191}] run give @s superbwarfare:rifle_ammo 192
execute as @s[scores={temp_count=..191}] run tellraw @s {"text":"[✔] QBZ-95 + ammo refilled","color":"green"}

execute as @s[scores={temp_count=192..}] run tellraw @s {"text":"[✔] QBZ-95 equipped (ammo already full)","color":"yellow"}

scoreboard players set @s ar_cd 12000