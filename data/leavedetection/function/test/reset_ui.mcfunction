data remove block -56 91 -31 Items
data remove block -57 91 -31 Items
item replace block -57 91 -31 container.26 from block -59 91 -31 container.26
execute as @a run function leavedetection:test/fill_head with entity @s bukkit

execute as @a if items entity @s player.cursor *[custom_data~{ui:90099}] run function leavedetection:test/tp

execute as @e if items entity @s contents *[custom_data~{ui:90099}] run kill @s
clear @a *[custom_data~{ui:90099}]