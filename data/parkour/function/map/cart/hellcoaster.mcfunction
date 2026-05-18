tp @s 7999 55 8000 -90 0
spawnpoint @s 7999 55 8000 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:hellcoaster}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "hellcoaster"
data modify storage stopwatch:player_data name set value "Hell Coaster"
data modify storage stopwatch:player_data category set value "cart"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close 
