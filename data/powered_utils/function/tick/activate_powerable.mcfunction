data modify storage powered_utils:data activators set from entity @s data.activators
execute if function powered_utils:tick/activate_powerable_loop run return run function powered_utils:tick/set_activated with entity @s data
function powered_utils:tick/set_deactivated with entity @s data