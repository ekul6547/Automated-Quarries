tag @e[type=minecraft:item_frame,tag=t_valve] remove t_valve
execute if score @s direction matches 0 positioned ~ ~1 ~2 run function tinkery:blocks/smeltery/valves/identify
execute if score @s direction matches 1 positioned ~-2 ~1 ~ run function tinkery:blocks/smeltery/valves/identify
execute if score @s direction matches 2 positioned ~ ~1 ~-2 run function tinkery:blocks/smeltery/valves/identify
execute if score @s direction matches 3 positioned ~2 ~1 ~ run function tinkery:blocks/smeltery/valves/identify