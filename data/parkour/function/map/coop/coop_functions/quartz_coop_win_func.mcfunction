
#win block setter logic -- slothy <3
execute store result score #quartz_coop_total player_zone run execute if entity @e[x=50127, y=46, z=50000, dx=0, dy=0, dz=0]
scoreboard players set #quartz_coop_total player_zone 0
execute if entity @e[x=50127, y=46, z=49998, dx=0] if entity @e[x=50127, y=46, z=50002, dx=0] run scoreboard players set #quartz_coop_total player_zone 1

execute if score #quartz_coop_total player_zone matches 1.. run scoreboard players set #quartz_finish_counter counter 10
execute if score #quartz_finish_counter counter matches 1.. run scoreboard players remove #quartz_finish_counter counter 1

execute if score #quartz_coop_total player_zone matches 0 unless block 50127 45 49998 blue_terracotta run setblock 50127 45 49998 blue_terracotta
execute if score #quartz_coop_total player_zone matches 0 unless block 50127 45 50002 blue_terracotta run setblock 50127 45 50002 blue_terracotta
execute if score #quartz_finish_counter counter matches 1.. unless block 50127 45 49998 blue_glazed_terracotta run setblock 50127 45 49998 blue_glazed_terracotta
execute if score #quartz_finish_counter counter matches 1.. unless block 50127 45 50002 blue_glazed_terracotta run setblock 50127 45 50002 blue_glazed_terracotta



#execute if score #quartz_coop_total player_zone matches 2 unless block 50127 45 50000 blue_glazed_terracotta run setblock 50127 45 50000 blue_glazed_terracotta
#execute unless score #quartz_coop_total player_zone matches 2 unless block 50127 45 50000 blue_terracotta run setblock 50127 45 50000 blue_terracotta

