tp @s 12006 59 5194 -140 -30
spawnpoint @s 12006 59 5194 -140 -30
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:cold_climb}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "cold_climb"
data modify storage stopwatch:player_data name set value "Cold Climb"
data modify storage stopwatch:player_data category set value "mountaineering"
function new_stopwatch:set_map_id with entity @s
# effect give @s[tag=practice_mode] jump_boost infinite 1 true

tag @s add show_timer
inventory @s close

