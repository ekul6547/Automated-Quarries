execute if entity @s[nbt={Facing:2b}] run summon minecraft:item ~ ~ ~-0.6 {Item:{id:"minecraft:lava_bucket",Count:1b}}
execute if entity @s[nbt={Facing:3b}] run summon minecraft:item ~ ~ ~0.6 {Item:{id:"minecraft:lava_bucket",Count:1b}}
execute if entity @s[nbt={Facing:4b}] run summon minecraft:item ~-0.6 ~ ~ {Item:{id:"minecraft:lava_bucket",Count:1b}}
execute if entity @s[nbt={Facing:5b}] run summon minecraft:item ~0.6 ~ ~ {Item:{id:"minecraft:lava_bucket",Count:1b}}
execute at @s run data modify entity @e[type=minecraft:item_frame,nbt={Facing:1b},distance=..0.7,limit=1,nbt={Item:{id:"minecraft:bucket"}},sort=nearest] Item.Count set value 0
scoreboard players remove #tinkery t_dum0 180
scoreboard players set #tinkery t_output 1