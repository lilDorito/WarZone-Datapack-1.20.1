# Runs "as" one fixed reference player (see roll_order.mcfunction).
# Category order is FIXED and strict, easy-to-kill -> hard-to-kill:
# LMG -> Sniper -> Rifle -> AR -> SMG -> Shotgun -> Pistol -> knife (stage_19).
# Only the SPECIFIC gun within each category is randomized, and guaranteed
# unique for the whole match via draw-without-replacement from a
# per-category NBT list.

clear @s minecraft:stick

# --- initialize each category's remaining-gun pool for this match ---
data modify storage loadouts:gungame pool1 set value [1,2,3,4]
scoreboard players set remaining1 gg_remaining 4
data modify storage loadouts:gungame pool2 set value [1,2]
scoreboard players set remaining2 gg_remaining 2
data modify storage loadouts:gungame pool3 set value [1,2]
scoreboard players set remaining3 gg_remaining 2
data modify storage loadouts:gungame pool4 set value [1,2,3,4,5,6,7,8]
scoreboard players set remaining4 gg_remaining 8
data modify storage loadouts:gungame pool5 set value [1,2,3,4,5]
scoreboard players set remaining5 gg_remaining 5
data modify storage loadouts:gungame pool6 set value [1,2,3,4,5]
scoreboard players set remaining6 gg_remaining 5
data modify storage loadouts:gungame pool7 set value [1,2,3,4]
scoreboard players set remaining7 gg_remaining 4

