#Remove offline players from the list
data modify storage leavedetection:temporary List set from storage leavedetection:online_players List
execute store result score #ListSize Dummy if data storage leavedetection:temporary List[]
function leavedetection:leave_detection/check_if_online
scoreboard players reset #ListSize
data remove storage leavedetection:temporary List