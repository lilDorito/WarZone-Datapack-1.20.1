execute if score #game ended matches 1 run return 0
execute unless score #game match_mode matches 1..5 run return 0

execute as @a unless score @s gid matches 1.. run function loadouts:admin/ghost/register
execute as @a run function loadouts:admin/ghost/sync