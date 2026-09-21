scoreboard players set @a drone_cd 2147483647
clear @a superbwarfare:drone

tellraw @a {"text":"[>] Drone deployment disabled for this match","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1