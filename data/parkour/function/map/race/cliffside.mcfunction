tp @s 4000 41 3000 90 0
spawnpoint @s 4000 41 3000 90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:cliffside}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "cliffside"
data modify storage stopwatch:player_data name set value "Cliffside"
data modify storage stopwatch:player_data category set value "race"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.racemaxtime 1200
scoreboard players set @s parkour.racemaxtime_min 01
scoreboard players set @s parkour.racemaxtime_sec 00
scoreboard players set @s parkour.racemaxtime_ms 00

scoreboard players reset @s[tag=practice_mode] parkour.racemaxtime


tag @s add show_timer
inventory @s close 
