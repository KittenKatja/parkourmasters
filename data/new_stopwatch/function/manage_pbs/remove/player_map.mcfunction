
data modify storage stopwatch:data temp.UUID set from entity @s UUID
$data modify storage stopwatch:data temp.map_id set value $(map_id)

function new_stopwatch:manage_pbs/remove/helper/player_map with storage stopwatch:data temp