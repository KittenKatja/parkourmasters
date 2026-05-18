execute as @e[type=minecart] on passengers if predicate parkour:jump_predicate on vehicle \
    at @s if block ~ ~ ~ #minecraft:rails unless block ~ ~-1 ~ minecraft:magenta_terracotta unless block ~ ~-2 ~ minecraft:magenta_terracotta unless block ~ ~-0.5 ~ minecraft:magenta_terracotta run tag @s add minecart_jump

execute as @e[type=marker,tag=minecart_jump] at @s if block ~ ~-1 ~ magenta_terracotta run kill @s
execute as @e[type=marker,tag=minecart_jump] at @s if block ~ ~-2 ~ magenta_terracotta run kill @s
execute as @e[type=marker,tag=minecart_jump] at @s if block ~ ~-.5 ~ magenta_terracotta run kill @s

execute as @e[type=minecart,tag=minecart_jump] at @s run setblock ~ ~ ~ structure_void
execute as @e[type=minecart,tag=minecart_jump] at @s run summon marker ~ ~ ~ {Tags:["minecart_jump"]}



#execute as @e[type=marker,tag = minecart_jump] at @s unless block ~ ~50 ~ #air run function parkour:minecarts/tell_error with block ~ ~50 ~
#execute as @e[type=marker,tag = minecart_jump] at @s unless block ~ ~50 ~ #air run kill @s

#execute as @e[type=marker,tag = minecart_jump] at @s if block ~ ~50 ~ #air run clone ~ ~ ~ ~ ~ ~ ~ ~50 ~ strict
#execute as @e[type=marker,tag = minecart_jump] at @s if block ~ ~50 ~ #air run setblock ~ ~ ~ structure_void


#execute as @e[type=minecart,tag = minecart_jump] run data modify entity @s Motion[1] set value .5

#tag @e[tag = minecart_jump] add minecart_jump2
#tag @e[tag = minecart_jump] remove minecart_jump

#execute as @e[type=marker,tag = minecart_jump2] at @s unless entity @n[type=minecart,tag=minecart_jump2,distance=..2] run clone ~ ~50 ~ ~ ~50 ~ ~ ~ ~ strict
#execute as @e[type=marker,tag = minecart_jump2] at @s unless entity @n[type=minecart,tag=minecart_jump2,distance=..2] run tag @n[type=minecart,tag=minecart_jump2] remove minecart_jump
#execute as @e[type=marker,tag = minecart_jump2] at @s unless entity @n[type=minecart,tag=minecart_jump2,distance=..2] run kill @s

execute as @e[type=minecart,tag=minecart_jump] run \
    data modify entity @s Motion[1] set value .5

tag @e[type=minecart] remove minecart_jump

execute as @e[type=marker,tag=minecart_jump] at @s unless entity @e[type=minecart,distance=..2] run clone ~ ~50 ~ ~ ~50 ~ ~ ~ ~
execute as @e[type=marker,tag=minecart_jump] at @s unless entity @e[type=minecart,distance=..2.5] run kill @s

execute as @e[type=armor_stand,tag=summon_minecarts] at @s positioned ~ ~-50 ~ unless entity @n[type=minecart,distance=..2] run summon minecart ~ ~.5 ~

execute as @e[type=minecart] at @s unless predicate parkour:player_ride positioned ~ ~50 ~ unless entity @n[type=armor_stand,tag=summon_minecarts,distance=..0.5] run kill @s

execute as @e[type=minecart] at @s if block ~ ~-1 ~ blue_glazed_terracotta run kill @s

execute as @a[gamemode=adventure] at @s if block ~ ~ ~ #minecraft:rails unless block ~ ~-1 ~ blue_glazed_terracotta positioned ~ ~.5 ~ unless entity @n[type=minecart,distance=..0.1] run kill @s