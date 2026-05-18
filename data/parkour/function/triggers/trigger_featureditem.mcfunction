# scoreboard players enable @a toggle_featured_item

execute if entity @s[tag=!no_featured_item] run tellraw @s {color:"red",italic:true,text:"Featured levels hotbar item disabled"}
execute if entity @s[tag=!no_featured_item] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2
execute if entity @s[tag=!no_featured_item] run return run tag @s add no_featured_item

execute if entity @s[tag=no_featured_item] run tellraw @s {color:"green",italic:true,text:"Featured levels hotbar item enabled"}
execute if entity @s[tag=no_featured_item] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2
execute if entity @s[tag=no_featured_item] run return run tag @s remove no_featured_item