#Left column is menu
execute as @s run function storage:system/menu/load_page
execute as @s at @s run function storage:system/disablehopper
scoreboard players set @s s_menu 0