# Kits

scoreboard players remove @a[scores={rpg_cd=1..}] rpg_cd 1

scoreboard players remove @a[scores={javelin_cd=1..}] javelin_cd 1

scoreboard players remove @a[scores={igla_cd=1..}] igla_cd 1

scoreboard players remove @a[scores={thumper_cd=1..}] thumper_cd 1

scoreboard players remove @a[scores={mine_cd=1..}] mine_cd 1

scoreboard players remove @a[scores={c4_cd=1..}] c4_cd 1

scoreboard players remove @a[scores={drone_cd=1..}] drone_cd 1

scoreboard players remove @a[scores={mortar_cd=1..}] mortar_cd 1

scoreboard players remove @a[scores={grenade_cd=1..}] grenade_cd 1

scoreboard players remove @a[scores={mlrs_cd=1..}] mlrs_cd 1


# Refill

scoreboard players remove @a[scores={ar_ammo_cd=1..}] ar_ammo_cd 1

scoreboard players remove @a[scores={shotgun_ammo_cd=1..}] shotgun_ammo_cd 1

scoreboard players remove @a[scores={sniper_ammo_cd=1..}] sniper_ammo_cd 1

scoreboard players remove @a[scores={heavy_ammo_cd=1..}] heavy_ammo_cd 1

scoreboard players remove @a[scores={hg_ammo_cd=1..}] hg_ammo_cd 1

scoreboard players remove @a[scores={medkit_cd=1..}] medkit_cd 1

scoreboard players remove @a[scores={food_cd=1..}] food_cd 1

scoreboard players remove @a[scores={plates_cd=1..}] plates_cd 1

scoreboard players remove @a[scores={armor_cd=1..}] armor_cd 1

scoreboard players remove @a[scores={blocks_cd=1..}] blocks_cd 1

scoreboard players remove @a[scores={fuel_cd=1..}] fuel_cd 1


# Armor

scoreboard players remove @a[scores={armor_type_cd=1..}] armor_type_cd 1


# Loadouts

scoreboard players remove @a[scores={ar_cd=1..}] ar_cd 1

scoreboard players remove @a[scores={rifle_cd=1..}] rifle_cd 1

scoreboard players remove @a[scores={shotgun_cd=1..}] shotgun_cd 1

scoreboard players remove @a[scores={sniper_cd=1..}] sniper_cd 1

scoreboard players remove @a[scores={lmg_cd=1..}] lmg_cd 1

scoreboard players remove @a[scores={smg_cd=1..}] smg_cd 1

scoreboard players remove @a[scores={pistol_cd=1..}] pistol_cd 1


# Transport

scoreboard players remove @a[scores={vehicle_cd=1..}] vehicle_cd 1

scoreboard players remove @a[scores={boat_cd=1..}] boat_cd 1

scoreboard players remove @a[scores={heli_cd=1..}] heli_cd 1

scoreboard players remove @a[scores={aircraft_cd=1..}] aircraft_cd 1

# Respawn immunity detect

execute as @a if score @s deaths > @s deaths_old run scoreboard players set @s spawn_immune 200
execute as @a if score @s deaths > @s deaths_old run tellraw @s {"text":"Spawn protection (10s)","color":"green"}

execute as @a[team=Red] if score #game match_mode matches 1 if score @s deaths > @s deaths_old run function loadouts:admin/tdm/spawns/apply_red_spawn
execute as @a[team=Red] if score #game match_mode matches 3 if score @s deaths > @s deaths_old run function loadouts:admin/tdm/spawns/apply_red_spawn
execute as @a[team=Blue] if score #game match_mode matches 1 if score @s deaths > @s deaths_old run function loadouts:admin/tdm/spawns/apply_blue_spawn
execute as @a[team=Blue] if score #game match_mode matches 3 if score @s deaths > @s deaths_old run function loadouts:admin/tdm/spawns/apply_blue_spawn
execute as @a[team=Green] if score #game match_mode matches 3 if score @s deaths > @s deaths_old run function loadouts:admin/tdm/spawns/apply_green_spawn
execute as @a[team=Yellow] if score #game match_mode matches 3 if score @s deaths > @s deaths_old run function loadouts:admin/tdm/spawns/apply_yellow_spawn
execute as @a[team=Red] if score #game match_mode matches 6 if score @s deaths > @s deaths_old run function loadouts:admin/tdm/spawns/apply_red_spawn
execute as @a[team=Blue] if score #game match_mode matches 6 if score @s deaths > @s deaths_old run function loadouts:admin/tdm/spawns/apply_blue_spawn

