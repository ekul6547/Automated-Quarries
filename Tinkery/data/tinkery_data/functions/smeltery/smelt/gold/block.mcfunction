#The amount to increase by
scoreboard players set #smeltery t_dum1 1620
execute if score @s t_s_heat matches 300.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:gold_block",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/gold/testexists