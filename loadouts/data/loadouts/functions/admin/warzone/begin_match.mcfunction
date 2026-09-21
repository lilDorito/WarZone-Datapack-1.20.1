scoreboard players set #game wz_state 1

title @a title {"text":"WARZONE","color":"gold","bold":true}
title @a subtitle {"text":"Destroy the enemy beacon to win!","color":"gray"}
tellraw @a {"text":"[WarZone] Both beacons are set - the match begins now!","color":"gold","bold":true}
playsound minecraft:entity.ender_dragon.growl master @a ~ ~ ~ 1 1
