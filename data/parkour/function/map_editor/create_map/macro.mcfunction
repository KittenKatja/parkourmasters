$tp @s $(x) 100 $(z)
$summon marker $(x) 99 $(z) {Tags:[create_map.center]}

$data modify storage parkour:map_editor maps append value {x:$(x), y:$(z), owner_uuid:$(owner_uuid), owner_name:$(owner_name), map_id:$(map_id)}