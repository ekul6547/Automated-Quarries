execute as @s at @s run function storage:system/wireless/shulker
execute as @s at @s unless data entity @s Items[{Slot:8b,id:"minecraft:barrier"}] run function storage:system/wireless/previous_server
execute as @s at @s unless data entity @s Items[{Slot:26b,id:"minecraft:barrier"}] run function storage:system/wireless/next_server