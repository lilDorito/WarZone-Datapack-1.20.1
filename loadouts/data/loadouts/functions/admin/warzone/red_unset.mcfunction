execute unless score #game wz_red_set matches 1 run return 0

scoreboard players set #game wz_red_set 0
kill @e[tag=loadouts_wz_red_beacon]

tellraw @a ["",{"text":"[WarZone] ","color":"gold","bold":true},{"text":"Team Red","color":"dark_red","bold":true},{"text":" has removed their beacon.","color":"gray"}]
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1
