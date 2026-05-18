
$execute if score @s currentdashes matches 1.. if score @s dashcooldown matches 0 run \
 item replace entity @s hotbar.$(slot) with carrot_on_a_stick[custom_data={item:"dash",nodrop:true},item_model="$(color)_dye",item_name={color:aqua,text:"ᴅᴀsʜ"}]
\

$execute if score @s parkour.dashmaxmidair matches ..-99 run \
 item replace entity @s hotbar.$(slot) with carrot_on_a_stick[custom_data={item:"dash",nodrop:true},item_model="$(color)_dye",item_name={color:aqua,text:"ᴅᴀsʜ"}]
