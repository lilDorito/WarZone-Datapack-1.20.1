clear @a

scoreboard players set #game match_mode 5

setworldspawn ~ ~ ~
gamerule spawnRadius 400
function loadouts:admin/spread/on_start

function loadouts:admin/init/teams
function loadouts:admin/scoreboard/setup
function loadouts:admin/scoreboard/clear

team leave @a
function loadouts:admin/team/assign_colors

function loadouts:admin/gungame/roll_order

tag @a remove has_started

execute as @a run scoreboard players set @s kills 0
execute as @a run scoreboard players set @s kills_old 0

title @a title {"text":"GUN GAME","color":"gold","bold":true}
title @a subtitle {"text":"Reach 20 kills to win!","color":"gray"}
tellraw @a {"text":"[>] Gun Game Started! First to 20 kills wins.","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1

execute as @a run function loadouts:kit/start
execute as @a run function loadouts:admin/gungame/give_stage
