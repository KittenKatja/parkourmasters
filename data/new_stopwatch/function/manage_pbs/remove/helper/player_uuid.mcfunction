data modify storage stopwatch:data temp.map_id set from storage stopwatch:data temp.maps[0]

function new_stopwatch:manage_pbs/remove/helper/player_map with storage stopwatch:data temp.maps[0]

execute if data storage stopwatch:data temp.maps[0] run function new_stopwatch:manage_pbs/remove/helper/player_uuid