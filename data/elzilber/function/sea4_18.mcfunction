#for @s
execute if items entity @s weapon.offhand command_block at @s run tp @e[type=armor_stand,tag=sea_d_c] ~ ~2 ~
execute unless items entity @s weapon.offhand command_block run tp @e[type=armor_stand,tag=sea_d_c] 219 95 -26
execute at @e[type=armor_stand,tag=sea_d_c] run rotate @n[type=armor_stand,tag=sea_d_c] ~8 ~

execute at @e[type=armor_stand,tag=sea_d_c] run tp @e[type=block_display,name=sea_d_1] ^2 ^0.5 ^
execute unless items entity @s container.* sculk_shrieker at @e[type=block_display,name=sea_d_1] run particle dragon_breath ~ ~ ~ 0 20 0 0 15

execute at @e[type=armor_stand,tag=sea_d_c] run tp @e[type=block_display,name=sea_d_2] ^-2 ^0.5 ^
execute unless items entity @s container.* sculk_shrieker at @e[type=block_display,name=sea_d_2] run particle dripping_lava ~ ~ ~ 0 20 0 0 40

execute at @e[type=armor_stand,tag=sea_d_c] run tp @e[type=block_display,name=sea_d_3] ^ ^0.5 ^-2
execute unless items entity @s container.* sculk_shrieker at @e[type=block_display,name=sea_d_3] run particle bubble_pop ~ ~ ~ 0 20 0 0 40

execute at @e[type=armor_stand,tag=sea_d_c] run tp @e[type=block_display,name=sea_d_4] ^ ^0.5 ^2
execute unless items entity @s container.* sculk_shrieker at @e[type=block_display,name=sea_d_4] run particle composter ~ ~ ~ 0 20 0 0 40

execute at @e[type=armor_stand,tag=sea_d_c] run tp @e[type=block_display,name=sea_d_m] ^ ^0.2 ^
execute unless items entity @s container.* sculk_shrieker unless items entity @s container.* waxed_copper_bulb at @e[type=block_display,name=sea_d_m] run particle totem_of_undying ~ ~ ~ 0 20 0 0 40
execute at @e[type=block_display,name=sea_d_m] run rotate @n[type=block_display,name=sea_d_m] ~20 ~

#for sea4_18  2
execute if items entity elzilber weapon.offhand water_bucket run execute at elzilber run tp @e[type=armor_stand,tag=sea_d_s_c] ~-0.45 ~2 ~-0.3
execute unless items entity elzilber weapon.offhand water_bucket run tp @e[type=armor_stand,tag=sea_d_s_c] 219 95 -26
execute at @e[type= armor_stand,tag=sea_d_s_c] run rotate @n[type= armor_stand,tag=sea_d_s_c] ~8 ~

execute at @n[type=armor_stand,tag=sea_d_s_c] run tp @e[type=block_display,name=sea_d_g_1] ~ ~ ~
execute at @n[type=armor_stand,tag=sea_d_s_c] run tp @e[type=block_display,name=sea_d_g_2] ~ ~ ~
execute at @n[type=armor_stand,tag=sea_d_s_c] run tp @e[type=block_display,name=sea_d_g_3] ~ ~ ~
execute at @n[type=armor_stand,tag=sea_d_s_c] run tp @e[type=block_display,name=sea_d_g_4] ~0.9 ~ ~
execute at @n[type=armor_stand,tag=sea_d_s_c] run tp @e[type=block_display,name=sea_d_g_5] ~ ~ ~0.9
execute at @n[type=armor_stand,tag=sea_d_s_c] run tp @e[type=block_display,name=sea_d_g_6] ~ ~0.9 ~

execute at @n[type=armor_stand,tag=sea_d_w_m] run tp @e[type=block_display,name=sea_d_g_1] ~ ~ ~

execute at @n[type=armor_stand,tag=sea_d_s_c] run tp @e[type=minecraft:tropical_fish,tag=sea_d_w_1] ~0.45 ~ ~0.45
