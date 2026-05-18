tellraw @s[gamemode=adventure] {"color":red,"text":"You ran out of time!"}

function parkour:reset_map

scoreboard players set @s timer.start 0
scoreboard players set @s timer.tick 0
scoreboard players set @s timer.sec 0
scoreboard players set @s timer.min 0

execute if entity @s[gamemode=adventure] run function timer:start_timer