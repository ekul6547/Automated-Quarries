function storage:blocks/blockmain
function storage:items/itemmain

execute as @a run function storage:perplayer
execute as @e at @s if block ~ ~-0.2 ~ minecraft:magenta_glazed_terracotta run function storage:conveyor/test

scoreboard players set #storage const 40
scoreboard players operation @e s_time %= #storage const