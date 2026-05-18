tp @s 12345 55 12345 -90 0
spawnpoint @s 12345 55 12345 -90 0
# clear @a[tag=!nodelete] *[minecraft:custom_data~{map:secret}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "secretmap"
data modify storage stopwatch:player_data name set value "?????"
data modify storage stopwatch:player_data category set value "miscellaneous"
function new_stopwatch:set_map_id with entity @s

tag @s add show_timer
# inventory @s close
