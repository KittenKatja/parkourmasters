#say tp
#execute if items entity @s player.cursor *[lore=[                  {                    "text": "Last Played: None",                    "color": "white",                    "italic": false                  }]] run say None
execute if items entity @s player.cursor *[lore=[                  {                    "text": "Last Played: None",                    "color": "white",                    "italic": false                  }]] run return run inventory @s close

setblock 0 -64 0 chest
item replace block 0 -64 0 container.0 from entity @s player.cursor
data modify storage temp temp.map set from block 0 -64 0 Items[-1].components.minecraft:lore[].extra[0].text
data modify storage temp temp.category set from block 0 -64 0 Items[-1].components.minecraft:lore[].extra[2].text
function leavedetection:test/tp_macro with storage temp temp
data remove storage temp temp
setblock 0 -64 0 air
clear @s *[custom_data~{ui:90099}]
inventory @s close

#say tped