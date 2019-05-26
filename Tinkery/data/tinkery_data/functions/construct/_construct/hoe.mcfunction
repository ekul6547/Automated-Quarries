#Test for hoe crafting like this

# Hoe Slots: 4  5
#               14
#               23

# t_output = 1 means crafting has been done already, so no need to check this tick

# if t_output = 1, all crafting slots will be reduced by 1 automatically

execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/wood/hoe
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/stone/hoe
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/iron/hoe
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/gold/hoe
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/diamond/hoe