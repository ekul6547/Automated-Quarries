# Tool in Items[{Slot:11b}]
# Material in Items[{Slot:15b}]

#Speed
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/tool/common

execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/efficiency/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/efficiency_block/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/fortune/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/fortune_block/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/silk_touch/test