tp @s 21300 89 117 0 0
spawnpoint @s 21300 89 117 0 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:backrooms_dash_3}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "backrooms_dash_3"
data modify storage stopwatch:player_data name set value "backrooms dash 3!"
data modify storage stopwatch:player_data category set value "pk"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close 