# e.g. /execute align xyz run summon marker ~.5 ~.5 ~.5 {data:{activators:["50033 46 50004","50035 46 50004"],activated_state:"resin_block",deactivated_state:"resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]"},Tags:["block_state_switch"]}

#Part3
execute if block 50091 46 49993 #minecraft:pressure_plates[powered=false] if block 50091 46 49991 #minecraft:pressure_plates[powered=false] run fill 50092 46 50008 50090 47 50008 resin_block
execute if block 50091 46 49993 #minecraft:pressure_plates[powered=true] run fill 50092 46 50008 50090 47 50008 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]
execute if block 50091 46 49991 #minecraft:pressure_plates[powered=true] run fill 50092 46 50008 50090 47 50008 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]

execute if block 50091 46 50007 #minecraft:pressure_plates[powered=false] if block 50091 46 50009 #minecraft:pressure_plates[powered=false] run fill 50092 46 49992 50090 47 49992 resin_block
execute if block 50091 46 50007 #minecraft:pressure_plates[powered=true] run fill 50092 46 49992 50090 47 49992 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]
execute if block 50091 46 50009 #minecraft:pressure_plates[powered=true] run fill 50092 46 49992 50090 47 49992 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]



execute if block 50098 46 50013 #minecraft:pressure_plates[powered=false] if block 50119 46 50012 #minecraft:pressure_plates[powered=false] run fill 50115 46 49987 50114 47 49987 resin_block
execute if block 50098 46 50013 #minecraft:pressure_plates[powered=true] run fill 50115 46 49987 50114 47 49987 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]
execute if block 50119 46 50012 #minecraft:pressure_plates[powered=true] run fill 50115 46 49987 50114 47 49987 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]

execute if block 50119 46 50012 #minecraft:pressure_plates[powered=false] if block 50098 46 50013 #minecraft:pressure_plates[powered=false] run fill 50107 46 49987 50108 47 49987 resin_block
execute if block 50098 46 50013 #minecraft:pressure_plates[powered=true] run fill 50107 46 49987 50108 47 49987 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]
execute if block 50119 46 50012 #minecraft:pressure_plates[powered=true] run fill 50107 46 49987 50108 47 49987 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]

execute if block 50098 46 49987 #minecraft:pressure_plates[powered=false] if block 50119 46 49988 #minecraft:pressure_plates[powered=false] run fill 50114 46 50013 50115 47 50013 resin_block
execute if block 50098 46 49987 #minecraft:pressure_plates[powered=true] run fill 50115 46 50013 50114 47 50013 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]
execute if block 50119 46 49988 #minecraft:pressure_plates[powered=true] run fill 50115 46 50013 50114 47 50013 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]

execute if block 50098 46 49987 #minecraft:pressure_plates[powered=false] if block 50119 46 49988 #minecraft:pressure_plates[powered=false] run fill 50107 46 50013 50108 47 50013 resin_block
execute if block 50098 46 49987 #minecraft:pressure_plates[powered=true] run fill 50107 46 50013 50108 47 50013 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]
execute if block 50119 46 49988 #minecraft:pressure_plates[powered=true] run fill 50107 46 50013 50108 47 50013 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]



execute if block 50119 46 50012 #minecraft:pressure_plates[powered=false] if block 50120 46 50000 #minecraft:pressure_plates[powered=false] run fill 50120 46 49993 50120 47 49995 resin_block
execute if block 50119 46 50012 #minecraft:pressure_plates[powered=true] run fill 50120 46 49993 50120 47 49995 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]
execute if block 50120 46 50000 #minecraft:pressure_plates[powered=true] run fill 50120 46 49993 50120 47 49995 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]

execute if block 50119 46 49988 #minecraft:pressure_plates[powered=false] if block 50120 46 50000 #minecraft:pressure_plates[powered=false] run fill 50120 46 50007 50120 47 50005 resin_block
execute if block 50119 46 49988 #minecraft:pressure_plates[powered=true] run fill 50120 46 50007 50120 47 50005 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]
execute if block 50120 46 50000 #minecraft:pressure_plates[powered=true] run fill 50120 46 50007 50120 47 50005 resin_clump[north=true,east=true,south=true,west=true,down=true,up=true]


function parkour:map/coop/coop_functions/quartz_coop_win_func
