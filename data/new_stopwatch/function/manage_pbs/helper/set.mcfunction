$execute store result score tick stopwatch.math run data get storage stopwatch:pb.save maps.$(map_id)[{UUID:$(UUID)}].time

$data modify storage stopwatch:pb.save maps.$(map_id)[{UUID:$(UUID)}].time set value $(time)