function leavedetection:leave_detection/check_if_online_2 with storage leavedetection:temporary List[-1]
scoreboard players remove #ListSize Dummy 1
execute if score #ListSize Dummy matches 1.. run data remove storage leavedetection:temporary List[-1]
execute if score #ListSize Dummy matches 1.. run function leavedetection:leave_detection/check_if_online