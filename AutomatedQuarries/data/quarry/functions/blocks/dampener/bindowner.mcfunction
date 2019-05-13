execute as @s run function quarry:blocks/dampener/joined/create
execute at @s run data modify entity @s ArmorItems[0].tag.Dampen.Owner.UUIDMost set from entity @p[gamemode=!spectator] UUIDMost
execute at @s run data modify entity @s ArmorItems[0].tag.Dampen.Owner.UUIDLeast set from entity @p[gamemode=!spectator] UUIDLeast
scoreboard players set @s q_d_index 1
tag @s remove q_Dampener_init