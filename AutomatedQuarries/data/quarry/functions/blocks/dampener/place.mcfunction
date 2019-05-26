execute at @s run setblock ~ ~0.6 ~ minecraft:obsidian
execute at @s run summon armor_stand ~0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:106}}],Tags:["q_Dampener","Block","q_Dampener_init"]}

execute as @e[tag=q_Dampener_init,limit=1] at @e run function quarry:blocks/dampener/bindowner
execute as @e[tag=q_Dampener_init,limit=1] at @e run function lapis:util/savepos
execute as @e[tag=q_Dampener_init,limit=1] at @e run function quarry:blocks/dampener/damppos

execute at @s if entity @e[tag=q_Dampener,tag=!q_Dampener_init,scores={q_d_X=-100..100,q_d_Z=-100..100}] run tellraw @a[distance=..6] ["",{"text":"\nDampener is too close to another dampener.\nPlease place further away from "},{"text":" X:"},{"nbt":"Pos[0]","entity":"@e[tag=q_Dampener,tag=!q_Dampener_init,sort=nearest,limit=1]"},{"text":" Z:"},{"nbt":"Pos[2]","entity":"@e[tag=q_Dampener,tag=!q_Dampener_init,sort=nearest,limit=1]"}]
execute at @s if entity @e[tag=q_Dampener,tag=!q_Dampener_init,scores={q_d_X=-100..100,q_d_Z=-100..100}] run setblock ~ ~0.6 ~ minecraft:air

tag @e[tag=q_Dampener_init] remove q_Dampener_init
kill @s