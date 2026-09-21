scoreboard players set #wz_scan_done temp_count 1

execute if predicate loadouts:warzone/red_zone run function loadouts:admin/warzone/red_lock
execute unless predicate loadouts:warzone/red_zone run function loadouts:admin/warzone/red_reject
