execute unless score @s deaths > @s deaths_old if score #game match_mode matches 1 run function loadouts:admin/score/add_point
execute unless score @s deaths > @s deaths_old if score #game match_mode matches 4 run function loadouts:admin/score/add_point

advancement revoke @s only loadouts:kills/any_kill