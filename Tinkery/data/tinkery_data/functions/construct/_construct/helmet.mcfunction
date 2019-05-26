#Test for helmet crafting like this

# Helmet Slots: 3  4  5
#               12    14
#                   

# t_output = 1 means crafting has been done already, so no need to check this tick

# if t_output = 1, all crafting slots will be reduced by 1 automatically
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/leather/helmet
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/chainmail/helmet
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/iron/helmet
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/gold/helmet
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/diamond/helmet