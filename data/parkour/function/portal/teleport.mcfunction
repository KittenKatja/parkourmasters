tag @s add temp
tag @a[dx=0,tag=!in_portal] add this

execute if entity @s[tag=blue_portal] as @e[tag=portal,tag=!temp,tag=orange_portal] if score @s id = @n[tag=temp] id at @s run tag @s add temp2
execute if entity @s[tag=orange_portal] as @e[tag=portal,tag=!temp,tag=blue_portal] if score @s id = @n[tag=temp] id at @s run tag @s add temp2

execute as @n[tag=temp2] at @s run tp @a[tag=this,tag=!in_portal] ~ ~ ~

tag @a[tag=this] add in_portal

tag @a remove this
tag @s remove temp
tag @e remove temp2

#/give @p armor_stand[entity_data={id:"minecraft:armor_stand",NoGravity:1b,Tags:["portal","orange_portal"]},item_model="orange_stained_glass_pane"] 1
#/give @p armor_stand[entity_data={id:"minecraft:armor_stand",NoGravity:1b,Tags:["portal","blue_portal"]},item_model="blue_stained_glass_pane"] 1