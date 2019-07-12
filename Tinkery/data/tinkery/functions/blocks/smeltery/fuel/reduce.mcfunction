scoreboard players remove @s t_s_fuel 1
execute if score @s t_s_fuel matches ..0 run scoreboard players set @s t_s_fuel 0
execute if score @s t_s_fuel matches 0 run scoreboard players set @s t_s_heat 0
execute if score @s t_s_fuel matches 0 run function tinkery:blocks/smeltery/gui/set_gui