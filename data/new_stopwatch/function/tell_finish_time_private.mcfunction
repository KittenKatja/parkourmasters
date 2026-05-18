#$tellraw @s [{color:gray,bold:true,text:"Final Time: "},{color:green,bold:false,text:"$(time_finish)"},{color:gray,bold:false,text:' (map: "$(map_finish)")'}]
execute unless score @s time.min matches ..9 unless score @s time.sec matches ..9 unless score @s time.ms matches ..5 run tellraw @s [{color:white,"selector": "@s"},{text:" completed "},{color:gray,"nbt":"map_finish","storage":"stopwatch:data"},{text:" in: "},{color:green,score:{name:"@s",objective:"time.min"}},{color:dark_green,text:":"},{color:green,score:{name:"@s",objective:"time.sec"}},{color:dark_green,text:"."},{color:green,score:{name:"@s",objective:"time.ms"}}]
execute if score @s time.min matches ..9 if score @s time.sec matches ..9 if score @s time.ms matches ..5 run tellraw @s [{color:white,"selector": "@s"},{text:" completed "},{color:gray,"nbt":"map_finish","storage":"stopwatch:data"},{text:" in: "},{color:green,text:"0"},{color:green,score:{name:"@s",objective:"time.min"}},{color:dark_green,text:":"},{color:green,text:"0"},{color:green,score:{name:"@s",objective:"time.sec"}},{color:dark_green,text:"."},{color:green,text:"0"},{color:green,score:{name:"@s",objective:"time.ms"}}]

execute if score @s time.min matches ..9 unless score @s time.sec matches ..9 unless score @s time.ms matches ..5 run tellraw @s [{color:white,"selector": "@s"},{text:" completed "},{color:gray,"nbt":"map_finish","storage":"stopwatch:data"},{text:" in: "},{color:green,text:"0"},{color:green,score:{name:"@s",objective:"time.min"}},{color:dark_green,text:":"},{color:green,score:{name:"@s",objective:"time.sec"}},{color:dark_green,text:"."},{color:green,score:{name:"@s",objective:"time.ms"}}]
execute unless score @s time.min matches ..9 if score @s time.sec matches ..9 unless score @s time.ms matches ..5 run tellraw @s [{color:white,"selector": "@s"},{text:" completed "},{color:gray,"nbt":"map_finish","storage":"stopwatch:data"},{text:" in: "},{color:green,score:{name:"@s",objective:"time.min"}},{color:dark_green,text:":"},{color:green,text:"0"},{color:green,score:{name:"@s",objective:"time.sec"}},{color:dark_green,text:"."},{color:green,score:{name:"@s",objective:"time.ms"}}]
execute unless score @s time.min matches ..9 unless score @s time.sec matches ..9 if score @s time.ms matches ..5 run tellraw @s [{color:white,"selector": "@s"},{text:" completed "},{color:gray,"nbt":"map_finish","storage":"stopwatch:data"},{text:" in: "},{color:green,score:{name:"@s",objective:"time.min"}},{color:dark_green,text:":"},{color:green,score:{name:"@s",objective:"time.sec"}},{color:dark_green,text:"."},{color:green,text:"0"},{color:green,score:{name:"@s",objective:"time.ms"}}]

execute if score @s time.min matches ..9 if score @s time.sec matches ..9 unless score @s time.ms matches ..5 run tellraw @s [{color:white,"selector": "@s"},{text:" completed "},{color:gray,"nbt":"map_finish","storage":"stopwatch:data"},{text:" in: "},{color:green,text:"0"},{color:green,score:{name:"@s",objective:"time.min"}},{color:dark_green,text:":"},{color:green,text:"0"},{color:green,score:{name:"@s",objective:"time.sec"}},{color:dark_green,text:"."},{color:green,score:{name:"@s",objective:"time.ms"}}]
execute unless score @s time.min matches ..9 if score @s time.sec matches ..9 if score @s time.ms matches ..5 run tellraw @s [{color:white,"selector": "@s"},{text:" completed "},{color:gray,"nbt":"map_finish","storage":"stopwatch:data"},{text:" in: "},{color:green,score:{name:"@s",objective:"time.min"}},{color:dark_green,text:":"},{color:green,text:"0"},{color:green,score:{name:"@s",objective:"time.sec"}},{color:dark_green,text:"."},{color:green,text:"0"},{color:green,score:{name:"@s",objective:"time.ms"}}]

