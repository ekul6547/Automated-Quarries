#The amount to increase by
scoreboard players set #smeltery t_dum1 180
execute if score @s t_s_heat matches 600.. if data block ~ ~ ~ Items[{id:"minecraft:iron_ingot",tag:{Active:1b,TinkeryMat:{id:"steel"}}}] run function tinkery_data:smeltery/materials/steel/testexists