execute unless data entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"gravel"}}] run function tinkery_data:smeltery/materials/gravel/add
function tinkery_data:smeltery/materials/gravel/increase

scoreboard players set @s t_output 1