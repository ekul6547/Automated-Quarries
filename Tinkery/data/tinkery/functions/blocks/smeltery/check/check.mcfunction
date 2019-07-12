scoreboard players set @s t_smeltery_on 1
scoreboard players set @s t_s_level 0
execute at @s if score @s direction matches 0 positioned ~ ~0.6 ~ run function tinkery:blocks/smeltery/check/check_north
execute at @s if score @s direction matches 1 positioned ~ ~0.6 ~ run function tinkery:blocks/smeltery/check/check_east
execute at @s if score @s direction matches 2 positioned ~ ~0.6 ~ run function tinkery:blocks/smeltery/check/check_south
execute at @s if score @s direction matches 3 positioned ~ ~0.6 ~ run function tinkery:blocks/smeltery/check/check_west

execute at @s run function tinkery:blocks/smeltery/fluid/dofluid