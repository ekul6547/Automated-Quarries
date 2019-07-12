scoreboard players set #smeltery t_output 0
execute unless score @s t_menu = @s t_pre positioned ~ ~0.6 ~ run function tinkery:blocks/smeltery/outputs/show

execute if score @s L_Age matches 2 if score @s t_s_fuel matches 0 run function tinkery:blocks/smeltery/fuel/refuel
execute if score @s L_Age matches 2 if score @s t_s_fuel matches 1.. run function tinkery:blocks/smeltery/fuel/reduce

execute positioned ~ ~0.6 ~ run function tinkery:blocks/smeltery/outputs/nav
execute if score @s L_Age matches 3 at @s positioned ~ ~0.6 ~ run function tinkery:blocks/smeltery/outputs/alloys
execute if score @s L_Age matches 3.. at @s positioned ~ ~0.6 ~ if score @s t_s_current < @s t_s_capacity run function tinkery:blocks/smeltery/smelt/smelt

execute if score @s L_Age matches 19 at @s positioned ~ ~0.6 ~ run function tinkery:blocks/smeltery/outputs/create

scoreboard players operation @s t_output_pre += #smeltery t_output

execute if score @s L_Age matches 2 as @s at @s positioned ~ ~0.6 ~ if score @s t_output_pre matches 1.. run function tinkery:blocks/smeltery/outputs/refresh
execute if score @s L_Age matches 2 positioned ~ ~0.6 ~ run function tinkery:blocks/smeltery/gui/set_info
execute if score @s L_Age matches 2 run scoreboard players set @s t_output_pre 0