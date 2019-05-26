data modify entity @s ArmorItems[0].tag.UUIDCompare.UUIDMost set from entity @s ArmorItems[0].tag.Owner.UUIDMost
data modify entity @s ArmorItems[0].tag.UUIDCompare.UUIDLeast set from entity @s ArmorItems[0].tag.Owner.UUIDLeast

scoreboard players set #lock q_UUIDMost 1
scoreboard players set #lock q_UUIDLeast 1
execute as @s at @s store success score #lock q_UUIDMost run data modify entity @s ArmorItems[0].tag.UUIDCompare.UUIDMost set from entity @p UUIDMost
execute as @s at @s if score #lock q_UUIDMost matches 0 store success score #lock q_UUIDLeast run data modify entity @s ArmorItems[0].tag.UUIDCompare.UUIDLeast set from entity @p UUIDLeast

execute as @s if score #lock q_UUIDLeast matches 0 run function lockbox:blocks/lockbox/lock/unlock