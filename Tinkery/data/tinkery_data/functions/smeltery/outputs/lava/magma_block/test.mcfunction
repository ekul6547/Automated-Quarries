function tinkery:rd
execute store result score #tinkery t_dum0 run data get entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"lava"}}].Amount
execute as @e[type=minecraft:item_frame,tag=t_v_current,limit=1] at @s if score #tinkery t_dum0 matches 45.. if block ~ ~-1 ~ minecraft:cauldron[level=0] positioned ~ ~-0.5 ~ run function tinkery_data:smeltery/outputs/lava/magma_block/spawn
execute store result entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"lava"}}].Amount int 1 run scoreboard players get #tinkery t_dum0
execute if score #tinkery t_dum0 matches ..0 run function tinkery:blocks/smeltery/materials/list