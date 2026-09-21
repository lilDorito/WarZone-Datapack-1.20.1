execute if entity @s[tag=armor_light] run tellraw @s {"text":"[×] Light armor doesn't support camos!","color":"red"}
execute if entity @s[tag=armor_light] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @s[tag=armor_light] run return 0

tag @s remove camo_2
tag @s add camo_1

execute if entity @s[tag=armor_light] run item replace entity @s armor.chest with mcsp:vest_avs{display:{Name:'{"text":"Light Tac Vest"}'}}
execute if entity @s[tag=armor_light] run item replace entity @s armor.head with mcsp:opscore_helmet{display:{Name:'{"text":"Light Tac Helmet"}'}}

execute unless entity @s[tag=armor_light] if entity @s[tag=camo_2] run item replace entity @s armor.chest with superbwarfare:ru_chest_6b43{display:{Name:'{"text":"Marsh Heavy Vest"}'}}
execute unless entity @s[tag=armor_light] if entity @s[tag=camo_2] run item replace entity @s armor.head with superbwarfare:ru_helmet_6b47{display:{Name:'{"text":"Marsh Heavy Helmet"}'}}
execute unless entity @s[tag=armor_light] unless entity @s[tag=camo_2] run item replace entity @s armor.chest with superbwarfare:us_chest_iotv{display:{Name:'{"text":"Desert Heavy Vest"}'}}
execute unless entity @s[tag=armor_light] unless entity @s[tag=camo_2] run item replace entity @s armor.head with superbwarfare:us_helmet_pastg{display:{Name:'{"text":"Desert Heavy Helmet"}'}}

tellraw @s {"text":"[✔] Desert camo selected!","color":"green"}
playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1
