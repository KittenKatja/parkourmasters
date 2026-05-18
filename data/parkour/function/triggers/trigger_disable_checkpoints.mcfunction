
# disable checkpoints
# scoreboard players enable @a nocheckpoints

execute if entity @s[tag=!nocheckpoints] run tellraw @s {color:"red",italic:true,text:"Checkpoints disabled"}
execute if entity @s[tag=!nocheckpoints] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2
execute if entity @s[tag=!nocheckpoints] run return run tag @s add nocheckpoints

execute if entity @s[tag=nocheckpoints] run tellraw @s {color:"green",italic:true,text:"Checkpoints enabled"}
execute if entity @s[tag=nocheckpoints] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2
execute if entity @s[tag=nocheckpoints] run return run tag @s remove nocheckpoints