tp @s 6900 55 6900 -90 0
spawnpoint @s 6900 55 6900 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:carttutorial}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "carttutorial"
data modify storage stopwatch:player_data name set value "Minecart Parkour Tutorial"
data modify storage stopwatch:player_data category set value "cart"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close 
