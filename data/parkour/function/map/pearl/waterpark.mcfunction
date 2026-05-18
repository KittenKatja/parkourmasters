tp @s 5000 41 5000 -90 0
spawnpoint @s 5000 41 5000 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:waterpark}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "waterpark"
data modify storage stopwatch:player_data name set value "Waterpark"
data modify storage stopwatch:player_data category set value "pearl"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close 
