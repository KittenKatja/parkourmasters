execute as @a if score @s timer.start matches 1 run scoreboard players add @s timer.tick 1
execute as @a if score @s timer.start matches 1 run execute if score @s timer.ms matches 95 run scoreboard players remove @s timer.sec 1
execute as @a if score @s timer.start matches 1 run execute if score @s timer.tick matches 20.. run scoreboard players set @s timer.tick 0
execute as @a if score @s timer.start matches 1 run execute if score @s timer.sec matches ..-1 run scoreboard players remove @s timer.min 1
execute as @a if score @s timer.start matches 1 run execute if score @s timer.sec matches ..-1 run scoreboard players set @s timer.sec 59

execute as @a if score @s timer.start matches 1 run execute if score @s timer.min matches ..0 if score @s timer.sec matches ..0 if score @s timer.ms matches ..0 run function timer:end

scoreboard players set $const_-5 counter -5
scoreboard players set $const_105 counter 105
execute as @a if score @s timer.start matches 1 run scoreboard players operation @s timer.ms = @s timer.tick
execute as @a if score @s timer.start matches 1 run scoreboard players operation @s timer.ms *= $const_-5 counter
execute as @a if score @s timer.start matches 1 run scoreboard players operation @s timer.ms += $const_105 counter
execute as @a if score @s timer.ms matches 100.. run scoreboard players set @s timer.ms 00
# execute as @a if score @s timer.sec matches 59.. run scoreboard players set @s timer.sec 00

execute as @a if score @s timer.start matches 1 run function timer:display

execute as @a at @s if block ~ ~-1 ~ emerald_block run function timer:start_timer