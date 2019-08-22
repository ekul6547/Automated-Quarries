
execute at @s as @e[type=minecraft:minecart,tag=bores.commandChair] if score @s bores.id = $bores.id const run tp @s ~3.5 ~1.7 ~ 0 0
execute at @s as @e[type=minecraft:chest_minecart,tag=bores.container] if score @s bores.id = $bores.id const run tp @s ~5.4 ~0.75 ~ 0 -90