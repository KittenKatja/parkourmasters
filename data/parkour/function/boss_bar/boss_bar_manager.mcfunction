

scoreboard players set #bossstyle counter 12
execute if score #bosstitleid counter matches 0 run scoreboard players set #bossstyle counter 20
execute if score #bosstitleid counter matches 9 run scoreboard players set #bossstyle counter 6
execute if score #bosstitleid counter matches 11 run scoreboard players set #bossstyle counter 10
#until i can figure out the logic for this:
scoreboard players set #bosstimer counter 120
execute if score #bosstitleid counter matches 0 run scoreboard players set #bosstimer counter 240
execute if score #bosstitleid counter matches 9 run scoreboard players set #bosstimer counter 60
execute if score #bosstitleid counter matches 11 run scoreboard players set #bosstimer counter 180
execute store result bossbar pk:title_announcer max run scoreboard players get #bosstimer counter

bossbar set pk:title_announcer style notched_12
execute if score #bossstyle counter matches 0 run bossbar set pk:title_announcer style progress
execute if score #bossstyle counter matches 6 run bossbar set pk:title_announcer style notched_6
execute if score #bossstyle counter matches 10 run bossbar set pk:title_announcer style notched_10
execute if score #bossstyle counter matches 12 run bossbar set pk:title_announcer style notched_12
execute if score #bossstyle counter matches 20 run bossbar set pk:title_announcer style notched_20
#bossbar set pk:title_announcer max 120
bossbar set pk:title_announcer players @a[scores={focus=0}]
bossbar set pk:focus players @a[scores={focus=2}]
#bossbar set pk:title_announcer value 

#clone a line, add 1 to the matches x.., change the "lorem ipsum dolor sit amet" to your text 
execute if score #bosstitleid counter matches 0.. run bossbar set pk:title_announcer name "Welcome to Parkour Masters!"
execute if score #bosstitleid counter matches 1.. run bossbar set pk:title_announcer name "New Settings!"
execute if score #bosstitleid counter matches 2.. run bossbar set pk:title_announcer name "New Maps!"
execute if score #bosstitleid counter matches 3.. run bossbar set pk:title_announcer name "DM sea4_18 on Discord or /msg sea4_18 if you want to build!"
execute if score #bosstitleid counter matches 4.. run bossbar set pk:title_announcer name "Check out This Week's Featured Maps!"
execute if score #bosstitleid counter matches 5.. run bossbar set pk:title_announcer name "Use focus mode to hide other players!"
execute if score #bosstitleid counter matches 6.. run bossbar set pk:title_announcer name "Check out the Monthly Featured Maps!"
execute if score #bosstitleid counter matches 7.. run bossbar set pk:title_announcer name "Check out the Settings Menu!"
execute if score #bosstitleid counter matches 8.. run bossbar set pk:title_announcer name "New Features In Development!"
execute if score #bosstitleid counter matches 9.. run bossbar set pk:title_announcer name "Dont forget to /vote!"
#execute if score #bosstitleid counter matches 10.. run bossbar set pk:title_announcer name ["Today's secret word: ",{nbt:"secret_word",storage:"parkour:data"}]
execute if score #bosstitleid counter matches 10.. run bossbar set pk:title_announcer name "The secret word is 'Unequivocal'"
execute if score #bosstitleid counter matches 11.. run bossbar set pk:title_announcer name "Use /trigger discord to join the discord!"
execute if score #bosstitleid counter matches 12.. run bossbar set pk:title_announcer name "Check out Todays Featured Map!"
execute if score #bosstitleid counter matches 13.. run bossbar set pk:title_announcer name "Dont forget to /trigger upvote maps you like!"
execute if score #bosstitleid counter matches 14.. run bossbar set pk:title_announcer name "Check out the changelog!"


# the color is now random -conn
# its spelt colour in countries who know how to spell -- Slothy <3
# its spelt color in the eagle mainland -- Aunn <3
execute if score #bosstitlerng counter matches 0.. run bossbar set pk:title_announcer color pink
execute if score #bosstitlerng counter matches 1.. run bossbar set pk:title_announcer color green
execute if score #bosstitlerng counter matches 2.. run bossbar set pk:title_announcer color yellow
execute if score #bosstitlerng counter matches 3.. run bossbar set pk:title_announcer color red
execute if score #bosstitlerng counter matches 4.. run bossbar set pk:title_announcer color purple
execute if score #bosstitlerng counter matches 5.. run bossbar set pk:title_announcer color blue
execute if score #bosstitlerng counter matches 6.. run bossbar set pk:title_announcer color white



scoreboard players add #bosscounter counter 1

execute if score #bosscounter counter >= #bosstimer counter store result score #bosstitlerng counter run random value 0..6
execute if score #bosscounter counter >= #bosstimer counter run scoreboard players add #bosstitleid counter 1
execute if score #bosscounter counter >= #bosstimer counter run scoreboard players reset #bosscounter counter
#execute if score #bosscounter counter matches 120.. store result score #bosstitlerng counter run random value 0..6
#execute if score #bosscounter counter matches 120.. run scoreboard players add #bosstitleid counter 1
#execute if score #bosscounter counter matches 120.. run scoreboard players reset #bosscounter

#increment the matches x.. for the amount of boss bar names +1 we have
execute if score #bosstitleid counter matches 15.. run scoreboard players set #bosstitleid counter 0

execute store result bossbar pk:title_announcer value run scoreboard players get #bosscounter counter

#data merge storage parkour:data {secret_word:"b"}
#data merge storage parkour:data {secret_words:["a", "b", "c", "e", "d"]}
