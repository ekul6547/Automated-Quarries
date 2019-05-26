#Do terminal stuff
execute as @s at @s run function storage:system/ids/control_exists
execute as @s at @s if score @s s_control matches 1 run function storage:blocks/terminal/whilecontrol
execute as @s at @s if score @s s_control matches 0 run function storage:system/menu/set_navbar

execute as @s at @s run function storage:system/disablehopper