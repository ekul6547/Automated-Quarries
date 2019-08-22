execute as @s run function storage:system/menu/get_server
#COPY FROM @s to SS_SERVER
execute as @s at @s run data modify entity @s ArmorItems[0].tag.TEMPITEMS set from block ~ ~0.6 ~ Items
execute as @s if score @s s_can_save matches 1 if entity @e[tag=SS_SERVER,limit=1,scores={s_lock=1}] at @e[tag=SS_SERVER,limit=1] run data modify block ~ ~0.6 ~ Items set from entity @s ArmorItems[0].tag.TEMPITEMS