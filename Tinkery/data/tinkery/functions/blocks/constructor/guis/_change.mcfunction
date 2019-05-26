execute at @s run data remove block ~ ~0.6 ~ Items[{id:"minecraft:barrier"}]

execute at @s run function tinkery:blocks/constructor/guis/main

execute at @s if score @s t_menu matches 0 run function tinkery:blocks/constructor/guis/blank
execute at @s if score @s t_menu matches 1 run function tinkery:blocks/constructor/guis/set_gui