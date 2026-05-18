$function new_stopwatch:write_pb with storage stopwatch:player_data players[{UUID:$(UUID)}]

$data modify storage stopwatch:data map_finish set from storage stopwatch:player_data players[{UUID:$(UUID)}].map_name

scoreboard players operation tick stopwatch.math = new stopwatch.math
function new_stopwatch:calc_time
# update lb only when new pb
function leaderboard:lb/update_all_init
execute if entity @s[tag=!private_time] run function new_stopwatch:tell_finish_time
execute if entity @s[tag=private_time] run function new_stopwatch:tell_finish_time_private


