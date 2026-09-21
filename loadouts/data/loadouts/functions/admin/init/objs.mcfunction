# Objectives

scoreboard objectives add rpg_cd dummy
scoreboard objectives add rpg_cd_sec dummy
scoreboard objectives add javelin_cd dummy
scoreboard objectives add javelin_cd_sec dummy
scoreboard objectives add igla_cd dummy
scoreboard objectives add igla_cd_sec dummy
scoreboard objectives add thumper_cd dummy
scoreboard objectives add thumper_cd_sec dummy
scoreboard objectives add mine_cd dummy
scoreboard objectives add mine_cd_sec dummy
scoreboard objectives add c4_cd dummy
scoreboard objectives add c4_cd_sec dummy
scoreboard objectives add drone_cd dummy
scoreboard objectives add drone_cd_sec dummy
scoreboard objectives add mortar_cd dummy
scoreboard objectives add mortar_cd_sec dummy
scoreboard objectives add grenade_cd dummy
scoreboard objectives add grenade_cd_sec dummy
scoreboard objectives add mlrs_cd dummy
scoreboard objectives add mlrs_cd_sec dummy
scoreboard objectives add ar_ammo_cd dummy
scoreboard objectives add ar_ammo_cd_sec dummy
scoreboard objectives add shotgun_ammo_cd dummy
scoreboard objectives add shotgun_ammo_cd_sec dummy
scoreboard objectives add sniper_ammo_cd dummy
scoreboard objectives add sniper_ammo_cd_sec dummy
scoreboard objectives add heavy_ammo_cd dummy
scoreboard objectives add heavy_ammo_cd_sec dummy
scoreboard objectives add hg_ammo_cd dummy
scoreboard objectives add hg_ammo_cd_sec dummy
scoreboard objectives add fuel_cd dummy
scoreboard objectives add fuel_cd_sec dummy
scoreboard objectives add medkit_cd dummy
scoreboard objectives add medkit_cd_sec dummy
scoreboard objectives add food_cd dummy
scoreboard objectives add food_cd_sec dummy
scoreboard objectives add plates_cd dummy
scoreboard objectives add plates_cd_sec dummy
scoreboard objectives add armor_cd dummy
scoreboard objectives add armor_cd_sec dummy
scoreboard objectives add blocks_cd dummy
scoreboard objectives add blocks_cd_sec dummy
scoreboard objectives add ar_cd dummy
scoreboard objectives add ar_cd_sec dummy
scoreboard objectives add rifle_cd dummy
scoreboard objectives add rifle_cd_sec dummy
scoreboard objectives add shotgun_cd dummy
scoreboard objectives add shotgun_cd_sec dummy
scoreboard objectives add sniper_cd dummy
scoreboard objectives add sniper_cd_sec dummy
scoreboard objectives add lmg_cd dummy
scoreboard objectives add lmg_cd_sec dummy
scoreboard objectives add smg_cd dummy
scoreboard objectives add smg_cd_sec dummy
scoreboard objectives add pistol_cd dummy
scoreboard objectives add pistol_cd_sec dummy
scoreboard objectives add temp_count dummy
scoreboard objectives add spawn_immune dummy
scoreboard objectives add respawn minecraft.custom:minecraft.deaths
scoreboard objectives add attack_time dummy
scoreboard objectives add kills dummy
scoreboard objectives add match_mode dummy
scoreboard objectives add nextTeam dummy
scoreboard objectives add deaths_old dummy
scoreboard objectives add deaths minecraft.custom:minecraft.deaths
scoreboard objectives add global dummy
scoreboard objectives add const dummy
scoreboard objectives add map dummy
scoreboard objectives add vehicle_cd dummy
scoreboard objectives add vehicle_cd_sec dummy
scoreboard objectives add heli_cd dummy
scoreboard objectives add heli_cd_sec dummy
scoreboard objectives add aircraft_cd dummy
scoreboard objectives add aircraft_cd_sec dummy
scoreboard objectives add boat_cd dummy
scoreboard objectives add boat_cd_sec dummy
scoreboard objectives add thermal_cd dummy
scoreboard objectives add thermal_cd_sec dummy
scoreboard objectives add thermal_active dummy
scoreboard objectives add thermal_timer dummy
scoreboard objectives add armor_type_cd dummy
scoreboard objectives add armor_type_cd_sec dummy
scoreboard objectives add wt_sum dummy
scoreboard objectives add kills_old dummy
scoreboard objectives add gg_cat dummy
scoreboard objectives add gg_gun dummy
scoreboard objectives add gg_remaining dummy
scoreboard objectives add wz_state dummy
scoreboard objectives add wz_red_set dummy
scoreboard objectives add wz_blue_set dummy
scoreboard objectives add wz_winner dummy

# Values

scoreboard players set ticks_divisor const 20
scoreboard players set #ab_timer global 0
scoreboard players set #game match_mode 0
scoreboard players set #map map 0
scoreboard players set #game wz_state 0
scoreboard players set #game wz_red_set 0
scoreboard players set #game wz_blue_set 0
scoreboard players set #game wz_winner 0

tellraw @a {"text":"[>] Objectives successfully initialized","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1