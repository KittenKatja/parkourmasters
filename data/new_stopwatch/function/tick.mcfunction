

execute as @a[tag=!show_timer] run title @s actionbar ""
execute as @a[tag=show_timer] run function new_stopwatch:display_timer

execute as @a[tag=show_timer] run scoreboard players add @s timer 1
execute as @a[tag=show_timer] run scoreboard players add @s time.tick 1
execute as @a[tag=show_timer] run scoreboard players add @s time.ms 5
execute as @a[tag=show_timer] if score @s time.ms matches 100.. run scoreboard players set @s time.ms 0
execute as @a[tag=show_timer] run execute if score @s time.tick matches 20.. run scoreboard players add @s time.sec 1
execute as @a[tag=show_timer] run execute if score @s time.tick matches 20.. run scoreboard players set @s time.tick 0
execute as @a[tag=show_timer] run execute if score @s time.sec matches 60 run scoreboard players add @s time.min 1
execute as @a[tag=show_timer] run execute if score @s time.sec matches 60 run scoreboard players set @s time.sec 0


execute as @a at @s if block ~ ~-0.1 ~ emerald_block run function new_stopwatch:reset_time

execute as @a unless score @s timer matches 0.. run scoreboard players set @s time.tick 0
execute as @a unless score @s timer matches 0.. run scoreboard players set @s time.sec 0
execute as @a unless score @s timer matches 0.. run scoreboard players set @s time.min 0
execute as @a unless score @s timer matches 0.. run scoreboard players set @s time.ms 0


execute as @a[tag=!show_timer] run scoreboard players set @s time.tick 0
execute as @a[tag=!show_timer] run scoreboard players set @s time.sec 0
execute as @a[tag=!show_timer] run scoreboard players set @s time.min 0
execute as @a[tag=!show_timer] run scoreboard players set @s time.ms 0
execute as @a[tag=!show_timer] run scoreboard players set @s timer 999999