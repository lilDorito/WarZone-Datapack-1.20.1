kill @e[tag=loadouts_wz_red_beacon]
summon minecraft:marker ~ ~ ~ {Tags:["loadouts_wz_red_beacon"]}

scoreboard players set #game wz_red_set 1

tellraw @a ["",{"text":"[WarZone] ","color":"gold","bold":true},{"text":"Team Red","color":"dark_red","bold":true},{"text":" has set their beacon!","color":"gray"}]
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1

function loadouts:admin/warzone/check_start
