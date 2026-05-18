tp @s 10002 64 1012 90 0
spawnpoint @s 10002 64 1012 90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:blocks}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "blocks"
data modify storage stopwatch:player_data name set value "ʙʟᴏᴄᴋѕ"
data modify storage stopwatch:player_data category set value "pk"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close 
