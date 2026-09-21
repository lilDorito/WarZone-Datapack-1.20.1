
execute at @e[tag=loadouts_wz_red_beacon,limit=1] unless block ~ ~ ~ minecraft:beacon run function loadouts:admin/warzone/red_unset
execute at @e[tag=loadouts_wz_blue_beacon,limit=1] unless block ~ ~ ~ minecraft:beacon run function loadouts:admin/warzone/blue_unset
