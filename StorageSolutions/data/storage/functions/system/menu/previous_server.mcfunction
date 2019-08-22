execute as @s run function storage:system/menu/get_server
execute as @s run function storage:system/menu/close_menu
scoreboard players operation #storage s_server = @s s_server
scoreboard players set #storage s_count -1
scoreboard players operation #storage s_drive = @s s_id
execute as @e[tag=s_Server] if score @s s_id = #storage s_drive if score @s s_server < #storage s_server run scoreboard players operation #storage s_count > @s s_server
execute as @s unless score #storage s_count matches -1 run scoreboard players operation @s s_server = #storage s_count
execute as @s run function storage:system/menu/load_page