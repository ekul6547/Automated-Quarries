function quarry:blocks/quarry/size/increase_x
function quarry:blocks/quarry/size/increase_z
execute at @s run tellraw @p ["",{"text":"Quarry size increased"}]
setblock ~ ~2 ~ minecraft:air destroy