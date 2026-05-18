tp @s 1001 62 -1020 0 0
spawnpoint @s 1001 62 -1020 0 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:playground}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "playground"
data modify storage stopwatch:player_data name set value "3255ᴍѕ ᴘʟᴀʏɢʀᴏᴜɴᴅ"
data modify storage stopwatch:player_data category set value "pk"
data merge entity @s {Invulnerable:0b}
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close 
