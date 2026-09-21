execute as @s[scores={armor_type_cd=1..}] run scoreboard players operation @s armor_type_cd_sec = @s armor_type_cd
execute as @s[scores={armor_type_cd=1..}] run scoreboard players operation @s armor_type_cd_sec /= ticks_divisor const
execute as @s[scores={armor_type_cd=1..}] run tellraw @s ["",{"text":"[×] Armor change on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"armor_type_cd_sec"}},{"text":"s"}]
execute as @s[scores={armor_type_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute as @s[scores={armor_type_cd=1..}] run return 0

execute if entity @s[tag=armor_light] run tellraw @s {"text":"[×] Light armor is already equipped!","color":"red"}
execute if entity @s[tag=armor_light] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @s[tag=armor_light] run return 0

tag @s add armor_light

item replace entity @s armor.chest with mcsp:vest_avs{display:{Name:'{"text":"Light Tac Vest"}'}}
item replace entity @s armor.head with mcsp:opscore_helmet{display:{Name:'{"text":"Light Tac Helmet"}'}}

tellraw @s {"text":"[✔] Light armor equipped!","color":"green"}

execute if score #map map matches 12 run scoreboard players set @s armor_type_cd 36000
execute if score #map map matches 12 run return 0
scoreboard players set @s armor_type_cd 12000