tellraw @a {"text":"Saved Spawns:","color":"white","bold":true}

execute if data storage loadouts:spawns Red run tellraw @a ["§cRed: §r",{"nbt":"Red","storage":"loadouts:spawns"}]
execute unless data storage loadouts:spawns Red run tellraw @a {"text":"Red: not set","color":"gray"}

execute if data storage loadouts:spawns Red2 run tellraw @a ["§cRed 2: §r",{"nbt":"Red2","storage":"loadouts:spawns"}]
execute unless data storage loadouts:spawns Red2 run tellraw @a {"text":"Red 2: not set","color":"gray"}

execute if data storage loadouts:spawns Red3 run tellraw @a ["§cRed 3: §r",{"nbt":"Red3","storage":"loadouts:spawns"}]
execute unless data storage loadouts:spawns Red3 run tellraw @a {"text":"Red 3: not set","color":"gray"}

execute if data storage loadouts:spawns Blue run tellraw @a ["§9Blue: §r",{"nbt":"Blue","storage":"loadouts:spawns"}]
execute unless data storage loadouts:spawns Blue run tellraw @a {"text":"Blue: not set","color":"gray"}

execute if data storage loadouts:spawns Blue2 run tellraw @a ["§9Blue 2: §r",{"nbt":"Blue2","storage":"loadouts:spawns"}]
execute unless data storage loadouts:spawns Blue2 run tellraw @a {"text":"Blue 2: not set","color":"gray"}

execute if data storage loadouts:spawns Blue3 run tellraw @a ["§9Blue 3: §r",{"nbt":"Blue3","storage":"loadouts:spawns"}]
execute unless data storage loadouts:spawns Blue3 run tellraw @a {"text":"Blue 3: not set","color":"gray"}

execute if data storage loadouts:spawns Green run tellraw @a ["§aGreen: §r",{"nbt":"Green","storage":"loadouts:spawns"}]
execute unless data storage loadouts:spawns Green run tellraw @a {"text":"Green: not set","color":"gray"}

execute if data storage loadouts:spawns Green2 run tellraw @a ["§aGreen 2: §r",{"nbt":"Green2","storage":"loadouts:spawns"}]
execute unless data storage loadouts:spawns Green2 run tellraw @a {"text":"Green 2: not set","color":"gray"}

execute if data storage loadouts:spawns Green3 run tellraw @a ["§aGreen 3: §r",{"nbt":"Green3","storage":"loadouts:spawns"}]
execute unless data storage loadouts:spawns Green3 run tellraw @a {"text":"Green 3: not set","color":"gray"}

execute if data storage loadouts:spawns Yellow run tellraw @a ["§eYellow: §r",{"nbt":"Yellow","storage":"loadouts:spawns"}]
execute unless data storage loadouts:spawns Yellow run tellraw @a {"text":"Yellow: not set","color":"gray"}

execute if data storage loadouts:spawns Yellow2 run tellraw @a ["§eYellow 2: §r",{"nbt":"Yellow2","storage":"loadouts:spawns"}]
execute unless data storage loadouts:spawns Yellow2 run tellraw @a {"text":"Yellow 2: not set","color":"gray"}

execute if data storage loadouts:spawns Yellow3 run tellraw @a ["§eYellow 3: §r",{"nbt":"Yellow3","storage":"loadouts:spawns"}]
execute unless data storage loadouts:spawns Yellow3 run tellraw @a {"text":"Yellow 3: not set","color":"gray"}