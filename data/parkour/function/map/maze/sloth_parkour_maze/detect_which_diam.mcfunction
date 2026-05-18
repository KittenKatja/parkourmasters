
# Location 1
execute if entity @s[x=924,y=51,z=-99982,dx=1,dy=1,dz=1,tag=!slothparkourmaze.diam1] run function parkour:map/maze/sloth_parkour_maze/diam_set_effect
execute if entity @s[x=924,y=51,z=-99982,dx=1,dy=1,dz=1] run tag @s add slothparkourmaze.diam1
# Location 2
execute if entity @s[x=889,y=51,z=-99982,dx=1,dy=1,dz=1,tag=!slothparkourmaze.diam2] run function parkour:map/maze/sloth_parkour_maze/diam_set_effect
execute if entity @s[x=889,y=51,z=-99982,dx=1,dy=1,dz=1] run tag @s add slothparkourmaze.diam2
# Location 3
execute if entity @s[x=934,y=51,z=-99943,dx=1,dy=1,dz=1,tag=!slothparkourmaze.diam3] run function parkour:map/maze/sloth_parkour_maze/diam_set_effect
execute if entity @s[x=934,y=51,z=-99943,dx=1,dy=1,dz=1] run tag @s add slothparkourmaze.diam3
# Location 4
execute if entity @s[x=889,y=51,z=-99942,dx=1,dy=1,dz=1,tag=!slothparkourmaze.diam4] run function parkour:map/maze/sloth_parkour_maze/diam_set_effect
execute if entity @s[x=889,y=51,z=-99942,dx=1,dy=1,dz=1] run tag @s add slothparkourmaze.diam4


#execute if entity @s[x=924,y=51,z=-99982,dx=1,dy=1,dz=1] unless score @s slothparkourmaze.diam1 matches 1.. run function parkour:sloth_parkour_maze/diam_set_effect
#execute if entity @s[x=924,y=51,z=-99982,dx=1,dy=1,dz=1] run scoreboard players set @s slothparkourmaze.diam1 1
#execute if entity @s[x=889,y=51,z=-99982,dx=1,dy=1,dz=1] unless score @s slothparkourmaze.diam2 matches 1.. run function parkour:sloth_parkour_maze/diam_set_effect
#execute if entity @s[x=889,y=51,z=-99982,dx=1,dy=1,dz=1] run scoreboard players set @s slothparkourmaze.diam2 1
#execute if entity @s[x=934,y=51,z=-99943,dx=1,dy=1,dz=1] unless score @s slothparkourmaze.diam3 matches 1.. run function parkour:sloth_parkour_maze/diam_set_effect
#execute if entity @s[x=934,y=51,z=-99943,dx=1,dy=1,dz=1] run scoreboard players set @s slothparkourmaze.diam3 1
#execute if entity @s[x=889,y=51,z=-99942,dx=1,dy=1,dz=1] unless score @s slothparkourmaze.diam4 matches 1.. run function parkour:sloth_parkour_maze/diam_set_effect
#execute if entity @s[x=889,y=51,z=-99942,dx=1,dy=1,dz=1] run scoreboard players set @s slothparkourmaze.diam4 1