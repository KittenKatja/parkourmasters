
# map items
execute as @s[scores={parkour.macemap=5},gamemode=!creative] run item replace entity @s hotbar.1 with mace[unbreakable={},enchantments={"wind_burst":5,"unbreaking":10},custom_data={nodrop:true}] 1
execute as @s[scores={parkour.macemap=4},gamemode=!creative] run item replace entity @s hotbar.1 with mace[unbreakable={},enchantments={"wind_burst":4,"unbreaking":10},custom_data={nodrop:true}] 1
execute as @s[scores={parkour.macemap=3},gamemode=!creative] run item replace entity @s hotbar.1 with mace[unbreakable={},enchantments={"wind_burst":3,"unbreaking":10},custom_data={nodrop:true}] 1
execute as @s[scores={parkour.macemap=2},gamemode=!creative] run item replace entity @s hotbar.1 with mace[unbreakable={},enchantments={"wind_burst":2,"unbreaking":10},custom_data={nodrop:true}] 1
execute as @s[scores={parkour.macemap=1},gamemode=!creative] run item replace entity @s hotbar.1 with mace[unbreakable={},enchantments={"wind_burst":1,"unbreaking":10},custom_data={nodrop:true}] 1

execute as @s[scores={parkour.aquamap=5},gamemode=!creative] run item replace entity @s hotbar.1 with trident[unbreakable={},enchantments={"riptide":5,"unbreaking":10},custom_data={nodrop:true}] 1
execute as @s[scores={parkour.aquamap=4},gamemode=!creative] run item replace entity @s hotbar.1 with trident[unbreakable={},enchantments={"riptide":4,"unbreaking":10},custom_data={nodrop:true}] 1
execute as @s[scores={parkour.aquamap=3},gamemode=!creative] run item replace entity @s hotbar.1 with trident[unbreakable={},enchantments={"riptide":3,"unbreaking":10},custom_data={nodrop:true}] 1
execute as @s[scores={parkour.aquamap=2},gamemode=!creative] run item replace entity @s hotbar.1 with trident[unbreakable={},enchantments={"riptide":2,"unbreaking":10},custom_data={nodrop:true}] 1
execute as @s[scores={parkour.aquamap=1},gamemode=!creative] run item replace entity @s hotbar.1 with trident[unbreakable={},enchantments={"riptide":1,"unbreaking":10},custom_data={nodrop:true}] 1

execute as @s[scores={parkour.elytra=1},gamemode=!creative] unless items entity @s armor.chest chainmail_chestplate run item replace entity @s hotbar.1 with chainmail_chestplate[unbreakable={},enchantments={"unbreaking":10},custom_data={nodrop:true}] 1
execute as @s[scores={parkour.elytra=1}] unless items entity @s hotbar.* elytra run item replace entity @s armor.chest with elytra[unbreakable={},enchantments={"unbreaking":10},custom_data={nodrop:true}] 1



execute as @s[scores={parkour.windmap=1}] run item replace entity @s hotbar.1 with wind_charge[max_stack_size=99,custom_data={nodrop:true}] 99
