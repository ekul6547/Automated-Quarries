#Test for pickaxe crafting like this

# Pickaxe Slots: 4  5   6
#                   14
#                   23

# t_output = 1 means crafting has been done already, so no need to check this tick

# if t_output = 1, all crafting slots will be reduced by 1 automatically

execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/wood/pickaxe
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/stone/pickaxe
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/iron/pickaxe
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/gold/pickaxe
execute as @s at @s if score @s t_output matches 0 run function tinkery_data:construct/diamond/pickaxe