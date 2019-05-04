execute at @s run kill @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Item:{id:"minecraft:dropper"}}]
#execute at @s positioned ~ ~1.5 ~ run kill @e[type=item_frame,tag=charger_item,sort=nearest,limit=1]
execute at @s run function quarry:blocks/charger/summon
kill @s