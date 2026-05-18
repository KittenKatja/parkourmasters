# toggle your hotbar design
scoreboard players enable @a toggle_alternate_hotbar_design

clear @s carrot_on_a_stick[custom_data~{item:"search"}]
clear @s carrot_on_a_stick[custom_data~{item:"spawn"}]
clear @s carrot_on_a_stick[custom_data~{item:"settings"}]
clear @s carrot_on_a_stick[custom_data~{item:"kill"}]
clear @s carrot_on_a_stick[custom_data~{item:"restart"}]
clear @s carrot_on_a_stick[custom_data~{item:"featured"}]
clear @s carrot_on_a_stick[custom_data~{item:"dash"}]
clear @s carrot_on_a_stick[custom_data~{item:"checkpoint"}]

clear @s mace
clear @s wind_charge
clear @s elytra
clear @s chainmail_chestplate
clear @s trident
clear @s firework_rocket


execute if entity @s[tag=!alternate_hotbar_design] run tellraw @s {color:"green",italic:true,text:"Alternate hotbar design enabled"}
execute if entity @s[tag=!alternate_hotbar_design] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2
execute if entity @s[tag=!alternate_hotbar_design] run return run tag @s add alternate_hotbar_design

execute if entity @s[tag=alternate_hotbar_design] run tellraw @s {color:"red",italic:true,text:"Alternate hotbar design disabled"}
execute if entity @s[tag=alternate_hotbar_design] at @s run playsound block.note_block.hat master @s ~ ~ ~ 2
execute if entity @s[tag=alternate_hotbar_design] run return run tag @s remove alternate_hotbar_design

