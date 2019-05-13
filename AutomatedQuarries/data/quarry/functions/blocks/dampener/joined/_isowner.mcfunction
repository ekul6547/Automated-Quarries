execute as @s at @s run data modify entity @s ArmorItems[0].tag.UUIDCompare.UUIDMost set from entity @p[tag=array_test] UUIDMost
execute as @s at @s run data modify entity @s ArmorItems[0].tag.UUIDCompare.UUIDLeast set from entity @p[tag=array_test] UUIDLeast
execute as @s at @s store success score @s q_UUIDMost run data modify entity @s ArmorItems[0].tag.UUIDCompare.UUIDMost set from entity @s ArmorItems[0].tag.Dampen.Owner.UUIDMost
execute as @s at @s if score @s q_UUIDMost matches 0 store success score @s q_UUIDLeast run data modify entity @s ArmorItems[0].tag.UUIDCompare.UUIDLeast set from entity @s ArmorItems[0].tag.Dampen.Owner.UUIDLeast
execute as @s if score @s q_UUIDLeast matches 0 if score @s q_d_result matches 0 run scoreboard players set @s q_d_result -1