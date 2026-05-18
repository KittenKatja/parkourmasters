
# focus

# scoreboard players enable @a focus

execute as @a[scores={focus=1}] run tellraw @s {color:"green",italic:true,text:"Focus Mode enabled"}
execute as @a[scores={focus=1}] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2
execute as @a[scores={focus=1}] run visibility @s hide @a
execute as @a[scores={focus=1}] run return run scoreboard players set @s focus 2
 
execute as @a[scores={focus=3..}] run tellraw @s {color:"red",italic:true,text:"Focus Mode disabled"}
execute as @a[scores={focus=3..}] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2
execute as @a[scores={focus=3..}] run visibility @s show @a
execute as @a[scores={focus=3..}] run return run scoreboard players reset @s focus