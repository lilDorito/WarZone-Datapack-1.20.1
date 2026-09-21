execute unless score #game wz_state matches 1 run return 0

scoreboard players set #game wz_state 2
scoreboard players set #game wz_winner 2
kill @e[tag=loadouts_wz_red_beacon]

title @a title {"text":"GAME OVER","color":"red","bold":true}
title @a subtitle ["",{"text":"Red beacon destroyed - ","color":"gray"},{"text":"Blue","color":"blue","bold":true},{"text":" wins!","color":"gray"}]
tellraw @a ["",{"text":"[WarZone] ","color":"gold","bold":true},{"text":"Red","color":"dark_red","bold":true},{"text":" beacon destroyed! ","color":"gray"},{"text":"Blue","color":"blue","bold":true},{"text":" wins the match.","color":"gray"}]
playsound minecraft:entity.wither.death master @a ~ ~ ~ 1 1
