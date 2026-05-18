tp @s 5000 41 6000 90 0
spawnpoint @s 5000 41 6000 90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:pipes}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "pipes"
data modify storage stopwatch:player_data name set value "Pipes"
data modify storage stopwatch:player_data category set value "maze"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close

