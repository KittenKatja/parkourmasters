
#execute as @e[tag=collectible] at @s as @a[distance=..0.75] run tellraw @s {"hover_event":{"action":"show_text","value":[{"text":"","shadow_color":-22016}]},"text":"ʏᴏᴜ ꜰᴏᴜɴᴅ ᴀ ᴄᴏʟʟᴇᴄᴛɪʙʟᴇ!"}
execute as @e[tag=collectible] at @s as @a[distance=..0.75] at @s run visibility @s hide @e[tag=collectible,distance=..0.75]

# how the fuck do i detect if the player has picked up a collectible easily
# the current design philosophy of this is kinda uh\
you get a spawn egg\
and then you place it\
and then another collectible to collect exists\
and then idk :3\
\
but i cant figure it the hell out\
and maybe /visibility was a mistake


execute as @e[tag=collectible] at @s run rotate @s ~3 ~



