execute store result score #lock q_UUIDMost run data get entity @p UUIDMost
execute store result score #lock q_UUIDLeast run data get entity @p UUIDLeast
execute as @s if score #lock q_UUIDMost = @s q_UUIDMost if score #lock q_UUIDLeast = @s q_UUIDLeast run function quarry:blocks/lockbox/lock/unlock