kill @e[type=item,sort=nearest,limit=1,distance=..3,nbt={Item:{id:"minecraft:obsidian"}}]
scoreboard players set @s q_d_result 0
scoreboard players set @s q_UUIDMost 1
scoreboard players set @s q_UUIDLeast 11
tag @s add q_dampen_data
execute at @s as @a[distance=..3] run function quarry:blocks/dampener/testdestroyplayer
tag @s remove q_dampen_data

execute at @s unless score @s q_d_result matches -1 run tellraw @a[distance=..3] {"text":"Owner not present for destruction. Destruction Cancelled.","color":"red"}
execute at @s unless score @s q_d_result matches -1 run setblock ~ ~0.5 ~ minecraft:obsidian

execute at @s if score @s q_d_result matches -1 run function quarry:blocks/dampener/destroy