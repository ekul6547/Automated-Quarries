#The amount to increase by
scoreboard players set #smeltery t_dum1 180
execute if data block ~ ~ ~ Items[{id:"minecraft:coal",tag:{Active:1b,CustomModelData:1000}}] run scoreboard players set #smeltery t_dum1 360
execute if score @s t_s_heat matches 400.. if data block ~ ~ ~ Items[{id:"minecraft:coal",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/coal/testexists