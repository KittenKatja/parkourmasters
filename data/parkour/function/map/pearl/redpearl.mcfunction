tp @s 3000 56 3000 90 0
spawnpoint @s 3000 56 3000 90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:redpearl}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "redpearl"
data modify storage stopwatch:player_data name set value "Red Pearl (hard)"
data modify storage stopwatch:player_data category set value "pearl"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close 
