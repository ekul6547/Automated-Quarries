kill @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Item:{id:"minecraft:iron_block"}}]
execute at @s run function tinkery_data:smeltery/materials/steel/block/summon
kill @s