tp @s 16000 64 100 -90 0
spawnpoint @s 16000 64 100 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:portaltutorial}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "portal_tutorial"
data modify storage stopwatch:player_data name set value "Portal Tutorial"
data modify storage stopwatch:player_data category set value "portal"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close 