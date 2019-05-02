execute at @s if entity @p[y_rotation=-45..45] run setblock ~ ~ ~ minecraft:dropper[facing=north]{CustomName:"{\"text\":\"Quarry\"}"}
execute at @s if entity @p[y_rotation=-45..45] run summon armor_stand ~0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:101}}],Tags:["q_Quarry","q_Block"]}
execute at @s if entity @p[y_rotation=-45..45] run execute as @e[tag=q_Quarry,distance=..1] run function quarry:blocks/quarry/boxinit/initnorth

execute at @s if entity @p[y_rotation=45..135] run setblock ~ ~ ~ minecraft:dropper[facing=east]{CustomName:"{\"text\":\"Quarry\"}"}
execute at @s if entity @p[y_rotation=45..135] run summon armor_stand ~0.188 ~-0.5 ~0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[90f],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:101}}],Tags:["q_Quarry","q_Block"]}
execute at @s if entity @p[y_rotation=45..135] run execute as @e[tag=q_Quarry,distance=..1] run function quarry:blocks/quarry/boxinit/initeast


execute at @s if entity @p[y_rotation=135..-135] run setblock ~ ~ ~ minecraft:dropper[facing=south]{CustomName:"{\"text\":\"Quarry\"}"}
execute at @s if entity @p[y_rotation=135..-135] run summon armor_stand ~-0.188 ~-0.5 ~0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[180f],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:101}}],Tags:["q_Quarry","q_Block"]}
execute at @s if entity @p[y_rotation=135..-135] run execute as @e[tag=q_Quarry,distance=..1] run function quarry:blocks/quarry/boxinit/initsouth


execute at @s if entity @p[y_rotation=-135..-45] run setblock ~ ~ ~ minecraft:dropper[facing=west]{CustomName:"{\"text\":\"Quarry\"}"}
execute at @s if entity @p[y_rotation=-135..-45] run summon armor_stand ~-0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},Rotation:[270f],ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:101}}],Tags:["q_Quarry","q_Block"]}
execute at @s if entity @p[y_rotation=-135..-45] run execute as @e[tag=q_Quarry,distance=..1] run function quarry:blocks/quarry/boxinit/initwest

kill @s