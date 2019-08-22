execute as @s run function storage:system/menu/get_server
#COPY FROM @s to SS_SERVER
execute as @s at @s run data modify entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS set from entity @s Items
execute as @s if score @s s_can_save matches 1 if entity @e[tag=SS_SERVER,limit=1,scores={s_lock=1}] at @e[tag=SS_SERVER,limit=1] run data modify block ~ ~0.6 ~ Items set from entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEMS