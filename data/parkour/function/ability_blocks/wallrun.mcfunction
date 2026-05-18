tag @s add can_wallrun
execute as @s[tag=can_wallrun] at @s[tag=can_wallrun] unless block ~ ~ ~-1 #air run say wall
execute as @s[tag=can_wallrun] at @s[tag=can_wallrun] unless block ~ ~ ~1 #air run say wall
execute as @s[tag=can_wallrun] at @s[tag=can_wallrun] unless block ~-1 ~ ~ #air run say wall
execute as @s[tag=can_wallrun] at @s[tag=can_wallrun] unless block ~1 ~ ~ #air run say wall