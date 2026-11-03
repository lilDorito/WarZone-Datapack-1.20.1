execute unless entity @e[tag=end_pending] run return 0

scoreboard players set #maxp temp_count -1
execute as @e[tag=end_pending] run scoreboard players operation #maxp temp_count > @s final_pts

scoreboard players set #mind temp_count 2147483647
execute as @e[tag=end_pending] if score @s final_pts = #maxp temp_count run scoreboard players operation #mind temp_count < @s final_deaths

scoreboard players set #maxk temp_count -1
execute as @e[tag=end_pending] if score @s final_pts = #maxp temp_count if score @s final_deaths = #mind temp_count run scoreboard players operation #maxk temp_count > @s final_kills

execute as @e[tag=end_pending] if score @s final_pts = #maxp temp_count if score @s final_deaths = #mind temp_count if score @s final_kills = #maxk temp_count run function loadouts:admin/match/end_row

function loadouts:admin/match/end_next