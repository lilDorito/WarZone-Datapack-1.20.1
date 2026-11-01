tag @s remove allowed
execute if score #map map matches 2 run tag @s add allowed
execute if score #map map matches 3 run tag @s add allowed
execute if score #map map matches 4 run tag @s add allowed
execute if score #map map matches 6 run tag @s add allowed
execute if score #map map matches 8 run tag @s add allowed
execute if score #map map matches 15 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Snipers mode is not available on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

scoreboard players set #game realistic 0
scoreboard players set #game variant 2
function loadouts:admin/ffa/start