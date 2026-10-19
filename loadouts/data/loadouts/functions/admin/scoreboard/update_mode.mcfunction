execute if score #game match_mode matches 0 run team modify ModeRow prefix ["",{"text":"Mode: ","color":"yellow","bold":true},{"text":"None","color":"gray"}]

execute if score #game match_mode matches 1 if score #game realistic matches 0 run team modify ModeRow prefix ["",{"text":"Mode: ","color":"yellow","bold":true},{"text":"Arcade TDM-2","color":"gray"}]
execute if score #game match_mode matches 1 if score #game realistic matches 1 run team modify ModeRow prefix ["",{"text":"Mode: ","color":"yellow","bold":true},{"text":"Realistic TDM-2","color":"gray"}]
execute if score #game match_mode matches 2 if score #game realistic matches 0 run team modify ModeRow prefix ["",{"text":"Mode: ","color":"yellow","bold":true},{"text":"Arcade FFA","color":"gray"}]
execute if score #game match_mode matches 2 if score #game realistic matches 1 run team modify ModeRow prefix ["",{"text":"Mode: ","color":"yellow","bold":true},{"text":"Realistic FFA","color":"gray"}]
execute if score #game match_mode matches 3 if score #game realistic matches 0 run team modify ModeRow prefix ["",{"text":"Mode: ","color":"yellow","bold":true},{"text":"Arcade TDM-4","color":"gray"}]
execute if score #game match_mode matches 3 if score #game realistic matches 1 run team modify ModeRow prefix ["",{"text":"Mode: ","color":"yellow","bold":true},{"text":"Realistic TDM-4","color":"gray"}]

execute if score #game match_mode matches 4 run team modify ModeRow prefix ["",{"text":"Mode: ","color":"yellow","bold":true},{"text":"Vehicles","color":"gray"}]
execute if score #game match_mode matches 5 run team modify ModeRow prefix ["",{"text":"Mode: ","color":"yellow","bold":true},{"text":"Gun Game","color":"gray"}]
execute if score #game match_mode matches 6 run team modify ModeRow prefix ["",{"text":"Mode: ","color":"yellow","bold":true},{"text":"WarZone","color":"gray"}]
