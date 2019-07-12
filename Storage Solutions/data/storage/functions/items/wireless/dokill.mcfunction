execute as @s if entity @s[tag=s_Terminal] run function storage:system/wireless/close_menu
tag @e[type=item] add dont_kill
kill @s
kill @e[type=item,tag=!dont_kill]
tag @e[type=item,tag=dont_kill] remove dont_kill