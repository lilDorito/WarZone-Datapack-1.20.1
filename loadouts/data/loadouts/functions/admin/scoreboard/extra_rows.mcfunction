team remove WinRow
team remove MapRow
team remove ModeRow
team add WinRow
team add MapRow
team add ModeRow

scoreboard players set §0 kills -1
scoreboard players set §1 kills -2
scoreboard players set §3 kills -3
scoreboard players set §2 kills -4

team join WinRow §1
team join MapRow §3
team join ModeRow §2

team modify WinRow prefix ["",{"text":"Winning: ","color":"yellow","bold":true},{"text":"None","color":"gray"}]
team modify MapRow prefix ["",{"text":"Map: ","color":"yellow","bold":true},{"text":"None","color":"gray"}]
team modify ModeRow prefix ["",{"text":"Mode: ","color":"yellow","bold":true},{"text":"None","color":"gray"}]