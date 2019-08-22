execute as @e[tag=bores.place] at @s unless block ~ ~-1 ~ minecraft:hopper run function bores:bore/place
execute as @e[tag=bores.place] at @s if block ~ ~-1 ~ minecraft:hopper positioned ~ ~5 ~ run function bores:bore/place
execute as @e[tag=bores.bore] at @s run function bores:bore/main