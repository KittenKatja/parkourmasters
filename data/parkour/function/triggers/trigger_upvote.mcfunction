$data modify storage parkour:data temp.map set from storage stopwatch:player_data players[{UUID:$(UUID)}].map
$data modify storage parkour:data temp.UUID set value $(UUID)

function parkour:triggers/extra/write_vote with storage parkour:data temp