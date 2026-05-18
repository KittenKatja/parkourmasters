execute as @s at @s if entity @n[type=marker,tag=SPAWNPOS,distance=..60] run tag @s add spawn

#prevent duping
execute unless items entity @s hotbar.0 carrot_on_a_stick[custom_data~{item:"search"}] run clear @s carrot_on_a_stick[custom_data~{item:"search"}]
execute unless items entity @s hotbar.8 carrot_on_a_stick[custom_data~{item:"spawn"}] run clear @s carrot_on_a_stick[custom_data~{item:"spawn"}]
execute unless items entity @s hotbar.6 carrot_on_a_stick[custom_data~{item:"settings"}] run clear @s carrot_on_a_stick[custom_data~{item:"settings"}]
execute unless items entity @s hotbar.1 carrot_on_a_stick[custom_data~{item:"kill"}] run clear @s carrot_on_a_stick[custom_data~{item:"kill"}]
execute unless items entity @s hotbar.7 carrot_on_a_stick[custom_data~{item:"restart"}] run clear @s carrot_on_a_stick[custom_data~{item:"restart"}]
execute unless items entity @s hotbar.1 carrot_on_a_stick[custom_data~{item:"featured"}] run clear @s carrot_on_a_stick[custom_data~{item:"featured"}]
#execute unless items entity @s hotbar.1 carrot_on_a_stick[custom_data~{item:"dash"}] run clear @s carrot_on_a_stick[custom_data~{item:"dash"}]
execute unless items entity @s hotbar.5 carrot_on_a_stick[custom_data~{item:"checkpoint"}] run clear @s carrot_on_a_stick[custom_data~{item:"checkpoint"}]


#play
item replace entity @s[gamemode=adventure] hotbar.0 with carrot_on_a_stick[custom_data={item:"search",nodrop:true},item_model="parkour:play",item_name=[{"extra":[{"extra":[{"color":"dark_green","text":"ᴘ"},{"color":"#0BB50B","text":"ʟ"},{"color":"#15BF15","text":"ᴀ"},{"color":"#20CA20","text":"ʏ"},{"color":"#2BD52B","text":" "},{"color":"#35DF35","text":"ᴍ"},{"color":"#40EA40","text":"ᴀ"},{"color":"#4AF44A","text":"ᴘ"},{"color":"green","text":"s"}],"text":""}],"text":""}]]

#spawn
item replace entity @s[gamemode=adventure,tag=!spawn] hotbar.8 with carrot_on_a_stick[custom_data={item:"spawn",nodrop:true},item_model="parkour:quit",item_name={"extra":[{"extra":[{"color":"dark_red","text":"ᴛ"},{"color":"#AF0505","text":"ᴇ"},{"color":"#B50B0B","text":"ʟ"},{"color":"#BA1010","text":"ᴇ"},{"color":"#BF1515","text":"ᴘ"},{"color":"#C51B1B","text":"ᴏ"},{"color":"#CA2020","text":"ʀ"},{"color":"#CF2525","text":"ᴛ"},{"color":"#D52B2B","text":" "},{"color":"#DA3030","text":"ᴛ"},{"color":"#DF3535","text":"ᴏ"},{"color":"#E43A3A","text":" "},{"color":"#EA4040","text":"ꜱ"},{"color":"#EF4545","text":"ᴘ"},{"color":"#F44A4A","text":"ᴀ"},{"color":"#FA5050","text":"ᴡ"},{"color":"red","text":"ɴ"}],"text":""}],"text":""}]
# HOLD UP! before you go changing this and adding the dash back, you need to know that the reason it's like this is
# because I made the dash a map item!! it's in hotbar.1 now, just like all the other map items (well, it depends on the hotbar layout lol) but yeah.
# to add the dash as an item in a map, set the player's "parkour.dashmaxmidair" score to the number of dashes they can do mid-air before needing to touch the ground.
# you can also set it to any value >= -99 to make the dash never run out!

