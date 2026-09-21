setblock ~ ~ ~ minecraft:air replace
give @s minecraft:beacon 1
tellraw @s {"text":"[×] Your beacon must be placed within your team's base boundary!","color":"red"}
playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
