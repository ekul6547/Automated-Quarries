# Tool in Items[{Slot:11b}]
# Material in Items[{Slot:15b}]

#This is where you call all of the attribute tests for this type of item

execute as @s at @s if score @s t_output matches 0 run function example_addon:attribute/speed_effect/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/durability/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/mending/test