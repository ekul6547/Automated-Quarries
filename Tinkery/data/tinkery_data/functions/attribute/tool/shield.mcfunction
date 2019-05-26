# Tool in Items[{Slot:11b}]
# Material in Items[{Slot:15b}]

execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/durability/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/mending/test