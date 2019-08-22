execute as @s run function storage:system/wireless/save_page
execute as @s run function storage:system/wireless/clear
execute as @e[tag=SS_SERVER,limit=1] run function storage:blocks/server/unlock