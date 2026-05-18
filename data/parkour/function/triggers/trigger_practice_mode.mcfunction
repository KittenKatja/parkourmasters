clear @s carrot_on_a_stick[custom_data~{item:"checkpoint"}]

execute if entity @s[tag=!practice_mode] run tellraw @s {color:"green",italic:true,text:"Practice mode enabled"}
execute if entity @s[tag=!practice_mode] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2
execute if entity @s[tag=!practice_mode] run return run tag @s add practice_mode

execute if entity @s[tag=practice_mode] run tellraw @s {color:"red",italic:true,text:"Practice mode disabled"}
execute if entity @s[tag=practice_mode] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2
execute if entity @s[tag=practice_mode] run return run tag @s remove practice_mode
