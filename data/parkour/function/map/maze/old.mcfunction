tp @s 1021 41 -99998 0 0
spawnpoint @s 1021 41 -99998 0 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:old}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "old"
data modify storage stopwatch:player_data name set value "Sloth's Old Maze"
data modify storage stopwatch:player_data category set value "maze"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.macemap 1

tag @s add show_timer
inventory @s close 
