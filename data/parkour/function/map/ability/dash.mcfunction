tp @s 13000 35 13000 -180 0
spawnpoint @s 13000 35 13000 -180 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:dash}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "dash"
data modify storage stopwatch:player_data name set value "Dash Factory (hard)"
data modify storage stopwatch:player_data category set value "ability"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close
