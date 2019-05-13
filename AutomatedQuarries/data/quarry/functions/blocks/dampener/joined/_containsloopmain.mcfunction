#Check for player UUIDLeast and UUIDMost
scoreboard players set @s q_UUIDMost 1
scoreboard players set @s q_UUIDLeast 1
execute as @s at @s run data modify entity @s ArmorItems[0].tag.UUIDCompare.UUIDMost set from entity @p[tag=array_test] UUIDMost
execute as @s at @s run data modify entity @s ArmorItems[0].tag.UUIDCompare.UUIDLeast set from entity @p[tag=array_test] UUIDLeast
execute as @s at @s store success score @s q_UUIDMost run data modify entity @s ArmorItems[0].tag.UUIDCompare.UUIDMost set from entity @s ArmorItems[0].tag.Dampen.JoinedArray.Array[0].UM
execute as @s at @s if score @s q_UUIDMost matches 0 store success score @s q_UUIDLeast run data modify entity @s ArmorItems[0].tag.UUIDCompare.UUIDLeast set from entity @s ArmorItems[0].tag.Dampen.JoinedArray.Array[0].UL
#If both match, set result to 1
execute if score @s q_UUIDLeast matches 0 store result score @s q_d_result run data get entity @s ArmorItems[0].tag.Dampen.JoinedArray.Array[0]