
data modify storage stopwatch:data temp.UUID set from entity @s UUID
$data modify storage stopwatch:data temp.map_id set value $(map_id)

function new_stopwatch:manage_pbs/helper/get with storage stopwatch:data temp
function new_stopwatch:calc_time

tellraw @p [{text:"PB | "},{color:"green",score:{objective:"stopwatch.math",name:"min"}},{color:"dark_green",text:":"},{color:"green",score:{objective:"stopwatch.math",name:"sec"}},{color:"dark_green",text:"."},{color:"green",score:{objective:"stopwatch.math",name:"ms"}}]
