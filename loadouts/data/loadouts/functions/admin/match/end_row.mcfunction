scoreboard players add #rank temp_count 1

scoreboard players reset @s pad_r
scoreboard players reset @s pad_p1
scoreboard players reset @s pad_p2
scoreboard players reset @s pad_k1
scoreboard players reset @s pad_k2
scoreboard players reset @s pad_d1
scoreboard players reset @s pad_d2

execute if score #rank temp_count matches ..9 run scoreboard players set @s pad_r 0

execute if score @s final_pts matches ..99 run scoreboard players set @s pad_p1 0
execute if score @s final_pts matches ..9 run scoreboard players set @s pad_p2 0
execute if score @s final_kills matches ..99 run scoreboard players set @s pad_k1 0
execute if score @s final_kills matches ..9 run scoreboard players set @s pad_k2 0
execute if score @s final_deaths matches ..99 run scoreboard players set @s pad_d1 0
execute if score @s final_deaths matches ..9 run scoreboard players set @s pad_d2 0

tellraw @a ["",{"score":{"name":"@s","objective":"pad_r"},"color":"dark_gray"},{"score":{"name":"#rank","objective":"temp_count"},"color":"gray"},{"text":". ","color":"gray"},{"score":{"name":"@s","objective":"pad_p1"},"color":"dark_gray"},{"score":{"name":"@s","objective":"pad_p2"},"color":"dark_gray"},{"score":{"name":"@s","objective":"final_pts"},"color":"yellow"},{"text":" | ","color":"dark_gray"},{"score":{"name":"@s","objective":"pad_k1"},"color":"dark_gray"},{"score":{"name":"@s","objective":"pad_k2"},"color":"dark_gray"},{"score":{"name":"@s","objective":"final_kills"},"color":"green"},{"text":" | ","color":"dark_gray"},{"score":{"name":"@s","objective":"pad_d1"},"color":"dark_gray"},{"score":{"name":"@s","objective":"pad_d2"},"color":"dark_gray"},{"score":{"name":"@s","objective":"final_deaths"},"color":"red"},{"text":"  "},{"selector":"@s"}]

tag @s remove end_pending