scoreboard players operation sec stopwatch.math = tick stopwatch.math
scoreboard players operation sec stopwatch.math /= 20 stopwatch.math

scoreboard players operation min stopwatch.math = sec stopwatch.math
scoreboard players operation min stopwatch.math /= 60 stopwatch.math

scoreboard players operation ms stopwatch.math = tick stopwatch.math
scoreboard players operation ms stopwatch.math *= 5 stopwatch.math

scoreboard players operation sec stopwatch.math %= 60 stopwatch.math
scoreboard players operation ms stopwatch.math %= 100 stopwatch.math