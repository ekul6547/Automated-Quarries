execute unless data entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"sand"}}] run function tinkery_data:smeltery/materials/sand/add
function tinkery_data:smeltery/materials/sand/increase

scoreboard players set @s t_output 1