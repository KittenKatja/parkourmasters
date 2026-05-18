
data modify storage stopwatch:data temp.UUID set from entity @s UUID
$data modify storage stopwatch:data temp.map_id set value $(map_id)
$data modify storage stopwatch:data temp.time set value $(time)

function new_stopwatch:manage_pbs/helper/set with storage stopwatch:data temp