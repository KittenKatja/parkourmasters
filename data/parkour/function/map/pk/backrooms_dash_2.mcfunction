tp @s 21000 65 100 -90 0
spawnpoint @s 21000 65 100 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:backrooms_dash_2}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "backrooms_dash_2"
data modify storage stopwatch:player_data name set value "backrooms dash 2!"
data modify storage stopwatch:player_data category set value "pk"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close 