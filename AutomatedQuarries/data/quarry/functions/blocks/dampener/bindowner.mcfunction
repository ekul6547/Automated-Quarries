execute as @s run function quarry:blocks/dampener/joined/create
execute at @s run data modify entity @s ArmorItems[0].tag.Dampen.Owner.UUIDMost set from entity @p[scores={LapisBlockPlaced=1..},gamemode=!spectator] UUIDMost
execute at @s run data modify entity @s ArmorItems[0].tag.Dampen.Owner.UUIDLeast set from entity @p[scores={LapisBlockPlaced=1..},gamemode=!spectator] UUIDLeast
scoreboard players set @s q_d_index 1
scoreboard players set @p[scores={LapisBlockPlaced=1..}] LapisBlockPlaced 2