tp @s 4000 66 107 180 0
spawnpoint @s 4000 66 107 180 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:aether}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "aether"
data modify storage stopwatch:player_data name set value "Aether Chaos"
data modify storage stopwatch:player_data category set value "dropper"
data merge entity @s {Invulnerable:0b}
function new_stopwatch:set_map_id with entity @s
tag @s remove nofall

tag @s add show_timer
inventory @s close
