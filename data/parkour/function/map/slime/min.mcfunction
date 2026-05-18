tp @s -1088 69 888 0 0
spawnpoint @s -1088 69 888 0 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:min}]
function parkour:reset

data modify storage stopwatch:player_data map_id set value "min"
data modify storage stopwatch:player_data name set value "40 ᴍɪɴ ᴇᴀѕʏ ᴄᴏᴜʀѕᴇ"
data modify storage stopwatch:player_data category set value "slime"
function new_stopwatch:set_map_id with entity @s
item replace entity @s hotbar.2 with wind_charge[item_name={"bold":true,"extra":[{"extra":[{"color":"red","text":"ѕ"},{"color":"#FF8E55","text":"ᴋ"},{"color":"#FFC655","text":"ɪ"},{"color":"yellow","text":"ᴘ"}],"text":""}],"text":""}] 3

tag @s add show_timer
inventory @s close
