#ensure changelog 
scoreboard objectives add changelog dummy
#scoreboard objectives setdisplay sidebar changelog -- Aunn disabled this temporarily dont let me forget to re enable this
scoreboard objectives modify changelog numberformat blank
scoreboard objectives modify changelog displayname [{bold:true,text:""},{color:"#25DEFA",extra:[{color:"#25D4FA",text:"ʜ"},{color:"#25CBFA",text:"ᴀ"},{color:"#25C1FA",text:"ɴ"},{color:"#25B8FA",text:"ɢ"},{color:"#25AFFA",text:"ᴇ"},{color:"#25A5FA",text:"ʟ"},{color:"#259CFA",text:"ᴏ"},{color:"#2593FA",text:"ɢ"},""],italic:0b,text:"ᴄ"}]
# :sob: why was this commented????
# it's needed lmao


#dash stuff

execute as @a at @s if block ~ ~-.1 ~ #parkour:no_dash run scoreboard players set @s dashcooldown 0

execute as @a if score @s dashcooldown matches 1.. run scoreboard players remove @s dashcooldown 1
execute as @a unless score @s dashcooldown matches 0.. run scoreboard players set @s dashcooldown 0

execute as @a if score @s dashcooldown matches 1.. run clear @s carrot_on_a_stick[custom_data~{item:"dash"}]

effect give @a minecraft:saturation infinite 255 true

function parkour:ability_blocks/climbing_block

function parkour:kill_items

execute as @a[tag=!alternate_hotbar_design] run function parkour:items/map_items
execute as @a[tag=alternate_hotbar_design] run function parkour:items/map_items_alternate

execute as @a[tag=!alternate_hotbar_design] run function parkour:items/give_items
execute as @a[tag=alternate_hotbar_design] run function parkour:items/give_items_alternate

function parkour:items/on_click
scoreboard players reset @a parkour.rc_coas

function parkour:checkpoint/set_checkpoint
execute as @a[scores={parkour.racemaxtime=..0}] run function parkour:checkpoint/detect_finish
execute as @a[scores={parkour.racemaxtime=1..}] if score @s timer <= @s parkour.racemaxtime run function parkour:checkpoint/detect_finish
execute as @a[scores={parkour.racemaxtime=1..}] unless score @s timer <= @s parkour.racemaxtime at @s if block ~ ~-1 ~ blue_glazed_terracotta run function parkour:checkpoint/fail_race_finish
function parkour:checkpoint/tp_spawn

function parkour:map/ability/ability_functions/ability_functions

execute as @e[type=endermite] run data merge entity @s {Lifetime:2400}

attribute @r[tag=nofall] minecraft:fall_damage_multiplier base set 0
attribute @r[tag=!nofall] minecraft:fall_damage_multiplier base set 1

execute as @e[type=shulker,tag=!peek_30] run data merge entity @s {Peek:0b}
execute as @e[type=shulker,tag=peek_30] run data merge entity @s {Peek:30b}

# Map Editor
execute as @e[type=marker, tag=create_map.center] at @s run function parkour:map_editor/create_map/as_marker
execute as @a[tag=in_map_editor] at @s if loaded ~ ~ ~ positioned ~-500 -100 ~-500 unless entity @n[type=marker,tag=create_map.center, dx=1000,dy=500,dz=1000] run function parkour:map_editor/tp_back

#prevent leaving the map
execute as @e[tag=!nokill] at @s if entity @s[y=30,dy=-128] run function parkour:checkpoint/fall_checkpoint

#triggers
function parkour:triggers/trigger


#other stuff
function parkour:team_stuff
function parkour:gui/gui_code

function parkour:boss_bar/boss_bar_manager

function parkour:map/mapfuncs

function parkour:shoes

function parkour:collectibles/manage_collectible

# DEATH MESSAGE
execute as @a[scores={deaths=1..}] run function parkour:death_msg

#dev util
function parkour:dev_utils

#execute store result score #temp counter run data get entity @s Paper.LastSeen
#tellraw SirSlothKid {"score":{"name":"#temp","objective":"counter"}}

#portal
execute as @e[tag=portal] at @s if entity @a[dx=0,tag=!in_portal] run function parkour:portal/teleport
execute as @a[tag=in_portal] at @s unless entity @n[tag=portal,distance=..2] run tag @s remove in_portal

# practice mode stuff
item modify entity @a[tag=practice_mode] player.cursor parkour:practice_mode
item modify entity @a[tag=practice_mode] weapon.mainhand parkour:practice_mode
item modify entity @a[tag=practice_mode] weapon.offhand parkour:practice_mode
item modify entity @a[tag=practice_mode] hotbar.0 parkour:practice_mode
item modify entity @a[tag=practice_mode] hotbar.1 parkour:practice_mode
item modify entity @a[tag=practice_mode] hotbar.2 parkour:practice_mode
item modify entity @a[tag=practice_mode] hotbar.3 parkour:practice_mode
item modify entity @a[tag=practice_mode] hotbar.4 parkour:practice_mode
item modify entity @a[tag=practice_mode] hotbar.5 parkour:practice_mode
item modify entity @a[tag=practice_mode] hotbar.6 parkour:practice_mode
item modify entity @a[tag=practice_mode] hotbar.7 parkour:practice_mode

execute as @a[tag=!practice_mode] if items entity @a inventory.* *[custom_data~{practice_mode:true}] run clear @s *[custom_data~{practice_mode:true}]
execute as @a[tag=!practice_mode] if items entity @a hotbar.* *[custom_data~{practice_mode:true}] run clear @s *[custom_data~{practice_mode:true}]

execute as @a[tag=!pvp] run attribute @s attack_damage base set 0
execute at @e[type=marker,tag=create_map.center] run setblock ~ ~ ~ minecraft:emerald_block