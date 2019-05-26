scoreboard players set #step direction -1
#North
execute as @s at @s if entity @s[y_rotation=135..-135] unless block ~ ~ ~-0.75 minecraft:air if score @s actZ < @s preZ run scoreboard players set #step direction 0
#East
execute as @s at @s if entity @s[y_rotation=-135..-45] unless block ~0.75 ~ ~ minecraft:air if score @s actX > @s preX run scoreboard players set #step direction 1
#South
execute as @s at @s if entity @s[y_rotation=-45..45] unless block ~ ~ ~0.75 minecraft:air if score @s actZ > @s preZ run scoreboard players set #step direction 2
#West
execute as @s at @s if entity @s[y_rotation=45..135] unless block ~-0.75 ~ ~ minecraft:air if score @s actX < @s preX run scoreboard players set #step direction 3


execute as @s if data entity @s {OnGround:1b} if score @s step_sneaking matches 0 unless score #step direction matches -1 run function lapis:util/step/step
scoreboard players set @s step_sneaking 0