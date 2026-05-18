execute unless data storage powered_utils:data activators[] run return fail

data modify storage powered_utils:data activator set from storage powered_utils:data activators[-1]
data remove storage powered_utils:data activators[-1]
execute if function powered_utils:tick/check_powered run return 1

return run function powered_utils:tick/activate_powerable_loop