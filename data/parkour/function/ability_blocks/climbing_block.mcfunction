execute as @a store result score @s upv run data get entity @s Motion[1]
execute as @a at @s run summon marker ~ ~1 ~ {Tags:["temp"]}
execute as @a at @s run tp @n[type=marker,tag=temp] ~ ~.5 ~ ~ ~

execute as @a at @s if block ~ ~-.5 ~ #air at @n[type=marker,tag=temp] rotated ~ 0 if predicate parkour:is_w if block ^ ^ ^0.5 #parkour:bricks if score @s upv matches ..-1 run data modify entity @s Motion[1] set value 0
execute as @a at @s if block ~ ~-.5 ~ #air at @n[type=marker,tag=temp] rotated ~ 0 if predicate parkour:is_w if block ^ ^ ^0.5 #parkour:bricks if score @s upv matches ..-1 run scoreboard players operation @s currentdashes = @s parkour.dashmaxmidair
execute as @a at @s if block ~ ~-.5 ~ #air at @n[type=marker,tag=temp] rotated ~ 0 if predicate parkour:is_w if block ^ ^ ^0.5 #parkour:bricks if predicate parkour:jump_predicate if score @s upv matches ..0 run data modify entity @s Motion[1] set value .2

execute as @a at @s if block ~ ~-.5 ~ #air at @n[type=marker,tag=temp] rotated ~ 0 if predicate parkour:is_w if block ^ ^0.5 ^0.5 #parkour:bricks if score @s upv matches ..-1 run data modify entity @s Motion[1] set value 0
execute as @a at @s if block ~ ~-.5 ~ #air at @n[type=marker,tag=temp] rotated ~ 0 if predicate parkour:is_w if block ^ ^0.5 ^0.5 #parkour:bricks if score @s upv matches ..-1 run scoreboard players operation @s currentdashes = @s parkour.dashmaxmidair
execute as @a at @s if block ~ ~-.5 ~ #air at @n[type=marker,tag=temp] rotated ~ 0 if predicate parkour:is_w if block ^ ^0.5 ^0.5 #parkour:bricks if predicate parkour:jump_predicate if score @s upv matches ..0 run data modify entity @s Motion[1] set value .2
execute as @a at @s run kill @n[type=marker,tag=temp]

execute as @e[type=marker,tag=temp] at @s unless entity @n[type=player,distance=..2] run kill @s

