tp @s 27000 55 27000 -90 0
spawnpoint @s 27000 55 27000 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:dashrings}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "dashrings"
data modify storage stopwatch:player_data name set value "Dash Rings"
data modify storage stopwatch:player_data category set value "dash"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.dashmaxmidair -99

tag @s add show_timer
inventory @s close 