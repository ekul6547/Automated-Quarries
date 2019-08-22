function quarry:blocks/quarry/size/decrease_x
function quarry:blocks/quarry/size/decrease_z
tellraw @p ["",{"text":"Quarry size decreased"}]
setblock ~ ~2 ~ minecraft:air destroy