execute at @s run setblock ~ ~0.6 ~ minecraft:barrel[facing=up]{CustomName:"{\"text\":\"Storage Terminal\"}"}

execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-45..45] run summon armor_stand ~0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{TEMPITEMS:[]}},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:151}}],Tags:["s_Terminal","Block","s_suggestID","s_Terminal_x"]}

execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=45..135] run summon armor_stand ~0.188 ~-0.5 ~0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[90f],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{TEMPITEMS:[]}},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:151}}],Tags:["s_Terminal","Block","s_suggestID","s_Terminal_x"]}

execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=135..-135] run summon armor_stand ~-0.188 ~-0.5 ~0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[180f],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{TEMPITEMS:[]}},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:151}}],Tags:["s_Terminal","Block","s_suggestID","s_Terminal_x"]}

execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-135..-45] run summon armor_stand ~-0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[270f],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{TEMPITEMS:[]}},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:151}}],Tags:["s_Terminal","Block","s_suggestID","s_Terminal_x"]}

execute at @s run data modify block ~ ~0.6 ~ CustomName set from entity @s CustomName
execute at @s run data modify entity @e[tag=s_Terminal_x,limit=1] CustomName set from entity @s CustomName

execute at @s as @e[tag=s_Terminal_x] unless score @s s_id matches 1.. run function storage:system/ids/find_control
execute as @e[tag=s_Terminal_x] at @s run function storage:system/menu/next_server
execute as @e[tag=s_Terminal_x] at @s run function storage:system/menu/close_menu

tag @e[tag=s_Terminal_x] remove s_Terminal_x
scoreboard players set @p[scores={LapisBlockPlaced=1..}] LapisBlockPlaced 2
kill @s