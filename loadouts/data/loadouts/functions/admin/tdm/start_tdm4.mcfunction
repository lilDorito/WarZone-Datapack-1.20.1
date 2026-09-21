scoreboard players set #game match_mode 3
gamerule spawnRadius 0

function loadouts:admin/init/teams
function loadouts:admin/scoreboard/setup
team leave @a
tag @a add unassigned
function loadouts:admin/tdm/assign_tdm4

clear @a walkietalkie:netherite_walkietalkie
give @a walkietalkie:netherite_walkietalkie 1

title @a title {"text":"TEAM DEATHMATCH","color":"gold","bold":true}
title @a subtitle {"text":"Score as many kills as you can!","color":"gray"}
tellraw @a {"text":"[>] TDM-4 Started!","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1

