
scoreboard players set #storage const 100
execute store result score @s X run data get entity @s Pos[0] 100
execute store result score @s Y run data get entity @s Pos[1] 100
execute store result score @s Z run data get entity @s Pos[2] 100
execute if block ~ ~-0.2 ~ minecraft:magenta_glazed_terracotta[facing=north] run function storage:conveyor/north
execute if block ~ ~-0.2 ~ minecraft:magenta_glazed_terracotta[facing=east] run function storage:conveyor/east
execute if block ~ ~-0.2 ~ minecraft:magenta_glazed_terracotta[facing=south] run function storage:conveyor/south
execute if block ~ ~-0.2 ~ minecraft:magenta_glazed_terracotta[facing=west] run function storage:conveyor/west
execute store result entity @s Pos[0] double 0.01 run scoreboard players get @s X
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s Y
execute store result entity @s Pos[2] double 0.01 run scoreboard players get @s Z
data modify entity @s FallDistance set value 0.0f
data modify entity @s FallDistance set value 0.0f
execute if entity @s[type=item] run data modify entity @s Age set value 0s