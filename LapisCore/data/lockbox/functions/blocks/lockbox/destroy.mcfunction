kill @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Item:{id:"minecraft:barrel"}}]
execute at @s run function lockbox:blocks/lockbox/summon
kill @s