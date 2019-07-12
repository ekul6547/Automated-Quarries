execute unless data entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"concrete"}}] run function tinkery_data:smeltery/materials/concrete/add
function tinkery_data:smeltery/materials/concrete/increase

scoreboard players set @s t_output 1