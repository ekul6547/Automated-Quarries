scoreboard players set #tinkery t_output 0
tag @s add t_v_current
function tinkery:blocks/smeltery/valves/colourvalve
execute if score #tinkery t_output matches 0 run function #tinkery_data:smeltery/create/create
tag @s remove t_v_current
scoreboard players operation #smeltery t_output += #tinkery t_output