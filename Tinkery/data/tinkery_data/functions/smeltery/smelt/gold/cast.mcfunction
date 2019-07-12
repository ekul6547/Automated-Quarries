#The amount to increase by
scoreboard players set #smeltery t_dum1 180
execute if score @s t_s_heat matches 300.. if data block ~ ~ ~ Items[{id:"minecraft:paper",tag:{Active:1b}}].tag.TinkeryCast run function tinkery_data:smeltery/materials/gold/testexists