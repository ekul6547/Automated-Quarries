#The amount to increase by
scoreboard players set #smeltery t_dum1 360
execute if score @s t_s_heat matches 1001.. run scoreboard players set #smeltery t_dum1 720
execute if score @s t_s_heat matches 700.. unless data block ~ ~ ~ Items[{tag:{Active:1b}}].tag.TinkeryMat if data block ~ ~ ~ Items[{id:"minecraft:emerald_ore",tag:{Active:1b}}] run function tinkery_data:smeltery/materials/emerald/testexists