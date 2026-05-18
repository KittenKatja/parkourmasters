
data modify storage stopwatch:data temp.maps set from storage stopwatch:data maps
# $data modify storage stopwatch:data temp.UUID set value uuid($(UUID))
$data modify storage stopwatch:data temp.UUID set value $(UUID)

function new_stopwatch:manage_pbs/remove/helper/player_uuid