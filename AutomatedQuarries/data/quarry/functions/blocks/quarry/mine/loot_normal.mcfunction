execute as @s at @s if score @s q_direction matches 0 run loot spawn ~ ~1 ~-1 mine 10 0 10 minecraft:diamond_pickaxe
execute as @s at @s if score @s q_direction matches 1 run loot spawn ~1 ~1 ~ mine 10 0 10 minecraft:diamond_pickaxe
execute as @s at @s if score @s q_direction matches 2 run loot spawn ~ ~1 ~1 mine 10 0 10 minecraft:diamond_pickaxe
execute as @s at @s if score @s q_direction matches 3 run loot spawn ~-1 ~1 ~ mine 10 0 10 minecraft:diamond_pickaxe