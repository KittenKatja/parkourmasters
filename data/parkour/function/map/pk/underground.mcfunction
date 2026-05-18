tp @s 1044 65 104 90 0
spawnpoint @s 1044 65 104 90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:underground}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "underground"
data modify storage stopwatch:player_data name set value "welcome to the underground!"
data modify storage stopwatch:player_data category set value "pk"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close
