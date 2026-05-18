tp @s 2000 41 1000 -90 0
spawnpoint @s 2000 41 1000 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:icedmomentum}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "icedmomentum"
data modify storage stopwatch:player_data name set value "Iced Momentum"
data modify storage stopwatch:player_data category set value "race"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.racemaxtime 600
scoreboard players set @s parkour.racemaxtime_min 00
scoreboard players set @s parkour.racemaxtime_sec 30
scoreboard players set @s parkour.racemaxtime_ms 00

scoreboard players reset @s[tag=practice_mode] parkour.racemaxtime

tag @s add show_timer
inventory @s close 
