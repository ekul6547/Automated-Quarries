execute at @s run setblock ~ ~0.6 ~ minecraft:magma_block{CustomName:"{\"text\":\"Storage Controller\"}"}
execute at @s run summon armor_stand ~0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{display:{name:"{\"text\":\"Items\"}"}}},{id:"minecraft:paper",Count:1b,tag:{display:{name:"{\"text\":\"Fluids\"}"}}},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:150}}],Tags:["s_Controller","Block","s_suggestID","s_Controller_x"]}
execute at @s as @e[tag=s_Controller_x,limit=1] unless score @s s_id matches 1.. run function storage:system/ids/assign_id

execute at @s run data modify block ~ ~0.6 ~ CustomName set from entity @s CustomName
execute at @s run data modify entity @e[tag=s_Controller_x,limit=1] CustomName set from entity @s CustomName

tag @e[tag=s_Controller_x] remove s_Controller_x

kill @s