particle dust{color:15113469,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
playsound entity.wind_charge.wind_burst master @a ~ ~ ~ .5 2
#playsound minecraft:block.amethyst_block.break master @a ~ ~ ~ 2 1
playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 2 .5

data modify storage parkour:data dash.motion set value [0,0,0]
summon marker ~ ~ ~ {Tags:["dash_block"]}

execute store result score .x1 dashblock_rot run data get entity @n[tag=dash_block] Pos[0] 10000
execute store result score .z1 dashblock_rot run data get entity @n[tag=dash_block] Pos[2] 10000

execute as @s at @s rotated ~ 0 run tp @n[tag=dash_block] ^ ^ ^0.1

execute store result score .x2 dashblock_rot run data get entity @n[tag=dash_block] Pos[0] 10000
execute store result score .z2 dashblock_rot run data get entity @n[tag=dash_block] Pos[2] 10000

scoreboard players operation .x2 dashblock_rot -= .x1 dashblock_rot
scoreboard players operation .z2 dashblock_rot -= .z1 dashblock_rot

execute store result storage parkour:data dash.motion[0] float 0.002 run scoreboard players get .x2 dashblock_rot
data modify storage parkour:data dash.motion[1] set value 0.14
execute store result storage parkour:data dash.motion[2] float 0.002 run scoreboard players get .z2 dashblock_rot

data modify entity @s Motion set from storage parkour:data dash.motion

kill @n[tag=dash_block]