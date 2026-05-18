tp @s 18000 41 99 90 0
spawnpoint @s 18000 41 99 90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:iceddripleaf}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "iceddripleaf"
data modify storage stopwatch:player_data name set value "Iced Dripleaf"
data modify storage stopwatch:player_data category set value "race"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.racemaxtime 250
scoreboard players set @s parkour.racemaxtime_min 00
scoreboard players set @s parkour.racemaxtime_sec 12
scoreboard players set @s parkour.racemaxtime_ms 50

scoreboard players reset @s[tag=practice_mode] parkour.racemaxtime

tag @s add show_timer
inventory @s close 
