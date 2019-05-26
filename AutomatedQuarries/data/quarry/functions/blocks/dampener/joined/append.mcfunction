scoreboard players set #append QuarryIgnore 1
execute at @s if entity @p[tag=q_dampen_request,distance=..4] run scoreboard players set #append QuarryIgnore 0
#Append new entry
execute as @s if score #append QuarryIgnore matches 0 run data modify entity @s ArmorItems[0].tag.Dampen.JoinedArray.Array append value {UL:0L,UM:0L,index:0}
execute as @s if score #append QuarryIgnore matches 0 at @s run data modify entity @s ArmorItems[0].tag.Dampen.JoinedArray.Array[-1].UL set from entity @p[tag=q_dampen_request] UUIDLeast
execute as @s if score #append QuarryIgnore matches 0 at @s run data modify entity @s ArmorItems[0].tag.Dampen.JoinedArray.Array[-1].UM set from entity @p[tag=q_dampen_request] UUIDMost
execute as @s if score #append QuarryIgnore matches 0 run data modify entity @s ArmorItems[0].tag.Dampen.JoinedArray.Array[-1].index set from entity @s ArmorItems[0].tag.Dampen.JoinedArray.Count
execute as @s if score #append QuarryIgnore matches 0 store result score #damp q_d_current run data get entity @s ArmorItems[0].tag.Dampen.JoinedArray.Count
execute as @s if score #append QuarryIgnore matches 0 run scoreboard players add #damp q_d_current 1
execute as @s if score #append QuarryIgnore matches 0 store result entity @s ArmorItems[0].tag.Dampen.JoinedArray.Count int 1 run scoreboard players get #damp q_d_current