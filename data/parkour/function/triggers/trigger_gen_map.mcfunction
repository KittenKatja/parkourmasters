
# gen map dialogue

execute as @a[scores={generate_map=1..}] at @s run function parkour:gen_item_dialogue
scoreboard players reset @a generate_map
scoreboard players enable @a[tag=in_map_editor] generate_map
scoreboard players enable @a[tag=is_admin] generate_map
