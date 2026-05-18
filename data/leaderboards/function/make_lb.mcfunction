$data modify storage leaderboards:lb $(id).id set value $(id)
$data modify storage leaderboards:lb $(id).score set value $(score)
$data modify storage leaderboards:lb $(id).player set value $(player)

$data modify storage leaderboards:lb $(id).text set value [{"player":"$(player)"},{text:" "},{text:"$(player)"},{text:": "},{text:"$(score)"}]
$data modify entity @s text set from storage leaderboards:lb $(id).text