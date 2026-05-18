tp @s 13999 67 103 90 0
spawnpoint @s 13999 67 103 90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:mountainexpress}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "mountainexpress"
data modify storage stopwatch:player_data name set value "Mountain Express 🚂"
data modify storage stopwatch:player_data category set value "cart"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close 
