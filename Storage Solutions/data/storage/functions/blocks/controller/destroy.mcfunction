kill @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Item:{id:"minecraft:magma_block"}}]
execute at @s run function storage:blocks/controller/summon
kill @s