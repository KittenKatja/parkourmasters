tp @s 1000 65 4000 0 0
spawnpoint @s 1000 65 4000 0 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:fallback}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "fallback"
data modify storage stopwatch:player_data name set value "Fake ahhh bugg idk u glitched ts out dm on discord sea4_18!!!!!"
data modify storage stopwatch:player_data category set value "pk"
function new_stopwatch:set_map_id with entity @s

tag @s add show_timer
inventory @s close