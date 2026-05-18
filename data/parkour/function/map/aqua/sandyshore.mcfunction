tp @s 6000 41 4998 -90 0
spawnpoint @s 6000 41 4998 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:sandyshore}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "sandyshore"
data modify storage stopwatch:player_data name set value "Sandy Shore"
data modify storage stopwatch:player_data category set value "aqua"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.aquamap 2
# scoreboard players add @s[tag=practice_mode] parkour.aquamap 1

tag @s add show_timer
inventory @s close 
