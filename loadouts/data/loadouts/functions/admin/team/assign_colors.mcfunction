# A colour stays reserved (#<Team> color_taken) once anyone has joined it, even after that player logs off.
# Reservations are wiped by admin/score/reset at the start of every match.
execute unless score #Red color_taken matches 1 as @a[sort=random,limit=1,team=] run team join Red @s
execute if entity @a[team=Red] run scoreboard players set #Red color_taken 1
execute unless score #Blue color_taken matches 1 as @a[sort=random,limit=1,team=] run team join Blue @s
execute if entity @a[team=Blue] run scoreboard players set #Blue color_taken 1
execute unless score #Green color_taken matches 1 as @a[sort=random,limit=1,team=] run team join Green @s
execute if entity @a[team=Green] run scoreboard players set #Green color_taken 1
execute unless score #Yellow color_taken matches 1 as @a[sort=random,limit=1,team=] run team join Yellow @s
execute if entity @a[team=Yellow] run scoreboard players set #Yellow color_taken 1
execute unless score #Aqua color_taken matches 1 as @a[sort=random,limit=1,team=] run team join Aqua @s
execute if entity @a[team=Aqua] run scoreboard players set #Aqua color_taken 1
execute unless score #Gold color_taken matches 1 as @a[sort=random,limit=1,team=] run team join Gold @s
execute if entity @a[team=Gold] run scoreboard players set #Gold color_taken 1
execute unless score #LightPurple color_taken matches 1 as @a[sort=random,limit=1,team=] run team join LightPurple @s
execute if entity @a[team=LightPurple] run scoreboard players set #LightPurple color_taken 1
execute unless score #White color_taken matches 1 as @a[sort=random,limit=1,team=] run team join White @s
execute if entity @a[team=White] run scoreboard players set #White color_taken 1
execute unless score #LightRed color_taken matches 1 as @a[sort=random,limit=1,team=] run team join LightRed @s
execute if entity @a[team=LightRed] run scoreboard players set #LightRed color_taken 1
execute unless score #DarkBlue color_taken matches 1 as @a[sort=random,limit=1,team=] run team join DarkBlue @s
execute if entity @a[team=DarkBlue] run scoreboard players set #DarkBlue color_taken 1
execute unless score #DarkGreen color_taken matches 1 as @a[sort=random,limit=1,team=] run team join DarkGreen @s
execute if entity @a[team=DarkGreen] run scoreboard players set #DarkGreen color_taken 1
execute unless score #DarkPurple color_taken matches 1 as @a[sort=random,limit=1,team=] run team join DarkPurple @s
execute if entity @a[team=DarkPurple] run scoreboard players set #DarkPurple color_taken 1
execute unless score #DarkAqua color_taken matches 1 as @a[sort=random,limit=1,team=] run team join DarkAqua @s
execute if entity @a[team=DarkAqua] run scoreboard players set #DarkAqua color_taken 1
execute unless score #Gray color_taken matches 1 as @a[sort=random,limit=1,team=] run team join Gray @s
execute if entity @a[team=Gray] run scoreboard players set #Gray color_taken 1
execute unless score #DarkGray color_taken matches 1 as @a[sort=random,limit=1,team=] run team join DarkGray @s
execute if entity @a[team=DarkGray] run scoreboard players set #DarkGray color_taken 1
execute unless score #Black color_taken matches 1 as @a[sort=random,limit=1,team=] run team join Black @s
execute if entity @a[team=Black] run scoreboard players set #Black color_taken 1