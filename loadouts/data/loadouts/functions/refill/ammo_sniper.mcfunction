execute as @s[scores={sniper_ammo_cd=1..}] run scoreboard players operation @s sniper_ammo_cd_sec = @s sniper_ammo_cd
execute as @s[scores={sniper_ammo_cd=1..}] run scoreboard players operation @s sniper_ammo_cd_sec /= ticks_divisor const
execute as @s[scores={sniper_ammo_cd=1..}] run tellraw @s ["",{"text":"[×] Sniper ammo on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"sniper_ammo_cd_sec"}},{"text":"s"}]
execute as @s[scores={sniper_ammo_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={sniper_ammo_cd=1..}] run return 0

execute store result score @s temp_count run clear @s superbwarfare:sniper_ammo 0

execute as @s[scores={temp_count=32..}] run tellraw @s {"text":"[!] Sniper ammo already full (32)","color":"gray"}
execute as @s[scores={temp_count=32..}] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={temp_count=32..}] run return 0

clear @s superbwarfare:sniper_ammo
give @s superbwarfare:sniper_ammo 32

tellraw @s {"text":"[✔] Sniper ammo refilled!","color":"green"}
scoreboard players set @s sniper_ammo_cd 6000