#north or south
execute if entity @s[y_rotation=135..-135] run scoreboard players set #tinkery t_dum5 1
execute if entity @s[y_rotation=-45..45] run scoreboard players set #tinkery t_dum5 1

#east or west
execute if entity @s[y_rotation=45..135] run scoreboard players set #tinkery t_dum5 2
execute if entity @s[y_rotation=-135..-45] run scoreboard players set #tinkery t_dum5 2

#up or down
execute if entity @s[x_rotation=35..90] run scoreboard players set #tinkery t_dum5 3
execute if entity @s[x_rotation=-90..-35] run scoreboard players set #tinkery t_dum5 3