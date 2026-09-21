execute if score @s spawn_immune matches 1.. run tellraw @s {"text":"[!] Spawn protection broken - you attacked!","color":"red"}
scoreboard players set @s spawn_immune 0
effect clear @s minecraft:resistance
advancement revoke @s only loadouts:combat/dealt_damage