setworldspawn 69 85 1
scoreboard objectives add parkour.rc_coas minecraft.used:minecraft.carrot_on_a_stick
forceload add -47 -8 -67 4
gamerule doImmediateRespawn true
gamerule announceAdvancements false
gamerule doDaylightCycle false
gamerule maxCommandChainLength 99999999
gamerule maxCommandForkCount 99999999
#gamerule sendCommandFeedback false

function parkour:vote
schedule function parkour:discord 90s
# schedule function parkour:add_map 180s
scoreboard objectives add nofall dummy
#add triggers
scoreboard objectives add spawn trigger
scoreboard objectives add focus trigger
scoreboard objectives add nocheckpoints trigger
scoreboard objectives add toggle_featured_item trigger
scoreboard objectives add toggle_death_messages trigger
scoreboard objectives add toggle_alternate_hotbar_design trigger
scoreboard objectives add discord trigger
scoreboard objectives add generate_map trigger
scoreboard objectives add upvote trigger
scoreboard objectives add practice_mode trigger
scoreboard objectives add has_book trigger

scoreboard objectives add parkour.macemap dummy
scoreboard objectives add parkour.aquamap dummy
scoreboard objectives add parkour.windmap dummy
scoreboard objectives add parkour.elytra dummy
scoreboard objectives add parkour.dashmaxmidair dummy
scoreboard objectives add currentdashes dummy
scoreboard objectives add dashcooldown dummy
scoreboard objectives add parkour.racemaxtime dummy
scoreboard objectives add parkour.racemaxtime_min dummy
scoreboard objectives add parkour.racemaxtime_sec dummy
scoreboard objectives add parkour.racemaxtime_ms dummy
scoreboard objectives add slothparkourmaze dummy
scoreboard objectives add parkour.math dummy

scoreboard objectives add dashblock_rot dummy
scoreboard objectives add mblock_vel dummy

scoreboard players set increase mblock_vel 50
scoreboard players set 100 mblock_vel 100
scoreboard players set 0 mblock_vel 0

scoreboard objectives add upv dummy

scoreboard objectives add player_zone dummy

#dummy counter, rn used for bossbar, could be used for other stuff too
scoreboard objectives add counter dummy

#THREE POINTS FOR GRYFFINDOR
scoreboard players add #griffindoor counter 3

# deaths
scoreboard objectives add deaths deathCount
gamerule showDeathMessages false

scoreboard objectives add id dummy

# Map Editor
scoreboard objectives add parkour.map_editor dummy
execute unless score x parkour.map_editor matches -2147483648..2147483647 run scoreboard players set x parkour.map_editor -100000
execute unless score z parkour.map_editor matches -2147483648..2147483647 run scoreboard players set z parkour.map_editor -2000000


# moved this out of tick - Slothy <3
team add dev
team add owner
team add builder
team add god

team add e

team add nopvp
team modify nopvp friendlyFire false

team modify builder prefix {"extra":[{"extra":[{"extra":[{"color":"green","text":"ʙ"},{"color":"#47F147","text":"ᴜ"},{"color":"#39E339","text":"ɪ"},{"color":"#2BD52B","text":"ʟ"},{"color":"#1CC61C","text":"ᴅ"},{"color":"#0EB80E","text":"ᴇ"},{"color":"dark_green","text":"ʀ"}],"text":""}],"text":""},"] "],"text":"["}

#playerlist shit :P
playerlist @a header set <gradient:dark_green:green>Welcome to</gradient:dark_green:green><br><gradient:#552586:#B589D6>ᴘᴀʀᴋᴏᴜʀ <#663300>■ <gradient:#FF6200:#fDB777>ᴍᴀѕᴛᴇʀѕ<green>!<reset>

scoreboard objectives add deathcounter deathCount
#bossbar announcer
bossbar add pk:title_announcer announcer_bar
bossbar set pk:title_announcer visible true
bossbar set pk:title_announcer style notched_12
bossbar set pk:title_announcer max 80
bossbar set pk:title_announcer color green
bossbar set pk:title_announcer players @a
bossbar set pk:title_announcer value 80
bossbar set pk:title_announcer name "If you're seeing this, theres an error!"

bossbar add pk:focus focus_bar
bossbar set pk:focus visible true
bossbar set pk:focus style progress
bossbar set pk:focus max 1
bossbar set pk:focus color blue
bossbar set pk:focus players @a[scores={focus=2}]
bossbar set pk:focus value 1
bossbar set pk:focus name "Focus Mode"


#ik im stupid but to me this makes more sense being at the END <3 -- slothy
tellraw @a {"text":"","extra":[{"text":"["},{"text":"ᴘ","color":"#552586"},{"text":"ᴀ","color":"#653693"},{"text":"ʀ","color":"#7546A1"},{"text":"ᴋ","color":"#8557AE"},{"text":"ᴏ","color":"#9568BB"},{"text":"ᴜ","color":"#A578C9"},{"text":"ʀ","color":"#B589D6"},{"text":" ■ ","color":"#663300"},{"text":"ᴍ","color":"#FF6200"},{"text":"ᴀ","color":"#FF7014"},{"text":"ѕ","color":"#FE7E28"},{"text":"ᴛ","color":"#FE8D3C"},{"text":"ᴇ","color":"#FE9B4F"},{"text":"ʀ","color":"#FDA963"},{"text":"ѕ","color":"#FDB777"},{"text":"]"},{"text":" ᴛ","color":"#00AA00"},{"text":"ʜ","color":"#04AE04"},{"text":"ᴇ","color":"#09B309"},{"text":" "},{"text":"ᴄ","color":"#12BC12"},{"text":"ᴏ","color":"#16C016"},{"text":"ᴅ","color":"#1BC51B"},{"text":"ᴇ","color":"#1FC91F"},{"text":" "},{"text":"ʜ","color":"#28D228"},{"text":"ᴀ","color":"#2DD72D"},{"text":"ꜱ","color":"#31DB31"},{"text":" "},{"text":"ʟ","color":"#3AE43A"},{"text":"ᴏ","color":"#3FE93F"},{"text":"ᴀ","color":"#43ED43"},{"text":"ᴅ","color":"#48F248"},{"text":"ᴇ","color":"#4CF64C"},{"text":"ᴅ","color":"#51FB51"},{"text":"!","color":"#55FF55"}]}


data modify storage parkour:data maps.dropper.count set value "2"
data modify storage parkour:data maps.dash.count set value "3"
data modify storage parkour:data maps.maze.count set value "6"
data modify storage parkour:data maps.mace.count set value "16"
data modify storage parkour:data maps.elytra.count set value "3"
data modify storage parkour:data maps.ability.count set value "5"
data modify storage parkour:data maps.pearl.count set value "3"
data modify storage parkour:data maps.slime.count set value "1"
data modify storage parkour:data maps.pk.count set value "8"
data modify storage parkour:data maps.race.count set value "2"
data modify storage parkour:data maps.coop.count set value "1"
data modify storage parkour:data maps.pvp.count set value "0"
data modify storage parkour:data maps.wind.count set value "1"
data modify storage parkour:data maps.rush.count set value "0"
data modify storage parkour:data maps.mountaineering.count set value "2"
data modify storage parkour:data maps.aqua.count set value "1"
data modify storage parkour:data maps.cart.count set value "3"
data modify storage parkour:data maps.misc.count set value "0"
