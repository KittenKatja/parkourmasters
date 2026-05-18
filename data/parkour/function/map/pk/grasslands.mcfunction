tp @s 10000 46 -99999 -45 0
spawnpoint @s 10000 46 -99999 -45 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:grasslands}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "grasslands"
data modify storage stopwatch:player_data name set value "ɢʀᴀѕѕʟᴀɴᴅѕ"
data modify storage stopwatch:player_data category set value "pk"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close
