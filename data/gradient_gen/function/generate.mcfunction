
data modify storage gradient_gen:gradient_gen result set value []


data modify storage gradient_gen:hex_conversion input set from storage gradient_gen:gradient_gen input.start
function gradient_gen:hex_conversion/from
execute store result score start gradient_gen run data get storage gradient_gen:hex_conversion result

data modify storage gradient_gen:hex_conversion input set from storage gradient_gen:gradient_gen input.end
function gradient_gen:hex_conversion/from
execute store result score end gradient_gen run data get storage gradient_gen:hex_conversion result


execute store result score length gradient_gen run data get storage gradient_gen:gradient_gen input.string


scoreboard players set max gradient_gen 1
scoreboard players set min gradient_gen 0


execute store result storage gradient_gen:gradient_gen temp.max int 1 run scoreboard players get max gradient_gen
execute store result storage gradient_gen:gradient_gen temp.min int 1 run scoreboard players get min gradient_gen


scoreboard players operation decimal rgb_conversion = start gradient_gen
function gradient_gen:rgb_conversion/to
scoreboard players operation startR gradient_gen = R rgb_conversion
scoreboard players operation startG gradient_gen = G rgb_conversion
scoreboard players operation startB gradient_gen = B rgb_conversion


scoreboard players operation decimal rgb_conversion = end gradient_gen
function gradient_gen:rgb_conversion/to
scoreboard players operation endR gradient_gen = R rgb_conversion
scoreboard players operation endG gradient_gen = G rgb_conversion
scoreboard players operation endB gradient_gen = B rgb_conversion





function gradient_gen:generate/loop with storage gradient_gen:gradient_gen temp


scoreboard players reset val2 gradient_gen
scoreboard players reset val1 gradient_gen
scoreboard players reset multiplier gradient_gen
scoreboard players reset t gradient_gen
scoreboard players reset n gradient_gen
scoreboard players reset length gradient_gen
scoreboard players reset B gradient_gen
scoreboard players reset endB gradient_gen
scoreboard players reset startB gradient_gen
scoreboard players reset G gradient_gen
scoreboard players reset endG gradient_gen
scoreboard players reset startG gradient_gen
scoreboard players reset R gradient_gen
scoreboard players reset endR gradient_gen
scoreboard players reset startR gradient_gen
scoreboard players reset min gradient_gen
scoreboard players reset max gradient_gen

