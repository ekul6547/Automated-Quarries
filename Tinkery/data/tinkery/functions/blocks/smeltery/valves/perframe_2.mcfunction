execute if data entity @s {ItemRotation:1b} run data modify entity @s Item.tag.display.Name set value '{"text":"Valve On","color":"green"}'
execute if data entity @s {ItemRotation:1b} run data modify entity @s Item.tag.CustomModelData set value 1001
execute if data entity @s {ItemRotation:1b} at @s if entity @e[type=minecraft:item_frame,nbt={Facing:1b},distance=..0.7] run tag @s add t_valve
execute if data entity @s {ItemRotation:1b} at @s if block ~ ~-1 ~ minecraft:cauldron run tag @s add t_valve
execute if entity @s[nbt=!{ItemRotation:0b},nbt=!{ItemRotation:1b}] run data modify entity @s ItemRotation set value 0b
execute if data entity @s {ItemRotation:0b} run data modify entity @s Item.tag.display.Name set value '{"text":"Valve Off","color":"red"}'
execute if data entity @s {ItemRotation:0b} run data modify entity @s Item.tag.CustomModelData set value 1000