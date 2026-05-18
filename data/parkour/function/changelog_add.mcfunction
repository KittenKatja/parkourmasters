data modify storage gradient_gen:gradient_gen input.start set value "299611"
data modify storage gradient_gen:gradient_gen input.end set value "35DE68"
$data modify storage gradient_gen:gradient_gen input.string set value "> $(text)"

data modify storage gradient_gen:gradient_gen result set value []
function gradient_gen:generate
data modify storage gradient_gen:gradient_gen result prepend value {shadow_color:0,text:""}

$data modify storage changelog id set value $(id)
data modify storage changelog newtext set from storage gradient_gen:gradient_gen result
function parkour:add_changelog_finish with storage changelog