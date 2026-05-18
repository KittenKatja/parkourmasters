execute as @a run function leavedetection:test/check with entity @s bukkit
execute if data storage parkour:data players_online[0] run function leavedetection:test/tell
data remove storage parkour:data players_online
execute as @a run function leavedetection:test/store_macro with entity @s bukkit

function leavedetection:test/reset_ui