execute as @e[tag=t_Blueprinter_p] at @s run function tinkery:blocks/blueprinter/place
execute as @e[tag=t_Blueprinter] at @s unless block ~ ~0.5 ~ minecraft:barrel run function tinkery:blocks/blueprinter/destroy
execute as @e[tag=t_Blueprinter] run function tinkery:blocks/blueprinter/main