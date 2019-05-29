#This is for all tools with durability

execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/durability/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/mending/test
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:attribute/unbreakable/test