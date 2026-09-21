# Picks one arbitrary online player to bounce the loot-table rolls off of.
# All 19 stage rolls end up on the shared s0..s18 fake players, so every
# player in the match reads the same values back out in give_stage.
execute as @a[limit=1] run function loadouts:admin/gungame/roll_order_body
