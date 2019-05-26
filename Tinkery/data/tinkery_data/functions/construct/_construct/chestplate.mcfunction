#Test for chestplate crafting like this

# Chestplate Slots: 3      5
#                   12 13  14
#                   21 22  23

# t_output = 1 means crafting has been done already, so no need to check this tick

# if t_output = 1, all crafting slots will be reduced by 1 automatically
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/leather/chestplate
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/chainmail/chestplate
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/iron/chestplate
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/gold/chestplate
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/diamond/chestplate