execute if score @s time.min matches ..9 unless score @s time.sec matches ..9 if score @s time.ms matches ..5 run tellraw @s [{color:white,"selector": "@s"},{text:" completed "},{color:gray,"nbt":"map_finish","storage":"stopwatch:data"},{text:" in: "},{color:green,text:"0"},{color:green,score:{name:"@s",objective:"time.min"}},{color:dark_green,text:":"},{color:green,score:{name:"@s",objective:"time.sec"}},{color:dark_green,text:"."},{color:green,text:"0"},{color:green,score:{name:"@s",objective:"time.ms"}}]



#,{color:gray,bold:false,text:' (map: $(map_finish))'}


execute unless score min stopwatch.math matches ..9 unless score sec stopwatch.math matches ..9 unless score ms stopwatch.math matches ..5 run \
 tellraw @s [{text:"PB | "},{color:"green",score:{objective:"stopwatch.math",name:"min"}},{color:"dark_green",text:":"},{color:"green",score:{objective:"stopwatch.math",name:"sec"}},{color:"dark_green",text:"."},{color:"green",score:{objective:"stopwatch.math",name:"ms"}}]
execute if score min stopwatch.math matches ..9 if score sec stopwatch.math matches ..9 if score stopwatch.math stopwatch.math matches ..5 run \
 tellraw @s [{text:"PB | "},{color:green,text:"0"},{color:"green",score:{objective:"stopwatch.math",name:"min"}},{color:"dark_green",text:":"},{color:green,text:"0"},{color:"green",score:{objective:"stopwatch.math",name:"sec"}},{color:"dark_green",text:"."},{color:green,text:"0"},{color:"green",score:{objective:"stopwatch.math",name:"ms"}}]

execute if score min stopwatch.math matches ..9 unless score sec stopwatch.math matches ..9 unless score ms stopwatch.math matches ..5 run \
 tellraw @s [{text:"PB | "},{color:green,text:"0"},{color:"green",score:{objective:"stopwatch.math",name:"min"}},{color:"dark_green",text:":"},{color:"green",score:{objective:"stopwatch.math",name:"sec"}},{color:"dark_green",text:"."},{color:"green",score:{objective:"stopwatch.math",name:"ms"}}]
execute unless score min stopwatch.math matches ..9 if score sec stopwatch.math matches ..9 unless score ms stopwatch.math matches ..5 run \
 tellraw @s [{text:"PB | "},{color:"green",score:{objective:"stopwatch.math",name:"min"}},{color:"dark_green",text:":"},{color:green,text:"0"},{color:"green",score:{objective:"stopwatch.math",name:"sec"}},{color:"dark_green",text:"."},{color:"green",score:{objective:"stopwatch.math",name:"ms"}}]
execute unless score min stopwatch.math matches ..9 unless score sec stopwatch.math matches ..9 if score ms stopwatch.math matches ..5 run \
 tellraw @s [{text:"PB | "},{color:"green",score:{objective:"stopwatch.math",name:"min"}},{color:"dark_green",text:":"},{color:"green",score:{objective:"stopwatch.math",name:"sec"}},{color:"dark_green",text:"."},{color:green,text:"0"},{color:"green",score:{objective:"stopwatch.math",name:"ms"}}]

execute if score min stopwatch.math matches ..9 if score sec stopwatch.math matches ..9 unless score ms stopwatch.math matches ..5 run \
 tellraw @s [{text:"PB | "},{color:green,text:"0"},{color:"green",score:{objective:"stopwatch.math",name:"min"}},{color:"dark_green",text:":"},{color:green,text:"0"},{color:"green",score:{objective:"stopwatch.math",name:"sec"}},{color:"dark_green",text:"."},{color:"green",score:{objective:"stopwatch.math",name:"ms"}}]
execute unless score min stopwatch.math matches ..9 if score sec stopwatch.math matches ..9 if score ms stopwatch.math matches ..5 run \
 tellraw @s [{text:"PB | "},{color:"green",score:{objective:"stopwatch.math",name:"min"}},{color:"dark_green",text:":"},{color:green,text:"0"},{color:"green",score:{objective:"stopwatch.math",name:"sec"}},{color:"dark_green",text:"."},{color:green,text:"0"},{color:"green",score:{objective:"stopwatch.math",name:"ms"}}]

execute if score min stopwatch.math matches ..9 unless score sec stopwatch.math matches ..9 if score ms stopwatch.math matches ..5 run \
 tellraw @s [{text:"PB | "},{color:green,text:"0"},{color:"green",score:{objective:"stopwatch.math",name:"min"}},{color:"dark_green",text:":"},{color:"green",score:{objective:"stopwatch.math",name:"sec"}},{color:"dark_green",text:"."},{color:green,text:"0"},{color:"green",score:{objective:"stopwatch.math",name:"ms"}}]
\

#discord stuff
function new_stopwatch:tell_discord_setup
