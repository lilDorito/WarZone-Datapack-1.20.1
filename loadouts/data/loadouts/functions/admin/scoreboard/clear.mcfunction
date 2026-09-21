scoreboard players reset @a kills
scoreboard players reset @a deaths

# "reset" deletes the entry outright, not just zeroes it, so every online
# player would vanish from the sidebar/actionbar until they next score or
# die. Re-create the entries at 0 immediately, once, right here -- correct
# whether this runs standalone or as part of a mode's start sequence.
execute as @a run scoreboard players add @s kills 0
execute as @a run scoreboard players add @s deaths 0

tellraw @a {"text":"[>] Scoreboard has been successfully cleared","color":"gold","bold":true}
playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1