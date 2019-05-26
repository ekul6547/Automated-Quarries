scoreboard players operation @s s_shulker_pre = @s s_shulker
execute as @s at @s unless data block ~ ~0.5 ~ Items[{Slot:17b,id:"minecraft:barrier"}] run function storage:system/menu/testforshulker
execute as @s at @s run function storage:system/menu/is_empty

#execute as @s at @s unless score @s s_shulker = @s s_shulker_pre run tellraw @a[distance=..5] ["",{"score":{"name":"@s","objective":"s_shulker"}}]

execute as @s if score @s s_shulker_pre matches 1.. if score @s s_shulker matches 0 run function storage:system/menu/set_navbar
execute as @s if score @s s_empty matches 0 if score @s s_shulker_pre matches 0 if score @s s_shulker matches 1 run function storage:system/menu/fill_shulker
execute as @s if score @s s_empty matches 1 if score @s s_shulker_pre matches 0 if score @s s_shulker matches 2 run function storage:system/menu/empty_shulker