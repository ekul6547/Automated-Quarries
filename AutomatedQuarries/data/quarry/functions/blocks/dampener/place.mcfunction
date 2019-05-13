execute at @s run setblock ~ ~0.6 ~ minecraft:obsidian
execute at @s run summon armor_stand ~0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:106}}],Tags:["q_Dampener","q_Block","q_Dampener_init"]}
execute as @e[tag=q_Dampener_init,limit=1] at @e run function quarry:blocks/dampener/bindowner
kill @s