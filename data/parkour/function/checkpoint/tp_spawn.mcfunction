
#teleporting to spawn
scoreboard players enable @a spawn
tag @a[scores={spawn=1..}] remove show_timer
execute as @a[scores={spawn=1..}] run function parkour:kill_pearls with entity @s
execute as @a[scores={spawn=1..}] at @s run function parkour:spawn
scoreboard players reset @a[scores={spawn=1..}] spawn
execute if entity @a[scores={spawn=1..}] run function leavedetection:test/reset_ui