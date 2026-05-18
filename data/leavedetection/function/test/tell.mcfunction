tellraw @a [{"storage":"parkour:data","nbt":"players_online[0].name"}," left ᴘᴀʀᴋᴏᴜʀ ⏹ ᴍᴀsᴛᴇʀs"]
data remove storage parkour:data players_online[0]
execute if data storage parkour:data players_online[0] run function leavedetection:test/tell