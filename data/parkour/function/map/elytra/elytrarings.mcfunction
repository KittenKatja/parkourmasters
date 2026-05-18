tp @s 3989 309 122 180 0
spawnpoint @s 3989 309 122 180 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:elytrarings}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "elytrarings"
data modify storage stopwatch:player_data name set value "Elytra Rings"
data modify storage stopwatch:player_data category set value "elytra"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.elytra 1

# item replace entity @s[tag=practice_mode,tag=!alternate_hotbar_design] hotbar.3 with firework_rocket[custom_data={nodrop:true}] 3
# item replace entity @s[tag=practice_mode,tag=alternate_hotbar_design] hotbar.1 with firework_rocket[custom_data={nodrop:true}] 3

tag @s add show_timer
inventory @s close
