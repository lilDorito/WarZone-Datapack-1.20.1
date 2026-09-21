execute if score #game match_mode matches 4 run tellraw @s {"text":"[×] Weapon loadouts are disabled in Vehicle Mode!","color":"red"}
execute if score #game match_mode matches 4 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 4 run return 0
execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Weapon loadouts are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

execute as @s[scores={rifle_cd=1..}] run scoreboard players operation @s rifle_cd_sec = @s rifle_cd
execute as @s[scores={rifle_cd=1..}] run scoreboard players operation @s rifle_cd_sec /= ticks_divisor const
execute as @s[scores={rifle_cd=1..}] run tellraw @s ["",{"text":"[×] Rifle loadout on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"rifle_cd_sec"}},{"text":"s"}]
execute as @s[scores={rifle_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={rifle_cd=1..}] run return 0

clear @s superbwarfare:k_98
clear @s superbwarfare:marlin
clear @s superbwarfare:mosin_nagant
clear @s superbwarfare:sks
give @s superbwarfare:k_98 1

execute store result score @s temp_count run clear @s superbwarfare:sniper_ammo 0

execute as @s[scores={temp_count=..31}] run clear @s superbwarfare:sniper_ammo
execute as @s[scores={temp_count=..31}] run give @s superbwarfare:sniper_ammo 32
execute as @s[scores={temp_count=..31}] run tellraw @s {"text":"[✔] Kar-98k + ammo refilled","color":"green"}

execute as @s[scores={temp_count=32..}] run tellraw @s {"text":"[✔] Kar-98k equipped (ammo already full)","color":"yellow"}

scoreboard players set @s rifle_cd 12000