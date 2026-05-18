## -------- THIS NEEDS TO BE IN THE BEGGING --------
execute if entity @s[tag=!nofall] run scoreboard players set @s nofall 1
execute if entity @s[tag=!nofall] run tag @s add nofall
# -------------------------------------------------

kill @s

## -------- THIS NEEDS TO BE IN THE END ------------
execute if entity @s[scores={nofall=1}] run tag @s remove nofall
execute if entity @s[scores={nofall=1}] run scoreboard players set @s nofall 0
# -------------------------------------------------