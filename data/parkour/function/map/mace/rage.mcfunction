tp @s 67000 38 67000 -90 0
spawnpoint @s 67000 38 67000 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:rage}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "rage"
data modify storage stopwatch:player_data name set value "Beat Up Ragebird Simulator 2017"
data modify storage stopwatch:player_data category set value "mace"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.macemap 1
# scoreboard players add @s[tag=practice_mode] parkour.macemap 1


tag @s add show_timer
inventory @s close 
