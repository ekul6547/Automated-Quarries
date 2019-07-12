scoreboard players set @s t_smeltery_on 1
function tinkery:blocks/smeltery/check/check_level
execute if score @s t_smeltery_on matches 1 run scoreboard players add @s t_s_level 1
execute if score @s t_smeltery_on matches 1 positioned ~ ~1 ~ run function tinkery:blocks/smeltery/check/check_level_loop