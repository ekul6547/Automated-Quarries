execute as @e[tag=t_Constructor_p] at @s run function tinkery:blocks/constructor/place
execute as @e[tag=t_Constructor] at @s unless block ~ ~0.5 ~ minecraft:barrel run function tinkery:blocks/constructor/destroy
execute as @e[tag=t_Constructor] run function tinkery:blocks/constructor/main