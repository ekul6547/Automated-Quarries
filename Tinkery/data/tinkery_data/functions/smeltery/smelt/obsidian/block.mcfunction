#The amount to increase by
scoreboard players set #smeltery t_dum1 720
execute if score @s t_s_heat matches 1000.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:obsidian",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/obsidian/testexists