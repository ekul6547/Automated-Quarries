execute at @s if block ~ ~0.6 ~1 minecraft:repeater[facing=north,powered=true] run setblock ~ ~0.6 ~1 minecraft:repeater[facing=north,powered=false]
execute at @s if block ~-1 ~0.6 ~ minecraft:repeater[facing=east,powered=true] run setblock ~-1 ~0.6 ~ minecraft:repeater[facing=east,powered=false]
execute at @s if block ~ ~0.6 ~-1 minecraft:repeater[facing=south,powered=true] run setblock ~ ~0.6 ~-1 minecraft:repeater[facing=south,powered=false]
execute at @s if block ~1 ~0.6 ~ minecraft:repeater[facing=west,powered=true] run setblock ~1 ~0.6 ~ minecraft:repeater[facing=west,powered=false]