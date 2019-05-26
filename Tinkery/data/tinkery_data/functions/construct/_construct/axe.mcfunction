#Test for axe crafting like this

# Axe Slots: 4  5
#            13 14
#               23

# t_output = 1 means crafting has been done already, so no need to check this tick

# if t_output = 1, all crafting slots will be reduced by 1 automatically

execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/wood/axe
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/stone/axe
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/iron/axe
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/gold/axe
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/diamond/axe