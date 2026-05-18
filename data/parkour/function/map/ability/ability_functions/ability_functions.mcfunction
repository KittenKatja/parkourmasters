
#ability blocks (DO NOT CHANGE VALUES!! IT WILL BREAK LEVELS! THX :D)
execute as @a[gamemode=adventure] at @s if block ~ ~-0.1 ~ redstone_block run kill @s
execute as @a at @s if block ~ ~-0.1 ~ lime_terracotta run effect give @s levitation 2 1
execute as @a at @s if block ~ ~-0.1 ~ light_blue_glazed_terracotta run effect give @s speed 1 1
execute as @a at @s if block ~ ~-0.1 ~ pink_glazed_terracotta run function parkour:ability_blocks/dash_block
execute as @a at @s if block ~ ~-0.1 ~ purple_glazed_terracotta run function parkour:ability_blocks/hyperdash_block
execute as @a at @s if block ~ ~-0.1 ~ white_glazed_terracotta run function parkour:ability_blocks/no_wind_charge_block
execute as @a at @s if block ~ ~-0.1 ~ brown_glazed_terracotta run function parkour:ability_blocks/no_wind_charge_block
#execute as @a at @s if block ~ ~-0.1 ~ magenta_glazed_terracotta run function parkour:ability_blocks/momentum_block

function parkour:minecarts/minecarts

execute as @a at @s unless block ~ ~-0.1 ~ budding_amethyst unless block ~ ~-0.1 ~ air unless block ~ ~-0.1 ~ #wool_carpets run clear @s ender_pearl[custom_data~{from_pearl_block:true}]
execute as @a at @s if block ~ ~-0.1 ~ budding_amethyst run function parkour:ability_blocks/enderblock
