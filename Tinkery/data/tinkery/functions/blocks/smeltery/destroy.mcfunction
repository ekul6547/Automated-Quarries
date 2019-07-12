kill @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Item:{id:"minecraft:barrel"}}]
kill @e[type=item,distance=..3,nbt={Item:{id:"minecraft:barrier"}}]
kill @e[type=armor_stand,tag=t_smelt_fluid,distance=..3]
execute at @s run function tinkery:blocks/smeltery/summon
kill @s