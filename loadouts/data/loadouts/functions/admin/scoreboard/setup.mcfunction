scoreboard objectives remove kills
scoreboard objectives remove deaths

scoreboard objectives add kills dummy "Kills"
scoreboard objectives add deaths deathCount "Deaths"

scoreboard objectives add global dummy
scoreboard objectives setdisplay sidebar kills
scoreboard objectives modify kills displayname {"text":"Kills","color":"yellow","bold":true}

scoreboard players reset #ab_timer kills
scoreboard players reset ab_timer kills
scoreboard players reset #Players kills
scoreboard players reset ticks_divisor kills

execute as @a run scoreboard players add @s kills 0
execute as @a run scoreboard players add @s deaths 0

function loadouts:admin/scoreboard/extra_rows