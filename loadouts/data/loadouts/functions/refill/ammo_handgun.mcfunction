execute as @s[scores={hg_ammo_cd=1..}] run scoreboard players operation @s hg_ammo_cd_sec = @s hg_ammo_cd
execute as @s[scores={hg_ammo_cd=1..}] run scoreboard players operation @s hg_ammo_cd_sec /= ticks_divisor const
execute as @s[scores={hg_ammo_cd=1..}] run tellraw @s ["",{"text":"[×] Handgun ammo on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"hg_ammo_cd_sec"}},{"text":"s"}]
execute as @s[scores={hg_ammo_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={hg_ammo_cd=1..}] run return 0

execute store result score @s temp_count run clear @s superbwarfare:handgun_ammo 0

execute as @s[scores={temp_count=192..}] run tellraw @s {"text":"[!] Handgun ammo already full (192)","color":"gray"}
execute as @s[scores={temp_count=192..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={temp_count=192..}] run return 0

clear @s superbwarfare:handgun_ammo
give @s superbwarfare:handgun_ammo 192

tellraw @s {"text":"[✔] Handgun ammo refilled!","color":"green"}
scoreboard players set @s hg_ammo_cd 6000