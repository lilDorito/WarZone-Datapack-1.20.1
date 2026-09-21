scoreboard players set #wz_scan_done temp_count 1

execute if predicate loadouts:warzone/blue_zone run function loadouts:admin/warzone/blue_lock
execute unless predicate loadouts:warzone/blue_zone run function loadouts:admin/warzone/blue_reject
