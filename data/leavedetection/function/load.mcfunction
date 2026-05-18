#Add Scoreboards
scoreboard objectives add Dummy dummy
scoreboard objectives add JoinGame minecraft.custom:minecraft.leave_game
tellraw @a {"text":"Leave Detection Loaded","color":"green"}
#Set Shulker Box
forceload add 29999983 29999983
setblock 29999983 0 29999983 shulker_box