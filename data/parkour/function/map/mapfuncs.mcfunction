
#coop map funcs
function parkour:map/coop/coop_functions/sloths_quartz_coop_funcs

#slothy needs this <3
execute as @a[tag=sloth_parkour_maze] at @s if block ~ ~-1 ~ minecraft:diamond_block run function parkour:map/maze/sloth_parkour_maze/detect_which_diam
