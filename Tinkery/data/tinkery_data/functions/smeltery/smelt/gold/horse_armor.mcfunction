#The amount to increase by
scoreboard players set #smeltery t_dum1 1260
execute if score @s t_s_heat matches 300.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:golden_horse_armor",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/gold/testexists