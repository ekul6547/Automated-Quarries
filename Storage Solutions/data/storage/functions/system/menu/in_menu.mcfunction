execute as @s run function storage:system/menu/get_server
#execute as @e[tag=SS_SERVER,limit=1] run function storage:blocks/server/save_page
execute if score @s s_can_save matches 1 as @e[tag=SS_SERVER,limit=1] run function storage:blocks/server/lock
execute as @s if score @s s_menu matches 0 run function storage:system/menu/server_menu