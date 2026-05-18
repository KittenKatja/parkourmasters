tp @s 4036 308 119 180 0
spawnpoint @s 4036 308 119 180 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:yesthisisthemap}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "yesthisisthemap"
data modify storage stopwatch:player_data name set value "yes this is the whole map"
data modify storage stopwatch:player_data category set value "elytra"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.elytra 1
tag @s add private_time

# item replace entity @s[tag=practice_mode,tag=!alternate_hotbar_design] hotbar.3 with firework_rocket[custom_data={nodrop:true}] 3
# item replace entity @s[tag=practice_mode,tag=alternate_hotbar_design] hotbar.1 with firework_rocket[custom_data={nodrop:true}] 3

tag @s add show_timer
inventory @s close 