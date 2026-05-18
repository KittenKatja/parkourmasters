
execute if entity @s[tag=in_map_editor] run function parkour:map_editor/stop
tag @s remove show_timer
tp 69 85 1
#tp 251 85 -1
spawnpoint @s 69 85 1
#spawnpoint @s 251 85 1
playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2
# function stopwatch:stop
# function stopwatch:reset

#slothy needs this <3
function parkour:map/maze/sloth_parkour_maze/reset_scores
function parkour:reset
tag @s remove nokill

scoreboard players set @s parkour.dashmaxmidair 2