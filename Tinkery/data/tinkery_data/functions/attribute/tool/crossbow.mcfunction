# Tool in Items[{Slot:11b}]
# Material in Items[{Slot:15b}]

execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/tool/common

execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/quickcharge/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/quickcharge_block/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/piercing/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/piercing_block/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/multishot/test