tag @s remove allowed
execute if score #map map matches 7 run tag @s add allowed
execute if score #map map matches 9 run tag @s add allowed
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Vehicle Mode is not available on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

scoreboard players set #game match_mode 4

setworldspawn ~ ~ ~
gamerule spawnRadius 400
function loadouts:admin/spread/on_start

function loadouts:admin/init/teams
function loadouts:admin/scoreboard/setup
function loadouts:admin/scoreboard/clear

team leave @a

function loadouts:admin/team/assign_colors

title @a title {"text":"VEHICLES","color":"gold","bold":true}
title @a subtitle {"text":"Score as many kills as you can!","color":"gray"}
tellraw @a {"text":"[>] Vehicle Mode Started!","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1