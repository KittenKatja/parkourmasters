tp @s -1000 41 -10004 0 0
spawnpoint @s -1000 41 -10004 0 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:endburst}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "endburst"
data modify storage stopwatch:player_data name set value "ᴇɴᴅ ʙᴜʀѕᴛ"
data modify storage stopwatch:player_data category set value "mace"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.macemap 2
# scoreboard players add @s[tag=practice_mode] parkour.macemap 1


tag @s add show_timer
inventory @s close
