scoreboard players enable @a discord
scoreboard players enable @a upvote
scoreboard players enable @a focus
scoreboard players enable @a nocheckpoints
scoreboard players enable @a toggle_death_messages
scoreboard players enable @a toggle_featured_item
scoreboard players enable @a toggle_alternate_hotbar_design
scoreboard players enable @a practice_mode
scoreboard players enable @a has_book

execute as @a[scores={discord=1..}] run function parkour:triggers/trigger_discord
execute as @a[scores={focus=1..}] run function parkour:triggers/trigger_focus
function parkour:triggers/trigger_gen_map


execute as @a[scores={nocheckpoints=1..}] run function parkour:triggers/trigger_disable_checkpoints
scoreboard players reset @a[scores={nocheckpoints=1..}] nocheckpoints

execute as @a[scores={toggle_death_messages=1..}] run function parkour:triggers/trigger_death_messages
scoreboard players reset @a[scores={toggle_death_messages=1..}] toggle_death_messages

execute as @a[scores={toggle_featured_item=1..}] run function parkour:triggers/trigger_featureditem
scoreboard players reset @a[scores={toggle_featured_item=1..}] toggle_featured_item

execute as @a[scores={toggle_alternate_hotbar_design=1..}] run function parkour:triggers/trigger_alternate_hotbar
scoreboard players reset @a[scores={toggle_alternate_hotbar_design=1..}] toggle_alternate_hotbar_design

execute as @a[scores={practice_mode=1..}] run function parkour:triggers/trigger_practice_mode
execute as @a[scores={practice_mode=1..}] run function parkour:reset_map
scoreboard players reset @a[scores={practice_mode=1..}] practice_mode

execute as @a[scores={has_book=1..}] run give @s writable_book[custom_data={"suggestion":1b,nodrop: 1b}]
scoreboard players reset @a[scores={has_book=1..}] has_book

execute as @a[scores={upvote=1..}] run function parkour:triggers/trigger_upvote with entity @s
scoreboard players reset @a[scores={upvote=1..}] upvote