#The amount to increase by
scoreboard players set #smeltery t_dum1 180
execute if score @s t_s_heat matches 100.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:sand",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/sand/testexists
execute if score @s t_s_heat matches 100.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:glass",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/sand/testexists
scoreboard players set #smeltery t_dum1 720
execute if score @s t_s_heat matches 100.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:sandstone",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/sand/testexists
execute if score @s t_s_heat matches 100.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:cut_sandstone",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/sand/testexists
execute if score @s t_s_heat matches 100.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:smooth_sandstone",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/sand/testexists
execute if score @s t_s_heat matches 100.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:chiseled_sandstone",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/sand/testexists
scoreboard players set #smeltery t_dum1 180
execute if score @s t_s_heat matches 100.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat run function tinkery_data:smeltery/smelt/sand/stained_glass