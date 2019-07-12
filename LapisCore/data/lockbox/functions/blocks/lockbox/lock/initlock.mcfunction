execute at @s run data modify entity @s ArmorItems[0].tag.Owner.UUIDMost set from entity @p[scores={LapisBlockPlaced=1..}] UUIDMost
execute at @s run data modify entity @s ArmorItems[0].tag.Owner.UUIDLeast set from entity @p[scores={LapisBlockPlaced=1..}] UUIDLeast
execute as @s run function lockbox:blocks/lockbox/lock/lock
tag @s remove q_UnLockBox
scoreboard players set @p[scores={LapisBlockPlaced=1..}] LapisBlockPlaced 2