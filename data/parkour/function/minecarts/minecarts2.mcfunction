execute as @e[type=minecart] on passengers if predicate parkour:jump_predicate on vehicle \
    at @s if block ~ ~ ~ #minecraft:rails unless block ~ ~-0.5 ~ minecraft:magenta_terracotta run tag @s add minecart_jump2

execute as @e[type=minecart,tag = minecart_jump2] at @s run summon marker ~ ~ ~ {Tags:[minecart_jump2]}

execute as @e[type=marker,tag = minecart_jump2] at @s run clone ~ ~ ~ ~ ~ ~ ~ ~10 ~ strict
execute as @e[type=marker,tag = minecart_jump2] at @s run setblock ~ ~ ~ structure_void

execute as @e[type=minecart,tag = minecart_jump2] run data modify entity @s Motion[1] set value .5

tag @e[tag = minecart_jump2] add minecart_jump3
tag @e[tag = minecart_jump2] remove minecart_jump2

execute as @e[type=marker,tag = minecart_jump2] at @s if entity @n[type=minecart,tag=minecart_jump3,distance=2..] run clone ~ ~10 ~ ~ ~10 ~ ~ ~ ~ strict
execute as @e[type=marker,tag = minecart_jump3] at @s if entity @n[type=minecart,tag=minecart_jump3,distance=2..] run tag @n[type=minecart,tag=minecart_jump3] remove minecart_jump2
execute as @e[type=marker,tag = minecart_jump3] at @s if entity @n[type=minecart,tag=minecart_jump3,distance=2..] run kill @s
