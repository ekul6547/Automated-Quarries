function tinkery:rd
execute store result score #tinkery t_dum0 run data get entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"gold"}}].Amount
#execute at @s run tellraw @p ["",{"score":{"name":"#tinkery","objective":"t_dum0"}},{"text":" | "},{"nbt":"ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:\"gold\"}}].Amount","entity":"@s"}]
execute if score #tinkery t_dum0 matches 100.. as @e[type=minecraft:item_frame,tag=t_v_current,limit=1] run function #tinkery_data:smeltery/create/casts

execute store result entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"gold"}}].Amount int 1 run scoreboard players get #tinkery t_dum0
execute if score #tinkery t_dum0 matches ..0 run function tinkery:blocks/smeltery/materials/list