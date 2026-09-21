execute unless score #game wz_state matches 1 run return 0

scoreboard players set #game wz_state 2
scoreboard players set #game wz_winner 1
kill @e[tag=loadouts_wz_blue_beacon]

title @a title {"text":"GAME OVER","color":"red","bold":true}
title @a subtitle ["",{"text":"Blue beacon destroyed - ","color":"gray"},{"text":"Red","color":"dark_red","bold":true},{"text":" wins!","color":"gray"}]
tellraw @a ["",{"text":"[WarZone] ","color":"gold","bold":true},{"text":"Blue","color":"blue","bold":true},{"text":" beacon destroyed! ","color":"gray"},{"text":"Red","color":"dark_red","bold":true},{"text":" wins the match.","color":"gray"}]
playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 1
