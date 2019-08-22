execute if score @s bores.fortune matches -1 run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:silk_touch",lvl:1}]}
execute if score @s bores.fortune matches 0 run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:diamond_pickaxe
execute unless score @s bores.fortune matches -1.. run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:diamond_pickaxe
execute if score @s bores.fortune matches 1 run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:1}]}
execute if score @s bores.fortune matches 2 run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:2}]}
execute if score @s bores.fortune matches 3 run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:3}]}
execute if score @s bores.fortune matches 4 run loot spawn ~ ~ ~ mine ~ ~ ~ minecraft:diamond_pickaxe{Enchantments:[{id:"minecraft:fortune",lvl:4}]}