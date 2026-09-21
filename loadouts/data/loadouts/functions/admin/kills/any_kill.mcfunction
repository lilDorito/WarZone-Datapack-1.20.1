execute unless score @s deaths > @s deaths_old if score #game match_mode matches 2 run scoreboard players add @s kills 1
execute unless score @s deaths > @s deaths_old if score #game match_mode matches 4 run scoreboard players add @s kills 1
execute unless score @s deaths > @s deaths_old if score #game match_mode matches 5 run scoreboard players add @s kills 1

advancement revoke @s only loadouts:kills/any_kill