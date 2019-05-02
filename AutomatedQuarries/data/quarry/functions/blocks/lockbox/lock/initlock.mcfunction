data modify entity @s ArmorItems[{id:"minecraft:paper"}].tag.UUIDMost set from entity @p UUIDMost
data modify entity @s ArmorItems[{id:"minecraft:paper"}].tag.UUIDLeast set from entity @p UUIDLeast
execute as @s run function quarry:blocks/lockbox/lock/lock

tag @s remove q_UnLockBox