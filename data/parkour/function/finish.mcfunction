#tellraw @s {"extra":[{"extra":[{"color":"blue","text":"ʏ"},{"color":"#5454FE","text":"ᴏ"},{"color":"#5353FD","text":"ᴜ"},{"color":"#5252FC","text":" "},{"color":"#5151FB","text":"ʜ"},{"color":"#5050FA","text":"ᴀ"},{"color":"#4F4FF9","text":"ᴠ"},{"color":"#4E4EF8","text":"ᴇ"},{"color":"#4D4DF7","text":" "},{"color":"#4C4CF6","text":"ꜰ"},{"color":"#4B4BF5","text":"ɪ"},{"color":"#4A4AF4","text":"ɴ"},{"color":"#4949F3","text":"ɪ"},{"color":"#4848F2","text":"ꜱ"},{"color":"#4747F1","text":"ʜ"},{"color":"#4646F0","text":"ᴇ"},{"color":"#4545EF","text":"ᴅ"},{"color":"#4444EE","text":" "},{"color":"#4343ED","text":"ᴛ"},{"color":"#4242EC","text":"ʜ"},{"color":"#4141EB","text":"ɪ"},{"color":"#4040EA","text":"ꜱ"},{"color":"#3F3FE9","text":" "},{"color":"#3E3EE8","text":"ᴍ"},{"color":"#3D3DE7","text":"ᴀ"},{"color":"#3C3CE6","text":"ᴘ"},{"color":"#3B3BE5","text":"!"},{"color":"#3A3AE4","text":"\n"}],"text":""},{"extra":[{"extra":[{"color":"red","text":"ᴅ"},{"color":"#FC5855","text":"ᴏ"},{"color":"#F95B55","text":" "},{"color":"#F65E55","text":"ʏ"},{"color":"#F36155","text":"ᴏ"},{"color":"#F06455","text":"ᴜ"},{"color":"#ED6755","text":" "},{"color":"#EA6A55","text":"ᴡ"},{"color":"#E76D55","text":"ᴀ"},{"color":"#E47055","text":"ɴ"},{"color":"#E17355","text":"ᴛ"},{"color":"#DE7655","text":" "},{"color":"#DB7955","text":"ᴛ"},{"color":"#D87C55","text":"ᴏ"},{"color":"#D58055","text":" "},{"color":"#D18355","text":"ᴛ"},{"color":"#CE8655","text":"ᴇ"},{"color":"#CB8955","text":"ʟ"},{"color":"#C88C55","text":"ᴇ"},{"color":"#C58F55","text":"ᴘ"},{"color":"#C29255","text":"ᴏ"},{"color":"#BF9555","text":"ʀ"},{"color":"#BC9855","text":"ᴛ"},{"color":"#B99B55","text":" "},{"color":"#B69E55","text":"ʙ"},{"color":"#B3A155","text":"ᴀ"},{"color":"#B0A455","text":"ᴄ"},{"color":"#ADA755","text":"ᴋ"},{"color":"#AAAA55","text":"?"},{"color":"#A7AD55","text":"\n"}],"text":""},{"color":"green","extra":[{"click_event":{"action":"run_command","command":"/trigger spawn"},"text":"ʏᴇꜱ"},"]        ",{"color":"red","text":"[ɴᴏ]"}],"text":"          ["}],"text":""}],"text":""}
particle minecraft:end_rod ~ ~ ~ 0.1 0.1 0.1 0.5 50 normal
particle firework ~ ~ ~ 0.1 0.1 0.1 0.5 50 normal
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1.67
function new_stopwatch:set_finish_time with entity @s
function new_stopwatch:write_pb_run with entity @s

#slothy needs this <3
tag @s remove sloth_parkour_maze
tag @s remove nokill
function parkour:map/maze/sloth_parkour_maze/reset_scores

scoreboard players set @s spawn 1

function parkour:reset