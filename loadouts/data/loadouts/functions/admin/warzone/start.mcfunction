tag @s remove allowed
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] WarZone is only available on the WarZone map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

scoreboard players set #game match_mode 6
gamerule spawnRadius 0

function loadouts:admin/init/teams
function loadouts:admin/scoreboard/setup
team leave @a
tag @a add unassigned
function loadouts:admin/tdm/assign_tdm2

scoreboard players set #game wz_state 0
scoreboard players set #game wz_red_set 0
scoreboard players set #game wz_blue_set 0
scoreboard players set #game wz_winner 0
kill @e[tag=loadouts_wz_red_beacon]
kill @e[tag=loadouts_wz_blue_beacon]

clear @a minecraft:beacon
execute as @a[team=Red,sort=random,limit=1] run give @s minecraft:beacon 1
execute as @a[team=Blue,sort=random,limit=1] run give @s minecraft:beacon 1

clear @a walkietalkie:netherite_walkietalkie
give @a walkietalkie:netherite_walkietalkie 1

tellraw @a {"text":"[>] WarZone Started! Each team has one beacon - place it in your zone to begin.","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1
