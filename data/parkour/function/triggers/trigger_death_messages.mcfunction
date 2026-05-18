
#reset death messages score
# scoreboard players enable @a toggle_death_messages

execute if entity @s[tag=!nodeathmessage] run tellraw @s {color:"red",italic:true,text:"Death Messages Disabled"}
execute if entity @s[tag=!nodeathmessage] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2
execute if entity @s[tag=!nodeathmessage] run return run tag @s add nodeathmessage

execute if entity @s[tag=nodeathmessage] run tellraw @s {color:"green",italic:true,text:"Death Messages Enabled"}
execute if entity @s[tag=nodeathmessage] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2
execute if entity @s[tag=nodeathmessage] run return run tag @s remove nodeathmessage

