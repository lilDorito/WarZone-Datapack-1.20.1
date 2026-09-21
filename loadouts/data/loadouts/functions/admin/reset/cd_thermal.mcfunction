scoreboard players reset @a thermal_timer
scoreboard players reset @a thermal_active
scoreboard players reset @a thermal_cd
scoreboard players reset @a thermal_cd_sec

tellraw @a {"text":"[>] Thermal vision cooldowns have been successfully reset","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1