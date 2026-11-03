execute unless score #game match_mode matches 1..5 run tellraw @s {"text":"[×] No match is running.","color":"red"}
execute unless score #game match_mode matches 1..5 run return 0
execute if score #game ended matches 1 run tellraw @s {"text":"[×] Match results are already frozen.","color":"red"}
execute if score #game ended matches 1 run return 0

scoreboard players set #game ended 1

execute as @a run scoreboard players add @s kills_total 0
execute as @a run scoreboard players operation @s final_pts = @s kills
execute as @a run scoreboard players operation @s final_kills = @s kills_total
execute as @a run scoreboard players operation @s final_deaths = @s deaths

title @a title {"text":"MATCH ENDED","color":"gold","bold":true}
title @a subtitle {"text":"Final results are in chat","color":"gray"}
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1

tellraw @a ["",{"text":"    ","color":"gray"},{"text":"PTS","color":"yellow"},{"text":" | ","color":"dark_gray"},{"text":"KLS","color":"green"},{"text":" | ","color":"dark_gray"},{"text":"DTH","color":"red"},{"text":"  Player","color":"gray"}]

tag @a add end_pending
scoreboard players set #rank temp_count 0
function loadouts:admin/match/end_next

execute if score #game match_mode matches 2 run function loadouts:admin/match/end_teams_2
execute if score #game match_mode matches 3 run function loadouts:admin/match/end_teams_4
execute if score #game match_mode matches 5 run function loadouts:admin/match/end_teams_2

tellraw @a {"text":"====================================","color":"dark_gray"}