#function parkour:reset
#running that function resets your time, removes level items, heals you, and a bunch of other stuff that should ONLY RUN when starting/leaving a level :skull:

clear @s elytra
clear @s mace
clear @s trident
clear @s wind_charge
clear @s ender_pearl
clear @s chainmail_chestplate
clear @s carrot_on_a_stick[custom_data~{item:"dash"}]
effect clear @s
data merge entity @s {Fire:0}
data merge entity @s {fall_distance:0}
data merge entity @s {TicksFrozen:0}
data merge entity @s {Motion:[0,0,0]}

effect give @s instant_health 1 100 true

$execute in $(dimension) run tp @s $(pos0) $(pos1) $(pos2) $(yaw) $(pitch)
execute at @s run playsound entity.generic.death ambient @s ~ ~ ~ 0.25


function parkour:death_msg
# Disabled this cuz it allows you to spam chat, which is pretty cringe - Aunn