execute as @e[type=ender_pearl] on origin run tag @s add has_pearl

execute as @s[tag=!has_pearl] if items entity @s inventory.* ender_pearl run tag @s add inv_pearl
execute as @s[tag=!has_pearl] if items entity @s hotbar.* ender_pearl run tag @s add inv_pearl
execute as @s[tag=!has_pearl] if items entity @s weapon.offhand ender_pearl run tag @s add inv_pearl
execute as @s[tag=!has_pearl] if items entity @s player.cursor ender_pearl run tag @s add inv_pearl
execute as @s[tag=!has_pearl] if items entity @s player.crafting.* ender_pearl run tag @s add inv_pearl

execute as @s[tag=!inv_pearl,tag=!has_pearl] at @s run give @s ender_pearl[custom_data={from_pearl_block:true,nodrop:true},use_cooldown={seconds:0.1}]

tag @s remove has_pearl
tag @s remove inv_pearl
