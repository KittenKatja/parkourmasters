tp @s 15000 35 15000 -180 0
spawnpoint @s 15000 35 15000 -180 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:hyperdash}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "hyperdash"
data modify storage stopwatch:player_data name set value "Hyperdash Hellscape (hard)"
data modify storage stopwatch:player_data category set value "ability"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close
