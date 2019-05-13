execute at @s run data modify entity @s ArmorItems[0].tag.UUIDMost set from entity @p UUIDMost
execute at @s run data modify entity @s ArmorItems[0].tag.UUIDLeast set from entity @p UUIDLeast
execute as @s run function quarry:blocks/lockbox/lock/lock
tag @s remove q_UnLockBox