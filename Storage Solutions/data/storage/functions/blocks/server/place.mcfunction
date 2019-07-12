execute at @s run setblock ~ ~0.6 ~ minecraft:barrel[facing=up]
execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-45..45] run summon armor_stand ~0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:152}}],Tags:["s_Server","s_Server_x","Block","s_suggestID"]}

execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=45..135] run summon armor_stand ~0.188 ~-0.5 ~0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[90f],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:152}}],Tags:["s_Server","s_Server_x","Block","s_suggestID"]}

execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=135..-135] run summon armor_stand ~-0.188 ~-0.5 ~0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[180f],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:152}}],Tags:["s_Server","s_Server_x","Block","s_suggestID"]}

execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-135..-45] run summon armor_stand ~-0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[270f],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:152}}],Tags:["s_Server","s_Server_x","Block","s_suggestID"]}

execute at @s run data modify block ~ ~0.6 ~ CustomName set from entity @s CustomName
execute at @s run data modify entity @e[tag=s_Server_x,limit=1] CustomName set from entity @s CustomName

execute at @s as @e[tag=s_Server_x,limit=1] run function storage:system/ids/find_control
scoreboard players set @p[scores={LapisBlockPlaced=1..}] LapisBlockPlaced 2
tag @e[tag=s_Server_x] remove s_Server_x
kill @s