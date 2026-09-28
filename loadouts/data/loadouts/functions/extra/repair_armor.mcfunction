execute unless score #game match_mode matches 1..6 run tellraw @s {"text":"[×] Loadout commands are disabled until the match starts.","color":"red"}
execute unless score #game match_mode matches 1..6 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless score #game match_mode matches 1..6 run return 0

execute if score #game match_mode matches 6 if score #game wz_state matches 0 run tellraw @s {"text":"[×] Loadout commands are disabled until both beacons are placed.","color":"red"}
execute if score #game match_mode matches 6 if score #game wz_state matches 0 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 6 if score #game wz_state matches 0 run return 0

execute if entity @s[tag=armor_light] run item replace entity @s armor.chest with mcsp:vest_avs{display:{Name:'{"text":"Light Tac Vest"}'}}
execute if entity @s[tag=armor_light] run item replace entity @s armor.head with mcsp:opscore_helmet{display:{Name:'{"text":"Light Tac Helmet"}'}}

execute unless entity @s[tag=armor_light] if entity @s[tag=camo_2] run item replace entity @s armor.chest with superbwarfare:ru_chest_6b43{display:{Name:'{"text":"Marsh Heavy Vest"}'}}
execute unless entity @s[tag=armor_light] if entity @s[tag=camo_2] run item replace entity @s armor.head with superbwarfare:ru_helmet_6b47{display:{Name:'{"text":"Marsh Heavy Helmet"}'}}
execute unless entity @s[tag=armor_light] unless entity @s[tag=camo_2] run item replace entity @s armor.chest with superbwarfare:us_chest_iotv{display:{Name:'{"text":"Desert Heavy Vest"}'}}
execute unless entity @s[tag=armor_light] unless entity @s[tag=camo_2] run item replace entity @s armor.head with superbwarfare:us_helmet_pastg{display:{Name:'{"text":"Desert Heavy Helmet"}'}}

tellraw @s {"text":"[✔] Armor repaired!","color":"green"}