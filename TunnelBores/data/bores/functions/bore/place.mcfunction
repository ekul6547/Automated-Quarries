execute store result entity @s Pos[1] double 1 run data get entity @s Pos[1]

#Rotation on summon bug requires 4 different summon commands
execute as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=135..-135] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Rotation:[90f,0f],Pose:{Head:[0f,90f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ShowArms:1b,HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:900}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:901}}],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:902},BoreFuel:[]}],Tags:["bores.active","bores.new","bores.bore"]}


execute as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-135..-45] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Rotation:[180f,0f],Pose:{Head:[0f,90f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ShowArms:1b,HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:900}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:901}}],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:902},BoreFuel:[]}],Tags:["bores.active","bores.new","bores.bore"]}


execute as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-45..45] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Rotation:[-90f,0f],Pose:{Head:[0f,90f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ShowArms:1b,HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:900}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:901}}],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:902},BoreFuel:[]}],Tags:["bores.active","bores.new","bores.bore"]}


execute as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=45..135] run summon armor_stand ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Rotation:[0f,0f],Pose:{Head:[0f,90f,0f],LeftArm:[0f,0f,0f],RightArm:[0f,0f,0f]},ShowArms:1b,HandItems:[{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:900}},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:901}}],ArmorItems:[{},{},{},{id:"minecraft:leather_horse_armor",Count:1b,tag:{CustomModelData:902},BoreFuel:[]}],Tags:["bores.active","bores.new","bores.bore"]}



data modify entity @e[tag=bores.new,tag=!bores.place,limit=1] Tags set from entity @s Tags
tag @s remove bores.new
tag @e[tag=bores.new,limit=1] remove bores.place
tag @e[tag=bores.new,limit=1] add bores.bore
tag @e[tag=bores.new,limit=1] add bores.active
data modify entity @e[tag=bores.new,limit=1] ArmorItems[3].tag.BoreStats set from entity @s ArmorItems[3].tag.BoreStats
execute as @e[tag=bores.new,limit=1] at @s run function bores:bore/init/on_place

execute as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=135..-135] run execute as @e[tag=bores.new,limit=1] run function bores:bore/init/north
execute as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-135..-45] run execute as @e[tag=bores.new,limit=1] run function bores:bore/init/east
execute as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=-45..45] run execute as @e[tag=bores.new,limit=1] run function bores:bore/init/south
execute as @p[scores={LapisBlockPlaced=1..}] if entity @s[y_rotation=45..135] run execute as @e[tag=bores.new,limit=1] run function bores:bore/init/west

execute as @e[tag=bores.new,limit=1] at @s run function bores:bore/init/end_place

kill @s