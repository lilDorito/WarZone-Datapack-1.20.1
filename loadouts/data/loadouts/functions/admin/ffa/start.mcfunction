scoreboard players set #game match_mode 2

setworldspawn ~ ~ ~
gamerule spawnRadius 400
function loadouts:admin/spread/on_start

function loadouts:admin/init/teams
function loadouts:admin/scoreboard/setup
function loadouts:admin/scoreboard/clear

team leave @a

function loadouts:admin/team/assign_colors

title @a title {"text":"FREE-FOR-ALL","color":"gold","bold":true}
title @a subtitle {"text":"Score as many kills as you can!","color":"gray"}
tellraw @a {"text":"[>] FFA Mode Started!","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1