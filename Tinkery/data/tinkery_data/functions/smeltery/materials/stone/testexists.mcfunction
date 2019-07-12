execute unless data entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"stone"}}] run function tinkery_data:smeltery/materials/stone/add
function tinkery_data:smeltery/materials/stone/increase

scoreboard players set @s t_output 1