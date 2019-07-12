execute unless data entity @s ArmorItems[0].tag.Smeltery.Items[{TinkeryMat:{id:"glowstone"}}] run function tinkery_data:smeltery/materials/glowstone/add
function tinkery_data:smeltery/materials/glowstone/increase

scoreboard players set @s t_output 1