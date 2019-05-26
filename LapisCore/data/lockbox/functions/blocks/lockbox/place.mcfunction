execute at @s run setblock ~ ~0.6 ~ minecraft:barrel[facing=up]{CustomName:"{\"text\":\"Locked Box\"}"}
execute at @s run summon armor_stand ~0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},ArmorItems:[{id:"minecraft:paper",Count:1b,tag:{Owner:{UUIDMost:0L,UUIDLeast:0L},UUIDCompare:{UUIDMost:0L,UUIDLeast:0L}}},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:103}}],Tags:["q_LockBox","Block","q_UnLockBox"]}
execute as @e[tag=q_UnLockBox,limit=1] run function lockbox:blocks/lockbox/lock/initlock

kill @s