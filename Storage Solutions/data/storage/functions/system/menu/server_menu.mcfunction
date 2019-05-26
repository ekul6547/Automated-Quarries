execute as @s at @s run function storage:system/menu/shulker
execute as @s at @s unless data block ~ ~0.5 ~ Items[{Slot:8b,id:"minecraft:barrier"}] run function storage:system/menu/previous_server
execute as @s at @s unless data block ~ ~0.5 ~ Items[{Slot:26b,id:"minecraft:barrier"}] run function storage:system/menu/next_server