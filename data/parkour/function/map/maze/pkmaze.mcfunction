tp @s 910 41 -99998 0 0
spawnpoint @s 910 41 -99998 0 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:pkmaze}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "pkmaze"
data modify storage stopwatch:player_data name set value "Parkour Maze"
data modify storage stopwatch:player_data category set value "maze"
function new_stopwatch:set_map_id with entity @s


function parkour:map/maze/sloth_parkour_maze/reset_scores
tag @s add sloth_parkour_maze
tag @s add show_timer
inventory @s close

