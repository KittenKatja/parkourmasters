execute unless score @s currentdashes matches 1.. unless score @s currentdashes matches ..-99 run particle dust{color:0,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
execute if score @s currentdashes matches 1 run particle dust{color:39423,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
execute if score @s currentdashes matches 2 run particle dust{color:16281306,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
execute if score @s currentdashes matches 3 run particle dust{color:15082197,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
execute if score @s currentdashes matches 4 run particle dust{color:11284479,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
execute if score @s currentdashes matches 5 run particle dust{color:4798444,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
execute if score @s currentdashes matches 6 run particle dust{color:5111777,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
execute if score @s currentdashes matches 7 run particle dust{color:1897774,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
execute if score @s currentdashes matches 8 run particle dust{color:12253780,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
execute if score @s currentdashes matches 9 run particle dust{color:16580438,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
execute if score @s currentdashes matches 10 run particle dust{color:15828513,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
execute if score @s currentdashes matches 11 run particle dust{color:16269376,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
execute if score @s currentdashes matches 12.. run particle dust{color:6834728,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a

execute if score @s currentdashes matches ..-99 run particle dust{color:16777215,scale:1.75} ~ ~ ~ .3 .1 .3 2 30 force @a
playsound entity.wind_charge.wind_burst master @a ~ ~ ~ .5 2

scoreboard players remove @s currentdashes 1
execute if score @s currentdashes matches ..0 unless score @s parkour.dashmaxmidair matches ..-99 run scoreboard players reset @s currentdashes

clear @s carrot_on_a_stick[custom_data~{item:dash}]

data modify storage parkour:data dash.motion set value [0,0,0]
summon marker ~ ~ ~ {Tags:["real_dash"]}

execute store result score .x1 dashblock_rot run data get entity @n[tag=real_dash] Pos[0] 10000
execute store result score .y1 dashblock_rot run data get entity @n[tag=real_dash] Pos[1] 10000
execute store result score .z1 dashblock_rot run data get entity @n[tag=real_dash] Pos[2] 10000

tp @n[tag=real_dash] ^ ^ ^0.1

execute store result score .x2 dashblock_rot run data get entity @n[tag=real_dash] Pos[0] 10000
execute store result score .y2 dashblock_rot run data get entity @n[tag=real_dash] Pos[1] 10000
execute store result score .z2 dashblock_rot run data get entity @n[tag=real_dash] Pos[2] 10000

scoreboard players operation .x2 dashblock_rot -= .x1 dashblock_rot
scoreboard players operation .y2 dashblock_rot -= .y1 dashblock_rot
scoreboard players operation .z2 dashblock_rot -= .z1 dashblock_rot

execute store result storage parkour:data dash.motion[0] float 0.001 run scoreboard players get .x2 dashblock_rot
execute store result storage parkour:data dash.motion[1] float 0.001 run scoreboard players get .y2 dashblock_rot
execute store result storage parkour:data dash.motion[2] float 0.001 run scoreboard players get .z2 dashblock_rot

execute unless score @s dashcooldown matches 1.. run data modify entity @s Motion set from storage parkour:data dash.motion
execute if score @s dashcooldown matches 1.. if score @s parkour.dashmaxmidair matches ..-99 run data modify entity @s Motion set from storage parkour:data dash.motion

kill @n[tag=real_dash]

scoreboard players set @s dashcooldown 5
