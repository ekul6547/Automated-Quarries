#Run as @a
scoreboard players set #damp q_UUIDMost 1
scoreboard players set #damp q_UUIDLeast 1
execute as @s run data modify entity @e[tag=q_dampen_data,limit=1] ArmorItems[0].tag.UUIDCompare.UUIDMost set from entity @s UUIDMost
execute as @s run data modify entity @e[tag=q_dampen_data,limit=1] ArmorItems[0].tag.UUIDCompare.UUIDLeast set from entity @s UUIDLeast
execute store success score #damp q_UUIDMost run data modify entity @e[tag=q_dampen_data,limit=1] ArmorItems[0].tag.UUIDCompare.UUIDMost set from entity @e[tag=q_dampen_data,limit=1] ArmorItems[0].tag.Dampen.Owner.UUIDMost
execute if score #damp q_UUIDMost matches 0 store success score #damp q_UUIDLeast run data modify entity @e[tag=q_dampen_data,limit=1] ArmorItems[0].tag.UUIDCompare.UUIDLeast set from entity @e[tag=q_dampen_data,limit=1] ArmorItems[0].tag.Dampen.Owner.UUIDLeast
#If both match, set result to 1
execute if score #damp q_UUIDLeast matches 0 as @s run scoreboard players operation @s q_d_current = #damp QuarryCount