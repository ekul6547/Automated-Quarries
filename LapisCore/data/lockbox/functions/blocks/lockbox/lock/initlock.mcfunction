execute at @s run data modify entity @s ArmorItems[0].tag.Owner.UUIDMost set from entity @p UUIDMost
execute at @s run data modify entity @s ArmorItems[0].tag.Owner.UUIDLeast set from entity @p UUIDLeast
execute as @s run function lockbox:blocks/lockbox/lock/lock
tag @s remove q_UnLockBox