
clone -49 95 -28 -49 95 -28 -49 95 -30 strict

#focus mode
execute if score @s focus matches 2 run item replace block -49 95 -30 container.18 with lime_dye[custom_data={gui:"settingsmenuitem",setting:"togglefocus",nodrop:true},item_name={italic:false,text:"enabled",color:green}]
execute unless score @s focus matches 2 run item replace block -49 95 -30 container.18 with red_dye[custom_data={gui:"settingsmenuitem",setting:"togglefocus",nodrop:true},item_name={italic:false,text:"disabled",color:red}]

#nocheckpoints
execute unless entity @s[tag=nocheckpoints] run item replace block -49 95 -30 container.20 with lime_dye[custom_data={gui:"settingsmenuitem",setting:"togglecheckpoints",nodrop:true},item_name={italic:false,text:"enabled",color:green}]
execute if entity @s[tag=nocheckpoints] run item replace block -49 95 -30 container.20 with red_dye[custom_data={gui:"settingsmenuitem",setting:"togglecheckpoints",nodrop:true},item_name={italic:false,text:"disabled",color:red}]

#show death messages
execute unless entity @s[tag=nodeathmessage] run item replace block -49 95 -30 container.22 with lime_dye[custom_data={gui:"settingsmenuitem",setting:"toggledeathmsg",nodrop:true},item_name={italic:false,text:"enabled",color:green}]
execute if entity @s[tag=nodeathmessage] run item replace block -49 95 -30 container.22 with red_dye[custom_data={gui:"settingsmenuitem",setting:"toggledeathmsg",nodrop:true},item_name={italic:false,text:"disabled",color:red}]

#show featured hotbar item
execute unless entity @s[tag=no_featured_item] run item replace block -49 95 -30 container.24 with lime_dye[custom_data={gui:"settingsmenuitem",setting:"togglefeatureditem",nodrop:true},item_name={italic:false,text:"enabled",color:green}]
execute if entity @s[tag=no_featured_item] run item replace block -49 95 -30 container.24 with red_dye[custom_data={gui:"settingsmenuitem",setting:"togglefeatureditem",nodrop:true},item_name={italic:false,text:"disabled",color:red}]

#show featured hotbar item
execute if entity @s[tag=alternate_hotbar_design] run item replace block -49 95 -30 container.26 with lime_dye[custom_data={gui:"settingsmenuitem",setting:"togglealternatehotbar",nodrop:true},item_name={italic:false,text:"enabled",color:green}]
execute unless entity @s[tag=alternate_hotbar_design] run item replace block -49 95 -30 container.26 with red_dye[custom_data={gui:"settingsmenuitem",setting:"togglealternatehotbar",nodrop:true},item_name={italic:false,text:"disabled",color:red}]

inventory @s block -49 95 -30 <white><font:parkour:gui_placeholder>0pgHg <reset><shadow:#000000FF><gradient:#146FDE:#52D0DE>sᴇᴛᴛɪɴɢs