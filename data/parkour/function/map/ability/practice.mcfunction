tp @s 2000 36 2000 -90 0
spawnpoint @s 2000 36 2000 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:practice}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "practice"
data modify storage stopwatch:player_data name set value "Dash Practice"
data modify storage stopwatch:player_data category set value "ability"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close