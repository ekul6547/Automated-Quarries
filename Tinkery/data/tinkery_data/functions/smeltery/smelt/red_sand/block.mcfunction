#The amount to increase by
scoreboard players set #smeltery t_dum1 180
execute if score @s t_s_heat matches 100.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:red_sand",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/red_sand/testexists
scoreboard players set #smeltery t_dum1 720
execute if score @s t_s_heat matches 100.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:red_sandstone",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/red_sand/testexists
execute if score @s t_s_heat matches 100.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:cut_red_sandstone",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/red_sand/testexists
execute if score @s t_s_heat matches 100.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:smooth_red_sandstone",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/red_sand/testexists
execute if score @s t_s_heat matches 100.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:chiseled_red_sandstone",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/red_sand/testexists