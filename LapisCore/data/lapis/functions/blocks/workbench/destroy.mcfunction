kill @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Item:{id:"minecraft:dropper"}}]
execute at @s run function lapis:blocks/workbench/summon
kill @s