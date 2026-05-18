$data modify storage stopwatch:player_data players[{UUID:$(UUID)}].map set from storage stopwatch:player_data map_id

$data modify storage parkour:data players_online[{UUID:$(UUID)}].map_id set from storage stopwatch:player_data map_id
$data modify storage parkour:data players_online[{UUID:$(UUID)}].category set from storage stopwatch:player_data category

$data modify storage stopwatch:player_data players[{UUID:$(UUID)}].map_name set from storage stopwatch:player_data name
$data modify storage stopwatch:player_data players[{UUID:$(UUID)}].category set from storage stopwatch:player_data category

function leavedetection:test/reset_ui