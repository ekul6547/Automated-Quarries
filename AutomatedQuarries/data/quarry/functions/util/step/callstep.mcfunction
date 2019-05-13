scoreboard players set #step q_direction -1
#North
execute as @s at @s if entity @s[y_rotation=135..-135] unless block ~ ~ ~-0.75 minecraft:air if score @s q_actZ < @s q_preZ run scoreboard players set #step q_direction 0
#East
execute as @s at @s if entity @s[y_rotation=-135..-45] unless block ~0.75 ~ ~ minecraft:air if score @s q_actX > @s q_preX run scoreboard players set #step q_direction 1
#South
execute as @s at @s if entity @s[y_rotation=-45..45] unless block ~ ~ ~0.75 minecraft:air if score @s q_actZ > @s q_preZ run scoreboard players set #step q_direction 2
#West
execute as @s at @s if entity @s[y_rotation=45..135] unless block ~-0.75 ~ ~ minecraft:air if score @s q_actX < @s q_preX run scoreboard players set #step q_direction 3


execute as @s if data entity @s {OnGround:1b} if score @s q_step_sneaking matches 0 unless score #step q_direction matches -1 run function quarry:util/step/step
scoreboard players set @s q_step_sneaking 0