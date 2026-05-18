$execute unless data storage parkour:votes maps.$(map).count run data modify storage parkour:votes maps.$(map).count set value 0
$execute unless data storage parkour:votes maps.$(map).voters run data modify storage parkour:votes maps.$(map).voters set value []

$execute if data storage parkour:votes maps.$(map).voters[{UUID:$(UUID)}] run return run tellraw @s {"text":"You already upvoted this map.","color":"red"}


$data modify storage parkour:votes maps.$(map).voters append value {UUID:$(UUID)}

$execute store result score curr parkour.math run data get storage parkour:votes maps.$(map).count
scoreboard players add curr parkour.math 1
$execute store result storage parkour:votes maps.$(map).count int 1 run scoreboard players get curr parkour.math

tellraw @s [{"text":"Upvoted! This map now has ","color":"green"},{"score":{"name":"curr","objective":"parkour.math"},"color":"yellow"},{"text":" votes!","color":"green"}]


function parkour:gui/votes/update_all