#Join Game
execute as @a[scores={JoinGame=1..}] run function leavedetection:leave_detection/join

#Playercount Check
execute store result score #PlayerCount Dummy if entity @a
execute if score #PlayerCount Dummy < #PlayerCountPrev Dummy run function leavedetection:leave_detection/someone_left
scoreboard players operation #PlayerCountPrev Dummy = #PlayerCount Dummy


execute store result score .playersOnline parkour.math run list
execute unless score .playersOnline parkour.math = #playersOnline parkour.math run function leavedetection:test/store
execute store result score #playersOnline parkour.math run list

execute as @a if items entity @s container.* *[custom_data~{ui:90099}] run function leavedetection:test/reset_ui
execute as @a if items entity @s weapon.offhand *[custom_data~{ui:90099}] run function leavedetection:test/reset_ui
execute as @a if items entity @s player.cursor *[custom_data~{ui:90099}] run function leavedetection:test/reset_ui
execute as @e if items entity @s contents *[custom_data~{ui:90099}] run function leavedetection:test/reset_ui
