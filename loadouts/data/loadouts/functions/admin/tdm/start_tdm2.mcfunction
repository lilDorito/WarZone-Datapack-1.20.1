scoreboard players set #game match_mode 1
gamerule spawnRadius 0

function loadouts:admin/init/teams
function loadouts:admin/scoreboard/setup
team leave @a
tag @a add unassigned
function loadouts:admin/tdm/assign_tdm2

clear @a sbw_ew_addon:radio
give @a sbw_ew_addon:radio 1

execute if score #game realistic matches 0 run title @a title {"text":"ARCADE TDM-2","color":"gold","bold":true}
execute if score #game realistic matches 1 run title @a title {"text":"REALISTIC TDM-2","color":"red","bold":true}
execute if score #game realistic matches 0 run title @a subtitle {"text":"Each kill scores a point!","color":"gray"}
execute if score #game realistic matches 1 run title @a subtitle {"text":"Kills score, deaths cost a point!","color":"gray"}
execute if score #game realistic matches 0 run tellraw @a {"text":"[>] Arcade TDM-2 Started!","color":"gold","bold":true}
execute if score #game realistic matches 1 run tellraw @a {"text":"[>] Realistic TDM-2 Started!","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1