scoreboard players set $const_5 counter 5
scoreboard players operation @s timer.min = @s parkour.racemaxtime_min
scoreboard players operation @s timer.sec = @s parkour.racemaxtime_sec
scoreboard players operation @s timer.ms = @s parkour.racemaxtime_ms
scoreboard players operation @s timer.tick = @s parkour.racemaxtime_ms
scoreboard players operation @s timer.tick /= $const_5 counter
scoreboard players set @s timer.start 1

execute unless score @s parkour.racemaxtime matches 1.. run scoreboard players set @s timer.start 0