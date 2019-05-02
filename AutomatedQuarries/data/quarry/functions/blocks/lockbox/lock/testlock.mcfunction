scoreboard players set #lock q_const 1
execute at @s run summon minecraft:item_frame ~-0.2 ~1.5 ~0.2 {Item:{id:"minecraft:ender_eye",Count:1},Tags:["test_string"],NoGravity:1b,Silent:1b,Facing:1b,ItemDropChance:0.0f}
execute as @s run data modify entity @e[type=minecraft:item_frame,tag=test_string,limit=1] Item.tag set from entity @s ArmorItems[{id:"minecraft:paper"}].tag
execute as @e[type=minecraft:item_frame,tag=test_string] run function quarry:blocks/lockbox/lock/testlockitem
execute as @s if score #lock q_const matches ..0 run function quarry:blocks/lockbox/lock/unlock
