scoreboard players reset @a kills
scoreboard players reset @a deaths

execute as @a run scoreboard players add @s kills 0
execute as @a run scoreboard players add @s deaths 0

tellraw @a {"text":"[>] Scoreboard has been successfully cleared","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1