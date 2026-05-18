tp @s 20000 65 99 90 0
spawnpoint @s 20000 65 99 90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:plankjump}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "plankjump"
data modify storage stopwatch:player_data name set value "Plank Jump"
data modify storage stopwatch:player_data category set value "pk"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close 
