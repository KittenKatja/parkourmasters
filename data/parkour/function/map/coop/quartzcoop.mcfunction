tp @s 50000 44 50000 -90 0
spawnpoint @s 50000 44 50000 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:quartzcoop}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "quartzcoop"
data modify storage stopwatch:player_data name set value "Quartz Co-op"
data modify storage stopwatch:player_data category set value "coop"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close

