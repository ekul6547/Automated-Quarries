
execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-45..45] run setblock ~ ~0.6 ~ minecraft:barrel[facing=north]{CustomName:"{\"text\":\"Smeltery\"}"}
execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-45..45] run summon armor_stand ~0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[0f],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{Smeltery:{Items:[],Output:[],TempItem:{},TempString:""}}},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:1003}}],Tags:["t_Smeltery","Block","t_Smeltery_init"]}
execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-45..45] run scoreboard players set @e[tag=t_Smeltery_init,limit=1] direction 0

execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=45..135] run setblock ~ ~0.6 ~ minecraft:barrel[facing=east]{CustomName:"{\"text\":\"Smeltery\"}"}
execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=45..135] run summon armor_stand ~0.188 ~-0.5 ~0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[90f],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{Smeltery:{Items:[],Output:[],TempItem:{},TempString:""}}},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:1003}}],Tags:["t_Smeltery","Block","t_Smeltery_init"]}
execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=45..135] run scoreboard players set @e[tag=t_Smeltery_init,limit=1] direction 1

execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=135..-135] run setblock ~ ~0.6 ~ minecraft:barrel[facing=south]{CustomName:"{\"text\":\"Smeltery\"}"}
execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=135..-135] run summon armor_stand ~-0.188 ~-0.5 ~0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[180f],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{Smeltery:{Items:[],Output:[],TempItem:{},TempString:""}}},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:1003}}],Tags:["t_Smeltery","Block","t_Smeltery_init"]}
execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=135..-135] run scoreboard players set @e[tag=t_Smeltery_init,limit=1] direction 2

execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-135..-45] run setblock ~ ~0.6 ~ minecraft:barrel[facing=west]{CustomName:"{\"text\":\"Smeltery\"}"}
execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-135..-45] run summon armor_stand ~-0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[270f],ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{Smeltery:{Items:[],Output:[],TempItem:{},TempString:""}}},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:1003}}],Tags:["t_Smeltery","Block","t_Smeltery_init"]}
execute at @s as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-135..-45] run scoreboard players set @e[tag=t_Smeltery_init,limit=1] direction 3

scoreboard players set @e[tag=t_Smeltery_init] t_smeltery_on 0
scoreboard players set @e[tag=t_Smeltery_init] t_s_level 0
scoreboard players set @e[tag=t_Smeltery_init] t_s_heat 0
scoreboard players set @e[tag=t_Smeltery_init] t_s_fuel 0
scoreboard players set @e[tag=t_Smeltery_init] t_s_debug 10

scoreboard players set @p[scores={LapisBlockPlaced=1..}] LapisBlockPlaced 2
tag @e[tag=t_Smeltery_init] remove t_Smeltery_init

kill @s