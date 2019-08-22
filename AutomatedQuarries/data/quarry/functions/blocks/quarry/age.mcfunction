scoreboard players operation @s q_Age += @s QuarrySpeed

execute at @s if block ~ ~2 ~ minecraft:light_weighted_pressure_plate run function quarry:blocks/quarry/size/increase
execute at @s if block ~ ~2 ~ minecraft:heavy_weighted_pressure_plate run function quarry:blocks/quarry/size/decrease

execute as @s if score @s q_Age >= #quarry q_Age run function quarry:blocks/quarry/titleinfo
execute as @s if score @s q_Age >= #quarry q_Age run function quarry:blocks/quarry/mine/startmine