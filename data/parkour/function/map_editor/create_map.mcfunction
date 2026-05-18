execute store result storage parkour:map_editor create_map.x int 1 run scoreboard players get x parkour.map_editor
execute store result storage parkour:map_editor create_map.z int 1 run scoreboard players get z parkour.map_editor
data modify storage parkour:map_editor create_map.owner_uuid set from entity @s UUID
data modify storage parkour:map_editor create_map.owner_name set from entity @s bukkit.lastKnownName
execute store result storage parkour:map_editor create_map.map_id int 1 run scoreboard players add #id parkour.map_editor 1

function parkour:map_editor/create_map/macro with storage parkour:map_editor create_map
function parkour:map_editor/start

scoreboard players add z parkour.map_editor 10000
execute if score z parkour.map_editor matches 2000000.. run function parkour:map_editor/create_map/increment_x