tp @s 1001 41 -100252 -90 0
spawnpoint @s 1001 41 -100252 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:basement}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "basement"
data modify storage stopwatch:player_data name set value "ʙᴀʀᴠᴀᴢᴀɴ'ѕ ʙᴀѕᴇᴍᴇɴᴛ"
data modify storage stopwatch:player_data category set value "maze"
function new_stopwatch:set_map_id with entity @s


tag @s add show_timer
inventory @s close

