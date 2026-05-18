
$data modify storage gradient_gen:gradient_gen input.start set value "$(hex1)"
$data modify storage gradient_gen:gradient_gen input.end set value "$(hex2)"
$data modify storage gradient_gen:gradient_gen input.string set value "$(name)"
$data modify storage parkour:data rank set value "$(rank)"
$data modify storage parkour:data category set value "$(category)"
$data modify storage parkour:data map_id set value "$(map_id)"

function gradient_gen:generate

$execute if data storage parkour:data {rank:"xm"} run item replace entity @s inventory.0 with dirt[item_model="minecraft:$(icon)",lore=[{italic:false,text:"",extra:[{color:"white",text:"by "},{color:"#FF33FF",text:"xᴍ "},{color:"dark_gray",text:"| "},{color:"#FF33FF",text:"$(player)"}]}]]
$execute if data storage parkour:data {rank:"fm2"} run item replace entity @s inventory.0 with dirt[item_model="minecraft:$(icon)",lore=[{italic:false,text:"",extra:[{color:"white",text:"by "},{color:"#8888FF",text:"ꜰᴍ"},{color:"#BA094A",text:"² "},{color:"dark_gray",text:"| "},{color:"#8888FF",text:"$(player)"}]}]]
$execute if data storage parkour:data {rank:"fm"} run item replace entity @s inventory.0 with dirt[item_model="minecraft:$(icon)",lore=[{italic:false,text:"",extra:[{color:"white",text:"by "},{color:"#8888FF",text:"ꜰᴍ "},{color:"dark_gray",text:"| "},{color:"#8888FF",text:"$(player)"}]}]]
$execute if data storage parkour:data {rank:"am"} run item replace entity @s inventory.0 with dirt[item_model="minecraft:$(icon)",lore=[{italic:false,text:"",extra:[{color:"white",text:"by "},{color:"#98FDB5",text:"ᴀᴍ "},{color:"dark_gray",text:"| "},{color:"#98FDB5",text:"$(player)"}]}]]
$execute if data storage parkour:data {rank:"ib"} run item replace entity @s inventory.0 with dirt[item_model="minecraft:$(icon)",lore=[{italic:false,text:"",extra:[{color:"white",text:"by "},{color:"#39ff14",text:"ɪʙ "},{color:"dark_gray",text:"| "},{color:"#39ff14",text:"$(player)"}]}]]
$execute if data storage parkour:data {rank:"default"} run item replace entity @s inventory.0 with dirt[item_model="minecraft:$(icon)",lore=[{italic:false,text:"",extra:[{color:"white",text:"by "},{color:"gray",text:"$(player)"}]}]]

item modify entity @s inventory.0 parkour:name
item modify entity @s inventory.0 parkour:data

#$tellraw @a $(xcoord)
#$tellraw @a $(ycoord)
#$tellraw @a $(zcoord)

#someone should probably do something with xcoord, ycoord and zcoord <3
#idk what cos all it does rn is yeet it into the discord api soo

tellraw @s {"color":"green","text":"Generated map"}
$http headers value {"Content-Type":"application/json"} \
    body value '{ \
    "content": "A new was map created", \
    "embeds": [ \
        { \
            "title": "$(name)", \
            "color": 21255, \
            "fields": [ \
            { \
                "name": "Legitimoose Rank:", \
                "value": "$(rank)" \
            }, \
            { \
                "name": "Colors:", \
                "value": "$(hex1), $(hex2)" \
            }, \
            { \
                "name": "Icon:", \
                "value": "$(icon)" \
            }, \
            { \
                "name": "Map ID:", \
                "value": "$(map_id)" \
            }, \
            { \
                "name": "Category:", \
                "value": "$(category)" \
            }, \
            { \
                "name": "X", \
                "value": "$(xcoord)", \
                "inline": true \
            }, \
            { \
                "name": "Y", \
                "value": "$(ycoord)", \
                "inline": true \
            }, \
            { \
                "name": "Z", \
                "value": "$(zcoord)", \
                "inline": true \
            } \
            ], \
            "author": { \
            "name": "by $(player)" \
            } \
        } \
    ], \
    "attachments": [] \
}' \
send "https://discord.com/api/webhooks/1470867473078157416/pggFDzaLQ9K-Adu6eSU9ONggrTTArfzeQs9QTL0uSrdWXSWeqrmPqqYhXvISywpqf8nD" POST
