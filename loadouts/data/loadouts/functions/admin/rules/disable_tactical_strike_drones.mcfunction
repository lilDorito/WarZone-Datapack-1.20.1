scoreboard players set #off_strike_drones global 1

clear @a superbwarfare:drone
clear @a sbw_ew_addon:heavy_bomber_drone

tellraw @a {"text":"[>] Tactical strike drone deployment disabled for this match","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1