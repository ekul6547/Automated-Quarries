execute as @e[tag=t_Modifier_p] at @s run function tinkery:blocks/modifier/place
execute as @e[tag=t_Modifier] at @s unless block ~ ~0.5 ~ minecraft:barrel run function tinkery:blocks/modifier/destroy
execute as @e[tag=t_Modifier] run function tinkery:blocks/modifier/main