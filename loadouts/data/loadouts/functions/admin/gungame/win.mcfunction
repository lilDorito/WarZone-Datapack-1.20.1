title @a title {"text":"GAME OVER","color":"red","bold":true}
tellraw @a ["",{"selector":"@s","color":"gold","bold":true},{"text":" reached 20 kills and won the Gun Game!","color":"gold","bold":true}]
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 1 1
