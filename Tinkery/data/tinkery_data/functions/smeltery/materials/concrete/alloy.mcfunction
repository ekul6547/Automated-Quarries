function tinkery:rd
execute store result score #tinkery t_dum0 run data get entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"sand"}}].Amount
execute store result score #tinkery t_dum1 run data get entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"gravel"}}].Amount

execute if score #tinkery t_dum0 matches 180.. if score #tinkery t_dum1 matches 180.. run scoreboard players set #tinkery t_dum2 1

execute if score #tinkery t_dum2 matches 1 run scoreboard players set #smeltery t_dum1 360
execute if score #tinkery t_dum2 matches 1 if score @s t_s_heat matches 300.. run function tinkery_data:smeltery/materials/concrete/testexists
execute if score #tinkery t_dum2 matches 1 run scoreboard players remove #tinkery t_dum0 180
execute if score #tinkery t_dum2 matches 1 run scoreboard players remove #tinkery t_dum1 180
execute if score #tinkery t_dum2 matches 1 store result entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"sand"}}].Amount int 1 run scoreboard players get #tinkery t_dum0
execute if score #tinkery t_dum2 matches 1 store result entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"gravel"}}].Amount int 1 run scoreboard players get #tinkery t_dum1
execute if score #tinkery t_dum2 matches 1 run scoreboard players add #tinkery t_output 1