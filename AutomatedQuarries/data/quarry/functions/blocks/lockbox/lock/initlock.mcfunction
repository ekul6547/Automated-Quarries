execute store result score @s q_UUIDMost run data get entity @p UUIDMost
execute store result score @s q_UUIDLeast run data get entity @p UUIDLeast
execute as @s run function quarry:blocks/lockbox/lock/lock
tag @s remove q_UnLockBox