# ---- Stage 0 (kills=0) : category 5 (LMG) ----
scoreboard players set s0 gg_cat 5
execute if score remaining5 gg_remaining matches 5 run loot give @s loot loadouts:gungame/index_5
execute if score remaining5 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining5 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining5 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining5 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s0 gg_gun run data get storage loadouts:gungame pool5[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool5[0]
execute if score @s temp_count matches 2 store result score s0 gg_gun run data get storage loadouts:gungame pool5[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool5[1]
execute if score @s temp_count matches 3 store result score s0 gg_gun run data get storage loadouts:gungame pool5[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool5[2]
execute if score @s temp_count matches 4 store result score s0 gg_gun run data get storage loadouts:gungame pool5[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool5[3]
execute if score @s temp_count matches 5 store result score s0 gg_gun run data get storage loadouts:gungame pool5[4]
execute if score @s temp_count matches 5 run data remove storage loadouts:gungame pool5[4]
scoreboard players remove remaining5 gg_remaining 1

# ---- Stage 1 (kills=1) : category 5 (LMG) ----
scoreboard players set s1 gg_cat 5
execute if score remaining5 gg_remaining matches 5 run loot give @s loot loadouts:gungame/index_5
execute if score remaining5 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining5 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining5 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining5 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s1 gg_gun run data get storage loadouts:gungame pool5[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool5[0]
execute if score @s temp_count matches 2 store result score s1 gg_gun run data get storage loadouts:gungame pool5[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool5[1]
execute if score @s temp_count matches 3 store result score s1 gg_gun run data get storage loadouts:gungame pool5[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool5[2]
execute if score @s temp_count matches 4 store result score s1 gg_gun run data get storage loadouts:gungame pool5[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool5[3]
execute if score @s temp_count matches 5 store result score s1 gg_gun run data get storage loadouts:gungame pool5[4]
execute if score @s temp_count matches 5 run data remove storage loadouts:gungame pool5[4]
scoreboard players remove remaining5 gg_remaining 1

# ---- Stage 2 (kills=2) : category 6 (Sniper) ----
scoreboard players set s2 gg_cat 6
execute if score remaining6 gg_remaining matches 5 run loot give @s loot loadouts:gungame/index_5
execute if score remaining6 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining6 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining6 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining6 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s2 gg_gun run data get storage loadouts:gungame pool6[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool6[0]
execute if score @s temp_count matches 2 store result score s2 gg_gun run data get storage loadouts:gungame pool6[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool6[1]
execute if score @s temp_count matches 3 store result score s2 gg_gun run data get storage loadouts:gungame pool6[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool6[2]
execute if score @s temp_count matches 4 store result score s2 gg_gun run data get storage loadouts:gungame pool6[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool6[3]
execute if score @s temp_count matches 5 store result score s2 gg_gun run data get storage loadouts:gungame pool6[4]
execute if score @s temp_count matches 5 run data remove storage loadouts:gungame pool6[4]
scoreboard players remove remaining6 gg_remaining 1

# ---- Stage 3 (kills=3) : category 6 (Sniper) ----
scoreboard players set s3 gg_cat 6
execute if score remaining6 gg_remaining matches 5 run loot give @s loot loadouts:gungame/index_5
execute if score remaining6 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining6 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining6 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining6 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s3 gg_gun run data get storage loadouts:gungame pool6[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool6[0]
execute if score @s temp_count matches 2 store result score s3 gg_gun run data get storage loadouts:gungame pool6[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool6[1]
execute if score @s temp_count matches 3 store result score s3 gg_gun run data get storage loadouts:gungame pool6[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool6[2]
execute if score @s temp_count matches 4 store result score s3 gg_gun run data get storage loadouts:gungame pool6[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool6[3]
execute if score @s temp_count matches 5 store result score s3 gg_gun run data get storage loadouts:gungame pool6[4]
execute if score @s temp_count matches 5 run data remove storage loadouts:gungame pool6[4]
scoreboard players remove remaining6 gg_remaining 1

# ---- Stage 4 (kills=4) : category 6 (Sniper) ----
scoreboard players set s4 gg_cat 6
execute if score remaining6 gg_remaining matches 5 run loot give @s loot loadouts:gungame/index_5
execute if score remaining6 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining6 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining6 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining6 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s4 gg_gun run data get storage loadouts:gungame pool6[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool6[0]
execute if score @s temp_count matches 2 store result score s4 gg_gun run data get storage loadouts:gungame pool6[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool6[1]
execute if score @s temp_count matches 3 store result score s4 gg_gun run data get storage loadouts:gungame pool6[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool6[2]
execute if score @s temp_count matches 4 store result score s4 gg_gun run data get storage loadouts:gungame pool6[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool6[3]
execute if score @s temp_count matches 5 store result score s4 gg_gun run data get storage loadouts:gungame pool6[4]
execute if score @s temp_count matches 5 run data remove storage loadouts:gungame pool6[4]
scoreboard players remove remaining6 gg_remaining 1

# ---- Stage 5 (kills=5) : category 7 (Rifle) ----
scoreboard players set s5 gg_cat 7
execute if score remaining7 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining7 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining7 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining7 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s5 gg_gun run data get storage loadouts:gungame pool7[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool7[0]
execute if score @s temp_count matches 2 store result score s5 gg_gun run data get storage loadouts:gungame pool7[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool7[1]
execute if score @s temp_count matches 3 store result score s5 gg_gun run data get storage loadouts:gungame pool7[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool7[2]
execute if score @s temp_count matches 4 store result score s5 gg_gun run data get storage loadouts:gungame pool7[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool7[3]
scoreboard players remove remaining7 gg_remaining 1

# ---- Stage 6 (kills=6) : category 7 (Rifle) ----
scoreboard players set s6 gg_cat 7
execute if score remaining7 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining7 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining7 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining7 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s6 gg_gun run data get storage loadouts:gungame pool7[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool7[0]
execute if score @s temp_count matches 2 store result score s6 gg_gun run data get storage loadouts:gungame pool7[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool7[1]
execute if score @s temp_count matches 3 store result score s6 gg_gun run data get storage loadouts:gungame pool7[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool7[2]
execute if score @s temp_count matches 4 store result score s6 gg_gun run data get storage loadouts:gungame pool7[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool7[3]
scoreboard players remove remaining7 gg_remaining 1

# ---- Stage 7 (kills=7) : category 4 (AR) ----
scoreboard players set s7 gg_cat 4
execute if score remaining4 gg_remaining matches 8 run loot give @s loot loadouts:gungame/index_8
execute if score remaining4 gg_remaining matches 7 run loot give @s loot loadouts:gungame/index_7
execute if score remaining4 gg_remaining matches 6 run loot give @s loot loadouts:gungame/index_6
execute if score remaining4 gg_remaining matches 5 run loot give @s loot loadouts:gungame/index_5
execute if score remaining4 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining4 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining4 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining4 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s7 gg_gun run data get storage loadouts:gungame pool4[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool4[0]
execute if score @s temp_count matches 2 store result score s7 gg_gun run data get storage loadouts:gungame pool4[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool4[1]
execute if score @s temp_count matches 3 store result score s7 gg_gun run data get storage loadouts:gungame pool4[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool4[2]
execute if score @s temp_count matches 4 store result score s7 gg_gun run data get storage loadouts:gungame pool4[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool4[3]
execute if score @s temp_count matches 5 store result score s7 gg_gun run data get storage loadouts:gungame pool4[4]
execute if score @s temp_count matches 5 run data remove storage loadouts:gungame pool4[4]
execute if score @s temp_count matches 6 store result score s7 gg_gun run data get storage loadouts:gungame pool4[5]
execute if score @s temp_count matches 6 run data remove storage loadouts:gungame pool4[5]
execute if score @s temp_count matches 7 store result score s7 gg_gun run data get storage loadouts:gungame pool4[6]
execute if score @s temp_count matches 7 run data remove storage loadouts:gungame pool4[6]
execute if score @s temp_count matches 8 store result score s7 gg_gun run data get storage loadouts:gungame pool4[7]
execute if score @s temp_count matches 8 run data remove storage loadouts:gungame pool4[7]
scoreboard players remove remaining4 gg_remaining 1

# ---- Stage 8 (kills=8) : category 4 (AR) ----
scoreboard players set s8 gg_cat 4
execute if score remaining4 gg_remaining matches 8 run loot give @s loot loadouts:gungame/index_8
execute if score remaining4 gg_remaining matches 7 run loot give @s loot loadouts:gungame/index_7
execute if score remaining4 gg_remaining matches 6 run loot give @s loot loadouts:gungame/index_6
execute if score remaining4 gg_remaining matches 5 run loot give @s loot loadouts:gungame/index_5
execute if score remaining4 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining4 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining4 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining4 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s8 gg_gun run data get storage loadouts:gungame pool4[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool4[0]
execute if score @s temp_count matches 2 store result score s8 gg_gun run data get storage loadouts:gungame pool4[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool4[1]
execute if score @s temp_count matches 3 store result score s8 gg_gun run data get storage loadouts:gungame pool4[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool4[2]
execute if score @s temp_count matches 4 store result score s8 gg_gun run data get storage loadouts:gungame pool4[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool4[3]
execute if score @s temp_count matches 5 store result score s8 gg_gun run data get storage loadouts:gungame pool4[4]
execute if score @s temp_count matches 5 run data remove storage loadouts:gungame pool4[4]
execute if score @s temp_count matches 6 store result score s8 gg_gun run data get storage loadouts:gungame pool4[5]
execute if score @s temp_count matches 6 run data remove storage loadouts:gungame pool4[5]
execute if score @s temp_count matches 7 store result score s8 gg_gun run data get storage loadouts:gungame pool4[6]
execute if score @s temp_count matches 7 run data remove storage loadouts:gungame pool4[6]
execute if score @s temp_count matches 8 store result score s8 gg_gun run data get storage loadouts:gungame pool4[7]
execute if score @s temp_count matches 8 run data remove storage loadouts:gungame pool4[7]
scoreboard players remove remaining4 gg_remaining 1

# ---- Stage 9 (kills=9) : category 4 (AR) ----
scoreboard players set s9 gg_cat 4
execute if score remaining4 gg_remaining matches 8 run loot give @s loot loadouts:gungame/index_8
execute if score remaining4 gg_remaining matches 7 run loot give @s loot loadouts:gungame/index_7
execute if score remaining4 gg_remaining matches 6 run loot give @s loot loadouts:gungame/index_6
execute if score remaining4 gg_remaining matches 5 run loot give @s loot loadouts:gungame/index_5
execute if score remaining4 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining4 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining4 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining4 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s9 gg_gun run data get storage loadouts:gungame pool4[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool4[0]
execute if score @s temp_count matches 2 store result score s9 gg_gun run data get storage loadouts:gungame pool4[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool4[1]
execute if score @s temp_count matches 3 store result score s9 gg_gun run data get storage loadouts:gungame pool4[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool4[2]
execute if score @s temp_count matches 4 store result score s9 gg_gun run data get storage loadouts:gungame pool4[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool4[3]
execute if score @s temp_count matches 5 store result score s9 gg_gun run data get storage loadouts:gungame pool4[4]
execute if score @s temp_count matches 5 run data remove storage loadouts:gungame pool4[4]
execute if score @s temp_count matches 6 store result score s9 gg_gun run data get storage loadouts:gungame pool4[5]
execute if score @s temp_count matches 6 run data remove storage loadouts:gungame pool4[5]
execute if score @s temp_count matches 7 store result score s9 gg_gun run data get storage loadouts:gungame pool4[6]
execute if score @s temp_count matches 7 run data remove storage loadouts:gungame pool4[6]
execute if score @s temp_count matches 8 store result score s9 gg_gun run data get storage loadouts:gungame pool4[7]
execute if score @s temp_count matches 8 run data remove storage loadouts:gungame pool4[7]
scoreboard players remove remaining4 gg_remaining 1

# ---- Stage 10 (kills=10) : category 4 (AR) ----
scoreboard players set s10 gg_cat 4
execute if score remaining4 gg_remaining matches 8 run loot give @s loot loadouts:gungame/index_8
execute if score remaining4 gg_remaining matches 7 run loot give @s loot loadouts:gungame/index_7
execute if score remaining4 gg_remaining matches 6 run loot give @s loot loadouts:gungame/index_6
execute if score remaining4 gg_remaining matches 5 run loot give @s loot loadouts:gungame/index_5
execute if score remaining4 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining4 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining4 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining4 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s10 gg_gun run data get storage loadouts:gungame pool4[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool4[0]
execute if score @s temp_count matches 2 store result score s10 gg_gun run data get storage loadouts:gungame pool4[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool4[1]
execute if score @s temp_count matches 3 store result score s10 gg_gun run data get storage loadouts:gungame pool4[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool4[2]
execute if score @s temp_count matches 4 store result score s10 gg_gun run data get storage loadouts:gungame pool4[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool4[3]
execute if score @s temp_count matches 5 store result score s10 gg_gun run data get storage loadouts:gungame pool4[4]
execute if score @s temp_count matches 5 run data remove storage loadouts:gungame pool4[4]
execute if score @s temp_count matches 6 store result score s10 gg_gun run data get storage loadouts:gungame pool4[5]
execute if score @s temp_count matches 6 run data remove storage loadouts:gungame pool4[5]
execute if score @s temp_count matches 7 store result score s10 gg_gun run data get storage loadouts:gungame pool4[6]
execute if score @s temp_count matches 7 run data remove storage loadouts:gungame pool4[6]
execute if score @s temp_count matches 8 store result score s10 gg_gun run data get storage loadouts:gungame pool4[7]
execute if score @s temp_count matches 8 run data remove storage loadouts:gungame pool4[7]
scoreboard players remove remaining4 gg_remaining 1

# ---- Stage 11 (kills=11) : category 4 (AR) ----
scoreboard players set s11 gg_cat 4
execute if score remaining4 gg_remaining matches 8 run loot give @s loot loadouts:gungame/index_8
execute if score remaining4 gg_remaining matches 7 run loot give @s loot loadouts:gungame/index_7
execute if score remaining4 gg_remaining matches 6 run loot give @s loot loadouts:gungame/index_6
execute if score remaining4 gg_remaining matches 5 run loot give @s loot loadouts:gungame/index_5
execute if score remaining4 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining4 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining4 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining4 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s11 gg_gun run data get storage loadouts:gungame pool4[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool4[0]
execute if score @s temp_count matches 2 store result score s11 gg_gun run data get storage loadouts:gungame pool4[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool4[1]
execute if score @s temp_count matches 3 store result score s11 gg_gun run data get storage loadouts:gungame pool4[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool4[2]
execute if score @s temp_count matches 4 store result score s11 gg_gun run data get storage loadouts:gungame pool4[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool4[3]
execute if score @s temp_count matches 5 store result score s11 gg_gun run data get storage loadouts:gungame pool4[4]
execute if score @s temp_count matches 5 run data remove storage loadouts:gungame pool4[4]
execute if score @s temp_count matches 6 store result score s11 gg_gun run data get storage loadouts:gungame pool4[5]
execute if score @s temp_count matches 6 run data remove storage loadouts:gungame pool4[5]
execute if score @s temp_count matches 7 store result score s11 gg_gun run data get storage loadouts:gungame pool4[6]
execute if score @s temp_count matches 7 run data remove storage loadouts:gungame pool4[6]
execute if score @s temp_count matches 8 store result score s11 gg_gun run data get storage loadouts:gungame pool4[7]
execute if score @s temp_count matches 8 run data remove storage loadouts:gungame pool4[7]
scoreboard players remove remaining4 gg_remaining 1

# ---- Stage 12 (kills=12) : category 2 (SMG) ----
scoreboard players set s12 gg_cat 2
execute if score remaining2 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining2 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s12 gg_gun run data get storage loadouts:gungame pool2[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool2[0]
execute if score @s temp_count matches 2 store result score s12 gg_gun run data get storage loadouts:gungame pool2[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool2[1]
scoreboard players remove remaining2 gg_remaining 1

# ---- Stage 13 (kills=13) : category 2 (SMG) ----
scoreboard players set s13 gg_cat 2
execute if score remaining2 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining2 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s13 gg_gun run data get storage loadouts:gungame pool2[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool2[0]
execute if score @s temp_count matches 2 store result score s13 gg_gun run data get storage loadouts:gungame pool2[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool2[1]
scoreboard players remove remaining2 gg_remaining 1

# ---- Stage 14 (kills=14) : category 3 (Shotgun) ----
scoreboard players set s14 gg_cat 3
execute if score remaining3 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining3 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s14 gg_gun run data get storage loadouts:gungame pool3[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool3[0]
execute if score @s temp_count matches 2 store result score s14 gg_gun run data get storage loadouts:gungame pool3[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool3[1]
scoreboard players remove remaining3 gg_remaining 1

# ---- Stage 15 (kills=15) : category 3 (Shotgun) ----
scoreboard players set s15 gg_cat 3
execute if score remaining3 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining3 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s15 gg_gun run data get storage loadouts:gungame pool3[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool3[0]
execute if score @s temp_count matches 2 store result score s15 gg_gun run data get storage loadouts:gungame pool3[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool3[1]
scoreboard players remove remaining3 gg_remaining 1

# ---- Stage 16 (kills=16) : category 1 (Pistol) ----
scoreboard players set s16 gg_cat 1
execute if score remaining1 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining1 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining1 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining1 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s16 gg_gun run data get storage loadouts:gungame pool1[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool1[0]
execute if score @s temp_count matches 2 store result score s16 gg_gun run data get storage loadouts:gungame pool1[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool1[1]
execute if score @s temp_count matches 3 store result score s16 gg_gun run data get storage loadouts:gungame pool1[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool1[2]
execute if score @s temp_count matches 4 store result score s16 gg_gun run data get storage loadouts:gungame pool1[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool1[3]
scoreboard players remove remaining1 gg_remaining 1

# ---- Stage 17 (kills=17) : category 1 (Pistol) ----
scoreboard players set s17 gg_cat 1
execute if score remaining1 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining1 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining1 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining1 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s17 gg_gun run data get storage loadouts:gungame pool1[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool1[0]
execute if score @s temp_count matches 2 store result score s17 gg_gun run data get storage loadouts:gungame pool1[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool1[1]
execute if score @s temp_count matches 3 store result score s17 gg_gun run data get storage loadouts:gungame pool1[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool1[2]
execute if score @s temp_count matches 4 store result score s17 gg_gun run data get storage loadouts:gungame pool1[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool1[3]
scoreboard players remove remaining1 gg_remaining 1

# ---- Stage 18 (kills=18) : category 1 (Pistol) ----
scoreboard players set s18 gg_cat 1
execute if score remaining1 gg_remaining matches 4 run loot give @s loot loadouts:gungame/index_4
execute if score remaining1 gg_remaining matches 3 run loot give @s loot loadouts:gungame/index_3
execute if score remaining1 gg_remaining matches 2 run loot give @s loot loadouts:gungame/index_2
execute if score remaining1 gg_remaining matches 1 run loot give @s loot loadouts:gungame/index_1
execute store result score @s temp_count run clear @s minecraft:stick 0
clear @s minecraft:stick
execute if score @s temp_count matches 1 store result score s18 gg_gun run data get storage loadouts:gungame pool1[0]
execute if score @s temp_count matches 1 run data remove storage loadouts:gungame pool1[0]
execute if score @s temp_count matches 2 store result score s18 gg_gun run data get storage loadouts:gungame pool1[1]
execute if score @s temp_count matches 2 run data remove storage loadouts:gungame pool1[1]
execute if score @s temp_count matches 3 store result score s18 gg_gun run data get storage loadouts:gungame pool1[2]
execute if score @s temp_count matches 3 run data remove storage loadouts:gungame pool1[2]
execute if score @s temp_count matches 4 store result score s18 gg_gun run data get storage loadouts:gungame pool1[3]
execute if score @s temp_count matches 4 run data remove storage loadouts:gungame pool1[3]
scoreboard players remove remaining1 gg_remaining 1

