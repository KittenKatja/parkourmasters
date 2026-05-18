tp @s 10000 41 10000 180 0
spawnpoint @s 10000 41 10000 180 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:amountain}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "amountain"
data modify storage stopwatch:player_data name set value "ᴍᴀᴄᴇ ᴍᴏᴜɴᴛᴀɪɴ 2 (ʜᴀʀᴅ)"
data modify storage stopwatch:player_data category set value "mace"
function new_stopwatch:set_map_id with entity @s
scoreboard players set @s parkour.macemap 1
# scoreboard players add @s[tag=practice_mode] parkour.macemap 1


tag @s add show_timer
inventory @s close 
