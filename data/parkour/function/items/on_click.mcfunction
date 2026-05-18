execute as @a[scores={parkour.rc_coas=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item:"spawn"}] run function parkour:spawn
execute as @a[scores={parkour.rc_coas=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item:"search"}] run inventory @s block -49 91 2 <white><font:parkour:gui_placeholder>0pgHg <reset><shadow:#000000FF><b><gradient:dark_green:green>Play Maps   </gradient></b></shadow><dark_green>           (Page 1)
execute as @a[scores={parkour.rc_coas=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item:"featured"}] run inventory @s block -50 91 -29 <white><font:parkour:gui_placeholder>0pg 1q1q1q1qf 1z1z1z1zfQgZgòg <reset><shadow:#000000FF><gradient:yellow:gold>🌟ꜰᴇᴀᴛᴜʀᴇᴅ ᴍᴀᴘѕ🌟
execute as @a[scores={parkour.rc_coas=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item:"dash"}] at @s run function parkour:items/dash/real_dash

execute as @a[scores={parkour.rc_coas=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item:"restart"}] run function parkour:reset_map

execute as @a[scores={parkour.rc_coas=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item:"kill"}] run data modify storage parkour:data respawn set from entity @s respawn
execute as @a[scores={parkour.rc_coas=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item:"kill"}] run data modify storage parkour:data respawn.pos0 set from storage parkour:data respawn.pos[0]
execute as @a[scores={parkour.rc_coas=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item:"kill"}] run data modify storage parkour:data respawn.pos1 set from storage parkour:data respawn.pos[1]
execute as @a[scores={parkour.rc_coas=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item:"kill"}] run data modify storage parkour:data respawn.pos2 set from storage parkour:data respawn.pos[2]

execute as @a[scores={parkour.rc_coas=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item:"kill"}] run function parkour:items/respawn with storage parkour:data respawn

execute as @a[scores={parkour.rc_coas=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item:"checkpoint"}] at @s unless block ~ ~-0.1 ~ air run function parkour:checkpoint/checkpoint

# settings
execute as @a[scores={parkour.rc_coas=1..}] if items entity @s weapon.mainhand carrot_on_a_stick[custom_data~{item:"settings"}] run function parkour:gui/settings