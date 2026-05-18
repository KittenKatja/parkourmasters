tp @s 14000 35 14000 -180 0
spawnpoint @s 14000 35 14000 -180 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:tutorial}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "tutorial"
data modify storage stopwatch:player_data name set value "Ability Blocks Tutorial"
data modify storage stopwatch:player_data category set value "ability"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close
