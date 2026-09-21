execute unless score #game wz_blue_set matches 1 run return 0

scoreboard players set #game wz_blue_set 0
kill @e[tag=loadouts_wz_blue_beacon]

tellraw @a ["",{"text":"[WarZone] ","color":"gold","bold":true},{"text":"Team Blue","color":"blue","bold":true},{"text":" has removed their beacon.","color":"gray"}]
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1