#settings
item replace entity @s[gamemode=adventure] hotbar.6 with carrot_on_a_stick[custom_data={item:"settings",nodrop:true},item_model="parkour:settings",item_name={color:"#146FDE",extra:[{color:"#1C7CDE",text:"ᴇ"},{color:"#258ADE",text:"ᴛ"},{color:"#2E98DE",text:"ᴛ"},{color:"#37A6DE",text:"ɪ"},{color:"#40B4DE",text:"ɴ"},{color:"#49C2DE",text:"ɢ"},{color:"#52D0DE",text:"s"},""],italic:0b,text:"s"}]

#respawn
item replace entity @s[gamemode=adventure,tag=!spawn] hotbar.1 with carrot_on_a_stick[custom_data={item:"kill",nodrop:true},item_model="parkour:checkpoint",item_name={"extra":[{"extra":[{"color":"yellow","text":"ɢ"},{"color":"#FFF94F","text":"ᴏ"},{"color":"#FFF44A","text":" "},{"color":"#FFEE44","text":"ᴛ"},{"color":"#FFE83E","text":"ᴏ"},{"color":"#FFE339","text":" "},{"color":"#FFDD33","text":"ᴄ"},{"color":"#FFD72D","text":"ʜ"},{"color":"#FFD228","text":"ᴇ"},{"color":"#FFCC22","text":"ᴄ"},{"color":"#FFC61C","text":"ᴋ"},{"color":"#FFC117","text":"ᴘ"},{"color":"#FFBB11","text":"ᴏ"},{"color":"#FFB50B","text":"ɪ"},{"color":"#FFB006","text":"ɴ"},{"color":"gold","text":"ᴛ"}],"text":""}],"text":""}]
execute as @s[tag=spawn] if items entity @s hotbar.1 carrot_on_a_stick[custom_data~{item:"kill"}] run item replace entity @s hotbar.1 with air

#restart
item replace entity @s[gamemode=adventure] hotbar.7 with carrot_on_a_stick[custom_data={item:"restart",nodrop:true},item_model="parkour:reload",item_name=[{"color":"#F14747","text":"ʀ"},{"color":"#EB4141","text":"ᴇ"},{"color":"#E63C3C","text":"s"},{"color":"#E03636","text":"ᴛ"},{"color":"#DA3030","text":"ᴀ"},{"color":"#D52B2B","text":"ʀ"},{"color":"#CF2525","text":"ᴛ "},{"color":"#C91F1F","text":"ᴍ"},{"color":"#C31919","text":"ᴀ"},{"color":"#B80E0E","text":"ᴘ"}]]

#featured
item replace entity @s[gamemode=adventure,tag=spawn,tag=!no_featured_item] hotbar.1 with carrot_on_a_stick[custom_data={item:"featured",nodrop:true},item_model="nether_star",item_name={"text":"","extra":[{"text":"🌟 ꜰ","color":"#FFFF55"},{"text":"ᴇ","color":"#FFF84E"},{"text":"ᴀ","color":"#FFF147"},{"text":"ᴛ","color":"#FFEA40"},{"text":"ᴜ","color":"#FFE339"},{"text":"ʀ","color":"#FFDC32"},{"text":"ᴇ","color":"#FFD52B"},{"text":"ᴅ","color":"#FFCD23"},{"text":" "},{"text":"ᴍ","color":"#FFBF15"},{"text":"ᴀ","color":"#FFB80E"},{"text":"ᴘ","color":"#FFB107"},{"text":"ꜱ 🌟","color":"#FFAA00"}]}]

#dash
function parkour:items/dash/give_dash_setup {slot:2}

# practice mode
item replace entity @s[gamemode=adventure,tag=!spawn,tag=practice_mode] hotbar.5 with carrot_on_a_stick[custom_data={item:"checkpoint",nodrop:true},item_model="parkour:plus",item_name="set checkpoint"]
execute as @s[tag=spawn] if items entity @s hotbar.5 carrot_on_a_stick[custom_data~{item:"checkpoint"}] run item replace entity @s hotbar.5 with air

clear @s[tag=show_timer] carrot_on_a_stick[custom_data~{item:"featured"}]

clear @s[tag=no_featured_item] carrot_on_a_stick[custom_data~{item:"featured"}]

tag @s remove spawn
 #new maps
