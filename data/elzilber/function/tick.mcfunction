execute at @a if items entity @p container.0 minecraft:flint run execute at @p run particle minecraft:composter ~ ~2 ~

execute as sea4_18 at @s run function elzilber:sea4_18
execute as barvazan134 at @s run function elzilber:barvazan134

#becon fanc
execute at @a if items entity @p container.0 beacon run execute at @p run particle minecraft:dragon_breath ~ ~ ~ 0 20 0 0 900
clear @a nether_star
 

#for elzilber 
execute if items entity elzilber weapon.offhand moss_block run execute at elzilber run tp @n[type=armor_stand,tag=el_d_c] ~-0.15 ~1.9 ~-0.15
execute unless items entity elzilber weapon.offhand moss_block run execute run tp @e[type=armor_stand,tag=el_d_c] 219 95 -26
execute at @e[type= armor_stand,tag=el_d_c] run rotate @n[type=armor_stand,tag=el_d_c] ~-8 ~

execute at @n[type=armor_stand,tag=el_d_c] run tp @e[type=block_display,name=el_d_ol_1] ~ ~ ~
execute at @n[type=armor_stand,tag=el_d_c] run tp @e[type=block_display,name=el_d_ol_2] ~ ~0.3 ~
execute at @n[type=armor_stand,tag=el_d_c] run tp @e[type=block_display,name=el_d_ol_3] ~ ~0.6 ~


execute at @n[type=armor_stand,tag=el_d_c] run tp @e[type=block_display,name=el_d_olv_1] ~ ~0.9 ~
execute at @n[type=armor_stand,tag=el_d_c] run tp @e[type=block_display,name=el_d_olv_2] ~ ~0.6 ~-0.3
execute at @n[type=armor_stand,tag=el_d_c] run tp @e[type=block_display,name=el_d_olv_3] ~ ~0.6 ~0.3
execute at @n[type=armor_stand,tag=el_d_c] run tp @e[type=block_display,name=el_d_olv_4] ~-0.3 ~0.6 ~
execute at @n[type=armor_stand,tag=el_d_c] run tp @e[type=block_display,name=el_d_olv_5] ~0.3 ~0.6 ~

execute at @n[type=armor_stand,tag=el_d_c] run tp @e[type=block_display,name=el_d_1] ^1.5 ^ ^
execute at @n[type=armor_stand,tag=el_d_c] run tp @e[type=block_display,name=el_d_2] ^-1.5 ^ ^

execute unless items entity elzilber container.* pale_moss_block run execute at @e[type=armor_stand,tag=el_d_c] run particle composter ^1.5 ^ ^1.5 0 20 0 0 30
execute unless items entity elzilber container.* pale_moss_block run execute at @e[type=armor_stand,tag=el_d_c] run particle composter ^-1.5 ^ ^-1.5 0 20 0 0 30


execute unless items entity elzilber container.* pale_moss_block run execute at @e[type=armor_stand,tag=el_d_c] run particle minecraft:spore_blossom_air ^1.5 ^ ^1.5 8 20 8 0 5

execute if items entity elzilber container.* chorus_plant run item replace entity elzilber container.0 with diamond_block[max_stack_size=1]

# execute at @e[type=arrow,name=KILLer] unless block ~ ~-1 ~ air run summon potion ~ ~1 ~ {Item:{id:splash_potion,components:{potion_contents:{custom_effects:[{id:regeneration,duration:600,amplifier:125}]}}}}

