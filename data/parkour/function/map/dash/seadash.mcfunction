tp @s -956 32 454 90 0
spawnpoint @s -956 32 454 90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:seadash}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "seadash"
data modify storage stopwatch:player_data name set value "Sea Dash"
data modify storage stopwatch:player_data category set value "dash"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.dashmaxmidair 1
# scoreboard players add @s[tag=practice_mode] parkour.dashmaxmidair 1

tag @s add show_timer
inventory @s close 