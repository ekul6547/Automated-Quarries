#The amount to increase by
scoreboard players set #smeltery t_dum1 180
execute if score @s t_s_heat matches 300.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat run function tinkery_data:smeltery/smelt/concrete/powder
execute if score @s t_s_heat matches 300.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat run function tinkery_data:smeltery/smelt/concrete/blocks