tp @s 9040 286 43 0 0
spawnpoint @s 9040 286 43 0 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:blocks2}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "blocks2"
data modify storage stopwatch:player_data name set value "ʙʟᴏᴄᴋѕ [ᴠ2.0]"
data modify storage stopwatch:player_data category set value "pk"
data merge entity @s {Invulnerable:0b}
function new_stopwatch:set_map_id with entity @s
tag @s add nokill

tag @s add show_timer
inventory @s close