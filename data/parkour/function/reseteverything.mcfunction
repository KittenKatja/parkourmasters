execute if entity @s[tag=is_checked] run return fail
gamemode adventure @s
clear @s *
tp 69 85 1
spawnpoint @s 69 85 1
team join nopvp @s
tag @s[tag=nocheckpoints] remove nocheckpoints
tag @s[tag=toggle_death_messages] remove toggle_death_messages
tag @s[tag=nofall] remove nofall
tag @s[tag=nodeathmessage] remove nodeathmessage
tag @s[tag=nokill] remove nokill
tag @s[tag=nodelete] remove nodelete
tag @s[tag=has_pearl] remove has_pearl
tag @s[tag=inv_pearl] remove inv_pearl
tag @s[tag=can_wallrun] remove can_wallrun
tag @s[tag=finish] remove finish
tag @s[tag=checkpoint] remove checkpoint
tag @s[tag=show_timer] remove show_timer
tag @s[tag=spawn] remove spawn
tag @s[tag=private_time] remove private_time
tag @s[tag=sloth_parkour_maze] remove sloth_parkour_maze
tag @s[tag=slothparkourmaze.diam1] remove slothparkourmaze.diam1
tag @s[tag=slothparkourmaze.diam2] remove slothparkourmaze.diam2
tag @s[tag=slothparkourmaze.diam3] remove slothparkourmaze.diam3
tag @s[tag=slothparkourmaze.diam4] remove slothparkourmaze.diam4
tag @s[tag=minecart_jump] remove minecart_jump
tag @s[tag=minecart_jump2] remove minecart_jump2
tag @s[tag=temp] remove temp
tag @s[tag=alternate_hotbar_design] remove alternate_hotbar_design
tag @s[tag=no_featured_item] remove no_featured_item
tag @s[tag=practice_mode] remove practice_mode
tag @s[tag=block_state_switch] remove block_state_switch


scoreboard players reset @s currentdashes
scoreboard players reset @s dashcooldown
scoreboard players reset @s deaths
scoreboard players reset @s eat
scoreboard players reset @s focus
scoreboard players reset @s generate_map
scoreboard players reset @s has_book
scoreboard players reset @s honk
scoreboard players reset @s generate_map
scoreboard players reset @s nocheckpoints
scoreboard players reset @s nofall
scoreboard players reset @s player_zone
scoreboard players reset @s practice_mode
scoreboard players reset @s timer.tick
scoreboard players reset @s timer.min
scoreboard players reset @s timer.sec
scoreboard players reset @s timer.ms
scoreboard players reset @s timer.start
scoreboard players reset @s timer
scoreboard players reset @s time.min
scoreboard players reset @s time.ms
scoreboard players reset @s time.sec
scoreboard players reset @s time.tick
scoreboard players reset @s spawn
scoreboard players reset @s slothparkourmaze

scoreboard players reset @s parkour.aquamap
scoreboard players reset @s parkour.dashmaxmidair
scoreboard players reset @s parkour.elytra
scoreboard players reset @s parkour.macemap
scoreboard players reset @s parkour.racemaxtime
scoreboard players reset @s parkour.racemaxtime_min
scoreboard players reset @s parkour.racemaxtime_ms
scoreboard players reset @s parkour.racemaxtime_sec
scoreboard players reset @s parkour.rc_coas
scoreboard players reset @s parkour.windmap

scoreboard players reset @s upv
scoreboard players reset @s upvote
scoreboard players reset @s toggle_featured_item
scoreboard players reset @s toggle_death_messages
scoreboard players reset @s toggle_alternate_hotbar_design

attribute @s attack_damage base reset
attribute @s attack_speed base reset
attribute @s max_health base reset
attribute @s movement_speed base reset
attribute @s armor base reset
attribute @s armor_toughness base reset
attribute @s knockback_resistance base reset
attribute @s luck base reset
attribute @s follow_range base reset
attribute @s jump_strength base reset
attribute @s flying_speed base reset
attribute @s scale base reset
attribute @s gravity base reset
attribute @s step_height base reset
attribute @s safe_fall_distance base reset
attribute @s fall_damage_multiplier base reset
attribute @s oxygen_bonus base reset
attribute @s burning_time base reset
attribute @s explosion_knockback_resistance base reset
attribute @s movement_efficiency base reset
attribute @s water_movement_efficiency base reset
attribute @s attack_knockback base reset
attribute @s block_interaction_range base reset
attribute @s entity_interaction_range base reset
attribute @s block_break_speed base reset
attribute @s mining_efficiency base reset
attribute @s sneaking_speed base reset
attribute @s submerged_mining_speed base reset

effect clear @s

data merge entity @s {Fire:0}
data merge entity @s {Invulnerable:0b}

effect give @s instant_health 1 100 true

team leave @s

gamemode adventure

function parkour:reset_stopwatch_player_data with entity @s

tellraw @s {bold:true,underlined:true,color:green,text:"You have been succesfully reset!"}

tag @s add is_checked

trigger spawn