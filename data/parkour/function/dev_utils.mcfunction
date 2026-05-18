
# dev utils (if you dont or do want something or wanna make stuff efficient for yourself)

execute as barvazan134 if entity @s[gamemode=survival] run gamemode adventure barvazan134
# execute as barvazan134 if entity @s[gamemode=creative] run attribute @s block_interaction_range base set 1.5
# execute as barvazan134 unless entity @s[gamemode=creative] run attribute @s block_interaction_range base reset
# data merge entity barvazan134 {OnGround:true}

execute as SirSlothKid if entity @s[tag=noitem,gamemode=creative] run scoreboard players set @s dashcooldown 5
execute as SirSlothKid if entity @s[tag=noitem,gamemode=creative] run tag @s add nokill
execute as SirSlothKid if entity @s[tag=noitem,gamemode=creative] run tag @s add nodelete
execute as SirSlothKid unless entity @s[tag=noitem,gamemode=creative] run tag @s remove nodelete

execute as @a[tag=seekillzone] at @s if entity @s[tag=seekillzone,y=30,dy=2] run item replace entity @s hotbar.2 with red_wool
execute as @a[tag=seekillzone] at @s unless entity @s[tag=seekillzone,y=30,dy=2] run item replace entity @s hotbar.2 with white_wool