scoreboard objectives add stopwatch.math dummy

scoreboard players set 1 stopwatch.math 1
scoreboard players set 5 stopwatch.math 5
scoreboard players set 20 stopwatch.math 20
scoreboard players set 60 stopwatch.math 60
scoreboard players set 100 stopwatch.math 100

scoreboard objectives add timer dummy
scoreboard objectives add time.tick dummy
scoreboard objectives add time.sec dummy
scoreboard objectives add time.min dummy
scoreboard objectives add time.ms dummy

data remove storage stopwatch:data temp

function new_stopwatch:load_maps