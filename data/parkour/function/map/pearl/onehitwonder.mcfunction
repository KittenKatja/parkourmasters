tp @s 17000 65 100 -90 0
spawnpoint @s 17000 65 100 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:onehitwonder}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "onehitwonder"
data modify storage stopwatch:player_data name set value "One Hit Wonder"
data modify storage stopwatch:player_data category set value "pearl"
function new_stopwatch:set_map_id with entity @s
tag @s add private_time

tag @s add show_timer
inventory @s close 
