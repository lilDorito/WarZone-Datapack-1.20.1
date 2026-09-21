scoreboard players reset @a armor_type_cd
scoreboard players reset @a armor_type_cd_sec

tellraw @a {"text":"[>] Armor cooldowns have been successfully reset","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1