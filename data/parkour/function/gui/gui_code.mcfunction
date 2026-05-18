
## START GUI

execute as @a[tag=!nodelete] run function parkour:gui/gui_items

# Update GUI (why tf is this required wtfff)
execute as @r run function parkour:gui/update_gui

# page 1
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:search}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:0}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:1}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:2}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:3}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:4}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:5}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:6}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:7}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:8}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:9}]

# page 2
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:10}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:11}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:12}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:13}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:14}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:15}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:16}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:17}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:18}]

#featured
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:featured}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:monthlyfeatured}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:weeklyfeatured}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:dailyfeatured}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:newlyfeatured}]

#misc
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:misc}]
clear @a[tag=!nodelete] *[minecraft:custom_data~{gui:onlineplayers}]
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:ability}] run function parkour:map/sorters/ability
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:coop}] run function parkour:map/sorters/coop
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:dropper}] run function parkour:map/sorters/dropper
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:elytra}] run function parkour:map/sorters/elytra
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:mace}] run function parkour:map/sorters/mace
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:maze}] run function parkour:map/sorters/maze
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:pearl}] run function parkour:map/sorters/pearl
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:pk}] run function parkour:map/sorters/pk
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:slime}] run function parkour:map/sorters/slime
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:cart}] run function parkour:map/sorters/cart
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:mountaineering}] run function parkour:map/sorters/mountaineering
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:aqua}] run function parkour:map/sorters/aqua
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:race}] run function parkour:map/sorters/race
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:pvp}] run function parkour:map/sorters/pvp
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:wind}] run function parkour:map/sorters/wind
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:portal}] run function parkour:map/sorters/portal
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:dash}] run function parkour:map/sorters/dash
execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{gui:newmaps}] run function parkour:map/new_maps/new_maps




# execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:ability}] run function parkour:map/sorters/sort.macro with entity @s Inventory[{Slot:-1b}].components."minecraft:custom_data"
# execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:coop}] run function parkour:map/sorters/sort.macro with entity @s Inventory[{Slot:-1b}].components."minecraft:custom_data"
# execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:dropper}] run function parkour:map/sorters/sort.macro with entity @s Inventory[{Slot:-1b}].components."minecraft:custom_data"
# execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:elytra}] run function parkour:map/sorters/sort.macro with entity @s Inventory[{Slot:-1b}].components."minecraft:custom_data"
# execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:mace}] run function parkour:map/sorters/sort.macro with entity @s Inventory[{Slot:-1b}].components."minecraft:custom_data"
# execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:maze}] run function parkour:map/sorters/sort.macro with entity @s Inventory[{Slot:-1b}].components."minecraft:custom_data"
# execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:pearl}] run function parkour:map/sorters/sort.macro with entity @s Inventory[{Slot:-1b}].components."minecraft:custom_data"
# execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:pk}] run function parkour:map/sorters/sort.macro with entity @s Inventory[{Slot:-1b}].components."minecraft:custom_data"
# execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:slime}] run function parkour:map/sorters/sort.macro with entity @s Inventory[{Slot:-1b}].components."minecraft:custom_data"
# execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:cart}] run function parkour:map/sorters/sort.macro with entity @s Inventory[{Slot:-1b}].components."minecraft:custom_data"
# execute as @a[tag=!nodelete] if items entity @s player.cursor *[custom_data~{category:mountaineering}] run function parkour:map/sorters/sort.macro with entity @s Inventory[{Slot:-1b}].components."minecraft:custom_data"


#this map needs custom code that allows it to reset when someone plays, and makes sure that only one player can play it at a time
execute as @a if items entity @s player.cursor *[custom_data~{map:placement}] run tp @s 3001 65 100
execute as @a if items entity @s player.cursor *[custom_data~{map:placement}] run spawnpoint @s 3001 65 100
execute as @a if items entity @s player.cursor *[custom_data~{map:placement}] run scoreboard players reset @s timer
execute as @a if items entity @s player.cursor *[custom_data~{map:placement}] run tag @s add show_timer
execute as @a if items entity @s player.cursor *[custom_data~{map:placement}] run scoreboard players set @s parkour.elytra 0
execute as @a if items entity @s player.cursor *[custom_data~{map:placement}] run clear @s elytra
execute as @a if items entity @s player.cursor *[custom_data~{map:placement}] run inventory @s close
clear @a[tag=!nodelete] *[minecraft:custom_data~{map:placement}]


## END GUI

