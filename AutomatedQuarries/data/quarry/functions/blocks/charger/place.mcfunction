execute at @s run setblock ~ ~ ~ minecraft:dropper[facing=up]{CustomName:"{\"text\":\"Power Charger\"}"}
execute at @s run summon armor_stand ~0.188 ~-0.5 ~-0.188 {Invulnerable:1b,NoGravity:1b,Marker:1b,NoBasePlate:1b,Invisible:1,Fire:32676,DisabledSlots:2039583,Pose:{Head:[180f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:command_block",Count:1b,tag:{CustomModelData:104}}],Tags:["q_Charger","Block"]}

#Idea was an item_frame that spins. Got it working, but free item frame if you can break it.
#execute at @s run summon item_frame ~-0.188 ~1.5 ~0.188 {Item:{id:"minecraft:redstone_torch",Count:1},Tags:["charger_item"],NoGravity:1b,Silent:1b,Facing:1b,ItemDropChance:0.0f,Invulnerable:1b}

kill @s