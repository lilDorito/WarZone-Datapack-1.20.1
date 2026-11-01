execute if score #game ended matches 1 run return 0

execute if score #game match_mode matches 5 if score #game wz_state matches 2 if score #game wz_winner matches 1 run team modify WinRow prefix ["",{"text":"Winner: ","color":"yellow","bold":true},{"text":"[Alpha] Red","color":"dark_red"}]
execute if score #game match_mode matches 5 if score #game wz_state matches 2 if score #game wz_winner matches 2 run team modify WinRow prefix ["",{"text":"Winner: ","color":"yellow","bold":true},{"text":"[Bravo] Blue","color":"blue"}]
execute if score #game match_mode matches 5 if score #game wz_state matches 2 run return 0

scoreboard players set #curMax wt_sum -1

scoreboard players set #act temp_count 0
execute if entity @a[team=Red] run scoreboard players set #act temp_count 1
execute if score #Red team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Red team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #Red team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=Blue] run scoreboard players set #act temp_count 1
execute if score #Blue team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Blue team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #Blue team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=Green] run scoreboard players set #act temp_count 1
execute if score #Green team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Green team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #Green team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=Yellow] run scoreboard players set #act temp_count 1
execute if score #Yellow team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Yellow team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #Yellow team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=Aqua] run scoreboard players set #act temp_count 1
execute if score #Aqua team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Aqua team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #Aqua team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=Gold] run scoreboard players set #act temp_count 1
execute if score #Gold team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Gold team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #Gold team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=LightPurple] run scoreboard players set #act temp_count 1
execute if score #LightPurple team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #LightPurple team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #LightPurple team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=White] run scoreboard players set #act temp_count 1
execute if score #White team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #White team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #White team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=LightRed] run scoreboard players set #act temp_count 1
execute if score #LightRed team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #LightRed team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #LightRed team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=DarkBlue] run scoreboard players set #act temp_count 1
execute if score #DarkBlue team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #DarkBlue team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #DarkBlue team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=DarkGreen] run scoreboard players set #act temp_count 1
execute if score #DarkGreen team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #DarkGreen team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #DarkGreen team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=DarkPurple] run scoreboard players set #act temp_count 1
execute if score #DarkPurple team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #DarkPurple team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #DarkPurple team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=DarkAqua] run scoreboard players set #act temp_count 1
execute if score #DarkAqua team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #DarkAqua team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #DarkAqua team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=Gray] run scoreboard players set #act temp_count 1
execute if score #Gray team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Gray team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #Gray team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=DarkGray] run scoreboard players set #act temp_count 1
execute if score #DarkGray team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #DarkGray team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #DarkGray team_pts

scoreboard players set #act temp_count 0
execute if entity @a[team=Black] run scoreboard players set #act temp_count 1
execute if score #Black team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Black team_pts > #curMax wt_sum run scoreboard players operation #curMax wt_sum = #Black team_pts

scoreboard players set #tieCount wt_sum 0

scoreboard players set #act temp_count 0
execute if entity @a[team=Red] run scoreboard players set #act temp_count 1
execute if score #Red team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Red team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #Red team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Alpha]","color":"dark_red"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=Blue] run scoreboard players set #act temp_count 1
execute if score #Blue team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Blue team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #Blue team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Bravo]","color":"blue"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=Green] run scoreboard players set #act temp_count 1
execute if score #Green team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Green team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #Green team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Charlie]","color":"green"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=Yellow] run scoreboard players set #act temp_count 1
execute if score #Yellow team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Yellow team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #Yellow team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Delta]","color":"yellow"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=Aqua] run scoreboard players set #act temp_count 1
execute if score #Aqua team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Aqua team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #Aqua team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Echo]","color":"aqua"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=Gold] run scoreboard players set #act temp_count 1
execute if score #Gold team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Gold team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #Gold team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Foxtrot]","color":"gold"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=LightPurple] run scoreboard players set #act temp_count 1
execute if score #LightPurple team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #LightPurple team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #LightPurple team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Golf]","color":"light_purple"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=White] run scoreboard players set #act temp_count 1
execute if score #White team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #White team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #White team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Hotel]","color":"white"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=LightRed] run scoreboard players set #act temp_count 1
execute if score #LightRed team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #LightRed team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #LightRed team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[India]","color":"red"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=DarkBlue] run scoreboard players set #act temp_count 1
execute if score #DarkBlue team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #DarkBlue team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #DarkBlue team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Kilo]","color":"dark_blue"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=DarkGreen] run scoreboard players set #act temp_count 1
execute if score #DarkGreen team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #DarkGreen team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #DarkGreen team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Lima]","color":"dark_green"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=DarkPurple] run scoreboard players set #act temp_count 1
execute if score #DarkPurple team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #DarkPurple team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #DarkPurple team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Mike]","color":"dark_purple"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=DarkAqua] run scoreboard players set #act temp_count 1
execute if score #DarkAqua team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #DarkAqua team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #DarkAqua team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Oscar]","color":"dark_aqua"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=Gray] run scoreboard players set #act temp_count 1
execute if score #Gray team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Gray team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #Gray team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Sierra]","color":"gray"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=DarkGray] run scoreboard players set #act temp_count 1
execute if score #DarkGray team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #DarkGray team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #DarkGray team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Whiskey]","color":"dark_gray"}]

scoreboard players set #act temp_count 0
execute if entity @a[team=Black] run scoreboard players set #act temp_count 1
execute if score #Black team_pts matches 1.. run scoreboard players set #act temp_count 1
execute if score #act temp_count matches 1 if score #Black team_pts = #curMax wt_sum run scoreboard players add #tieCount wt_sum 1
execute if score #act temp_count matches 1 if score #Black team_pts = #curMax wt_sum run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"[Zulu]","color":"black"}]

execute if score #tieCount wt_sum matches 2.. run team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"Contested","color":"gray"}]