
#detect finishing a map

execute if entity @s[tag=!finish,tag=practice_mode,gamemode=adventure] at @s if block ~ ~-1 ~ blue_glazed_terracotta run function parkour:finish_practice
execute if entity @s[tag=!finish,tag=!practice_mode,gamemode=adventure] at @s if block ~ ~-1 ~ blue_glazed_terracotta run function parkour:finish
execute if entity @s[tag=!finish,tag=!practice_mode,gamemode=adventure] at @s if block ~ ~-1 ~ blue_glazed_terracotta run spawnpoint @s ~ ~ ~
execute if entity @s[gamemode=adventure] at @s if block ~ ~-1 ~ blue_glazed_terracotta run tag @s add finish
execute if entity @s[gamemode=adventure] at @s unless block ~ ~-1 ~ blue_glazed_terracotta run tag @s remove finish

tag @s[tag=finish] remove show_timer
