scoreboard players add #next gid 1
scoreboard players operation @s gid = #next gid

tag @s add naming
execute at @s run summon text_display ~ ~2 ~ {Tags:["ghost","ghost_new"],text:'{"selector":"@p[tag=naming]"}'}
tag @s remove naming

scoreboard players operation @e[type=text_display,tag=ghost_new,limit=1] gid = @s gid
data modify entity @e[type=text_display,tag=ghost_new,limit=1] CustomName set from entity @e[type=text_display,tag=ghost_new,limit=1] text
data modify entity @e[type=text_display,tag=ghost_new,limit=1] text set value '""'
tp @e[type=text_display,tag=ghost_new,limit=1] 0 64 0
tag @e[type=text_display,tag=ghost_new] remove ghost_new