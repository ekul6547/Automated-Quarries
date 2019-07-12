execute store result score #smeltery t_dum0 run data get entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"steel"}}].Amount
scoreboard players operation #smeltery t_dum0 += #smeltery t_dum1
execute store result entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"steel"}}].Amount int 1 run scoreboard players get #smeltery t_dum0