#Run commands
tellraw @a [{"nbt":"List[-1].Name","storage":"leavedetection:online_players"}," left"]

#Remove offline player from list
$data remove storage leavedetection:online_players List[{Name:"$(Name)"}]
