function tinkery:rd
execute store result score #tinkery t_dum0 run data get entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"sand"}}].Amount
execute as @e[type=minecraft:item_frame,tag=t_v_current,limit=1] at @s if score #tinkery t_dum0 matches 180.. if block ~ ~-1 ~ minecraft:cauldron[level=0] run function tinkery_data:smeltery/outputs/sand/stained_glass/test_2
execute store result entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"sand"}}].Amount int 1 run scoreboard players get #tinkery t_dum0
execute if score #tinkery t_dum0 matches ..0 run function tinkery:blocks/smeltery/materials/list