function loadouts:admin/gungame/clear_guns

tellraw @a ["",{"selector":"@s","color":"red"},{"text":" is down to the knife - final kill!","color":"red","bold":true}]
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 0.6 1.6
