scoreboard players reset @a aircraft_cd
scoreboard players reset @a armor_type_cd
scoreboard players reset @a armor_type_cd_sec
scoreboard players reset @a boat_cd
scoreboard players reset @a heli_cd
scoreboard players reset @a rpg_cd
scoreboard players reset @a javelin_cd
scoreboard players reset @a igla_cd
scoreboard players reset @a thumper_cd
scoreboard players reset @a mine_cd
scoreboard players reset @a c4_cd
scoreboard players reset @a mortar_cd
scoreboard players reset @a grenade_cd
scoreboard players reset @a mlrs_cd
scoreboard players reset @a tow_cd
scoreboard players reset @a iskander_cd
scoreboard players reset @a radar_cd
scoreboard players reset @a drone_tactical_cd
scoreboard players reset @a drone_strategic_cd
scoreboard players reset @a ew_cd
scoreboard players reset @a ar_ammo_cd
scoreboard players reset @a shotgun_ammo_cd
scoreboard players reset @a sniper_ammo_cd
scoreboard players reset @a heavy_ammo_cd
scoreboard players reset @a hg_ammo_cd
scoreboard players reset @a medkit_cd
scoreboard players reset @a food_cd
scoreboard players reset @a plates_cd
scoreboard players reset @a blocks_cd
scoreboard players reset @a fuel_cd
scoreboard players reset @a pistol_cd
scoreboard players reset @a ar_cd
scoreboard players reset @a rifle_cd
scoreboard players reset @a shotgun_cd
scoreboard players reset @a sniper_cd
scoreboard players reset @a smg_cd
scoreboard players reset @a lmg_cd
scoreboard players reset @a thermal_timer
scoreboard players reset @a thermal_active
scoreboard players reset @a thermal_cd
scoreboard players reset @a thermal_cd_sec
scoreboard players reset @a vehicle_cd

scoreboard players set #off_drones global 0
scoreboard players set #off_strike_drones global 0

tag @a remove has_started
tag @a remove pending_spawn
tag @a remove pending_immune
tag @a remove has_radio
scoreboard players reset @a spawn_immune
effect clear @a minecraft:resistance
clear @a

execute in minecraft:overworld run forceload add 0 0
kill @e[type=text_display,tag=ghost]
scoreboard players reset * gid
scoreboard players set #next gid 0