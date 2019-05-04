execute at @s if block ~ ~0.6 ~1 minecraft:repeater[facing=north] run setblock ~ ~0.6 ~1 minecraft:repeater[facing=north,powered=true]
execute at @s if block ~-1 ~0.6 ~ minecraft:repeater[facing=east] run setblock ~-1 ~0.6 ~ minecraft:repeater[facing=east,powered=true]
execute at @s if block ~ ~0.6 ~-1 minecraft:repeater[facing=south] run setblock ~ ~0.6 ~-1 minecraft:repeater[facing=south,powered=true]
execute at @s if block ~1 ~0.6 ~ minecraft:repeater[facing=west] run setblock ~1 ~0.6 ~ minecraft:repeater[facing=west,powered=true]