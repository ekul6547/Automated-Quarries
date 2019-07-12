execute as @e[tag=t_Smeltery_p] at @s run function tinkery:blocks/smeltery/place
execute as @e[tag=t_Smeltery] at @s unless block ~ ~0.5 ~ minecraft:barrel run function tinkery:blocks/smeltery/destroy
execute as @e[tag=t_Smeltery] run function tinkery:blocks/smeltery/main

execute as @e[type=minecraft:armor_stand,tag=t_smelt_fluid] at @s run function tinkery:blocks/smeltery/fluid/damage_tick