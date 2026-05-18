tp @s 1435 39 2545 -60 -30
spawnpoint @s 1435 39 2545 -60 -30
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:highgrounds}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "highgrounds"
data modify storage stopwatch:player_data name set value "Highgrounds"
data modify storage stopwatch:player_data category set value "mountaineering"
function new_stopwatch:set_map_id with entity @s
# effect give @s[tag=practice_mode] jump_boost infinite 1 true

tag @s add show_timer
inventory @s close

