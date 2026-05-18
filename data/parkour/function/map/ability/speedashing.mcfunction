tp @s 18001 34 17999 -90 0
spawnpoint @s 18001 34 17999 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:speedashing}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "speedashing"
data modify storage stopwatch:player_data name set value "Speedashing"
data modify storage stopwatch:player_data category set value "ability"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close
