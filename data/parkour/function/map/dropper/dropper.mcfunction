tp @s 10051 -63 190 0 0
spawnpoint @s 10051 -63 190 0 0
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:dropper}]
function parkour:reset


tellraw @s ["",{color:"gold",text:"Credits: "},{color:"blue",bold:true,text:"[LINK]",click_event:{action:"open_url",url:"https://www.minecraftmaps.com/51320-the-furious-dropper"}}]
tag @s add nokill
data modify storage stopwatch:player_data map_id set value "dropper"
data modify storage stopwatch:player_data name set value "17 Level Dropper"
data modify storage stopwatch:player_data category set value "dropper"
data merge entity @s {Invulnerable:0b}
function new_stopwatch:set_map_id with entity @s

tag @s remove nofall
tag @s add show_timer
inventory @s close