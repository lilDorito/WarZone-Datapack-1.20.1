# WarZone: once a beacon is destroyed the winner is locked in by that,
# not by kill count, and stays displayed even if the losing team out-killed
# the winner.
execute if score #game match_mode matches 6 if score #game wz_state matches 2 if score #game wz_winner matches 1 run team modify WinRow prefix ["",{"text":"Winner: ","color":"yellow","bold":true},{"text":"[Alpha] Red","color":"dark_red"}]
execute if score #game match_mode matches 6 if score #game wz_state matches 2 if score #game wz_winner matches 2 run team modify WinRow prefix ["",{"text":"Winner: ","color":"yellow","bold":true},{"text":"[Bravo] Blue","color":"blue"}]
execute if score #game match_mode matches 6 if score #game wz_state matches 2 run return 0

scoreboard players set #curMax wt_sum -1

scoreboard players set #curSum wt_sum 0
execute as @a[team=Red] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Red] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=Blue] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Blue] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=Green] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Green] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=Yellow] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Yellow] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=Aqua] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Aqua] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=Gold] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Gold] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=LightPurple] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=LightPurple] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=White] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=White] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=LightRed] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=LightRed] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=DarkBlue] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=DarkBlue] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=DarkGreen] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=DarkGreen] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=DarkPurple] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=DarkPurple] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=DarkAqua] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=DarkAqua] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=Gray] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Gray] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=DarkGray] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=DarkGray] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #curSum wt_sum 0
execute as @a[team=Black] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Black] if score #curSum wt_sum > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #curSum wt_sum

scoreboard players set #tieCount wt_sum 0

scoreboard players set #curSum wt_sum 0
execute as @a[team=Red] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Red] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=Red] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Alpha]","color":"dark_red"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=Blue] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Blue] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=Blue] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Bravo]","color":"blue"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=Green] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Green] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=Green] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Charlie]","color":"green"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=Yellow] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Yellow] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=Yellow] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Delta]","color":"yellow"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=Aqua] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Aqua] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=Aqua] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Echo]","color":"aqua"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=Gold] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Gold] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=Gold] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Foxtrot]","color":"gold"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=LightPurple] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=LightPurple] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=LightPurple] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Golf]","color":"light_purple"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=White] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=White] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=White] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Hotel]","color":"white"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=LightRed] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=LightRed] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=LightRed] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[India]","color":"red"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=DarkBlue] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=DarkBlue] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=DarkBlue] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Kilo]","color":"dark_blue"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=DarkGreen] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=DarkGreen] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=DarkGreen] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Lima]","color":"dark_green"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=DarkPurple] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=DarkPurple] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=DarkPurple] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Mike]","color":"dark_purple"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=DarkAqua] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=DarkAqua] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=DarkAqua] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Oscar]","color":"dark_aqua"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=Gray] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Gray] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=Gray] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Sierra]","color":"gray"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=DarkGray] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=DarkGray] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=DarkGray] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Whiskey]","color":"dark_gray"}]

scoreboard players set #curSum wt_sum 0
execute as @a[team=Black] run scoreboard players operation #curSum wt_sum += @s kills
execute if entity @a[team=Black] if score #curSum wt_sum = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if entity @a[team=Black] if score #curSum wt_sum = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Zulu]","color":"black"}]

execute if score #tieCount wt_sum matches 2.. run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"Contested","color":"gray"}]