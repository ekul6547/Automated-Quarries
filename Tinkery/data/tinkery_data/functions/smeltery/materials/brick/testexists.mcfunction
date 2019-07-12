execute unless data entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"brick"}}] run function tinkery_data:smeltery/materials/brick/add
function tinkery_data:smeltery/materials/brick/increase

scoreboard players set @s t_output 1