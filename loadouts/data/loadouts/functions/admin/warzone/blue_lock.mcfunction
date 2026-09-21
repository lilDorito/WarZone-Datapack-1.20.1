kill @e[tag=loadouts_wz_blue_beacon]
summon minecraft:marker ~ ~ ~ {Tags:["loadouts_wz_blue_beacon"]}

scoreboard players set #game wz_blue_set 1

tellraw @a ["",{"text":"[WarZone] ","color":"gold","bold":true},{"text":"Team Blue","color":"blue","bold":true},{"text":" has set their beacon!","color":"gray"}]
playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1

function loadouts:admin/warzone/check_start
