execute if score #game match_mode matches 5 run tellraw @s {"text":"[×] Aircraft are disabled in Gun Game!","color":"red"}
execute if score #game match_mode matches 5 run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score #game match_mode matches 5 run return 0

tag @s remove allowed
execute if score #map map matches 0 run tag @s add allowed
execute if score #map map matches 13 run tag @s add allowed
execute unless entity @s[tag=allowed] run tellraw @s {"text":"[×] Aircraft loadouts are not allowed on this map!","color":"red"}
execute unless entity @s[tag=allowed] run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute unless entity @s[tag=allowed] run return 0
tag @s remove allowed

execute as @s[scores={aircraft_cd=1..}] run scoreboard players operation @s aircraft_cd_sec = @s aircraft_cd
execute as @s[scores={aircraft_cd=1..}] run scoreboard players operation @s aircraft_cd_sec /= ticks_divisor const
execute as @s[scores={aircraft_cd=1..}] run tellraw @s ["",{"text":"[×] Aircraft loadout on cooldown! ","color":"red"},{"score":{"name":"@s","objective":"aircraft_cd_sec"}},{"text":"s"}]
execute as @s[scores={aircraft_cd=1..}] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 1 1
execute if score @s aircraft_cd matches 1.. run return 0

clear @s superbwarfare:crowbar
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"superbwarfare:a_10a",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:f_4",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:f_2",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:f_15",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:f_16",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:f-18",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:f-22",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:f-35",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:f-117",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:yf-23",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:b-2",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:reaper",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:x_47b",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:su-25",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:su-27",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:su-33",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:su-34",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:su-57",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:mig_29",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:j-20",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:f-39e",Count:1b}}
clear @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:eurofighter",Count:1b}}
clear @s superbwarfare:small_shell
clear @s superbwarfare:small_rocket
clear @s superbwarfare:agm
clear @s superbwarfare:medium_aerial_bomb
clear @s ashvehicle:aam_4_item
clear @s ashvehicle:gbu-57-item
clear @s ashvehicle:jassm_item

give @s superbwarfare:crowbar 1
give @s superbwarfare:container{BlockEntityTag:{id:"superbwarfare:container",EntityType:"ashvehicle:eurofighter",Count:1b}} 1
give @s superbwarfare:small_shell 256
give @s superbwarfare:small_rocket 32
give @s ashvehicle:aam_4_item 5
give @s superbwarfare:medium_aerial_bomb 3

tellraw @s {"text":"[✔] Eurofighter Typhoon loadout received!","color":"green"}

execute unless score #game match_mode matches 4 if score #map map matches 13 run scoreboard players set @s aircraft_cd 42000
execute unless score #game match_mode matches 4 unless score #map map matches 13 run scoreboard players set @s aircraft_cd 14000