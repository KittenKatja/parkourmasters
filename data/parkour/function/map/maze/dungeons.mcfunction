tp @s 813.0 41 -99942.0 -180 0
spawnpoint @s 813 41 -99942 -180 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:dungeons}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "dungeons"
data modify storage stopwatch:player_data name set value "Dungeons"
data modify storage stopwatch:player_data category set value "maze"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close
