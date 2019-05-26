#Test for leggings crafting like this

# Leggings Slots: 4  5   6
#                 13     15
#                 22     24

# t_output = 1 means crafting has been done already, so no need to check this tick

# if t_output = 1, all crafting slots will be reduced by 1 automatically
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/leather/leggings
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/chainmail/leggings
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/iron/leggings
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/gold/leggings
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/diamond/leggings