execute as @a run scoreboard players operation @s deaths_old = @s deaths

# Countdown

scoreboard players remove @a[scores={spawn_immune=1..}] spawn_immune 1

# Apply immunity

execute as @a[scores={spawn_immune=1..}] run effect give @s minecraft:resistance 1 4 true


# Actionbar

scoreboard players add #ab_timer global 1
execute if score #ab_timer global matches 20 run function loadouts:actionbar
execute if score #ab_timer global matches 20 run function loadouts:admin/scoreboard/update_winning
execute if score #ab_timer global matches 20 run function loadouts:admin/scoreboard/update_map
execute if score #ab_timer global matches 20 run function loadouts:admin/scoreboard/update_mode
execute if score #ab_timer global matches 20 run scoreboard players set #ab_timer global 0


# Thermal vision

execute as @a[scores={thermal_active=1}] at @s run scoreboard players remove @s thermal_timer 1
execute as @a[scores={thermal_active=1, thermal_timer=0}] at @s run clear @s thermal_imaging_goggles:thermal_imaging_goggles_helmet

execute as @a[scores={thermal_active=1,thermal_timer=0},tag=armor_light] at @s run item replace entity @s armor.head with mcsp:opscore_helmet{display:{Name:'{"text":"Light Tac Helmet"}'}}
execute as @a[scores={thermal_active=1, thermal_timer=0}] unless entity @s[tag=armor_light] if entity @s[tag=camo_2] at @s run item replace entity @s armor.head with superbwarfare:ru_helmet_6b47{display:{Name:'{"text":"Marsh Heavy Helmet"}'}}
execute as @a[scores={thermal_active=1, thermal_timer=0}] unless entity @s[tag=armor_light] unless entity @s[tag=camo_2] at @s run item replace entity @s armor.head with superbwarfare:us_helmet_pastg{display:{Name:'{"text":"Desert Heavy Helmet"}'}}

execute as @a[scores={thermal_active=1, thermal_timer=0}] at @s run playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 1 1
execute as @a[scores={thermal_active=1, thermal_timer=0}] at @s run tag @s remove thermal_on
execute as @a[scores={thermal_active=1, thermal_timer=0}] at @s run scoreboard players set @s thermal_active 0

scoreboard players remove @a[scores={thermal_cd=1..}] thermal_cd 1


# Walkie Talkies

execute if score #game match_mode matches 1 run function loadouts:admin/radio/lock_tdm2
execute if score #game match_mode matches 3 run function loadouts:admin/radio/lock_tdm4
execute if score #game match_mode matches 6 run function loadouts:admin/radio/lock_tdm2


# Gun Game

execute as @a if score #game match_mode matches 5 if score @s kills > @s kills_old run function loadouts:admin/gungame/advance
execute as @a if score #game match_mode matches 5 run scoreboard players operation @s kills_old = @s kills
execute as @a if score #game match_mode matches 5 run function loadouts:admin/gungame/enforce


# WarZone

execute if score #game match_mode matches 6 if score #game wz_state matches 0 run function loadouts:admin/warzone/setup_monitor
execute if score #game match_mode matches 6 if score #game wz_state matches 1 run function loadouts:admin/warzone/monitor


# Late join (once a second is plenty -- nobody notices a <1s delay before
# being auto-assigned a team, and it turns a whole-playerbase selector scan
# from 20/sec into 1/sec)

execute if score #ab_timer global matches 0 run function loadouts:admin/team/late_join