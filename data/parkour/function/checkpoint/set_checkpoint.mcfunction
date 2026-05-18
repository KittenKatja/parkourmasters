execute as @a[tag=!checkpoint] at @s if block ~ ~-1 ~ gold_block run function parkour:checkpoint/checkpoint
execute as @a[tag=!checkpoint] at @s if block ~ ~-1 ~ emerald_block run spawnpoint @s ~ ~ ~ ~ ~

execute as @a[tag=!checkpoint] at @s if block ~ ~-1 ~ emerald_block if entity @s[tag=!nocheckpoints] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 0.1 0.85 0
#execute as @a[tag=!checkpoint] at @s if block ~ ~-1 ~ emerald_block if entity @s[tag=!nocheckpoints] run particle minecraft:totem_of_undying ~ ~ ~ 0.1 0.1 0.1 0.35 8 normal

execute as @a at @s if block ~ ~-1 ~ emerald_block run function parkour:kill_pearls with entity @s

execute as @a at @s unless block ~ ~-1 ~ gold_block unless block ~ ~-1 ~ emerald_block run tag @s remove checkpoint
execute as @a at @s if block ~ ~-1 ~ gold_block run tag @s add checkpoint
execute as @a at @s if block ~ ~-1 ~ emerald_block run tag @s add checkpoint
