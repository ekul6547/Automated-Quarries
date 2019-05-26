kill @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Item:{id:"minecraft:barrel"}}]
kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:barrier"}}]
execute at @s run function tinkery:blocks/modifier/summon
kill @s