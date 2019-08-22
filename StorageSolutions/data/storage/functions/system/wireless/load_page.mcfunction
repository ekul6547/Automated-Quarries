#execute as @s at @s run tellraw @a[distance=..5] ["",{"score":{"name":"@s","objective":"s_server"}}]
execute as @s run function storage:system/menu/get_server
#COPY SHULKER TO 
execute as @s at @s run data modify entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEM set from entity @s Items[{Slot:17b}]

scoreboard players set @s s_can_save 0
execute as @s if entity @e[tag=SS_SERVER,limit=1,scores={s_lock=0}] run scoreboard players set @s s_can_save 1

#COPY FROM SERVER TO TEMPITEMS
execute as @s if entity @e[tag=SS_SERVER,limit=1] at @e[tag=SS_SERVER,limit=1] run data modify entity @s Items[{Slot:8b}].tag.TEMPITEMS set from block ~ ~0.6 ~ Items
#CLEAR SERVER BLOCK IF FIRST TO ACCESS IT
execute as @s if entity @e[tag=SS_SERVER,limit=1,scores={s_lock=0}] at @e[tag=SS_SERVER,limit=1] run data modify block ~ ~0.6 ~ Items set value []
#IF NO SERVER CLEAR TEMP
execute as @s unless entity @e[tag=SS_SERVER,limit=1] run data modify entity @s Items[{Slot:8b}].tag.TEMPITEMS set value []
#COPY TEMP TO TERMINAL
execute as @s at @s run data modify entity @s Items set from entity @s Items[{Slot:8b}].tag.TEMPITEMS
#LOCK SERVER
execute as @e[tag=SS_SERVER,limit=1] run function storage:blocks/server/lock


#COPY FROM SERVER TO TEMPITEMS
#execute as @s if entity @e[tag=SS_SERVER,limit=1] at @e[tag=SS_SERVER,limit=1] run data modify entity @s Items[{Slot:8b}].tag.TEMPITEMS set from block ~ ~0.6 ~ Items

#SETNAVBAR
execute as @s run function storage:system/wireless/set_navbar
#COPY SHULKER FROM TEMPITEM
execute as @s at @s run data modify entity @s Items[{Slot:17b}] set from entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEM
#CLEAR TEMPITEM
data modify entity @e[tag=s_w_temp,limit=1,sort=nearest] ArmorItems[3].tag.TEMPITEM set value {}