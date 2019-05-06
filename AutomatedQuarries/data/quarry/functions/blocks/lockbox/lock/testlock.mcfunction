data modify entity @e[tag=q_master_lock,limit=1] Item.tag.UUIDMost set from entity @s ArmorItems[0].tag.UUIDMost
data modify entity @e[tag=q_master_lock,limit=1] Item.tag.UUIDLeast set from entity @s ArmorItems[0].tag.UUIDLeast

scoreboard players set #lock q_UUIDMost 1
scoreboard players set #lock q_UUIDLeast 1
execute as @s at @s store success score #lock q_UUIDMost run data modify entity @e[tag=q_master_lock,limit=1] Item.tag.UUIDMost set from entity @p UUIDMost
execute as @s at @s if score #lock q_UUIDMost matches 0 store success score #lock q_UUIDLeast run data modify entity @e[tag=q_master_lock,limit=1] Item.tag.UUIDLeast set from entity @p UUIDLeast

execute as @s if score #lock q_UUIDLeast matches 0 run function quarry:blocks/lockbox/lock/unlock