$data modify storage parkour:data map_id set from storage stopwatch:player_data players[{UUID:$(UUID)}].map
$data modify storage parkour:data map_name set from storage stopwatch:player_data players[{UUID:$(UUID)}].map_name
$data modify storage parkour:data category set from storage stopwatch:player_data players[{UUID:$(UUID)}].category