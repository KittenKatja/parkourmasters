function new_stopwatch:reset_time
scoreboard players set @s parkour.elytra 0
clear @s elytra
clear @s chainmail_chestplate
clear @s firework_rocket

scoreboard players set @s parkour.macemap 0
clear @s mace

scoreboard players set @s parkour.aquamap 0
clear @s trident

scoreboard players set @s parkour.windmap 0
clear @s wind_charge

scoreboard players set @s parkour.racemaxtime 0

clear @s ender_pearl

scoreboard players set @s parkour.dashmaxmidair 0
clear @s carrot_on_a_stick[custom_data~{item:"dash"}]


effect clear @s
data modify storage stopwatch:player_data map_id set value "spawn"
tag @s add nofall
tag @s remove nokill
tag @s remove private_time

data merge entity @s {Fire:0}
data merge entity @s {fall_distance:0}
data merge entity @s {TicksFrozen:0}
data merge entity @s {Motion:[0,0,0]}
data merge entity @s {Invulnerable:1b}

effect give @s instant_health 1 100 true

scoreboard players reset @s timer.start