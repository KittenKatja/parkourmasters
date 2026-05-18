
#Death message stuff
#tellraw ver
#someone make it not tellraw whenever someone resets map :P
execute run tellraw @a[tag=!nodeathmessage] [{"text":"☠ ","color":"red"},{"selector":"@s","color":"red"}]

#disabled cos timer
#title ver
#title @a actionbar [{"text":"☠ ","color":"red"},{"selector":"@s","color":"red"}]
scoreboard players add @s deathcounter 1
#ensure score reset
scoreboard players reset @s deaths