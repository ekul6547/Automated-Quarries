execute if score @s t_smeltery_on matches 1 at @s positioned ~ ~0.6 ~-2 run function tinkery:blocks/smeltery/check/check_floor
#For initial level
execute if score @s t_smeltery_on matches 1 at @s positioned ~ ~0.6 ~-2 run function tinkery:blocks/smeltery/check/check_level_first
#Then count how many levels
execute if score @s t_smeltery_on matches 1 at @s positioned ~ ~1.6 ~-2 run function tinkery:blocks/smeltery/check/check_level_loop
execute if score @s t_s_level matches 1.. run scoreboard players set @s t_smeltery_on 1