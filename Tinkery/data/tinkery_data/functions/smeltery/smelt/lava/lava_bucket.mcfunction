#The amount to increase by
scoreboard players set #smeltery t_dum1 180
execute if score @s t_s_heat matches 10.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:lava_bucket",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/lava/testexists
execute if score @s t_s_heat matches 10.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:lava_bucket",tag:{Active:1b}}] run scoreboard players set @s t_output 2