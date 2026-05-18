particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.5 50 normal
particle firework ~ ~ ~ 0.1 0.1 0.1 0.5 50 normal
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1.67

function parkour:get_map_id with entity @s
execute if entity @s[tag=!private_time] run function new_stopwatch:tell_practice_finish
execute if entity @s[tag=private_time] run function new_stopwatch:tell_practice_finish_private

#slothy needs this <3
tag @s remove sloth_parkour_maze
tag @s remove nokill
function parkour:map/maze/sloth_parkour_maze/reset_scores

scoreboard players set @s spawn 1

function parkour:reset