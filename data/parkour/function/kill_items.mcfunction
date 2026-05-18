
# execute as @e[type=minecraft:item] if items entity @s contents #parkour:kill_items run kill @s
execute as @e[type=minecraft:item] if data entity @s Item.components.minecraft:custom_data.gui run kill @s
execute as @e[type=minecraft:item] if data entity @s Item.components.minecraft:custom_data.map run kill @s
execute as @e[type=minecraft:item] if data entity @s Item.components.minecraft:custom_data.nodrop run kill @s

# kill @e[type=item,nbt={Item:{id:"minecraft:trident"}}]