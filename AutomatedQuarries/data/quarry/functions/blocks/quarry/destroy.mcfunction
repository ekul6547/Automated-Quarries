kill @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Item:{id:"minecraft:dropper"}}]
execute at @s run function quarry:blocks/quarry/summon
kill @s