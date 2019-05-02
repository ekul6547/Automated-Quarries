execute store success score #lock q_const run data modify entity @s Item.tag.UUIDMost set from entity @p UUIDMost
execute if score #lock q_const matches ..0 run execute store success score #lock q_const run data modify entity @s Item.tag.UUIDLeast set from entity @p UUIDLeast
execute at @s run kill @e[type=minecraft:item,distance=..3,nbt={Item:{id:"minecraft:item_frame"}}]
execute as @s at @s run teleport @s ~ ~ ~ facing entity @p eyes