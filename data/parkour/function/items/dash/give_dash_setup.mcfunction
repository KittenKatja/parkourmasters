execute at @s if score @s dashcooldown matches 0 unless block ~ ~-.1 ~ #parkour:no_dash \
    run scoreboard players operation @s currentdashes = @s parkour.dashmaxmidair

$execute unless score @s currentdashes matches 1.. unless score @s currentdashes matches ..-99 run function parkour:items/dash/give_dash {color:black,slot:$(slot)}
$execute if score @s currentdashes matches 1 run function parkour:items/dash/give_dash {color:light_blue,slot:$(slot)}
$execute if score @s currentdashes matches 2 run function parkour:items/dash/give_dash {color:pink,slot:$(slot)}
$execute if score @s currentdashes matches 3 run function parkour:items/dash/give_dash {color:magenta,slot:$(slot)}
$execute if score @s currentdashes matches 4 run function parkour:items/dash/give_dash {color:purple,slot:$(slot)}
$execute if score @s currentdashes matches 5 run function parkour:items/dash/give_dash {color:blue,slot:$(slot)}
$execute if score @s currentdashes matches 6 run function parkour:items/dash/give_dash {color:cyan,slot:$(slot)}
$execute if score @s currentdashes matches 7 run function parkour:items/dash/give_dash {color:green,slot:$(slot)}
$execute if score @s currentdashes matches 8 run function parkour:items/dash/give_dash {color:lime,slot:$(slot)}
$execute if score @s currentdashes matches 9 run function parkour:items/dash/give_dash {color:yellow,slot:$(slot)}
$execute if score @s currentdashes matches 10 run function parkour:items/dash/give_dash {color:orange,slot:$(slot)}
$execute if score @s currentdashes matches 11 run function parkour:items/dash/give_dash {color:red,slot:$(slot)}
$execute if score @s currentdashes matches 12.. run function parkour:items/dash/give_dash {color:brown,slot:$(slot)}

$execute if score @s currentdashes matches ..-99 run function parkour:items/dash/give_dash {color:white,slot:$(slot)}