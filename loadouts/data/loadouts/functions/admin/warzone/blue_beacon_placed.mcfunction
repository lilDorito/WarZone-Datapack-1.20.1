advancement revoke @s only loadouts:warzone/blue_beacon

execute unless score #game match_mode matches 6 run return 0
execute if score #game wz_blue_set matches 1 run return 0

execute at @s run function loadouts:admin/warzone/locate_blue_beacon
