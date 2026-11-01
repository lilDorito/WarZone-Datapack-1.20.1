scoreboard players set #game match_mode 1
function loadouts:admin/match/prepare

setworldspawn ~ ~ ~
gamerule spawnRadius 400
function loadouts:admin/spread/on_start

function loadouts:admin/init/teams
function loadouts:admin/scoreboard/setup
function loadouts:admin/scoreboard/clear

team leave @a

function loadouts:admin/team/assign_colors

execute if score #game variant matches 0 if score #game realistic matches 0 run title @a title {"text":"ARCADE FFA","color":"gold","bold":true}
execute if score #game variant matches 0 if score #game realistic matches 1 run title @a title {"text":"REALISTIC FFA","color":"red","bold":true}
execute if score #game variant matches 0 if score #game realistic matches 0 run title @a subtitle {"text":"Each kill scores a point!","color":"gray"}
execute if score #game variant matches 0 if score #game realistic matches 1 run title @a subtitle {"text":"Kills score, deaths cost a point!","color":"gray"}
execute if score #game variant matches 0 if score #game realistic matches 0 run tellraw @a {"text":"[>] Arcade FFA Started!","color":"gold","bold":true}
execute if score #game variant matches 0 if score #game realistic matches 1 run tellraw @a {"text":"[>] Realistic FFA Started!","color":"gold","bold":true}

execute if score #game variant matches 1 run title @a title {"text":"VEHICLES","color":"gold","bold":true}
execute if score #game variant matches 1 run title @a subtitle {"text":"Score as many kills as you can!","color":"gray"}
execute if score #game variant matches 1 run tellraw @a {"text":"[>] Vehicle Mode Started!","color":"gold","bold":true}

execute if score #game variant matches 2 run title @a title {"text":"SNIPERS","color":"gold","bold":true}
execute if score #game variant matches 2 run title @a subtitle {"text":"Pistols, rifles and snipers only!","color":"gray"}
execute if score #game variant matches 2 run tellraw @a {"text":"[>] Snipers Mode Started!","color":"gold","bold":true}

playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1