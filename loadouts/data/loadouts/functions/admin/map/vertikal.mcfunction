scoreboard players set #map map 15

verticalspawn zone clear
verticalspawn zone add tower_a -109 849 -143 792 65 160 false
verticalspawn zone add tower_b -82 816 -52 846 65 210 false
verticalspawn enable

tellraw @a {"text":"[>] Vertikal'-8 map configured","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1