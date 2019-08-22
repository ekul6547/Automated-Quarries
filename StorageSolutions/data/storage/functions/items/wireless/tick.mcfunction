execute as @a run function storage:items/wireless/main
execute as @e[tag=s_WirelessCart] run function storage:items/wireless/killcart
execute as @e[tag=s_WirelessCart,tag=s_Terminal] at @s run function storage:system/wireless/in_menu