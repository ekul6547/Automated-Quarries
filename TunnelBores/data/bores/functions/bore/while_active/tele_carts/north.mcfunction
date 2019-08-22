
execute at @s as @e[type=minecraft:minecart,tag=bores.commandChair] if score @s bores.id = $bores.id const run tp @s ~ ~1.7 ~3.5 90 0
execute at @s as @e[type=minecraft:chest_minecart,tag=bores.container] if score @s bores.id = $bores.id const run tp @s ~ ~0.75 ~5.4 90 -90