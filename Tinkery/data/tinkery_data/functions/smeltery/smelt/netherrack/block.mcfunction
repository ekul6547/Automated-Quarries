#The amount to increase by
scoreboard players set #smeltery t_dum1 180
execute if score @s t_s_heat matches 600.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:netherrack",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/netherrack/testexists
scoreboard players set #smeltery t_dum1 720
execute if score @s t_s_heat matches 600.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:nether_bricks",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/netherrack/testexists