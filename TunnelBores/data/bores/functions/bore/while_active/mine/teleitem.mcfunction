execute store result entity @e[type=minecraft:item,scores={bores.age=1},limit=1] Pos[0] double 0.1 run scoreboard players get @s bores.x
execute store result entity @e[type=minecraft:item,scores={bores.age=1},limit=1] Pos[1] double 0.1 run scoreboard players get @s bores.y
execute store result entity @e[type=minecraft:item,scores={bores.age=1},limit=1] Pos[2] double 0.1 run scoreboard players get @s bores.z
data modify entity @e[type=minecraft:item,scores={bores.age=1},limit=1] Motion set value [0f,0f,0f]