execute if entity @s[tag=has_started] run tellraw @s {"text":"[×] You have already received your start kit!","color":"red"}
execute if entity @s[tag=has_started] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if entity @s[tag=has_started] run return 0

curios clear @s back
clear @s minecraft:cooked_beef
clear @s superbwarfare:medical_kit
clear @s superbwarfare:armor_plate
clear @s superbwarfare:parachute
clear @s minecraft:dirt
clear @s minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:efficiency",lvl:5s}]}
clear @s superbwarfare:knife
give @s minecraft:cooked_beef 16
give @s superbwarfare:medical_kit 8
give @s superbwarfare:armor_plate 32
curios replace back 0 @s with superbwarfare:parachute
give @s minecraft:dirt 32
give @s minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:efficiency",lvl:5s}]} 1
give @s superbwarfare:knife{AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:53,Operation:0,Slot:"mainhand",UUID:[I;1,2,3,4]}]} 1

execute if score #map map matches 7 run give @s superbwarfare:large_battery_pack{Energy:20000000} 2
execute if score #map map matches 9 run give @s superbwarfare:large_battery_pack{Energy:20000000} 2
execute if score #map map matches 11 run give @s superbwarfare:large_battery_pack{Energy:20000000} 2
execute if score #map map matches 13 run give @s superbwarfare:large_battery_pack{Energy:20000000} 2

tag @s remove armor_light

execute if entity @s[tag=camo_2] run item replace entity @s armor.chest with superbwarfare:ru_chest_6b43{display:{Name:'{"text":"Marsh Heavy Vest"}'}}
execute if entity @s[tag=camo_2] run item replace entity @s armor.head with superbwarfare:ru_helmet_6b47{display:{Name:'{"text":"Marsh Heavy Helmet"}'}}
execute unless entity @s[tag=camo_2] run item replace entity @s armor.chest with superbwarfare:us_chest_iotv{display:{Name:'{"text":"Desert Heavy Vest"}'}}
execute unless entity @s[tag=camo_2] run item replace entity @s armor.head with superbwarfare:us_helmet_pastg{display:{Name:'{"text":"Desert Heavy Helmet"}'}}

tag @s add has_started

tellraw @s {"text":"[✔] Start kit received!","color":"green"}