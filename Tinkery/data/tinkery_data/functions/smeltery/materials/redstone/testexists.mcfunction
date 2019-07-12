execute unless data entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"redstone"}}] run function tinkery_data:smeltery/materials/redstone/add
function tinkery_data:smeltery/materials/redstone/increase

scoreboard players set @s t_output 1