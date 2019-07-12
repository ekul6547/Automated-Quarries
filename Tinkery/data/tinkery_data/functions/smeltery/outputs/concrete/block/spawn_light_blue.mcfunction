execute if entity @s[nbt={Facing:2b}] run summon minecraft:item ~ ~ ~-0.6 {Item:{id:"minecraft:light_blue_concrete",Count:1b}}
execute if entity @s[nbt={Facing:3b}] run summon minecraft:item ~ ~ ~0.6 {Item:{id:"minecraft:light_blue_concrete",Count:1b}}
execute if entity @s[nbt={Facing:4b}] run summon minecraft:item ~-0.6 ~ ~ {Item:{id:"minecraft:light_blue_concrete",Count:1b}}
execute if entity @s[nbt={Facing:5b}] run summon minecraft:item ~0.6 ~ ~ {Item:{id:"minecraft:light_blue_concrete",Count:1b}}
scoreboard players remove #tinkery t_dum0 180
scoreboard players set #tinkery t_output 1