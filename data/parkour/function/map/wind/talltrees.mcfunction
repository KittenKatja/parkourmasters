tp @s 4000 41 4000 -90 0
spawnpoint @s 4000 41 4000 -90 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:talltrees}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "talltrees"
data modify storage stopwatch:player_data name set value "Tall Trees"
data modify storage stopwatch:player_data category set value "wind"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.windmap 1
# effect give @s[tag=practice_mode] jump_boost infinite 1 true

tag @s add show_timer
inventory @s close 
