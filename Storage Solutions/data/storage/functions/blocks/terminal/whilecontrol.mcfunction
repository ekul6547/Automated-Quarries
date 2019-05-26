execute as @s run scoreboard players operation @s s_pre = @s s_open
execute at @s if block ~ ~0.5 ~ minecraft:barrel[open=true] run scoreboard players set @s s_open 1
execute at @s if block ~ ~0.5 ~ minecraft:barrel[open=false] run scoreboard players set @s s_open 0

execute as @s if score @s s_open matches 1 if score @s s_pre matches 0 run function storage:system/menu/open_menu
execute as @s if score @s s_open matches 1 if score @s s_pre matches 1 run function storage:system/menu/in_menu
execute as @s if score @s s_open matches 0 if score @s s_pre matches 1 run function storage:system/menu/close_menu