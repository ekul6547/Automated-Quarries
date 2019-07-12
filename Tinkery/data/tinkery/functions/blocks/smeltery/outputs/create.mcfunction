tag @e[tag=t_s_current] remove t_s_current
tag @e[tag=t_v_current] remove t_v_current
execute at @s run function tinkery:blocks/smeltery/valves/findvalves
tag @s add t_s_current
data modify entity @s ArmorItems[0].tag.Smeltery.TempItem set from block ~ ~ ~ Items[{Slot:25b}]
execute as @e[type=minecraft:item_frame,tag=t_valve] run function tinkery:blocks/smeltery/outputs/pervalve
tag @s remove t_s_current