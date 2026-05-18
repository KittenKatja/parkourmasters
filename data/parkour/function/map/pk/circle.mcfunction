tp @s 2000 65 100 0 0
spawnpoint @s 2000 65 100 0 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:circle}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "circle"
data modify storage stopwatch:player_data name set value "The Ninth Circle of Hell"
data modify storage stopwatch:player_data category set value "pk"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close
