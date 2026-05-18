$execute unless data storage stopwatch:pb.save maps.$(map)[{UUID:$(UUID)}].time run data modify storage stopwatch:pb.save maps.$(map)[{UUID:$(UUID)}].time set value 99999999

$execute store result score curr stopwatch.math run data get storage stopwatch:pb.save maps.$(map)[{UUID:$(UUID)}].time
$scoreboard players set new stopwatch.math $(time)

execute store result storage stopwatch:pb.save new_pb int 1 run scoreboard players operation new stopwatch.math < curr stopwatch.math

$data modify storage stopwatch:pb.save maps.$(map)[{UUID:$(UUID)}].time set from storage stopwatch:pb.save new_pb
$execute store result score @s map.$(map) run data get storage stopwatch:pb.save maps.$(map)[{UUID:$(UUID)}].time